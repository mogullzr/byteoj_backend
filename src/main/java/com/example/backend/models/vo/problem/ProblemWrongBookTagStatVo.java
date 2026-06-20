package com.example.backend.models.vo.problem;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProblemWrongBookTagStatVo implements Serializable {
    private static final long serialVersionUID = 7510552440672752688L;

    private String name;

    private Integer value;
}
