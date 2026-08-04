package com.example.backend.models.vo.rbac;

import com.example.backend.models.vo.UserVo;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class RBACUserInfoVo implements Serializable {
    private static final long serialVersionUID = -1255300324536520138L;
    /**
     * 用户脱敏信息
     */
    private UserVo userVo;

    /**
     * 权限列表信息
     */
    private List<RBACRolesVo> roles;
}
