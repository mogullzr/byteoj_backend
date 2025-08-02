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
     * 选择模型
     * <p>
     * DeepSeek/V3线路一 官网不稳定，但是快;
     * DeepSeek/V3线路二 菲官网，但是稳定;
     * DeepSeek/R1 比较慢
     */
    private String model;

    /**
     * 问答模式
     * 0：一般的问答模式
     * 1：算法题目AI引导
     * 2：.......
     */
    private Integer status;

    /**
     * 问题ID
     *
     */
    private Long problem_id;

    /**
     * 代码
     */
    private String code;
}
