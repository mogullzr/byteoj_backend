package com.example.backend.service.source;

import com.example.backend.models.request.competition.CompetitionRankRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.service.competition.CompetitionsService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class CompetitionRankSource implements DataSource<UserVo>{
    @Resource
    private CompetitionsService competitionsService;

    @Override
    public List<UserVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin) {
        CompetitionRankRequest competitionRankRequest = new CompetitionRankRequest();
        competitionRankRequest.setCurrent(pageNum);
        competitionRankRequest.setSize(pageSize);
        competitionRankRequest.setKeyword(keyword);

        return competitionsService.competitionSearchRank(competitionRankRequest);
    }
}
