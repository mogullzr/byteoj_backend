package com.example.backend.service.embedding;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.EmbeddingTaskQueueMapper;
import com.example.backend.models.domain.embedding.EmbeddingTaskQueue;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Embedding 任务队列 Service
 * 使用 @DS("pg") 切换到 PostgreSQL 数据源
 */
@Service
@DS("pg")
public class EmbeddingTaskQueueService extends ServiceImpl<EmbeddingTaskQueueMapper, EmbeddingTaskQueue> {
    
    /**
     * 查询指定竞赛的任务数量(所有类型)
     */
    public long countByCompetitionId(Long competitionId) {
        QueryWrapper<EmbeddingTaskQueue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        return count(queryWrapper);
    }
    
    /**
     * 查询指定竞赛的 EMBEDDING 任务数量(用于判断是否创建过)
     */
    public long countEmbeddingTasksByCompetitionId(Long competitionId) {
        QueryWrapper<EmbeddingTaskQueue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId)
                .eq("task_type", "EMBEDDING");
        return count(queryWrapper);
    }
    
    /**
     * 批量保存任务(带事务)
     */
    @Transactional(rollbackFor = Exception.class)
    public boolean saveTasksBatch(List<EmbeddingTaskQueue> taskList) {
        return saveBatch(taskList);
    }
    
    /**
     * 查询待处理任务(所有类型)
     */
    public List<EmbeddingTaskQueue> listPendingTasks(int limit) {
        QueryWrapper<EmbeddingTaskQueue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status", "PENDING")
                .orderByAsc("created_at")
                .last("LIMIT " + limit);
        return list(queryWrapper);
    }
}
