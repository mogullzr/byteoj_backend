package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class ProblemExamEditRequest implements Serializable {
    private static final long serialVersionUID = 8975845580227690106L;
    /**
     * 考试ID
     */
    private Long exam_id;

    /**
     * 考试名称
     */
    private String exam_name;

    /**
     * 考试类型（3种选一种）
     */
    private Integer status;

    /**
     * 密码(可选)
     */
    private String password;

    /**
     * 考试开始时间
     */
    private Long start_date;

    /**
     * 考试结束时间
     */
    private Long end_date;

    /**
     * 照片
     */
    private String picture;

    /**
     * 时间(min)
     */
    private Integer time;

    private String keyword;

    private Integer default_score;

    /**
     * 试题信息
     */
    private List<ProblemExamProblemInfo> problemExamProblemInfos;
}
