package com.example.backend.common;

import lombok.Getter;

/**
 * 报错信息集合
 *
 * @author Mogullzr
 * @website https://mogullzr.github.io/
 */
@Getter
public enum UserAuthEnum {
    SUCCESS(0, "ok"),
    PARAMS_ERROR(40000,"请求参数错误"),
    NOT_LOGIN_ERROR(40100,"未登录"),
    NOT_AUTH_ERROR(40101,"无权限"),
    NOT_FOUND_ERROR(40400,"请求数据不存在"),
    FORBIDDEN_ERROR(40300,"禁止访问"),
    SYSTEM_ERROR(50000,"系统错误"),
    OPERATION_ERROR(50001,"操作失败");
    /**
     * 状态码
     */
    private final int code;
    /**
     * 错误信息
     */
    private final String message;

    UserAuthEnum(int code,String message){
        this.code = code;
        this.message = message;
    }

}
