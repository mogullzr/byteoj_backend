package com.example.backend.utils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LogStaticUtil {
    // 1.将时间戳转为Date类型数据
    public static Date TimeStampToDate(Long timeStamp) {
        return new Date(timeStamp);
    }

    // 2.将Date类型数据转为时间戳
    public static Long DateToTimeStamp(Date date) {
        return date.getTime();
    }

    // 3.找当天0点的时候和当前时间所在时间的整点
    public static Map<String, Long> getZeroToNowTime() {
        Map<String, Long> map = new HashMap<>();

        // 获取当前日期（不含时间）
        LocalDate today = LocalDate.now();
        // 转换为当天的 00:00:00
        LocalDateTime midnight = today.atStartOfDay();
        // 获取时间戳（毫秒）
        long midnightTimestamp = midnight.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

        // 获取当前时间
        LocalDateTime now = LocalDateTime.now();
        // 截断到小时（去掉分钟、秒、毫秒）
        LocalDateTime currentHour = now.truncatedTo(ChronoUnit.HOURS);
        // 获取时间戳（毫秒）
        long currentHourTimestamp = currentHour.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

        map.put("zeroTime", midnightTimestamp);
        map.put("currentTime", currentHourTimestamp);

        return map;
    }

    // 4.找到昨天的时间戳范围
    public static Map<String, Long> getYesterdayTimeToTodayTime() {
        Map<String, Long> map = new HashMap<>();

        // 获取昨天的日期
        LocalDate yesterday = LocalDate.now().minusDays(1);

        // 昨天0点
        LocalDateTime yesterdayStart = yesterday.atStartOfDay();
        // 昨天23:59:59.999
        LocalDateTime yesterdayEnd = yesterdayStart.plusDays(1).minusNanos(1);

        // 转换为时间戳
        long startTimestamp = yesterdayStart.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        long endTimestamp = yesterdayEnd.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

        map.put("yesterdayTime", startTimestamp);
        map.put("todayTime", endTimestamp);

        return map;
    }

    // 5.找到上个月的时间戳范围
    public static Map<String, Long> getLastMonthToCurrentMonth() {
        Map<String, Long> map = new HashMap<>();
        // 获取上个月的YearMonth
        YearMonth lastMonth = YearMonth.now().minusMonths(1);

        // 上个月的第一天
        LocalDate firstDayOfLastMonth = lastMonth.atDay(1);
        // 上个月的最后一天
        LocalDate lastDayOfLastMonth = lastMonth.atEndOfMonth();

        // 转换为时间戳
        long firstDayTimestamp = firstDayOfLastMonth.atStartOfDay(ZoneId.systemDefault())
                .toInstant().toEpochMilli();
        long lastDayTimestamp = lastDayOfLastMonth.atTime(23, 59, 59, 999_000_000)
                .atZone(ZoneId.systemDefault())
                .toInstant().toEpochMilli();

        map.put("lastMonth", firstDayTimestamp);
        map.put("currentMonth", lastDayTimestamp);

        return map;
    }

    // 6.找到当前日子的时间戳范围
    public static Map<String, Long> getCurrentDate() {
        Map<String, Long> map = new HashMap<>();
        // 获取今天的日期
        LocalDate today = LocalDate.now();

        // 当天0点
        LocalDateTime startOfDay = today.atStartOfDay();
        // 当天23:59:59.999
        LocalDateTime endOfDay = startOfDay.plusDays(1).minusNanos(1);

        // 转换为时间戳
        long startTimestamp = startOfDay.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        long endTimestamp = endOfDay.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

        map.put("startDate", startTimestamp);
        map.put("endDate", endTimestamp);

        return map;
    }

    // 7.找当前时间的小时的开始时间的区间范围
    public static Map<String, Long> getCurrentHourToHourEndTime() {
        Map<String, Long> map = new HashMap<>();
        // 获取当前时间
        LocalDateTime now = LocalDateTime.now();

        // 当前小时的开始时间（00分00秒）
        LocalDateTime startOfHour = now.truncatedTo(ChronoUnit.HOURS);
        // 当前小时的结束时间（59分59秒999毫秒）
        LocalDateTime endOfHour = startOfHour.plusHours(1).minusNanos(1);

        // 转换为时间戳
        long startTimestamp = startOfHour.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        long endTimestamp = endOfHour.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

        map.put("startHour", startTimestamp);
        map.put("endHour", endTimestamp);

        return map;
    }
}
