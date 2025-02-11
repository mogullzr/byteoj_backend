package com.example.backend.models.domain.competiton;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 比赛题目关联表
 * @TableName competitions_problems_math408
 */
@TableName(value ="competitions_problems_math408")
@Data
public class CompetitionsProblemsMath408 implements Serializable {
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

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}