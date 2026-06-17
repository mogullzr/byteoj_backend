package com.example.backend.models.vo.problem;

import lombok.Data;

import java.util.List;

@Data
public class ProblemTagsVo {
    /**
     * 标签分类
     */
    private String category;

    /**
     * 标签名称
     */
    private List<String> tag_list;

}
