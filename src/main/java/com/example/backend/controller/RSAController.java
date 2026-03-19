package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.utils.EmbeddingConvertUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RestController
public class RSAController {
    @Resource
    private EmbeddingConvertUtil embeddingConvertUtil;


    @RequestMapping("/getPublicKey")
    public BaseResponse<String> getPublicKey(){
        List<Long> IDS = new ArrayList<>();
        for (int i = 1323; i < 4792; i++) {
            IDS.add((long) i);
        }
        embeddingConvertUtil.ContentConvertToEmbedding(IDS);
        return ResultUtils.success("");
//        return ResultUtils.success(RSAUtil.getPublicKey());
    }

}