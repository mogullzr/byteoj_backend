package com.example.backend.models.domain.user;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 用户角色关联表
 * @TableName user_role_auth
 */
@TableName(value ="user_role_auth")
public class UserRoleAuth implements Serializable {
    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 角色id
     */
    private Integer role_id;

    /**
     * 权限id
     */
    private Integer auth_id;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     * 是否删除
     */
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    public Integer getId() {
        return id;
    }

    /**
     * id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 角色id
     */
    public Integer getRole_id() {
        return role_id;
    }

    /**
     * 角色id
     */
    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    /**
     * 权限id
     */
    public Integer getAuth_id() {
        return auth_id;
    }

    /**
     * 权限id
     */
    public void setAuth_id(Integer auth_id) {
        this.auth_id = auth_id;
    }

    /**
     * 创建时间
     */
    public Date getCreate_time() {
        return create_time;
    }

    /**
     * 创建时间
     */
    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    /**
     * 更新时间
     */
    public Date getUpdate_time() {
        return update_time;
    }

    /**
     * 更新时间
     */
    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    /**
     * 是否删除
     */
    public Integer getIs_delete() {
        return is_delete;
    }

    /**
     * 是否删除
     */
    public void setIs_delete(Integer is_delete) {
        this.is_delete = is_delete;
    }
}