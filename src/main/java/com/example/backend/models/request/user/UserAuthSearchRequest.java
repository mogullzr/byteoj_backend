package com.example.backend.models.request.user;

import lombok.Data;

import java.io.Serializable;

@Data
public class UserAuthSearchRequest implements Serializable {
    private static final long serialVersionUID = 8730353782057804409L;
    /**
     * 关键词
     */
    private String keyword;
    /**
     * 面数
     */
    private Integer pageNum;
    /**
     * 每页的数量
     */
    private Integer pageSize;
}
