package com.example.backend.models.domain.judge;

import lombok.Data;
import java.io.Serializable;

@Data
public class Judge implements Serializable {
    private static final long serialVersionUID = -4730324887729132478L;
    /**
     * 文件句柄ID
     */
    private String fileId;

    /**
     * 响应状态信息
     */
    private String status;

    /**
     * 输入信息
     */
    private String input;
    /**
     * AC时的具体的输出 or 错误的时候的报错信息
     */
    private String output;

    /**
     * 正确输出
     */
    private String correctOutput;
    /**
     * 时间
     */
    private Long time;

    /**
     * 内存
     */
    private Long memory;
}
