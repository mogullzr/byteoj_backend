package com.example.backend.service.exam;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemExamAnnotationMapper;
import com.example.backend.models.vo.problem.ExamNoteSearchPage;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class ExamNoteSearchService {
    private static final int PAGE_SIZE = 10;
    private final ProblemExamAnnotationMapper annotations;

    public ExamNoteSearchService(ProblemExamAnnotationMapper annotations) {
        this.annotations = annotations;
    }

    public ExamNoteSearchPage search(Long uuid, String keyword, int pageNum) {
        if (uuid == null || uuid <= 0) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        if (pageNum < 1 || pageNum > 100000) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "页码不正确");
        }
        String query = keyword == null ? "" : keyword.strip();
        if (query.length() > 80) throw new BusinessException(ErrorCode.PARAMS_ERROR, "搜索关键词最多80个字符");
        if (query.isBlank()) return new ExamNoteSearchPage(List.of(), 0, pageNum, PAGE_SIZE);
        List<String> terms = Arrays.stream(query.split("(?U)\\s+")).filter(term -> !term.isBlank()).distinct().toList();
        if (terms.isEmpty()) return new ExamNoteSearchPage(List.of(), 0, pageNum, PAGE_SIZE);
        if (terms.size() > 8) throw new BusinessException(ErrorCode.PARAMS_ERROR, "最多使用8个关键词，请用空格分隔");
        long total = annotations.countSearchMatches(uuid, terms);
        if (total == 0 || (long) (pageNum - 1) * PAGE_SIZE >= total) {
            return new ExamNoteSearchPage(List.of(), total, pageNum, PAGE_SIZE);
        }
        var hits = annotations.searchMatches(uuid, terms, terms.get(0), (pageNum - 1) * PAGE_SIZE, PAGE_SIZE);
        for (var hit : hits) {
            if (hit.getSnippet() != null) hit.setSnippet(hit.getSnippet().replaceAll("\\s+", " ").strip());
        }
        return new ExamNoteSearchPage(hits, total, pageNum, PAGE_SIZE);
    }
}
