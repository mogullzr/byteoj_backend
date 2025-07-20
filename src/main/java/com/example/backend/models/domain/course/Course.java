package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @TableName course
 */
@TableName(value ="course")
@Data
public class Course implements Serializable {
    /**
     * 课程id
     */
    @TableId
    private Long course_id;

    /**
     * 课程名称
     */
    private String course_title;

    /**
     * 课程标题描述
     */
    private String course_title_description;

    /**
     * 创建者用户名
     */
    private String create_name;

    /**
     * 课程头像地址
     */
    private String avatar;

    /**
     * 参加人数
     */
    private Long num;

    /**
     * 课程开始时间
     */
    private Date start_time;

    /**
     * 结束时间
     */
    private Date end_time;

    /**
     * 逻辑删除
     */
    private Integer is_delete;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 课程描述
     */
    private String course_description;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}