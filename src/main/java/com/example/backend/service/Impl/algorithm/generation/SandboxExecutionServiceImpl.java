package com.example.backend.service.Impl.algorithm.generation;

import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONUtil;
import com.example.backend.common.ErrorCode;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.service.algorithm.generation.SandboxExecutionService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class SandboxExecutionServiceImpl implements SandboxExecutionService {
    @Value("${sandbox.urls[0]}")
    private String sandboxUrl;

    @Resource
    private ObjectMapper objectMapper;

    @Resource
    private AlgorithmTestGenerationProperties properties;

    @Override
    public Judge executePython(String code, String input, long cpuLimitNanos, long memoryLimitBytes) {
        Map<String, Object> command = new HashMap<>();
        command.put("code", code);
        command.put("input", input);
        command.put("cpuLimit", cpuLimitNanos);
        command.put("memoryLimit", memoryLimitBytes);
        command.put("language", "python");
        List<Judge> results = postForJudges("/", List.of(command));
        requireResultCount(results, 1);
        return results.get(0);
    }

    @Override
    public String build(String code, String language, String sampleInput, long cpuLimitNanos) {
        Map<String, Object> command = new HashMap<>();
        command.put("code", code);
        command.put("language", language);
        command.put("input", sampleInput == null ? "" : sampleInput);
        command.put("cpuLimit", cpuLimitNanos);
        List<Judge> results = postForJudges("/build", List.of(command));
        requireResultCount(results, 1);
        Judge result = results.get(0);
        if (!Objects.equals("Accepted", result.getStatus()) || result.getFileId() == null || result.getFileId().isBlank()) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "沙箱编译失败：" + safeMessage(result));
        }
        return result.getFileId();
    }

    @Override
    public List<Judge> executeCompiled(String fileId, String language, List<String> inputs, long cpuLimitNanos, long memoryLimitBytes) {
        List<Map<String, Object>> commands = new ArrayList<>();
        for (String input : inputs) {
            Map<String, Object> command = new HashMap<>();
            command.put("fileId", fileId);
            command.put("language", language);
            command.put("input", input);
            command.put("cpuLimit", cpuLimitNanos);
            command.put("memoryLimit", memoryLimitBytes);
            commands.add(command);
        }
        List<Judge> results = postForJudges("/exec", commands);
        requireResultCount(results, inputs.size());
        return results;
    }

    @Override
    public void deleteArtifact(String fileId) {
        if (fileId == null || fileId.isBlank()) {
            return;
        }
        try {
            post("/delete", List.of(Map.of("fileId", fileId)));
        } catch (RuntimeException ignored) {
            // Cleanup failure must not hide the original generation result.
        }
    }

    private List<Judge> postForJudges(String path, Object body) {
        String response = post(path, body);
        try {
            return objectMapper.readValue(response, new TypeReference<List<Judge>>() { });
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "沙箱返回内容无法解析：" + abbreviate(response, 300));
        }
    }

    private String post(String path, Object body) {
        try (HttpResponse response = HttpRequest.post(sandboxUrl + path)
                .header("Content-Type", "application/json")
                .timeout(properties.getSandbox().getResponseTimeoutSeconds() * 1000)
                .body(JSONUtil.toJsonStr(body))
                .execute()) {
            if (!response.isOk()) {
                throw new BusinessException(ErrorCode.SYSTEM_ERROR, "沙箱 HTTP 错误：" + response.getStatus());
            }
            return response.body();
        } catch (BusinessException e) {
            throw e;
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "连接沙箱失败：" + e.getMessage());
        }
    }

    private void requireResultCount(List<Judge> results, int expected) {
        if (results == null || results.size() != expected) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "沙箱返回数量异常，期望 " + expected + "，实际 " + (results == null ? 0 : results.size()));
        }
    }

    private String safeMessage(Judge judge) {
        return judge == null ? "空响应" : judge.getStatus() + " " + abbreviate(judge.getOutput(), 300);
    }

    private String abbreviate(String value, int max) {
        if (value == null) return "";
        return value.length() <= max ? value : value.substring(0, max) + "...";
    }
}
