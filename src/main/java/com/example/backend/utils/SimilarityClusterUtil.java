package com.example.backend.utils;

import com.alibaba.fastjson.JSON;
import com.baomidou.dynamic.datasource.toolkit.DynamicDataSourceContextHolder;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.mapper.CompetitionsMapper;
import com.example.backend.mapper.CompetitionsProblemsAlgorithmMapper;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.example.backend.models.domain.embedding.CodeSimilarityResult;
import com.example.backend.models.domain.embedding.SimilarityCluster;
import com.example.backend.service.competition.CodeSimilarityResultService;
import com.example.backend.service.embedding.SimilarityClusterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.*;

/**
 * 相似度团伙计算工具类
 * 使用连通分量算法(DFS)识别独立的抄袭团伙
 * 注意: 不再使用定时任务,由 EmbeddingConsumer 在相似度任务完成后自动触发
 */
@Component
public class SimilarityClusterUtil {
    private static final Logger log = LoggerFactory.getLogger(SimilarityClusterUtil.class);

    @Autowired
    private CompetitionsMapper competitionsMapper;

    @Autowired
    private CompetitionsProblemsAlgorithmMapper competitionsProblemsAlgorithmMapper;

    @Resource
    private CodeSimilarityResultService codeSimilarityResultService;

    @Resource
    private SimilarityClusterService similarityClusterService;

    /**8
     * 计算相似度团伙
     * 由 EmbeddingConsumer 在相似度任务完成后触发
     * @param competitionId 竞赛ID
     */
    public void calculateSimilarityClusters(Long competitionId) {
        // log.info("[团伙计算] 开始执行, competitionId: {}", competitionId);

        // 1. 验证竞赛是否存在
        Competitions competition = competitionsMapper.selectById(competitionId);
        if (competition == null) {
            log.error("[团伙计算] 竞赛 {} 不存在", competitionId);
            return;
        }

        // 2. 查询该竞赛的所有题目
        QueryWrapper<CompetitionsProblemsAlgorithm> probQuery = new QueryWrapper<>();
        probQuery.eq("competition_id", competitionId);
        List<CompetitionsProblemsAlgorithm> problems = competitionsProblemsAlgorithmMapper.selectList(probQuery);

        if (problems.isEmpty()) {
            // log.info("[团伙计算] 竞赛 {} 没有题目", competitionId);
            return;
        }

        int totalClusters = 0;

        // 3. 对每道题目计算团伙
        for (CompetitionsProblemsAlgorithm problem : problems) {
            String problemIndex = problem.getIdx();

            try {
                int clusters = calculateClustersForProblem(competitionId, problemIndex);
                totalClusters += clusters;
            } catch (Exception e) {
                log.error("[团伙计算] 竞赛 {} 题目 {} 计算失败: {}",
                        competitionId, problemIndex, e.getMessage(), e);
            }
        }

        // log.info("[团伙计算] 完成, competitionId: {}, 共计算 {} 个团伙", competitionId, totalClusters);
    }

    /**
     * 为单个题目计算团伙
     * @return 团伙数量
     */
    private int calculateClustersForProblem(Long competitionId, String problemIndex) {
        // 1. 检查是否已计算过
        DynamicDataSourceContextHolder.push("pg");
        try {
            Long existCount = similarityClusterService.count(
                    new QueryWrapper<SimilarityCluster>()
                            .eq("competition_id", competitionId)
                            .eq("problem_index", problemIndex)
            );

            if (existCount > 0) {
                log.debug("[团伙计算] 竞赛 {} 题目 {} 已计算,跳过", competitionId, problemIndex);
                return 0;
            }
        } finally {
            DynamicDataSourceContextHolder.poll();
        }

        // 2. 查询该题目的所有相似度记录
        DynamicDataSourceContextHolder.push("pg");
        try {
            QueryWrapper<CodeSimilarityResult> query = new QueryWrapper<>();
            query.eq("competition_id", competitionId)
                    .eq("problem_index", problemIndex)
                    .ge("similarity_score", 0.85);  // 只处理高相似度
            List<CodeSimilarityResult> results = codeSimilarityResultService.list(query);

            if (results.isEmpty()) {
                log.debug("[团伙计算] 竞赛 {} 题目 {} 没有相似度记录", competitionId, problemIndex);
                return 0;
            }

            // 3. 使用图算法找出连通分量(团伙)
            List<Set<Long>> clusters = findConnectedComponents(results);

            // 4. 保存到数据库
            List<SimilarityCluster> clusterList = new ArrayList<>();
            for (int i = 0; i < clusters.size(); i++) {
                Set<Long> cluster = clusters.get(i);

                // 计算平均相似度
                double avgSimilarity = calculateAvgSimilarity(results, cluster);

                SimilarityCluster similarityCluster = new SimilarityCluster();
                similarityCluster.setCompetitionId(competitionId);
                similarityCluster.setProblemIndex(problemIndex);
                similarityCluster.setClusterId(i + 1);
                similarityCluster.setClusterSize(cluster.size());
                similarityCluster.setAvgSimilarity(avgSimilarity);
                similarityCluster.setUserUuids(JSON.toJSONString(new ArrayList<>(cluster)));
                similarityCluster.setCreatedAt(new Date());

                clusterList.add(similarityCluster);
            }

            if (!clusterList.isEmpty()) {
                similarityClusterService.saveBatch(clusterList);
                // log.info("[团伙计算] 竞赛 {} 题目 {} 发现 {} 个团伙",
//                        competitionId, problemIndex, clusterList.size());
            }
            
            return clusterList.size();
        } finally {
            DynamicDataSourceContextHolder.poll();
        }
    }

    /**
     * 使用 DFS 找出所有连通分量(团伙)
     */
    private List<Set<Long>> findConnectedComponents(List<CodeSimilarityResult> results) {
        // 1. 构建邻接表
        Map<Long, Set<Long>> graph = new HashMap<>();
        for (CodeSimilarityResult result : results) {
            graph.computeIfAbsent(result.getUserUuid1(), k -> new HashSet<>())
                    .add(result.getUserUuid2());
            graph.computeIfAbsent(result.getUserUuid2(), k -> new HashSet<>())
                    .add(result.getUserUuid1());
        }

        // 2. DFS 找连通分量
        Set<Long> visited = new HashSet<>();
        List<Set<Long>> clusters = new ArrayList<>();

        for (Long userId : graph.keySet()) {
            if (!visited.contains(userId)) {
                Set<Long> cluster = new HashSet<>();
                dfs(userId, graph, visited, cluster);

                // 只保留3人以上的团伙
                if (cluster.size() >= 3) {
                    clusters.add(cluster);
                }
            }
        }

        return clusters;
    }

    /**
     * DFS 遍历
     */
    private void dfs(Long userId, Map<Long, Set<Long>> graph,
                     Set<Long> visited, Set<Long> cluster) {
        visited.add(userId);
        cluster.add(userId);

        for (Long neighbor : graph.getOrDefault(userId, new HashSet<>())) {
            if (!visited.contains(neighbor)) {
                dfs(neighbor, graph, visited, cluster);
            }
        }
    }

    /**
     * 计算团伙的平均相似度
     */
    private double calculateAvgSimilarity(List<CodeSimilarityResult> results, Set<Long> cluster) {
        double sum = 0;
        int count = 0;

        for (CodeSimilarityResult result : results) {
            if (cluster.contains(result.getUserUuid1())
                    && cluster.contains(result.getUserUuid2())) {
                sum += result.getSimilarityScore();
                count++;
            }
        }

        return count > 0 ? sum / count : 0;
    }
}
