package com.example.backend.models.domain.picture;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 用户背景图片存储表
 * @TableName user_background_picture
 */
@TableName(value ="user_background_picture")
public class UserBackgroundPicture implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 图片地址
     */
    private String picture_address;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    public Long getId() {
        return id;
    }

    /**
     * ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 用户ID
     */
    public Long getUuid() {
        return uuid;
    }

    /**
     * 用户ID
     */
    public void setUuid(Long uuid) {
        this.uuid = uuid;
    }

    /**
     * 图片地址
     */
    public String getPicture_address() {
        return picture_address;
    }

    /**
     * 图片地址
     */
    public void setPicture_address(String picture_address) {
        this.picture_address = picture_address;
    }
}