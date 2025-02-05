package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 某课程某题目的通过人数
 * @TableName course_problems_ac_num
 */
@TableName(value ="course_problems_ac_num")
@Data
public class CourseProblemsAcNum implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long ac_num_id;

    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 通过题目的数量
     */
    private Integer num;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}