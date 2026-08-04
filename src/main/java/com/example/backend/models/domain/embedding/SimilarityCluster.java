package com.example.backend.models.domain.embedding;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 相似度团伙表
 */
@TableName(value = "similarity_cluster")
@Data
public class SimilarityCluster implements Serializable {
    
    /**
     * 主键ID
     */
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
     * 团伙编号(1,2,3...)
     */
    @TableField("cluster_id")
    private Integer clusterId;
    
    /**
     * 团伙人数
     */
    @TableField("cluster_size")
    private Integer clusterSize;
    
    /**
     * 平均相似度
     */
    @TableField("avg_similarity")
    private Double avgSimilarity;
    
    /**
     * 成员UUID列表(JSON数组)
     */
    @TableField("user_uuids")
    private String userUuids;
    
    /**
     * 创建时间
     */
    @TableField("created_at")
    private Date createdAt;
}
