package com.example.backend.service.algorithm.generation;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.example.backend.common.ErrorCode;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.exception.BusinessException;
import com.example.backend.registry.DeepSeekChatModeRegistry;
import lombok.Data;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;

import javax.annotation.Resource;
import java.time.Duration;
import java.util.List;
import java.util.Map;

@Component
public class AlgorithmTestGeneratorAiClient {
    @Resource
    private DeepSeekChatModeRegistry modelRegistry;
    @Resource
    private ObjectMapper objectMapper;
    @Resource
    private AlgorithmTestGenerationProperties properties;

    public GeneratedProgram generate(String model, String problemContext, String scale, String constraints) {
        List<String> modelInfo = modelRegistry.getChatModeInfo(model);
        if (modelInfo == null || modelInfo.size() < 2) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "不支持的 AI 模型：" + model);
        }
        String system = "你是算法题测试数据生成器专家。只返回一个合法 JSON 对象，不要 Markdown，不要解释。"
                + "返回格式必须严格是：{\"language\":\"python\",\"protocolVersion\":\"1.0\",\"code\":\"...\",\"assumptions\":[\"说明1\",\"说明2\"],\"coverage\":[\"覆盖点1\",\"覆盖点2\"]}。"
                + "assumptions 和 coverage 必须是字符串数组；没有内容时返回 []，绝对不要返回对象、字符串或 null。"
                + "字段必须为 language、protocolVersion、code、assumptions、coverage。language 必须是 python。"
                + "Python 代码只使用标准库，从 stdin 读取包含 seed/startIndex/count 的 JSON；stdout 每行只输出 {\"input\":\"...\"} JSONL，行数必须等于 count；日志只能写 stderr。"
                + "必须使用 seed 保证确定性，并使用 startIndex 让分批执行与一次执行语义一致。禁止网络、文件、子进程和动态执行。"
                + "不要写跨所有规模复用的固定小数据列表；代码必须根据当前规模生成对应大小的数据。";
        String user = "题目信息：\n" + problemContext
                + "\n数据规模：" + scale + "（" + scaleDirective(scale) + "）"
                + "\n管理员补充的规模约束：" + constraints
                + "\n必须先从题面提取所有变量范围，再生成满足范围的输入。不得使用违反题面下界的固定样例。"
                + "生成 LARGE/EXTREME 时，至少 70% 的有效样例要让主要规模参数接近题面上界；例如 1<n<1000 时 n 应主要取 700~999，而不是 n=2。"
                + "每一个输出的 input 都必须是该题合法完整输入，不能只输出一个与题面无关的小数字。";
        Map<String, Object> request = Map.of(
                "model", model,
                "stream", false,
                "temperature", 0.1,
                "messages", List.of(Map.of("role", "system", "content", system), Map.of("role", "user", "content", user))
        );
        String raw = WebClient.builder().baseUrl(modelInfo.get(0))
                .defaultHeader("Authorization", "Bearer " + modelInfo.get(1)).build()
                .post().contentType(MediaType.APPLICATION_JSON).bodyValue(request).retrieve()
                .bodyToMono(String.class).block(Duration.ofSeconds(properties.getAi().getResponseTimeoutSeconds()));
        try {
            JsonNode envelope = objectMapper.readTree(raw);
            String content = envelope.path("choices").path(0).path("message").path("content").asText();
            if (content.getBytes(java.nio.charset.StandardCharsets.UTF_8).length > properties.getAi().getMaxResponseBytes()) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "AI 返回代码过大");
            }
            GeneratedProgram result = objectMapper.readValue(stripFence(content), GeneratedProgram.class);
            if (!"python".equalsIgnoreCase(result.getLanguage()) || result.getCode() == null || result.getCode().isBlank()) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "AI 未返回有效 Python 生成器");
            }
            return result;
        } catch (BusinessException e) {
            throw e;
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "AI 生成器结果解析失败：" + e.getMessage());
        }
    }

    private String stripFence(String content) {
        String value = content == null ? "" : content.trim();
        if (value.startsWith("```")) {
            value = value.replaceFirst("^```(?:json)?\\s*", "").replaceFirst("\\s*```$", "");
        }
        return value.trim();
    }

    private String scaleDirective(String scale) {
        if (scale == null) return "严格遵守管理员约束";
        return switch (scale.toUpperCase()) {
            case "SMALL" -> "小规模合法数据，覆盖最小边界、最小长度、空/单元素等允许情况";
            case "MEDIUM" -> "中等规模合法数据，主要参数取范围中部并混合边界";
            case "LARGE" -> "大规模合法数据，主要参数接近上界，数组/字符串长度应明显较大";
            case "EXTREME" -> "极限规模合法数据，主要参数尽量贴近上界，接近时间和内存压力";
            default -> "按管理员补充约束执行，不自行缩小规模";
        };
    }

    @Data
    public static class GeneratedProgram {
        private String language;
        private String protocolVersion;
        private String code;
        // 说明字段仅用于记录 AI 元数据。模型偶尔会返回对象，因此使用 JsonNode 兼容数组/对象/字符串，避免影响代码生成。
        private JsonNode assumptions;
        private JsonNode coverage;
    }
}
