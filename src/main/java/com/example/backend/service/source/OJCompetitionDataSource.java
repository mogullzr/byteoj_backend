package com.example.backend.service.source;

import com.example.backend.models.domain.spider.OjCompetition;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.crawler.OJCompetitionVo;
import com.example.backend.service.crawler.OJCompetitionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class OJCompetitionDataSource implements DataSource<OJCompetitionVo>{
        @Resource
        private OJCompetitionService ojCompetitionService;

        @Override
        public List<OJCompetitionVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status, boolean isAdmin) {
            AlgorithmQueryRequest algorithmQueryRequest = new AlgorithmQueryRequest();
            algorithmQueryRequest.setKeyword(keyword);
            algorithmQueryRequest.setPageNum(pageNum);
            algorithmQueryRequest.setPageSize(pageSize);
            algorithmQueryRequest.setSourceList(sourceList);

            return ojCompetitionService.ListOJVoByPage(algorithmQueryRequest,uuid,isAdmin);
        }
}
