package com.example.backend.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

@Data
@Component
@ConfigurationProperties(prefix = "algorithm-test-generation")
public class AlgorithmTestGenerationProperties {
    private boolean enabled = true;
    private int maxScalesPerJob = 5;
    private int maxCasesPerScale = 1000;
    private int maxCasesPerJob = 3000;
    private Generator generator = new Generator();
    private Reference reference = new Reference();
    private Limits limits = new Limits();
    private Ai ai = new Ai();
    private Sandbox sandbox = new Sandbox();
    /** Rabbit 投递失败或消费者异常时的有限重试配置。 */
    private int maxRetries = 3;
    private int queuedRecoveryTimeoutSeconds = 60;
    private int recoveryIntervalSeconds = 30;

    @Data
    public static class Generator {
        private int batchSize = 25;
        private int debugMaxCount = 10;
        private int cpuLimitSeconds = 30;
        private int memoryLimitMb = 1024;
        private long stdoutMaxBytesPerBatch = 32L * 1024 * 1024;
        private List<String> forbiddenModules = Arrays.asList("os", "pathlib", "socket", "subprocess", "multiprocessing", "requests", "urllib", "http.client");
    }

    @Data
    public static class Reference {
        private int batchSize = 25;
        private int cpuLimitSeconds = 30;
        private int memoryLimitMb = 2048;
    }

    @Data
    public static class Limits {
        private long maxInputBytesPerCase = 8L * 1024 * 1024;
        private long maxOutputBytesPerCase = 8L * 1024 * 1024;
        private long maxInputBytesPerJob = 1024L * 1024 * 1024;
        private long maxOutputBytesPerJob = 1024L * 1024 * 1024;
    }

    @Data
    public static class Ai {
        private int responseTimeoutSeconds = 180;
        private int maxResponseBytes = 1024 * 1024;
    }

    @Data
    public static class Sandbox {
        private int responseTimeoutSeconds = 300;
    }
}
