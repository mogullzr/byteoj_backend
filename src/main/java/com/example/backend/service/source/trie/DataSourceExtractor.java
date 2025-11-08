//package com.example.backend.service.source.trie;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import java.util.List;
//
///**
// * 用于构建字典树
// * @author Mogullzr
// * @param <T>
// */
//public interface DataSourceExtractor<T> {
//    /**
//     * 从实体提取关键词
//     */
//    List<String> extractKeywords(T entity);
//
//    /**
//     * 获取实体ID
//     */
//    String getEntityId(T entity);
//
//    /**
//     * 获取Repository
//     */
//    JpaRepository<T, String> getRepository();
//
//    /**
//     * 数据源名称
//     */
//    String getSourceName();
//}