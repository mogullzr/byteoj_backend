package com.example.backend.models.request.work;

import lombok.Data;

import java.io.Serializable;

@Data
public class GoodSearchRequest implements Serializable {
    private static final long serialVersionUID = 2570689672889083284L;

    /**
     * 搜索关键词
     */
    private String keyword;

    /**
     *
     */
    private Integer pageNum;
}
