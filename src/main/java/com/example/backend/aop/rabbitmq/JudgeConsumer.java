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
 * 判题消费者
 * 优化：
 * 1. 改进错误处理，确保消息正确 ACK/NACK
 * 2. 添加重试机制
 * 3. 失败消息推送到死信队列
 * 4. 添加详细日志
 */
@Component
@RabbitListener(queues = RabbitMQConfig.QUEUE_NAME, containerFactory = "rabbitListenerContainerFactory")
public class JudgeConsumer {
    private static final Logger log = LoggerFactory.getLogger(JudgeConsumer.class);

    private static final int MAX_RETRY_COUNT = 3;  // 最大重试次数

    @Autowired
    private ProblemAlgorithmService problemAlgorithmService;

    @Autowired
    private SimpMessagingTemplate messagingTemplate;  // WebSocket 推送

    @RabbitHandler
    public void handleMessage(JudgeTaskMessage message, Channel channel, Message amqpMessage) throws IOException {
        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
        String taskId = message.getTaskId();
        Long uuid = message.getUserUuid();

        log.info("[判题消费者] 开始处理任务, taskId: {}, uuid: {}", taskId, uuid);

        try {
            // 🔥 移除了硬编码的 500ms 延迟，直接处理
            // 1. 推送 Running 状态
            updateAndPushStatus(taskId, "Running", null, uuid);

            // 2. 执行判题逻辑
            JudgeRequest request = message.getJudgeRequest();
            if (request == null) {
                throw new IllegalArgumentException("JudgeRequest 为空");
            }
            Judge result = problemAlgorithmService.problemAlgorithmSubmit(request, uuid);

            // 3. 推送成功结果
            updateAndPushStatus(taskId, "Success", result, uuid);

            // 4. 手动 ACK（确认消息处理成功）
            channel.basicAck(deliveryTag, false);
            log.info("[判题消费者] 任务处理成功, taskId: {}, 结果: {}", taskId, result);

        } catch (Exception e) {
            log.error("[判题消费者] 任务处理失败, taskId: {}, 错误: {}", taskId, e.getMessage(), e);

            try {
                // 获取重试次数
                Integer retryCount = (Integer) amqpMessage.getMessageProperties()
                        .getHeaders().getOrDefault("x-retry-count", 0);

                if (retryCount < MAX_RETRY_COUNT) {
                    // 还有重试机会，NACK 并重新入队
                    log.warn("[判题消费者] 任务重试, taskId: {}, 当前重试次数: {}", taskId, retryCount);

                    // 增加重试计数
                    amqpMessage.getMessageProperties().setHeader("x-retry-count", retryCount + 1);

                    // 推送重试状态
                    updateAndPushRetryStatus(taskId, retryCount + 1, uuid);

                    // NACK 并重新入队（延迟重试）
                    channel.basicNack(deliveryTag, false, true);

                } else {
                    // 超过最大重试次数，推送失败状态并拒绝消息（进入死信队列）
                    log.error("[判题消费者] 任务失败（超过最大重试次数）, taskId: {}", taskId);

                    // 推送失败结果
                    JudgeTask errorResult = new JudgeTask();
                    errorResult.setTaskId(taskId);
                    errorResult.setStatus("Failed");
                    errorResult.setMessage("判题失败: " + e.getMessage());
                    errorResult.setUserUuid(uuid);
                    errorResult.setSubmitTime(new Date());

                    messagingTemplate.convertAndSend("/topic/judge/" + taskId, errorResult);

                    // NACK 并不重新入队（进入死信队列）
                    channel.basicNack(deliveryTag, false, false);
                }

            } catch (IOException ioException) {
                log.error("[判题消费者] 消息确认失败, taskId: {}", taskId, ioException);
            }
        }
    }

    /**
     * 更新并推送判题状态
     */
    private void updateAndPushStatus(String taskId, String status, Judge result, Long uuid) {
        try {
            if (result == null) {
                // 推送中间状态（Running）
                JudgeTask statusUpdate = new JudgeTask();
                statusUpdate.setTaskId(taskId);
                statusUpdate.setStatus(status);
                statusUpdate.setMessage("正在判题中...");
                statusUpdate.setUserUuid(uuid);
                statusUpdate.setSubmitTime(new Date());

                messagingTemplate.convertAndSend("/topic/judge/" + taskId, statusUpdate);
//                log.debug("[判题消费者] 推送状态: taskId={}, status={}", taskId, status);

            } else {
                // 推送最终结果
                messagingTemplate.convertAndSend("/topic/judge/" + taskId, result);
//                log.debug("[判题消费者] 推送结果: taskId={}", taskId);
            }
        } catch (Exception e) {
            log.error("[判题消费者] WebSocket 推送失败, taskId: {}", taskId, e);
        }
    }

    /**
     * 推送重试状态
     */
    private void updateAndPushRetryStatus(String taskId, int retryCount, Long uuid) {
        try {
            JudgeTask retryStatus = new JudgeTask();
            retryStatus.setTaskId(taskId);
            retryStatus.setStatus("Retrying");
            retryStatus.setMessage("判题失败，正在重试... (第 " + retryCount + " 次重试)");
            retryStatus.setUserUuid(uuid);
            retryStatus.setSubmitTime(new Date());

            messagingTemplate.convertAndSend("/topic/judge/" + taskId, retryStatus);
            log.debug("[判题消费者] 推送重试状态: taskId={}, retryCount={}", taskId, retryCount);

        } catch (Exception e) {
            log.error("[判题消费者] 推送重试状态失败, taskId: {}", taskId, e);
        }
    }
}
//package com.example.backend.aop.rabbitmq;
//
//import com.example.backend.config.RabbitMQConfig;
//import com.example.backend.models.domain.judge.Judge;
//import com.example.backend.models.domain.judge.JudgeTask;
//import com.example.backend.models.domain.judge.JudgeTaskMessage;
//import com.example.backend.models.request.JudgeRequest;
//import com.example.backend.service.algorithm.ProblemAlgorithmService;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.amqp.core.Message;
//import org.springframework.amqp.rabbit.annotation.RabbitHandler;
//import org.springframework.amqp.rabbit.annotation.RabbitListener;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.messaging.simp.SimpMessagingTemplate;
//import org.springframework.stereotype.Component;
//import com.rabbitmq.client.Channel;
//
//import java.io.IOException;
//import java.util.Date;
//
///**
// * 判题消费者
// * 优化：
// * 1. 改进错误处理：依赖 Spring 重试机制，确保消息正确 ACK/NACK
// * 2. 失败消息自动进死信队列（需配合 RabbitMQConfig 配置 DLQ）
// * 3. 添加详细日志和简单校验
// */
//@Component
//@RabbitListener(queues = RabbitMQConfig.QUEUE_NAME, containerFactory = "rabbitListenerContainerFactory")
//public class JudgeConsumer {
//
//    private static final Logger log = LoggerFactory.getLogger(JudgeConsumer.class);
//
//    @Autowired
//    private ProblemAlgorithmService problemAlgorithmService;
//
//    @Autowired
//    private SimpMessagingTemplate messagingTemplate; // WebSocket 推送
//
//    @RabbitHandler
//    public void handleMessage(JudgeTaskMessage message, Channel channel, Message amqpMessage) throws IOException {
//        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
//        String taskId = message.getTaskId();
//        Long uuid = message.getUserUuid();
//        log.info("[判题消费者] 开始处理任务, taskId: {}, uuid: {}", taskId, uuid);
//
//        // 1. 推送 Running 状态
//        updateAndPushStatus(taskId, "Running", null, uuid);
//
//        try {
//            // 2. 简单校验，防空指针
//            JudgeRequest request = message.getJudgeRequest();
//            if (request == null) {
//                throw new IllegalArgumentException("JudgeRequest 为空");
//            }
//
//            // 3. 执行判题逻辑
//            Judge result = problemAlgorithmService.problemAlgorithmSubmit(request, uuid);
//
//            // 4. 推送成功结果
//            updateAndPushStatus(taskId, "Success", result, uuid);
//
//            // 5. 手动 ACK（确认消息处理成功）
//            channel.basicAck(deliveryTag, false);
//            log.info("[判题消费者] 任务处理成功, taskId: {}, 结果: {}", taskId, result);
//
//        } catch (Exception e) {
//            // 6. 失败：记录日志 + 推送失败状态
//            log.error("[判题消费者] 任务处理失败, taskId: {}, 错误: {}", taskId, e.getMessage(), e);
//            updateAndPushStatus(taskId, "Failed", null, uuid);
//
//            // 7. 抛出异常，让 Spring retry 机制接管：
//            // - 重试次数内：自动重试（YAML 配置），并推送 Retrying 状态（可选扩展）
//            // - 超次：自动 NACK (requeue=false) 进 DLQ
//            // 如果想强制不重试：throw new AmqpRejectAndDontRequeueException("失败", e);
//            throw e;
//        }
//    }
//
//    /**
//     * 更新并推送判题状态
//     * - status="Running/Failed"：推中间/失败状态
//     * - status="Success"：推最终结果
//     */
//    private void updateAndPushStatus(String taskId, String status, Judge result, Long uuid) {
//        try {
//            if ("Running".equals(status) || "Failed".equals(status)) {
//                // 推送中间/失败状态
//                JudgeTask statusUpdate = new JudgeTask();
//                statusUpdate.setTaskId(taskId);
//                statusUpdate.setStatus(status);
//                statusUpdate.setMessage(status.equals("Running") ? "正在判题中..." : "判题失败: " + status);
//                statusUpdate.setUserUuid(uuid);
//                statusUpdate.setSubmitTime(new Date());
//                messagingTemplate.convertAndSend("/topic/judge/" + taskId, statusUpdate);
//                log.debug("[判题消费者] 推送状态: taskId={}, status={}", taskId, status);
//            } else {
//                // 推送最终结果
//                messagingTemplate.convertAndSend("/topic/judge/" + taskId, result);
//                log.debug("[判题消费者] 推送结果: taskId={}", taskId);
//            }
//        } catch (Exception e) {
//            log.error("[判题消费者] WebSocket 推送失败, taskId: {}", taskId, e);
//        }
//    }
//
//}