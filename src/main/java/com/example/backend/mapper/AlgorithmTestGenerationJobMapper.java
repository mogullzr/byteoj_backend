package com.example.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.algorithm.generation.AlgorithmTestGenerationJob;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface AlgorithmTestGenerationJobMapper extends BaseMapper<AlgorithmTestGenerationJob> {
    @Select("SELECT problem_id FROM problem_algorithm_bank WHERE problem_id = #{problemId} FOR UPDATE")
    Long lockProblem(@Param("problemId") Long problemId);
}
