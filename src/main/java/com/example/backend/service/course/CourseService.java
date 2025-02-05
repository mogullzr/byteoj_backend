package com.example.backend.service.course;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.course.Course;
import com.example.backend.models.request.CourseRequest;
import com.example.backend.models.vo.course.CourseProblemsVo;

import java.util.List;

/**
* @author 89856
* @description 针对表【course】的数据库操作Service
* @createDate 2024-11-03 16:09:38
*/
public interface CourseService extends IService<Course> {
    /**
     * 通过面数获取课程列表信息
     *
     * @param PageNum 面数
     * @return 课程列表
     */
    List<Course> courseSearchByPageNum(Integer pageNum);

    /**
     * 通过课程ID获取课程基本信息
     *
     * @param courseId 课程ID
     * @return 课程基本信息
     */
    Course courseSearchByCourseId(Long courseId);


    /**
     * 根据课程ID获取专栏问题信息列表
     *
     * @param courseId 课程ID
     * @param uuid 用户ID
     * @return 专栏课程信息列表
     */
    List<CourseProblemsVo> courseSearchProblemsByCourseId(Long courseId, Long uuid);

    /**
     * 管理员是否添加成功
     *
     * @param courseRequest 前端课程添加请求
     * @param isAdmin 是否为管理员
     * @param userAccount 用户账户
     * @return 管理员是否添加成功
     */
    boolean courseAdminAdd(CourseRequest courseRequest, boolean isAdmin, String  userAccount);

    /**
     * 管理员删除课程是否成功
     *
     * @param courseId 课程ID
     * @param isAdmin 是否为管理员
     * @return 课程是否删除成功
     */
    boolean courseAdminDelete(Long courseId, boolean isAdmin);

    /**
     * 是否设置课程专栏题目列表成功
     *
     * @param courseRequest 前段题目信息请求
     * @param isAdmin 是否为管理员
     * @return 是否设置课程专栏题目列表成功
     */
    boolean courseAdminProblemSet(CourseRequest courseRequest, boolean isAdmin);


    /**
     * 批量设置用户到课程当中
     *
     * @param user_list 用户ID列表
     * @param isAdmin 是否为管理员
     * @return 是否设置成功
     */
    boolean courseAdminUserSet(Long course_id, List<Long> user_list, boolean isAdmin);

    /**
     * 查询当前用户在某课程中的排名
     *
     * @param courseId 课程ID
     * @param uuid 用户ID
     * @return 当前用户的名次
     */
    Long courseSearchRankByCourseId(Long courseId, Long uuid);
}
