package com.example.backend.models.vo.log;

import cn.hutool.core.date.DateTime;
import lombok.Data;

import java.io.Serializable;

@Data
public class UserRankInfo implements Serializable {
    /**
     * 用户UUID
     */
    private Long uuid;

    /**
     * 用户名
     */
    private String username;

    /**
     * 访问次数(所有)
     */
    private Integer browse_total;

    /**
     * 最后活跃时间
     */
    private DateTime endDate;
}
