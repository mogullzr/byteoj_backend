package com.example.backend.registry;

import com.example.backend.common.SearchTypeEnum;
import com.example.backend.service.source.*;
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

    private Map<String, DataSource<?>> typeDataSourceMap;

    @PostConstruct
            public void doInit(){
        typeDataSourceMap = new HashMap<>(){{
            put(SearchTypeEnum.ALGORITHM.getValue(), algorithmDataSource);
            put(SearchTypeEnum.POST.getValue(), postsDataSource);
            put(SearchTypeEnum.USER.getValue(), userDataSource);
        }};
    }

    public DataSource<?> getDataSourceByCategory(String category) {
        if (category == null) {
            return null;
        }
        return typeDataSourceMap.get(category);
    }
}
