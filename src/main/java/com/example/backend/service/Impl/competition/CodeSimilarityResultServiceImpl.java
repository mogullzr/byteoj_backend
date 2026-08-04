package com.example.backend.service.Impl.competition;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.CodeSimilarityResultMapper;
import com.example.backend.models.domain.embedding.CodeSimilarityResult;
import com.example.backend.service.competition.CodeSimilarityResultService;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【code_similarity_result(代码相似度结果表,存储两两代码相似度比对结果)】的数据库操作Service实现
* @createDate 2026-04-03 18:38:55
*/
@Service
@DS("pg")  // 切换到 PostgreSQL
public class CodeSimilarityResultServiceImpl extends ServiceImpl<CodeSimilarityResultMapper, CodeSimilarityResult>
    implements CodeSimilarityResultService{

}




