package com.example.backend.service.Impl.crawler;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.OjCompetitionMapper;
import com.example.backend.models.domain.spider.OjCompetition;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.crawler.OJCompetitionVo;
import com.example.backend.service.crawler.OJCompetitionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
@Slf4j
public class ojCompetitionServiceImpl extends ServiceImpl<OjCompetitionMapper,OjCompetition> implements OJCompetitionService {

    @Resource
    private OjCompetitionMapper ojCompetitionMapper;

    @Override
    public List<OJCompetitionVo> ListOJVoByPage(AlgorithmQueryRequest algorithmQueryRequest, Long uuid, boolean isAdmin) {
        String keyword = algorithmQueryRequest.getKeyword();
        Integer pageNum = algorithmQueryRequest.getPageNum();
        Integer pageSize = algorithmQueryRequest.getPageSize();
        List<String> sourceList = algorithmQueryRequest.getSourceList();

        // 0.分页查询
        Page<OjCompetition> page = new Page<>(pageNum, pageSize);
        QueryWrapper<OjCompetition> queryWrapper = new QueryWrapper<>();

        // 1.根据关键字搜索
        if (keyword != null) {
            queryWrapper.like("title", keyword);
        }

        // 2.来源搜索
        if (sourceList != null && !sourceList.isEmpty()) {
            sourceList.forEach((source)->{
                queryWrapper.eq("platform", source).or();
            });
        }

        // 3.按照时间从晚到早的时间分页查询
        queryWrapper.orderByDesc("start_time");

        // 查找符合条件的信息
        Page<OjCompetition> ojCompetitionPage = ojCompetitionMapper.selectPage(page, queryWrapper);
        List<OjCompetition> ojCompetitionList = ojCompetitionPage.getRecords();
        List<OJCompetitionVo> ojCompetitionVoList = new ArrayList<>();

        if (!ojCompetitionList.isEmpty()) {
            for (OjCompetition ojCompetition : ojCompetitionList) {
                OJCompetitionVo ojCompetitionVo = new OJCompetitionVo();
                ojCompetitionVo.setTitle(ojCompetition.getTitle());
                ojCompetitionVo.setPlatform(ojCompetition.getPlatform());
                ojCompetitionVo.setPattern(ojCompetition.getPattern());
                ojCompetitionVo.setUrl(ojCompetition.getUrl());
                ojCompetitionVo.setJoins(ojCompetition.getJoins());
                ojCompetitionVo.setStart_time(ojCompetition.getStart_time());
                ojCompetitionVo.setEnd_time(ojCompetition.getEnd_time());
                ojCompetitionVo.setUpdate_time(ojCompetition.getUpdate_time());
                ojCompetitionVo.setPicture(ojCompetition.getPicture());

                ojCompetitionVoList.add(ojCompetitionVo);
            }
            OJCompetitionVo ojCompetitionVo = ojCompetitionVoList.get(0);
            ojCompetitionVo.setPageSum((int) page.getPages());
            ojCompetitionVoList.set(0, ojCompetitionVo);
        }
        return ojCompetitionVoList;
    }
}
