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
        Object contentObj = deepSeekMessage.getContent();
        String content;

        if (contentObj instanceof String) {
            // 情况 A：如果是纯文本模式（旧代码兼容）
            content = (String) contentObj;
        } else if (contentObj instanceof List) {
            // 情况 B：如果是多模态模式（新代码）
            // 注意：这里不能直接转成 String，因为它是 [{type:"text"...}, {type:"image"...}]
            // 如果你只是想简单看看，可以转成 JSON 字符串打印，或者提取其中的文本
            List<DeepSeekMessage.ContentItem> contentList = (List<DeepSeekMessage.ContentItem>) contentObj;

            // 示例：提取所有文本部分拼接起来（忽略图片）
            StringBuilder sb = new StringBuilder();
            for (DeepSeekMessage.ContentItem item : contentList) {
                if ("text".equals(item.getType()) && item.getText() != null) {
                    sb.append(item.getText());
                }
            }
            content = sb.toString();
        } else {
            content = contentObj != null ? contentObj.toString() : "";
        }


        if (status == 1) {
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
        } else if (status == 2) {
            String PROMPT_TEMPLATE = """
                    你是一个先进的AI个性化学习路径推荐引擎，专为用户提供数据驱动、结构化的学习/职业/技能发展计划。你的推荐基于用户输入的目标、当前水平、额外描述，以及海量学习数据模式分析（典型学习曲线、成功路径统计、资源有效性评估）。输出必须专业、客观、中性，像一个智能算法系统生成的报告，而不是人类对话。
                                用户输入的目标/关键词/描述：
                                「%s」
                                额外信息（当前水平、时间限制、偏好等，如果没有则忽略）：
                                第一步：分析用户意图
                                - 自动归纳核心目标领域（e.g. 考试备考、职业技能入门、兴趣自学、副业发展等）
                                - 推断合理难度与周期（基于典型用户数据）
                                - 识别关键挑战与优先级
                                第二步：生成推荐路径
                                输出严格遵守以下结构，不要添加任何多余解释、问候、鼓励或第一人称内容：
                                **推荐学习路径报告**
                                **目标分析**
                                基于你的输入，我们分析得出主要目标为：[一句话客观描述核心目标]
                                适用人群：适合[客观描述典型用户群体，例如“零基础本科生，目标通过四六级并提升英语应用能力”]
                                预计总周期：[X个月 / X周]（参考同类用户平均完成时间与成功率）
                                每日建议投入时间：[X-Y小时]（考虑可持续性与学习效率曲线）
                                **路径阶段详情**
                                阶段 1：[阶段名称，例如“基础构建阶段”]
                                预计时长：[X周]
                                核心目标：[1-2句客观描述该阶段要达成的关键里程碑]
                                推荐学习顺序与具体任务（按天/周拆分，可立即执行）：
                                - [具体任务1，例如“第1-3天：完成XX教材第1-3章阅读，并完成章节后习题（共约80道）”]
                                - [具体任务2]
                                - ...
                                推荐资源（优先高性价比、易获取、经用户数据验证有效的）：
                                - [资源1：具体名称 + 获取方式，例如“B站 ‘XXX老师 四六级词汇课’ 全程免费，共32讲，建议观看速度1.2x”]
                                - [资源2：书籍章节 / GitHub仓库 / 平台课程链接提示]
                                量化练习要求：
                                - [例如“完成至少3套四六级真题（2019-2022年），正确率目标≥75%”]
                                - 小型项目/输出要求：[例如“构建一个包含5个自动化测试用例的GitHub仓库”]
                                注意事项与优化建议：[客观列出常见失败点及应对，例如“避免直接跳过基础语法，数据表明此阶段跳过会导致后期正确率下降30%”]
                                阶段 2：[阶段名称]
                                ...（重复以上格式，阶段总数4-8个）
                                **总体优化建议**
                                - 关键里程碑追踪指标：[列出3-5个可量化的检查点，例如“第4周结束时，四六级模拟分≥450”]
                                - 潜在风险与调整策略：[客观描述]
                                - 资源优先级排序依据：[简要说明为什么这些资源被选中，例如“基于用户反馈完成率与提升幅度”]
                                输出语言要求：
                                - 完全客观、专业、结构化
                                - 使用第三人称或“系统推荐”“基于分析”
                                - 避免任何情感化、口语化、鸡汤、吐槽或“我”字
                                - 所有任务必须具体到“可当天执行”的程度，包含量化目标
                                - 严格遵守：
                                  - 禁止使用任何第一人称（我、我们、你好、兄弟、姐妹等）
                                  - 禁止任何情感词、鼓励语、鸡汤、吐槽、幽默、感叹号过多
                                  - 禁止口语化表达（哎呀、千万别、冲就完事儿了、苟住等）
                                  - 禁止比喻、故事、个人经历
                                  - 所有句子必须正式、客观、中性，像学术报告或数据仪表盘输出
                                  - 每条任务必须包含量化指标（时长、数量、目标分数、章节号等）
                                  - 如果内容涉及主观建议，必须用“数据表明”“典型路径显示”“用户反馈显示”等客观化表述
                                  - 输出不允许出现任何问句、互动引导、欢迎辞
                    """;
            // 此处的 code 为前端传输的标志内容
            content = String.format(PROMPT_TEMPLATE, code);
        }


        deepSeekMessage.setContent(content);
        messageList.set(messageList.size() - 1, deepSeekMessage);

        return messageList;
    }
}
