package com.example.backend.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemAlgorithmBankMapper;
import com.example.backend.mapper.SubmissionsAlgorithmMapper;
import com.example.backend.models.domain.algorithm.UserLastEnter;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmTestCaseRequest;
import com.example.backend.models.vo.competition.CompetitionProblemsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemDailyNumVo;
import com.example.backend.models.vo.problem.ProblemTagsVo;
import com.example.backend.models.vo.problem.ProblemUserLastVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@RestController
@RequestMapping("/problem/algorithm")
@Slf4j
@Controller
public class ProblemAlgorithmController {
    @Resource
    private ProblemAlgorithmService problemAlgorithmService;
    @Resource
    private SubmissionsAlgorithmMapper submissionsAlgorithmMapper;

    @Resource
    private UserService userService;

    @PostMapping("/search")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = false)
    private BaseResponse<List<ProblemAlgorithmBankVo>> ListAlgorithmVoByPage(@RequestBody AlgorithmQueryRequest algorithmQueryRequest, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        List<ProblemAlgorithmBankVo> problemAlgorithmBankVos = problemAlgorithmService.ListAlgorithmVoByPage(algorithmQueryRequest, uuid);
        return ResultUtils.success(problemAlgorithmBankVos);
    }

    @GetMapping("/get/tags")
    private BaseResponse<List<String>> problemAlgorithmGetTags(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        } else {
            uuid = user.getUuid();
        }

        List<String> result = problemAlgorithmService.problemAlgorithmGetTags(uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=50, needLogin=false)
    @PostMapping("/search/problemId")
    private BaseResponse<ProblemAlgorithmBankVo> problemAlgorithmSearchByProblemId(Integer problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        ProblemAlgorithmBankVo result = problemAlgorithmService.problemSearchByProblemId(problem_id, httpServletRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=20, needLogin=false)
    @PostMapping("/search/user/daily")
    private BaseResponse<List<ProblemDailyNumVo>> getProblemDailyNum(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else{
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }

        List<ProblemDailyNumVo> result = problemAlgorithmService.getProblemDailyNum(uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/records")
    private BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsByUUidByPage(Long problem_id, Integer pageNum, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<SubmissionsAlgorithmRecordsVo> result = problemAlgorithmService.problemRecordsByUuidAndProblemIdByPage(problem_id, uuid, pageNum);
        return ResultUtils.success(result);
    }

    @PostMapping("/records/page/sum")
    private BaseResponse<Long> problemAlgorithmRecordsSumByUuidByPage(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        Page<SubmissionsAlgorithm> page = new Page<>(1, 10);
        QueryWrapper<SubmissionsAlgorithm> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        queryWrapper.eq("uuid", uuid);

        Long result = submissionsAlgorithmMapper.selectPage(page, queryWrapper).getPages();
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/records/user/page")
    private BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsAllByUuidByPage(Integer pageNum,HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<SubmissionsAlgorithmRecordsVo> result = problemAlgorithmService.problemAlgorithmRecordsAllByUuidByPage(uuid, pageNum);
        return ResultUtils.success(result);
    }

    @PostMapping("/records/user/sum")
    private BaseResponse<Long> problemAlgorithmRecordsAllSumByUuidByPage(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        Page<SubmissionsAlgorithm> page = new Page<>(1, 15);
        QueryWrapper<SubmissionsAlgorithm> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);

        Long result = submissionsAlgorithmMapper.selectPage(page, queryWrapper).getPages();
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @PostMapping("/records/recordId")
    private BaseResponse<SubmissionsAlgorithmRecordsVo> problemAlgorithmRecordByRecordId(HttpServletRequest httpServletRequest, Long submission_id, Long competition_id) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);

        SubmissionsAlgorithmRecordsVo result = problemAlgorithmService.problemAlgorithmRecordByRecordId(submission_id, isAdmin, uuid, competition_id);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @PostMapping("/judge/test")
    private BaseResponse<List<Judge>> problemAlgorithmJudge(@RequestBody JudgeRequest judgeRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
       }

        List<Judge> result = problemAlgorithmService.problemAlgorithmJudge(judgeRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=20, needLogin=true)
    @PostMapping("/judge/submit")
    private BaseResponse<Judge> problemAlgorithmJudgeSubmit(@RequestBody JudgeRequest judgeRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        Judge result = problemAlgorithmService.problemAlgorithmSubmit(judgeRequest, uuid);
        return ResultUtils.success(result);
    }
    @PostMapping("/record/add")
    private BaseResponse<Boolean> problemAlgorithmRecordAdd(@RequestBody JudgeRequest judgeRequest, HttpServletRequest httpServletRequest){
        if(httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }

        Boolean result = problemAlgorithmService.problemAlgorithmRecordAdd(uuid, judgeRequest);
        return ResultUtils.success(result);
    }
}
