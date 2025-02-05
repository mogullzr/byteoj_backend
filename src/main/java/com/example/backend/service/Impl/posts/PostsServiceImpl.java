package com.example.backend.service.Impl.posts;
import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTags;
import com.example.backend.models.domain.posts.*;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.post.PostsCommentRequest;
import com.example.backend.models.request.post.PostsQueryRequest;
import com.example.backend.models.request.post.PostsRequest;
import com.example.backend.models.vo.post.PostsCommentVo;
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
public class PostsServiceImpl extends ServiceImpl<PostsMapper, Posts>
    implements PostsService{

    @Resource
    private PostsMapper postsMapper;

    @Resource
    private PostsTagsMapper postsTagsMapper;

    @Resource
    private PostsThumbsMapper postsThumbsMapper;

    @Resource
    private PostsCommentMapper postsCommentMapper;

    @Resource
    private PostsCommentThumbsMapper postsCommentThumbsMapper;

    @Resource
    private UserMapper userMapper;

    @Override
    public boolean postAdd(PostsRequest postsRequest, Long uuid) {

        Posts posts = new Posts();
        posts.setTitle(postsRequest.getTitle());
        posts.setContent(postsRequest.getContent());
        posts.setUuid(uuid);
        posts.setCreate_time(new Date());
        posts.setUpdate_time(new Date());
        posts.setLocation(postsRequest.getLocation());
        posts.setStatus(postsRequest.getStatus());
        if (postsRequest.getProblem_id() != null) {
            posts.setProblem_id(postsRequest.getProblem_id());
        }
        if (posts.getContent().isEmpty() || posts.getTitle().isEmpty()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不允许为空");
        }
        postsMapper.insert(posts);

        List<String> tags_list = postsRequest.getTags_list();
        if (tags_list != null) {
            tags_list.forEach((tag)->{
                PostsTags postsTags = new PostsTags();
                postsTags.setPost_id(posts.getPost_id());
                postsTags.setTag_name(tag);
                postsTags.setUuid(uuid);
                postsTags.setCreate_time(new Date());
                postsTagsMapper.insert(postsTags);
            });
        }


        return true;
    }

    @Override
    public boolean postDelete(Long uuid, boolean isAdmin, Long post_id) {
        QueryWrapper<Posts> postsQueryWrapper = new QueryWrapper<>();
        postsQueryWrapper.eq("post_id", post_id);

        if (!isAdmin){
            postsQueryWrapper.eq("uuid", uuid);
        }
        int is_delete = postsMapper.delete(postsQueryWrapper);
        if (is_delete == 0) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，帖子删除失败，请检查你的权限");
        }

        return true;
    }

    @Override
    public boolean postModify(PostsRequest postsRequest, Long uuid) {
        // 更新帖子信息
        QueryWrapper<Posts> postsQueryWrapper = new QueryWrapper<>();
        postsQueryWrapper.eq("post_id", postsRequest.getPost_id());
        Posts post = postsMapper.selectOne(postsQueryWrapper);
        if (!Objects.equals(post.getUuid(), uuid)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你是谁？？？？？");
        }
        post.setTitle(postsRequest.getTitle());
        post.setContent(postsRequest.getContent());
        post.setUpdate_time(new Date());

        postsMapper.update(post, postsQueryWrapper);

        // 更新帖子标签
        List<String> tags_list = postsRequest.getTags_list();
        QueryWrapper<PostsTags> postsTagsQueryWrapper = new QueryWrapper<>();
        postsTagsQueryWrapper.eq("post_id", postsRequest.getPost_id());
        postsTagsMapper.delete(postsTagsQueryWrapper);

        tags_list.forEach((tag)->{
            PostsTags postsTag = new PostsTags();
            postsTag.setPost_id(postsRequest.getPost_id());
            postsTag.setTag_name(tag);
            postsTag.setUuid(uuid);
            postsTag.setCreate_time(new Date());

            postsTagsMapper.insert(postsTag);
        });
        return true;
    }

    @Override
    public List<PostsVo> postSearchByPage(Integer pageNum, Integer uuid) {
        Page<Posts> page = new Page<>(pageNum, 10);
        QueryWrapper<Posts> postsQueryWrapper = new QueryWrapper<>();
        postsQueryWrapper.eq("status", 0);
        postsQueryWrapper.orderByDesc("create_time");

        if (!(uuid == null || uuid.equals(-1))) {
            postsQueryWrapper.eq("uuid", uuid);
        }
        List<Posts> posts = postsMapper.selectPage(page, postsQueryWrapper).getRecords();
        List<PostsVo> postsVos = new ArrayList<>();

        posts.forEach((post)->{
            postsVos.add(getPostsVo(post));
        });

        return postsVos;
    }

    @Override
    public PostsVo postSearchByPostId(Long post_id, Long uuid) {
        QueryWrapper<Posts> postsQueryWrapper = new QueryWrapper<>();
        postsQueryWrapper.eq("post_id", post_id);

        Posts posts = postsMapper.selectOne(postsQueryWrapper);
        if (uuid != -1) {
            posts.setReading(posts.getReading() + 1);
            postsMapper.update(posts, postsQueryWrapper);
        }

        return getPostsVo(posts);
    }

    @Override
    public List<List<PostsCommentVo>> postSearchCommentByPostId(Long post_id) {
        QueryWrapper<PostsComment> postsCommentQueryWrapper = new QueryWrapper<>();

        // 1.搜索出所有对应帖子的评论
        postsCommentQueryWrapper.eq("post_id", post_id);
        List<PostsComment> postsCommentList = postsCommentMapper.selectList(postsCommentQueryWrapper);

        // 2，搜索出所有的顶级评论
        List<PostsComment> rootPostsCommentList = new ArrayList<>();
        postsCommentList.forEach((comment)->{
            if (comment.getRoot_comment_id() == 0) {
                rootPostsCommentList.add(comment);
            }
        });

        // 3.根据顶级评论再搜索出所有的子评论放入列表中
        List<List<PostsCommentVo>> postsCommentVoList = new ArrayList<>();

        rootPostsCommentList.forEach((root_comment)->{
            List<PostsCommentVo> postsCommentVos = new ArrayList<>();
            postsCommentVos.add(getPostsCommentVo(root_comment, postsCommentList));
            postsCommentList.forEach((comment)->{
                if (Objects.equals(comment.getRoot_comment_id(), root_comment.getComment_id())) {
                    postsCommentVos.add(getPostsCommentVo(comment, postsCommentList));
                }
            });
            postsCommentVoList.add(postsCommentVos);
        });

        return postsCommentVoList;
    }

    private PostsCommentVo getPostsCommentVo(PostsComment postsComment, List<PostsComment> postsCommentList) {
        PostsCommentVo postsCommentVo = new PostsCommentVo();
        postsCommentVo.setComment_id(postsComment.getComment_id());
        postsCommentVo.setContent(postsComment.getContent());
        postsCommentVo.setUuid(postsComment.getUuid());
        postsCommentVo.setRoot_comment_id(postsComment.getRoot_comment_id());
        postsCommentVo.setComment_like_count(postsComment.getComment_like_count());

        // 1.根据评论所属uuid查询用户信息同时判断是否点赞
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", postsComment.getUuid());
        User user = userMapper.selectOne(userQueryWrapper);

        postsCommentVo.setUsername(user.getUsername());
        postsCommentVo.setAvatar(user.getAvatar());
        postsCommentVo.setSchool(user.getSchool());
        postsCommentVo.setComment_like_count(postsComment.getComment_like_count());

        QueryWrapper<PostsCommentThumbs> postsCommentThumbsQueryWrapper = new QueryWrapper<>();
        postsCommentThumbsQueryWrapper.eq("comment_id", postsComment.getComment_id());
        postsCommentThumbsQueryWrapper.eq("uuid", postsComment.getUuid());

        PostsCommentThumbs postsCommentThumbs = postsCommentThumbsMapper.selectOne(postsCommentThumbsQueryWrapper);
        if (postsCommentThumbs != null) {
            postsCommentVo.setIs_thumbs(1);
        } else {
            postsCommentVo.setIs_thumbs(0);
        }

        // 2.根据to_comment_id搜索出对应评论用户的名称(如果它不是根评论的话)
        Long to_comment_id = postsComment.getTo_comment_id();
        Long to_comment_uuid = 0L;
        if (to_comment_id != 0) {
            for (int item = 0; item < postsCommentList.size(); item ++) {
                if (Objects.equals(postsCommentList.get(item).getComment_id(), to_comment_id)) {
                    to_comment_uuid = postsComment.getUuid();
                    break;
                }
            }

            postsCommentVo.setTo_comment_uuid(to_comment_uuid);
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("uuid", to_comment_uuid);
            user = userMapper.selectOne(queryWrapper);
            postsCommentVo.setTo_comment_name(user.getUsername());
        }

        postsCommentVo.setCreate_time(postsComment.getCreate_time());
        return postsCommentVo;
    }

    @Override
    public boolean PostTop(Long post_id, boolean isAdmin) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您的权限不够，请联系管理员");
        }

        QueryWrapper<Posts> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("post_id", post_id);
        Posts post = postsMapper.selectOne(queryWrapper);

        Calendar calendar =  Calendar.getInstance();
        Date date = new Date();
        calendar.add(Calendar.YEAR, 100);
        Date futureDate =  calendar.getTime();

        post.setCreate_time(futureDate);
        return postsMapper.update(post, queryWrapper) != 0;

    }

    @Override
    public boolean PostTopCancel(Long post_id, boolean isAdmin) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您的权限不够，请联系管理员");
        }

        QueryWrapper<Posts> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("post_id", post_id);
        Posts post = postsMapper.selectOne(queryWrapper);
        post.setCreate_time(post.getUpdate_time());

        return postsMapper.update(post, queryWrapper) != 0;

    }

    @Override
    public boolean PostThumbsAddOrCancel(Long post_id, Long uuid, Integer status) {
        // 1.查看点赞关系表中该用户之前是否点赞过
        QueryWrapper<PostsThumbs> postsThumbsQueryWrapper = new QueryWrapper<>();
        postsThumbsQueryWrapper.eq("post_id", post_id);
        postsThumbsQueryWrapper.eq("uuid", uuid);
        PostsThumbs postsThumbs = postsThumbsMapper.selectOne(postsThumbsQueryWrapper);

        // 2.点赞了但是还发送点赞请求
        if (postsThumbs != null && status == 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "对不起，您已经点过赞了");
        }

        // 3.没点赞但是发送取消点赞请求
        if (postsThumbs == null && status == 1) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "对不起，您还没有点赞呢");
        }

        QueryWrapper<PostsThumbs> thumbsQueryWrapper = new QueryWrapper<>();
        QueryWrapper<Posts> postsQueryWrapper = new QueryWrapper<>();
        PostsThumbs postThumb = new PostsThumbs();

        postsQueryWrapper.eq("post_id", post_id);

        Posts post = postsMapper.selectOne(postsQueryWrapper);

        // 4.点赞
        if (status == 0) {

            post.setThumbs_up(post.getThumbs_up() + 1);

            postThumb.setUuid(uuid);
            postThumb.setPost_id(post_id);

            return postsMapper.update(post, postsQueryWrapper) == 1 && postsThumbsMapper.insert(postThumb) == 1;
        } // 5.取消点赞
        else {
            post.setThumbs_up(post.getThumbs_up() - 1);

            thumbsQueryWrapper.eq("post_id", post_id);
            thumbsQueryWrapper.eq("uuid", uuid);
            return postsMapper.update(post, postsQueryWrapper) == 1 && postsThumbsMapper.delete(thumbsQueryWrapper) == 1;
        }
    }

    @Override
    public boolean PostThumbsStatus(Long post_id, Long uuid) {
        QueryWrapper<PostsThumbs> postsThumbsQueryWrapper = new QueryWrapper<>();
        postsThumbsQueryWrapper.eq("post_id", post_id);
        postsThumbsQueryWrapper.eq("uuid", uuid);

        PostsThumbs postsThumbs = postsThumbsMapper.selectOne(postsThumbsQueryWrapper);
        if (postsThumbs == null) {
            return false;
        }

        return true;
    }

    @Override
    public boolean PostCommentAdd(PostsCommentRequest postsCommentRequest, Long uuid) {
        PostsComment postsComment = new PostsComment();
        postsComment.setContent(postsCommentRequest.getContent());
        postsComment.setPost_id(postsCommentRequest.getPost_id());
        postsComment.setRoot_comment_id(postsCommentRequest.getRoot_comment_id());
        postsComment.setUuid(uuid);
        postsComment.setTo_comment_id(postsCommentRequest.getTo_comment_id());
        postsComment.setCreate_time(new Date());

        return postsCommentMapper.insert(postsComment) == 1;
    }

    @Override
    public boolean PostCommentDelete(Long comment_id, boolean isAdmin, Long uuid) {
        QueryWrapper<PostsComment> postsCommentQueryWrapper = new QueryWrapper<>();
        postsCommentQueryWrapper.eq("comment_id", comment_id);
        PostsComment postsComment = postsCommentMapper.selectOne(postsCommentQueryWrapper);
        if (postsComment == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的评论，无法删除");
        } else {
            postsCommentMapper.delete(postsCommentQueryWrapper);
            if (!isAdmin && !Objects.equals(postsComment.getUuid(), uuid)) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您没有权限删除评论");
            }

            if (postsComment.getRoot_comment_id() == 0) {
                postsCommentQueryWrapper = new QueryWrapper<>();
                postsCommentQueryWrapper.eq("root_comment_id", postsComment.getComment_id());
                postsCommentMapper.delete(postsCommentQueryWrapper);
            }
            if (postsComment.getTo_comment_id() != 0) {
                postsCommentQueryWrapper = new QueryWrapper<>();
                postsCommentQueryWrapper.eq("to_comment_id", postsComment.getTo_comment_id());
                postsCommentMapper.delete(postsCommentQueryWrapper);
            }
        }

        return true;
    }

    @Override
    public boolean PostCommentAddOrCancel(Long comment_id, Long post_id, Integer status, Long uuid) {
        // 1.查看点赞关系表中该用户之前是否点赞过
        QueryWrapper<PostsCommentThumbs> postsCommentThumbsQueryWrapper = new QueryWrapper<>();
        postsCommentThumbsQueryWrapper.eq("comment_id", comment_id);
        postsCommentThumbsQueryWrapper.eq("uuid", uuid);

        PostsCommentThumbs postsCommentThumbs = postsCommentThumbsMapper.selectOne(postsCommentThumbsQueryWrapper);

        // 2.点赞了但是还发送点赞请求
        if (postsCommentThumbs != null && status == 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "对不起，您已经点赞过了");
        }

        // 3.没点赞但是发送取消点赞请求
        if (postsCommentThumbs == null && status == 1) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "对不起，您还没有点赞过呢");
        }

        postsCommentThumbsQueryWrapper = new QueryWrapper<>();
        QueryWrapper<PostsComment> postsCommentQueryWrapper = new QueryWrapper<>();
        postsCommentThumbs = new PostsCommentThumbs();

        postsCommentQueryWrapper.eq("comment_id", comment_id);

        PostsComment postsComment = postsCommentMapper.selectOne(postsCommentQueryWrapper);

        // 4.点赞
        if (status == 0) {
            postsComment.setComment_like_count(postsComment.getComment_like_count() + 1);

            postsCommentThumbs.setUuid(uuid);
            postsCommentThumbs.setComment_id(comment_id);
            postsCommentThumbs.setPost_id(post_id);

            return postsCommentMapper.update(postsComment, postsCommentQueryWrapper) == 1 && postsCommentThumbsMapper.insert(postsCommentThumbs) == 1;
        } // 5.取消点赞
        else {
            postsComment.setComment_like_count(postsComment.getComment_like_count() - 1);

            postsCommentThumbsQueryWrapper.eq("comment_id", comment_id);
            postsCommentThumbsQueryWrapper.eq("uuid", uuid);

            return postsCommentMapper.update(postsComment, postsCommentQueryWrapper) == 1 && postsCommentThumbsMapper.delete(postsCommentThumbsQueryWrapper) == 1;
        }
    }

    @Override
    public List<PostsVo> PostGetPostByProblemId(Long problem_id, Integer pageNum, Long status) {
        Page<Posts> page = new Page<>(pageNum, 20);
        QueryWrapper<Posts> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        queryWrapper.eq("status", status);

        List<Posts> posts_list = postsMapper.selectPage(page,queryWrapper).getRecords();
        List<PostsVo> postsVoList = new ArrayList<>();

        posts_list.forEach((post)->{
            PostsVo postsVo = getPostsVo(post);
            postsVoList.add(postsVo);
        });

        return postsVoList;
    }

    @Override
    public List<PostsVo> listPostVoByPage(PostsQueryRequest postsQueryRequest) {
        String keyword = postsQueryRequest.getKeyword();
        Integer pageNum = postsQueryRequest.getPageNum();
        Integer pageSize = postsQueryRequest.getPageSize();
        List<Integer> tagsList = postsQueryRequest.getTagsList();


        if (pageNum == null || pageSize == null || pageNum <= 0 || pageSize <= 0 || pageSize > 50) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数出现错误了！！！");
        }

        Page<Posts> postsPage = new Page<>(pageNum, pageSize);
        QueryWrapper<Posts> postsQueryWrapper = new QueryWrapper<>();
        List<Posts> postsList;
        List<PostsVo> postsVoList = new ArrayList<>();

        // 1.标签查询
        if (!tagsList.isEmpty()) {
            QueryWrapper<PostsTags> postsTagsQueryWrapper = new QueryWrapper<>();
            for (Integer tag : tagsList) {
                postsTagsQueryWrapper.eq("tag_id", tag);
            }
            postsTagsQueryWrapper.select("DISTINCT problem_id");
            List<PostsTags> records = postsTagsMapper.selectList(postsTagsQueryWrapper);
            records.forEach((record)->{
                postsQueryWrapper.eq("post_id", record.getPost_id()).or();
            });
        }

        if (!keyword.isEmpty()) {
            postsQueryWrapper.like("title", keyword).or();
            postsQueryWrapper.like("content", keyword);
        }

        postsList = postsMapper.selectPage(postsPage, postsQueryWrapper).getRecords();
        postsList.forEach((post)->{
            postsVoList.add(getPostsVo(post));
        });

        return postsVoList;
    }

    private PostsVo getPostsVo(Posts post) {
        PostsVo postsVo = new PostsVo();
        postsVo.setPost_id(post.getPost_id());
        postsVo.setTitle(post.getTitle());
        postsVo.setContent(post.getContent());
        postsVo.setThumbs_up(post.getThumbs_up());
        postsVo.setCreate_time(post.getCreate_time());
        postsVo.setReading(post.getReading());
        postsVo.setLocation(post.getLocation());
        postsVo.setUuid(post.getUuid());

        // 获取相关的帖子标签
        QueryWrapper<PostsTags> postsTagsQueryWrapper = new QueryWrapper<>();
        postsTagsQueryWrapper.eq("post_id", post.getPost_id());
        List<PostsTags> postsTags = postsTagsMapper.selectList(postsTagsQueryWrapper);
        List<String> tags_list = new ArrayList<>();
        postsTags.forEach((tag)->{
            tags_list.add(tag.getTag_name());
        });
        postsVo.setTag_list(tags_list);

        // 获取用户相关信息
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", post.getUuid());

        User user = userMapper.selectOne(queryWrapper);
        String author = user.getUsername();
        String avatar = user.getAvatar();
        String school = user.getSchool();
        String tag_first = "";
        if (user.getTags() != null) {
            tag_first = user.getTags().split(",")[0].substring(1);
        }

        postsVo.setAuthor(author);
        postsVo.setAvatar(avatar);
        postsVo.setSchool(school);
        postsVo.setTag_first(tag_first);

        //
        QueryWrapper<PostsThumbs> postsThumbsQueryWrapper = new QueryWrapper<>();
        postsThumbsQueryWrapper.eq("post_id", post.getPost_id());
        postsThumbsQueryWrapper.eq("uuid", post.getUuid());
        PostsThumbs postsThumbs = postsThumbsMapper.selectOne(postsThumbsQueryWrapper);
        if (postsThumbs != null) {
            postsVo.setIs_thumbs(0);
        } else {
            postsVo.setIs_thumbs(1);
        }

        // 获取帖子评论数量
        QueryWrapper<PostsComment> postsCommentQueryWrapper = new QueryWrapper<>();
        postsCommentQueryWrapper.eq("post_id", post.getPost_id());
        Long comment_num = postsCommentMapper.selectCount(postsCommentQueryWrapper);
        postsVo.setComment_num(comment_num);

        return postsVo;
    }
}




