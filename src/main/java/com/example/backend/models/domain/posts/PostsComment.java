package com.example.backend.models.domain.posts;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 评论表
 * @TableName posts_comment
 */
@TableName(value ="posts_comment")
@Data
public class PostsComment implements Serializable {
    /**
     * 评论ID
     */
    @TableId(type = IdType.AUTO)
    private Long comment_id;

    /**
     * 回复内容
     */
    private String content;

    /**
     * 评论所属帖子ID
     */
    private Long post_id;

    /**
     * 顶级评论ID
     */
    private Long root_comment_id;

    /**
     * 所属用户ID
     */
    private Long uuid;

    /**
     * 评论点赞次数
     */
    private Long comment_like_count;

    /**
     * 回复的评论ID
     */
    private Long to_comment_id;

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


}