package com.example.backend.models.enums;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;

import java.util.Locale;

/** Controls feedback length only; every tier keeps the same grading policy and input evidence. */
public enum GradingDetail {
    SUPREME, STANDARD, BASIC, DEEP;

    public boolean isDetailed() {
        return this == SUPREME || this == DEEP;
    }

    public static GradingDetail from(String value) {
        if (value == null || value.isBlank()) return SUPREME;
        try {
            return valueOf(value.trim().toUpperCase(Locale.ROOT));
        } catch (IllegalArgumentException e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "判卷档位必须为 SUPREME、STANDARD、BASIC 或 DEEP");
        }
    }
}
