package com.example.backend.models.request;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class JudgeRequest implements Serializable {
    private static final long serialVersionUID = 7352872329278065407L;
    /**
     * 如果是在专属的竞赛模式提交代码需要附加
     */
    private Long competition_id;
    /**
     * 竞赛试题索引编号
     */
    private String index;
    /**
     * 问题ID
     */
    private Long problem_id;
    /**
     * 题目难度
     */
    private String difficulty_name;
    /**
     * 语言
     */
    private String language;
    /**
     * 源代码
     */
    private String source_code;

    /**
     * 输入列表信息
     */
    private List<String> input_list;
    /**
     * 调试结果
     */
    private String result;

    /**
     * 分数
     */
    private Integer score;

    /**
     * 用户名
     */
    private String username;
    /**
     * 时间允许使用大小
     */
    private Integer time_used;
    /**
     * 内存允许使用大小
     */
    private Integer memory_used;
}
