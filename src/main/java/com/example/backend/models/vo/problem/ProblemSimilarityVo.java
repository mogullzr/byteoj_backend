package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ProblemSimilarityVo implements Serializable {
    private static final long serialVersionUID = -6572284450854189317L;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 相似试题列表，一般是5个
     */
    private List<ProblemMath408BankVo> top5_similarity;
}
