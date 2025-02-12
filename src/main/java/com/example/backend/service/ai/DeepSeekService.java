package com.example.backend.service.ai;

import cn.hutool.log.Log;
import com.example.backend.models.request.AI.DeepSeekMessage;
import com.example.backend.models.request.AI.DeepSeekNetMessage;
import com.example.backend.models.request.AI.DeepSeekNetRequest;
import com.example.backend.models.request.AI.DeepSeekRequest;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Flux;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class DeepSeekService {

    private final WebClient webClient;
    private final ObjectMapper objectMapper = new ObjectMapper();

    public DeepSeekService(@Value("${deepseek.api.url}") String apiUrl,
                           @Value("${deepseek.api.key}") String apiKey) {
        this.webClient = WebClient.builder()
                .baseUrl(apiUrl)
                .defaultHeader("Authorization", "Bearer " + apiKey)
                .build();
    }

    public Flux<DeepSeekNetMessage> deepSeekAsker(DeepSeekRequest deepSeekRequest) {
        DeepSeekNetRequest request = new DeepSeekNetRequest();
        request.setModel("deepseek-ai/DeepSeek-R1-Distill-Llama-70B");
        request.setStream(true); // 设置为 true，因为流式响应需要处理 [DONE]
//        request.setMaxTokens(512);
//        request.setTemperature(0.7);
//        request.setTopP(0.7);
//        request.setTopK(50);
//        request.setFrequencyPenalty(0.5);
//        request.setN(1);
//        request.setResponseFormat(new DeepSeekNetRequest.ResponseFormat("text"));

        List<DeepSeekMessage> messageList = deepSeekRequest.getMessageList();
        List<DeepSeekNetRequest.Message> messageList1 = new ArrayList<>();
        messageList.forEach((message) -> {
            String role = message.getRole();
            String content = message.getContent();
            DeepSeekNetRequest.Message chat = new DeepSeekNetRequest.Message(role, content);
            messageList1.add(chat);
        });
        request.setMessages(messageList1);

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

                        // 如果 content 包含 [DONE]，返回结束标志
                        if (content.contains("[DONE]")) {
                            return Flux.just(new DeepSeekNetMessage("[DONE]", id[0]));
                        }

                        // 输出内容片段
                        System.out.print(content);

                        DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage(content, id[0]);
                        id[0] += 1;
                        return Flux.just(deepSeekNetMessage); // 返回内容片段
                    } catch (IOException e) {
                        e.printStackTrace();
                        return Flux.empty(); // 解析错误时返回空 Flux
                    }
                });
    }
}

