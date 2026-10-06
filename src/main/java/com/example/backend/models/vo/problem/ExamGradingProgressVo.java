package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 一次考试交卷的实时判卷进度。
 */
@Data
public class ExamGradingProgressVo implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long exam_id;
    private String status;
    private Integer total;
    private Integer completed;
    private Integer failed;
    private Integer current_question_index;
    private Long current_problem_id;
    private String current_status;
    private String message;
    private Long updated_at;
    private List<ExamGradingProgressItemVo> items = new ArrayList<>();
}
