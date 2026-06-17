package com.example.backend.models.request.competition;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompetitionSearchRequest implements Serializable {
    private static final long serialVersionUID = 942978060352995917L;
    /**
     * 面数
     */
    private Integer pageNum;
}
