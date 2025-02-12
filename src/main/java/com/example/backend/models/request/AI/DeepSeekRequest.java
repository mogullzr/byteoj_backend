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
     * 问答模式,0:一般问答模式;
     */
    private Integer status;
}
