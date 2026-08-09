package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamCandidateSearchRequest implements Serializable {
    private static final long serialVersionUID = -3741018484116096477L;

    /** algorithm or other. */
    private String category;

    private String keyword;

    /** 0: math, 1: 408, 2: politics, 3: algorithm. */
    private Integer status;

    private Integer pageNum;

    private Integer pageSize;

    /** Ignore pagination and return every item matching the current filter. */
    private Boolean all;
}
