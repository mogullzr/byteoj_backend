package com.example.backend.service.search;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.request.problem.SearchRequest;
import com.example.backend.models.vo.problem.SearchVo;

import java.util.List;

public interface SearchService {

    /**
     * 聚合搜索1.0版本
     *
     * @param searchRequest 前端搜索请求
     * @param uuid 用户ID
     * @return 搜索到的内容
     */
    SearchVo searchAll(SearchRequest searchRequest, Long uuid);

}
