package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;

/**
 * math知识点存储表
 * @TableName problem_math408_tags
 */
@TableName(value ="problem_math408_tags")
@Data
public class ProblemMath408Tags implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 标签ID
     */
    private Long tag_id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 
     */
    @TableLogic
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}