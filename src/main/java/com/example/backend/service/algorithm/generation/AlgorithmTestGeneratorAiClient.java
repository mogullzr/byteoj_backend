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
                + "字段必须为 language、protocolVersion、code、assumptions、coverage。language 必须是 python。"
                + "Python 代码只使用标准库，从 stdin 读取包含 seed/startIndex/count 的 JSON；stdout 每行只输出 {\"input\":\"...\"} JSONL，行数必须等于 count；日志只能写 stderr。"
                + "必须使用 seed 保证确定性，并使用 startIndex 让分批执行与一次执行语义一致。禁止网络、文件、子进程和动态执行。";
        String user = "题目信息：\n" + problemContext + "\n数据规模：" + scale + "\n规模约束：" + constraints;
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

    @Data
    public static class GeneratedProgram {
        private String language;
        private String protocolVersion;
        private String code;
        private List<String> assumptions;
        private List<String> coverage;
    }
}
