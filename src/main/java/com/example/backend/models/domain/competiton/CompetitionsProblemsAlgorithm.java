package com.example.backend.models.domain.competiton;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 比赛题目关联表
 * @TableName competitions_problems_algorithm
 */
@TableName(value ="competitions_problems_algorithm")
@Data
public class CompetitionsProblemsAlgorithm implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 比赛ID
     */
    private Long competition_id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 題目对应索引b
     */
    private String idx;

    /**
     * 重新命名的题目名称
     */
    private String problem_name;

    /**
     * 尝试次数
     */
    private Long test_total;

    /**
     * 通过人数
     */
    private Long ac_total;

    /**
     * 题目分数
     */
    private Long score;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}