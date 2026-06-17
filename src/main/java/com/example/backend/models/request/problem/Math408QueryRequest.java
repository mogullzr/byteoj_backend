package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class Math408QueryRequest implements Serializable {
    private static final long serialVersionUID = 7878247010224440846L;
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
