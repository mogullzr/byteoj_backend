package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/** Per-question private review annotations for a submitted exam sheet. */
@TableName("problem_exam_annotation")
@Data
public class ProblemExamAnnotation {
    @TableId(type = IdType.AUTO)
    private Long id;

    private Long exam_user_id;

    private Long problem_id;

    private Long uuid;

    private String annotation;

    private Date create_date;

    private Date update_date;

    private Integer is_delete;
}
