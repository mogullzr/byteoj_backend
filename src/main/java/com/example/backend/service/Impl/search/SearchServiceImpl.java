package com.example.backend.service.Impl.search;

import com.example.backend.common.ErrorCode;
import com.example.backend.common.SearchTypeEnum;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.spider.OjCompetition;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.competition.CompetitionRecordsRequest;
import com.example.backend.models.request.problem.SearchRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.crawler.OJCompetitionVo;
import com.example.backend.models.vo.log.LogVo;
import com.example.backend.models.vo.pay.LantuPayViewVo;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.SearchVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.registry.DataSourceRegistry;
import com.example.backend.service.search.SearchService;
import com.example.backend.service.source.*;
import com.example.backend.service.user.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

        } else {
            DataSource<?> dataSource = dataSourceRegistry.getDataSourceByCategory(category);
            List<?> dataList = dataSource.doSearch(keyword, tagsList, sourceList,
                    difficulty, pageNum, pageSize, uuid, status, isAdmin,
                    module, code, is_date_order, startMilliSeconds, endMilliSeconds, recordsRequest);
            searchVo.setDataList(dataList);
        }
        return searchVo;
    }
}
