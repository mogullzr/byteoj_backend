// websocket/AdminAlertHandler.java
package com.example.backend.config.websocket;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Component
public class AdminAlertHandler extends TextWebSocketHandler {

    // key: userId (来自 Cookie), value: WebSocketSession
    private static final Map<String, WebSocketSession> USER_SESSIONS = new ConcurrentHashMap<>();

    private static final ObjectMapper objectMapper = new ObjectMapper();
    private static final DateTimeFormatter TIME_FORMAT = DateTimeFormatter.ofPattern("HH:mm:ss");

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        // 从 attributes 中获取 userId（由拦截器注入）
        String userId = (String) session.getAttributes().get("uuid");
        if (userId == null) {
            // 替换 CloseStatus.LOGIN_REQUIRED 为自定义码
            session.close(new CloseStatus(4001, "Login required"));
            return;
        }

        // 一个用户只保留最新连接
        WebSocketSession oldSession = USER_SESSIONS.put(userId, session);
        if (oldSession != null && oldSession.isOpen()) {
            oldSession.close(CloseStatus.NORMAL);
        }

        System.out.println(" 管理员上线：" + userId + " (当前在线：" + USER_SESSIONS.size() + ")");
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) {
        String closedUserId = null;
        for (Map.Entry<String, WebSocketSession> entry : USER_SESSIONS.entrySet()) {
            if (entry.getValue().getId().equals(session.getId())) {
                closedUserId = entry.getKey();
                break;
            }
        }
        if (closedUserId != null) {
            USER_SESSIONS.remove(closedUserId);
            System.out.println(" 管理员下线：" + closedUserId + " (剩余：" + USER_SESSIONS.size() + ")");
        }
    }

    public static void broadcastAlert(String clientId, String reason) {
        if (USER_SESSIONS.isEmpty()) return;

        String message = String.format(
                " 客户端掉线警报\n" +
                        "ID: %s\n" +
                        "原因：%s\n" +
                        "时间：%s",
                clientId,
                reason,
                LocalDateTime.now().format(TIME_FORMAT)
        );

        try {
            String json = objectMapper.writeValueAsString(Map.of(
                    "type", "ALERT",
                    "clientId", clientId,
                    "message", message,
                    "timestamp", System.currentTimeMillis()
            ));

            for (WebSocketSession session : USER_SESSIONS.values()) {
                if (session.isOpen()) {
                    session.sendMessage(new TextMessage(json));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
