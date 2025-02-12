package com.example.backend.service.ai;

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
        request.setModel("deepseek-chat");
        request.setStream(true);
        List<DeepSeekMessage> messageList = deepSeekRequest.getMessageList();
        List<DeepSeekNetRequest.Message> messageList1 = new ArrayList<>();
        messageList.forEach((message)->{
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
                .bodyToFlux(String.class)  // Retrieve raw response as String
                .flatMap(response -> {
                    // If the response is exactly "[DONE]", return a "Conversation Ended" flag
                    if ("[DONE]".equals(response.trim())) {
                        return Flux.just(new DeepSeekNetMessage("[DONE]", id[0]));  // Send a message indicating conversation has ended
                    }

                    try {
                        // Attempt to parse the response as JSON
                        JsonNode jsonResponse = objectMapper.readTree(response);
                        // Extract content field from each response chunk
                        String content = jsonResponse.path("choices").get(0).path("delta").path("content").asText();

                        // If response contains "[DONE]" within the content, return a "Conversation Ended" flag
                        if (content.contains("[DONE]")) {
                            return Flux.just(new DeepSeekNetMessage("[DONE]", id[0]));
                        }

                        // Output each content fragment
                        System.out.print(content);

                        DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage(content, id[0]);
                        id[0] += 1;
                        return Flux.just(deepSeekNetMessage);  // Return each fragment as a separate message
                    } catch (IOException e) {
                        e.printStackTrace();
                        return Flux.empty();  // In case of parsing error, return empty Flux
                    }
                });
    }
}

