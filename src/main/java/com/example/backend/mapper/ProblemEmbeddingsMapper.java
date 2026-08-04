package com.example.backend.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.example.backend.models.domain.math408.ProblemEmbeddings;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
* @author Mogullzr
* @description 针对表【problem_embeddings】的数据库操作Mapper
* @createDate 2026-03-19 20:38:49
* @Entity com.example.backend.models.domain.math408.ProblemEmbeddings
*/
@DS("pg")
public interface ProblemEmbeddingsMapper extends BaseMapper<ProblemEmbeddings> {

}




