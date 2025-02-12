package com.example.backend.models.request.AI;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class DeepSeekRequest implements Serializable {
    private static final long serialVersionUID = 26809606283537289L;
    /**
     *
     */
    private List<DeepSeekMessage> messageList;

    /**
     * 问答模式
     * DeepSeek/V3 快速问答模式;
     * DeepSeek/R1 比较慢
     */
    private String status;
}
