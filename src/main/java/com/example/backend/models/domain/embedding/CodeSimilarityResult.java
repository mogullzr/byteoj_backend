package com.example.backend.models.domain.embedding;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 代码相似度结果
 */
@TableName(value = "code_similarity_result")
@Data
public class CodeSimilarityResult implements Serializable {
    
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    
    /**
     * 竞赛ID
     */
    @TableField("competition_id")
    private Long competitionId;
    
    /**
     * 题目索引(A,B,C...)
     */
    @TableField("problem_index")
    private String problemIndex;
    
    /**
     * 用户1的UUID
     */
    @TableField("user_uuid_1")
    private Long userUuid1;
    
    /**
     * 用户2的UUID
     */
    @TableField("user_uuid_2")
    private Long userUuid2;
    
    /**
     * 用户1的源代码
     */
    @TableField("source_code_1")
    private String sourceCode1;
    
    /**
     * 用户2的源代码
     */
    @TableField("source_code_2")
    private String sourceCode2;
    
    /**
     * 相似度分数(0-1)
     */
    @TableField("similarity_score")
    private Double similarityScore;

    @TableField("ast_score")
    private Double astScore;

    @TableField("token_score")
    private Double tokenScore;

    @TableField("ast_containment_score")
    private Double astContainmentScore;

    @TableField("token_containment_score")
    private Double tokenContainmentScore;

    @TableField("embedding_score")
    private Double embeddingScore;

    @TableField("risk_level")
    private String riskLevel;

    @TableField("algorithm_version")
    private String algorithmVersion;
    
    /**
     * 创建时间
     */
    @TableField("created_at")
    private Date createdAt;
    
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
