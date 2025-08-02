package com.example.backend.models.domain.algorithm;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName problem_daily_info
 */
@TableName(value ="problem_daily_info")
@Data
public class ProblemDailyInfo implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 问题
     */
    private Long problem_id;

    /**
     * 是否选择
     */
    private Integer is_select;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}