package com.example.backend.service.Impl.competition;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.ProblemEmbeddingsMapper;
import com.example.backend.models.domain.math408.ProblemEmbeddings;
import com.example.backend.service.competition.ProblemEmbeddingsService;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【problem_embeddings】的数据库操作Service实现
* @createDate 2026-04-03 02:20:16
*/
@Service
public class ProblemEmbeddingsServiceImpl extends ServiceImpl<ProblemEmbeddingsMapper, ProblemEmbeddings>
    implements ProblemEmbeddingsService{

}




