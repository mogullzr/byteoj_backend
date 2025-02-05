package com.example.backend.models.domain.algorithm.probleminfo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * algorithm问题细节信息表
 * @TableName problem_algorithm_bank_detailed
 */
@TableName(value ="problem_algorithm_bank_detailed")
@Data
public class ProblemAlgorithmBankDetailed implements Serializable {
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
     * 中文md
     */
    private String md_cn;

    /**
     * 英文md
     */
    private String md_en;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}