package com.example.backend.models.domain.algorithm.probleminfo;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * algorithm题目基本信息表
 * @TableName problem_algorithm_bank
 */
@TableName(value ="problem_algorithm_bank")
@Data
public class ProblemAlgorithmBank implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Long problem_id;

    /**
     * 简称
     */
    private String short_name;

    /**
     * 英文名字
     */
    private String english_name;

    /**
     * 中文名字
     */
    private String chinese_name;

    /**
     * 难度
     */
    private String difficulty_name;

    /**
     * 修改人id
     */
    private Long create_by_id;

    /**
     * 修改人name
     */
    private String create_by_name;

    /**
     * 修改时间
     */
    private Date create_time;

    /**
     * 修改人id
     */
    private Long update_by_id;

    /**
     * 修改人name
     */
    private String update_by_name;

    /**
     * 修改时间
     */
    private Date update_time;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 来源
     */
    private String source_name;

    /**
     * AC人数
     */
    private Integer ac_total;

    /**
     * 尝试次数
     */
    private Integer test_total;

    /**
     * 题目描述
     */
    private String description;
    /**
     * 逻辑删除，0表示存在，1表示竞赛隐藏
     */
    private Integer is_delete;

    /**
     * 网站地址
     */
    private String url;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}