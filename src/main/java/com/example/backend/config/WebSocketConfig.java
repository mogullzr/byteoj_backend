package com.example.backend.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.converter.MappingJackson2MessageConverter;
import org.springframework.messaging.converter.MessageConverter;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.web.socket.config.annotation.*;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;
import org.springframework.web.socket.server.support.DefaultHandshakeHandler;

import java.text.SimpleDateFormat;
import java.util.List;

/**
 * WebSocket 配置
 * 优化：
 * 1. 增加连接数限制和缓冲区配置
 * 2. 添加消息转换器配置
 * 3. 配置心跳和任务调度器
 * 4. 支持100人同时连接
 */
@Configuration
@EnableWebSocketMessageBroker
//WebSocketConfigurer
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
//    private final AdminAlertHandler adminAlertHandler;
//    private final WebSocketHandshakeInterceptor handshakeInterceptor;
//
//    public WebSocketConfig(AdminAlertHandler adminAlertHandler,
//                           WebSocketHandshakeInterceptor handshakeInterceptor) {
//        this.adminAlertHandler = adminAlertHandler;
//        this.handshakeInterceptor = handshakeInterceptor;
//    }
//    /**
//     * 注入ServerEndpointExporter，
//     * 这个bean会自动注册使用了@ServerEndpoint注解声明的Websocket endpoint
//     */
//    @Override
//    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
//        registry.addHandler(adminAlertHandler, "/ws/alerts")
//                .addInterceptors(handshakeInterceptor) // ←← 关键：添加拦截器
//                .setAllowedOriginPatterns("*"); // ←← 用 Patterns
//    }
    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        return new ServerEndpointExporter();
    }

    /**
     * 任务调度器：用于心跳检测
     * 配置足够的线程池大小以支持100个并发连接
     * 使用不同的Bean名称避免冲突
     */
    @Bean
    public ThreadPoolTaskScheduler heartbeatScheduler() {
        ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();
        scheduler.setPoolSize(20);  // 支持100+连接的心跳
        scheduler.setThreadNamePrefix("ws-heartbeat-");
        scheduler.initialize();
        return scheduler;
    }

    @Override
    public void configureMessageBroker(MessageBrokerRegistry config) {
        // 配置简单消息代理，支持 /topic（广播） 和 /user（点对点）
        config.enableSimpleBroker("/topic", "/user")
                .setHeartbeatValue(new long[]{20000, 20000})  // 客户端/服务端心跳间隔：20秒
                .setTaskScheduler(heartbeatScheduler());  // 使用自定义调度器
        
        config.setApplicationDestinationPrefixes("/app");  // 应用消息前缀
        config.setUserDestinationPrefix("/user");  // 用户消息前缀
    }

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/ws/judge")  // WebSocket 连接端点
                .setAllowedOriginPatterns("*")  // 跨域支持（生产环境建议配置具体域名）
                .setHandshakeHandler(new DefaultHandshakeHandler())
                .withSockJS()  // 启用 SockJS 降级支持
                .setHeartbeatTime(20000)  // SockJS 心跳：20秒
                .setDisconnectDelay(5000)  // 断线延迟：5秒
                .setStreamBytesLimit(512 * 1024)  // 流字节限制：512KB
                .setHttpMessageCacheSize(1000)  // HTTP 消息缓存大小
                .setSessionCookieNeeded(false);  // 不需要 session cookie
    }

    /**
     * 配置 WebSocket 传输层
     * 优化消息大小、缓冲区和超时设置
     */
    @Override
    public void configureWebSocketTransport(WebSocketTransportRegistration registration) {
        registration.setMessageSizeLimit(256 * 1024);  // 单条消息最大：256KB
        registration.setSendTimeLimit(20 * 1000);  // 发送超时：20秒
        registration.setSendBufferSizeLimit(1024 * 1024);  // 发送缓冲区：1MB
        registration.setTimeToFirstMessage(30 * 1000);  // 首条消息超时：30秒
    }

    /**
     * 配置消息转换器
     * 使用 Jackson 进行 JSON 序列化/反序列化
     */
    @Override
    public boolean configureMessageConverters(List<MessageConverter> messageConverters) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        
        MappingJackson2MessageConverter converter = new MappingJackson2MessageConverter();
        converter.setObjectMapper(objectMapper);
        
        messageConverters.add(converter);
        return false;  // 返回 false 保留默认转换器
    }
}