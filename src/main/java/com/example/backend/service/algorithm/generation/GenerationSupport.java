package com.example.backend.service.algorithm.generation;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.vo.algorithm.generation.GeneratedCasePreviewVO;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.HexFormat;

public final class GenerationSupport {
    private GenerationSupport() { }

    public static String sha256(String value) {
        try {
            return HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256").digest(value.getBytes(StandardCharsets.UTF_8)));
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    public static void requireSuccess(Judge result, String stage) {
        if (result == null || !("Accepted".equals(result.getStatus()) || "Finished".equals(result.getStatus()))) {
            String message = result == null ? "空响应" : result.getStatus() + " " + abbreviate(result.getOutput(), 300);
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, stage + "失败：" + message);
        }
    }

    public static GeneratedCasePreviewVO preview(int index, String scale, String input, String output, int maxChars) {
        GeneratedCasePreviewVO vo = new GeneratedCasePreviewVO();
        vo.setIndex(index);
        vo.setScale(scale);
        vo.setInputLength(input == null ? 0 : input.length());
        vo.setOutputLength(output == null ? 0 : output.length());
        vo.setInputPreview(abbreviate(input, maxChars));
        vo.setOutputPreview(abbreviate(output, maxChars));
        vo.setInputSha256(input == null ? null : sha256(input));
        vo.setOutputSha256(output == null ? null : sha256(output));
        vo.setInputTruncated(input != null && input.length() > maxChars);
        vo.setOutputTruncated(output != null && output.length() > maxChars);
        return vo;
    }

    public static String abbreviate(String value, int maxChars) {
        if (value == null) return "";
        return value.length() <= maxChars ? value : value.substring(0, maxChars) + "...";
    }
}
