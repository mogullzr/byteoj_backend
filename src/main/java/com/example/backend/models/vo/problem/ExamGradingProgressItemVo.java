package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

/**
 * 交卷判卷过程中单道题目的实时状态。
 */
@Data
public class ExamGradingProgressItemVo implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 页面中的题目顺序，从 1 开始。 */
    private Integer question_index;
    private Long problem_id;
    private Integer question_status;
    /** QUEUED、GRADING、COMPLETED、FAILED。 */
    private String state;
    private String message;
    private Integer score;
    private Long updated_at;
}
