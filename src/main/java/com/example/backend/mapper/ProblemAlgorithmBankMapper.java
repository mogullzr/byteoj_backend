package com.example.backend.mapper;

import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
* @author Mogullzr
* @description 针对表【problem_algorithm_bank(algorithm题目基本信息表)】的数据库操作Mapper
* @createDate 2024-07-14 12:58:13
* @Entity com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank
*/
public interface ProblemAlgorithmBankMapper extends BaseMapper<ProblemAlgorithmBank> {

    /**
     * 原子性增加提交次数
     * @param problemId 题目ID
     * @param increment 增加的数量（通常为1）
     * @return 更新的行数
     */
    @Update("UPDATE problem_algorithm_bank SET test_total = test_total + #{increment} WHERE problem_id = #{problemId}")
    int incrementTestTotal(@Param("problemId") Long problemId, @Param("increment") int increment);

    /**
     * 原子性增加AC次数
     * @param problemId 题目ID
     * @param increment 增加的数量（通常为1）
     * @return 更新的行数
     */
    @Update("UPDATE problem_algorithm_bank SET ac_total = ac_total + #{increment} WHERE problem_id = #{problemId}")
    int incrementAcTotal(@Param("problemId") Long problemId, @Param("increment") int increment);

}




