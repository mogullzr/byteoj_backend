package com.example.backend.service.algorithm;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.mapper.SubmissionsAlgorithmMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 对账长期 Pending 的提交，避免 RabbitMQ 消息丢失或外部消费者误确认后永久挂起。
 * 正常判题应在超时阈值前结束；超过阈值的记录只能落为系统错误，等待用户重新提交。
 */
@Slf4j
@Component
public class JudgePendingRecoveryScheduler {
    @Resource
    private SubmissionsAlgorithmMapper submissionsAlgorithmMapper;
    @Resource
    private JudgeTaskStateService stateService;

    @Value("${judge.pending-recovery.enabled:true}")
    private boolean enabled;
    @Value("${judge.pending-recovery.timeout-minutes:30}")
    private long timeoutMinutes;
    @Value("${judge.pending-recovery.batch-size:100}")
    private int batchSize;

    @Scheduled(
            fixedDelayString = "${judge.pending-recovery.interval-ms:60000}",
            initialDelayString = "${judge.pending-recovery.initial-delay-ms:120000}"
    )
    public void recoverStalePending() {
        if (!enabled) return;
        int safeBatchSize = Math.max(1, Math.min(batchSize, 500));
        long safeTimeoutMinutes = Math.max(5, timeoutMinutes);
        Date cutoff = new Date(System.currentTimeMillis() - safeTimeoutMinutes * 60_000L);
        Page<SubmissionsAlgorithm> page = new Page<>(1, safeBatchSize, false);
        QueryWrapper<SubmissionsAlgorithm> query = new QueryWrapper<>();
        query.eq("results", "Pending")
                .lt("submit_time", cutoff)
                .orderByAsc("submission_id");
        List<SubmissionsAlgorithm> stale = submissionsAlgorithmMapper.selectPage(page, query).getRecords();
        for (SubmissionsAlgorithm submission : stale) {
            SubmissionsAlgorithm update = new SubmissionsAlgorithm();
            update.setSubmission_id(submission.getSubmission_id());
            update.setResults("Internal Error");
            int updated = submissionsAlgorithmMapper.updateById(update);
            if (updated == 1) {
                stateService.clearSubmissionRuntime(submission.getSubmission_id());
                log.error("提交 {} 超过 {} 分钟仍为 Pending，已标记 Internal Error",
                        submission.getSubmission_id(), safeTimeoutMinutes);
            }
        }
    }
}
