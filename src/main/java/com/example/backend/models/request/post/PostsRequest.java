package com.example.backend.models.request.post;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class PostsRequest implements Serializable {
    private static final long serialVersionUID = -8640111580923526677L;
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
     * 发布时的地理位置
     */
    private String location;

    /**
     * 帖子标签列表
     */
    private List<String> tags_list;

    /**
     * 0表示普通帖子，1表示答疑帖子，2表示题解帖子
     */
    private Integer status;

    /**
     * 所属题目id
     */
    private Long problem_id;
}
