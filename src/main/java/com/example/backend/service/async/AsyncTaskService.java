package com.example.backend.service.async;

import com.example.backend.models.request.JudgeRequest;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AsyncTaskService {

    @Autowired
    private ProblemAlgorithmService problemAlgorithmService;  // 你的原Service

    @Autowired
    private ObjectMapper objectMapper;

    // 通用处理方法（反射调用原Service方法）
    public Object processTask(String methodName, String className, String paramsJson, Long userId, String taskId) throws Exception {
        // 示例：如果是judge/submit，调用problemAlgorithmService.processJudge
        if ("problemAlgorithmJudgeSubmit".equals(methodName)) {
            // 反序列化参数（假设第一个是JudgeRequest，第二个是userId）
            Object[] args = objectMapper.readValue(paramsJson, new TypeReference<Object[]>() {});
            JudgeRequest request = (JudgeRequest) args[0];
            return problemAlgorithmService.problemAlgorithmSubmit(request, userId);
        }
        // 加新接口？在这里加if分支，或用反射动态调用
        // else if ("newMethod".equals(methodName)) { ... }

        throw new RuntimeException("未知方法: " + methodName);
    }
}