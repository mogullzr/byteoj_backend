package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemExamRequest implements Serializable {
    private static final long serialVersionUID = 3255266297708235649L;
    /**
     * 试卷名称
     */
    private String source;

    /**
     * 面数
     */
    private Integer pageNum;

    /**
     * 每面数据条数
     */
    private Integer pageSize;
}
