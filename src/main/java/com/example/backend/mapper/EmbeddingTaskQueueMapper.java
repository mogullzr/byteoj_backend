package com.example.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.embedding.EmbeddingTaskQueue;

/**
* @author Mogullzr
* @description 针对表【embedding_task_queue(Embedding任务队列,用于持久化任务状态,支持断点续传)】的数据库操作Mapper
* @createDate 2026-04-03 16:41:31
* @Entity generator.domain.EmbeddingTaskQueue
*/
public interface EmbeddingTaskQueueMapper extends BaseMapper<EmbeddingTaskQueue> {

}




