package com.example.backend.service.source.search;


import com.example.backend.models.request.competition.CompetitionRecordsRequest;

import java.util.List;

/**
 * 规定接入搜索数据源必须实现的接口
 *
 * @param <T>
 */
public interface DataSource<T> {

    /**
     * 搜索查询
     *
     * @param keyword 关键词
     * @param tagsList 标签列表
     * @param sourceList 来源列表
     * @param difficulty 难度
     * @param uuid 用户ID
     * @param status 状态
     * @param isAdmin 是否为管理员
     * @return 搜索到的数据
     */
    List<T> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest);
}
