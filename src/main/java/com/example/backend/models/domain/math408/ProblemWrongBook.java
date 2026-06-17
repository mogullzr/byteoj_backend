package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 错题本
 * @TableName problem_wrong_book
 */
@TableName(value = "problem_wrong_book")
@Data
public class ProblemWrongBook {

    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 题目ID
     */
    private Long problem_id;

    /**
     * 题目名称快照
     */
    private String problem_name;

    /**
     * 0数学，1 408，2 政治，3算法
     */
    private Integer problem_status;

    /**
     * 0简答，1单选，2多选，3填空，4算法
     */
    private Integer option_type;

    /**
     * 最近来源考试ID
     */
    private Long exam_id;

    /**
     * 最近来源用户考试记录ID
     */
    private Long exam_user_id;

    /**
     * 最近一次作答
     */
    private String latest_answer;

    /**
     * 最近一次得分
     */
    private Integer latest_score;

    /**
     * 题目总分
     */
    private Integer total_score;

    /**
     * 累计错误次数
     */
    private Integer wrong_count;

    /**
     * 0待复习，1已掌握
     */
    private Integer mastery_status;

    /**
     * 最近一次AI建议
     */
    private String latest_ai_advise;

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
