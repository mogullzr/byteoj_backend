package com.example.backend.models.request.user;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author Mogullzr
 */
@Data
public class UserModifyRequest implements Serializable {
    private static final long serialVersionUID = 4635571495175861764L;
    /**
     * ID
     */
    private Long uuid;

    /**
     * 账户
     */
    private String account;
    /**
     * 用户名
     */
    private String username;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 标签列表
     */
    private List<String> tag_list;

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
     * 生日
     */
    private Date birth;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     * 个人网站地址
     */
    private String url;
}
