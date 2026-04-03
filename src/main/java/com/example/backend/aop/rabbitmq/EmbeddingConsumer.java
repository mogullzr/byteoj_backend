package com.example.backend.aop.rabbitmq;

import com.example.backend.config.RabbitMQConfig;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.example.backend.models.domain.competiton.CompetitionsUser;
import com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings;
import com.example.backend.models.domain.embedding.CodeSimilarityResult;
import com.example.backend.models.domain.embedding.EmbeddingTaskMessage;
import com.example.backend.models.domain.embedding.EmbeddingTaskQueue;
import com.example.backend.service.algorithm.ProblemCompetitionCodeEmbeddingsService;
import com.example.backend.service.embedding.EmbeddingTaskQueueService;
import com.example.backend.utils.CompetitionsRatedUtil;
import com.example.backend.utils.EmbeddingConvertUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.rabbitmq.client.Channel;
import com.example.backend.service.competition.CodeSimilarityResultService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.Date;

/**
 * Embedding 任务消费者
 * 处理代码向量化和相似度比对任务
 * 使用固定线程池控制并发
 */
@Component
@RabbitListener(queues = RabbitMQConfig.EMBEDDING_QUEUE, containerFactory = "embeddingListenerContainerFactory")
public class EmbeddingConsumer {
    private static final Logger log = LoggerFactory.getLogger(EmbeddingConsumer.class);

    @Autowired
    private CompetitionsMapper competitionsMapper;
    @Autowired
    private CompetitionsUserMapper competitionsUserMapper;
    @Autowired
    private SubmissionsAlgorithmMapper submissionsAlgorithmMapper;
    @Autowired
    private CompetitionsProblemsAlgorithmMapper competitionsProblemsAlgorithmMapper;
    @Autowired
    private ProblemCompetitionCodeEmbeddingsService problemCompetitionCodeEmbeddingsService;
    @Autowired
    private EmbeddingConvertUtil embeddingConvertUtil;

    @Autowired
    private CompetitionsRatedUtil competitionsRatedUtil;

    @Resource
    private EmbeddingTaskQueueService embeddingTaskQueueService;

    @Resource
    private CodeSimilarityResultService codeSimilarityResultService;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Value("${hm.aliyun.embedding.model}")
    private String model;

    @Value("${spring.datasource.dynamic.datasource.pg.url}")
    private String pgDbUrl;

    @Value("${spring.datasource.dynamic.datasource.pg.username}")
    private String pgDbUsername;

    @Value("${spring.datasource.dynamic.datasource.pg.password}")
    private String pgDbPassword;

    @RabbitHandler
    public void handleEmbeddingTask(EmbeddingTaskMessage message, Channel channel, Message amqpMessage) {
        long deliveryTag = amqpMessage.getMessageProperties().getDeliveryTag();
        Long competitionId = message.getCompetitionId();
        String taskType = message.getTaskType();
        int batchIndex = message.getBatchIndex();

        log.info("[Embedding消费者] 开始处理任务, competitionId: {}, taskType: {}, batchIndex: {}/{}, 用户数: {}",
                competitionId, taskType, batchIndex, message.getTotalBatches(), message.getUserUuids().size());

        try {
            // 同步处理,不使用线程池,保证 @DS 数据源切换有效
            if ("EMBEDDING".equals(taskType)) {
                processEmbedding(message);
            } else if ("SIMILARITY".equals(taskType)) {
                processSimilarity(message);
            }
            
            // 处理成功,更新数据库状态
            if (message.getTaskQueueId() != null) {
               EmbeddingTaskQueue task = embeddingTaskQueueService.getById(message.getTaskQueueId());
                if (task != null) {
                    task.setStatus("COMPLETED");
                    task.setCompletedAt(new Date());
                    task.setUpdatedAt(new Date());
                    embeddingTaskQueueService.updateById(task);
                                    
                    // 检查是否所有批次都完成了
                    if (checkAllBatchesCompleted(message.getCompetitionId())) {
                        log.info("[Embedding消费者] 竞赛 {} 所有 embedding 处理完成,触发相似度比对", 
                                message.getCompetitionId());
                        // 触发相似度比对任务
                        triggerSimilarityTask(message.getCompetitionId());
                    }
                }
            }
            
            // 处理成功,手动 ACK
            channel.basicAck(deliveryTag, false);
            log.info("[Embedding消费者] 任务处理成功, competitionId: {}, batchIndex: {}", competitionId, batchIndex);
            
        } catch (Exception e) {
            log.error("[Embedding消费者] 任务处理失败, competitionId: {}, batchIndex: {}, 错误: {}",
                    competitionId, batchIndex, e.getMessage(), e);
            try {
                // 处理失败,NACK,不重新入队(进入死信队列)
                channel.basicNack(deliveryTag, false, false);
            } catch (IOException ioException) {
                log.error("[Embedding消费者] 消息确认失败", ioException);
            }
        }
    }

    /**
     * 处理代码向量化
     */
    private void processEmbedding(EmbeddingTaskMessage message) {
        Long competitionId = message.getCompetitionId();
        List<Long> userUuids = message.getUserUuids();

        // 1. 验证竞赛是否存在
        Competitions competition = competitionsMapper.selectById(competitionId);
        if (competition == null) {
            throw new RuntimeException("竞赛不存在: " + competitionId);
        }

        // 2. 获取该竞赛的所有题目
        QueryWrapper<CompetitionsProblemsAlgorithm> problemQW = new QueryWrapper<>();
        problemQW.eq("competition_id", competitionId).orderByAsc("idx");
        List<CompetitionsProblemsAlgorithm> problemList = competitionsProblemsAlgorithmMapper.selectList(problemQW);

        if (problemList.isEmpty()) {
            log.warn("[Embedding] 竞赛没有题目, competitionId: {}", competitionId);
            return;
        }

        // 3. 批量生成 embedding
        List<ProblemCompetitionCodeEmbeddings> embeddingsList = new ArrayList<>();

        for (Long uuid : userUuids) {
            try {
                // 复用 CompetitionsRatedUtil.getOnlySourceCode() 获取该用户所有题目的代码
                Map<String, String> sourceCodeMap = competitionsRatedUtil.getOnlySourceCode(competitionId, uuid);
                
                // 遍历每道题的代码生成 embedding
                for (Map.Entry<String, String> entry : sourceCodeMap.entrySet()) {
                    String problemIndex = entry.getKey();
                    String sourceCode = entry.getValue();

                    if (sourceCode.equals("No Accepted Code")) continue;

                    // 生成 embedding
                    ProblemCompetitionCodeEmbeddings embedding = new ProblemCompetitionCodeEmbeddings();
                    embedding.setCompetition_id(competitionId);
                    embedding.setProblem_index(problemIndex);
                    embedding.setUuid(uuid);  // 记录用户ID
                    embedding.setSource_code(sourceCode);  // 保存源代码
                    embedding.setEmbedding(embeddingConvertUtil.getEmebddingInfo(model, sourceCode));
                    
                    embeddingsList.add(embedding);
                }
            } catch (Exception e) {
                log.error("[Embedding] 用户 {} 生成失败: {}", uuid, e.getMessage());
                // 继续处理下一个用户,不中断整个批次
            }
        }

        // 4. 批量保存(幂等操作:使用 saveBatch,重复插入会失败但不影响)
        if (!embeddingsList.isEmpty()) {
            problemCompetitionCodeEmbeddingsService.saveBatch(embeddingsList);
            log.info("[Embedding] 批量保存成功, competitionId: {}, 数量: {}", competitionId, embeddingsList.size());
        }
    }

    /**
     * 处理相似度比对
     */
    private void processSimilarity(EmbeddingTaskMessage message) {
        Long competitionId = message.getCompetitionId();
        List<Long> userUuids = message.getUserUuids();

        log.info("[Similarity] 开始相似度比对, competitionId: {}, 批次: {}/{}, 用户数: {}", 
                competitionId, message.getBatchIndex(), message.getTotalBatches(), userUuids.size());

        // 调用相似度计算逻辑,只计算当前批次的用户
        calculateSimilarityForBatch(competitionId, userUuids);
        
        log.info("[Similarity] 批次相似度比对完成, competitionId: {}, batchIndex: {}", 
                competitionId, message.getBatchIndex());
    }

    /**
     * 计算当前批次用户的代码相似度
     * @param competitionId 竞赛ID
     * @param userUuids 当前批次的用户UUID列表
     */
    private void calculateSimilarityForBatch(Long competitionId, List<Long> userUuids) {
        log.info("[Similarity计算] 开始, competitionId: {}, 用户数: {}", competitionId, userUuids.size());

        // 1. 查询这些用户的 embedding 数据
        QueryWrapper<ProblemCompetitionCodeEmbeddings> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        queryWrapper.in("uuid", userUuids);  // 只查询当前批次的用户
        queryWrapper.orderByAsc("problem_index", "uuid");
        
        List<ProblemCompetitionCodeEmbeddings> embeddingsList = 
                problemCompetitionCodeEmbeddingsService.list(queryWrapper);

        if (embeddingsList.isEmpty()) {
            log.warn("[Similarity计算] 没有找到 embedding 数据");
            return;
        }

        log.info("[Similarity计算] 找到 {} 条 embedding 数据", embeddingsList.size());

        // 2. 按题目分组
        Map<String, List<ProblemCompetitionCodeEmbeddings>> groupedByProblem = new HashMap<>();
        for (ProblemCompetitionCodeEmbeddings emb : embeddingsList) {
            groupedByProblem.computeIfAbsent(emb.getProblem_index(), k -> new ArrayList<>()).add(emb);
        }

        // 3. 对每个题目进行两两比对
        List<CodeSimilarityResult> similarityResults = new ArrayList<>();
        double baseThreshold = 0.85;  // 基础阈值
        int minCodeLength = 50;  // 最小代码长度(过滤太短的代码)

        for (Map.Entry<String, List<ProblemCompetitionCodeEmbeddings>> entry : groupedByProblem.entrySet()) {
            String probIdx = entry.getKey();
            List<ProblemCompetitionCodeEmbeddings> problemEmbeddings = entry.getValue();

            log.info("[Similarity计算] 题目 {} 有 {} 个用户代码", probIdx, problemEmbeddings.size());

            // 过滤掉代码太短的用户
            List<ProblemCompetitionCodeEmbeddings> validEmbeddings = new ArrayList<>();
            for (ProblemCompetitionCodeEmbeddings emb : problemEmbeddings) {
                String code = emb.getSource_code();
                String filteredCode = filterCommonCode(code);  // 过滤通用代码
                if (filteredCode != null && filteredCode.length() >= minCodeLength) {
                    validEmbeddings.add(emb);
                } else {
                    log.debug("[Similarity计算] 用户 {} 代码过短(原始:{}字符,过滤后:{}字符),跳过", 
                            emb.getUuid(), 
                            code != null ? code.length() : 0,
                            filteredCode != null ? filteredCode.length() : 0);
                }
            }

            if (validEmbeddings.size() < 2) {
                log.info("[Similarity计算] 题目 {} 有效代码不足2个,跳过", probIdx);
                continue;
            }

            // 两两比对
            for (int i = 0; i < validEmbeddings.size(); i++) {
                for (int j = i + 1; j < validEmbeddings.size(); j++) {
                    ProblemCompetitionCodeEmbeddings emb1 = validEmbeddings.get(i);
                    ProblemCompetitionCodeEmbeddings emb2 = validEmbeddings.get(j);

                    // 计算余弦相似度
                    double similarity = calculateCosineSimilarity(emb1.getEmbedding(), emb2.getEmbedding());

                    // 动态阈值:使用过滤后的代码长度计算
                    String filteredCode1 = filterCommonCode(emb1.getSource_code());
                    String filteredCode2 = filterCommonCode(emb2.getSource_code());
                    double threshold = calculateDynamicThreshold(filteredCode1, filteredCode2, baseThreshold);

                    // 只保存超过阈值的
                    if (similarity >= threshold) {
                        CodeSimilarityResult result = new CodeSimilarityResult();
                        result.setCompetitionId(competitionId);
                        result.setProblemIndex(probIdx);
                        result.setUserUuid1(Math.min(emb1.getUuid(), emb2.getUuid()));  // 保证 uuid1 < uuid2
                        result.setUserUuid2(Math.max(emb1.getUuid(), emb2.getUuid()));
                        result.setSourceCode1(emb1.getSource_code());  // 直接从 embedding 表获取
                        result.setSourceCode2(emb2.getSource_code());  // 直接从 embedding 表获取
                        result.setSimilarityScore(similarity);
                        result.setCreatedAt(new Date());

                        similarityResults.add(result);
                    }
                }
            }
        }

        // 4. 批量保存结果
        if (!similarityResults.isEmpty()) {
            log.info("[Similarity计算] 找到 {} 对高相似度代码", similarityResults.size());
             codeSimilarityResultService.saveBatch(similarityResults);
        } else {
            log.info("[Similarity计算] 没有找到高相似度代码");
        }
    }

    /**
     * 计算两两代码相似度(使用 pgvector)
     * @param competitionId 竞赛ID
     * @param problemIndex 题目索引(为null时计算所有题目)
     */
    public void calculateSimilarity(Long competitionId, String problemIndex) {
        log.info("[Similarity计算] 开始, competitionId: {}, problemIndex: {}", competitionId, problemIndex);

        // 1. 查询 embedding 数据
        QueryWrapper<ProblemCompetitionCodeEmbeddings> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        if (problemIndex != null) {
            queryWrapper.eq("problem_index", problemIndex);
        }
        queryWrapper.orderByAsc("problem_index", "uuid");
        
        List<ProblemCompetitionCodeEmbeddings> embeddingsList = 
                problemCompetitionCodeEmbeddingsService.list(queryWrapper);

        if (embeddingsList.isEmpty()) {
            log.warn("[Similarity计算] 没有找到 embedding 数据");
            return;
        }

        log.info("[Similarity计算] 找到 {} 条 embedding 数据", embeddingsList.size());

        // 2. 按题目分组
        Map<String, List<ProblemCompetitionCodeEmbeddings>> groupedByProblem = new HashMap<>();
        for (ProblemCompetitionCodeEmbeddings emb : embeddingsList) {
            groupedByProblem.computeIfAbsent(emb.getProblem_index(), k -> new ArrayList<>()).add(emb);
        }

        // 3. 对每个题目进行两两比对
        List<CodeSimilarityResult> similarityResults = new ArrayList<>();
        double threshold = 0.85;  // 相似度阈值

        for (Map.Entry<String, List<ProblemCompetitionCodeEmbeddings>> entry : groupedByProblem.entrySet()) {
            String probIdx = entry.getKey();
            List<ProblemCompetitionCodeEmbeddings> problemEmbeddings = entry.getValue();

            log.info("[Similarity计算] 题目 {} 有 {} 个用户代码", probIdx, problemEmbeddings.size());

            // 两两比对
            for (int i = 0; i < problemEmbeddings.size(); i++) {
                for (int j = i + 1; j < problemEmbeddings.size(); j++) {
                    ProblemCompetitionCodeEmbeddings emb1 = problemEmbeddings.get(i);
                    ProblemCompetitionCodeEmbeddings emb2 = problemEmbeddings.get(j);

                    // 计算余弦相似度
                    double similarity = calculateCosineSimilarity(emb1.getEmbedding(), emb2.getEmbedding());

                    // 只保存超过阈值的
                    if (similarity >= threshold) {
                        CodeSimilarityResult result = new CodeSimilarityResult();
                        result.setCompetitionId(competitionId);
                        result.setProblemIndex(probIdx);
                        result.setUserUuid1(Math.min(emb1.getUuid(), emb2.getUuid()));  // 保证 uuid1 < uuid2
                        result.setUserUuid2(Math.max(emb1.getUuid(), emb2.getUuid()));
                        result.setSimilarityScore(similarity);
                        result.setCreatedAt(new Date());

                        similarityResults.add(result);
                    }
                }
            }
        }

        // 4. 批量保存结果
        if (!similarityResults.isEmpty()) {
            // TODO: 需要创建 CodeSimilarityResultService
            log.info("[Similarity计算] 找到 {} 对高相似度代码(>{})", similarityResults.size(), threshold);
        } else {
            log.info("[Similarity计算] 没有找到高相似度代码");
        }
    }

    /**
     * 计算动态阈值:代码越短,阈值越高
     * @param code1 代码1
     * @param code2 代码2
     * @param baseThreshold 基础阈值
     * @return 动态阈值
     */
    private double calculateDynamicThreshold(String code1, String code2, double baseThreshold) {
        if (code1 == null || code2 == null) {
            return 0.95;  // 代码为空,使用最高阈值
        }

        // 取两段代码的平均长度
        int avgLength = (code1.length() + code2.length()) / 2;

        // 根据代码长度动态调整阈值
        if (avgLength < 100) {
            // 代码很短(100字符以内),阈值提高到 0.95
            return 0.95;
        } else if (avgLength < 200) {
            // 代码较短(100-200字符),阈值 0.92
            return 0.92;
        } else if (avgLength < 500) {
            // 代码中等(200-500字符),阈值 0.88
            return 0.88;
        } else {
            // 代码较长(500字符以上),使用基础阈值
            return baseThreshold;
        }
    }

    /**
     * 过滤通用代码部分,只保留核心逻辑
     * @param sourceCode 原始代码
     * @return 过滤后的代码
     */
    private String filterCommonCode(String sourceCode) {
        if (sourceCode == null || sourceCode.trim().isEmpty()) {
            return sourceCode;
        }

        String filtered = sourceCode;

        // 1. 移除 import 语句
        filtered = filtered.replaceAll("(?m)^\\s*import\\s+.+;\\s*$", "");

        // 2. 移除 package 声明
        filtered = filtered.replaceAll("(?m)^\\s*package\\s+.+;\\s*$", "");

        // 3. 移除类定义行 (public class, class 等)
        filtered = filtered.replaceAll("(?m)^\\s*(public\\s+|private\\s+|protected\\s+)?(abstract\\s+)?class\\s+\\w+.*\\{\\s*$", "");

        // 4. 移除 main 方法签名
        filtered = filtered.replaceAll("(?m)^\\s*public\\s+static\\s+void\\s+main\\s*\\(.*\\)\\s*\\{\\s*$", "");

        // 5. 移除常见的工具方法签名(如 Scanner 初始化)
        filtered = filtered.replaceAll("(?m)^\\s*Scanner\\s+\\w+\\s*=\\s*new\\s+Scanner.*;\\s*$", "");
        filtered = filtered.replaceAll("(?m)^\\s*BufferedReader\\s+\\w+\\s*=.*;\\s*$", "");

        // 6. 移除单独的大括号行
        filtered = filtered.replaceAll("(?m)^\\s*[{}]\\s*$", "");

        // 7. 移除空行
        filtered = filtered.replaceAll("(?m)^\\s*$", "");

        // 8. 移除前后空白
        filtered = filtered.trim();

        return filtered;
    }

    /**
     * 计算余弦相似度(使用 pgvector 的 <=> 运算符)
     * @param embedding1 向量1(List<Double> 或 float[])
     * @param embedding2 向量2(List<Double> 或 float[])
     * @return 相似度分数(0-1),越接近1越相似
     */
    private double calculateCosineSimilarity(Object embedding1, Object embedding2) {
        try {
            // 1. 将 embedding 转换为 pgvector 需要的字符串格式: "[0.1, 0.2, ...]"
            String vector1Str = convertToString(embedding1);
            String vector2Str = convertToString(embedding2);

            // 2. 使用 pgvector 的 <=> 运算符计算余弦距离
            // <=> 返回的是距离(0-2),距离越小越相似
            // 相似度 = 1 - (距离 / 2),转换为 0-1 范围
            String sql = "SELECT (1 - (?::vector <=> ?::vector) / 2.0) AS similarity";

            try (Connection conn = DriverManager.getConnection(pgDbUrl, pgDbUsername, pgDbPassword);
                 PreparedStatement pstmt = conn.prepareStatement(sql)) {

                pstmt.setString(1, vector1Str);
                pstmt.setString(2, vector2Str);

                try (ResultSet rs = pstmt.executeQuery()) {
                    if (rs.next()) {
                        return rs.getDouble("similarity");
                    }
                }
            }
        } catch (SQLException e) {
            log.error("计算余弦相似度失败: {}", e.getMessage(), e);
            return 0.0;
        }
        
        return 0.0;
    }

    /**
     * 将 embedding 对象转换为 pgvector 字符串格式
     * @param embedding String/List/float[]/double[]
     * @return "[0.1,0.2,0.3,...]"
     */
    private String convertToString(Object embedding) {
        if (embedding == null) {
            return "[]";
        }

        // 如果已经是 String 类型,直接返回
        if (embedding instanceof String) {
            String str = (String) embedding;
            // 检查是否已经是向量格式
            if (str.startsWith("[") && str.endsWith("]")) {
                return str;
            }
            // 否则尝试包装
            return "[" + str + "]";
        }

        StringBuilder sb = new StringBuilder("[");
        
        if (embedding instanceof List) {
            List<?> list = (List<?>) embedding;
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i));
                if (i < list.size() - 1) {
                    sb.append(",");
                }
            }
        } else if (embedding instanceof float[]) {
            float[] array = (float[]) embedding;
            for (int i = 0; i < array.length; i++) {
                sb.append(array[i]);
                if (i < array.length - 1) {
                    sb.append(",");
                }
            }
        } else if (embedding instanceof double[]) {
            double[] array = (double[]) embedding;
            for (int i = 0; i < array.length; i++) {
                sb.append(array[i]);
                if (i < array.length - 1) {
                    sb.append(",");
                }
            }
        }
        
        sb.append("]");
        return sb.toString();
    }

    /**
     * 检查竞赛的所有 embedding 批次是否都已完成
     */
    private boolean checkAllBatchesCompleted(Long competitionId) {
        QueryWrapper<EmbeddingTaskQueue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId)
                .ne("status", "COMPLETED");  // 查找未完成的
        
        long pendingCount = embeddingTaskQueueService.count(queryWrapper);
        return pendingCount == 0;  // 如果没有未完成的,说明全部完成了
    }

    /**
     * 触发相似度比对任务
     * 发送 SIMILARITY 类型的消息到 MQ
     */
    private void triggerSimilarityTask(Long competitionId) {
        // 查询该竞赛的所有用户
        QueryWrapper<CompetitionsUser> cuQuery = new QueryWrapper<>();
        cuQuery.eq("competition_id", competitionId)
                .eq("is_participant", 0)
                .orderByDesc("ac_num");
        
        List<CompetitionsUser> allUsers = competitionsUserMapper.selectList(cuQuery);
        
        if (allUsers.isEmpty()) {
            log.warn("[Similarity触发] 竞赛 {} 没有参赛用户", competitionId);
            return;
        }

        // 按 50 人一批发送相似度比对任务
        int totalUsers = allUsers.size();
        int totalBatches = (int) Math.ceil((double) totalUsers / 50);
        
        for (int i = 0; i < totalUsers; i += 50) {
            int endIndex = Math.min(i + 50, totalUsers);
            List<CompetitionsUser> batchUsers = allUsers.subList(i, endIndex);
            
            List<Long> uuids = new ArrayList<>();
            for (CompetitionsUser cu : batchUsers) {
                uuids.add(cu.getUuid());
            }

            EmbeddingTaskMessage message = new EmbeddingTaskMessage();
            message.setCompetitionId(competitionId);
            message.setUserUuids(uuids);
            message.setTaskType("SIMILARITY");  // 相似度比对任务
            message.setBatchIndex(i / 50 + 1);
            message.setTotalBatches(totalBatches);
            message.setCreateTime(System.currentTimeMillis());

            rabbitTemplate.convertAndSend(
                    RabbitMQConfig.EMBEDDING_EXCHANGE,
                    RabbitMQConfig.EMBEDDING_ROUTING_KEY,
                    message
            );
            
            log.info("[Similarity触发] 已发送批次 {}/{}, 用户数: {}", 
                    message.getBatchIndex(), totalBatches, uuids.size());
        }
        
        log.info("[Similarity触发] 竞赛 {} 相似度比对任务已全部发送,共 {} 批", competitionId, totalBatches);
    }
}
