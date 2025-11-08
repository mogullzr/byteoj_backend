package com.example.backend.models.request.AI;

import lombok.Data;

@Data
public class TenCloudNetRequest {
    /**
     * 消息内容
     */
    private String content;

    /**
     * 会话ID
     */
    private String session_id;

    /**
     * 应用密钥
     */
    private String bot_app_key;

    /**
     * 访客ID
     */
    private String visitor_biz_id;

    /**
     * 是否思考
     */
    private boolean incremental;

    /**
     * 是否可以额线上搜索
     */
    private String search_network;

    /**
     * 是否stream流式传输
     */
    private String stream;
}
