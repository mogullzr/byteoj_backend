-- 添加 task_type 字段
ALTER TABLE embedding_task_queue 
ADD COLUMN task_type VARCHAR(20) DEFAULT 'EMBEDDING';

-- 添加索引
CREATE INDEX IF NOT EXISTS idx_task_queue_task_type ON embedding_task_queue(task_type);

COMMENT ON COLUMN embedding_task_queue.task_type IS '任务类型: EMBEDDING-代码向量化, SIMILARITY-相似度比对, CLUSTER-团伙计算';
