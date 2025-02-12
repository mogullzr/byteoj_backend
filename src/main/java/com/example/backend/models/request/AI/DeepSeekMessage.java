package com.example.backend.models.request.AI;

import lombok.Data;

import java.io.Serializable;

@Data
public class DeepSeekMessage implements Serializable {
    private static final long serialVersionUID = -4853126400314485658L;

    /**
     * 信息输入输出者
     */
    private String role;

    /**
     * 具体消息
     */
    private String content;
}
