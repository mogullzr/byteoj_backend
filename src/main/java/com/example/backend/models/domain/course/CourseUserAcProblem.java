package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 用户AC题目基本信息
 * @TableName course_user_ac_problem
 */
@TableName(value ="course_user_ac_problem")
@Data
public class CourseUserAcProblem implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long course_ac_problem_id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 通过题目数量
     */
    private Long num;

    /**
     * 课程ID
     */
    private Long course_id;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}