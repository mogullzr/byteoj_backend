package com.example.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.math408.ProblemExamUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/** Mapper for problem_exam_user. */
public interface ProblemExamUserMapper extends BaseMapper<ProblemExamUser> {

    /**
     * Selects the best submitted attempt (status=1) per user, then ranks users.
     * Equal-score attempts for one user are resolved by latest update time and id.
     */
    @Select("SELECT candidate.* " +
            "FROM problem_exam_user candidate " +
            "WHERE candidate.exam_id = #{examId} " +
            "AND candidate.status = 1 AND candidate.is_delete = 0 " +
            "AND NOT EXISTS (" +
            "  SELECT 1 FROM problem_exam_user better " +
            "  WHERE better.exam_id = candidate.exam_id " +
            "  AND better.uuid = candidate.uuid " +
            "  AND better.status = 1 AND better.is_delete = 0 " +
            "  AND (" +
            "    COALESCE(better.score_option, 0) + COALESCE(better.score_subjective, 0) > " +
            "      COALESCE(candidate.score_option, 0) + COALESCE(candidate.score_subjective, 0) " +
            "    OR (COALESCE(better.score_option, 0) + COALESCE(better.score_subjective, 0) = " +
            "        COALESCE(candidate.score_option, 0) + COALESCE(candidate.score_subjective, 0) " +
            "        AND COALESCE(better.update_date, better.create_date, '1970-01-01 00:00:00') > " +
            "            COALESCE(candidate.update_date, candidate.create_date, '1970-01-01 00:00:00')) " +
            "    OR (COALESCE(better.score_option, 0) + COALESCE(better.score_subjective, 0) = " +
            "        COALESCE(candidate.score_option, 0) + COALESCE(candidate.score_subjective, 0) " +
            "        AND COALESCE(better.update_date, better.create_date, '1970-01-01 00:00:00') = " +
            "            COALESCE(candidate.update_date, candidate.create_date, '1970-01-01 00:00:00') " +
            "        AND better.id > candidate.id)" +
            "  )" +
            ") " +
            "ORDER BY (COALESCE(candidate.score_option, 0) + COALESCE(candidate.score_subjective, 0)) DESC, " +
            "COALESCE(candidate.update_date, candidate.create_date) DESC, candidate.id DESC " +
            "LIMIT 3")
    List<ProblemExamUser> selectTopScoringUsersByExam(@Param("examId") Long examId);
}
