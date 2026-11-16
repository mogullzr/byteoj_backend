package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 考试提交记录表
 * @TableName problem_exam_record
 */
@TableName(value ="problem_exam_record")
@Data
public class ProblemExamRecord {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 用户报名记录ID
     */
    private Long exam_user_id;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 答案
     */
    private String answer;

    private Integer score;

    /**
     * AI建议
     */
    private String ai_advise;

    private String confidence;

    private Boolean is_person;

    /** AI model and token accounting for this question (DeepSeek usage when applicable). */
    private String ai_model;
    private Integer prompt_tokens;
    private Integer prompt_cache_hit_tokens;
    private Integer prompt_cache_miss_tokens;
    private Integer completion_tokens;
    private Integer total_tokens;
    /** Estimated RMB cost using the official DeepSeek-Flash RMB token prices. */
    private java.math.BigDecimal ai_cost_cny;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 更新时间
     */
    private Date update_date;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}
