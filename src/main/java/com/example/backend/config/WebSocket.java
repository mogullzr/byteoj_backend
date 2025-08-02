package com.example.backend.config;


import lombok.Data;
import javax.websocket.Session;

@Data
public class WebSocket {
    /**
     * session
     */
    private Session session;
    /**
     * 账号id
     */
    private String userId;
}
