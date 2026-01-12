package com.example.backend.models.domain.user;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName monitor_user
 */
@TableName(value ="monitor_user")
@Data
public class MonitorUser {
    /**
     * ID
     */
    @TableId
    private Integer id;

    /**
     * 机器码
     */
    private String client_id;

    /**
     * 用户名
     */
    private String username;

    /**
     * 上线 or 下线
     */
    private Integer status;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}