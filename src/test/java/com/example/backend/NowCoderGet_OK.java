package com.example.backend;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.Arrays;

public class NowCoderGet_OK {
    public static void main(String[] args) throws IOException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://ac.nowcoder.com/acm/contest/vip-index")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
                .header("Referer", "https://ac.nowcoder.com/")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();
        String html = String.valueOf(doc.body());
        // 选择 div.platform-mod.js-current 下的竞赛信息
        Element platformMod = doc.selectFirst("div.platform-mod.js-current");
        Elements contests = platformMod.select(".platform-item.js-item");

        // 遍历每个竞赛
        for (Element contest : contests) {
            // 提取标题
            String title = contest.select("h4 > a").text();

            // 提取规则（如 Rated、IOI）
            String rule = contest.select("h4 > .tag-rating > span").text();
            String rule2 = contest.select("h4 > .match-tag").text();

            // 提取状态
            String status = contest.select(".match-status").text();

            // 提取参与人数
            String participants = contest.select(".joins-icon").text().replace("参与人数：", "");

            // 提取 Rating 限制
            String ratingLimit = contest.select(".icon-nc-flash2").text().replace("不计Rating的范围：", "");

            // 提取报名时间
            String signupTime = contest.select(".time-icon").text().replace("报名时间：", "").trim();

            // 提取比赛时间
            String matchTime = contest.select(".match-time-icon").text().replace("比赛时间：", "").trim();

            // 提取时长并转换为小时
            String durationText = matchTime.substring(matchTime.indexOf("时长:") + 3, matchTime.indexOf(")"));
            double durationHours = convertDurationToHours(durationText);

            // 输出结果
            System.out.println("标题: " + title);
            System.out.println("规则: " + rule + " " + rule2);
            System.out.println("状态: " + status);
            System.out.println("参与人数: " + participants);
            System.out.println("Rating 限制: " + ratingLimit);
            System.out.println("报名时间: " + signupTime);
            System.out.println("比赛时间: " + matchTime);
            System.out.println("时长 (小时): " + durationHours);
            System.out.println("-----------------------------");
        }
    }
    // 将时长转换为小时
    private static double convertDurationToHours(String durationText) {
        if (durationText.contains("小时") && durationText.contains("分钟")) {
            int hours = Integer.parseInt(Arrays.toString(new String[]{durationText.split("小时")[0]}).replace("[", "").replace("]", "").trim());
            int minutes = Integer.parseInt(Arrays.toString(new String[]{durationText.split("小时")[1]}).replace("[", "").replace("]", "").replace("分钟", "").trim());
            return hours + (minutes / 60.0);
        } else if (durationText.contains("小时")) {
            return Double.parseDouble(durationText.replace("小时", "").trim());
        } else if (durationText.contains("分钟")) {
            int minutes = Integer.parseInt(durationText.replace("分钟", "").trim());
            return minutes / 60.0;
        }
        return 0;
    }
}
