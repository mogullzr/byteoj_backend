//package com.example.backend.service.source.trie.extractor;
//
//import com.example.backend.models.domain.spider.OjCompetition;
//import com.example.backend.service.source.trie.DataSourceExtractor;
//import com.example.backend.service.source.trie.reposity.OJCompetitionResposity;
//import com.hankcs.hanlp.HanLP;
//import com.hankcs.hanlp.seg.common.Term;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.stereotype.Component;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.stream.Collectors;
//
//@Component
//public class OJCompetitionExtractor implements DataSourceExtractor<OjCompetition> {
//    @Autowired
//    private OJCompetitionResposity ojCompetitionResposity;
//
//    @Override
//    public List<String> extractKeywords(OjCompetition entity) {
//        return segmentPrefix(entity.getTitle());
//    }
//
//    // 修改 search 方法中的分词调用
//    private List<String> segmentPrefix(String prefix) {
//        // 使用与插入时相同的分词方式
//        List<Term> terms = HanLP.segment(prefix);
//        return terms.stream()
//                .map(term -> term.word)
//                .filter(termWord -> !termWord.trim().isEmpty())
//                .collect(Collectors.toList());
//    }
//    @Override
//    public String getEntityId(OjCompetition entity) {
//        return getSourceName() + entity.getId();
//    }
//
//    @Override
//    public JpaRepository<OjCompetition, String> getRepository() {
//        return ojCompetitionResposity;
//    }
//
//    @Override
//    public String getSourceName() {
//        return "OJCompetition";
//    }
//}