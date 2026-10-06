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
     * 本次交卷的进度标识。前端为每次交卷生成新的随机值，后端只允许
     * 当前登录用户查询自己对应的进度。
     */
    private String progress_token;

    /**
     * 选择题答案列表
     */
    private List<ProblemSimpleInfo> answers;
}
