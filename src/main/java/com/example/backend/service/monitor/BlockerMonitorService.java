package com.example.backend.service.monitor;

import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Service
public class BlockerMonitorService {

    private final Map<String, LocalDateTime> onlineMachines = new ConcurrentHashMap<>();

    public void register(String machineId) {
        onlineMachines.put(machineId, LocalDateTime.now());
        System.out.println("[✅] AI防护上线: " + machineId);
    }

    public void unregister(String machineId) {
        onlineMachines.remove(machineId);
        System.err.println("[🚨] AI防护离线: " + machineId + " | 时间: " + LocalDateTime.now());
    }

    public int getOnlineCount() {
        return onlineMachines.size();
    }

    public Map<String, LocalDateTime> getOnlineMachines() {
        return Map.copyOf(onlineMachines); // 安全返回副本
    }
}