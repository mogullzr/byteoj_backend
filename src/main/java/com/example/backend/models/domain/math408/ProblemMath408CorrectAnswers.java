package com.example.backend.models.domain.math408;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 题目正确选项存储表
 * @TableName problem_math408_correct_answers
 */
@TableName(value ="problem_math408_correct_answers")
public class ProblemMath408CorrectAnswers implements Serializable {
    /**
     * 正确答案ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 所属问题的ID
     */
    private Long problem_id;

    /**
     * 参考正确答案（选择，填空，简答还有编程大题）
     */
    private String correct_index;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * 正确答案ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 正确答案ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 所属问题的ID
     */
    public Long getProblem_id() {
        return problem_id;
    }

    /**
     * 所属问题的ID
     */
    public void setProblem_id(Long problem_id) {
        this.problem_id = problem_id;
    }

    /**
     * 参考正确答案（选择，填空，简答还有编程大题）
     */
    public String getCorrect_index() {
        return correct_index;
    }

    /**
     * 参考正确答案（选择，填空，简答还有编程大题）
     */
    public void setCorrect_index(String correct_index) {
        this.correct_index = correct_index;
    }
}