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
import com.example.backend.service.competition.CompetitionsService;
import com.example.backend.service.embedding.EmbeddingTaskQueueService;
import com.example.backend.utils.CompetitionsRatedUtil;
import com.example.backend.utils.CodeSimilarityFeatureUtil;
import com.example.backend.utils.SimilarityClusterUtil;
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
 * 处理代码向量化、相似度比对和团伙计算任务
 */
@Component
@RabbitListener(queues = RabbitMQConfig.EMBEDDING_QUEUE, containerFactory = "embeddingListenerContainerFactory")
public class EmbeddingConsumer {
    private static final Logger log = LoggerFactory.getLogger(EmbeddingConsumer.class);

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

    @Autowired
    private SimilarityClusterUtil similarityClusterUtil;

    @Resource
    private EmbeddingTaskQueueService embeddingTaskQueueService;

    @Resource
    private CodeSimilarityResultService codeSimilarityResultService;

    @Resource
    private CompetitionsMapper competitionsMapper;

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

//        log.info("[Embedding消费者] 开始处理任务, competitionId: {}, taskType: {}, batchIndex: {}/{}, 用户数: {}",
//                competitionId, taskType, batchIndex, message.getTotalBatches(),
//                message.getUserUuids() != null ? message.getUserUuids().size() : 0);

        try {
            // 同步处理,不使用线程池,保证 @DS 数据源切换有效
            if ("EMBEDDING".equals(taskType)) {
                processEmbedding(message);
            } else if ("SIMILARITY".equals(taskType)) {
                processSimilarity(message);
//                log.info("[Embedding消费者] 竞赛 {} 所有相似度比对完成,创建团伙计算任务",
//                        message.getCompetitionId());

                // 修改竞赛状态
                Competitions competition = competitionsMapper.selectOne(new QueryWrapper<Competitions>().eq("competition_id", competitionId));
                competition.setEmbedding_status(2);
                competitionsMapper.updateById(competition);

                createClusterTask(message.getCompetitionId());
            } else if ("CLUSTER".equals(taskType)) {
                processCluster(message);
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
                    if (checkAllBatchesCompleted(message.getCompetitionId(), taskType)) {
//                        log.info("[Embedding消费者] 竞赛 {} 所有 {} 任务处理完成",
//                                message.getCompetitionId(), taskType);
                        
                        // 如果是 EMBEDDING 任务完成,触发相似度比对
                        if ("EMBEDDING".equals(taskType)) {
//                            log.info("[Embedding消费者] 竞赛 {} 所有 embedding 处理完成,触发相似度比对",
//                                    message.getCompetitionId());
                            triggerSimilarityTask(message.getCompetitionId());
                        }
                        // 如果是 SIMILARITY 任务完成,创建团伙计算任务
//                        else if ("SIMILARITY".equals(taskType)) {
//
//                        }
                    }
                }
            }
            
            // 处理成功,手动 ACK
            channel.basicAck(deliveryTag, false);
//            log.info("[Embedding消费者] 任务处理成功, competitionId: {}, batchIndex: {}", competitionId, batchIndex);
            
        } catch (Exception e) {
//            log.error("[Embedding消费者] 任务处理失败, competitionId: {}, batchIndex: {}, 错误: {}",
//                    competitionId, batchIndex, e.getMessage(), e);
            try {
                // 处理失败,NACK,不重新入队(进入死信队列)
                channel.basicNack(deliveryTag, false, false);
            } catch (IOException ioException) {
//                log.error("[Embedding消费者] 消息确认失败", ioException);
            }
        }
    }

    /**
     * 处理团伙计算任务
     */
    private void processCluster(EmbeddingTaskMessage message) {
        Long competitionId = message.getCompetitionId();
        
        // log.info("[Cluster] 开始团伙计算, competitionId: {}", competitionId);
        
        // 直接调用团伙计算
        similarityClusterUtil.calculateSimilarityClusters(competitionId);
        
        // log.info("[Cluster] 团伙计算完成, competitionId: {}", competitionId);
    }

    /**
     * 创建团伙计算任务(单个任务,不分批)
     */
    private void createClusterTask(Long competitionId) {
        // 检查是否已创建过
        QueryWrapper<EmbeddingTaskQueue> checkQuery = new QueryWrapper<>();
        checkQuery.eq("competition_id", competitionId)
                .eq("task_type", "CLUSTER");
        Long existCount = embeddingTaskQueueService.count(checkQuery);
        
        if (existCount > 0) {
            // log.info("[Cluster任务创建] 竞赛 {} 已创建过团伙计算任务,跳过", competitionId);
            return;
        }
        
        // 创建任务记录
        EmbeddingTaskQueue task = new EmbeddingTaskQueue();
        task.setCompetitionId(competitionId);
        task.setBatchIndex(1);
        task.setTotalBatches(1);
        task.setUserUuids(null);  // CLUSTER 任务不需要用户列表
        task.setTaskType("CLUSTER");
        task.setStatus("PENDING");
        task.setRetryCount(0);
        task.setCreatedAt(new Date());
        task.setUpdatedAt(new Date());
        
        embeddingTaskQueueService.save(task);
        // log.info("[Cluster任务创建] 竞赛 {} 团伙计算任务已创建,任务ID: {}", competitionId, task.getId());
        
        // 直接发送到 MQ,不等待定时任务
        EmbeddingTaskMessage message = new EmbeddingTaskMessage();
        message.setCompetitionId(competitionId);
        message.setUserUuids(null);
        message.setTaskType("CLUSTER");
        message.setBatchIndex(1);
        message.setTotalBatches(1);
        message.setTaskQueueId(task.getId());  // 关联任务ID
        message.setCreateTime(System.currentTimeMillis());
        
        rabbitTemplate.convertAndSend(
                RabbitMQConfig.EMBEDDING_EXCHANGE,
                RabbitMQConfig.EMBEDDING_ROUTING_KEY,
                message
        );
        
        // log.info("[Cluster任务创建] 竞赛 {} 团伙计算任务已发送到 MQ", competitionId);
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
                // 同一竞赛重复触发时先清理该用户旧向量，避免同一用户同一题目出现多份代码。
                problemCompetitionCodeEmbeddingsService.remove(new QueryWrapper<ProblemCompetitionCodeEmbeddings>()
                        .eq("competition_id", competitionId)
                        .eq("uuid", uuid));
                // 复用 CompetitionsRatedUtil.getOnlySourceCode() 获取该用户所有题目的代码
                Map<String, String> sourceCodeMap = competitionsRatedUtil.getOnlySourceCode(competitionId, uuid);
                
                // 遍历每道题的代码生成 embedding
                for (Map.Entry<String, String> entry : sourceCodeMap.entrySet()) {
                    String problemIndex = entry.getKey();
                    String sourceCode = entry.getValue();

                    if (sourceCode == null || sourceCode.equals("No Accepted Code")) continue;

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
            // log.info("[Embedding] 批量保存成功, competitionId: {}, 数量: {}", competitionId, embeddingsList.size());
        }
    }

    /**
     * 处理相似度比对
     */
    private void processSimilarity(EmbeddingTaskMessage message) {
        Long competitionId = message.getCompetitionId();
        calculateSimilarityForCompetition(competitionId);
    }

    /**
     * 对同一竞赛、同一题目的全部代码进行比较，避免按用户分批造成跨批次漏比。
     */
    private void calculateSimilarityForCompetition(Long competitionId) {
        QueryWrapper<ProblemCompetitionCodeEmbeddings> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        queryWrapper.orderByAsc("problem_index", "uuid");
        
        List<ProblemCompetitionCodeEmbeddings> embeddingsList = 
                problemCompetitionCodeEmbeddingsService.list(queryWrapper);

        if (embeddingsList.isEmpty()) {
            log.warn("[Similarity计算] 没有找到 embedding 数据");
            return;
        }

        // log.info("[Similarity计算] 找到 {} 条 embedding 数据", embeddingsList.size());

        codeSimilarityResultService.remove(new QueryWrapper<CodeSimilarityResult>()
                .eq("competition_id", competitionId));

        Map<String, List<ProblemCompetitionCodeEmbeddings>> groupedByProblem = new HashMap<>();
        for (ProblemCompetitionCodeEmbeddings emb : embeddingsList) {
            groupedByProblem.computeIfAbsent(emb.getProblem_index(), k -> new ArrayList<>()).add(emb);
        }

        List<CodeSimilarityResult> similarityResults = new ArrayList<>();
        int minCodeLength = 50;

        for (Map.Entry<String, List<ProblemCompetitionCodeEmbeddings>> entry : groupedByProblem.entrySet()) {
            String probIdx = entry.getKey();
            List<ProblemCompetitionCodeEmbeddings> problemEmbeddings = entry.getValue();

            // log.info("[Similarity计算] 题目 {} 有 {} 个用户代码", probIdx, problemEmbeddings.size());

            List<ProblemCompetitionCodeEmbeddings> validEmbeddings = new ArrayList<>();
            for (ProblemCompetitionCodeEmbeddings emb : problemEmbeddings) {
                String code = emb.getSource_code();
                String filteredCode = CodeSimilarityFeatureUtil.normalize(code);
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
                // log.info("[Similarity计算] 题目 {} 有效代码不足2个,跳过", probIdx);
                continue;
            }

            // 两两比对
            for (int i = 0; i < validEmbeddings.size(); i++) {
                for (int j = i + 1; j < validEmbeddings.size(); j++) {
                    ProblemCompetitionCodeEmbeddings emb1 = validEmbeddings.get(i);
                    ProblemCompetitionCodeEmbeddings emb2 = validEmbeddings.get(j);

                    CodeSimilarityFeatureUtil.Features features = CodeSimilarityFeatureUtil.compare(
                            emb1.getSource_code(), emb2.getSource_code());
                    double embeddingScore = calculateCosineSimilarity(emb1.getEmbedding(), emb2.getEmbedding());
                    double finalScore = features.finalScore(embeddingScore);
                    int avgLength = (features.getNormalizedCode1().length()
                            + features.getNormalizedCode2().length()) / 2;
                    double threshold = avgLength < 150 ? 0.68D : avgLength < 400 ? 0.60D : 0.55D;

                    boolean hasStructuralEvidence =
                            (features.getAstScore() >= 0.52D && features.getTokenScore() >= 0.42D)
                                    || features.getAstScore() >= 0.72D
                                    || features.getTokenScore() >= 0.68D
                                    || (features.getAstContainmentScore() >= 0.72D
                                        && features.getTokenContainmentScore() >= 0.62D);

                    if (hasStructuralEvidence && finalScore >= threshold) {
                        CodeSimilarityResult result = new CodeSimilarityResult();
                        result.setCompetitionId(competitionId);
                        result.setProblemIndex(probIdx);
                        result.setUserUuid1(Math.min(emb1.getUuid(), emb2.getUuid()));  // 保证 uuid1 < uuid2
                        result.setUserUuid2(Math.max(emb1.getUuid(), emb2.getUuid()));
                        result.setSourceCode1(emb1.getSource_code());  // 直接从 embedding 表获取
                        result.setSourceCode2(emb2.getSource_code());  // 直接从 embedding 表获取
                        result.setAstScore(features.getAstScore());
                        result.setTokenScore(features.getTokenScore());
                        result.setAstContainmentScore(features.getAstContainmentScore());
                        result.setTokenContainmentScore(features.getTokenContainmentScore());
                        result.setEmbeddingScore(embeddingScore);
                        result.setSimilarityScore(finalScore);
                        result.setRiskLevel(finalScore >= 0.75D ? "HIGH"
                                : finalScore >= 0.62D ? "MEDIUM" : "REVIEW");
                        result.setAlgorithmVersion("AST_TOKEN_CONTAINMENT_V3");
                        result.setCreatedAt(new Date());

                        similarityResults.add(result);
                    }
                }
            }
        }

        if (!similarityResults.isEmpty()) {
            codeSimilarityResultService.saveBatch(similarityResults);
        }
    }

    /**
     * 旧版动态阈值逻辑保留为兼容代码，新的综合评分不再使用它。
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
            double[] first = parseVector(convertToString(embedding1));
            double[] second = parseVector(convertToString(embedding2));
            if (first.length == 0 || first.length != second.length) return 0D;
            double dot = 0D, normFirst = 0D, normSecond = 0D;
            for (int i = 0; i < first.length; i++) {
                dot += first[i] * second[i];
                normFirst += first[i] * first[i];
                normSecond += second[i] * second[i];
            }
            if (normFirst == 0D || normSecond == 0D) return 0D;
            return Math.max(0D, Math.min(1D, dot / (Math.sqrt(normFirst) * Math.sqrt(normSecond))));
        } catch (RuntimeException e) {
            log.error("计算余弦相似度失败: {}", e.getMessage());
            return 0.0;
        }
    }

    private double[] parseVector(String vector) {
        if (vector == null || vector.length() < 2) return new double[0];
        String body = vector.substring(1, vector.length() - 1).trim();
        if (body.isEmpty()) return new double[0];
        String[] values = body.split(",");
        double[] result = new double[values.length];
        for (int i = 0; i < values.length; i++) result[i] = Double.parseDouble(values[i].trim());
        return result;
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
     * 检查竞赛的所有指定类型任务批次是否都已完成
     */
    private boolean checkAllBatchesCompleted(Long competitionId, String taskType) {
        QueryWrapper<EmbeddingTaskQueue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId)
                .eq("task_type", taskType)  // 只检查当前任务类型
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

        List<Long> uuids = new ArrayList<>();
        for (CompetitionsUser user : allUsers) uuids.add(user.getUuid());

        EmbeddingTaskMessage message = new EmbeddingTaskMessage();
        message.setCompetitionId(competitionId);
        message.setUserUuids(uuids);
        message.setTaskType("SIMILARITY");
        message.setBatchIndex(1);
        message.setTotalBatches(1);
        message.setCreateTime(System.currentTimeMillis());
        rabbitTemplate.convertAndSend(
                RabbitMQConfig.EMBEDDING_EXCHANGE,
                RabbitMQConfig.EMBEDDING_ROUTING_KEY,
                message
        );
    }
}
