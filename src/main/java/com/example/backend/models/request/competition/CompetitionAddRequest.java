package com.example.backend.models.request.competition;

import com.example.backend.models.request.CompetitionProblems;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class CompetitionAddRequest {
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
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "Asia/Shanghai")
    private Date start_time;

    /**
     * 比赛结束时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "Asia/Shanghai")
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
     * 用户ID
     */
    private Long created_by;

    /**
     *
     * 编程題目id列表
     */
    private List<CompetitionProblems> algorithm_problem_list;

    /**
     *
     * 编程題目id列表
     */
    private List<CompetitionProblems> math408_problem_list;

    /**
     * 0:ACM赛制;1:IOI赛制;2:OI赛制
     */
    private Integer pattern;

    /**
     * 0表示无密码， 1表示有密码
     */
    private Integer status;

    /**
     * 0表示个人创建赛，1表示管理员创建赛......
     */
    private Integer type;
}