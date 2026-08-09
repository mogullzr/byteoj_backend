package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamCandidateVo implements Serializable {
    private static final long serialVersionUID = 2922397148404714632L;

    private Long problem_id;
    private String problem_name;
    private Integer score;
    private Integer status;
    private Integer type;
    private String description;
    private String options;
}
