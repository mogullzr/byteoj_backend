package com.example.backend.models.vo.problem;

import java.util.List;

public record ExamNoteSearchPage(List<ExamNoteSearchHit> records, long total, int pageNum, int pageSize) {}
