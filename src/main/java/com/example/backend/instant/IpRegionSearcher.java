package com.example.backend.instant;

import com.alibaba.nacos.shaded.com.google.gson.JsonObject;
import com.alibaba.nacos.shaded.com.google.gson.JsonParser;
import org.springframework.beans.factory.annotation.Value;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.lionsoul.ip2region.xdb.Searcher;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@Component
public class IpRegionSearcher {
    private Searcher searcher;

    @Value("${baidu.ipService.ak}")
    private String ak;

    @Value("${baidu.ipService.coor}")
    private String coor;

    @PostConstruct
    public void init() throws IOException {
        ClassPathResource resource = new ClassPathResource("ip2region.xdb");

        // 创建临时文件
        var tempFile = File.createTempFile("ip2region", ".xdb");
        tempFile.deleteOnExit(); // JVM退出时删除临时文件

        try (InputStream in = resource.getInputStream();
             FileOutputStream out = new FileOutputStream(tempFile)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = in.read(buffer)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
        }

        // 从临时文件加载
        byte[] cBuff = Searcher.loadContentFromFile(tempFile.getAbsolutePath());
        this.searcher = Searcher.newWithBuffer(cBuff);
    }

    /**
     * 无数次免费服务
     * @param ip ip地址
     * @return 查询到的地址对应位置信息
     */
    public String searchFormatted(String ip) {
        try {
            String region = searcher.search(ip);
            return formatRegion(region);
        } catch (Exception e) {
            return "未知地区";
        }
    }

    /**
     * 通过百度云服务查询IP更精确位置（每天最多5000次使用）
     *
     * @param ip IP地址
     * @return 精确到县城的位置区域
     */
    public String searchInfoFromBaidu(String ip) {
        try {
            // 调用百度地图的 IP 定位API接口
            String location = getBaiduApiLocation(ip);
            if (location == null || location.isEmpty()) {
                return searchFormatted(ip);
            }
            return location;
        } catch (Exception e) {
            return "未知地区";
        }
    }

    private String getBaiduApiLocation(String ip) throws IOException {
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
                    .ignoreContentType(true)
                    .data("ak", ak)
                    .data("ip", ip)
                    .data("coor", coor)
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

    private String formatRegion(String rawRegion) {
        if (rawRegion == null || rawRegion.isEmpty()) {
            return "未知地区";
        }

        String[] parts = rawRegion.split("\\|");
        if (parts.length < 5) {
            return rawRegion; // 返回原始格式如果不符合预期
        }

        // 提取有效部分
        String country = parts[0];
        String province = parts[2];
        String city = parts[3];
        String isp = parts[4];

        // 构建格式化字符串
        StringBuilder formatted = new StringBuilder();

        // 添加国家（如果非0）
        if (!"0".equals(country)) {
            formatted.append(country);
        }

        // 添加省份（如果非0且与国家不同）
        if (!"0".equals(province) && !province.equals(country)) {
            formatted.append(province);
        }

        // 添加城市（如果非0且与省份不同）
        if (!"0".equals(city) && !city.equals(province)) {
            formatted.append(city);
        }

        // 添加运营商（如果非0）
        if (!"0".equals(isp)) {
            if (formatted.length() > 0) {
                formatted.append(" - ");
            }
            // 运营商名称优化
            if (isp.equals("移动") || isp.equals("联通") || isp.equals("电信")) {
                formatted.append(isp).append("运营商");
            } else {
                formatted.append(isp);
            }
        }

        return formatted.length() > 0 ? formatted.toString() : "未知地区";
    }

    public void close() {
        if (searcher != null) {
            try {
                searcher.close();
            } catch (IOException e) {
                // 忽略关闭异常
            }
        }
    }
}