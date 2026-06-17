package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemWrongBookSyncItem implements Serializable {
    private static final long serialVersionUID = 8393600304466996178L;

    private Long exam_id;

    private Long exam_user_id;

    private Long uuid;

    private Long problem_id;

    /**
     * 0数学，1 408，2 政治，3算法
     */
    private Integer problem_status;

    /**
     * 0简答，1单选，2多选，3填空，4算法
     */
    private Integer option_type;

    private Integer total_score;

    private Integer score;

    private String answer;

    private String ai_advise;
}
