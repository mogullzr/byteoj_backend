package com.example.backend.config;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.PublicChatMessagesMapper;
import com.example.backend.mapper.PublicChatRoomsMapper;
import com.example.backend.mapper.UserMapper;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.domain.webchat.PublicChatMessages;
import com.example.backend.models.domain.webchat.PublicChatRooms;
import com.example.backend.models.vo.MessageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

@Component
@ServerEndpoint("/websocket/{uuid}/{room_id}")
public class WebSocketServer {

    private static UserMapper userMapper;

    private static PublicChatMessagesMapper publicChatMessagesMapper;

    private static PublicChatRoomsMapper publicChatRoomsMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        WebSocketServer.userMapper = userMapper;
    }

    @Autowired
    public void setPublicChatMessagesMapper(PublicChatMessagesMapper publicChatMessagesMapper) {
        WebSocketServer.publicChatMessagesMapper = publicChatMessagesMapper;
    }

    @Autowired
    public void setPublicChatRoomsMapper(PublicChatRoomsMapper publicChatRoomsMapper) {
        WebSocketServer.publicChatRoomsMapper = publicChatRoomsMapper;
    }
    // 存储当前对象
    public static final Map<Long, Session> sessionMap = new ConcurrentHashMap<>();

    // 建立连接

    /**
     * 1,.巴登录用户存早sessionMap里面
     * 2.发送给所有人当前登录人员的信息
     */
    @OnOpen
    public void onOpen(Session session, @PathParam("uuid") Long uuid, @PathParam("room_id") Long room_id) throws IOException {
        if (uuid == -1) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "您还没有登录呢");
        }
        sessionMap.put(uuid, session);
        // 需要将online_num ++
        QueryWrapper<PublicChatRooms> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("room_id", room_id);
        PublicChatRooms publicChatRooms = publicChatRoomsMapper.selectOne(queryWrapper);
        publicChatRooms.setOnline_num(publicChatRooms.getOnline_num() + 1);
        publicChatRoomsMapper.update(publicChatRooms, queryWrapper);

        // 发送登录人员消息给所有客户端
        sendAllMessage(setUserList());
    }

    // 关闭连接

    /**
     * 1.把登出的用户从sessionMap 中去除
     * 2.发送给所有人当前登录人员的信息
     *
     * @param uuid 用户id
     */
    @OnClose
    public void onClose(@PathParam("uuid") Long uuid, @PathParam("room_id") Long room_id) throws IOException {
        if (uuid == -1) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢");
        }
        // 需要将online_num ++
        QueryWrapper<PublicChatRooms> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("room_id", room_id);
        PublicChatRooms publicChatRooms = publicChatRoomsMapper.selectOne(queryWrapper);
        publicChatRooms.setOnline_num(publicChatRooms.getOnline_num() - 1);
        publicChatRoomsMapper.update(publicChatRooms, queryWrapper);

        sessionMap.remove(uuid);

        sendAllMessage(setUserList());
    }


    /**
     * 接受客户端发送过来的数据（暂时仅仅可以处理String纯文本类型数据，后续再进行扩展处理）
     *
     * @param message 客户端发送信息
     */
    @OnMessage
    public void onMessage(String message, @PathParam("room_id") Long room_id) throws IOException {
        // 解析消息为java对象

        PublicChatMessages publicChatMessages = JSON.parseObject(message, PublicChatMessages.class);

        publicChatMessages.setCreate_time(new Date());
        publicChatMessages.setRoom_id(room_id);

        if (publicChatMessages.getTo_uuid() ==null || publicChatMessages.getTo_uuid() == 0) {
            sendAllMessage(JSON.toJSONString(publicChatMessages));
            // 同时还需要插入数据库当中去
            if (!Objects.equals(publicChatMessages.getMessage_content(), "heartbeat")) {
                publicChatMessagesMapper.insert(publicChatMessages);
            }
            System.out.println("123123123");
        } else {
            // TODO: 2024/7/25 对于单点对话
            System.out.println("发消息给某个特定用户");
        }
    }

    @OnError
    public void onError(Session session, Throwable error) {
        throw new BusinessException(ErrorCode.SYSTEM_ERROR, "发生了一些不可预料的错误！！！");
    }


    private String setUserList() {
        ArrayList<Long> list = new ArrayList<>();
        ArrayList<String> user_list = new ArrayList<>();

        for (Long key : sessionMap.keySet()) {
            list.add(key);
        }
        list.forEach((uuid) -> {
            QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
            userQueryWrapper.eq("uuid", uuid);
            user_list.add(userMapper.selectOne(userQueryWrapper).getUsername());
        });

        MessageVo messageVo = new MessageVo();
        messageVo.setUser_list(user_list);

        return JSON.toJSONString(messageVo);
    }


    // TODO: 2024/7/25 服务器发送消息给指定客户端
    private void sendMessage(String message, Session toSession) {
        try {
            toSession.getBasicRemote().sendText(message);
        } catch (IOException e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "websocket服务端发生了意想不到的错误");

        }
    }

    // 服务器发送消息给所有客户端
    private void sendAllMessage(String message) throws IOException {
        if (sessionMap.isEmpty()) {
            return;
        }
        for (Session session : sessionMap.values()) {
            session.getBasicRemote().sendText(message);
        }
    }
}
