package com.example.backend.service.exam;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.example.backend.models.vo.problem.ExamNoteVectorCandidate;
import org.postgresql.util.PGobject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.*;

@Repository
@DS("pg")
public class ExamNoteVectorRepository {
    private final JdbcTemplate jdbc;

    @Value("${hm.aliyun.embedding.model}")
    private String embeddingModel;

    public ExamNoteVectorRepository(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    public void upsert(long noteId, long uuid, long recordId, long problemId, Date updatedAt,
                       String contentHash, PGobject embedding) {
        jdbc.update(connection -> {
            PreparedStatement statement = connection.prepareStatement("""
                    INSERT INTO problem_exam_annotation_embeddings
                      (annotation_id, uuid, exam_user_id, problem_id, note_updated_at, content_hash, model, embedding)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                    ON CONFLICT (annotation_id) DO UPDATE SET
                      uuid = EXCLUDED.uuid,
                      exam_user_id = EXCLUDED.exam_user_id,
                      problem_id = EXCLUDED.problem_id,
                      note_updated_at = EXCLUDED.note_updated_at,
                      content_hash = EXCLUDED.content_hash,
                      model = EXCLUDED.model,
                      embedding = EXCLUDED.embedding
                    WHERE problem_exam_annotation_embeddings.note_updated_at <= EXCLUDED.note_updated_at
                    """);
            statement.setLong(1, noteId);
            statement.setLong(2, uuid);
            statement.setLong(3, recordId);
            statement.setLong(4, problemId);
            statement.setTimestamp(5, new Timestamp(updatedAt.getTime()));
            statement.setString(6, contentHash);
            statement.setString(7, embeddingModel);
            statement.setObject(8, embedding);
            return statement;
        });
    }

    public List<ExamNoteVectorCandidate> search(long uuid, PGobject vector, int limit) {
        return jdbc.query(connection -> {
            PreparedStatement statement = connection.prepareStatement("""
                    SELECT annotation_id, content_hash, 1 - (embedding <=> ?::vector) AS similarity
                    FROM problem_exam_annotation_embeddings
                    WHERE uuid = ? AND model = ?
                    ORDER BY embedding <=> ?::vector
                    LIMIT ?
                    """);
            statement.setString(1, vector.getValue());
            statement.setLong(2, uuid);
            statement.setString(3, embeddingModel);
            statement.setString(4, vector.getValue());
            statement.setInt(5, limit);
            return statement;
        }, (rs, rowNum) -> new ExamNoteVectorCandidate(
                rs.getLong("annotation_id"), rs.getDouble("similarity"), rs.getString("content_hash")));
    }

    public void delete(long noteId) {
        jdbc.update("DELETE FROM problem_exam_annotation_embeddings WHERE annotation_id = ?", noteId);
    }

    public Map<Long, String> indexedHashes(long uuid) {
        return jdbc.query("SELECT annotation_id, content_hash FROM problem_exam_annotation_embeddings WHERE uuid = ? AND model = ?",
                ps -> {
                    ps.setLong(1, uuid);
                    ps.setString(2, embeddingModel);
                }, rs -> {
                    Map<Long, String> result = new HashMap<>();
                    while (rs.next()) result.put(rs.getLong("annotation_id"), rs.getString("content_hash"));
                    return result;
                });
    }
}
