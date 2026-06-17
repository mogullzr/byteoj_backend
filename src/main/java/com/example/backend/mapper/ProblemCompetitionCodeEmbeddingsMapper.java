package com.example.backend.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
* @author Mogullzr
* @description 针对表【problem_competition_code_embeddings(竞赛ac代码向量数据)】的数据库操作Mapper
* @createDate 2026-04-03 02:21:09
* @Entity com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings
*/
@DS("pg")
public interface ProblemCompetitionCodeEmbeddingsMapper extends BaseMapper<ProblemCompetitionCodeEmbeddings> {

}




