package com.example.backend.models.domain.competiton;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 竞赛ac代码向量数据
 * @TableName problem_competition_code_embeddings
 */
@TableName(value ="problem_competition_code_embeddings")
@Data
public class ProblemCompetitionCodeEmbeddings {
    /**
     * ID
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 竞赛ID
     */
    @TableField("competition_id")
    private Long competition_id;

    /**
     * 题目索引
     */
    @TableField("problem_index")
    private String problem_index;

    /**
     * 用户UUID
     */
    @TableField("uuid")
    private Long uuid;

    /**
     * 向量数据
     */
    private Object embedding;
    
    /**
     * 源代码内容
     */
    @TableField("source_code")
    private String source_code;

    /**
     * 创建时间
     */
    @TableField("create_date")
    private Date create_date;
}