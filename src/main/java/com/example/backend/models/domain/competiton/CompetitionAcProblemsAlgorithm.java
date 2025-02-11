package com.example.backend.models.domain.competiton;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 
 * @TableName competition_ac_problems_algorithm
 */
@TableName(value ="competition_ac_problems_algorithm")
@Data
public class CompetitionAcProblemsAlgorithm implements Serializable {
    /**
     * ID
     */
    @TableId
    private Integer id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 竞赛ID
     */
    private Long competition_id;

    /**
     * 题目索引
     */
    private String idx;

    /**
     * 通过情况，0表示通过，1表示没通过
     */
    private Integer status;

    /**
     * 本题尝试次数,ac后不再变化
     */
    private Long test_num;

    /**
     * 赛后这道题目的zh
     */
    private Integer after_status;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}