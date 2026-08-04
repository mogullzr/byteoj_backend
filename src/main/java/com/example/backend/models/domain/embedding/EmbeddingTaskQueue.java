package com.example.backend.models.domain.embedding;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Embedding 任务队列实体类
 * 用于持久化任务,实现断点续传
 */
@TableName(value = "embedding_task_queue")
@Data
public class EmbeddingTaskQueue implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 竞赛ID
     */
    @TableField("competition_id")
    private Long competitionId;

    /**
     * 批次索引(从1开始)
     */
    @TableField("batch_index")
    private Integer batchIndex;

    /**
     * 总批次数
     */
    @TableField("total_batches")
    private Integer totalBatches;

    /**
     * 用户UUID列表(JSON格式)
     * 对于 CLUSTER 类型任务,此字段为空
     */
    @TableField("user_uuids")
    private String userUuids;

    /**
     * 任务类型: EMBEDDING-代码向量化, SIMILARITY-相似度比对, CLUSTER-团伙计算
     */
    @TableField("task_type")
    private String taskType;

    /**
     * 执行状态: PENDING-待处理, PROCESSING-处理中, COMPLETED-已完成, FAILED-失败
     */
    @TableField("status")
    private String status;

    /**
     * 重试次数
     */
    @TableField("retry_count")
    private Integer retryCount;

    /**
     * 创建时间
     */
    @TableField("created_at")
    private Date createdAt;

    /**
     * 更新时间
     */
    @TableField("updated_at")
    private Date updatedAt;

    /**
     * 完成时间
     */
    @TableField("completed_at")
    private Date completedAt;
}
