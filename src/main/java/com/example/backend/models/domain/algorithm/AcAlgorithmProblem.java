package com.example.backend.models.domain.algorithm;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * AC情况存储表
 * @TableName ac_algorithm_problem
 */
@TableName(value ="ac_algorithm_problem")
@Data
public class AcAlgorithmProblem implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 题目id
     */
    private Long problem_id;

    /**
     * 用户id
     */
    private Long user_id;

    /**
     * 创建人时间
     */
    private Date create_time;

    /**
     * 状态,0表示默认，1表示AC,2表示错误
     */
    private Integer status;

    /**
     * 逻辑删除
     */
    @TableLogic
    private Integer is_delete;

    /**
     * 题目难度
     */
    private String difficulty_name;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}