package com.example.backend.mapper;

import com.example.backend.models.domain.competiton.CompetitionAcProblemsAlgorithm;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
* @author 89856
* @description 针对表【competition_ac_problems_algorithm】的数据库操作Mapper
* @createDate 2024-08-30 20:01:32
* @Entity com.example.backend.models.domain.competiton.CompetitionAcProblemsAlgorithm
*/
public interface CompetitionAcProblemsAlgorithmMapper extends BaseMapper<CompetitionAcProblemsAlgorithm> {

    /**
     * 原子性增加测试次数
     * @param competitionId 竞赛ID
     * @param uuid 用户ID
     * @param idx 题目索引（String类型，对应数据库varchar）
     * @param increment 增加的数量（通常为1）
     * @return 更新的行数
     */
    @Update("UPDATE competition_ac_problems_algorithm SET test_num = test_num + #{increment} " +
            "WHERE competition_id = #{competitionId} AND uuid = #{uuid} AND idx = #{idx}")
    int incrementTestNum(@Param("competitionId") Long competitionId, 
                         @Param("uuid") Long uuid, 
                         @Param("idx") String idx, 
                         @Param("increment") long increment);

}




