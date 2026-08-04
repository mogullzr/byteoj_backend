package com.example.backend.models.vo.competition;

import cn.hutool.core.date.DateTime;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CompetitionProctorVo implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 人数
     */
    private Long personNumber;

    /**
     * 时间
     */
    private DateTime procterTime;

    /**
     * 检测行为
     */
    private List<ProcterBehaviorVo> procterBehavior;
}
