package com.example.backend.utils;

import org.springframework.web.client.RestTemplate;
import org.springframework.http.ResponseEntity;

public class HttpClientUtils {
    private static final RestTemplate restTemplate = new RestTemplate();

    // GET请求（返回字符串）
    public static String get(String url) {
        return restTemplate.getForObject(url, String.class);
    }

    // POST请求（示例）
    public static String post(String url, Object requestBody) {
        return restTemplate.postForObject(url, requestBody, String.class);
    }
}