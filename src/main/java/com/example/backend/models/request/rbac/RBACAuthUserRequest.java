package com.example.backend.models.request.rbac;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class RBACAuthUserRequest implements Serializable {
    private static final long serialVersionUID = 4361403495290027738L;

    /**
     * 需要授权的用户uuid
     */
    private Long uuid;

    /**
     * 需要授权的role_id
     */
    private List<Integer> role_id;
}
