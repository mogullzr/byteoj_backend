package com.example.backend.models.domain.embedding;

import lombok.Data;
import java.io.Serializable;
import java.util.List;

/**
 * Embedding 任务消息体
 * 用于异步处理代码向量化和相似度比对
 */
@Data
public class EmbeddingTaskMessage implements Serializable {
    
    /**
     * 竞赛ID
     */
    private Long competitionId;
    
    /**
     * 用户UUID列表(每批50个用户)
     */
    private List<Long> userUuids;
    
    /**
     * 任务类型: EMBEDDING-向量化, SIMILARITY-相似度比对
     */
    private String taskType;
    
    /**
     * 批次索引(用于日志追踪和进度记录)
     */
    private int batchIndex;
    
    /**
     * 总批次数(用于判断是否最后一批)
     */
    private int totalBatches;
    
    /**
     * 创建时间
     */
    private Long createTime;
    
    /**
     * 任务队列ID(用于回调更新状态)
     */
    private Long taskQueueId;
}
