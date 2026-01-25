package com.example.backend.controller;


import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.math408.ProblemRequest;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/problem/other")
@Slf4j
public class ProblemsController {
    @Resource
    private ProblemMath408BankService problemsService;

    @Resource
    private UserService userService;


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