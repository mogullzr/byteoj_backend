package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class RBACAuthCreateRequest implements Serializable {
    private static final long serialVersionUID = 1930446017448606025L;

    /**
     * 权限名称
     */
    private String auth_name;


    /**
     * api列表
     */
    private List<Integer> api_id_list;
}
