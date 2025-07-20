package com.example.backend.service.source;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.models.vo.problem.SearchVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.service.competition.CompetitionsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RecordDataSource implements DataSource<SubmissionsAlgorithmRecordsVo>{
    @Resource
    private CompetitionsService competitionsService;

    @Override
    public List<SubmissionsAlgorithmRecordsVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        return competitionsService.listRecordsVo(recordsRequest);
    }
}
