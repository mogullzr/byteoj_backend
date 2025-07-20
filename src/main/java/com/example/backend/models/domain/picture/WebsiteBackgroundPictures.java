package com.example.backend.models.domain.picture;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 网站的背景图片集
 * @TableName website_background_pictures
 */
@TableName(value ="website_background_pictures")
@Data
public class WebsiteBackgroundPictures implements Serializable {
    /**
     * 图片id
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 图片地址
     */
    private String picture_address;

    /**
     * 图片的上传时间
     */
    private Date create_time;

    /**
     * 用户id
     */
    private Long uuid;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}