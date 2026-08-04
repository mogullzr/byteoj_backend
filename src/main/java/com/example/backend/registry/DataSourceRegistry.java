package com.example.backend.registry;

import com.example.backend.common.SearchTypeEnum;
import com.example.backend.service.source.search.*;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Component
public class DataSourceRegistry {
    @Resource
    private AlgorithmDataSource algorithmDataSource;
    @Resource
    private PostsDataSource postsDataSource;
    @Resource
    private UserDataSource userDataSource;
    @Resource
    private UserAuthDataSource userAuthDataSource;
    @Resource
    private CompetitionRankSource competitionRankSource;
    @Resource
    private OJCompetitionDataSource ojCompetitionDataSource;
    @Resource
    private LogDataSource logDataSource;
    @Resource
    private RecordDataSource recordDataSource;
    @Resource
    private LantuPayDataSource lantuPayDataSource;
    @Resource
    private ProcterDataSource procterDataSource;
    @Resource
    private LogWebSiteDataSource logWebSiteDataSource;
    @Resource
    private ProblemDataSource problemDataSource;
    @Resource
    private ProblemExamSource problemExamSource;
    @Resource
    private ProblemExamSheetSource problemExamSheetSource;

    private Map<String, DataSource<?>> typeDataSourceMap;

    @PostConstruct
            public void doInit(){
        typeDataSourceMap = new HashMap<>(){{
            put(SearchTypeEnum.ALGORITHM.getValue(), algorithmDataSource);
            put(SearchTypeEnum.POST.getValue(), postsDataSource);
            put(SearchTypeEnum.USER.getValue(), userDataSource);
            put(SearchTypeEnum.BOSS_AUTH_SEARCH.getValue(),userAuthDataSource);
            put(SearchTypeEnum.OJ.getValue(), ojCompetitionDataSource);
            put(SearchTypeEnum.COMPETITION_USERS.getValue(), competitionRankSource);
            put(SearchTypeEnum.LOG_INFO.getValue(), logDataSource);
            put(SearchTypeEnum.RECORD.getValue(), recordDataSource);
            put(SearchTypeEnum.Lantu.getValue(), lantuPayDataSource);
            put(SearchTypeEnum.PROCTER.getValue(), procterDataSource);
            put(SearchTypeEnum.LOG_WEBSITE.getValue(), logWebSiteDataSource);
            put(SearchTypeEnum.OTHER.getValue(), problemDataSource);
            put(SearchTypeEnum.EXAM.getValue(), problemExamSource);
            put(SearchTypeEnum.EXAM_SHEET.getValue(), problemExamSheetSource);
        }};
    }

    public DataSource<?> getDataSourceByCategory(String category) {
        if (category == null) {
            return null;
        }
        return typeDataSourceMap.get(category);
    }
}
