package com.example.backend.models.domain.algorithm;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 
 * @TableName user_last_enter
 */
@TableName(value ="user_last_enter")
@Data
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

}