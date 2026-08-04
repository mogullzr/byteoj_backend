package com.example.backend.utils;

import java.util.Set;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;

public class IpUtils {
    // 定义可信代理IP列表（如负载均衡器、内部代理）
    private static final Set<String> TRUSTED_PROXIES = Set.of("10.0.0.1", "192.168.1.1");

    // IPv4 和 IPv6 的正则表达式
    private static final Pattern IPV4_PATTERN = 
        Pattern.compile("^(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})$");
    private static final Pattern IPV6_PATTERN = 
        Pattern.compile("^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

    public static String getClientIp(HttpServletRequest request) {
        // 获取直接连接的客户端IP
        String ip = request.getRemoteAddr();

        // 如果直接连接的是可信代理，尝试解析代理头部
        if (TRUSTED_PROXIES.contains(ip)) {
            // 优先检查 X-Real-IP 头部（某些代理如 Nginx 使用）
            String xRealIp = request.getHeader("X-Real-IP");
            if (xRealIp != null && !xRealIp.isEmpty() && isValidIp(xRealIp)) {
                return xRealIp;
            }

            // 检查 X-Forwarded-For 头部
            String xff = request.getHeader("X-Forwarded-For");
            if (xff != null && !xff.isEmpty()) {
                // 分割 X-Forwarded-For，获取第一个合法的IP
                String[] ips = xff.split(",");
                for (String candidate : ips) {
                    candidate = candidate.trim();
                    if (isValidIp(candidate) && !TRUSTED_PROXIES.contains(candidate)) {
                        return candidate; // 返回第一个合法且不可信的IP
                    }
                }
            }
        }

        // 如果无法从代理头部获取有效IP，返回直接连接的IP
        return ip;
    }

    // 验证IP地址是否合法（IPv4 或 IPv6）
    private static boolean isValidIp(String ip) {
        if (ip == null || ip.isEmpty()) {
            return false;
        }
        // 检查 IPv4
        if (IPV4_PATTERN.matcher(ip).matches()) {
            try {
                String[] octets = ip.split("\\.");
                for (String octet : octets) {
                    int value = Integer.parseInt(octet);
                    if (value < 0 || value > 255) {
                        return false;
                    }
                }
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        // 检查 IPv6
        return IPV6_PATTERN.matcher(ip).matches();
    }
}