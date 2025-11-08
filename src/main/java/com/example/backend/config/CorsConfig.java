package com.example.backend.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Mogullzr
 * @website https://mogullzr.github.io/
 */
@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Bean
    public FilterRegistrationBean<OncePerRequestFilter> securityHeadersFilterRegistration(SecurityConfig securityConfig) {
        FilterRegistrationBean<OncePerRequestFilter> registrationBean = new FilterRegistrationBean<>();
        registrationBean.setFilter(securityConfig.securityHeadersFilter());
        registrationBean.addUrlPatterns("/*"); // 应用到所有URL
        return registrationBean;
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        // 覆盖所有请求，包括WebSocket/SockJS子路径（如 /ws/judge/info）
        registry.addMapping("/**")
                // 允许发送 Cookie
                .allowCredentials(true)
                // 放行哪些域名（必须用 patterns,否则 * 与 allowCredentials 冲突）
                .allowedOriginPatterns("*")
                // 支持所有HTTP方法，包括OPTIONS预检
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS", "HEAD")
                // 允许所有请求头，包括WebSocket自定义头
                .allowedHeaders("*")
                // 暴露所有响应头，包括WebSocket心跳/认证头
                .exposedHeaders("*")
                // 新增：最大预检请求有效期（单位：秒），减少OPTIONS请求
                .maxAge(3600);
    }
}