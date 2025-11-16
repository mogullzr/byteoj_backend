-- =====================================================
-- 性能优化：添加数据库索引
-- 说明：这些索引可以显著提升高并发下的查询性能
-- =====================================================

USE byteoj;

-- 检查并添加索引（如果不存在）
-- 注意：在生产环境添加索引可能需要一些时间，建议在低峰期执行

-- =====================================================
-- 1. competitions_problems_algorithm 表
-- =====================================================

-- 检查现有索引
SHOW INDEX FROM competitions_problems_algorithm;

-- 添加复合索引：competition_id + idx
-- 用途：原子更新时快速定位记录
SELECT CONCAT('为 competitions_problems_algorithm 表添加索引...') AS status;

-- 如果索引不存在，则添加
SET @exist := (
    SELECT COUNT(*) 
    FROM information_schema.statistics 
    WHERE table_schema = 'byteoj' 
    AND table_name = 'competitions_problems_algorithm' 
    AND index_name = 'idx_competition_idx'
);

SET @query := IF(
    @exist = 0,
    'ALTER TABLE competitions_problems_algorithm ADD INDEX idx_competition_idx (competition_id, idx)',
    'SELECT "索引 idx_competition_idx 已存在" AS message'
);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- =====================================================
-- 2. competition_ac_problems_algorithm 表
-- =====================================================

-- 检查现有索引
SHOW INDEX FROM competition_ac_problems_algorithm;

-- 添加复合索引：competition_id + uuid + idx
-- 用途：原子更新时快速定位记录
SELECT CONCAT('为 competition_ac_problems_algorithm 表添加索引...') AS status;

SET @exist := (
    SELECT COUNT(*) 
    FROM information_schema.statistics 
    WHERE table_schema = 'byteoj' 
    AND table_name = 'competition_ac_problems_algorithm' 
    AND index_name = 'idx_competition_user_idx'
);

SET @query := IF(
    @exist = 0,
    'ALTER TABLE competition_ac_problems_algorithm ADD INDEX idx_competition_user_idx (competition_id, uuid, idx)',
    'SELECT "索引 idx_competition_user_idx 已存在" AS message'
);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- =====================================================
-- 3. competitions_user 表
-- =====================================================

-- 检查现有索引
SHOW INDEX FROM competitions_user;

-- 添加复合索引：competition_id + uuid
-- 用途：原子更新时快速定位记录
SELECT CONCAT('为 competitions_user 表添加索引...') AS status;

SET @exist := (
    SELECT COUNT(*) 
    FROM information_schema.statistics 
    WHERE table_schema = 'byteoj' 
    AND table_name = 'competitions_user' 
    AND index_name = 'idx_competition_user'
);

SET @query := IF(
    @exist = 0,
    'ALTER TABLE competitions_user ADD INDEX idx_competition_user (competition_id, uuid)',
    'SELECT "索引 idx_competition_user 已存在" AS message'
);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- =====================================================
-- 4. problem_algorithm_bank 表
-- =====================================================

-- 检查现有索引
SHOW INDEX FROM problem_algorithm_bank;

-- 通常 problem_id 作为主键已经有索引，这里只是检查
-- 如果需要添加其他常用查询字段的索引，可以在这里添加

SELECT CONCAT('✅ 所有索引检查/添加完成！') AS status;

-- =====================================================
-- 验证索引是否创建成功
-- =====================================================

SELECT '检查 competitions_problems_algorithm 索引:' AS check_result;
SHOW INDEX FROM competitions_problems_algorithm WHERE Key_name = 'idx_competition_idx';

SELECT '检查 competition_ac_problems_algorithm 索引:' AS check_result;
SHOW INDEX FROM competition_ac_problems_algorithm WHERE Key_name = 'idx_competition_user_idx';

SELECT '检查 competitions_user 索引:' AS check_result;
SHOW INDEX FROM competitions_user WHERE Key_name = 'idx_competition_user';

-- =====================================================
-- 完成提示
-- =====================================================

SELECT CONCAT(
    '✅ 数据库索引优化完成！',
    '\n建议：',
    '\n1. 重启应用以应用所有优化',
    '\n2. 监控系统性能（CPU、内存、负载）',
    '\n3. 观察查询是否变快',
    '\n4. 如果仍有性能问题，考虑增加服务器配置或使用分布式架构'
) AS completion_message;

