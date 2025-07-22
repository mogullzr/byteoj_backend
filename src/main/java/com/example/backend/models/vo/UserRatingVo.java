package com.example.backend.models.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
public class UserRatingVo {
    /**
     * 比赛后的分数
     */
    private Integer rating_after;

    /**
     * 比赛变化分数
     */
    private Integer rating_change;

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
    private Integer rank;

    /**
     * 竞赛总题目数量
     */
    private Integer total_num;

    /**
     * ac代码数量
     */
    private Integer ac_num;

    /**
     * 总数
     */
    private Long total;
}