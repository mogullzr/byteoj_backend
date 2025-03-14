package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Component
@Slf4j
public class OJCompetitionCrawlerUtils {
    @Resource
    private OjCompetitionMapper ojCompetitionMapper;

    /**
     * 每8个小时爬一次
     * @throws IOException
     * @throws ParseException
     */
    @Scheduled(fixedRate = 1000 * 60 * 60 * 8)
    public void OJCompetitionCrawler() throws IOException, ParseException {
        // 1.Codeforces
        CodeForcesCrawler();

        // 2.Acwing
        AcwingCrawler();

        // 3.nowCoder
        NowCoderCrawler();

        // 4.leetcode
        LeetCodeCrawler();

        // 5.jisuanke
        JiSuanKeCrawler();

        // 6.lanqiao
        LanQiaoCrawler();

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

            // 查看之前是否插入过
            ojCompetitionIsExist(ojCompetition);
        }
    }

    private void ojCompetitionIsExist(OjCompetition ojCompetition) {
        QueryWrapper<OjCompetition> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("title", ojCompetition.getTitle());
        OjCompetition ojCompetitionSearch = ojCompetitionMapper.selectOne(queryWrapper);

        if (ojCompetitionSearch == null){
            ojCompetitionMapper.insert(ojCompetition);
        } else {
            ojCompetitionMapper.update(ojCompetition, queryWrapper);
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

    private void LanQiaoCrawler() throws ParseException, IOException {
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
            String name = contest.get("name").asText();
            String openAt = contest.get("open_at").asText();
            String endAt = contest.get("end_at").asText();
            String url = "https://www.lanqiao.cn/oj-contest/" + contest.get("html_url").asText().substring(contest.get("html_url").asText().indexOf("contests/") + "contests/".length(), contest.get("html_url").asText().indexOf("/challenges"));
            int usersCount = contest.get("users_count").asInt();
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

            // 查看之前是否插入过
            ojCompetitionIsExist(ojCompetition);
        }
    }

    private void JiSuanKeCrawler() throws IOException {
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
                OjCompetition ojCompetition = new OjCompetition();

                // 提取所需字段
                String title = (String) contest.get("title");
                String startTime = (String) contest.get("startTime");
                int durationMinutes = (int) contest.get("duration") * 60;
                String endTime = addSecondsToDateTime(startTime, durationMinutes);
                String rule = (String) contest.get("rule");
                String contest_url = "https://www.jisuanke.com/contest/" + contest.get("contestId");

                // 提取两个时间
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime startDateTime = LocalDateTime.parse(startTime, formatter);
                LocalDateTime endDateTime = LocalDateTime.parse(endTime, formatter);
                Date startDate = java.sql.Timestamp.valueOf(startDateTime);
                Date endDate = java.sql.Timestamp.valueOf(endDateTime);


                ojCompetition.setTitle(title);
                ojCompetition.setStart_time(startDate);
                ojCompetition.setEnd_time(endDate);
                ojCompetition.setPlatform("jisuanke");
                ojCompetition.setUrl(contest_url);
                ojCompetition.setUpdate_time(new Date());
                ojCompetition.setPicture("https://mogullzr001.oss-cn-beijing.aliyuncs.com/typora_img/202503072158374.jpg");
                if (Objects.equals(rule, "ACM")) {
                    ojCompetition.setPattern(0);
                } else if (Objects.equals(rule, "OI")) {
                    ojCompetition.setPattern(1);
                } else if (Objects.equals(rule, "IOI")) {
                    ojCompetition.setPattern(2);
                }

                // 查看之前是否插入过
                ojCompetitionIsExist(ojCompetition);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void LeetCodeCrawler() throws IOException {
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
            org.codehaus.jackson.map.ObjectMapper objectMapper = new org.codehaus.jackson.map.ObjectMapper();
            Map<String, Object> data = objectMapper.readValue(jsonData, Map.class);

            // 提取 "contestUpcomingContests" 部分
            List<Map<String, Object>> contests = (List<Map<String, Object>>) ((Map<String, Object>) data.get("data")).get("contestUpcomingContests");

            // 遍历每个竞赛信息
            for (Map<String, Object> contest : contests) {
                OjCompetition ojCompetition = new OjCompetition();

                // 提取所需字段
                String title = (String) contest.get("title");
                int startTime = (int) contest.get("startTime");
                int duration = (int) contest.get("duration");
                String picture = (String) contest.get("cardImg");
                String contest_url = "https://leetcode.cn/contest/" + contest.get("titleSlug");

                // 转换时间戳为北京时间
                String StartTime = convertTimestampToBeijingTime(startTime);
                String EndTime = addSecondsToDateTime(StartTime, duration);

                // 提取两个时间
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime startDateTime = LocalDateTime.parse(StartTime, formatter);
                LocalDateTime endDateTime = LocalDateTime.parse(EndTime, formatter);
                Date startDate = java.sql.Timestamp.valueOf(startDateTime);
                Date endDate = java.sql.Timestamp.valueOf(endDateTime);

                ojCompetition.setTitle(title);
                ojCompetition.setStart_time(startDate);
                ojCompetition.setEnd_time(endDate);
                ojCompetition.setPattern(0);
                ojCompetition.setPicture(picture);
                ojCompetition.setPlatform("LeetCode");
                ojCompetition.setUpdate_time(new Date());
                ojCompetition.setUrl(contest_url);

                // 查看之前是否插入过
                ojCompetitionIsExist(ojCompetition);

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
            // 查看之前是否插入过
            ojCompetitionIsExist(ojCompetition);
        }
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

                // 查看之前是否插入过
                ojCompetitionIsExist(ojCompetition);
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

                // 解析时间字符串为 LocalDateTime
                LocalDateTime startDateTime = LocalDateTime.parse(startTime, formatter);
                LocalDateTime endDateTime = LocalDateTime.parse(endTime, formatter);

                // 在原来的时间基础上加上8小时
                LocalDateTime startDateTimePlus8 = startDateTime.plusHours(8);
                LocalDateTime endDateTimePlus8 = endDateTime.plusHours(8);

                // 转换为 java.sql.Timestamp
                Date startDate = java.sql.Timestamp.valueOf(startDateTimePlus8);
                Date endDate = java.sql.Timestamp.valueOf(endDateTimePlus8);

                // 存储结果
                contestInfoList.add(new ContestInfo(name, startDate, endDate, id));
            }
        }

        // 插入
        for (ContestInfo info : contestInfoList) {
            OjCompetition ojCompetition = new OjCompetition();
            ojCompetition.setStart_time(info.getDate1());
            ojCompetition.setEnd_time(info.getDate2());
            ojCompetition.setTitle(info.getName());
            ojCompetition.setPlatform("Codeforces");
            ojCompetition.setPicture("https://mogullzr001.oss-cn-beijing.aliyuncs.com/typora_img/202503072214966.png");
            ojCompetition.setPattern(0);
            ojCompetition.setUrl("https://codeforces.com/contest/" + info.getId());
            ojCompetition.setUpdate_time(new Date());

            // 查看之前是否插入过
            ojCompetitionIsExist(ojCompetition);
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
