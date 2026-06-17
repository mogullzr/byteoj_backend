package com.example.backend.service.source.trie.trie;

import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.seg.Segment;
import com.hankcs.hanlp.seg.common.Term;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.*;
import java.util.stream.Collectors;

@Data
public class Trie {
    private TrieNode root = new TrieNode();

    public void insert(List<String> words, String entityId) {
        if (words.isEmpty()) return;
        TrieNode node = root;
        for (String word : words) {
            node = node.getChildren().computeIfAbsent(word.toLowerCase(), k -> new TrieNode());
        }
        node.setEnd(true);
        node.addProblemId(entityId);
    }

    public List<Suggestion> search(String prefix, int limit) {
        if (prefix == null || prefix.trim().isEmpty()) {
            return new ArrayList<>();
        }

        List<String> prefixWords = segmentPrefix(prefix.toLowerCase());
        System.out.println("Segmented prefix: " + prefixWords);

        if (prefixWords.isEmpty()) {
            return new ArrayList<>();
        }

        // 定位到最后一个完整匹配的节点
        SearchResult result = traverseToLastFullMatch(prefixWords);
        if (!result.isSuccess()) {
            System.out.println("Traverse failed for: " + prefixWords);
            return new ArrayList<>();
        }

        List<Suggestion> suggestions = new ArrayList<>();

        // 如果正好在结束结束节点，添加当前路径
        if (result.getCurrentNode().isEnd()) {
            String fullPhrase = String.join("", result.getCurrentPath());
            suggestions.add(new Suggestion(fullPhrase,
                    new ArrayList<>(result.getCurrentNode().getProblemIds())));
        }

        // 收集所有子节点的短语
        collectAllPhrases(result.getCurrentNode(), result.getCurrentPath(),
                suggestions, limit);

        // 按关联实体数量排序
        suggestions.sort((a, b) -> Integer.compare(b.getIds().size(), a.getIds().size()));
        return suggestions.subList(0, Math.min(limit, suggestions.size()));
    }

    /**
     * 遍历到最后一个完全匹配的词
     */
    private SearchResult traverseToLastFullMatch(List<String> prefixWords) {
        TrieNode node = root;
        List<String> currentPath = new ArrayList<>();

        for (int i = 0; i < prefixWords.size(); i++) {
            String currentWord = prefixWords.get(i).toLowerCase();

            // 尝试找到精确匹配的子节点
            boolean foundExact = false;
            for (Map.Entry<String, TrieNode> entry : node.getChildren().entrySet()) {
                if (entry.getKey().equals(currentWord)) {
                    //                    // 精确匹配成功
                    node = entry.getValue();
                    currentPath.add(entry.getKey());
                    foundExact = true;
                    break;
                }
            }

            if (!foundExact) {
                // 没有精确匹配，尝试前缀匹配（只在最后一个词时）
                if (i == prefixWords.size() - 1) {
                    // 对于最后一个词，允许前缀匹配
                    for (Map.Entry<String, TrieNode> entry : node.getChildren().entrySet()) {
                        if (entry.getKey().startsWith(currentWord)) {
                            node = entry.getValue();
                            currentPath.add(entry.getKey());
                            return new SearchResult(node, currentPath, true);
                        }
                    }
                }
                // 中间词必须精确匹配
                return new SearchResult(null, Collections.emptyList(), false);
            }
        }

        return new SearchResult(node, currentPath, true);
    }

    /**
     * 收集所有可能的短语
     */
    private void collectPhrases(TrieNode node, List<String> currentPath,
                                List<Suggestion> suggestions, int limit) {
        if (suggestions.size() >= limit) return;

        // 如果当前节点是结束节点，添加到建议列表
        if (node.isEnd()) {
            String fullPhrase = String.join("", currentPath);
            suggestions.add(new Suggestion(fullPhrase,
                    new ArrayList<>(node.getProblemIds())));
        }

        // 递归遍历所有子节点
        for (Map.Entry<String, TrieNode> entry : node.getChildren().entrySet()) {
            if (suggestions.size() >= limit) break;

            List<String> newPath = new ArrayList<>(currentPath);
            newPath.add(entry.getKey());
            collectPhrases(entry.getValue(), newPath, suggestions, limit);
        }
    }

    /**
     * 优化的收集方法：使用BFS避免栈溢出
     */
    private void collectAllPhrases(TrieNode startNode, List<String> startPath,
                                   List<Suggestion> suggestions, int limit) {
        Queue<BFSNode> queue = new LinkedList<>();
        queue.offer(new BFSNode(startNode, new ArrayList<>(startPath)));

        while (!queue.isEmpty() && suggestions.size() < limit) {
            BFSNode current = queue.poll();

            // 如果是结束节点，添加到结果
            if (current.node.isEnd()) {
                String fullPhrase = String.join("", current.path);
                suggestions.add(new Suggestion(fullPhrase,
                        new ArrayList<>(current.node.getProblemIds())));

                if (suggestions.size() >= limit) break;
            }

            // 将所有子节点加入队列
            for (Map.Entry<String, TrieNode> entry : current.node.getChildren().entrySet()) {
                List<String> newPath = new ArrayList<>(current.path);
                newPath.add(entry.getKey());
                queue.offer(new BFSNode(entry.getValue(), newPath));
            }
        }
    }

    // 预分词：INDEX模式，保留短英文/C++
    private List<String> segmentPrefix(String prefix) {
        Segment segment = HanLP.newSegment().enableIndexMode(true);
        List<Term> terms = segment.seg(prefix);
        return terms.stream()
                .map(term -> term.word)
                .filter(termWord -> termWord.length() >= 1 || termWord.matches("^[A-Za-z0-9+]+.*$"))
                .collect(Collectors.toList());
    }

    public void printTree() {
        System.out.println("=== Trie树内容 ===");
        printNode(root, "", 0);
    }

    private void printNode(TrieNode node, String word, int depth) {
        StringBuilder indent = new StringBuilder();
        for (int i = 0; i < depth; i++) {
            indent.append("  ");
        }

        if (node.isEnd()) {
            System.out.println(indent + "'" + word + "' [END] IDs: " + node.getProblemIds());
        } else {
            System.out.println(indent + "'" + word + "'");
        }

        for (Map.Entry<String, TrieNode> entry : node.getChildren().entrySet()) {
            printNode(entry.getValue(), entry.getKey(), depth + 1);
        }
    }
    /**
     * 辅助类：搜索结果
     */
    @Data
    @AllArgsConstructor
    private static class SearchResult {
        private TrieNode currentNode;
        private List<String> currentPath;
        private boolean success;
    }

    /**
     * 辅助类：BFS遍历节点
     */
    @AllArgsConstructor
    private static class BFSNode {
        TrieNode node;
        List<String> path;
    }

    @Data
    @AllArgsConstructor
    public static class Suggestion {
        private String word;
        private List<String> ids;
    }
}