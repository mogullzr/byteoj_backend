package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemAlgorithmTestCaseRequest implements Serializable {
    private static final long serialVersionUID = -4018198607021873378L;
    /**
     * 输入
     */
    private String input;

    /**
     * 输出
     */
    private String output;
}
