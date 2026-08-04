package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;

@Data
public class RBACUserApiVo implements Serializable {
    private static final long serialVersionUID = -8421498750307987988L;

    /**
     * 权限ID
     */
    private Integer api_id;

    /**
     * api地址
     */
    private String api_url;

    /**
     * 描述信息
     */
    private String description;
}
