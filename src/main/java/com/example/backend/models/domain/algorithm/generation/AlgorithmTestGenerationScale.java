package com.example.backend.models.domain.algorithm.generation;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("algorithm_test_generation_scale")
public class AlgorithmTestGenerationScale implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long job_id;
    private String scale_type;
    private Integer requested_count;
    private Integer generated_count;
    private Integer output_completed_count;
    private String constraints_text;
    private Long random_seed;
    private String status;
    private String generator_language;
    private String generator_protocol_version;
    private String generator_code;
    private String generator_code_hash;
    private String ai_assumptions;
    private String ai_coverage;
    private Integer current_batch;
    private Integer total_batches;
    private String error_message;
    private Date created_at;
    private Date updated_at;
}
