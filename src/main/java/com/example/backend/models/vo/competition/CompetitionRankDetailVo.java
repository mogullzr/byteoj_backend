package com.example.backend.models.vo.competition;

import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CompetitionRankDetailVo implements Serializable {
    private static final long serialVersionUID = -591382766692743509L;

    /**
     * 用户id
     */
    private Long uuid;

    /**
     * 用户名称
     */
    private String username;

    /**
     * 用户所属学校
     */
    private String school;

    /**
     * 通过题目数量
     */
    private Long ac_num;

    /**
     * 用户所属的段位，通过rating判断
     */
    private Integer rated;

    /**
     * 用户对题目提交记录信息显示
     */
    private List<SubmissionsAlgorithmRecordsVo> problem_record_list;

    /**
     * 总分
     */
    private Long total_score;

    /**
     * 是否AK
     */
    private Integer is_ak;

    /**
     * 页数
     */
    private Long page_num;

    /**
     * 罚时
     */
    private String time_penalty;
}