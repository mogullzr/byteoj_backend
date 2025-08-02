package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;

@Data
public class RBACApiRequest implements Serializable {
    private static final long serialVersionUID = 6136246368006216850L;

    /**
     * api地址
     */
    private String api_url;

    /**
     * api的描述信息
     */
    private String description;

    /**
     * api的类型
     */
    private Integer api_type;
}
