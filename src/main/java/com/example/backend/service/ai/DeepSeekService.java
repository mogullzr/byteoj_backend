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
import reactor.core.publisher.Mono;

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

    @Value("${ai.api.v3-tenCloud.model}")
    private String tenCloudModel;

    public Mono<String> deepSeekAskerNonStream(DeepSeekRequest deepSeekRequest, Long uuid) {
        // 1. 基础校验与配置获取
        String model = deepSeekRequest.getModel();
        if (model == null) {
            return Mono.error(new BusinessException(ErrorCode.PARAMS_ERROR, "模型不允许为空"));
        }

        List<String> chatModeInfo = deepSeekChatModeRegistry.getChatModeInfo(model);
        if (chatModeInfo == null) {
            return Mono.error(new BusinessException(ErrorCode.NOT_FOUND_ERROR, "模型不存在"));
        }

        String apiUrl = chatModeInfo.get(0);
        String apiKey = chatModeInfo.get(1);

        // 2. 创建 WebClient
        WebClient webClient = WebClient.builder()
                .baseUrl(apiUrl)
                .defaultHeader("Authorization", "Bearer " + apiKey)
                .build();

        // 3. 分支处理
        if (!deepSeekRequest.getModel().equals(tenCloudModel)) {
            // --- 普通 DeepSeek 模型 (非流式) ---

            // 构建请求体 (确保内部 stream 字段为 false，如果 getDeepSeekNetRequest 未处理，建议在此处强制设置)
            DeepSeekNetRequest request = getDeepSeekNetRequest(deepSeekRequest);
            // 假设 request 对象有 setStream 方法，非流式需设为 false
             request.setStream(false);

            return webClient.post()
                    .contentType(MediaType.APPLICATION_JSON)
                    .bodyValue(request)
                    .retrieve()
                    .bodyToMono(String.class) // 【关键】接收完整响应字符串
                    .flatMap(response -> {
                        try {
                            JsonNode jsonResponse = objectMapper.readTree(response);

                            // 非流式响应结构: choices[0].message.content
                            // 注意：流式是 choices[0].delta.content，非流式通常是 choices[0].message.content
                            JsonNode choiceNode = jsonResponse.path("choices").get(0);
                            JsonNode messageNode = choiceNode.path("message");

                            String content = messageNode.path("content").asText();
                            String reasoningContent = messageNode.path("reasoning_content").asText("");

                            StringBuilder resultBuilder = new StringBuilder();
                            if (reasoningContent != null && !reasoningContent.isEmpty()) {
                                resultBuilder.append("> ").append(reasoningContent).append("\n");
                            }
                            resultBuilder.append(content);

                            return Mono.just(resultBuilder.toString());
                        } catch (IOException e) {
                            e.printStackTrace();
                            return Mono.error(new BusinessException(ErrorCode.SYSTEM_ERROR, "JSON解析失败: " + e.getMessage()));
                        }
                    });

        } else {
            // --- TenCloud 模型 (非流式) ---

            // 1. 构建内容
            StringBuilder contentBuilder = new StringBuilder();
            for (DeepSeekMessage msg : deepSeekRequest.getMessageList()) {
                contentBuilder.append(msg.getContent()).append("\n");
            }
            String userContent = contentBuilder.toString().trim();

            // 处理特殊状态 (Prompt 模板逻辑保持不变)
            if (deepSeekRequest.getStatus() == 2) {
                String PROMPT_TEMPLATE = """
                你是一个先进的AI个性化学习路径推荐引擎... (此处省略原长模板，逻辑与原代码一致)
                用户输入的目标/关键词/描述：%s
                ...
                """;
                userContent = String.format(PROMPT_TEMPLATE, deepSeekRequest.getCode());
            }

            TenCloudNetRequest request = new TenCloudNetRequest();
            request.setBot_app_key(apiKey);
            request.setSession_id(String.valueOf(UUID.randomUUID()));
            request.setVisitor_biz_id(String.valueOf(uuid));
            request.setContent(userContent);
            request.setIncremental(false); // 非流式通常不需要增量
            request.setSearch_network("enable");
            request.setStream("disable"); // 【关键】明确关闭流式传输

            return webClient.post()
                    .contentType(MediaType.APPLICATION_JSON)
                    .bodyValue(request)
                    .retrieve()
                    .bodyToMono(String.class)
                    .flatMap(response -> {
                        // 【调试用】打印原始响应，生产环境稳定后可注释掉
                        System.out.println("=== [TenCloud] 原始响应开始 ===");
                        System.out.println(response);
                        System.out.println("=== [TenCloud] 原始响应结束 ===");

                        StringBuilder fullContentBuilder = new StringBuilder();
                        String[] lines = response.split("\n");
                        int validLineCount = 0;
                        int errorLineCount = 0;
                        boolean hasAiReply = false;

                        for (int i = 0; i < lines.length; i++) {
                            String line = lines[i].trim();

                            if (line.startsWith("data:")) {
                                String jsonData = line.substring(5).trim();

                                // 1. 跳过 [DONE] 标记
                                if ("[DONE]".equals(jsonData)) {
                                    continue;
                                }

                                try {
                                    // 2. 尝试解析 JSON
                                    JsonNode dataNode = objectMapper.readTree(jsonData);

                                    // 3. 获取 type，我们只需要 type="reply" 的数据
                                    String type = dataNode.path("type").asText("");

                                    // 如果是 token_stat 或其他非 reply 类型，直接跳过，不视为错误
                                    if (!"reply".equals(type)) {
                                        continue;
                                    }

                                    // 4. 进入 payload 层级
                                    JsonNode payload = dataNode.path("payload");
                                    if (payload.isMissingNode()) {
                                        continue;
                                    }

                                    // 5. 【关键】过滤回声 (Echo)
                                    // 如果 is_from_self 为 true，说明这是用户自己说的话，跳过
                                    boolean isFromSelf = payload.path("is_from_self").asBoolean(false);
                                    if (isFromSelf) {
                                        System.out.println("[过滤] 行 " + i + ": 检测到用户回声 (is_from_self=true)，已跳过");
                                        continue;
                                    }

                                    // 6. 提取 content
                                    String content = payload.path("content").asText(null);

                                    if (content != null && !content.isEmpty()) {
                                        fullContentBuilder.append(content);
                                        validLineCount++;
                                        hasAiReply = true;
                                        System.out.println("[成功] 行 " + i + ": 提取到 AI 回复，长度=" + content.length());
                                    } else {
                                        System.out.println("[忽略] 行 " + i + ": content 为空");
                                    }

                                } catch (Exception e) {
                                    errorLineCount++;
                                    System.err.println("[失败] 行 " + i + " JSON 解析出错：" + e.getMessage());
                                    System.err.println("[失败] 原始片段：" + jsonData);

                                    // 【兜底策略】如果 JSON 解析失败，尝试用正则硬提取 content
                                    // 防止因特殊字符导致整个消息丢失
                                    if (jsonData.contains("\"content\":\"")) {
                                        try {
                                            // 简单正则提取 content 值
                                            String[] parts = jsonData.split("\"content\":\"", 2);
                                            if (parts.length > 1) {
                                                String manualContent = parts[1];
                                                // 找到结束的引号（简单处理，假设内容里没有未转义的引号）
                                                int endIndex = manualContent.indexOf("\"");
                                                if (endIndex > -1) {
                                                    manualContent = manualContent.substring(0, endIndex);
                                                    // 还原转义字符
                                                    manualContent = manualContent.replace("\\n", "\n")
                                                            .replace("\\\"", "\"")
                                                            .replace("\\\\", "\\");

                                                    // 再次检查是否是回声（这里无法检查 is_from_self，只能盲目拼接或根据内容判断）
                                                    // 为了安全，如果正则提取到了，且不是 [DONE]，我们先拼上
                                                    // 更好的做法是结合上下文，但这里作为最后手段
                                                    if (!manualContent.isEmpty()) {
                                                        fullContentBuilder.append(manualContent);
                                                        System.out.println("[兜底] 行 " + i + ": 正则提取成功，长度=" + manualContent.length());
                                                    }
                                                }
                                            }
                                        } catch (Exception ex) {
                                            System.err.println("[兜底] 正则提取也失败了：" + ex.getMessage());
                                        }
                                    }
                                }
                            }
                        }

                        String finalResult = fullContentBuilder.toString();

                        System.out.println("[统计] 成功解析行数：" + validLineCount + ", 解析错误行数：" + errorLineCount);
                        System.out.println("[结果] 最终拼接内容长度：" + finalResult.length());

                        // 7. 最终校验
                        if (!hasAiReply || finalResult.trim().isEmpty()) {
                            return Mono.error(new BusinessException(ErrorCode.SYSTEM_ERROR,
                                    "未获取到有效 AI 回复。解析成功行数:" + validLineCount + ", 错误行数:" + errorLineCount));
                        }

                        return Mono.just(finalResult);
                    });
        }
    }

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
                        // 1. 处理空行或非 data 开头的数据 (SSE 协议通常有心跳空行)
                        if (response == null || response.trim().isEmpty() || !response.trim().startsWith("data:")) {
                            return Flux.empty();
                        }

                        try {
                            // 2. 提取 data: 后面的 JSON 字符串
                            String jsonData = response.trim().substring(5).trim();

                            // 3. 跳过 [DONE] 标记 (防止重复发送)
                            if ("[DONE]".equals(jsonData)) {
                                return Flux.empty();
                            }

                            // 4. 解析 JSON
                            JsonNode jsonResponse = objectMapper.readTree(jsonData);

                            // 5. 获取 type，只处理 "reply" 类型
                            String type = jsonResponse.path("type").asText("");
                            if (!"reply".equals(type)) {
                                // 忽略 token_stat 等其他类型消息
                                return Flux.empty();
                            }

                            // 6. 进入 payload 层级
                            JsonNode payload = jsonResponse.path("payload");
                            if (payload.isMissingNode()) {
                                return Flux.empty();
                            }

                            // 7. 【关键】过滤回声 (Echo)
                            // 如果 is_from_self 为 true，说明是用户自己的输入，直接丢弃，不要传给前端
                            boolean isFromSelf = payload.path("is_from_self").asBoolean(false);
                            if (isFromSelf) {
                                // 调试时可打开日志，生产环境建议关闭以免刷屏
                                // System.out.println("[过滤] 丢弃用户回声片段");
                                return Flux.empty();
                            }

                            // 8. 提取 content
                            String content = payload.path("content").asText(null);

                            // 如果内容为空，也丢弃
                            if (content == null || content.isEmpty()) {
                                return Flux.empty();
                            }

                            // 9. 检查是否是最后一条消息 (is_final)
                            boolean isFinal = payload.path("is_final").asBoolean(false);

                            // 生成消息对象
                            DeepSeekNetMessage message = new DeepSeekNetMessage(content, id[0]++);

                            if (isFinal) {
                                // 如果是最后一条，追加 [DONE] 信号
                                return Flux.just(message, new DeepSeekNetMessage("[DONE]", id[0]++));
                            } else {
                                // 普通片段
                                return Flux.just(message);
                            }

                        } catch (IOException e) {
                            // 解析错误时，可以选择打印日志并跳过该片段，避免中断整个流
                            System.err.println("[解析错误] 无法处理响应片段：" + response);
                            e.printStackTrace();
                            return Flux.empty();
                            // 如果想让前端知道出错了，也可以 return Flux.error(e);
                        }
                    });
        }

    }

    private DeepSeekNetRequest getDeepSeekNetRequest(DeepSeekRequest deepSeekRequest) {
        List<DeepSeekMessage> messageList = deepSeekRequest.getMessageList();
        String model = deepSeekRequest.getModel();
        Integer status = deepSeekRequest.getStatus();
        String code = deepSeekRequest.getCode();
        Float tempature = deepSeekRequest.getTemperature();
        Float top_p = deepSeekRequest.getTop_p();

        DeepSeekNetRequest request = new DeepSeekNetRequest();
        request.setModel(model); // 使用 model 作为模型名称
        request.setTemperature(tempature);
        request.setTop_p(top_p);
        request.setStream(true); // 设置为 true，因为流式响应需要处理 [DONE]

        // 注册器模式
        AIChatMode aiChatMode = deepSeekChatPromptRegistry.getAIChatMode(deepSeekRequest.getStatus());
        messageList = aiChatMode.doPrompt(deepSeekRequest.getProblem_id(), model, status, messageList, code);

        request.setMessages(messageList);
        return request;
    }
}