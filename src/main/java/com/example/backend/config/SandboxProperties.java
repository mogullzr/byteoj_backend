package com.example.backend.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

/**
 * 线上沙箱地址必须通过 profile 配置，禁止在消费者中写死地址。
 */
@Data
@Component
@ConfigurationProperties(prefix = "sandbox")
public class SandboxProperties {
    private static final int REQUIRED_SANDBOX_COUNT = 10;

    private List<String> urls = new ArrayList<>();

    @PostConstruct
    public void validate() {
        if (urls == null || urls.size() != REQUIRED_SANDBOX_COUNT) {
            throw new IllegalStateException("必须配置恰好 " + REQUIRED_SANDBOX_COUNT + " 个 sandbox.urls，当前为 "
                    + (urls == null ? 0 : urls.size()) + " 个");
        }
        for (int i = 0; i < urls.size(); i++) {
            if (urls.get(i) == null || urls.get(i).isBlank()) {
                throw new IllegalStateException("sandbox.urls[" + i + "] 不能为空");
            }
        }
    }

    public String url(int index) {
        if (index < 0 || index >= urls.size() || urls.get(index) == null || urls.get(index).isBlank()) {
            throw new IllegalStateException("沙箱 " + index + " 未配置");
        }
        return urls.get(index).replaceAll("/+$", "");
    }
}
