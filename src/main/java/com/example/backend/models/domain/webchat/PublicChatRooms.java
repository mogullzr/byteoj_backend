package com.example.backend.models.domain.webchat;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 公共聊天室表
 * @TableName public_chat_rooms
 */
@TableName(value ="public_chat_rooms")
@Data
public class PublicChatRooms implements Serializable {
    /**
     * 房间号
     */
    @TableId(type = IdType.AUTO)
    private Long room_id;

    /**
     * 房间名称
     */
    private String room_name;

    /**
     * 描述
     */
    private String description;

    /**
     * 聊天室的人數
     */
    private Long online_num;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}