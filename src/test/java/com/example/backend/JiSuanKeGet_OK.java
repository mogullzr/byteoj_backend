package com.example.backend;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.List;
import java.util.Map;
import java.io.IOException;

public class JiSuanKeGet_OK {

    public static void main(String[] args) throws IOException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://www.jisuanke.com/api/contests?page=1&hasParticipated=0")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
                .header("Referer", "https://www.jisuanke.com/contests")
                .header("Cookie", "XSRF-TOKEN=P6WmnfAqKv4s8S46qIqeAlDqMASPVohx; JESONG_USER_ID=01000000012825053748204996651256; medium_arr=%5B%5D; medium_play=%5B%5D; medium_play_end=%5B%5D; visitor_once=%5B%5D; visitor_medium=%5B%5D; askMode=1; jesong_lastServiceUser=EASYLIAOU3I4eklDbXliY3VkVysyaFV0VllZdz09; acw_tc=25274014384e9992d1fca1e5898a3c57804a1111f26ae525914ef33b5eab3a19; Hm_lvt_183e07aa097a1758fd6d45349e74c327=1740537480,1740901834; HMACCOUNT=3D9E0218E5314E61; Hm_lpvt_183e07aa097a1758fd6d45349e74c327=1740901873; s=eyJpdiI6IlhVQXdPdHAwcGRoWTJLYk51Nm1OUFE9PSIsInZhbHVlIjoieUhOSEJnZVhjNkdsM0RkUktaRENGVWtocE4wN010YUp6cWdITUZJd2RpTnE3QTZPaHJud2trQmhlNjRhdGVhYjliQ2pERC9qbUoxc1R4Vy9KME1HdUVIVldGTlMxZGExdjJ0TUpQSjE4TWdHMXA1cytrTE1oZmVqN0k2ZUJGaE0iLCJtYWMiOiIwM2I0Njc2NjAzZTljZjZlNWJmZDAxNGFlMzRmMTRkODljNzc3MWMwZjFmMTdkYmE5ZmJkOGNiNzY2MjE4YjZiIn0%3D")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();
        String jsonData = String.valueOf(doc.text());
        try {
            // 使用 Jackson 解析 JSON 数据
            ObjectMapper objectMapper = new ObjectMapper();
            Map<String, Object> data = objectMapper.readValue(jsonData, Map.class);

            // 提取 "promoting" 部分
            List<Map<String, Object>> promotingContests = (List<Map<String, Object>>) data.get("promoting");

            // 遍历每个竞赛信息
            for (Map<String, Object> contest : promotingContests) {
                // 提取所需字段
                String title = (String) contest.get("title");
                int contestId = (int) contest.get("contestId");
                String startTime = (String) contest.get("startTime");
                String rule = (String) contest.get("rule");
                int durationMinutes = (int) contest.get("duration");
                double durationHours = durationMinutes / 60.0; // 将分钟转换为小时

                // 输出竞赛信息
                System.out.println("竞赛标题: " + title);
                System.out.println("竞赛 ID: " + contestId);
                System.out.println("开始时间: " + startTime);
                System.out.println("规则: " + rule);
                System.out.println("时长 (小时): " + durationHours);
                System.out.println("-----------------------------");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
