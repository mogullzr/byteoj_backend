package com.example.backend.utils.examAgent;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class GradingAgentUtil {

    private static final Duration DEFAULT_BLOCK_TIMEOUT = Duration.ofSeconds(180);
    private static final double EPSILON = 0.0001D;
    private static final Set<String> LOCAL_GRADING_TYPES = Set.of("choice", "true_false", "fill_blank");

    private final ObjectMapper objectMapper;

    @Value("${ai.api.openai-gpt-5.4.model}")
    private String defaultModel;

    @Value("${ai.api.openai-gpt-5.4.url}")
    private String apiUrl;

    @Value("${ai.api.openai-gpt-5.4.key}")
    private String apiKey;

    public GradingAgentUtil(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    /**
     * 非阻塞判题入口，适合在响应式链路中调用。
     */
    public Mono<GradingResult> gradeAnswer(GradingInput input) {
        validateInput(input);
        if (isBlankSubmission(input)) {
            log.info("[grading-agent] skip ai because submission is blank, questionType={}, totalScore={}",
                    input.getQuestionType(), input.getTotalScore());
            return Mono.just(buildBlankSubmissionResult(input));
        }

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
        if (isBlankSubmission(input)) {
            log.info("[grading-agent] skip ai because submission is blank, questionType={}, totalScore={}",
                    input.getQuestionType(), input.getTotalScore());
            return Mono.just(buildBlankSubmissionResult(input));
        }

        long start = System.currentTimeMillis();
        ChatCompletionRequest request = new ChatCompletionRequest();
        request.setModel(resolveModel(input));
        request.setStream(false);
        request.setTemperature(input.getTemperature() == null ? 0.1F : input.getTemperature());
        request.setTopP(input.getTopP() == null ? 0.2F : input.getTopP());
        request.setMessages(buildMessages(input));
        request.setResponseFormat(ResponseFormat.jsonObject());
        String targetApiUrl = resolveApiUrl(input);
        boolean hasImage = !getStudentAnswerImageUrls(input).isEmpty();
        log.info("[grading-agent] ai request start, model={}, url={}, hasImage={}, questionType={}, totalScore={}",
                request.getModel(), targetApiUrl, hasImage, input.getQuestionType(), input.getTotalScore());

        return WebClient.builder()
                .baseUrl(targetApiUrl)
                .defaultHeader("Authorization", "Bearer " + resolveApiKey(input))
                .build()
                .post()
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(request)
                .retrieve()
                .bodyToMono(String.class)
                .map(this::extractAssistantContent)
                .map(this::parseResultJson)
                .map(result -> normalizeResult(result, input.getTotalScore(), input.getQuestionType()))
                .doOnSuccess(result -> log.info("[grading-agent] ai request success, model={}, hasImage={}, gradingMode={}, manualReview={}, awardedScore={}, costMs={}",
                        request.getModel(), hasImage, result.getGradingMode(), result.isNeedsManualReview(),
                        result.getAwardedScore(), System.currentTimeMillis() - start))
                .doOnError(ex -> log.error("[grading-agent] ai request failed, model={}, url={}, hasImage={}, questionType={}, costMs={}, error={}",
                        request.getModel(), targetApiUrl, hasImage, input.getQuestionType(),
                        System.currentTimeMillis() - start, ex.getMessage(), ex));
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
        result.setNeedsManualReview(true);
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

    private boolean isBlankSubmission(GradingInput input) {
        return !StringUtils.hasText(input.getStudentAnswer()) && getStudentAnswerImageUrls(input).isEmpty();
    }

    private GradingResult buildBlankSubmissionResult(GradingInput input) {
        GradingResult result = new GradingResult();
        result.setQuestionType(normalizeType(input.getQuestionType()));
        result.setTotalScore(input.getTotalScore());
        result.setAwardedScore(0D);
        result.setScoreRate(0D);
        result.setCorrect(false);
        result.setPartiallyCorrect(false);
        result.setConfidence(1D);
        result.setNeedsManualReview(false);
        result.setGradingMode("blank_submission");
        result.setAcceptedAnswers(splitAcceptedAnswers(input.getReferenceAnswer()));
        result.setStudentNormalizedAnswer("");
        result.setRubricUsed(new ArrayList<>(Collections.singletonList(
                buildRubricItem("blank_submission", "未作答", input.getTotalScore(), 0D,
                        "student answer and answer images are both empty",
                        "", 1D)
        )));
        Mistake mistake = new Mistake();
        mistake.setType("blank_submission");
        mistake.setDescription("未检测到文字作答，也未检测到有效图片作答。");
        mistake.setSeverity("high");
        mistake.setRelatedRubricItemId("blank_submission");
        result.setMistakes(new ArrayList<>(Collections.singletonList(mistake)));
        result.setSummary("未作答，得 0 分。");
        result.setAdvice("如需得分，请补充文字答案或上传清晰的作答图片。");
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
        return defaultModel;
    }

    private String resolveApiUrl(GradingInput input) {
        return apiUrl;
    }

    private String resolveApiKey(GradingInput input) {
        return apiKey;
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
                + "如果图片模糊、无法识别或不是与题目相关的有效作答图片，必须设置 needs_manual_review=true。"));
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
        return imageUrls.stream().distinct().collect(java.util.stream.Collectors.toList());
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

    GradingResult parseResultJson(String content) {
        String json = extractJsonObject(content);
        String repairedJson = repairJsonLatexBackslashes(json);
        if (!repairedJson.equals(json)) {
            log.warn("[grading-agent] repaired unescaped LaTeX backslashes in AI grading JSON");
        }
        try {
            return objectMapper.readValue(repairedJson, GradingResult.class);
        } catch (JsonProcessingException exception) {
            throw new IllegalStateException(buildJsonParseErrorMessage(exception), exception);
        }
    }

    private String repairJsonLatexBackslashes(String json) {
        StringBuilder repaired = new StringBuilder(json.length() + 32);
        boolean inString = false;
        boolean inMath = false;

        for (int index = 0; index < json.length(); index++) {
            char current = json.charAt(index);
            if (!inString) {
                repaired.append(current);
                if (current == '"') {
                    inString = true;
                    inMath = false;
                }
                continue;
            }

            if (current == '"' && !isEscaped(json, index)) {
                inString = false;
                inMath = false;
                repaired.append(current);
                continue;
            }
            if (current == '$' && !isEscaped(json, index)) {
                inMath = !inMath;
                repaired.append(current);
                continue;
            }
            if (current != '\\') {
                repaired.append(current);
                continue;
            }

            char next = index + 1 < json.length() ? json.charAt(index + 1) : 0;
            if (next == '\\') {
                repaired.append(current).append(next);
                index++;
                continue;
            }
            if ((inMath && next != '"' && next != '/') || !isJsonEscapeCharacter(next)) {
                repaired.append("\\\\");
            } else {
                repaired.append(current);
            }
        }
        return repaired.toString();
    }

    private boolean isEscaped(String text, int index) {
        int backslashCount = 0;
        for (int current = index - 1; current >= 0 && text.charAt(current) == '\\'; current--) {
            backslashCount++;
        }
        return backslashCount % 2 == 1;
    }

    private boolean isJsonEscapeCharacter(char character) {
        return character == '"'
                || character == '\\'
                || character == '/'
                || character == 'b'
                || character == 'f'
                || character == 'n'
                || character == 'r'
                || character == 't'
                || character == 'u';
    }

    private String buildJsonParseErrorMessage(JsonProcessingException exception) {
        StringBuilder message = new StringBuilder("failed to parse grading result JSON: ")
                .append(exception.getOriginalMessage());
        if (exception.getLocation() != null) {
            message.append(" at line ")
                    .append(exception.getLocation().getLineNr())
                    .append(", column ")
                    .append(exception.getLocation().getColumnNr());
        }
        return message.toString();
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
                STRICT BACKEND GRADING POLICY:
                - If question_type is fill_blank, a final answer alone may receive full credit when it is equivalent to reference_answer.
                - Do not require process solely because question_type is major_question or calculation. First classify the task as answer_only_allowed, key_justification_required, or full_process_required from the wording, rubric, score, and actual reasoning complexity.
                - answer_only_allowed: the task is a direct fact, direct reading, or genuinely one-step computation; it does not ask for proof, explanation, derivation, method, or working; and the rubric does not allocate process points. An equivalent final answer may receive full credit.
                - key_justification_required/full_process_required: if the student only provides a final answer without the required visible formula, model, reasoning, key step, calculation, or proof, awarded_score must be 0 even when the final answer matches reference_answer.
                - If extra_context.process_required is true, classify the task as full_process_required. If it is false, answer-only grading is allowed only when the question wording and rubric do not explicitly require reasoning or process.
                - For a calculation or measurement task, first identify every decisive formula component. Omitting a factor, term, dimension, subtraction/addition component, boundary, or condition that changes the computed quantity is a structural method error, not a minor notation issue.
                - A rubric item for a decisive formula or method must receive 0 when such a component is absent throughout the visible work. Downstream calculation points may be awarded only when the student's visible work independently supports them. A correct final value copied or reached by coincidence does not restore missing method points.
                - For a process-required task with no explicit rubric, if a decisive formula/method component is absent throughout the visible work, the total award must not exceed the independently justified final-result portion and that portion must be at most 20%% of total_score. This cap does not apply to answer_only_allowed tasks.
                - If a formula line omits a component but the following substitution or calculation unmistakably includes and uses that component correctly, treat it as a notation/transcription omission instead of a missing method; deduct only the rubric-supported presentation amount.
                - Do not infer missing process from reference_answer or solution_explanation. Only grade what is visible in student_answer or student_answer_image_urls.
                - Markdown math must use single dollar delimiters like $x-y+z=0$. Never use double dollar delimiters or bracket math delimiters.

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
                - 判分前必须先判断本题属于“答案即可”“需要关键依据”还是“需要完整过程”，不得仅凭 question_type 或题目分值决定是否要求步骤。
                - reference_answer 主要用于核对最终结论；当本题需要过程时，应以 rubric 和 solution_explanation 拆解方法、公式及关键步骤，不能因最终答案正确而补回缺失的过程分。

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
                4. 大题和计算题不天然等于必须写完整过程：若题目确属直接读取、直接事实或一步即可验证的计算，且题干与评分细则均未要求过程，正确结论可得满分。
                5. 对需要关键依据或完整过程的题，必须基于 reference_answer 和解析生成/使用评分细则，再逐项给过程分；只有最终答案、没有所需依据时得 0 分。
                6. 面积、体积、概率、总量等计算中，先核对决定结果的完整公式。若缺少会改变结果的项、因子、维度、加减部分、边界或条件，对应公式/方法项得 0 分，不得因为最终数值接近或正确而给可观过程分；需要过程但没有明确 rubric 时，总分最多保留独立成立的结果分，且不得超过 total_score 的 20%%。“答案即可”类题目不受此上限影响。
                7. 若公式书写看似漏项，但紧接着的代入与计算明确且正确地使用了该项，只按书写疏漏处理，不得误判为方法缺失。
                8. 如果学生答案与参考答案表达不同，但语义或数学上等价，应判为正确。
                9. 如果无法可靠判断，应设置 needs_manual_review = true，并说明原因。
                10. 最终只返回 JSON，不要返回 Markdown，不要返回额外说明。
                11. 数学表达式必须使用单美元符号包裹，例如 $x-y+z=0$；严禁使用 $$...$$、\\(...\\)、\\[...\\]。
                12. 返回内容本身是 JSON。JSON 字符串中的每一个 LaTeX 反斜杠都必须转义为双反斜杠，例如必须写成 "$\\\\int_0^1 x\\\\,dx=\\\\frac{1}{2}$"，禁止写成包含单反斜杠的无效 JSON。

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
            STRICT BACKEND GRADING POLICY:
            - fill_blank is answer-equivalence grading: a final answer alone can receive full credit if it matches reference_answer mathematically or semantically.
            - Do not infer process requirements from question_type alone. Before grading, classify the task as answer_only_allowed, key_justification_required, or full_process_required from the wording, rubric, score, and actual reasoning complexity.
            - answer_only_allowed applies only to direct facts, direct readings, or genuinely one-step computations when neither the question nor rubric asks for explanation, proof, derivation, method, or working. In that case an equivalent final answer may receive full credit.
            - For key_justification_required or full_process_required tasks, an answer with only the final conclusion and none of the required visible formula, model, reasoning, key step, calculation, or proof must receive 0, even if the conclusion matches reference_answer.
            - extra_context.process_required=true always forces full_process_required. A false value permits answer-only grading only when the question wording and rubric do not explicitly require process.
            - In calculation and measurement tasks, omission of a decisive factor, term, dimension, add/subtract component, boundary, or condition is a structural method error. Give 0 for that formula/method rubric item and award downstream points only when independently supported by visible valid work.
            - For a process-required task without an explicit rubric, if a decisive formula/method component is absent throughout the visible work, cap the total award at the independently justified final-result portion and at no more than 20% of total_score. This cap does not apply to answer_only_allowed tasks.
            - If the next substitution or calculation unmistakably includes a component omitted only from a written formula line, treat it as a notation/transcription omission rather than a missing method.
            - Do not reconstruct or assume missing student steps from reference_answer or solution_explanation.
            - Markdown math must use single dollar delimiters like $x-y+z=0$. Never use double dollar delimiters or bracket math delimiters.

            你是一个考试判题 Agent，负责根据题型、题目、总分、标准答案/参考答案、标准解析、评分细则和学生作答进行判分。

            你的目标不是机械字符串匹配，而是判断学生答案在语义、数学等价性、表达完整性、过程合理性上是否满足得分要求。

            你必须遵守以下总原则：
            1. 严格以 question_type 和 total_score 为准。
            2. 最终得分 awarded_score 不得超过 total_score，不得小于 0。
            3. 所有分数可以是小数，但必须合理，例如 0.5、1、1.5、2。
            4. 标准答案/参考答案是主要判分依据。你必须优先使用 reference_answer，不得脱离 reference_answer 自行发明正确答案。
            5. 如果 reference_answer 与 solution_explanation 存在冲突，应优先相信 reference_answer，并在 summary 中说明存在冲突，同时降低 confidence。
            6. 如果 reference_answer 为空、缺失或明显不完整，才允许根据 question_content 和 solution_explanation 推断可接受答案，并必须降低 confidence。
            7. 选择题、判断题、填空题应优先判断答案是否与 reference_answer 等价。short_answer 默认属于“需要关键依据”，学生只抄写最终答案而没有题目要求的说明、理由或核心要点时得 0 分；只有题干或评分细则明确表明答案即可时，才能按“答案即可”处理。
            8. 如果题型是填空题，允许多个正确答案、数学等价表达、语义等价表达、大小写和格式差异；单空填空题通常只有满分或 0 分，多空填空题可以按空或得分点部分给分。
            9. 大题、计算题、证明题、论述题必须先判断过程必要性，不得仅凭题型标签要求步骤：
               - “答案即可”：直接事实、直接读取或真正的一步计算，题干未要求说明/证明/推导/过程，评分细则也没有过程分，正确且等价的最终答案可得满分。
               - “需要关键依据”：必须至少写出决定结论的公式、模型、理由或关键步骤；只有答案而无关键依据时得 0 分。
               - “需要完整过程”：按方法、关键步骤、计算或证明过程、最终答案和结论表达逐项判分；只有答案时得 0 分。
               已有评分细则时优先使用，否则围绕 question_content、reference_answer 和 solution_explanation 生成合理评分细则。reference_answer 主要核对结论，solution_explanation 主要用于拆解过程得分点。
            10. 如果学生答案无法判断、信息不足、图片/文本不清晰，应降低 confidence，并设置 needs_manual_review 为 true。
            11. 不要脑补学生没有写出的关键步骤。只能根据学生答案中可见、可识别、可推断但合理的内容给分。
            12. 你必须输出严格 JSON。
            13. 不要输出 Markdown。
            14. 不要输出解释性闲聊。
            15. 不要输出隐藏推理过程，只输出判分结论、得分依据、错误原因和改进建议。
            16. 数学表达式必须使用单美元符号包裹，例如 $x-y+z=0$；严禁使用 $$...$$、\\(...\\)、\\[...\\]。
            17. 计算类题目必须先识别决定结果的完整数学模型或公式。学生若漏掉会改变结果的因子、项、维度、加减部分、边界或条件，该公式/方法评分项必须得 0；后续分数只能来自学生可见且独立成立的正确工作，不能因最终数值正确、接近或与参考答案一致而补发过程分。需要过程但没有明确 rubric 时，总分最多保留独立成立的结果分，且不得超过 total_score 的 20%；“答案即可”类题目不受此上限影响。
            18. 区分“方法缺失”和“书写漏项”：如果后续代入或运算清楚表明学生实际正确使用了漏写部分，则只按书写/转录疏漏扣除评分细则允许的少量分；如果该部分在全部可见作答中都没有被使用，则按结构性方法错误处理。
            19. 返回内容本身是 JSON。JSON 字符串中的每一个 LaTeX 反斜杠都必须转义为双反斜杠，例如必须写成 "$\\\\int_0^1 x\\\\,dx=\\\\frac{1}{2}$"，禁止写成包含单反斜杠的无效 JSON。

            评分风格：
            - 默认使用 strict_normal 模式，即严格但不极端。
            - 明确正确的内容应给分，明确错误的内容应扣分。
            - 不确定的内容应降低置信度，而不是强行判断。
            - 对个人练习场景，应偏保守估分，避免虚高。

            题型处理策略：
            - choice：判断学生选项是否与参考答案一致；多选题必须完整匹配，除非题目说明可部分得分。
            - true_false：支持“对/错”“正确/错误”“true/false”“T/F”等等价表达。
            - fill_blank：先解析所有可接受答案，再标准化学生答案并逐一做等价判断；支持 1/2 与 0.5、sqrt(2) 与 √2 等常见等价表达。
            - short_answer：默认要求关键依据，判断关键词、核心含义、理由和必要条件是否满足；只写最终答案且没有所需说明时得 0 分，除非题干或评分细则明确允许答案即可。
            - calculation/major_question：先判定“答案即可 / 需要关键依据 / 需要完整过程”，再按相应标准输出评分细则和逐项得分；关键公式缺项时不得给该方法项分数。
            - proof：通常属于需要完整过程；除非题干实际只要求填写已知结论，否则必须检查证明思路、关键论证、条件使用和逻辑闭环。
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
        @JsonAlias({"studentAnswerImageUrl", "StudentAnswerImageUrl"})
        private String studentAnswerImageUrl;

        @JsonProperty("student_answer_image_urls")
        @JsonAlias({"studentAnswerImageUrls", "StudentAnswerImageUrls"})
        private List<String> studentAnswerImageUrls;

        @JsonProperty("extra_context")
        private Object extraContext;

        /**
         * 可选：覆盖默认模型。为空时使用 ai.api.openai-gpt-5.4.model。
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

        public void setStudentAnswerImageUrl(String studentAnswerImageUrl) {
            this.studentAnswerImageUrl = studentAnswerImageUrl;
            if (!StringUtils.hasText(studentAnswerImageUrl)) {
                return;
            }
            String normalizedUrl = studentAnswerImageUrl.trim();
            if (this.studentAnswerImageUrls == null) {
                this.studentAnswerImageUrls = new ArrayList<>();
            }
            boolean exists = this.studentAnswerImageUrls.stream()
                    .filter(StringUtils::hasText)
                    .map(String::trim)
                    .anyMatch(normalizedUrl::equals);
            if (!exists) {
                this.studentAnswerImageUrls.add(normalizedUrl);
            }
        }

        public void setStudentAnswerImageUrls(List<String> studentAnswerImageUrls) {
            if (studentAnswerImageUrls == null) {
                this.studentAnswerImageUrls = null;
                return;
            }
            List<String> normalizedUrls = new ArrayList<>();
            for (String imageUrl : studentAnswerImageUrls) {
                if (StringUtils.hasText(imageUrl)) {
                    String normalizedUrl = imageUrl.trim();
                    if (!normalizedUrls.contains(normalizedUrl)) {
                        normalizedUrls.add(normalizedUrl);
                    }
                }
            }
            this.studentAnswerImageUrls = normalizedUrls;
            if (!StringUtils.hasText(this.studentAnswerImageUrl) && !normalizedUrls.isEmpty()) {
                this.studentAnswerImageUrl = normalizedUrls.get(0);
            }
        }
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

        @JsonProperty("response_format")
        private ResponseFormat responseFormat;
    }

    @Data
    private static class ResponseFormat {
        private String type;

        private static ResponseFormat jsonObject() {
            ResponseFormat responseFormat = new ResponseFormat();
            responseFormat.setType("json_object");
            return responseFormat;
        }
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
