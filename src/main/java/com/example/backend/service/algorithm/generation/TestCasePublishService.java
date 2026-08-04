package com.example.backend.service.algorithm.generation;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.AlgorithmTestCaseMapper;
import com.example.backend.mapper.AlgorithmTestCaseStagingMapper;
import com.example.backend.mapper.AlgorithmTestGenerationJobMapper;
import com.example.backend.models.domain.algorithm.generation.AlgorithmTestCaseStaging;
import com.example.backend.models.domain.algorithm.generation.AlgorithmTestGenerationJob;
import com.example.backend.models.domain.algorithm.test.AlgorithmTestCase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class TestCasePublishService {
    @Resource private AlgorithmTestCaseMapper testCaseMapper;
    @Resource private AlgorithmTestCaseStagingMapper stagingMapper;
    @Resource private AlgorithmTestGenerationJobMapper jobMapper;

    @Transactional(rollbackFor = Exception.class)
    public int publish(Long jobId) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId);
        if (job == null || !"PERSISTING".equals(job.getStatus())) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "任务不处于可发布状态");
        }
        Set<String> existingHashes = new HashSet<>();
        if ("REPLACE".equals(job.getWrite_mode())) {
            testCaseMapper.delete(new QueryWrapper<AlgorithmTestCase>().eq("problem_id", job.getProblem_id()));
        } else {
            List<AlgorithmTestCase> existing = testCaseMapper.selectList(new QueryWrapper<AlgorithmTestCase>().eq("problem_id", job.getProblem_id()));
            for (AlgorithmTestCase item : existing) {
                if (item.getInput_hash() != null && !item.getInput_hash().isBlank()) {
                    existingHashes.add(item.getInput_hash());
                } else if (item.getInput() != null) {
                    existingHashes.add(GenerationSupport.sha256(item.getInput()));
                }
            }
        }
        int inserted = 0;
        int duplicate = 0;
        int seen = 0;
        int pageNo = 1;
        int pageSize = 100;
        Set<String> jobHashes = new HashSet<>();
        while (seen < job.getRequested_case_count()) {
            List<AlgorithmTestCaseStaging> staging = stagingMapper.selectPage(new Page<>(pageNo++, pageSize, false),
                    new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", jobId).orderByAsc("id")).getRecords();
            if (staging.isEmpty()) break;
            for (AlgorithmTestCaseStaging item : staging) {
                if (!jobHashes.add(item.getInput_hash()) || existingHashes.contains(item.getInput_hash())) {
                    duplicate++;
                    continue;
                }
                AlgorithmTestCase target = new AlgorithmTestCase();
                target.setProblem_id(job.getProblem_id());
                target.setInput(item.getInput());
                target.setOutput(item.getOutput() == null ? "" : item.getOutput());
                target.setCreate_time(new Date());
                target.setGeneration_job_id(jobId);
                target.setScale_type(item.getScale_type());
                target.setInput_hash(item.getInput_hash());
                target.setSource_type("AI_GENERATED");
                testCaseMapper.insert(target);
                inserted++;
            }
            seen += staging.size();
        }
        if (seen != job.getRequested_case_count()) throw new BusinessException(ErrorCode.SYSTEM_ERROR, "暂存样例数量不完整");
        job.setPublished_case_count(inserted);
        job.setDuplicate_case_count(duplicate);
        job.setProgress_percent(100);
        job.setStatus("SUCCEEDED");
        job.setCurrent_stage("已发布 " + inserted + " 条测试样例");
        job.setFinished_at(new Date());
        job.setUpdated_at(new Date());
        jobMapper.updateById(job);
        return inserted;
    }
}
