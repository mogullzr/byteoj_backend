package com.example.backend.models.request.user;

import lombok.Data;

import java.io.Serializable;

/**
 * 用户登录请求体
 *
 * @author Mogullzr
 */
@Data
public class UserLoginRequest implements Serializable {
    private static final long serialVersionUID = -5625101287298624458L;
    private String Account;
    private String Password;
    private String Token;
}
