//package com.example.backend.service.source.trie.extractor;
//
//import com.example.backend.models.domain.pay.AccountFund;
//import com.example.backend.service.source.trie.DataSourceExtractor;
//import com.example.backend.service.source.trie.reposity.LantuPayResposity;
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
//public class LantuExtractor implements DataSourceExtractor<AccountFund> {
//    @Autowired
//    private LantuPayResposity lantuPayResposity;
//
//    @Override
//    public List<String> extractKeywords(AccountFund entity) {
//        List<String> keywords = new ArrayList<>();
//
//        // 分词商户单号
//        List<Term> terms = HanLP.segment(entity.getOut_trade_no());
//        keywords.addAll(terms.stream().map(term -> term.word).toList());
//
//        return keywords;
//    }
//
//    @Override
//    public String getEntityId(AccountFund entity) {
//        return getSourceName() + entity.getId();
//    }
//
//    @Override
//    public JpaRepository<AccountFund, String> getRepository() {
//        return lantuPayResposity;
//    }
//
//    @Override
//    public String getSourceName() {
//        return "Lantu";
//    }
//}