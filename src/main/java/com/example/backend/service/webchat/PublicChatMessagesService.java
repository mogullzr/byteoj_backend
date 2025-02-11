package com.example.backend.service.webchat;

import com.example.backend.models.domain.webchat.PublicChatMessages;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.vo.MessageVo;

import java.util.List;

/**
* @author 89856
* @description 针对表【public_chat_messages(公共聊天室消息表)】的数据库操作Service
* @createDate 2024-07-24 23:02:24
*/
public interface PublicChatMessagesService extends IService<PublicChatMessages> {

    /**
     * 查询房间id消息列表信息
     *
     * @param room_id 房间id
     * @param PageNum 面数
     * @return 通过房间ID寻找所有消息（考虑懒加载查询方式）
     */
    List<MessageVo> WebSocketGetMessageByRoomId(Long room_id, Integer PageNum);
}