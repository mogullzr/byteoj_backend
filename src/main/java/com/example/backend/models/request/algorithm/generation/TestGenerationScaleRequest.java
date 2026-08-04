package com.example.backend.models.request.algorithm.generation;

import lombok.Data;

import java.io.Serializable;

@Data
public class TestGenerationScaleRequest implements Serializable {
    private String scale;
    private Integer count;
    private String constraints;
    private Long seed;
}
