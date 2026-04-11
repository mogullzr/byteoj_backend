package com.example.backend.aop.rabbitmq;

import com.example.backend.config.RabbitMQConfig;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.judge.JudgeTask;
import com.example.backend.models.domain.judge.JudgeTaskMessage;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Component;

import com.rabbitmq.client.Channel;
import java.io.IOException;
import java.util.Date;

/**
 * 沙箱0消费者 - 对应端口 6048
 */
@Component
@RabbitListener(queues = "judge.submit.queue.0", containerFactory = "rabbitListenerContainerFactory")
public class JudgeConsumer0 {
    private static final Logger log = LoggerFactory.getLogger(JudgeConsumer0.class);

    private static final int SANDBOX_INDEX = 0;
    private static final String SANDBOX_URL = RabbitMQConfig.SANDBOX_URLS[0];

    @Autowired
    private ProblemAlgorithmService problemAlgorithmService;

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @RabbitHandler
    public void handleMessage(JudgeTaskMessage message, Channel channel, Message amqpMessage) throws IOException {
        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
        String taskId = message.getTaskId();
        Long uuid = message.getUserUuid();

        long startTime = System.currentTimeMillis();
        log.info("[=========沙箱{}消费者=========] 收到消息!", SANDBOX_INDEX);
        log.info("[沙箱{}消费者] taskId: {}, uuid: {}", SANDBOX_INDEX, taskId, uuid);
        log.info("[沙箱{}消费者] 开始处理任务, taskId: {}, uuid: {}", SANDBOX_INDEX, taskId, uuid);

        try {
            // 1. 推送 Running 状态
            pushStatus(taskId, "Running", "正在沙箱" + SANDBOX_INDEX + "判题中...", uuid);

            // 2. 执行判题逻辑（使用指定的沙箱URL）
            JudgeRequest request = message.getJudgeRequest();
            if (request == null) {
                throw new IllegalArgumentException("JudgeRequest 为空");
            }
            Judge result = problemAlgorithmService.problemAlgorithmSubmitWithSandbox(request, uuid, SANDBOX_URL);
            
            // 🔥 设置 taskId（用于前端识别）
            result.setTaskId(taskId);

            // 3. 推送成功结果
            try {
                log.info("[沙箱{}消费者] 准备推送结果, taskId: {}, status: {}", SANDBOX_INDEX, taskId, result.getStatus());
                messagingTemplate.convertAndSend("/topic/judge/" + taskId, result);
                log.info("[沙箱{}消费者] 推送结果成功, taskId: {}", SANDBOX_INDEX, taskId);
            } catch (Exception pushEx) {
                log.error("[沙箱{}消费者] ⚠️ 推送WebSocket消息失败, taskId: {}", SANDBOX_INDEX, taskId, pushEx);
            }

            // 4. 手动 ACK
            channel.basicAck(deliveryTag, false);
            
            long duration = System.currentTimeMillis() - startTime;
            log.info("[沙箱{}消费者] 任务处理成功, taskId: {}, 结果: {}, 耗时: {}ms", 
                    SANDBOX_INDEX, taskId, result.getStatus(), duration);
            
            // 🔥 监控慢请求
            if (duration > 10000) {
                log.warn("[沙箱{}消费者] ⚠️ 判题耗时过长: {}ms, taskId: {}", SANDBOX_INDEX, duration, taskId);
            }

        } catch (Exception e) {
            long duration = System.currentTimeMillis() - startTime;
            log.error("[沙箱{}消费者] 任务处理失败, taskId: {}, 耗时: {}ms, 错误: {}", 
                    SANDBOX_INDEX, taskId, duration, e.getMessage(), e);
            handleFailure(taskId, uuid, e, channel, deliveryTag);
        }
    }

    /**
     * 🔥 兜底方法：捕获所有无法反序列化的消息
     */
    @RabbitHandler(isDefault = true)
    public void handleDefaultMessage(Object message, Channel channel, Message amqpMessage) throws IOException {
        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
        log.error("[沙箱{}消费者] ⚠️ 收到无法反序列化的消息: {}", SANDBOX_INDEX, message);
        log.error("[沙箱{}消费者] 消息内容: {}", SANDBOX_INDEX, new String(amqpMessage.getBody()));
        // 拒绝消息，不重新入队
        channel.basicNack(deliveryTag, false, false);
    }

    private void pushStatus(String taskId, String status, String message, Long uuid) {
        try {
            JudgeTask statusUpdate = new JudgeTask();
            statusUpdate.setTaskId(taskId);
            statusUpdate.setStatus(status);
            statusUpdate.setMessage(message);
            statusUpdate.setUserUuid(uuid);
            statusUpdate.setSubmitTime(new Date());
            log.info("[沙箱{}消费者] 推送状态: {}, taskId: {}", SANDBOX_INDEX, status, taskId);
            messagingTemplate.convertAndSend("/topic/judge/" + taskId, statusUpdate);
            log.info("[沙箱{}消费者] 推送状态成功: {}, taskId: {}", SANDBOX_INDEX, status, taskId);
        } catch (Exception e) {
            log.error("[沙箱{}消费者] ⚠️ WebSocket 推送状态失败, taskId: {}, 错误: {}", SANDBOX_INDEX, taskId, e.getMessage(), e);
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

            log.info("[沙箱{}消费者] 推送失败状态, taskId: {}", SANDBOX_INDEX, taskId);
            messagingTemplate.convertAndSend("/topic/judge/" + taskId, errorResult);
            log.info("[沙箱{}消费者] 推送失败状态成功, taskId: {}", SANDBOX_INDEX, taskId);
            channel.basicNack(deliveryTag, false, false);
        } catch (IOException ioException) {
            log.error("[沙箱{}消费者] 消息确认失败, taskId: {}", SANDBOX_INDEX, taskId, ioException);
        } catch (Exception pushEx) {
            log.error("[沙箱{}消费者] ⚠️ 推送失败状态异常, taskId: {}", SANDBOX_INDEX, taskId, pushEx);
        }
    }
}