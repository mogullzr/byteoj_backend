package com.example.backend.models.request.problem;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProblemWrongBookUpdateRequest implements Serializable {
    private static final long serialVersionUID = -6636118317853539347L;

    /**
     * 错题本记录ID
     */
    private Long id;

    /**
     * 0待复习，1已掌握
     */
    private Integer mastery_status;
}
