package com.example.backend.models.domain.algorithm.generation;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("algorithm_test_generation_job")
public class AlgorithmTestGenerationJob implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long problem_id;
    private Long source_job_id;
    private Long creator_uuid;
    private String model;
    private String status;
    private String current_stage;
    private Integer progress_percent;
    private String write_mode;
    private Boolean generate_expected_output;
    private Long reference_solution_id;
    private Integer preview_chars;
    private Integer requested_case_count;
    private Integer generated_case_count;
    private Integer output_completed_count;
    private Integer published_case_count;
    private Integer duplicate_case_count;
    private Long generated_input_bytes;
    private Long generated_output_bytes;
    private Integer retry_count;
    private Integer version;
    private String error_code;
    private String error_message;
    private Date created_at;
    private Date queued_at;
    private Date started_at;
    private Date finished_at;
    private Date updated_at;
}
