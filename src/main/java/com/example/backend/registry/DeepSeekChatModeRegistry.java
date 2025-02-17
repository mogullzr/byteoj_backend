package com.example.backend.registry;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Component
public class DeepSeekChatModeRegistry {

    @Value("${deepseek.api.v3-1.model}")
    private String v3_1Model;

    @Value("${deepseek.api.v3-1.url}")
    private String v3_1ApiUrl;

    @Value("${deepseek.api.v3-1.key}")
    private String v3_1ApiKey;

    @Value("${deepseek.api.v3-2.model}")
    private String v3_2Model;

    @Value("${deepseek.api.v3-2.url}")
    private String v3_2ApiUrl;

    @Value("${deepseek.api.v3-2.key}")
    private String v3_2ApiKey;

    @Value("${deepseek.api.r1_1.model}")
    private String r1_Model;

    @Value("${deepseek.api.r1_1.url}")
    private String r1_ApiUrl;

    @Value("${deepseek.api.r1_1.key}")
    private String r1_ApiKey;

    private Map<String, List<String>> modelInfo;

    @PostConstruct
    public void doInit() {
        modelInfo = new HashMap<>(); // 初始化 modelInfo

        // v3_1模型
        List<String> keyInfo_v3_1 = new ArrayList<>();
        keyInfo_v3_1.add(v3_1ApiUrl);
        keyInfo_v3_1.add(v3_1ApiKey);
        modelInfo.put(v3_1Model, keyInfo_v3_1);

        // v3_2模型
        List<String> keyInfo_v3_2 = new ArrayList<>();
        keyInfo_v3_2.add(v3_2ApiUrl);
        keyInfo_v3_2.add(v3_2ApiKey);
        modelInfo.put(v3_2Model, keyInfo_v3_2);

        // r1模型
        List<String> keyInfo_r1 = new ArrayList<>();
        keyInfo_r1.add(r1_ApiUrl);
        keyInfo_r1.add(r1_ApiKey);
        modelInfo.put(r1_Model, keyInfo_r1);
    }

    public List<String> getChatModeInfo(String model) {
        if (model == null) {
            return null;
        }
        return modelInfo.get(model);
    }
}