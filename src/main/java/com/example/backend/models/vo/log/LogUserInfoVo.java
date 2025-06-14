package com.example.backend.models.vo.log;

import com.example.backend.models.vo.UserVo;
import lombok.Data;

import java.util.List;

@Data
public class LogUserInfoVo {
    /**
     * 当天网站使用情况
     */
    private List<Long> daily_users;

    /**
     * 当天网站使用情况
     */
    private List<Long> weekly_users;

    /**
     * 当天网站使用情况
     */
    private List<Long> monthly_users;
}
