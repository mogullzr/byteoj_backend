package com.example.backend.service.algorithm.generation;

import com.example.backend.common.ErrorCode;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.judge.Judge;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Service
public class GeneratorProtocolService {
    @Resource
    private SandboxExecutionService sandboxExecutionService;
    @Resource
    private AlgorithmTestGenerationProperties properties;
    @Resource
    private ObjectMapper objectMapper;

    public void validateCode(String code) {
        if (code == null || code.isBlank()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成器代码不能为空");
        }
        String lower = code.toLowerCase(Locale.ROOT);
        for (String module : properties.getGenerator().getForbiddenModules()) {
            if (lower.matches("(?s).*\\b(import|from)\\s+" + java.util.regex.Pattern.quote(module.toLowerCase(Locale.ROOT)) + "\\b.*")) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成器包含禁止模块：" + module);
            }
        }
        for (String token : List.of("os.system(", "eval(", "exec(", "__import__(", "open(")) {
            if (lower.contains(token)) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成器包含禁止调用：" + token);
            }
        }
    }

    public List<String> execute(String code, long seed, int startIndex, int count) {
        validateCode(code);
        String stdin;
        try {
            stdin = objectMapper.writeValueAsString(Map.of("seed", seed, "startIndex", startIndex, "count", count));
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "无法构造生成器输入");
        }
        Judge result = sandboxExecutionService.executePython(code, stdin,
                properties.getGenerator().getCpuLimitSeconds() * 1_000_000_000L,
                properties.getGenerator().getMemoryLimitMb() * 1024L * 1024L);
        GenerationSupport.requireSuccess(result, "测试输入生成");
        String stdout = result.getOutput() == null ? "" : result.getOutput();
        if (stdout.getBytes(StandardCharsets.UTF_8).length > properties.getGenerator().getStdoutMaxBytesPerBatch()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成器单批输出超过限制");
        }
        List<String> inputs = new ArrayList<>();
        for (String line : stdout.split("\\R")) {
            if (line.isBlank()) continue;
            try {
                JsonNode node = objectMapper.readTree(line);
                if (!node.has("input") || !node.get("input").isTextual()) {
                    throw new IllegalArgumentException("缺少字符串 input 字段");
                }
                inputs.add(node.get("input").asText());
            } catch (Exception e) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成器 stdout 不是合法 JSONL：" + GenerationSupport.abbreviate(line, 200));
            }
        }
        if (inputs.size() != count) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成器数量错误，期望 " + count + "，实际 " + inputs.size());
        }
        return inputs;
    }
}
