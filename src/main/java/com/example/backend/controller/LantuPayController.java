package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.pay.LantuPayOtherRequest;
import com.example.backend.models.request.pay.LantuPayRequest;
import com.example.backend.models.vo.pay.LantuPayVo;
import com.example.backend.service.pay.AccountFundService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@RestController
@Slf4j
@RequestMapping("/lantu")
public class LantuPayController {

    @Autowired
    private AccountFundService accountFundService;

    @Autowired
    private UserService userService;

    @AccessLimit(seconds = 1, maxCount = 3, needLogin = true)
    @PostMapping("/pay")
    private BaseResponse<LantuPayVo> lantuPay(@RequestBody LantuPayRequest lantuPayRequest, HttpServletRequest request) throws IOException {
        User loginUser = userService.getLoginUser(request);
        LantuPayVo result = accountFundService.lantuPay(lantuPayRequest, loginUser);
        return ResultUtils.success(result);
    }

//    @AccessLimit(seconds = 1, maxCount = 1, needLogin = true)
    @PostMapping("/pay/status")
    private BaseResponse<Boolean> lantuPayStatus(@RequestBody LantuPayOtherRequest lantuPayOtherRequest, HttpServletRequest request) throws IOException {
        Boolean result = accountFundService.lantuPayStatus(lantuPayOtherRequest);
        return ResultUtils.success(result);
    }
    @AccessLimit(seconds = 1, maxCount = 3, needLogin = true)
    @PostMapping("/pay/back")
    private BaseResponse<List<String>> lantuPayBack(@RequestBody List<LantuPayOtherRequest> lantuPayBackRequest, HttpServletRequest request) {
        List<String> result = accountFundService.lantuPayBack(lantuPayBackRequest);
        return ResultUtils.success(result);
    }
}
