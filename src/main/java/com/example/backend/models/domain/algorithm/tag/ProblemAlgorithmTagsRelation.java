package com.example.backend.models.domain.algorithm.tag;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * algorithm问题标签关联表
 * @TableName problem_algorithm_tags_relation
 */
@TableName(value ="problem_algorithm_tags_relation")
@Data
public class ProblemAlgorithmTagsRelation implements Serializable {
    /**
     * 标签id
     */
    @TableId(type = IdType.AUTO)
    private Integer tag_id;

    /**
     * 问题名称
     */
    private String tag_name;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}