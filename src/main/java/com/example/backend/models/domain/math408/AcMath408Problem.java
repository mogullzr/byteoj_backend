package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * mathAC情况存储表
 * @TableName ac_math408_problem
 */
@TableName(value ="ac_math408_problem")
public class AcMath408Problem implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 题目id
     */
    private Long problem_id;

    /**
     * 用户id
     */
    private Long uuid;

    /**
     * 创建人id
     */
    private Long create_by_id;

    /**
     * 创建人name
     */
    private String create_by_name;

    /**
     * 创建人时间
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
     * 修改人时间
     */
    private Date update_time;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 逻辑删除
     */
    @TableLogic
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    public Long getId() {
        return id;
    }

    /**
     * 
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 题目id
     */
    public Long getProblem_id() {
        return problem_id;
    }

    /**
     * 题目id
     */
    public void setProblem_id(Long problem_id) {
        this.problem_id = problem_id;
    }

    /**
     * 用户id
     */
    public Long getUuid() {
        return uuid;
    }

    /**
     * 用户id
     */
    public void setUuid(Long uuid) {
        this.uuid = uuid;
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
     * 创建人时间
     */
    public Date getCreate_time() {
        return create_time;
    }

    /**
     * 创建人时间
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
     * 修改人时间
     */
    public Date getUpdate_time() {
        return update_time;
    }

    /**
     * 修改人时间
     */
    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    /**
     * 状态
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 状态
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 逻辑删除
     */
    public Integer getIs_delete() {
        return is_delete;
    }

    /**
     * 逻辑删除
     */
    public void setIs_delete(Integer is_delete) {
        this.is_delete = is_delete;
    }
}