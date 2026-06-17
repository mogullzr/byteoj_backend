package com.example.backend;

import org.codehaus.jackson.map.ObjectMapper;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public class LeetCodeGet_OK {
    public static void main(String[] args) throws IOException {
        // 设置请求头
        String url = "https://leetcode.cn/graphql";
        String userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36";
        String referer = "https://leetcode.cn/contest/";
        String contentType = "application/json";

        // 设置请求参数
        String query = "{\n  contestUpcomingContests {\n    containsPremium\n    title\n    cardImg\n    titleSlug\n    description\n    startTime\n    duration\n    originStartTime\n    isVirtual\n    isLightCardFontColor\n    company {\n      watermark\n      __typename\n    }\n    __typename\n  }\n}\n";
        String jsonParams = "{\"operationName\":null,\"variables\":{},\"query\":\"" + query.replace("\n", "\\n") + "\"}";

        // 发送 POST 请求
        Document doc = Jsoup.connect(url)
                .userAgent(userAgent)
                .header("Referer", referer)
                .header("Content-Type", contentType)
                .ignoreContentType(true) // 忽略内容类型检查
                .requestBody(jsonParams)
                .post();

        // 获取 JSON 数据
        String jsonData = doc.text();

        try {
            // 使用 Jackson 解析 JSON 数据
            ObjectMapper objectMapper = new ObjectMapper();
            Map<String, Object> data = objectMapper.readValue(jsonData, Map.class);

            // 提取 "contestUpcomingContests" 部分
            List<Map<String, Object>> contests = (List<Map<String, Object>>) ((Map<String, Object>) data.get("data")).get("contestUpcomingContests");

            // 遍历每个竞赛信息
            for (Map<String, Object> contest : contests) {
                // 提取所需字段
                String title = (String) contest.get("title");
                int startTime = (int) contest.get("startTime");
                int duration = (int) contest.get("duration");

                // 转换时间戳为北京时间
                String beijingTime = convertTimestampToBeijingTime(startTime);

                // 转换时长为小时格式
                double durationHours = duration / 3600.0;

                // 输出竞赛信息
                System.out.println("竞赛标题: " + title);
                System.out.println("开始时间: " + beijingTime);
                System.out.println("时长 (小时): " + durationHours);
                System.out.println("-----------------------------");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    // 将时间戳转换为北京时间
    private static String convertTimestampToBeijingTime(int timestamp) {
        java.util.Date date = new java.util.Date((long) timestamp * 1000);
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+8")); // 设置为北京时间
        return sdf.format(date);
    }
}