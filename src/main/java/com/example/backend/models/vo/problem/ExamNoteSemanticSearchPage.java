package com.example.backend.models.vo.problem;

import java.util.List;

public record ExamNoteSemanticSearchPage(List<ExamNoteSearchHit> records, long total,
                                         int pageNum, int pageSize, boolean indexing) {}
