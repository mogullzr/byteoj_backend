package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 
 * @TableName course_problems_type
 */
@TableName(value ="course_problems_type")
public class CourseProblemsType implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long type_id;

    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * 课程名称
     */
    private String course_problems;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    public Long getType_id() {
        return type_id;
    }

    /**
     * ID
     */
    public void setType_id(Long type_id) {
        this.type_id = type_id;
    }

    /**
     * 课程ID
     */
    public Long getCourse_id() {
        return course_id;
    }

    /**
     * 课程ID
     */
    public void setCourse_id(Long course_id) {
        this.course_id = course_id;
    }

    /**
     * 课程名称
     */
    public String getCourse_problems() {
        return course_problems;
    }

    /**
     * 课程名称
     */
    public void setCourse_problems(String course_problems) {
        this.course_problems = course_problems;
    }
}