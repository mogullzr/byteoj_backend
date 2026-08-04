package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRankRequest;
import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.service.competition.CompetitionsService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class CompetitionRankSource implements DataSource<UserVo>{
    @Resource
    private CompetitionsService competitionsService;

    @Override
    public List<UserVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        CompetitionRankRequest competitionRankRequest = new CompetitionRankRequest();
        competitionRankRequest.setCurrent(pageNum);
        competitionRankRequest.setSize(pageSize);
        competitionRankRequest.setKeyword(keyword);

        return competitionsService.competitionSearchRank(competitionRankRequest);
    }
}
