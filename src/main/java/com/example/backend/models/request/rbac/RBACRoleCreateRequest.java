package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class RBACRoleCreateRequest implements Serializable {
    private static final long serialVersionUID = 7343810255663534785L;

    /**
     * 角色名称
     */
    private String role_name;

    /**
     * 简单介绍描述
     */
    private String description;

    /**
     * 权限ID列表
     */
    private List<Integer> auth_id_list;
}
