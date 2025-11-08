package com.example.backend.mapper;

import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
* @author 89856
* @description 针对表【competitions_problems_algorithm(比赛题目关联表)】的数据库操作Mapper
* @createDate 2024-08-25 17:06:24
* @Entity com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm
*/
public interface CompetitionsProblemsAlgorithmMapper extends BaseMapper<CompetitionsProblemsAlgorithm> {

    /**
     * 原子性增加提交次数
     * @param competitionId 竞赛ID
     * @param idx 题目索引
     * @param increment 增加的数量（通常为1）
     * @return 更新的行数
     */
    @Update("UPDATE competitions_problems_algorithm SET test_total = test_total + #{increment} " +
            "WHERE competition_id = #{competitionId} AND idx = #{idx}")
    int incrementTestTotal(@Param("competitionId") Long competitionId, 
                           @Param("idx") Long idx, 
                           @Param("increment") long increment);

    /**
     * 原子性增加AC次数
     * @param competitionId 竞赛ID
     * @param idx 题目索引
     * @param increment 增加的数量（通常为1）
     * @return 更新的行数
     */
    @Update("UPDATE competitions_problems_algorithm SET ac_total = ac_total + #{increment} " +
            "WHERE competition_id = #{competitionId} AND idx = #{idx}")
    int incrementAcTotal(@Param("competitionId") Long competitionId, 
                         @Param("idx") Long idx, 
                         @Param("increment") long increment);

}




