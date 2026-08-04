package com.example.backend.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.embedding.SimilarityCluster;

/**
 * @author Mogullzr
 * @description 针对表【similarity_cluster(相似度团伙表)】的数据库操作Mapper
 * @createDate 2026-04-03 21:00:00
 */
@DS("pg")
public interface SimilarityClusterMapper extends BaseMapper<SimilarityCluster> {

}
