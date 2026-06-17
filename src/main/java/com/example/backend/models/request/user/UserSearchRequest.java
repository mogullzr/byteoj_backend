package com.example.backend.models.request.user;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class UserSearchRequest implements Serializable {
    private static final long serialVersionUID = -4148763162571913488L;
    /**
     * 关键词搜索
     */
    private String keyword;

    /**
     * 面数
     */
    private Integer pageNum;

    /**
     * 一面的数据量
     */
    private Integer pageSize;
}
