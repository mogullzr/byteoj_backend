package com.example.backend.models.domain.algorithm.probleminfo;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * algorithm问题信息关联表
 * @TableName problem_algorithm_limit
 */
@TableName(value ="problem_algorithm_limit")
@Data
public class ProblemAlgorithmLimit implements Serializable {

    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 问题id
     */
    private Long problem_id;

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

    /**
     * 创建人id
     */
    private Long create_by_id;

    /**
     * 创建人name
     */
    private String create_by_name;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 修改时间
     */
    private Date update_time;

    /**
     * 修改人id
     */
    private Long update_by_id;

    /**
     * 修改人name
     */
    private String update_by_name;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 逻辑删除，0表示正常，1表示竞赛隐藏
     */
    private Integer is_delete;

    private static final long serialVersionUID = -9063267136119157378L;
}