package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;

@Data
public class RBACUserAuthVo implements Serializable {
    private static final long serialVersionUID = -8752680033552081215L;

    /**
     * 权限ID
     */
    private Integer auth_id;

    /**
     * auth名称
     */
    private String auth_name;
}
