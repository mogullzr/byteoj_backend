package com.example.backend.service.algorithm;

import com.example.backend.config.SandboxProperties;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.judge.JudgeTask;
import com.example.backend.models.domain.judge.JudgeTaskMessage;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 10 个消费者共用的判题处理逻辑，确保调试和提交的状态/异常行为一致。
 */
@Slf4j
@Service
public class JudgeTaskProcessor {
    @Resource
    private ProblemAlgorithmService problemAlgorithmService;
    @Resource
    private SandboxProperties sandboxProperties;
    @Resource
    private JudgeTaskStateService stateService;
    @Resource
    private SimpMessagingTemplate messagingTemplate;

    public void process(int sandboxIndex, JudgeTaskMessage message, com.rabbitmq.client.Channel channel,
                        Message amqpMessage) throws IOException {
        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
        String taskId = message.getTaskId();
        try {
            JudgeTask existing = stateService.get(taskId);
            if (existing != null && isTerminal(existing.getStatus())) {
                stateService.clearQueuePosition(taskId, message.getSandboxIndex(), message.getSubmissionId());
                channel.basicAck(deliveryTag, false);
                publish(existing);
                return;
            }
            JudgeTask running = state(taskId, message, "Running", "正在使用沙箱 " + sandboxIndex + " 执行");
            saveAndPublish(running);

            JudgeRequest request = message.getJudgeRequest();
            if (request == null) throw new IllegalArgumentException("JudgeRequest 为空");
            String sandboxUrl = sandboxProperties.url(sandboxIndex);
            Judge result;
            if ("DEBUG".equalsIgnoreCase(message.getTaskType())) {
                List<Judge> results = problemAlgorithmService.problemAlgorithmJudgeWithSandbox(request, sandboxUrl);
                if (results == null || results.isEmpty()) throw new IllegalStateException("沙箱没有返回调试结果");
                result = results.get(0);
            } else {
                result = problemAlgorithmService.problemAlgorithmSubmitWithSandbox(request, message.getUserUuid(), sandboxUrl, message.getSubmissionId());
            }
            JudgeTask finished = fromJudge(taskId, message, result);
            if (message.getSubmissionId() != null) {
                problemAlgorithmService.updatePendingSubmission(message.getSubmissionId(), finished.getStatus());
            }
            stateService.clearQueuePosition(taskId, message.getSandboxIndex(), message.getSubmissionId());
            saveAndPublish(finished);
            channel.basicAck(deliveryTag, false);
        } catch (Exception e) {
            log.error("沙箱{}处理任务 {} 失败", sandboxIndex, taskId, e);
            JudgeTask failed = state(taskId, message, "Failed", "沙箱执行失败：" + safeMessage(e));
            if (message.getSubmissionId() != null) {
                try {
                    problemAlgorithmService.updatePendingSubmission(message.getSubmissionId(), "Failed");
                } catch (Exception updateError) {
                    log.error("提交记录 {} 最终状态写回失败", message.getSubmissionId(), updateError);
                }
            }
            stateService.clearQueuePosition(taskId, message.getSandboxIndex(), message.getSubmissionId());
            saveAndPublish(failed);
            channel.basicAck(deliveryTag, false);
        }
    }

    private JudgeTask fromJudge(String taskId, JudgeTaskMessage message, Judge result) {
        JudgeTask task = state(taskId, message, result == null ? "Failed" : result.getStatus(),
                result == null ? "沙箱返回为空" : result.getStatus());
        if (result == null) return task;
        task.setInput(result.getInput());
        task.setOutput(result.getOutput());
        task.setCorrectOutput(result.getCorrectOutput());
        task.setFileId(result.getFileId());
        task.setTime(result.getTime());
        task.setMemory(result.getMemory());
        if ("Accepted".equals(result.getStatus()) || "Finished".equals(result.getStatus())) {
            task.setMessage("执行完成");
        } else if (result.getOutput() != null) {
            task.setMessage(result.getOutput());
        }
        return task;
    }

    private JudgeTask state(String taskId, JudgeTaskMessage message, String status, String text) {
        JudgeTask task = new JudgeTask();
        task.setTaskId(taskId);
        task.setTaskType(message.getTaskType());
        task.setStatus(status);
        task.setMessage(text);
        task.setUserUuid(message.getUserUuid());
        task.setSubmitTime(new Date());
        task.setSubmissionId(message.getSubmissionId());
        // 沙箱编号只属于排队/执行阶段，最终结果不再暴露运行节点信息。
        if ("Pending".equals(status) || "Running".equals(status)) {
            task.setSandboxIndex(message.getSandboxIndex());
        }
        return task;
    }

    private void saveAndPublish(JudgeTask task) {
        stateService.save(task);
        try {
            publish(task);
        } catch (Exception e) {
            // Redis 是任务状态的事实来源，WebSocket 短暂不可用不能把成功结果改写为失败。
            log.warn("判题任务 {} 状态已保存，但 WebSocket 推送失败", task.getTaskId(), e);
        }
    }

    private void publish(JudgeTask task) {
        messagingTemplate.convertAndSend("/topic/judge/" + task.getTaskId(), task);
    }

    private boolean isTerminal(String status) {
        return status != null && !status.isBlank()
                && !"Pending".equals(status)
                && !"Running".equals(status)
                && !"Retrying".equals(status);
    }

    private String safeMessage(Exception e) {
        return e.getMessage() == null || e.getMessage().isBlank() ? e.getClass().getSimpleName() : e.getMessage();
    }
}
