package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * math知识点存储表
 * @TableName problem_math408_tags_relation
 */
@TableName(value ="problem_math408_tags_relation")
@Data
public class ProblemMath408TagsRelation {
    /**
     * 标签ID
     */
    @TableId(type = IdType.AUTO)
    private Long tag_id;

    /**
     * 标签名
     */
    private String tag_name;
}