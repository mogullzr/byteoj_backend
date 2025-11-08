package com.example.backend.mapper;

import com.example.backend.models.domain.competiton.CompetitionsUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
* @author 89856
* @description 针对表【competitions_user(用户参与表)】的数据库操作Mapper
* @createDate 2024-08-30 19:16:52
* @Entity com.example.backend.models.domain.competiton.CompetitionsUser
*/
public interface CompetitionsUserMapper extends BaseMapper<CompetitionsUser> {

    /**
     * 原子性增加AC数量
     * @param competitionId 竞赛ID
     * @param uuid 用户ID
     * @param increment 增加的数量（通常为1）
     * @return 更新的行数
     */
    @Update("UPDATE competitions_user SET ac_num = ac_num + #{increment} " +
            "WHERE competition_id = #{competitionId} AND uuid = #{uuid}")
    int incrementAcNum(@Param("competitionId") Long competitionId, 
                       @Param("uuid") Long uuid, 
                       @Param("increment") long increment);

    /**
     * 原子性增加罚时
     * @param competitionId 竞赛ID
     * @param uuid 用户ID
     * @param timePenalty 增加的罚时
     * @return 更新的行数
     */
    @Update("UPDATE competitions_user SET time_penalty = time_penalty + #{timePenalty} " +
            "WHERE competition_id = #{competitionId} AND uuid = #{uuid}")
    int incrementTimePenalty(@Param("competitionId") Long competitionId, 
                             @Param("uuid") Long uuid, 
                             @Param("timePenalty") long timePenalty);

}




