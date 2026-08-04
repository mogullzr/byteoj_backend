package com.example.backend.controller;


import com.alibaba.nacos.api.naming.pojo.healthcheck.impl.Http;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.domain.user.UserRating;
import com.example.backend.models.request.CompetitionAddRequest;
import com.example.backend.models.request.competition.CompetitionSearchRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmRequest;
import com.example.backend.models.request.problem.SearchRequest;
import com.example.backend.models.vo.UserRatingVo;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.competition.*;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.competition.CompetitionsService;
import com.example.backend.service.user.UserService;
import com.example.backend.utils.OssUtils;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/competition")
@Slf4j
@Controller
public class CompetitionController {

    @Resource
    private CompetitionsService competitionsService;

    @Resource
    private ProblemAlgorithmService problemAlgorithmService;

    @Resource
    private UserService userService;

    @Resource
    private OssUtils ossUtils;

    @AccessLimit(seconds=3, maxCount=20, needLogin=false)
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

    @AccessLimit(seconds=3, maxCount=30, needLogin=false)
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

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @PostMapping("/search/rank/pageNum")
    private BaseResponse<CompetitionRankVo> competitionSearchRank(Long competition_id, Integer PageNum, Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        Long uuid = userService.getLoginUser(httpServletRequest).getUuid();

        CompetitionRankVo result = competitionsService.competitionSearchRank(competition_id, PageNum, uuid, status);
        return ResultUtils.success(result);
    }
    @AccessLimit(seconds = 3, maxCount = 30, needLogin = true)
    @PostMapping("/search/records/pageNum")
    private BaseResponse<List<SubmissionsAlgorithmRecordsVo>> competitionSearchRecord(Long competition_id, Long PageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"信息不能为空");
        }

        List<SubmissionsAlgorithmRecordsVo> result = competitionsService.competitionSearchRecords(competition_id, PageNum);
        return ResultUtils.success(result);
    }

    @PostMapping("/search/top")
    private BaseResponse<List<UserVo>> competitionSearchRankTop10(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"信息不能为空");
        }

        List<UserVo> result = competitionsService.competitionSearchRankTop10();
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 5, maxCount = 5, needLogin = true)
    @PostMapping(value = "/procter", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public BaseResponse<CompetitionProctorVo> competitionProctorOnline(
            @RequestParam("file") MultipartFile file,
            HttpServletRequest httpServletRequest) {

        // 1. 验证登录用户
        User loginUser = userService.getLoginUser(httpServletRequest);

        // 2. 可选：验证文件是否为空
        if (file == null || file.isEmpty()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "上传的图片不能为空");
        }

        // 3. 获取原始文件名、大小、类型（可选）
        String originalFilename = file.getOriginalFilename();
        long size = file.getSize(); // 字节
        String contentType = file.getContentType(); // 如 image/jpeg

        // 4. 将 MultipartFile 转为 byte[]（如果 service 需要二进制数据）
        try {
            // OSS上传图像获取图像地址
            String image_url = ossUtils.uploadOneFile(file);
            byte[] imageData = file.getBytes(); // 这就是前端传来的二进制数据！

            // 5. 调用业务逻辑（传入二进制数据 or MultipartFile）
            CompetitionProctorVo result = competitionsService.competitionProctorOnline(loginUser.getUuid(), imageData, image_url);

            return ResultUtils.success(result);
        } catch (IOException e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "读取上传文件失败");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @AccessLimit(seconds = 3,maxCount = 15,needLogin = true)
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

    @AccessLimit(seconds = 5, maxCount = 10, needLogin = true)
    @PostMapping("/user/status")
    private BaseResponse<Boolean> competitionUserStatusGet(HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        Boolean result = competitionsService.competitionUserStatusGet(uuid);
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

    @AccessLimit(seconds=5, maxCount=25, needLogin=true)
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
    @AccessLimit(seconds=1, maxCount=5, needLogin=true)
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

    @AccessLimit(seconds=1, maxCount=5, needLogin=true)
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

    @AccessLimit(seconds = 3, maxCount = 15, needLogin = true)
    @SneakyThrows
    @ResponseBody
    @GetMapping("/get/rank/excel")
    private BaseResponse<Void> competitionAdminGetRankExcel(Long competition_id, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        competitionsService.competitionAdminGetRankExcel(competition_id, uuid, httpServletResponse);
        return null;
    }

    @PostMapping("/user/joins/get")
    @AccessLimit(seconds=5, maxCount=20, needLogin=true)
    private BaseResponse<List<UserRatingVo>> competitionUserJoinsInfoGet(@RequestBody CompetitionSearchRequest competitionSearchRequest, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        Long uuid = userService.getLoginUser(httpServletRequest).getUuid();
        List<UserRatingVo> result = competitionsService.competitionUserJoinsInfoGet(uuid, competitionSearchRequest.getPageNum());
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin=true)
    @GetMapping("/admin/problems/get")
    private BaseResponse<List<CompetitionProblemsVo>> competitionProblemsAdminGet(Long competition_id, HttpServletRequest httpServletRequest) {
        List<CompetitionProblemsVo> result = competitionsService.competitionProblemsAdmingGet(competition_id);
        return ResultUtils.success(result);
    }
}