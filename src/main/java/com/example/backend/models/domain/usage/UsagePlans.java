package com.example.backend.models.domain.usage;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 使用额度表
 * @TableName usage_plans
 */
@TableName(value ="usage_plans")
@Data
public class UsagePlans {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 类型
     */
    private String feature_code;

    /**
     * 最大使用次数
     */
    private Integer max_count;

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