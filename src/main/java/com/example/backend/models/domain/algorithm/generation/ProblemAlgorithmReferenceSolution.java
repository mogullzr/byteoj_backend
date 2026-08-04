package com.example.backend.models.domain.algorithm.generation;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("problem_algorithm_reference_solution")
public class ProblemAlgorithmReferenceSolution implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long problem_id;
    private String language;
    private String source_code;
    private String source_code_hash;
    private String source_type;
    private String status;
    private String validation_summary;
    private Integer validated_case_count;
    private Long validated_by;
    private Date validated_at;
    private String note;
    private Long create_by;
    private Long update_by;
    private Date create_time;
    private Date update_time;
    private Integer is_deleted;
}
