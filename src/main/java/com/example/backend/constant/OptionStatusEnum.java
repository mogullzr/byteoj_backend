package com.example.backend.constant;

/**
 * 题目类型状态表示
 */
public interface OptionStatusEnum {
    /**
     * 简答题
     */
    Integer SHORT_ANSWER_QUESTION = 0;
    /**
     * 单选题
     */
    Integer single_option_QUESTION = 1;
    /**
     * 多选题
     */
    Integer multiple_option_QUESTION = 2;
    /**
     * 填空题
     */
    Integer FILL_BLANK_QUESTION = 3;
}
