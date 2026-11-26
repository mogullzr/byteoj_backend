package com.example.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.math408.ProblemExamAnnotation;
import com.example.backend.models.vo.problem.ExamNoteSearchHit;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProblemExamAnnotationMapper extends BaseMapper<ProblemExamAnnotation> {
    // Choose the first occurrence exactly as the sheet's id-ordered question list does.
    // Both owners are constrained even if an inconsistent annotation row exists.
    String SEARCH_FROM = """
            FROM problem_exam_annotation n
            JOIN problem_exam_user u ON u.id = n.exam_user_id
            JOIN problem_exam e ON e.id = u.exam_id
            JOIN problem_exam_tissue t ON t.id = (
                SELECT MIN(p.id) FROM problem_exam_tissue p
                WHERE p.exam_id = u.exam_id AND p.problem_id = n.problem_id AND p.is_delete = 0
            )
            WHERE n.uuid = #{uuid} AND u.uuid = #{uuid}
              AND n.is_delete = 0 AND u.is_delete = 0 AND e.is_delete = 0
              AND u.status = 1 AND CHAR_LENGTH(TRIM(n.annotation)) > 0
            <foreach collection="terms" item="term">
              AND LOCATE(#{term}, n.annotation) > 0
            </foreach>
            """;

    @Select("<script>SELECT COUNT(*) " + SEARCH_FROM + "</script>")
    long countSearchMatches(@Param("uuid") long uuid, @Param("terms") List<String> terms);

    @Select("""
            <script>
            SELECT n.id AS noteId, u.id AS recordId, u.exam_id AS examId, e.exam_name AS examName,
                   n.problem_id AS problemId, n.update_date AS noteUpdatedAt,
                   (SELECT COUNT(*) FROM problem_exam_tissue numbered
                    WHERE numbered.exam_id = u.exam_id AND numbered.is_delete = 0
                      AND numbered.id &lt;= t.id) AS questionNumber,
                   SUBSTRING(n.annotation, GREATEST(1, LOCATE(#{firstTerm}, n.annotation) - 45), 180) AS snippet
            """ + SEARCH_FROM + """
            ORDER BY n.update_date DESC, n.id DESC
            LIMIT #{pageSize} OFFSET #{offset}
            </script>
            """)
    List<ExamNoteSearchHit> searchMatches(@Param("uuid") long uuid, @Param("terms") List<String> terms,
                                         @Param("firstTerm") String firstTerm,
                                         @Param("offset") int offset, @Param("pageSize") int pageSize);
}
