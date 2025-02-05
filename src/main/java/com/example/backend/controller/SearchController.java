package com.example.backend.controller;


import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.problem.SearchRequest;
import com.example.backend.models.vo.problem.SearchVo;
import com.example.backend.service.search.SearchService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/search")
@Slf4j
@Controller
public class SearchController {

    private final SearchService searchService;
    @Resource
    private UserService userService;

    @Autowired
    public SearchController(SearchService searchService){
        this.searchService = searchService;
    }

    /**
     * 这种属于在一个页面搜索出多个来源的页面的数据，本网站不使用该接口
     *
     * @param searchRequest 前端搜索请求
     * @return 返回搜索结果
     */
    @PostMapping("/all/vo")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = false)
    public BaseResponse<SearchVo> SearchAll(@RequestBody SearchRequest searchRequest, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        SearchVo searchVos = searchService.searchAll(searchRequest, uuid);
        return ResultUtils.success(searchVos);
    }
}
