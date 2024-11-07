package com.example.backend.models.domain.algorithm;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 
 * @TableName user_last_enter
 */
@TableName(value ="user_last_enter")
public class UserLastEnter implements Serializable {
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
     * 题目链接
     */
    private String url;

    /**
     * 题目编号 + 题目名称
     */
    private String problem_name;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    public Long getId() {
        return id;
    }

    /**
     * ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 用户ID
     */
    public Long getUuid() {
        return uuid;
    }

    /**
     * 用户ID
     */
    public void setUuid(Long uuid) {
        this.uuid = uuid;
    }

    /**
     * 题目链接
     */
    public String getUrl() {
        return url;
    }

    /**
     * 题目链接
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 题目编号 + 题目名称
     */
    public String getProblem_name() {
        return problem_name;
    }

    /**
     * 题目编号 + 题目名称
     */
    public void setProblem_name(String problem_name) {
        this.problem_name = problem_name;
    }
}