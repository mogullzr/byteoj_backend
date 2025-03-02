package com.example.backend;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class CodeChef_OK {
    public static void main(String[] args) throws IOException, ParseException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://www.codechef.com/api/list/contests/all?sort_by=START&sorting_order=asc&offset=0&mode=all")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();
        String data = String.valueOf(doc.text());
        // 解析 JSON
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode rootNode = objectMapper.readTree(data);
        JsonNode futureContests = rootNode.get("future_contests");

        // 遍历 future_contests
        for (JsonNode contest : futureContests) {
            // 提取字段
            String contestCode = contest.get("contest_code").asText();
            String contestName = contest.get("contest_name").asText();
            String startDateIso = contest.get("contest_start_date_iso").asText();
            String endDateIso = contest.get("contest_end_date_iso").asText();
            int durationMinutes = contest.get("contest_duration").asInt();
            int joins = contest.get("distinct_users").asInt();

            // 转换为北京时间
            String beijingStartDate = convertToBeijingTime(startDateIso);
            String beijingEndDate = convertToBeijingTime(endDateIso);

            // 将时长转换为小时
            String durationHours = convertMinutesToHours(durationMinutes);

            // 输出结果
            System.out.println("竞赛代码: " + contestCode);
            System.out.println("竞赛名称: " + contestName);
            System.out.println("开始时间 (北京时间): " + beijingStartDate);
            System.out.println("结束时间 (北京时间): " + beijingEndDate);
            System.out.println("比赛时长: " + durationHours);
            System.out.println("参加人数: " + joins + "人");
            System.out.println("-----------------------------");
        }
    }
    // 将 ISO 时间转换为北京时间
    private static String convertToBeijingTime(String isoTime) throws ParseException {
        SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX");
        isoFormat.setTimeZone(TimeZone.getTimeZone("UTC")); // 设置为 UTC 时间

        SimpleDateFormat beijingFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        beijingFormat.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai")); // 设置为北京时间

        Date date = isoFormat.parse(isoTime);
        return beijingFormat.format(date);
    }

    // 将分钟转换为小时（如 1.5h, 2.0h）
    private static String convertMinutesToHours(int minutes) {
        double hours = minutes / 60.0;
        return String.format("%.1fh", hours);
    }
}
