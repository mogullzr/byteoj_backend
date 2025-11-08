package com.example.backend.service.source.search;

import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.vo.pay.LantuPayViewVo;
import com.example.backend.service.pay.AccountFundService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LantuPayDataSource implements DataSource<LantuPayViewVo> {
    @Resource
    private AccountFundService accountPayBackService;

    @Override
    public List<LantuPayViewVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin, String module, List<Integer> code, Integer is_date_order, Long StartMilliSeconds, Long EndMilliSeconds, CompetitionRecordsRequest recordsRequest) {
        return accountPayBackService.lantuPayView(keyword, pageNum, pageSize);
    }
}