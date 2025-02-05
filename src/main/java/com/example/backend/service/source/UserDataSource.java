package com.example.backend.service.source;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.posts.*;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.post.PostsCommentRequest;
import com.example.backend.models.request.post.PostsQueryRequest;
import com.example.backend.models.request.post.PostsRequest;
import com.example.backend.models.request.user.UserSearchRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.post.PostsCommentVo;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.service.posts.PostsService;
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
    public List<UserVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status) {
        UserSearchRequest userSearchRequest = new UserSearchRequest();
        userSearchRequest.setKeyword(keyword);
        userSearchRequest.setPageSize(pageSize);
        userSearchRequest.setPageNum(pageNum);

        return userService.listUserVoByPage(userSearchRequest);
    }
}




