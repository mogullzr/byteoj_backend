package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;
import org.apache.ibatis.type.JdbcType;
import org.postgresql.util.PGobject;

/**
 * 
 * @TableName problem_embeddings
 */
@TableName(value ="problem_embeddings")
@Data
public class ProblemEmbeddings {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 模型
     */
    private String model;

    /**
     * 0数学，1 408，2政治
     */
    private Integer status;

    /**
     * 向量数据
     */
    @TableField(jdbcType = JdbcType.OTHER, typeHandler = org.apache.ibatis.type.ObjectTypeHandler.class)
    private PGobject embedding;

    /**
     * 创建时间
     */
    private Date created_date;
}