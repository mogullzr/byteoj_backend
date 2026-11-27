package com.example.backend.service.exam;

import com.example.backend.mapper.ProblemExamAnnotationMapper;
import com.example.backend.models.vo.problem.ExamNoteSearchHit;
import com.example.backend.models.vo.problem.ExamNoteVectorCandidate;
import com.example.backend.utils.EmbeddingConvertUtil;
import org.junit.jupiter.api.Test;
import org.postgresql.util.PGobject;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

class ExamNoteSemanticSearchServiceTest {
    private final EmbeddingConvertUtil embeddings = mock(EmbeddingConvertUtil.class);
    private final ExamNoteVectorRepository vectors = mock(ExamNoteVectorRepository.class);
    private final ProblemExamAnnotationMapper annotations = mock(ProblemExamAnnotationMapper.class);
    private final ThreadPoolTaskExecutor executor = mock(ThreadPoolTaskExecutor.class);
    private final ExamNoteSemanticSearchService service =
            new ExamNoteSemanticSearchService(embeddings, vectors, annotations, executor);

    @Test
    void semanticResultsAreOwnerScopedValidatedAgainstCurrentTextAndBounded() throws Exception {
        var queryVector = new PGobject();
        queryVector.setType("vector");
        queryVector.setValue("[0.1,0.2]");
        when(embeddings.getEmbeddingModel()).thenReturn("text-embedding-v4");
        when(embeddings.getEmebddingInfo("text-embedding-v4", "汇编寄存器是否可见")).thenReturn(queryVector);
        String current = "汇编程序员可见寄存器包括通用寄存器和 PC";
        when(vectors.search(9L, queryVector, 60)).thenReturn(List.of(
                new ExamNoteVectorCandidate(10L, 0.82, ExamNoteSemanticSearchService.sha256(current)),
                new ExamNoteVectorCandidate(11L, 0.8, "old-content-hash"),
                new ExamNoteVectorCandidate(12L, 0.2, ExamNoteSemanticSearchService.sha256(current))));
        var hit = new ExamNoteSearchHit();
        hit.setNoteId(10L);
        hit.setFullAnnotation(current);
        when(annotations.searchMatchesByIds(9L, List.of(10L, 11L, 12L))).thenReturn(List.of(hit));

        var results = service.search(9L, "汇编寄存器是否可见");

        assertEquals(1, results.size());
        assertEquals(10L, results.get(0).getNoteId());
        assertEquals(current, results.get(0).getSnippet());
        assertEquals(0.82, results.get(0).getSimilarity());
        verify(vectors).search(9L, queryVector, 60);
        verify(annotations).searchMatchesByIds(9L, List.of(10L, 11L, 12L));
    }

    @Test
    void rejectsBlankQueriesBeforeCallingEmbeddingProvider() {
        assertThrows(RuntimeException.class, () -> service.search(9L, "  "));
        verifyNoInteractions(embeddings, vectors, annotations);
    }

    @Test
    void semanticSearchCapsTheMergedResultSetAtThirty() throws Exception {
        var queryVector = new PGobject();
        queryVector.setType("vector");
        queryVector.setValue("[0.1,0.2]");
        when(embeddings.getEmbeddingModel()).thenReturn("text-embedding-v4");
        when(embeddings.getEmebddingInfo("text-embedding-v4", "寄存器")).thenReturn(queryVector);
        String content = "汇编程序员可见寄存器";
        List<ExamNoteVectorCandidate> candidates = new java.util.ArrayList<>();
        List<ExamNoteSearchHit> hits = new java.util.ArrayList<>();
        for (long id = 1; id <= 45; id++) {
            candidates.add(new ExamNoteVectorCandidate(id, 0.8, ExamNoteSemanticSearchService.sha256(content)));
            var hit = new ExamNoteSearchHit();
            hit.setNoteId(id);
            hit.setFullAnnotation(content);
            hits.add(hit);
        }
        when(vectors.search(9L, queryVector, 60)).thenReturn(candidates);
        when(annotations.searchMatchesByIds(eq(9L), anyList())).thenReturn(hits);
        when(annotations.searchMatches(eq(9L), anyList(), eq("寄存器"), eq(0), eq(60))).thenReturn(List.of());

        var page = service.searchPage(9L, "寄存器", 1);

        assertEquals(30, page.total());
        assertEquals(10, page.records().size());
    }
}
