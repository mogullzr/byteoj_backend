//package com.example.backend.aop;
//
//import com.example.backend.common.BaseResponse;
//import com.example.backend.common.ErrorCode;
//import com.example.backend.common.ResultUtils;
//import com.example.backend.exception.BusinessException;
//import com.example.backend.mapper.LogOperationMapper;
//import com.example.backend.models.domain.log.LogOperation;
//import com.example.backend.models.domain.user.User;
//import com.example.backend.service.user.UserService;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.aspectj.lang.ProceedingJoinPoint;
//import org.aspectj.lang.annotation.Around;
//import org.aspectj.lang.annotation.Aspect;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Lazy;
//import org.springframework.stereotype.Component;
//import org.springframework.web.context.request.RequestContextHolder;
//import org.springframework.web.context.request.ServletRequestAttributes;
//
//import javax.servlet.http.HttpServletRequest;
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.Map;
//
//@Aspect
//@Component
//public class RequestResponseAspect {
//    private static final Logger logger = LoggerFactory.getLogger(RequestResponseAspect.class);
//
//    @Lazy
//    @Autowired
//    private ObjectMapper objectMapper;
//
//    @Lazy
//    @Autowired
//    private UserService userService;
//
//    @Lazy
//    @Autowired
//    private LogOperationMapper logOperationMapper;
//
//    @Around("execution(* com.example.backend.controller.*.*(..))")
//    public BaseResponse<Object> logAround(ProceedingJoinPoint joinPoint) throws Throwable {
//        HashMap<String, String> pathRelations = new HashMap<String, String>(){{
//                put("/user", "用户模块");
//                put("/search","聚合搜索模块");
//                put("/problem/algorithm","题目模块");
//                put("/posts", "帖子模块");
//                put("/ai","AI模块");
//                put("/course","课程模块");
//                put("/competition","竞赛模块");
//                put("/webSocket","聊天室模块");
//                put("/getPublicKey", "RSA模块");
//
//        }};
//        // 获取请求信息
//        HttpServletRequest request = ((ServletRequestAttributes)
//                RequestContextHolder.currentRequestAttributes()).getRequest();
//
//        long startTime = System.currentTimeMillis();
//
//        try {
//            // 记录请求基本信息
//            LogOperation logOperation = new LogOperation();
//            // 1.请求方法
//            logOperation.setType(request.getMethod());
//
//            // 2.请求地址
//            logOperation.setUrl(request.getRequestURI());
//
//            // 3.请求模块
//            String path = request.getRequestURI();
//            for (String key : pathRelations.keySet()) {
//                if (path.contains(key)) {
//                    logOperation.setModule(pathRelations.get(key));
//                }
//            }
//
//            // 4.请求参数
//            Map<String, String[]> parameter = request.getParameterMap();
//            if (!parameter.isEmpty()) {
//                logOperation.setRequest_param(parameter.toString());
//            } else {
//                logOperation.setRequest_param("{}");
//            }
//
//            // 5.返回参数
//            if (joinPoint.getArgs() != null && joinPoint.getArgs().length > 0) {
//                logOperation.setResponse_param(Arrays.toString(joinPoint.getArgs()));
//            }
//
//            // 6.状态码设定(出现在这里，必为200)
//            logOperation.setCode(200);
//
//            // 7.查看当前操作人员的信息，若无信息，则表示为游客未登录状态
//            User loginUser = userService.getLoginUser(request);
//            if (loginUser == null) {
//                logOperation.setOperator_id(-1L);
//            } else {
//                logOperation.setOperator_id(loginUser.getUuid());
//            }
//
//            // 8.操作模块的方法类信息
//            logOperation.setMethod(joinPoint.getSignature().toShortString());
//
//            // 9.获取客户端的IP地址
//            logOperation.setIp(getClientIp(request));
//
//            // 执行目标方法
//            Object result = joinPoint.proceed();
//
//            // 记录响应信息
//            long elapsedTime = System.currentTimeMillis() - startTime;
//
//            // 10.设置操作时长
//            logOperation.setOperation_time(elapsedTime);
//
//            // 11.设置响应参数
//            logOperation.setResponse_param(objectMapper.writeValueAsString(result));
//
//            // 插入操作日志当中
//            logOperationMapper.insert(logOperation);
//            return ResultUtils.success(result);
//        } catch (Exception e) {
//            throw new BusinessException(ErrorCode.SYSTEM_ERROR);
//        }
//    }
//
//    /**
//     * 获取客户端的真实IP地址
//     *
//     * @param request HTTP请求
//     * @return 客户端的真实IP地址
//     */
//    private String getClientIp(HttpServletRequest request) {
//        String ip = request.getHeader("X-Forwarded-For");
//        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//            ip = request.getHeader("Proxy-Client-IP");
//        }
//        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//            ip = request.getHeader("WL-Proxy-Client-IP");
//        }
//        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//            ip = request.getRemoteAddr();
//        }
//        // 如果通过了多级代理，X-Forwarded-For的值会是多个IP地址，第一个为真实IP地址
//        if (ip != null && ip.contains(",")) {
//            ip = ip.split(",")[0];
//        }
//        return ip;
//    }
//}