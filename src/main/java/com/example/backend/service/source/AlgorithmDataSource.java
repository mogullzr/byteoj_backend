package com.example.backend.service.source;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.AcAlgorithmProblem;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmLimit;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTags;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTagsRelation;
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
    public List<ProblemAlgorithmBankVo> doSearch(String keyword, List<Integer> tagsList, List<String> sourceList, String difficulty, Integer pageNum, Integer pageSize, Long uuid, Integer status) {
        AlgorithmQueryRequest algorithmQueryRequest = new AlgorithmQueryRequest();
        algorithmQueryRequest.setKeyword(keyword);
        algorithmQueryRequest.setPageNum(pageNum);
        algorithmQueryRequest.setPageSize(pageSize);
        algorithmQueryRequest.setTagsList(tagsList);
        algorithmQueryRequest.setSourceList(sourceList);
        algorithmQueryRequest.setDifficulty(difficulty);

        return problemAlgorithmService.ListAlgorithmVoByPage(algorithmQueryRequest, uuid);
    }
}
