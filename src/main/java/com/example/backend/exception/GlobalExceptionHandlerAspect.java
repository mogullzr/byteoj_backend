//package com.example.backend.exception;
//
//import com.example.backend.common.BaseResponse;
//import com.example.backend.common.ErrorCode;
//import com.example.backend.common.ResultUtils;
//import com.example.backend.exception.BusinessException;
//import com.example.backend.mapper.LogExceptionMapper;
//import com.example.backend.models.domain.log.LogException;
//import com.example.backend.models.domain.user.User;
//import com.example.backend.service.user.UserService;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.ResponseStatus;
//import org.springframework.web.bind.annotation.RestControllerAdvice;
//import org.springframework.web.context.request.RequestAttributes;
//import org.springframework.web.context.request.RequestContextHolder;
//import org.springframework.web.context.request.ServletRequestAttributes;
//import javax.servlet.http.HttpServletRequest;
//import org.springframework.http.HttpStatus;
//
//import java.time.Year;
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.Map;
//
//@RestControllerAdvice
//public class GlobalExceptionHandlerAspect {
//
//
//    /**
//     * 捕获 BusinessException，记录日志并返回错误信息
//     */
//    @ExceptionHandler(BusinessException.class)
//    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR) // 500
//    @ResponseBody
//    public BaseResponse handleBusinessException(BusinessException e) {
//        return ExceptionHandle(e, e.getCode());
//    }
//
//    /**
//     * 捕获其他未处理的异常（如 NullPointerException）
//     */
//    @ExceptionHandler(Exception.class)
//    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//    @ResponseBody
//    public BaseResponse handleException(Exception e) {
//        return ExceptionHandle((BusinessException) e, ErrorCode.SYSTEM_ERROR.getCode());
//    }
//
//}