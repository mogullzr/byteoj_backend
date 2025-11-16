package com.example.backend;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableAspectJAutoProxy
@EnableScheduling
@EnableAsync(proxyTargetClass = true)
@EntityScan(basePackages = "com.example.backend.models.domain")
@EnableJpaRepositories(basePackages = "com.example.backend.service.source.trie.reposity")
@MapperScan("com.example.backend.mapper")
public class BackendApplication {
    public static void main(String[] args) {
        ConfigurableApplicationContext ctx = SpringApplication.run(BackendApplication.class, args);
    }
}
