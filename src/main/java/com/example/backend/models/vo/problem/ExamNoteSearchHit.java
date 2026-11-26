package com.example.backend.models.vo.problem;

import lombok.Data;

import java.util.Date;

/** A bounded search excerpt and the identifiers needed to open its original private sheet. */
@Data
public class ExamNoteSearchHit {
    private Long noteId;
    private Long recordId;
    private Long examId;
    private String examName;
    private Long problemId;
    private Integer questionNumber;
    private Date noteUpdatedAt;
    private String snippet;
}
