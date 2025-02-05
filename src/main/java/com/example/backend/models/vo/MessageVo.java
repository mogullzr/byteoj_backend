package com.example.backend.models.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class MessageVo {
    private Long message_id;

    /**
     * 聊天室ID,0表示为私人聊天
     */
    private Long room_id;

    /**
     * 聊天名称
     */
    private String room_name;

    /**
     * 用户名称
     */
    private String username;

    /**
     * 用户ID,-1表示未登录
     */
    private Long uuid;

    /**
     * 头像地址
     */
    private String avatar;

    /**
     * 消息内容
     */
    private String message_content;

    /**
     * 发送时间
     */
    private Date create_time;

    /**
     * 发送给的用户id,0表示公开发送
     */
    private Long to_uuid;

    /**
     * 在线人数
     */
    private Long online_num;

    /**
     * 用户列表
     */
    private List<String> user_list;
}
