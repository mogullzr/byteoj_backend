package com.example.backend.models.vo.procter;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 监控信息表
 * @TableName procter_info
 */
@TableName(value ="procter_info")
@Data
public class ProcterInfoVo  implements Serializable {
    private static final long serialVersionUID = 8154104008529745389L;
    /**
     * 监控信息ID
     */
    private Integer procter_id;

    /**
     * 图片地址
     */
    private String img_url;

    /**
     * 竞赛ID
     */
    private String competition_name;

    /**
     * 可疑行为描述
     */
    private String description;

    /**
     * 行为危险指数，1表示正常，2表示中等，3表示危机
     */
    private Integer type;
    /**
     * 用户账户名
     */
    private String account;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 时间
     */
    private Date create_date;

    /**
     * 总面数
     */
    private Long pages;
}