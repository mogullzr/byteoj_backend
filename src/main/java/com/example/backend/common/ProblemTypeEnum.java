package com.example.backend.common;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 搜索类型枚举
 */
public enum ProblemTypeEnum {
    Math("数学", "math"),
    GEE408("408考研"  , "408"),
    MYSQL("数据库", "mysql"),
    ASSEMBLY("汇编", "assembly");

    private final String text;

    private final String value;

    ProblemTypeEnum(String text, String value) {
        this.text = text;
        this.value = value;
    }

    /**
     * 获取列表值
     *
     * @return
     */
    public static List<String> getEnumByValue() {
        return Arrays.stream(values()).map(item->item.value).collect(Collectors.toList());
    }

    /**
     * 根据 value 获取枚举
     *
     * @param value
     * @return
     */
    public static ProblemTypeEnum getEnumByValue(String value) {
        if (ObjectUtils.isEmpty(value)) {
            return null;
        }
        for (ProblemTypeEnum anEnum : ProblemTypeEnum.values()) {
            if (anEnum.value.equals(value)) {
                return anEnum;
            }
        }
        return null;
    }

    public String getText() {
        return text;
    }

    public String getValue() {
        return value;
    }
}
