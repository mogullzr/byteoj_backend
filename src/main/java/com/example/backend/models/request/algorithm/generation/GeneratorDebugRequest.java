package com.example.backend.models.request.algorithm.generation;

import lombok.Data;

import java.io.Serializable;

@Data
public class GeneratorDebugRequest implements Serializable {
    private Long problemId;
    private String scale;
    private String code;
    private Long seed;
    private Integer startIndex;
    private Integer count;
    private Integer previewChars;
}
