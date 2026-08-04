package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamProblemInfo implements Serializable {
    private static final long serialVersionUID = 2204228589318238101L;

    /**
     * 试题ID
     */
    private Long problem_id;

    /**
     * 问题名称
     */
    private String problem_name;

    /**
     * 分数
     */
    private Integer score;

    /**
     * 试题类型,0,1,2,3
     */
    private Integer status;
    /**
     * 题目类型，
     */
    private Integer type;
}
