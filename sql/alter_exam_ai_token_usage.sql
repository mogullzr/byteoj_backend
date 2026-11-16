-- DeepSeek 判卷 Token/费用统计。
-- 在 MySQL/PostgreSQL 中执行一次；若列已存在，请跳过对应 ADD COLUMN。
ALTER TABLE problem_exam_record
    ADD COLUMN ai_model VARCHAR(100) NULL,
    ADD COLUMN prompt_tokens INT NULL,
    ADD COLUMN prompt_cache_hit_tokens INT NULL,
    ADD COLUMN prompt_cache_miss_tokens INT NULL,
    ADD COLUMN completion_tokens INT NULL,
    ADD COLUMN total_tokens INT NULL,
    ADD COLUMN ai_cost_cny DECIMAL(18, 8) NULL;

ALTER TABLE problem_exam_user
    ADD COLUMN ai_model VARCHAR(100) NULL,
    ADD COLUMN prompt_tokens INT NULL,
    ADD COLUMN prompt_cache_hit_tokens INT NULL,
    ADD COLUMN prompt_cache_miss_tokens INT NULL,
    ADD COLUMN completion_tokens INT NULL,
    ADD COLUMN total_tokens INT NULL,
    ADD COLUMN ai_cost_cny DECIMAL(18, 8) NULL;
