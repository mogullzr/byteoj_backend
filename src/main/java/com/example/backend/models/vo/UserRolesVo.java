package com.example.backend.models.vo;

import lombok.Data;

import java.util.List;

@Data
public class UserRolesVo {

    /**
     * 角色名称
     */
    private String role_name;

    /**
     * 权限列表名称
     */
    private List<String> auth_list;

}
