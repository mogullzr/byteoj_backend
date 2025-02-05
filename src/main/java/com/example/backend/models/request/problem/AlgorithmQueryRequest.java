package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class AlgorithmQueryRequest implements Serializable {
    private static final long serialVersionUID = -623895606857188695L;
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

}
