package com.example.backend.models.domain.procter;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 监控信息表
 * @TableName procter_info
 */
@TableName(value ="procter_info")
@Data
public class ProcterInfo {
    /**
     * 监控信息ID
     */
    @TableId(type = IdType.AUTO)
    private Integer procter_id;

    /**
     * 图片地址
     */
    private String img_url;

    /**
     * 竞赛ID
     */
    private Long competition_id;

    /**
     * 可疑行为描述
     */
    private String description;

    /**
     * 行为危险指数，1表示正常，2表示中等，3表示危机
     */
    private Integer type;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 逻辑删除
     */
    private Integer is_delete;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 更新时间
     */
    private Date update_date;
}