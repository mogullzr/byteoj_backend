package com.example.backend.service.algorithm.generation;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.ErrorCode;
import com.example.backend.config.AlgorithmTestGenerationProperties;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.AlgorithmTestCaseMapper;
import com.example.backend.mapper.ProblemAlgorithmLimitMapper;
import com.example.backend.mapper.ProblemAlgorithmReferenceSolutionMapper;
import com.example.backend.models.domain.algorithm.generation.ProblemAlgorithmReferenceSolution;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmLimit;
import com.example.backend.models.domain.algorithm.test.AlgorithmTestCase;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.request.algorithm.generation.ReferenceSolutionDebugRequest;
import com.example.backend.models.request.algorithm.generation.ReferenceSolutionUpsertRequest;
import com.example.backend.models.vo.algorithm.generation.GeneratedCasePreviewVO;
import com.example.backend.models.vo.algorithm.generation.ReferenceSolutionVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Service
public class ReferenceSolutionService {
    @Resource private ProblemAlgorithmReferenceSolutionMapper referenceMapper;
    @Resource private AlgorithmTestCaseMapper testCaseMapper;
    @Resource private ProblemAlgorithmLimitMapper limitMapper;
    @Resource private SandboxExecutionService sandbox;
    @Resource private AlgorithmTestGenerationProperties properties;

    public ReferenceSolutionVO save(ReferenceSolutionUpsertRequest request, Long userId) {
        if (request == null || request.getProblemId() == null || request.getLanguage() == null || request.getSourceCode() == null || request.getSourceCode().isBlank()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参考解的题目、语言和代码不能为空");
        }
        ProblemAlgorithmReferenceSolution entity = request.getId() == null ? new ProblemAlgorithmReferenceSolution() : referenceMapper.selectById(request.getId());
        if (entity == null) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "参考解不存在");
        Date now = new Date();
        boolean isNew = entity.getId() == null;
        entity.setProblem_id(request.getProblemId());
        entity.setLanguage(request.getLanguage().trim().toLowerCase());
        entity.setSource_code(request.getSourceCode());
        entity.setSource_code_hash(GenerationSupport.sha256(request.getSourceCode()));
        entity.setSource_type(request.getSourceType() == null ? "ADMIN_PROVIDED" : request.getSourceType());
        entity.setStatus("DRAFT");
        entity.setNote(request.getNote());
        entity.setUpdate_by(userId);
        entity.setUpdate_time(now);
        entity.setIs_deleted(0);
        if (isNew) {
            entity.setCreate_by(userId);
            entity.setCreate_time(now);
            referenceMapper.insert(entity);
        } else {
            referenceMapper.updateById(entity);
        }
        return toVO(entity);
    }

    public List<ReferenceSolutionVO> list(Long problemId) {
        List<ProblemAlgorithmReferenceSolution> entities = referenceMapper.selectList(new QueryWrapper<ProblemAlgorithmReferenceSolution>()
                .eq("problem_id", problemId).eq("is_deleted", 0).orderByDesc("update_time"));
        List<ReferenceSolutionVO> result = new ArrayList<>();
        for (ProblemAlgorithmReferenceSolution entity : entities) result.add(toVO(entity));
        return result;
    }

    public List<GeneratedCasePreviewVO> debug(ReferenceSolutionDebugRequest request) {
        ProblemAlgorithmReferenceSolution entity = resolve(request);
        List<String> inputs = request.getInputs();
        if (inputs == null || inputs.isEmpty() || inputs.size() > 10) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "调试输入数量必须为 1～10");
        }
        List<String> outputs = run(entity, inputs);
        int max = request.getPreviewChars() == null ? 200 : Math.max(50, Math.min(1000, request.getPreviewChars()));
        List<GeneratedCasePreviewVO> previews = new ArrayList<>();
        for (int i = 0; i < inputs.size(); i++) previews.add(GenerationSupport.preview(i, null, inputs.get(i), outputs.get(i), max));
        return previews;
    }

    public ReferenceSolutionVO validate(Long id, Long userId) {
        ProblemAlgorithmReferenceSolution entity = require(id);
        List<AlgorithmTestCase> cases = testCaseMapper.selectList(new QueryWrapper<AlgorithmTestCase>().eq("problem_id", entity.getProblem_id()));
        if (cases.isEmpty()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "题目没有现有测试数据，无法验证参考解");
        List<String> inputs = cases.stream().map(AlgorithmTestCase::getInput).toList();
        List<String> outputs = run(entity, inputs);
        ProblemAlgorithmLimit limit = limitMapper.selectOne(new QueryWrapper<ProblemAlgorithmLimit>().eq("problem_id", entity.getProblem_id()));
        String checker = limit == null ? null : limit.getRun_code();
        if (checker == null || checker.isBlank()) {
            for (int i = 0; i < cases.size(); i++) {
                String expected = cases.get(i).getOutput();
                if (expected == null || !expected.trim().equals(outputs.get(i).trim())) {
                    throw new BusinessException(ErrorCode.PARAMS_ERROR, "参考解在现有测试样例 " + (i + 1) + " 输出不一致");
                }
            }
        } else {
            validateWithChecker(checker, inputs, outputs);
        }
        entity.setStatus("VERIFIED");
        entity.setValidated_case_count(cases.size());
        entity.setValidated_by(userId);
        entity.setValidated_at(new Date());
        entity.setValidation_summary("已通过 " + cases.size() + " 条现有测试数据验证");
        entity.setUpdate_by(userId);
        entity.setUpdate_time(new Date());
        referenceMapper.updateById(entity);
        return toVO(entity);
    }

    public ProblemAlgorithmReferenceSolution requireVerified(Long id, Long problemId) {
        ProblemAlgorithmReferenceSolution entity = require(id);
        if (!Objects.equals(problemId, entity.getProblem_id()) || !"VERIFIED".equals(entity.getStatus())) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "只能使用本题已验证的参考解");
        }
        return entity;
    }

    public List<String> run(ProblemAlgorithmReferenceSolution entity, List<String> inputs) {
        long cpu = properties.getReference().getCpuLimitSeconds() * 1_000_000_000L;
        long memory = properties.getReference().getMemoryLimitMb() * 1024L * 1024L;
        List<String> outputs = new ArrayList<>();
        if ("python".equals(entity.getLanguage())) {
            for (String input : inputs) {
                Judge result = sandbox.executePython(entity.getSource_code(), input, cpu, memory);
                GenerationSupport.requireSuccess(result, "参考解执行");
                outputs.add(result.getOutput() == null ? "" : result.getOutput());
            }
            return outputs;
        }
        String fileId = sandbox.build(entity.getSource_code(), entity.getLanguage(), inputs.get(0), cpu * 3);
        try {
            List<Judge> results = sandbox.executeCompiled(fileId, entity.getLanguage(), inputs, cpu, memory);
            for (Judge result : results) {
                GenerationSupport.requireSuccess(result, "参考解执行");
                outputs.add(result.getOutput() == null ? "" : result.getOutput());
            }
            return outputs;
        } finally {
            sandbox.deleteArtifact(fileId);
        }
    }

    public ReferenceRunner openRunner(ProblemAlgorithmReferenceSolution entity, String sampleInput) {
        return new ReferenceRunner(entity, sampleInput);
    }

    public final class ReferenceRunner implements AutoCloseable {
        private final ProblemAlgorithmReferenceSolution entity;
        private final long cpu;
        private final long memory;
        private final String fileId;

        private ReferenceRunner(ProblemAlgorithmReferenceSolution entity, String sampleInput) {
            this.entity = entity;
            this.cpu = properties.getReference().getCpuLimitSeconds() * 1_000_000_000L;
            this.memory = properties.getReference().getMemoryLimitMb() * 1024L * 1024L;
            this.fileId = "python".equals(entity.getLanguage()) ? null
                    : sandbox.build(entity.getSource_code(), entity.getLanguage(), sampleInput, cpu * 3);
        }

        public List<String> run(List<String> inputs) {
            List<String> outputs = new ArrayList<>();
            if ("python".equals(entity.getLanguage())) {
                for (String input : inputs) {
                    Judge result = sandbox.executePython(entity.getSource_code(), input, cpu, memory);
                    GenerationSupport.requireSuccess(result, "参考解执行");
                    outputs.add(result.getOutput() == null ? "" : result.getOutput());
                }
                return outputs;
            }
            List<Judge> results = sandbox.executeCompiled(fileId, entity.getLanguage(), inputs, cpu, memory);
            for (Judge result : results) {
                GenerationSupport.requireSuccess(result, "参考解执行");
                outputs.add(result.getOutput() == null ? "" : result.getOutput());
            }
            return outputs;
        }

        @Override
        public void close() {
            sandbox.deleteArtifact(fileId);
        }
    }

    private void validateWithChecker(String code, List<String> inputs, List<String> outputs) {
        long cpu = properties.getReference().getCpuLimitSeconds() * 1_000_000_000L;
        long memory = properties.getReference().getMemoryLimitMb() * 1024L * 1024L;
        List<String> checkerInputs = new ArrayList<>();
        for (int i = 0; i < inputs.size(); i++) checkerInputs.add(inputs.get(i) + "\n" + outputs.get(i));
        String fileId = sandbox.build(code, "cpp", checkerInputs.get(0), cpu * 3);
        try {
            List<Judge> results = sandbox.executeCompiled(fileId, "cpp", checkerInputs, cpu, memory);
            for (int i = 0; i < results.size(); i++) {
                GenerationSupport.requireSuccess(results.get(i), "自定义校验器执行");
                if (!"YES".equals(results.get(i).getOutput().trim())) {
                    throw new BusinessException(ErrorCode.PARAMS_ERROR, "参考解未通过第 " + (i + 1) + " 条 checker 验证");
                }
            }
        } finally {
            sandbox.deleteArtifact(fileId);
        }
    }

    private ProblemAlgorithmReferenceSolution resolve(ReferenceSolutionDebugRequest request) {
        if (request.getReferenceSolutionId() != null) return require(request.getReferenceSolutionId());
        if (request.getLanguage() == null || request.getSourceCode() == null) throw new BusinessException(ErrorCode.PARAMS_ERROR, "参考解 ID 或代码不能为空");
        ProblemAlgorithmReferenceSolution entity = new ProblemAlgorithmReferenceSolution();
        entity.setLanguage(request.getLanguage().toLowerCase());
        entity.setSource_code(request.getSourceCode());
        return entity;
    }

    private ProblemAlgorithmReferenceSolution require(Long id) {
        ProblemAlgorithmReferenceSolution entity = referenceMapper.selectById(id);
        if (entity == null || Objects.equals(entity.getIs_deleted(), 1)) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "参考解不存在");
        return entity;
    }

    private ReferenceSolutionVO toVO(ProblemAlgorithmReferenceSolution entity) {
        ReferenceSolutionVO vo = new ReferenceSolutionVO();
        vo.setId(entity.getId()); vo.setProblemId(entity.getProblem_id()); vo.setLanguage(entity.getLanguage());
        vo.setSourceCode(entity.getSource_code()); vo.setSourceCodeHash(entity.getSource_code_hash());
        vo.setSourceType(entity.getSource_type()); vo.setStatus(entity.getStatus());
        vo.setValidationSummary(entity.getValidation_summary()); vo.setValidatedCaseCount(entity.getValidated_case_count());
        vo.setValidatedAt(entity.getValidated_at()); vo.setNote(entity.getNote());
        return vo;
    }
}
