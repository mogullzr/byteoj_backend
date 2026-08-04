CREATE TABLE IF NOT EXISTS problem_wrong_book
(
    id               BIGINT AUTO_INCREMENT COMMENT 'ID'
        PRIMARY KEY,
    uuid             BIGINT                             NOT NULL COMMENT '用户ID',
    problem_id       BIGINT                             NOT NULL COMMENT '题目ID',
    problem_name     VARCHAR(512)                       NOT NULL COMMENT '题目名称快照',
    problem_status   INT                                NOT NULL COMMENT '0数学，1 408，2 政治，3算法',
    option_type      INT                                NOT NULL COMMENT '0简答，1单选，2多选，3填空，4算法',
    exam_id          BIGINT                             NULL COMMENT '最近来源考试ID',
    exam_user_id     BIGINT                             NULL COMMENT '最近来源用户考试记录ID',
    latest_answer    TEXT                               NULL COMMENT '最近一次作答',
    latest_score     INT      DEFAULT 0                 NULL COMMENT '最近一次得分',
    total_score      INT      DEFAULT 0                 NULL COMMENT '题目总分',
    wrong_count      INT      DEFAULT 1                 NOT NULL COMMENT '累计错误次数',
    mastery_status   TINYINT  DEFAULT 0                 NOT NULL COMMENT '0待复习，1已掌握',
    latest_ai_advise TEXT                               NULL COMMENT '最近一次AI建议/错误原因',
    create_date      DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '创建时间',
    update_date      DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '更新时间',
    is_delete        TINYINT  DEFAULT 0                 NOT NULL COMMENT '逻辑删除',
    UNIQUE KEY uk_problem_wrong_book_uuid_problem (uuid, problem_id, is_delete)
)
    COMMENT '错题本';
