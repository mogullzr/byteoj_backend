package com.example.backend.service.ai;

import cn.hutool.log.Log;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.request.AI.*;
import com.example.backend.registry.DeepSeekChatModeRegistry;
import com.example.backend.registry.DeepSeekChatPromptRegistry;
import com.example.backend.utils.OrderUtils;
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
import java.util.*;

@Service
public class DeepSeekService {

    @Resource
    private DeepSeekChatModeRegistry deepSeekChatModeRegistry;

    @Resource
    private DeepSeekChatPromptRegistry deepSeekChatPromptRegistry;

    @Resource
    private ObjectMapper objectMapper;

    @Value("${deepseek.api.v3-tenCloud.model}")
    private String tenCloudModel;

    public Flux<DeepSeekNetMessage> deepSeekAsker(DeepSeekRequest deepSeekRequest, Long uuid) {
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
        final int[] id = {1};

        // 构建请求体
        if (!deepSeekRequest.getModel().equals(tenCloudModel)) {
            DeepSeekNetRequest request = getDeepSeekNetRequest(deepSeekRequest);
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
                            String content = jsonResponse.path("choices").
                                    get(0).path("delta").path("content").asText();
                            String reason_content = jsonResponse.path("choices")
                                    .get(0).path("delta").path("reasoning_content").asText();

                            // 如果 content 包含 [DONE]，返回结束标志
                            if (content.contains("[DONE]")) {
                                return Flux.just(new DeepSeekNetMessage("[DONE]", id[0]));
                            }

                            if (content.equals("null")) {
                                // 输出内容片段
                                System.out.print(reason_content);

                                if (id[0] == 1) {
                                    DeepSeekNetMessage deepSeekNetMessage = new
                                            DeepSeekNetMessage("> " + reason_content, id[0]);
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
        } else {
            // 1. 正确构建 content 参数（提取用户文本，避免对象toString()）
            StringBuilder contentBuilder = new StringBuilder();
            for (DeepSeekMessage msg : deepSeekRequest.getMessageList()) {
                // 替换为你的消息类实际的文本提取逻辑
                contentBuilder.append(msg.getContent()).append("\n");
            }
            String userContent = contentBuilder.toString().trim();

            TenCloudNetRequest request = new TenCloudNetRequest();
            request.setBot_app_key(apiKey);
            request.setSession_id(String.valueOf(UUID.randomUUID()));
            request.setVisitor_biz_id(String.valueOf(uuid));
            request.setContent(userContent);
            request.setIncremental(true);
            request.setSearch_network("enable");
            request.setStream("enable");

            return webClient.post()
                    .contentType(MediaType.APPLICATION_JSON)
                    .bodyValue(request)
                    .retrieve()
                    .bodyToFlux(String.class)
                    .flatMap(response -> {
                        try {
                            // 解析JSON响应
                            JsonNode jsonResponse = objectMapper.readTree(response);

                            // 检查是否为回复类型
                            if ("reply".equals(jsonResponse.path("type").asText())) {
                                JsonNode payload = jsonResponse.path("payload");

                                // 提取content内容
                                String content = payload.path("content").asText();
                                boolean isFinal = payload.path("is_final").asBoolean();
                                // 如果是最终响应，添加[DONE]标记
                                if (isFinal) {
                                    return Flux.just(
                                            new DeepSeekNetMessage(content, id[0]++),
                                            new DeepSeekNetMessage("[DONE]", id[0]++)
                                    );
                                }

                                // 返回普通消息
                                return Flux.just(new DeepSeekNetMessage(content, id[0]++));
                            }

                            // 其他类型消息（如思考事件）可以在这里处理
                            return Flux.empty();
                        } catch (IOException e) {
                            e.printStackTrace();
                            return Flux.error(e);
                        }
                    });
        }

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