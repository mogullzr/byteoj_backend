package com.example.backend.service.ai;

import com.example.backend.exception.BusinessException;
import com.example.backend.service.ai.AiSourceService.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.mock.env.MockEnvironment;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

class AiSourceServiceTest {
    private final Map<String, String> database = new HashMap<>();
    private final ObjectMapper mapper = new ObjectMapper();
    private final JdbcTemplate jdbc = mock(JdbcTemplate.class);
    private final MockEnvironment env = new MockEnvironment();
    private final String master = Base64.getEncoder().encodeToString(new byte[32]);
    private AiSourceService sources;

    @BeforeEach
    @SuppressWarnings("unchecked")
    void setUp() {
        for (String config : List.of("deepseek-grading", "openai-gpt-5.4", "v3-1", "v3-2",
                "r1_1", "v3-tenCloud", "Qwen-VL")) {
            env.withProperty("ai.api." + config + ".model", config + "-test-model")
                    .withProperty("ai.api." + config + ".url", "https://example.test/v1/chat/completions")
                    .withProperty("ai.api." + config + ".key", "test-only-deployed-key-" + config);
        }
        doAnswer(call -> {
            List<Map.Entry<String, String>> rows = new ArrayList<>(database.entrySet());
            AtomicInteger index = new AtomicInteger(-1);
            ResultSet rs = mock(ResultSet.class);
            when(rs.next()).thenAnswer(ignored -> index.incrementAndGet() < rows.size());
            when(rs.getString(1)).thenAnswer(ignored -> rows.get(index.get()).getKey());
            when(rs.getString(2)).thenAnswer(ignored -> rows.get(index.get()).getValue());
            return ((ResultSetExtractor<?>) call.getArgument(1)).extractData(rs);
        }).when(jdbc).query(anyString(), any(ResultSetExtractor.class));
        doAnswer(call -> {
            database.put(call.getArgument(1), call.getArgument(2));
            return 1;
        }).when(jdbc).update(anyString(), any(), any(), any());
        sources = new AiSourceService(env, jdbc, mapper, master);
    }

    @Test
    void disabledManagementPreservesLegacyDefaultsWithoutRequiringSchema() {
        AiSourceService disabled = new AiSourceService(env, jdbc, mapper, "");
        assertFalse(disabled.settings().enabled());
        assertEquals("GPT_5_4", disabled.resolve(Feature.GRADING, null, false).id());
        assertEquals("DEEPSEEK", disabled.resolve(Feature.EXAM_GRADING, "AUTO", false).id());
        assertEquals("DEEPSEEK", disabled.resolve(Feature.GRADING, "deepseek", false).id());
        assertThrows(BusinessException.class, () -> disabled.rotateKey("siliconflow", "test-key", 1));
        verifyNoInteractions(jdbc);
    }

    @Test
    void keysAreEncryptedBoundToSourceAndNeverExposedInSettingsOrConnections() throws Exception {
        String key = "test-only-key-that-must-not-appear-in-settings";
        sources.rotateKey("siliconflow", key, 42);
        String ciphertext = database.get("key:siliconflow");
        assertFalse(ciphertext.contains(key));
        assertEquals(key, sources.keyFor("siliconflow"));
        assertFalse(mapper.writeValueAsString(sources.settings()).contains(key));
        sources.saveModel("text", new ModelConfig("test/text", false, true), 42);
        Connection connection = sources.resolve(Feature.CHAT, "sf:text", false);
        assertFalse(mapper.writeValueAsString(connection).contains(key));
        assertFalse(connection.toString().contains(key));
        database.put("key:DEEPSEEK", ciphertext);
        assertThrows(BusinessException.class, () -> sources.keyFor("DEEPSEEK"));
    }

    @Test
    void rotationUsesFreshNonceAndAffectsNextCallWithoutRestart() {
        sources.rotateKey("DEEPSEEK", "test-first-key", 42);
        String first = database.get("key:DEEPSEEK");
        sources.rotateKey("DEEPSEEK", "test-first-key", 42);
        assertNotEquals(first, database.get("key:DEEPSEEK"));
        sources.rotateKey("DEEPSEEK", "test-second-key", 42);
        assertEquals("test-second-key", sources.resolve(Feature.EXAM_GRADING, "DEEPSEEK", false).key());
    }

    @Test
    void tamperedCiphertextOrWrongMasterFailsClosed() {
        sources.rotateKey("siliconflow", "test-only-key", 42);
        byte[] otherKey = new byte[32];
        Arrays.fill(otherKey, (byte) 1);
        AiSourceService wrongKey = new AiSourceService(env, jdbc, mapper,
                Base64.getEncoder().encodeToString(otherKey));
        assertThrows(BusinessException.class, () -> wrongKey.keyFor("siliconflow"));
        byte[] bytes = Base64.getDecoder().decode(database.get("key:siliconflow"));
        bytes[bytes.length - 1] ^= 1;
        database.put("key:siliconflow", Base64.getEncoder().encodeToString(bytes));
        assertThrows(BusinessException.class, () -> sources.keyFor("siliconflow"));
    }

    @Test
    void sourceDefaultsAreIndependentAndEqualModelNamesDoNotMixKeysOrUrls() {
        sources.rotateKey("siliconflow", "test-sf-key", 42);
        sources.saveModel("text", new ModelConfig("deepseek-grading-test-model", false, false), 42);
        sources.saveDefault(Feature.EXAM_REVIEW, "sf:text", 42);
        Connection sf = sources.resolve(Feature.EXAM_REVIEW, "AUTO", false);
        Connection official = sources.resolve(Feature.EXAM_GRADING, "AUTO", false);
        assertEquals(sf.model(), official.model());
        assertEquals("https://api.siliconflow.cn/v1/chat/completions", sf.url());
        assertNotEquals(sf.key(), official.key());
        assertFalse(sf.deepSeekGrading());
        assertFalse(sf.jsonMode());
        sources.saveDefault(Feature.EXAM_REVIEW, "", 42);
        assertEquals("deepseek-official", sources.resolve(Feature.EXAM_REVIEW, "AUTO", false).id());
    }

    @Test
    void visionAndUnknownSelectionsAreRejectedWithoutFallbackToAnotherProvider() {
        sources.rotateKey("siliconflow", "test-only-key", 42);
        sources.saveModel("text", new ModelConfig("test/text", false, false), 42);
        assertThrows(BusinessException.class, () -> sources.resolve(Feature.EXAM_GRADING, "sf:text", true));
        assertThrows(BusinessException.class, () -> sources.resolve(Feature.CHAT, "sf:missing", false));
        assertThrows(BusinessException.class, () -> sources.resolve(Feature.EXAM_GRADING, "tencent-chat", false));
        sources.saveModel("image", new ModelConfig("test/image", true, true), 42);
        assertTrue(sources.resolve(Feature.ENGLISH_GRADING, "sf:image", true).vision());
    }

    @Test
    void unconfiguredSourceCannotBecomeDefaultAndNoLiveRequestIsMade() {
        sources.saveModel("text", new ModelConfig("test/text", false, false), 42);
        assertFalse(sources.options(Feature.CHAT).stream().filter(o -> o.id().equals("sf:text"))
                .findFirst().orElseThrow().configured());
        assertThrows(BusinessException.class, () -> sources.saveDefault(Feature.CHAT, "sf:text", 42));
        assertThrows(BusinessException.class, () -> sources.saveDefault(Feature.CHAT, "AUTO", 42));
    }

    @Test
    void malformedOrMissingConfigurationFailsWithoutLeakingKeyMaterial() {
        assertThrows(BusinessException.class, () -> sources.saveModel("../escape", new ModelConfig("test/text", false, false), 42));
        assertThrows(BusinessException.class, () -> sources.saveModel("text", new ModelConfig("test\nheader", false, false), 42));
        assertThrows(BusinessException.class, () -> sources.rotateKey("siliconflow", "test\nheader", 42));
        doThrow(new DataAccessResourceFailureException("database offline"))
                .when(jdbc).query(anyString(), any(ResultSetExtractor.class));
        assertThrows(BusinessException.class, () -> sources.resolve(Feature.CHAT, "AUTO", false));
    }

    @Test
    void siliconFlowPricingIsOptionalAndIndependentOfDeepSeekPrices() {
        Pricing pricing = new Pricing(new BigDecimal("2"), new BigDecimal("1"), new BigDecimal("4"));
        sources.saveModel("text", new ModelConfig("test/text", false, true, pricing), 42);
        sources.rotateKey("siliconflow", "test-only-key", 42);
        assertEquals(new BigDecimal("0.00270000"), sources.resolve(Feature.EXAM_GRADING, "sf:text", false)
                .pricing().cost(200, 300, 500));
        assertThrows(BusinessException.class, () -> sources.saveModel("text",
                new ModelConfig("test/text", false, true, new Pricing(null, BigDecimal.ZERO, BigDecimal.ONE)), 42));
    }
}
