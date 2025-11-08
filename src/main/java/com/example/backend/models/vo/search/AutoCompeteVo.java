package com.example.backend.models.vo.search;

import lombok.Data;

@Data
public class AutoCompeteVo {
    /**
     * 搜出的关键词
     */
    private String raw;

    /**
     * ID
     */
    private String id;
}
