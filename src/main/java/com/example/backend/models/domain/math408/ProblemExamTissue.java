package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 考试试题信息
 * @TableName problem_exam_tissue
 */
@TableName(value ="problem_exam_tissue")
@Data
public class ProblemExamTissue {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 试题ID
     */
    private Long problem_id;

    /**
     * 考试ID
     */
    private Long exam_id;

    /**
     * 此题分值
     */
    private Integer score;

    /**
     * 0数学，1 408，2 政治，3算法
     */
    private Integer status;

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