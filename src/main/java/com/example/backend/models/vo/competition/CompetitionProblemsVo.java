package com.example.backend.models.vo.competition;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompetitionProblemsVo implements Serializable {
    private static final long serialVersionUID = 1753552126497561646L;
    /**
     * 索引编号
     */
    private String index;

    /**
     * 问题名称
     */
    private String problem_name;

    /**
     * 通过人数
     */
    private Long ac_total;
    /**
     * 测试人数
     */
    private Long test_total;
    /**
     * 题目通过状态,0表示通过，1表示没有通过
     */
    private Integer status;
}
