package com.example.backend.models.vo.course;

import lombok.Data;

import java.io.Serializable;

@Data
public class CourseProblem implements Serializable {
    private static final long serialVersionUID = 177226031013405872L;

    /**
     * 问题ID
     */
    private Long problem_id;

    /**
     * 问题名称
     */
    private String problem_name;

    /**
     * 通过的总人数
     */
    private Long ac_num;

    /**
     * 是否AC,1是ac，0是没写，2是写了错了
     */
    private Integer status;
}
