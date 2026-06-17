package com.example.backend.service.source.trie.extractor;

import com.example.backend.models.domain.user.User;
import com.example.backend.service.source.trie.DataSourceExtractor;
import com.example.backend.service.source.trie.reposity.UserResposity;
import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.seg.common.Term;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class UserExtractor implements DataSourceExtractor<User> {
    @Autowired
    private UserResposity UserResposity;

    @Override
    public List<String> extractKeywords(User entity) {
        List<String> keywords = new ArrayList<>();

        keywords.addAll(segmentPrefix(entity.getAccount()));

//        keywords.addAll(segmentPrefix(entity.getUsername()));
        // 添加QQ号
//        keywords.add(entity.getEmail());

        return keywords;
    }

    // 修改 search 方法中的分词调用
    private List<String> segmentPrefix(String prefix) {
        // 使用与插入时相同的分词方式
        List<Term> terms = HanLP.segment(prefix);
        return terms.stream()
                .map(term -> term.word)
                .filter(termWord -> !termWord.trim().isEmpty())
                .collect(Collectors.toList());
    }
    @Override
    public String getEntityId(User entity) {
        return getSourceName() + entity.getUuid();
    }

    @Override
    public JpaRepository<User, String> getRepository() {
        return UserResposity;
    }

    @Override
    public String getSourceName() {
        return "User";
    }
}