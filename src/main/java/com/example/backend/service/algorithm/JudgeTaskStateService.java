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
    private static final String SUBMISSION_TASK_PREFIX = "judge:submission:task:";
    private static final String SANDBOX_QUEUE_PREFIX = "judge:queue:sandbox:";
    private static final String QUEUE_SEQUENCE_KEY = "judge:queue:sequence";
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

    /**
     * 记录任务在指定沙箱队列中的先后顺序。调试任务也进入有序集合，保证提交记录看到的
     * 前方任务数包含真实占用该沙箱的所有任务。
     */
    public void registerQueuePosition(String taskId, Long submissionId, int sandboxIndex) {
        if (taskId == null || taskId.isBlank()) return;
        Long sequence = redis.opsForValue().increment(QUEUE_SEQUENCE_KEY);
        if (sequence == null) throw new IllegalStateException("生成判题队列序号失败");
        String queueKey = sandboxQueueKey(sandboxIndex);
        redis.opsForZSet().add(queueKey, taskId, sequence.doubleValue());
        redis.expire(queueKey, TTL);
        if (submissionId != null) {
            redis.opsForValue().set(SUBMISSION_TASK_PREFIX + submissionId, taskId, TTL);
        }
    }

    /** 清理完成或失败任务的队列排名及提交运行态映射。 */
    public void clearQueuePosition(String taskId, Integer sandboxIndex, Long submissionId) {
        try {
            if (taskId != null && !taskId.isBlank() && sandboxIndex != null) {
                redis.opsForZSet().remove(sandboxQueueKey(sandboxIndex), taskId);
            }
            if (submissionId != null) {
                redis.delete(List.of(
                        SUBMISSION_SANDBOX_PREFIX + submissionId,
                        SUBMISSION_TASK_PREFIX + submissionId
                ));
            }
        } catch (RuntimeException ignored) {
            // 运行态清理失败只等待 TTL，不改变已经完成的判题结果。
        }
    }

    /** 清理提交记录对应的全部 Redis 运行态，供超时对账使用。 */
    public void clearSubmissionRuntime(Long submissionId) {
        if (submissionId == null) return;
        try {
            String sandboxValue = redis.opsForValue().get(SUBMISSION_SANDBOX_PREFIX + submissionId);
            String taskId = redis.opsForValue().get(SUBMISSION_TASK_PREFIX + submissionId);
            if (taskId != null && !taskId.isBlank() && sandboxValue != null) {
                try {
                    redis.opsForZSet().remove(sandboxQueueKey(Integer.parseInt(sandboxValue)), taskId);
                } catch (NumberFormatException ignored) {
                    // 运行态数据损坏时仍继续删除映射。
                }
            }
            redis.delete(List.of(
                    SUBMISSION_SANDBOX_PREFIX + submissionId,
                    SUBMISSION_TASK_PREFIX + submissionId
            ));
        } catch (RuntimeException ignored) {
            // Redis 暂时不可用时依赖 TTL，不能回滚已经落库的终态。
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

    /**
     * 返回每条 Pending 提交在所属沙箱队列中前方的任务数量。当前正在执行的任务仍保留
     * 在有序集合中，因此会被后续任务计入等待位置。
     */
    public Map<Long, Long> getSubmissionQueueAhead(Collection<Long> submissionIds,
                                                    Map<Long, Integer> sandboxBySubmission) {
        if (submissionIds == null || submissionIds.isEmpty()
                || sandboxBySubmission == null || sandboxBySubmission.isEmpty()) {
            return Collections.emptyMap();
        }
        List<Long> ids = submissionIds.stream().filter(Objects::nonNull).toList();
        if (ids.isEmpty()) return Collections.emptyMap();
        List<String> taskIds = redis.opsForValue().multiGet(ids.stream()
                .map(id -> SUBMISSION_TASK_PREFIX + id).toList());
        Map<Long, Long> result = new LinkedHashMap<>();
        if (taskIds == null) return result;
        for (int i = 0; i < Math.min(ids.size(), taskIds.size()); i++) {
            Long submissionId = ids.get(i);
            String taskId = taskIds.get(i);
            Integer sandboxIndex = sandboxBySubmission.get(submissionId);
            if (taskId == null || taskId.isBlank() || sandboxIndex == null) continue;
            Long rank = redis.opsForZSet().rank(sandboxQueueKey(sandboxIndex), taskId);
            if (rank != null) result.put(submissionId, rank);
        }
        return result;
    }

    private String sandboxQueueKey(int sandboxIndex) {
        return SANDBOX_QUEUE_PREFIX + sandboxIndex;
    }
}
