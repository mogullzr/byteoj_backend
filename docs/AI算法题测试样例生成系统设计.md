# AI 算法题测试样例生成系统设计

> 文档状态：设计草案，当前未修改任何业务代码  
> 项目：ByteOJ backend  
> 编写日期：2026-08-04  
> 目标：由 AI 为每一种数据规模生成一份 Python 测试数据生成器，后端通过独立异步任务调用沙箱分批生成输入；管理员可选是否运行可信参考解生成标准输出，最终将校验通过的数据原子写入题目测试样例表。

## 1. 结论摘要

本功能应当作为一套独立的“测试样例生成子系统”实现，不能调用或改造成现有的 `/problem/algorithm/admin/testCase/add` 接口，也不能直接调用现有 `/problem/algorithm/judge/test` 完成整个流程。

推荐的总体流程如下：

```text
管理员创建生成任务
  -> MySQL 保存任务和各规模配置
  -> 专用 RabbitMQ 队列只投递 jobId
  -> AI 为每个规模生成一份 Python 生成器
  -> 后端检查代码和输出协议
  -> 沙箱按批次运行生成器
  -> JSONL 输入逐批写入 staging 表
  -> 可选：可信参考解编译一次，分批计算标准输出
  -> 数量、大小、重复项和运行结果校验
  -> 单个 MySQL 事务追加或替换 algorithm_test_case
  -> WebSocket 推送进度，接口返回截断预览
```

关键设计结论：

1. 一种规模只保存一份 AI 生成的 Python 代码，但允许同一份代码使用不同 `startIndex/count` 分批运行，避免一次输出过大。
2. `problem_algorithm_limit.run_code` 是自定义校验器，不是参考解，不能用来生成标准输出。
3. “生成标准输出”默认关闭。关闭时，测试样例的 `output` 保存空字符串 `""`，不能保存 `null`。
4. 参考解必须新增独立表，并经过管理员确认和沙箱验证；不能承诺 AI 生成的参考解“一定正确”。
5. 新任务使用独立 RabbitMQ exchange/queue/consumer，不占用正式判题的 10 个队列。
6. 生成过程中的完整输入和输出进入 MySQL staging 表，不能全部堆积在 Java 内存或 RabbitMQ 消息中。
7. `REPLACE` 模式必须先完整生成并验证，再在一个事务中删除旧样例并批量插入新样例；任务失败不得损坏旧数据。
8. 用户所说的“把时间和内存开销拉到最大”应解释为“使用独立配置允许的安全上限”，不能设置为无界，也不能修改普通判题限制。

## 2. 范围与非目标

### 2.1 本期范围

- 为后台管理员新增完整的测试样例生成接口。
- 支持管理员配置生成多少个样例，以及每一种规模的数量、约束说明和随机种子。
- AI 为每一种规模生成一份 Python 3 测试输入生成器。
- 后端调用现有沙箱的编译/执行能力生成输入。
- 可选调用可信参考解为输入生成标准输出。
- 支持普通标准输出题和自定义校验器题。
- 支持生成器调试、参考解调试、任务查询、取消、重试和结果预览。
- 支持 `APPEND` 和 `REPLACE` 两种最终写入方式。
- 使用 WebSocket 推送任务进度。

### 2.2 本期非目标

- 不修改现有学生代码调试接口的行为。
- 不修改现有正式判题结果比较规则。
- 不将 AI 生成的参考解自动标记为可信。
- 不通过 HTTP 请求同步等待整个生成任务完成。
- 不把大段生成代码、完整测试数据或输出放进 RabbitMQ 消息。
- 不在本设计阶段修改管理端页面。当前 `admin` 项目仅发现 `dist`、`generated` 和依赖目录，未发现可维护的 `src` 源码，因此本文只定义管理端交互和 API 契约。

## 3. 后端项目现状

### 3.1 技术栈与规模

- Spring Boot 2.6.13
- Java 17
- MyBatis-Plus
- MySQL 主业务库
- PostgreSQL 用于向量相关数据
- Redis
- RabbitMQ
- STOMP/WebSocket
- Hutool HTTP 客户端
- WebClient 用于部分 AI 请求
- 后端约 473 个 Java 文件、43,122 行 Java 代码

项目中存在大量未提交修改。本功能实现时必须只编辑本功能相关文件，不能回退或覆盖已有修改。`sql/backup_20260727——ByteOJ.sql.sql` 约 2GB，不应通过编辑器或全文命令读取。

### 3.2 现有测试样例模型

现有实体：

```text
src/main/java/com/example/backend/models/domain/algorithm/test/AlgorithmTestCase.java
```

对应表：

```text
algorithm_test_case
```

当前字段：

```text
id
problem_id
input LONGTEXT
output LONGTEXT
create_time
```

当前管理接口位于 `ProblemAlgorithmController`：

```text
POST /problem/algorithm/admin/testCase/get
POST /problem/algorithm/admin/testCase/add
POST /problem/algorithm/admin/testCaseFile/get
POST /problem/algorithm/admin/testCaseFile/add
```

当前保存逻辑位于 `ProblemAlgorithmServiceImpl` 约 1913 行附近，会删除题目已有样例后逐条插入，且没有覆盖整个“删除 + 插入”的事务保护。该逻辑适合人工一次性编辑，不适合长耗时、可重试的异步生成流程。

结论：旧接口保持兼容，新生成系统只能通过新接口和新服务写入。

### 3.3 现有代码调试链路

入口：

```text
POST /problem/algorithm/judge/test
ProblemAlgorithmController.java:313
ProblemAlgorithmServiceImpl.java:581
```

非 Python 语言：

```text
POST sandbox/build  -> 获取 fileId
POST sandbox/exec   -> 使用 fileId 批量执行
POST sandbox/delete -> 删除编译产物
```

Python：

```text
POST sandbox/
```

当前请求实际使用的限制字段：

```text
cpuLimit    纳秒
memoryLimit 字节
```

`ProblemAlgorithmLimit` 中虽然还有 `stdout_max`、`stderr_max`、`proc_limit`，但当前调试和正式判题请求没有把这些字段传给沙箱。

现有调试代码会把整个 `input_list` 一次构造成请求列表，不适合成百上千个大输入。新功能应抽取底层 `SandboxClient`，保留相同协议，但必须支持分批和独立超时。

### 3.4 现有正式判题链路

入口实现：

```text
ProblemAlgorithmServiceImpl.problemAlgorithmSubmit(...)
```

主要步骤：

1. 查询题目、限制和 `algorithm_test_case` 全部样例。
2. 非 Python 代码编译一次，再对全部输入执行。
3. 普通题比较程序输出与 `algorithm_test_case.output.trim()`。
4. 如果 `problem_algorithm_limit.run_code` 非空，则编译并运行自定义校验器。
5. 自定义校验器收到的输入为：

```text
测试输入 + "\n" + 选手程序输出
```

6. 自定义校验器固定以 `YES` 表示正确。

因此，`run_code` 的角色是 checker，而不是标准答案程序。对于 checker 题，数据库 `output` 可以是空字符串；但不应为 `null`，因为现有普通错误处理分支仍存在调用 `.trim()` 的可能。

### 3.5 现有 RabbitMQ 与 WebSocket

现有判题系统有 10 个队列，分别对应 10 个沙箱地址：

```text
judge.submit.queue.0 ... judge.submit.queue.9
```

消费者使用手动 ACK、prefetch 1，并向以下主题推送状态：

```text
/topic/judge/{taskId}
```

项目另有 Embedding 异步任务，可作为持久化任务状态的参考：

```text
PENDING -> PROCESSING -> COMPLETED / FAILED
```

但测试生成任务最终数据在 MySQL，应把任务表和 staging 表也放在 MySQL，避免跨数据库事务。

### 3.6 现有 AI 调用链

相关类：

```text
service/ai/DeepSeekService.java
registry/DeepSeekChatModeRegistry.java
registry/DeepSeekChatPromptRegistry.java
service/ai/AIChatAlgorithmMode.java
```

不建议直接调用 `DeepSeekService.deepSeekAskerNonStream()` 生成结构化代码，原因如下：

- 它通过聊天模式注册器处理 prompt，不是专用生成协议。
- 它会把 `reasoning_content` 以 `> ...` 拼接到正式内容前面，可能破坏 JSON。
- 每次请求创建新的 `WebClient`。
- 没有本功能专用的连接、响应和总体超时。
- 没有对生成器 JSON Schema 做严格校验。

新功能应新增 `AlgorithmTestGeneratorAiClient`，只复用已有模型 URL、API key 和模型注册配置，不复用聊天内容拼接逻辑。

### 3.7 当前 HTTP 超时问题

`ProblemAlgorithmServiceImpl` 静态初始化中设置了 Hutool 全局超时 30 秒。测试数据大批量生成和参考解执行不应依赖这个全局值，必须使用专用客户端和专用超时配置，否则容易在沙箱仍运行时由后端提前超时。

## 4. 总体架构

```text
Admin Web
   |
   | REST: 创建、查询、取消、重试、调试、预览
   v
AlgorithmTestGenerationController
   |
   +--> AlgorithmTestGenerationApplicationService
   |       |-- 事务创建 job / scale
   |       `-- RabbitTemplate 只发送 jobId
   |
   +--> ReferenceSolutionService
   `--> GeneratorDebugService

RabbitMQ: algorithm.test.generation.exchange
   |
   v
AlgorithmTestGenerationConsumer
   |
   v
AlgorithmTestGenerationOrchestrator
   |-- AlgorithmTestGeneratorAiClient
   |-- GeneratorCodeValidator
   |-- SandboxExecutionService
   |-- ReferenceSolutionValidationService
   |-- TestCaseStagingService
   |-- TestCaseValidationService
   |-- TestCasePublishService (@Transactional)
   `-- GenerationProgressPublisher -> /topic/test-generation/{jobId}

MySQL
   |-- problem_algorithm_reference_solution
   |-- algorithm_test_generation_job
   |-- algorithm_test_generation_scale
   |-- algorithm_test_case_staging
   `-- algorithm_test_case
```

## 5. 生成器协议

### 5.1 一种规模一份代码

建议内置规模枚举：

```text
SMALL
MEDIUM
LARGE
EXTREME
CUSTOM
```

管理员可以只选择其中一部分。每个规模由 AI 生成并保存一份 Python 3 代码。同一份代码允许多次执行，每次通过 stdin 接收分块参数。

### 5.2 stdin 协议

```json
{
  "seed": 12345,
  "startIndex": 0,
  "count": 25
}
```

字段含义：

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `seed` | long | 固定随机种子，保证任务可复现 |
| `startIndex` | int | 当前分块在该规模内的起始编号 |
| `count` | int | 本次必须生成的输入数量 |

### 5.3 stdout 协议

使用 JSON Lines，每行恰好一个测试输入：

```json
{"input":"5\n1 2 3 4 5\n"}
{"input":"3\n10 20 30\n"}
```

规则：

- stdout 只能输出 JSONL 数据。
- 日志只能写 stderr。
- 输出行数必须精确等于 `count`。
- `input` 必须是字符串，允许多行、Unicode 和转义字符。
- 不接受 Markdown 代码块、解释文字或 JSON 数组包裹。
- 相同 `seed/startIndex/count` 必须生成完全一致的输出。

### 5.4 AI 返回协议

AI 只返回一个 JSON 对象：

```json
{
  "language": "python",
  "protocolVersion": "1.0",
  "code": "import json\nimport random\n...",
  "assumptions": ["n >= 1"],
  "coverage": ["最小边界", "随机数据", "接近规模上限"]
}
```

后端使用 Jackson 映射到 DTO，并拒绝前后附加文本。代码落库前还要进行协议和安全检查。

## 6. 全新 API 设计

统一前缀：

```text
/problem/algorithm/admin/test-generation
```

所有接口均要求登录且 `userService.isAdmin(request) == true`。权限判断应在 Controller 入口显式执行；不能仅依赖前端隐藏按钮。

### 6.1 任务接口

```text
POST /jobs
GET  /jobs/{jobId}
GET  /jobs
POST /jobs/{jobId}/cancel
POST /jobs/{jobId}/retry
GET  /jobs/{jobId}/generators
GET  /jobs/{jobId}/previews
```

#### 创建任务

```http
POST /problem/algorithm/admin/test-generation/jobs
Content-Type: application/json
```

```json
{
  "problemId": 1001,
  "model": "deepseek-chat",
  "writeMode": "APPEND",
  "generateExpectedOutput": false,
  "referenceSolutionId": null,
  "previewChars": 200,
  "scales": [
    {
      "scale": "SMALL",
      "count": 20,
      "constraints": "n <= 20，覆盖最小值、重复值和有序数据",
      "seed": 12345
    },
    {
      "scale": "LARGE",
      "count": 80,
      "constraints": "n 接近题目上限，覆盖性能压力场景",
      "seed": 67890
    }
  ]
}
```

默认值：

```text
writeMode = APPEND
generateExpectedOutput = false
previewChars = 200
```

成功响应的 `data`：

```json
{
  "jobId": 90001,
  "problemId": 1001,
  "status": "QUEUED",
  "totalRequestedCases": 100,
  "createdAt": "2026-08-04T14:30:00+08:00",
  "webSocketTopic": "/topic/test-generation/90001"
}
```

#### 查询任务详情

```http
GET /problem/algorithm/admin/test-generation/jobs/90001
```

```json
{
  "jobId": 90001,
  "problemId": 1001,
  "problemName": "示例题",
  "status": "INPUT_GENERATING",
  "currentStage": "正在生成 LARGE 规模第 2/4 批输入",
  "progressPercent": 47,
  "writeMode": "APPEND",
  "generateExpectedOutput": false,
  "requestedCases": 100,
  "generatedCases": 45,
  "outputCompletedCases": 0,
  "publishedCases": 0,
  "duplicateCases": 1,
  "retryCount": 0,
  "errorCode": null,
  "errorMessage": null,
  "createdAt": "2026-08-04T14:30:00+08:00",
  "startedAt": "2026-08-04T14:30:01+08:00",
  "finishedAt": null,
  "scales": []
}
```

#### 取消任务

取消采用协作式取消：接口只把状态改为 `CANCEL_REQUESTED`。消费者在 AI 请求结束、每个沙箱分块结束、持久化前检查取消状态，并转为 `CANCELLED`。已经进入最终数据库事务时不再中断，避免部分写入。

#### 重试任务

只允许 `FAILED` 或 `CANCELLED` 任务重试。推荐创建一个新 job，并通过 `source_job_id` 关联原任务，而不是清空原任务状态。这样保留审计记录，也避免重复消费旧 MQ 消息。

### 6.2 生成器调试接口

```text
POST /generator/debug
```

用途：管理员在正式创建任务前，手动粘贴或编辑生成器代码，使用少量数据验证协议。

请求：

```json
{
  "problemId": 1001,
  "scale": "SMALL",
  "code": "import json\n...",
  "seed": 12345,
  "startIndex": 0,
  "count": 3,
  "previewChars": 200
}
```

响应只返回截断预览：

```json
{
  "status": "SUCCEEDED",
  "elapsedMs": 162,
  "generatedCount": 3,
  "stdoutBytes": 124,
  "stderrPreview": "",
  "cases": [
    {
      "index": 0,
      "inputPreview": "5\n1 2 3 4 5\n",
      "inputLength": 12,
      "inputSha256": "...",
      "truncated": false
    }
  ]
}
```

调试接口必须使用更小的 `count` 和总输出上限，不能被用作绕过异步任务的大批量生成接口。

### 6.3 参考解接口

```text
GET  /reference-solution?problemId={problemId}
PUT  /reference-solution
POST /reference-solution/debug
POST /reference-solution/validate
```

`PUT /reference-solution` 请求：

```json
{
  "problemId": 1001,
  "language": "cpp",
  "sourceCode": "#include <bits/stdc++.h>\n...",
  "sourceType": "ADMIN_PROVIDED",
  "note": "管理员审核后的标准程序"
}
```

参考解状态：

```text
DRAFT
COMPILE_PASSED
VALIDATION_PASSED
VERIFIED
DISABLED
```

只有 `VERIFIED` 状态可用于正式生成输出。

`POST /reference-solution/validate` 至少执行：

1. 编译检查。
2. 运行题目已有正式测试样例并比较已有输出；checker 题运行 checker。
3. 运行题目公开样例（如果数据模型可取得）。
4. 记录校验数量、结果摘要、代码哈希和验证人。
5. 管理员最终确认后才能标记 `VERIFIED`。

可选增强：保存第二份独立参考解，对随机输入做差分测试。AI 可以提议代码，但其 `sourceType` 必须为 `AI_PROPOSED`，不能自动进入 `VERIFIED`。

### 6.4 DTO 与 VO 清单

建议请求 DTO：

```text
CreateTestGenerationJobRequest
TestGenerationScaleRequest
GeneratorDebugRequest
ReferenceSolutionUpsertRequest
ReferenceSolutionDebugRequest
ReferenceSolutionValidateRequest
TestGenerationJobQueryRequest
```

建议响应 VO：

```text
TestGenerationJobCreatedVO
TestGenerationJobDetailVO
TestGenerationJobSummaryVO
TestGenerationScaleVO
GeneratedCasePreviewVO
GeneratedCodeVO
GeneratorDebugResultVO
ReferenceSolutionVO
ReferenceSolutionValidationVO
```

字段约束：

| DTO 字段 | 约束 |
| --- | --- |
| `problemId` | 必填，题目必须存在且未逻辑删除 |
| `model` | 必填，必须存在于允许的模型注册表 |
| `writeMode` | `APPEND` 或 `REPLACE` |
| `generateExpectedOutput` | 默认 `false` |
| `referenceSolutionId` | 生成输出时必填，且必须为 `VERIFIED` |
| `previewChars` | 50～1000，默认 200 |
| `scales` | 1～5 项，规模类型不可重复 |
| `count` | 每规模至少 1，不超过配置上限 |
| `constraints` | 必填，长度受限，禁止完全依赖 AI 猜测 |
| `seed` | 可选；为空时后端生成并持久化 |

## 7. 状态机

任务状态：

```text
CREATED
QUEUED
AI_GENERATING
GENERATOR_VALIDATING
INPUT_GENERATING
REFERENCE_VALIDATING
OUTPUT_GENERATING
DATA_VALIDATING
PERSISTING
SUCCEEDED
FAILED
CANCEL_REQUESTED
CANCELLED
```

正常流转：

```text
CREATED
 -> QUEUED
 -> AI_GENERATING
 -> GENERATOR_VALIDATING
 -> INPUT_GENERATING
 -> REFERENCE_VALIDATING     仅 generateExpectedOutput=true
 -> OUTPUT_GENERATING        仅 generateExpectedOutput=true
 -> DATA_VALIDATING
 -> PERSISTING
 -> SUCCEEDED
```

任意处理中状态都可以进入 `FAILED`。除 `PERSISTING` 外，处理中状态可先进入 `CANCEL_REQUESTED`，再由消费者转换为 `CANCELLED`。

规模状态：

```text
PENDING
AI_GENERATING
CODE_READY
GENERATING
GENERATED
OUTPUT_GENERATING
COMPLETED
FAILED
```

## 8. MySQL 数据模型草案

以下 DDL 是实施草案，执行前应根据本机 MySQL 版本、字符集和现有建表规范再次校验。

### 8.1 参考解表

```sql
CREATE TABLE problem_algorithm_reference_solution (
    id BIGINT NOT NULL AUTO_INCREMENT,
    problem_id BIGINT NOT NULL,
    language VARCHAR(32) NOT NULL,
    source_code LONGTEXT NOT NULL,
    source_code_hash CHAR(64) NOT NULL,
    source_type VARCHAR(32) NOT NULL,
    status VARCHAR(32) NOT NULL DEFAULT 'DRAFT',
    validation_summary TEXT NULL,
    validated_case_count INT NOT NULL DEFAULT 0,
    validated_by BIGINT NULL,
    validated_at DATETIME NULL,
    note VARCHAR(500) NULL,
    create_by BIGINT NOT NULL,
    update_by BIGINT NOT NULL,
    create_time DATETIME NOT NULL,
    update_time DATETIME NOT NULL,
    is_deleted TINYINT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    KEY idx_reference_problem_status (problem_id, status),
    KEY idx_reference_hash (source_code_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

### 8.2 生成任务表

```sql
CREATE TABLE algorithm_test_generation_job (
    id BIGINT NOT NULL AUTO_INCREMENT,
    problem_id BIGINT NOT NULL,
    source_job_id BIGINT NULL,
    creator_uuid BIGINT NOT NULL,
    model VARCHAR(100) NOT NULL,
    status VARCHAR(40) NOT NULL,
    current_stage VARCHAR(255) NULL,
    progress_percent INT NOT NULL DEFAULT 0,
    write_mode VARCHAR(16) NOT NULL DEFAULT 'APPEND',
    generate_expected_output TINYINT NOT NULL DEFAULT 0,
    reference_solution_id BIGINT NULL,
    preview_chars INT NOT NULL DEFAULT 200,
    requested_case_count INT NOT NULL DEFAULT 0,
    generated_case_count INT NOT NULL DEFAULT 0,
    output_completed_count INT NOT NULL DEFAULT 0,
    published_case_count INT NOT NULL DEFAULT 0,
    duplicate_case_count INT NOT NULL DEFAULT 0,
    generated_input_bytes BIGINT NOT NULL DEFAULT 0,
    generated_output_bytes BIGINT NOT NULL DEFAULT 0,
    retry_count INT NOT NULL DEFAULT 0,
    version INT NOT NULL DEFAULT 0,
    error_code VARCHAR(64) NULL,
    error_message VARCHAR(2000) NULL,
    created_at DATETIME NOT NULL,
    queued_at DATETIME NULL,
    started_at DATETIME NULL,
    finished_at DATETIME NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    KEY idx_generation_problem_created (problem_id, created_at),
    KEY idx_generation_status_updated (status, updated_at),
    KEY idx_generation_creator_created (creator_uuid, created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

同一题目只允许一个活动任务。MySQL 不能方便地用普通唯一索引表达“仅活动状态唯一”，建议在创建任务事务中：

```sql
SELECT problem_id
FROM problem_algorithm_bank
WHERE problem_id = ?
FOR UPDATE;
```

锁定题目行后再查询活动任务并创建，防止并发重复创建。也可以另建轻量锁表，但第一阶段没有必要。

### 8.3 规模表

```sql
CREATE TABLE algorithm_test_generation_scale (
    id BIGINT NOT NULL AUTO_INCREMENT,
    job_id BIGINT NOT NULL,
    scale_type VARCHAR(32) NOT NULL,
    requested_count INT NOT NULL,
    generated_count INT NOT NULL DEFAULT 0,
    output_completed_count INT NOT NULL DEFAULT 0,
    constraints_text TEXT NOT NULL,
    random_seed BIGINT NOT NULL,
    status VARCHAR(32) NOT NULL DEFAULT 'PENDING',
    generator_language VARCHAR(32) NULL,
    generator_protocol_version VARCHAR(16) NULL,
    generator_code LONGTEXT NULL,
    generator_code_hash CHAR(64) NULL,
    ai_assumptions TEXT NULL,
    ai_coverage TEXT NULL,
    current_batch INT NOT NULL DEFAULT 0,
    total_batches INT NOT NULL DEFAULT 0,
    error_message VARCHAR(2000) NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_generation_job_scale (job_id, scale_type),
    KEY idx_generation_scale_status (job_id, status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

`ai_assumptions` 和 `ai_coverage` 可以保存 JSON 字符串。为了兼容项目实际数据库版本，第一阶段建议使用 `TEXT` 而不是强依赖 MySQL JSON 类型。

### 8.4 暂存表

```sql
CREATE TABLE algorithm_test_case_staging (
    id BIGINT NOT NULL AUTO_INCREMENT,
    job_id BIGINT NOT NULL,
    scale_id BIGINT NOT NULL,
    scale_type VARCHAR(32) NOT NULL,
    case_index INT NOT NULL,
    input LONGTEXT NOT NULL,
    output LONGTEXT NULL,
    input_hash CHAR(64) NOT NULL,
    output_hash CHAR(64) NULL,
    input_bytes BIGINT NOT NULL,
    output_bytes BIGINT NULL,
    status VARCHAR(32) NOT NULL DEFAULT 'INPUT_READY',
    error_message VARCHAR(1000) NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_staging_job_case (job_id, scale_id, case_index),
    KEY idx_staging_job_status (job_id, status),
    KEY idx_staging_job_input_hash (job_id, input_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

暂存表作用：

- 避免全部输入输出常驻 Java 堆内存。
- 支持按批次恢复和重试。
- 支持在最终发布前做统一去重和审计。
- 失败任务可定期清理，不污染正式样例表。

### 8.5 正式样例表扩展

建议为 `algorithm_test_case` 增加来源追踪字段：

```sql
ALTER TABLE algorithm_test_case
    ADD COLUMN generation_job_id BIGINT NULL,
    ADD COLUMN scale_type VARCHAR(32) NULL,
    ADD COLUMN input_hash CHAR(64) NULL,
    ADD COLUMN source_type VARCHAR(32) NOT NULL DEFAULT 'MANUAL';

CREATE INDEX idx_algorithm_case_problem_hash
    ON algorithm_test_case (problem_id, input_hash);

CREATE INDEX idx_algorithm_case_generation_job
    ON algorithm_test_case (generation_job_id);
```

历史记录的 `source_type` 为 `MANUAL`。AI 生成记录为 `AI_GENERATED`。

不建议直接建立 `(problem_id, input_hash)` 唯一索引，除非先扫描并清理历史重复样例；否则迁移可能失败。第一阶段可在事务中查询并去重，数据清理后再升级为唯一索引。

## 9. RabbitMQ 设计

新建独立资源：

```text
exchange:    algorithm.test.generation.exchange
queue:       algorithm.test.generation.queue
routing key: algorithm.test.generation.execute

DLX:         algorithm.test.generation.dlx
DLQ:         algorithm.test.generation.dlq
DL routing:  algorithm.test.generation.dead
```

消息体只包含：

```json
{
  "jobId": 90001,
  "attempt": 0,
  "createdAt": 1785825000000
}
```

监听器工厂建议：

```text
concurrentConsumers = 1
maxConcurrentConsumers = 2
prefetchCount = 1
acknowledgeMode = MANUAL
defaultRequeueRejected = false
```

第一阶段并发应保守，因为一个任务可能长时间占用 AI、沙箱和数据库资源。测试生成队列与正式判题队列完全隔离，不能复用 `judge.submit.queue.*`。

ACK 规则：

- 数据库状态已到 `SUCCEEDED/CANCELLED`：幂等返回并 ACK。
- 可重试的短暂故障：数据库增加重试次数，使用带延迟的重试消息或重新投递，当前消息 ACK。
- 达到最大重试次数或确定性数据错误：任务置 `FAILED`，消息 NACK 且不重新入队，进入专用 DLQ。
- 消费者崩溃：由于任务状态持久化，恢复后根据 job/scale/staging 状态继续，而不是从头盲目重复写入。

不建议直接依赖 `basicNack(requeue=true)` 无限重试，否则会形成热循环并阻塞队列。

## 10. application.yml 配置草案

配置值应通过环境变量覆盖，不能把 AI key 或内部沙箱凭据写入 Git。

```yaml
algorithm-test-generation:
  enabled: true
  max-active-jobs-per-problem: 1
  max-scales-per-job: 5
  max-cases-per-scale: 1000
  max-cases-per-job: 3000
  generator:
    language: python
    protocol-version: "1.0"
    batch-size: 25
    debug-max-count: 10
    cpu-limit-seconds: 30
    memory-limit-mb: 1024
    stdout-max-bytes-per-batch: 33554432
    stderr-max-bytes-per-batch: 1048576
    forbidden-modules:
      - socket
      - subprocess
      - multiprocessing
      - requests
      - urllib
      - http
  reference:
    batch-size: 25
    cpu-limit-seconds: 30
    memory-limit-mb: 2048
  limits:
    max-input-bytes-per-case: 8388608
    max-output-bytes-per-case: 8388608
    max-input-bytes-per-job: 1073741824
    max-output-bytes-per-job: 1073741824
  ai:
    connect-timeout-seconds: 10
    response-timeout-seconds: 180
    max-response-bytes: 1048576
  sandbox:
    connect-timeout-seconds: 10
    response-timeout-seconds: 300
  retry:
    max-attempts: 3
    initial-delay-seconds: 30
  cleanup:
    failed-staging-retention-days: 7
    succeeded-staging-retention-hours: 24
```

以上数值不是沙箱能力的事实声明。实施前必须核对沙箱真实支持的字段、容器硬限制、反向代理 body 大小和超时，然后再确定生产值。

## 11. 执行流程详解

### 11.1 创建任务

在一个短事务内：

1. 校验管理员身份。
2. 查询并锁定题目行。
3. 校验题目、规模、数量、模型和写入方式。
4. 如果生成输出，校验参考解存在且为 `VERIFIED`。
5. 检查同一题目没有活动任务。
6. 插入 job 和 scale 记录，状态先为 `CREATED`。
7. 事务提交后投递 MQ。
8. 投递成功后改为 `QUEUED`。

为了处理“数据库已提交但 MQ 投递失败”，建议至少增加一个定时补偿任务，扫描长时间停留在 `CREATED` 的任务并重新投递。更严格的实现可增加 outbox 表，但第一阶段可采用状态扫描补偿。

### 11.2 AI 生成代码

对每个规模：

1. 从数据库组装题目名称、描述、输入输出说明、数据范围、规模约束。
2. 使用固定 system prompt 限制输出为单个 JSON 对象。
3. 调用专用 `AlgorithmTestGeneratorAiClient`。
4. Jackson 严格解析。
5. 验证 `language=python`、协议版本、代码长度和必需字段。
6. 保存生成器代码、SHA-256、AI assumptions 和 coverage。

不应把参考解、隐藏测试数据或 AI key写入 prompt 日志。

### 11.3 生成器静态与动态检查

静态检查只能降低风险，不能替代沙箱：

- 拒绝 Markdown 围栏和解释文本。
- 拒绝明显危险模块和调用，如网络、子进程、动态执行、任意文件访问。
- 检查代码大小。
- 检查是否读取 stdin、使用 `seed/startIndex/count`、输出 JSONL。

动态检查：

1. 使用 `count=2` 执行一次。
2. 使用完全相同参数再次执行，比较 SHA-256，验证确定性。
3. 验证 JSONL 行数和字段。
4. 检查 stdout/stderr 大小和运行状态。
5. 使用非零 `startIndex` 再执行一次，确认支持分块。

### 11.4 分块生成输入

例如 LARGE 规模需要 80 个样例，批大小 25：

```text
batch 1: startIndex=0,  count=25
batch 2: startIndex=25, count=25
batch 3: startIndex=50, count=25
batch 4: startIndex=75, count=5
```

每个批次：

1. 检查任务是否请求取消。
2. 调用沙箱执行同一份 Python 生成器。
3. 流式或逐行解析 JSONL；当前若沙箱只返回完整字符串，也要在单批上限制大小。
4. 校验数量、每项字节数和任务累计字节数。
5. 计算 `input_hash`。
6. 批量插入 staging，利用 `(job_id, scale_id, case_index)` 保证幂等。
7. 更新 scale/job 计数和进度。

### 11.5 参考解生成输出

仅在 `generateExpectedOutput=true` 时执行。

1. 再次确认参考解状态为 `VERIFIED`，代码哈希未变化。
2. 非 Python 参考解调用 `/build` 编译一次并取得 `fileId`。
3. 分页读取 staging 输入，每批调用 `/exec`。
4. Python 参考解按批调用 `/`。
5. 每个结果必须为沙箱成功状态，否则整个任务失败。
6. 保存完整 output、字节数和 SHA-256 到 staging。
7. 在 `finally` 中调用 `/delete` 清理非 Python 编译产物。

不能调用现有 `problemAlgorithmSubmit` 来生成输出，因为它会读取正式样例、修改提交统计、处理比赛权限和判题结果，这些都是生成任务不需要的副作用。

### 11.6 不生成输出的题目

当 `generateExpectedOutput=false`：

- staging 中可以暂时保持 `output=null`。
- 发布到正式表时必须转换为 `output=""`。
- 适用于使用 `run_code` 自定义校验器的题目。
- 创建任务时应提示：如果题目没有自定义校验器且不生成输出，这批数据无法按现有普通判题逻辑正确判分。

建议校验规则：

```text
generateExpectedOutput=false 且 run_code 为空
```

默认返回明确警告，并要求请求中携带 `confirmEmptyOutput=true` 才允许继续，防止管理员误操作。

### 11.7 数据校验

发布前必须验证：

- 每个规模生成数量等于请求数量。
- 每条 input 非空；是否允许纯空白应由题目类型策略决定。
- 需要输出时，每条 output 非 `null`。
- 单条 input/output 和任务总字节数未超限。
- job 内输入按 SHA-256 去重。
- `APPEND` 时与正式表已有输入去重。
- 所有沙箱运行状态成功。
- 数据中不存在解析残留、JSONL 包装或生成器日志。
- 参考解和生成器代码哈希与验证阶段一致。

### 11.8 最终发布事务

`TestCasePublishService.publish(jobId)` 必须是独立 Spring Bean 上的 `public @Transactional` 方法，避免同类自调用导致事务失效。

`APPEND`：

1. 锁定 job 并确认状态为 `DATA_VALIDATING`。
2. 再次查询正式表已有 `input_hash`。
3. 过滤重复项。
4. 从 staging 批量插入正式表。
5. 更新 job 为 `SUCCEEDED` 和发布数量。

`REPLACE`：

1. 确认所有 staging 数据已完成。
2. 锁定题目和 job。
3. 删除该题目的旧正式样例。
4. 从 staging 批量插入全部新样例。
5. 更新 job 为 `SUCCEEDED`。

步骤 3～5 必须在同一个 MySQL 事务中。任何异常都回滚，旧样例恢复，不允许出现题目暂时没有测试数据的状态。

`AlgorithmTestCaseMapper` 当前只继承 `BaseMapper`。项目已有 `MyBaseMapper.insertBatchSomeColumn`，但实际使用很少。实现时可选择：

- 新 mapper 继承 `MyBaseMapper` 并分批插入；或
- 自定义 `INSERT INTO ... SELECT ... FROM algorithm_test_case_staging WHERE job_id = ?`。

第二种方式避免把完整 LONGTEXT 再读回 Java，通常更适合本流程。

## 12. 沙箱客户端重构边界

建议新增通用底层接口：

```java
public interface SandboxExecutionService {
    SandboxBuildResult build(SandboxBuildCommand command);
    List<SandboxRunResult> executeCompiled(String fileId, String language,
                                            List<SandboxRunCommand> commands);
    List<SandboxRunResult> executeSource(String code, String language,
                                         List<SandboxRunCommand> commands);
    void deleteArtifact(String fileId);
}
```

新服务可以复用现有沙箱 URL 和请求字段，但第一阶段不要贸然重写正式判题调用链。推荐实施顺序：

1. 先为新生成系统实现 `SandboxExecutionService`。
2. 使用集成测试确认它与现有沙箱协议一致。
3. 新功能稳定后，再单独评估是否让旧调试和判题服务迁移到该客户端。

必须处理：

- 非 2xx 状态。
- 空响应或非 JSON 响应。
- 返回列表数量与请求数量不一致。
- 沙箱状态字段未知。
- 编译成功但缺少 `fileId`。
- 超时、连接断开和部分结果。
- `delete` 失败只记录告警并进入清理补偿，不覆盖主任务原始异常。

## 13. 幂等、并发与恢复

### 13.1 消费者幂等

消费者收到 jobId 后先查询任务：

- `SUCCEEDED/CANCELLED`：直接 ACK。
- `FAILED` 且不是当前重试：直接 ACK。
- 已由其他消费者处理：通过乐观锁 `version` 或状态条件更新失败后退出。
- 可执行状态：使用条件更新抢占任务。

示意 SQL：

```sql
UPDATE algorithm_test_generation_job
SET status = 'AI_GENERATING', version = version + 1, started_at = NOW()
WHERE id = ? AND status IN ('CREATED', 'QUEUED') AND version = ?;
```

受影响行数为 0 表示未取得执行权。

### 13.2 分块幂等

staging 唯一键：

```text
(job_id, scale_id, case_index)
```

重试某批时可以先查询已有连续 case index，或者对该批范围执行确定性的删除后重建。由于生成器要求固定种子确定性，重建结果的哈希必须与旧结果一致；不一致则任务失败并要求人工检查生成器。

### 13.3 服务重启恢复

定时恢复器扫描超过阈值未更新的活动任务：

- 状态仍为 `QUEUED`：重新投递。
- `AI_GENERATING/GENERATOR_VALIDATING`：根据 scale 代码是否已落库继续。
- `INPUT_GENERATING/OUTPUT_GENERATING`：根据 staging 和计数继续下一个批次。
- `PERSISTING`：查询事务结果和正式表 `generation_job_id`；确认已发布则置成功，否则重新执行幂等发布。
- 超过最大恢复次数：置 `FAILED`。

## 14. 进度推送与前端预览

WebSocket 主题：

```text
/topic/test-generation/{jobId}
```

消息示例：

```json
{
  "jobId": 90001,
  "status": "INPUT_GENERATING",
  "progressPercent": 47,
  "message": "正在生成 LARGE 规模第 2/4 批输入",
  "generatedCases": 45,
  "requestedCases": 100,
  "timestamp": "2026-08-04T14:31:20+08:00"
}
```

WebSocket 只用于体验优化，页面刷新后必须能通过 `GET /jobs/{jobId}` 恢复真实状态。

预览接口只返回：

- 每个规模前若干条。
- 每条 input/output 前 `previewChars` 个字符。
- 完整字符数或字节数。
- SHA-256。
- 是否截断。

不返回整批完整数据，防止响应过大。

## 15. 安全与资源控制

### 15.1 生成代码安全

- 生成代码只能在沙箱运行，绝不能在 Spring Boot 主机执行。
- 沙箱应禁用网络、宿主文件系统挂载和子进程。
- 容器应使用只读根文件系统、临时目录限额、非 root 用户和进程数限制。
- 静态黑名单只作为额外检查，不能被视为安全边界。

### 15.2 资源上限

“最大资源”必须由配置限定：

- 生成器 CPU 时间上限。
- 参考解 CPU 时间上限。
- 内存上限。
- stdout/stderr 上限。
- 单条输入输出上限。
- 每规模和每任务总字节上限。
- 每题活动任务数量。
- 全局消费者并发数。

新限制只作用于生成任务，不修改 `problem_algorithm_limit` 中学生判题限制。

### 15.3 日志与敏感信息

不得记录：

- 完整生成器代码。
- 完整参考解代码。
- 完整测试输入输出。
- AI API key。
- 沙箱内部凭据。

日志只记录 jobId、problemId、scale、批次、数量、长度、哈希前缀、耗时和错误类型。

## 16. 建议包结构与新增类

建议把功能放在独立包中，避免继续扩大 `ProblemAlgorithmServiceImpl`：

```text
com.example.backend
├── controller
│   └── AlgorithmTestGenerationController.java
├── config
│   ├── AlgorithmTestGenerationProperties.java
│   └── AlgorithmTestGenerationRabbitConfig.java
├── aop/rabbitmq
│   └── AlgorithmTestGenerationConsumer.java
├── mapper
│   ├── AlgorithmTestGenerationJobMapper.java
│   ├── AlgorithmTestGenerationScaleMapper.java
│   ├── AlgorithmTestCaseStagingMapper.java
│   └── ProblemAlgorithmReferenceSolutionMapper.java
├── models/domain/algorithm/generation
│   ├── AlgorithmTestGenerationJob.java
│   ├── AlgorithmTestGenerationScale.java
│   ├── AlgorithmTestCaseStaging.java
│   └── ProblemAlgorithmReferenceSolution.java
├── models/request/algorithm/generation
│   └── ...Request.java
├── models/vo/algorithm/generation
│   └── ...VO.java
└── service/algorithm/generation
    ├── AlgorithmTestGenerationApplicationService.java
    ├── AlgorithmTestGenerationOrchestrator.java
    ├── AlgorithmTestGeneratorAiClient.java
    ├── GeneratorCodeValidator.java
    ├── SandboxExecutionService.java
    ├── ReferenceSolutionService.java
    ├── TestCaseStagingService.java
    ├── TestCaseValidationService.java
    ├── TestCasePublishService.java
    ├── GenerationProgressPublisher.java
    └── GenerationRecoveryScheduler.java
```

建议枚举：

```text
TestGenerationJobStatus
TestGenerationScaleStatus
TestGenerationWriteMode
TestGenerationScaleType
ReferenceSolutionStatus
ReferenceSolutionSourceType
StagingCaseStatus
```

## 17. 管理端交互建议

由于当前管理端缺少可维护源码，本节仅定义未来页面行为。

创建任务表单：

- 选择题目。
- 选择 AI 模型。
- 添加 1～5 种规模。
- 每种规模填写数量和约束。
- 选择 `APPEND/REPLACE`。
- 勾选“使用参考解生成标准输出”，默认不勾选。
- 勾选后必须选择一个 `VERIFIED` 参考解。
- 对不生成输出且无 checker 的题目显示二次确认。

任务详情：

- 展示总状态、进度、当前规模和批次。
- 展示每种规模的一份生成器代码，可复制和进入调试。
- 展示输入输出截断预览、长度和哈希。
- 支持取消、失败重试。
- 成功后展示实际写入数量、重复跳过数量和耗时。

## 18. 测试计划

### 18.1 单元测试

| 模块 | 测试点 |
| --- | --- |
| DTO 校验 | 缺字段、重复规模、数量越界、非法写入模式 |
| AI 响应解析 | 纯 JSON、Markdown 包裹、reasoning 前缀、缺少 code、超长响应 |
| JSONL 解析 | 多行输入、Unicode、转义、空行、行数错误、非法 JSON |
| 哈希与去重 | job 内重复、与正式表重复、哈希稳定性 |
| 状态机 | 合法和非法状态转换、取消、重试 |
| 发布事务 | APPEND、REPLACE、插入异常回滚 |
| 参考解规则 | 非 VERIFIED 拒绝、代码哈希变化拒绝 |

### 18.2 沙箱集成测试

- Python 生成器正常执行。
- 非 Python 参考解 build/exec/delete。
- Python 参考解直接执行。
- 编译错误、运行错误、超时、内存超限。
- stdout/stderr 超限。
- 沙箱返回数量不一致。
- 沙箱 HTTP 断连和非 JSON 响应。
- `delete` 清理失败后的补偿记录。

### 18.3 RabbitMQ 测试

- 重复消息只执行一次。
- 消费者处理中重启后恢复。
- 手动 ACK/NACK 正确。
- 最大重试后进入专用 DLQ。
- 正式判题队列不受生成任务阻塞。

### 18.4 数据库与事务测试

- 两个管理员同时为同一题目创建任务，只允许一个成功。
- `REPLACE` 删除后插入异常，旧样例仍完整存在。
- 大 LONGTEXT 分批写入不造成 Java OOM。
- staging 清理不删除活动任务数据。
- 历史 `input_hash=null` 时 APPEND 仍可工作。

### 18.5 业务验收场景

1. 普通输出题，生成 4 种规模并使用 C++ 参考解生成输出。
2. checker 题，不生成输出，正式表 output 为 `""`。
3. 一种规模 1000 条，分 40 批生成且服务内存稳定。
4. AI 生成器协议错误，任务失败且旧正式样例不变。
5. 第 20 批沙箱超时，重试后从 staging 断点继续。
6. `APPEND` 跳过重复输入并正确报告数量。
7. `REPLACE` 全部成功后一次性切换数据。
8. 用户取消任务，消费者在当前批结束后停止。

## 19. 分阶段实施顺序

### 阶段一：基础设施和数据模型

- 确认沙箱真实 API、资源字段和硬上限。
- 创建 4 张新表并扩展正式样例表。
- 建立实体、Mapper、枚举和配置类。
- 实现任务状态机和权限校验。

### 阶段二：沙箱与调试能力

- 实现独立 `SandboxExecutionService`。
- 实现生成器调试接口。
- 实现参考解 CRUD、调试和验证接口。
- 完成编译产物清理和超时测试。

### 阶段三：AI 和异步生成

- 实现专用 AI client 和严格 JSON 解析。
- 实现生成器验证、JSONL 解析和 staging 分批写入。
- 新建专用 MQ、DLQ、消费者和 WebSocket 进度。

### 阶段四：输出生成和最终发布

- 实现参考解分批运行。
- 实现数据校验、APPEND/REPLACE 事务发布。
- 实现幂等、取消、重试和服务重启恢复。

### 阶段五：管理端

- 找回或重建 `admin` 的可维护源码。
- 接入创建任务、进度、预览、调试、取消和重试页面。
- 做大数据量下的前端分页和截断显示。

## 20. 已知风险与实施前确认项

1. **沙箱协议能力未知**：当前后端只实际传 `cpuLimit/memoryLimit`。必须确认沙箱是否支持 stdout、stderr、进程数、网络和文件系统限制。
2. **现有正式判题一次加载全部样例**：新功能可能生成更多大样例，未来正式判题本身也可能出现 Java 请求体过大，需要另行评估分批判题；这不应混入本功能第一阶段。
3. **参考解正确性无法数学保证**：必须依赖可信来源、已有测试验证、人工确认和可选差分测试。
4. **管理端源码缺失**：当前只能看到构建产物和生成 API，无法在本阶段准确定位现有算法题编辑页面。
5. **历史重复样例**：增加唯一索引前要先审计数据。
6. **反向代理限制**：Nginx、沙箱服务和 Spring Boot 的请求体、响应体和超时必须一起核对。
7. **AI 输出不稳定**：严格协议校验、动态试跑和有限重试不可省略。
8. **资源竞争**：必须使用独立队列、低并发和任务级上限，不能影响学生正式判题。

## 21. 不能直接复用的旧代码

| 旧逻辑 | 不能直接复用的原因 | 正确处理 |
| --- | --- | --- |
| `/admin/testCase/add` | 先删后逐条插入，缺少长流程事务和恢复 | 新建发布服务和新接口 |
| `/judge/test` | 同步、整批构造请求、使用题目限制 | 只复用沙箱协议，新增分块客户端 |
| `problemAlgorithmSubmit` | 有比赛权限、统计、正式样例读取和提交副作用 | 抽取纯沙箱执行与 checker 能力 |
| `run_code` | 实际是 checker，不是参考解 | 新增参考解表 |
| `DeepSeekService.deepSeekAskerNonStream` | reasoning 拼接会破坏结构化 JSON | 新增专用 AI client |
| 现有 judge MQ 队列 | 正式判题资源，不能被长任务占用 | 新建生成专用 MQ |
| RabbitMQ 消息携带完整数据 | 消息巨大、难恢复、难审计 | 消息只携带 jobId，数据放 MySQL |

## 22. 最终验收标准

满足以下条件才可视为功能完成：

- 所有生成相关操作均通过新接口完成。
- 一种规模只保存一份生成器代码，实际生成支持分块。
- 管理员能配置各规模数量和约束。
- “生成标准输出”默认关闭。
- 仅 VERIFIED 参考解可以生成输出。
- checker 题能够保存空字符串输出并兼容现有判题。
- 大任务不把全部数据放入 Java 内存或 MQ。
- APPEND 去重正确，REPLACE 失败时旧数据不丢失。
- 消费者幂等，可取消、可有限重试、可在重启后恢复。
- 生成任务不占用正式判题队列。
- 前端只接收截断预览，完整数据安全落库。
- 单元、沙箱、MQ、事务和业务验收测试全部通过。

