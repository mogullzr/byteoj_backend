package com.example.backend.models.vo.course;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CourseProblemsVo implements Serializable {
    private static final long serialVersionUID = 8441468761079466354L;

    /**
     * 专栏标题类型
     */
    private String problems_type;

    /**
     * 专栏中用户通过题目数量
     */
    private Long ac_num;

    /**
     * 专栏题目总数量
     */
    private Long problem_num;

    /**
     * 课程问题列表
     */
    private List<CourseChildProblems> courseProblemList;
}
