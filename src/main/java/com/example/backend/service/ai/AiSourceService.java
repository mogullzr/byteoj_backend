package com.example.backend.service.ai;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.*;

@Service
public class AiSourceService {
    private static final String SILICONFLOW_URL = "https://api.siliconflow.cn/v1/chat/completions";
    private static final String SF_PREFIX = "sf:";
    private static final String KEY_PREFIX = "key:";
    private static final String DEFAULT_PREFIX = "default:";

    public enum Feature {
        CHAT, PROBLEM_CHAT, STUDY_PLAN, EXAM_GRADING, ENGLISH_GRADING, GRADING, EXAM_REVIEW, TEST_GENERATION
    }

    private record BuiltIn(String id, String config, String label, boolean vision, boolean tencent) {}
    private static final List<BuiltIn> BUILT_INS = List.of(
            new BuiltIn("DEEPSEEK", "deepseek-grading", "DeepSeek 判卷线路", true, false),
            new BuiltIn("GPT_5_4", "openai-gpt-5.4", "GPT 线路", true, false),
            new BuiltIn("deepseek-official", "v3-1", "DeepSeek 官方对话", false, false),
            new BuiltIn("deepseek-v3-secondary", "v3-2", "DeepSeek 线路二", false, false),
            new BuiltIn("deepseek-r1", "r1_1", "DeepSeek R1", false, false),
            new BuiltIn("tencent-chat", "v3-tenCloud", "腾讯云对话", false, true),
            new BuiltIn("qwen-vision", "Qwen-VL", "通义千问视觉", true, false)
    );

    public record ModelConfig(String model, boolean vision, boolean jsonMode, Pricing pricing) {
        public ModelConfig(String model, boolean vision, boolean jsonMode) {
            this(model, vision, jsonMode, null);
        }
    }

    /** RMB per million tokens, independently configured for this source/model. */
    public record Pricing(BigDecimal input, BigDecimal cacheHit, BigDecimal output) {
        public BigDecimal cost(int missTokens, int hitTokens, int outputTokens) {
            return input.multiply(BigDecimal.valueOf(missTokens))
                    .add(cacheHit.multiply(BigDecimal.valueOf(hitTokens)))
                    .add(output.multiply(BigDecimal.valueOf(outputTokens)))
                    .divide(BigDecimal.valueOf(1_000_000), 8, RoundingMode.HALF_UP);
        }
    }
    public record Option(String id, String label, boolean vision, boolean configured) {}
    public record KeyStatus(String id, String label, boolean configured, boolean managed) {}
    public record Settings(boolean enabled, List<KeyStatus> keys,
                           Map<Feature, List<Option>> options, Map<Feature, String> defaults,
                           Map<String, ModelConfig> siliconFlowModels) {}
    public record Connection(String id, String model, String url, @com.fasterxml.jackson.annotation.JsonIgnore String key, boolean vision,
                             boolean jsonMode, boolean tencent, boolean deepSeekGrading, Pricing pricing) {
        public Connection(String id, String model, String url, String key, boolean vision,
                          boolean jsonMode, boolean tencent, boolean deepSeekGrading) {
            this(id, model, url, key, vision, jsonMode, tencent, deepSeekGrading, null);
        }
        @Override public String toString() { return "AiConnection[" + id + "]"; }
    }

    private final Environment env;
    private final JdbcTemplate jdbc;
    private final ObjectMapper json;
    private final SecretKeySpec masterKey;
    private final SecureRandom random = new SecureRandom();

    public AiSourceService(Environment env, JdbcTemplate jdbc, ObjectMapper json,
                           @Value("${BYTEOJ_AI_MASTER_KEY:}") String masterKey) {
        this.env = env;
        this.jdbc = jdbc;
        this.json = json;
        if (masterKey.isBlank()) {
            this.masterKey = null;
        } else {
            byte[] key = Base64.getDecoder().decode(masterKey.trim());
            if (key.length != 32) throw new IllegalStateException("BYTEOJ_AI_MASTER_KEY must encode 32 bytes");
            this.masterKey = new SecretKeySpec(key, "AES");
            Arrays.fill(key, (byte) 0);
        }
    }

    public Connection resolve(Feature feature, String selection, boolean vision) {
        Map<String, String> settings = read();
        String id = selection;
        if (id == null || id.isBlank() || "AUTO".equals(id)) {
            id = defaultId(feature, settings);
        }
        if ("DEEPSEEK".equalsIgnoreCase(id)) id = "DEEPSEEK";
        if ("GPT_5_4".equalsIgnoreCase(id)) id = "GPT_5_4";
        Connection connection = resolveId(id, settings);
        if (connection == null || !supports(feature, id)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "该功能不支持所选 AI 线路");
        }
        if (vision && !connection.vision()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "所选模型不支持图片，请选择视觉模型");
        }
        if (connection.key().isBlank()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "所选 AI 线路尚未配置密钥");
        }
        return connection;
    }

    public String defaultOrSelection(Feature feature, String selection) {
        if (selection != null && !selection.isBlank() && !"AUTO".equals(selection)) return selection;
        return defaultId(feature, read());
    }

    public String keyFor(String id) {
        return keyFor(id, read());
    }

    public List<Option> options(Feature feature) {
        return options(feature, read());
    }

    public Settings settings() {
        Map<String, String> settings = read();
        Map<String, ModelConfig> sf = new TreeMap<>();
        Map<Feature, List<Option>> options = new EnumMap<>(Feature.class);
        Map<Feature, String> defaults = new EnumMap<>(Feature.class);
        for (Feature feature : Feature.values()) {
            options.put(feature, options(feature, settings));
            defaults.put(feature, settings.getOrDefault(DEFAULT_PREFIX + feature, ""));
        }
        settings.keySet().stream().filter(id -> id.startsWith(SF_PREFIX))
                .forEach(id -> sf.put(id, modelConfig(settings.get(id))));
        List<KeyStatus> keys = new ArrayList<>();
        for (BuiltIn model : BUILT_INS) keys.add(keyStatus(model.id(), model.label(), settings));
        keys.add(keyStatus("siliconflow", "硅基流动", settings));
        keys.add(keyStatus("embedding", "阿里云向量检索", settings));
        return new Settings(masterKey != null, keys, options, defaults, sf);
    }

    public void rotateKey(String id, String key, long operator) {
        requireEnabled();
        if (builtIn(id) == null && !Set.of("siliconflow", "embedding").contains(id)) invalid("未知服务商");
        if (!key.matches("[!-~]{1,512}")) invalid("请输入有效的 API 密钥");
        put(KEY_PREFIX + id, encrypt(KEY_PREFIX + id, key), operator);
    }

    public void saveModel(String alias, ModelConfig config, long operator) {
        requireEnabled();
        if (!alias.matches("[a-z0-9][a-z0-9-]{0,39}") || config == null || config.model() == null
                || !config.model().matches("[a-zA-Z0-9][a-zA-Z0-9_./:-]{0,159}")) {
            invalid("请填写有效的线路标识和平台模型 ID");
        }
        if (config.pricing() != null) {
            Pricing pricing = config.pricing();
            for (BigDecimal price : Arrays.asList(pricing.input(), pricing.cacheHit(), pricing.output())) {
                if (price == null || price.signum() < 0 || price.compareTo(BigDecimal.valueOf(100000)) > 0) {
                    invalid("请输入完整的非负人民币单价，单位为元/百万 Token");
                }
            }
        }
        try {
            put(SF_PREFIX + alias, json.writeValueAsString(config), operator);
        } catch (JsonProcessingException e) {
            throw unavailable("无法保存模型配置");
        }
    }

    public void saveDefault(Feature feature, String id, long operator) {
        requireEnabled();
        if (id == null || id.isBlank()) {
            put(DEFAULT_PREFIX + feature, "", operator);
            return;
        }
        if ("AUTO".equals(id)) invalid("请选择具体的默认线路");
        resolve(feature, id, false);
        put(DEFAULT_PREFIX + feature, id, operator);
    }

    private List<Option> options(Feature feature, Map<String, String> settings) {
        return allOptions(settings).stream().filter(option -> supports(feature, option.id())).toList();
    }

    private List<Option> allOptions(Map<String, String> settings) {
        List<Option> options = new ArrayList<>();
        for (BuiltIn spec : BUILT_INS) {
            if (!property(spec, "model").isBlank() && !property(spec, "url").isBlank()) {
                options.add(new Option(spec.id(), spec.label() + " · " + property(spec, "model"),
                        spec.vision(), keyStatus(spec.id(), spec.label(), settings).configured()));
            }
        }
        boolean ready = keyStatus("siliconflow", "", settings).configured();
        settings.keySet().stream().filter(id -> id.startsWith(SF_PREFIX)).sorted().forEach(id -> {
            ModelConfig config = modelConfig(settings.get(id));
            options.add(new Option(id, "硅基流动 · " + config.model(), config.vision(), ready));
        });
        return options;
    }

    private boolean supports(Feature feature, String id) {
        if (id.startsWith(SF_PREFIX)) return true;
        BuiltIn spec = builtIn(id);
        if (spec == null) return false;
        return switch (feature) {
            case EXAM_GRADING, ENGLISH_GRADING, GRADING, EXAM_REVIEW, TEST_GENERATION -> !spec.tencent();
            default -> true;
        };
    }

    private String defaultId(Feature feature, Map<String, String> settings) {
        String id = settings.get(DEFAULT_PREFIX + feature);
        return id == null || id.isBlank() ? fallback(feature) : id;
    }

    private String fallback(Feature feature) {
        return switch (feature) {
            case CHAT, PROBLEM_CHAT, STUDY_PLAN -> "tencent-chat";
            case EXAM_GRADING, ENGLISH_GRADING -> "DEEPSEEK";
            case GRADING, TEST_GENERATION -> "GPT_5_4";
            case EXAM_REVIEW -> "deepseek-official";
        };
    }

    private Connection resolveId(String id, Map<String, String> settings) {
        if (id == null) return null;
        if (id.startsWith(SF_PREFIX) && settings.containsKey(id)) {
            ModelConfig config = modelConfig(settings.get(id));
            return new Connection(id, config.model(), SILICONFLOW_URL, keyFor("siliconflow", settings),
                    config.vision(), config.jsonMode(), false, false, config.pricing());
        }
        BuiltIn spec = builtIn(id);
        if (spec == null || property(spec, "model").isBlank() || property(spec, "url").isBlank()) return null;
        return new Connection(id, property(spec, "model"), property(spec, "url"), keyFor(id, settings),
                spec.vision(), true, spec.tencent(), "DEEPSEEK".equals(id));
    }

    /** The legacy APIs accept model names. Stable source IDs disambiguate equal model names on different providers. */
    public String legacyId(String model) {
        if (model == null || model.isBlank() || "AUTO".equals(model) || model.startsWith(SF_PREFIX)
                || builtIn(model) != null) return model;
        for (BuiltIn spec : BUILT_INS) {
            if (model.equals(property(spec, "model"))) return spec.id();
        }
        return switch (model) {
            case "deepseek-ai/DeepSeek-V3", "deepseek-ai/DeepSeek-V4-Flash" -> "deepseek-v3-secondary";
            case "deepseek-ai/DeepSeek-R1-Distill-Llama-70B" -> "deepseek-r1";
            default -> model;
        };
    }

    private static BuiltIn builtIn(String id) {
        return BUILT_INS.stream().filter(spec -> spec.id().equals(id)).findFirst().orElse(null);
    }

    private String property(BuiltIn spec, String property) {
        return env.getProperty("ai.api." + spec.config() + "." + property, "");
    }

    private String fallbackKey(String id) {
        if ("siliconflow".equals(id)) return env.getProperty("SILICONFLOW_API_KEY", "");
        if ("embedding".equals(id)) return env.getProperty("hm.aliyun.embedding.accessKeyId", "");
        BuiltIn spec = builtIn(id);
        return spec == null ? "" : property(spec, "key");
    }

    private KeyStatus keyStatus(String id, String label, Map<String, String> settings) {
        boolean managed = settings.containsKey(KEY_PREFIX + id);
        return new KeyStatus(id, label, managed || !fallbackKey(id).isBlank(), managed);
    }

    private String keyFor(String id, Map<String, String> settings) {
        String settingId = KEY_PREFIX + id;
        String encrypted = settings.get(settingId);
        return encrypted == null ? fallbackKey(id) : decrypt(settingId, encrypted);
    }

    private Map<String, String> read() {
        if (masterKey == null) return Map.of();
        try {
            return jdbc.query("SELECT setting_id, setting_value FROM ai_source_setting", rs -> {
                Map<String, String> settings = new HashMap<>();
                while (rs.next()) settings.put(rs.getString(1), rs.getString(2));
                return settings;
            });
        } catch (DataAccessException e) {
            throw unavailable("无法读取 AI 配置，请检查数据库及 ai_source_setting 迁移");
        }
    }

    private void put(String id, String value, long operator) {
        try {
            jdbc.update("""
                    INSERT INTO ai_source_setting (setting_id, setting_value, updated_by) VALUES (?, ?, ?)
                    ON DUPLICATE KEY UPDATE setting_value = VALUES(setting_value), updated_by = VALUES(updated_by),
                        updated_at = CURRENT_TIMESTAMP
                    """, id, value, operator);
        } catch (DataAccessException e) {
            throw unavailable("无法保存 AI 配置，请检查数据库及 ai_source_setting 迁移");
        }
    }

    private void requireEnabled() {
        if (masterKey == null) throw unavailable("请先在后端设置 BYTEOJ_AI_MASTER_KEY");
    }

    private ModelConfig modelConfig(String value) {
        try {
            return json.readValue(value, ModelConfig.class);
        } catch (JsonProcessingException e) {
            throw unavailable("模型配置无效");
        }
    }

    private String encrypt(String id, String key) {
        byte[] nonce = new byte[12];
        random.nextBytes(nonce);
        try {
            byte[] encrypted = cipher(Cipher.ENCRYPT_MODE, id, nonce).doFinal(key.getBytes(StandardCharsets.UTF_8));
            return Base64.getEncoder().encodeToString(java.nio.ByteBuffer.allocate(nonce.length + encrypted.length)
                    .put(nonce).put(encrypted).array());
        } catch (GeneralSecurityException e) {
            throw unavailable("无法加密 AI 密钥");
        }
    }

    private String decrypt(String id, String value) {
        try {
            byte[] bytes = Base64.getDecoder().decode(value);
            if (bytes.length < 29) throw new GeneralSecurityException();
            return new String(cipher(Cipher.DECRYPT_MODE, id, Arrays.copyOf(bytes, 12))
                    .doFinal(bytes, 12, bytes.length - 12), StandardCharsets.UTF_8);
        } catch (IllegalArgumentException | GeneralSecurityException e) {
            throw unavailable("无法解密 AI 密钥，请核对后端主密钥");
        }
    }

    private Cipher cipher(int mode, String id, byte[] nonce) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(mode, masterKey, new GCMParameterSpec(128, nonce));
        cipher.updateAAD(id.getBytes(StandardCharsets.UTF_8));
        return cipher;
    }

    private static void invalid(String message) {
        throw new BusinessException(ErrorCode.PARAMS_ERROR, message);
    }

    private static BusinessException unavailable(String message) {
        return new BusinessException(ErrorCode.SYSTEM_ERROR, message);
    }
}
