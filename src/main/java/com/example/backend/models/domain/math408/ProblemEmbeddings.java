package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 向量数据表
 * @TableName problem_embeddings
 */
@TableName(value ="problem_embeddings")
@Data
public class ProblemEmbeddings {
    /**
     * ID
     */
    @TableId
    private Long id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 向量内容
     */
    private String  embedding;

    /**
     * 模型
     */
    private String model;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 更新时间
     */
    private Date update_date;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}