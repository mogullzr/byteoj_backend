package com.example.backend.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.user.UserApi;
import com.example.backend.models.domain.user.UserRoleRelation;
import com.example.backend.models.request.rbac.*;
import com.example.backend.models.vo.rbac.RBACRolesVo;
import com.example.backend.models.vo.rbac.RBACUserInfoVo;

import java.util.List;

public interface RBACService extends IService<UserRoleRelation>{

    /**
     * 授权用户
     *
     * @param rbacAuthUserRequest 授权请求
     * @return 是否成功授权
     */
    Boolean adminAuthUser(RBACAuthUserRequest rbacAuthUserRequest);

    /**
     * 获取角色信息
     *
     * @return 角色id + 角色名称
     */
    List<RBACRolesVo> adminGetRoles();

    /**
     * 管理员获取用户详细信息等
     *
     * @param rbacUserInfoSearchRequest RBAC前端搜索请求
     * @return 用户信息获取
     */
    List<RBACUserInfoVo> adminGetUserInfo(RBACInfoSearchRequest rbacUserInfoSearchRequest);

    /**
     * 创建新角色
     *
     * @param rbacRoleCreateRequest 设定新角色请求
     * @return 是否创建成功
     */
    Boolean adminSetRole(RBACRoleCreateRequest rbacRoleCreateRequest);

    /**
     * 创建API地址
     *
     * @param rbacApiRequest api地址创建请求
     * @return 是否创建成功
     */
    Boolean adminSetApi(RBACApiRequest rbacApiRequest);

    /**
     * 查找API接口信息
     * @param rbacInfoSearchRequest 查询请求
     * @return 查询到的结果
     */
    List<RBACUserApiVo> AdminGetApi(RBACInfoSearchRequest rbacInfoSearchRequest);

    /**
     * 查找权限信息
     *
     * @param rbacInfoSearchRequest 查询请求
     * @return 查询到的结果
     */
    List<RBACUserAuthVo> AdminGetAuth(RBACInfoSearchRequest rbacInfoSearchRequest);

    /**
     * 创建权限
     *
     * @param rbacAuthCreateRequest 创建信息请求
     * @return 是否创建成功
     */
    Boolean adminSetAuth(RBACAuthCreateRequest rbacAuthCreateRequest);
}
