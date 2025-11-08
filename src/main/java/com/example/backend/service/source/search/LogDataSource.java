package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.log.LogSearchRequest;
import com.example.backend.service.log.LogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import com.example.backend.models.vo.log.LogVo;
@Service
@Slf4j
public class LogDataSource implements DataSource<LogVo>{
    @Resource
    private LogService logService;

    @Override
    public List<LogVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        LogSearchRequest logSearchRequest = new LogSearchRequest();
        logSearchRequest.setKeyword(keyword);
        logSearchRequest.setModule(module);
        logSearchRequest.setStatus(status);
        logSearchRequest.setCode(code);
        logSearchRequest.setType(sourceList);
        logSearchRequest.setUsername(difficulty);
        logSearchRequest.setIs_date_order(is_date_order);
        logSearchRequest.setStartMilliSeconds(StartMilliSeconds);
        logSearchRequest.setEndMilliSeconds(EndMilliSeconds);
        logSearchRequest.setCurrent(pageNum);
        logSearchRequest.setSize(pageSize);
        logSearchRequest.setIsAdmin(isAdmin);

        return logService.listLogVoSearch(logSearchRequest);
    }
}
