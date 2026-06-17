package com.example.backend.models.request.math408;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ProblemExamSubmitRequest implements Serializable {
    private static final long serialVersionUID = 1109626832147752846L;

    /**
     * 考试ID
     */
    private Long exam_id;
    /**
     * 选择题答案列表
     */
    private List<ProblemSimpleInfo> answers;
}
