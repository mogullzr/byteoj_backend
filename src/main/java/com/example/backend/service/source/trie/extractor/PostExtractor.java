package com.example.backend.service.source.trie.extractor;

import com.example.backend.models.domain.posts.Posts;
import com.example.backend.service.source.trie.DataSourceExtractor;
import com.example.backend.service.source.trie.reposity.PostsResposity;
import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.seg.common.Term;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class PostExtractor implements DataSourceExtractor<Posts> {
    @Autowired
    private PostsResposity postsResposity;

    @Override
    public List<String> extractKeywords(Posts entity) {

        return segmentPrefix(entity.getTitle());
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
    public String getEntityId(Posts entity) {
        return getSourceName() + entity.getProblem_id();
    }

    @Override
    public JpaRepository<Posts, String> getRepository() {
        return postsResposity;
    }

    @Override
    public String getSourceName() {
        return "Post";
    }
}