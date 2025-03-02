package com.example.backend;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class AcwingGet_OK {
    public static void main(String[] args) throws IOException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://www.acwing.com/activity/1/competition/")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
                .header("Referer", "https://www.acwing.com")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();
        String html = String.valueOf(doc.body());
        // 开始解析内容获取其中非已结束片段的竞赛名称和相关信息
        // 使用Jsoup解析HTML
        doc = Jsoup.parse(html);
        Elements activityBlocks = doc.select("div.activity-index-block");

        for (Element block : activityBlocks) {
            // 检查状态是否为“已结束”
            String status = block.select("span.activity_status").text().trim();
            if (!status.equals("已结束")) {
                // 提取比赛名称
                String title = block.select("span.activity_title").text().trim();

                // 提取参加人数
                String joinPeople = block.select("span.activity_td").get(0).text().trim();

                // 提取开始时间
                String startTime = block.select("span.activity_td").get(1).text().trim();

                // 输出结果
                System.out.println("比赛名称: " + title);
                System.out.println("参加人数: " + joinPeople);
                System.out.println("开始时间: " + startTime);
            } else {
                System.out.println("该活动已结束，跳过提取。");
            }
        }
    }
}
