package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.models.request.AI.DeepSeekRequest;
import com.example.backend.service.ai.DeepSeekService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@RestController
@Slf4j
@RequestMapping("/ai")
public class DeepSeekAIController {

    @Autowired
    private DeepSeekService deepSeekService;

    @Autowired
    private UserService userService;

    // 定义SSE接口，用于逐句返回聊天内容
//    @AccessLimit(seconds = 5, maxCount = 10, needLogin = true)
    @RequestMapping("/ask")
    public SseEmitter deepSeekChat(@RequestBody DeepSeekRequest deepSeekRequest, HttpServletRequest request) {
        SseEmitter emitter = new SseEmitter();

        // 启动一个异步线程来处理流式数据
        deepSeekService.deepSeekAsker(deepSeekRequest, userService.getLoginUser(request).getUuid())
                .doOnTerminate(emitter::complete)
                .doOnError(ex -> {
                    emitter.completeWithError(ex);
                })
                .subscribe(message -> {
                    try {
                        // 逐句发送消息到前端
                        emitter.send(message);
                    } catch (IOException e) {
                        log.error("问题Error:", e);
                    }
                });

        return emitter;  // 返回SseEmitter，进行流式推送
    }
}