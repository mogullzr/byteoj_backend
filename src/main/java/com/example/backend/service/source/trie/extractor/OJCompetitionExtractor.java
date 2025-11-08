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
//
//@Component
//public class OJCompetitionExtractor implements DataSourceExtractor<OjCompetition> {
//    @Autowired
//    private OJCompetitionResposity ojCompetitionResposity;
//
//    @Override
//    public List<String> extractKeywords(OjCompetition entity) {
//        List<String> keywords = new ArrayList<>();
//
//        // 分词OJ竞赛名称
//        List<Term> terms = HanLP.segment(entity.getTitle());
//        keywords.addAll(terms.stream().map(term -> term.word).toList());
//
//        return keywords;
//    }
//
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