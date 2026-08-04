package com.example.backend.service.Impl.search;

import com.example.backend.common.ErrorCode;
import com.example.backend.common.SearchTypeEnum;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.log.LogWebsiteInfo;
import com.example.backend.models.domain.procter.ProcterInfo;
import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.problem.SearchRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.crawler.OJCompetitionVo;
import com.example.backend.models.vo.log.LogVo;
import com.example.backend.models.vo.log.LogWebSiteInfoVo;
import com.example.backend.models.vo.pay.LantuPayViewVo;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemExamVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.SearchVo;
import com.example.backend.models.vo.procter.ProcterInfoVo;
import com.example.backend.models.vo.search.AutoCompeteVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.registry.DataSourceRegistry;
import com.example.backend.service.search.SearchService;
import com.example.backend.service.source.search.*;
import com.example.backend.service.source.trie.DataSourceExtractor;
import com.example.backend.service.source.trie.trie.Trie;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@Service
public class SearchServiceImpl implements SearchService {
    @Resource
    private AlgorithmDataSource algorithmDataSource;

    @Resource
    private PostsDataSource postsDataSource;

    @Resource
    private UserDataSource userDataSource;

    @Resource
    private DataSourceRegistry dataSourceRegistry;

    @Resource
    private OJCompetitionDataSource ojCompetitionDataSource;

    @Resource
    private CompetitionRankSource competitionRankSource;

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

    private final Trie trie = new Trie();

    // 自动注入所有Extractor
    @Autowired
    private List<DataSourceExtractor<?>> extractors;

    private final AtomicBoolean initialized = new AtomicBoolean(false);


    @PostConstruct
    public void initTrie() {
        if (initialized.get()) return;

        System.out.println("Building Trie from multiple sources...");
        long start = System.currentTimeMillis();
        int totalEntities = 0;

        try {
            for (DataSourceExtractor<?> extractor : extractors) {
                String sourceName = extractor.getSourceName();
                System.out.println("Processing " + sourceName + "...");

                List<?> entities = extractor.getRepository().findAll();
                totalEntities += entities.size();

                for (Object entity : entities) {
                    @SuppressWarnings("unchecked")
                    DataSourceExtractor<Object> typedExtractor = (DataSourceExtractor<Object>) extractor;

                    @SuppressWarnings("unchecked")
                    List<String> keywords = typedExtractor.extractKeywords(entity);

                    String id = typedExtractor.getEntityId(entity);

                    System.out.println("Inserting for " + id + ": " + keywords);

                    if (!keywords.isEmpty()) {
                        trie.insert(keywords, id);
                    }
                }

                System.out.println("Done " + sourceName + " (" + entities.size() + " entities)");
            }

            long duration = System.currentTimeMillis() - start;
            System.out.println("Trie built in " + duration + "ms from " + extractors.size() + " sources (" + totalEntities + " total entities)");
            initialized.set(true);
        } catch (Exception e) {
            System.err.println("Build failed: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public SearchVo searchAll(SearchRequest searchRequest, Long uuid, boolean isAdmin) {
        String category = searchRequest.getCategory();
        SearchTypeEnum searchTypeEnum = SearchTypeEnum.getEnumByValue(category);
        String keyword = searchRequest.getKeyword();
        Integer pageNum = searchRequest.getPageNum();
        Integer pageSize = searchRequest.getPageSize();
        List<Integer> tagsList = searchRequest.getTagsList();
        List<String> sourceList = searchRequest.getSourceList();
        String difficulty = searchRequest.getDifficulty();
        Integer status = searchRequest.getStatus();

        // 日志专属
        String module = searchRequest.getModule();
        List<Integer> code = searchRequest.getCode();
        List<String> type = searchRequest.getType();
        Integer is_date_order = searchRequest.getIs_date_order();
        Long startMilliSeconds = searchRequest.getStartMilliSeconds();
        Long endMilliSeconds = searchRequest.getEndMilliSeconds();

        // records专属
        CompetitionRecordsRequest recordsRequest = searchRequest.getCompetitionRecordsRequest();

        SearchVo searchVo = new SearchVo();

        if (StringUtils.isBlank(category)) {
           throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数存在问题！！！！");
        }

        if (category.equals("log")) {
            sourceList = type;
        }

        if (searchTypeEnum == null) {
            // 1.算法试题
            List<ProblemAlgorithmBankVo> problemAlgorithmBankVoList = algorithmDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 3.帖子
            List<PostsVo> postsVoList = postsDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 4.用户
            List<UserVo> userVoList = userDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 5.BOSS管理员权限查询
            List<UserVo> userAuthVoList = userDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 6.oj信息
            List<OJCompetitionVo> ojCompetitionList = ojCompetitionDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 7.巅峰Rating排行榜单
            List<UserVo> competitionUserVos = competitionRankSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 8.日志多条件搜索
            List<LogVo> logVos = logDataSource.doSearch(keyword, tagsList, type, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 9.提交记录多条件搜索
            List<SubmissionsAlgorithmRecordsVo> recordsVos = recordDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 10.交易成功的订单
            List<LantuPayViewVo> lantuPayViewVos = lantuPayDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 11.监控信息查询
            List<ProcterInfoVo> procterInfos = procterDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 12.网站日志查询
            List<LogWebSiteInfoVo> logWebsiteInfos = logWebSiteDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 2.根据题目型号来查询题目
            List<ProblemMath408BankVo> problemMath408BankVos = problemDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);

            // 13.试卷搜索接口
            List<ProblemExamVo> problemExamVos = problemExamSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status, isAdmin, module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);
            // ......扩展
            // 最终聚合
            searchVo.setProblemAlgorithmBankVoList(problemAlgorithmBankVoList);
            searchVo.setPostsVoList(postsVoList);
            searchVo.setUserVoList(userVoList);
            searchVo.setUserAuthVoList(userAuthVoList);
            searchVo.setOjCompetitionsList(ojCompetitionList);
            searchVo.setCompetitionUser(competitionUserVos);
            searchVo.setLogVoList(logVos);
            searchVo.setRecordsVos(recordsVos);
            searchVo.setLantuPayViewVos(lantuPayViewVos);
            searchVo.setProcterInfoVoList(procterInfos);
            searchVo.setWebSiteInfoVoList(logWebsiteInfos);
            searchVo.setProblemMath408BankVoList(problemMath408BankVos);
            searchVo.setProblemExamVoList(problemExamVos);

        } else {
            DataSource<?> dataSource = dataSourceRegistry.getDataSourceByCategory(category);
            List<?> dataList = dataSource.doSearch(keyword, tagsList, sourceList,
                    difficulty, pageNum, pageSize, uuid, status, isAdmin,
                    module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);
            searchVo.setDataList(dataList);
        }
        return searchVo;
    }

    @Override
    public List<AutoCompeteVo> autoComplete(String prefix, Integer limit) {
        System.out.println("Searching: " + prefix);

        if (!initialized.get()) {
            System.out.println("Trie not ready, rebuilding...");
            initTrie();  // fallback
        }

        if (prefix == null) {
            return new ArrayList<>();
        }
        trie.printTree(); // 查看实际存储的内容


        List<Trie.Suggestion> search = trie.search(prefix, limit);

        // Service去重by word
        Map<String, Trie.Suggestion> unique = new HashMap<>();
        for (Trie.Suggestion sug : search) {
            unique.putIfAbsent(sug.getWord(), sug);
        }
        search = new ArrayList<>(unique.values());

        System.out.println("Final unique suggestions: " + search.size());

        List<AutoCompeteVo> autoCompeteVos = new ArrayList<>();
        for (Trie.Suggestion suggestion : search) {
            AutoCompeteVo autoCompeteVo = new AutoCompeteVo();
            autoCompeteVo.setRaw(suggestion.getWord());
            autoCompeteVos.add(autoCompeteVo);
        }
        return autoCompeteVos;
    }
}
