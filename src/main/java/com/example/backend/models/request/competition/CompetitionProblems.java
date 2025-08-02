package com.example.backend.models.request.competition;

import lombok.Data;

@Data
public class CompetitionProblems {
    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 索引序列号
     */
    private String index;

    /**
     * 问题名称
     */
    private String problem_name;
}