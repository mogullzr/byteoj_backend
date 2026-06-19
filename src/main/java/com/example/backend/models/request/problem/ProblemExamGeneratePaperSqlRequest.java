package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Data
public class ProblemExamGeneratePaperSqlRequest implements Serializable {
    private static final long serialVersionUID = -6381658831260217586L;

    private String keyword;

    private List<Integer> statusList;

    private Integer defaultScore;

    private Map<String, Integer> optionTypeScoreMap;

    private Integer examStatus;

    private Integer time;

    private String author;

    private String picture;

    private String startTime;

    private String endTime;

    private Integer minQuestionCount;

    private Boolean overwriteTissues;
}
