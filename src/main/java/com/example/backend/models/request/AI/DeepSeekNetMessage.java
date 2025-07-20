package com.example.backend.models.request.AI;

import lombok.AllArgsConstructor;
import lombok.Data;
import java.util.List;

@Data
@AllArgsConstructor
public class DeepSeekNetMessage {
    /**
     * 每一小段内容
     */
    private String content;
    /**
     * 顺序编号
     */
    private Integer id;
}