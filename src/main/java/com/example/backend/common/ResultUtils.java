package com.example.backend.common;


/**
 * 返回工具类
 *
 * @author Mogullzr
 * @website https://mogullzr.github.io/
 */
public class ResultUtils {
    /**
     * 成功
     * @param data 数据
     * @return
     * @param <T>
     */
    public static <T> BaseResponse<T> success(T data) {
        return  new BaseResponse<>(0, data, "ok");
    }

    /**
     * 失败
     * @param errorCode
     * @return
     */
    public static <T> BaseResponse<T> error(ErrorCode errorCode) {
        return new BaseResponse<>(errorCode);
    }

    /**
     * 失败
     * @param errorCode
     * @return
     */
    public static <T> BaseResponse<T> error(ErrorCode errorCode, String message) {
        return new BaseResponse<>(errorCode.getCode(), null, message);
    }

    /**
     * 失败
     * @param code 状态码
     * @param message 信息
     * @return
     * @param <T>
     */
    public static <T> BaseResponse<T> error(int code, String message) {
        return new BaseResponse<>(code, null, message);
    }
}
