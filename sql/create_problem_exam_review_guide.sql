CREATE TABLE problem_exam_review_guide
(
    id           BIGINT AUTO_INCREMENT COMMENT 'ID' PRIMARY KEY,
    exam_user_id BIGINT NOT NULL COMMENT '用户答卷记录ID',
    uuid         BIGINT NOT NULL COMMENT '用户ID',
    review_guide TEXT NOT NULL COMMENT '用户整卷复习建议',
    create_date  DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '创建时间',
    update_date  DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '更新时间',
    is_delete    TINYINT DEFAULT 0 NOT NULL COMMENT '逻辑删除',
    CONSTRAINT uk_exam_review_guide_record UNIQUE (exam_user_id),
    INDEX idx_exam_review_guide_uuid (uuid)
)
    COMMENT '用户试卷级复习建议';
