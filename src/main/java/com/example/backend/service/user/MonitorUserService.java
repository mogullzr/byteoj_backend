package com.example.backend.service.user;

import com.example.backend.models.domain.user.MonitorUser;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.request.user.MonitorUserRegisterRequest;
import com.example.backend.models.request.user.MonitorUserRequest;
import com.example.backend.models.vo.MonitorUserVo;

import java.util.List;

/**
* @author Mogullzr
* @description 针对表【monitor_user】的数据库操作Service
* @createDate 2025-11-19 18:02:17
*/
public interface MonitorUserService extends IService<MonitorUser> {
    /**
     * 断开时间记录
     *
     * @param monitorUserRequest 断开请求
     * @param status 上线状态
     */
    void modify(MonitorUserRequest monitorUserRequest, Integer status);

    /**
     * 注册记录
     *
     * @param monitorUserRegisterRequest 注册记录
     */
    boolean add(MonitorUserRegisterRequest monitorUserRegisterRequest);

    /**
     * 分页查询
     *
     * @param clientId 机器码
     * @param username 用户名
     * @param pageNum 面数
     * @param status 状态
     * @return 查询结果
     */
    List<MonitorUserVo> search(String clientId, String username, Integer pageNum, Integer status);
}
