package com.example.backend.service.source.search;

import com.example.backend.models.domain.log.LogWebsiteInfo;
import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.log.LogWebSiteRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.log.LogWebSiteInfoVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.log.LogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
@Slf4j
public class LogWebSiteDataSource implements DataSource<LogWebSiteInfoVo>{
    @Resource
    private LogService logService;

    @Override
    public List<LogWebSiteInfoVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        LogWebSiteRequest logWebSiteRequest = new LogWebSiteRequest();
        logWebSiteRequest.setPageNum(pageNum);
        logWebSiteRequest.setPageSize(pageSize);
        logWebSiteRequest.setModule(module);

        return logService.listWebSiteLogInfo(logWebSiteRequest);
    }
}
