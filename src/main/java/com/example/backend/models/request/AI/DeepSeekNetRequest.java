package com.example.backend.models.request.AI;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
public class DeepSeekNetRequest {
    private String model;
    private Boolean stream;
    private Float temperature;
    private Float top_p;
    private List<DeepSeekMessage> messages;
}
