package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.models.request.AI.DeepSeekRequest;
import com.example.backend.service.ai.DeepSeekService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.io.IOException;

@RestController
@Slf4j
@RequestMapping("/ai")
public class DeepSeekAIController {

    @Autowired
    private DeepSeekService deepSeekService;

    // 定义SSE接口，用于逐句返回聊天内容
    @AccessLimit(seconds = 5, maxCount = 10, needLogin = true)
    @RequestMapping("/ask")
    public SseEmitter deepSeekChat(@RequestBody DeepSeekRequest deepSeekRequest) {
        SseEmitter emitter = new SseEmitter();

        // 启动一个异步线程来处理流式数据
        deepSeekService.deepSeekAsker(deepSeekRequest)
                .doOnTerminate(emitter::complete)  // 流结束时自动关闭
                .doOnError(ex -> {
                    emitter.completeWithError(ex);  // 发生错误时关闭
                })
                .subscribe(message -> {
                    try {
                        // 逐句发送消息到前端
                        emitter.send(message);
                    } catch (IOException e) {
                        log.error("Error sending message to client", e);
                    }
                });

        return emitter;  // 返回SseEmitter，进行流式推送
    }
}