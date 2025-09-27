package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.log.LogGetSingleInfo;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.vo.log.LogAdminBasicInfo;
import com.example.backend.models.vo.log.LogAdminInfo;
import com.example.backend.models.vo.log.LogUserInfoVo;
import com.example.backend.models.vo.log.LogVo;
import com.example.backend.service.log.LogService;
import com.example.backend.service.user.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/log")
public class LogController {
    @Resource
    private UserService userService;

    @Resource
    private LogService logService;

    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @PostMapping("/detail")
    private BaseResponse<LogVo> logDetailInfoGet(@RequestBody LogGetSingleInfo logGetSingleInfo, HttpServletRequest httpServletRequest) throws IOException {
        Boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
        }
        LogVo result = logService.getSingleLogInfo(logGetSingleInfo);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/info_basic_daily")
    private BaseResponse<LogAdminBasicInfo> logAnalysisBasic(HttpServletRequest httpServletRequest) throws IOException {
        Boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
        }
        LogAdminBasicInfo logAdminBasicInfo = logService.logAnalysisBasicDailyGet();
        return ResultUtils.success(logAdminBasicInfo);
    }


    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/info_detail_complex")
    private BaseResponse<LogAdminInfo> logAnalysisDetailGet(HttpServletRequest httpServletRequest) throws IOException {
        Boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
        }
//        LogAdminInfo logUserInfoVo = logService.logAnalysisDetailGet();
//        return ResultUtils.success(logUserInfoVo);
        return null;
    }
}
