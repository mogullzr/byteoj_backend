package com.example.backend.models.domain.algorithm.tag;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 类别关系表
 * @TableName problem_algorithm_tags_classify_relation
 */
@TableName(value ="problem_algorithm_tags_classify_relation")
@Data
public class ProblemAlgorithmTagsClassifyRelation implements Serializable {
    /**
     * 类别ID
     */
    @TableId
    private Integer category_id;

    /**
     * 类别名称
     */
    private String category_name;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}