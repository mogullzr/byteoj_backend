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
     * 0表示数学，1表示408 | 1表示操作日志，2表示异常日志
     */
    private Integer status;

    /**
     * 模块
     */
    private String module;

    /**
     * 状态码
     */
    private List<Integer> code;

    /**
     * 请求方法列表，GET/POST/PUT/DELETE等
     */
    private List<String> type;


    /**
     * 是否按照操作时间进行排序，1表示从大到小，2表示从小到大
     */
    private Integer is_date_order;

    /**
     * 初始时间
     */
    private Integer startMilliSeconds;


    /**
     * 终止时间
     */
    private Integer endMilliSeconds;


    /**
     * 面数
     */
    private Integer current;


    /**
     * 页数
     */
    private Integer size;
}
