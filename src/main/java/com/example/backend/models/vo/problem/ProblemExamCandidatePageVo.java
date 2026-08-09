package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ProblemExamCandidatePageVo implements Serializable {
    private static final long serialVersionUID = -8491205624559348792L;

    private List<ProblemExamCandidateVo> records;
    private Long total;
}
