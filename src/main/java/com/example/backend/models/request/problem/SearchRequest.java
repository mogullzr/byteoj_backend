package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class SearchRequest implements Serializable {
    private static final long serialVersionUID = -2811101516622507927L;
    /**
     * 查询类别
     */
    private String category;
    /**
     * 搜索词
     */
    private String keyword;

    /**
     * 面数
     */
    private Integer pageNum;

    /**
     * 每面的页数
     */
    private Integer  pageSize;

    /**
     * 总面数
     */
    private Integer pages;

    /**
     * 标签ID列表
     */
    private List<Integer> tagsList;

    /**
     * 来源列表
     */
    private List<String> sourceList;

    /**
     * 难度
     */
    private String difficulty;

    /**
     * 0表示数学，1表示408
     */
    private Integer status;
}
