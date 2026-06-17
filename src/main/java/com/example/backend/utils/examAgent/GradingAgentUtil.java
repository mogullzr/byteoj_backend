package com.example.backend.utils.examAgent;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.Normalizer;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.Set;

/**
 * 通用 AI 判题工具类。
 *
 * <p>该类独立封装 AI 请求构造、调用、JSON 解析和结果校验，不直接依赖 DeepSeekService。</p>
 */
@Component
public class GradingAgentUtil {

    private static final Duration DEFAULT_BLOCK_TIMEOUT = Duration.ofSeconds(90);
    private static final double EPSILON = 0.0001D;
    private static final Set<String> LOCAL_GRADING_TYPES = Set.of("choice", "true_false", "fill_blank");

    private final ObjectMapper objectMapper;

    @Value("${ai.api.v3-1.model}")
    private String defaultModel;

    @Value("${ai.api.v3-1.url}")
    private String apiUrl;

    @Value("${ai.api.v3-1.key}")
    private String apiKey;

    @Value("${ai.api.Qwen-VL.model}")
    private String visionModel;

    @Value("${ai.api.Qwen-VL.url}")
    private String visionApiUrl;

    @Value("${ai.api.Qwen-VL.key}")
    private String visionApiKey;

    public GradingAgentUtil(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    /**
     * 非阻塞判题入口，适合在响应式链路中调用。
     */
    public Mono<GradingResult> gradeAnswer(GradingInput input) {
        validateInput(input);

        Optional<GradingResult> localResult = tryGradeByLocalRules(input);
        if (localResult.isPresent()) {
            return Mono.just(localResult.get());
        }

        return gradeAnswerByAi(input)
                .onErrorResume(ex -> Mono.just(buildManualReviewResult(input,
                        "AI 判题调用或结果解析失败，已转为人工复核：" + ex.getMessage())));
    }

    /**
     * 强制使用 AI 判题，跳过本地客观题规则。
     */
    public Mono<GradingResult> gradeAnswerByAi(GradingInput input) {
        validateInput(input);

        ChatCompletionRequest request = new ChatCompletionRequest();
        request.setModel(resolveModel(input));
        request.setStream(false);
        request.setTemperature(input.getTemperature() == null ? 0.1F : input.getTemperature());
        request.setTopP(input.getTopP() == null ? 0.2F : input.getTopP());
        request.setMessages(buildMessages(input));

        return WebClient.builder()
                .baseUrl(resolveApiUrl(input))
                .defaultHeader("Authorization", "Bearer " + resolveApiKey(input))
                .build()
                .post()
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(request)
                .retrieve()
                .bodyToMono(String.class)
                .map(this::extractAssistantContent)
                .map(this::parseResultJson)
                .map(result -> normalizeResult(result, input.getTotalScore(), input.getQuestionType()));
    }

    /**
     * 阻塞判题入口，适合普通 Spring MVC Service 中直接调用。
     */
    public GradingResult gradeAnswerBlocking(GradingInput input) {
        return gradeAnswer(input).block(DEFAULT_BLOCK_TIMEOUT);
    }

    public GradingResult gradeAnswerBlocking(GradingInput input, Duration timeout) {
        return gradeAnswer(input).block(timeout == null ? DEFAULT_BLOCK_TIMEOUT : timeout);
    }

    private void validateInput(GradingInput input) {
        if (input == null) {
            throw new IllegalArgumentException("grading input must not be null");
        }
        if (!StringUtils.hasText(input.getQuestionType())) {
            throw new IllegalArgumentException("question_type must not be blank");
        }
        if (input.getTotalScore() == null || input.getTotalScore() < 0) {
            throw new IllegalArgumentException("total_score must be greater than or equal to 0");
        }
        if (!StringUtils.hasText(input.getStudentAnswer()) && getStudentAnswerImageUrls(input).isEmpty()) {
            throw new IllegalArgumentException("student_answer or student_answer_image_url must not be blank");
        }
    }

    private Optional<GradingResult> tryGradeByLocalRules(GradingInput input) {
        if (Boolean.TRUE.equals(input.getForceAi())) {
            return Optional.empty();
        }
        if (!getStudentAnswerImageUrls(input).isEmpty()) {
            return Optional.empty();
        }
        String questionType = normalizeType(input.getQuestionType());
        if (!LOCAL_GRADING_TYPES.contains(questionType)) {
            return Optional.empty();
        }
        if (!StringUtils.hasText(input.getReferenceAnswer())) {
            return Optional.empty();
        }
        if (input.getRubric() != null) {
            return Optional.empty();
        }

        if ("choice".equals(questionType)) {
            return Optional.of(gradeChoiceByLocalRules(input));
        }
        if ("true_false".equals(questionType)) {
            return gradeTrueFalseByLocalRules(input);
        }
        if ("fill_blank".equals(questionType)) {
            return gradeFillBlankByLocalRules(input);
        }
        return Optional.empty();
    }

    private GradingResult gradeChoiceByLocalRules(GradingInput input) {
        String reference = normalizeChoiceAnswer(input.getReferenceAnswer());
        String student = normalizeChoiceAnswer(input.getStudentAnswer());
        boolean matched = StringUtils.hasText(reference) && reference.equals(student);

        List<String> acceptedAnswers = splitAcceptedAnswers(input.getReferenceAnswer());
        if (acceptedAnswers.isEmpty()) {
            acceptedAnswers.add(reference);
        }
        return buildObjectiveResult(input, matched, "choice", acceptedAnswers, student,
                "exact_match", matched ? "选项与参考答案一致。" : "选项与参考答案不一致。",
                matched ? "" : "核对题干条件和选项含义。");
    }

    private Optional<GradingResult> gradeTrueFalseByLocalRules(GradingInput input) {
        String reference = normalizeTrueFalseAnswer(input.getReferenceAnswer());
        String student = normalizeTrueFalseAnswer(input.getStudentAnswer());
        if (!StringUtils.hasText(reference) || !StringUtils.hasText(student)) {
            return Optional.empty();
        }

        boolean matched = reference.equals(student);
        return Optional.of(buildObjectiveResult(input, matched, "true_false",
                new ArrayList<>(Collections.singletonList(reference)), student,
                "objective_equivalence_check",
                matched ? "判断结果与参考答案等价。" : "判断结果与参考答案不一致。",
                matched ? "" : "重新判断命题真假，并注意等价表述。"));
    }

    private Optional<GradingResult> gradeFillBlankByLocalRules(GradingInput input) {
        if (isLikelyMultiBlankQuestion(input)) {
            return Optional.empty();
        }

        List<String> acceptedAnswers = splitAcceptedAnswers(input.getReferenceAnswer());
        if (acceptedAnswers.isEmpty()) {
            return Optional.empty();
        }

        String student = normalizeFillBlankAnswer(input.getStudentAnswer());
        boolean matched = acceptedAnswers.stream()
                .map(this::normalizeFillBlankAnswer)
                .anyMatch(reference -> isEquivalentFillBlankAnswer(reference, student));

        return Optional.of(buildObjectiveResult(input, matched, "fill_blank",
                acceptedAnswers, student, "objective_equivalence_check",
                matched ? "学生答案与参考答案等价。" : "学生答案不属于可接受答案范围，也未能与参考答案形成明确等价。",
                matched ? "" : "重新检查答案推导过程；若存在题库未收录但可证明正确的答案，建议人工复核。"));
    }

    private boolean isLikelyMultiBlankQuestion(GradingInput input) {
        String questionContent = blankToEmpty(input.getQuestionContent());
        String referenceAnswer = blankToEmpty(input.getReferenceAnswer());
        int blankCount = countOccurrences(questionContent, "____")
                + countOccurrences(questionContent, "（）")
                + countOccurrences(questionContent, "()");
        return blankCount > 1 || referenceAnswer.contains(";") || referenceAnswer.contains("；");
    }

    private GradingResult buildObjectiveResult(GradingInput input,
                                               boolean matched,
                                               String questionType,
                                               List<String> acceptedAnswers,
                                               String normalizedStudentAnswer,
                                               String gradingMode,
                                               String reason,
                                               String advice) {
        GradingResult result = new GradingResult();
        result.setQuestionType(questionType);
        result.setTotalScore(input.getTotalScore());
        result.setAwardedScore(matched ? input.getTotalScore() : 0D);
        result.setScoreRate(calculateScoreRate(result.getAwardedScore(), input.getTotalScore()));
        result.setCorrect(matched);
        result.setPartiallyCorrect(false);
        result.setConfidence(matched ? 0.98D : 0.95D);
        result.setNeedsManualReview(false);
        result.setGradingMode(gradingMode);
        result.setAcceptedAnswers(acceptedAnswers);
        result.setStudentNormalizedAnswer(normalizedStudentAnswer);
        result.setRubricUsed(new ArrayList<>(Collections.singletonList(
                buildRubricItem("answer_equivalence", "答案等价性", input.getTotalScore(),
                        result.getAwardedScore(), reason,
                        "参考答案：" + blankToEmpty(input.getReferenceAnswer()) + "；学生答案：" + blankToEmpty(input.getStudentAnswer()),
                        result.getConfidence())
        )));
        result.setMistakes(new ArrayList<>());
        if (!matched) {
            Mistake mistake = new Mistake();
            mistake.setType("wrong_answer");
            mistake.setDescription("答案不符合参考答案或可接受等价表达。");
            mistake.setSeverity("high");
            mistake.setRelatedRubricItemId("answer_equivalence");
            result.getMistakes().add(mistake);
        }
        result.setSummary(matched ? "答案正确，给满分。" : "答案错误，给 0 分。");
        result.setAdvice(advice);
        return normalizeResult(result, input.getTotalScore(), questionType);
    }

    private GradingResult buildManualReviewResult(GradingInput input, String reason) {
        GradingResult result = new GradingResult();
        result.setQuestionType(normalizeType(input.getQuestionType()));
        result.setTotalScore(input.getTotalScore());
        result.setAwardedScore(0D);
        result.setScoreRate(0D);
        result.setCorrect(false);
        result.setPartiallyCorrect(false);
        result.setConfidence(0.2D);
        result.setNeedsManualReview(true);
        result.setGradingMode("manual_review_required");
        result.setAcceptedAnswers(splitAcceptedAnswers(input.getReferenceAnswer()));
        result.setStudentNormalizedAnswer(normalizeCommonAnswer(input.getStudentAnswer()));
        result.setRubricUsed(new ArrayList<>(Collections.singletonList(
                buildRubricItem("manual_review", "人工复核", input.getTotalScore(), 0D,
                        reason, blankToEmpty(input.getStudentAnswer()), 0.2D)
        )));
        Mistake mistake = new Mistake();
        mistake.setType("ambiguous_answer");
        mistake.setDescription(reason);
        mistake.setSeverity("medium");
        mistake.setRelatedRubricItemId("manual_review");
        result.setMistakes(new ArrayList<>(Collections.singletonList(mistake)));
        result.setSummary("当前答案无法由工具可靠判分，已标记人工复核。");
        result.setAdvice("请人工核对参考答案、评分细则和学生作答后确认得分。");
        return normalizeResult(result, input.getTotalScore(), input.getQuestionType());
    }

    private RubricItem buildRubricItem(String id,
                                       String name,
                                       Double maxScore,
                                       Double awardedScore,
                                       String reason,
                                       String evidence,
                                       Double confidence) {
        RubricItem item = new RubricItem();
        item.setId(id);
        item.setName(name);
        item.setMaxScore(maxScore);
        item.setAwardedScore(awardedScore);
        item.setReason(reason);
        item.setEvidence(evidence);
        item.setConfidence(confidence);
        return item;
    }

    private String resolveModel(GradingInput input) {
        if (StringUtils.hasText(input.getModel())) {
            return input.getModel();
        }
        return getStudentAnswerImageUrls(input).isEmpty() ? defaultModel : visionModel;
    }

    private String resolveApiUrl(GradingInput input) {
        return getStudentAnswerImageUrls(input).isEmpty() ? apiUrl : visionApiUrl;
    }

    private String resolveApiKey(GradingInput input) {
        return getStudentAnswerImageUrls(input).isEmpty() ? apiKey : visionApiKey;
    }

    private List<ChatMessage> buildMessages(GradingInput input) {
        if (getStudentAnswerImageUrls(input).isEmpty()) {
            return List.of(
                    ChatMessage.ofText("system", SYSTEM_PROMPT),
                    ChatMessage.ofText("user", buildUserPrompt(input))
            );
        }

        List<ContentItem> contentItems = new ArrayList<>();
        contentItems.add(ContentItem.ofText(buildUserPrompt(input)
                + "\n\n注意：学生作答不是文本，而是后续图片。请先准确识别图片中的学生作答内容，"
                + "将识别出的作答写入 student_normalized_answer，再根据题目、参考答案和评分细则判分。"
                + "如果图片模糊、无法识别或不是答题步骤图片，必须设置 needs_manual_review=true。"));
        for (String imageUrl : getStudentAnswerImageUrls(input)) {
            contentItems.add(ContentItem.ofImageUrl(imageUrl));
        }

        return List.of(
                ChatMessage.ofText("system", SYSTEM_PROMPT),
                ChatMessage.ofContentItems("user", contentItems)
        );
    }

    private List<String> getStudentAnswerImageUrls(GradingInput input) {
        if (input == null) {
            return new ArrayList<>();
        }
        List<String> imageUrls = new ArrayList<>();
        if (StringUtils.hasText(input.getStudentAnswerImageUrl())) {
            imageUrls.add(input.getStudentAnswerImageUrl().trim());
        }
        if (input.getStudentAnswerImageUrls() != null) {
            for (String imageUrl : input.getStudentAnswerImageUrls()) {
                if (StringUtils.hasText(imageUrl)) {
                    imageUrls.add(imageUrl.trim());
                }
            }
        }
        return imageUrls;
    }

    private String extractAssistantContent(String responseBody) {
        try {
            JsonNode root = objectMapper.readTree(responseBody);
            JsonNode choice = root.path("choices").get(0);
            if (choice == null || choice.isMissingNode()) {
                throw new IllegalStateException("AI response has no choices");
            }
            String content = choice.path("message").path("content").asText("");
            if (!StringUtils.hasText(content)) {
                throw new IllegalStateException("AI response content is empty");
            }
            return content;
        } catch (JsonProcessingException e) {
            throw new IllegalStateException("failed to parse AI response JSON", e);
        }
    }

    private String normalizeType(String questionType) {
        if (!StringUtils.hasText(questionType)) {
            return "unknown";
        }
        return questionType.trim().toLowerCase(Locale.ROOT).replace('-', '_');
    }

    private String normalizeChoiceAnswer(String answer) {
        String text = normalizeCommonAnswer(answer);
        text = text.replaceAll("[^a-z0-9]", "");
        char[] chars = text.toCharArray();
        Arrays.sort(chars);
        String sorted = new String(chars);
        StringBuilder distinct = new StringBuilder();
        char previous = 0;
        for (char current : sorted.toCharArray()) {
            if (current != previous) {
                distinct.append(current);
                previous = current;
            }
        }
        return distinct.toString();
    }

    private String normalizeTrueFalseAnswer(String answer) {
        String text = normalizeCommonAnswer(answer);
        if (!StringUtils.hasText(text)) {
            return "";
        }
        Set<String> trueAnswers = new HashSet<>(Arrays.asList("true", "t", "yes", "y", "1", "对", "是", "正确", "真", "√"));
        Set<String> falseAnswers = new HashSet<>(Arrays.asList("false", "f", "no", "n", "0", "错", "否", "错误", "假", "×", "x"));
        String compact = text.replaceAll("\\s+", "");
        if (trueAnswers.contains(compact)) {
            return "true";
        }
        if (falseAnswers.contains(compact)) {
            return "false";
        }
        return "";
    }

    private List<String> splitAcceptedAnswers(String referenceAnswer) {
        if (!StringUtils.hasText(referenceAnswer)) {
            return new ArrayList<>();
        }

        String normalized = normalizeCommonAnswer(referenceAnswer);
        normalized = normalized
                .replace("或者", "或")
                .replace("以及", "和")
                .replace("；", ";")
                .replace("，", ",")
                .replace("、", ",");

        String[] parts = normalized.split("\\s*(?:或|或者|or|;|,|\\|)\\s*");
        List<String> result = new ArrayList<>();
        for (String part : parts) {
            String cleaned = part == null ? "" : part.trim();
            if (StringUtils.hasText(cleaned) && !result.contains(cleaned)) {
                result.add(cleaned);
            }
        }

        if (result.isEmpty() && StringUtils.hasText(normalized)) {
            result.add(normalized);
        }
        return result;
    }

    private String normalizeFillBlankAnswer(String answer) {
        String text = normalizeCommonAnswer(answer);
        text = text.replaceAll("^x\\s*=\\s*", "");
        text = text.replace("平方根", "sqrt");
        text = text.replace("根号", "sqrt");
        text = text.replace("√", "sqrt");
        text = text.replaceAll("\\s+", "");
        if (text.endsWith(".0")) {
            text = text.substring(0, text.length() - 2);
        }
        return text;
    }

    private boolean isEquivalentFillBlankAnswer(String reference, String student) {
        if (!StringUtils.hasText(reference) || !StringUtils.hasText(student)) {
            return false;
        }
        if (reference.equals(student)) {
            return true;
        }

        Optional<BigDecimal> referenceNumber = parseNumber(reference);
        Optional<BigDecimal> studentNumber = parseNumber(student);
        if (referenceNumber.isPresent() && studentNumber.isPresent()) {
            return referenceNumber.get().subtract(studentNumber.get()).abs()
                    .compareTo(BigDecimal.valueOf(EPSILON)) <= 0;
        }

        return normalizeMathToken(reference).equals(normalizeMathToken(student));
    }

    private Optional<BigDecimal> parseNumber(String value) {
        if (!StringUtils.hasText(value)) {
            return Optional.empty();
        }
        String text = value.trim();
        try {
            if (text.endsWith("%")) {
                return Optional.of(new BigDecimal(text.substring(0, text.length() - 1))
                        .divide(BigDecimal.valueOf(100), 10, RoundingMode.HALF_UP));
            }
            if (text.matches("[-+]?\\d+(?:\\.\\d+)?/[-+]?\\d+(?:\\.\\d+)?")) {
                String[] parts = text.split("/");
                BigDecimal numerator = new BigDecimal(parts[0]);
                BigDecimal denominator = new BigDecimal(parts[1]);
                if (denominator.abs().compareTo(BigDecimal.ZERO) == 0) {
                    return Optional.empty();
                }
                return Optional.of(numerator.divide(denominator, 10, RoundingMode.HALF_UP));
            }
            if (text.matches("[-+]?\\d+(?:\\.\\d+)?")) {
                return Optional.of(new BigDecimal(text));
            }
        } catch (NumberFormatException | ArithmeticException ignored) {
            return Optional.empty();
        }
        return Optional.empty();
    }

    private String normalizeMathToken(String value) {
        return value.replace("（", "(")
                .replace("）", ")")
                .replace("﹣", "-")
                .replace("−", "-")
                .replace("^", "")
                .replace("*", "")
                .replace("sqrt(", "sqrt")
                .replace(")", "")
                .replace("(", "");
    }

    private String normalizeCommonAnswer(String answer) {
        if (answer == null) {
            return "";
        }
        String text = Normalizer.normalize(answer, Normalizer.Form.NFKC)
                .trim()
                .toLowerCase(Locale.ROOT);
        return text.replace("　", " ");
    }

    private int countOccurrences(String text, String pattern) {
        if (!StringUtils.hasText(text) || !StringUtils.hasText(pattern)) {
            return 0;
        }
        int count = 0;
        int index = 0;
        while ((index = text.indexOf(pattern, index)) >= 0) {
            count++;
            index += pattern.length();
        }
        return count;
    }

    private GradingResult parseResultJson(String content) {
        String json = extractJsonObject(content);
        try {
            return objectMapper.readValue(json, GradingResult.class);
        } catch (JsonProcessingException e) {
            throw new IllegalStateException("failed to parse grading result JSON: " + json, e);
        }
    }

    private String extractJsonObject(String content) {
        String text = content == null ? "" : content.trim();
        if (text.startsWith("```")) {
            text = text.replaceFirst("^```(?:json)?\\s*", "")
                    .replaceFirst("\\s*```$", "")
                    .trim();
        }

        int start = text.indexOf('{');
        int end = text.lastIndexOf('}');
        if (start < 0 || end < start) {
            throw new IllegalStateException("AI response does not contain a JSON object");
        }
        return text.substring(start, end + 1);
    }

    private GradingResult normalizeResult(GradingResult result, Double totalScore, String questionType) {
        if (result == null) {
            result = new GradingResult();
        }

        result.setQuestionType(StringUtils.hasText(result.getQuestionType()) ? result.getQuestionType() : questionType);
        result.setTotalScore(roundScore(totalScore));
        result.setAwardedScore(clamp(roundScore(nullToZero(result.getAwardedScore())), 0D, result.getTotalScore()));
        result.setConfidence(clamp(nullToDefault(result.getConfidence(), 0.5D), 0D, 1D));
        result.setScoreRate(calculateScoreRate(result.getAwardedScore(), result.getTotalScore()));
        result.setCorrect(Math.abs(result.getAwardedScore() - result.getTotalScore()) < EPSILON);
        result.setPartiallyCorrect(result.getAwardedScore() > EPSILON
                && result.getAwardedScore() < result.getTotalScore() - EPSILON);

        if (result.getAcceptedAnswers() == null) {
            result.setAcceptedAnswers(new ArrayList<>());
        }
        if (result.getRubricUsed() == null || result.getRubricUsed().isEmpty()) {
            result.setRubricUsed(defaultRubric(result));
        } else {
            normalizeRubric(result);
        }
        if (result.getMistakes() == null) {
            result.setMistakes(new ArrayList<>());
        }
        if (!StringUtils.hasText(result.getGradingMode())) {
            result.setGradingMode(result.isNeedsManualReview() ? "manual_review_required" : "rubric_based_process_grading");
        }
        if (result.getStudentNormalizedAnswer() == null) {
            result.setStudentNormalizedAnswer("");
        }
        if (result.getSummary() == null) {
            result.setSummary("");
        }
        if (result.getAdvice() == null) {
            result.setAdvice("");
        }

        return result;
    }

    private void normalizeRubric(GradingResult result) {
        double maxScoreSum = 0D;
        double awardedScoreSum = 0D;
        List<RubricItem> items = result.getRubricUsed();
        for (int i = 0; i < items.size(); i++) {
            RubricItem item = items.get(i);
            if (!StringUtils.hasText(item.getId())) {
                item.setId("rubric_" + (i + 1));
            }
            if (!StringUtils.hasText(item.getName())) {
                item.setName("评分项" + (i + 1));
            }
            item.setMaxScore(Math.max(0D, roundScore(nullToZero(item.getMaxScore()))));
            item.setAwardedScore(clamp(roundScore(nullToZero(item.getAwardedScore())), 0D, item.getMaxScore()));
            item.setConfidence(clamp(nullToDefault(item.getConfidence(), result.getConfidence()), 0D, 1D));
            if (item.getReason() == null) {
                item.setReason("");
            }
            if (item.getEvidence() == null) {
                item.setEvidence("");
            }
            maxScoreSum += item.getMaxScore();
            awardedScoreSum += item.getAwardedScore();
        }

        if (Math.abs(maxScoreSum - result.getTotalScore()) > EPSILON && maxScoreSum > EPSILON) {
            double factor = result.getTotalScore() / maxScoreSum;
            for (RubricItem item : items) {
                item.setMaxScore(roundScore(item.getMaxScore() * factor));
                item.setAwardedScore(clamp(roundScore(item.getAwardedScore() * factor), 0D, item.getMaxScore()));
            }
        }

        awardedScoreSum = items.stream().mapToDouble(RubricItem::getAwardedScore).sum();
        if (Math.abs(awardedScoreSum - result.getAwardedScore()) > EPSILON) {
            result.setAwardedScore(clamp(roundScore(awardedScoreSum), 0D, result.getTotalScore()));
            result.setScoreRate(calculateScoreRate(result.getAwardedScore(), result.getTotalScore()));
            result.setCorrect(Math.abs(result.getAwardedScore() - result.getTotalScore()) < EPSILON);
            result.setPartiallyCorrect(result.getAwardedScore() > EPSILON
                    && result.getAwardedScore() < result.getTotalScore() - EPSILON);
        }
    }

    private List<RubricItem> defaultRubric(GradingResult result) {
        RubricItem item = new RubricItem();
        item.setId("answer_grading");
        item.setName("答案判定");
        item.setMaxScore(result.getTotalScore());
        item.setAwardedScore(result.getAwardedScore());
        item.setReason(StringUtils.hasText(result.getSummary()) ? result.getSummary() : "AI 已完成判分。");
        item.setEvidence(result.getStudentNormalizedAnswer());
        item.setConfidence(result.getConfidence());
        return new ArrayList<>(Collections.singletonList(item));
    }

    private String buildUserPrompt(GradingInput input) {
        return """
                请根据以下信息完成判题，并返回严格 JSON。

                【题目类型 question_type】
                %s

                【题目总分 total_score】
                %s

                【题目内容 question_content】
                %s

                【标准答案/参考答案 reference_answer】
                %s

                【标准解析 solution_explanation】
                %s

                【已有评分细则 rubric】
                %s

                重要说明：
                - reference_answer 是主要判分依据。
                - 不要脱离 reference_answer 自行发明标准答案。
                - 如果 rubric 为空、null、未提供或信息不足，请你先根据题目、总分、reference_answer 和标准解析生成合理评分细则，然后再判分。
                - 如果 reference_answer 与解析存在冲突，应优先使用 reference_answer，并降低 confidence。

                【学生作答 student_answer】
                %s

                【学生作答图片 student_answer_image_urls】
                %s

                【补充上下文 extra_context】
                %s

                判分要求：
                1. 根据 question_type 选择合适的判题策略。
                2. 如果是选择题、判断题、填空题，优先判断答案等价性。
                3. 如果是填空题，必须支持多个正确答案和数学等价表达。
                4. 如果是大题、计算题、证明题，必须基于 reference_answer 和解析生成/使用评分细则，再逐项给过程分。
                5. 如果学生答案与参考答案表达不同，但语义或数学上等价，应判为正确。
                6. 如果无法可靠判断，应设置 needs_manual_review = true，并说明原因。
                7. 最终只返回 JSON，不要返回 Markdown，不要返回额外说明。

                请严格使用以下 JSON 结构：
                {
                  "question_type": string,
                  "total_score": number,
                  "awarded_score": number,
                  "score_rate": number,
                  "is_correct": boolean,
                  "is_partially_correct": boolean,
                  "confidence": number,
                  "needs_manual_review": boolean,
                  "grading_mode": string,
                  "accepted_answers": string[],
                  "student_normalized_answer": string,
                  "rubric_used": [
                    {
                      "id": string,
                      "name": string,
                      "max_score": number,
                      "awarded_score": number,
                      "reason": string,
                      "evidence": string,
                      "confidence": number
                    }
                  ],
                  "mistakes": [
                    {
                      "type": string,
                      "description": string,
                      "severity": "low" | "medium" | "high",
                      "related_rubric_item_id": string
                    }
                  ],
                  "summary": string,
                  "advice": string
                }
                """.formatted(
                input.getQuestionType(),
                input.getTotalScore(),
                blankToEmpty(input.getQuestionContent()),
                blankToEmpty(input.getReferenceAnswer()),
                blankToEmpty(input.getSolutionExplanation()),
                toJsonOrNull(input.getRubric()),
                blankToEmpty(input.getStudentAnswer()),
                toJsonOrNull(getStudentAnswerImageUrls(input)),
                toJsonOrNull(input.getExtraContext())
        );
    }

    private String toJsonOrNull(Object value) {
        if (value == null) {
            return "null";
        }
        if (value instanceof String text) {
            return StringUtils.hasText(text) ? text : "null";
        }
        try {
            return objectMapper.writeValueAsString(value);
        } catch (JsonProcessingException e) {
            return String.valueOf(value);
        }
    }

    private static String blankToEmpty(String value) {
        return value == null ? "" : value;
    }

    private static double calculateScoreRate(Double awardedScore, Double totalScore) {
        if (totalScore == null || totalScore <= EPSILON) {
            return 0D;
        }
        return BigDecimal.valueOf(awardedScore / totalScore)
                .setScale(4, RoundingMode.HALF_UP)
                .stripTrailingZeros()
                .doubleValue();
    }

    private static double roundScore(Double score) {
        return BigDecimal.valueOf(nullToZero(score))
                .setScale(4, RoundingMode.HALF_UP)
                .stripTrailingZeros()
                .doubleValue();
    }

    private static double clamp(Double value, double min, double max) {
        double current = nullToZero(value);
        return Math.max(min, Math.min(max, current));
    }

    private static double nullToZero(Double value) {
        return value == null ? 0D : value;
    }

    private static double nullToDefault(Double value, double defaultValue) {
        return value == null ? defaultValue : value;
    }

    private static final String SYSTEM_PROMPT = """
            你是一个考试判题 Agent，负责根据题型、题目、总分、标准答案/参考答案、标准解析、评分细则和学生作答进行判分。

            你的目标不是机械字符串匹配，而是判断学生答案在语义、数学等价性、表达完整性、过程合理性上是否满足得分要求。

            你必须遵守以下总原则：
            1. 严格以 question_type 和 total_score 为准。
            2. 最终得分 awarded_score 不得超过 total_score，不得小于 0。
            3. 所有分数可以是小数，但必须合理，例如 0.5、1、1.5、2。
            4. 标准答案/参考答案是主要判分依据。你必须优先使用 reference_answer，不得脱离 reference_answer 自行发明正确答案。
            5. 如果 reference_answer 与 solution_explanation 存在冲突，应优先相信 reference_answer，并在 summary 中说明存在冲突，同时降低 confidence。
            6. 如果 reference_answer 为空、缺失或明显不完整，才允许根据 question_content 和 solution_explanation 推断可接受答案，并必须降低 confidence。
            7. 如果题型是选择题、判断题、填空题、简答题这类客观或半客观题，应优先判断学生答案是否与 reference_answer 等价，而不是要求文字完全一致。
            8. 如果题型是填空题，允许多个正确答案、数学等价表达、语义等价表达、大小写和格式差异；单空填空题通常只有满分或 0 分，多空填空题可以按空或得分点部分给分。
            9. 如果题型是大题、计算题、证明题、论述题，必须根据方法、关键步骤、计算过程、最终答案和结论表达判定过程分；已有评分细则时优先使用，否则围绕 reference_answer 和 solution_explanation 自动生成合理评分细则。
            10. 如果学生答案无法判断、信息不足、图片/文本不清晰，应降低 confidence，并设置 needs_manual_review 为 true。
            11. 不要脑补学生没有写出的关键步骤。只能根据学生答案中可见、可识别、可推断但合理的内容给分。
            12. 你必须输出严格 JSON。
            13. 不要输出 Markdown。
            14. 不要输出解释性闲聊。
            15. 不要输出隐藏推理过程，只输出判分结论、得分依据、错误原因和改进建议。

            评分风格：
            - 默认使用 strict_normal 模式，即严格但不极端。
            - 明确正确的内容应给分，明确错误的内容应扣分。
            - 不确定的内容应降低置信度，而不是强行判断。
            - 对个人练习场景，应偏保守估分，避免虚高。

            题型处理策略：
            - choice：判断学生选项是否与参考答案一致；多选题必须完整匹配，除非题目说明可部分得分。
            - true_false：支持“对/错”“正确/错误”“true/false”“T/F”等等价表达。
            - fill_blank：先解析所有可接受答案，再标准化学生答案并逐一做等价判断；支持 1/2 与 0.5、sqrt(2) 与 √2 等常见等价表达。
            - short_answer：判断关键词、核心含义和必要条件是否满足。
            - calculation/proof/major_question：按大题逻辑判分，输出评分细则和逐项得分。
            - essay：根据参考答案、评分细则、关键词、逻辑完整性和表达质量判分。

            输出要求：
            - 必须返回一个 JSON object。
            - JSON 字段必须符合用户提供的输出格式。
            - 如果无法判分，也必须返回 JSON，并说明 needs_manual_review = true。
            """;

    @Data
    public static class GradingInput {
        @JsonProperty("question_type")
        private String questionType;

        @JsonProperty("total_score")
        private Double totalScore;

        @JsonProperty("question_content")
        private String questionContent;

        @JsonProperty("reference_answer")
        private String referenceAnswer;

        @JsonProperty("solution_explanation")
        private String solutionExplanation;

        private Object rubric;

        @JsonProperty("student_answer")
        private String studentAnswer;

        @JsonProperty("student_answer_image_url")
        private String studentAnswerImageUrl;

        @JsonProperty("student_answer_image_urls")
        private List<String> studentAnswerImageUrls;

        @JsonProperty("extra_context")
        private Object extraContext;

        /**
         * 可选：覆盖默认模型。为空时使用 ai.api.v3-1.model。
         */
        private String model;

        private Float temperature;

        @JsonProperty("top_p")
        private Float topP;

        /**
         * 为 true 时跳过本地客观题规则，强制调用 AI。
         */
        @JsonProperty("force_ai")
        private Boolean forceAi;
    }

    @Data
    public static class GradingResult {
        @JsonProperty("question_type")
        private String questionType;

        @JsonProperty("total_score")
        private Double totalScore;

        @JsonProperty("awarded_score")
        private Double awardedScore;

        @JsonProperty("score_rate")
        private Double scoreRate;

        @JsonProperty("is_correct")
        private boolean correct;

        @JsonProperty("is_partially_correct")
        private boolean partiallyCorrect;

        private Double confidence;

        @JsonProperty("needs_manual_review")
        private boolean needsManualReview;

        @JsonProperty("grading_mode")
        private String gradingMode;

        @JsonProperty("accepted_answers")
        private List<String> acceptedAnswers;

        @JsonProperty("student_normalized_answer")
        private String studentNormalizedAnswer;

        @JsonProperty("rubric_used")
        private List<RubricItem> rubricUsed;

        private List<Mistake> mistakes;

        private String summary;

        private String advice;
    }

    @Data
    public static class RubricItem {
        private String id;

        private String name;

        @JsonProperty("max_score")
        private Double maxScore;

        @JsonProperty("awarded_score")
        private Double awardedScore;

        private String reason;

        private String evidence;

        private Double confidence;
    }

    @Data
    public static class Mistake {
        private String type;

        private String description;

        private String severity;

        @JsonProperty("related_rubric_item_id")
        private String relatedRubricItemId;
    }

    @Data
    private static class ChatCompletionRequest {
        private String model;

        private Boolean stream;

        private Float temperature;

        @JsonProperty("top_p")
        private Float topP;

        private List<ChatMessage> messages;
    }

    @Data
    private static class ChatMessage {
        private final String role;

        private final Object content;

        private static ChatMessage ofText(String role, String content) {
            return new ChatMessage(role, content);
        }

        private static ChatMessage ofContentItems(String role, List<ContentItem> content) {
            return new ChatMessage(role, content);
        }
    }

    @Data
    private static class ContentItem {
        private String type;

        private String text;

        @JsonProperty("image_url")
        private ImageUrl imageUrl;

        private static ContentItem ofText(String text) {
            ContentItem item = new ContentItem();
            item.setType("text");
            item.setText(text);
            return item;
        }

        private static ContentItem ofImageUrl(String imageUrl) {
            ContentItem item = new ContentItem();
            item.setType("image_url");
            item.setImageUrl(new ImageUrl(imageUrl));
            return item;
        }
    }

    @Data
    private static class ImageUrl {
        private final String url;
    }
}
