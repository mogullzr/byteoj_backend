package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * math知识点存储表
 * @TableName problem_math408_tags
 */
@TableName(value ="problem_math408_tags")
@Data
public class ProblemMath408Tags {
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
    private Integer is_delete;
}