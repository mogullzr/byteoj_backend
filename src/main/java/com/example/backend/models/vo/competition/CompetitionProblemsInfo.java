package com.example.backend.models.vo.competition;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompetitionProblemsInfo implements Serializable {
    /**
     * 用户名
     */
    private String username;

    /**
     * 题目名称
     */
    private String problem_name;

    /**
     * 代码
     */
    private String code;
}
