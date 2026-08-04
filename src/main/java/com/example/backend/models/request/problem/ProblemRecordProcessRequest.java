package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemRecordProcessRequest implements Serializable {
    private static final long serialVersionUID = 7353220279882114760L;
    /**
     * 操作类型：0~6
     */
    private Integer type;

    /**
     * 旧行号
     */
    private Integer old_row;

    /**
     * 旧列号
     */
    private Integer old_col;

    /**
     * 新行号
     */
    private Integer new_row;

    /**
     * 新列号
     */
    private Integer new_col;

    /**
     * 内容
     */
    private String content;

    /**
     * 时间戳
     */
    private Long timestamp;
}