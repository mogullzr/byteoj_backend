package com.example.backend.models.domain.judge;

import com.example.backend.models.request.JudgeRequest;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

@Data
public class JudgeTaskMessage implements Serializable {
    private String taskId;
    private JudgeRequest judgeRequest;
    private Long userUuid;
    private Date createTime;
}