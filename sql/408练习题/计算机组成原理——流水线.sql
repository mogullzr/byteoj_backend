INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5293, '408考研练习题——计算机组成原理——流水线第1题', '简单', '408考研练习题——计算机组成原理——流水线', '一个五级流水线的各个阶段延迟分别为 150、120、150、160 和 140 ns。流水线各阶段之间的寄存器延迟为 5 ns。假设没有流水线停顿，执行 100 条独立指令所需的总时间是（ ）ns。
', '[''17160'', ''16640'', ''17640'', ''15000'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
总时间 = (k + n - 1) × t_{p} = (5 + 100 - 1) × 165 = 104 × 165 = 17160 ns
$$
', 9, 'Mogullzr', '2026-02-02 11:52:01', 9, NULL, '2026-02-02 11:52:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5293');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5294, '408考研练习题——计算机组成原理——流水线第2题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个具有 5 个阶段的流水线处理器：指令获取（IF）、指令解码（ID）、执行（EX）、内存访问（MEM）和写回（WB）。除 EX 阶段外，其他每个阶段均需一个时钟周期。假设 ID 阶段仅解码指令，而寄存器读取在 EX 阶段完成。EX 阶段对 ADD 指令需要 1 个周期，对 MUL 指令需要 2 个周期。忽略流水线寄存器延迟。
考虑以下 8 条指令序列：
ADD, MUL, ADD, MUL, ADD, MUL, ADD, MUL
假设每条 MUL 指令数据依赖于其前一条 ADD 指令，且每条 ADD 指令（除第一条 ADD 外）数据依赖于其前一条 MUL 指令。定义加速比如下：
加速比 = （无操作数前递的执行时间） / （有操作数前递的执行时间）
在该流水线处理器上执行给定指令序列所获得的加速比（保留两位小数）是（ ）。
', '[]', '', '<strong><font color=''#2656b3''>在不使用操作数前递的情况下</font></strong>

|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ADD | IF | ID | EX | MEM | WB |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| MUL |  | IF |  |  |  | ID | EX | EX | MEM | WB |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| ADD |  |  |  |  |  | IF |  |  |  |  | ID | EX | MEM | WB |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| MUL |  |  |  |  |  |  |  |  |  |  | IF |  |  |  | ID | EX | EX | MEM | WB |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| ADD |  |  |  |  |  |  |  |  |  |  |  |  |  |  | IF |  |  |  |  | ID | EX | MEM | WB |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| MUL |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | IF |  |  |  | ID | EX | EX | MEM | WB |  |  |  |  |  |  |  |  |  |
| ADD |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | IF |  |  |  |  | ID | EX | MEM | WB |  |  |  |  |  |
| MUL |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | IF |  |  |  | ID | EX | EX | MEM | WB |

总共使用 37 个时钟周期。
<strong><font color=''#2656b3''>使用操作数前递的情况下</font></strong>

|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ADD | IF | ID | EX | MEM | WB |  |  |  |  |  |  |  |  |  |  |  |
| MUL |  | IF | ID | EX | EX | MEM | WB |  |  |  |  |  |  |  |  |  |
| ADD |  |  | IF | ID |  | EX | MEM | WB |  |  |  |  |  |  |  |  |
| MUL |  |  |  | IF |  | ID | EX | EX | MEM | WB |  |  |  |  |  |  |
| ADD |  |  |  |  |  | IF | ID |  | EX | MEM | WB |  |  |  |  |  |
| MUL |  |  |  |  |  |  | IF |  | ID | EX | EX | MEM | WB |  |  |  |
| ADD |  |  |  |  |  |  |  |  | IF | ID |  | EX | MEM | WB |  |  |
| MUL |  |  |  |  |  |  |  |  |  | IF |  | ID | EX | EX | MEM | WB |

总共使用 16 个时钟周期。
所以加速比 = 37 / 16 ≈ 3.08。
', 9, 'Mogullzr', '2026-02-02 11:52:01', 9, NULL, '2026-02-02 11:52:01', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5294');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5295, '408考研练习题——计算机组成原理——流水线第3题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个没有分支预测的五级指令流水线：取指（FI）、译码（DI）、取操作数（FO）、执行（EI）和写回（WO）。各阶段延迟分别为：FI 5 ns，DI 7 ns，FO 10 ns，EI 8 ns，WO 6 ns。每个阶段后有中间存储缓冲器，每个缓冲器延迟为 1 ns。程序包含 12 条指令 I1、I2、I3、…、I12，在此流水线处理器中执行。其中 I4 是唯一一条分支指令，其分支目标是 I9。若程序执行过程中该分支被采用，则完成该程序所需的时间（单位：ns）是（ ）。
', '[''132'', ''165'', ''176'', ''328'']', "['B']", 'B</font></strong>
- 关键分析：

- 分支指令 I4 的执行结果需等待 EI 阶段完成后才能确定，因此流水线在此期间必须暂停。
- 中间存储缓冲器延迟（1 ns）与阶段延迟共同构成每个周期的总耗时（10 ns + 1 ns = 11 ns/周期）。
- 流水线
|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| I1 | FI | DI | FO | EI | WO |  |  |  |  |  |  |  |  |  |  |
| I2 |  | FI | DI | FO | EI | WO |  |  |  |  |  |  |  |  |  |
| I3 |  |  | FI | DI | FO | EI | WO |  |  |  |  |  |  |  |  |
| I4 |  |  |  | FI | DI | FO | EI | WO |  |  |  |  |  |  |  |
| I9 |  |  |  |  |  |  |  |  | FI | DI | FO | EI | WO |  |  |
| I10 |  |  |  |  |  |  |  |  |  | FI | DI | FO | EI | WO |  |
| I11 |  |  |  |  |  |  |  |  |  |  | FI | DI | FO | EI | WO |
- 时间计算：
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>前 7 个周期</font></strong></font></strong>（从 I1 到 I4(EI) 完成）：  
7周期×11ns/周期=77ns
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>后 8 个周期</font></strong></font></strong>（I9(FI) 到 I12(WO)）：  
8周期×11ns/周期=88ns
- 总计：77ns+88ns=165ns', 9, 'Mogullzr', '2026-02-02 11:52:01', 9, NULL, '2026-02-02 11:52:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5295');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5296, '408考研练习题——计算机组成原理——流水线第4题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个具有四个阶段（S1、S2、S3 和 S4）的指令流水线，每个阶段仅包含组合逻辑电路。流水线寄存器需要位于每个阶段之间以及最后一个阶段的末尾。各阶段和流水线寄存器的延迟如图所示。在理想条件下，与对应的非流水线实现相比，该流水线在稳定状态下大约能获得多少加速比？（ ）

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/2d7d23a1e4d446f0b1d058df2863e000.svg)
', '[''4.0'', ''2.5'', ''1.1'', ''3.0'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>关键分析步骤：</font></strong>- 非流水线总延迟各阶段延迟相加：5 + 6 + 11 + 8 = 30ns
- 流水线周期确定

- 流水线周期由<strong><font color=''#2656b3''><strong><font color=''#2656b3''>最长阶段延迟</font></strong></font></strong>决定：`max(5, 6, 11, 8) = 11`ns
- 加上流水线寄存器开销：`11 + 1 = 12`ns
- 加速比计算$$\\text{加速比} = \\frac{\\text{非流水线总延迟}}{\\text{流水线周期}} = \\frac{30}{12} = 2.5$$<strong><font color=''#2656b3''>注意事项</font></strong>- 流水线寄存器的开销仅影响周期，不计入原始阶段延迟
- 稳定状态下的加速比反映单位时间内完成的指令数提升', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5296');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5297, '408考研练习题——计算机组成原理——流水线第5题', '简单', '408考研练习题——计算机组成原理——流水线', '一个 5 级流水线处理器包含以下阶段：指令取指（IF）、指令译码（ID）、操作数取指（OF）、执行操作（PO）和写回操作数（WO）。其中，IF、ID、OF 和 WO 阶段对任何指令均需 1 个时钟周期。PO 阶段的耗时则因指令类型而异：ADD 和 SUB 指令需要 1 个时钟周期，MUL 指令需要 3 个时钟周期，DIV 指令需要 6 个时钟周期。该流水线中使用了操作数前递技术。
执行以下指令序列需要多少个时钟周期？
', '[''13'', ''15'', ''17'', ''19'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>操作数转发（Operand Forwarding）：在这种技术中，操作数的值在被存储之前，就已经传递给了依赖该值的指令所需的流水线阶段。在上面的问题中，指令 I2 依赖于 I0 和 I1，而指令 I3 则依赖于 I2。我们可以通过时间-空间图来更清楚地理解这个问题。
|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| I0 | IF | ID | OF | PO | PO | PO | WO |  |  |  |  |  |  |  |  |
| I1 |  | IF | ID |  |  | OF | PO | PO | PO | PO | PO | PO | WO |  |  |
| I2 |  |  | IF | ID |  |  |  |  |  |  |  | OF | PO | WO |  |
| I3 |  |  |  | IF | ID |  |  |  |  |  |  |  | OF | PO | WO |
上图是一个指令在流水线中执行的时间-空间图。指令 I0 是一个乘法（MUL）操作，在 PO（执行）阶段需要 3 个时钟周期，在其他所有阶段仅需 1 个周期；指令 I1 是一个除法（DIV）操作，在 PO 阶段需要 6 个时钟周期，在其他阶段也只需 1 个周期。我们可以注意到，即使在第 4 个时钟周期中 OF（取操作数）阶段是空闲的，指令 I1 也没有进入该阶段。这是一个设计问题。操作数的获取应该在即将进入执行阶段之前进行，否则可能会导致数据错误。由于下一个周期 PO 阶段尚未空闲，因此 OF 阶段被延迟，直到指令 I1 即将进入 PO 阶段前的那个周期才进行 OF。指令 I2 是一个加法（ADD）操作，在所有阶段都只需 1 个时钟周期。但它是一个依赖操作，所需的操作数来自指令 I0 和 I1。指令 I2 需要使用 R5 和 R2 进行加法运算。R2 的值能够及时得到，因为当 I2 到达 PO 阶段时，R2 已经被写入内存。而 R5 则是另一个问题，因为 I2 的 PO 阶段与 I1 的 WO（写回）阶段是并行的，这意味着 I2 无法在执行之前从内存中获取 R5 的值。这时就用到了操作数转发的概念。在指令 I1 将其结果（R5）写回内存之前，它可以先将该值转发给 I2 的执行缓冲区（Fetch-Execute Buffer），这样 I2 就可以在与 I1 写回阶段并行的时钟周期中使用该值，而不需要额外等待从内存中读取，从而节省了一个时钟周期。同样的操作数转发机制也应用在指令 I3 上，它需要使用由 I2 计算得到的 R2 的值。通过转发机制，I3 可以提前获取该值，无需等待写回后再从内存中读取，因此同样节省了一个时钟周期。所以，通过操作数转发机制，我们总共节省了 2 个时钟周期（I2 节省 1 个，I3 节省 1 个）。从图中可以看到整个流水线总共用了 15 个时钟周期，每个阶段的一个实例代表一个时钟周期，最终总共 15 个周期。', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5297');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5298, '408考研练习题——计算机组成原理——流水线第6题', '简单', '408考研练习题——计算机组成原理——流水线', '在流水线处理器中，以下哪项描述是<strong><font color=''#2656b3''>不正确的</font></strong>？
I. 旁路技术可以处理所有 RAW 冒险。
II. 寄存器重命名可以消除所有寄存器相关的 WAR 冒险。
III. 动态分支预测可以完全消除控制冒险的惩罚。
', '[''仅 I 和 II'', ''仅 I 和 III'', ''仅 II 和 III'', ''I、II 和 III'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>I. 错误</font></strong></font></strong>：旁路技术无法处理所有 RAW 冒险。例如，当某条指令依赖于 LOAD 指令的结果时，LOAD 会在存储访问阶段（MA）更新寄存器值，因此其数据在执行阶段（EX）无法直接获取。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>II. 正确</font></strong></font></strong>：寄存器重命名可以消除所有 WAR 冒险。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>III. 错误</font></strong></font></strong>：动态分支预测虽能减少控制冒险的惩罚，但无法完全消除。', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5298');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5299, '408考研练习题——计算机组成原理——流水线第7题', '简单', '408考研练习题——计算机组成原理——流水线', '在指令执行流水线中，数据 TLB（Translation Lookaside Buffer）最早可以被访问的时机是（ ）：
', '[''在有效地址计算开始之前'', ''在有效地址计算过程中'', ''在有效地址计算完成后'', ''在数据缓存查找完成后'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>有效地址</font></strong></font></strong>是通过寻址方式计算得到的地址。
- 该地址仍为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>虚拟地址</font></strong></font></strong>，CPU 无法直接识别，需由内存管理单元（MMU）将其转换为对应的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>物理地址</font></strong></font></strong>。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TLB（Translation Lookaside Buffer）</font></strong></font></strong>的作用是在地址翻译过程中进行旁路操作（“Lookaside” 指的是在主流程之外并行执行的操作）。
- 必须先获得<strong><font color=''#2656b3''><strong><font color=''#2656b3''>虚拟地址</font></strong></font></strong>才能进行 TLB 查找，因此数据 TLB 最早可在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>有效地址计算完成后</font></strong></font></strong>被访问。', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5299');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5300, '408考研练习题——计算机组成原理——流水线第8题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个具有以下四个阶段的流水线处理器：
IF：指令取指
ID：指令译码和操作数取指
EX：执行
WB：写回
IF、ID 和 WB 阶段每个阶段需要 1 个时钟周期完成操作。EX 阶段所需的时钟周期数取决于指令类型。ADD 和 SUB 指令在 EX 阶段需要 1 个时钟周期，MUL 指令需要 3 个时钟周期。该流水线处理器使用操作数前递（Operand Forwarding）。完成以下指令序列需要多少个时钟周期？（ ）

```c
ADD R2, R1, R0       R2 <- R0 + R1
MUL R4, R3, R2       R4 <- R3 * R2
SUB R6, R5, R4       R6 <- R5 - R4
```
', '[''7'', ''8'', ''10'', ''14'']', "['B']", 'B</font></strong>
解释：指令周期阶段顺序IF”  ID”  EX”  WB”我们有 3 条指令，由于结果依赖性导致流水线等待。
|  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| I1 | IF | ID | EX | WB |  |  |  |  |
| I2 |  | IF | ID | EX | EX | EX | WB |  |
| I3 |  |  | IF | ID |  |  | EX | WB |
上表展示了给定指令的周期阶段及所需周期数。所需总周期数=8，因此选项 B 正确。', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5300');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5301, '408考研练习题——计算机组成原理——流水线第9题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个 6 级指令流水线，所有阶段完全平衡。假设流水线没有时钟周期开销。当应用程序在此 6 级流水线上运行时，若 25% 的指令导致 2 个流水线停顿周期，则相对于非流水线执行的速度提升为（ ）：
', '[''4'', ''8'', ''6'', ''7'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>非流水线执行时间</font></strong></font></strong>：6 个周期
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>流水线停顿影响</font></strong></font></strong>：25%的指令导致2个停顿周期
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>流水线时间计算</font></strong></font></strong>：1+(10025​×2)=1.5
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>速度提升比</font></strong></font></strong>：1.56​=4', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5301');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5302, '408考研练习题——计算机组成原理——流水线第10题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑以下处理器（ns 表示ns）。假设流水线寄存器的延迟为零。
哪个处理器具有最高的峰值时钟频率？（ ）
', '[''P1'', ''P2'', ''P3'', ''P4'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>峰值时钟频率 = 1 / 最大延迟</font></strong><strong><font color=''#2656b3''>各处理器中最大延迟最小的是 P3</font></strong>即：- P1：f = 1/2 = 0.5 GHz
- P2：f = 1/1.5 = 0.67 GHz
- P4：f = 1/1.1 GHz
- P3：f = 1/1 GHz = 1 GHz<strong><font color=''#2656b3''>因此 P3 是正确答案。</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5302');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5303, '408考研练习题——计算机组成原理——流水线第11题', '简单', '408考研练习题——计算机组成原理——流水线', '一个指令流水线包含五个阶段：取指令（IF）、指令译码和寄存器读取（ID/RF）、指令执行（EX）、内存访问（MEM）以及寄存器写回（WB），各阶段的延迟时间分别为 1 ns、2.2 ns、2 ns、1 ns 和 0.75 ns（ns 表示ns）。为了提高频率，设计者决定将 ID/RF 阶段拆分为三个子阶段（ID、RF1、RF2），每个子阶段的延迟时间为 2.2/3 ns。同时，EX 阶段被拆分为两个子阶段（EX1、EX2），每个子阶段的延迟时间为 1 ns。新设计共有八个流水线阶段。
某程序有 20% 的分支指令，在旧设计中这些指令在 EX 阶段执行，并在 EX 阶段结束时生成下一个指令指针；而在新设计中则在 EX2 阶段结束时生成下一个指令指针。在旧设计中，当 IF 阶段获取到分支指令后会暂停，直到计算出下一个指令指针。除分支指令外，其他所有指令在两种设计中的平均 CPI 均为 1。该程序在旧设计和新设计上的执行时间分别为 P 和 Q ns。P/Q 的值为（  ）。
', '[''1.5'', ''1.4'', ''1.8'', ''2.5'']', "['A']", 'A</font></strong>
每条指令平均需要 1 个时钟周期。关键计算步骤如下：
$$
\\frac{P}{Q} = \\frac{3.08}{2.0} = 1.54 ≈ 1.5
$$
结论：选择 A（1.5）。', 9, 'Mogullzr', '2026-02-02 11:52:03', 9, NULL, '2026-02-02 11:52:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5303');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5304, '408考研练习题——计算机组成原理——流水线第12题', '简单', '408考研练习题——计算机组成原理——流水线', '一个 CPU 具有五级流水线，运行频率为 1GHz。指令获取发生在流水线的第一阶段。条件分支指令在流水线的第三阶段计算目标地址并评估条件。处理器在条件分支后会停止获取新指令，直到分支结果确定。一个程序执行了 10⁹ 条指令，其中 20% 是条件分支。如果每条指令平均需要一个周期完成，则该程序的总执行时间是（ ）。
', '[''1.0 秒'', ''1.2 秒'', ''1.4 秒'', ''1.6 秒'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 停顿周期计算

- 条件分支在第 3 阶段确定结果，因此造成<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 个停顿周期</font></strong></font></strong>（第 2、3 阶段无法继续取指）
- 总惩罚周期

- 条件分支占比：20% × 10⁹ = 2×10⁸ 条
- 单条分支惩罚：2 个周期
- 总惩罚周期 = 2×10⁸ × 2 = 4×10⁸ 周期
- 基础执行时间

- 总指令数：10⁹ 条
- 频率：1GHz = 10⁹ 周期/秒
- 基础时间 = 10⁹ / 10⁹ = 1 秒
- 总执行时间

- 惩罚时间 = 4×10⁸ / 10⁹ = 0.4 秒
- 总时间 = 1 + 0.4 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1.4 秒</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5304');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5305, '408考研练习题——计算机组成原理——流水线第13题', '简单', '408考研练习题——计算机组成原理——流水线', '一个具有 5 个阶段的流水线 CPU，其阶段顺序如下：
IF — 从指令存储器中获取指令，
RD — 指令译码和寄存器读取，
EX — 执行：ALU 操作用于数据和地址计算，
MA — 数据存储器访问 - 对于写入访问，使用 RD 阶段读取的寄存器，
WB — 寄存器写回。
考虑以下指令序列：

```c
I1 : L R0, loc1; R0 <= M[loc1]  
I2 : A R0, R0; R0 <= R0 + R0  
I3 : S R2, R0; R2 <= R2 - R0
```
假设每个阶段需要一个时钟周期，CPU 使用操作数前递。从 I1 的获取开始，完成上述指令序列需要多少个时钟周期？（ ）
', '[''8'', ''10'', ''12'', ''15'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 不使用操作数前递时：T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11
l1 IF RD EX MA WB
l2    IF       RD EX MA WB
l3             IF RD    EX MA  WB
- 使用操作数前递时：T1 T2 T3 T4 T5 T6 T7 T8
l1 IF RD EX MA WB
l2    IF RD EX MA WB
l3       IF RD EX MA WB综上，选项 A 正确。', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5305');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5306, '408考研练习题——计算机组成原理——流水线第14题', '简单', '408考研练习题——计算机组成原理——流水线', '一个 4 级流水线的各级延迟分别为 150、120、160 和 140 ns。各级之间使用的寄存器有 5 ns的延迟。假设时钟频率恒定，处理 1000 个数据项所需的总时间是（ ）。
', '[''120.4 ms'', ''160.5 ms'', ''165.5 ms'', ''590.0 ms'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>阶段间延迟</font></strong></font></strong>：每个阶段之间的寄存器延迟为 5 ns
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第一个数据项延迟</font></strong></font></strong>：为最大阶段延迟加上寄存器延迟后乘以级数：(160+5)×4=660ns
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>后续数据项延迟</font></strong></font></strong>：  
每个数据项仅需等待最长阶段时间（160 ns）与寄存器延迟之和：999×(160+5)=999×165ns
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总延迟计算</font></strong></font></strong>：660+999×165=165,500ns=165.5μs', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5306');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5307, '408考研练习题——计算机组成原理——流水线第15题', '简单', '408考研练习题——计算机组成原理——流水线', '对于一个具有单个 ALU 的流水线 CPU，考虑以下情况：
A. 第 j+1 条指令使用第 j 条指令的结果作为操作数
B. 条件跳转指令
C. 第 j 条和第 j+1 条指令需要同时使用 ALU
上述哪一项会导致流水线冒险？（ ）
', '[''仅 A 和 B'', ''仅 B 和 C'', ''仅 B'', ''A、B 和 C'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A 项</font></strong></font></strong>描述的是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据冒险</font></strong></font></strong>（Data Hazard），因为后续指令依赖前一条指令的计算结果。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B 项</font></strong></font></strong>涉及<strong><font color=''#2656b3''><strong><font color=''#2656b3''>控制冒险</font></strong></font></strong>（Control Hazard），条件跳转可能导致流水线无法确定下一条指令。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C 项</font></strong></font></strong>属于<strong><font color=''#2656b3''><strong><font color=''#2656b3''>结构冒险</font></strong></font></strong>（Structural Hazard），两条指令同时竞争同一 ALU 资源。  
因此，所有三项均会导致流水线冒险，正确答案为 D。', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5307');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5308, '408考研练习题——计算机组成原理——流水线第16题', '简单', '408考研练习题——计算机组成原理——流水线', '如果以下情况发生，流水线处理器的性能会受到影响（ ）：
', '[''流水线阶段具有不同的延迟'', ''连续指令相互依赖'', ''流水线阶段共享硬件资源'', ''以上所有情况'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 流水线阶段具有不同延迟

- 理想情况下，流水线各阶段应具有均衡的延迟以实现最大吞吐量。若阶段延迟差异较大，会导致某些阶段成为瓶颈，降低整体效率。
- 连续指令相互依赖

- 数据依赖（如前一条指令的输出是下一条指令的输入）会引发数据冒险，迫使流水线暂停等待，造成性能损失。
- 流水线阶段共享硬件资源

- 资源冲突（如多条指令同时需要同一功能单元）会导致结构冒险，需通过插入空操作（NOP）或重命名寄存器解决，增加时延。
- 综合影响

- 上述三种情况均可能导致流水线阻塞、停顿或资源争用，从而降低处理器的并行度与性能。因此选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5308');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5309, '408考研练习题——计算机组成原理——流水线第17题', '简单', '408考研练习题——计算机组成原理——流水线', '将流水线 CPU 上单条指令的执行时间 T1 与非流水线但相同 CPU 上的执行时间 T2 进行比较，我们可以说（ ）：
', '[''T1 ≤ T2'', ''T1 ≥ T2'', ''T1 < T2'', ''T1 是 T2 加上一条指令取指周期的时间'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>流水线技术不会增加单条指令的执行时间。它通过多级流水线并行执行指令来提升整体性能。<strong><font color=''#2656b3''>核心假设</font></strong>- 在流水线和非流水线 CPU 中，每个阶段均耗时`T`单位时间
- 流水线 CPU 总阶段数 = 非流水线 CPU 总阶段数 = K
- 指令数量 N = 1<strong><font color=''#2656b3''>时间对比</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>流水线 CPU</font></strong></font></strong>：总时间T1​=(K+(N−1))×T=KT
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>非流水线 CPU</font></strong></font></strong>：总时间T2​=KN×T=KT<strong><font color=''#2656b3''>结论</font></strong>
当考虑流水线 CPU 中的缓冲延迟后，实际执行时间会略高于理论值，即$T_{1} ≥ T_{2}$。因此选项<strong><font color=''#2656b3''>(B)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5309');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5310, '408考研练习题——计算机组成原理——流水线第18题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个非流水线处理器，其时钟频率为 2.5 GHz，每条指令平均周期数（CPI）为 4。该处理器升级为具有五个阶段的流水线处理器；但由于内部流水线延迟，时钟频率降低到 2 GHz。假设流水线中没有停顿。在此流水线处理器中实现的加速比是（ ）。
', '[''3.2'', ''3.0'', ''2.2'', ''2.0'']', "['A']", 'A</font></strong>
加速比 = 旧处理器的执行时间 / 新处理器的执行时间- 旧处理器的执行时间=CPI×周期时间=4×2.51​ns=1.6ns
- 新处理器的执行时间

- 流水线无停顿时 CPI ≈ 1  
=1×21​ns  
=0.5ns
- 加速比计算=0.51.6​=3.2', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5310');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5311, '408考研练习题——计算机组成原理——流水线第19题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑以下包含五条指令 I1 到 I5 的代码序列。每条指令的格式为：
`OP Ri, Rj, Rk`
其中操作`OP`对寄存器 Rj 和 Rk 的内容进行运算，结果存储在寄存器 Ri 中。

```c
I1 : ADD R1, R2, R3
I2 : MUL R7, R1, R3
I3 : SUB R4, R1, R5
I4 : ADD R3, R2, R4
I5 : MUL R7, R8, R9
```
考虑以下三个陈述：
S1: 指令 I2 和 I5 之间存在反向依赖（anti-dependence）。
S2: 指令 I2 和 I4 之间存在反向依赖。
S3: 在指令流水线中，反向依赖总是会导致一个或多个停顿（stall）。
上述陈述中哪些是正确的？（ ）
', '[''仅 S1 正确'', ''仅 S2 正确'', ''仅 S1 和 S2 正确'', ''仅 S2 和 S3 正确'']', "['B']", 'B</font></strong>
给出的指令可以表示为：
```c
I1: R1 = R2 + R3
I2: R7 = R1 * R3
I3: R4 = R1 - R5
I4: R3 = R2 + R4
I5: R7 = R8 * R9
```
<strong><font color=''#2656b3''>反向依赖（Anti-dependence）定义</font></strong>反向依赖（也称为写后读，WAR）是指某条指令需要某个值，但该值随后被更新的情况。<strong><font color=''#2656b3''>陈述分析</font></strong>- S1: 指令 I2 和 I5 之间存在反向依赖。❌ 错误。I2 和 I5 都写入 R7，不存在读后写的情况。
- S2: 指令 I2 和 I4 之间存在反向依赖。✅ 正确。I2 读取 R3，而 I4 写入 R3。
- S3: 在指令流水线中，反向依赖总是导致停顿。❌ 错误。反向依赖可以通过寄存器重命名消除。例如：1. B = 3
N. B2 = B
2. A = B2 + 1
3. B = 7通过引入中间变量 B2，消除了原始代码中对 B 的反向依赖问题。', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5311');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5312, '408考研练习题——计算机组成原理——流水线第20题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个具有 4 个流水线阶段的处理器。四个指令 I1、I2、I3、I4 在阶段 S1、S2、S3、S4 中所需的周期数如下所示：
执行以下循环需要多少个周期？

```c
for (i=1; i <= 2; i++) {
    I1, I2, I3, I4
}
```
', '[''16'', ''23'', ''28'', ''30'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>对于该题，有以下流水线：
|  | C₁ | C₂ | C₃ | C₄ | C₅ | C₆ | C₇ | C₈ | C₉ | C₁₀ | C₁₁ | C₁₂ | C₁₃ | C₁₄ | C₁₅ | C₁₆ | C₁₇ | C₁₈ | C₁₉ | C₂₀ | C₂₁ | C₂₂ | C₂₃ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| I₁ | S₁ | S₁ | S₂ | S₃ | S₄ |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| I₂ |  |  | S₁ | S₂ | S₂ | S₂ | S₃ | S₃ | S₄ | S₄ |  |  |  |  |  |  |  |  |  |  |  |  |  |
| I₃ |  |  |  | S₁ | S₁ | - | S₂ | - | S₃ | - | S₄ | S₄ | S₄ |  |  |  |  |  |  |  |  |  |  |
| I₄ |  |  |  |  |  | S₁ | - | S₂ | S₂ | S₃ | S₃ | - | - | S₄ | S₄ |  |  |  |  |  |  |  |  |
| I₁ |  |  |  |  |  |  | S₁ | S₁ | - | S₂ | - | S₃ | - | - | - | S₄ |  |  |  |  |  |  |  |
| I₂ |  |  |  |  |  |  |  |  | S₁ | - | S₂ | S₂ | S₂ | S₃ | S₃ | - | S₄ | S₄ |  |  |  |  |  |
| I₃ |  |  |  |  |  |  |  |  |  | S₁ | S₁ | - | - | S₂ | - | S₃ | - | - | S₄ | S₄ | S₄ |  |  |
| I₄ |  |  |  |  |  |  |  |  |  |  |  | S₁ | - | - | S₂ | S₂ | S₃ | S₃ | - | - | - | S₄ | S₄ |
执行循环指令总共需要 23 个时钟周期。', 9, 'Mogullzr', '2026-02-02 11:52:04', 9, NULL, '2026-02-02 11:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5312');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5313, '408考研练习题——计算机组成原理——流水线第21题', '简单', '408考研练习题——计算机组成原理——流水线', '我们有两个同步流水线处理器的设计 D1 和 D2。D1 有 5 个流水线阶段，执行时间分别为 3 ns、2 ns、4 ns、2 ns和 3 ns；而设计 D2 有 8 个流水线阶段，每个阶段的执行时间为 2 ns。使用设计 D2 相比设计 D1 执行 100 条指令可以节省多少时间？（ ）
', '[''214 ns'', ''202 ns'', ''86 ns'', ''200 ns'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>公式</font></strong>
总执行时间 = (k + n – 1) × 最大时钟周期时间
其中 k = 流水线阶段总数，n = 指令总数<strong><font color=''#2656b3''>设计 D1</font></strong>- k = 5
- n = 100
- 最大时钟周期时间 = 4 ns
- 总执行时间 = (5 + 100 - 1) × 4 = 416 ns<strong><font color=''#2656b3''>设计 D2</font></strong>- k = 8
- n = 100
- 每个时钟周期时间 = 2 ns
- 总执行时间 = (8 + 100 - 1) × 2 = 214 ns<strong><font color=''#2656b3''>结论</font></strong>
节省时间 = 416 – 214 = 202 ns
因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5313');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5314, '408考研练习题——计算机组成原理——流水线第22题', '简单', '408考研练习题——计算机组成原理——流水线', '一个 4 级流水线的各阶段延迟分别为 800、500、400 和 300 ns。将第一个阶段（延迟 800 ns）替换为功能等效的两个阶段，其延迟分别为 600 和 350 ns。该流水线的吞吐量约增加了（ ）百分比。
', '[''33'', ''30'', ''38'', ''100'']', "['*', '*', 'A', '*', '*']", '**A**</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
T_{1} = \\frac{1}{最大延迟} = \\frac{1}{800}
$$
答案选择最接近的 A。', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5314');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5315, '408考研练习题——计算机组成原理——流水线第23题', '简单', '408考研练习题——计算机组成原理——流水线', '假设函数 F 和 G 分别可以通过功能单元 UF 和 UG 在 5 ns 和 3 ns内完成计算。现有两个 UF 实例和两个 UG 实例，需要实现对 1 ≤ i ≤ 10 的 F(G(Xi)) 计算。忽略所有其他延迟，完成此计算所需的最短时间是（  ）ns。
', '[''28'', ''20'', ''18'', ''30'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>逐步分析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>流水线原理</font></strong></font></strong>：通过重叠指令执行提升吞吐量，但不会减少单条指令的执行时间。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>瓶颈分析</font></strong></font></strong>：UF 耗时 5ns（瓶颈），UG 耗时 3ns。各功能单元数量均为 2 个。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>任务分配</font></strong></font></strong>：

- 每个功能单元需处理 5 个任务（共 10 个 Xi）。
- G 计算从时间 0 开始，F 需等待 G 完成第一个元素（3ns 后）才能启动。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时计算</font></strong></font></strong>：
- UF 总耗时 = (5ns × 10 个任务) / 2 个单元 = 25ns
- 初始等待时间 = 3ns（G 第一个结果就绪时间）
- 最终总时间 = 3ns + 25ns =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>28ns</font></strong></font></strong><strong><font color=''#2656b3''>另一种解法</font></strong>：- 每个功能单元处理 5 个任务：

- G 从时间 0 开始，F 在 3ns 后启动。
- F 结束时间为：3ns + (5ns × 5 个任务) =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>28ns</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5315');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5316, '408考研练习题——计算机组成原理——流水线第24题', '简单', '408考研练习题——计算机组成原理——流水线', '一个处理器需要 12 个时钟周期来完成一条指令 I。对应的流水线处理器使用 6 个阶段，各阶段的执行时间分别为 3、2、5、4、6 和 2 个时钟周期。假设要执行大量指令，其渐近加速比是多少？（ ）
', '[''1.83'', ''2'', ''3'', ''6'']', "['B']", 'B</font></strong>
对于非流水线处理器，完成 1 条指令需要 12 个周期。因此，n 条指令需要 12n 个周期。
对于流水线处理器，每个阶段的时间 = max{各阶段周期} = max{3, 2, 5, 4, 6 和 2} = 6 个周期。因此，n 条指令需要：6×6 + (n-1)×6（第一条指令需要 6×6 个周期，其余 n-1 条每条增加 6 个周期）。
当指令数量趋近于无穷大时：
$$
\\lim_{n→∞} \\lbrack 12n/(36 + 6(n - 1)) \\rbrack  = 12/6 = 2
$$
', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5316');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5317, '408考研练习题——计算机组成原理——流水线第25题', '简单', '408考研练习题——计算机组成原理——流水线', '一个以 100 MHz 运行的非流水线单周期处理器被转换为具有五个阶段的同步流水线处理器，各阶段分别需要 2.5 ns、1.5 ns、2 ns、1.5 ns 和 2.5 ns。锁存器的延迟为 0.5 ns。对于大量指令，该流水线处理器的速度提升是（ ）：
', '[''4.5'', ''4.0'', ''3.33'', ''3.0'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
加速比 = \\frac{非流水线时间}{流水线时间} = \\frac{10}{3.0} = 3.33
$$
', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5317');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5318, '408考研练习题——计算机组成原理——流水线第26题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个没有分支预测的五级指令流水线：取指令（IF）、译码（DI）、取操作数（FO）、执行（EI）和写回（WO）。各阶段延迟分别为 IF 5 ns、DI 17 ns、FO 10 ns、EI 8 ns 和 WO 6 ns。每个阶段后有中间存储缓冲器，每个缓冲器延迟为 1 ns。一个包含 100 条指令 I1, I2, I3, …, I100 的程序在此流水线处理器中执行。其中 I17 是唯一的分支指令，其分支目标是 I91。如果在程序执行过程中发生分支跳转，则完成该程序所需的总时间（单位：ns）是 （ ）。
', '[''612'', ''1854'', ''1133'', ''578'']', "['A']", 'A</font></strong>

| 指令 | 完成的时钟周期 |
| --- | --- |
| I1 | 5 |
| I2 | 6 |
| – | – |
| I17 | 21 |
| I91 | 25 |
| I92 | 26 |
| – | – |
| I100 | 34 |
因此，总共需要<strong><font color=''#2656b3''>34 个周期</font></strong>完成给定程序，每个周期耗时 (17+1 =)<strong><font color=''#2656b3''>18 ns</font></strong>。
所以总时间为`34 × 18 = 612 ns`。选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5318');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5319, '408考研练习题——计算机组成原理——流水线第27题', '简单', '408考研练习题——计算机组成原理——流水线', '某 RISC 处理器的指令流水线包含以下阶段：取指（Instruction Fetch，IF）、译码（Instruction Decode，ID）、取操作数（Operand Fetch，OF）、执行操作（Perform Operation，PO）和写回（Writeback，WB）。IF、ID、OF 和 WB 阶段每个阶段对每条指令各需 1 个时钟周期。现考虑一个包含 100 条指令的序列。在 PO 阶段中，40 条指令各需要 3 个时钟周期，35 条指令各需要 2 个时钟周期，其余 25 条指令各需要 1 个时钟周期。假设不存在数据冒险和控制冒险。完成该指令序列执行所需的时钟周期数是（ ）。
', '[''219'', ''104'', ''115'', ''220'']', "['A']", 'A</font></strong>
已知总指令数$n = 100$，阶段数$k = 5$。若某指令需要$c$个周期，则这些指令会产生$c - 1$次停顿。因此所需时钟周期总数为：
一般情况下的总周期数 + 额外周期数（此处为 PO 阶段），
即$(n + k - 1)$+ 额外周期 =$(100 + 5 - 1) + 40 × (3 - 1) + 35 × (2 - 1) + 25 × (1 - 1) = (100 + 4) + 80 + 35 + 0 = 104 + 115 = 219$周期。
因此选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5319');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5320, '408考研练习题——计算机组成原理——流水线第28题', '简单', '408考研练习题——计算机组成原理——流水线', '某并行程序在单个 CPU 上执行需要 100 秒。如果该计算中有 20% 的部分是严格顺序执行的，那么理论上该程序在 2 个 CPU 和 4 个 CPU 上运行时的最佳可能耗时分别为（ ）。
', '[''55 和 45 秒'', ''80 和 20 秒'', ''75 和 25 秒'', ''60 和 40 秒'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 2 个处理器：

- 20% 的顺序工作由处理器 p1 完成（耗时 20 秒）
- 剩余 80% 的工作平均分配给 p1 和 p2（各 40 秒）
- 总耗时：20 + 40 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>60 秒</font></strong></font></strong>
- 4 个处理器：

- 20% 的顺序工作由任意一个处理器完成（耗时 20 秒）
- 剩余 80% 的工作分配给 4 个处理器（各 20 秒）
- 总耗时：20 + 20 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>40 秒</font></strong></font></strong>选项 D 正确。', 9, 'Mogullzr', '2026-02-02 11:52:05', 9, NULL, '2026-02-02 11:52:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5320');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5321, '408考研练习题——计算机组成原理——流水线第29题', '简单', '408考研练习题——计算机组成原理——流水线', '考虑一个以 2.5 GHz 运行的非流水线处理器。它需要 5 个时钟周期来完成一条指令。你打算将该处理器改造为 5 级流水线。由于流水线相关的开销，必须将流水线处理器的频率降低到 2 GHz。在给定程序中，假设 30% 是内存指令，60% 是 ALU 指令，其余的是分支指令。5% 的内存指令会因缓存未命中导致每个指令产生 50 个时钟周期的停顿，50% 的分支指令会导致每个指令产生 2 个时钟周期的停顿。假设 ALU 指令的执行没有停顿。对于这个程序，流水线处理器相对于非流水线处理器的速度提升（保留两位小数）是多少？（ ）
', '[''2.16'', ''2.50'', ''1.50'', ''1.16'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>非流水线处理器性能分析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时钟周期时间</font></strong></font></strong>：  
Tnon-pipeline​=2.5×1091​=0.4ns
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总时钟周期数</font></strong></font></strong>：  
每条指令需 5 个周期，总指令数为m，则总周期数为5m
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时</font></strong></font></strong>：  
5m×0.4ns=2mns<strong><font color=''#2656b3''>流水线处理器性能分析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时钟周期时间</font></strong></font></strong>：  
Tpipeline​=2×1091​=0.5ns
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>各指令类型周期开销</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>内存指令</font></strong></font></strong>（占 30%）：

- 5% 缓存未命中：0.05×(50+1)=2.55
- 95% 正常访问：0.95×1=0.95
- 平均周期数：2.55+0.95=3.5
- 总贡献：0.3m×3.5=1.05m
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>ALU 指令</font></strong></font></strong>（占 60%）：

- 无停顿，平均周期数为 1
- 总贡献：0.6m×1=0.6m
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分支指令</font></strong></font></strong>（占 10%）：

- 50% 停顿：0.5×(2+1)=1.5
- 50% 正常：0.5×1=0.5
- 平均周期数：1.5+0.5=2
- 总贡献：0.1m×2=0.2m
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总时钟周期数</font></strong></font></strong>：  
1.05m+0.6m+0.2m=1.85m
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时</font></strong></font></strong>：  
1.85m×0.5ns=0.925mns<strong><font color=''#2656b3''>加速比计算</font></strong>
$$
加速比 = \\frac{非流水线耗时}{流水线耗时} = \\frac{2m}{0.925m} ≈ 2.16
$$
', 9, 'Mogullzr', '2026-02-02 11:52:06', 9, NULL, '2026-02-02 11:52:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1343', '5321');
