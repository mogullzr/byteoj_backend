package com.example.backend.models.vo.log;

import lombok.Data;

import java.io.Serializable;

@Data
public class LogSpecificInfo implements Serializable {
    /**
     * 内容
     */
    private String title;

    /**
     * 占比
     */
    private Integer scale;
}
