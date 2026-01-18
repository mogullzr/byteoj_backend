package com.example.backend.service.ai;

import cn.hutool.log.Log;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.request.AI.*;
import com.example.backend.registry.DeepSeekChatModeRegistry;
import com.example.backend.registry.DeepSeekChatPromptRegistry;
import com.example.backend.utils.OrderUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Flux;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.*;

@Service
public class DeepSeekService {

    @Resource
    private DeepSeekChatModeRegistry deepSeekChatModeRegistry;

    @Resource
    private DeepSeekChatPromptRegistry deepSeekChatPromptRegistry;

    @Resource
    private ObjectMapper objectMapper;

    @Value("${deepseek.api.v3-tenCloud.model}")
    private String tenCloudModel;

    public Flux<DeepSeekNetMessage> deepSeekAsker(DeepSeekRequest deepSeekRequest, Long uuid) {
        // 根据 status 获取对应的 API URL 和 API Key
        String model = deepSeekRequest.getModel();
        if (model == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "模型不允许为空");
        }
        List<String> chatModeInfo = deepSeekChatModeRegistry.getChatModeInfo(model);
        if (chatModeInfo == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "模型不存在");
        }
        String apiUrl = chatModeInfo.get(0); // 默认使用 chat 的 URL
        String apiKey = chatModeInfo.get(1); // 默认使用 chat 的 Key

        // 创建 WebClient 实例
        WebClient webClient = WebClient.builder()
                .baseUrl(apiUrl)
                .defaultHeader("Authorization", "Bearer " + apiKey)
                .build();
        final int[] id = {2};

        // 构建请求体
        if (!deepSeekRequest.getModel().equals(tenCloudModel)) {
            DeepSeekNetRequest request = getDeepSeekNetRequest(deepSeekRequest);
            return webClient.post()
                    .contentType(MediaType.APPLICATION_JSON)
                    .bodyValue(request)
                    .retrieve()
                    .bodyToFlux(String.class)  // 以字符串形式接收响应
                    .flatMap(response -> {
                        // 检查是否为结束标志 [DONE]
                        if ("[DONE]".equals(response.trim())) {
                            return Flux.just(new DeepSeekNetMessage("[DONE]", id[0])); // 返回结束标志
                        }

                        try {
                            // 尝试解析 JSON 响应
                            JsonNode jsonResponse = objectMapper.readTree(response);

                            // 提取 content 字段
                            String content = jsonResponse.path("choices").
                                    get(0).path("delta").path("content").asText();
                            String reason_content = jsonResponse.path("choices")
                                    .get(0).path("delta").path("reasoning_content").asText();

                            // 如果 content 包含 [DONE]，返回结束标志
                            if (content.contains("[DONE]")) {
                                return Flux.just(new DeepSeekNetMessage("[DONE]", id[0]));
                            }

                            if (content.equals("null")) {
                                // 输出内容片段
                                System.out.print(reason_content);

                                if (id[0] == 1) {
                                    DeepSeekNetMessage deepSeekNetMessage = new
                                            DeepSeekNetMessage("> " + reason_content, id[0]);
                                    id[0] += 1;
                                    return Flux.just(deepSeekNetMessage); // 返回内容片段
                                }else {
                                    DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage(reason_content, id[0]);
                                    id[0] += 1;
                                    return Flux.just(deepSeekNetMessage); // 返回内容片段
                                }


                            } else {
                                // 输出内容片段
                                System.out.print(content);

                                DeepSeekNetMessage deepSeekNetMessage = new DeepSeekNetMessage(content, id[0]);
                                id[0] += 1;
                                return Flux.just(deepSeekNetMessage); // 返回内容片段
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                            return Flux.empty(); // 解析错误时返回空 Flux
                        }
                    });
        } else {
            // 1. 正确构建 content 参数（提取用户文本，避免对象toString()）
            StringBuilder contentBuilder = new StringBuilder();
            for (DeepSeekMessage msg : deepSeekRequest.getMessageList()) {
                // 替换为你的消息类实际的文本提取逻辑
                contentBuilder.append(msg.getContent()).append("\n");
            }
            String userContent = contentBuilder.toString().trim();

            if (deepSeekRequest.getStatus() == 2) {
                String PROMPT_TEMPLATE = """
                    你是一个先进的AI个性化学习路径推荐引擎，专为用户提供数据驱动、结构化的学习/职业/技能发展计划。你的推荐基于用户输入的目标、当前水平、额外描述，以及海量学习数据模式分析（典型学习曲线、成功路径统计、资源有效性评估）。输出必须专业、客观、中性，像一个智能算法系统生成的报告，而不是人类对话。
                                用户输入的目标/关键词/描述：%s
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
                                适用人群：适合[客观描述典型用户群体，例如"零基础本科生，目标通过四六级并提升英语应用能力"]
                                预计总周期：[X个月 / X周]（参考同类用户平均完成时间与成功率）
                                每日建议投入时间：[X-Y小时]（考虑可持续性与学习效率曲线）
                                **路径阶段详情**
                                阶段 1：[阶段名称，例如"基础构建阶段"]
                                预计时长：[X周]
                                核心目标：[1-2句客观描述该阶段要达成的关键里程碑]
                                推荐学习顺序与具体任务（按天/周拆分，可立即执行）：
                                - [具体任务1，例如"第1-3天：完成XX教材第1-3章阅读，并完成章节后习题（共约80道）"]
                                - [具体任务2]
                                - ...
                                推荐资源（优先高性价比、易获取、经用户数据验证有效的）：
                                - [资源1：具体名称 + 获取方式，例如"B站 ‘XXX老师 四六级词汇课’ 全程免费，共32讲，建议观看速度1.2x"]
                                - [资源2：书籍章节 / GitHub仓库 / 平台课程链接提示]
                                量化练习要求：
                                - [例如"完成至少3套四六级真题（2019-2022年），正确率目标≥0.75]
                                - 小型项目/输出要求：[例如"构建一个包含5个自动化测试用例的GitHub仓库"]
                                注意事项与优化建议：[客观列出常见失败点及应对，例如"避免直接跳过基础语法，数据表明此阶段跳过会导致后期正确率下降0.75]
                                阶段 2：[阶段名称]
                                ...（重复以上格式，阶段总数4-8个）
                                **总体优化建议**
                                - 关键里程碑追踪指标：[列出3-5个可量化的检查点，例如"第4周结束时，四六级模拟分≥450"]
                                - 潜在风险与调整策略：[客观描述]
                                - 资源优先级排序依据：[简要说明为什么这些资源被选中，例如"基于用户反馈完成率与提升幅度"]
                                输出语言要求：
                                - 完全客观、专业、结构化
                                - 使用第三人称或"系统推荐""基于分析"
                                - 避免任何情感化、口语化、鸡汤、吐槽或"我"字
                                - 所有任务必须具体到"可当天执行"的程度，包含量化目标
                                - 严格遵守：
                                  - 禁止使用任何第一人称（我、我们、你好、兄弟、姐妹等）
                                  - 禁止任何情感词、鼓励语、鸡汤、吐槽、幽默、感叹号过多
                                  - 禁止口语化表达（哎呀、千万别、冲就完事儿了、苟住等）
                                  - 禁止比喻、故事、个人经历
                                  - 所有句子必须正式、客观、中性，像学术报告或数据仪表盘输出
                                  - 每条任务必须包含量化指标（时长、数量、目标分数、章节号等）
                                  - 如果内容涉及主观建议，必须用"数据表明""典型路径显示""用户反馈显示"等客观化表述
                                  - 输出不允许出现任何问句、互动引导、欢迎辞
                    """;
                // 此处的 code 为前端传输的标志内容
                userContent = String.format(PROMPT_TEMPLATE, deepSeekRequest.getCode());
            }
            TenCloudNetRequest request = new TenCloudNetRequest();
            request.setBot_app_key(apiKey);
            request.setSession_id(String.valueOf(UUID.randomUUID()));
            request.setVisitor_biz_id(String.valueOf(uuid));
            request.setContent(userContent);
            request.setIncremental(true);
            request.setSearch_network("enable");
            request.setStream("enable");

            return webClient.post()
                    .contentType(MediaType.APPLICATION_JSON)
                    .bodyValue(request)
                    .retrieve()
                    .bodyToFlux(String.class)
                    .flatMap(response -> {
                        try {
                            // 解析JSON响应
                            JsonNode jsonResponse = objectMapper.readTree(response);

                            // 检查是否为回复类型
                            if ("reply".equals(jsonResponse.path("type").asText())) {
                                JsonNode payload = jsonResponse.path("payload");

                                // 提取content内容
                                String content = payload.path("content").asText();
                                boolean isFinal = payload.path("is_final").asBoolean();
                                // 如果是最终响应，添加[DONE]标记
                                if (isFinal) {
                                    return Flux.just(
                                            new DeepSeekNetMessage(content, id[0]++),
                                            new DeepSeekNetMessage("[DONE]", id[0]++)
                                    );
                                }

                                // 返回普通消息
                                return Flux.just(new DeepSeekNetMessage(content, id[0]++));
                            }

                            // 其他类型消息（如思考事件）可以在这里处理
                            return Flux.empty();
                        } catch (IOException e) {
                            e.printStackTrace();
                            return Flux.error(e);
                        }
                    });
        }

    }

    private DeepSeekNetRequest getDeepSeekNetRequest(DeepSeekRequest deepSeekRequest) {
        List<DeepSeekMessage> messageList = deepSeekRequest.getMessageList();
        String model = deepSeekRequest.getModel();
        Integer status = deepSeekRequest.getStatus();
        String code = deepSeekRequest.getCode();

        DeepSeekNetRequest request = new DeepSeekNetRequest();
        request.setModel(model); // 使用 model 作为模型名称
        request.setStream(true); // 设置为 true，因为流式响应需要处理 [DONE]

        // 注册器模式
        AIChatMode aiChatMode = deepSeekChatPromptRegistry.getAIChatMode(deepSeekRequest.getStatus());
        messageList = aiChatMode.doPrompt(deepSeekRequest.getProblem_id(), model, status, messageList, code);

        request.setMessages(messageList);
        return request;
    }
}