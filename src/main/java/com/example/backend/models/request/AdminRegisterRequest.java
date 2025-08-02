package com.example.backend.models.request;

import lombok.Data;

@Data
public class AdminRegisterRequest {
    /**
     * 账户名
     */
    private String account;
    /**
     * 密码
     */
    private String password;
    /**
     * 确认密码
     */
    private String checkPassword;
    /**
     * QQ邮箱
     */
    private String email;
    /**
     * 电话
     */
    private String phone;
    /**
     * 所属学校
     */
    private String school;
}
