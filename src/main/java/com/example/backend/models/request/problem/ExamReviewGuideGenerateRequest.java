package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

/** Requests a personal review-guide draft for one submitted answer sheet. */
@Data
public class ExamReviewGuideGenerateRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long record_id;
    private String ai_model;
}
