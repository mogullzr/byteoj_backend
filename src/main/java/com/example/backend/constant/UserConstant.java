package com.example.backend.constant;

/**
 * 用户权限状态码
 */
public interface UserConstant {
    /**
     * 用户登录态
     */
    String USER_LOGIN_STATE = "State";
    /**
     * 默认用户权限
     */
    int DEFAULT_ROLE = 1;
    /**
     * 管理员权限
     */
    int ADMIN_ROLE = 2;
    /**
     * 封禁账户权限
     */
    int BAN_ROLE = 3;
}
