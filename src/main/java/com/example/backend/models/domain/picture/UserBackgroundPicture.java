package com.example.backend.models.domain.picture;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 用户背景图片存储表
 * @TableName user_background_picture
 */
@TableName(value ="user_background_picture")
@Data
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
}