package com.example.backend.models.request.algorithm.generation;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CreateTestGenerationJobRequest implements Serializable {
    private Long problemId;
    private String model;
    private String writeMode;
    private Boolean generateExpectedOutput;
    private Boolean confirmEmptyOutput;
    private Long referenceSolutionId;
    private Integer previewChars;
    private List<TestGenerationScaleRequest> scales;
}
