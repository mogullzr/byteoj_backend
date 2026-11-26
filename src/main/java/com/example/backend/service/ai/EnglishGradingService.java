package com.example.backend.service.ai;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.request.AI.EnglishGradingRequest;
import com.example.backend.utils.examAgent.GradingAgentUtil;
import com.example.backend.models.enums.GradingDetail;
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
        GradingDetail detail = GradingDetail.from(request.getGradingDetail());
        String examType = normalize(request.getExamType());
        String questionType = normalize(request.getQuestionType());
        double totalScore = totalScore(examType, questionType);

        GradingAgentUtil.GradingInput input = new GradingAgentUtil.GradingInput();
        input.setQuestionType("english_" + questionType.toLowerCase(Locale.ROOT));
        input.setGradingDetail(detail.name());
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
        context.put("prompt_extension", detail.isDetailed()
                ? buildPolicy(examType, questionType, totalScore)
                : buildCompactPolicy(examType, questionType, totalScore));
        input.setExtraContext(context);

        RuntimeException lastFailure = null;
        GradingAgentUtil.GradingResult incompleteEssayResult = null;
        int maxAttempts = MAX_AI_RETRIES + 1;
        for (int attempt = 1; attempt <= maxAttempts; attempt++) {
            try {
                GradingAgentUtil.GradingResult result = gradingAgentUtil.gradeAnswerByAiBlocking(input);
                if (detail.isDetailed() && isEssay(questionType) && !result.isNeedsManualReview()
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
                    || !(row.get("issue_found") instanceof Boolean)) {
                return false;
            }
            if (Boolean.TRUE.equals(row.get("issue_found"))) {
                String original = String.valueOf(row.get("original")).toLowerCase(Locale.ROOT);
                String location = stringValue(row.get("error_location")).toLowerCase(Locale.ROOT);
                if (!StringUtils.hasText(location) || !original.contains(location)
                        || !hasText(row, "error_type")
                        || stringValue(row.get("original")).equals(stringValue(row.get("revised")))) {
                    return false;
                }
            } else if (row.get("deduction") instanceof Number deduction && deduction.doubleValue() > 0) {
                // A sentence marked correct/optional must not carry a language-error deduction.
                return false;
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

    private String buildCompactPolicy(String examType, String questionType, double totalScore) {
        String task = TRANSLATION.equals(questionType)
                ? ENGLISH_I.equals(examType)
                    ? "英语一翻译：结合上下文逐句核对5个指定句子，每句2分；每句内部拆为2至3个语义得分点。"
                    : "英语二翻译：完整段落按英文句子核对，按信息量与难度分配各句分值，再拆分语义点；不能套用五句两分制。"
                : "作文：先判断任务完成度与档次，再评价内容、结构衔接、语法、词汇、拼写和格式；"
                    + "小作文按应用文任务，大作文按图表/图画或议论文要求。模板和基础词汇本身不扣分，不以华丽程度扣分。";
        return "考研英语专项，满分" + totalScore + "分。按真实考试从严评分，不凭笼统表扬抬分。"
                + task
                + (isEssay(questionType) ? buildEssayScoringPolicy(examType, questionType) : "")
                + "所有得分与扣分以0.5分为刻度，通常扣1分，局部轻微问题扣0.5分；不拆成小额或重复扣分。"
                + "忠实、符合上下文且自然的等价译法/表达可接受；只对能从原文定位的真实错误扣分，不编造问题。"
                + "内部核对全部句子、语义点及扣分，不因反馈短而漏评；不输出内部推理。"
                + "卷面最多从内容得分扣2分，0表示清晰整洁、0.5轻微、1较明显、1.5至2仅严重问题，不重复扣分。"
                + "卷面仅依据答案图片的字迹、间距、对齐、涂改和整洁度；纯文本不评卷面也不扣卷面分。"
                + "图片光线/清晰度不足时不猜读、不扣推测分，标记needs_manual_review=true。"
                + "题目图片与答案图片须区分，直接视觉判卷，不做独立OCR。"
                + "最终得分等于内容得分减卷面扣分，最低0分；评分项合计须与最终得分一致。"
                + "反馈使用中文，输出详略严格遵守所选档位的JSON格式，不逐句讲评或重写全文。";
    }

    /**
     * Shared calibration for every essay tier. Grade bands are anchors, not an automatic score penalty.
     * Reference: CHSI's published English writing descriptors (2016-04-19):
     * https://yz.chsi.com.cn/kyzx/en/201604/20160419/1529533773.html
     */
    private String buildEssayScoringPolicy(String examType, String questionType) {
        String bands = SMALL_ESSAY.equals(questionType)
                ? "小作文满分10分，五至一档的分值锚点依次为9至10、7至8、5至6、3至4、1至2分。"
                : ENGLISH_I.equals(examType)
                    ? "英语一大作文满分20分，五至一档的分值锚点依次为17至20、13至16、9至12、5至8、1至4分。"
                    : "英语二大作文满分15分，五至一档的分值锚点依次为13至15、10至12、7至9、4至6、1至3分。";
        return """

                【作文严格校准：先核查证据，再定档给分】
                本规则针对作文；讲评简短不等于评分宽松。一次调用内完成审题、逐句校对、跨句复核和定档，
                不输出隐藏推理。只给实际可见的原作答评分，不先默改成通顺英语再评价，不预设高分或及格分。

                审题：逐项对照题目要求的对象、交际目的、必答信息、文体、语域及字数要求。
                小作文核对每项指令是否真正完成、称呼落款和语气是否合适；大作文核对图画/图表的关键信息、
                趋势和比较是否准确，立意、解释与论证是否贴题。提到关键词不等于完成任务；
                分三段、有模板或写够字数不自动代表内容充分。漏掉核心任务、误读图意、对象或目的错误必须影响内容档次。
                按题目实际字数要求核对原作文，不能用生成的修正版字数代替，不能在图片不清时猜测字数扣分。

                逐句核查以下各项，不只检查最显眼的一两个错误：
                - 句子骨架：主语、限定谓语是否齐全，多个谓语是否有合法连接；检查句子残缺、粘连句和逗号拼接。
                - 动词：主谓一致；时态、体和语态与时间、语境是否一致；情态动词后的原形；
                  不定式、动名词、分词及主动/被动关系是否正确。
                - 名词与修饰：单复数、可数/不可数、冠词和限定词、词性、比较级、修饰范围是否合适。
                - 句内关系：代词指代与格、从句引导与语序、并列结构、否定/条件/因果关系、介词和固定搭配。
                - 用词与书写：词义搭配、拼写、大小写、标点；跨句检查时态、人称、指代、逻辑是否矛盾。
                只有有语境依据的错误才能扣分；英美拼写差异、合法变体、基础词汇和正确的简单句不因“不高级”被扣分。
                例如原文确为“He go to school yesterday.”时应识别过去时间与谓语形式不符，改为
                “He went to school yesterday.”；不是只泛称“表达欠自然”。例子不构成本篇作文的事实。

                严重程度与频率必须进入评分：
                局部拼写或偶发冠词疏漏不等于反复使用错误的基本句型；改变句义、主谓关系不清、时态系统混乱、
                从句结构破坏或影响理解的错要明确其影响，不能一律按“轻微问题”略扣。
                同一处同源错误不能在多个清单或维度重复计分；同类错误在不同句子多次出现则不是一次孤立笔误，
                必须反映其覆盖范围和语言控制不稳定，不能只列一次就免去其余影响，也不能机械按出现次数无限累加扣分。

                定档须同时满足任务完成与语言控制：
                五档要求任务充分准确、组织自然、语言控制稳定，只允许极少局部小错；
                四档要求主要任务完整、语言总体可靠，允许有限的非系统性小错。
                在多个独立句子反复出现明显基础语法错误、显示控制不稳时，即使大意可懂，也不能称为“错误极少”而给四/五档；
                主要任务基本达成但语言有明显问题，应在三档及以下选择与证据一致的档次。
                大量错误已妨碍理解，或主要信息和任务明显不足时，应按二档及以下描述重新核查，不得用模板、篇幅或态度抬分。
                原答真正正确且任务完成充分时仍应得到相应高分，不以“严格”为由编造错误或固定压分。
                """ + bands + """
                以上分值用于锚定档次，沿用本项目0.5分刻度；半分微调不得突破所选档次上限或绕过高档门槛。
                先从原答证据确定内容与语言综合得分，再扣既有卷面项；同一错误不能既使定档降分又被当作额外罚分重复减去。
                检查最终得分、逐项得分、扣分说明与总体评价是否一致；不能写“语法错误反复出现”，数值上却按“几乎无错”给分。
                当准备给到满分85%及以上时，必须重新核对主要任务、基本语法和反复出错情况，并以真实证据支持该档次，
                不能仅凭“内容完整、结构清晰”或修正版的语言质量给高分。原题、范文与参考答案不构成唯一允许表达。
                只输出所选讲评档位原有的JSON结构，不增加独立审查报告或新栏目。

                """;
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
            policy.append(buildEssayScoringPolicy(examType, questionType));
            policy.append("在现有 band 字段写明档次，在 word_count 记录原作文词数；summary 中概括定档依据。必须分别评价任务完成、内容、结构衔接、语法、词汇、拼写和格式，并说明各项评分依据。不得只报一个高分再用笼统表扬补理由。\n");
            policy.append("固定句型、常见模板和基础词汇本身不扣分；不得因为表达不够高级、不够华丽、‘不接地气’或与模型偏好不同而扣分。只有存在具体语法、拼写、搭配、语义、逻辑、格式或任务完成问题时才扣分。\n");
            policy.append("作文反馈必须充分具体：逐项列出所有能够从原文确认的问题；每个问题都要引用学生原文中的具体词句，说明问题类别、中文原因、影响、扣分依据和可直接替换的修改方案。错误不足时宁可少列，不得为了凑数量编造错误。\n");
            policy.append("必须单独输出任务完成分析、结构衔接分析、语言错误清单、逐句修改建议、中文总体建议、词汇记忆和难句语法分析。所有总结、原因、建议和解释字段必须使用中文；英文只用于展示原句、单词、短语或修改后的英文。\n");
            policy.append("修改建议要优先给出稳妥、符合考研写作语境的表达，不要求考生刻意使用生僻词；如果原表达正确但可以更自然，只能标记为可选优化，不能计入扣分。\n");
            policy.append("language_error_analysis 必须按原文顺序列出每一处能够确认的实质语言问题，不限于每句只挑一个，也不得只列最前面的几处。每条填写 sentence_number、sentence_text、error_location、error_type、error_explanation_zh、impact_zh、deduction、corrected_sentence；原句和错误位置必须能直接核对，不能只写‘第二段有问题’。impact_zh 写清严重程度、是否影响理解、是否同类问题反复出现及其对语言档次的影响；同一处同源错误只计算一次扣分，跨字段重复展示不重复扣分。\n");
            policy.append("sentence_corrections 必须覆盖原作文每一句，保持原文顺序，不得只返回有利于高分结论的句子。每句填写 sentence_number、original、revised、explanation_zh、change_type、issue_found（真正的boolean）。有实质错误时 issue_found=true，另填 error_location、error_type，revised 给出保留原意的实际修正；同句多处独立错误都要在语言清单定位并在修正版中修复。原句正确时 issue_found=false，正确表达可以原样保留；纯风格润色明确标注‘可选优化’，不得计作扣分。language_error_analysis、sentence_corrections、deductions 中同一错误的判断与扣分必须一致，不得一处判错另一处又称完全正确。\n");
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
