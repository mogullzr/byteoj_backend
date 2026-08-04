package com.example.backend.exception;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

/**
 * 全局异常处理器
 *
 *  @author Mogullzr
 *  @website https://mogullzr.github.io/
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    public BaseResponse handleException(Exception ex, HttpServletRequest request) {
        // 将原始异常存入请求属性
        request.setAttribute("loggedException", ex);

        if (ex instanceof BusinessException) {
            return ResultUtils.error(((BusinessException) ex).getCode(), ex.getMessage());
        }
        return ResultUtils.error(ErrorCode.SYSTEM_ERROR);
    }
}
