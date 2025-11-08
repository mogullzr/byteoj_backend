//package com.example.backend.utils.Trie;
//
//import com.example.backend.service.source.trie.DataSourceExtractor;
//import com.example.backend.service.source.trie.trie.Trie;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import javax.annotation.PostConstruct;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.stream.Collectors;
//
//@Service
//public class TrieBuilderUtils {
//    private final Trie trie = new Trie();
//
//    // 自动注入所有Extractor
//    @Autowired
//    private List<DataSourceExtractor<?>> extractors;
//
//    @PostConstruct
//    public void initTrie() {
//        System.out.println("Building Trie from multiple sources...");
//        long start = System.currentTimeMillis();
//
//        for (DataSourceExtractor<?> extractor : extractors) {
//            String sourceName = extractor.getSourceName();
//            System.out.println("Processing " + sourceName + "...");
//
//            List<?> entities = extractor.getRepository().findAll();
//
//            entities.forEach(entity -> {
//                @SuppressWarnings("unchecked")
//                List<String> keywords = extractor.extractKeywords((Class<? extends Object>) entity.getClass().cast(entity));
//                String id = extractor.getEntityId((Class<? extends Object>) entity.getClass().cast(entity));
//                keywords.forEach(keyword -> trie.insert(keyword, String.valueOf(id)));
//            });
//            System.out.println("Done " + sourceName + " (" + entities.size() + " entities)");
//        }
//
//        long duration = System.currentTimeMillis() - start;
//        System.out.println("Trie built in " + duration + "ms from " + extractors.size() + " sources");
//    }
//
//    public List<Trie.Suggestion> autocomplete(String prefix, int limit) {
//        if (prefix == null || prefix.length() < 2) {
//            return new ArrayList<>();
//        }
//        return trie.search(prefix, limit);
//    }
//
//    // 增量更新
//    public void updateTrie(Object entity, String sourceName, boolean isInsert) {
//        DataSourceExtractor<?> extractor = extractors.stream()
//                .filter(e -> e.getSourceName().equals(sourceName))
//                .findFirst()
//                .orElseThrow(() -> new RuntimeException("No extractor for " + sourceName));
//
//        @SuppressWarnings("unchecked")
//        List<String> keywords = extractor.extractKeywords((T) entity);
//        Long id = extractor.getEntityId((T) entity);
//
//        if (isInsert) {
//            keywords.forEach(keyword -> trie.insert(keyword, id));
//        } else {
//            // TODO: 实现删除：trie.remove(keyword, id); 需要扩展Trie支持remove
//        }
//    }
//
//    // Getter for testing
//    public Trie getTrie() {
//        return trie;
//    }
//}