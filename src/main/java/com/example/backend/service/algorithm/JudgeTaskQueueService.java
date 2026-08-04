package com.example.backend.service.algorithm;

import com.example.backend.common.ErrorCode;
import com.example.backend.config.RabbitMQConfig;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.judge.JudgeTask;
import com.example.backend.models.domain.judge.JudgeTaskMessage;
import com.example.backend.models.request.JudgeRequest;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 判题/调试任务统一入口。每条消息明确绑定一个沙箱队列。
 */
@Service
public class JudgeTaskQueueService {
    private static final long PUBLISH_CONFIRM_TIMEOUT_SECONDS = 10;
    private final AtomicInteger roundRobin = new AtomicInteger();

    @Resource
    private RabbitTemplate rabbitTemplate;
    @Resource
    private JudgeTaskStateService stateService;
    @Resource
    private ProblemAlgorithmService problemAlgorithmService;

    public JudgeTask enqueue(JudgeRequest request, Long userUuid, String taskType) {
        if (request == null || request.getLanguage() == null || request.getSource_code() == null
                || request.getSource_code().isBlank()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "代码、语言不能为空");
        }
        if ("DEBUG".equals(taskType) && (request.getInput_list() == null || request.getInput_list().isEmpty())) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "调试输入不能为空");
        }
        int sandboxIndex = Math.floorMod(roundRobin.getAndIncrement(), RabbitMQConfig.SANDBOX_COUNT);
        String taskId = UUID.randomUUID().toString();
        Date now = new Date();
        Long submissionId = "SUBMIT".equals(taskType)
                ? problemAlgorithmService.createPendingSubmission(request, userUuid) : null;

        JudgeTask pending = new JudgeTask();
        pending.setTaskId(taskId);
        pending.setTaskType(taskType);
        pending.setStatus("Pending");
        pending.setMessage("等待沙箱 " + (sandboxIndex + 1) + " 队列");
        pending.setUserUuid(userUuid);
        pending.setSubmitTime(now);
        pending.setSubmissionId(submissionId);
        pending.setSandboxIndex(sandboxIndex);
        stateService.save(pending);
        if (submissionId != null) {
            stateService.saveSubmissionSandbox(submissionId, sandboxIndex);
        }
        stateService.registerQueuePosition(taskId, submissionId, sandboxIndex);

        JudgeTaskMessage message = new JudgeTaskMessage();
        message.setTaskId(taskId);
        message.setJudgeRequest(request);
        message.setUserUuid(userUuid);
        message.setCreateTime(now);
        message.setSandboxIndex(sandboxIndex);
        message.setTaskType(taskType);
        message.setSubmissionId(submissionId);
        try {
            CorrelationData correlationData = new CorrelationData(taskId);
            rabbitTemplate.convertAndSend(
                    RabbitMQConfig.EXCHANGE_NAME,
                    RabbitMQConfig.ROUTING_KEYS[sandboxIndex],
                    message,
                    correlationData
            );
            CorrelationData.Confirm confirm = correlationData.getFuture()
                    .get(PUBLISH_CONFIRM_TIMEOUT_SECONDS, TimeUnit.SECONDS);
            if (!confirm.isAck()) {
                throw new IllegalStateException("RabbitMQ 拒绝消息" +
                        (confirm.getReason() == null ? "" : "：" + confirm.getReason()));
            }
            if (correlationData.getReturnedMessage() != null) {
                throw new IllegalStateException("RabbitMQ 未找到目标沙箱队列："
                        + RabbitMQConfig.ROUTING_KEYS[sandboxIndex]);
            }
        } catch (Exception e) {
            JudgeTask failed = copy(pending);
            failed.setStatus("Failed");
            failed.setMessage("任务进入沙箱队列失败：" + e.getMessage());
            stateService.save(failed);
            if (submissionId != null) {
                problemAlgorithmService.updatePendingSubmission(submissionId, "Failed");
            }
            stateService.clearQueuePosition(taskId, sandboxIndex, submissionId);
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, failed.getMessage());
        }
        return pending;
    }

    private JudgeTask copy(JudgeTask source) {
        JudgeTask target = new JudgeTask();
        target.setTaskId(source.getTaskId());
        target.setTaskType(source.getTaskType());
        target.setUserUuid(source.getUserUuid());
        target.setSubmitTime(source.getSubmitTime());
        target.setSubmissionId(source.getSubmissionId());
        target.setSandboxIndex(source.getSandboxIndex());
        return target;
    }
}
