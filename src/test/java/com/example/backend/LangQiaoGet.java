package com.example.backend;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.io.IOException;

public class LangQiaoGet {
    public static void main(String[] args) throws IOException, ParseException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://www.lanqiao.cn/api/v2/contests/?sort=opentime&paginate=0&status=not_finished&game_type_code=2")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36")
                .header("accept","text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
                .header("accept-encoding", "gzip, deflate, br, zstd")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();
        String data = String.valueOf(doc.text());
        // 解析 JSON
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode contests = objectMapper.readTree(data);

        // 遍历每个竞赛
        for (JsonNode contest : contests) {
            // 提取字段
            int id = contest.get("id").asInt();
            String name = contest.get("name").asText();
            String openAt = contest.get("open_at").asText();
            String endAt = contest.get("end_at").asText();
            String htmlUrl = contest.get("html_url").asText();
            int usersCount = contest.get("users_count").asInt();
            int difficulty = contest.get("difficulty").asInt();
            int gameTypeCode = contest.get("game_type_code").asInt();

            // 计算比赛时长（小时）
            double durationHours = calculateDurationHours(openAt, endAt);

            // 定义输入格式
            SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX");

            // 定义输出格式（北京时间）
            SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            // 解析时间
            Date openAt_date = inputFormat.parse(openAt);
            Date endAt_date = inputFormat.parse(endAt);

            // 格式化为北京时间
            openAt = outputFormat.format(openAt_date);
            endAt = outputFormat.format(endAt_date);

            // 输出结果
            System.out.println("ID: " + id);
            System.out.println("名称: " + name);
            System.out.println("开始时间: " + openAt);
            System.out.println("结束时间: " + endAt);
            System.out.println("比赛时长: " + durationHours + "h");
            System.out.println("URL: " + htmlUrl);
            System.out.println("参与人数: " + usersCount);
            System.out.println("难度: " + difficulty);
            System.out.println("比赛类型: " + gameTypeCode);
            System.out.println("-----------------------------");
        }
    }

    // 计算比赛时长（小时）
    private static double calculateDurationHours(String openAt, String endAt) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX");
        Date startDate = format.parse(openAt);
        Date endDate = format.parse(endAt);

        // 计算时间差（毫秒）
        long durationMillis = endDate.getTime() - startDate.getTime();

        // 转换为小时（保留一位小数）
        double durationHours = durationMillis / (1000.0 * 60 * 60);
        return Math.round(durationHours * 10) / 10.0;
    }
}
