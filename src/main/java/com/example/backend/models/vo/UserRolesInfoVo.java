package com.example.backend.models.vo;

import lombok.Data;

import java.util.List;

@Data
public class UserRolesInfoVo {
    /**
     * 对应信息
     */
    private List<UserRolesVo> userRolesVo;

    /**
     * 角色列表
     */
    private List<String> rolesList;
}
