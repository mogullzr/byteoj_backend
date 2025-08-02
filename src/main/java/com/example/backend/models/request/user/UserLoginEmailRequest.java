package com.example.backend.models.request.user;

import lombok.Data;

import java.io.Serializable;

/**
 * 前端发送的邮箱登录请求
 */
@Data
public class UserLoginEmailRequest implements Serializable {
    private static final long serialVersionUID = -238029089267338672L;
    /**
     * 邮箱
     */
    String email;
    /**
     * 代码信息
     */
    String code;
}
