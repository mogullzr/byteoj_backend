package com.example.backend.registry;

import com.example.backend.common.SearchTypeEnum;
import com.example.backend.service.ai.AIChatAlgorithmMode;
import com.example.backend.service.ai.AIChatCommonMode;
import com.example.backend.service.ai.AIChatMode;
import com.example.backend.service.source.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Component
public class DeepSeekChatPromptRegistry {
    @Resource
    private AIChatCommonMode aiChatCommonMode;
    @Resource
    private AIChatAlgorithmMode aiChatAlgorithmMode;

    private Map<Integer, AIChatMode> aiChatModeMap;

    @PostConstruct
    public void doInit(){
        aiChatModeMap = new HashMap<>(){{
            put(0, aiChatCommonMode);
            put(1, aiChatAlgorithmMode);
        }};
    }
    public AIChatMode getAIChatMode(Integer status) {
        if (status == null) {
            return null;
        }
        return aiChatModeMap.get(status);
    }
}
