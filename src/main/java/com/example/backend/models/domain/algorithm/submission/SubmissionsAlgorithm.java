package com.example.backend.models.domain.algorithm.submission;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 评测表
 * @TableName submissions_algorithm
 */
@TableName(value ="submissions_algorithm")
@Data
public class SubmissionsAlgorithm implements Serializable {
    /**
     * 提交记录ID
     */
    @TableId(type = IdType.AUTO)
    private Long submission_id;

    /**
     * 用户id
     */
    private Long uuid;

    /**
     * 题目id
     */
    private Long problem_id;

    /**
     * 具体代码
     */
    private String source_code;

    /**
     * 代码长度
     */
    private Integer code_length;

    /**
     *
     */
    private Object languages;

    /**
     * 代码提交时间
     */
    private Date submit_time;

    /**
     * 代码提交状态
     */
    private Object results;

    /**
     * 得分
     */
    private Integer score;

    /**
     * 竞赛ID
     */
    private Long competition_id;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}