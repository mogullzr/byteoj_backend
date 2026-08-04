package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.mapper.UserMapper;
import com.example.backend.models.domain.user.User;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Profile;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
@Slf4j
@Profile("dev") // 只在dev profile激活时生效
public class SendQQTokenMessageUtil {
    @Resource
    private EmailSendUtil emailSendUtil;

    @Resource
   private UserMapper userMapper;

    /**
     * 定时任务——管理员Token定时修改发送
     * 1000 * 60 * 60 * 24 * 7 一周时间
     */
    @Scheduled(cron = "0 0 0 ? * MON")
    public void Token_Send() {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("role", 2);

        List<User> Admin_List = userMapper.selectList(queryWrapper);
        Admin_List.forEach((admin)->{
            if (admin.getEmail() != null && !admin.getEmail().isEmpty()) {
                emailSendUtil.sendTokenToAdminEmail(admin.getEmail());
            }
        });
    }
}
