package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 相似问题关系表
 * @TableName problem_similarity
 */
@TableName(value ="problem_similarity")
@Data
public class ProblemSimilarity {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 原问题ID
     */
    private Long problem_id;

    /**
     * 相似问题ID
     */
    private Long problem_id_similarity;

    /**
     * 相似度排名
     */
    @TableField("`Rank`")
    private Integer Rank;

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