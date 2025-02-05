package com.example.backend.models.request.post;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class PostsQueryRequest implements Serializable {
    private static final long serialVersionUID = 5777906607039599296L;
    /**
     * 搜索词
     */
    private String keyword;

    /**
     * 面数
     */
    private Integer pageNum;

    /**
     * 一面的数据量
     */
    private Integer pageSize;

    /**
     * 标签ID列表
     */
    private List<Integer> tagsList;
}
