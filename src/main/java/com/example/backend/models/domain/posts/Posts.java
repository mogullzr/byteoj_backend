package com.example.backend.models.domain.posts;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 帖子表
 * @TableName posts
 */
@TableName(value ="posts")
public class Posts implements Serializable {
    /**
     * 帖子id
     */
    @TableId(type = IdType.AUTO)
    private Long post_id;

    /**
     * 帖子标题
     */
    private String title;

    /**
     * 帖子内容
     */
    private String content;

    /**
     * 作者ID
     */
    private Long uuid;

    /**
     * 点赞数量
     */
    private Long thumbs_up;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     * 是否删除
     */
    private Integer is_delete;

    /**
     * 浏览量
     */
    private Long reading;

    /**
     * 
     */
    private String location;

    /**
     * 帖子所属题目id
     */
    private Long problem_id;

    /**
     * 
     */
    private Integer status;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * 帖子id
     */
    public Long getPost_id() {
        return post_id;
    }

    /**
     * 帖子id
     */
    public void setPost_id(Long post_id) {
        this.post_id = post_id;
    }

    /**
     * 帖子标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 帖子标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 帖子内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 帖子内容
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 作者ID
     */
    public Long getUuid() {
        return uuid;
    }

    /**
     * 作者ID
     */
    public void setUuid(Long uuid) {
        this.uuid = uuid;
    }

    /**
     * 点赞数量
     */
    public Long getThumbs_up() {
        return thumbs_up;
    }

    /**
     * 点赞数量
     */
    public void setThumbs_up(Long thumbs_up) {
        this.thumbs_up = thumbs_up;
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
     * 更新时间
     */
    public Date getUpdate_time() {
        return update_time;
    }

    /**
     * 更新时间
     */
    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    /**
     * 是否删除
     */
    public Integer getIs_delete() {
        return is_delete;
    }

    /**
     * 是否删除
     */
    public void setIs_delete(Integer is_delete) {
        this.is_delete = is_delete;
    }

    /**
     * 浏览量
     */
    public Long getReading() {
        return reading;
    }

    /**
     * 浏览量
     */
    public void setReading(Long reading) {
        this.reading = reading;
    }

    /**
     * 
     */
    public String getLocation() {
        return location;
    }

    /**
     * 
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * 帖子所属题目id
     */
    public Long getProblem_id() {
        return problem_id;
    }

    /**
     * 帖子所属题目id
     */
    public void setProblem_id(Long problem_id) {
        this.problem_id = problem_id;
    }

    /**
     * 
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 
     */
    public void setStatus(Integer status) {
        this.status = status;
    }
}