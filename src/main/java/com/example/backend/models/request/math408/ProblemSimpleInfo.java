package com.example.backend.models.request.math408;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemSimpleInfo implements Serializable {
    private static final long serialVersionUID = 7629585876364511969L;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 答案
     */
    private String answer;

    /**
     * 题目类型: 0表示简答题，1表示单选题，2表示多选题，3表示填空题, 4算法题
     */
    private Integer status;

    /**
     * 语言
     */
    private String language;
}
