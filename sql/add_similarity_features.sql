ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS ast_score DOUBLE PRECISION;
ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS token_score DOUBLE PRECISION;
ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS ast_containment_score DOUBLE PRECISION;
ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS token_containment_score DOUBLE PRECISION;
ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS embedding_score DOUBLE PRECISION;
ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS risk_level VARCHAR(16);
ALTER TABLE code_similarity_result ADD COLUMN IF NOT EXISTS algorithm_version VARCHAR(64);
