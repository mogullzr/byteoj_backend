package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.course.Course;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.CourseRequest;
import com.example.backend.models.request.CourseUserRequest;
import com.example.backend.models.vo.course.CourseProblemsVo;
import com.example.backend.service.course.CourseService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/course")
@Slf4j
@Controller

public class CourseController {

    @Resource
    private UserService userService;
    @Resource
    private CourseService courseService;

    @AccessLimit(seconds = 3, maxCount =  15, needLogin = false)
    @PostMapping("/search/pageNum")
    private BaseResponse<List<Course>> courseSearchByPageNum(Integer pageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        List<Course> courseList = courseService.courseSearchByPageNum(pageNum);

        return ResultUtils.success(courseList);
    }

    @AccessLimit(seconds = 3, maxCount =  25, needLogin = true)
    @PostMapping("/search/courseId")
    private BaseResponse<Course> courseSearchByCourseId(Long CourseId, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        Course course = courseService.courseSearchByCourseId(CourseId);

        return ResultUtils.success(course);
    }

    @AccessLimit(seconds = 3, maxCount =  30, needLogin = true)
    @PostMapping("/search/problems")
    private BaseResponse<List<CourseProblemsVo>> courseSearchProblemsByCourseId(Long CourseId, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();
        List<CourseProblemsVo> courseProblemsVos = courseService.courseSearchProblemsByCourseId(CourseId, uuid);

        return ResultUtils.success(courseProblemsVos);
    }

    @AccessLimit(seconds = 3, maxCount =  30, needLogin = true)
    @PostMapping("/search/rank")
    private BaseResponse<Long> courseSearchRankByCourseId(Long CourseId, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        Long result = courseService.courseSearchRankByCourseId(CourseId, uuid);

        return ResultUtils.success(result);
    }
    @AccessLimit(seconds = 3, maxCount =  10, needLogin = true)
    @PostMapping("/admin/add")
    private BaseResponse<Boolean> courseAdminAdd(@RequestBody CourseRequest courseRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        String userAccount = loginUser.getAccount();
        boolean isAdmin = userService.isAdmin(httpServletRequest);

        boolean result = courseService.courseAdminAdd(courseRequest, isAdmin, userAccount);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount =  12, needLogin = true)
    @PostMapping("/admin/delete")
    private BaseResponse<Boolean> courseAdminDelete(Long courseId, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = courseService.courseAdminDelete(courseId, isAdmin);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount =  15, needLogin = true)
    @PostMapping("/admin/problem/set")
    private BaseResponse<Boolean> courseAdminProblemSet(@RequestBody CourseRequest courseRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        boolean result = courseService.courseAdminProblemSet(courseRequest, isAdmin);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount =  10, needLogin = true)
    @PostMapping("/admin/user/set")
    private BaseResponse<Boolean> courseAdminUserSet(@RequestBody CourseUserRequest courseUserRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Long course_id = courseUserRequest.getCourse_id();
        List<Long> user_list = courseUserRequest.getUser_list();
        boolean result = courseService.courseAdminUserSet(course_id, user_list, isAdmin);

        return ResultUtils.success(result);
    }
}
