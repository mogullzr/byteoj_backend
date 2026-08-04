package com.example.backend.models.vo.algorithm.generation;

import lombok.Data;

import java.io.Serializable;

@Data
public class TestGenerationScaleVO implements Serializable {
    private Long id;
    private String scale;
    private Integer requestedCount;
    private Integer generatedCount;
    private Integer outputCompletedCount;
    private String constraints;
    private Long seed;
    private String status;
    private String generatorCode;
    private String generatorCodeHash;
    private Integer currentBatch;
    private Integer totalBatches;
    private String errorMessage;
}
