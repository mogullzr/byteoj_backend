package com.example.backend.exception;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;

public class ExceptionHolder {
    private static final ThreadLocal<Map<String, Exception>> exceptionStore =
        ThreadLocal.withInitial(LinkedHashMap::new);

    /**
     * 按优先级存储异常（避免覆盖）
     */
    public static void addException(String key, Exception ex) {
        if (!exceptionStore.get().containsKey(key)) {
            exceptionStore.get().put(key, ex);
        }
    }

    /**
     * 获取最高优先级的异常
     */
    public static Optional<Exception> getPrimaryException() {
        return exceptionStore.get().values().stream().findFirst();
    }

    /**
     * 清除当前线程的异常记录
     */
    public static void clear() {
        exceptionStore.remove();
    }
}