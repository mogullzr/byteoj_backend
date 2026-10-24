package com.example.backend.models.request.AI;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 考研英语翻译/作文专项评分请求。
 *
 * <p>图片只作为视觉模型的原始输入传递，不在后端做 OCR，也不把 OCR
 * 结果当成学生答案保存。文本和图片可以同时提供，模型会以可识别的
 * 原始内容为准。</p>
 */
@Data
public class EnglishGradingRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ENGLISH_I or ENGLISH_II. */
    @JsonProperty("exam_type")
    @JsonAlias("examType")
    private String examType;

    /** TRANSLATION, SMALL_ESSAY or LARGE_ESSAY. */
    @JsonProperty("question_type")
    @JsonAlias("questionType")
    private String questionType;

    /** GPT_5_4 or DEEPSEEK. Defaults to GPT_5_4 for backward compatibility. */
    @JsonProperty("ai_model")
    @JsonAlias({"aiModel", "modelProvider"})
    private String aiModel;

    /** Translation source/marked sentences, or the essay prompt. */
    @JsonProperty("question_content")
    @JsonAlias({"questionContent", "sourceText"})
    private String questionContent;

    /** 题目或作文要求图片，直接传给视觉模型，不经过 OCR。 */
    @JsonProperty("question_image_urls")
    @JsonAlias({"questionImageUrls", "promptImageUrls"})
    private List<String> questionImageUrls;

    /** Student's pasted answer. */
    @JsonProperty("student_answer")
    @JsonAlias("studentAnswer")
    private String studentAnswer;

    /** Optional teacher/reference answer. */
    @JsonProperty("reference_answer")
    @JsonAlias("referenceAnswer")
    private String referenceAnswer;

    /** Optional explanation or marking notes. */
    @JsonProperty("solution_explanation")
    @JsonAlias("solutionExplanation")
    private String solutionExplanation;

    /** Image URLs already uploaded to object storage. No OCR is performed. */
    @JsonProperty("student_answer_image_urls")
    @JsonAlias({"studentAnswerImageUrls", "imageUrls"})
    private List<String> studentAnswerImageUrls;
}
