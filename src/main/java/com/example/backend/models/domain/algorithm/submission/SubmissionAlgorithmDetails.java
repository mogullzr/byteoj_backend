package com.example.backend.models.domain.algorithm.submission;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 评测详细结果表
 * @TableName submission_algorithm_details
 */
@TableName(value ="submission_algorithm_details")
@Data
public class SubmissionAlgorithmDetails implements Serializable {
    /**
     * 详细表id
     */
    @TableId(type = IdType.AUTO)
    private Long detail_id;

    /**
     * 提交记录ID
     */
    private Long submission_id;

    /**
     * 运行时间
     */
    private Integer time_used;

    /**
     * 内存使用
     */
    private Long memory_used;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}