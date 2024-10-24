package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;

/**
 * 题目选项存储表
 * @TableName problem_math408_options
 */
@TableName(value ="problem_math408_options")
@Data
public class ProblemMath408Options implements Serializable {
    /**
     * 选项 ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 所属问题的 ID
     */
    private Long problem_id;

    /**
     * 选项内容
     */
    private String option_text;

    /**
     * 选项索引，如 A, B, C，D 等
     */
    private String option_index;

    /**
     * 
     */
    @TableLogic
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;


}