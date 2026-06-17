package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import org.springframework.amqp.rabbit.core.RabbitAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
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
    private RabbitAdmin rabbitAdmin;

    /**
     * 获取队列状态
     * 可以查看当前排队的任务数量、消费者数量等信息
     */
    @GetMapping("/queue/stats")
    public BaseResponse<Map<String, Object>> getQueueStats() {
        Map<String, Object> stats = new HashMap<>();
        
        try {
            if (rabbitAdmin != null) {
                Properties queueProperties = rabbitAdmin.getQueueProperties("judge.submit.queue");
                Properties dlqProperties = rabbitAdmin.getQueueProperties("judge.submit.dlq");
                
                if (queueProperties != null) {
                    stats.put("mainQueue", Map.of(
                        "name", "judge.submit.queue",
                        "messageCount", queueProperties.getOrDefault("QUEUE_MESSAGE_COUNT", 0),
                        "consumerCount", queueProperties.getOrDefault("QUEUE_CONSUMER_COUNT", 0)
                    ));
                }
                
                if (dlqProperties != null) {
                    stats.put("deadLetterQueue", Map.of(
                        "name", "judge.submit.dlq",
                        "messageCount", dlqProperties.getOrDefault("QUEUE_MESSAGE_COUNT", 0),
                        "consumerCount", dlqProperties.getOrDefault("QUEUE_CONSUMER_COUNT", 0)
                    ));
                }
                
                stats.put("status", "healthy");
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

