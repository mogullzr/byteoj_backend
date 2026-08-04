package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.algorithm.generation.*;
import com.example.backend.models.vo.algorithm.generation.*;
import com.example.backend.service.algorithm.generation.AlgorithmTestGenerationService;
import com.example.backend.service.algorithm.generation.ReferenceSolutionService;
import com.example.backend.service.user.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/problem/algorithm/admin/test-generation")
public class AlgorithmTestGenerationController {
    @Resource private AlgorithmTestGenerationService generationService;
    @Resource private ReferenceSolutionService referenceSolutionService;
    @Resource private UserService userService;

    @PostMapping("/jobs")
    public BaseResponse<TestGenerationJobVO> createJob(@RequestBody CreateTestGenerationJobRequest body, HttpServletRequest request) { User user = requireAdmin(request); return ResultUtils.success(generationService.create(body, user.getUuid())); }
    @GetMapping("/jobs/{jobId}")
    public BaseResponse<TestGenerationJobVO> getJob(@PathVariable Long jobId, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(generationService.get(jobId)); }
    @GetMapping("/jobs")
    public BaseResponse<List<TestGenerationJobVO>> listJobs(@RequestParam(required = false) Long problemId, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "20") Integer pageSize, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(generationService.list(problemId, pageNum, pageSize)); }
    @PostMapping("/jobs/{jobId}/cancel")
    public BaseResponse<Boolean> cancel(@PathVariable Long jobId, HttpServletRequest request) { requireAdmin(request); generationService.cancel(jobId); return ResultUtils.success(true); }
    @PostMapping("/jobs/{jobId}/retry")
    public BaseResponse<Boolean> retry(@PathVariable Long jobId, HttpServletRequest request) { requireAdmin(request); generationService.retry(jobId); return ResultUtils.success(true); }
    @GetMapping("/jobs/{jobId}/generators")
    public BaseResponse<List<TestGenerationScaleVO>> generators(@PathVariable Long jobId, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(generationService.get(jobId).getScales()); }
    @GetMapping("/jobs/{jobId}/previews")
    public BaseResponse<List<GeneratedCasePreviewVO>> previews(@PathVariable Long jobId, @RequestParam(defaultValue = "10") Integer limit, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(generationService.previews(jobId, limit)); }
    @PostMapping("/generator/debug")
    public BaseResponse<GeneratorDebugResultVO> debugGenerator(@RequestBody GeneratorDebugRequest body, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(generationService.debugGenerator(body)); }

    @GetMapping("/reference-solution")
    public BaseResponse<List<ReferenceSolutionVO>> references(@RequestParam Long problemId, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(referenceSolutionService.list(problemId)); }
    @PutMapping("/reference-solution")
    public BaseResponse<ReferenceSolutionVO> saveReference(@RequestBody ReferenceSolutionUpsertRequest body, HttpServletRequest request) { User user = requireAdmin(request); return ResultUtils.success(referenceSolutionService.save(body, user.getUuid())); }
    @PostMapping("/reference-solution/debug")
    public BaseResponse<List<GeneratedCasePreviewVO>> debugReference(@RequestBody ReferenceSolutionDebugRequest body, HttpServletRequest request) { requireAdmin(request); return ResultUtils.success(referenceSolutionService.debug(body)); }
    @PostMapping("/reference-solution/{id}/validate")
    public BaseResponse<ReferenceSolutionVO> validateReference(@PathVariable Long id, HttpServletRequest request) { User user = requireAdmin(request); return ResultUtils.success(referenceSolutionService.validate(id, user.getUuid())); }

    private User requireAdmin(HttpServletRequest request) {
        User user = userService.getLoginUser(request);
        if (user == null) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        if (!userService.isAdmin(request)) throw new BusinessException(ErrorCode.NOT_AUTH_ERROR);
        return user;
    }
}
