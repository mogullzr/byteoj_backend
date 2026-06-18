package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamSheetVo implements Serializable {
    private static final long serialVersionUID = 5524251146078268874L;

    private Long problem_id;

    private String answer;

    private Integer score;

    private String ai_advise;

    private Boolean person;

    private Long uuid;
}
