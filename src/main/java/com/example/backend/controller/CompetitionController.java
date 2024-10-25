package com.example.backend.controller;


import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.CompetitionAddRequest;
import com.example.backend.models.request.ProblemAlgorithmRequest;
import com.example.backend.models.vo.SubmissionsAlgorithmRecordsVo;
import com.example.backend.models.vo.competition.CompetitionInfoVo;
import com.example.backend.models.vo.competition.CompetitionRankVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.competition.CompetitionsService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/competition")
@Slf4j
@Controller
public class CompetitionController {

    @Resource
    CompetitionsService competitionsService;

    @Resource
    ProblemAlgorithmService problemAlgorithmService;

    @Resource
    UserService userService;

//    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/search/page")
    private BaseResponse<List<CompetitionInfoVo>> competitionSearchByPage(Long PageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<CompetitionInfoVo> resultList = competitionsService.competitionSearchByPage(PageNum, uuid);
        return ResultUtils.success(resultList);
    }

//    @AccessLimit(seconds=5, maxCount=50, needLogin=false)
    @PostMapping("/search/competitionId")
    private BaseResponse<CompetitionInfoVo> competitionSearchByCompetitionId(Long competition_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        CompetitionInfoVo result = competitionsService.competitionSearchByCompetitionId(competition_id, uuid);
        return ResultUtils.success(result);
    }


    @AccessLimit(seconds = 5, maxCount = 1000, needLogin = true)
    @PostMapping("/search/rank/pageNum")
    private BaseResponse<CompetitionRankVo> competitionSearchRank(Long competition_id, Integer PageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        CompetitionRankVo result = competitionsService.competitionSearchRank(competition_id, PageNum);
        return ResultUtils.success(result);
    }
    @AccessLimit(seconds = 5, maxCount = 1000, needLogin = true)
    @PostMapping("/search/records/pageNum")
    private BaseResponse<List<SubmissionsAlgorithmRecordsVo>> competitionSearchRecord(Long competition_id, Long PageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"信息不能为空");
        }

        List<SubmissionsAlgorithmRecordsVo> result = competitionsService.competitionSearchRecords(competition_id, PageNum);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 5,maxCount = 1000,needLogin = true)
    @PostMapping("/user/add")
    private BaseResponse<Long> competitionAddByUser(@RequestBody CompetitionAddRequest competitionAddRequest,HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();
        Long result = competitionsService.competitionAddByUser(competitionAddRequest, uuid);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/delete")
    private BaseResponse<Boolean> competitionDeleteByAdmin(Long competition_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }


        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = competitionsService.competitionDeleteByAdmin(competition_id, uuid, isAdmin);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=1000, needLogin=true)
    @PostMapping("/user/modify")
    private BaseResponse<Boolean> competitionModifyByUser(@RequestBody CompetitionAddRequest competitionAddRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = competitionsService.competitionModifyByUser(competitionAddRequest, uuid);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/algorithm/add")
    private BaseResponse<Boolean> competitionAlgorithmAddByAdmin(@RequestBody ProblemAlgorithmRequest problemAlgorithmRequest, String username, Integer status, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = problemAlgorithmService.problemAdd(problemAlgorithmRequest, isAdmin, uuid, username, status, httpServletRequest);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=1000, needLogin=true)
    @PostMapping("/join")
    private BaseResponse<Boolean> competitionUserJoin(Long competition_id, String password, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = competitionsService.competitionUserJoin(competition_id, password, uuid);
        return ResultUtils.success(result);

    }

    @AccessLimit(seconds=5, maxCount=1000, needLogin=true)
    @PostMapping("/join/cancel")
    private BaseResponse<Boolean> competitionUserJoinCancel(Long competition_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = competitionsService.competitionUserJoinCancel(competition_id, uuid);
        return ResultUtils.success(result);
    }

}
