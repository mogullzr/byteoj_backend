package com.example.backend.models.request.problem;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class ProblemAlgorithmRequest implements Serializable {
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
     * 标签列表
     */
    private List<Integer> tags_list;

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
     * 来源
     */
    private String source_name;


    /**
     * 题目描述
     */
    private String description;

    /**
     * 文件大小限制 mb
     */
    private Integer stdout_max;

    /**
     * 文件大小限制 mb
     */
    private Integer stderr_max;

    /**
     * CPU时间限制 秒
     */
    private Integer cpu_limit;

    /**
     * 内存大小限制 mb
     */
    private Integer memory_limit;

    /**
     * 线程数量限制
     */
    private Integer proc_limit;
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
