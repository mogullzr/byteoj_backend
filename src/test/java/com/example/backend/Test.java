package com.example.backend;

import com.alibaba.nacos.shaded.com.google.gson.JsonObject;
import com.alibaba.nacos.shaded.com.google.gson.JsonParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class Test {
    public static void main(String[] args) throws IOException {
        // 记录开始时间（毫秒）
        long startTime = System.currentTimeMillis();

        System.out.println(test());

//        System.out.println("解析结果: " + address);


        // 记录结束时间并计算耗时（毫秒）
        long endTime = System.currentTimeMillis();
        long duration = endTime - startTime;

        System.out.println("总耗时: " + duration + " 毫秒");
    }

    private static String test() {
        // 设置请求头
        String url = "https://api.map.baidu.com/location/ip";
        String userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36";
        String referer = "https://leetcode.cn/contest/";
        String contentType = "application/json";

        try {
            // 发送 POST 请求
            Document doc = Jsoup.connect(url)
                    .userAgent(userAgent)
                    .header("Referer", referer)
                    .header("Content-Type", contentType)
                    .ignoreContentType(true) // 忽略内容类型检查
                    .data("ak", "BMrf2UNVSe91v7V2pWmRNKXeVssbv2MC")
                    .data("ip", "39.168.158.120")
                    .data("coor", "bd09ll")
                    .get();


            // 获取返回的 JSON 字符串
            String jsonResponse = doc.body().text();

            // 使用 Gson 解析 JSON
            JsonObject jsonObj = JsonParser.parseString(jsonResponse).getAsJsonObject();

            // 检查状态码（假设 status=0 表示成功）
            if (jsonObj.has("status") && jsonObj.get("status").getAsInt() != 0) {
                return ""; // 状态码非 0，返回空字符串
            }

            // 检查 content 和 address 是否存在
            if (jsonObj.has("content")) {
                JsonObject contentObj = jsonObj.getAsJsonObject("content");
                if (contentObj.has("address")) {
                    return contentObj.get("address").getAsString();
                }
            }

            return ""; // 如果 content 或 address 不存在，返回空字符串
        } catch (Exception e) {
            return ""; // 请求或解析出错，返回空字符串
        }
    }
}
