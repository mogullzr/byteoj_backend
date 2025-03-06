package com.example.backend.models.domain.spider;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @TableName oj_competition
 */
@TableName(value ="oj_competition")
@Data
public class OjCompetition implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 竞赛标题
     */
    private String title;

    /**
     * 举办平台
     */
    private String platform;

    /**
     * 赛制类别,0表示ACM赛制,1表示OI赛制,2表示IOI赛制
     */
    private Integer pattern;

    /**
     * 比赛相关信息
     */
    private String description;

    /**
     * 比赛链接
     */
    private String url;

    /**
     * 比赛参加人数
     */
    private Integer joins;

    /**
     * 比赛开始时间
     */
    private Date start_time;

    /**
     * 比赛结束时间
     */
    private Date end_time;

    /**
     * 信息更新时间
     */
    private Date update_time;

    /**
     * 比赛海报
     */
    private String picture;

    /**
     * 逻辑删除
     */
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

}