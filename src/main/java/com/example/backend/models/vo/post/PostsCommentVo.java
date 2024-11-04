package com.example.backend.models.vo.post;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class PostsCommentVo implements Serializable {

    private static final long serialVersionUID = 426136958033726512L;
    /**
     * 评论id
     */
    private Long comment_id;

    /**
     * 回复内容
     */
    private String content;

    /**
     * 所属用户名称
     */
    private String username;

    /**
     * 所属用户的uuid
     */
    private Long uuid;

    /**
     * 所属用户的头像
     */
    private String avatar;

    /**
     * 所属用户的学校
     */
    private String school;

    /**
     * 评论点赞次数
     */
    private Long comment_like_count;

    /**
     * 根评论id
    */
    private Long root_comment_id;

    /**
     * 回复的评论的用户的名称
     */
    private String to_comment_name;

    /**
     * 回复用户的ID，便于之后可以搜索到该用户的个人信息部分
     */
    private Long to_comment_uuid;

    /**
     * 对于当前用户而言，该评论是否点赞，0为点赞，1为未点赞
     */
    private Integer is_thumbs;

    /**
     * 创建时间
     */
    private Date create_time;
}
