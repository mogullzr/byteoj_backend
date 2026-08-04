package com.example.backend.models.domain.algorithm.generation;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("algorithm_test_case_staging")
public class AlgorithmTestCaseStaging implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long job_id;
    private Long scale_id;
    private String scale_type;
    private Integer case_index;
    private String input;
    private String output;
    private String input_hash;
    private String output_hash;
    private Long input_bytes;
    private Long output_bytes;
    private String status;
    private String error_message;
    private Date created_at;
    private Date updated_at;
}
