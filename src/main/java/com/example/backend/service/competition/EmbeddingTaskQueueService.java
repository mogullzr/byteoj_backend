package com.example.backend.service.competition;

import com.example.backend.models.domain.embedding.EmbeddingTaskQueue;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author Mogullzr
* @description 针对表【embedding_task_queue(Embedding任务队列,用于持久化任务状态,支持断点续传)】的数据库操作Service
* @createDate 2026-04-03 16:41:31
*/
public interface EmbeddingTaskQueueService extends IService<EmbeddingTaskQueue> {

}
