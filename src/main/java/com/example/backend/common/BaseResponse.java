package com.example.backend.common;

import lombok.Data;

import java.io.Serializable;


/**
 * 通用返回类
 *
 * @param <T>
 * @author Mogullzr
 * @website https://mogullzr.github.io/
 */
@Data
public class BaseResponse<T> implements Serializable {
    /**
     * 状态码
     */
    private int code;
    /**
     * 状态信息
     */
    private String message;
    /**
     * 传递的信息
     */
    private T data;

    /**
     *
     * @param code 状态码
     * @param message 状态信息
     * @param data 传递数据
     */
    public BaseResponse(int code, T data, String message) {
        this.code = code;
        this.data = data;
        this.message = message;
    }
    public BaseResponse(int code,T data) {
        this(code,data,"");
    }

    public BaseResponse(ErrorCode errorCode) {
        this(errorCode.getCode(), null, errorCode.getMessage());
    }
}
