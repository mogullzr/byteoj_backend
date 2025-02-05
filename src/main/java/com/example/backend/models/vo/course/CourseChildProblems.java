package com.example.backend.models.vo.course;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CourseChildProblems implements Serializable {
    private static final long serialVersionUID = 439533249384115297L;

    /**
     * 专栏类别名称
     */
    private String problem_algorithm_type;

    /**
     * 题目信息列表
     */
    private List<CourseProblem> courseProblemList;
}
