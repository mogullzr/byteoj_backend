package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.utils.RSAUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RSAController {
 
    @RequestMapping("/getPublicKey")
    public BaseResponse<String> getPublicKey(){
        return ResultUtils.success(RSAUtil.getPublicKey());
    }
}