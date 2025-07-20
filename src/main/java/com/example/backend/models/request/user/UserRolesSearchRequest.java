package com.example.backend.models.request.user;

import lombok.Data;

@Data
public class UserRolesSearchRequest {
    /**
     * 页数
     */
    private Integer pageNum;

    /**
     * 每页的数量
     */
    private Integer pageSize;

    /**
     * 关键词
     */
    private String keyword;

}
