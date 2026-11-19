# 判卷 Prompt 优化与费用排查

本次优化仅用于普通 DeepSeek 判卷。提交考试、题目并发、重试次数、图片直读、本地客观题规则、评分归一化、数据库字段、前端结果和已有接口保持兼容。英语专项、有自定义 `prompt_extension` 的调用以及 GPT 调用继续使用原来的完整 Prompt。

## 默认行为

- 保留原有 `SYSTEM_PROMPT` 中的完整评分政策，包括过程要求、缺失关键公式的扣分规则、填空等价判定、置信度和人工复核要求。
- 普通判卷不再重复发送用户 Prompt 中的同义评分指令和英语作文/翻译的专项输出结构；保留全部通用结果字段、逐项评分、错误证据和可识别的学生作答。
- 顺序调整为“固定评分政策和结果格式 → 题目、标准答案、解析、评分上下文、题目图片 → 学生文本和作答图片”。固定的结果格式不再位于学生作答之后，便于不同请求复用公共前缀。
- 默认 `auto`：普通概念题、常规计算/主观题使用 `low`；证明、推导、论证题（含参考答案/解析中明确的证明推导），题干+参考答案+解析超过 4,000 字符，以及仅有题目图片而无题干文本的情况使用 `high`。这是保守的规则路由，不额外调用模型分类；学生作答不参与路由。仍保留思考，不设置可能截断 JSON 或评分依据的硬性输出上限。
- 普通题初次结果置信度低于 0.8、要求人工复核、分数越界、缺少评分项或评分项合计与总分不一致时，最多再用 `high` 独立判一次。不是因为答错或得了部分分就复核；明确图片无法辨认时直接人工复核。高强度结果仍有疑点则标记人工复核。复核失败保留初次结果并标记人工复核，不让外层重试重新执行整套低/高流程。初判与复核共享原有超时预算。
- 保留完整识别作答和必要评分依据；各评分项只引用相关原文，避免重复抄整份作答或标准解析。
- 不增加预热模型的付费请求，不为了等待缓存而把原有并发判卷改成串行。

缓存由 DeepSeek 自动管理，不保证命中；首次请求、新题目、缓存尚未落盘或已过期都会影响命中率。Prompt 顺序调整不等于缓存命中率或总费用的保证。

## 配置与回退

在 `application.yml` 的 `ai.api.deepseek-grading` 下提供：

```yaml
optimized-prompt-enabled: ${DEEPSEEK_GRADING_OPTIMIZED_PROMPT_ENABLED:true}
reasoning-effort: ${DEEPSEEK_GRADING_REASONING_EFFORT:auto}
```

修改环境变量或部署配置并重启后端生效：

- `DEEPSEEK_GRADING_OPTIMIZED_PROMPT_ENABLED=false`：恢复原有 Prompt，并不向请求添加 `reasoning_effort`，与原有请求结构一致。
- `DEEPSEEK_GRADING_REASONING_EFFORT=auto`：使用上述分级策略，是本次默认值。
- `DEEPSEEK_GRADING_REASONING_EFFORT=high`：恢复上次优化后的统一高强度，不自动追加复核。
- `DEEPSEEK_GRADING_REASONING_EFFORT=low`：所有普通 DeepSeek 判卷固定低强度，不自动追加复核。手动配置优先于路由；已有环境变量若指定 `high`，需改为 `auto` 才启用本次策略。
- 支持 `auto`、`low`、`high`、`max`；无效值回退到 `high`。英语专项、GPT 调用不受这些思考强度配置影响。

无需新增数据库字段、执行迁移或修改前端接口。

## 查看实际开销

后端日志搜索 `[grading-agent] deepseek usage`。每次收到含用量的 DeepSeek 响应会记录：

| 字段 | 含义 |
| --- | --- |
| `promptTokens` | 全部输入 Token |
| `cacheHitTokens` / `cacheMissTokens` | 命中 / 未命中的输入 Token |
| `cacheHitPercent` | 命中输入占全部输入的百分比 |
| `completionTokens` | 全部输出 Token，已包含思考 Token |
| `reasoningTokens` | API 返回的思考 Token，未提供则为 `unknown` |
| `answerTokens` | 输出扣除思考后的 Token，无法可靠拆分则为 `unknown` |
| `estimatedCostCny` | 按现有人民币价格计算的估算费用 |

思考 Token 已包含在输出中，不能再累计一次。上述日志也在结果内容解析之前记录。初判和一次复核的用量/费用相加后沿用现有题目及试卷统计字段；收到用量但内容解析失败的重试尝试，也计入最终成功结果或人工复核结果，避免漏算。各次费用按当时计价相加，不重新按最后一次时间统一计价。网络超时、无用量的错误响应等无法知道实际消耗，不虚构 Token；这部分仍需与官方账单核对。

请求开始日志增加 `effort=low/high/max` 和 `stage=initial/review`，复核日志包含触发原因，便于观察复核比例。日志不新增学生作答、题干、图片链接或 API key。对比费用时应使用同一批题目、相同作答和相同计费时段，并分别查看输入、输出和思考用量；不要只根据缓存百分比判断费用。

## 验证与边界

运行：

```bash
mvn test-compile org.apache.maven.plugins:maven-surefire-plugin:3.2.5:test \
  -Dtest=GradingAgentUtilTest,GradingPromptCompatibilityTest,ProblemMath408BankServiceImplTest
```

29 项本地模拟测试通过，覆盖 LaTeX JSON 修复、原有重试和人工复核、本地评分、原始评分政策不变、长题干不截断、图片输入、英语/GPT 请求兼容、配置回退、自动路由、一次复核、复核失败不重跑、低置信度与评分矛盾检查，以及初判/复核/失败重试的费用累计。

自动测试验证请求/结果契约及业务代码兼容性，未调用付费模型，不能证明修改前后模型每次评分完全相同；实际费用与评分表现应结合后续真实判卷核对。降低推理强度可能影响复杂题判断，规则路由和复核只是降低风险，不能保证与 high 得分完全相同。短 Prompt 也不能保证低费用：输出和思考量、缓存、复核比例以及计费时段都会影响结果。本次不再给出未经实测的节省百分比。

参考：[DeepSeek 缓存](https://api-docs.deepseek.com/zh-cn/guides/kv_cache)、[思考模式](https://api-docs.deepseek.com/zh-cn/guides/thinking_mode)、[价格](https://api-docs.deepseek.com/zh-cn/quick_start/pricing)。
