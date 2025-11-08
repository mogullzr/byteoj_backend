package com.example.backend.service.source.trie.trie;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.*;

@Data
public class TrieNode {
    /**
     * 子节点
     */
    private Map<Character, TrieNode> children = new HashMap<>();

    /**
     * 是否为终端结点
     */
    private boolean isEnd = false;

    /**
     * ID列表
     */
    private List<String> problemIds = new ArrayList<>();  // 通用ID列表

    /**
     * 判断是否为终端结点
     *
     * @return 是否为终端结点
     */
    public boolean isEnd() {
        return isEnd;
    }

    public void addProblemId(String id) {
        if (!problemIds.contains(id)) {
            problemIds.add(id);
        }
    }
}