package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemWrongBookAddRequest implements Serializable {
    private static final long serialVersionUID = 5757933475471521150L;

    private Long problem_id;

    /**
     * 0 math, 1 408, 3 algorithm.
     */
    private Integer problem_status;

    /**
     * 0 subjective, 1 single choice, 2 multiple choice, 3 fill blank, 4 algorithm.
     */
    private Integer option_type;

    private Long exam_id;

    private Long exam_user_id;

    private String answer;

    private Integer score;

    private Integer total_score;

    private String ai_advise;
}
