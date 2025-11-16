package com.example.backend.models.vo.search;

import lombok.Data;

@Data
public class AutoCompeteVo {
    /**
     * 搜索词语
     */
    private String keyword;

    /**
     * 搜出的关键词
     */
    private String raw;

    /**
     * ID
     */
    private String id;
}
