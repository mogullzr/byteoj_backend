package com.example.backend.aop.rabbitmq;

import com.example.backend.config.AlgorithmTestGenerationRabbitConfig;
import com.example.backend.models.domain.algorithm.generation.AlgorithmTestGenerationMessage;
import com.example.backend.models.domain.algorithm.generation.AlgorithmTestGenerationJob;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.AlgorithmTestGenerationJobMapper;
import com.example.backend.service.algorithm.generation.AlgorithmTestGenerationService;
import com.rabbitmq.client.Channel;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;

import javax.annotation.Resource;
import java.io.IOException;

@Component
@Slf4j
@RabbitListener(queues = AlgorithmTestGenerationRabbitConfig.QUEUE, containerFactory = "algorithmTestGenerationListenerFactory")
public class AlgorithmTestGenerationConsumer {
    @Resource
    private AlgorithmTestGenerationService generationService;
    @Resource
    private AlgorithmTestGenerationJobMapper jobMapper;
    @Resource
    private AlgorithmTestGenerationProperties properties;

    @RabbitHandler
    public void handle(AlgorithmTestGenerationMessage task, Channel channel, Message message) throws IOException {
        long deliveryTag = message.getMessageProperties().getDeliveryTag();
        try {
            if (task == null || task.getJobId() == null) throw new IllegalArgumentException("生成任务 jobId 为空");
            generationService.process(task.getJobId());
            channel.basicAck(deliveryTag, false);
        } catch (Exception e) {
            AlgorithmTestGenerationJob job = task == null ? null : jobMapper.selectById(task.getJobId());
            int attempts = job == null || job.getRetry_count() == null ? 0 : job.getRetry_count();
            if (job != null && "FAILED".equals(job.getStatus()) && attempts < properties.getMaxRetries() && isRetryable(e)) {
                try {
                    // retry() 在独立事务中清理暂存数据并在提交后重新投递。
                    generationService.retry(job.getId());
                    channel.basicAck(deliveryTag, false);
                    return;
                } catch (Exception retryError) {
                    log.warn("测试样例生成有限重试失败，jobId={}，attempt={}", job.getId(), attempts, retryError);
                }
            }
            channel.basicNack(deliveryTag, false, false);
        }
    }

    private boolean isRetryable(Exception error) {
        if (error instanceof BusinessException) {
            int code = ((BusinessException) error).getCode();
            return code == ErrorCode.SYSTEM_ERROR.getCode() || code == ErrorCode.OPERATION_ERROR.getCode();
        }
        return true;
    }
}
