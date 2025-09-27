package com.example.backend.models.request.pay;

import lombok.Data;

import java.io.Serializable;

@Data
public class LantuPayRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 课程ID
     */
    private long course_id;
}
