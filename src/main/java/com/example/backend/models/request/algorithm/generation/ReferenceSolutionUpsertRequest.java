package com.example.backend.models.request.algorithm.generation;

import lombok.Data;

import java.io.Serializable;

@Data
public class ReferenceSolutionUpsertRequest implements Serializable {
    private Long id;
    private Long problemId;
    private String language;
    private String sourceCode;
    private String sourceType;
    private String note;
}
