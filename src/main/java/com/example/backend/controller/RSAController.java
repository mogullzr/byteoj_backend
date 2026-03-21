package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.utils.EmbeddingConvertUtil;
import com.example.backend.utils.RSAUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class RSAController {
    @Resource
    private EmbeddingConvertUtil embeddingConvertUtil;


    @RequestMapping("/getPublicKey")
    public BaseResponse<String> getPublicKey(){
//        List<Long> IDS = new ArrayList<>();
//        for (int i = 4793; i < 5863; i++) {
//            IDS.add((long) i);
//        }
//        embeddingConvertUtil.InsertEmbedding(IDS);
//        return ResultUtils.success("");
        return ResultUtils.success(RSAUtil.getPublicKey());
    }
}