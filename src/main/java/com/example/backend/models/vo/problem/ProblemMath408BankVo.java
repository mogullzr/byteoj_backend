package com.example.backend.models.vo.problem;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Data
public class ProblemMath408BankVo implements Serializable {
    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 名称
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
     * 修改时间
     */
    private Date update_time;

    /**
     * 0表示该题目为数学类型题目，1表示该题目为408考研试题
     */
    private Integer status;

    /**
     * 标签列表
     */
    private List<String> tag_list;

    /**
     * 0表示简答题，1表示单选题，2表示多选题，3表示编程大题
     */
    private Integer option_type;

    /**
     * 选项json
     */
    private List<Map<String, String>> options;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
