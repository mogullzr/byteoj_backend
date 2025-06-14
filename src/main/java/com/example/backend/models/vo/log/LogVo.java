package com.example.backend.models.vo.log;

import cn.hutool.core.date.DateTime;
import lombok.Data;

import java.util.Date;

@Data
public class LogVo {
    /**
     * 日志ID
     */
    private Integer log_id;

    /**
     * 日志模块
     */
    private String module;
    /**
     * 操作url
     */
    private String url;

    /**
     * 请求方法
     */
    private String type;

    /**
     * 日志描述
     */
    private String description;

    /**
     * 请求参数
     */
    private String request_param;

    /**
     * 响应参数
     */
    private String response_param;

    /**
     * 状态码
     */
    private Integer code;

    /**
     * 操作人员
     */
    private String username;

    /**
     * 操作时长
     */
    private Long operation_time;

    /**
     * 操作者IP地址
     */
    private String ip;


    /**
     * 操作时间
     */
    private Date create_time;

    /**
     * 异常类位置
     */
    private String method;

    /**
     * 异常错误详细信息
     */
    private String error_message;

    /**
     * 总面数
     */
    private Long total;
}
