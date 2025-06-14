package com.example.backend.models.domain.log;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName log_daily_info
 */
@TableName(value ="log_daily_info")
@Data
public class LogDailyInfo implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 创建时间
     */
    private Long create_date;

    /**
     * 操作日志总数
     */
    private Integer operation_total;

    /**
     * 异常日志数量
     */
    private Integer exception_total;

    /**
     * 用户总数
     */
    private Long user_total;


    /**
     * 新增用户数
     */
    private Long new_user_total;

    /**
     * 高峰期开始时间
     */
    private Long start_time;

    /**
     * 高峰期时间
     */
    private Long end_time;

    /**
     * 平均响应时间
     */
    private Long avg_response_time;

    /**
     * 使用频率最高用户uuid
     */
    private Long operator_id;

    /**
     * 最多使用者的数量
     */
    private Long operator_total;

    /**
     * 用户访问量(按照有多少用户访问为准)
     */
    private Long browse_total;

    /**
     * 活跃用户数量
     */
    private Long active_total;

    /**
     * 是否删除
     */
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}