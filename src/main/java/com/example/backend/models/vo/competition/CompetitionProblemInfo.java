package com.example.backend.models.vo.competition;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompetitionProblemInfo implements Serializable {
    private static final long serialVersionUID = -2056645835439540289L;
    /**
     * 问题ID
     */
    private Long problem_id;
    /**
     * 题目索引编号
     */
    private String index;

    /**
     * 通过人数
     */
    private Long ac_num;

    /**
     * 尝试次数
     */
    private Long test_num;

    /**
     * 满分
     */
    private Long score;
}
