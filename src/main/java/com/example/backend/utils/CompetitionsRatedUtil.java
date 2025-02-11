package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.mapper.CompetitionsMapper;
import com.example.backend.mapper.CompetitionsUserMapper;
import com.example.backend.mapper.UserMapper;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.domain.competiton.CompetitionsUser;
import com.example.backend.models.domain.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class CompetitionsRatedUtil {

    @Autowired
    private CompetitionsMapper competitionsMapper;

    @Autowired
    private CompetitionsUserMapper competitionsUserMapper;

    @Autowired
    private UserMapper userMapper;

    // 规定在每天的12点到24点每隔30min执行
//    @Scheduled(cron = "0 0/30 12-23 * * ?")
    @Scheduled(fixedRate = 1000 * 60 * 40)
    public void executeRated() {
        Date date = new Date();
//        Calendar calendar = Calendar.getInstance();
//
//        calendar.setTime(date);
//        calendar.add(Calendar.HOUR, 8);
//        date = calendar.getTime();

        long time = 60 * 40 * 1000;
        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();
        Date date1 = new Date(date.getTime() - time);
        queryWrapper.lt("end_time", date);
        queryWrapper.gt("end_time", date1);


        List<Competitions> competitionsList = competitionsMapper.selectList(queryWrapper);
        for (Competitions competition : competitionsList) {
            // 竞赛ID
            Long competition_id = competition.getCompetition_id();

            // 搜索出所有的参赛用户
            QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
            competitionsUserQueryWrapper.eq("competition_id", competition_id);
            competitionsUserQueryWrapper.eq("is_participant", 0);

            if (competition.getPattern() == 0) {
                competitionsUserQueryWrapper.orderByDesc("ac_num");
            } else {
                competitionsUserQueryWrapper.orderByDesc("score");
            }
            competitionsUserQueryWrapper.orderByAsc("time_penalty");
            List<CompetitionsUser> competitionsUsers = competitionsUserMapper.selectList(competitionsUserQueryWrapper);

            // 参加比赛的人数
            long user_size = competitionsUsers.size();

            // 搜索每个用户的竞赛分
            QueryWrapper<User> queryWrapper1 = new QueryWrapper<>();
            for (int i = 0; i < user_size; i++) {
                queryWrapper1.or().eq("uuid", competitionsUsers.get(i).getUuid());
            }

            List<User> userList = userMapper.selectList(queryWrapper1);
            int inc = 0;

            // 计算每位用户赛后的竞赛分数
            for (int i = 0; i < user_size; i++) {
                Long uuid = competitionsUsers.get(i).getUuid();
                Integer rating = 0;
                int K = 0;
                int S_actual = 0;
                float S_expected = 0;
                int new_rating = 0;
                float m = 0;
                int diff = 0;

                // 获取当前用户的竞分数
                QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
                userQueryWrapper.eq("uuid", uuid);
                User user = userMapper.selectOne(userQueryWrapper);
                rating = user.getRating();

                // 根据当前用户的天梯分确认调节因子K
                K = getK(rating);
                // 计算S_actual
                S_actual = i;

                // 计算S_expected
                for (int j = 0; j < competitionsUsers.size(); j++) {
                    if (j != i) {
                        S_expected += (float) (1.0 / (1 + (Math.pow(10, (userList.get(j).getRating() - rating)) / 400)));
                    }
                }

                // 协调后的名次
                m = (float) Math.sqrt(S_expected * i);

                // 竞赛变化数值，然后x个数值即可
                diff = (int) ((S_expected - m) / 2);
                inc += diff;

                // 更新竞赛分
                new_rating = rating + K * diff;

                user.setRating(new_rating);
                userList.set(i, user);
            }

            // 防止分数膨胀
            inc = (int) Math.min(Math.max(-10, -(inc / user_size)), 0);

            for (int j = 0; j < user_size; j++) {
                User user = userList.get(j);
                Long uuid = user.getUuid();
                user.setRating(user.getRating() + inc);
                QueryWrapper<User> userQueryWrapper1 = new QueryWrapper<>();
                userQueryWrapper1.eq("uuid", uuid);
                userMapper.update(user, userQueryWrapper1);
            }
        }
    }

    /**
     * 根据竞赛分划分级别
     *
     * @param rating 当前竞赛分
     * @return
     */
    private int getK(Integer rating) {
        if (rating >= 0 && rating < 1200) {
            return 30;
        } else if (rating >= 1200 && rating < 1350) {
            return 25;
        } else if (rating >= 1350 && rating < 1500) {
            return 20;
        } else if (rating >= 1500 && rating < 1700) {
            return 18;
        } else if (rating >= 1700 && rating < 1900) {
            return 16;
        } else if (rating >= 1900 && rating < 2050) {
            return 12;
        } else if (rating >= 2050 && rating < 2200) {
            return 8;
        } else if (rating >= 2200 && rating < 2600) {
            return 4;
        } else {
            return 2;
        }
    }
}
