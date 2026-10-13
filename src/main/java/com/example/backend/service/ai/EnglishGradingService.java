package com.example.backend.service.ai;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.request.AI.EnglishGradingRequest;
import com.example.backend.utils.examAgent.GradingAgentUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/** 专门处理考研英语翻译和作文评分的服务。 */
@Service
@Slf4j
public class EnglishGradingService {
    /** 包含首次调用在内最多请求 AI 五次，避免不稳定上游造成偶发失败。 */
    private static final int MAX_AI_ATTEMPTS = 5;
    private static final String ENGLISH_I = "ENGLISH_I";
    private static final String ENGLISH_II = "ENGLISH_II";
    private static final String TRANSLATION = "TRANSLATION";
    private static final String SMALL_ESSAY = "SMALL_ESSAY";
    private static final String LARGE_ESSAY = "LARGE_ESSAY";

    @Resource
    private GradingAgentUtil gradingAgentUtil;

    public GradingAgentUtil.GradingResult grade(EnglishGradingRequest request, Long uuid) {
        validate(request);
        String examType = normalize(request.getExamType());
        String questionType = normalize(request.getQuestionType());
        double totalScore = totalScore(examType, questionType);

        GradingAgentUtil.GradingInput input = new GradingAgentUtil.GradingInput();
        input.setQuestionType("english_" + questionType.toLowerCase(Locale.ROOT));
        input.setTotalScore(totalScore);
        input.setQuestionContent(request.getQuestionContent());
        input.setQuestionImageUrls(request.getQuestionImageUrls());
        input.setReferenceAnswer(request.getReferenceAnswer());
        input.setSolutionExplanation(request.getSolutionExplanation());
        input.setStudentAnswer(request.getStudentAnswer());
        input.setStudentAnswerImageUrls(request.getStudentAnswerImageUrls());
        input.setForceAi(Boolean.TRUE);
        input.setTemperature(0F);
        input.setTopP(0.2F);

        Map<String, Object> context = new LinkedHashMap<>();
        context.put("profile", "english_exam");
        context.put("exam_type", examType);
        context.put("question_type", questionType);
        context.put("total_score", totalScore);
        context.put("image_policy", "图片仅作为视觉模型原始输入，不进行 OCR；无法看清时必须人工复核");
        context.put("prompt_extension", buildPolicy(examType, questionType, totalScore));
        input.setExtraContext(context);

        RuntimeException lastFailure = null;
        for (int attempt = 1; attempt <= MAX_AI_ATTEMPTS; attempt++) {
            try {
                return gradingAgentUtil.gradeAnswerByAiBlocking(input);
            } catch (RuntimeException failure) {
                lastFailure = failure;
                log.warn("[english-grading] AI attempt {}/{} failed, uuid={}, error={}",
                        attempt, MAX_AI_ATTEMPTS, uuid, failure.getMessage());
                if (attempt >= MAX_AI_ATTEMPTS) {
                    break;
                }
                long delayMs = Math.min(4000L, 500L * (1L << (attempt - 1)));
                try {
                    TimeUnit.MILLISECONDS.sleep(delayMs);
                } catch (InterruptedException interrupted) {
                    Thread.currentThread().interrupt();
                    lastFailure = new IllegalStateException("AI grading retry interrupted", interrupted);
                    break;
                }
            }
        }
        return gradingAgentUtil.buildManualReviewResultForFailure(input, lastFailure);
    }

    private void validate(EnglishGradingRequest request) {
        if (request == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "评分请求不能为空");
        }
        String examType = normalize(request.getExamType());
        String questionType = normalize(request.getQuestionType());
        if (!ENGLISH_I.equals(examType) && !ENGLISH_II.equals(examType)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "考试类型必须是 ENGLISH_I 或 ENGLISH_II");
        }
        if (!TRANSLATION.equals(questionType) && !SMALL_ESSAY.equals(questionType)
                && !LARGE_ESSAY.equals(questionType)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题型不正确");
        }
        boolean hasQuestionImages = request.getQuestionImageUrls() != null
                && !request.getQuestionImageUrls().isEmpty();
        if (!StringUtils.hasText(request.getQuestionContent()) && !hasQuestionImages) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请填写题目原文/作文要求或上传题目图片");
        }
        if (!StringUtils.hasText(request.getStudentAnswer())
                && (request.getStudentAnswerImageUrls() == null || request.getStudentAnswerImageUrls().isEmpty())) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请粘贴答案或上传答案图片");
        }
        if (request.getQuestionContent() != null && request.getQuestionContent().length() > 50000) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题目内容过长");
        }
        if (request.getStudentAnswer() != null && request.getStudentAnswer().length() > 50000) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "学生答案过长");
        }
        if (request.getStudentAnswerImageUrls() != null && request.getStudentAnswerImageUrls().size() > 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "最多上传 8 张答案图片");
        }
        if (request.getQuestionImageUrls() != null && request.getQuestionImageUrls().size() > 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "最多上传 8 张题目图片");
        }
    }

    private double totalScore(String examType, String questionType) {
        if (TRANSLATION.equals(questionType)) {
            return ENGLISH_I.equals(examType) ? 10D : 15D;
        }
        if (SMALL_ESSAY.equals(questionType)) {
            return 10D;
        }
        return ENGLISH_I.equals(examType) ? 20D : 15D;
    }

    private String buildPolicy(String examType, String questionType, double totalScore) {
        StringBuilder policy = new StringBuilder();
        policy.append("这是考研英语专项评分，满分为 ").append(totalScore).append(" 分。\n");
        if (TRANSLATION.equals(questionType)) {
            if (ENGLISH_I.equals(examType)) {
                policy.append("英语一翻译属于英译汉，通常考查文章中指定的 5 个句子，共 10 分。必须结合上下文逐句评分，不能只看单句字面。\n");
                policy.append("必须识别并编号每一个待翻译句子，逐句评分；通常每句 2 分，所有句子分值之和必须等于 10 分。\n");
            } else {
                policy.append("英语二翻译通常要求英译汉完整段落，共 15 分。必须评价全文信息完整性、句间衔接和整体表达。\n");
                policy.append("必须把全文按英文完整句拆开逐句评分，再评价句间衔接；各句分值按信息量和难度合理分配，合计必须为 15 分，不能套用英语一的五句两分制。\n");
            }
            policy.append("translation_sentence_analysis 必须与待翻译句子一一对应，按原文顺序排列，不能合并成段落总评。\n");
            policy.append("每句必须返回 sentence_index、source_sentence、student_translation、reference_translation、max_score、awarded_score、deductions、accuracy_analysis、fluency_analysis、grammar_analysis、suggestion、improved_translation。\n");
            policy.append("每句 deductions 必须逐项写清：问题类型、学生具体措辞、为什么不准确/不自然/不流畅、扣多少分、应如何修改；没有错误时返回空数组，禁止编造扣分点。\n");
            policy.append("每句 suggestion 必须针对该句单独给出，不得只在总建议里泛泛而谈。总分必须等于所有句 awarded_score 之和。\n");
            policy.append("翻译具有合理主观差异：参考译文不是唯一答案。忠实传达语义、符合上下文且汉语自然的不同译法不得扣分；只有能指出具体依据时才扣分。\n");
        } else {
            policy.append("作文评分必须先判断任务完成度，再评价内容、结构、衔接、语法、词汇、拼写和格式。\n");
            policy.append("小作文按应用文任务要求评分；大作文按图表/图画或议论文任务要求评分。\n");
            policy.append("先给出档次判断，再换算成具体分数。不得因为更优美但并非错误的表达扣分。\n");
            policy.append("必须单独输出扣分点、修改建议、值得记忆的词汇和真正复杂句的语法结构分析。简单句不要放入难句分析。\n");
        }
        policy.append("如果题目、答案或图片无法可靠识别，必须 needs_manual_review=true，并说明缺失信息。\n");
        policy.append("图片不做 OCR，不把模型猜测的文字当成确定答案。\n");
        return policy.toString();
    }

    private String normalize(String value) {
        return value == null ? "" : value.trim().toUpperCase(Locale.ROOT);
    }
}
