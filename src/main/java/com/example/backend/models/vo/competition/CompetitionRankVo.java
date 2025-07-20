

package com.example.backend.models.vo.competition;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CompetitionRankVo implements Serializable {
    private static final long serialVersionUID = -767371766947702125L;
    /**
     * 用户详细排名信息
     */
    private List<CompetitionRankDetailVo> rank_user_list;
    /**
     * 问题信息
     */
    private List<CompetitionProblemInfo> problem_list;

}
