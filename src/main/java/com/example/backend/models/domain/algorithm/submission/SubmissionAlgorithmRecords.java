package com.example.backend.models.domain.algorithm.submission;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @TableName submission_algorithm_records
 */
@TableName(value ="submission_algorithm_records")
@Data
public class SubmissionAlgorithmRecords implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 提交记录ID
     */
    private Long submission_id;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 逻辑删除
     */
    @TableLogic
    private Integer is_delete;

    /**
     * 时间
     */
    private Integer time_used;

    /**
     * 允许状态
     */
    private String result;

    /**
     * 空间花销
     */
    private Integer memory_used;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}