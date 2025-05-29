package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 课程问题用户AC情况
 * @TableName course_problems_user_ac
 */
@TableName(value ="course_problems_user_ac")
public class CourseProblemsUserAc implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long user_num_id;

    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * AC题目数量
     */
    private Long ac_num;

    /**
     * AC题目数量人数
     */
    private Long num;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    public Long getUser_num_id() {
        return user_num_id;
    }

    /**
     * ID
     */
    public void setUser_num_id(Long user_num_id) {
        this.user_num_id = user_num_id;
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
     * AC题目数量
     */
    public Long getAc_num() {
        return ac_num;
    }

    /**
     * AC题目数量
     */
    public void setAc_num(Long ac_num) {
        this.ac_num = ac_num;
    }

    /**
     * AC题目数量人数
     */
    public Long getNum() {
        return num;
    }

    /**
     * AC题目数量人数
     */
    public void setNum(Long num) {
        this.num = num;
    }
}