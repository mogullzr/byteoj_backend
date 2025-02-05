package com.example.backend.models.vo.problem;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.models.auth.In;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class ProblemAlgorithmBankVo implements Serializable {
    /**
     * 竞赛模式下的索引编号
     */
    private String index;
    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 简称
     */
    private String short_name;

    /**
     * 英文名字
     */
    private String english_name;

    /**
     * 中文名字
     */
    private String chinese_name;

    /**
     * 难度
     */
    private String difficulty_name;

    /**
     * 来源
     */
    private String source;

    /**
     * AC人数
     */
    private Integer ac_total;

    /**
     * 尝试次数
     */
    private Integer test_total;

    /**
     * AC状态
     */
    private Integer status;

    /**
     * 算法标签
     */
    private List<String> algorithm_tags;

    /**
     * 时间限制
     */
    private Integer cpu_limit;

    /**
     * 空间限制
     */
    private Integer memory_limit;

    /**
     * 题目描述
     */
    private String description;

    /**
     * 视频链接
     */
    private String url;

    /**
     * 总页数
     */
    private Integer pages;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
