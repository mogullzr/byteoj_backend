package com.example.backend.service.Impl.embedding;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings;
import com.example.backend.models.domain.embedding.SimilarityCluster;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.vo.similarity.ClusterVo;
import com.example.backend.service.embedding.SimilarityClusterService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 相似度团伙 Service 实现
 */
@Service
public class SimilarityClusterServiceImpl extends ServiceImpl<SimilarityClusterMapper, SimilarityCluster>
    implements SimilarityClusterService {

    @Autowired
    private UserMapper userMapper;

    private final ObjectMapper objectMapper = new ObjectMapper();
    @Autowired
    private ProblemCompetitionCodeEmbeddingsMapper problemCompetitionCodeEmbeddingsMapper;

    @Autowired
    private SimilarityClusterMapper similarityClusterMapper;

    @Override
    public Page<ClusterVo> getClustersByProblem(Long competitionId, String problemIndex, 
                                                Integer currentPage, Integer pageSize) throws JsonProcessingException {
        // 1. 构建查询条件(用于count)
        QueryWrapper<SimilarityCluster> countQuery = new QueryWrapper<>();
        countQuery.eq("competition_id", competitionId);
        if (problemIndex != null && !problemIndex.trim().isEmpty()) {
            countQuery.eq("problem_index", problemIndex);
        }
        
        // 2. 查询总数(不能带ORDER BY)
        long total = this.count(countQuery);
        
        // 3. 构建分页查询(带ORDER BY)
        QueryWrapper<SimilarityCluster> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        if (problemIndex != null && !problemIndex.trim().isEmpty()) {
            queryWrapper.eq("problem_index", problemIndex);
        }
        queryWrapper.orderByDesc("cluster_size");  // 按团伙大小降序
        
        // 4. 手动分页(PostgreSQL 不支持 LIMIT ?,? 语法)
        int offset = (currentPage - 1) * pageSize;
        queryWrapper.last("LIMIT " + pageSize + " OFFSET " + offset);
        
        List<SimilarityCluster> clusters = similarityClusterMapper.selectList(queryWrapper);
        
        // 4. 转换为 VO
        Page<ClusterVo> voPage = new Page<>(currentPage, pageSize, total);
        List<ClusterVo> voList = new ArrayList<>();
        
        for (SimilarityCluster cluster : clusters) {
            ClusterVo vo = new ClusterVo();
            vo.setCompetitionId(cluster.getCompetitionId());
            vo.setProblemIndex(cluster.getProblemIndex());
            vo.setClusterId(cluster.getClusterId());
            vo.setClusterSize(cluster.getClusterSize());
            vo.setAvgSimilarity(cluster.getAvgSimilarity());
            vo.setCreatedAt(cluster.getCreatedAt());
            
            // 解析用户UUID列表
            List<Long> userUuids = objectMapper.readValue(cluster.getUserUuids(), new TypeReference<List<Long>>(){});
            
            // 批量查询所有成员的源代码(一次查询)
            QueryWrapper<ProblemCompetitionCodeEmbeddings> codeQuery = new QueryWrapper<>();
            codeQuery.eq("competition_id", competitionId)
                    .eq("problem_index", cluster.getProblemIndex())
                    .in("uuid", userUuids);
            List<ProblemCompetitionCodeEmbeddings> embeddingsList = problemCompetitionCodeEmbeddingsMapper.selectList(codeQuery);
            
            // 构建 uuid -> sourceCode 映射
            java.util.Map<Long, String> sourceCodeMap = new java.util.HashMap<>();
            for (ProblemCompetitionCodeEmbeddings emb : embeddingsList) {
                sourceCodeMap.put(emb.getUuid(), emb.getSource_code());
            }
            
            // 批量查询所有成员的用户信息(一次查询)
            List<User> userList = userMapper.selectBatchIds(userUuids);
            java.util.Map<Long, User> userMap = new java.util.HashMap<>();
            for (User user : userList) {
                userMap.put(user.getUuid(), user);
            }
                        
            // 构建成员列表
            List<ClusterVo.ClusterMemberVo> members = new ArrayList<>();
            for (Long uuid : userUuids) {
                ClusterVo.ClusterMemberVo member = new ClusterVo.ClusterMemberVo();
                member.setUserUuid(uuid);
                            
                User user = userMap.get(uuid);
                member.setUserName(user != null ? user.getUsername() : "未知用户");
                            
                // 从映射中获取源代码
                member.setSourceCode(sourceCodeMap.getOrDefault(uuid, "未找到代码"));
                            
                members.add(member);
            }
            
            vo.setMembers(members);
            voList.add(vo);
        }
        
        voPage.setRecords(voList);
        return voPage;
    }

    @Override
    public Page<ClusterVo> getClustersByUser(Long competitionId, Long userUuid,
                                             Integer currentPage, Integer pageSize) throws JsonProcessingException {
        // 1. 查询该竞赛的所有团伙
        QueryWrapper<SimilarityCluster> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        queryWrapper.orderByDesc("cluster_size");
        
        // 2. 查询所有团伙(内存中过滤)
        List<SimilarityCluster> allClusters = this.list(queryWrapper);
        
        // 过滤出包含该用户的团伙
        List<SimilarityCluster> userClusters = allClusters.stream()
                .filter(c -> {
                    try {
                        List<Long> uuids = objectMapper.readValue(c.getUserUuids(), new TypeReference<List<Long>>(){});
                        return uuids.contains(userUuid);
                    } catch (Exception e) {
                        return false;
                    }
                })
                .collect(Collectors.toList());
        
        long total = userClusters.size();
        
        // 3. 手动分页
        int offset = (currentPage - 1) * pageSize;
        int end = Math.min(offset + pageSize, userClusters.size());
        
        List<SimilarityCluster> pagedClusters = new ArrayList<>();
        if (offset < userClusters.size()) {
            pagedClusters = userClusters.subList(offset, end);
        }
        
        // 4. 转换为 VO
        Page<ClusterVo> voPage = new Page<>(currentPage, pageSize, total);
        List<ClusterVo> voList = new ArrayList<>();
        
        for (SimilarityCluster cluster : pagedClusters) {
            ClusterVo vo = new ClusterVo();
            vo.setCompetitionId(cluster.getCompetitionId());
            vo.setProblemIndex(cluster.getProblemIndex());
            vo.setClusterId(cluster.getClusterId());
            vo.setClusterSize(cluster.getClusterSize());
            vo.setAvgSimilarity(cluster.getAvgSimilarity());
            vo.setCreatedAt(cluster.getCreatedAt());
            
            // 解析用户UUID列表
            List<Long> userUuids = objectMapper.readValue(cluster.getUserUuids(), new TypeReference<List<Long>>(){});
            
            // 批量查询所有成员的源代码(一次查询)
            QueryWrapper<ProblemCompetitionCodeEmbeddings> codeQuery = new QueryWrapper<>();
            codeQuery.eq("competition_id", competitionId)
                    .eq("problem_index", cluster.getProblemIndex())
                    .in("uuid", userUuids);
            List<ProblemCompetitionCodeEmbeddings> embeddingsList = problemCompetitionCodeEmbeddingsMapper.selectList(codeQuery);
            
            // 构建 uuid -> sourceCode 映射
            java.util.Map<Long, String> sourceCodeMap = new java.util.HashMap<>();
            for (ProblemCompetitionCodeEmbeddings emb : embeddingsList) {
                sourceCodeMap.put(emb.getUuid(), emb.getSource_code());
            }
            
            // 批量查询所有成员的用户信息(一次查询)
            List<User> userList = userMapper.selectBatchIds(userUuids);
            java.util.Map<Long, User> userMap = new java.util.HashMap<>();
            for (User user : userList) {
                userMap.put(user.getUuid(), user);
            }
            
            // 构建成员列表
            List<ClusterVo.ClusterMemberVo> members = new ArrayList<>();
            for (Long uuid : userUuids) {
                ClusterVo.ClusterMemberVo member = new ClusterVo.ClusterMemberVo();
                member.setUserUuid(uuid);
                
                User user = userMap.get(uuid);
                member.setUserName(user != null ? user.getUsername() : "未知用户");
                
                // 从映射中获取源代码
                member.setSourceCode(sourceCodeMap.getOrDefault(uuid, "未找到代码"));
                
                members.add(member);
            }
            
            vo.setMembers(members);
            voList.add(vo);
        }
        
        voPage.setRecords(voList);
        return voPage;
    }
}
