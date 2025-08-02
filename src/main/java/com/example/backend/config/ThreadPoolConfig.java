//package com.example.backend.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.LinkedBlockingQueue;
//import java.util.concurrent.ThreadPoolExecutor;
//import java.util.concurrent.TimeUnit;
//
//@Configuration
//public class ThreadPoolConfig {
//
//    @Bean("logExecutor")
//    public ExecutorService logExecutor() {
//        return new ThreadPoolExecutor(
//            5, // 核心线程数
//            10, // 最大线程数
//            60L, // 空闲线程存活时间
//            TimeUnit.SECONDS,
//            new LinkedBlockingQueue<>(1000), // 任务队列
//            new ThreadPoolExecutor.CallerRunsPolicy() // 拒绝策略
//        );
//    }
//}