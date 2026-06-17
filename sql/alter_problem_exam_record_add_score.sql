ALTER TABLE problem_exam_record
    ADD COLUMN score INT NULL COMMENT '此题得分' AFTER answer;
