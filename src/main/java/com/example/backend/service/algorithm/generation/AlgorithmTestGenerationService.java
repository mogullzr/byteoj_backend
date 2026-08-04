package com.example.backend.service.algorithm.generation;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.ErrorCode;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.config.AlgorithmTestGenerationRabbitConfig;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.generation.*;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBankDetailed;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmLimit;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.request.algorithm.generation.CreateTestGenerationJobRequest;
import com.example.backend.models.request.algorithm.generation.GeneratorDebugRequest;
import com.example.backend.models.request.algorithm.generation.TestGenerationScaleRequest;
import com.example.backend.models.vo.algorithm.generation.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronization;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;
import java.util.*;
import java.util.concurrent.CancellationException;

@Service
public class AlgorithmTestGenerationService {
    private static final Set<String> ACTIVE = Set.of("CREATED", "QUEUED", "AI_GENERATING", "GENERATOR_VALIDATING", "INPUT_GENERATING", "REFERENCE_VALIDATING", "OUTPUT_GENERATING", "DATA_VALIDATING", "PERSISTING", "CANCEL_REQUESTED");
    private static final Set<String> SCALES = Set.of("SMALL", "MEDIUM", "LARGE", "EXTREME", "CUSTOM");

    @Resource private AlgorithmTestGenerationJobMapper jobMapper;
    @Resource private AlgorithmTestGenerationScaleMapper scaleMapper;
    @Resource private AlgorithmTestCaseStagingMapper stagingMapper;
    @Resource private ProblemAlgorithmBankMapper problemMapper;
    @Resource private ProblemAlgorithmBankDetailedMapper detailedMapper;
    @Resource private ProblemAlgorithmLimitMapper limitMapper;
    @Resource private AlgorithmTestGenerationProperties properties;
    @Resource private AlgorithmTestGeneratorAiClient aiClient;
    @Resource private GeneratorProtocolService generatorProtocol;
    @Resource private ReferenceSolutionService referenceSolutionService;
    @Resource private TestCasePublishService publishService;
    @Resource private RabbitTemplate rabbitTemplate;
    @Resource private SimpMessagingTemplate messagingTemplate;
    @Resource private ObjectMapper objectMapper;

    @Transactional(rollbackFor = Exception.class)
    public TestGenerationJobVO create(CreateTestGenerationJobRequest request, Long userId) {
        validateCreate(request);
        ProblemAlgorithmBank problem = problemMapper.selectById(request.getProblemId());
        if (problem == null || Objects.equals(problem.getIs_delete(), 1)) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "算法题不存在");
        jobMapper.lockProblem(request.getProblemId());
        Long activeCount = jobMapper.selectCount(new QueryWrapper<AlgorithmTestGenerationJob>()
                .eq("problem_id", request.getProblemId()).in("status", ACTIVE));
        if (activeCount > 0) throw new BusinessException(ErrorCode.OPERATION_ERROR, "该题已有生成任务正在执行");
        boolean generateOutput = Boolean.TRUE.equals(request.getGenerateExpectedOutput());
        if (generateOutput) referenceSolutionService.requireVerified(request.getReferenceSolutionId(), request.getProblemId());
        if (!generateOutput) {
            ProblemAlgorithmLimit limit = limitMapper.selectOne(new QueryWrapper<ProblemAlgorithmLimit>().eq("problem_id", request.getProblemId()));
            boolean hasChecker = limit != null && limit.getRun_code() != null && !limit.getRun_code().isBlank();
            if (!hasChecker && !Boolean.TRUE.equals(request.getConfirmEmptyOutput())) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "本题没有自定义校验器，不生成输出会无法判题，请二次确认");
            }
        }
        Date now = new Date();
        AlgorithmTestGenerationJob job = new AlgorithmTestGenerationJob();
        job.setProblem_id(request.getProblemId()); job.setCreator_uuid(userId); job.setModel(request.getModel());
        job.setStatus("CREATED"); job.setCurrent_stage("正在创建任务"); job.setProgress_percent(0);
        job.setWrite_mode(request.getWriteMode() == null ? "APPEND" : request.getWriteMode().toUpperCase());
        job.setGenerate_expected_output(generateOutput); job.setReference_solution_id(request.getReferenceSolutionId());
        job.setPreview_chars(request.getPreviewChars() == null ? 200 : Math.max(50, Math.min(1000, request.getPreviewChars())));
        job.setRequested_case_count(request.getScales().stream().mapToInt(TestGenerationScaleRequest::getCount).sum());
        job.setGenerated_case_count(0); job.setOutput_completed_count(0); job.setPublished_case_count(0); job.setDuplicate_case_count(0);
        job.setGenerated_input_bytes(0L); job.setGenerated_output_bytes(0L); job.setRetry_count(0); job.setVersion(0);
        job.setCreated_at(now); job.setUpdated_at(now);
        jobMapper.insert(job);
        Random random = new Random();
        for (TestGenerationScaleRequest item : request.getScales()) {
            AlgorithmTestGenerationScale scale = new AlgorithmTestGenerationScale();
            scale.setJob_id(job.getId()); scale.setScale_type(item.getScale().toUpperCase()); scale.setRequested_count(item.getCount());
            scale.setGenerated_count(0); scale.setOutput_completed_count(0); scale.setConstraints_text(item.getConstraints());
            scale.setRandom_seed(item.getSeed() == null ? random.nextLong() : item.getSeed()); scale.setStatus("PENDING");
            scale.setCurrent_batch(0); scale.setTotal_batches((item.getCount() + properties.getGenerator().getBatchSize() - 1) / properties.getGenerator().getBatchSize());
            scale.setCreated_at(now); scale.setUpdated_at(now); scaleMapper.insert(scale);
        }
        job.setStatus("QUEUED");
        job.setQueued_at(new Date());
        job.setCurrent_stage("已进入生成队列");
        job.setUpdated_at(new Date());
        jobMapper.updateById(job);
        Long createdJobId = job.getId();
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronization() {
            @Override
            public void afterCommit() {
                sendMessage(jobMapper.selectById(createdJobId));
            }
        });
        return get(job.getId());
    }

    public GeneratorDebugResultVO debugGenerator(GeneratorDebugRequest request) {
        int count = request.getCount() == null ? 3 : request.getCount();
        if (count < 1 || count > properties.getGenerator().getDebugMaxCount()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "调试数量超限");
        long start = System.currentTimeMillis();
        List<String> inputs = generatorProtocol.execute(request.getCode(), request.getSeed() == null ? 1L : request.getSeed(), request.getStartIndex() == null ? 0 : request.getStartIndex(), count);
        GeneratorDebugResultVO vo = new GeneratorDebugResultVO();
        vo.setStatus("SUCCEEDED"); vo.setElapsedMs(System.currentTimeMillis() - start); vo.setGeneratedCount(inputs.size());
        vo.setStdoutBytes(inputs.stream().mapToLong(v -> v.getBytes(StandardCharsets.UTF_8).length).sum()); vo.setStderrPreview("");
        int preview = request.getPreviewChars() == null ? 200 : request.getPreviewChars();
        List<GeneratedCasePreviewVO> cases = new ArrayList<>();
        for (int i = 0; i < inputs.size(); i++) cases.add(GenerationSupport.preview(i, request.getScale(), inputs.get(i), null, preview));
        vo.setCases(cases);
        return vo;
    }

    public void process(Long jobId) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId);
        if (job == null || Set.of("SUCCEEDED", "CANCELLED").contains(job.getStatus())) return;
        if ("CANCEL_REQUESTED".equals(job.getStatus())) {
            job.setStatus("CANCELLED");
            job.setCurrent_stage("任务已取消");
            job.setFinished_at(new Date());
            job.setUpdated_at(new Date());
            jobMapper.updateById(job);
            push(job);
            return;
        }
        int claimed = jobMapper.update(null, new UpdateWrapper<AlgorithmTestGenerationJob>()
                .set("status", "AI_GENERATING")
                .set("current_stage", "AI 正在生成各规模数据程序")
                .set("progress_percent", 5)
                .set("started_at", job.getStarted_at() == null ? new Date() : job.getStarted_at())
                .set("updated_at", new Date())
                .eq("id", jobId)
                .in("status", "CREATED", "QUEUED"));
        if (claimed == 0) return;
        try {
            job = jobMapper.selectById(jobId);
            push(job);
            ProblemAlgorithmBank problem = problemMapper.selectById(job.getProblem_id());
            ProblemAlgorithmBankDetailed detail = detailedMapper.selectOne(new QueryWrapper<ProblemAlgorithmBankDetailed>().eq("problem_id", job.getProblem_id()));
            String context = "题目：" + firstNonBlank(problem.getChinese_name(), problem.getEnglish_name(), problem.getShort_name())
                    + "\n描述：" + nullToEmpty(problem.getDescription()) + "\n题面：" + (detail == null ? "" : nullToEmpty(detail.getMd_cn()));
            List<AlgorithmTestGenerationScale> scales = scales(jobId);
            int scaleIndex = 0;
            for (AlgorithmTestGenerationScale scale : scales) {
                checkCancel(jobId);
                scale.setStatus("AI_GENERATING"); scale.setUpdated_at(new Date()); scaleMapper.updateById(scale);
                AlgorithmTestGeneratorAiClient.GeneratedProgram program = aiClient.generate(job.getModel(), context, scale.getScale_type(), scale.getConstraints_text());
                generatorProtocol.validateCode(program.getCode());
                scale.setGenerator_language("python"); scale.setGenerator_protocol_version(program.getProtocolVersion() == null ? "1.0" : program.getProtocolVersion());
                scale.setGenerator_code(program.getCode()); scale.setGenerator_code_hash(GenerationSupport.sha256(program.getCode()));
                scale.setAi_assumptions(writeJson(program.getAssumptions())); scale.setAi_coverage(writeJson(program.getCoverage()));
                scale.setStatus("CODE_READY"); scale.setUpdated_at(new Date()); scaleMapper.updateById(scale);
                update(jobMapper.selectById(jobId), "GENERATOR_VALIDATING", "正在验证 " + scale.getScale_type() + " 生成器", 10 + scaleIndex * 5);
                List<String> first = generatorProtocol.execute(program.getCode(), scale.getRandom_seed(), 0, Math.min(2, scale.getRequested_count()));
                List<String> second = generatorProtocol.execute(program.getCode(), scale.getRandom_seed(), 0, Math.min(2, scale.getRequested_count()));
                if (!first.equals(second)) throw new BusinessException(ErrorCode.PARAMS_ERROR, scale.getScale_type() + " 生成器不具备确定性");
                generateScale(jobId, scale);
                scaleIndex++;
            }
            job = jobMapper.selectById(jobId);
            if (Boolean.TRUE.equals(job.getGenerate_expected_output())) generateOutputs(job);
            update(jobMapper.selectById(jobId), "DATA_VALIDATING", "正在校验测试数据", 90);
            validateStaging(jobMapper.selectById(jobId));
            update(jobMapper.selectById(jobId), "PERSISTING", "正在事务发布测试样例", 96);
            publishService.publish(jobId);
            push(jobMapper.selectById(jobId));
        } catch (CancellationException e) {
            job = jobMapper.selectById(jobId); job.setStatus("CANCELLED"); job.setCurrent_stage("任务已取消"); job.setFinished_at(new Date()); job.setUpdated_at(new Date()); jobMapper.updateById(job); push(job);
        } catch (Exception e) {
            job = jobMapper.selectById(jobId); job.setStatus("FAILED"); job.setError_code("GENERATION_FAILED");
            job.setError_message(GenerationSupport.abbreviate(e.getMessage(), 1900)); job.setCurrent_stage("生成失败"); job.setFinished_at(new Date()); job.setUpdated_at(new Date()); jobMapper.updateById(job); push(job);
            throw e;
        }
    }

    private void generateScale(Long jobId, AlgorithmTestGenerationScale scale) {
        scale.setStatus("GENERATING"); scaleMapper.updateById(scale);
        int batchSize = properties.getGenerator().getBatchSize();
        long totalBytes = 0;
        for (int start = 0; start < scale.getRequested_count(); start += batchSize) {
            checkCancel(jobId);
            int count = Math.min(batchSize, scale.getRequested_count() - start);
            List<String> inputs = generatorProtocol.execute(scale.getGenerator_code(), scale.getRandom_seed(), start, count);
            Date now = new Date();
            for (int i = 0; i < inputs.size(); i++) {
                String input = inputs.get(i); long bytes = input.getBytes(StandardCharsets.UTF_8).length;
                if (bytes > properties.getLimits().getMaxInputBytesPerCase()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "单条输入超过限制");
                totalBytes += bytes;
                AlgorithmTestCaseStaging item = new AlgorithmTestCaseStaging();
                item.setJob_id(jobId); item.setScale_id(scale.getId()); item.setScale_type(scale.getScale_type()); item.setCase_index(start + i);
                item.setInput(input); item.setInput_hash(GenerationSupport.sha256(input)); item.setInput_bytes(bytes); item.setStatus("INPUT_READY"); item.setCreated_at(now); item.setUpdated_at(now);
                stagingMapper.insert(item);
            }
            scale.setGenerated_count(start + count); scale.setCurrent_batch((start / batchSize) + 1); scale.setUpdated_at(now); scaleMapper.updateById(scale);
            AlgorithmTestGenerationJob job = jobMapper.selectById(jobId); job.setGenerated_case_count(countStaging(jobId)); job.setGenerated_input_bytes(job.getGenerated_input_bytes() + inputs.stream().mapToLong(v -> v.getBytes(StandardCharsets.UTF_8).length).sum());
            if (job.getGenerated_input_bytes() > properties.getLimits().getMaxInputBytesPerJob()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "任务输入总量超过限制");
            job.setStatus("INPUT_GENERATING"); job.setCurrent_stage("正在生成 " + scale.getScale_type() + " 第 " + scale.getCurrent_batch() + "/" + scale.getTotal_batches() + " 批");
            job.setProgress_percent(Math.min(75, 20 + job.getGenerated_case_count() * 55 / job.getRequested_case_count())); job.setUpdated_at(now); jobMapper.updateById(job); push(job);
        }
        scale.setStatus("GENERATED"); scale.setUpdated_at(new Date()); scaleMapper.updateById(scale);
    }

    private void generateOutputs(AlgorithmTestGenerationJob job) {
        update(job, "REFERENCE_VALIDATING", "正在确认参考解", 76);
        ProblemAlgorithmReferenceSolution reference = referenceSolutionService.requireVerified(job.getReference_solution_id(), job.getProblem_id());
        int batchSize = properties.getReference().getBatchSize();
        long outputBytes = 0;
        AlgorithmTestCaseStaging first = stagingMapper.selectOne(new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", job.getId()).orderByAsc("id").last("LIMIT 1"));
        if (first == null) throw new BusinessException(ErrorCode.SYSTEM_ERROR, "没有可生成输出的测试输入");
        try (ReferenceSolutionService.ReferenceRunner runner = referenceSolutionService.openRunner(reference, first.getInput())) {
            int completed = 0;
            while (completed < job.getRequested_case_count()) {
                checkCancel(job.getId());
                Page<AlgorithmTestCaseStaging> page = stagingMapper.selectPage(new Page<>((completed / batchSize) + 1, batchSize, false),
                        new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", job.getId()).orderByAsc("id"));
                List<AlgorithmTestCaseStaging> batch = page.getRecords();
                if (batch.isEmpty()) throw new BusinessException(ErrorCode.SYSTEM_ERROR, "分页读取暂存输入失败");
                List<String> outputs = runner.run(batch.stream().map(AlgorithmTestCaseStaging::getInput).toList());
                for (int i = 0; i < batch.size(); i++) {
                    String output = outputs.get(i); long bytes = output.getBytes(StandardCharsets.UTF_8).length;
                    if (bytes > properties.getLimits().getMaxOutputBytesPerCase()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "单条输出超过限制");
                    outputBytes += bytes; AlgorithmTestCaseStaging item = batch.get(i); item.setOutput(output); item.setOutput_hash(GenerationSupport.sha256(output)); item.setOutput_bytes(bytes); item.setStatus("OUTPUT_READY"); item.setUpdated_at(new Date()); stagingMapper.updateById(item);
                }
                if (outputBytes > properties.getLimits().getMaxOutputBytesPerJob()) {
                    throw new BusinessException(ErrorCode.PARAMS_ERROR, "任务输出总量超过限制");
                }
                completed += batch.size();
                job = jobMapper.selectById(job.getId()); job.setStatus("OUTPUT_GENERATING"); job.setOutput_completed_count(completed); job.setGenerated_output_bytes(outputBytes);
                job.setProgress_percent(76 + job.getOutput_completed_count() * 12 / job.getRequested_case_count()); job.setCurrent_stage("正在生成标准输出 " + job.getOutput_completed_count() + "/" + job.getRequested_case_count()); job.setUpdated_at(new Date()); jobMapper.updateById(job); push(job);
            }
        }
    }

    private void validateStaging(AlgorithmTestGenerationJob job) {
        Set<String> hashes = new HashSet<>();
        int pageNo = 1;
        int seen = 0;
        int pageSize = Math.max(25, Math.min(200, properties.getGenerator().getBatchSize()));
        while (seen < job.getRequested_case_count()) {
            List<AlgorithmTestCaseStaging> list = stagingMapper.selectPage(new Page<>(pageNo++, pageSize, false),
                    new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", job.getId()).orderByAsc("id")).getRecords();
            if (list.isEmpty()) break;
            for (AlgorithmTestCaseStaging item : list) {
                if (item.getInput() == null || item.getInput().isBlank()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "存在空测试输入");
                if (!hashes.add(item.getInput_hash())) throw new BusinessException(ErrorCode.PARAMS_ERROR, "本次生成存在重复输入，请调整规模约束或随机种子");
                if (Boolean.TRUE.equals(job.getGenerate_expected_output()) && item.getOutput() == null) throw new BusinessException(ErrorCode.SYSTEM_ERROR, "存在未生成输出的测试数据");
            }
            seen += list.size();
        }
        if (seen != job.getRequested_case_count()) throw new BusinessException(ErrorCode.SYSTEM_ERROR, "生成数量不完整");
    }

    public TestGenerationJobVO get(Long jobId) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId);
        if (job == null) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "生成任务不存在");
        return toVO(job, true);
    }

    public List<TestGenerationJobVO> list(Long problemId, int pageNum, int pageSize) {
        QueryWrapper<AlgorithmTestGenerationJob> query = new QueryWrapper<AlgorithmTestGenerationJob>().orderByDesc("created_at");
        if (problemId != null) query.eq("problem_id", problemId);
        List<TestGenerationJobVO> result = new ArrayList<>();
        for (AlgorithmTestGenerationJob job : jobMapper.selectPage(new Page<>(Math.max(1, pageNum), Math.min(50, Math.max(1, pageSize))), query).getRecords()) result.add(toVO(job, false));
        return result;
    }

    public List<GeneratedCasePreviewVO> previews(Long jobId, int limit) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId); if (job == null) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "任务不存在");
        List<AlgorithmTestCaseStaging> list = stagingMapper.selectList(new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", jobId).orderByAsc("scale_id", "case_index").last("LIMIT " + Math.min(50, Math.max(1, limit))));
        List<GeneratedCasePreviewVO> result = new ArrayList<>(); int i = 0;
        for (AlgorithmTestCaseStaging item : list) result.add(GenerationSupport.preview(i++, item.getScale_type(), item.getInput(), item.getOutput(), job.getPreview_chars()));
        return result;
    }

    public void cancel(Long jobId) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId); if (job == null) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "任务不存在");
        if (Set.of("SUCCEEDED", "FAILED", "CANCELLED").contains(job.getStatus())) throw new BusinessException(ErrorCode.OPERATION_ERROR, "当前状态不能取消");
        job.setStatus("CANCEL_REQUESTED"); job.setCurrent_stage("等待当前批次结束后取消"); job.setUpdated_at(new Date()); jobMapper.updateById(job); push(job);
    }

    @Transactional(rollbackFor = Exception.class)
    public void retry(Long jobId) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId); if (job == null) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "任务不存在");
        if (!Set.of("FAILED", "CANCELLED").contains(job.getStatus())) throw new BusinessException(ErrorCode.OPERATION_ERROR, "只有失败或已取消任务可以重试");
        stagingMapper.delete(new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", jobId));
        for (AlgorithmTestGenerationScale scale : scales(jobId)) { scale.setGenerated_count(0); scale.setOutput_completed_count(0); scale.setCurrent_batch(0); scale.setStatus(scale.getGenerator_code() == null ? "PENDING" : "CODE_READY"); scale.setError_message(null); scaleMapper.updateById(scale); }
        job.setStatus("QUEUED"); job.setCurrent_stage("已进入重试队列"); job.setProgress_percent(0); job.setGenerated_case_count(0); job.setOutput_completed_count(0); job.setPublished_case_count(0); job.setDuplicate_case_count(0); job.setGenerated_input_bytes(0L); job.setGenerated_output_bytes(0L); job.setRetry_count(job.getRetry_count() + 1); job.setError_code(null); job.setError_message(null); job.setFinished_at(null); job.setQueued_at(new Date()); job.setUpdated_at(new Date()); jobMapper.updateById(job);
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronization() {
            @Override
            public void afterCommit() { sendMessage(jobMapper.selectById(jobId)); }
        });
    }

    private void validateCreate(CreateTestGenerationJobRequest request) {
        if (!properties.isEnabled()) throw new BusinessException(ErrorCode.OPERATION_ERROR, "测试样例生成功能未启用");
        if (request == null || request.getProblemId() == null || request.getModel() == null || request.getModel().isBlank() || request.getScales() == null || request.getScales().isEmpty()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "题目、模型和规模不能为空");
        if (request.getScales().size() > properties.getMaxScalesPerJob()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "规模数量超限");
        Set<String> names = new HashSet<>(); int total = 0;
        for (TestGenerationScaleRequest scale : request.getScales()) {
            String name = scale.getScale() == null ? "" : scale.getScale().toUpperCase();
            if (!SCALES.contains(name) || !names.add(name) || scale.getCount() == null || scale.getCount() < 1 || scale.getCount() > properties.getMaxCasesPerScale() || scale.getConstraints() == null || scale.getConstraints().isBlank()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "规模配置无效或重复");
            total += scale.getCount();
        }
        if (total > properties.getMaxCasesPerJob()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "任务样例总数超限");
        String mode = request.getWriteMode() == null ? "APPEND" : request.getWriteMode().toUpperCase();
        if (!Set.of("APPEND", "REPLACE").contains(mode)) throw new BusinessException(ErrorCode.PARAMS_ERROR, "写入模式无效");
        if (Boolean.TRUE.equals(request.getGenerateExpectedOutput()) && request.getReferenceSolutionId() == null) throw new BusinessException(ErrorCode.PARAMS_ERROR, "生成标准输出时必须选择参考解");
    }

    /** 投递失败不能回滚已提交的任务，因此由恢复调度器再次扫描 QUEUED 任务。 */
    public void resendQueued(Long jobId) {
        AlgorithmTestGenerationJob job = jobMapper.selectById(jobId);
        if (job == null || !"QUEUED".equals(job.getStatus())) return;
        sendMessage(job);
    }

    private void sendMessage(AlgorithmTestGenerationJob job) {
        if (job == null || job.getId() == null) return;
        try {
            rabbitTemplate.convertAndSend(AlgorithmTestGenerationRabbitConfig.EXCHANGE, AlgorithmTestGenerationRabbitConfig.ROUTING_KEY,
                    new AlgorithmTestGenerationMessage(job.getId(), job.getRetry_count(), System.currentTimeMillis()));
            jobMapper.update(null, new UpdateWrapper<AlgorithmTestGenerationJob>()
                    .set("updated_at", new Date())
                    .eq("id", job.getId())
                    .eq("status", "QUEUED"));
            push(job);
        } catch (RuntimeException ignored) {
            // RabbitMQ 暂不可用时保留 QUEUED 状态，GenerationRecoveryScheduler 会补偿投递。
        }
    }
    private void checkCancel(Long jobId) { if ("CANCEL_REQUESTED".equals(jobMapper.selectById(jobId).getStatus())) throw new CancellationException(); }
    private int countStaging(Long jobId) { return Math.toIntExact(stagingMapper.selectCount(new QueryWrapper<AlgorithmTestCaseStaging>().eq("job_id", jobId))); }
    private List<AlgorithmTestGenerationScale> scales(Long jobId) { return scaleMapper.selectList(new QueryWrapper<AlgorithmTestGenerationScale>().eq("job_id", jobId).orderByAsc("id")); }
    private void update(AlgorithmTestGenerationJob job, String status, String stage, int progress) { job.setStatus(status); job.setCurrent_stage(stage); job.setProgress_percent(progress); if (job.getStarted_at() == null) job.setStarted_at(new Date()); job.setUpdated_at(new Date()); jobMapper.updateById(job); push(job); }
    private void push(AlgorithmTestGenerationJob job) { messagingTemplate.convertAndSend("/topic/test-generation/" + job.getId(), toVO(job, false)); }
    private String writeJson(Object value) { try { return objectMapper.writeValueAsString(value == null ? List.of() : value); } catch (Exception e) { return "[]"; } }
    private String nullToEmpty(String value) { return value == null ? "" : value; }
    private String firstNonBlank(String... values) { for (String value : values) if (value != null && !value.isBlank()) return value; return "未命名题目"; }

    private TestGenerationJobVO toVO(AlgorithmTestGenerationJob job, boolean withScales) {
        TestGenerationJobVO vo = new TestGenerationJobVO(); vo.setJobId(job.getId()); vo.setProblemId(job.getProblem_id()); vo.setStatus(job.getStatus()); vo.setCurrentStage(job.getCurrent_stage()); vo.setProgressPercent(job.getProgress_percent()); vo.setWriteMode(job.getWrite_mode()); vo.setGenerateExpectedOutput(job.getGenerate_expected_output()); vo.setReferenceSolutionId(job.getReference_solution_id()); vo.setRequestedCases(job.getRequested_case_count()); vo.setGeneratedCases(job.getGenerated_case_count()); vo.setOutputCompletedCases(job.getOutput_completed_count()); vo.setPublishedCases(job.getPublished_case_count()); vo.setDuplicateCases(job.getDuplicate_case_count()); vo.setRetryCount(job.getRetry_count()); vo.setErrorCode(job.getError_code()); vo.setErrorMessage(job.getError_message()); vo.setCreatedAt(job.getCreated_at()); vo.setStartedAt(job.getStarted_at()); vo.setFinishedAt(job.getFinished_at()); vo.setWebSocketTopic("/topic/test-generation/" + job.getId());
        if (withScales) { List<TestGenerationScaleVO> scaleVOs = new ArrayList<>(); for (AlgorithmTestGenerationScale scale : scales(job.getId())) { TestGenerationScaleVO item = new TestGenerationScaleVO(); item.setId(scale.getId()); item.setScale(scale.getScale_type()); item.setRequestedCount(scale.getRequested_count()); item.setGeneratedCount(scale.getGenerated_count()); item.setOutputCompletedCount(scale.getOutput_completed_count()); item.setConstraints(scale.getConstraints_text()); item.setSeed(scale.getRandom_seed()); item.setStatus(scale.getStatus()); item.setGeneratorCode(scale.getGenerator_code()); item.setGeneratorCodeHash(scale.getGenerator_code_hash()); item.setCurrentBatch(scale.getCurrent_batch()); item.setTotalBatches(scale.getTotal_batches()); item.setErrorMessage(scale.getError_message()); scaleVOs.add(item); } vo.setScales(scaleVOs); }
        return vo;
    }
}
