package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.*;

@Service
@Slf4j
public class AlgorithmDataSource implements DataSource<ProblemAlgorithmBankVo>{
    @Resource
    private ProblemAlgorithmService problemAlgorithmService;

    @Override
    public List<ProblemAlgorithmBankVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        AlgorithmQueryRequest algorithmQueryRequest = new AlgorithmQueryRequest();
        algorithmQueryRequest.setKeyword(keyword);
        algorithmQueryRequest.setPageNum(pageNum);
        algorithmQueryRequest.setPageSize(pageSize);
        algorithmQueryRequest.setTagsList(tagsList);
        algorithmQueryRequest.setSourceList(sourceList);
        algorithmQueryRequest.setDifficulty(difficulty);

        return problemAlgorithmService.ListAlgorithmVoByPage(algorithmQueryRequest, uuid, isAdmin);
    }
}
