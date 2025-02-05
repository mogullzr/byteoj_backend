package com.example.backend.common;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum SearchDifficutlyEnum {
    EASY("简单", "easy"),
    MEDIUM("中等", "medium"),
    DIFFICULT("困难", "difficult");
    private final String text;

    private final String value;

    SearchDifficutlyEnum(String text, String value) {
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
    public static SearchDifficutlyEnum getEnumByValue(String value) {
        if (ObjectUtils.isEmpty(value)) {
            return null;
        }
        for (SearchDifficutlyEnum anEnum : SearchDifficutlyEnum.values()) {
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
