-- PostgreSQL / pgvector. This is a derived search index; the source note remains in MySQL.
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS problem_exam_annotation_embeddings
(
    id              BIGSERIAL PRIMARY KEY,
    annotation_id   BIGINT NOT NULL,
    uuid            BIGINT NOT NULL,
    exam_user_id    BIGINT NOT NULL,
    problem_id      BIGINT NOT NULL,
    note_updated_at TIMESTAMP NOT NULL,
    content_hash    VARCHAR(64) NOT NULL,
    model           VARCHAR(128) NOT NULL,
    embedding       vector(2048) NOT NULL,
    CONSTRAINT uk_exam_annotation_embedding UNIQUE (annotation_id)
);

CREATE INDEX IF NOT EXISTS idx_exam_annotation_embedding_user
    ON problem_exam_annotation_embeddings (uuid, model);

