package com.example.backend.models.request.math408;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Data
public class ProblemRequest implements Serializable {
    /**
     *
     */
    private Long problem_id;

    /**
     * 简称
     */
    private String problem_name;

    /**
     * 难度
     */
    private String difficulty_name;

    /**
     * 来源
     */
    private String source_name;

    /**
     * 题目描述
     */
    private String description;

    /**
     * 解析
     */
    private String analysis;

    /**
     * 0表示该题目为数学类型题目，1表示该题目为408考研试题
     */
    private Integer status;

    /**
     * 0表示简答题，1表示单选题，2表示多选题，3表示填空题
     */
    private Integer option_type;

    /**
     * 选项json字符串
     */
    private String options;

    /**
     * 正确答案
     */
    private String correctAnswers;

    /**
     * 标签列表
     */
    private List<Long> tagsList;
}