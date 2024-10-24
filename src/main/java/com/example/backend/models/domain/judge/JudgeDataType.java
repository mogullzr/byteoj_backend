package com.example.backend.models.domain.judge;

import lombok.Data;

import java.io.Serializable;

@Data
public class JudgeDataType implements Serializable {
    private static final long serialVersionUID = 6981884242173033259L;

    /**
     * 输入数据
     */
    private String input;
    /**
     * 输出结果
     */
    private String output;

    /**
     * 使用时间
     */
    private Long time;

    /**
     * 使用内存
     */
    private Long memory;

    /**
     * ???
     */
    private Long fileId;
}
