package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/** A private, paper-wide review note belonging to one submitted answer sheet. */
@TableName("problem_exam_review_guide")
@Data
public class ProblemExamReviewGuide {
    @TableId(type = IdType.AUTO)
    private Long id;

    private Long exam_user_id;

    private Long uuid;

    private String review_guide;

    private Date create_date;

    private Date update_date;

    private Integer is_delete;
}
