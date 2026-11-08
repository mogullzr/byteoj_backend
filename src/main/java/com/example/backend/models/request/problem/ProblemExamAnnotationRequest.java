package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamAnnotationRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long record_id;

    private Long problem_id;

    private String annotation;
}
