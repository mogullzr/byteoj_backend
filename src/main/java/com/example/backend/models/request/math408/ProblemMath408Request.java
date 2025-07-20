package com.example.backend.models.request.math408;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Data
public class ProblemMath408Request implements Serializable {
    /**
     *
     */
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
     * 选项json
     */
    private List<Map<String, String>> options;

    /**
     * 标签列表
     */
    private List<Long> tag_list;
}