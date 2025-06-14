package com.example.backend.service.log;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.log.LogOperation;
import com.example.backend.models.request.log.LogSearchRequest;
import com.example.backend.models.vo.log.LogAdminBasicInfo;
import com.example.backend.models.vo.log.LogAdminInfo;
import com.example.backend.models.vo.log.LogUserInfoVo;
import com.example.backend.models.vo.log.LogVo;
import java.io.IOException;
import java.util.List;

public interface LogService extends IService<LogOperation>{
    /**
     * 多条件搜索日志信息
     *
     * @param logSearchRequest 日志请求参数
     * @return 日志信息
     */
    public List<LogVo> listLogVoSearch(LogSearchRequest logSearchRequest);


    /**
     * 获取日志分析后的基础信息
     *
     * @return 日志分析基础信息
     */
    public LogAdminBasicInfo logAnalysisBasicDailyGet();
}
