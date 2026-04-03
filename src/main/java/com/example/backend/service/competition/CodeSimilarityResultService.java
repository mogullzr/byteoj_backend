package com.example.backend.service.competition;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.embedding.CodeSimilarityResult;

/**
* @author Mogullzr
* @description 针对表【code_similarity_result(代码相似度结果表,存储两两代码相似度比对结果)】的数据库操作Service
* @createDate 2026-04-03 18:38:55
*/
public interface CodeSimilarityResultService extends IService<CodeSimilarityResult> {

}
