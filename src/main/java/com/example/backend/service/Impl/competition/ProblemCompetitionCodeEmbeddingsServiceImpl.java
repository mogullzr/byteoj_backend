package com.example.backend.service.Impl.competition;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings;
import com.example.backend.service.algorithm.ProblemCompetitionCodeEmbeddingsService;
import com.example.backend.mapper.ProblemCompetitionCodeEmbeddingsMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【problem_competition_code_embeddings(竞赛ac代码向量数据)】的数据库操作Service实现
* @createDate 2026-04-03 02:21:09
*/
@Service
public class ProblemCompetitionCodeEmbeddingsServiceImpl extends ServiceImpl<ProblemCompetitionCodeEmbeddingsMapper, ProblemCompetitionCodeEmbeddings>
    implements ProblemCompetitionCodeEmbeddingsService{

}




