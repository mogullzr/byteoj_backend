package com.example.backend.service.exam;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.mapper.ProblemExamAnnotationMapper;
import com.example.backend.models.domain.math408.ProblemExamAnnotation;
import com.example.backend.models.vo.problem.ExamNoteSearchHit;
import com.example.backend.models.vo.problem.ExamNoteVectorCandidate;
import com.example.backend.models.vo.problem.ExamNoteSemanticSearchPage;
import com.example.backend.exception.BusinessException;
import com.example.backend.common.ErrorCode;
import com.example.backend.utils.EmbeddingConvertUtil;
import org.postgresql.util.PGobject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@Service
public class ExamNoteSemanticSearchService {
    /** Search is for quickly locating a note, so low-confidence long tails are intentionally omitted. */
    private static final int CANDIDATE_LIMIT = 60;
    private static final int MAX_RESULT_COUNT = 30;
    private final EmbeddingConvertUtil embeddings;
    private final ExamNoteVectorRepository vectors;
    private final ProblemExamAnnotationMapper annotations;
    private final ThreadPoolTaskExecutor noteEmbeddingExecutor;
    private final Set<Long> indexingUsers = ConcurrentHashMap.newKeySet();
    private final Set<Long> indexedUsers = ConcurrentHashMap.newKeySet();

    @Value("${exam.notes.semantic.min-similarity:0.60}")
    private double minimumSimilarity = 0.60;

    public ExamNoteSemanticSearchService(EmbeddingConvertUtil embeddings,
                                         ExamNoteVectorRepository vectors,
                                         ProblemExamAnnotationMapper annotations,
                                         @Qualifier("examNoteEmbeddingExecutor")
                                         ThreadPoolTaskExecutor noteEmbeddingExecutor) {
        this.embeddings = embeddings;
        this.vectors = vectors;
        this.annotations = annotations;
        this.noteEmbeddingExecutor = noteEmbeddingExecutor;
    }

    public List<ExamNoteSearchHit> search(Long uuid, String query) {
        validateQuery(uuid, query);
        PGobject queryVector = embeddings.getEmebddingInfo(embeddings.getEmbeddingModel(), query);
        List<ExamNoteVectorCandidate> candidates = vectors.search(uuid, queryVector, CANDIDATE_LIMIT);
        if (candidates.isEmpty()) return List.of();

        List<Long> ids = candidates.stream().map(ExamNoteVectorCandidate::noteId).distinct().toList();
        Map<Long, ExamNoteSearchHit> currentNotes = annotations.searchMatchesByIds(uuid, ids).stream()
                .collect(Collectors.toMap(ExamNoteSearchHit::getNoteId, hit -> hit));
        Map<Long, String> hashes = candidates.stream().collect(Collectors.toMap(
                ExamNoteVectorCandidate::noteId, ExamNoteVectorCandidate::contentHash, (left, right) -> left));

        List<ExamNoteSearchHit> result = new ArrayList<>();
        for (ExamNoteVectorCandidate candidate : candidates) {
            if (candidate.similarity() < minimumSimilarity) continue;
            ExamNoteSearchHit hit = currentNotes.get(candidate.noteId());
            if (hit == null || !Objects.equals(hashes.get(candidate.noteId()), sha256(hit.getFullAnnotation()))) continue;
            hit.setSnippet(toSnippet(hit.getFullAnnotation()));
            hit.setSimilarity(candidate.similarity());
            result.add(hit);
        }
        return result;
    }

    public ExamNoteSemanticSearchPage searchPage(Long uuid, String query, int pageNum) {
        validateQuery(uuid, query);
        if (pageNum < 1 || pageNum > 10000) throw new BusinessException(ErrorCode.PARAMS_ERROR, "页码不正确");
        List<ExamNoteSearchHit> semantic = search(uuid, query);
        List<String> terms = Arrays.stream(query.strip().split("(?U)\\s+")).filter(term -> !term.isBlank()).distinct().toList();
        if (terms.size() > 8) throw new BusinessException(ErrorCode.PARAMS_ERROR, "最多使用8个关键词，请用空格分隔");
        List<ExamNoteSearchHit> lexical = terms.isEmpty() ? List.of()
                : annotations.searchMatches(uuid, terms, terms.get(0), 0, CANDIDATE_LIMIT);

        Map<Long, RankedHit> merged = new HashMap<>();
        for (int i = 0; i < semantic.size(); i++) {
            ExamNoteSearchHit hit = semantic.get(i);
            merged.put(hit.getNoteId(), new RankedHit(hit, 1D / (60 + i + 1)));
        }
        for (int i = 0; i < lexical.size(); i++) {
            ExamNoteSearchHit hit = lexical.get(i);
            RankedHit existing = merged.get(hit.getNoteId());
            if (existing == null) merged.put(hit.getNoteId(), new RankedHit(hit, 1D / (60 + i + 1)));
            else existing.score += 1D / (60 + i + 1);
        }
        List<ExamNoteSearchHit> ranked = merged.values().stream()
                .sorted(Comparator.comparingDouble((RankedHit hit) -> hit.score).reversed())
                .limit(MAX_RESULT_COUNT)
                .map(hit -> hit.hit)
                .toList();
        long offset = (long) (pageNum - 1) * 10;
        List<ExamNoteSearchHit> page = offset >= ranked.size() ? List.of()
                : ranked.subList((int) offset, Math.min((int) offset + 10, ranked.size()));
        return new ExamNoteSemanticSearchPage(page, ranked.size(), pageNum, 10, indexingUsers.contains(uuid));
    }

    public void indexSavedNote(ProblemExamAnnotation note) {
        if (note.getId() == null) return;
        if (note.getAnnotation() == null || note.getAnnotation().isBlank()) {
            vectors.delete(note.getId());
            if (note.getUuid() != null) indexedUsers.remove(note.getUuid());
            return;
        }
        try {
            PGobject vector = embeddings.getEmebddingInfo(embeddings.getEmbeddingModel(), note.getAnnotation());
            vectors.upsert(note.getId(), note.getUuid(), note.getExam_user_id(), note.getProblem_id(),
                    note.getUpdate_date(), sha256(note.getAnnotation()), vector);
        } catch (Exception exception) {
            if (note.getUuid() != null) indexedUsers.remove(note.getUuid());
            // Note saving remains successful; keyword search continues while the vector index is unavailable.
            System.err.println("Could not index exam note " + note.getId() + ": " + exception.getMessage());
        }
    }

    public void scheduleSavedNoteIndex(ProblemExamAnnotation note) {
        if (note.getUuid() != null) indexedUsers.remove(note.getUuid());
        try {
            noteEmbeddingExecutor.execute(() -> indexSavedNote(note));
        } catch (RuntimeException exception) {
            System.err.println("Could not queue semantic index for exam note " + note.getId() + ": " + exception.getMessage());
        }
    }

    public void requestBackfill(Long uuid) {
        if (uuid == null || indexedUsers.contains(uuid) || !indexingUsers.add(uuid)) return;
        try {
            noteEmbeddingExecutor.execute(() -> backfillUserNotes(uuid));
        } catch (RuntimeException exception) {
            indexingUsers.remove(uuid);
            System.err.println("Could not queue semantic note backfill for user " + uuid + ": " + exception.getMessage());
        }
    }

    private void backfillUserNotes(Long uuid) {
        boolean succeeded = true;
        try {
            Map<Long, String> indexed = vectors.indexedHashes(uuid);
            long lastId = 0;
            while (true) {
                List<ProblemExamAnnotation> batch = annotations.selectList(new QueryWrapper<ProblemExamAnnotation>()
                        .eq("uuid", uuid).eq("is_delete", 0).gt("id", lastId)
                        .orderByAsc("id").last("LIMIT 20"));
                if (batch.isEmpty()) break;
                for (ProblemExamAnnotation note : batch) {
                    lastId = note.getId();
                    String content = note.getAnnotation();
                    if (content == null || content.isBlank() || Objects.equals(indexed.get(note.getId()), sha256(content))) continue;
                    try {
                        PGobject vector = embeddings.getEmebddingInfo(embeddings.getEmbeddingModel(), content);
                        vectors.upsert(note.getId(), uuid, note.getExam_user_id(), note.getProblem_id(),
                                note.getUpdate_date(), sha256(content), vector);
                        Thread.sleep(150);
                    } catch (Exception exception) {
                        succeeded = false;
                        System.err.println("Could not backfill exam note " + note.getId() + ": " + exception.getMessage());
                    }
                }
            }
        } catch (Exception exception) {
            succeeded = false;
            System.err.println("Could not backfill semantic notes for user " + uuid + ": " + exception.getMessage());
        } finally {
            if (succeeded) indexedUsers.add(uuid);
            indexingUsers.remove(uuid);
        }
    }

    private static String toSnippet(String annotation) {
        String normalized = annotation.replaceAll("\\s+", " ").strip();
        return normalized.length() <= 180 ? normalized : normalized.substring(0, 180);
    }

    private static void validateQuery(Long uuid, String query) {
        if (uuid == null || uuid <= 0) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        if (query == null || query.trim().isEmpty()) throw new BusinessException(ErrorCode.PARAMS_ERROR, "请输入笔记关键词");
        if (query.trim().length() > 80) throw new BusinessException(ErrorCode.PARAMS_ERROR, "搜索关键词最多80个字符");
    }

    static String sha256(String text) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(text.getBytes(StandardCharsets.UTF_8));
            return HexFormat.of().formatHex(digest);
        } catch (Exception exception) {
            throw new IllegalStateException(exception);
        }
    }

    private static final class RankedHit {
        private final ExamNoteSearchHit hit;
        private double score;

        private RankedHit(ExamNoteSearchHit hit, double score) {
            this.hit = hit;
            this.score = score;
        }
    }
}
