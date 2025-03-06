package com.example.backend.utils;

import com.example.backend.mapper.OjCompetitionMapper;
import com.example.backend.models.domain.spider.OjCompetition;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Component
@Slf4j
public class OJCompetitionCrawlerUtils {
    @Resource
    private OjCompetitionMapper ojCompetitionMapper;

    @Scheduled(fixedRate = 1000 * 60 * 60 * 24 * 7)
    public void OJCompetitionCrawler() throws IOException, ParseException {
        List<OjCompetition> ojCompetitions = new ArrayList<>();
        // 1.Codeforces
        CodeForcesCrawler();

        // 2.Acwing
        AcwingCrawler();
        
        // 3.nowCoder
        NowCoderCrawler();
        
        // 4.leetcode
//        LeetCodeCrawler();
        
        // 5.jisuanke
//        JiSuanKeCrawler();
        
        // 6.lanqiao
//        LangQiaoCrawler();
        
        // 7.CodeChef
        CodeChefCrawler();
    }

    private void CodeChefCrawler() throws IOException, ParseException {
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
            OjCompetition ojCompetition = new OjCompetition();

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

            // 转为Date
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime startDateTime = LocalDateTime.parse(beijingStartDate, formatter);
            LocalDateTime endDateTime = LocalDateTime.parse(beijingEndDate, formatter);
            Date startDate = java.sql.Timestamp.valueOf(startDateTime);
            Date endDate = java.sql.Timestamp.valueOf(endDateTime);

            ojCompetition.setTitle(contestName);
            ojCompetition.setPicture("https://mogullzr001.oss-cn-beijing.aliyuncs.com/typora_img/202503061253331.jpg");
            ojCompetition.setPlatform("CodeChef");
            ojCompetition.setUrl("https://www.codechef.com/" + contestCode);
            ojCompetition.setStart_time(startDate);
            ojCompetition.setEnd_time(endDate);
            ojCompetition.setUpdate_time(new Date());
            ojCompetition.setPattern(0);
            ojCompetition.setJoins(joins);

            ojCompetitionMapper.insert(ojCompetition);
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

    private void LangQiaoCrawler() throws ParseException, IOException {
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
            OjCompetition ojCompetition = new OjCompetition();

            // 提取字段
            int id = contest.get("id").asInt();
            String name = contest.get("name").asText();
            String openAt = contest.get("open_at").asText();
            String endAt = contest.get("end_at").asText();
            String url = contest.get("html_url").asText();
            int usersCount = contest.get("users_count").asInt();
            int difficulty = contest.get("difficulty").asInt();
            int gameTypeCode = contest.get("game_type_code").asInt();

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

            // 转为Date类型
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime startDateTime = LocalDateTime.parse(openAt, formatter);
            LocalDateTime endDateTime = LocalDateTime.parse(endAt, formatter);
            Date startDate = java.sql.Timestamp.valueOf(startDateTime);
            Date endDate = java.sql.Timestamp.valueOf(endDateTime);

            ojCompetition.setTitle(name);
            ojCompetition.setUrl(url);
            ojCompetition.setPicture("https://mogullzr001.oss-cn-beijing.aliyuncs.com/typora_img/202503061240770.jpg");
            ojCompetition.setStart_time(startDate);
            ojCompetition.setEnd_time(endDate);
            ojCompetition.setJoins(usersCount);
            ojCompetition.setPlatform("蓝桥杯");
            ojCompetition.setUpdate_time(new Date());
            ojCompetition.setPattern(gameTypeCode == 2 ? 0 : 2);
        }
    }

    private void JiSuanKeCrawler() {
    }

    private void LeetCodeCrawler() {
    }

    private void NowCoderCrawler() throws IOException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://ac.nowcoder.com/acm/contest/vip-index")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
                .header("Referer", "https://ac.nowcoder.com/")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();
        // 选择 div.platform-mod.js-current 下的竞赛信息
        Element platformMod = doc.selectFirst("div.platform-mod.js-current");
        Elements contests = platformMod.select(".platform-item.js-item");

        // 遍历每个竞赛
        for (Element contest : contests) {
            OjCompetition ojCompetition = new OjCompetition();

            // 提取标题
            String title = contest.select("h4 > a").text();

            // 提取规则（如 IOI）
            String rule2 = contest.select("h4 > .match-tag").text();

            // 提取地址
            String url = "https://ac.nowcoder.com" + contest.select(".platform-item-pic > a").attr("href");

            // 提取picture地址
            String picture = contest.select("img").get(0).attr("src");

            // 提取参与人数
            String participants = contest.select(".joins-icon").text().replace("参与人数：", "");

            // 提取比赛时间
            String matchTime = contest.select(".match-time-icon").text().replace("比赛时间：", "").trim();
            // 提取两个时间
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String[] parts = matchTime.split(" 至 ");
            String startTime = parts[0].trim() + ":00";
            String endTime = parts[1].split("\\(")[0].trim() + ":00";

            LocalDateTime startDateTime = LocalDateTime.parse(startTime, formatter);
            LocalDateTime endDateTime = LocalDateTime.parse(endTime, formatter);
            Date startDate = java.sql.Timestamp.valueOf(startDateTime);
            Date endDate = java.sql.Timestamp.valueOf(endDateTime);

            ojCompetition.setTitle(title);
            ojCompetition.setJoins(Integer.valueOf(participants));
            ojCompetition.setStart_time(startDate);
            ojCompetition.setEnd_time(endDate);
            ojCompetition.setUpdate_time(new Date());
            ojCompetition.setUrl(url);
            ojCompetition.setPicture(picture);
            if (Objects.equals(rule2, "IOI")) {
                ojCompetition.setPattern(1);
            } else {
                ojCompetition.setPattern(0);
            }
            ojCompetition.setPlatform("牛客");

            ojCompetitionMapper.insert(ojCompetition);
        }
    }

    private double convertDurationToHours(String durationText) {
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

    private void AcwingCrawler() throws IOException {
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
                OjCompetition ojCompetition = new OjCompetition();

                // 提取比赛名称
                String title = block.select("span.activity_title").text().trim();

                // 提取参加人数
                Integer joins = Integer.valueOf(block.select("span.activity_td").get(0).text().trim());

                // 提取开始时间
                String startTime = block.select("span.activity_td").get(1).text().trim();

                // 竞赛地址
                String url = "https://www.acwing.com" + block.select("a").get(0).attr("href");

                // 结束时间，由于时间固定位75min
                String endTime = addSecondsToDateTime(startTime, 75 * 60);

                // 开始时间和结束时间格式转换
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime startDateTime = LocalDateTime.parse(startTime, formatter);
                LocalDateTime endDateTime = LocalDateTime.parse(endTime, formatter);
                Date startDate = java.sql.Timestamp.valueOf(startDateTime);
                Date endDate = java.sql.Timestamp.valueOf(endDateTime);

                ojCompetition.setTitle(title);
                ojCompetition.setJoins(joins);
                ojCompetition.setUrl(url);
                ojCompetition.setPattern(0);
                ojCompetition.setPicture("https://cdn.acwing.com/media/activity/surface/QQ截图20210519235656_e5c7OQ1_6YSmOKI1_DsuiUVE.png");
                ojCompetition.setStart_time(startDate);
                ojCompetition.setEnd_time(endDate);
                ojCompetition.setPlatform("Acwing");
                ojCompetition.setUpdate_time(new Date());

                ojCompetitionMapper.insert(ojCompetition);
            }
        }
    }

    private void CodeForcesCrawler() throws IOException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://codeforces.com/api/contest.list")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
                .header("Referer", "https://codeforces.com")
                .ignoreContentType(true) // 忽略内容类型检查
                .get();


        String json = String.valueOf(doc.body().text());
        // 解析JSON数据
        Gson gson = new Gson();
        JsonObject jsonObject = gson.fromJson(json, JsonObject.class);
        JsonArray resultArray = jsonObject.getAsJsonArray("result");
        // 输入的JSON数据

        // 存储提取和转换后的结果
        List<ContestInfo> contestInfoList = new ArrayList<>();

        // 遍历数组，提取符合条件的对象
        for (JsonElement element : resultArray) {
            JsonObject contest = element.getAsJsonObject();
            String phase = contest.get("phase").getAsString();

            if ("BEFORE".equals(phase)) {
                String name = contest.get("name").getAsString();
                long startTimeSeconds = contest.get("startTimeSeconds").getAsLong();
                long durationSeconds = contest.get("durationSeconds").getAsLong();
                long id = contest.get("id").getAsLong();

                // 转换 start_time
                String startTime = convertSecondsToDateTime(startTimeSeconds); // 返回格式为 "yyyy-MM-dd HH:mm:ss"
                // 计算 end_time
                String endTime = addSecondsToDateTime(startTime, durationSeconds); // 返回格式为 "yyyy-MM-dd HH:mm:ss"

                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime startDateTime = LocalDateTime.parse(startTime, formatter);
                LocalDateTime endDateTime = LocalDateTime.parse(endTime, formatter);
                Date startDate = java.sql.Timestamp.valueOf(startDateTime);
                Date endDate = java.sql.Timestamp.valueOf(endDateTime);

                // 存储结果
                contestInfoList.add(new ContestInfo(name, startDate, endDate, id));
            }
        }

        // 输出结果
        for (ContestInfo info : contestInfoList) {
            OjCompetition ojCompetition = new OjCompetition();
            ojCompetition.setStart_time(info.getDate1());
            ojCompetition.setEnd_time(info.getDate2());
            ojCompetition.setTitle(info.getName());
            ojCompetition.setPlatform("Codeforces");
            ojCompetition.setPicture("https://codeforces.com/codeforces.org/s/42751/images/codeforces-sponsored-by-ton.png");
            ojCompetition.setPattern(0);
            ojCompetition.setUrl("https://codeforces.com/contestRegistrants/" + info.getId());
            ojCompetition.setUpdate_time(new Date());

            System.out.println(ojCompetition);
            ojCompetitionMapper.insert(ojCompetition);

        }
    }

    private static String addSecondsToDateTime(String dateTimeString, long secondsToAdd) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime dateTime = LocalDateTime.parse(dateTimeString, formatter);
        LocalDateTime newDateTime = dateTime.plusSeconds(secondsToAdd);
        return newDateTime.format(formatter);
    }

    /**
     * 将秒数转换为日期时间格式
     *
     * @param seconds 秒数
     * @return 日期时间字符串
     */
    private static String convertSecondsToDateTime(long seconds) {
        Date date = new Date(seconds * 1000L);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
        return sdf.format(date);
    }

    /**
     * 将秒数转换为持续时间（小时和分钟）
     *
     * @param seconds 秒数
     * @return 持续时间字符串
     */
    private static String convertSecondsToDuration(long seconds) {
        long hours = seconds / 3600;
        long minutes = (seconds % 3600) / 60;
        return hours + "小时" + minutes + "分钟";
    }

    /**
     * 用于存储竞赛信息的内部类
     */
    private static class ContestInfo {
        @Getter
        private  String name;
        @Getter
        private  Date date1;
        @Getter
        private  Date date2;
        @Getter
        private Long id;

        public ContestInfo(String name, Date date1, Date date2, Long id) {
            this.name = name;
            this.date1 = date1;
            this.date2 = date2;
            this.id = id;
        }
    }
}
