package com.example.backend.models.request.competition;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompetitionRecordsRequest implements Serializable {
    private static final long serialVersionUID = -8384083143741406508L;

    /**
     * 用户名
     */
    private String keyword;

    /**
     * 语言
     */
    private String languages;

    /**
     * 题号
     */
    private String idx;

    /**
     * 运行结果
     */
    private String results;

    /**
     * 运行时间按照何种方式排序
     *
     * 0：表示不按照次排序
     * 1：表示按照从早到晚排序
     * 2：表示按照从晚到早顺序
     */
    private Integer is_time_used;

    /**
     * 运行内存按照何种方式排序
     *
     * 0：表示不按照次排序
     * 1：表示按照从早到晚排序
     * 2：表示按照从晚到早顺序
     */
    private Integer is_memory_used;

    /**
     * 代码长度按照何种方式排序
     *
     * 0：表示不按照次排序
     * 1：表示按照从早到晚排序
     * 2：表示按照从晚到早顺序
     */
    private Integer is_code_length;

    /**
     * 运行内存按照何种方式排序
     *
     * 0：表示不按照次排序
     * 1：表示按照从早到晚排序
     * 2：表示按照从晚到早顺序
     */
    private Integer is_submit_time;

    /**
     * 面数
     */
    private Integer pageNum;

    /**
     * 一面的数量
     */
    private Integer pageSize;

    /**
     * 竞赛ID
     */
    private Long competition_id;

}
