package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.example.backend.models.domain.competiton.CompetitionsUser;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.domain.user.UserRating;
import com.example.backend.service.user.UserRatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional; // 建议加事务

import java.util.*;

@Component
public class CompetitionsRatedUtil {

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

    @Scheduled(cron = "0 0/30 12-23 * * ?")
    @Transactional(rollbackFor = Exception.class) // 加上事务保证数据一致性
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
            // 注意：MyBatis-Plus 的 updateBatchById 需要实体类有 @TableId
            // 如果 uuid 是主键且配置正确，可以直接用。否则需要循环更新或自定义 XML 批量更新。
            // 这里假设 uuid 是主键或者你有其他批量更新手段。
            // 如果 userMapper 不支持基于 uuid 的批量更新，这里退化为循环，但内存计算已完成，只慢在 IO。

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