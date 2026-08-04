package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;

@Data
public class RBACInfoSearchRequest implements Serializable {
    private static final long serialVersionUID = 2108648740490863760L;

    /**
     * 用户名关键词
     */
    private String keyword;

    /**
     * 面数
     */
    private Integer pageNum;

    /**
     * 每面数量
     */
    private Integer pageSize;

}
