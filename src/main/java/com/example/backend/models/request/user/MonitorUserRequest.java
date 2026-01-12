package com.example.backend.models.request.user;

import cn.hutool.core.date.DateTime;
import lombok.Data;

@Data
public class MonitorUserRequest {
    /**
     * 机器码
     */
    private String client_id;
    /**
     * 断开时间
     */
    private DateTime dis_connect_time;
}
