package com.example.backend.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemAlgorithmBankMapper;
import com.example.backend.mapper.ProblemAlgorithmTagsMapper;
import com.example.backend.mapper.SubmissionsAlgorithmMapper;
import com.example.backend.models.domain.algorithm.UserLastEnter;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTags;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.models.request.ProblemAlgorithmRequest;
import com.example.backend.models.request.ProblemAlgorithmTestCaseRequest;
import com.example.backend.models.vo.competition.CompetitionProblemsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemDailyNumVo;
import com.example.backend.models.vo.problem.ProblemTagsVo;
import com.example.backend.models.vo.problem.ProblemUserLastVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/problem/algorithm")
@Slf4j
@Controller
public class ProblemAlgorithmController {
    @Resource
    ProblemAlgorithmBankMapper problemAlgorithmBankMapper;
    @Resource
    private ProblemAlgorithmService problemAlgorithmService;

    @Resource
    private ProblemAlgorithmTagsMapper problemAlgorithmTagsMapper;

    @Resource
    private SubmissionsAlgorithmMapper submissionsAlgorithmMapper;



    @Resource
    private UserService userService;

    @PostMapping("/search/all")
    private BaseResponse<List<ProblemAlgorithmBankVo>> problemAlgorithmSearchAll(HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
             uuid = loginUser.getUuid();
        }
        List<ProblemAlgorithmBankVo> result = problemAlgorithmService.problemAlgorithmSearchAll(Math.toIntExact(uuid), httpServletRequest);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/search/page")
    private BaseResponse<List<ProblemAlgorithmBankVo>> problemAlgorithmSearchByPage(Integer pageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        List<ProblemAlgorithmBankVo> resultPage = problemAlgorithmService.problemAlgorithmSearchByPage(Math.toIntExact(uuid), pageNum, isAdmin);
        return ResultUtils.success(resultPage);
    }

    @PostMapping("/search/tags/sum")
    private BaseResponse<Long> problemAlgorithmSearchPagSum(Integer tag_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        Long PageSum = 0L;
        if (tag_id != null) {
            Page<ProblemAlgorithmTags> page = new Page<>(1, 50);

            QueryWrapper<ProblemAlgorithmTags> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("tag_id", tag_id);

            PageSum = problemAlgorithmTagsMapper.selectPage(page, queryWrapper).getPages();
        } else {
            Page<ProblemAlgorithmBank> page = new Page<>(1, 50);
            PageSum = problemAlgorithmBankMapper.selectPage(page, null).getPages();
        }
        return ResultUtils.success(PageSum);
    }


    @AccessLimit(seconds=5, maxCount=50, needLogin=false)
    @PostMapping("/search/tags")
    private BaseResponse<List<ProblemAlgorithmBankVo>> problemAlgorithmSearchByTagId(Long PageNum, Integer tag_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<ProblemAlgorithmBankVo> result = problemAlgorithmService.problemAlgorithmSearchByTagId(PageNum, tag_id, uuid);
        return ResultUtils.success(result);
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

    @GetMapping("/get/tagsPlusCategory")
    private BaseResponse<List<ProblemTagsVo>> problemAlgorithmGetTagsPlusCategory(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        List<ProblemTagsVo> result = problemAlgorithmService.problemAlgorithmGetTagsPlusCategory();
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

    @AccessLimit(seconds=5, maxCount=30, needLogin = true)
    @PostMapping("/search/problems")
    private BaseResponse<List<CompetitionProblemsVo>> competitionSearchProblems(Long competition_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        uuid = loginUser.getUuid();
        List<CompetitionProblemsVo> result = problemAlgorithmService.competitionSearchProblems(competition_id, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=40, needLogin = true)
    @PostMapping("/search/problem")
    private BaseResponse<ProblemAlgorithmBankVo> competitionSearchProblem(Long competition_id, String index, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();
        ProblemAlgorithmBankVo result = problemAlgorithmService.competitionSearchProblem(competition_id, index, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/search/keyword")
    private BaseResponse<List<ProblemAlgorithmBankVo>> problemAlgorithmSearchByKeyword(String keyWord, Long PageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        List<ProblemAlgorithmBankVo> result = problemAlgorithmService.problemSearchByKeyword(keyWord, uuid, PageNum, isAdmin);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/search/difficulty")
    private BaseResponse<List<ProblemAlgorithmBankVo>> problemAlgorithmSearchByDifficulty(Integer PageNum, String difficulty, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<ProblemAlgorithmBankVo> result = problemAlgorithmService.problemSearchByDifficulty(PageNum, difficulty, Math.toIntExact(uuid), httpServletRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/search/difficulty/sum")
    private BaseResponse<Long>  problemAlgorithmSearchSumByDifficulty(String difficulty, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null || difficulty == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        Long result = problemAlgorithmService.problemSearchByDifficultyAndUuid(difficulty, uuid);
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
    private BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsByUUidByPage(Long problem_id, Long PageNum, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<SubmissionsAlgorithmRecordsVo> result = problemAlgorithmService.problemRecordsByUuidAndProblemIdByPage(problem_id, uuid, PageNum);
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

//    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/records/user/page")
    private BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsAllByUuidByPage(Long PageNum,HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<SubmissionsAlgorithmRecordsVo> result = problemAlgorithmService.problemAlgorithmRecordsAllByUuidByPage(uuid, PageNum);
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

    @PostMapping("/admin/add")
    private BaseResponse<Boolean> problemAlgorithmAdd(@RequestBody ProblemAlgorithmRequest problemAlgorithmRequest, String username, Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢！");
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemAlgorithmService.problemAdd(problemAlgorithmRequest, isAdmin, uuid, username, status, httpServletRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/delete")
    private BaseResponse<Boolean> problemAlgorithmDelete(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemAlgorithmService.problemDelete(problem_id, isAdmin, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/modify")
    private BaseResponse<Boolean> problemAlgorithmModify(@RequestBody ProblemAlgorithmRequest problemAlgorithmRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemAlgorithmService.problemModify(problemAlgorithmRequest, isAdmin, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/testCase/get")
    private BaseResponse<List<ProblemAlgorithmTestCaseRequest>> problemAlgorithmTestCaseGet(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录！！！");
        }
        List<ProblemAlgorithmTestCaseRequest> result = problemAlgorithmService.problemTestCaseGet(problem_id,isAdmin);

        return ResultUtils.success(result);

    }
    @PostMapping("/admin/testCase/add")
    private BaseResponse<Boolean> problemAlgorithmTestCaseAdd(@RequestBody List<ProblemAlgorithmTestCaseRequest> problemAlgorithmTestCaseRequestList, Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
                    throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录！！！");
        }
        Boolean result = problemAlgorithmService.problemTestCaseAdd(problemAlgorithmTestCaseRequestList, isAdmin, problem_id);

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


    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @GetMapping("/search/problemLast")
    private BaseResponse<ProblemUserLastVo> problemAlgorithmUserLast(HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        ProblemUserLastVo problemUserLastVo = problemAlgorithmService.problemAlgorithmUserLast(uuid);
        return ResultUtils.success(problemUserLastVo);
    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @GetMapping("/set/problemLast")
    private BaseResponse<Boolean> problemAlgorithmSetUserLast(UserLastEnter userLastEnter, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = problemAlgorithmService.problemAlgorithmSetUserLast(userLastEnter, uuid);
        return ResultUtils.success(result);
    }
}
