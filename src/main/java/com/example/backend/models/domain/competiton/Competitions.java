package com.example.backend.models.domain.competiton;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 比赛基本信息表
 * @TableName competitions
 */
@TableName(value ="competitions")
@Data
public class Competitions implements Serializable {
    /**
     * 比赛id
     */
    @TableId(type = IdType.AUTO)
    private Long competition_id;

    /**
     * 比赛名称
     */
    private String competition_name;

    /**
     * 比赛开始时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date start_time;

    /**
     * 比赛结束时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date end_time;

    /**
     * 比赛头像
     */
    private String avatar;

    /**
     * 比赛描述
     */
    private String description;

    /**
     * 比赛密码
     */
    private String password;

    /**
     * 用户名字
     */
    private Long created_by;

    /**
     * 0:ACM赛制;1:IOI赛制;2:OI赛制
     */
    private Integer pattern;

    /**
     * 0表示无密码， 1表示有密码
     */
    private Integer status;

    /**
     * 逻辑删除
     */
    private Integer is_delete;

    /**
     * 参加比赛的人数
     */
    private Long joins;

    /**
     * 比赛创建类型，0表示个人创建赛，1表示管理员创建赛
     */
    private Integer type;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}