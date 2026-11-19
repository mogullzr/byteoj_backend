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
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.springframework.util.CollectionUtils;

/** 专门处理考研英语翻译和作文评分的服务。 */
@Service
@Slf4j
public class EnglishGradingService {
    /** 首次请求失败后最多重试五次（总调用最多六次）。 */
    private static final int MAX_AI_RETRIES = 5;
    private static final String ENGLISH_I = "ENGLISH_I";
    private static final String ENGLISH_II = "ENGLISH_II";
    private static final String TRANSLATION = "TRANSLATION";
    private static final String SMALL_ESSAY = "SMALL_ESSAY";
    private static final String LARGE_ESSAY = "LARGE_ESSAY";

    @Resource
    private GradingAgentUtil gradingAgentUtil;
    @Resource
    private AiSourceService aiSources;

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
        input.setSourceFeature(AiSourceService.Feature.ENGLISH_GRADING);
        input.setAiModel(aiSources.resolve(AiSourceService.Feature.ENGLISH_GRADING,
                StringUtils.hasText(request.getAiModel()) ? request.getAiModel() : "GPT_5_4",
                !CollectionUtils.isEmpty(request.getQuestionImageUrls())
                        || !CollectionUtils.isEmpty(request.getStudentAnswerImageUrls())).id());
        input.setForceAi(Boolean.TRUE);
        input.setTemperature(0F);
        input.setTopP(0.2F);

        Map<String, Object> context = new LinkedHashMap<>();
        context.put("profile", "english_exam");
        context.put("exam_type", examType);
        context.put("question_type", questionType);
        context.put("total_score", totalScore);
        context.put("image_policy", "图片仅作为视觉模型原始输入，不进行 OCR；学生答案图片可用于评价卷面书写是否清晰，但文字无法可靠辨认时不得猜测答案，必须人工复核");
        context.put("prompt_extension", buildPolicy(examType, questionType, totalScore));
        input.setExtraContext(context);

        RuntimeException lastFailure = null;
        GradingAgentUtil.GradingResult incompleteEssayResult = null;
        int maxAttempts = MAX_AI_RETRIES + 1;
        for (int attempt = 1; attempt <= maxAttempts; attempt++) {
            try {
                GradingAgentUtil.GradingResult result = gradingAgentUtil.gradeAnswerByAiBlocking(input);
                if (isEssay(questionType) && !result.isNeedsManualReview()
                        && !hasDetailedEssayFeedback(result)) {
                    incompleteEssayResult = result;
                    lastFailure = new IllegalStateException(
                            "作文反馈缺少逐句定位、具体错误位置或中文修改说明");
                    log.warn("[english-grading] essay feedback incomplete, retry {}/{}, uuid={}",
                            attempt, maxAttempts, uuid);
                } else {
                    return result;
                }
            } catch (RuntimeException failure) {
                lastFailure = failure;
                log.warn("[english-grading] AI attempt {}/{} failed, uuid={}, error={}",
                        attempt, maxAttempts, uuid, failure.getMessage());
                if (attempt >= maxAttempts) {
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
        if (incompleteEssayResult != null) {
            return markEssayFeedbackForReview(incompleteEssayResult, lastFailure);
        }
        return gradingAgentUtil.buildManualReviewResultForFailure(input, lastFailure);
    }

    private boolean isEssay(String questionType) {
        return SMALL_ESSAY.equals(questionType) || LARGE_ESSAY.equals(questionType);
    }

    /** Reject vague prose feedback and retry while keeping the model score for eventual human review. */
    private boolean hasDetailedEssayFeedback(GradingAgentUtil.GradingResult result) {
        List<Map<String, Object>> sentenceRows = result.getSentenceCorrections();
        if (CollectionUtils.isEmpty(sentenceRows)) return false;
        for (Map<String, Object> row : sentenceRows) {
            if (!hasValue(row, "sentence_number")
                    || !hasText(row, "original")
                    || !hasText(row, "revised")
                    || !hasText(row, "explanation_zh")
                    || !hasValue(row, "issue_found")) {
                return false;
            }
            if (Boolean.TRUE.equals(row.get("issue_found"))) {
                String original = String.valueOf(row.get("original")).toLowerCase(Locale.ROOT);
                String location = stringValue(row.get("error_location")).toLowerCase(Locale.ROOT);
                if (!StringUtils.hasText(location) || !original.contains(location)
                        || !hasText(row, "error_type")) {
                    return false;
                }
            }
        }
        List<Map<String, Object>> errors = result.getLanguageErrorAnalysis();
        if (errors != null) {
            for (Map<String, Object> error : errors) {
                String sentence = stringValue(error.get("sentence_text")).toLowerCase(Locale.ROOT);
                String location = stringValue(error.get("error_location")).toLowerCase(Locale.ROOT);
                if (!hasValue(error, "sentence_number") || !StringUtils.hasText(sentence)
                        || !StringUtils.hasText(location) || !sentence.contains(location)
                        || !hasText(error, "error_type") || !hasText(error, "error_explanation_zh")
                        || !hasText(error, "corrected_sentence")) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean hasText(Map<String, Object> row, String key) {
        return row != null && StringUtils.hasText(stringValue(row.get(key)));
    }

    private boolean hasValue(Map<String, Object> row, String key) {
        return row != null && row.get(key) != null;
    }

    private String stringValue(Object value) {
        return value == null ? "" : String.valueOf(value).trim();
    }

    private GradingAgentUtil.GradingResult markEssayFeedbackForReview(
            GradingAgentUtil.GradingResult result, RuntimeException failure) {
        result.setNeedsManualReview(true);
        result.setGradingMode("manual_review_required");
        result.setSummary((StringUtils.hasText(result.getSummary()) ? result.getSummary() + " " : "")
                + "AI 多次生成的作文批改仍缺少可核对的逐句错误定位，当前分数仅供参考，请人工复核。");
        result.setChineseOverallAdvice((StringUtils.hasText(result.getChineseOverallAdvice())
                ? result.getChineseOverallAdvice() + "\n" : "")
                + "作文逐句诊断未通过完整性检查，建议重新提交清晰的作文文本或图片后再评。"
                + (failure == null ? "" : "（" + failure.getMessage() + "）"));
        if (result.getMistakes() == null) result.setMistakes(new ArrayList<>());
        GradingAgentUtil.Mistake review = new GradingAgentUtil.Mistake();
        review.setType("essay_feedback_incomplete");
        review.setDescription("模型未能为作文问题提供具体句子、错误位置和中文修改说明；本次得分需人工确认。");
        review.setSeverity("medium");
        review.setRelatedRubricItemId("essay_sentence_feedback");
        result.getMistakes().add(review);
        return result;
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
        policy.append("按真实考试阅卷从严给分，不要因宽松解释或笼统表扬抬高分数。所有分数按 0.5 分刻度；扣分通常以 1 分为档，只有局部、轻微且不影响核心含义的问题才扣 0.5 分。每个扣分点不得低于 0.5 分，严禁 0.1、0.2、0.3、0.4 等数值，也不得把一个问题拆成多个小额扣分。关键语义点漏译、误译或逻辑关系错误应按其分值影响扣分，通常扣 1 分；不得只因大意相近就给满该语义点分。各项得分、扣分和最终总分必须相互一致。\n");
        if (TRANSLATION.equals(questionType)) {
            if (ENGLISH_I.equals(examType)) {
                policy.append("英语一翻译属于英译汉，通常考查文章中指定的 5 个句子，共 10 分。必须结合上下文逐句评分，不能只看单句字面。\n");
                policy.append("必须识别并编号每一个待翻译句子，逐句评分；每句 2 分。先把每句拆为 2 至 3 个可核对的语义得分点（核心命题、修饰/逻辑关系、关键表达等），为每点分配明确分值，所有句子满分合计 10 分。核心语义点通常约 1 分，较小语义或表达点约 0.5 分；按实际遗漏或误译扣除对应得分点，不得把整句只按‘整体感觉’给分。\n");
            } else {
                policy.append("英语二翻译通常要求英译汉完整段落，共 15 分。必须评价全文信息完整性、句间衔接和整体表达。\n");
                policy.append("必须把全文按英文完整句拆开逐句评分，再将每句拆为 2 至 3 个可核对的语义得分点；各句满分按信息量和难度合理分配，核心语义点通常约 1 分、较小点约 0.5 分，所有句子满分合计必须为 15 分，不能套用英语一的五句两分制。\n");
            }
            policy.append("translation_sentence_analysis 必须与待翻译句子一一对应，按原文顺序排列，不能合并成段落总评。\n");
            policy.append("每句必须返回 sentence_index、source_sentence、student_translation、reference_translation、max_score、awarded_score、scoring_points、deductions、accuracy_analysis、fluency_analysis、grammar_analysis、suggestion、improved_translation。scoring_points 必须逐项列出 category、expected_meaning、student_evidence、max_score、awarded_score、reason；各得分点满分之和须等于该句 max_score，得分之和须等于该句内容 awarded_score。\n");
            policy.append("每句 deductions 必须逐项写清：问题类型、学生具体措辞、对应失分的语义得分点、为什么不准确/不自然/不流畅、扣多少分、应如何修改；扣分通常为 1 分，只有局部轻微问题才为 0.5 分。没有错误时返回空数组，禁止编造扣分点或对同一错误重复扣分。\n");
            policy.append("每句 suggestion 必须针对该句单独给出，不得只在总建议里泛泛而谈。逐句 awarded_score 表示翻译内容得分小计；最终 awarded_score 还须扣除 presentation_assessment.deduction。最终分不得低于 0，且须与总评分拆解、最终评分细则一致。\n");
            policy.append("翻译具有合理主观差异：参考译文不是唯一答案。忠实传达语义、符合上下文且汉语自然的不同译法不得扣分；只有能指出具体依据时才扣分。\n");
            policy.append("逐句分析必须覆盖主要语义单元、逻辑关系、指代、语气、搭配和中文表达自然度；accuracy_analysis 与 fluency_analysis 均须给出具体解释，不能只写‘基本准确/不够流畅’。\n");
        } else {
            policy.append("作文评分必须先判断任务完成度，再评价内容、结构、衔接、语法、词汇、拼写和格式。\n");
            policy.append("小作文按应用文任务要求评分；大作文按图表/图画或议论文任务要求评分。\n");
            policy.append("先给出档次判断，再换算成具体分数。必须分别评价任务完成、内容、结构衔接、语法、词汇、拼写和格式，并说明每一项得分依据。\n");
            policy.append("固定句型、常见模板和基础词汇本身不扣分；不得因为表达不够高级、不够华丽、‘不接地气’或与模型偏好不同而扣分。只有存在具体语法、拼写、搭配、语义、逻辑、格式或任务完成问题时才扣分。\n");
            policy.append("作文反馈必须充分具体：逐项列出所有能够从原文确认的问题；每个问题都要引用学生原文中的具体词句，说明问题类别、中文原因、影响、扣分依据和可直接替换的修改方案。错误不足时宁可少列，不得为了凑数量编造错误。\n");
            policy.append("必须单独输出任务完成分析、结构衔接分析、语言错误清单、逐句修改建议、中文总体建议、词汇记忆和难句语法分析。所有总结、原因、建议和解释字段必须使用中文；英文只用于展示原句、单词、短语或修改后的英文。\n");
            policy.append("修改建议要优先给出稳妥、符合考研写作语境的表达，不要求考生刻意使用生僻词；如果原表达正确但可以更自然，只能标记为可选优化，不能计入扣分。\n");
            policy.append("language_error_analysis 必须按文章从上到下逐条定位，至少覆盖每个存在明确问题的句子；每条必须填写 sentence_number、sentence_text、error_location、error_type、error_explanation_zh、impact_zh、deduction、corrected_sentence。error_location 必须引用句内具体单词或短语，不能只写‘第二段有问题’。\n");
            policy.append("sentence_corrections 必须按原文句子顺序输出，至少填写 sentence_number、original、revised、explanation_zh、change_type；即使该句没有扣分，也只能作为‘可选优化’返回，不能把可选优化当成错误。\n");
            policy.append("如果某个错误无法从学生原文定位，禁止只输出‘用词不当、表达不自然、语法有问题’等笼统结论；必须删除该条或标记 needs_manual_review。不要为了增加反馈数量而制造错误。\n");
        }
        policy.append("必须额外返回独立的 presentation_assessment 对象，字段为 assessed（boolean）、deduction（number，0 至 2）、assessment（中文评价）、suggestion（中文改进建议）。卷面与书写最多影响 2 分，作为从本题总分中扣除的项目，不能加在总分之外；结合内容评分后再扣，严禁重复扣减已在内容得分中处理的问题。\n");
        policy.append("卷面评价只依据学生答案图片中可直接观察到的书写清晰度、字母辨识度、大小写、单词间距、行距/对齐、涂改和整体整洁度；只指出实际可见的问题并给出具体改进建议。0 分表示清楚整洁；0.5 分表示轻微但可见的卷面问题；1 分表示较明显的潦草、间距/对齐问题或多处涂改；1.5 至 2 分仅用于严重潦草、难以辨认或明显影响阅卷的情况。无学生答案图片（如纯文本作答）时 assessed=false、deduction=0，并说明缺少卷面图像依据，不得臆测书写质量。图片分辨率、光线或角度不足以判断时 assessed=false、deduction=0、needs_manual_review=true。卷面扣分通常按 1 分，只有轻微问题才扣 0.5 分；上限 2 分。字迹难辨时不得猜读或据此臆造内容错误，应标记人工复核。\n");
        policy.append("英语专项的 rubric_used 必须包含一个最终总分项，max_score 等于 total_score，awarded_score 等于扣除卷面影响后的最终 awarded_score；翻译逐句语义得分点放在 translation_sentence_analysis 中，作文内容问题保留在对应的作文诊断字段中，卷面扣分依据放在 presentation_assessment 中。score_breakdown 需分别说明内容得分小计、卷面扣分及最终得分，确保各数值关系清楚。\n");
        policy.append("如果题目、答案或图片无法可靠识别，必须 needs_manual_review=true，并说明缺失信息。\n");
        policy.append("图片不做 OCR，不把模型猜测的文字当成确定答案。\n");
        return policy.toString();
    }

    private String normalize(String value) {
        return value == null ? "" : value.trim().toUpperCase(Locale.ROOT);
    }
}
