package com.example.backend.service.source;

import com.example.backend.models.request.post.PostsQueryRequest;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.service.posts.PostsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
* @author Mogullzr
* @description 针对表【posts(帖子表)】的数据库操作Service实现
* @createDate 2024-07-20 12:34:02
*/
@Service
public class PostsDataSource implements DataSource<PostsVo>{
    @Resource
    private PostsService postsService;

    @Override
    public List<PostsVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin) {
        PostsQueryRequest postsQueryRequest = new PostsQueryRequest();
        postsQueryRequest.setKeyword(keyword);
        postsQueryRequest.setPageSize(pageSize);
        postsQueryRequest.setPageNum(pageNum);
        postsQueryRequest.setTagsList(tagsList);
        
        return postsService.listPostVoByPage(postsQueryRequest);
    }
}




