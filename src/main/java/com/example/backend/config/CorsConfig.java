package com.example.backend.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Mogullzr
 *  @website https://mogullzr.github.io/
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
        //覆盖所有请求
        registry.addMapping("/**")
                // 允许发送 Cookie
                .allowCredentials(true)
                // 放行哪些域名（必须用 patterns,否则 * 汇合 allowCredentials 冲突）
                .allowedOriginPatterns("*").allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS").allowedHeaders("*").exposedHeaders("*");
    }
}
