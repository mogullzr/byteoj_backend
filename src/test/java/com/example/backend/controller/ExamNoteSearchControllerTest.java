package com.example.backend.controller;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.GlobalExceptionHandler;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.vo.problem.ExamNoteSearchPage;
import com.example.backend.service.exam.ExamNoteSearchService;
import com.example.backend.service.exam.ExamNoteSemanticSearchService;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import com.example.backend.service.user.UserService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

class ExamNoteSearchControllerTest {
    private final UserService users = mock(UserService.class);
    private final ExamNoteSearchService notes = mock(ExamNoteSearchService.class);
    private final ExamNoteSemanticSearchService semanticNotes = mock(ExamNoteSemanticSearchService.class);
    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc = standaloneSetup(new ExamNoteSearchController(users, notes, semanticNotes))
                .setControllerAdvice(new GlobalExceptionHandler()).build();
    }

    @Test
    void guestsCannotSearchOrReadPrivateNotes() throws Exception {
        mvc.perform(get("/problem/other/exam/annotations/search").param("keyword", "寄存器"))
                .andExpect(jsonPath("$.code").value(ErrorCode.NOT_LOGIN_ERROR.getCode()));
        verifyNoInteractions(notes);
    }

    @Test
    void takesTheOwnerOnlyFromTheSessionAndDisablesResponseCaching() throws Exception {
        var user = new User();
        user.setUuid(9L);
        when(users.getLoginUser(any())).thenReturn(user);
        when(notes.search(9L, "寄存器", 2)).thenReturn(new ExamNoteSearchPage(List.of(), 0, 2, 10));
        mvc.perform(get("/problem/other/exam/annotations/search")
                        .param("keyword", "寄存器").param("pageNum", "2").param("uuid", "10"))
                .andExpect(header().string("Cache-Control", "no-store"))
                .andExpect(jsonPath("$.code").value(0))
                .andExpect(jsonPath("$.data.pageNum").value(2));
        verify(notes).search(9L, "寄存器", 2);
        verifyNoMoreInteractions(notes);
    }
}
