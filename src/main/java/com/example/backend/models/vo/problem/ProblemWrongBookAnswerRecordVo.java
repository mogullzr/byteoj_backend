package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class ProblemWrongBookAnswerRecordVo implements Serializable {
    private static final long serialVersionUID = -2565409498144334525L;

    private Long id;

    private Long exam_user_id;

    private Long problem_id;

    private String answer;

    private Integer score;

    private Integer total_score;

    private String ai_advise;

    private String confidence;

    private Boolean person;

    private Date create_date;

    private Date update_date;
}
