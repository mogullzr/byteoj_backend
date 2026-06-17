package com.example.backend.models.vo.problem;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Data
public class ProblemMath408BankVo implements Serializable {
    /**
     * 问题ID
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
     * 如果是选择题，则有多个选项（反之则为null）
     */
    private String options;

    /**
     * 正确答案（各个类型题目的答案格式不同）
     */
    private String correct_answer;

    /**
     * 0表示简答题，1表示单选题，2表示多选题，3表示填空题,4表示算法题
     */
    private Integer option_type;

    /**
     * 题目标签列表
     */
    private List<String> tagsList;

    /**
     * 分数
     */
    private Integer score;

    /**
     * 解析
     */
    private String analysis;

    /**
     * 面数
     */
    private Long pages;

    /**
     * 题目类型，0数学，1 408，2 政治，3算法
     */
    private Integer status;
}
