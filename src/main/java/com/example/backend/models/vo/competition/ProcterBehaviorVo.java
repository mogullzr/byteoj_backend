package com.example.backend.models.vo.competition;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

@Data
@AllArgsConstructor
public class ProcterBehaviorVo implements Serializable {
    private static final long serialVersionUID = -1798954859176695843L;
    /**
     * 行为类型
     */
    private String type;

    /**
     * 描述
     */
    private String description;

    /**
     * 安全程度
     */
    private String severity;
}
