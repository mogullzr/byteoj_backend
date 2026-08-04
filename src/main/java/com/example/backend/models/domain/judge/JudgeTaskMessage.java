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
    
    /**
     * 沙箱索引（0, 1, 2，3，4, 5, 6, 7, 8, 9）
     * 用于标识该任务应该由哪个沙箱容器处理
     */
    private Integer sandboxIndex;
    private String taskType;
    /** SUBMIT 任务对应的持久化提交记录。DEBUG 任务为空。 */
    private Long submissionId;
}
