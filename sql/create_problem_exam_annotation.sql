CREATE TABLE problem_exam_annotation
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    exam_user_id BIGINT NOT NULL COMMENT '用户答卷记录ID',
    problem_id   BIGINT NOT NULL COMMENT '试题ID',
    uuid         BIGINT NOT NULL COMMENT '用户ID',
    annotation   TEXT NOT NULL COMMENT '用户复习标注',
    create_date  DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '创建时间',
    update_date  DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '更新时间',
    is_delete    TINYINT DEFAULT 0 NOT NULL COMMENT '逻辑删除',
    CONSTRAINT uk_exam_annotation_user_problem UNIQUE (exam_user_id, problem_id),
    INDEX idx_exam_annotation_uuid (uuid)
) COMMENT '考试答题卡题目复习标注';
