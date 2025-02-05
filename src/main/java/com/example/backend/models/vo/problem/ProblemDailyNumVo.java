package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 用戶每日刷题信息
 */
@Data
public class ProblemDailyNumVo implements Serializable {
    private static final long serialVersionUID = -3355485144034432541L;
    /**
     * 时间
     */
    private String date;

    /**
     * 刷题数量
     */

    private Long num;
}
