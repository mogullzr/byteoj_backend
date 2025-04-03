package com.example.backend.models.request.user;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class UserRoleCreateRequest implements Serializable {
    private static final long serialVersionUID = 1513693229178501263L;

    /**
     * 权限名称列表
     */
    private List<String> auth_name_list;

    /**
     * 角色名称
     */
    private String role_name;
}
