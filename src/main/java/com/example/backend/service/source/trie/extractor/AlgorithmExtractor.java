package com.example.backend.service.source.trie.extractor;

import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.service.source.trie.DataSourceExtractor;
import com.example.backend.service.source.trie.reposity.AlgorithmResposity;
import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.seg.common.Term;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import java.util.*;
import java.util.stream.Collectors;

@Component
public class AlgorithmExtractor implements DataSourceExtractor<ProblemAlgorithmBank> {
    @Autowired
    private AlgorithmResposity algorithmResposity;

    @Override
    public List<String> extractKeywords(ProblemAlgorithmBank entity) {

        // 分词算法试题名称

        return new ArrayList<>(segmentPrefix(entity.getChinese_name()));
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
    public String getEntityId(ProblemAlgorithmBank entity) {
        return getSourceName() + entity.getProblem_id();
    }

    @Override
    public JpaRepository<ProblemAlgorithmBank, String> getRepository() {
        return algorithmResposity;
    }

    @Override
    public String getSourceName() {
        return "Algorithm";
    }
}