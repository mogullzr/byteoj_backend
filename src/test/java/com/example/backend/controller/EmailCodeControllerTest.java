package com.example.backend.controller;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.GlobalExceptionHandler;
import com.example.backend.utils.EmailSendUtil;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.util.ReflectionTestUtils;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

class EmailCodeControllerTest {
    private final EmailSendUtil emails = mock(EmailSendUtil.class);
    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        UserController controller = new UserController();
        ReflectionTestUtils.setField(controller, "emailSendUtils", emails);
        mvc = standaloneSetup(controller).setControllerAdvice(new GlobalExceptionHandler()).build();
    }

    @Test
    void deliveryOrStorageFailureMustNotLookLikeSuccessfulSend() throws Exception {
        when(emails.sendVerificationEmail("12345@qq.com")).thenReturn(false);
        mvc.perform(post("/user/email/send").param("receiveEmail", "12345@qq.com"))
                .andExpect(jsonPath("$.code").value(ErrorCode.SYSTEM_ERROR.getCode()))
                .andExpect(jsonPath("$.message").value("验证码发送或保存失败，请稍后重试"));
    }

    @Test
    void successfulSendReturnsTrue() throws Exception {
        when(emails.sendVerificationEmail("12345@qq.com")).thenReturn(true);
        mvc.perform(post("/user/email/send").param("receiveEmail", "12345@qq.com"))
                .andExpect(jsonPath("$.code").value(0))
                .andExpect(jsonPath("$.data").value(true));
    }
}
