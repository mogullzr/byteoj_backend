//package com.example.backend.service.source.trie.extractor;
//
//import com.example.backend.models.domain.posts.Posts;
//import com.example.backend.service.source.trie.DataSourceExtractor;
//import com.example.backend.service.source.trie.reposity.PostsResposity;
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
//public class PostExtractor implements DataSourceExtractor<Posts> {
//    @Autowired
//    private PostsResposity postsResposity;
//
//    @Override
//    public List<String> extractKeywords(Posts entity) {
//        List<String> keywords = new ArrayList<>();
//
//        // 分词帖子名称
//        List<Term> terms = HanLP.segment(entity.getTitle());
//        keywords.addAll(terms.stream().map(term -> term.word).toList());
//
//        return keywords;
//    }
//
//    @Override
//    public String getEntityId(Posts entity) {
//        return getSourceName() + entity.getProblem_id();
//    }
//
//    @Override
//    public JpaRepository<Posts, String> getRepository() {
//        return postsResposity;
//    }
//
//    @Override
//    public String getSourceName() {
//        return "Post";
//    }
//}