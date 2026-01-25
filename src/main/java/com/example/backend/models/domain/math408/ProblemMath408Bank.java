package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * math题目基本信息表
 * @TableName problem_math408_bank
 */
@TableName(value ="problem_math408_bank")
@Data
public class ProblemMath408Bank {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Long problem_id;

    /**
     * 简称
     */
    private String problem_name;

    /**
     * 难度
     */
    private String difficulty_name;

    /**
     * 来源
     */
    private String source_name;

    /**
     * 题目描述
     */
    private String description;

    /**
     * 如果是选择题，则有多个选项（反之则为null）
     */
    private String options;

    /**
     * 正确答案（各个类型题目的答案格式不同）
     */
    private String correct_answer;

    /**
     * 解析
     */
    private String analysis;

    /**
     * 修改人id
     */
    private Long create_by_id;

    /**
     * 修改人name
     */
    private String create_by_name;

    /**
     * 修改时间
     */
    private Date create_time;

    /**
     * 修改人id
     */
    private Long update_by_id;

    /**
     * 修改人name
     */
    private String update_by_name;

    /**
     * 修改时间
     */
    private Date update_time;

    /**
     * 0表示该题目为数学类型题目，1表示该题目为408考研试题
     */
    private Integer status;

    /**
     * 0表示简答题，1表示单选题，2表示多选题，3表示填空题
     */
    private Integer option_type;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}