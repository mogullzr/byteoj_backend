package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamSheetPaperVo implements Serializable {
    private static final long serialVersionUID = 3843509550223550531L;

    private Long id;

    private String exam_id;

    private String exam_name;

    private String start_date;

    private String end_date;

    private Integer time;

    private Integer score;

    private Integer total_score;

    private Long pages;
}
