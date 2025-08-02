package com.example.backend.models.request;

import com.example.backend.models.vo.course.CourseProblemsVo;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class CourseRequest implements Serializable {
    private static final long serialVersionUID = -2768987593463156485L;
    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * 课程标题
     */
    private String course_title;

    /**
     * 课程标题描述
     */
    private String course_title_description;

    /**
     * 创建用户名称
     */
    private String create_name;

    /**
     * 课程头像
     */
    private String avatar;

    /**
     * 开始时间,默认为永久
     */
    private Date start_time;

    /**
     * 结束时间，默认为永久
     */
    private Date end_time;

    /**
     * 专栏题目信息列表
     */
    private List<CourseProblemsVo> courseProblemsList;
}
