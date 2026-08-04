package com.example.backend.models.domain.algorithm.generation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AlgorithmTestGenerationMessage implements Serializable {
    private Long jobId;
    private Integer attempt;
    private Long createdAt;
}
