package com.example.backend.models.domain.posts;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 帖子表
 * @TableName posts
 */
@Data
@TableName(value ="posts")
public class Posts implements Serializable {
    /**
     * 帖子id
     */
    @TableId(type = IdType.AUTO)
    private Long post_id;

    /**
     * 帖子标题
     */
    private String title;

    /**
     * 帖子内容
     */
    private String content;

    /**
     * 作者ID
     */
    private Long uuid;

    /**
     * 点赞数量
     */
    private Long thumbs_up;

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

    /**
     * 浏览量
     */
    private Long reading;

    /**
     * 
     */
    private String location;

    /**
     * 帖子所属题目id
     */
    private Long problem_id;

    /**
     * 0，1,2,3
     */
    private Integer status;

    /**
     * 应用 url 地址
     */
    private String url;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}