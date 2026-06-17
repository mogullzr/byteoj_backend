package com.example.backend.service.Impl.user;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.MonitorUser;
import com.example.backend.models.request.user.MonitorUserRegisterRequest;
import com.example.backend.models.request.user.MonitorUserRequest;
import com.example.backend.models.vo.MonitorUserVo;
import com.example.backend.service.user.MonitorUserService;
import com.example.backend.mapper.MonitorUserMapper;
import com.example.backend.utils.EmailSendUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
* @author Mogullzr
* @description 针对表【monitor_user】的数据库操作Service实现
* @createDate 2025-11-19 18:02:17
*/
@Service
public class MonitorUserServiceImpl extends ServiceImpl<MonitorUserMapper, MonitorUser>
    implements MonitorUserService{

    @Autowired
    private MonitorUserMapper monitorUserMapper;

    @Autowired
    private EmailSendUtil emailSendUtil;

    @Override
    public void modify(MonitorUserRequest monitorUserRequest, Integer status) {
        String clientId = monitorUserRequest.getClient_id();
//        String ip = monitorUserRequest.getIp();
        DateTime disConnectTime = monitorUserRequest.getDis_connect_time();

        // 查询是否有该ClientId
        QueryWrapper<MonitorUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("client_id", clientId);
        List<MonitorUser> monitorUsers = monitorUserMapper.selectList(queryWrapper);
        MonitorUser monitorUser = new MonitorUser();

        monitorUser.setClient_id(clientId);
//        monitorUser.setIP(ip);
        monitorUser.setCreate_time(disConnectTime);
        monitorUser.setUpdate_time(disConnectTime);
        monitorUser.setStatus(status);

        if (monitorUsers.isEmpty()) {
            monitorUser.setUsername("未知用户机子！！！！");
            monitorUser.setStatus(3);
        } else {
            monitorUser.setUsername(monitorUsers.get(0).getUsername());
        }

        // QQ邮箱发送(我先设置我的邮箱)
        emailSendUtil.sendOfflineAlertEmail("898561494@qq.com", monitorUser.getUsername(), String.valueOf(disConnectTime));
        monitorUserMapper.insert(monitorUser);
    }

    @Override
    public boolean add(MonitorUserRegisterRequest monitorUserRegisterRequest) {
//        String fingerprint = monitorUserRegisterRequest.getFingerprint();
//        String ip = monitorUserRegisterRequest.getIp();
//        String hostname = monitorUserRegisterRequest.getHostname();
        Date timestamp = monitorUserRegisterRequest.getTimestamp();
//        String primaryMac = monitorUserRegisterRequest.getPrimary_mac();
//        List<String> macAddress = monitorUserRegisterRequest.getMac_address();
        String username = monitorUserRegisterRequest.getUsername();
//        String rawMacHex = monitorUserRegisterRequest.getRaw_mac_hex();
        String fingerprint = monitorUserRegisterRequest.getFingerprint();

        QueryWrapper<MonitorUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("client_id", fingerprint);
        queryWrapper.eq("status", 0);
        List<MonitorUser> monitorUsers = monitorUserMapper.selectList(queryWrapper);
        if (!monitorUsers.isEmpty()) {
            throw new BusinessException(ErrorCode.FORBIDDEN_ERROR, "您已经注册过了，请不要重复注册！！！");
        }

        MonitorUser monitorUser = new MonitorUser();
        monitorUser.setClient_id(fingerprint);
        monitorUser.setUsername(username);
        monitorUser.setCreate_time(timestamp);
        monitorUser.setUpdate_time(timestamp);
        monitorUser.setStatus(0);

        return monitorUserMapper.insert(monitorUser) == 1;
    }

    @Override
    public List<MonitorUserVo> search(String clientId, String username, Integer pageNum, Integer status) {
        Page<MonitorUser> page = new Page<>(pageNum, 10);
        QueryWrapper<MonitorUser> queryWrapper = new QueryWrapper<>();
        List<MonitorUserVo> monitorUserVos = new ArrayList<>();

        if (clientId != null && !clientId.isEmpty()) {
            queryWrapper.like("client_id", clientId);
        }

        if (username != null && !username.isEmpty()) {
            queryWrapper.like("username", username);
        }

        if (status != null) {
            queryWrapper.eq("status", status);
        }

        queryWrapper.orderByDesc("create_time");

        Page<MonitorUser> monitorUserPage = monitorUserMapper.selectPage(page, queryWrapper);
        List<MonitorUser> records = monitorUserPage.getRecords();
        long pages = monitorUserPage.getPages();

        for (int i = 0; i < records.size(); i++) {
            MonitorUser record = records.get(i);
            MonitorUserVo monitorUserVo = new MonitorUserVo();

            if (i == 0) {
                monitorUserVo.setPages(pages);
            }
            monitorUserVo.setUsername(record.getUsername());
            monitorUserVo.setClient_id(record.getClient_id());
            monitorUserVo.setCreate_time(record.getCreate_time());
            monitorUserVo.setUpdate_time(record.getUpdate_time());
            monitorUserVo.setStatus(record.getStatus());

            monitorUserVos.add(monitorUserVo);
        }
        return monitorUserVos;
    }
}




