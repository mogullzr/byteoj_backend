//package com.example.backend.service.source.trie.extractor;
//
//import com.example.backend.models.domain.user.User;
//import com.example.backend.service.source.trie.DataSourceExtractor;
//import com.example.backend.service.source.trie.reposity.UserResposity;
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
//public class UserExtractor implements DataSourceExtractor<User> {
//    @Autowired
//    private UserResposity UserResposity;
//
//    @Override
//    public List<String> extractKeywords(User entity) {
//        List<String> keywords = new ArrayList<>();
//
//        // 分词用户名
//        List<Term> Userterms = HanLP.segment(entity.getUsername());
//        keywords.addAll(Userterms.stream().map(term -> term.word).toList());
//
//        // 分词账户名
//        List<Term> AccountTerms = HanLP.segment(entity.getAccount());
//        keywords.addAll(AccountTerms.stream().map(term -> term.word).toList());
//
//        // 添加QQ号
//        keywords.add(entity.getEmail());
//
//        return keywords;
//    }
//
//    @Override
//    public String getEntityId(User entity) {
//        return getSourceName() + entity.getUuid();
//    }
//
//    @Override
//    public JpaRepository<User, String> getRepository() {
//        return UserResposity;
//    }
//
//    @Override
//    public String getSourceName() {
//        return "User";
//    }
//}