//package com.example.backend.service.source.trie.extractor;
//
//import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
//import com.example.backend.service.source.trie.DataSourceExtractor;
//import com.example.backend.service.source.trie.reposity.AlgorithmResposity;
//import com.hankcs.hanlp.HanLP;
//import com.hankcs.hanlp.seg.common.Term;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.stereotype.Component;
//import java.util.*;
//
//@Component
//public class AlgorithmExtractor implements DataSourceExtractor<ProblemAlgorithmBank> {
//    @Autowired
//    private AlgorithmResposity algorithmResposity;
//
//    @Override
//    public List<String> extractKeywords(ProblemAlgorithmBank entity) {
//        List<String> keywords = new ArrayList<>();
//
//        // 分词算法试题名称
//        List<Term> terms = HanLP.segment(entity.getChinese_name());
//        keywords.addAll(terms.stream().map(term -> term.word).toList());
//
//        return keywords;
//    }
//
//    @Override
//    public String getEntityId(ProblemAlgorithmBank entity) {
//        return getSourceName() + entity.getProblem_id();
//    }
//
//    @Override
//    public JpaRepository<ProblemAlgorithmBank, String> getRepository() {
//        return algorithmResposity;
//    }
//
//    @Override
//    public String getSourceName() {
//        return "Algorithm";
//    }
//}