package com.example.backend.models.request.algorithm.generation;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ReferenceSolutionDebugRequest implements Serializable {
    private Long referenceSolutionId;
    private String language;
    private String sourceCode;
    private List<String> inputs;
    private Integer previewChars;
}
