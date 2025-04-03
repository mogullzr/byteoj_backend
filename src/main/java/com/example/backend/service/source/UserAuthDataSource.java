package com.example.backend.service.source;

import com.example.backend.models.domain.spider.OjCompetition;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.request.user.UserAuthSearchRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.crawler.OJCompetitionVo;
import com.example.backend.service.crawler.OJCompetitionService;
import com.example.backend.service.user.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserAuthDataSource implements DataSource<UserVo>{
    @Resource
    private UserService userService;

    @Override
    public List<UserVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin) {
        UserAuthSearchRequest userAuthSearchRequest = new UserAuthSearchRequest();
        userAuthSearchRequest.setKeyword(keyword);
        userAuthSearchRequest.setPageNum(pageNum);
        userAuthSearchRequest.setPageSize(pageSize);

        return userService.listUserAuthVoByPage(userAuthSearchRequest);
    }
}
