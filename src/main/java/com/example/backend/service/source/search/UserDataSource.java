package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.user.UserSearchRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.service.user.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * @author Mogullzr
 * @description 针对表【posts(帖子表)】的数据库操作Service实现
 * @createDate 2024-07-20 12:34:02
 */
@Service
public class UserDataSource implements DataSource<UserVo>{
    @Resource
    private UserService userService;

    @Override
    public List<UserVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        UserSearchRequest userSearchRequest = new UserSearchRequest();
        userSearchRequest.setKeyword(keyword);
        userSearchRequest.setPageSize(pageSize);
        userSearchRequest.setPageNum(pageNum);

        return userService.listUserVoByPage(userSearchRequest);
    }
}




