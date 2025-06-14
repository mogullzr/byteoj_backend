package com.example.backend.config;

import com.aliyun.tea.interceptor.RequestInterceptor;
import com.example.backend.aop.ContentCachingFilter;
import com.example.backend.aop.OperationLogInterceptor;
import com.example.backend.interceptor.FangshuaInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {
 
    @Autowired
    private FangshuaInterceptor interceptor;

    @Autowired
    private OperationLogInterceptor operationLogInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 日志拦截器优先执行
        registry.addInterceptor(operationLogInterceptor)
                .order(Ordered.HIGHEST_PRECEDENCE)
                .addPathPatterns("/**");

        // 防刷拦截器后执行
        registry.addInterceptor(interceptor)
                .order(Ordered.HIGHEST_PRECEDENCE + 1)
                .addPathPatterns("/**");
    }

    public FilterRegistrationBean<ContentCachingFilter> contentCachingFilter() {
        FilterRegistrationBean<ContentCachingFilter> registrationBean = new FilterRegistrationBean<>();
        registrationBean.setFilter(new ContentCachingFilter());
        registrationBean.addUrlPatterns("/*");
        return registrationBean;
    }
}