package com.example.backend.models.domain.competiton;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户参与表
 * @TableName competitions_user
 */
@TableName(value ="competitions_user")
@Data
public class CompetitionsUser implements Serializable {
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
     * 比赛ID
     */
    private Long competition_id;

    /**
     * 参加时间
     */
    private Date join_time;

    /**
     * 0参加,1不参加
     */
    private Integer is_participant;

    /**
     * 非ACM赛制使用:总分数
     */
    private Long score;

    /**
     * 通过次数
     */
    private Long ac_num;

    /**
     *
     */
    private Long time_penalty;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}