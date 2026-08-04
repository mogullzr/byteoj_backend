package com.example.backend.models.vo.algorithm.generation;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class ReferenceSolutionVO implements Serializable {
    private Long id;
    private Long problemId;
    private String language;
    private String sourceCode;
    private String sourceCodeHash;
    private String sourceType;
    private String status;
    private String validationSummary;
    private Integer validatedCaseCount;
    private Date validatedAt;
    private String note;
}
