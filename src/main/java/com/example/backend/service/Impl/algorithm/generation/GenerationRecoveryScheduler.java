package com.example.backend.service.Impl.algorithm.generation;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.mapper.AlgorithmTestGenerationJobMapper;
import com.example.backend.models.domain.algorithm.generation.AlgorithmTestGenerationJob;
import com.example.backend.service.algorithm.generation.AlgorithmTestGenerationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 补偿事务提交后 RabbitMQ 不可用导致的 QUEUED 任务。
 * 任务处理本身通过状态条件更新保证幂等，重复消息不会重复生成。
 */
@Slf4j
@Component
public class GenerationRecoveryScheduler {
    @Resource private AlgorithmTestGenerationJobMapper jobMapper;
    @Resource private AlgorithmTestGenerationService generationService;
    @Resource private AlgorithmTestGenerationProperties properties;

    @Scheduled(fixedDelayString = "${algorithm-test-generation.recovery-interval-seconds:30}000")
    public void recoverQueuedJobs() {
        if (!properties.isEnabled()) return;
        long timeout = Math.max(10, properties.getQueuedRecoveryTimeoutSeconds()) * 1000L;
        Date threshold = new Date(System.currentTimeMillis() - timeout);
        List<AlgorithmTestGenerationJob> jobs = jobMapper.selectList(new QueryWrapper<AlgorithmTestGenerationJob>()
                .eq("status", "QUEUED")
                .lt("updated_at", threshold)
                .orderByAsc("updated_at")
                .last("LIMIT 20"));
        for (AlgorithmTestGenerationJob job : jobs) {
            try {
                generationService.resendQueued(job.getId());
            } catch (RuntimeException ex) {
                log.warn("补偿投递测试样例生成任务失败，jobId={}", job.getId(), ex);
            }
        }
    }
}
