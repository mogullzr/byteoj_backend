package com.example.backend.service.ai;

import com.example.backend.models.request.AI.DeepSeekMessage;
import com.example.backend.models.request.AI.DeepSeekRequest;

import java.util.List;

public interface AIChatMode {
    /**
     *
     *
     * @param problem_id 问题ID
     * @param model 选定的模型
     * @param status AI问答模式
     * @param message 消息
     * @param code 代码
     * @return 构造出来的 Prompt
     */
    List<DeepSeekMessage> doPrompt(Long problem_id, String model, Integer status, List<DeepSeekMessage> message, String code);
}
