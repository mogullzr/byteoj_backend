package com.example.backend.models.request.log;

import lombok.Data;
import java.util.List;

@Data
public class LogSearchRequest {
    /**
     * 关键词(定位到错误日志当中)
     */
    private String keyword;

    /**
     * 模块
     */
    private String module;

    /**
     * 1表示操作日志，2表示异常日志(必填)
     */
    private Integer status;

    /**
     * 状态码
     */
    private List<Integer> code;

    /**
     * 请求方法列表，GET/POST/PUT/DELETE等
     */
    private List<String> type;

    /**
     * 根据操作人员 uuid搜索
     */
    private Long uuid;

    /**
     * 是否按照操作时间进行排序，1表示从大到小，2表示从小到大
     */
    private Integer is_date_order;

    /**
     * 初始时间
     */
    private Integer startMilliSeconds;

    /**
     * 终止时间
     */
    private Integer endMilliSeconds;

    /**
     * 当前面数
     */
    private Integer current;

    /**
     * 页数
     */
    private Integer size;
}
