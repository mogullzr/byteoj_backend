package com.example.backend.service.algorithm;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author Mogullzr
* @description 针对表【problem_competition_code_embeddings(竞赛ac代码向量数据)】的数据库操作Service
* @createDate 2026-04-03 02:21:09
*/
@DS("pg")
public interface ProblemCompetitionCodeEmbeddingsService extends IService<ProblemCompetitionCodeEmbeddings> {

}
