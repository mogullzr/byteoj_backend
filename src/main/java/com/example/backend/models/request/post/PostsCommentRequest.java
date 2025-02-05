package com.example.backend.models.request.post;

import lombok.Data;

import java.io.Serializable;

@Data
public class PostsCommentRequest implements Serializable {
    private static final long serialVersionUID = -5070563402066847644L;
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
     * 回复的评论ID
     */
    private Long to_comment_id;
}
