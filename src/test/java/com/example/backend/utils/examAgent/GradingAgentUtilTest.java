package com.example.backend.utils.examAgent;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class GradingAgentUtilTest {

    private final GradingAgentUtil gradingAgentUtil = new GradingAgentUtil(new ObjectMapper());

    @Test
    void repairsSingleLatexBackslashesBeforeParsing() {
        String invalidJson = """
                {
                  "question_type":"major_question",
                  "total_score":10,
                  "awarded_score":10,
                  "confidence":0.97,
                  "needs_manual_review":false,
                  "student_normalized_answer":"$\\int_{1}^{3} f(x)\\,dx=\\frac{7}{3}$",
                  "rubric_used":[],
                  "mistakes":[],
                  "summary":"满分",
                  "advice":"保持"
                }
                """;

        GradingAgentUtil.GradingResult result = gradingAgentUtil.parseResultJson(invalidJson);

        assertEquals(10D, result.getAwardedScore());
        assertEquals("$\\int_{1}^{3} f(x)\\,dx=\\frac{7}{3}$", result.getStudentNormalizedAnswer());
        assertFalse(result.isNeedsManualReview());
    }

    @Test
    void keepsAlreadyEscapedLatexJsonUnchanged() {
        String validJson = """
                {
                  "awarded_score":10,
                  "student_normalized_answer":"$\\\\int_0^1 x\\\\,dx=\\\\frac{1}{2}$"
                }
                """;

        GradingAgentUtil.GradingResult result = gradingAgentUtil.parseResultJson(validJson);

        assertEquals("$\\int_0^1 x\\,dx=\\frac{1}{2}$", result.getStudentNormalizedAnswer());
    }

    @Test
    void repairsLatexCommandThatLooksLikeAValidJsonEscape() {
        String misleadingJson = """
                {
                  "awarded_score":10,
                  "student_normalized_answer":"$\\frac{7}{3}+\\theta+\\neq$"
                }
                """;

        GradingAgentUtil.GradingResult result = gradingAgentUtil.parseResultJson(misleadingJson);

        assertEquals("$\\frac{7}{3}+\\theta+\\neq$", result.getStudentNormalizedAnswer());
    }
}
