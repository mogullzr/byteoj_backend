package com.example.backend.models.vo.competition;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class CompetitionInfoVo implements Serializable {
    private static final long serialVersionUID = -6057397186463195942L;
    /**
     * 比赛id
     */
    private Long competition_id;

    /**
     * 比赛名称
     */
    private String competition_name;

    /**
     * 比赛开始时间
     */
    private Date start_time;

    /**
     * 比赛结束时间
     */
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
     * 用户名
     */
    private String username;

    /**
     * 报名比赛的人数
     */
    private Long joins;

    /**
     * 0:ACM赛制;1:IOI赛制;2:OI赛制
     */
    private Integer pattern;

    /**
     * 0表示无密码， 1表示有密码
     */
    private Integer status;

    /**
     * 0表示参加，1表示有没参加,2表示比赛进行中但是没有报名，3表示比赛进行中但是报名了，4表示比赛结束而且报名了，5表示比赛结束了没有报名的
     */
    private Integer user_status;
    /**
     * 总页数
     */
    private Long Page_Sum;

    /**
     * 是否为竞赛创建者,0表示是，1表示不是
     */
    private Integer isCreated;

    /**
     * 是否删除
     */
    private Integer is_delete;
}
