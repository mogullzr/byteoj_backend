-- ========================================
-- 为 problem_competition_code_embeddings 表添加 source_code 字段
-- ========================================

ALTER TABLE problem_competition_code_embeddings 
ADD COLUMN source_code TEXT COMMENT '源代码内容';

COMMENT ON COLUMN problem_competition_code_embeddings.source_code IS '源代码内容,用于相似度比对时直接获取,无需再次查询';

-- ========================================
-- 说明:
-- 1. 在生成 embedding 时同时保存源代码
-- 2. 相似度比对时直接从该表获取代码,无需再查询 submissions 表
-- 3. 提高查询效率,减少 JOIN 操作
-- ========================================
