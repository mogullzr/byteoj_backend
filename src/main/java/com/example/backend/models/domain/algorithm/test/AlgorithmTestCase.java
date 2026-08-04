package com.example.backend.models.domain.algorithm.test;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @TableName algorithm_test_case
 */
@TableName(value ="algorithm_test_case")
@Data
public class AlgorithmTestCase implements Serializable {
    /**
     * ID
     */
    @TableId
    private Long id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 输入样例
     */
    private String input;

    /**
     * 输出样例
     */
    private String output;

    /**
     * 创建时间
     */
    private Date create_time;

    private Long generation_job_id;

    private String scale_type;

    private String input_hash;

    private String source_type;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;


}
