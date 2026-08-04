package com.example.backend.aop.rabbitmq;

import com.example.backend.config.RabbitMQConfig;
import com.example.backend.models.domain.judge.JudgeTaskMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import com.rabbitmq.client.Channel;

/**
 * 死信队列消费者
 * 用于监控和记录失败的判题任务
 * 可以在这里添加告警、重新处理等逻辑
 */
@Component
@RabbitListener(queues = RabbitMQConfig.DLQ_QUEUE_NAME)
public class DeadLetterQueueConsumer {
    private static final Logger log = LoggerFactory.getLogger(DeadLetterQueueConsumer.class);

    @RabbitHandler
    public void handleDeadLetter(JudgeTaskMessage message, Channel channel, Message amqpMessage) {
        try {
            long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
            String taskId = message.getTaskId();
            Long uuid = message.getUserUuid();

            log.error("[死信队列] 收到失败任务: taskId={}, uuid={}, problemId={}",
                    taskId, uuid, message.getJudgeRequest().getProblem_id());

            // TODO: 可以在这里添加以下功能：
            // 1. 保存失败记录到数据库
            // 2. 发送告警通知（邮件、钉钉等）
            // 3. 记录到日志文件供后续分析
            // 4. 根据具体情况决定是否人工重试

            // 确认消息（防止死信队列堆积）
            channel.basicAck(deliveryTag, false);

        } catch (Exception e) {
            log.error("[死信队列] 处理死信消息失败", e);
        }
    }
}
