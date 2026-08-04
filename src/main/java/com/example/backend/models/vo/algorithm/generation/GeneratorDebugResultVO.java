package com.example.backend.models.vo.algorithm.generation;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class GeneratorDebugResultVO implements Serializable {
    private String status;
    private Long elapsedMs;
    private Integer generatedCount;
    private Long stdoutBytes;
    private String stderrPreview;
    private List<GeneratedCasePreviewVO> cases;
}
