package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 用户每道题目的代码提交状态
 * @TableName course_user_ac_status
 */
@TableName(value ="course_user_ac_status")
@Data
public class CourseUserAcStatus implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long ac_status_id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 问题名称
     */
    private String problem_name;

    /**
     * 某课程某题目的通过人数
     */
    private Long course_problems_ac_num;

    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * 
     */
    private Integer is;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}