package com.example.backend.models.request.competition;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompetitionRankRequest implements Serializable {
    private static final long serialVersionUID = -9095410113278572367L;
    /**
     * 当前页数
     */
    private Integer current;

    /**
     * 每页的条数
     */
    private Integer size;

    /**
     * 关键词搜索
     */
    private String keyword;

}
