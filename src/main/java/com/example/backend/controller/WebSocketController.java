package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.vo.MessageVo;
import com.example.backend.service.user.UserService;
import com.example.backend.service.webchat.PublicChatMessagesService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/webSocket")
public class WebSocketController {

    @Resource
    private PublicChatMessagesService publicChatMessagesService;
    @Resource
    private UserService userService;

    @PostMapping("/getAllMessage")
    public BaseResponse<List<MessageVo>> WebSocketGetMessageByRoomId(Long room_id, Integer PageNum, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<MessageVo> result = publicChatMessagesService.WebSocketGetMessageByRoomId(room_id, PageNum);
        return ResultUtils.success(result);
    }
}