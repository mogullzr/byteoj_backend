package com.example.backend.models.domain.webchat;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 公共聊天室消息表
 * @TableName public_chat_messages
 */
@TableName(value ="public_chat_messages")
@Data
public class PublicChatMessages implements Serializable {
    /**
     * 消息ID
     */
    @TableId(type = IdType.AUTO)
    private Long message_id;

    /**
     * 聊天室ID,0表示为私人聊天
     */
    private Long room_id;

    /**
     * 用户ID
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

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}