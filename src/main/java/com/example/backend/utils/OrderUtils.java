package com.example.backend.utils;

import java.util.concurrent.atomic.AtomicInteger;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * 订单号生成工具类
 * 生成格式: yyyyMMddHHmmssSSS + 3位随机数 + 2位序列号 = 22位纯数字
 */
public class OrderUtils {

    private static final AtomicInteger sequence = new AtomicInteger(0);

    // 私有构造，防止实例化
    private OrderUtils() {}

    /**
     * 生成全局唯一订单号
     * @return 22位纯数字订单号
     */
    public static String generateOrderNo(String type) {
        // 时间戳（17位）：年月日时分秒毫秒
        String timestamp = LocalDateTime.now().format(
                DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS")
        );

        // 3位随机数（增加随机性）
        int random = (int) (Math.random() * 900) + 100; // 100-999

        // 2位序列号（同一毫秒内区分）
        int seq = sequence.incrementAndGet() % 100;
        if (seq == 0) {
            sequence.set(0); // 重置，避免溢出
        }

        return type + timestamp + random + String.format("%02d", seq);
    }
}