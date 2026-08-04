package com.example.backend.controller;

import cn.hutool.core.date.DateTime;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.request.user.MonitorUserRegisterRequest;
import com.example.backend.models.request.user.MonitorUserRequest;
import com.example.backend.models.vo.MonitorUserVo;
import com.example.backend.service.user.MonitorUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@RestController
@RequestMapping("/heartbeat")
public class HeartbeatController {
    @Autowired
    private MonitorUserService monitorUserService;

    // 已知客户端（首次上线后加入）
    private static final Set<String> KNOWN_CLIENTS = ConcurrentHashMap.newKeySet();

    // ========== 配置参数 ==========
    private static final String VALID_TOKEN = "yK2lO6jA2fG8jO4nP8rZ2nK9cF4sF6lM"; // ←←← 必须和 Python 客户端一致！

    private static final double MIN_INTERVAL = 2.0;   // 客户端最小间隔（秒）
    private static final double MAX_INTERVAL = 6.0;   // 客户端最大间隔（秒）
    private static final double TOLERANCE = 0.1;      // 时间容差 ±100ms

    // 掉线判定阈值 = 最大可能间隔 + 容差 + 安全余量
    private static final long OFFLINE_THRESHOLD_MS = (long) ((MAX_INTERVAL + 1.0) * 1000); // 7000 ms

    // 客户端状态最多保留 6 小时（防止内存无限增长）
    private static final long CLIENT_MAX_TTL_MS = 6 * 3600_000L;
    // =================================

    // 存储每个客户端的初始时间 t0（用于验证 seq 合法性）
    private static final Map<String, Long> CLIENT_T0 = new ConcurrentHashMap<>();

    // 存储每个客户端最后一次心跳时间（毫秒）
    private static final Map<String, Long> LAST_HEARTBEAT = new ConcurrentHashMap<>();

    /**
     * 接收心跳请求
     */
    @PostMapping("/")
    public ResponseEntity<?> heartbeat(
            @RequestHeader("X-Auth-Token") String token,
            @RequestParam String clientId,
            @RequestParam int seq) {

        // 1. 认证
        if (!VALID_TOKEN.equals(token)) {
            return ResponseEntity.status(401).body("Unauthorized");
        }

        long nowMs = System.currentTimeMillis();
        double nowSec = nowMs / 1000.0;

        // 2. 首次注册：估算 t0
        if (seq == 1) {
            double firstDelay = (MIN_INTERVAL + MAX_INTERVAL) / 2.0;
            long estimatedT0 = (long) ((nowSec - firstDelay) * 1000); // 转为毫秒存储
            CLIENT_T0.put(clientId, estimatedT0);
            System.out.println("🆕 新客户端上线: " + clientId);

            // 注意！！！！，上线时间确定
            MonitorUserRequest monitorUserRequest = new MonitorUserRequest();
            monitorUserRequest.setClient_id(clientId);
            monitorUserRequest.setDis_connect_time(new DateTime());
            monitorUserService.modify(monitorUserRequest, 1);
        }

        // 3. 获取 t0
        Long t0Ms = CLIENT_T0.get(clientId);
        if (t0Ms == null) {
            return ResponseEntity.badRequest().body("Client not initialized. Send seq=1 first.");
        }
        double t0Sec = t0Ms / 1000.0;

        // 4.验证时间合法性
        double earliest = t0Sec + seq * MIN_INTERVAL;
        double latest = t0Sec + seq * MAX_INTERVAL;
        double windowStart = earliest - TOLERANCE;
        double windowEnd = latest + TOLERANCE;

        if (nowSec >= windowStart && nowSec <= windowEnd) {
            // ✅ 合法心跳
            LAST_HEARTBEAT.put(clientId, nowMs);
            System.out.printf("✅ [%s] seq=%d 合法\n", clientId, seq);
            return ResponseEntity.ok().build();
        } else {
            // ❌ 非法（太快/太慢/重放）
            System.err.printf("❌ [%s] seq=%d 非法! 当前=%.3f, 窗口=[%.3f, %.3f]\n",
                    clientId, seq, nowSec, windowStart, windowEnd);
            return ResponseEntity.status(403).body("Invalid timing");
        }
    }

    @PostMapping("/register")
    public BaseResponse<Boolean> register(@RequestBody MonitorUserRegisterRequest monitorUserRegisterRequest) {
        boolean result = monitorUserService.add(monitorUserRegisterRequest);
        return ResultUtils.success(result);
    }

    @GetMapping("/vo")
    public BaseResponse<List<MonitorUserVo>> monitorUserListVo(@RequestParam(required = false) String clientId, @RequestParam(required = false) String username, @RequestParam Integer pageNum, @RequestParam(required = false) Integer status) {
        List<MonitorUserVo> monitorUserVos = monitorUserService.search(clientId, username, pageNum, status);
        return ResultUtils.success(monitorUserVos);
    }
    /**
     * 后台任务：定期扫描掉线客户端
     */
    @PostConstruct
    public void startOfflineDetector() {
        Thread detector = new Thread(() -> {
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    Thread.sleep(3000); // 每3秒检查一次
                    long now = System.currentTimeMillis();

                    // 扫描所有客户端
                    for (String clientId : LAST_HEARTBEAT.keySet()) {
                        Long lastTime = LAST_HEARTBEAT.get(clientId);
                        if (lastTime == null) continue;

                        // 检查是否掉线
                        if (now - lastTime > OFFLINE_THRESHOLD_MS) {
                            System.err.println("🚨🚨🚨 客户端掉线警报 🚨🚨🚨");
                            System.err.println("   客户端ID: " + clientId);
                            System.err.println("   最后心跳: " + Instant.ofEpochMilli(lastTime));
                            System.err.println("   当前时间: " + Instant.ofEpochMilli(now));
                            System.err.println("   掉线原因: 超过 " + (OFFLINE_THRESHOLD_MS / 1000) + " 秒无心跳！");
                            System.err.println("----------------------------------------");

                            // TODO 可在此处集成：邮件、短信、数据库记录、WebSocket 推送监考大屏等
                            // 更新数据库即可
                            MonitorUserRequest monitorUserRequest = new MonitorUserRequest();
                            monitorUserRequest.setClient_id(clientId);
                            monitorUserRequest.setDis_connect_time(new DateTime());
                            monitorUserService.modify(monitorUserRequest, 2);

                            // 清理状态（避免重复告警）
                            LAST_HEARTBEAT.remove(clientId);
                            CLIENT_T0.remove(clientId);


                        }
                    }

                    // 清理长期未活动的残留数据（安全兜底）
                    if (now % 60_000 < 3000) { // 每分钟清理一次
                        LAST_HEARTBEAT.entrySet().removeIf(entry ->
                                (now - entry.getValue()) > CLIENT_MAX_TTL_MS
                        );
                        CLIENT_T0.entrySet().removeIf(entry ->
                                (now - entry.getValue()) > CLIENT_MAX_TTL_MS
                        );
                    }

                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, "Offline-Detector");
        detector.setDaemon(true);
        detector.start();
    }
}