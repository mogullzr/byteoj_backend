package com.example.backend.service.source;

import com.example.backend.models.request.log.LogSearchRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.log.LogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import com.example.backend.models.vo.log.LogVo;
@Service
@Slf4j
public class LogDataSource implements DataSource<LogVo>{
//    @Resource
    private LogService logService;

    @Override
    public List<LogVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Integer StartMilliSeconds, Integer EndMilliSeconds) {
        LogSearchRequest logSearchRequest = new LogSearchRequest();
        logSearchRequest.setKeyword(keyword);
        logSearchRequest.setModule(module);
        logSearchRequest.setStatus(status);
        logSearchRequest.setCode(code);
        logSearchRequest.setType(sourceList);
        logSearchRequest.setUuid(uuid);
        logSearchRequest.setIs_date_order(is_date_order);
        logSearchRequest.setStartMilliSeconds(StartMilliSeconds);
        logSearchRequest.setEndMilliSeconds(EndMilliSeconds);
        logSearchRequest.setCurrent(pageNum);
        logSearchRequest.setSize(pageSize);

        return logService.listLogVoSearch(logSearchRequest);
    }
}
