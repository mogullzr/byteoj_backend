package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.config.RabbitMQConfig;
import org.springframework.amqp.core.AmqpAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/**
 * 判题系统监控接口
 * 用于监控 RabbitMQ 队列状态和系统健康状况
 */
@RestController
@RequestMapping("/monitor/judge")
public class JudgeMonitorController {

    @Autowired(required = false)
    private AmqpAdmin rabbitAdmin;

    /**
     * 获取队列状态
     * 可以查看当前排队的任务数量、消费者数量等信息
     */
    @GetMapping("/queue/stats")
    public BaseResponse<Map<String, Object>> getQueueStats() {
        Map<String, Object> stats = new HashMap<>();
        
        try {
            if (rabbitAdmin != null) {
                List<Map<String, Object>> queues = new ArrayList<>();
                long totalMessageCount = 0;
                long totalConsumerCount = 0;
                int availableQueueCount = 0;

                for (int index = 0; index < RabbitMQConfig.SANDBOX_COUNT; index++) {
                    String queueName = RabbitMQConfig.QUEUE_NAMES[index];
                    Properties queueProperties = rabbitAdmin.getQueueProperties(queueName);
                    long messageCount = propertyAsLong(queueProperties, "QUEUE_MESSAGE_COUNT");
                    long consumerCount = propertyAsLong(queueProperties, "QUEUE_CONSUMER_COUNT");
                    boolean available = queueProperties != null;
                    if (available) availableQueueCount++;
                    totalMessageCount += messageCount;
                    totalConsumerCount += consumerCount;

                    Map<String, Object> queue = new LinkedHashMap<>();
                    queue.put("sandboxIndex", index);
                    queue.put("name", queueName);
                    queue.put("messageCount", messageCount);
                    queue.put("consumerCount", consumerCount);
                    queue.put("available", available);
                    queues.add(queue);
                }

                Properties dlqProperties = rabbitAdmin.getQueueProperties("judge.submit.dlq");

                stats.put("mainQueue", Map.of(
                        "name", "judge.submit.queue.*",
                        "messageCount", totalMessageCount,
                        "consumerCount", totalConsumerCount
                ));
                stats.put("queues", queues);
                stats.put("totalWaiting", totalMessageCount);
                stats.put("totalConsumers", totalConsumerCount);
                stats.put("sandboxCount", RabbitMQConfig.SANDBOX_COUNT);
                stats.put("availableQueueCount", availableQueueCount);
                
                if (dlqProperties != null) {
                    stats.put("deadLetterQueue", Map.of(
                        "name", "judge.submit.dlq",
                        "messageCount", propertyAsLong(dlqProperties, "QUEUE_MESSAGE_COUNT"),
                        "consumerCount", propertyAsLong(dlqProperties, "QUEUE_CONSUMER_COUNT")
                    ));
                }
                
                stats.put("status", availableQueueCount == RabbitMQConfig.SANDBOX_COUNT
                        ? "healthy" : "partial");
            } else {
                stats.put("status", "unavailable");
                stats.put("message", "RabbitAdmin not available");
            }
        } catch (Exception e) {
            stats.put("status", "error");
            stats.put("message", e.getMessage());
        }
        
        return ResultUtils.success(stats);
    }

    private long propertyAsLong(Properties properties, String key) {
        if (properties == null) return 0L;
        Object value = properties.get(key);
        if (value instanceof Number) return ((Number) value).longValue();
        if (value == null) return 0L;
        try {
            return Long.parseLong(String.valueOf(value));
        } catch (NumberFormatException ignored) {
            return 0L;
        }
    }

    /**
     * 健康检查接口
     */
    @GetMapping("/health")
    public BaseResponse<Map<String, Object>> healthCheck() {
        Map<String, Object> health = new HashMap<>();
        health.put("status", "UP");
        health.put("service", "judge-system");
        health.put("maxConcurrency", 10);
        health.put("timestamp", System.currentTimeMillis());
        
        return ResultUtils.success(health);
    }
}

