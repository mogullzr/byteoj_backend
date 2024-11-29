package com.example.backend.models.domain.course;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 课程专栏信息
 * @TableName course_problems
 */
@TableName(value ="course_problems")
@Data
public class CourseProblems implements Serializable {
    /**
     * 课程问题ID
     */
    @TableId(type = IdType.AUTO)
    private Long course_problem_id;

    /**
     * 每个专栏的标题名称
     */
    private String course_problems;

    /**
     * 每个专栏里的类别名称
     */
    private String problem_algorithm_type;

    /**
     * 每个专栏类别的题目ID列表
     */
    private String problem_id_list;

    /**
     * 课程id
     */
    private Long course_id;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     * 逻辑删除
     */
    private Long is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}