package com.example.backend.service.exam;

import com.example.backend.models.request.math408.ProblemSimpleInfo;
import com.example.backend.models.vo.problem.ExamGradingProgressItemVo;
import com.example.backend.models.vo.problem.ExamGradingProgressVo;
import com.example.backend.utils.JsonUtils;
import com.example.backend.utils.RedisUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import javax.annotation.PreDestroy;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * 保存考试交卷的逐题判卷进度。
 *
 * <p>进度是短期状态，不写入业务表，使用 Redis hash 保存。题目状态先在
 * 当前交卷任务的内存 Tracker 中原子更新，再由单独的写线程异步合并写入
 * Redis，避免 Redis 网络往返阻塞 AI 判卷线程。</p>
 */
@Service
@Slf4j
public class ExamGradingProgressService {
    private static final String KEY_PREFIX = "exam:grading:progress:";
    private static final long PROGRESS_TTL_SECONDS = 30 * 60L;

    /**
     * 进度是辅助信息，不能占用判卷线程。单线程写入还能保证同一个 Tracker
     * 的快照按顺序落 Redis；Tracker 内部会合并连续更新，避免产生大量队列任务。
     */
    private final ExecutorService progressWriter = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "exam-grading-progress-writer");
        thread.setDaemon(true);
        return thread;
    });
    private final AtomicBoolean progressRedisWarningLogged = new AtomicBoolean(false);

    @PreDestroy
    public void shutdownProgressWriter() {
        progressWriter.shutdown();
    }

    public Tracker start(Long uuid, Long examId, String token, List<ProblemSimpleInfo> answers) {
        String normalizedToken = normalizeToken(token);
        if (uuid == null || uuid <= 0 || examId == null || examId <= 0 || normalizedToken == null) {
            return null;
        }

        List<ExamGradingProgressItemVo> items = new ArrayList<>();
        if (answers != null) {
            for (int i = 0; i < answers.size(); i++) {
                ProblemSimpleInfo answer = answers.get(i);
                if (answer == null) {
                    continue;
                }
                ExamGradingProgressItemVo item = new ExamGradingProgressItemVo();
                item.setQuestion_index(i + 1);
                item.setProblem_id(answer.getProblem_id());
                item.setQuestion_status(answer.getStatus());
                item.setState("QUEUED");
                item.setMessage("等待判卷");
                item.setUpdated_at(System.currentTimeMillis());
                items.add(item);
            }
        }

        String key = buildKey(uuid, normalizedToken);
        Tracker tracker = new Tracker(this, key, examId, items);
        tracker.markDirty();
        return tracker;
    }

    /**
     * 只允许查询当前登录用户自己的 token 对应的进度。
     */
    public ExamGradingProgressVo get(Long uuid, String token) {
        String normalizedToken = normalizeToken(token);
        if (uuid == null || uuid <= 0 || normalizedToken == null) {
            return null;
        }
        String key = buildKey(uuid, normalizedToken);
        try {
            Map<Object, Object> fields = RedisUtils.hmget(key);
            if (fields == null || fields.isEmpty()) {
                return null;
            }
            ExamGradingProgressVo progress = new ExamGradingProgressVo();
            progress.setExam_id(parseLong(fields.get("exam_id")));
            progress.setStatus(asString(fields.get("status")));
            progress.setTotal(parseInt(fields.get("total"), 0));
            progress.setCompleted(parseInt(fields.get("completed"), 0));
            progress.setFailed(parseInt(fields.get("failed"), 0));
            progress.setCurrent_question_index(parseInt(fields.get("current_question_index"), 0));
            progress.setCurrent_problem_id(parseLong(fields.get("current_problem_id")));
            progress.setCurrent_status(asString(fields.get("current_status")));
            progress.setMessage(asString(fields.get("message")));
            progress.setUpdated_at(parseLong(fields.get("updated_at")));

            List<ExamGradingProgressItemVo> items = new ArrayList<>();
            for (Map.Entry<Object, Object> entry : fields.entrySet()) {
                String field = asString(entry.getKey());
                if (field == null || !field.startsWith("item:")) {
                    continue;
                }
                try {
                    ExamGradingProgressItemVo item = JsonUtils.toObj(asString(entry.getValue()), ExamGradingProgressItemVo.class);
                    if (item != null) {
                        items.add(item);
                    }
                } catch (RuntimeException parseError) {
                    log.warn("unable to parse exam grading progress item, key={}, field={}", key, field, parseError);
                }
            }
            items.sort(Comparator.comparing(ExamGradingProgressItemVo::getQuestion_index,
                    Comparator.nullsLast(Integer::compareTo)));
            progress.setItems(items);
            return progress;
        } catch (RuntimeException redisError) {
            log.warn("unable to read exam grading progress, key={}", key, redisError);
            return null;
        }
    }

    private void transition(Tracker tracker, Long problemId, String state, String message, Integer score) {
        if (tracker == null || problemId == null) {
            return;
        }
        synchronized (tracker.lock) {
            ExamGradingProgressItemVo item = tracker.findNext(problemId);
            if (item == null) {
                return;
            }
            String oldState = item.getState();
            if (isTerminal(oldState) && isTerminal(state)) {
                return;
            }
            item.setState(state);
            item.setMessage(message);
            item.setScore(score);
            item.setUpdated_at(System.currentTimeMillis());
            tracker.currentQuestionIndex = item.getQuestion_index();
            tracker.currentProblemId = item.getProblem_id();
            tracker.currentStatus = state;
            tracker.currentMessage = message;
            tracker.updatedAt = item.getUpdated_at();
            tracker.markDirtyLocked();
        }
    }

    private void finish(Tracker tracker) {
        if (tracker == null) {
            return;
        }
        synchronized (tracker.lock) {
            // 任何没有被具体评分方法触及的题目都不能继续显示为“等待”，
            // 这样异常路径也会如实反映为失败，而不会留下假进度。
            for (ExamGradingProgressItemVo item : tracker.items) {
                if (!isTerminal(item.getState())) {
                    item.setState("FAILED");
                    item.setMessage("判卷未完成，请人工复核");
                    item.setUpdated_at(System.currentTimeMillis());
                    tracker.currentQuestionIndex = item.getQuestion_index();
                    tracker.currentProblemId = item.getProblem_id();
                    tracker.currentStatus = "FAILED";
                    tracker.currentMessage = item.getMessage();
                    tracker.updatedAt = item.getUpdated_at();
                }
            }
            tracker.finished = true;
            tracker.currentStatus = tracker.hasFailed() ? "FAILED" : "COMPLETED";
            tracker.currentMessage = tracker.hasFailed()
                    ? "判卷完成，部分题目需要人工复核"
                    : "全部题目判卷完成";
            tracker.updatedAt = System.currentTimeMillis();
            tracker.markDirtyLocked();
        }
    }

    private void fail(Tracker tracker, String message) {
        if (tracker == null) {
            return;
        }
        synchronized (tracker.lock) {
            for (ExamGradingProgressItemVo item : tracker.items) {
                if (!isTerminal(item.getState())) {
                    item.setState("FAILED");
                    item.setMessage(message);
                    item.setUpdated_at(System.currentTimeMillis());
                    tracker.currentQuestionIndex = item.getQuestion_index();
                    tracker.currentProblemId = item.getProblem_id();
                    tracker.currentStatus = "FAILED";
                    tracker.currentMessage = message;
                    tracker.updatedAt = item.getUpdated_at();
                }
            }
            tracker.finished = true;
            tracker.currentStatus = "FAILED";
            tracker.currentMessage = message;
            tracker.updatedAt = System.currentTimeMillis();
            tracker.markDirtyLocked();
        }
    }

    /**
     * 只把每个 Tracker 的最新快照排入队列。判卷线程不会执行 Redis 网络操作，
     * 并发题目的频繁状态变化也不会堆积成一条 Redis 命令对应一个任务。
     */
    private void enqueuePersist(Tracker tracker) {
        try {
            progressWriter.execute(() -> drainPersist(tracker));
        } catch (RuntimeException rejected) {
            synchronized (tracker.lock) {
                tracker.writeScheduled = false;
            }
            log.debug("exam grading progress writer is unavailable, key={}", tracker.key, rejected);
        }
    }

    private void drainPersist(Tracker tracker) {
        while (true) {
            Map<String, Object> snapshot;
            synchronized (tracker.lock) {
                if (!tracker.dirty) {
                    tracker.writeScheduled = false;
                    return;
                }
                tracker.dirty = false;
                snapshot = buildSnapshotLocked(tracker);
            }
            safePersist(tracker.key, snapshot);
        }
    }

    private Map<String, Object> buildSnapshotLocked(Tracker tracker) {
        int completed = 0;
        int failed = 0;
        boolean grading = false;
        for (ExamGradingProgressItemVo item : tracker.items) {
            if (isTerminal(item.getState())) {
                completed++;
            }
            if ("FAILED".equals(item.getState())) {
                failed++;
            }
            if ("GRADING".equals(item.getState())) {
                grading = true;
            }
        }

        String status;
        if (tracker.finished) {
            status = failed > 0 ? "FAILED" : "COMPLETED";
        } else {
            status = grading ? "GRADING" : "QUEUED";
        }

        Map<String, Object> fields = new HashMap<>();
        fields.put("exam_id", String.valueOf(tracker.examId));
        fields.put("status", status);
        fields.put("total", String.valueOf(tracker.items.size()));
        fields.put("completed", String.valueOf(completed));
        fields.put("failed", String.valueOf(failed));
        fields.put("current_question_index", String.valueOf(
                tracker.currentQuestionIndex == null ? 0 : tracker.currentQuestionIndex));
        fields.put("current_problem_id", String.valueOf(tracker.currentProblemId));
        fields.put("current_status", tracker.currentStatus == null ? status : tracker.currentStatus);
        fields.put("message", tracker.currentMessage == null ? "等待判卷" : tracker.currentMessage);
        fields.put("updated_at", String.valueOf(
                tracker.updatedAt == null ? System.currentTimeMillis() : tracker.updatedAt));
        for (ExamGradingProgressItemVo item : tracker.items) {
            fields.put(itemKey(item.getQuestion_index()), JsonUtils.toStr(item));
        }
        return fields;
    }

    private void safePersist(String key, Map<String, Object> fields) {
        try {
            Boolean saved = RedisUtils.hmset(key, fields, PROGRESS_TTL_SECONDS);
            if (!Boolean.TRUE.equals(saved) && progressRedisWarningLogged.compareAndSet(false, true)) {
                log.warn("unable to persist exam grading progress, key={}", key);
            }
        } catch (RuntimeException redisError) {
            if (progressRedisWarningLogged.compareAndSet(false, true)) {
                log.warn("unable to persist exam grading progress, key={}", key, redisError);
            } else {
                log.debug("unable to persist exam grading progress, key={}", key, redisError);
            }
        }
    }

    private static boolean isTerminal(String state) {
        return "COMPLETED".equals(state) || "FAILED".equals(state);
    }

    private static String itemKey(Integer index) {
        return "item:" + index;
    }

    private static String buildKey(Long uuid, String token) {
        return KEY_PREFIX + uuid + ":" + token;
    }

    private static String normalizeToken(String token) {
        if (token == null) {
            return null;
        }
        String value = token.trim();
        if (value.length() < 8 || value.length() > 128 || !value.matches("[A-Za-z0-9_-]+")) {
            return null;
        }
        return value;
    }

    private static String asString(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof byte[] bytes) {
            return new String(bytes);
        }
        return String.valueOf(value);
    }

    private static Integer parseInt(Object value, int fallback) {
        try {
            return value == null ? fallback : Integer.parseInt(asString(value));
        } catch (RuntimeException ignored) {
            return fallback;
        }
    }

    private static Long parseLong(Object value) {
        try {
            return value == null ? null : Long.parseLong(asString(value));
        } catch (RuntimeException ignored) {
            return null;
        }
    }

    public static final class Tracker {
        private final ExamGradingProgressService service;
        private final String key;
        private final Long examId;
        private final List<ExamGradingProgressItemVo> items;
        private final Object lock = new Object();
        private boolean dirty;
        private boolean writeScheduled;
        private boolean finished;
        private Integer currentQuestionIndex;
        private Long currentProblemId;
        private String currentStatus;
        private String currentMessage;
        private Long updatedAt;

        private Tracker(ExamGradingProgressService service, String key, Long examId,
                        List<ExamGradingProgressItemVo> items) {
            this.service = service;
            this.key = key;
            this.examId = examId;
            this.items = items;
        }

        private void markDirty() {
            synchronized (lock) {
                markDirtyLocked();
            }
        }

        private void markDirtyLocked() {
            dirty = true;
            if (writeScheduled) {
                return;
            }
            writeScheduled = true;
            service.enqueuePersist(this);
        }

        public void markGrading(Long problemId) {
            service.transition(this, problemId, "GRADING", "正在判卷", null);
        }

        public void markCompleted(Long problemId, String message, Integer score) {
            service.transition(this, problemId, "COMPLETED", message, score);
        }

        public void markFailed(Long problemId, String message) {
            service.transition(this, problemId, "FAILED", message, null);
        }

        public void finish() {
            service.finish(this);
        }

        public void fail(String message) {
            service.fail(this, message == null ? "判卷失败，请人工复核" : message);
        }

        private ExamGradingProgressItemVo findNext(Long problemId) {
            for (ExamGradingProgressItemVo item : items) {
                if (Objects.equals(item.getProblem_id(), problemId) && !isTerminal(item.getState())) {
                    return item;
                }
            }
            return null;
        }

        private boolean hasFailed() {
            return items.stream().anyMatch(item -> "FAILED".equals(item.getState()));
        }
    }
}
