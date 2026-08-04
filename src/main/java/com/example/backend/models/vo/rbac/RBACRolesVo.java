package com.example.backend.models.vo.rbac;

import com.example.backend.models.request.rbac.RBACUserAuthVo;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class RBACRolesVo implements Serializable {
    private static final long serialVersionUID = -5220044683723895379L;

    /**
     * 角色ID
     */
    private Integer role_id;

    /**
     * 角色名称
     */
    private String role_name;

    /**
     * 描述
     */
    private String description;

    /**
     * 角色包含的权限列表信息
     */
    List<RBACUserAuthVo> user_auth_list;
}
