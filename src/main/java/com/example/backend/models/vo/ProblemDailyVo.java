package com.example.backend.models.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 
 * @TableName problem_daily_info
 */
@TableName(value ="problem_daily_info")
@Data
public class ProblemDailyVo implements Serializable {
    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 问题名称
     */
    private String problem_name;

    /**
     * 问题难度
     */
    private String difficulty;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}