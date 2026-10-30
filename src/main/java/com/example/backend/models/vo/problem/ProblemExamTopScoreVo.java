package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

/** Public summary for one of the three highest-scoring distinct exam users. */
@Data
public class ProblemExamTopScoreVo implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer rank;
    private Long record_id;
    private String username;
    private Integer score;
    private Integer total_score;
    private String submitted_at;
}
