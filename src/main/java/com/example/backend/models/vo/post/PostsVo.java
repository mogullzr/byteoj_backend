package com.example.backend.models.vo.post;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class PostsVo implements Serializable {
    private static final long serialVersionUID = 1993379478904767952L;
    /**
     * 帖子id
     */
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
     * 作者
     */
    private String author;

    /**
     * 作者头像
     */
    private String avatar;
    /**
     * 点赞数量
     */
    private Long thumbs_up;

    /**
     * 浏览量
     */
    private Long reading;

    /**
     * 学校
     */
    private String school;

    /**
     * 用户的第一大标签
     */
    private String tag_first;

    /**
     * 用户的id
     */
    private Long uuid;

    /**
     * 获取帖子评论数量
     */
    private Long comment_num;

    /**
     * 标签列表
     */
    private List<String> tag_list;

    /**
     * 发布文章的时候电脑的IP位置
     */
    private String location;

    /**
     * 对于当前用户而言，该post是否点赞，0为点赞，1为未点赞
     */
    private Integer is_thumbs;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 更新时间
     */
    private Date update_time;
}
