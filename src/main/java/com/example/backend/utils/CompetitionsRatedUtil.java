package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.dynamic.datasource.toolkit.DynamicDataSourceContextHolder;
import com.example.backend.common.ErrorCode;
import com.example.backend.config.RabbitMQConfig;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.example.backend.models.domain.competiton.CompetitionsUser;
import com.example.backend.models.domain.competiton.ProblemCompetitionCodeEmbeddings;
import com.example.backend.models.domain.embedding.EmbeddingTaskMessage;
import com.example.backend.models.domain.embedding.EmbeddingTaskQueue;
import com.example.backend.models.domain.embedding.CodeSimilarityResult;
import com.example.backend.models.domain.embedding.SimilarityCluster;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.domain.user.UserRating;
import com.example.backend.service.algorithm.ProblemCompetitionCodeEmbeddingsService;
import com.example.backend.service.embedding.EmbeddingTaskQueueService;
import com.example.backend.service.embedding.SimilarityClusterService;
import com.example.backend.service.competition.CodeSimilarityResultService;
import com.example.backend.service.user.UserRatingService;
import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Component
public class CompetitionsRatedUtil {
    private static final Logger log = LoggerFactory.getLogger(CompetitionsRatedUtil.class);

    // 每批处理的用户数
    private static final int BATCH_SIZE = 50;

    @Autowired
    private CompetitionsMapper competitionsMapper;
    @Autowired
    private CompetitionsUserMapper competitionsUserMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserRatingService userRatingService;
    @Autowired
    private CompetitionsProblemsAlgorithmMapper competitionsProblemsAlgorithmMapper;

    @Autowired
    private SubmissionsAlgorithmMapper submissionsAlgorithmMapper;

    @Autowired
    private ProblemCompetitionCodeEmbeddingsService problemCompetitionCodeEmbeddingsService;

    @Autowired
    private EmbeddingConvertUtil embeddingConvertUtil;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Resource
    private EmbeddingTaskQueueService embeddingTaskQueueService;

    @Resource
    private CodeSimilarityResultService codeSimilarityResultService;

    @Resource
    private SimilarityClusterService similarityClusterService;

    @Value("${hm.aliyun.embedding.model}")
    private String model;

    @Scheduled(cron = "0 0/30 12-23 * * ?")
    @Transactional(rollbackFor = Exception.class)
    /**
     * 定时实现竞赛分数更新
     */
    public void executeRated() {
        Date date = new Date();
        long time = 60 * 40 * 1000;
        Date date1 = new Date(date.getTime() - time);

        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();
        queryWrapper.lt("end_time", date);
        queryWrapper.gt("end_time", date1);

        List<Competitions> competitionsList = competitionsMapper.selectList(queryWrapper);

        for (Competitions competition : competitionsList) {
            Long competition_id = competition.getCompetition_id();

            // 1. 获取排名列表 (已排序)
            QueryWrapper<CompetitionsUser> cuQuery = new QueryWrapper<>();
            cuQuery.eq("competition_id", competition_id)
                    .eq("is_participant", 0);

            if (competition.getPattern() == 0) {
                cuQuery.orderByDesc("ac_num");
            } else {
                cuQuery.orderByDesc("score");
            }
            cuQuery.orderByAsc("time_penalty");

            List<CompetitionsUser> competitionsUsers = competitionsUserMapper.selectList(cuQuery);
            int user_size = competitionsUsers.size();

            if (user_size == 0) continue;

            // 2. 获取所有参赛用户信息
            QueryWrapper<User> uQuery = new QueryWrapper<>();
            for (CompetitionsUser cu : competitionsUsers) {
                uQuery.or().eq("uuid", cu.getUuid());
            }
            List<User> userListRaw = userMapper.selectList(uQuery);

            // 【关键优化】转为 Map，解决顺序问题和性能问题 O(1) 查找
            Map<Long, User> userMap = new HashMap<>();
            for (User u : userListRaw) {
                userMap.put(u.getUuid(), u);
            }

            // 查询总题目数
            Long total_num = competitionsProblemsAlgorithmMapper.selectCount(
                    new QueryWrapper<CompetitionsProblemsAlgorithm>().eq("competition_id", competition_id)
            );

            List<Double> dList = new ArrayList<>(user_size);
            List<UserRating> userRatingList = new ArrayList<>(user_size);
            // 用于记录最终需要更新的用户 (避免重复查找)
            List<User> usersToUpdate = new ArrayList<>(user_size);

            // 3. 第一轮：计算 d_i
            for (int i = 0; i < user_size; i++) {
                CompetitionsUser cu = competitionsUsers.get(i);
                Long uuid = cu.getUuid();
                User user = userMap.get(uuid);

                if (user == null) {
                    throw new BusinessException(ErrorCode.SYSTEM_ERROR, "用户数据不一致：" + uuid);
                }

                int r_i = user.getRating();
                int rank_i = i + 1; // 名次从 1 开始

                // 计算 seed (期望排名)
                double sExpected = 0.0;
                for (int j = 0; j < user_size; j++) {
                    if (i == j) continue;
                    CompetitionsUser oppCu = competitionsUsers.get(j);
                    User opponent = userMap.get(oppCu.getUuid());
                    if (opponent == null) continue;

                    double r_j = opponent.getRating();
                    // P(j beats i) = 1 / (1 + 10^((r_i - r_j)/400))
                    double p = 1.0 / (1.0 + Math.pow(10, (r_i - r_j) / 400.0));
                    sExpected += p;
                }
                double seed = 1.0 + sExpected;

                // 计算 m_i (几何平均)
                double m_i = Math.sqrt(seed * rank_i);

                // 二分查找目标 Rating
                // 【关键修复】传入 uuid 而不是 index，防止列表顺序不一致
                double newRatingVal = searchRating(m_i, userMap, uuid);

                double d_i = getK(r_i) + (newRatingVal - r_i);
                dList.add(d_i);

                // 准备日志
                UserRating ur = new UserRating();
                ur.setCompetition_name(competition.getCompetition_name());
                ur.setRating_before(r_i);
                ur.setCompetition_id(competition_id);
                ur.setUuid(uuid);
                ur.setStart_time(competition.getStart_time());
                ur.setUser_rank(rank_i);
                ur.setAc_num(Math.toIntExact(cu.getAc_num()));
                ur.setJoins(user_size);
                ur.setTotal_num(Math.toIntExact(total_num));
                // rating_after 稍后计算
                userRatingList.add(ur);

                // 暂存用户对象以便后续更新 (保持顺序与 dList, userRatingList 一致)
                usersToUpdate.add(user);
            }

            // 4. 计算 inc (防膨胀)
            double sum_d = 0.0;
            for (double d : dList) sum_d += d;

            // 公式：inc = min(max(-(1 + sum_d)/n, -10), 0)
            double inc = -(1.0 + sum_d) / user_size;
            inc = Math.max(inc, -10.0);
            inc = Math.min(inc, 0.0);

            // 5. 第二轮：应用变化并收集更新
            for (int j = 0; j < user_size; j++) {
                User user = usersToUpdate.get(j);
                double d_i = dList.get(j);
                double finalChange = d_i + inc;

                int newRating = (int) Math.round(user.getRating() + finalChange);
                user.setRating(newRating); // 内存中更新

                // 更新日志对象
                UserRating ur = userRatingList.get(j);
                ur.setRating_after(newRating);
            }

            // 6. 批量更新数据库 (性能关键)
            for (User u : usersToUpdate) {
                QueryWrapper<User> uw = new QueryWrapper<>();
                uw.eq("uuid", u.getUuid());

                User updateParam = new User();
                updateParam.setRating(u.getRating());

                userMapper.update(updateParam, uw);
            }

            // 7. 批量插入日志
            userRatingService.saveBatch(userRatingList);
        }
    }

    /**
     * 定时任务:将代码转为 Embedding 向量(异步处理)
     * 改造后:分批发送消息到 MQ,由消费者异步处理
     * 注意: 不能使用 @Transactional,因为会锁定数据源,导致 @DS 失效
     */
    @Scheduled(fixedRate = 1000 * 60 * 60 * 2)
    public void codeToEmbedding() {
        Date date = new Date();

        // 1. 查询所有已结束的竞赛
        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();
        queryWrapper.lt("end_time", date);
        queryWrapper.eq("embedding_status", 0);
        List<Competitions> competitionsList = competitionsMapper.selectList(queryWrapper);

        if (competitionsList.isEmpty()) {
            return;
        }

        // log.info("[Embedding任务创建] 发现 {} 个已结束且未处理的竞赛", competitionsList.size());

        // 2. 遍历每个竞赛,创建任务记录
        int totalTasksCreated = 0;
        for (Competitions competition : competitionsList) {
            try {
                // 处理中......
                competition.setEmbedding_status(1);
                competitionsMapper.updateById(competition);

                int count = createEmbeddingTasks(competition);
                totalTasksCreated += count;
            } catch (Exception e) {
                log.error("[Embedding任务创建] 竞赛 {} 创建任务失败: {}", 
                        competition.getCompetition_id(), e.getMessage(), e);
            }
        }

        // log.info("[Embedding任务创建] 共创建 {} 个任务记录", totalTasksCreated);
    }

    /**
     * 管理员重新计算指定竞赛的代码查重数据。任务异步执行，方法返回表示已成功入队。
     */
    public synchronized boolean recalculateCodeSimilarity(Long competitionId) {
        if (competitionId == null || competitionId <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "竞赛ID无效");
        }
        Competitions competition = competitionsMapper.selectById(competitionId);
        if (competition == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛不存在");
        }
        if (competition.getEnd_time() != null && competition.getEnd_time().after(new Date())) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "竞赛尚未结束，不能重新计算查重");
        }
        if (Objects.equals(competition.getEmbedding_status(), 1)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "该竞赛的查重任务正在执行，请稍后再试");
        }

        DynamicDataSourceContextHolder.push("pg");
        try {
            long processingTasks = embeddingTaskQueueService.count(new QueryWrapper<EmbeddingTaskQueue>()
                    .eq("competition_id", competitionId)
                    .in("status", "PENDING", "PROCESSING"));
            if (processingTasks > 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "该竞赛的查重任务正在执行，请稍后再试");
            }

            embeddingTaskQueueService.remove(new QueryWrapper<EmbeddingTaskQueue>()
                    .eq("competition_id", competitionId));
            problemCompetitionCodeEmbeddingsService.remove(new QueryWrapper<ProblemCompetitionCodeEmbeddings>()
                    .eq("competition_id", competitionId));
            codeSimilarityResultService.remove(new QueryWrapper<CodeSimilarityResult>()
                    .eq("competition_id", competitionId));
            similarityClusterService.remove(new QueryWrapper<SimilarityCluster>()
                    .eq("competition_id", competitionId));
        } finally {
            DynamicDataSourceContextHolder.poll();
        }

        competition.setEmbedding_status(1);
        competitionsMapper.updateById(competition);
        int taskCount = createEmbeddingTasks(competition);
        if (taskCount <= 0) {
            competition.setEmbedding_status(0);
            competitionsMapper.updateById(competition);
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "该竞赛没有可处理的参赛用户");
        }

        // 不等待一分钟定时器，立即发送首批 Pending 任务。
        dispatchPendingTasks();
        return true;
    }

    /**
     * 为单个竞赛创建 Embedding 任务记录
     * @return 创建的任务数量
     */
    private int createEmbeddingTasks(Competitions competition) {
        Long competitionId = competition.getCompetition_id();

        // 1. 检查是否已经创建过 EMBEDDING 任务
        Long existCount = embeddingTaskQueueService.countEmbeddingTasksByCompetitionId(competitionId);
        
        if (existCount > 0) {
            // log.info("[Embedding任务创建] 竞赛 {} 已创建过 EMBEDDING 任务,跳过", competitionId);
            return 0;
        }

        // 2. 查询所有参赛用户
        QueryWrapper<CompetitionsUser> cuQuery = new QueryWrapper<>();
        cuQuery.eq("competition_id", competitionId)
                .eq("is_participant", 0);

        if (competition.getPattern() == 0) {
            cuQuery.orderByDesc("ac_num");
        } else {
            cuQuery.orderByDesc("score");
        }

        List<CompetitionsUser> allUsers = competitionsUserMapper.selectList(cuQuery);
        int totalUsers = allUsers.size();

        if (totalUsers == 0) {
            // log.info("[Embedding任务创建] 竞赛 {} 没有参赛用户", competitionId);
            return 0;
        }

        // 3. 分批创建任务记录
        int totalBatches = (int) Math.ceil((double) totalUsers / BATCH_SIZE);
        List<EmbeddingTaskQueue> taskList = new ArrayList<>();

        for (int i = 0; i < totalUsers; i += BATCH_SIZE) {
            int endIndex = Math.min(i + BATCH_SIZE, totalUsers);
            List<CompetitionsUser> batchUsers = allUsers.subList(i, endIndex);

            // 提取用户 UUID 列表
            List<Long> uuids = new ArrayList<>();
            for (CompetitionsUser cu : batchUsers) {
                uuids.add(cu.getUuid());
            }

            // 创建任务记录
            EmbeddingTaskQueue task = new EmbeddingTaskQueue();
            task.setCompetitionId(competitionId);
            task.setBatchIndex(i / BATCH_SIZE + 1);
            task.setTotalBatches(totalBatches);
            task.setUserUuids(JSON.toJSONString(uuids));  // 转为JSON存储
            task.setTaskType("EMBEDDING");
            task.setStatus("PENDING");
            task.setRetryCount(0);
            task.setCreatedAt(new Date());
            task.setUpdatedAt(new Date());

            taskList.add(task);
        }

        // 4. 批量插入数据库(在 Service 层有事务)
        if (!taskList.isEmpty()) {
            embeddingTaskQueueService.saveTasksBatch(taskList);
            // log.info("[Embedding任务创建] 竞赛 {} 创建 {} 个任务记录", competitionId, taskList.size());
        }

        return taskList.size();
    }

    /**
     * 定时任务2:分发 Pending 任务到 MQ(每分钟执行)
     * 每次只取5个任务发送,慢慢处理
     * 注意: 不能使用 @Transactional,因为会锁定数据源
     */
    @Scheduled(fixedRate = 1000 * 60)  // 每分钟
    public void dispatchPendingTasks() {
        // 1. 查询待处理的任务(每次取5个)
        List<EmbeddingTaskQueue> pendingTasks = embeddingTaskQueueService.listPendingTasks(5);

        if (pendingTasks.isEmpty()) {
            return;
        }

        // log.info("[任务分发] 发现 {} 个待处理任务", pendingTasks.size());

        // 2. 逐个处理
        for (EmbeddingTaskQueue task : pendingTasks) {
            try {
                // 更新状态为 PROCESSING
                task.setStatus("PROCESSING");
                task.setUpdatedAt(new Date());
                embeddingTaskQueueService.updateById(task);

                // 构建消息
                EmbeddingTaskMessage message = new EmbeddingTaskMessage();
                message.setCompetitionId(task.getCompetitionId());
                
                // 根据任务类型设置 userUuids
                String taskType = task.getTaskType();
                if ("CLUSTER".equals(taskType)) {
                    // CLUSTER 任务不需要用户列表
                    message.setUserUuids(null);
                } else {
                    // EMBEDDING 和 SIMILARITY 需要用户列表
                    message.setUserUuids(JSON.parseArray(task.getUserUuids(), Long.class));
                }
                
                message.setTaskType(taskType);
                message.setBatchIndex(task.getBatchIndex());
                message.setTotalBatches(task.getTotalBatches());
                message.setCreateTime(System.currentTimeMillis());
                message.setTaskQueueId(task.getId());  // 记录任务ID,方便回调更新

                // 发送到 MQ
                rabbitTemplate.convertAndSend(
                        RabbitMQConfig.EMBEDDING_EXCHANGE,
                        RabbitMQConfig.EMBEDDING_ROUTING_KEY,
                        message
                );

                // log.info("[任务分发] 已发送任务 ID: {}, 竞赛: {}, 类型: {}, 批次: {}/{}",
//                        task.getId(), task.getCompetitionId(), taskType, task.getBatchIndex(), task.getTotalBatches());

            } catch (Exception e) {
                log.error("[任务分发] 任务 ID: {} 发送失败: {}", task.getId(), e.getMessage(), e);
                // 恢复状态为 PENDING,下次重试
                task.setStatus("PENDING");
                task.setUpdatedAt(new Date());
                embeddingTaskQueueService.updateById(task);
            }
        }
    }

    /**
     * 简化版：仅获取指定竞赛中指定用户的源代码列表
     * @param competition_id 竞赛ID
     * @param uuid 用户UUID
     * @return Map<Integer, String> 题目序号 -> 源代码
     */
    public Map<String, String> getOnlySourceCode(Long competition_id, Long uuid) {
        // 1. 验证竞赛是否存在（基础校验）
        QueryWrapper<Competitions> competitionQW = new QueryWrapper<>();
        competitionQW.eq("competition_id", competition_id).eq("is_delete", 0);
        Competitions competition = competitionsMapper.selectOne(competitionQW);
        if (competition == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛不存在");
        }

        // 2. 获取该竞赛下的所有题目ID映射
        QueryWrapper<CompetitionsProblemsAlgorithm> problemQW = new QueryWrapper<>();
        problemQW.eq("competition_id", competition_id).orderByAsc("idx");
        List<CompetitionsProblemsAlgorithm> problemList = competitionsProblemsAlgorithmMapper.selectList(problemQW);

        if (problemList.isEmpty()) {
            return new HashMap<>(); // 如果没有题目，直接返回空
        }

        // 3. 核心简化：直接查询该用户的Accepted提交记录
        Map<String, String> sourceCodeMap = new HashMap<>();

        for (CompetitionsProblemsAlgorithm problem : problemList) {
            String problemIdx = problem.getIdx(); // 题目序号 (A, B, C...)
            Long problemId = problem.getProblem_id(); // 对应的题目ID

            // 构建查询：查找该用户在该题目下最早的Accepted记录（或最新记录，视业务定）
            QueryWrapper<SubmissionsAlgorithm> submissionQW = new QueryWrapper<>();
            submissionQW.eq("competition_id", competition_id)
                    .eq("uuid", uuid)
                    .eq("problem_id", problemId)
                    .eq("results", "Accepted") // 只获取通过的代码
                    .last("LIMIT 1"); // 通常只需要一份AC代码，避免重复

            SubmissionsAlgorithm submission = submissionsAlgorithmMapper.selectOne(submissionQW);

            // 4. 提取源代码
            if (submission != null && submission.getSource_code() != null) {
                // Key为题目序号(如1,2,3)，Value为源码
                sourceCodeMap.put(problemIdx, submission.getSource_code());
            } else {
                // 如果没AC，可以存空字符串或跳过
                sourceCodeMap.put(problemIdx, "No Accepted Code");
            }
        }

        return sourceCodeMap; // 返回结果：{1: "public class...", 2: "..."}
    }
    
    /**
     * 获取当前分段的K值
     * @param rating 当前的分数
     * @return K动态因子
     */
    private double getK(int rating) {
        if (rating >= 0 && rating < 1200) {
            return 0.6;
        } else if (rating >= 1200 && rating < 1350) {
            return 0.5;
        } else if (rating >= 1350 && rating < 1500) {
            return 0.4;
        } else if (rating >= 1500 && rating < 1700) {
            return 0.3;
        } else if (rating >= 1700 && rating < 1900) {
            return 0.25;
        } else if (rating >= 1900 && rating < 2050) {
            return 0.2;
        } else if (rating >= 2050 && rating < 2200) {
            return 0.15;
        } else if (rating >= 2200 && rating < 2600) {
            return 0.1;
        } else {
            return 0.1;
        }
    }

    /**
     * 二分查找目标 Rating
     * 目标：找到一个 R，使得在该 R 下，期望排名 seed == targetSeed
     */
    private double searchRating(double targetSeed, Map<Long, User> userMap, Long myUuid) {
        double left = 1.0;
        double right = 5000.0;

        for (int iter = 0; iter < 80; iter++) {
            double mid = (left + right) / 2.0;
            double calculatedSeed = 1.0;

            for (User opponent : userMap.values()) {
                if (opponent.getUuid().equals(myUuid)) {
                    continue;
                }
                double r_j = opponent.getRating();
                double p = 1.0 / (1.0 + Math.pow(10, (mid - r_j) / 400.0));
                calculatedSeed += p;
            }

            if (calculatedSeed > targetSeed) {
                left = mid;
            } else {
                right = mid;
            }
        }
        return (left + right) / 2.0;
    }
}
