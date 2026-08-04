package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemWrongBookQueryRequest implements Serializable {
    private static final long serialVersionUID = -7771532385042451431L;

    /**
     * 页码
     */
    private Integer pageNum = 1;

    /**
     * 每页大小
     */
    private Integer pageSize = 10;

    /**
     * 关键字，按题目名称模糊搜索
     */
    private String keyword;

    /**
     * 0待复习，1已掌握；不传默认查待复习
     */
    private Integer mastery_status;

    /**
     * 题目来源状态：0数学，1 408，2 政治，3算法
     */
    private Integer problem_status;

    /**
     * 题型：0简答，1单选，2多选，3填空，4算法
     */
    private Integer option_type;

    /**
     * 统计维度：option_type题型，problem_status科目来源，tag标签
     */
    private String stat_type;
}
