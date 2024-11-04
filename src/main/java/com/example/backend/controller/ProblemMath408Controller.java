package com.example.backend.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemMath408BankMapper;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.ProblemMath408Request;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.math408.ProblemMath408Service;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/problem/math408")
@Slf4j
@Controller
public class ProblemMath408Controller {
    @Resource
    private ProblemMath408Service problemMath408Service;

    @Resource
    private ProblemMath408BankMapper problemMath408BankMapper;
    @Resource
    private UserService userService;
    @PostMapping("/search/all")
    private BaseResponse<List<ProblemMath408BankVo>> problemMath408SearchAll(Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<ProblemMath408BankVo> result = problemMath408Service.problemMath408SearchAll(Math.toIntExact(uuid), status, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/search/page")
    private BaseResponse<List<ProblemMath408BankVo>> problemMath408SearchByPage(Integer status, Integer PageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<ProblemMath408BankVo> resultPage = problemMath408Service.problemMath408SearchByPage(Math.toIntExact(uuid), status, PageNum);
        return ResultUtils.success(resultPage);
    }
    
    @PostMapping("/search/page/sum")
    private BaseResponse<Long> problemMath408SearchPageSum(Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        Page<ProblemMath408Bank> page = new Page<>(1, 50);
        QueryWrapper<ProblemMath408Bank> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status", status);
        Long PageSum = problemMath408BankMapper.selectPage(page, queryWrapper).getPages();
        return ResultUtils.success(PageSum);
    }

    @PostMapping("/search/tags")
    private BaseResponse<List<ProblemMath408BankVo>> problemMath408SearchByTagId(Long tag_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        List<ProblemMath408BankVo> result = problemMath408Service.getProblemMath408TagsByTagId(tag_id, Math.toIntExact(uuid), httpServletRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/search/problemId")
    private BaseResponse<ProblemMath408BankVo> problemMath408SearchByProblemId(Integer problem_id,  HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        ProblemMath408BankVo result = problemMath408Service.getProblemMath408TagsByProblemId(problem_id, Math.toIntExact(uuid), httpServletRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/search/difficulty")
    private BaseResponse<List<ProblemMath408BankVo>> problemMath408SearchByDifficulty(String difficulty, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        List<ProblemMath408BankVo> result = problemMath408Service.getProblemMath408ByDifficulty(difficulty, Math.toIntExact(uuid), httpServletRequest);
        return ResultUtils.success(result);
    }
    
    @PostMapping("/submit/records")
    private BaseResponse<String> problemMath408GetProblemAnswer(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }

        String resultAnswer = problemMath408Service.problemMath408GetProblemAnswer(problem_id);
        return ResultUtils.success(resultAnswer);
    }

    @PostMapping("/admin/add")
    private BaseResponse<Boolean> problemMath408Add(@RequestBody ProblemMath408Request problemMath408Request, Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemMath408Service.problemAdd(problemMath408Request, isAdmin, status, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/delete")
    private BaseResponse<Boolean> problemMath408Delete(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemMath408Service.problemDelete(problem_id, isAdmin, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/modify")
    private BaseResponse<Boolean> problemMath408Modify(@RequestBody ProblemMath408Request problemMath408Request, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
             throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemMath408Service.problemModify(problemMath408Request, isAdmin, httpServletRequest);
        return ResultUtils.success(result);
    }
}
