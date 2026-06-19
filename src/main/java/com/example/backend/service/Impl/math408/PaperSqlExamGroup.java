package com.example.backend.service.Impl.math408;

import com.example.backend.models.domain.math408.ProblemMath408Bank;
import lombok.Data;

import java.util.List;

@Data
public class PaperSqlExamGroup {
    private String examName;
    private List<ProblemMath408Bank> problems;
    private Integer totalScore;
}
