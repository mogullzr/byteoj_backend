package com.example.backend.models.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户返回信息表
 */
@Data
public class UserVo implements Serializable {

    private static final long serialVersionUID = 863250584695957573L;
    /**
     * sessionId
     */
    private String sessionId;
    /**
     * ID
     */
    private Long uuid;

    /**
     * 账号
     */
    private String account;

    /**
     * 密码
     */
    private String password;

    /**
     * 用户名
     */
    private String username;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 标签
     */
    private String tags;

    /**
     * 爱好
     */
    private String hobby;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 电话
     */
    private String phone;

    /**
     * 性别
     */
    private String gender;

    /**
     * 学校
     */
    private String school;

    /**
     * 简介
     */
    private String profile;

    /**
     * 竞赛分数
     */
    private Integer rating;

    /**
     * 用户角色：user/admin/ban 1/2/3 用户/管理员/封禁账户
     */
    private Integer role;

    /**
     * 生日
     */
    private Date birth;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     * 用户文章阅读量
     */
    private Integer readings;

    /**
     * 个人网站地址
     */
    private String url;

    /**
     * 竞赛等级
     */
    private Integer rated;

    /**
     * 总面数
     */
    private Integer pages;
}