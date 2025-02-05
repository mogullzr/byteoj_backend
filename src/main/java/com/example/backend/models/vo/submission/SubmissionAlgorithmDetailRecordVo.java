package com.example.backend.models.vo.submission;

import lombok.Data;

import java.io.Serializable;

@Data
public class SubmissionAlgorithmDetailRecordVo implements Serializable {
    private static final long serialVersionUID = -7533932583790901686L;

    /**
     * 时间开销
     */
    Integer time_used;

    /**
     * 内存开销
     */
    Integer memory_used;

    /**
     * 结果
     */
    String result;
}
