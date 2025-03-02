package com.example.backend;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;

public class LuoguGet {
    public static void main(String[] args) throws IOException {
        // 连接到目标网站并获取HTML文档
        Document doc = Jsoup.connect("https://www.luogu.org/contest/list?page=1&_contentOnly=1")
                .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
                .ignoreContentType(true) // 忽略内容类型检查
                .followRedirects(true)
                .get();
        String html = String.valueOf(doc.body());
        // 开始解析内容获取其中非已结束片段的竞赛名称和相关信息
        // 使用Jsoup解析HTML
        doc = Jsoup.parse(html);
        System.out.println(doc);
    }
}
