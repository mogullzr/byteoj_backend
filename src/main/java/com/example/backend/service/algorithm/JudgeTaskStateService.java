package com.example.backend.service.algorithm;

import com.example.backend.models.domain.judge.JudgeTask;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.time.Duration;

/**
 * 保存任务最新状态，解决 WebSocket 订阅晚于沙箱完成的竞态。
 */
@Service
public class JudgeTaskStateService {
    private static final String PREFIX = "judge:task:";
    private static final String SUBMISSION_SANDBOX_PREFIX = "judge:submission:sandbox:";
    private static final Duration TTL = Duration.ofHours(2);

    @Resource
    private StringRedisTemplate redis;
    @Resource
    private ObjectMapper objectMapper;

    public void save(JudgeTask task) {
        try {
            redis.opsForValue().set(PREFIX + task.getTaskId(), objectMapper.writeValueAsString(task), TTL);
        } catch (Exception e) {
            throw new IllegalStateException("保存判题任务状态失败", e);
        }
    }

    public JudgeTask get(String taskId) {
        if (taskId == null || taskId.isBlank()) return null;
        String value = redis.opsForValue().get(PREFIX + taskId);
        if (value == null) return null;
        try {
            return objectMapper.readValue(value, JudgeTask.class);
        } catch (Exception e) {
            throw new IllegalStateException("解析判题任务状态失败", e);
        }
    }

    /**
     * 保存提交记录对应的沙箱分配。该信息属于运行态，只在 Redis 保留，不写入提交历史表。
     */
    public void saveSubmissionSandbox(Long submissionId, int sandboxIndex) {
        if (submissionId == null) return;
        redis.opsForValue().set(
                SUBMISSION_SANDBOX_PREFIX + submissionId,
                String.valueOf(sandboxIndex),
                TTL
        );
    }

    public void clearSubmissionSandbox(Long submissionId) {
        if (submissionId == null) return;
        try {
            redis.delete(SUBMISSION_SANDBOX_PREFIX + submissionId);
        } catch (RuntimeException ignored) {
            // 运行态清理失败只等待 TTL，不改变已经完成的判题结果。
        }
    }

    /** 批量读取 Pending 提交的沙箱分配，避免全站列表出现 N+1 Redis 请求。 */
    public Map<Long, Integer> getSubmissionSandboxes(Collection<Long> submissionIds) {
        if (submissionIds == null || submissionIds.isEmpty()) return Collections.emptyMap();
        List<Long> ids = submissionIds.stream().filter(Objects::nonNull).toList();
        if (ids.isEmpty()) return Collections.emptyMap();
        List<String> values = redis.opsForValue().multiGet(ids.stream()
                .map(id -> SUBMISSION_SANDBOX_PREFIX + id).toList());
        Map<Long, Integer> result = new LinkedHashMap<>();
        if (values == null) return result;
        for (int i = 0; i < Math.min(ids.size(), values.size()); i++) {
            String value = values.get(i);
            if (value == null || value.isBlank()) continue;
            try {
                result.put(ids.get(i), Integer.parseInt(value));
            } catch (NumberFormatException ignored) {
                // 忽略异常运行态数据，不影响提交记录列表。
            }
        }
        return result;
    }
}
