//// config/WebSocketHandshakeInterceptor.java
//package com.example.backend.config.websocket;
//
//import com.example.backend.models.domain.user.User;
//import com.example.backend.service.user.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.server.ServerHttpRequest;
//import org.springframework.http.server.ServerHttpResponse;
//import org.springframework.http.server.ServletServerHttpRequest;
//import org.springframework.stereotype.Component;
//import org.springframework.web.socket.WebSocketHandler;
//import org.springframework.web.socket.server.HandshakeInterceptor;
//
//import javax.servlet.http.Cookie;
//import javax.servlet.http.HttpServletRequest;
//import java.util.Map;
//
//@Component
//public class WebSocketHandshakeInterceptor implements HandshakeInterceptor {
//
//    @Autowired
//    private UserService userService;
//
//    @Override
//    public boolean beforeHandshake(ServerHttpRequest request,
//                                   ServerHttpResponse response,
//                                   WebSocketHandler wsHandler,
//                                   Map<String, Object> attributes) throws Exception {
//
//        if (request instanceof ServletServerHttpRequest) {
//            HttpServletRequest servletRequest = ((ServletServerHttpRequest) request).getServletRequest();
//            User loginUser = userService.getLoginUser(servletRequest);
//            String userId = (loginUser != null) ? loginUser.getUuid().toString() : null;
//
//            // 【关键修改】无论是否登录，都放入 attributes，并允许握手继续
//            attributes.put("uuid", userId); // 统一 key
//            return true; // ←← 始终返回 true！
//        }
//        return false; // 非 Servlet 环境拒绝（正常不会走到这里）
//    }
//
//    @Override
//    public void afterHandshake(ServerHttpRequest request,
//                               ServerHttpResponse response,
//                               WebSocketHandler wsHandler,
//                               Exception exception) {
//        // 可用于清理资源
//    }
//}