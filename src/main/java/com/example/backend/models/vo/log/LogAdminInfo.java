package com.example.backend.models.vo.log;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class LogAdminInfo implements Serializable {
    private static final long serialVersionUID = 2733568421923892202L;
    /**
     * 用户总数
     */
    private Integer user_total;

    /**
     * 活跃用户数
     */
    private Integer user_active_total;

    /**
     * 新增用户数
     */
    private Integer user_add_total;

    /**
     * 平均会话时间，统计所有人平均操作的时长,单位ms
     */
    private Integer avg_session;

    /**
     * 访问高峰期开始
     */
    private Date top_start_date;


    /**
     * 访问高峰期结束
     */
    private Date top_end_date;

    /**
     * 主要浏览器及比例
     */
    private LogSpecificInfo browser;

    /**
     * 每天
     * 操作日志列表，列表内共24个整数，从左往右依次表示 0:00 ~ 23:00,如第2个数字，表示00:00 ~ 1:00的操作日志数量
     */
    private List<Integer> daily_operation_log_list;

    /**
     * 每天
     * 异常日志列表，列表内共24个整数，从左往右依次表示 0:00 ~ 23:00,如第2个数字，表示00:00 ~ 1:00的异常日志数量
     */
    private List<Integer> daily_exception_log_list;

    /**
     * 每天
     * 用户访问列表（表示异常日志 + 操作日志个数），列表内共24个整数，从左往右依次表示 0:00 ~ 23:00,如第2个数字，表示00:00 ~ 1:00的用户访问量
     */
    private List<Integer> daily_user_active_list;

    /**
     * 每月
     * 操作日志列表，列表内共24个整数，从左往右依次表示 0:00 ~ 23:00,如第2个数字，表示00:00 ~ 1:00的操作日志数量
     */
    private List<Integer> monthly_operation_log_list;

    /**
     * 每月
     * 异常日志列表，列表内共24个整数，从左往右依次表示 0:00 ~ 23:00,如第2个数字，表示00:00 ~ 1:00的异常日志数量
     */
    private List<Integer> monthly_exception_log_list;

    /**
     * 每月
     * 用户访问列表（表示异常日志 + 操作日志个数），列表内共24个整数，从左往右依次表示 0:00 ~ 23:00,如第2个数字，表示00:00 ~ 1:00的用户访问量
     */
    private List<Integer> monthly_user_active_list;

    /**
     * 各个浏览器的使用占比
     */
    private List<LogSpecificInfo> browser_info_list;

    /**
     * 操作系统平台的使用占比
     */
    private List<LogSpecificInfo> opeartion_system_list;

    /**
     * 活跃用户比例信息（前5）
     */
    private List<UserRankInfo> userRankInfoList;
}