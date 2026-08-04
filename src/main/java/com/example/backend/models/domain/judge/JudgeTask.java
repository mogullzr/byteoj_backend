package com.example.backend.models.domain.judge;

import com.fasterxml.jackson.annotation.JsonInclude;  // 新增：防空字段
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)  // 新增：序列化时忽略null字段，但空对象转{}
public class JudgeTask implements Serializable {
    private String taskId;  // 必填
    private String taskType; // DEBUG 或 SUBMIT
    private Long submissionId;
    /** 任务入队时分配的沙箱索引，范围为 0-9。 */
    private Integer sandboxIndex;
    private String status;  // "running", "success"
    private Integer score = 0;  // 默认0，非空
    private String message = "处理中...";  // 默认消息，非空
    private Long userUuid = 0L;  // 默认0
    private Date submitTime = new Date();  // 默认当前时间，非空
    private String input = "";  // 前端用，默认空字符串
    private String output = "";
    private String correctOutput = "";
    private String fileId = "";
    private Long time;
    private Long memory;
    // 其他字段...
}
