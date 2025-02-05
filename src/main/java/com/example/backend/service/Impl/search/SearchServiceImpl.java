package com.example.backend.service.Impl.search;

import com.example.backend.common.ErrorCode;
import com.example.backend.common.SearchTypeEnum;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.request.problem.SearchRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.post.PostsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.SearchVo;
import com.example.backend.registry.DataSourceRegistry;
import com.example.backend.service.search.SearchService;
import com.example.backend.service.source.*;
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

    @Override
    public SearchVo searchAll(SearchRequest searchRequest, Long uuid) {
        String category = searchRequest.getCategory();
        SearchTypeEnum searchTypeEnum = SearchTypeEnum.getEnumByValue(category);

        String keyword = searchRequest.getKeyword();
        Integer pageNum = searchRequest.getPageNum();
        Integer pageSize = searchRequest.getPageSize();
        List<Integer> tagsList = searchRequest.getTagsList();
        List<String> sourceList = searchRequest.getSourceList();
        String difficulty = searchRequest.getDifficulty();
        Integer status = searchRequest.getStatus();

        SearchVo searchVo = new SearchVo();

        if (StringUtils.isBlank(category)) {
           throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数存在问题！！！！");
        }

        if (searchTypeEnum == null) {
            // 1.算法试题

            List<ProblemAlgorithmBankVo> problemAlgorithmBankVoList = algorithmDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status);

            // 3.帖子
            List<PostsVo> postsVoList = postsDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status);

            // 4.用户
            List<UserVo> userVoList = userDataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status);

            // ......扩展
            // 最终聚合
            searchVo.setProblemAlgorithmBankVoList(problemAlgorithmBankVoList);
            searchVo.setPostsVoList(postsVoList);
            searchVo.setUserVoList(userVoList);
        } else {
            DataSource<?> dataSource = dataSourceRegistry.getDataSourceByCategory(category);

            List<?> dataList = dataSource.doSearch(keyword, tagsList, sourceList, difficulty, pageNum, pageSize, uuid, status);
            searchVo.setDataList(dataList);
        }

        return searchVo;
    }
}
