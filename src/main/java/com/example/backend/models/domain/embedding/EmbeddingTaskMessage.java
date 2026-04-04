package com.example.backend.models.domain.embedding;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * Embedding 任务消息
 * 用于 RabbitMQ 消息传递
 */
@Data
public class EmbeddingTaskMessage implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 竞赛ID
     */
    private Long competitionId;

    /**
     * 用户UUID列表
     * CLUSTER 任务此字段为 null
     */
    private List<Long> userUuids;

    /**
     * 任务类型: EMBEDDING-代码向量化, SIMILARITY-相似度比对, CLUSTER-团伙计算
     */
    private String taskType;

    /**
     * 批次索引
     */
    private int batchIndex;

    /**
     * 总批次数
     */
    private int totalBatches;

    /**
     * 创建时间戳
     */
    private long createTime;

    /**
     * 任务队列ID(用于回调更新状态)
     */
    private Long taskQueueId;
}
