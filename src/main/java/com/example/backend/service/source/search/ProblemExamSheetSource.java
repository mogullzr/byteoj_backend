package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.log.LogWebSiteRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.request.problem.Math408QueryRequest;
import com.example.backend.models.vo.log.LogWebSiteInfoVo;
import com.example.backend.models.vo.problem.ProblemExamSheetPaperVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.log.LogService;
import com.example.backend.service.math408.ProblemMath408BankService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
@Slf4j
public class ProblemExamSheetSource implements DataSource<ProblemExamSheetPaperVo>{
    @Resource
    private ProblemMath408BankService problemService;

    @Override
    public List<ProblemExamSheetPaperVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        return problemService.problemExamRecords(Long.valueOf(keyword), uuid, pageNum);
    }
}
