package com.example.backend.service.ai;

import cn.hutool.log.Log;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.request.AI.DeepSeekMessage;
import com.example.backend.models.request.AI.DeepSeekNetMessage;
import com.example.backend.models.request.AI.DeepSeekNetRequest;
import com.example.backend.models.request.AI.DeepSeekRequest;
import com.example.backend.registry.DeepSeekChatModeRegistry;
import com.example.backend.registry.DeepSeekChatPromptRegistry;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Flux;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DeepSeekService {

    @Resource
    private DeepSeekChatModeRegistry deepSeekChatModeRegistry;

    @Resource
    private DeepSeekChatPromptRegistry deepSeekChatPromptRegistry;

    @Resource
    private ObjectMapper objectMapper;

    public Flux<DeepSeekNetMessage> deepSeekAsker(DeepSeekRequest deepSeekRequest) {
        // 根据 status 获取对应的 API URL 和 API Key
        String model = deepSeekRequest.getModel();
        if (model == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "模型不允许为空");
        }
        List<String> chatModeInfo = deepSeekChatModeRegistry.getChatModeInfo(model);
        if (chatModeInfo == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "模型不存在");
        }
        String apiUrl = chatModeInfo.get(0); // 默认使用 chat 的 URL
        String apiKey = chatModeInfo.get(1); // 默认使用 chat 的 Key

        // 创建 WebClient 实例
        WebClient webClient = WebClient.builder()
                .baseUrl(apiUrl)
                .defaultHeader("Authorization", "Bearer " + apiKey)
                .build();

        // 构建请求体
        DeepSeekNetRequest request = getDeepSeekNetRequest(deepSeekRequest);


        final int[] id = {1};
        return webClient.post()
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(request)
                .retrieve()
                .bodyToFlux(String.class)  // 以字符串形式接收响应
                .flatMap(response -> {
                    // 检查是否为结束标志 [DONE]
                    if ("[DONE]".equals(response.trim())) {
                        return Flux.just(new DeepSeekNetMessage("[DONE]", id[0])); // 返回结束标志
                    }

                    try {
                        // 尝试解析 JSON 响应
                        JsonNode jsonResponse = objectMapper.readTree(response);

                        // 提取 content 字段
                        String content = jsonResponse.path("choices").get(0).path("delta").path("content").asText();
                        String reason_content = jsonResponse.path("choices").get(0).path("delta").path("reasoning_content").asText();

                        // 如果 content 包含 [DONE]，返回结束标志
                        if (content.contains("[DONE]")) {
                            return Flux.just(new DeepSeekNetMessage("[DONE]", id[0]));
                        }

                        if (content.equals("null")) {
                            // 输出内容片段
                            System.out.print(reason_content);

                            if (id[0] == 1) {
                                DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage("> " + reason_content, id[0]);
                                id[0] += 1;
                                return Flux.just(deepSeekNetMessage); // 返回内容片段
                            }else {
                                DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage(reason_content, id[0]);
                                id[0] += 1;
                                return Flux.just(deepSeekNetMessage); // 返回内容片段
                            }


                        } else {
                            // 输出内容片段
                            System.out.print(content);

                            DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage(content, id[0]);
                            id[0] += 1;
                            return Flux.just(deepSeekNetMessage); // 返回内容片段
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        return Flux.empty(); // 解析错误时返回空 Flux
                    }
                });
    }

    private DeepSeekNetRequest getDeepSeekNetRequest(DeepSeekRequest deepSeekRequest) {
        List<DeepSeekMessage> messageList = deepSeekRequest.getMessageList();
        String model = deepSeekRequest.getModel();
        Integer status = deepSeekRequest.getStatus();
        String code = deepSeekRequest.getCode();

        DeepSeekNetRequest request = new DeepSeekNetRequest();
        request.setModel(model); // 使用 model 作为模型名称
        request.setStream(true); // 设置为 true，因为流式响应需要处理 [DONE]

        // 注册器模式
        AIChatMode aiChatMode = deepSeekChatPromptRegistry.getAIChatMode(deepSeekRequest.getStatus());
        messageList = aiChatMode.doPrompt(deepSeekRequest.getProblem_id(), model, status, messageList, code);

        request.setMessages(messageList);
        return request;
    }
}