package com.example.backend.models.domain.algorithm;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 编程语言信息表
 * @TableName language_command
 */
@TableName(value ="language_command")
public class LanguageCommand implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 编程语言ID
     */
    private Integer language_id;

    /**
     * 计算机命令，比如gcc++...,java....
     */
    private String command;

    /**
     * 次序
     */
    private Integer sequence;

    /**
     * 创建人id
     */
    private Long create_by_id;

    /**
     * 创建人name
     */
    private String create_by_name;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 修改人id
     */
    private Long update_by_id;

    /**
     * 修改人name
     */
    private String update_by_name;

    /**
     * 修改时间
     */
    private Date update_time;

    /**
     * 0.编译中1.运行
     */
    private Integer status;

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
     * 编程语言ID
     */
    public Integer getLanguage_id() {
        return language_id;
    }

    /**
     * 编程语言ID
     */
    public void setLanguage_id(Integer language_id) {
        this.language_id = language_id;
    }

    /**
     * 计算机命令，比如gcc++...,java....
     */
    public String getCommand() {
        return command;
    }

    /**
     * 计算机命令，比如gcc++...,java....
     */
    public void setCommand(String command) {
        this.command = command;
    }

    /**
     * 次序
     */
    public Integer getSequence() {
        return sequence;
    }

    /**
     * 次序
     */
    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }

    /**
     * 创建人id
     */
    public Long getCreate_by_id() {
        return create_by_id;
    }

    /**
     * 创建人id
     */
    public void setCreate_by_id(Long create_by_id) {
        this.create_by_id = create_by_id;
    }

    /**
     * 创建人name
     */
    public String getCreate_by_name() {
        return create_by_name;
    }

    /**
     * 创建人name
     */
    public void setCreate_by_name(String create_by_name) {
        this.create_by_name = create_by_name;
    }

    /**
     * 创建时间
     */
    public Date getCreate_time() {
        return create_time;
    }

    /**
     * 创建时间
     */
    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    /**
     * 修改人id
     */
    public Long getUpdate_by_id() {
        return update_by_id;
    }

    /**
     * 修改人id
     */
    public void setUpdate_by_id(Long update_by_id) {
        this.update_by_id = update_by_id;
    }

    /**
     * 修改人name
     */
    public String getUpdate_by_name() {
        return update_by_name;
    }

    /**
     * 修改人name
     */
    public void setUpdate_by_name(String update_by_name) {
        this.update_by_name = update_by_name;
    }

    /**
     * 修改时间
     */
    public Date getUpdate_time() {
        return update_time;
    }

    /**
     * 修改时间
     */
    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    /**
     * 0.编译中1.运行
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 0.编译中1.运行
     */
    public void setStatus(Integer status) {
        this.status = status;
    }
}