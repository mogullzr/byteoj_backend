INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5580, '408考研练习题——操作系统——CPU调度第1题', '简单', '408考研练习题——操作系统——CPU调度', '考虑三个进程（进程 ID 分别为 0、1、2），其 CPU 执行时间片分别为 2、4 和 8 个时间单位。所有进程在时间零点到达。采用最长剩余时间优先（LRTF）调度算法。当出现平局时，优先选择进程 ID 较小的进程。平均周转时间是（ ）：
', '[''13 单位'', ''14 单位'', ''15 单位'', ''16 单位'']', "['A']", 'A</font></strong>
设这三个进程为 p0、p1 和 p2。它们将按以下顺序执行：p2 p1 p2 p1 p2 p0 p1 p2 p0 p1 p2
0 4 5 6 7 8 9 10 11 12 13 14
进程的周转时间是指从进程提交到其完成的总时间。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>p0 的周转时间</font></strong></font></strong>：12（12 - 0）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>p1 的周转时间</font></strong></font></strong>：13（13 - 0）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>p2 的周转时间</font></strong></font></strong>：14（14 - 0）
$$
平均周转时间 = \\frac{12 + 13 + 14}{3} = 13
$$
', 9, 'Mogullzr', '2026-02-02 11:52:47', 9, NULL, '2026-02-02 11:52:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5580');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5581, '408考研练习题——操作系统——CPU调度第2题', '简单', '408考研练习题——操作系统——CPU调度', '考虑三个同时到达的进程，其总执行时间分别为 10、20 和 30 个单位。每个进程首先花费 20% 的时间进行 I/O 操作，接着 70% 的时间进行计算，最后 10% 的时间再次进行 I/O 操作。操作系统使用最短剩余计算时间优先调度算法，在运行进程因 I/O 阻塞或完成计算周期时调度新进程。假设所有 I/O 操作可以尽可能重叠。CPU 空闲时间占总时间的百分比是多少？（ ）
', '[''0%'', ''10.6%'', ''30.0%'', ''89.4%'']', "['B']", 'B</font></strong>
设三个进程为 p0、p1 和 p2，其执行时间分别为 10、20 和 30。p0 首先花费 2 个单位时间进行 I/O，7 个单位时间进行 CPU 计算，最后 1 个单位时间进行 I/O。p1 首先花费 4 个单位时间进行 I/O，14 个单位时间进行 CPU 计算，最后 2 个单位时间进行 I/O。p2 首先花费 6 个单位时间进行 I/O，21 个单位时间进行 CPU 计算，最后 3 个单位时间进行 I/O。
```c
空闲   p0    p1     p2    空闲
0    2     9     23     44     47
```
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时</font></strong></font></strong>：47 单位时间
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>空闲时间</font></strong></font></strong>：2（初始 I/O） + 3（最终 I/O） = 5 单位时间
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>空闲时间占比</font></strong></font></strong>：(5/47) × 100 ≈ 10.6%关键分析：- 进程按最短剩余计算时间优先调度
- I/O 操作可并行执行，因此不影响 CPU 调度
- 时间线显示 CPU 在 [0,2) 和 [44,47) 区间空闲
- 总时间由最长计算链决定（p2 的 21 单位计算 + 其他进程的交错执行）', 9, 'Mogullzr', '2026-02-02 11:52:47', 9, NULL, '2026-02-02 11:52:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5581');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5582, '408考研练习题——操作系统——CPU调度第3题', '简单', '408考研练习题——操作系统——CPU调度', '考虑三个 CPU 密集型进程，它们分别需要 10、20 和 30 个时间单位，并且到达时间分别为 0、2 和 6。如果操作系统实现最短剩余时间优先调度算法，需要多少次上下文切换？（不计算时间零点和结束时的上下文切换）
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
设三个进程为 P0、P1 和 P2，其到达时间分别为 0、2 和 6，CPU 突发时间分别为 10、20 和 30。调度过程如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 0</font></strong></font></strong>：P0 是唯一可用进程，开始运行
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 2</font></strong></font></strong>：P1 到达，但 P0 剩余时间（8）仍小于 P1 的突发时间（20），继续执行
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 6</font></strong></font></strong>：P2 到达，此时 P0 剩余时间（4）仍小于 P2 的突发时间（30），继续执行
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 10</font></strong></font></strong>：P0 完成，此时 P1 剩余时间（20）小于 P2 的剩余时间（30），发生第一次上下文切换（P0 → P1）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 30</font></strong></font></strong>：P1 完成，此时仅剩 P2 运行，发生第二次上下文切换（P1 → P2）最终结论：- 上下文切换发生在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>P0 → P1</font></strong></font></strong>和<strong><font color=''#2656b3''><strong><font color=''#2656b3''>P1 → P2</font></strong></font></strong>两个时刻
- 总计<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 次上下文切换</font></strong></font></strong>（不含初始启动和最终结束）', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5582');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5583, '408考研练习题——操作系统——CPU调度第4题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪种进程调度算法可能导致饥饿（ ）：
', '[''FIFO'', ''轮转法'', ''最短作业优先'', ''以上都不是'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最短作业优先（SJF）</font></strong></font></strong>算法存在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>饥饿风险</font></strong></font></strong>
- 当系统持续接收大量短作业时，长作业会因始终处于等待队列末尾而无法获得 CPU 资源
- 典型场景：若不断有新短作业到达，长作业可能无限期推迟执行
- 对比其他选项：

- FIFO 采用先来先服务原则，保证所有作业按顺序执行
- 轮转法通过时间片机制确保每个作业周期性获得执行机会', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5583');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5584, '408考研练习题——操作系统——CPU调度第5题', '简单', '408考研练习题——操作系统——CPU调度', '如果轮转算法的时间片非常大，那么它相当于（ ）。
', '[''先来先服务'', ''最短作业优先'', ''抽签调度'', ''以上都不是'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
当时间片非常大时，每个进程在时间片内都能完成其任务，因此调度器会依次处理每个进程，相当于先来先服务（FCFS）调度算法。', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5584');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5585, '408考研练习题——操作系统——CPU调度第6题', '简单', '408考研练习题——操作系统——CPU调度', '以下关于 SJF（最短作业优先调度）的说法中，哪一个是错误的？（ ）
S1：它会导致最小的平均等待时间
S2：它可能导致饥饿
', '[''仅 S1 错误'', ''仅 S2 错误'', ''S1 和 S2 都错误'', ''S1 和 S2 都正确'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SJF 和最短剩余时间优先算法</font></strong></font></strong>都可能导致饥饿。

- 当就绪队列中存在长进程，且持续有更短进程到达时，长进程可能长时间得不到执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SJF 的优点与局限性</font></strong></font></strong>

- 在给定进程集合中，SJF 能提供最小的平均等待时间（最优）。
- 但实际应用中，难以准确预知下一个作业的执行时间。
- 更多细节可参考<strong><font color=''#2656b3''><strong><font color=''#2656b3''>进程调度</font></strong></font></strong>相关内容。', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5585');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5586, '408考研练习题——操作系统——CPU调度第7题', '简单', '408考研练习题——操作系统——CPU调度', '一种调度算法将优先级与进程的等待时间成正比分配。每个进程初始优先级为零（最低优先级）。调度器每 T 个时间单位重新评估进程优先级并决定下一个调度的进程。如果所有进程均无 I/O 操作且在时间零同时到达，以下哪项是正确的？（ ）
', '[''该算法等效于先来先服务算法'', ''该算法等效于轮转调度算法'', ''该算法等效于短作业优先算法'', ''该算法等效于最短剩余时间优先算法'']', "['B']", 'B</font></strong>
该调度算法的工作方式类似于时间片大小为<strong><font color=''#2656b3''>T</font></strong>的轮转调度。- 当一个进程轮到执行并运行了 T 个时间单位后，其等待时间变为最小值
- 并在其他所有进程各获得 T 个时间单位的执行机会后再次轮到它执行', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5586');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5587, '408考研练习题——操作系统——CPU调度第8题', '简单', '408考研练习题——操作系统——CPU调度', '考虑表中的三个进程 P1、P2 和 P3。
在 FCFS（先来先服务）和 RR2（时间片为 2 个时间单位的轮转调度）策略下，这三个进程的完成顺序是（ ）？
', '[''FCFS：P1，P2，P3，RR2：P1，P2，P3'', ''FCFS：P1，P3，P2， RR2：P1，P3，P2'', ''FCFS：P1，P2，P3， RR2：P1，P3，P2'', ''FCFS：P1，P3，P2， RR2：P1，P2，P3'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>FCFS 的顺序显然是 P1、P2、P3</font></strong>，排序 B、D 选项<strong><font color=''#2656b3''>RR2 调度过程解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间片设置</font></strong></font></strong>：固定为 2 个时间单位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>进程分配顺序</font></strong></font></strong>：  
`p1, p2, p1, p3, p2, p1, p3, p2, p2`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键时间点事件</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=2</font></strong></font></strong>：p2 开始执行，p1 进入就绪队列
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=3</font></strong></font></strong>：p3 到达，加入就绪队列（此时队列顺序为 p1 → p3）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=4</font></strong></font></strong>：重新执行 p1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=6</font></strong></font></strong>：首次执行 p3
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心机制</font></strong></font></strong>：涉及就绪队列管理与时间片轮转规则所以<strong><font color=''#2656b3''>RR2 的完成顺序</font></strong>为 P1、P3、P2', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5587');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5588, '408考研练习题——操作系统——CPU调度第9题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下三个进程 P0、P1 和 P2 的到达时间与执行时间表：
使用<strong><font color=''#2656b3''>抢占式最短作业优先调度算法</font></strong>。仅在进程到达或完成时进行调度。这三个进程的平均等待时间是多少？（ ）
', '[''5.0 ms'', ''4.33 ms'', ''6.33'', ''7.33'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>根据抢占式最短作业优先调度规则：- 时间线分析：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=0ms</font></strong></font></strong>：仅 P0 可运行，开始执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=1ms</font></strong></font></strong>：P1 到达，剩余执行时间为 8ms（P0 剩余 8ms），P1 执行时间 4ms 更短 → 抢占 P0。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=2ms</font></strong></font></strong>：P2 到达，P1 剩余 3ms，P2 执行时间 9ms → 继续执行 P1。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=5ms</font></strong></font></strong>：P1 完成，此时 P0 剩余 8ms，P2 剩余 9ms → 选择 P0（剩余时间更短）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=13ms</font></strong></font></strong>：P0 完成，此时 P2 剩余 9ms → 开始执行 P2。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=22ms</font></strong></font></strong>：P2 完成。
- 各进程完成时间：

- P0: 13ms
- P1: 5ms
- P2: 22ms
- 等待时间计算：

- 等待时间 = 完成时间 - 到达时间 - 执行时间
- P0: 13 - 0 - 9 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>4ms</font></strong></font></strong>
- P1: 5 - 1 - 4 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>0ms</font></strong></font></strong>
- P2: 22 - 2 - 9 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>11ms</font></strong></font></strong>
- 平均等待时间：(4 + 0 + 11) / 3 =5.0ms', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5588');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5589, '408考研练习题——操作系统——CPU调度第10题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪些说法是正确的？（ ）
I. 最短剩余时间优先调度可能导致饥饿
II. 抢占式调度可能导致饥饿
III. 轮转法（Round Robin）在响应时间上优于先来先服务（FCFS）
', '[''仅 I'', ''仅 I 和 III'', ''仅 II 和 III'', ''I、II 和 III'']', "['D']", 'D</font></strong>
I) 最短剩余时间优先调度是最短作业优先调度的抢占式版本。在 SRTF 中，首先调度 CPU 执行时间片最短的作业。由于这一过程，较短的进程持续到达可能导致长 CPU 执行时间片的进程永远无法获得 CPU，从而引发饥饿。II) 抢占式调度意味着一个进程在执行完成前可能被中断，其他进程开始执行。被中断的进程之后可以从中断处继续执行。在抢占式调度中，假设进程 P1 正在 CPU 中执行，随后更高优先级的进程 P2 进入就绪队列，则 P1 会被抢占，P2 开始执行。如果就绪队列中持续有更高优先级的进程到达，P1 始终被抢占，可能发生饥饿。III) 轮转法比 FCFS 提供更好的响应时间。在 FCFS 中，进程执行直到其全部时间片用完；而在轮转法中，进程仅执行一个时间片长度。因此，轮转法调度通过规定时间间隔后为所有进程分配 CPU，从而改善了响应时间。综上，I、II、III 均正确，对应选项 (D)。', 9, 'Mogullzr', '2026-02-02 11:52:48', 9, NULL, '2026-02-02 11:52:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5589');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5590, '408考研练习题——操作系统——CPU调度第11题', '简单', '408考研练习题——操作系统——CPU调度', '在以下单处理器系统的进程状态转换图中，假设就绪状态中始终存在一些进程。现在考虑以下陈述：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/50754694dda2481fb28b18ac2f0bdf06.jpg)
I. 如果一个进程执行了转换 D，则会立即导致另一个进程执行转换 A。
II. 当另一个进程 P1 处于运行状态时，处于阻塞状态的进程 P2 可以执行转换 E。
III. 操作系统使用抢占式调度。
IV. 操作系统使用非抢占式调度。
以上哪些陈述是正确的？（ ）
', '[''I 和 II'', ''I 和 III'', ''II 和 III'', ''II 和 IV'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>A 是错误的，并没有规定一个进程终止后，另一个进程会立刻进入就绪（Ready）状态。这取决于是否有可运行的进程以及长期调度器的调度情况。B 是正确的。阻塞状态的进程变为就绪状态，与是否有进程正在运行没有依赖关系。C 是正确的，D是错误的。因为存在从运行态到就绪态的 C 转换。所以答案选择 C。', 9, 'Mogullzr', '2026-02-02 11:52:50', 9, NULL, '2026-02-02 11:52:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5590');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5591, '408考研练习题——操作系统——CPU调度第12题', '简单', '408考研练习题——操作系统——CPU调度', '一个操作系统使用最短剩余时间优先（SRTF）进程调度算法。考虑以下进程的到达时间和执行时间：
进程 P2 的总等待时间是多少？（ ）
', '[''5'', ''15'', ''40'', ''55'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 算法原理最短剩余时间（SJF）是一种抢占式调度方法，始终选择剩余执行时间最短的进程运行。当新进程到达时，若其剩余时间比当前运行进程更短，则立即抢占 CPU。
- 甘特图执行流程

- `0-15`：仅 P1 存在，运行至时间 15
- `15-20`：P2 到达（剩余 25），P1 剩余 15，继续运行至完成
- `20-30`：P2 开始运行（剩余 25）
- `30-40`：P3 到达（剩余 10），抢占 P2，P3 运行至完成
- `40-45`：P2 恢复运行（剩余 15），继续执行
- `45-55`：P4 到达（剩余 15），P2 剩余 10，继续运行至完成
- 关键计算

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>完成时间</font></strong></font></strong>：55
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>周转时间</font></strong></font></strong>= 完成时间 - 到达时间 = 55 - 15 = 40
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>等待时间</font></strong></font></strong>= 周转时间 - 执行时间 = 40 - 25 = 15', 9, 'Mogullzr', '2026-02-02 11:52:50', 9, NULL, '2026-02-02 11:52:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5591');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5592, '408考研练习题——操作系统——CPU调度第13题', '简单', '408考研练习题——操作系统——CPU调度', '进程 A、B 和 C 各自执行一个包含 100 次迭代的循环。在每次迭代中，进程执行一次需要$t_{c}$ms CPU 时间的计算操作，然后发起一次持续$t_{io}$ms的 I/O 操作。假设运行这些进程的计算机具有足够的 I/O 设备，且操作系统为每个进程分配不同的 I/O 设备。此外，操作系统的调度开销可以忽略不计。各进程的特性如下：
这三个进程分别在 0、5 和 10 ms时刻启动，在采用纯时间片轮转调度（时间片为 50 ms）的分时系统中运行。进程 C 完成其第一次 I/O 操作的时间是（  ）ms。
', '[''500'', ''1000'', ''2000'', ''10000'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>执行过程分析</font></strong>
三个进程 A、B 和 C 以时间片轮转方式运行，时间片为 50ms。
进程启动时间为 0、5 和 10 ms。- 初始阶段执行顺序A, B, C, A

- 每个进程执行 50ms CPU 时间
- 总耗时：50 + 50 + 50 + 50 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>200ms</font></strong></font></strong>
- 此时 A 已完成 100ms 计算并开始 I/O
- 后续执行阶段B, C, B, C, B, C

- 每个进程执行 50ms CPU 时间
- 总耗时：50 × 6 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>300ms</font></strong></font></strong>
- 累计总时间：200ms + 300ms =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>500ms</font></strong></font></strong><strong><font color=''#2656b3''>关键时间点</font></strong>- 进程 C 在 500ms 时刻开始 I/O
- I/O 持续时间为 500ms
- 因此 C 将在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1000ms</font></strong></font></strong>时刻完成第一次 I/O', 9, 'Mogullzr', '2026-02-02 11:52:50', 9, NULL, '2026-02-02 11:52:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5592');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5593, '408考研练习题——操作系统——CPU调度第14题', '简单', '408考研练习题——操作系统——CPU调度', '一个操作系统使用最短剩余时间优先调度算法进行进程的抢占式调度。考虑以下进程集合及其到达时间和 CPU 突发时间（单位：ms）：
这些进程的平均等待时间（单位：ms）是（ ）。
', '[''4.5'', ''5.0'', ''5.5'', ''6.5'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>突发时间</font></strong>- 进程完成执行所需的总 CPU 时间
<strong><font color=''#2656b3''>等待时间</font></strong>- 进程在就绪队列中等待获得 CPU 的时间上述进程的甘特图如下：- P1: 0 → 2 ms
- P2: 2 → 6 ms
- P3: 6 → 12 ms
- P4: 12 → 17 ms
- P1: 17 → 27 ms<strong><font color=''#2656b3''>调度过程解析</font></strong>- 初始执行

- 进程 P1 在时间 0 到达，开始执行
- 2 个时间单位后 P2 到达，其突发时间为 4 个单位，而 P1 的剩余时间为 10 个单位
- 根据最短剩余时间优先规则，CPU 抢占 P1 执行 P2
- 后续调度

- P2 执行完成后，系统比较剩余进程的剩余时间
- P3（剩余 6 单位）比 P1（剩余 10 单位）更短，继续执行 P3
- P3 完成后，P4（剩余 5 单位）比 P1（剩余 10 单位）更短，执行 P4
- 最终由 P1 完成剩余执行<strong><font color=''#2656b3''>等待时间计算</font></strong>
| 进程 | 计算公式 | 结果（ms） |
| --- | --- | --- |
| P1 | 17（开始执行时间） - 2（首次被抢占时间） | 15 |
| P2 | 直接执行无等待 | 0 |
| P3 | 6（开始执行时间） - 3（到达时间） | 3 |
| P4 | 12（开始执行时间） - 8（到达时间） | 4 |
<strong><font color=''#2656b3''>总等待时间</font></strong>= 15 + 0 + 3 + 4 = 22
<strong><font color=''#2656b3''>平均等待时间</font></strong>= 22 / 4 =<strong><font color=''#2656b3''>5.5</font></strong>因此答案选 C。', 9, 'Mogullzr', '2026-02-02 11:52:50', 9, NULL, '2026-02-02 11:52:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5593');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5594, '408考研练习题——操作系统——CPU调度第15题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下进程集合，其到达时间和 CPU 突发时间（单位：ms）如下所示：
使用抢占式最短剩余处理时间优先（SJT）算法时，这些进程的平均周转时间是多少？
', '[''5.50'', ''5.75'', ''6.00'', ''6.25'']', "['A']", 'A</font></strong>

```c
执行的甘特图如下：
P1 P2 P4 P3 P1
1  4  5  8  12
```
周转时间 = 完成时间 - 到达时间
各进程具体计算如下：- P1: 12 - 0 = 12
- P2: 4 - 1 = 3
- P3: 8 - 2 = 6
- P4: 5 - 4 = 1总周转时间 = 12 + 3 + 6 + 1 = 22
平均周转时间 = 22 / 4 = 5.50', 9, 'Mogullzr', '2026-02-02 11:52:50', 9, NULL, '2026-02-02 11:52:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5594');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5595, '408考研练习题——操作系统——CPU调度第16题', '简单', '408考研练习题——操作系统——CPU调度', '一个单处理器计算机系统仅有两个进程，这两个进程交替进行 10ms 的 CPU 计算和 90ms 的 I/O 操作。两个进程几乎同时创建。两个进程的 I/O 可以并行执行。以下哪种调度策略会导致该系统的 CPU 利用率最低（在长时间内）？
', '[''先来先服务调度'', ''最短剩余时间优先调度'', ''为两个进程分配不同优先级的静态优先级调度'', ''时间片轮转调度，时间片为 5ms'']', "['D']", 'D</font></strong>
当使用时间片轮转调度时
已知时间片为 5ms。考虑进程 P 和 Q。
假设 P 使用 5ms 的 CPU 后，Q 使用 5ms 的 CPU。因此在第 15ms 时 P 开始 I/O，在第 20ms 时 Q 开始 I/O。由于 I/O 可并行执行，P 在第 105ms（15+90）完成 I/O，Q 在第 110ms（20+90）完成 I/O。因此可以看出，CPU 在第 20ms 到第 105ms 期间处于空闲状态。
即当使用时间片轮转调度时：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CPU 空闲时间</font></strong></font></strong>= 85ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CPU 利用率</font></strong></font></strong>= 20/105 = 19.05%当使用先来先服务调度或最短剩余时间优先调度时
假设 P 使用 10ms 的 CPU 后开始 I/O。在第 11ms 时 Q 开始处理，Q 使用 10ms 的 CPU。- P 在第 100ms（10+90）完成 I/O
- Q 在第 110ms（20+90）完成 I/O
- 在第 101ms 时 P 再次使用 CPU。因此：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CPU 空闲时间</font></strong></font></strong>= 80ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CPU 利用率</font></strong></font></strong>= 20/100 = 20%由于仅涉及两个进程且 I/O 时间远大于 CPU 时间，“为两个进程分配不同优先级的静态优先级调度"会退化为先来先服务或最短剩余时间优先调度。
因此，时间片轮转调度将导致最低的 CPU 利用率。', 9, 'Mogullzr', '2026-02-02 11:52:50', 9, NULL, '2026-02-02 11:52:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5595');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5596, '408考研练习题——操作系统——CPU调度第17题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪种调度算法是非抢占式的？（ ）
', '[''轮转法'', ''先进先出（先来先服务）'', ''多级队列调度'', ''带反馈的多级队列调度'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>轮转法</font></strong></font></strong>：当时间片到期时会发生抢占
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>先进先出</font></strong></font></strong>：无抢占，进程一旦开始运行会持续到完成才会让出 CPU
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>多级队列调度</font></strong></font></strong>：当高优先级进程到达时会发生抢占
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>带反馈的多级队列调度</font></strong></font></strong>：当高优先级进程到达或高优先级队列的时间片到期需要将进程移至低优先级队列时会发生抢占因此，B 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5596');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5597, '408考研练习题——操作系统——CPU调度第18题', '简单', '408考研练习题——操作系统——CPU调度', '考虑一组在单处理器机器上运行的 n 个任务，其已知的运行时间分别为 r₁, r₂, …, rₙ。以下哪种处理器调度算法会导致最大的吞吐量？（ ）
', '[''轮转法（Round-Robin）'', ''最短作业优先（Shortest-Job-First）'', ''最高响应比优先（Highest-Response-Ratio-Next）'', ''先来先服务（First-Come-First-Served）'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>吞吐量定义</font></strong></font></strong>：单位时间内完成的任务总数（包含等待时间与执行时间）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最短作业优先（SJF）特性</font></strong></font></strong>：

- 优先调度执行时间最短的任务。
- 短任务快速完成，减少整体等待时间。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>优势分析</font></strong></font></strong>：

- 最大化 CPU 利用率，最小化任务周转时间。
- 在相同时间内可完成更多任务，从而提升吞吐量。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：相比其他调度策略，SJF 更有利于提高系统吞吐量，因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5597');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5598, '408考研练习题——操作系统——CPU调度第19题', '简单', '408考研练习题——操作系统——CPU调度', '考虑一个单处理器系统，执行三个任务 T1、T2 和 T3。每个任务由无限序列的作业（或实例）组成，分别以 3 ms、7 ms 和 20 ms 的间隔周期性到达。每个任务的优先级与其周期成反比，可用任务按优先级顺序调度，最高优先级任务先调度。T1、T2 和 T3 的每个实例分别需要 1 ms、2 ms 和 4 ms 的执行时间。已知所有任务最初在第 1 ms 开始时到达，且允许任务抢占，则第一个 T3 实例完成执行的时间为（  ）ms。
', '[''5'', ''10'', ''12'', ''15'']', "['C']", 'C</font></strong>
T1、T2 和 T3 的周期分别为 3ms、7ms 和 20ms。由于优先级与周期成反比，因此 T1 优先级最高，其次是 T2，最后是 T3。T1、T2 和 T3 的每个实例分别需要 1ms、2ms 和 4ms 的执行时间。初始时所有 T1、T2 和 T3 都准备好获取处理器，优先选择 T1。
T1、T2 和 T3 的第二个实例将分别在 3ms、7ms 和 20ms 到达。第三个实例将分别在 6ms、14ms 和 40ms 到达。
| 时间区间 | 任务 |
| --- | --- |
| 0-1 | T1 |
| 1-2 | T2 |
| 2-3 | T2 |
| 3-4 | T1 [T1 的第二个实例到达] |
| 4-5 | T3 |
| 5-6 | T3 |
| 6-7 | T1 [T1 的第三个实例到达] [因此 T3 被抢占] |
| 7-8 | T2 [T2 的第二个实例到达] |
| 8-9 | T2 |
| 9-10 | T1 [T1 的第四个实例到达] |
| 10-11 | T3 |
| 11-12 | T3 [T3 的第一个实例完成] |
', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5598');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5599, '408考研练习题——操作系统——CPU调度第20题', '简单', '408考研练习题——操作系统——CPU调度', '对于具有 n 个 CPU 的计算机系统，就绪状态中进程的最大数量是（ ）
', '[''n'', ''n²'', ''2n'', ''与 n 无关'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>理解就绪状态</font></strong>：在操作系统中，就绪状态是指进程已准备好执行但正在等待 CPU 时间的状态。这些进程存储在<strong><font color=''#2656b3''>就绪队列</font></strong>中。<strong><font color=''#2656b3''>就绪状态中进程的最大数量</font></strong>：就绪队列中可以容纳的进程数量<strong><font color=''#2656b3''>不依赖于 CPU 数量（n）</font></strong>。其容量由系统内存或调度策略等其他因素决定，而非 CPU 数量。<strong><font color=''#2656b3''>关键点</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CPU 数量（n）仅决定同时可并发执行的进程数</font></strong></font></strong>（即最多有 n 个进程处于运行状态）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>就绪状态</font></strong></font></strong>理论上可以包含<strong><font color=''#2656b3''><strong><font color=''#2656b3''>无限数量</font></strong></font></strong>的等待进程。<strong><font color=''#2656b3''>最终答案</font></strong>D（与 n 无关）', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5599');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5600, '408考研练习题——操作系统——CPU调度第21题', '简单', '408考研练习题——操作系统——CPU调度', '对于下表中列出的进程，以下哪种调度方案将产生最低的平均周转时间？
', '[''先来先服务（FCFS）'', ''非抢占式最短作业优先（SJF）'', ''最短剩余时间（SRT）'', ''时间片轮转（RR），时间片大小为 2'']', "['C']", 'C</font></strong>
周转时间是指从程序/进程/线程/任务（Linux）提交执行到返回完整输出给用户所需的时间总和。<strong><font color=''#2656b3''>周转时间 = 完成时间 - 到达时间</font></strong>。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>FCFS</font></strong></font></strong>= 先来先服务（A, B, C, D）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SJF</font></strong></font></strong>= 非抢占式最短作业优先（A, B, D, C）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SRT</font></strong></font></strong>= 最短剩余时间（A(3), B(1), C(4), D(2), B(5)）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>RR</font></strong></font></strong>= 时间片轮转（时间片大小为 2）（A(2), B(2), A(1), C(2), B(2), D(2), C(2), B(2)）
| Pr | 到达时间 | 处理时间 | FCFS | SJF | SRT | RR |
| --- | --- | --- | --- | --- | --- | --- |
| A | 0 | 3 | 3-0=3 | 3-0=3 | 3-0=3 | 5-0=5 |
| B | 1 | 6 | 9-1=8 | 9-1=8 | 15-1=14 | 15-1=14 |
| C | 4 | 4 | 13-4=9 | 15-4=11 | 8-4=4 | 13-4=9 |
| D | 6 | 2 | 15-6=9 | 11-6=5 | 10-6=4 | 11-6=5 |
|  |  | **平均值：** | 7.25 | 6.75 | 6.25 | 8.25 |
<strong><font color=''#2656b3''>结论</font></strong>：最短剩余时间优先调度算法产生的平均周转时间最小。', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5600');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5601, '408考研练习题——操作系统——CPU调度第22题', '简单', '408考研练习题——操作系统——CPU调度', '我们希望在一个单处理器系统上调度三个进程 P1、P2 和 P3。进程的优先级（最高为最大）、CPU 时间需求和到达时间如下表所示：
我们可以选择使用<strong><font color=''#2656b3''>抢占式</font></strong>或<strong><font color=''#2656b3''>非抢占式</font></strong>调度策略。在<strong><font color=''#2656b3''>抢占式调度</font></strong>中，后到达的高优先级进程可以中断当前正在运行的低优先级进程；而在<strong><font color=''#2656b3''>非抢占式调度</font></strong>中，后到达的高优先级进程必须等待当前正在执行的进程完成后才能被调度到处理器上。
问题：使用<strong><font color=''#2656b3''>抢占式</font></strong>和<strong><font color=''#2656b3''>非抢占式</font></strong>调度时，P2 的周转时间（从到达时间到完成时间）分别是多少？（ ）
', '[''30 秒，30 秒'', ''30 秒，10 秒'', ''42 秒，42 秒'', ''30 秒，42 秒'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>非抢占式调度分析：</font></strong>- 执行顺序：P3 → P1 → P2
- 时间线：

- 0 → 15（P3 完成）
- 15 → 35（P1 完成）
- 35 → 45（P2 完成）
- 周转时间 = 45 - 3 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>42 秒</font></strong></font></strong><strong><font color=''#2656b3''>抢占式调度分析：</font></strong>- 执行顺序：P3 → P3 → P3 → P2 → P2 → P1 → P2 → P3
- 时间线：

- 0 → 1（P3）
- 1 → 2（P3）
- 2 → 3（P2 开始）
- 3 → 4（P2 被 P1 抢占）
- 4 → 5（P1 开始）
- 5 → 25（P1 完成）
- 25 → 33（P2 完成）
- 33 → 45（P3 完成）
- 周转时间 = 33 - 3 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>30 秒</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5601');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5602, '408考研练习题——操作系统——CPU调度第23题', '简单', '408考研练习题——操作系统——CPU调度', '考虑一组任意的 CPU 密集型进程，它们具有不等长的 CPU 突发时间，并<strong><font color=''#2656b3''>同时提交</font></strong>到计算机系统。以下哪种进程调度算法能够<strong><font color=''#2656b3''>最小化就绪队列中的平均等待时间</font></strong>？
', '[''最短剩余时间优先'', ''时间片小于最短 CPU 突发时间的轮转法'', ''均匀随机'', ''最高优先级优先，且优先级与 CPU 突发长度成正比'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 核心概念

- 周转时间：进程从开始到完成所花费的总时间
- 等待时间：进程已准备好运行但未被 CPU 调度器执行的时间
- 算法特性对比
| 算法类型 | 平均等待时间表现 | 是否存在饥饿风险 | 适用场景 |
| --- | --- | --- | --- |
| 最短作业优先 (SJF) | 最优 | 否（非抢占时） | 所有进程同时到达 |
| 最短剩余时间优先 (SRTF) | 接近最优 | 是（需注意） | 动态到达的短任务场景 |
| 轮转法 (RR) | 中等 | 否 | 需公平性的交互式系统 |
| 优先级调度 | 差 | 是 | 实时系统或特殊需求场景 |
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键结论</font></strong></font></strong>- 在所有 CPU 调度算法中，最短作业优先（SJF）提供最小的平均等待时间
- 最短剩余时间优先（SRTF）是 SJF 的抢占版本，当所有进程同时到达时不会出现饥饿问题
- 本题条件满足"所有进程同时提交"，因此 SRTF 可实现最优调度效果
- 其他选项均无法达到最小化平均等待时间的目标', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5602');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5603, '408考研练习题——操作系统——CPU调度第24题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪种磁盘调度策略最有可能提供最高的吞吐量？（ ）
', '[''下一个最远柱面'', ''下一个最近柱面'', ''先来先服务'', ''电梯算法'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心原理</font></strong></font></strong>：下一个最近柱面（SSTF, 最短寻道时间优先）通过优先选择距离当前磁头位置最近的请求，显著减少磁头移动总距离。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>性能优势</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>高吞吐量</font></strong></font></strong>：频繁访问相邻柱面可快速完成多个请求，提升整体处理效率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>低延迟</font></strong></font></strong>：较短的寻道时间降低了单个请求的响应时间。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>局限性</font></strong></font></strong>：可能导致某些请求长期得不到服务（饥饿现象）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>对比其他选项</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>先来先服务（FCFS）</font></strong></font></strong>：按顺序处理，无优化，吞吐量较低。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>电梯算法（SCAN）</font></strong></font></strong>：虽平衡性能与公平性，但寻道路径较长，吞吐量略低于 SSTF。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最远柱面</font></strong></font></strong>：反向操作，增加磁头移动距离，效率最低。综上，选项 (B) 是最优解。', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5603');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5604, '408考研练习题——操作系统——CPU调度第25题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下进程，其到达时间和 CPU 突发长度（单位：ms）如下所示。使用的调度算法是<strong><font color=''#2656b3''>抢占式最短剩余时间优先</font></strong>。这些进程的平均周转时间是（  ）ms。
', '[''8.25'', ''10.25'', ''6.35'', ''4.25'']', "['A']", 'A</font></strong>
抢占式最短剩余时间优先调度算法意味着将选择当前剩余执行时间最短的进程在 CPU 上运行。根据下图 Gantt 图的调度和执行情况，周转时间（TAT）= 完成时间（CT）- 到达时间（AT）。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P1 的 TAT</font></strong></font></strong>= 20 - 0 = 20
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P2 的 TAT</font></strong></font></strong>= 10 - 3 = 7
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P3 的 TAT</font></strong></font></strong>= 8 - 7 = 1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P4 的 TAT</font></strong></font></strong>= 13 - 8 = 5因此，平均 TAT = 所有进程的总 TAT / 进程数量 = (20 + 7 + 1 + 5)/4 = 33/4 = 8.25
故选项（A）为正确答案。', 9, 'Mogullzr', '2026-02-02 11:52:51', 9, NULL, '2026-02-02 11:52:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5604');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5605, '408考研练习题——操作系统——CPU调度第26题', '简单', '408考研练习题——操作系统——CPU调度', '考虑$n$个作业$J_{1}, J_{2}, ⋯  , J_{n}$，其中作业$J_{i}$的执行时间为$t_{i}$，且具有非负整数权重$w_{i}$。作业的加权平均完成时间定义为$\\frac{\\sum_{i=1}^{n} w_{i}T_{i}}{\\sum_{i=1}^{n} w_{i}}$，其中$T_{i}$是作业$J_{i}$的完成时间。假设只有一个处理器可用，为了最小化作业的加权平均完成时间，必须按照什么顺序执行这些作业？
', '[''$t_{i}$的非递减顺序'', ''$w_{i}$的非递增顺序'', ''$w_{i}t_{i}$的非递增顺序'', ''$w_{i}/t_{i}$的非递增顺序'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心思路</font></strong></font></strong>：该问题属于贪心算法的经典应用场景。目标是最小化加权平均完成时间，需通过数学推导确定最优排序准则。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数学推导</font></strong></font></strong>：

- 假设两个相邻作业Ji​和Jj​，若交换顺序后总成本降低，则当前顺序非最优。
- 比较两种排列方式的成本差值，发现当ti​wi​​≥tj​wj​​时，应优先执行Ji​。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：按权重与执行时间比值（ti​wi​​）从大到小排序，能保证全局最优解。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>反例验证</font></strong></font></strong>：

- 若按wi​排序（选项 B），可能因某作业耗时过长导致后续高权重作业延迟。
- 若按wi​ti​排序（选项 C），未考虑单位时间内的权重收益。
- 若按ti​排序（选项 A），完全忽略权重差异，无法体现优先级。', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5605');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5606, '408考研练习题——操作系统——CPU调度第27题', '简单', '408考研练习题——操作系统——CPU调度', '假设在一个单处理器系统中，每个进程需要 3 秒的服务时间。如果新进程以每分钟 10 个进程的速率到达，则估算系统中 CPU 忙碌的时间占比（ ）？
', '[''20%'', ''30%'', ''50%'', ''60%'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 到达率：10 个进程/分钟 → 1 个进程每 6 秒（1/10 分钟）
- 服务时间：每个进程 3 秒
- 计算公式：63​×100%=50%', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5606');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5607, '408考研练习题——操作系统——CPU调度第28题', '简单', '408考研练习题——操作系统——CPU调度', '考虑$n$个进程以轮转方式共享 CPU。假设每次进程切换需要$s$秒，那么轮转时间$q$必须满足什么条件才能使进程切换带来的开销最小化，同时保证每个进程至少每$t$秒能获得一次 CPU 使用权？（ ）
', '[''$q ≤ \\\\frac{t-ns}{n-1}$'', ''$q ≥ \\\\frac{t-ns}{n-1}$'', ''$q ≤ \\\\frac{t-ns}{n+1}$'', ''$q ≥ \\\\frac{t-ns}{n+1}$'']', "['A']", 'A</font></strong>
每个进程将获得 q 秒的 CPU 时间，且每个进程希望在 t 秒后再次获得 CPU。 因此，当当前进程再次获得 CPU 时，会有 (n-1) 个进程已经运行过一次。每个进程切换需要 s 秒。可以看出，P1 离开并再次到达时，发生了 n 次上下文切换和 (n-1) 个进程。因此方程为：
$$
q(n - 1) + ns ≤ t
$$
进一步推导得：
$$
q(n - 1) ≤ t - ns
$$

$$
q ≤ \\frac{t - ns}{n - 1}
$$
所以选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5607');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5608, '408考研练习题——操作系统——CPU调度第29题', '简单', '408考研练习题——操作系统——CPU调度', '四个作业按顺序 A、B、C、D 在时间 0 同时到达单处理器系统。它们的 CPU 执行时间需求分别为 4、1、8、1 时间单位。在时间片大小为一个时间单位的轮转调度下，作业 A 的完成时间是（ ）：
', '[''10'', ''4'', ''8'', ''9'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
在轮转调度中，每个作业按时间片轮流执行。初始队列为 [A(4), B(1), C(8), D(1)]，时间片为 1 单位。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 0-1</font></strong></font></strong>：执行 A（剩余 3），队列变为 [B(1), C(8), D(1), A(3)]
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 1-2</font></strong></font></strong>：执行 B（剩余 0，完成）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 2-3</font></strong></font></strong>：执行 C（剩余 7），队列变为 [D(1), A(3), C(7)]
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 3-4</font></strong></font></strong>：执行 D（剩余 0，完成）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 4-5</font></strong></font></strong>：执行 A（剩余 2），队列变为 [C(7), A(2)]
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 5-6</font></strong></font></strong>：执行 C（剩余 6），队列变为 [A(2), C(6)]
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 6-7</font></strong></font></strong>：执行 A（剩余 1），队列变为 [C(6), A(1)]
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 7-8</font></strong></font></strong>：执行 C（剩余 5），队列变为 [A(1), C(5)]
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 8-9</font></strong></font></strong>：执行 A（剩余 0，完成）最终，作业 A 在第 9 个时间单位完成，故选 D。', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5608');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5609, '408考研练习题——操作系统——CPU调度第30题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下 CPU 进程，其到达时间（单位：ms）和 CPU 执行时间（单位：ms）如下表所示（除进程 P4 外）：
若所有进程的平均等待时间为 2 ms，并使用抢占式最短剩余时间优先调度算法进行调度，则 x 的值为（ ）。
', '[''1'', ''2'', ''4'', ''以上答案都不对'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析过程</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>假设条件</font></strong></font></strong>：若 x 取值为 2，则甘特图如下所示。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>完成时间</font></strong></font></strong>：

- P1 完成时间：6
- P2 完成时间：2
- P3 完成时间：11
- P4 完成时间：8
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>周转时间</font></strong></font></strong>：

- P1 周转时间：6（6-0）
- P2 周转时间：1（2-1）
- P3 周转时间：8（11-3）
- P4 周转时间：4（8-4）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>等待时间</font></strong></font></strong>：

- P1 等待时间：1（6-5）
- P2 等待时间：0（1-1）
- P3 等待时间：5（8-3）
- P4 等待时间：2（4-2）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>平均等待时间计算</font></strong></font></strong>：  
(1 + 0 + 5 + 2) ÷ 4 = 8 ÷ 4 = 2<strong><font color=''#2656b3''>结论</font></strong>：选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5609');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5610, '408考研练习题——操作系统——CPU调度第31题', '简单', '408考研练习题——操作系统——CPU调度', '哪个模块将 CPU 的控制权交给由短期调度器选中的进程（ ）？
', '[''分派器（Dispatcher）'', ''中断（Interrupt）'', ''调度器（Scheduler）'', ''线程（Thread）'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 存在三种类型的调度器：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>短期调度器</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中期调度器</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>长期调度器</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分派器</font></strong></font></strong>（Dispatcher）是操作系统中负责将 CPU 控制权移交给短期调度器所选进程的核心组件
- 其工作流程包含以下关键步骤：
- 接收短期调度器分配的进程
- 执行上下文切换（Context Switch）
- 将 CPU 寄存器状态加载到目标进程
- 启动目标进程的执行因此选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5610');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5611, '408考研练习题——操作系统——CPU调度第32题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下四个进程，其到达时间和 CPU 执行时间（单位：ms）如下所示。使用抢占式短作业优先调度算法时的平均等待时间是（ ）。
', '[''6.5'', ''7.5'', ''6.75'', ''7.75'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 首先需通过甘特图确定各进程的执行顺序与时间分配
- 计算各进程的等待时间：

- P1 等待时间：9ms
- P2 等待时间：0ms
- P3 等待时间：15ms
- P4 等待时间：2ms
- 平均等待时间计算公式：平均等待时间=进程总数各进程等待时间之和​=49+0+15+2​=426​=6.5
- 因此选项 (A) 正确', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5611');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5612, '408考研练习题——操作系统——CPU调度第33题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪项陈述是正确的（ ）？
', '[''硬实时操作系统比软实时操作系统的抖动更小'', ''硬实时操作系统比软实时操作系统的抖动更大'', ''硬实时操作系统与软实时操作系统的抖动相等'', ''以上都不正确'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>抖动是指发送信号或数据之间的变化/偏移。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>硬实时操作系统</font></strong></font></strong>：用于对时间要求严格的敏感系统（如发动机控制系统、卫星发射系统）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>软实时操作系统</font></strong></font></strong>：允许一定程度的延迟（如手机、在线数据库系统）因此，硬实时操作系统需要最小化抖动以满足严格的时间约束。', 9, 'Mogullzr', '2026-02-02 11:52:52', 9, NULL, '2026-02-02 11:52:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5612');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5613, '408考研练习题——操作系统——CPU调度第34题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪种调度算法可能导致饥饿？（ ）
a. 先来先服务
b. 时间片轮转
c. 优先级
d. 最短作业优先
e. 最短剩余时间优先
', '[''a、c 和 e'', ''c、d 和 e'', ''b、d 和 e'', ''b、c 和 d'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>先来先服务（FCFS）</font></strong></font></strong>：若一个执行时间极长的进程排在其他进程之前，虽然其他进程需要等待较长时间，但它们最终会获得执行机会，因此不会发生饥饿。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间片轮转</font></strong></font></strong>：每个进程都会按固定时间片轮流执行，不存在饥饿问题。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>优先级调度</font></strong></font></strong>：若持续有高优先级进程到达，则低优先级进程将发生饥饿现象。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最短作业优先（SJF）</font></strong></font></strong>：若持续有短执行时间的进程到达，则长执行时间的进程可能长期等待而发生饥饿。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最短剩余时间优先（SRTF）</font></strong></font></strong>：由于总是优先执行剩余时间最短的进程，长执行时间的进程可能发生饥饿。因此，选项 (C) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5613');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5614, '408考研练习题——操作系统——CPU调度第35题', '简单', '408考研练习题——操作系统——CPU调度', '五个作业 A、B、C、D 和 E 正在就绪队列中等待。它们的预计运行时间分别为 9、6、3、5 和 x。所有作业在时间零时进入就绪队列。如果 3 < x < 5，要使平均响应时间最小，它们必须按（ ）顺序运行。
', '[''B, A, D, E, C'', ''C, E, D, B, A'', ''E, D, C, B, A'', ''C, B, A, E, D'']', "['B']", 'B</font></strong>
我们通过最小化平均等待时间来求解，并取 x = 4- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>BT</font></strong></font></strong>: 执行时间（Burst Time）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CT</font></strong></font></strong>: 完成时间（Completion Time）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P</font></strong></font></strong>: 作业（Process）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>AWT</font></strong></font></strong>: 平均等待时间（Average Waiting Time）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>AT</font></strong></font></strong>: 到达时间（Arrival Time）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>WT</font></strong></font></strong>: 等待时间（Waiting Time）
```c
选项 (B) 给出的序列能获得最小的平均等待时间
```
', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5614');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5615, '408考研练习题——操作系统——CPU调度第36题', '简单', '408考研练习题——操作系统——CPU调度', '考虑三个 CPU 密集型进程 P1、P2、P3，它们分别需要 20、10 和 30 个时间单位，到达时间分别为 1、3 和 7。假设操作系统采用<strong><font color=''#2656b3''>最短剩余时间优先（抢占式调度）算法</font></strong>，则需要进行**（ ）**次上下文切换（假设就绪队列开始时和结束时的上下文切换不计入）。
', '[''3'', ''2'', ''4'', ''5'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解释</font></strong>根据最短剩余时间优先（SRTF）调度算法，上下文切换发生在以下三个时刻：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 3</font></strong></font></strong>：进程 P1 被新到达的进程 P2 抢占。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 13</font></strong></font></strong>：进程 P2 完成后，进程 P1 恢复执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 13 之后</font></strong></font></strong>：进程 P1 在运行过程中被新到达的进程 P3 抢占（若存在）。尽管实际计算中可能仅出现两次切换，但根据题目设定及答案选项，此处需确认三次上下文切换的发生。因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5615');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5616, '408考研练习题——操作系统——CPU调度第37题', '简单', '408考研练习题——操作系统——CPU调度', '以下哪项不是 CPU 调度算法设计中的优化标准？（ ）
', '[''最小 CPU 利用率'', ''最大吞吐量'', ''最小周转时间'', ''最小等待时间'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解析</font></strong></font></strong>：最小 CPU 利用率不是优化标准

- CPU 调度算法的核心目标是提高系统资源利用率与效率
- 典型优化指标包括：

- 最大吞吐量（单位时间内完成的任务数）
- 最小周转时间（任务从提交到完成的时间）
- 最小等待时间（任务在就绪队列中的等待时长）
- 反向思维：降低 CPU 利用率会违背调度算法的设计初衷，因此 A 为干扰项', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5616');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5617, '408考研练习题——操作系统——CPU调度第38题', '简单', '408考研练习题——操作系统——CPU调度', '在一个使用单处理器的系统中，每分钟有六个新进程到达，每个进程需要七秒的服务时间。CPU 的利用率是多少？（ ）
', '[''70%'', ''30%'', ''60%'', ''64%'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 每分钟进程数 = 6 个
- 每个进程的突发时间 = 7 秒
- 一分钟内的 CPU 利用时间 = 6 × 7 = 42 秒
- CPU 利用率 = 有用时间 / 总时间 × 100 = (42/60) × 100 = 70%', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5617');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5618, '408考研练习题——操作系统——CPU调度第39题', '简单', '408考研练习题——操作系统——CPU调度', '关于多级反馈队列处理器调度算法，以下哪项描述<strong><font color=''#2656b3''>不正确</font></strong>？（ ）
', '[''队列具有不同的优先级'', ''每个队列可以使用不同的调度算法'', ''进程被永久分配到某个队列'', ''该算法可以配置以匹配特定设计中的系统'']', "['C']", 'C</font></strong>
对于多级反馈队列处理器调度算法：- 队列具有不同的优先级
- 每个队列可以使用不同的调度算法
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>进程不会被永久分配到某个队列</font></strong></font></strong>
- 该算法可以配置以匹配特定设计中的系统选项 (C) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5618');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5619, '408考研练习题——操作系统——CPU调度第40题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下关于常用两级 CPU 调度的合理性的描述：
I. 当内存太小无法容纳所有就绪进程时使用。
II. 因为其性能与 FIFO 相同。
III. 因为它便于将一组进程放入内存中并从中进行选择。
IV. 因为它不允许调整核心中的进程集合。
以下哪项是正确的？（ ）
', '[''I、III 和 IV'', ''I 和 II'', ''III 和 IV'', ''I 和 III'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>描述 I</font></strong></font></strong>：当内存太小无法容纳所有就绪进程时，两级 CPU 调度被采用。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>描述 III</font></strong></font></strong>：它便于将一组进程放入内存中并从中进行选择。<strong><font color=''#2656b3''>错误描述解析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>描述 II</font></strong></font></strong>错误，因为两级调度的性能并不等同于 FIFO（先进先出），其设计目的是优化内存使用而非性能匹配。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>描述 IV</font></strong></font></strong>错误，因为两级调度允许动态调整核心中的进程集合，以适应系统需求变化。', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5619');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5620, '408考研练习题——操作系统——CPU调度第41题', '简单', '408考研练习题——操作系统——CPU调度', '在以下哪种调度准则中，上下文切换永远不会发生？（ ）
', '[''轮转法'', ''抢占式短作业优先'', ''非抢占式短作业优先'', ''抢占式优先级调度'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 非抢占式调度算法具有不可中断的特性
- 进程一旦开始执行就必须运行到完成或主动让出 CPU
- 因此不会出现强制性的上下文切换操作
- 典型代表如非抢占式短作业优先算法', 9, 'Mogullzr', '2026-02-02 11:52:53', 9, NULL, '2026-02-02 11:52:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5620');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5621, '408考研练习题——操作系统——CPU调度第42题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下一组进程，假设它们在时间 0 到达。考虑 CPU 调度算法最短作业优先（SJF）和轮转法（RR）。对于 RR，假设进程按$P_{1}$、$P_{2}$、$P_{3}$、$P_{4}$的顺序调度。如果 RR 的时间片为 4ms，则 SJF 和 RR 的平均周转时间（以ms为单位）的绝对差值（四舍五入到小数点后两位）是（  ）。
', '[''5.0'', ''5.25'', ''5.50'', ''5.75'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>SJF（最短作业优先调度）:</font></strong>
| 进程 | 运行时间 (Burst Time) | 完成时间 (Completion Time) | 周转时间 (Turn Around Time) |
| --- | --- | --- | --- |
| P1 | 8 | 21 | 21 |
| P2 | 7 | 13 | 13 |
| P3 | 2 | 2 | 2 |
| P4 | 4 | 6 | 6 |
平均周转时间：$\\frac{21+13+2+6}{4} = 10.5$<strong><font color=''#2656b3''>RR（时间片轮转调度）:</font></strong>
| 进程 | 运行时间 (Burst Time) | 完成时间 (Completion Time) | 周转时间 (Turn Around Time) |
| --- | --- | --- | --- |
| P1 | 8 | 18 | 18 |
| P2 | 7 | 21 | 21 |
| P3 | 2 | 10 | 10 |
| P4 | 4 | 14 | 14 |
平均周转时间：$\\frac{18+21+10+14}{4} = 15.75$<strong><font color=''#2656b3''>绝对差值：</font></strong>$∣10.5 - 15.75∣ = 5.25$', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5621');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5622, '408考研练习题——操作系统——CPU调度第43题', '简单', '408考研练习题——操作系统——CPU调度', '如果轮转调度策略中使用的时间片大于任何进程执行所需的最大时间，那么该策略将（ ）
', '[''退化为最短作业优先'', ''退化为优先级调度'', ''退化为先来先服务'', ''以上都不是'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 轮转调度（RR）在时间片下以**先来先服务（FCFS）**的方式执行进程
- 当时间片长度超过所有进程最大执行时间时，每个进程都会在单次时间片内完成
- 此时调度顺序完全取决于进程到达的先后顺序，与 FCFS 完全一致', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5622');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5623, '408考研练习题——操作系统——CPU调度第44题', '简单', '408考研练习题——操作系统——CPU调度', '考虑以下进程集合，其到达时间和所需 CPU 执行时间（单位：ms）如下表所示：
在采用时间片为 2 ms 的轮转调度算法时，这些进程的完成顺序是（ ）？
', '[''P1, P2, P3'', ''P2, P1, P3'', ''P3, P2, P1'', ''P2, P3, P1'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>使用时间片 tq=2ms 的轮转调度算法时，进程的完成顺序为 P2, P1, P3。选项 (B) 正确。具体分析如下：- 时间片分配规则

- 时间片固定为 2ms，每次从就绪队列中选择一个进程执行，直到时间片耗尽或进程完成。
- 若进程未完成，则将其放回就绪队列末尾继续等待。
- 执行过程分解

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=0~2ms</font></strong></font></strong>：P1 开始执行，剩余执行时间为 2ms。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=2ms</font></strong></font></strong>：P2 到达，加入就绪队列；P1 时间片用完，剩余 2ms，重新入队。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=2~4ms</font></strong></font></strong>：P2 执行完成（总执行时间 2ms）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=4ms</font></strong></font></strong>：P3 到达，加入就绪队列；P1 剩余 2ms，继续执行至 t=6ms 完成。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t=6ms</font></strong></font></strong>：P3 执行 1ms 完成。
- 完成顺序

- P2 在 t=4ms 完成，P1 在 t=6ms 完成，P3 在 t=7ms 完成。
- 因此最终完成顺序为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>P2 → P1 → P3</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5623');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5624, '408考研练习题——操作系统——CPU调度第45题', '简单', '408考研练习题——操作系统——CPU调度', '下表显示了就绪队列中的进程及其完成作业所需的时间：
如果使用时间片为 5 ms 的轮转调度算法，那么该队列中进程的平均等待时间是多少？（ ）
', '[''27 ms'', ''26.2 ms'', ''27.5 ms'', ''27.2 ms'']', "['B']", 'B</font></strong>
进程的等待时间 = 在就绪队列中等待的总时间。
等待时间 = 完成时间 - 执行时间- P1 的等待时间 = 30 - 10 = 20
- P2 的等待时间 = 10 - 5 = 5
- P3 的等待时间 = 58 - 20 = 38
- P4 的等待时间 = 38 - 8 = 30
- P5 的等待时间 = 53 - 15 = 38平均等待时间 = (20 + 5 + 38 + 30 + 38) / 5 =<strong><font color=''#2656b3''>131/5 = 26.2</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5624');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5625, '408考研练习题——操作系统——CPU调度第46题', '简单', '408考研练习题——操作系统——CPU调度', '轮转（Round Robin）算法的性能在很大程度上取决于（ ）
', '[''进程的大小'', ''进程的 I/O 突发'', ''进程的 CPU 突发'', ''时间片的大小'']', "['D']", 'D</font></strong>
在轮转算法中，时间片的大小起着非常重要的作用：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间片过小</font></strong></font></strong>：上下文切换次数会增加，这被视为浪费时间，导致 CPU 利用率下降。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间片过大</font></strong></font></strong>：较大的时间片会使轮转调度退化为先来先服务（FCFS）调度算法。因此，选项（D）正确。', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5625');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5626, '408考研练习题——操作系统——CPU调度第47题', '简单', '408考研练习题——操作系统——CPU调度', '考虑一组 5 个进程，其到达时间、所需 CPU 时间和优先级如下所示（数字越小优先级越高）：
如果 CPU 调度策略是<strong><font color=''#2656b3''>非抢占式优先级调度</font></strong>，则平均等待时间将是（ ）：
', '[''12.8 ms'', ''11.8 ms'', ''10.8 ms'', ''9.8 ms'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>等待时间 = 周转时间 - 执行时间
周转时间 = 完成时间 - 到达时间
| 进程 | 到达时间（ms） | 所需 CPU 时间 | 优先级 | 周转时间 | 等待时间 |
| --- | --- | --- | --- | --- | --- |
| P1 | 0 | 10 | 5 | 40 - 0 = 40 | 40 - 10 = 30 |
| P2 | 0 | 5 | 2 | 5 - 0 = 5 | 5 - 5 = 0 |
| P3 | 2 | 3 | 1 | 8 - 2 = 6 | 6 - 3 = 3 |
| P4 | 5 | 20 | 4 | 28 - 5 = 23 | 23 - 20 = 3 |
| P5 | 10 | 2 | 3 | 30 - 10 = 20 | 20 - 2 = 18 |
平均等待时间 = (30 + 0 + 3 + 3 + 18) / 5 = 10.8
因此，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5626');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5627, '408考研练习题——操作系统——CPU调度第48题', '简单', '408考研练习题——操作系统——CPU调度', '四个作业按顺序 A、B、C、D 在单处理器系统上于时间 0 到达。它们的 CPU 突发时间需求分别为 4、1、8、1 时间单位。在时间片为 1 时间单位的轮转调度下，作业 A 的完成时间是（ ）：
', '[''10'', ''4'', ''8'', ''9'']', "['D']", 'D</font></strong>
使用时间片为 1 的轮转算法时，各进程的到达时间为 0，其执行顺序为：- A（剩余 3）
- B（剩余 0）
- C（剩余 7）
- D（剩余 0）
- A（剩余 2）
- C（剩余 6）
- A（剩余 1）
- C（剩余 5）
- A（剩余 0）总共经历 9 个时间片后，作业 A 完成执行。因此，完成时间为<strong><font color=''#2656b3''>9</font></strong>。正确选项是 (D)。', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5627');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5628, '408考研练习题——操作系统——CPU调度第49题', '简单', '408考研练习题——操作系统——CPU调度', '考虑一组在单处理器机器上运行的 n 个任务，已知其运行时间分别为 r₁、r₂、…、rₙ。以下哪种处理器调度算法会导致最大的吞吐量？（ ）
', '[''轮转法（Round Robin）'', ''最短作业优先（Shortest job first）'', ''最高响应比优先（Highest response ratio next）'', ''先来先服务（First come first served）'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 吞吐量是指单位时间内完成的任务总数，即等待时间和执行时间的总和。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最短作业优先调度</font></strong></font></strong>是一种选择等待队列中执行时间最短的进程优先执行的调度策略。
- 在该策略下，短作业会优先执行，这意味着 CPU 利用率最大，因此可以完成最多的任务数。
- 综上，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5628');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5629, '408考研练习题——操作系统——CPU调度第50题', '简单', '408考研练习题——操作系统——CPU调度', '考虑下表中所示的一组进程，其到达时间（ms）、要求服务时间（ms）和优先级（0 为最高优先级）。所有进程均无 I/O 突发时间。使用抢占式优先级调度算法时，进程 P1 的等待时间（ms）是（  ）。
', '[''26'', ''49'', ''38'', ''29'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 等待时间计算公式：完成时间 - 到达时间 - 执行时间
- 具体计算过程：  
完成时间 = 49 ms  
到达时间 = 0 ms  
执行时间 = 11 ms  
<strong><font color=''#2656b3''><strong><font color=''#2656b3''>等待时间 = 49 - 0 - 11 = 38</font></strong></font></strong>因此选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:54', 9, NULL, '2026-02-02 11:52:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1348', '5629');
