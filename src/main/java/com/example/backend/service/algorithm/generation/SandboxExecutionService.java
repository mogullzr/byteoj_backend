package com.example.backend.service.algorithm.generation;

import com.example.backend.models.domain.judge.Judge;

import java.util.List;

public interface SandboxExecutionService {
    Judge executePython(String code, String input, long cpuLimitNanos, long memoryLimitBytes);
    String build(String code, String language, String sampleInput, long cpuLimitNanos);
    List<Judge> executeCompiled(String fileId, String language, List<String> inputs, long cpuLimitNanos, long memoryLimitBytes);
    void deleteArtifact(String fileId);
}
