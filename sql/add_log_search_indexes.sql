-- MySQL 8，选择应用使用的数据库后执行一次。
-- 执行前用 SHOW INDEX FROM 表名 检查：已有相同前导列的索引时跳过对应语句。
-- 不会由应用启动自动执行。

-- 默认列表、时间范围查询以及稳定分页排序。
CREATE INDEX idx_log_operation_time_id ON log_operation (create_time, id);
CREATE INDEX idx_log_exception_time_id ON log_exception (create_time, id);

-- 按用户、模块筛选后按时间分页。
CREATE INDEX idx_log_operation_operator_time ON log_operation (operator_id, create_time, id);
CREATE INDEX idx_log_exception_operator_time ON log_exception (operator_id, create_time, id);
CREATE INDEX idx_log_operation_module_time ON log_operation (module, create_time, id);
CREATE INDEX idx_log_exception_module_time ON log_exception (module, create_time, id);

-- 用户名精确搜索（用户实体启用了逻辑删除）。
CREATE INDEX idx_user_username_deleted ON `user` (username, is_delete);

-- 验证：默认列表应优先使用时间索引，避免对全表执行 filesort。
EXPLAIN SELECT id, module, url, type, description, code, operator_id,
               operation_time, ip, create_time, method
FROM log_operation ORDER BY create_time DESC, id DESC LIMIT 10;
EXPLAIN SELECT id, module, url, type, description, code, operator_id,
               operation_time, ip, create_time, method
FROM log_exception ORDER BY create_time DESC, id DESC LIMIT 10;

-- code/type 是否需要单独的 (code, create_time, id)/(type, create_time, id)
-- 索引，应结合实际筛选频率、选择性及 EXPLAIN 决定，避免增加无用的写入开销。
