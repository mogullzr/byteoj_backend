package com.example.backend.service.ai;

import com.example.backend.models.request.AI.EnglishGradingRequest;
import com.example.backend.utils.examAgent.GradingAgentUtil;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.springframework.test.util.ReflectionTestUtils;

import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

class EnglishGradingDetailTest {
    private final EnglishGradingService service = new EnglishGradingService();
    private final GradingAgentUtil grader = mock(GradingAgentUtil.class);
    private final AiSourceService sources = mock(AiSourceService.class);

    @BeforeEach
    void setUp() {
        ReflectionTestUtils.setField(service, "gradingAgentUtil", grader);
        ReflectionTestUtils.setField(service, "aiSources", sources);
        when(sources.resolve(eq(AiSourceService.Feature.ENGLISH_GRADING), any(), eq(false)))
                .thenReturn(new AiSourceService.Connection("DEEPSEEK", "test", "https://example.test", "test", true, true, false, true));
    }

    @Test
    void compactEssayFeedbackDoesNotRetryForIntentionallyMissingSentenceCorrections() {
        for (String detail : List.of("STANDARD", "BASIC")) {
            var result = new GradingAgentUtil.GradingResult();
            result.setAwardedScore(7D);
            when(grader.gradeAnswerByAiBlocking(any())).thenReturn(result);
            var request = request();
            request.setGradingDetail(detail);
            assertSame(result, service.grade(request, 1L));
            var input = ArgumentCaptor.forClass(GradingAgentUtil.GradingInput.class);
            verify(grader).gradeAnswerByAiBlocking(input.capture());
            assertEquals(detail, input.getValue().getGradingDetail());
            String context = input.getValue().getExtraContext().toString();
            assertTrue(context.contains("0.5"));
            assertTrue(context.contains("卷面"));
            assertFalse(context.contains("sentence_corrections"));
            assertFalse(result.isNeedsManualReview());
            clearInvocations(grader);
        }
    }

    @Test
    void supremeStillRequiresDetailedEssayFeedbackAndRetainsTheOldPolicy() {
        var sparse = new GradingAgentUtil.GradingResult();
        var detailed = new GradingAgentUtil.GradingResult();
        detailed.setSentenceCorrections(List.of(Map.of("sentence_number", 1, "original", "Hello.",
                "revised", "Hello.", "explanation_zh", "无须修改", "issue_found", false)));
        when(grader.gradeAnswerByAiBlocking(any())).thenReturn(sparse, detailed);
        assertSame(detailed, service.grade(request(), 1L));
        var inputs = ArgumentCaptor.forClass(GradingAgentUtil.GradingInput.class);
        verify(grader, times(2)).gradeAnswerByAiBlocking(inputs.capture());
        var input = inputs.getValue();
        assertEquals("SUPREME", input.getGradingDetail());
        String policy = input.getExtraContext().toString();
        assertTrue(policy.contains("sentence_corrections"));
        assertTrue(policy.contains("language_error_analysis"));
    }

    @Test
    void deepUsesTheFullEnglishPolicyAndKeepsItsSentenceFeedbackCheck() {
        var sparse = new GradingAgentUtil.GradingResult();
        var detailed = new GradingAgentUtil.GradingResult();
        detailed.setSentenceCorrections(List.of(Map.of("sentence_number", 1, "original", "Hello.",
                "revised", "Hello.", "explanation_zh", "无须修改", "issue_found", false)));
        when(grader.gradeAnswerByAiBlocking(any())).thenReturn(sparse, detailed);
        var request = request();
        request.setGradingDetail("DEEP");
        assertSame(detailed, service.grade(request, 1L));
        var inputs = ArgumentCaptor.forClass(GradingAgentUtil.GradingInput.class);
        verify(grader, times(2)).gradeAnswerByAiBlocking(inputs.capture());
        assertEquals("DEEP", inputs.getValue().getGradingDetail());
        assertTrue(inputs.getValue().getExtraContext().toString().contains("sentence_corrections"));
    }

    @Test
    void allEssayTiersUseTheSameGrammarAuditAndBandCalibration() {
        for (String detail : List.of("SUPREME", "DEEP", "STANDARD", "BASIC")) {
            var result = correctEssayResult();
            when(grader.gradeAnswerByAiBlocking(any())).thenReturn(result);
            var request = request();
            request.setGradingDetail(detail);
            assertSame(result, service.grade(request, 1L));
            var input = ArgumentCaptor.forClass(GradingAgentUtil.GradingInput.class);
            verify(grader).gradeAnswerByAiBlocking(input.capture());
            var context = (Map<?, ?>) input.getValue().getExtraContext();
            var policy = String.valueOf(context.get("prompt_extension"));
            for (String rule : List.of("作文严格校准", "不先默改", "主谓一致", "不定式", "可数/不可数",
                    "逗号拼接", "介词和固定搭配", "反复出现", "不能一律", "三档及以下", "85%",
                    "五至一档", "9至10", "原题、范文与参考答案不构成唯一允许表达")) {
                assertTrue(policy.contains(rule), detail + ": " + rule);
            }
            if (List.of("STANDARD", "BASIC").contains(detail)) assertFalse(policy.contains("sentence_corrections"));
            else {
                assertTrue(policy.contains("每一句"));
                assertTrue(policy.contains("issue_found"));
                assertTrue(policy.contains("不得只列最前面的几处"));
            }
            verify(grader, times(1)).gradeAnswerByAiBlocking(any());
            clearInvocations(grader);
        }
    }

    @Test
    void calibrationUsesTheCorrectMaximumForEachEssayType() {
        assertTrue(essayPolicy("ENGLISH_I", "SMALL_ESSAY").contains("小作文满分10分"));
        assertTrue(essayPolicy("ENGLISH_II", "SMALL_ESSAY").contains("小作文满分10分"));
        assertTrue(essayPolicy("ENGLISH_I", "LARGE_ESSAY").contains("英语一大作文满分20分"));
        assertTrue(essayPolicy("ENGLISH_I", "LARGE_ESSAY").contains("17至20、13至16、9至12"));
        assertTrue(essayPolicy("ENGLISH_II", "LARGE_ESSAY").contains("英语二大作文满分15分"));
        assertTrue(essayPolicy("ENGLISH_II", "LARGE_ESSAY").contains("13至15、10至12、7至9"));
    }

    @Test
    void translationDoesNotReceiveEssayCalibrationOrGrammarPenalties() {
        for (String examType : List.of("ENGLISH_I", "ENGLISH_II")) {
            double total = examType.equals("ENGLISH_I") ? 10 : 15;
            String detailed = ReflectionTestUtils.invokeMethod(service, "buildPolicy", examType, "TRANSLATION", total);
            String compact = ReflectionTestUtils.invokeMethod(service, "buildCompactPolicy", examType, "TRANSLATION", total);
            assertFalse(detailed.contains("作文严格校准"));
            assertFalse(compact.contains("作文严格校准"));
            assertTrue(detailed.contains("translation_sentence_analysis"));
            assertTrue(detailed.contains("合理主观差异"));
            assertTrue(detailed.contains("presentation_assessment"));
            assertTrue(detailed.contains(examType.equals("ENGLISH_I") ? "每句 2 分" : "不能套用英语一"));
        }
    }

    @Test
    void doesNotAutomaticallySubtractPointsFromAnOtherwiseValidHighScore() {
        var expected = correctEssayResult();
        expected.setAwardedScore(9.5);
        when(grader.gradeAnswerByAiBlocking(any())).thenReturn(expected);
        var result = service.grade(request(), 1L);
        assertSame(expected, result);
        assertEquals(9.5, result.getAwardedScore());
        verify(grader, times(1)).gradeAnswerByAiBlocking(any());
    }

    @Test
    void rejectsFeedbackThatClaimsAnErrorButDoesNotActuallyCorrectIt() {
        var unchanged = correctEssayResult();
        unchanged.setSentenceCorrections(List.of(Map.of("sentence_number", 1, "original", "He go yesterday.",
                "revised", "He go yesterday.", "explanation_zh", "时态错误", "issue_found", true,
                "error_location", "go", "error_type", "tense")));
        var recovered = correctEssayResult();
        when(grader.gradeAnswerByAiBlocking(any())).thenReturn(unchanged, recovered);
        assertSame(recovered, service.grade(request(), 1L));
        verify(grader, times(2)).gradeAnswerByAiBlocking(any());
    }

    @Test
    void rejectsStringBooleansAndDeductionsOnOptionalPolishing() {
        var invalid = correctEssayResult();
        invalid.setSentenceCorrections(List.of(Map.of("sentence_number", 1, "original", "Hello.",
                "revised", "Hello.", "explanation_zh", "无须修改", "issue_found", "false")));
        var chargedOptional = correctEssayResult();
        chargedOptional.setSentenceCorrections(List.of(Map.of("sentence_number", 1, "original", "This is good.",
                "revised", "This is useful.", "explanation_zh", "可选优化", "issue_found", false, "deduction", 1)));
        var recovered = correctEssayResult();
        when(grader.gradeAnswerByAiBlocking(any())).thenReturn(invalid, chargedOptional, recovered);
        assertSame(recovered, service.grade(request(), 1L));
        verify(grader, times(3)).gradeAnswerByAiBlocking(any());
    }

    private String essayPolicy(String examType, String questionType) {
        return ReflectionTestUtils.invokeMethod(service, "buildEssayScoringPolicy", examType, questionType);
    }

    private GradingAgentUtil.GradingResult correctEssayResult() {
        var result = new GradingAgentUtil.GradingResult();
        result.setAwardedScore(8D);
        result.setSentenceCorrections(List.of(Map.of("sentence_number", 1, "original", "Hello.",
                "revised", "Hello.", "explanation_zh", "无须修改", "issue_found", false)));
        return result;
    }

    private EnglishGradingRequest request() {
        var request = new EnglishGradingRequest();
        request.setExamType("ENGLISH_I");
        request.setQuestionType("SMALL_ESSAY");
        request.setQuestionContent("Write a letter.");
        request.setStudentAnswer("Dear teacher, thank you for your help.");
        return request;
    }
}
