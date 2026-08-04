package com.example.backend.models.vo.algorithm.generation;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class TestGenerationJobVO implements Serializable {
    private Long jobId;
    private Long problemId;
    private String status;
    private String currentStage;
    private Integer progressPercent;
    private String writeMode;
    private Boolean generateExpectedOutput;
    private Long referenceSolutionId;
    private Integer requestedCases;
    private Integer generatedCases;
    private Integer outputCompletedCases;
    private Integer publishedCases;
    private Integer duplicateCases;
    private Integer retryCount;
    private String errorCode;
    private String errorMessage;
    private Date createdAt;
    private Date startedAt;
    private Date finishedAt;
    private String webSocketTopic;
    private List<TestGenerationScaleVO> scales;
}
