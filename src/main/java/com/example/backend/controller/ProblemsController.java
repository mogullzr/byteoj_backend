package com.example.backend.controller;


import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.problem.ProblemExamEditRequest;
import com.example.backend.models.request.math408.ProblemRequest;
import com.example.backend.models.vo.problem.ProblemExamVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.ProblemSimilarityVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/problem/other")
@Slf4j
public class ProblemsController {
    @Resource
    private ProblemMath408BankService problemsService;

    @Resource
    private UserService userService;

    @AccessLimit(seconds = 1, maxCount = 5, needLogin = true)
    @PostMapping("/similar")
    private BaseResponse<List<ProblemSimilarityVo>> ProblemSearchSimilarity(@RequestBody List<Long> problem_id_list, HttpServletRequest request) {

        List<ProblemSimilarityVo> result = problemsService.problemSearchSimilarity(problem_id_list, userService.getLoginUser(request).getUuid());
        return ResultUtils.success(result);
    }
    @GetMapping("/exam")
    private BaseResponse<ProblemExamVo> ProblemSearchExamId(@Param("exam_id") Long exam_id, HttpServletRequest request) {

        ProblemExamVo result = problemsService.problemSearchExamId(exam_id);
        return ResultUtils.success(result);
    }

    @GetMapping("/exam/problem")
    private BaseResponse<List<ProblemMath408BankVo>> ProblemExamSearchDetail(@Param("exam_id") Long exam_id) {
        List<ProblemMath408BankVo> result = problemsService.problemExamSearchDetail(exam_id);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 1, maxCount = 1, needLogin = true)
    @PostMapping("/exam/edit")
    private BaseResponse<Boolean> ProblemExamEdit(@RequestBody ProblemExamEditRequest problemExamRequest, HttpServletRequest request) {
        if (!userService.isAdmin(request)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "需要管理员权限使用当前接口");
        }
        User user = userService.getLoginUser(request);
        Boolean result = problemsService.problemExamEdit(problemExamRequest, user);

        return ResultUtils.success(result);
    }

    @GetMapping("/search/problemId")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = false)
    private BaseResponse<ProblemMath408BankVo> ProblemSearchByProblemId(@Param("problem_id") Long problem_id) {
        ProblemMath408BankVo result = problemsService.problemSearchByProblemId(problem_id);
        return ResultUtils.success(result);
    }

    @PostMapping("/update")
    @AccessLimit(seconds = 1, maxCount = 5, needLogin = true)
    private BaseResponse<Boolean> ProblemUpdate(@RequestBody ProblemRequest problemRequest, HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        Boolean result = problemsService.problemUpdate(problemRequest, loginUser.getUuid(), loginUser.getAccount());
        return ResultUtils.success(result);
    }
}