package com.example.backend.controller;

import com.example.backend.aop.ContentCachingFilter;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.GlobalExceptionHandler;
import com.example.backend.models.domain.user.User;
import com.example.backend.service.ai.AiSourceService;
import com.example.backend.service.user.UserService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.web.servlet.MockMvc;

import java.nio.charset.StandardCharsets;

import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

class AiSourcesControllerTest {
    private final AiSourceService sources = mock(AiSourceService.class);
    private final UserService users = mock(UserService.class);
    private MockMvc mvc;
    private User admin;

    @BeforeEach
    void setUp() {
        mvc = standaloneSetup(new AiSourcesController(sources, users))
                .setControllerAdvice(new GlobalExceptionHandler()).addFilters(new ContentCachingFilter()).build();
        admin = new User();
        admin.setUuid(42L);
    }

    @Test
    void optionsRequireLoginAndManagementRequiresAdmin() throws Exception {
        mvc.perform(get("/ai/sources/options").param("feature", "CHAT"))
                .andExpect(jsonPath("$.code").value(ErrorCode.NOT_LOGIN_ERROR.getCode()));
        when(users.getLoginUser(any())).thenReturn(admin);
        mvc.perform(get("/ai/sources/admin"))
                .andExpect(jsonPath("$.code").value(ErrorCode.NOT_AUTH_ERROR.getCode()));
        verifyNoInteractions(sources);
    }

    @Test
    void adminKeyRotationRequiresSameOriginAndWriteHeader() throws Exception {
        when(users.getLoginUser(any())).thenReturn(admin);
        when(users.isAdmin(admin)).thenReturn(true);
        mvc.perform(put("/ai/sources/admin/keys/siliconflow").contentType("application/octet-stream")
                        .content("test-only-key"))
                .andExpect(jsonPath("$.code").value(ErrorCode.NOT_AUTH_ERROR.getCode()));
        mvc.perform(put("/ai/sources/admin/keys/siliconflow").contentType("application/octet-stream")
                        .header("X-ByteOJ-AI-Admin", "1")
                        .header("Origin", "https://attacker.test").header("Sec-Fetch-Site", "cross-site")
                        .content("test-only-key"))
                .andExpect(jsonPath("$.code").value(ErrorCode.NOT_AUTH_ERROR.getCode()));
        verifyNoInteractions(sources);
    }

    @Test
    void authorizedRawKeyRotationDoesNotCacheOrEchoRequestBody() throws Exception {
        when(users.getLoginUser(any())).thenReturn(admin);
        when(users.isAdmin(admin)).thenReturn(true);
        var result = mvc.perform(put("/api/ai/sources/admin/keys/siliconflow").contextPath("/api")
                        .servletPath("/ai/sources/admin/keys/siliconflow")
                        .header("X-ByteOJ-AI-Admin", "1").header("Sec-Fetch-Site", "same-origin")
                        .contentType("application/octet-stream").content("test-only-key".getBytes(StandardCharsets.UTF_8)))
                .andExpect(jsonPath("$.code").value(0)).andReturn();
        org.junit.jupiter.api.Assertions.assertFalse(result.getResponse().getContentAsString().contains("test-only-key"));
        verify(sources).rotateKey("siliconflow", "test-only-key", 42L);
    }

    @Test
    void oversizeSecretsAreRejectedBeforePersistence() throws Exception {
        when(users.getLoginUser(any())).thenReturn(admin);
        when(users.isAdmin(admin)).thenReturn(true);
        mvc.perform(put("/ai/sources/admin/keys/siliconflow").contentType("application/octet-stream")
                        .header("X-ByteOJ-AI-Admin", "1").content("x".repeat(513)))
                .andExpect(jsonPath("$.code").value(ErrorCode.PARAMS_ERROR.getCode()));
        verifyNoInteractions(sources);
    }
}
