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

    @Value("${ai.api.v3-1.model}")
    private String v3_1Model;

    @Value("${ai.api.v3-1.url}")
    private String v3_1ApiUrl;

    @Value("${ai.api.v3-1.key}")
    private String v3_1ApiKey;

    @Value("${ai.api.v3-2.model}")
    private String v3_2Model;

    @Value("${ai.api.v3-2.url}")
    private String v3_2ApiUrl;

    @Value("${ai.api.v3-2.key}")
    private String v3_2ApiKey;

    @Value("${ai.api.r1_1.model}")
    private String r1_Model;

    @Value("${ai.api.r1_1.url}")
    private String r1_ApiUrl;

    @Value("${ai.api.r1_1.key}")
    private String r1_ApiKey;

    @Value("${ai.api.v3-tenCloud.model}")
    private String v3_tenCloudModel;

    @Value("${ai.api.v3-tenCloud.url}")
    private String v3_tenCloudUrl;

    @Value("${ai.api.v3-tenCloud.key}")
    private String v3_tenCloudApiKey;

    @Value("${ai.api.Qwen-VL.model}")
    private String QwenVLModel;

    @Value("${ai.api.Qwen-VL.url}")
    private String QwenVLUrl;

    @Value("${ai.api.Qwen-VL.key}")
    private String QwenVLKey;

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

        // 腾讯云v3模型
        List<String> keyInfo_v3_tengCloud = new ArrayList<>();
        keyInfo_v3_tengCloud.add(v3_tenCloudUrl);
        keyInfo_v3_tengCloud.add(v3_tenCloudApiKey);
        modelInfo.put(v3_tenCloudModel, keyInfo_v3_tengCloud);

        // Qwen模型
        List<String> qwen_keyInfo = new ArrayList<>();
        qwen_keyInfo.add(QwenVLUrl);
        qwen_keyInfo.add(QwenVLKey);
        modelInfo.put(QwenVLModel, qwen_keyInfo);
    }

    public List<String> getChatModeInfo(String model) {
        if (model == null) {
            return null;
        }
        return modelInfo.get(model);
    }
}