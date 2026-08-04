CREATE TABLE IF NOT EXISTS problem_algorithm_reference_solution (
    id BIGINT NOT NULL AUTO_INCREMENT,
    problem_id BIGINT NOT NULL,
    language VARCHAR(32) NOT NULL,
    source_code LONGTEXT NOT NULL,
    source_code_hash CHAR(64) NOT NULL,
    source_type VARCHAR(32) NOT NULL DEFAULT 'ADMIN_PROVIDED',
    status VARCHAR(32) NOT NULL DEFAULT 'DRAFT',
    validation_summary TEXT NULL,
    validated_case_count INT NOT NULL DEFAULT 0,
    validated_by BIGINT NULL,
    validated_at DATETIME NULL,
    note VARCHAR(500) NULL,
    create_by BIGINT NOT NULL,
    update_by BIGINT NOT NULL,
    create_time DATETIME NOT NULL,
    update_time DATETIME NOT NULL,
    is_deleted TINYINT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    KEY idx_reference_problem_status (problem_id, status),
    KEY idx_reference_hash (source_code_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS algorithm_test_generation_job (
    id BIGINT NOT NULL AUTO_INCREMENT,
    problem_id BIGINT NOT NULL,
    source_job_id BIGINT NULL,
    creator_uuid BIGINT NOT NULL,
    model VARCHAR(100) NOT NULL,
    status VARCHAR(40) NOT NULL,
    current_stage VARCHAR(255) NULL,
    progress_percent INT NOT NULL DEFAULT 0,
    write_mode VARCHAR(16) NOT NULL DEFAULT 'APPEND',
    generate_expected_output TINYINT NOT NULL DEFAULT 0,
    reference_solution_id BIGINT NULL,
    preview_chars INT NOT NULL DEFAULT 200,
    requested_case_count INT NOT NULL DEFAULT 0,
    generated_case_count INT NOT NULL DEFAULT 0,
    output_completed_count INT NOT NULL DEFAULT 0,
    published_case_count INT NOT NULL DEFAULT 0,
    duplicate_case_count INT NOT NULL DEFAULT 0,
    generated_input_bytes BIGINT NOT NULL DEFAULT 0,
    generated_output_bytes BIGINT NOT NULL DEFAULT 0,
    retry_count INT NOT NULL DEFAULT 0,
    version INT NOT NULL DEFAULT 0,
    error_code VARCHAR(64) NULL,
    error_message VARCHAR(2000) NULL,
    created_at DATETIME NOT NULL,
    queued_at DATETIME NULL,
    started_at DATETIME NULL,
    finished_at DATETIME NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    KEY idx_generation_problem_created (problem_id, created_at),
    KEY idx_generation_status_updated (status, updated_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS algorithm_test_generation_scale (
    id BIGINT NOT NULL AUTO_INCREMENT,
    job_id BIGINT NOT NULL,
    scale_type VARCHAR(32) NOT NULL,
    requested_count INT NOT NULL,
    generated_count INT NOT NULL DEFAULT 0,
    output_completed_count INT NOT NULL DEFAULT 0,
    constraints_text TEXT NOT NULL,
    random_seed BIGINT NOT NULL,
    status VARCHAR(32) NOT NULL DEFAULT 'PENDING',
    generator_language VARCHAR(32) NULL,
    generator_protocol_version VARCHAR(16) NULL,
    generator_code LONGTEXT NULL,
    generator_code_hash CHAR(64) NULL,
    ai_assumptions TEXT NULL,
    ai_coverage TEXT NULL,
    current_batch INT NOT NULL DEFAULT 0,
    total_batches INT NOT NULL DEFAULT 0,
    error_message VARCHAR(2000) NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_generation_job_scale (job_id, scale_type),
    KEY idx_generation_scale_status (job_id, status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS algorithm_test_case_staging (
    id BIGINT NOT NULL AUTO_INCREMENT,
    job_id BIGINT NOT NULL,
    scale_id BIGINT NOT NULL,
    scale_type VARCHAR(32) NOT NULL,
    case_index INT NOT NULL,
    input LONGTEXT NOT NULL,
    output LONGTEXT NULL,
    input_hash CHAR(64) NOT NULL,
    output_hash CHAR(64) NULL,
    input_bytes BIGINT NOT NULL,
    output_bytes BIGINT NULL,
    status VARCHAR(32) NOT NULL DEFAULT 'INPUT_READY',
    error_message VARCHAR(1000) NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_staging_job_case (job_id, scale_id, case_index),
    KEY idx_staging_job_status (job_id, status),
    KEY idx_staging_job_input_hash (job_id, input_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- The following migration is deliberately idempotent. It supports databases where
-- MySQL's ALTER TABLE ... ADD COLUMN IF NOT EXISTS syntax is unavailable.
DROP PROCEDURE IF EXISTS migrate_algorithm_test_generation_columns;
DELIMITER $$
CREATE PROCEDURE migrate_algorithm_test_generation_columns()
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = DATABASE() AND table_name = 'algorithm_test_case' AND column_name = 'generation_job_id') THEN
        ALTER TABLE algorithm_test_case ADD COLUMN generation_job_id BIGINT NULL;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = DATABASE() AND table_name = 'algorithm_test_case' AND column_name = 'scale_type') THEN
        ALTER TABLE algorithm_test_case ADD COLUMN scale_type VARCHAR(32) NULL;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = DATABASE() AND table_name = 'algorithm_test_case' AND column_name = 'input_hash') THEN
        ALTER TABLE algorithm_test_case ADD COLUMN input_hash CHAR(64) NULL;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = DATABASE() AND table_name = 'algorithm_test_case' AND column_name = 'source_type') THEN
        ALTER TABLE algorithm_test_case ADD COLUMN source_type VARCHAR(32) NOT NULL DEFAULT 'MANUAL';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM information_schema.statistics WHERE table_schema = DATABASE() AND table_name = 'algorithm_test_case' AND index_name = 'idx_algorithm_case_problem_hash') THEN
        CREATE INDEX idx_algorithm_case_problem_hash ON algorithm_test_case (problem_id, input_hash);
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.statistics WHERE table_schema = DATABASE() AND table_name = 'algorithm_test_case' AND index_name = 'idx_algorithm_case_generation_job') THEN
        CREATE INDEX idx_algorithm_case_generation_job ON algorithm_test_case (generation_job_id);
    END IF;
END$$
CALL migrate_algorithm_test_generation_columns()$$
DROP PROCEDURE migrate_algorithm_test_generation_columns$$
DELIMITER ;
