package com.example.backend.utils;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemAlgorithmBankMapper;
import com.example.backend.mapper.ProblemDailyInfoMapper;
import com.example.backend.mapper.UserMapper;
import com.example.backend.models.domain.algorithm.ProblemDailyInfo;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.user.User;
import com.example.backend.service.user.UserService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

@Component
public class DailyProblemSetUtil {
    @Resource
    private UserMapper userMapper;

    @Resource
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;

    @Resource
    private ProblemDailyInfoMapper problemDailyInfoMapper;

    @Resource
    private UserService userService;

    @Scheduled(cron = "0 0 0 * * ?")
//    @Scheduled(fixedRate = 1000 * 200)
    public void dailyProblemSet() {
        // 0.删除表里面的全部信息
        problemDailyInfoMapper.delete(null);

        // 1.查找出所有的用户
        List<User> users = userMapper.selectList(null);

        // 2.查找所有的题目信息
        List<ProblemAlgorithmBank> problemList = problemAlgorithmBankMapper.selectList(null);

        // 3.位每位用户设置每日随机题目
        List<ProblemDailyInfo> problemDailyInfoList = new ArrayList<>();
        for (User user : users) {
            List<ProblemAlgorithmBank> problemsRandom = new ArrayList<>();
            problemsRandom = selectRandomProblemsByDifficulty(problemList);

            for (ProblemAlgorithmBank problem : problemsRandom) {
                ProblemDailyInfo problemDailyInfo = new ProblemDailyInfo();
                problemDailyInfo.setProblem_id(problem.getProblem_id());
                problemDailyInfo.setUuid(user.getUuid());
                problemDailyInfo.setIs_select(0);

                problemDailyInfoList.add(problemDailyInfo);
            }
        }

        problemDailyInfoMapper.insertBatchSomeColumn(problemDailyInfoList);
    }

    /**
     * 从问题列表中按难度分类并随机选择指定数量的问题
     *
     * @param problemList 问题列表
     * @return 随机选择的结果列表
     */
    private List<ProblemAlgorithmBank> selectRandomProblemsByDifficulty(
            List<ProblemAlgorithmBank> problemList) {
        // 参数检查
        if (problemList == null || problemList.isEmpty()) {
            return Collections.emptyList();
        }

        // 1. 按难度分类
        Map<String, List<ProblemAlgorithmBank>> difficultyMap = new HashMap<>();
        difficultyMap.put("简单", new ArrayList<>());
        difficultyMap.put("中等", new ArrayList<>());
        difficultyMap.put("困难", new ArrayList<>());

        for (ProblemAlgorithmBank problem : problemList) {
            String difficulty = problem.getDifficulty_name();
            if (difficultyMap.containsKey(difficulty)) {
                difficultyMap.get(difficulty).add(problem);
            } else {
                throw new BusinessException(ErrorCode.SYSTEM_ERROR, "未知的难度级别: " + difficulty);
            }
        }

        // 2. 计算各难度应选数量（可按比例分配或平均分配）
        int easyCount = 6;
        int mediumCount = 2;
        int difficultCount = 1;

        // 3. 从各难度随机选择
        List<ProblemAlgorithmBank> result = new ArrayList<>();
        result.addAll(selectRandomItems(difficultyMap.get("简单"), easyCount));
        result.addAll(selectRandomItems(difficultyMap.get("中等"), mediumCount));
        result.addAll(selectRandomItems(difficultyMap.get("困难"), difficultCount));

        // 4. 如果总数不足，补充随机选择
        if (result.size() < 9) {
            List<ProblemAlgorithmBank> allProblems = new ArrayList<>(problemList);
            allProblems.removeAll(result);
            result.addAll(selectRandomItems(allProblems, 9 - result.size()));
        }

        // 随机打乱最终结果顺序
        Collections.shuffle(result);
        return result;
    }

    /**
     * 从列表中随机选择指定数量的元素
     */
    private <T> List<T> selectRandomItems(List<T> list, int count) {
        if (list == null || list.isEmpty() || count <= 0) {
            return Collections.emptyList();
        }

        if (list.size() <= count) {
            return new ArrayList<>(list);
        }

        List<T> copy = new ArrayList<>(list);
        List<T> result = new ArrayList<>();
        Random random = ThreadLocalRandom.current();

        while (result.size() < count && !copy.isEmpty()) {
            int randomIndex = random.nextInt(copy.size());
            result.add(copy.remove(randomIndex));
        }

        return result;
    }
}
