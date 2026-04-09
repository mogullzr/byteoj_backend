package com.example.backend.aop;

import cn.hutool.json.JSONUtil;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.instant.IpRegionSearcher;
import com.example.backend.mapper.LogExceptionMapper;
import com.example.backend.mapper.LogOperationMapper;
import com.example.backend.models.domain.log.LogException;
import com.example.backend.models.domain.log.LogOperation;
import com.example.backend.models.domain.user.User;
import com.example.backend.service.user.UserService;
import com.example.backend.utils.IpUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.ContentCachingRequestWrapper;
import org.springframework.web.util.ContentCachingResponseWrapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.*;
import java.util.stream.Collectors;

@Component
public class OperationLogInterceptor implements HandlerInterceptor {
    private static final Logger logger = LoggerFactory.getLogger(OperationLogInterceptor.class);

    @Autowired
    private IpRegionSearcher ipRegionSearcher;
    @Autowired
    private UserService userService;
    @Autowired
    private LogOperationMapper logOperationMapper;
    @Autowired
    private LogExceptionMapper logExceptionMapper;
    @Autowired
    private ObjectMapper objectMapper;

    private static final HashMap<String, String> MODULE_MAPPING = new HashMap<String, String>() {{
        put("/user", "用户模块");
        put("/search", "聚合搜索模块");
        put("/problem/algorithm", "题目模块");
        put("/posts", "帖子模块");
        put("/ai", "AI模块");
        put("/course", "课程模块");
        put("/competition", "竞赛模块");
        put("/webSocket", "聊天室模块");
        put("/getPublicKey", "RSA模块");
        put("/log", "日志模块");
        put("/RBAC", "RBAC权限管理模块");
        put("/lantu", "蓝兔支付模块");
    }};
    // 浏览器类型映射 - 改进版
    private static final Map<String, String> BROWSER_MAPPING = new LinkedHashMap<>() {{
        // 360浏览器检测优先级最高
        put("360se", "360安全浏览器");
        put("360ee", "360极速浏览器");
        put("360 aphone", "360手机浏览器");
        put("360browser", "360浏览器");
        put("qihu", "360浏览器");
        put("qihoo", "360浏览器");

        // Edge浏览器
        put("edg/", "Edge");  // 新版Edge
        put("edge/", "Edge"); // 旧版Edge
        put("edga", "Edge");  // Edge Android
        put("edgios", "Edge iOS");

        // Chrome浏览器
        put("chrome/", "Chrome");
        put("crios", "Chrome iOS");
        put("chromium", "Chromium");

        // 其他浏览器
        put("msie", "IE");
        put("trident", "IE");
        put("firefox", "Firefox");
        put("fxios", "Firefox iOS");
        put("safari", "Safari");
        put("opera", "Opera");
        put("opr", "Opera");
        put("vivaldi", "Vivaldi");
    }};

    // 操作系统映射
    private static final Map<String, String> OS_MAPPING = new HashMap<>() {{
        put("windows", "Windows");
        put("win", "Windows");
        put("mac", "macOS");
        put("macintosh", "macOS");
        put("linux", "Linux");
        put("android", "Android");
        put("iphone", "iOS");
        put("ipad", "iOS");
    }};

    // 过滤接口
    private static final HashMap<String, Boolean> FILTER_PATTERNS  = new LinkedHashMap<String, Boolean>() {{
        put("/api/user/current", true);  // 完全过滤
        put("/api/user/picture/user/get/", true);
        put("/api/user/picture/user/get", true);
        put("/api/heartbeat", true);
    }};

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        // 跳过OPTIONS预检请求
        if ("OPTIONS".equalsIgnoreCase(request.getMethod())) {
            return true; // 直接放行，不记录日志
        }

        // 检查是否需要过滤当前请求
        String requestURI = request.getRequestURI();
        if (shouldFilter(requestURI)) {
            return true; // 直接放行，不记录日志
        }

        // 1. 记录开始时间
        request.setAttribute("startTime", System.currentTimeMillis());

        // 2. 包装请求以支持多次读取body（如需记录请求体）
        if (request instanceof ContentCachingRequestWrapper) {
            return true;
        }
        return true;
    }

    /**
     * 是否需要进行接口过滤
     *
     * @param requestURI 请求URI
     * @return 是否需要过滤
     */
    private boolean shouldFilter(String requestURI) {
        for (Map.Entry<String, Boolean> entry : FILTER_PATTERNS.entrySet()) {
            String pattern = entry.getKey();
            // 简单通配符匹配
            if (pattern.endsWith("/*")) {
                String prefix = pattern.substring(0, pattern.length() - 1);
                if (requestURI.startsWith(prefix)) {
                    return true;
                }
            } else if (requestURI.equals(pattern)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
                                Object handler, Exception ex) {
        // 跳过OPTIONS请求
        if ("OPTIONS".equalsIgnoreCase(request.getMethod())) {
            return;
        }
        
        // 🔥 跳过 WebSocket 相关请求（避免记录不必要的日志）
        String requestUri = request.getRequestURI();
        if (requestUri != null && (requestUri.contains("/ws/") || requestUri.contains("/sockjs/"))) {
            return;
        }
        
        try {
            // 0.异常信息
            Exception finalEx = Optional.ofNullable(ex)
                    .or(() -> Optional.ofNullable((Exception) request.getAttribute("loggedException")))
                    .orElse(null);

            if (request.getAttribute("startTime") == null) {
                return;
            }

            // 1. 计算耗时
            long startTime = (Long) request.getAttribute("startTime");
            long elapsedTime = System.currentTimeMillis() - startTime;


            // 2. 构建日志实体
            LogOperation logOperation = new LogOperation();
            LogException logException = new LogException();

            // 3. 记录基础信息
            logOperation.setType(request.getMethod());
            logOperation.setUrl(request.getRequestURI());
            logOperation.setOperation_time(elapsedTime);
            logOperation.setCode(20000); // 默认值

            logException.setType(request.getMethod());
            logException.setUrl(request.getRequestURI());
            logException.setOperation_time(elapsedTime);
            // 4. 设置模块分类
            MODULE_MAPPING.forEach((path, module) -> {
                if (request.getRequestURI().contains(path)) {
                    logOperation.setModule(module);
                    logException.setModule(module);
                }
            });
            
            // 🔥 如果 module 为空，设置默认值，避免数据库报错
            if (logOperation.getModule() == null || logOperation.getModule().isEmpty()) {
                logOperation.setModule("other");
            }
            if (logException.getModule() == null || logException.getModule().isEmpty()) {
                logException.setModule("other");
            }

            logOperation.setMethod("");

            // 5. 记录用户信息
            User loginUser = userService.getLoginUser(request);
            Long uuid = loginUser != null ? loginUser.getUuid() : -1L;
            logOperation.setOperator_id(uuid);
            logException.setOperator_id(uuid);

            // 6. 记录IP地址 + 位置
//            String ip = IpUtils.getClientIp(request);
            String ip = getClientIp(request);
            String location = ipRegionSearcher.searchFormatted(ip);
            logOperation.setIp(ip + " - " + location);
            logException.setIp(ip + " - " + location);


            // 8. 记录请求参数（GET和POST）
            String params = getRequestParams(request, request.getMethod());
            if (params==null || params.isEmpty()) {
                logOperation.setRequest_param("{}");
                logException.setRequest_param("{}");
            } else {
                logOperation.setRequest_param(params);
                logException.setRequest_param(params);
            }

            // 9. 记录浏览器
            String userAgent = request.getHeader("User-Agent");
            if (userAgent != null) {
                String browser = detectBrowser(userAgent);
                String os = detectOS(userAgent);
                logOperation.setBrowser(browser != null ? browser : "未知浏览器");
                logOperation.setOs(os != null ? os : "未知操作系统");
                logException.setBrowser(browser != null ? browser : "未知浏览器");
                logException.setOs(os != null ? os : "未知操作系统");
            } else {
                logOperation.setBrowser("未知");
                logOperation.setOs("未知");
                logException.setBrowser("未知");
                logException.setOs("未知");
            }

            // 10. 记录响应数据（需包装Response）
            if (response instanceof ContentCachingResponseWrapper) {
                byte[] responseBody = ((ContentCachingResponseWrapper) response).getContentAsByteArray();
                if (responseBody.length > 0) {
                    String responseStr = new String(responseBody, response.getCharacterEncoding());
                    try {
                        // 解析为BaseResponse对象
                        BaseResponse<?> baseResponse = JSONUtil.toBean(responseStr, BaseResponse.class);
                        logOperation.setResponse_param(responseStr);  // 存完整 JSON

                        // 关键修改：仅在成功时记录日志（code == 0）
                        if (baseResponse.getCode() == 0) {
                            // 9.1 插入日志（仅成功时记录）
                            logOperation.setCode(0);
                            logOperationMapper.insert(logOperation);
                        } else {
                            Integer code = baseResponse.getCode();
                            // 9.2 插入异常日志
                            StackTraceElement firstStackTrace = finalEx.getStackTrace()[0];
                            logException.setMethod(firstStackTrace.getClassName() + "." + firstStackTrace.getMethodName() + ".");
                            logException.setCode(baseResponse.getCode());

                            if (code.equals(ErrorCode.PARAMS_ERROR.getCode())
                                    || code.equals(ErrorCode.SYSTEM_ERROR.getCode())
                                    || code.equals(ErrorCode.NOT_AUTH_ERROR.getCode())) {
                                location = ipRegionSearcher.searchInfoFromBaidu(ip);
                                logException.setIp(ip + " - " + location);
                            }
                            logException.setError_message(ExceptionUtils.getStackTrace(finalEx));
                            logExceptionMapper.insert(logException);
                        }
                    } catch (Exception e) {
                        logOperation.setResponse_param(
                                JSONUtil.isJson(responseStr) ? responseStr : JSONUtil.toJsonStr(responseStr)
                        );
                        // 非标准响应格式也记录日志（可选）
                        logExceptionMapper.insert(logException);
                    }
                } else {
                    logOperation.setResponse_param("{}");
                    logException.setCode(0);
                    // 空响应也记录日志（可选）
                    logOperationMapper.insert(logOperation);
                }
            }
        } catch (Exception e) {
            logger.error("记录操作日志失败", e);
        }
    }
    /**
     * 改进的浏览器检测方法
     * @param userAgent User-Agent字符串
     * @return 浏览器名称
     */
    private String detectBrowser(String userAgent) {
        if (userAgent == null || userAgent.isEmpty()) {
            return "未知浏览器";
        }

        String ua = userAgent.toLowerCase();

        // 1. 先检测360浏览器（有多个特征）
        if (ua.contains("360se")) {
            return "360安全浏览器";
        }
        if (ua.contains("360ee")) {
            return "360极速浏览器";
        }
        if (ua.contains("360 aphone") || ua.contains("360browser") ||
                ua.contains("qihu") || ua.contains("qihoo")) {
            return "360浏览器";
        }

        // 2. 检测Edge浏览器（新版和旧版）
        if (ua.contains("edg/") || ua.contains("edge/") ||
                ua.contains("edga") || ua.contains("edgios")) {
            return "Edge";
        }

        // 3. 检测Chrome浏览器（排除Edge）
        if (ua.contains("chrome/") && !ua.contains("edg/") && !ua.contains("edge/")) {
            return "Chrome";
        }

        // 4. 检测其他浏览器
        for (Map.Entry<String, String> entry : BROWSER_MAPPING.entrySet()) {
            if (ua.contains(entry.getKey())) {
                return entry.getValue();
            }
        }

        // 5. 检测移动端浏览器
        if (ua.contains("mobile")) {
            if (ua.contains("android")) {
                return "Android浏览器";
            }
            if (ua.contains("iphone") || ua.contains("ipad")) {
                return "iOS浏览器";
            }
        }

        return "未知浏览器";
    }

    /**
     * 改进的操作系统检测方法
     * @param userAgent User-Agent字符串
     * @return 操作系统名称
     */
    private String detectOS(String userAgent) {
        if (userAgent == null || userAgent.isEmpty()) {
            return "未知操作系统";
        }

        String ua = userAgent.toLowerCase();

        // Windows版本检测
        if (ua.contains("windows nt 10.0")) {
            return "Windows 10/11";
        }
        if (ua.contains("windows nt 6.3")) {
            return "Windows 8.1";
        }
        if (ua.contains("windows nt 6.2")) {
            return "Windows 8";
        }
        if (ua.contains("windows nt 6.1")) {
            return "Windows 7";
        }
        if (ua.contains("windows nt 6.0")) {
            return "Windows Vista";
        }
        if (ua.contains("windows nt 5.1")) {
            return "Windows XP";
        }
        if (ua.contains("windows")) {
            return "Windows";
        }

        // Mac OS检测
        if (ua.contains("mac os x") || ua.contains("macintosh")) {
            return "macOS";
        }

        // Linux检测
        if (ua.contains("linux")) {
            return "Linux";
        }

        // Android检测
        if (ua.contains("android")) {
            return "Android";
        }

        // iOS检测
        if (ua.contains("iphone") || ua.contains("ipad")) {
            return "iOS";
        }

        // 其他检测
        for (Map.Entry<String, String> entry : OS_MAPPING.entrySet()) {
            if (ua.contains(entry.getKey())) {
                return entry.getValue();
            }
        }

        return "未知操作系统";
    }

    private String getClientIp(HttpServletRequest request) {
        // 保持原有IP获取逻辑
        String ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip != null ? ip.split(",")[0] : "";
    }

    private String getRequestParams(HttpServletRequest request, String type) {
        try {
            // 统一使用Map存储参数
            Map<String, Object> paramsMap = new LinkedHashMap<>();

            // 处理GET参数
            String queryString = request.getQueryString();
            if (queryString != null && queryString.isEmpty()) {
                Map<String, String> getParams = Arrays.stream(queryString.split("&"))
                        .map(p -> p.split("=", 2))
                        .collect(Collectors.toMap(
                                arr -> {
                                    try {
                                        return URLDecoder.decode(arr[0], StandardCharsets.UTF_8.name());
                                    } catch (UnsupportedEncodingException e) {
                                        throw new RuntimeException(e);
                                    }
                                },
                                arr -> {
                                    try {
                                        return arr.length > 1 ? URLDecoder.decode(arr[1], StandardCharsets.UTF_8.name()) : "";
                                    } catch (UnsupportedEncodingException e) {
                                        throw new RuntimeException(e);
                                    }
                                },
                                (v1, v2) -> v1,
                                LinkedHashMap::new
                        ));
                paramsMap.put(type, getParams);
            }
            // 处理POST参数
            else if ("POST".equalsIgnoreCase(type)) {
                String contentType = request.getContentType();
                if (contentType != null) {
                    if (contentType.contains("application/json")) {
                        if (request instanceof ContentCachingRequestWrapper) {
                            byte[] body = ((ContentCachingRequestWrapper) request).getContentAsByteArray();
                            if (body.length > 0) {
                                String jsonBody = new String(body, StandardCharsets.UTF_8);
                                paramsMap.put("POST", JSONUtil.parseObj(jsonBody));
                            }
                        }
                    } else if (contentType.contains("application/x-www-form-urlencoded")) {
                        Map<String, String[]> formParams = request.getParameterMap();
                        if (!formParams.isEmpty()) {
                            Map<String, Object> postParams = formParams.entrySet().stream()
                                    .collect(Collectors.toMap(
                                            Map.Entry::getKey,
                                            e -> e.getValue().length == 1 ? e.getValue()[0] : e.getValue(),
                                            (v1, v2) -> v1,
                                            LinkedHashMap::new
                                    ));
                            paramsMap.put("POST", postParams);
                        }
                    }
                }
            }

            // 转换为格式化的JSON字符串
            return JSONUtil.toJsonPrettyStr(paramsMap);

        } catch (Exception e) {
            logger.warn("参数格式化失败", e);
            return "参数解析错误: " + e.getMessage();
        }
    }
}