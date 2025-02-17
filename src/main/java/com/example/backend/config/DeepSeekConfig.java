package com.example.backend.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
@Getter
public class DeepSeekConfig {
    @Value("${deepseek.api.v3-1.url}")
    private String v3_1ApiUrl;

    @Value("${deepseek.api.v3-1.key}")
    private String v3_1ApiKey;

    @Value("${deepseek.api.v3-2.url}")
    private String v3_2ApiUrl;

    @Value("${deepseek.api.v3-2.key}")
    private String v3_2ApiKey;
}
