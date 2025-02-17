package com.example.backend.service.ai;

import com.example.backend.models.request.AI.DeepSeekMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class AIChatCommonMode implements AIChatMode{
    @Override
    public List<DeepSeekMessage> doPrompt(Long problem_id, String model, Integer status, List<DeepSeekMessage> message, String code) {
        return message;
    }
}
