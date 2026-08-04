package com.example.backend.models.vo.algorithm.generation;

import lombok.Data;

import java.io.Serializable;

@Data
public class GeneratedCasePreviewVO implements Serializable {
    private Integer index;
    private String scale;
    private String inputPreview;
    private String outputPreview;
    private Integer inputLength;
    private Integer outputLength;
    private String inputSha256;
    private String outputSha256;
    private Boolean inputTruncated;
    private Boolean outputTruncated;
}
