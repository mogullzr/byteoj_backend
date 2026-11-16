-- 已经执行过 alter_exam_ai_token_usage.sql 的数据库，只需要执行本文件。
-- ai_cost_cny 按 DeepSeek 官方人民币 Token 单价直接计算，不做美元汇率换算。
-- 如果 ai_cost_cny 已存在，请跳过对应语句。
ALTER TABLE problem_exam_record
    ADD COLUMN ai_cost_cny DECIMAL(18, 8) NULL;

ALTER TABLE problem_exam_user
    ADD COLUMN ai_cost_cny DECIMAL(18, 8) NULL;
