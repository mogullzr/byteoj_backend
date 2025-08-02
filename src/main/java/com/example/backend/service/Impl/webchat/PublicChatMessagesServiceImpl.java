package com.example.backend.service.Impl.webchat;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.PublicChatRoomsMapper;
import com.example.backend.mapper.UserMapper;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.domain.webchat.PublicChatMessages;
import com.example.backend.models.domain.webchat.PublicChatRooms;
import com.example.backend.models.vo.MessageVo;
import com.example.backend.service.webchat.PublicChatMessagesService;
import com.example.backend.mapper.PublicChatMessagesMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
* @author 89856
* @description 针对表【public_chat_messages(公共聊天室消息表)】的数据库操作Service实现
* @createDate 2024-07-24 23:02:24
*/
@Service
public class PublicChatMessagesServiceImpl extends ServiceImpl<PublicChatMessagesMapper, PublicChatMessages>
    implements PublicChatMessagesService{

    @Resource
    private PublicChatMessagesMapper publicChatMessagesMapper;

    @Resource
    private PublicChatRoomsMapper publicChatRoomsMapper;

    @Resource
    private UserMapper userMapper;
    @Override
    public List<MessageVo> WebSocketGetMessageByRoomId(Long room_id, Integer PageNum) {
        Page<PublicChatMessages> page = new Page<>(PageNum, 50);

        QueryWrapper<PublicChatMessages> publicChatMessagesQueryWrapper = new QueryWrapper<>();
        QueryWrapper<PublicChatRooms> publicChatRoomsQueryWrapper = new QueryWrapper<>();

        publicChatMessagesQueryWrapper.eq("room_id", room_id);
        publicChatMessagesQueryWrapper.orderByDesc("create_time");
        List<PublicChatMessages> publicChatMessagesList = publicChatMessagesMapper.selectPage(page, publicChatMessagesQueryWrapper).getRecords();
        Collections.reverse(publicChatMessagesList);

        publicChatRoomsQueryWrapper.eq("room_id", room_id);
        PublicChatRooms publicChatRoom = publicChatRoomsMapper.selectOne(publicChatRoomsQueryWrapper);
        List<MessageVo> messageVoList = new ArrayList<>();


        publicChatMessagesList.forEach((message)->{
            MessageVo messageVo = new MessageVo();
            messageVo.setMessage_id(message.getMessage_id());
            messageVo.setRoom_id(message.getRoom_id());

            messageVo.setRoom_name(publicChatRoom.getRoom_name());

            QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
            userQueryWrapper.eq("uuid", message.getUuid());
            User user = userMapper.selectOne(userQueryWrapper);

            messageVo.setUsername(user.getUsername());
            messageVo.setUuid(message.getUuid());
            messageVo.setAvatar(message.getAvatar());
            messageVo.setMessage_content(message.getMessage_content());
            messageVo.setCreate_time(message.getCreate_time());
            messageVo.setTo_uuid(message.getTo_uuid());
            messageVo.setOnline_num(publicChatRoom.getOnline_num());

            messageVoList.add(messageVo);
        });

        return messageVoList;
    }
}




