package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.problem.ProblemExamRequest;
import com.example.backend.models.vo.problem.ProblemExamVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

@Service
@Slf4j
public class ProblemExamSource implements DataSource<ProblemExamVo> {
    @Resource
    private ProblemMath408BankService problemsService;

    @Override
    public List<ProblemExamVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        ProblemExamRequest problemExamRequest = new ProblemExamRequest();
        problemExamRequest.setSource(keyword);
        problemExamRequest.setPageNum(pageNum);
        return problemsService.problemExamSearch(problemExamRequest);
    }
}
