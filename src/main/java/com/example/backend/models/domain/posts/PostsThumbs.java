package com.example.backend.models.domain.posts;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 帖子标签点赞表
 * @TableName posts_thumbs
 */
@TableName(value ="posts_thumbs")
public class PostsThumbs implements Serializable {
    /**
     * ID
     */
    @TableId
    private Long id;

    /**
     * 帖子ID
     */
    private Long post_id;

    /**
     * 用户ID
     */
    private Long uuid;

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
     * 帖子ID
     */
    public Long getPost_id() {
        return post_id;
    }

    /**
     * 帖子ID
     */
    public void setPost_id(Long post_id) {
        this.post_id = post_id;
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
}