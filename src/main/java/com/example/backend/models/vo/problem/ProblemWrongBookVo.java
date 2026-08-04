package com.example.backend.models.vo.problem;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class ProblemWrongBookVo implements Serializable {
    private static final long serialVersionUID = -4242248495576449890L;

    private Long id;

    private Long problem_id;

    private String problem_name;

    /**
     * 0数学，1 408，2 政治，3算法
     */
    private Integer problem_status;

    /**
     * 0简答，1单选，2多选，3填空，4算法
     */
    private Integer option_type;

    private String difficulty_name;

    private String source_name;

    private String description;

    private String options;

    private String correct_answer;

    private String analysis;

    private List<String> tagsList;

    private List<ProblemWrongBookAnswerRecordVo> answerRecords;

    private Long exam_id;

    private Long exam_user_id;

    private String answer;

    private String latest_answer;

    private Integer latest_score;

    private Integer total_score;

    private Integer wrong_count;

    /**
     * 0待复习，1已掌握
     */
    private Integer mastery_status;

    private String latest_ai_advise;

    private Date update_date;
}
