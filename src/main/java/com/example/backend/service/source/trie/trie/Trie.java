package com.example.backend.service.source.trie.trie;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.*;

/**
 * 前缀树基本操作
 *
 */
@Data
public class Trie {
    private TrieNode root = new TrieNode();

    /**
     * 插入结点
     * @param word 单词
     * @param entityId 插入结点ID
     */
    public void insert(String word, String entityId) {
        TrieNode node = root;
        for (char ch : word.toCharArray()) {
            node = node.getChildren().computeIfAbsent(ch, k -> new TrieNode());
        }
        node.setEnd(true);
        node.addProblemId(entityId);
    }

    /**
     * 在字典树当中查找prefix字符，
     *
     * @param prefix 查询字符串
     * @param limit 字符串长度上限
     * @return 查询出来的完整字符串
     */
    public List<Suggestion> search(String prefix, int limit) {
        TrieNode node = root;
        for (char ch : prefix.toCharArray()) {
            node = node.getChildren().get(ch);
            if (node == null) {
                return new ArrayList<>();
            }
        }
        List<Suggestion> suggestions = new ArrayList<>();
        collectSuggestions(node, prefix, suggestions, limit);

        // 按ID数量排序（热度代理）
        suggestions.sort((a, b) -> Integer.compare(b.getIds().size(), a.getIds().size()));
        return suggestions.subList(0, Math.min(limit, suggestions.size()));
    }
    
    private void collectSuggestions(TrieNode node, String prefix, List<Suggestion> suggestions, int limit) {
        if (suggestions.size() >= limit) return;
        if (node.isEnd()) {
            Suggestion sug = new Suggestion(prefix, new ArrayList<>(node.getProblemIds()));
            suggestions.add(sug);
        }
        for (Map.Entry<Character, TrieNode> entry : node.getChildren().entrySet()) {
            if (suggestions.size() >= limit) return;
            collectSuggestions(entry.getValue(), prefix + entry.getKey(), suggestions, limit);
        }
    }

    @Data
    @AllArgsConstructor
    public static class Suggestion {
        private String word;
        private List<String> ids;
    }
}