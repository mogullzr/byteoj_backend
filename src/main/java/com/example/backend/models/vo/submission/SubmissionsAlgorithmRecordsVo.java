package com.example.backend.models.vo.submission;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class SubmissionsAlgorithmRecordsVo implements Serializable {
    private static final long serialVersionUID = 3005158653496706999L;
    /**
     * 提交ID
     */
    private Long submission_id;
    /**
     * 代码长度
     */
    private Integer code_length;

    /**
     * 语言
     */
    private Object language;

    /**
     * 具体的代码
     */
    private String source_code;

    /**
     * 代码提交时间
     */
    private Date submit_time;

    /**
     * 代码提交状态
     */
    private Object result;

    /**
     * 得分
     */
    private Integer score;
    /**
     * 运行时间
     */
    private Integer time_used;

    /**
     * 内存使用
     */
    private Long memory_used;


    /**
     * 所属题目的名称
     */
    private String chinese_name;

    /**
     * 所属题目的用户的名字
     */
    private String user_name;

    /**
     * 用户id
     */
    private Long uuid;

    /**
     * 所属题目用户的头像
     */
    private String avatar;

    /**
     * 题目尝试次数
     */
    private Long test_num;

    /**
     * rating的等级
     */
    private Integer rated;

    /**
     * 总页数
     */
    private Long page_num;

    private List<SubmissionAlgorithmDetailRecordVo> submission_list;
}
