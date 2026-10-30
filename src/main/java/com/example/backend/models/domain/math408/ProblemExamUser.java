package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 考试参加用户信息表
 * @TableName problem_exam_user
 */
@TableName(value ="problem_exam_user")
@Data
public class ProblemExamUser {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 考试ID
     */
    private Long exam_id;

    /**
     * 用户ID
     */
    private Long uuid;

    private String username;

    /**
     * 选择题分值
     */
    private Integer score_option;

    /**
     * 主观题得分
     */
    private Integer score_subjective;

    /**
     * 0表示当前报名待提交，1表示已提交并失效(用于区分多次答卷)
     */
    private Integer status;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 更新时间
     */
    private Date update_date;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}
