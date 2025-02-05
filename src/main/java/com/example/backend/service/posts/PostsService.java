package com.example.backend.service.posts;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.posts.Posts;
import com.example.backend.models.request.post.PostsCommentRequest;
import com.example.backend.models.request.post.PostsQueryRequest;
import com.example.backend.models.request.post.PostsRequest;
import com.example.backend.models.vo.post.PostsCommentVo;
import com.example.backend.models.vo.post.PostsVo;

import java.util.List;

/**
* @author Mogullzr
* @description 针对表【posts(帖子表)】的数据库操作Service
* @createDate 2024-07-20 12:34:02
*/
public interface PostsService extends IService<Posts> {
    /**
     * 添加帖子
     *
     * @param postsRequest 帖子信息请求
     * @return 是否成功添加
     */
    boolean postAdd(PostsRequest postsRequest, Long uuid);

    /**
     * 删除帖子（用户只可以删除自己帖子，管理员可以随意删除帖子）
     *
     * @param uuid 用户id
     * @param post_id 帖子id
     * @return 是否删除成功
     */
    boolean postDelete(Long uuid, boolean isAdmin, Long post_id);

    /**
     * 修改帖子信息
     *
     * @param postsRequest 帖子请求信息
     * @return 是否修改帖子成功
     */
    boolean postModify(PostsRequest postsRequest, Long uuid);

    /**
     * 分页查询帖子信息
     *
     * @param pageNum 页数
     * @return 分页查询的帖子信息
     */
    List<PostsVo> postSearchByPage(Integer pageNum, Integer uuid);

    /**
     * 根据post_id来搜索帖子内容
     *
     * @param post_id post的id
     * @param uuid 用户id
     * @return 帖子信息
     */
    PostsVo postSearchByPostId(Long post_id, Long uuid);

    /**
     * 根据帖子ID搜索所有评论
     *
     * @param post_id 帖子id
     * @return 对应帖子的所有评论
     */
    List<List<PostsCommentVo>> postSearchCommentByPostId(Long post_id);

    /**
     * 将某条帖子置顶
     *
     * @param post_id 帖子id
     * @param isAdmin 是否为管理员
     * @return 是否置顶成功
     */
    boolean PostTop(Long post_id, boolean isAdmin);

    /**
     * 将某条帖子置顶取消
     *
     * @param post_id 帖子id
     * @param isAdmin 是否为管理员
     * @return 是否取消成功
     */
    boolean PostTopCancel(Long post_id, boolean isAdmin);

    /**
     * 给某个帖子点赞
     *
     * @param post_id 帖子id
     * @param uuid 用户id
     * @param status 0表示进行点赞，1表示取消点赞
     * @return 是否点赞成功
     */
    boolean PostThumbsAddOrCancel(Long post_id, Long uuid, Integer status);

    /**
     * 当前用户是否点赞
     *
     * @param post_id 帖子id
     * @return 是否点赞
     */
    boolean PostThumbsStatus(Long post_id, Long uuid);

    /**
     * 给某帖子添加评论
     *
     * @param postsCommentRequest 前端发送的评论信息请求
     * @param uuid 用户id
     * @return 是否评论成功
     */
    boolean PostCommentAdd(PostsCommentRequest postsCommentRequest, Long uuid);

    /**
     * 删除评论
     *
     * @param comment_id 评论id
     * @param isAdmin 是否为管理员
     * @param uuid 用户id
     * @return 是否删除评论成功
     */
    boolean PostCommentDelete(Long comment_id, boolean isAdmin, Long uuid);

    /**
     * 点赞与取消赞
     *
     * @param comment_id 评论id
     * @param status 0表示点赞，1表示取消赞
     * @param uuid 用户id
     * @param post_id 帖子id
     * @return 是否点赞或取消赞成功
     */
    boolean PostCommentAddOrCancel(Long comment_id, Long post_id, Integer status, Long uuid);

    /**
     * 根据问题id获取答疑帖子列表
     *
     * @param problem_id 问题id
     * @param pageNum 面数
     * @param status 0表示搜索答疑帖子，1表示搜索题解帖子
     * @return 搜索到的答疑问题列表
     */
    List<PostsVo> PostGetPostByProblemId(Long problem_id, Integer pageNum, Long status);

    /**
     * 条件查询帖子
     *
     * @param postsQueryRequest 前端搜索信息
     * @return 搜索获取帖子信息
     */
    List<PostsVo> listPostVoByPage(PostsQueryRequest postsQueryRequest);
}
