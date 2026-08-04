package com.example.backend.service.source.search;

import com.example.backend.models.domain.procter.ProcterInfo;
import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.vo.pay.LantuPayViewVo;
import com.example.backend.models.vo.procter.ProcterInfoVo;
import com.example.backend.service.competition.CompetitionsService;
import com.example.backend.service.pay.AccountFundService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProcterDataSource implements DataSource<ProcterInfoVo> {
    @Resource
    private CompetitionsService competitionsService;

    @Override
    public List<ProcterInfoVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        return competitionsService.procterListView(difficulty, pageNum, pageSize);
    }
}