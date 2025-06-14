package com.example.backend.models.vo.log;

import cn.hutool.core.date.DateTime;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class LogAdminBasicInfo implements Serializable {
    /**
     * 进入访问用户数
     */
    private Integer user_browse;

    /**
     * 操作日志数
     */
    private Integer log_operations_total;

    /**
     * 异常日志数
     */
    private Integer log_exception_total;

    /**
     * 总用户数
     */
    private Integer user_total;

    /**
     * 活跃用户数
     */
    private Integer active_total;

    /**
     * 新增用户数
     */
    private Integer new_user_total;

    /**
     * 平均响应时间
     */
    private Double avg_response_milliseconds;

    /**
     * 访问高峰期:开始时间戳
     */
    private Long start_time;

    /**
     * 访问高峰期:开始时间戳
     */
    private Long end_time;

    /**
     * 高峰期的人数
     */
    private Long top_total;

    /**
     * 主要浏览器名称 + (比例)
     */
    private String browser;
}
