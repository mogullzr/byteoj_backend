package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * math知识点存储表
 * @TableName problem_math408_tags_relation
 */
@TableName(value ="problem_math408_tags_relation")
@Data
public class ProblemMath408TagsRelation implements Serializable {

    /**
     * 标签ID
     */
    @TableId(type = IdType.AUTO)
    private Long tag_id;

    /**
     * 标签名
     */
    private String tag_name;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}