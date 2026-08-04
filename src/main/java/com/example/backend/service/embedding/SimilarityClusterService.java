package com.example.backend.service.embedding;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.embedding.SimilarityCluster;
import com.example.backend.models.vo.similarity.ClusterVo;
import com.fasterxml.jackson.core.JsonProcessingException;

/**
 * 相似度团伙 Service
 */
public interface SimilarityClusterService extends IService<SimilarityCluster> {

    /**
     * 查询某题目的抄袭团伙(分页)
     * @param competitionId 竞赛ID
     * @param problemIndex 题目索引
     * @param currentPage 当前页(第几个团伙)
     * @param pageSize 每页团伙数(默认1,一次看一个团伙)
     * @return 分页的团伙信息
     */
    Page<ClusterVo> getClustersByProblem(Long competitionId, String problemIndex, 
                                         Integer currentPage, Integer pageSize) throws JsonProcessingException;

    /**
     * 查询某用户的所有抄袭关系
     * @param competitionId 竞赛ID
     * @param userUuid 用户UUID
     * @return 用户的关系网(所有涉及的团伙)
     */
    Page<ClusterVo> getClustersByUser(Long competitionId, Long userUuid,
                                      Integer currentPage, Integer pageSize) throws JsonProcessingException;
}
