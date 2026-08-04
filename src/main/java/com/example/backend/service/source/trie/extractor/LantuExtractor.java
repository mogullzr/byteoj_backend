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
//import java.util.stream.Collectors;
//
//@Component
//public class LantuExtractor implements DataSourceExtractor<AccountFund> {
//    @Autowired
//    private LantuPayResposity lantuPayResposity;
//
//    @Override
//    public List<String> extractKeywords(AccountFund entity) {
//        return segmentPrefix(entity.getOut_trade_no());
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