package com.example.backend.service.exam;

import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemExamAnnotationMapper;
import com.example.backend.models.vo.problem.ExamNoteSearchHit;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class ExamNoteSearchServiceTest {
    private final ProblemExamAnnotationMapper mapper = mock(ProblemExamAnnotationMapper.class);
    private final ExamNoteSearchService service = new ExamNoteSearchService(mapper);

    @Test
    void searchesTheOwnerWithAndTermsAndBoundedPagination() {
        var terms = List.of("汇编", "寄存器");
        var hit = new ExamNoteSearchHit();
        hit.setRecordId(660L);
        hit.setProblemId(44L);
        hit.setSnippet("  汇编\n程序可见的寄存器  ");
        when(mapper.countSearchMatches(9L, terms)).thenReturn(23L);
        when(mapper.searchMatches(9L, terms, "汇编", 10, 10)).thenReturn(List.of(hit));
        var result = service.search(9L, "  汇编　寄存器 汇编 ", 2);
        assertEquals(23, result.total());
        assertEquals(10, result.pageSize());
        assertEquals(2, result.pageNum());
        assertEquals("汇编 程序可见的寄存器", result.records().get(0).getSnippet());
        assertEquals(660L, result.records().get(0).getRecordId());
        verify(mapper).searchMatches(9L, terms, "汇编", 10, 10);
    }

    @Test
    void blankOrInvalidRequestsCannotReadAnyNotes() {
        assertThrows(BusinessException.class, () -> service.search(null, "笔记", 1));
        assertThrows(BusinessException.class, () -> service.search(9L, "笔记", 0));
        assertThrows(BusinessException.class, () -> service.search(9L, "x".repeat(81), 1));
        assertThrows(BusinessException.class, () -> service.search(9L, "a b c d e f g h i", 1));
        assertTrue(service.search(9L, "　 \n", 1).records().isEmpty());
        assertTrue(service.search(9L, "\u00a0", 1).records().isEmpty());
        verifyNoInteractions(mapper);
    }

    @Test
    void emptyAndOutOfRangePagesDoNotLoadBodies() {
        when(mapper.countSearchMatches(9L, List.of("笔记"))).thenReturn(0L, 11L);
        assertEquals(0, service.search(9L, "笔记", 1).total());
        assertTrue(service.search(9L, "笔记", 3).records().isEmpty());
        verify(mapper, never()).searchMatches(anyLong(), anyList(), anyString(), anyInt(), anyInt());
    }
}
