package com.example.backend.controller;


import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.instant.IpRegionSearcher;
import com.example.backend.mapper.PostsMapper;
import com.example.backend.mapper.PostsTagsMapper;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.post.PostsCommentRequest;
import com.example.backend.models.request.post.PostsQueryRequest;
import com.example.backend.models.request.post.PostsRequest;
import com.example.backend.models.vo.post.PostsCommentVo;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.service.posts.PostsService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

import static com.example.backend.utils.IpUtils.getClientIp;

@RestController
@RequestMapping("/posts/")
@Slf4j
@Controller
public class  PostsController {
    @Resource
    private PostsMapper postsMapper;

    @Resource
    private PostsTagsMapper postsTagsMapper;

    @Resource
    private PostsService postsService;

    @Resource
    private UserService userService;

    @Resource
    private IpRegionSearcher ipRegionSearcher;

    @AccessLimit(seconds=3, maxCount=15, needLogin=true)
    @PostMapping("/add")
    private BaseResponse<Boolean> PostAdd(@RequestBody PostsRequest postsRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢！");
        }
        // 位置定位修正
        String ip = getClientIp(httpServletRequest);
        String location = ipRegionSearcher.searchInfoFromBaidu(ip);

        postsRequest.setLocation(location);

        boolean result = postsService.postAdd(postsRequest, uuid);

        return ResultUtils.success(result);

    }

    @AccessLimit(seconds=3, maxCount=10, needLogin=true)
    @PostMapping("/delete")
    private BaseResponse<Boolean> PostDelete(Long post_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢！");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = postsService.postDelete(uuid, isAdmin, post_id);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=3, maxCount=15, needLogin=true)
    @PostMapping("/modify")
    private BaseResponse<Boolean> PostModify(@RequestBody PostsRequest postsRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = postsService.postModify(postsRequest, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/search/page")
    private BaseResponse<List<PostsVo>> PostSearchByPage(Integer pageNum, String mode, HttpServletRequest httpServletRequest){
        if(httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        List<PostsVo> result = postsService.postSearchByPage(pageNum, uuid, mode);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/search")
    private BaseResponse<List<PostsVo>> ListPostVoByPage(@RequestBody PostsQueryRequest postsQueryRequest, HttpServletRequest httpServletRequest){
        if(httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        List<PostsVo> result = postsService.listPostVoByPage(postsQueryRequest, -1L);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=3, maxCount=15, needLogin=false)
    @PostMapping("/search/postsId")
    private BaseResponse<PostsVo> PostSearchByPostsId(Long post_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        PostsVo postsVo = postsService.postSearchByPostId(post_id, uuid);
        return ResultUtils.success(postsVo);
    }

    @AccessLimit(seconds=3, maxCount=20, needLogin=false)
    @PostMapping("/search/comment")
    private BaseResponse<List<List<PostsCommentVo>>> PostSearchCommentByPostId(Long post_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息能为空");
        }
        List<List<PostsCommentVo>> result = postsService.postSearchCommentByPostId(post_id);
        return ResultUtils.success(result);
    }

    @PostMapping("/top")
    private BaseResponse<Boolean> PostTop(Long post_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢！");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = postsService.PostTop(post_id, isAdmin);
        return ResultUtils.success(result);
    }

    @PostMapping("/top/cancel")
    private BaseResponse<Boolean> PostTopCancel(Long post_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不嫩为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢！");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = postsService.PostTopCancel(post_id, isAdmin);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=15, needLogin=true)
    @PostMapping("/post/thumbs")
    private BaseResponse<Boolean> PostThumbsAddOrCancel(Long post_id, Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user != null) {
            uuid = user.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
        }

        boolean result = postsService.PostThumbsAddOrCancel(post_id, uuid, status);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=15, needLogin=true)
    @PostMapping("/post/thumbStatus")
    private BaseResponse<Boolean> PostThumbsStatus(Long post_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user != null) {
            uuid = user.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
        }

        boolean result = postsService.PostThumbsStatus(post_id, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=20, needLogin=true)
    @PostMapping("/post/comment/add")
    private BaseResponse<Boolean> PostCommentAdd(@RequestBody PostsCommentRequest postsCommentRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user != null) {
            uuid = user.getUuid();
        } else {
        throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
    }

    boolean result = postsService.PostCommentAdd(postsCommentRequest, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=20, needLogin=true)
    @PostMapping("/post/comment/delete")
    private BaseResponse<Boolean> PostCommentDelete(Long comment_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user != null) {
            uuid = user.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
        }

        boolean result = postsService.PostCommentDelete(comment_id, isAdmin, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=40, needLogin=true)
    @PostMapping("/post/comment/thumbs")
    private BaseResponse<Boolean> PostCommentAddOrCancel(Long comment_id, Long post_id, Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user != null) {
            uuid = user.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
        }

        boolean result = postsService.PostCommentAddOrCancel(comment_id, post_id, status, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @PostMapping("/post/answer/problemId")
    private BaseResponse<List<PostsVo>> PostGetPostByProblemId(Long problem_id, Integer pageNum, Long status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        List<PostsVo> result = postsService.PostGetPostByProblemId(problem_id, pageNum, status);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 5, maxCount=20, needLogin=true)
    @PostMapping("/blog/add")
    private BaseResponse<Boolean> userAddPostToBlog(Long post_id, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);

        boolean success = postsService.userAddPostToBlog(post_id, loginUser.getUuid());
        return ResultUtils.success(success);
    }

    @AccessLimit(seconds = 5, maxCount=20, needLogin=true)
    @PostMapping("/blog/delete")
    private BaseResponse<Boolean> userDeletePostToBlog(Long post_id, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);

        boolean success = postsService.userDeletePostToBlog(post_id, loginUser.getUuid());
        return ResultUtils.success(success);
    }
}
