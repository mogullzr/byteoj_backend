package com.example.backend.models.domain.user;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 *
 * @TableName user_rating
 */
@TableName(value ="user_rating")
@Data
public class UserRating {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 比赛前的分数
     */
    private Integer rating_before;

    /**
     * 比赛后的分数
     */
    private Integer rating_after;

    /**
     * 竞赛ID
     */
    private Long competition_id;

    /**
     * 竞赛名称
     */
    private String competition_name;

    /**
     * 竞赛开始时间
     */
    private Date start_time;

    /**
     * 参赛人数
     */
    private Integer joins;

    /**
     * 比赛排名
     */
    private Integer user_rank;

    /**
     * 竞赛总题目数量
     */
    private Integer total_num;

    /**
     * ac代码数量
     */
    private Integer ac_num;

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