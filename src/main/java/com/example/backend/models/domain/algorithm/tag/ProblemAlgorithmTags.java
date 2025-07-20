package com.example.backend.models.domain.algorithm.tag;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;

/**
 * algorithm问题标签类型表
 * @TableName problem_algorithm_tags
 */
@TableName(value ="problem_algorithm_tags")
@Data
public class ProblemAlgorithmTags implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 标签id
     */
    private Integer tag_id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 逻辑删除，0表示正常，1表示竞赛隐藏
     */
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;


}