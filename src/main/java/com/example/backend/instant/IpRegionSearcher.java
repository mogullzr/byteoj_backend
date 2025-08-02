package com.example.backend.instant;

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

    public String searchFormatted(String ip) {
        try {
            String region = searcher.search(ip);
            return formatRegion(region);
        } catch (Exception e) {
            return "未知地区";
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