package com.example.backend.service.Impl.competition;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.embedding.EmbeddingTaskQueue;
import com.example.backend.service.competition.EmbeddingTaskQueueService;
import com.example.backend.mapper.EmbeddingTaskQueueMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【embedding_task_queue(Embedding任务队列,用于持久化任务状态,支持断点续传)】的数据库操作Service实现
* @createDate 2026-04-03 16:41:31
*/
@Service
public class EmbeddingTaskQueueServiceImpl extends ServiceImpl<EmbeddingTaskQueueMapper, EmbeddingTaskQueue>
    implements EmbeddingTaskQueueService{
}




