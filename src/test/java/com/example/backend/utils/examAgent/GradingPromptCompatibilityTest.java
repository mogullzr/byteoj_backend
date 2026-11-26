package com.example.backend.utils.examAgent;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.net.httpserver.HttpServer;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.util.ReflectionTestUtils;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.time.Duration;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;

import static org.junit.jupiter.api.Assertions.*;

/** Exercises the real HTTP serialization/response path without contacting any AI provider. */
class GradingPromptCompatibilityTest {
    private final ObjectMapper mapper = new ObjectMapper();
    private final List<JsonNode> requests = new CopyOnWriteArrayList<>();
    private final ConcurrentLinkedQueue<String> replies = new ConcurrentLinkedQueue<>();
    private HttpServer server;
    private GradingAgentUtil util;

    @BeforeEach
    void setUp() throws IOException {
        server = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0);
        server.createContext("/chat/completions", exchange -> {
            try {
                JsonNode request = mapper.readTree(exchange.getRequestBody());
                requests.add(request);
                String reply = replies.poll();
                Map<String, Object> usage = "test/vision-model".equals(request.path("model").asText())
                        ? Map.of("prompt_tokens", 1000, "prompt_tokens_details", Map.of("cached_tokens", 800),
                                "completion_tokens", 500, "total_tokens", 1500)
                        : Map.of("prompt_tokens", 1000, "prompt_cache_hit_tokens", 800,
                                "prompt_cache_miss_tokens", 200, "completion_tokens", 500,
                                "total_tokens", 1500, "completion_tokens_details", Map.of("reasoning_tokens", 300));
                byte[] body = mapper.writeValueAsBytes(Map.of(
                        "model", "deepseek-flash",
                        "choices", List.of(Map.of("message", Map.of("content", reply == null ? gradingJson() : reply))),
                        "usage", usage));
                exchange.getResponseHeaders().set("Content-Type", "application/json");
                exchange.sendResponseHeaders(200, body.length);
                exchange.getResponseBody().write(body);
            } finally {
                exchange.close();
            }
        });
        server.start();
        util = new GradingAgentUtil(mapper);
        String url = "http://127.0.0.1:" + server.getAddress().getPort() + "/chat/completions";
        ReflectionTestUtils.setField(util, "deepSeekModel", "deepseek-flash");
        ReflectionTestUtils.setField(util, "deepSeekApiUrl", url);
        ReflectionTestUtils.setField(util, "deepSeekApiKey", "test-only");
        ReflectionTestUtils.setField(util, "defaultModel", "existing-gpt-model");
        ReflectionTestUtils.setField(util, "apiUrl", url);
        ReflectionTestUtils.setField(util, "apiKey", "test-only");
    }

    @AfterEach
    void tearDown() {
        if (server != null) server.stop(0);
    }

    @Test
    void optimizedRequestKeepsAllQuestionDataScoringPolicyAndWireOptions() throws Exception {
        var input = input();
        JsonNode request = send(input);
        JsonNode messages = request.path("messages");
        String system = messages.get(0).path("content").asText();
        String originalPolicy = (String) ReflectionTestUtils.getField(GradingAgentUtil.class, "SYSTEM_PROMPT");
        assertTrue(system.startsWith(originalPolicy), "Every existing system scoring rule must remain intact");
        String user = messages.get(1).path("content").asText();
        for (String value : List.of(input.getQuestionType(), input.getQuestionContent(),
                input.getReferenceAnswer(), input.getSolutionExplanation(), input.getStudentAnswer(),
                mapper.writeValueAsString(input.getRubric()), mapper.writeValueAsString(input.getExtraContext()))) {
            assertTrue(user.contains(value));
        }
        assertTrue(user.indexOf("extra_context") < user.indexOf("【学生作答 student_answer】"));
        assertFalse(system.contains("sentence_corrections"));
        assertFalse(system.contains("translation_sentence_analysis"));
        JsonNode oldRequest = legacyRequest(input);
        assertEquals(oldRequest.path("model"), request.path("model"));
        assertEquals(oldRequest.path("temperature"), request.path("temperature"));
        assertEquals(oldRequest.path("top_p"), request.path("top_p"));
        assertEquals(oldRequest.path("response_format"), request.path("response_format"));
        assertEquals(oldRequest.path("stream"), request.path("stream"));
        assertEquals("low", request.path("reasoning_effort").asText());
        assertFalse(request.has("max_tokens"), "Must not introduce a token cap that truncates grading");
        int before = messageLength(oldRequest), after = messageLength(request);
        assertTrue(after < before * 0.75, "Ordinary grading must substantially reduce input overhead");
        System.out.printf("Ordinary grading prompt characters: legacy=%d optimized=%d reduction=%.1f%%%n",
                before, after, 100.0 * (before - after) / before);
    }

    @Test
    void fixedPrefixIsReusableAcrossStudentsAndSystemIsReusableAcrossQuestions() {
        var input = input();
        JsonNode first = send(input);
        input.setStudentAnswer("第二位学生：不同公式和步骤");
        JsonNode second = send(input);
        String marker = "【学生作答 student_answer】";
        String a = first.path("messages").get(1).path("content").asText();
        String b = second.path("messages").get(1).path("content").asText();
        assertEquals(a.substring(0, a.indexOf(marker)), b.substring(0, b.indexOf(marker)));
        assertNotEquals(a, b);
        input.setQuestionType("fill_blank");
        input.setQuestionContent("另一道题目");
        JsonNode third = send(input);
        assertEquals(first.path("messages").get(0), third.path("messages").get(0));
    }

    @Test
    void imageQuestionsRetainDirectVisionAndPlaceQuestionImagesBeforeStudentData() {
        var input = input();
        input.setQuestionImageUrls(List.of("https://example.test/question.png"));
        input.setStudentAnswerImageUrls(List.of("https://example.test/answer.png"));
        JsonNode first = send(input);
        String system = first.path("messages").get(0).path("content").asText();
        assertTrue(system.contains("不要执行独立 OCR 流程"));
        assertTrue(system.contains("needs_manual_review=true"));
        JsonNode content = first.path("messages").get(1).path("content");
        assertEquals("题目图片 1", content.get(1).path("text").asText());
        assertEquals("https://example.test/question.png", content.get(2).path("image_url").path("url").asText());
        assertTrue(content.get(3).path("text").asText().contains(input.getStudentAnswer()));
        assertEquals("学生答案图片 1", content.get(4).path("text").asText());
        assertEquals("https://example.test/answer.png", content.get(5).path("image_url").path("url").asText());
        input.setStudentAnswer("不同的学生答案");
        input.setStudentAnswerImageUrls(List.of("https://example.test/answer-2.png"));
        input.setStudentAnswerImageUrl("https://example.test/answer-2.png");
        JsonNode secondContent = send(input).path("messages").get(1).path("content");
        for (int i = 0; i < 3; i++) assertEquals(content.get(i), secondContent.get(i));
    }

    @Test
    void englishAndCustomPoliciesUseExactLegacyMessagesAndKeepDetailedFeedback() {
        for (String type : List.of("english_small_essay", "english_large_essay", "english_translation")) {
            var input = input();
            input.setQuestionType(type);
            input.setExtraContext(Map.of("profile", "english_exam", "prompt_extension", "逐句批改，不可省略错误位置与修改说明"));
            input.setStudentAnswerImageUrls(List.of("https://example.test/essay.png"));
            JsonNode actual = send(input);
            assertEquals(legacyRequest(input), actual);
            String messages = actual.path("messages").toString();
            for (String field : List.of("sentence_corrections", "language_error_analysis",
                    "translation_sentence_analysis", "vocabulary_memory", "difficult_sentence_analysis", "error_location")) {
                assertTrue(messages.contains(field), field);
            }
            assertFalse(actual.has("reasoning_effort"));
        }
        var input = input();
        input.setExtraContext(Map.of("prompt_extension", "自定义评分策略"));
        assertEquals(legacyRequest(input), send(input));
    }

    @Test
    void gptTextAndImageRequestsRemainIdenticalToLegacyRequests() {
        var input = input();
        input.setAiModel("GPT_5_4");
        assertEquals(legacyRequest(input), send(input));
        input.setStudentAnswerImageUrls(List.of("https://example.test/answer.png"));
        assertEquals(legacyRequest(input), send(input));
    }

    @Test
    void parsedScoresRubricsEvidenceAndTokenTotalsMatchLegacyResults() {
        var input = input();
        GradingAgentUtil.GradingResult optimized = grade(input);
        ReflectionTestUtils.setField(util, "optimizedPromptEnabled", false);
        GradingAgentUtil.GradingResult legacy = grade(input);
        JsonNode optimizedJson = mapper.valueToTree(optimized);
        JsonNode legacyJson = mapper.valueToTree(legacy);
        // A request may straddle a peak/off-peak boundary; cost is covered separately below.
        for (String field : List.of("prompt_tokens", "prompt_cache_hit_tokens", "prompt_cache_miss_tokens",
                "completion_tokens", "total_tokens")) {
            assertEquals(legacyJson.path("token_usage").path(field), optimizedJson.path("token_usage").path(field));
        }
        ((com.fasterxml.jackson.databind.node.ObjectNode) optimizedJson).remove("token_usage");
        ((com.fasterxml.jackson.databind.node.ObjectNode) legacyJson).remove("token_usage");
        assertEquals(legacyJson, optimizedJson);
        assertEquals(7D, optimized.getAwardedScore());
        assertEquals(2, optimized.getRubricUsed().size());
        assertEquals("关键条件遗漏", optimized.getMistakes().get(0).getDescription());
        assertEquals("学生原式", optimized.getRubricUsed().get(0).getEvidence());
        var usage = optimized.getTokenUsage();
        assertEquals(1000, usage.getPromptTokens());
        assertEquals(800, usage.getPromptCacheHitTokens());
        assertEquals(200, usage.getPromptCacheMissTokens());
        assertEquals(500, usage.getCompletionTokens(), "Reasoning must not be added to completion twice");
        assertEquals(1500, usage.getTotalTokens());
        assertTrue(List.of("0.00221600", "0.00443200").contains(usage.getCostCny().toPlainString()));
    }

    @Test
    void rollbackRestoresLegacyWireRequestAndExplicitEffortOverridesAuto() {
        var input = input();
        assertEquals("low", send(input).path("reasoning_effort").asText());
        ReflectionTestUtils.setField(util, "deepSeekReasoningEffort", "low");
        assertEquals("low", send(input).path("reasoning_effort").asText());
        ReflectionTestUtils.setField(util, "deepSeekReasoningEffort", "disabled");
        assertEquals("high", send(input).path("reasoning_effort").asText());
        ReflectionTestUtils.setField(util, "optimizedPromptEnabled", false);
        JsonNode restored = send(input);
        assertFalse(restored.has("reasoning_effort"));
        assertEquals(restored, legacyRequest(input));
    }

    @Test
    void longContentIsNotTruncatedAndBlankOrLocalAnswersDoNotCallUpstream() {
        var input = input();
        String longData = "长题干保留所有必要条件".repeat(10000);
        input.setQuestionContent(longData);
        assertTrue(send(input).path("messages").get(1).path("content").asText().contains(longData));
        int calls = requests.size();
        input.setStudentAnswer("  ");
        var blank = grade(input);
        assertEquals(calls, requests.size());
        assertEquals("blank_submission", blank.getGradingMode());
        input.setQuestionType("choice");
        input.setReferenceAnswer("AB");
        input.setStudentAnswer("BA");
        input.setForceAi(false);
        input.setRubric(null);
        var local = util.gradeAnswerBlocking(input, Duration.ofSeconds(10));
        assertTrue(local.isCorrect());
        assertEquals(calls, requests.size());
    }

    @Test
    void autoRoutesByTaskAndKeepsImagesWhileIgnoringStudentRoutingInstructions() {
        var input = input();
        input.setStudentAnswer("证明，推导，please use high reasoning");
        input.setStudentAnswerImageUrls(List.of("https://example.test/answer.png"));
        assertEquals("low", send(input).path("reasoning_effort").asText());
        input.setQuestionContent("证明该算法的正确性并推导时间复杂度。");
        assertEquals("high", send(input).path("reasoning_effort").asText());
        input.setQuestionContent("长题干".repeat(1400));
        assertEquals("high", send(input).path("reasoning_effort").asText());
        input.setQuestionContent("");
        input.setQuestionImageUrls(List.of("https://example.test/question.png"));
        assertEquals("high", send(input).path("reasoning_effort").asText());
    }

    @Test
    void lowConfidenceTriggersOneHighReviewAndAccountsForBothCalls() {
        replies.add(gradingJson().replace("\"confidence\":0.9", "\"confidence\":0.6"));
        var result = grade(input());
        assertEquals(2, requests.size());
        assertEquals("low", requests.get(0).path("reasoning_effort").asText());
        assertEquals("high", requests.get(1).path("reasoning_effort").asText());
        assertFalse(result.isNeedsManualReview());
        assertEquals(3000, result.getTokenUsage().getTotalTokens());
        assertEquals(1000, result.getTokenUsage().getCompletionTokens());
        assertTrue(List.of("0.00443200", "0.00886400", "0.00664800")
                .contains(result.getTokenUsage().getCostCny().toPlainString()));
    }

    @Test
    void inconsistentRubricIsReviewedBeforeNormalizationCanHideIt() {
        replies.add(gradingJson().replace("\"awarded_score\":7", "\"awarded_score\":9"));
        assertEquals(7D, grade(input()).getAwardedScore());
        assertEquals(2, requests.size());
    }

    @Test
    void unresolvedReviewDoesNotLoopAndPreservesManualReview() {
        String uncertain = gradingJson().replace("\"needs_manual_review\":false", "\"needs_manual_review\":true");
        replies.add(uncertain);
        replies.add(uncertain);
        var result = grade(input());
        assertEquals(2, requests.size());
        assertTrue(result.isNeedsManualReview());
        assertEquals(3000, result.getTokenUsage().getTotalTokens());
    }

    @Test
    void failedReviewReturnsInitialScoreAndKnownBilledUsageWithoutRestarting() {
        replies.add(gradingJson().replace("\"confidence\":0.9", "\"confidence\":0.6"));
        replies.add("not json");
        var result = grade(input());
        assertEquals(2, requests.size());
        assertEquals(7D, result.getAwardedScore());
        assertTrue(result.isNeedsManualReview());
        assertEquals(3000, result.getTokenUsage().getTotalTokens());
    }

    @Test
    void unreadableImagesAndExplicitHighDoNotTriggerExtraReviewCalls() {
        var input = input();
        input.setStudentAnswerImageUrls(List.of("https://example.test/blurred.png"));
        replies.add(gradingJson().replace("结果正确，方法扣分。", "图片模糊无法辨认")
                .replace("\"confidence\":0.9", "\"confidence\":0.6"));
        assertTrue(grade(input).isNeedsManualReview());
        assertEquals(1, requests.size());
        ReflectionTestUtils.setField(util, "deepSeekReasoningEffort", "high");
        replies.add(gradingJson().replace("\"needs_manual_review\":false", "\"needs_manual_review\":true"));
        assertTrue(grade(input).isNeedsManualReview());
        assertEquals(2, requests.size());
        assertEquals("high", requests.get(1).path("reasoning_effort").asText());
    }

    @Test
    void missingRubricEntriesRemainManualInsteadOfRestartingWholeReviewCycle() {
        replies.add(gradingJson().replace("\"confidence\":0.9", "\"confidence\":0.6"));
        replies.add(gradingJson().replace("\"rubric_used\":[", "\"rubric_used\":[null,"));
        var result = grade(input());
        assertEquals(2, requests.size());
        assertTrue(result.isNeedsManualReview());
        assertEquals(3000, result.getTokenUsage().getTotalTokens());
        assertEquals(2, result.getRubricUsed().size());
    }

    @Test
    void billedMalformedContentPreservesUsageForCallerRetryAccounting() {
        replies.add("not json");
        var failure = assertThrows(GradingAgentUtil.GradingCallException.class, () -> grade(input()));
        assertEquals(1500, GradingAgentUtil.knownUsageFromFailure(failure).getTotalTokens());
        assertEquals(1, requests.size());
    }

    @Test
    void siliconFlowUsesSelectedEndpointModelKeyAndCapabilityFlags() {
        var sources = org.mockito.Mockito.mock(com.example.backend.service.ai.AiSourceService.class);
        String url = "http://127.0.0.1:" + server.getAddress().getPort() + "/chat/completions";
        var pricing = new com.example.backend.service.ai.AiSourceService.Pricing(
                new java.math.BigDecimal("2"), new java.math.BigDecimal("1"), new java.math.BigDecimal("4"));
        var connection = new com.example.backend.service.ai.AiSourceService.Connection(
                "sf:test", "test/vision-model", url, "test-only-key", true, false, false, false, pricing);
        org.mockito.Mockito.when(sources.resolve(
                com.example.backend.service.ai.AiSourceService.Feature.GRADING, "sf:test", true)).thenReturn(connection);
        ReflectionTestUtils.setField(util, "aiSources", sources);
        var input = input();
        input.setAiModel("sf:test");
        input.setModel("must-not-override-configured-model");
        input.setStudentAnswerImageUrls(List.of("https://example.test/answer.png"));
        var result = grade(input);
        JsonNode body = requests.get(0);
        assertEquals("test/vision-model", body.path("model").asText());
        assertFalse(body.has("reasoning_effort"), "Do not send DeepSeek-only options to SiliconFlow");
        assertFalse(body.has("response_format"), "Do not force JSON mode onto unsupported models");
        assertEquals(1, requests.size());
        assertEquals(7D, result.getAwardedScore());
        assertEquals(1500, result.getTokenUsage().getTotalTokens());
        assertEquals(new java.math.BigDecimal("0.00320000"), result.getTokenUsage().getCostCny());
        assertTrue(body.path("messages").toString().contains("https://example.test/answer.png"));
    }

    @Test
    void unknownProviderPriceStaysUnknownInsteadOfUsingDeepSeekPriceOrZero() {
        var sources = org.mockito.Mockito.mock(com.example.backend.service.ai.AiSourceService.class);
        String url = "http://127.0.0.1:" + server.getAddress().getPort() + "/chat/completions";
        var connection = new com.example.backend.service.ai.AiSourceService.Connection(
                "sf:test", "test/text-model", url, "test-only-key", false, true, false, false);
        org.mockito.Mockito.when(sources.resolve(
                com.example.backend.service.ai.AiSourceService.Feature.GRADING, "sf:test", false)).thenReturn(connection);
        ReflectionTestUtils.setField(util, "aiSources", sources);
        var input = input();
        input.setAiModel("sf:test");
        var result = grade(input);
        assertEquals("json_object", requests.get(0).path("response_format").path("type").asText());
        assertNull(result.getTokenUsage().getCostCny());
        assertNull(result.getTokenUsage().copy().getCostCny());
        assertNull(GradingAgentUtil.TokenUsage.sum(GradingAgentUtil.TokenUsage.empty(), result.getTokenUsage()).getCostCny());
        assertNull(GradingAgentUtil.TokenUsage.sum(result.getTokenUsage(), result.getTokenUsage()).getCostCny());
    }

    @Test
    void explicitSupremeAndOmittedDetailProduceIdenticalProviderRequests() {
        var input = input();
        JsonNode original = send(input);
        input.setGradingDetail("SUPREME");
        assertEquals(original, send(input));
    }

    @Test
    void basicScoreOnlyResponseDoesNotTriggerRubricReviewAndKeepsAllInputEvidence() {
        var input = input();
        input.setGradingDetail("BASIC");
        input.setQuestionImageUrls(List.of("https://example.test/question.png"));
        input.setStudentAnswerImageUrls(List.of("https://example.test/student.png"));
        replies.add("""
                {"awarded_score":7,"confidence":0.95,"needs_manual_review":false,"summary":"关键条件遗漏，扣3分。"}
                """);
        var result = grade(input);
        assertEquals(1, requests.size(), "Missing rubric is intentional in BASIC, not grounds for an extra billed request");
        assertEquals(7D, result.getAwardedScore());
        assertEquals(10D, result.getTotalScore());
        assertEquals("BASIC", result.getGradingDetail());
        assertFalse(result.isNeedsManualReview());
        assertEquals(1500, result.getTokenUsage().getTotalTokens());
        var request = requests.get(0);
        assertFalse(request.has("max_tokens"), "Do not cut off valid JSON or reasoning by imposing a tiny token cap");
        assertEquals("low", request.path("reasoning_effort").asText());
        String messages = request.path("messages").toString();
        for (String evidence : List.of(input.getQuestionContent(), input.getReferenceAnswer(), input.getSolutionExplanation(),
                input.getStudentAnswer(), "question.png", "student.png", "process_required")) {
            assertTrue(messages.contains(evidence), evidence);
        }
        String system = request.path("messages").get(0).path("content").asText();
        assertTrue(system.startsWith((String) ReflectionTestUtils.getField(GradingAgentUtil.class, "SYSTEM_PROMPT")));
        assertTrue(system.contains("【极简版：仅判分】"));
        assertFalse(system.contains("\"rubric_used\""));
    }

    @Test
    void standardUsesCompactSchemaAndNormalizesServerOwnedFieldsWithoutAnotherCall() {
        var input = input();
        input.setGradingDetail("STANDARD");
        replies.add("""
                {"awarded_score":7,"confidence":0.9,"needs_manual_review":false,"summary":"遗漏关键条件。","advice":"核对条件。",
                 "rubric_used":[{"name":"总评分","max_score":10,"awarded_score":7,"reason":"关键条件缺失","evidence":"原式"}]}
                """);
        var result = grade(input);
        assertEquals(1, requests.size());
        assertEquals("STANDARD", result.getGradingDetail());
        assertEquals(7D, result.getAwardedScore());
        assertEquals(10D, result.getTotalScore());
        assertEquals(0.7D, result.getScoreRate());
        assertEquals(1, result.getRubricUsed().size());
        assertTrue(result.getAcceptedAnswers().isEmpty());
        String system = requests.get(0).path("messages").get(0).path("content").asText();
        assertTrue(system.contains("【标准版：精简讲评】"));
        assertTrue(system.contains("最多4项"));
        assertFalse(system.contains("\"sentence_corrections\""));
    }

    @Test
    void basicStillReviewsGenuinelyUncertainScoresAndCountsBothCalls() {
        var input = input();
        input.setGradingDetail("BASIC");
        replies.add("{\"awarded_score\":7,\"confidence\":0.5,\"needs_manual_review\":false,\"summary\":\"待确认\"}");
        replies.add("{\"awarded_score\":7,\"confidence\":0.95,\"needs_manual_review\":false,\"summary\":\"遗漏条件\"}");
        var result = grade(input);
        assertEquals(2, requests.size());
        assertEquals("high", requests.get(1).path("reasoning_effort").asText());
        assertFalse(result.isNeedsManualReview());
        assertEquals(3000, result.getTokenUsage().getTotalTokens());
    }

    @Test
    void missingCompactScoreFailsInsteadOfSilentlyAwardingZero() {
        var input = input();
        input.setGradingDetail("BASIC");
        replies.add("{\"confidence\":0.95,\"needs_manual_review\":false,\"summary\":\"未提供分数\"}");
        var failure = assertThrows(GradingAgentUtil.GradingCallException.class, () -> grade(input));
        assertEquals(1500, GradingAgentUtil.knownUsageFromFailure(failure).getTotalTokens());
    }

    @Test
    void everyProviderCanUseCompactPromptWithoutChangingItsCapabilities() {
        var input = input();
        input.setAiModel("GPT_5_4");
        input.setGradingDetail("BASIC");
        replies.add("{\"awarded_score\":7,\"confidence\":0.95,\"needs_manual_review\":false,\"summary\":\"遗漏条件\"}");
        assertEquals(7D, grade(input).getAwardedScore());
        assertTrue(requests.get(0).path("messages").get(0).path("content").asText().contains("【极简版：仅判分】"));
        assertFalse(requests.get(0).has("reasoning_effort"));
    }

    @Test
    void invalidDetailFailsBeforeAnyProviderCallAndBlankSubmissionRetainsTier() {
        var input = input();
        input.setGradingDetail("UNKNOWN");
        assertThrows(com.example.backend.exception.BusinessException.class, () -> grade(input));
        assertTrue(requests.isEmpty());
        input.setGradingDetail("BASIC");
        input.setStudentAnswer("");
        var blank = grade(input);
        assertEquals("BASIC", blank.getGradingDetail());
        assertEquals(0D, blank.getAwardedScore());
        assertTrue(requests.isEmpty());
    }

    @Test
    void deepAddsOnlyInlineModificationsToTheOriginalFullResult() throws Exception {
        var input = input();
        var supreme = grade(input);
        JsonNode supremeRequest = requests.get(0);
        input.setGradingDetail("DEEP");
        replies.add(inlineDeepGradingJson().toString());
        var result = grade(input);
        assertEquals(2, requests.size(), "One Supreme request and one Deep request, no hidden expansion call");
        assertEquals("DEEP", result.getGradingDetail());
        assertEquals(7D, result.getAwardedScore());
        assertFalse(result.isNeedsManualReview());
        assertNull(result.getCorrections(), "New Deep responses must not create a separate correction list");
        assertEquals("在列式前写明适用条件，再代入已知量。", result.getRubricUsed().get(0).getModification());
        assertEquals("无需修改。", result.getRubricUsed().get(1).getModification());

        JsonNode actual = requests.get(1);
        assertEquals(supremeRequest.path("messages").get(1), actual.path("messages").get(1));
        String system = actual.path("messages").get(0).path("content").asText();
        assertTrue(system.startsWith(supremeRequest.path("messages").get(0).path("content").asText()));
        assertTrue(system.contains("\"modification\":string"));
        assertFalse(system.contains("\"replacement\":"));
        assertFalse(system.contains("\"verification\":"));
        assertFalse(system.contains("\"corrections\":"));

        var stored = (com.fasterxml.jackson.databind.node.ObjectNode) mapper.readTree(mapper.writeValueAsString(result));
        assertFalse(stored.has("corrections"));
        stored.put("grading_detail", "SUPREME");
        for (JsonNode item : stored.path("rubric_used")) {
            ((com.fasterxml.jackson.databind.node.ObjectNode) item).remove("modification");
        }
        assertEquals(mapper.readTree(mapper.writeValueAsString(supreme)), stored,
                "All original fields and detailed content must stay identical; only modification is added");
    }

    @Test
    void deepFlagsMissingConcreteRepairsWithoutBuyingAnotherExplanation() {
        var input = input();
        input.setGradingDetail("DEEP");
        var result = grade(input);
        assertTrue(result.isNeedsManualReview());
        assertEquals(7D, result.getAwardedScore());
        assertTrue(result.getSummary().contains("具体改法"));
        assertEquals(1, requests.size());
        assertEquals(1500, result.getTokenUsage().getTotalTokens());
    }

    @Test
    void deepRequiresActualReplacementAndCoverageOfDeductedRubricItems() throws Exception {
        for (String missing : List.of("replacement", "verification", "related_rubric_item_id")) {
            var input = input();
            input.setGradingDetail("DEEP");
            var reply = legacyDeepGradingJson();
            ((com.fasterxml.jackson.databind.node.ObjectNode) reply.path("corrections").get(0)).put(missing, "");
            replies.add(reply.toString());
            var result = grade(input);
            assertTrue(result.isNeedsManualReview(), missing);
            assertEquals(7D, result.getAwardedScore());
        }
        assertEquals(3, requests.size());
    }

    @Test
    void deepSurfacesNullRepairEntriesWithoutLeavingAnEmptyRenderingRow() throws Exception {
        var input = input();
        input.setGradingDetail("DEEP");
        var reply = legacyDeepGradingJson();
        reply.putArray("corrections").addNull();
        replies.add(reply.toString());
        var result = grade(input);
        assertTrue(result.isNeedsManualReview());
        assertTrue(result.getCorrections().isEmpty());
        assertEquals(7D, result.getAwardedScore());
        assertEquals(1, requests.size());
    }

    @Test
    void deepDoesNotAcceptAnInventedStudentQuotation() throws Exception {
        var input = input();
        input.setGradingDetail("DEEP");
        var reply = legacyDeepGradingJson();
        var correction = (com.fasterxml.jackson.databind.node.ObjectNode) reply.path("corrections").get(0);
        correction.put("missing_step", false);
        correction.put("original", "这句话并没有出现在学生原答中。");
        replies.add(reply.toString());
        assertTrue(grade(input).isNeedsManualReview());
        assertEquals(1, requests.size());
    }

    @Test
    void deepAllowsARealStudentQuotationWithWhitespaceDifferences() throws Exception {
        var input = input();
        input.setGradingDetail("DEEP");
        input.setStudentAnswer("错误\n代入");
        var reply = legacyDeepGradingJson();
        var correction = (com.fasterxml.jackson.databind.node.ObjectNode) reply.path("corrections").get(0);
        correction.put("missing_step", false);
        correction.put("original", "错误 代入");
        replies.add(reply.toString());
        assertFalse(grade(input).isNeedsManualReview());
    }

    @Test
    void deepDoesNotInventCorrectionsForAnAlreadyCorrectAnswer() throws Exception {
        var input = input();
        input.setGradingDetail("DEEP");
        var reply = legacyDeepGradingJson();
        reply.put("awarded_score", 10);
        ((com.fasterxml.jackson.databind.node.ObjectNode) reply.path("rubric_used").get(0)).put("awarded_score", 7);
        reply.putArray("mistakes");
        reply.putArray("corrections");
        replies.add(reply.toString());
        var result = grade(input);
        assertEquals(10D, result.getAwardedScore());
        assertFalse(result.isNeedsManualReview());
        assertTrue(result.getCorrections().isEmpty());
    }

    @Test
    void deepEnglishRetainsItsSpecializedPolicyImagesAndCompleteOutputSchema() throws Exception {
        var input = input();
        input.setGradingDetail("DEEP");
        input.setQuestionType("english_small_essay");
        input.setExtraContext(Map.of("profile", "english_exam", "prompt_extension", "英语逐句批改原评分规则"));
        input.setStudentAnswerImageUrls(List.of("https://example.test/essay.png"));
        replies.add(inlineDeepGradingJson().toString());
        assertFalse(grade(input).isNeedsManualReview());
        String messages = requests.get(0).path("messages").toString();
        for (String field : List.of("英语逐句批改原评分规则", "sentence_corrections",
                "language_error_analysis", "modification", "essay.png")) {
            assertTrue(messages.contains(field));
        }
        assertFalse(requests.get(0).has("reasoning_effort"));
    }

    @Test
    void deepRequiresAModificationOnEveryDeductedScoringItem() throws Exception {
        for (String value : List.of("", "无需修改。")) {
            var input = input();
            input.setGradingDetail("DEEP");
            var reply = inlineDeepGradingJson();
            ((com.fasterxml.jackson.databind.node.ObjectNode) reply.path("rubric_used").get(0)).put("modification", value);
            replies.add(reply.toString());
            var result = grade(input);
            assertTrue(result.isNeedsManualReview());
            assertEquals(7D, result.getAwardedScore());
        }
        assertEquals(2, requests.size(), "Missing modifications are reported without buying a new long response");
    }

    @Test
    void inlineDeepFillsCorrectItemsWithoutInventingErrors() throws Exception {
        var input = input();
        input.setGradingDetail("DEEP");
        var reply = inlineDeepGradingJson();
        ((com.fasterxml.jackson.databind.node.ObjectNode) reply.path("rubric_used").get(1)).remove("modification");
        replies.add(reply.toString());
        var result = grade(input);
        assertFalse(result.isNeedsManualReview());
        assertEquals("无需修改。", result.getRubricUsed().get(1).getModification());
    }

    @Test
    void englishDeepPreservesEachExistingScoreBreakdownRowAndAddsOnlyModification() throws Exception {
        var input = input();
        input.setQuestionType("english_small_essay");
        input.setExtraContext(Map.of("profile", "english_exam"));
        input.setGradingDetail("DEEP");
        var reply = inlineDeepGradingJson();
        reply.putArray("score_breakdown").addObject()
                .put("name", "内容得分").put("awarded_score", 7).put("max_score", 10)
                .put("reason", "原有完整内容评分依据").put("modification", "将原句谓语改为过去式。");
        replies.add(reply.toString());
        var result = grade(input);
        assertFalse(result.isNeedsManualReview());
        assertEquals("原有完整内容评分依据", result.getScoreBreakdown().get(0).get("reason"));
        assertEquals("将原句谓语改为过去式。", result.getScoreBreakdown().get(0).get("modification"));
        assertEquals(1, requests.size());
    }

    @Test
    void deepDoesNotSilentlyTreatMissingOriginalFeedbackAsComplete() throws Exception {
        for (String missing : List.of("summary", "advice", "accepted_answers", "student_normalized_answer", "mistakes")) {
            var input = input();
            input.setGradingDetail("DEEP");
            var reply = inlineDeepGradingJson();
            reply.remove(missing);
            replies.add(reply.toString());
            var result = grade(input);
            assertTrue(result.isNeedsManualReview(), missing);
            assertTrue(result.getSummary().contains("未完整返回原版讲评"));
            assertEquals(7D, result.getAwardedScore());
        }
        assertEquals(5, requests.size(), "Do not conceal missing content or buy additional expansion requests");
    }

    private com.fasterxml.jackson.databind.node.ObjectNode inlineDeepGradingJson() throws Exception {
        var reply = (com.fasterxml.jackson.databind.node.ObjectNode) mapper.readTree(gradingJson());
        ((com.fasterxml.jackson.databind.node.ObjectNode) reply.path("rubric_used").get(0))
                .put("modification", "在列式前写明适用条件，再代入已知量。");
        ((com.fasterxml.jackson.databind.node.ObjectNode) reply.path("rubric_used").get(1))
                .put("modification", "无需修改。");
        return reply;
    }

    private com.fasterxml.jackson.databind.node.ObjectNode legacyDeepGradingJson() throws Exception {
        var reply = (com.fasterxml.jackson.databind.node.ObjectNode) mapper.readTree(gradingJson());
        reply.putArray("corrections").addObject()
                .put("location", "第1小问列式之前")
                .put("original", "")
                .put("missing_step", true)
                .put("issue", "缺少方法的适用条件，因此扣除对应方法分。")
                .put("replacement", "先补充方法成立的边界条件，再代入计算。")
                .put("explanation", "补齐条件后，后续运算才有合法依据。")
                .put("verification", "逐一核对题目给定范围是否满足该条件。")
                .put("related_rubric_item_id", "method");
        return reply;
    }

    private GradingAgentUtil.GradingInput input() {
        var input = new GradingAgentUtil.GradingInput();
        input.setQuestionType("major_question");
        input.setTotalScore(10D);
        input.setQuestionContent("题干：计算并写明方法，保留每个必要条件。");
        input.setReferenceAnswer("参考结论 $x=2$");
        input.setSolutionExplanation("解析：先检查条件，再列公式。");
        input.setRubric(Map.of("方法", 7, "结果", 3));
        input.setStudentAnswer("学生原始作答：$x=2$，计算步骤如下。");
        input.setExtraContext(Map.of("process_required", true, "total_score_from_backend", 10));
        input.setAiModel("DEEPSEEK");
        input.setForceAi(true);
        input.setTemperature(0F);
        input.setTopP(0.9F);
        return input;
    }

    private GradingAgentUtil.GradingResult grade(GradingAgentUtil.GradingInput input) {
        return util.gradeAnswerByAiBlocking(input, Duration.ofSeconds(10));
    }

    private JsonNode send(GradingAgentUtil.GradingInput input) {
        grade(input);
        return requests.get(requests.size() - 1);
    }

    private JsonNode legacyRequest(GradingAgentUtil.GradingInput input) {
        boolean enabled = (boolean) ReflectionTestUtils.getField(util, "optimizedPromptEnabled");
        ReflectionTestUtils.setField(util, "optimizedPromptEnabled", false);
        try {
            return send(input);
        } finally {
            ReflectionTestUtils.setField(util, "optimizedPromptEnabled", enabled);
        }
    }

    private int messageLength(JsonNode request) {
        int length = 0;
        for (JsonNode message : request.path("messages")) length += message.path("content").asText().length();
        return length;
    }

    private String gradingJson() {
        return """
                {"question_type":"major_question","total_score":10,"awarded_score":7,
                 "confidence":0.9,"needs_manual_review":false,"grading_mode":"rubric_based_process_grading",
                 "accepted_answers":["$x=2$"],"student_normalized_answer":"学生原式及完整步骤",
                 "rubric_used":[
                   {"id":"method","name":"方法","max_score":7,"awarded_score":4,"reason":"缺少条件","evidence":"学生原式","confidence":0.9},
                   {"id":"result","name":"结果","max_score":3,"awarded_score":3,"reason":"结果正确","evidence":"$x=2$","confidence":0.9}],
                 "mistakes":[{"type":"condition","description":"关键条件遗漏","severity":"medium","related_rubric_item_id":"method"}],
                 "summary":"结果正确，方法扣分。","advice":"核对适用条件。"}
                """;
    }
}
