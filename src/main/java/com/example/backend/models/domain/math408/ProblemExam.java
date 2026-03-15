package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 考试
 * @TableName problem_exam
 */
@TableName(value ="problem_exam")
@Data
public class ProblemExam {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 考试名称
     */
    private String exam_name;

    /**
     * 密码
     */
    private String password;

    /**
     * 作者
     */
    private String author;

    /**
     * 图片
     */
    private String picture;

    /**
     * 参加人数
     */
    private Integer joins;

    /**
     * 开始时间
     */
    private Date start_time;

    /**
     * 结束时间
     */
    private Date end_time;

    /**
     * 时间(min)
     */
    private Integer time;
    /**
     * 0表示自由考试(可多次提交)，1表示开启监控(仅允许提交一次)
     */
    private Integer status;

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
    private Integer is_delete;
}