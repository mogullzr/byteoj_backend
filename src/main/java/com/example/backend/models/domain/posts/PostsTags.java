package com.example.backend.models.domain.posts;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 帖子标签表
 * @TableName posts_tags
 */
@TableName(value ="posts_tags")
public class PostsTags implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 帖子id
     */
    private Long post_id;

    /**
     * 标签名
     */
    private String tag_name;

    /**
     * 用户id
     */
    private Long uuid;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 是否删除
     */
    private Integer is_delete;

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
     * 帖子id
     */
    public Long getPost_id() {
        return post_id;
    }

    /**
     * 帖子id
     */
    public void setPost_id(Long post_id) {
        this.post_id = post_id;
    }

    /**
     * 标签名
     */
    public String getTag_name() {
        return tag_name;
    }

    /**
     * 标签名
     */
    public void setTag_name(String tag_name) {
        this.tag_name = tag_name;
    }

    /**
     * 用户id
     */
    public Long getUuid() {
        return uuid;
    }

    /**
     * 用户id
     */
    public void setUuid(Long uuid) {
        this.uuid = uuid;
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