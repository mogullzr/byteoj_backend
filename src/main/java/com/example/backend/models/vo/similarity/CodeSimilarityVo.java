package com.example.backend.models.vo.similarity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 代码相似度查询结果 VO
 */
@Data
public class CodeSimilarityVo {
    
    /**
     * 竞赛ID
     */
    private Long competitionId;
    
    /**
     * 题目索引(A,B,C...)
     */
    private String problemIndex;
    
    /**
     * 用户1名称
     */
    private String userName1;
    
    /**
     * 用户2名称
     */
    private String userName2;
    
    /**
     * 用户1的代码
     */
    private String sourceCode1;
    
    /**
     * 用户2的代码
     */
    private String sourceCode2;
    
    /**
     * 相似度分数(0-1)
     */
    private Double similarityScore;
    
    /**
     * 查重时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createdAt;
}
