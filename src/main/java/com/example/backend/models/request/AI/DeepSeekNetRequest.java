package com.example.backend.models.request.AI;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
public class DeepSeekNetRequest {
    private String model;
    private Boolean stream;
    private List<Message> messages;

    @AllArgsConstructor
    @Data
    public static class Message {
        private String role;
        private String content;
    }
}
