package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class ProblemExamVo implements Serializable {
    private static final long serialVersionUID = 1191928883542155718L;

    /**
     * 考试名称
     */
    private String exam_name;

    /**
     * 考试ID
     */
    private Long exam_id;

    /**
     * 作者
     */
    private String author;

    /**
     * 图片
     */
    private String picture;
    /**
     * 参加人数
     */
    private Integer joins;
    /**
     * 开始时间
     */
    private Date start_time;

    /**
     * 结束时间
     */
    private Date end_time;

    /**
     * 考试类型，0表示自由考试(可多次提交)，1表示开启监控(仅允许提交一次),2表示自由练习(写题过程可以直接提交某题查看答案)
     */
    private Integer status;

    private Boolean join;

    /**
     * 考试时间
     */
    private int time;

    /**
     * 总面数
     */
    private Long pages;

}
