package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamSubmitVo implements Serializable {
    private static final long serialVersionUID = 7251625090520698100L;

    /**
     * 考试ID
     */
    private Long exam_id;

    /**
     * 考试名称
     */
    private String exam_name;

    /**
     * 总分
     */
    private Integer total_score;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 用户名
     */
    private String username;

    /**
     * 选择题分数
     */
    private Integer score_option;

    /**
     * 主观题分数
     */
    private Integer score_subjective;
}
