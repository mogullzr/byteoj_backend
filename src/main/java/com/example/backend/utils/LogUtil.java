//package com.example.backend.utils;
//
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.example.backend.mapper.*;
//import com.example.backend.models.domain.log.*;
//import com.example.backend.models.vo.log.LogAdminBasicInfo;
//import lombok.extern.slf4j.Slf4j;
//import net.javacrumbs.shedlock.spring.annotation.SchedulerLock;
//import org.springframework.scheduling.annotation.Scheduled;
//import org.springframework.stereotype.Component;
//
//import javax.annotation.Resource;
//import java.time.LocalDateTime;
//import java.time.ZoneId;
//import java.util.*;
//import java.util.concurrent.atomic.AtomicBoolean;
//
//@Slf4j
//@Component
//public class LogUtil {
//    @Resource
//    private UserMapper userMapper;
//
//    @Resource
//    private LogOperationMapper logOperationMapper;
//
//    @Resource
//    private LogExceptionMapper logExceptionMapper;
//
//    @Resource
//    private LogDailyInfoMapper logDailyInfoMapper;
//
//    @Resource
//    private LogDailyDetailInfoMapper logDailyDetailInfoMapper;
//
//    @Resource
//    private LogMonthlyInfoMapper logMonthlyInfoMapper;
//
//    @Resource
//    private LogBrowserMapper logBrowserMapper;
//
//    // 任务状态标记
//    private final AtomicBoolean hourlyTaskRunning = new AtomicBoolean(false);
//    private final AtomicBoolean minlyTaskRunning = new AtomicBoolean(false);
//    private final AtomicBoolean dailyTaskRunning = new AtomicBoolean(false);
//    private final AtomicBoolean monthTaskRunning = new AtomicBoolean(false);
//
//    /**
//     * 每小时对表log_daily_detail_info数据进行静态化操作
//     */
//    @Scheduled(cron = "0 0 * * * ?")
//    @SchedulerLock(
//            name = "logHourlyTask",
//            lockAtMostFor = "10m"
//    )
//    public void logScheduleHourTask() {
//        hourlyTaskRunning.set(true);
//        try {
//            LocalDateTime now = LocalDateTime.now();
//            LocalDateTime nowDateTime = now.minusHours(0)
//                    .withMinute(0)
//                    .withSecond(0)
//                    .withNano(0);
//
//            LocalDateTime previousHour = now.minusHours(1)
//                    .withMinute(0)
//                    .withSecond(0)
//                    .withNano(0);
//
//            // 转换为Date
//            Date previousHourDate = Date.from(previousHour.atZone(ZoneId.systemDefault()).toInstant());
//            Date nowDate = Date.from(nowDateTime.atZone(ZoneId.systemDefault()).toInstant());
//
//            // 静态化上个小时的数据
//            LogDailyDetailInfo logDailyDetailInfo = new LogDailyDetailInfo();
//
//            List<Integer> logCount = getLogCount(previousHourDate, nowDate);
//            logDailyDetailInfo.setOperation_total(logCount.get(0));
//            logDailyDetailInfo.setException_total(logCount.get(1));
//            logDailyDetailInfo.setCreate_date(nowDate);
//
//            logDailyDetailInfoMapper.insert(logDailyDetailInfo);
//        } finally {
//            hourlyTaskRunning.set(false);
//        }
//    }
//
//    /**
//     * 每过1min进行Redis的一次更新
//     */
//    @Scheduled(cron = "5 * * * * ?")
//    @SchedulerLock(
//            name = "logMinlyTask",
//            lockAtMostFor = "10m"
//    )
//    public void logScheduleMinTask() {
//        // 等待更高优先级任务完成
//        waitForTaskCompletion(hourlyTaskRunning, "每小时任务");
//
//        minlyTaskRunning.set(true);
//        try {
//            LogAdminBasicInfo logAdminBasicInfo = new LogAdminBasicInfo();
//
//            Map<String, Long> currentHourToHourEndTime = LogStaticUtil.getCurrentHourToHourEndTime();
//            Long start_time = currentHourToHourEndTime.get("startHour");
//            Long end_time = currentHourToHourEndTime.get("endHour");
//            QueryWrapper<LogDailyDetailInfo> queryWrapper_1 = new QueryWrapper<>();
//            queryWrapper_1.between("create_date", start_time, end_time);
//            LogDailyDetailInfo logDailyDetailInfo = logDailyDetailInfoMapper.selectOne(queryWrapper_1);
//
//            // 改这部分数据
//            logAdminBasicInfo = UpdateRedisInfo(logDailyDetailInfo);
//
//            // TODO 后查其他部分数据（已经静态化，这里说实话静态化的话 + Redis存储进行逻辑感觉比较麻烦，先不写）
//            Map<String, Long> zeroToNowTime = LogStaticUtil.getZeroToNowTime();
//            start_time = zeroToNowTime.get("zeroTime");
//            end_time = zeroToNowTime.get("currentTime");
//            QueryWrapper<LogDailyInfo> queryWrapper = new QueryWrapper<>();
//            queryWrapper.between("create_date", start_time, end_time);
//
//            List<LogDailyInfo> logDailyInfos = logDailyInfoMapper.selectList(queryWrapper);
//
//        } finally {
//            minlyTaskRunning.set(false);
//        }
//
//    }
//
//    private LogAdminBasicInfo UpdateRedisInfo(LogDailyDetailInfo logDailyDetailInfo) {
//        LogAdminBasicInfo logAdminBasicInfo = new LogAdminBasicInfo();
//
//        Integer userBrowse = Integer.valueOf(RedisUtils.get("user_browse"));
//        Integer logOperationsTotal = Integer.valueOf(RedisUtils.get("log_operations_total"));
//        Integer logExceptionTotal = Integer.valueOf(RedisUtils.get("log_exception_total"));
//        Integer userTotal;
//        Integer activeTotal = Integer.valueOf(RedisUtils.get("active_total"));
//        Double avgResponseMilliseconds = Double.valueOf(RedisUtils.get("avg_response_milliseconds"));
//        Long startTime = Long.valueOf(Integer.valueOf(RedisUtils.get("start_time")));
//        Long endTime = Long.valueOf(Integer.valueOf(RedisUtils.get("end_time")));
//        String browser = RedisUtils.get("browser");
//
//        Integer log_total = logOperationsTotal + logExceptionTotal;
//
//        // 开始更新
//        userBrowse = Math.toIntExact(userBrowse + logDailyDetailInfo.getBrowse_total());
//        logOperationsTotal = logOperationsTotal + logDailyDetailInfo.getOperation_total();
//        logExceptionTotal = logExceptionTotal + logDailyDetailInfo.getException_total();
//        userTotal = Math.toIntExact(logDailyDetailInfo.getUser_total());
//        activeTotal = Math.toIntExact(activeTotal + logDailyDetailInfo.getActive_total());
//        avgResponseMilliseconds = (avgResponseMilliseconds * log_total + logDailyDetailInfo.getAvg_response_time()
//                * (logDailyDetailInfo.getOperation_total() + logDailyDetailInfo.getException_total()))
//                / (log_total + (logDailyDetailInfo.getOperation_total() + logDailyDetailInfo.getException_total()));
//
//        if ((logDailyDetailInfo.getOperation_total() + logDailyDetailInfo.getException_total()) > log_total) {
//            startTime = logDailyDetailInfo.getStart_time();
//            endTime = logDailyDetailInfo.getEnd_time();
//        }
//
//        RedisUtils.set("user_browse", userBrowse);
//        RedisUtils.set("log_operations_total", logOperationsTotal);
//        RedisUtils.set("log_exception_total", logExceptionTotal);
//        RedisUtils.set("user_total", userTotal);
//        RedisUtils.set("active_total", activeTotal);
//        RedisUtils.set("avg_response_milliseconds", avgResponseMilliseconds);
//        RedisUtils.set("start_time", startTime);
//        RedisUtils.set("end_time", endTime);
//        RedisUtils.set("browser", browser);
//
//        logAdminBasicInfo.setUser_browse(userBrowse);
//        logAdminBasicInfo.setLog_operations_total(logOperationsTotal);
//        logAdminBasicInfo.setLog_exception_total(logExceptionTotal);
//        logAdminBasicInfo.setUser_total(userTotal);
//        logAdminBasicInfo.setActive_total(activeTotal);
//        logAdminBasicInfo.setNew_user_total(Integer.valueOf(RedisUtils.get("new_user_total")));
//        logAdminBasicInfo.setAvg_response_milliseconds(avgResponseMilliseconds);
//        logAdminBasicInfo.setStart_time(startTime);
//        logAdminBasicInfo.setEnd_time(endTime);
//        logAdminBasicInfo.setBrowser(browser);
//
//        return logAdminBasicInfo;
//    }
//
//    /**
//     * 每天对表log_daily_info数据进行静态化操作
//     */
//    @Scheduled(cron = "10 0 0 * * ?")
//    @SchedulerLock(
//            name = "logDailyTask",
//            lockAtMostFor = "10m"
//    )
//    public void logScheduleDayTask() {
//        // 等待更高优先级任务完成
//        waitForTaskCompletion(hourlyTaskRunning, "每小时任务");
//        waitForTaskCompletion(minlyTaskRunning, "每分钟任务");
//
//        dailyTaskRunning.set(true);
//        try {
//            LocalDateTime now = LocalDateTime.now().withMinute(0)
//                    .withSecond(0)
//                    .withNano(0);
//            Date nowDate = Date.from(now.atZone(ZoneId.systemDefault()).toInstant());
//
//            LocalDateTime previousDay = now.minusDays(1)
//                    .withMinute(0)
//                    .withSecond(0)
//                    .withNano(0);
//            // 转换为Date
//            Date previousDayDate = Date.from(previousDay.atZone(ZoneId.systemDefault()).toInstant());
//
//            // 设置好当天 + 昨天的信息表
//            setCurrentDateInfo(nowDate, previousDayDate);
//        } finally {
//            dailyTaskRunning.set(false);
//        }
//    }
//
//    /**
//     * 每月对表log_monthly_info数据进行静态化
//     */
//    @Scheduled(cron = "15 0 0 1 * ?")
//    @SchedulerLock(name = "logMonthlyTask", lockAtMostFor = "30d")
//    public void logScheduleMonthTask() {
//        // 等待更高优先级任务完成
//        waitForTaskCompletion(hourlyTaskRunning, "每小时任务");
//        waitForTaskCompletion(minlyTaskRunning, "每分钟任务");
//        waitForTaskCompletion(dailyTaskRunning, "每日任务");
//
//        try {
//            monthTaskRunning.set(true);
//            LocalDateTime now = LocalDateTime.now().minusMonths(0)
//                    .withMinute(0)
//                    .withSecond(0)
//                    .withNano(0);
//
//            Date nowDate = Date.from(now.atZone(ZoneId.systemDefault()).toInstant());
//
//            LocalDateTime previousDay = now.minusMonths(1)
//                    .withMinute(0)
//                    .withSecond(0)
//                    .withNano(0);
//            // 转换为Date
//            Date previousDayDate = Date.from(previousDay.atZone(ZoneId.systemDefault()).toInstant());
//
//            // 设置好当天 + 昨天的信息表
//            setCurrentMonthInfo(nowDate, previousDayDate);
//        } finally {
//            monthTaskRunning.set(false);
//        }
//    }
//
//    // 辅助方法：等待任务完成
//    private void waitForTaskCompletion(AtomicBoolean taskFlag, String taskName) {
//        int maxWaitTime = 300; // 最大等待300秒（5分钟）
//        int waitInterval = 1000; // 检查间隔1秒
//
//        for (int i = 0; i < maxWaitTime; i++) {
//            if (!taskFlag.get()) {
//                return;
//            }
//            try {
//                Thread.sleep(waitInterval);
//            } catch (InterruptedException e) {
//                Thread.currentThread().interrupt();
//                throw new RuntimeException(taskName + "等待被中断");
//            }
//        }
//        throw new RuntimeException("等待" + taskName + "完成超时");
//    }
//
//
////    private void setCurrentMonthInfo(Date nowDate, Date previousDayDate) {
////        List<LogDailyInfo> logDailyInfos = getLogDailyInfo(nowDate, previousDayDate);
////        QueryWrapper<LogMonthlyInfo> queryWrapper = new QueryWrapper();
////        queryWrapper.between("create_date", previousDayDate, nowDate);
////        LogMonthlyInfo logMonthlyInfo = logMonthlyInfoMapper.selectOne(queryWrapper);
////
////        if (logDailyInfos == null || logDailyInfos.isEmpty()) {
////            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "存在同步问题！！请通知管理员");
////        }
////
////        Integer operation_total = 0;
////        Integer exception_total = 0;
////
////        // 设置异常日志数
////        // 设置操作日志数量
////        Integer log_top = 0;
////
////        for (LogDailyInfo logDailyInfo : logDailyInfos) {
////            Integer log_total = logDailyInfo.getOperation_total() + logDailyInfo.getException_total();
////            if (log_top > log_total) {
////                log_top = log_total;
////            }
////            operation_total += logDailyInfo.getOperation_total();
////            exception_total += logDailyInfo.getException_total();
////        }
////
////        logMonthlyInfo.setOperation_total(operation_total);
////        logMonthlyInfo.setException_total(exception_total);
////
////        // 设置用户总数
////        Integer userTotal = getUserTotal();
////        logMonthlyInfo.setUser_total(userTotal);
////
////        // 设置用户访问量
////        Long userBrowse = (long) logSearchUserByTime(previousDayDate, nowDate).size();
////        logMonthlyInfo.setUser_browse(userBrowse);
////
////        // 设置活跃用户数
////        Long activeUserTotal = getActiveUserTotal();
////        logMonthlyInfo.setUser_active_total(activeUserTotal);
////
////        // 设置高峰时间
////        LogMonthlyInfo logCurrentMonthInfo = new LogMonthlyInfo();
////        logCurrentMonthInfo.setCreate_time(nowDate);
////
////        logCurrentMonthInfo.setUser_total(logMonthlyInfo.getUser_total());
////        logCurrentMonthInfo.setUser_browse(0L);
////        logCurrentMonthInfo.setUser_active_total(0L);
////        logCurrentMonthInfo.setOperation_total(0);
////        logCurrentMonthInfo.setException_total(0);
////
////        logMonthlyInfoMapper.updateById(logMonthlyInfo);
////        logMonthlyInfoMapper.insert(logCurrentMonthInfo);
////    }
////
////    private List<LogDailyInfo> getLogDailyInfo(Date nowDate, Date previousDayDate) {
////        QueryWrapper<LogDailyInfo> queryWrapper = new QueryWrapper<>();
////        queryWrapper.between("create_date", nowDate, previousDayDate);
////
////        return logDailyInfoMapper.selectList(queryWrapper);
////    }
////
////    private void setCurrentDateInfo(Date nowDate, Date previousDayDate) {
////        // 获取当天日期（不含时间）
////        LocalDate today = LocalDate.now();
////
////        // 获取当天0点
////        LocalDateTime midnight = today.atStartOfDay();
////        Date midnightDate = Date.from(midnight.atZone(ZoneId.systemDefault()).toInstant());
////
////        // 获取当天1点
////        LocalDateTime oneAM = midnight.plusHours(1);
////        Date oneAMDate = Date.from(oneAM.atZone(ZoneId.systemDefault()).toInstant());
////
////        List<LogDailyDetailInfo> logDailyDetailInfo = getLogDetailInfo(nowDate, previousDayDate);
////        QueryWrapper<LogDailyInfo> queryWrapper = new QueryWrapper();
////        queryWrapper.between("create_date", previousDayDate, nowDate);
////        LogDailyInfo logDailyInfo = logDailyInfoMapper.selectOne(queryWrapper);
////
////        if (logDailyInfo == null) {
////            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "存在同步问题！！请通知管理员");
////        }
////
////        Integer operation_total = 0;
////        Integer exception_total = 0;
////
////        // 设置异常日志数
////        // 设置操作日志数量
////        // 设置高峰期
////        Integer log_top = 0;
////        Date log_date_top_1 = new Date();
////        Date log_date_top_2 = new Date();
////
////        for (LogDailyDetailInfo dailyDetailInfo : logDailyDetailInfo) {
////            Integer log_total = dailyDetailInfo.getOperation_total() + dailyDetailInfo.getException_total();
////            if (log_top > log_total) {
////                log_top = log_total;
////                log_date_top_1 = dailyDetailInfo.getCreate_date();
////                // 将Date转换为LocalDateTime
////                LocalDateTime dateTime = LocalDateTime.ofInstant(
////                        log_date_top_1.toInstant(),
////                        ZoneId.systemDefault()
////                );
////
////                // 计算下一个小时的整点时间
////                LocalDateTime nextHour = dateTime
////                        .plusHours(1)
////                        .withMinute(0)
////                        .withSecond(0)
////                        .withNano(0);
////                log_date_top_2 = Date.from(nextHour.atZone(ZoneId.systemDefault()).toInstant());
////            }
////            operation_total += dailyDetailInfo.getOperation_total();
////            exception_total += dailyDetailInfo.getException_total();
////        }
////
////        logDailyInfo.setStart_time(log_date_top_1);
////        logDailyInfo.setStart_time(log_date_top_2);
////        logDailyInfo.setOperation_total(operation_total);
////        logDailyInfo.setException_total(exception_total);
////
////        // 设置用户总数
////        Integer userTotal = getUserTotal();
////        logDailyInfo.setUser_total(userTotal);
////
////        // 设置用户访问量
////        Long userBrowse = (long) logSearchUserByTime(previousDayDate, nowDate).size();
////        logDailyInfo.setUser_browse(userBrowse);
////
////        // 设置活跃用户数
////        Long activeUserTotal = getActiveUserTotal();
////        logDailyInfo.setUser_active_total(activeUserTotal);
////
////        // 设置主要浏览器及比例
////        setBrowserInfo(previousDayDate, nowDate);
////
////        // 设置高峰时间
////        LogDailyInfo logCurrentDailyInfo = new LogDailyInfo();
////        logCurrentDailyInfo.setCreate_time(midnightDate);
////        logCurrentDailyInfo.setStart_time(midnightDate);
////        logCurrentDailyInfo.setEnd_time(oneAMDate);
////
////        logCurrentDailyInfo.setUser_top_num(0);
////        logCurrentDailyInfo.setUser_total(logDailyInfo.getUser_total());
////        logCurrentDailyInfo.setUser_browse(0L);
////        logCurrentDailyInfo.setUser_active_total(0L);
////        logCurrentDailyInfo.setOperation_total(0);
////        logCurrentDailyInfo.setException_total(0);
////
////        logDailyInfoMapper.updateById(logDailyInfo);
////        logDailyInfoMapper.insert(logCurrentDailyInfo);
////    }
////
////    private List<LogDailyDetailInfo> getLogDetailInfo(Date nowDate, Date previousDayDate) {
////        QueryWrapper<LogDailyDetailInfo> queryWrapper = new QueryWrapper<>();
////        queryWrapper.between("create_date", previousDayDate, nowDate);
////
////        List<LogDailyDetailInfo> logDailyDetailInfos = logDailyDetailInfoMapper.selectList(queryWrapper);
////        if (logDailyDetailInfos.size() != 24) {
////            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "存在同步问题！！请通知管理员");
////        }
////
////        return logDailyDetailInfos;
////    }
////
////    /**
////     * 获取2种日志数量
////     * @return 一个整数列表，长度为2，第一个表示操作日志数量，第二个表示异常日志数量
////     */
////    private List<Integer> getLogCount(Date startTime, Date endTime) {
////        List<Integer> list = new ArrayList<>();
////
////        QueryWrapper<LogOperation> queryWrapper1 = new QueryWrapper<>();
////        QueryWrapper<LogException> queryWrapper2 = new QueryWrapper<>();
////        queryWrapper1.between("create_time", startTime, endTime);
////        queryWrapper2.between("create_time", startTime, endTime);
////
////        Long logOperationCount = logOperationMapper.selectCount(queryWrapper1);
////        Long logExceptionCount = logExceptionMapper.selectCount(queryWrapper2);
////
////        list.add(Math.toIntExact(logOperationCount));
////        list.add(Math.toIntExact(logExceptionCount));
////
////        return list;
////    }
////
////    /**
////     * 获取用户总数
////     * @return
////     */
////    private Integer getUserTotal() {
////        return Math.toIntExact(userMapper.selectCount(null));
////    }
////
////    /**
////     * 获取用户浏览量
////     * @param startTime
////     * @param endTime
////     * @return
////     */
////    private List<Long> logSearchUserByTime(Date startTime, Date endTime) {
////        // 使用Set自动去重
////        Set<Long> resultSet = new HashSet<>();
////
////        // 查询log_operation表
////        QueryWrapper<LogOperation> opWrapper = new QueryWrapper<LogOperation>()
////                .select("DISTINCT operator_id")  // 使用DISTINCT在数据库层面去重
////                .between("create_time", startTime, endTime);
////
////        logOperationMapper.selectList(opWrapper)
////                .stream()
////                .map(LogOperation::getOperator_id)
////                .filter(Objects::nonNull)  // 过滤掉null值
////                .forEach(resultSet::add);  // 添加到Set中
////
////        // 查询log_exception表
////        QueryWrapper<LogException> exWrapper = new QueryWrapper<LogException>()
////                .select("DISTINCT operator_id")  // 使用DISTINCT在数据库层面去重
////                .between("create_time", startTime, endTime);
////
////        logExceptionMapper.selectList(exWrapper)
////                .stream()
////                .map(LogException::getOperator_id)
////                .filter(Objects::nonNull)  // 过滤掉null值
////                .forEach(resultSet::add);  // 添加到Set中
////
////        // 转换为List并返回
////        return new ArrayList<>(resultSet);
////    }
////
////
////    /**
////     * 合并统计两表中相同operator_id的总出现次数
////     * @return Map<operator_id, 总次数> 包含所有operator_id的合并统计结果
////     */
////    public Map<Long, Long> countCombinedOperatorStats() {
////        // 获取当天时间范围
////        LocalDateTime startOfDay = LocalDate.now().atStartOfDay();
////        Date startTime = localDateTimeToDate(startOfDay);
////        LocalDateTime endOfDay = LocalDate.now().atTime(LocalTime.MAX);
////        Date endTime = localDateTimeToDate(endOfDay);
////
////        // 1. 查询LogOperation表中operator_id的计数
////        QueryWrapper<LogOperation> operationWrapper = new QueryWrapper<>();
////        operationWrapper.select("operator_id, COUNT(*) as count")
////                .between("create_time", startTime, endTime)
////                .groupBy("operator_id");
////
////        List<Map<String, Object>> operationCounts = logOperationMapper.selectMaps(operationWrapper);
////
////        // 2. 查询LogException表中operator_id的计数
////        QueryWrapper<LogException> exceptionWrapper = new QueryWrapper<>();
////        exceptionWrapper.select("operator_id, COUNT(*) as count")
////                .between("create_time", startTime, endTime)
////                .groupBy("operator_id");
////
////        List<Map<String, Object>> exceptionCounts = logExceptionMapper.selectMaps(exceptionWrapper);
////
////        // 3. 合并两个表的结果
////        Map<Long, Long> combinedResults = new HashMap<>();
////
////        // 处理LogOperation表结果
////        for (Map<String, Object> countMap : operationCounts) {
////            Long operatorId = ((Number) countMap.get("operator_id")).longValue();
////            Long count = ((Number) countMap.get("count")).longValue();
////            combinedResults.put(operatorId, combinedResults.getOrDefault(operatorId, 0L) + count);
////        }
////
////        // 处理LogException表结果
////        for (Map<String, Object> countMap : exceptionCounts) {
////            Long operatorId = ((Number) countMap.get("operator_id")).longValue();
////            Long count = ((Number) countMap.get("count")).longValue();
////            combinedResults.put(operatorId, combinedResults.getOrDefault(operatorId, 0L) + count);
////        }
////
////        return combinedResults;
////    }
////
////    /**
////     * 获取合并统计后总次数≥100的operator_id
////     * @return Map<operator_id, 总次数> 只包含总次数≥100的记录
////     */
////    public Long getActiveUserTotal() {
////        Map<Long, Long> allOperators = countCombinedOperatorStats();
////
////        // 过滤出总次数≥100的记录
////        return (long) allOperators.entrySet().stream()
////                .filter(entry -> entry.getValue() >= 100)
////                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue)).size();
////   }
////
////    private Date localDateTimeToDate(LocalDateTime localDateTime) {
////        return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
////    }
////
////
////    /**
////     * 获取指定日志ID的浏览器使用统计
////     * @return 浏览器统计信息(浏览器名称, 数量, 百分比)
////     */
////    private void setBrowserInfo(Date previousDayDate, Date nowDate) {
////        // 1. 查询日志ID
////        QueryWrapper<LogDailyInfo> queryWrapper = new QueryWrapper<>();
////        queryWrapper.between("create_time",previousDayDate, nowDate);
////
////        List<LogDailyInfo> logDailyInfos = logDailyInfoMapper.selectList(queryWrapper);
////        QueryWrapper<LogBrowser> logBrowserWrapper = new QueryWrapper<>();
////        QueryWrapper<LogBrowser> logBrowserWrapper1 = new QueryWrapper<>();
////        QueryWrapper<LogBrowser> logBrowserWrapper2 = new QueryWrapper<>();
////        // 收集所有ID
////        List<Integer> ids = logDailyInfos.stream()
////                .map(LogDailyInfo::getId)
////                .collect(Collectors.toList());
////
////        // 构建查询条件
////        LambdaQueryWrapper<LogBrowser> wrapper = new LambdaQueryWrapper<LogBrowser>()
////                .eq(LogBrowser::getType, 0)
////                .in(LogBrowser::getLog_info_id, ids);
////
////        List<LogBrowser> logBrowsers = logBrowserMapper.selectList(wrapper);
//////        // 2. 查询该日志的所有浏览器记录
//////        QueryWrapper<LogBrowser> wrapper = new QueryWrapper<>();
//////        wrapper.select("browser, COUNT(*) as count")
//////                .in("log_info_id")
//////                .eq("type", 0)
//////                .groupBy("browser")
//////                .orderByDesc("count");
//////
//////        List<Map<String, Object>> logBrowserList = logBrowserMapper.selectMaps(wrapper);
//////
//////        if (logBrowserList.isEmpty()) {
//////            return "无(0.00%)";
//////        }
//////
//////        // 2. 获取总记录数
//////        long totalCount = logBrowserMapper.selectCount(new QueryWrapper<LogBrowser>()
//////                .eq("log_info_id", logDailyInfo.getId())
//////                .eq("type", 0));
//////
//////        // 3. 获取数量最多的浏览器
//////        Map<String, Object> topBrowser = logBrowserList.get(0);
//////        String browserName = (String) topBrowser.get("browser");
//////        long browserCount = ((Number) topBrowser.get("count")).longValue();
//////
//////        // 4. 计算百分比
//////        double percentage = (double) browserCount / totalCount * 100;
//////        percentage = new BigDecimal(percentage).setScale(2, RoundingMode.HALF_UP).doubleValue();
//////
//////        return browserName + "(" + percentage + ")";
////    }
//}
