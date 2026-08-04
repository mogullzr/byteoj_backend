package com.example.backend.service.crawler;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.spider.OjCompetition;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.crawler.OJCompetitionVo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OJCompetitionService {
    List<OJCompetitionVo> ListOJVoByPage(AlgorithmQueryRequest algorithmQueryRequest, Long uuid, boolean isAdmin);
}
