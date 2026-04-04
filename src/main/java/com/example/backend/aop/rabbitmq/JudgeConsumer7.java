package com.example.backend.aop.rabbitmq;

import com.example.backend.config.RabbitMQConfig;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.judge.JudgeTask;
import com.example.backend.models.domain.judge.JudgeTaskMessage;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.rabbitmq.client.Channel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Date;

/**
 * 沙箱7消费者 - 对应端口 6055
 */
@Component
@RabbitListener(queues = "judge.submit.queue.7", containerFactory = "rabbitListenerContainerFactory")
public class JudgeConsumer7 {
    private static final Logger log = LoggerFactory.getLogger(JudgeConsumer7.class);

    private static final int SANDBOX_INDEX = 7;
    private static final String SANDBOX_URL = RabbitMQConfig.SANDBOX_URLS[7];

    @Autowired
    private ProblemAlgorithmService problemAlgorithmService;

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @RabbitHandler
    public void handleMessage(JudgeTaskMessage message, Channel channel, Message amqpMessage) throws IOException {
        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
        String taskId = message.getTaskId();
        Long uuid = message.getUserUuid();

        // log.info("[沙箱{}消费者] 开始处理任务, taskId: {}, uuid: {}, 沙箱地址: {}", SANDBOX_INDEX, taskId, uuid, SANDBOX_URL);

        try {
            // 1. 推送 Running 状态
            pushStatus(taskId, "Running", "正在沙箱" + SANDBOX_INDEX + "判题中...", uuid);

            // 2. 执行判题逻辑（使用指定的沙箱URL）
            JudgeRequest request = message.getJudgeRequest();
            if (request == null) {
                throw new IllegalArgumentException("JudgeRequest 为空");
            }
            Judge result = problemAlgorithmService.problemAlgorithmSubmitWithSandbox(request, uuid, SANDBOX_URL);

            // 3. 推送成功结果
            messagingTemplate.convertAndSend("/topic/judge/" + taskId, result);

            // 4. 手动 ACK
            channel.basicAck(deliveryTag, false);
            // log.info("[沙箱{}消费者] 任务处理成功, taskId: {}, 结果: {}", SANDBOX_INDEX, taskId, result.getStatus());

        } catch (Exception e) {
            log.error("[沙箱{}消费者] 任务处理失败, taskId: {}, 错误: {}", SANDBOX_INDEX, taskId, e.getMessage(), e);
            handleFailure(taskId, uuid, e, channel, deliveryTag);
        }
    }

    private void pushStatus(String taskId, String status, String message, Long uuid) {
        try {
            JudgeTask statusUpdate = new JudgeTask();
            statusUpdate.setTaskId(taskId);
            statusUpdate.setStatus(status);
            statusUpdate.setMessage(message);
            statusUpdate.setUserUuid(uuid);
            statusUpdate.setSubmitTime(new Date());
            messagingTemplate.convertAndSend("/topic/judge/" + taskId, statusUpdate);
        } catch (Exception e) {
            log.error("[沙箱{}消费者] WebSocket 推送失败, taskId: {}", SANDBOX_INDEX, taskId, e);
        }
    }

    private void handleFailure(String taskId, Long uuid, Exception e, Channel channel, long deliveryTag) {
        try {
            JudgeTask errorResult = new JudgeTask();
            errorResult.setTaskId(taskId);
            errorResult.setStatus("Failed");
            errorResult.setMessage("沙箱" + SANDBOX_INDEX + "判题失败: " + e.getMessage());
            errorResult.setUserUuid(uuid);
            errorResult.setSubmitTime(new Date());

            messagingTemplate.convertAndSend("/topic/judge/" + taskId, errorResult);
            channel.basicNack(deliveryTag, false, false);
        } catch (IOException ioException) {
            log.error("[沙箱{}消费者] 消息确认失败, taskId: {}", SANDBOX_INDEX, taskId, ioException);
        }
    }
}
