package com.example.backend.models.request.user;

import lombok.Data;

import java.io.Serializable;

/**
 * 用户注册请求体
 *
 * @author Mogullzr
 */
@Data
public class UserRegisterRequest implements Serializable {
    private static final long serialVersionUID = -8976824664338291770L;
    /**
     * 账户
     */
    private String Account;
    /**
     * 邮箱
     */
    private String Email;
    /**
     * 验证码
     */
    private String ConfirmNumber;
    /**
     * 密码
     */
    private String Password;
    /**
     * 再次确认密码
     */
    private String CheckPassword;
}
