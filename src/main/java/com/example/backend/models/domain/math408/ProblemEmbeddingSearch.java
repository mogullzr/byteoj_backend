package com.example.backend.models.domain.math408;


public class ProblemEmbeddingSearch {
    public int id;
    public Long problem_id;
    public double similarityScore; // 相似度得分 (1 - 距离)

    public ProblemEmbeddingSearch(int id, Long problem_id, double score) {
        this.id = id;
        this.problem_id = problem_id;
        this.similarityScore = score;
    }
}