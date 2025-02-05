package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemUserLastVo implements Serializable {
    private static final long serialVersionUID = -5188553991272412312L;

    /**
     * 题目名称
     */
    private String problem_name;

    /**
     * 题目链接,可能是题库的题目链接，也可能是竞赛的题目链接
     */
    private String problem_url;
}
