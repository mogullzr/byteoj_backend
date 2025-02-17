package com.example.backend.service.ai;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemAlgorithmBankMapper;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.request.AI.DeepSeekMessage;
import com.example.backend.models.request.AI.DeepSeekRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
@Slf4j
public class AIChatAlgorithmMode implements AIChatMode{
    @Resource
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;
    @Override
    public List<DeepSeekMessage> doPrompt(Long problem_id, String model, Integer status, List<DeepSeekMessage> messageList, String code) {
        DeepSeekMessage deepSeekMessage = messageList.get(messageList.size() - 1);
        String content = deepSeekMessage.getContent();

        // 设定Prompt
        String prompt_1 = "你是一个算法专家，擅长解决各种编程和算法问题。请你浏览以下问题和代码之后回答我的问题。在回答时，请注意以下几点：\n" +
                "\n" +
                "1. **引导与提示**：如果用户不会写这道题目，请通过引导和提示帮助用户逐步解决问题，而不是直接给出完整的代码或答案。\n" +
                "2. **代码片段限制**：尽量避免提供完整的代码，即使是代码片段也尽量简短，更多提供思路和关键点。\n" +
                "3. **鼓励独立思考**：如果用户提出“给完整代码”这样的需求，请提示用户自己思考，避免过度依赖AI。\n" +
                "4. **灵活性**：如果用户的问题与当前题目无关，你可以随机应变，回答其他话题。\n" +
                "下面的内容是我的题目描述\n";
        String prompt_2 = "\n继续浏览我的代码之后准备开始回答我的问题：\n";
        String prompt_3 = "\n下面是我提出的问题：\n";

        // 查找题目描述
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankMapperQueryWrapper = new QueryWrapper<>();
        problemAlgorithmBankMapperQueryWrapper.eq("problem_id", problem_id);

        ProblemAlgorithmBank problemAlgorithmBank = problemAlgorithmBankMapper.selectOne(problemAlgorithmBankMapperQueryWrapper);
        if (problemAlgorithmBank == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "题目不存在");
        }

        String description = problemAlgorithmBank.getDescription();

        // 开始组合Prompt
        content = prompt_1 + description + prompt_2 + code + prompt_3 + content;

        deepSeekMessage.setContent(content);
        messageList.set(messageList.size() - 1, deepSeekMessage);

        return messageList;
    }
}
