package com.example.backend.models.domain.algorithm.tag;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 标签分类
 * @TableName problem_algorithm_tags_classify
 */
@TableName(value ="problem_algorithm_tags_classify")
@Data
public class ProblemAlgorithmTagsClassify implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 算法标签ID
     */
    private Integer tag_id;

    /**
     * 类别名称
     */
    private Integer category;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}