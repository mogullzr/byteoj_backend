package com.example.backend.models.vo.similarity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 团伙查询结果 VO
 */
@Data
public class ClusterVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 竞赛ID
     */
    private Long competitionId;

    /**
     * 题目索引
     */
    private String problemIndex;

    /**
     * 团伙编号
     */
    private Integer clusterId;

    /**
     * 团伙人数
     */
    private Integer clusterSize;

    /**
     * 平均相似度
     */
    private Double avgSimilarity;

    /**
     * 成员列表
     */
    private List<ClusterMemberVo> members;

    /**
     * 创建时间
     */
    private Date createdAt;

    /**
     * 团伙成员 VO
     */
    @Data
    public static class ClusterMemberVo implements Serializable {
        
        private static final long serialVersionUID = 1L;

        /**
         * 用户UUID
         */
        private Long userUuid;

        /**
         * 用户名
         */
        private String userName;

        /**
         * 代码
         */
        private String sourceCode;
    }
}
