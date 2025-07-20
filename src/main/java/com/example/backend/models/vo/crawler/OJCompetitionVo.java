package com.example.backend.models.vo.crawler;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data

public class OJCompetitionVo implements Serializable {
    /**
     * 竞赛标题
     */
    private String title;

    /**
     * 举办平台
     */
    private String platform;

    /**
     * 赛制类别,0表示ACM赛制,1表示OI赛制,2表示IOI赛制
     */
    private Integer pattern;


    /**
     * 比赛链接
     */
    private String url;

    /**
     * 比赛参加人数
     */
    private Integer joins;

    /**
     * 比赛开始时间
     */
    private Date start_time;

    /**
     * 比赛结束时间
     */
    private Date end_time;

    /**
     * 信息更新时间
     */
    private Date update_time;

    /**
     * 比赛海报
     */
    private String picture;

    /**
     *
     */
    private Integer pageSum;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
