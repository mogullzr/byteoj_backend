package com.example.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.embedding.CodeSimilarityResult;

/**
 * @author Mogullzr
 * @description 针对表【code_similarity_result(代码相似度结果表)】的数据库操作Mapper
 * @createDate 2026-04-03 19:50:00
 * @Entity com.example.backend.models.domain.embedding.CodeSimilarityResult
 */
public interface CodeSimilarityResultMapper extends BaseMapper<CodeSimilarityResult> {

}
