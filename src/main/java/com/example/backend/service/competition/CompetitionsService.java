package com.example.backend.service.competition;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.request.CompetitionAddRequest;
import com.example.backend.models.vo.SubmissionsAlgorithmRecordsVo;
import com.example.backend.models.vo.competition.CompetitionInfoVo;
import com.example.backend.models.vo.competition.CompetitionRankVo;

import java.util.List;

/**
* @author Mogullzr
* @description 针对表【competitions(比赛基本信息表)】的数据库操作Service
* @createDate 2024-07-18 16:24:00
*/
public interface CompetitionsService extends IService<Competitions> {

    /**
     * 分页搜索竞赛列表信息
     *
     * @param PageNum 当前页数
     * @param uuid 用户id
     * @return 竞赛列表信息
     */
    List<CompetitionInfoVo> competitionSearchByPage(Long PageNum, Long uuid);


    /**
     * 通过竞赛id搜索竞赛信息
     *
     * @param competition_id 竞赛id
     * @param uuid 用户id
     * @return 竞赛信息
     */
    CompetitionInfoVo competitionSearchByCompetitionId(Long competition_id, Long uuid);


    /**
     * 搜索竞赛排名信息
     *
     * @param competition_id 比赛ID
     * @param PageNum 面数
     * @return 竞赛排名信息
     */
    CompetitionRankVo competitionSearchRank(Long competition_id, Integer PageNum);


    /**
     * 分页查询记录
     *
     * @param competition_id 竞赛ID
     * @param PageNum 面数
     * @return 记录信息
     */
    List<SubmissionsAlgorithmRecordsVo> competitionSearchRecords(Long competition_id, Long PageNum);
    /**
     * 用户级别添加竞赛
     *
     * @param competitionAddRequest 竞赛信息
     * @param uuid 用户id
     * @return 创建的比赛ID
     */
    Long competitionAddByUser(CompetitionAddRequest competitionAddRequest, Long uuid);

    /**
     * 用户修改竞赛信息
     *
     * @param competitionAddRequest 修改后的竞赛信息
     * @param uuid 用户id
     * @return 是否创建成功
     */
    boolean competitionModifyByUser(CompetitionAddRequest competitionAddRequest, Long uuid);

    /**
     * 删除竞赛
     *
     * @param competition_id 竞赛id
     * @param uuid 用户id
     * @param isAdmin 是否为管理员
     * @return 是否成功删除
     */
    boolean competitionDeleteByAdmin(Long competition_id, Long uuid, boolean isAdmin);

    /**
     * 报名比赛
     *
     * @param competition_id 竞赛id
     * @param password 密码
     * @param uuid 用户id
     * @return 是否报名成功
     */
    boolean competitionUserJoin(Long competition_id, String password, Long uuid);

    /**
     * 取消比赛
     *
     * @param competition_id 竞赛id
     * @param uuid 用户id
     * @return 是否报名成功
     */
    boolean competitionUserJoinCancel(Long competition_id, Long uuid);
}
