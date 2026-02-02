INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5541, '408考研练习题——操作系统——死锁第1题', '简单', '408考研练习题——操作系统——死锁', '一台计算机有六个磁带驱动器，有 n 个进程竞争使用它们。每个进程可能需要两个驱动器。为了使系统处于无死锁状态，n 的最大值是多少（ ）？
', '[''6'', ''5'', ''4'', ''3'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 已知磁带驱动器总数为 6，每个进程需要 2 个驱动器。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>极端情况分析</font></strong></font></strong>：若每个进程先被分配 1 个驱动器，则最多可分配 6 个进程。此时所有进程均持有 1 个资源并等待第 2 个资源，形成循环等待，必然发生死锁。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>避免死锁策略</font></strong></font></strong>：根据银行家算法原理，为防止死锁需预留至少一个资源供系统调度。因此需减少 1 个进程，即nmax​=6−1=5。综上，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:40', 9, NULL, '2026-02-02 11:52:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5541');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5542, '408考研练习题——操作系统——死锁第2题', '简单', '408考研练习题——操作系统——死锁', '每个进程 Pi（i=1…9）的代码如下：

```c
repeat
    P(mutex)
    {Critical section}
    V(mutex)
forever
```
P10 的代码与此相同，但将`P(mutex)`替换为`V(mutex)`。在任意时刻，最多有多少个进程可以同时处于临界区？
', '[''1'', ''2'', ''3'', ''以上都不是'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>分析过程</font></strong>- 常规进程行为

- 初始时互斥量值设为 1，因此每次只能允许一个进程进入临界区。
- 假设 P1 进入临界区后，其余进程（P2-P9）均因`P(mutex)`操作被阻塞。
- P10 的特殊作用

- P10 的代码通过`V(mutex)`操作释放互斥量资源。
- 每次执行`V(mutex)`会唤醒一个阻塞进程，使其进入临界区。
- 由于 P10 持续运行，其不断执行`V(mutex)`可逐步解除所有阻塞进程。
- 最大并发数推导

- 最终所有 9 个常规进程（P1-P9）均可进入临界区。
- 加上 P10 自身，理论上最多有<strong><font color=''#2656b3''><strong><font color=''#2656b3''>10 个进程</font></strong></font></strong>同时处于临界区。<strong><font color=''#2656b3''>补充说明</font></strong>- 循环结构保证 P10 永远执行，持续提供资源释放能力。
- 题目要求的是“可能存在的最大值”，因此答案为 10。因此选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:40', 9, NULL, '2026-02-02 11:52:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5542');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5543, '408考研练习题——操作系统——死锁第3题', '简单', '408考研练习题——操作系统——死锁', '解决“就餐哲学家问题”并避免死锁的一种方法是（ ）：
', '[''确保所有哲学家先拿左边的叉子再拿右边的叉子'', ''确保所有哲学家先拿右边的叉子再拿左边的叉子'', ''确保某一位特定哲学家先拿左边的叉子再拿右边的叉子，而其他所有哲学家先拿右边的叉子再拿左边的叉子'', ''以上都不正确'']', "['C']", 'C</font></strong>
在“就餐哲学家问题”中，通过让某一位特定哲学家先拿左边的叉子再拿右边的叉子，同时让其他所有哲学家先拿右边的叉子再拿左边的叉子，可以避免死锁条件。选项 (C) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:40', 9, NULL, '2026-02-02 11:52:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5543');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5544, '408考研练习题——操作系统——死锁第4题', '简单', '408考研练习题——操作系统——死锁', '某计算机系统使用银行家算法处理死锁。其当前状态如下表所示，其中 P0、P1、P2 是进程，R0、R1、R2 是资源类型。

```c
     R0  R1  R2
P0   4   1   2 
P1   1   5   1 
P2   1   2   3
```
最大需求

```c
     R0   R1   R2
P0   1    0    2 
P1   0    3    1 
P2   1    0    2
```
当前分配量

```c
R0    R1    R2
2     2     0
```
系统可用
a) 证明系统可以处于该状态；
b) 当进程 P0 请求一个 R1 类型资源时，系统会如何处理？
', '[]', '未找到
<strong><font color=''#2656b3''>解析：</font></strong>
- a) 状态可行性验证根据银行家算法的安全性检查规则，需验证是否存在至少一个安全序列。假设当前可用资源向量为 [A0, A1, A2]，各进程的最大需求矩阵（Max）与已分配资源矩阵（Allocation）满足以下条件：

- 进程 P1 的 Need ≤ 可用资源 → 分配后释放资源，更新可用资源
- 进程 P2 的 Need ≤ 更新后的可用资源 → 分配后释放资源
- 进程 P0 的 Need ≤ 再次更新后的可用资源 → 完成所有进程执行  
因此，存在安全序列 P1→P2→P0，证明系统可以处于该状态。
- b) 资源请求处理当 P0 请求一个 R1 资源时，系统需进行以下判断：
- 检查请求是否超过 P0 的最大需求（Need）
- 假设分配后，检查新状态是否存在安全序列

- 若仍存在安全序列（如 P1→P2→P0），则允许分配
- 否则拒绝请求  
根据题目描述，分配后仍能维持安全序列，故系统会批准此次请求。
', '<strong><font color=''#2656b3''>答案：</font></strong>
a) 该系统的当前状态是可能的，因为这可能是某个安全序列的一部分。例如，在此状态下系统可以按照 P1→P2→P0 的顺序执行且不会导致死锁，因此系统确实可以处于该状态
b) 系统可以将一个 R1 资源分配给 P0 且仍然不会导致死锁，它依然可以按照 P1→P2→P0 的顺序执行
正确答案：未找到
<strong><font color=''#2656b3''>解析：</font></strong>
- a) 状态可行性验证根据银行家算法的安全性检查规则，需验证是否存在至少一个安全序列。假设当前可用资源向量为 [A0, A1, A2]，各进程的最大需求矩阵（Max）与已分配资源矩阵（Allocation）满足以下条件：

- 进程 P1 的 Need ≤ 可用资源 → 分配后释放资源，更新可用资源
- 进程 P2 的 Need ≤ 更新后的可用资源 → 分配后释放资源
- 进程 P0 的 Need ≤ 再次更新后的可用资源 → 完成所有进程执行  
因此，存在安全序列 P1→P2→P0，证明系统可以处于该状态。
- b) 资源请求处理当 P0 请求一个 R1 资源时，系统需进行以下判断：
- 检查请求是否超过 P0 的最大需求（Need）
- 假设分配后，检查新状态是否存在安全序列

- 若仍存在安全序列（如 P1→P2→P0），则允许分配
- 否则拒绝请求  
根据题目描述，分配后仍能维持安全序列，故系统会批准此次请求。
', 9, 'Mogullzr', '2026-02-02 11:52:40', 9, NULL, '2026-02-02 11:52:40', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5544');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5545, '408考研练习题——操作系统——死锁第5题', '简单', '408考研练习题——操作系统——死锁', '一个系统共享 9 个磁带驱动器。进程的当前分配和最大需求如下所示：以下哪项最能描述系统的当前状态？（ ）
', '[''安全，死锁'', ''安全，未死锁'', ''不安全，死锁'', ''不安全，未死锁'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 资源分配分析：

- 系统总磁带驱动器：9 个
- 已分配数量：3 (P1) + 1 (P2) + 3 (P3) + 0 (P4) =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>7 个</font></strong></font></strong>
- 剩余可用资源：9 - 7 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 个</font></strong></font></strong>
- 资源分配顺序：
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>优先满足 P3</font></strong></font></strong>（需求 2 个）→ 可用资源更新为 5
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>满足 P2</font></strong></font></strong>（需求 5 个）→ 可用资源更新为 6
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>满足 P1</font></strong></font></strong>（需求 6 个）→ 可用资源更新为 9因此存在一个<strong><font color=''#2656b3''>安全分配序列</font></strong>P3 → P2 → P1，系统处于安全状态，不会发生死锁，B 选项正确。', 9, 'Mogullzr', '2026-02-02 11:52:40', 9, NULL, '2026-02-02 11:52:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5545');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5546, '408考研练习题——操作系统——死锁第6题', '简单', '408考研练习题——操作系统——死锁', '考虑一个系统中有 3 个进程共享 4 个同类型资源实例。每个进程最多可以请求 K 个实例。资源实例只能一次请求或释放一个。始终避免死锁的最大 K 值是（ ）。
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
已知：进程数（P）= 3，资源数（R）= 4。
无死锁条件为：R ≥ P(N − 1) + 1
其中 R 表示总资源数，P 表示进程数，N 表示每个资源的最大需求量。
代入得：4 ≥ 3(N − 1) + 1 → 3 ≥ 3(N − 1) → 1 ≥ (N − 1) → N ≤ 2
因此，始终避免死锁的最大 K 值为 2。选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:40', 9, NULL, '2026-02-02 11:52:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5546');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5547, '408考研练习题——操作系统——死锁第7题', '简单', '408考研练习题——操作系统——死锁', '在一个系统中，存在三种资源类型：E、F 和 G。四个进程 P0、P1、P2 和 P3 并发执行。初始时，进程通过名为 Max 的矩阵声明其最大资源需求。例如，Max[P2, F] 表示 P2 所需的最大 F 资源实例数。任意状态下分配给各进程的资源实例数由名为 Allocation 的矩阵给出。
考虑一个系统状态，其 Allocation 矩阵如下所示，且当前可用资源仅包含 3 个 E 实例和 3 个 F 实例。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/6b7d8fcee7924f129472eab7a61ade5a.jpg)
从死锁避免的角度来看，以下哪一项是正确的？（ ）
', '[''系统处于安全状态'', ''系统不处于安全状态，但如果再有一个 E 实例可用则会变为安全状态'', ''系统不处于安全状态，但如果再有一个 F 实例可用则会变为安全状态'', ''系统不处于安全状态，但如果再有一个 G 实例可用则会变为安全状态'']', "['A']", 'A</font></strong>
根据银行家算法：- 初始可用资源为 (3, 3, 0)
- 可满足 P0 或 P2 的需求，选择 P0 <3, 3, 0>

- 完成后资源变为 (3, 3, 0)+(1, 0, 1)=(4, 3, 1)
- 选择 P2 <0, 3, 0>

- 完成后资源变为 (4, 3, 1)+(1, 0, 3)=(5, 3, 4)
- 选择 P1 <1, 0, 2>

- 完成后资源变为 (5, 3, 4)+(1, 1, 2)=(6, 4, 6)
- 选择 P3 <3, 4, 1>

- 完成后资源变为 (6, 4, 6)+(2, 0, 0)=(8, 4, 6)<strong><font color=''#2656b3''>安全序列</font></strong>：P0→P2→P1→P3
因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5547');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5548, '408考研练习题——操作系统——死锁第8题', '简单', '408考研练习题——操作系统——死锁', 'Dijkstra 银行家算法解决了什么问题？（ ）
', '[''缓存一致性'', ''互斥'', ''死锁恢复'', ''死锁避免'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>银行家算法</font></strong></font></strong>是荷兰计算机科学家 Edsger Dijkstra 提出的一种经典算法
- 属于<strong><font color=''#2656b3''><strong><font color=''#2656b3''>死锁避免</font></strong></font></strong>（Deadlock Avoidance）策略的核心实现
- 通过动态检测资源分配请求是否会导致系统进入不安全状态，从而决定是否允许该请求
- 在进程申请资源时，会预先模拟分配后系统的安全性，若存在安全序列则批准请求，否则拒绝
- 与死锁预防不同，它允许死锁条件存在但通过谨慎的资源分配策略避免进入死锁状态', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5548');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5549, '408考研练习题——操作系统——死锁第9题', '简单', '408考研练习题——操作系统——死锁', '单个资源时会发生死锁吗？（ ）
', '[''如果有两个以上进程竞争该资源时'', ''如果只有两个进程竞争该资源时'', ''如果只有一个进程竞争该资源时'', ''以上都不是'']', "['D']", 'D</font></strong>
发生死锁需要满足以下 4 个条件：- 互斥（Mutual Exclusion）
- 不可抢占（No pre-emption）
- 持有并等待（Hold and wait）
- 循环等待（Circular wait）当资源只有一个时，持有并等待和循环等待的条件会被消除。假设进程不能无限期占用资源，则每当一个进程执行完毕后，另一个进程就能获得该资源。因此死锁不可能发生。所以选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5549');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5550, '408考研练习题——操作系统——死锁第10题', '简单', '408考研练习题——操作系统——死锁', '以下哪项不是死锁的必要条件？（ ）
', '[''互斥'', ''可重入性'', ''持有并等待'', ''不可抢占'']', "['B']", 'B</font></strong>
死锁发生的四个必要条件为：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥</font></strong></font></strong>：资源不能共享，一次只能被一个进程占用
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>不可抢占</font></strong></font></strong>：资源只能由持有它的进程主动释放
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>持有并等待</font></strong></font></strong>：进程在等待新资源时不会释放已持有的资源
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环等待</font></strong></font></strong>：存在一个进程链，每个进程都在等待下一个进程所持有的资源选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5550');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5551, '408考研练习题——操作系统——死锁第11题', '简单', '408考研练习题——操作系统——死锁', '系统共有 9 个某类资源，当前处于安全状态，如下表所示。以下哪个进程执行顺序是安全的？（ ）
', '[''(P4, P1, P3, P2)'', ''(P4, P2, P1, P3)'', ''(P4, P2, P3, P1)'', ''(P3, P1, P2, P4)'']', "['D']", 'D</font></strong>
应用银行家算法，各进程的 Need 矩阵为：
| Process | Used | Max | Need |
| --- | --- | --- | --- |
| P1 | 2 | 7 | 5 |
| P2 | 1 | 6 | 5 |
| P3 | 2 | 5 | 3 |
| P4 | 1 | 4 | 3 |
当前可用资源数 = 可用资源 - 已分配资源 =<strong><font color=''#2656b3''>9 - 6 = 3</font></strong><strong><font color=''#2656b3''>排除逻辑：</font></strong>- 若首先满足 P4 的请求，则其执行后最多释放 4 个资源（1+3）
- 后续分配给 P1 或 P2（两者均需 5 个资源）时：

- 当前可用资源 4 < 需求 5 → 无法满足需求
- 因此选项 (A)、(B)、(C) 均被排除✅<strong><font color=''#2656b3''>选项 (D) 正确</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5551');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5552, '408考研练习题——操作系统——死锁第12题', '简单', '408考研练习题——操作系统——死锁', '当进程因死锁而回滚时，可能产生的负面作用是（ ）
', '[''饥饿'', ''系统吞吐量'', ''设备利用率低'', ''周期窃取'']', "['A']", 'A</font></strong>
当进程因死锁而回滚时，产生的负面作用是<strong><font color=''#2656b3''>饥饿</font></strong>。- 回滚操作可能导致进程重新进入死锁状态
- 此时进程可能需要<strong><font color=''#2656b3''><strong><font color=''#2656b3''>无限期等待资源</font></strong></font></strong>
- 最终形成<strong><font color=''#2656b3''><strong><font color=''#2656b3''>资源分配无法满足</font></strong></font></strong>的饥饿现象其他选项分析：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>设备利用率低</font></strong></font></strong>属于系统性能问题，与死锁回滚无直接关联
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>周期窃取</font></strong></font></strong>（Cycle Stealing）是 DMA 技术中的概念，与死锁处理无关
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>系统吞吐量</font></strong></font></strong>受多种因素影响，但并非死锁回滚的直接后果', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5552');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5553, '408考研练习题——操作系统——死锁第13题', '简单', '408考研练习题——操作系统——死锁', '在死锁的四个必要条件中，哪个条件要求进程对其所需的资源声明独占控制？（ ）
', '[''不可抢占'', ''互斥'', ''循环等待'', ''占有并等待'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>互斥</font></strong>是指一个或多个资源为非共享资源（同一时间仅允许一个进程使用），即进程对其所需的资源声明独占控制。因此，选项 (B) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:42', 9, NULL, '2026-02-02 11:52:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5553');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5554, '408考研练习题——操作系统——死锁第14题', '简单', '408考研练习题——操作系统——死锁', '考虑以下进程及其资源需求情况：
假设系统中共有资源类型 1 的实例 5 个，资源类型 2 的实例 4 个。预测该系统的状态（ ）。
', '[''根据执行顺序可能进入安全或不安全状态'', ''安全状态'', ''不安全状态'', ''死锁状态'']', "['C']", 'C</font></strong>

| 进程 | 资源类型 1: 已分配 | 资源类型 1: 最大需求 | 资源类型 1: 需求 | 资源类型 2: 已分配 | 资源类型 2: 最大需求 | 资源类型 2: 需求 |
| --- | --- | --- | --- | --- | --- | --- |
| P1 | 1 | 2 | 1 | 1 | 3 | 2 |
| P2 | 1 | 3 | 2 | 1 | 2 | 2 |
| P3 | 2 | 4 | 2 | 1 | 4 | 3 |
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>可用资源</font></strong></font></strong>

- 类型 1:5 - 4 = 1
- 类型 2:4 - 3 = 1当前仅有的 1 个类型 1 和 1 个类型 2 资源无法满足任何进程的需求，因此系统处于<strong><font color=''#2656b3''>不安全状态</font></strong>。
选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5554');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5555, '408考研练习题——操作系统——死锁第15题', '简单', '408考研练习题——操作系统——死锁', '考虑以下系统运行$n$个进程的快照。进程$i$持有$X_{i}$个资源$R$的实例，$1 ≤ i ≤ n$。当前，所有$R$的实例都被占用。此外，对于所有$i$，进程$i$在持有其已有的$X_{i}$实例的同时，还请求了额外的$Y_{i}$实例。恰好存在两个进程$p$和$q$，使得$Y_{p} = Y_{q} = 0$。以下哪一项可以作为保证系统不会进入死锁状态的必要条件？
', '[''$min(X_{p}, X_{q}) < max(Y_{k})$，其中$k \\\\neq p$且$k \\\\neq q$'', ''$X_{p} + X_{q} ≥ min(Y_{k})$，其中$k \\\\neq p$且$k \\\\neq q$'', ''$max(X_{p}, X_{q}) > 1$'', ''$min(X_{p}, X_{q}) > 1$'']', "['B']", 'B</font></strong>
由于$p$和$q$都不需要额外资源，它们都可以完成并释放$X_{p} + X_{q}$个资源，而无需请求任何额外资源。如果$p$和$q$释放的资源足以满足另一个等待$Y_{k}$资源的进程的需求，则系统不会进入死锁状态。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5555');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5556, '408考研练习题——操作系统——死锁第16题', '简单', '408考研练习题——操作系统——死锁', '一个系统包含三个程序，每个程序运行时需要三个磁带单元。为了确保系统永远不会发生死锁，该系统至少需要（  ）个磁带单元。
', '[''6'', ''7'', ''8'', ''9'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 当系统拥有 6 个磁带单元时：三个程序各持有 2 个资源，同时各自请求第 3 个资源，形成循环等待，最终导致死锁。
- 当系统拥有 7 个磁带单元时：至少有一个程序可以获取全部 3 个所需资源，完成执行后释放资源，打破循环等待条件，从而避免死锁。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5556');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5557, '408考研练习题——操作系统——死锁第17题', '简单', '408考研练习题——操作系统——死锁', '一个系统有 6 个相同的资源，N 个进程竞争这些资源。每个进程最多请求 2 个资源。以下哪个 N 的值可能导致死锁？（ ）
', '[''3'', ''4'', ''5'', ''6'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>答案：N = 6（以及任何 N ≥ 6）</font></strong>理由：对 m 个相同资源、每进程最多要 r 个资源的系统，若$m ≥ n (r - 1) + 1$则一定不会死锁；否则可能死锁。这里$m = 6, r = 2$，代入得需$6 ≥ n + 1 ⇒ n ≤ 5$才必无死锁。当<strong><font color=''#2656b3''>N=6</font></strong>时，可让每个进程先拿到 1 个资源、再各自再请求第 2 个资源，此时无空闲资源，6 个进程互相等待 → 发生死锁。因此<strong><font color=''#2656b3''>最小会导致死锁的 N 是 6</font></strong>（更大的 N 也可能死锁）。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5557');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5558, '408考研练习题——操作系统——死锁第18题', '简单', '408考研练习题——操作系统——死锁', '考虑以下在具有互斥资源的系统中防止死锁的策略：
I. 进程应在执行开始时获取所有所需资源。如果任何资源不可用，则释放已获取的所有资源。
II. 资源被唯一编号，进程只能按递增的资源编号请求资源。
III. 资源被唯一编号，进程只能按递减的资源编号请求资源。
IV. 资源被唯一编号。进程只能请求当前所持资源编号更大的资源。
上述哪些策略可用于防止死锁？（ ）
', '[''仅 I 和 III，而非 II 或 IV'', ''仅 I、III 和 IV，而非 II'', ''仅 II 和 III，而非 I 或 IV'', ''I、II、III 和 IV 均可'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 策略 I 通过要求进程一次性获取所有所需资源，避免了“持有并等待”这一死锁必要条件。
- 策略 II、III 和 IV 通过限制资源请求的顺序（递增、递减或仅允许请求更高编号的资源），消除了“循环等待”这一死锁必要条件。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5558');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5559, '408考研练习题——操作系统——死锁第19题', '简单', '408考研练习题——操作系统——死锁', '操作系统按照以下方式处理资源请求：一个进程（请求某些资源，使用一段时间后退出系统）在其启动时被分配一个唯一的时间戳。这些时间戳随时间单调递增。我们用 TS(P) 表示进程 P 的时间戳。
当进程 P 请求资源时，操作系统执行以下操作：
(i) 如果没有其他进程当前持有该资源，操作系统将资源分配给 P。
(ii) 如果有某个进程 Q 持有该资源且 TS(Q) < TS(P)，操作系统使 P 等待该资源。
(iii) 如果有某个进程 Q 持有该资源且 TS(Q) > TS(P)，操作系统重启 Q 并将资源分配给 P。（重启意味着从进程中收回资源、终止它并以相同的时间戳重新启动）
当进程释放资源时，操作系统将资源分配给等待该资源的进程中时间戳最小的那个（如果有的话）。
a). 是否可能发生死锁？如果可能，请说明原因；否则，请证明。
b). 进程 P 是否可能发生饥饿？如果可能，请说明原因；否则，请证明。
', '[]', '', '<strong><font color=''#2656b3''>解析：</font></strong>
<strong><font color=''#2656b3''>a) 死锁分析</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论：不可能发生死锁</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原因：</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥条件成立</font></strong></font></strong>：资源只能由一个进程持有。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>持有并等待条件成立</font></strong></font></strong>：进程在等待资源时可能持有其他资源。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环等待条件被破坏</font></strong></font></strong>：

- 当进程P请求资源时，若持有资源的进程Q满足TS(Q)>TS(P)，则Q被强制重启，资源立即分配给P。
- 时间戳的单调性确保所有进程按时间戳排序形成全序关系，不存在循环依赖。
<strong><font color=''#2656b3''>b) 饥饿分析</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论：不可能发生饥饿</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原因：</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>优先级调度</font></strong></font></strong>：等待队列中的进程按时间戳从小到大依次被分配资源。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>重启机制保障公平性</font></strong></font></strong>：

- 若进程Q持有资源且TS(Q)>TS(P)，Q会被重启，其时间戳不变，但资源释放后P可立即获得服务。
- 所有等待进程最终都会因时间戳优先级被调度，无无限等待的情况。
', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5559');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5560, '408考研练习题——操作系统——死锁第20题', '简单', '408考研练习题——操作系统——死锁', '考虑以下生产者 - 消费者同步问题的解决方案。共享缓冲区大小为 N。定义了三个信号量 empty、full 和 mutex，其初始值分别为 0、N 和 1。信号量 empty 表示缓冲区中可供消费者读取的可用槽位数量；信号量 full 表示缓冲区中可供生产者写入的可用槽位数量。代码中的占位符变量 P、Q、R 和 S 可以被分配为 empty 或 full。有效的信号量操作是：wait() 和 signal()。以下哪一组对 P、Q、R 和 S 的赋值能产生正确的解决方案？

```c
do {
    wait(P);
    wait(mutex);
    // Add item to buffer
    signal(mutex);
    signal(Q);
} while(1);
```


```c
do {
    wait(R);
    wait(mutex);
    // Consume item from buffer;
    signal(mutex);
    signal(S);
} while(1);
```

', '[''P:full, Q:full, R:empty, S:empty'', ''P:empty, Q:empty, R:full, S:full'', ''P:full, Q:empty, R:empty, S:full'', ''P:empty, Q:full, R:full, S:empty'']', "['C']", 'C</font></strong>
已知 Empty = 0 Full = N Mutex = 1。由于 empty 信号量的初始值为 0，因此第一次尝试时无法对 empty 执行 wait 操作。注意：empty 信号量表示已填充的槽位数，因此生产者进程必须处理 empty 和 mutex 信号量；full 信号量表示空闲槽位数，因此消费者进程必须处理 full 和 mutex 信号量。<strong><font color=''#2656b3''>排除错误选项的原因</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (A)</font></strong></font></strong>：会导致饥饿，生产者无法获取 empty 信号量（初始为 0）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (B)</font></strong></font></strong>：同样导致饥饿，消费者无法获取 full 信号量（初始为 N，但逻辑错误）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (D)</font></strong></font></strong>：消费者因 empty 信号量初始为 0 而无法开始消费，实现错误。<strong><font color=''#2656b3''>选项 (C) 正确的原因</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P:empty</font></strong></font></strong>：生产者通过`wait(empty)`确保缓冲区有空位可写入。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>Q:full</font></strong></font></strong>：消费者通过`wait(full)`确保缓冲区有数据可读取。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>R:full</font></strong></font></strong>：生产者写入后通过`signal(full)`增加可用数据量。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S:empty</font></strong></font></strong>：消费者读取后通过`signal(empty)`增加可用空位。该顺序保证了无死锁且无饥饿的同步机制。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5560');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5561, '408考研练习题——操作系统——死锁第21题', '简单', '408考研练习题——操作系统——死锁', '以下哪项关于死锁预防和死锁避免方案的描述是不正确的？（ ）
', '[''在死锁预防中，如果结果状态是安全的，则资源请求总是被授予'', ''在死锁避免中，如果结果状态是安全的，则资源请求总是被授予'', ''死锁避免比死锁预防的限制更少'', ''死锁避免需要预先了解资源需求'']', "['A']", 'A</font></strong>
死锁预防：通过防止四个必要条件中的至少一个来避免死锁- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥</font></strong></font></strong>– 可共享资源不需要互斥；不可共享资源必须满足互斥。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>持有并等待</font></strong></font></strong>– 必须保证进程请求资源时不持有其他资源。要求进程在开始执行前申请所有所需资源，或仅允许进程在未持有任何资源时申请资源。这可能导致资源利用率低和饥饿问题。限制了请求的方式。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>不可抢占</font></strong></font></strong>– 如果持有资源的进程请求无法立即分配的资源，则释放当前持有的所有资源。被抢占的资源加入进程等待列表。只有当进程重新获得旧资源和新请求资源后才能重启。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环等待</font></strong></font></strong>– 对所有资源类型定义全序关系，并要求进程按递增顺序请求资源。<strong><font color=''#2656b3''>死锁避免</font></strong>：当调度器发现启动进程或授予资源请求可能导致未来死锁时，将拒绝该请求。死锁避免算法动态检查资源分配状态以确保不会出现循环等待条件。资源分配状态由可用资源数、已分配资源数及进程的最大需求定义。<strong><font color=''#2656b3''>选项解析</font></strong>：- (A) 在死锁预防中，如果结果状态是安全的，则资源请求总是被授予 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误</font></strong></font></strong>。死锁预防通过确保四个必要条件之一不成立来处理死锁。即使结果状态是安全的，资源请求也可能不被授予（例如，为打破“持有并等待”条件）。
- (B) 在死锁避免中，如果结果状态是安全的，则资源请求总是被授予 → 正确。死锁避免中，若状态安全则授予请求，因为此时进程可以继续持有其他资源。
- (C) 死锁避免比死锁预防的限制更少 → 正确。死锁预防可能在安全状态下拒绝请求（如强制一次性申请所有资源），而死锁避免仅在状态不安全时拒绝。
- (D) 死锁避免需要预先了解资源需求 → 正确。死锁避免需预测资源分配后的系统状态是否安全，因此需要进程声明最大资源需求。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5561');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5562, '408考研练习题——操作系统——死锁第22题', '简单', '408考研练习题——操作系统——死锁', '如果系统中有三个进程 P1、P2 和 P3 正在运行，它们对同类资源的最大需求分别为 3、4 和 5。为确保系统永远不会发生死锁，至少需要多少个资源？
', '[''3'', ''7'', ''9'', ''10'']', "['D']", 'D</font></strong>
设 P1 所需资源数为$R_{1} = 3$，
P2 所需资源数为$R_{2} = 4$，以此类推…
确保不会发生死锁所需的最小资源数：
$$
(R_{1} - 1) + (R_{2} - 1) + (R_{3} - 1) + 1 = (3 - 1) + (4 - 1) + (5 - 1) + 1 = 2 + 3 + 4 + 1 = 10
$$
选项 (D) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:43', 9, NULL, '2026-02-02 11:52:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5562');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5563, '408考研练习题——操作系统——死锁第23题', '简单', '408考研练习题——操作系统——死锁', '考虑一个拥有 m 个同类资源的系统。这些资源由三个进程 A、B、C 共享，它们的峰值需求分别为 3、4、6。为确保系统永远不会发生死锁，m 的最小值是（ ）。
', '[''11'', ''12'', ''13'', ''14'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
避免死锁所需的最少资源数计算公式为：
$$
\\sum_{i=1}^{y}(m_{i} - 1) + 1
$$
其中：- mi​表示第 i 个进程的峰值需求
- y表示进程总数代入本题数据：
$$
(3 - 1) + (4 - 1) + (6 - 1) + 1 = 2 + 3 + 5 + 1 = 11
$$
当系统资源数 ≥ 11 时，可保证至少有一个进程能获得全部所需资源并完成执行，释放其占用资源，从而避免死锁。因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5563');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5564, '408考研练习题——操作系统——死锁第24题', '简单', '408考研练习题——操作系统——死锁', '三个并发进程 X、Y 和 Z 分别执行访问和更新某些共享变量的不同代码段。进程 X 在进入代码段前对信号量 a、b 和 c 执行 P 操作（即 wait）；进程 Y 对信号量 b、c 和 d 执行 P 操作；进程 Z 对信号量 c、d 和 a 执行 P 操作。每个进程完成代码段的执行后，会对其三个信号量执行 V 操作（即 signal）。所有信号量均为二进制信号量，初始值为 1。以下哪一项表示进程调用 P 操作的无死锁顺序？
', '[''X：P(a)P(b)P(c) Y：P(b)P(c)P(d) Z：P(c)P(d)P(a)'', ''X：P(b)P(a)P(c) Y：P(b)P(c)P(d) Z：P(a)P(c)P(d)'', ''X：P(b)P(a)P(c) Y：P(c)P(b)P(d) Z：P(a)P(c)P(d)'', ''X：P(a)P(b)P(c) Y：P(c)P(b)P(d) Z：P(c)P(d)P(a)'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 选项 A可能导致死锁

- 场景示例：进程 X 获取 a，进程 Y 获取 b，进程 Z 获取 c 和 d → 形成循环等待链（X 等待 b，Y 等待 c，Z 等待 a）
- 选项 C可能导致死锁

- 场景示例：进程 X 获取 b，进程 Y 获取 c，进程 Z 获取 a → 形成循环等待链（X 等待 a，Y 等待 b，Z 等待 c）
- 选项 D可能导致死锁

- 场景示例：进程 X 获取 a 和 b，进程 Y 获取 c → 形成相互等待（X 等待 c，Y 等待 a 或 b）
- 选项 B是唯一无死锁的方案

- 完成顺序为 Z→X→Y
- 资源分配路径：Z 先获取 a/c/d → X 获取 b/a/c → Y 获取 b/c/d
- 不存在循环等待条件，满足银行家算法的安全序列要求', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5564');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5565, '408考研练习题——操作系统——死锁第25题', '简单', '408考研练习题——操作系统——死锁', '考虑一个具有 4 种资源的系统：R1（3 个单位）、R2（2 个单位）、R3（3 个单位）、R4（2 个单位）。系统采用非抢占式资源分配策略。在任意时刻，如果请求无法完全满足，则不会被处理。
有三个进程 P1、P2 和 P3 独立执行时的资源请求如下：

```c
t=0: 请求 2 个单位的 R2  
t=1: 请求 1 个单位的 R3  
t=3: 请求 2 个单位的 R1  
t=5: 释放 1 个单位的 R2 和 1 个单位的 R1  
t=7: 释放 1 个单位的 R3  
t=8: 请求 2 个单位的 R4  
t=10: 完成
```
进程 P1

```c
t=0: 请求 2 个单位的 R3  
t=2: 请求 1 个单位的 R4  
t=4: 请求 1 个单位的 R1  
t=6: 释放 1 个单位的 R3  
t=8: 完成
```
进程 P2

```c
t=0: 请求 1 个单位的 R4  
t=2: 请求 2 个单位的 R1  
t=5: 释放 2 个单位的 R1  
t=7: 请求 1 个单位的 R2  
t=8: 请求 1 个单位的 R3  
t=9: 完成
```
进程 P3
若所有三个进程从时间 t=0 开始并发运行，以下哪项陈述是正确的？（ ）
', '[''所有进程都能完成且无死锁'', ''仅 P1 和 P2 会陷入死锁'', ''仅 P1 和 P3 会陷入死锁'', ''所有三个进程都会陷入死锁'']', "['A']", 'A</font></strong>
- 分析过程
- 按照时间轴逐步模拟资源分配：

- t=0: P1 获取 R2(2), P2 获取 R3(2), P3 获取 R4(1)
- t=1: P1 获取 R3(1)
- t=2: P2 获取 R4(1), P3 获取 R1(2)
- t=3: P1 获取 R1(2)
- t=4: P2 获取 R1(1)
- t=5: P1 释放 R2(1) + R1(1)，此时可用资源 R2=1, R1=1
- t=7: P1 释放 R3(1)，P3 获取 R2(1)
- t=8: P1 获取 R4(2)，P3 获取 R3(1)
- t=9: P3 完成
- t=10: P1 完成
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键验证点</font></strong></font></strong>

- 所有资源请求均能按需分配
- 不存在循环等待条件（各进程最终释放全部资源）
- 最终所有进程均完成执行
- 结论根据死锁检测算法，系统始终处于安全状态，因此选择 A。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5565');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5566, '408考研练习题——操作系统——死锁第26题', '简单', '408考研练习题——操作系统——死锁', '一个系统有$n$个资源$R_{0}, ⋯  , R_{n-1}$和 k 个进程 P₀, …, Pₖ₋₁。每个进程 Pᵢ 的资源请求逻辑实现如下：

```c
if (i % 2 == 0) {
    if (i < n) request Ri;
    if (i+2 < n) request Ri+2;
}
else {
    if (i < n) request Rn-i;
    if (i+2 < n) request Rn-i-2;
}
```
在以下哪种情况下可能发生死锁？（ ）
', '[''n=40, k=26'', ''n=21, k=12'', ''n=20, k=10'', ''n=41, k=19'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>选项 B 是答案</font></strong><strong><font color=''#2656b3''>资源数量 n=21，进程数量 k=12</font></strong>进程 {P₀, P₁,…,P₁₁} 发出以下资源请求：
R₀, R₂₀, R₂, R₁₈, R₄, R₁₆, R₆, R₁₄, R₈, R₁₂, R₁₀, R₁₀<strong><font color=''#2656b3''>示例解析</font></strong>- P₀ 请求 R₀（`0%2==0`且`0 < 21`）
- P₁₀ 请求 R₁₀
- P₁₁ 请求 R₁₀（`n-i = 21-11 = 10`）<strong><font color=''#2656b3''>死锁成因</font></strong>由于不同进程请求相同的资源（如 R₁₀ 被 P₁₀ 和 P₁₁ 同时请求），当资源分配顺序不当且无法满足所有进程的请求时，可能发生死锁。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5566');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5567, '408考研练习题——操作系统——死锁第27题', '简单', '408考研练习题——操作系统——死锁', '一个操作系统在管理三个进程 P0、P1 和 P2 对三种资源类型 X、Y 和 Z 的分配时，使用银行家算法进行死锁避免。下表展示了当前系统状态。其中，Allocation 矩阵显示了每个进程当前分配的每种资源数量，Max 矩阵显示了每个进程在其执行过程中所需的每种资源最大数量。

```c
          Allocation          Max
         X   Y   Z         X   Y   Z
P0       0   0   1         8   4   3
P1       3   2   0         6   2   0
P2       2   1   1         3   3   3
```
目前仍有 3 个单位的 X 资源、2 个单位的 Y 资源和 2 个单位的 Z 资源可用。系统当前处于安全状态。考虑以下两个独立的额外资源请求：
REQ1: P0 请求 0 个 X 单位，
0 个 Y 单位和 2 个 Z 单位
REQ2: P1 请求 2 个 X 单位，
0 个 Y 单位和 0 个 Z 单位
以下哪一项是正确的？（ ）
', '[''仅 REQ1 可以被允许。'', ''仅 REQ2 可以被允许。'', ''REQ1 和 REQ2 都可以被允许。'', ''REQ1 和 REQ2 都不能被允许'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>这是当前的安全状态：
```c
AVAILABLE（可用资源）：X=3，Y=2，Z=2

      MAX        ALLOCATION
    X  Y  Z       X  Y  Z
P0  8  4  3       0  0  1
P1  6  2  0       3  2  0
P2  3  3  3       2  1  1
```
现在，如果允许请求 REQ1，状态将变为：
```c
AVAILABLE：X=3，Y=2，Z=0

      MAX        ALLOCATION       NEED
    X  Y  Z       X  Y  Z       X  Y  Z
P0  8  4  3       0  0  3       8  4  0
P1  6  2  0       3  2  0       3  0  0
P2  3  3  3       2  1  1       1  2  2
```
在当前资源可用的情况下，我们可以满足 P1 的需求。状态将变为：
```c
AVAILABLE：X=6，Y=4，Z=0

      MAX        ALLOCATION       NEED
    X  Y  Z       X  Y  Z       X  Y  Z
P0  8  4  3       0  0  3       8  4  0
P1  6  2  0       3  2  0       0  0  0
P2  3  3  3       2  1  1       1  2  2
```
此时，由于缺少 Z 资源，我们无法满足 P0 或 P2 的需求。因此，系统将进入死锁状态。
⇒ 我们不能允许 REQ1。现在，在当前安全状态下，如果我们接受 REQ2：
```c
AVAILABLE：X=1，Y=2，Z=2

      MAX        ALLOCATION       NEED
    X  Y  Z       X  Y  Z       X  Y  Z
P0  8  4  3       0  0  1       8  4  2
P1  6  2  0       5  2  0       1  0  0
P2  3  3  3       2  1  1       1  2  2
```
在该资源可用情况下，可以服务 P1（也可以服务 P2）。状态变为：
AVAILABLE：X=7，Y=4，Z=2
```c
      MAX        ALLOCATION       NEED
    X  Y  Z       X  Y  Z       X  Y  Z
P0  8  4  3       0  0  1       8  4  2
P1  6  2  0       5  2  0       0  0  0
P2  3  3  3       2  1  1       1  2  2
```
现在我们可以服务 P2。状态变为：
```c
AVAILABLE：X=10，Y=7，Z=5

      MAX        ALLOCATION       NEED
    X  Y  Z       X  Y  Z       X  Y  Z
P0  8  4  3       0  0  1       8  4  2
P1  6  2  0       5  2  0       0  0  0
P2  3  3  3       2  1  1       0  0  0
```
最后我们服务 P0。状态变为：
AVAILABLE：X=18，Y=11，Z=8
```c
      MAX        ALLOCATION       NEED
    X  Y  Z       X  Y  Z       X  Y  Z
P0  8  4  3       0  0  1       0  0  0
P1  6  2  0       5  2  0       0  0  0
P2  3  3  3       2  1  1       0  0  0
```
所得到的状态是一个安全状态。
⇒ 可以允许 REQ2。因此，只有 REQ2 可以被允许。所以，正确的选项是<strong><font color=''#2656b3''>B</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5567');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5568, '408考研练习题——操作系统——死锁第28题', '简单', '408考研练习题——操作系统——死锁', '假设有$n$个进程$P_{1}, ⋯  , P_{n}$共享$m$个相同的资源单元，这些资源可以一次一个地被保留和释放。进程$P_{i}$的最大资源需求为$s_{i}$，其中$s_{i} > 0$。以下哪一项是确保不会发生死锁的充分条件？
', '[''$∀i, s_{i} < m$'', ''$∀i, s_{i} < n$'', ''$\\\\sum_{i=1}^{n} s_{i} < (m + n)$'', ''$\\\\sum_{i=1}^{n} s_{i} < (m × n)$'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>
要确保系统不会发生死锁，一个充分条件是所有进程的最大资源需求之和满足以下条件：
$$
\\sum_{i=1}^{n} s_{i} ≤ (m + n - 1)
$$
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原因：</font></strong></font></strong>

- 如果总需求满足此条件，则至少存在一个进程能够获得所需的所有资源并完成执行。
- 该进程完成后会释放其占用的资源，使得其他进程有机会继续运行。
- 这样可以打破死锁的四个必要条件之一（循环等待），从而避免死锁的发生。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5568');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5569, '408考研练习题——操作系统——死锁第29题', '简单', '408考研练习题——操作系统——死锁', '以下哪项不是有效的死锁预防方案？（ ）
', '[''在请求新资源之前释放所有资源'', ''为资源唯一编号，并且永远不要请求比上次请求的编号更低的资源。'', ''在释放任何资源后，永不请求资源'', ''执行前分配所有所需资源。'']', "['C']", 'C</font></strong>
题目：以下哪项<strong><font color=''#2656b3''>不是</font></strong>有效的死锁预防方案？选项如下：
A. 在请求新资源之前释放所有资源
B. 为资源唯一编号，并且永远不要请求比上次请求的编号更低的资源。
C. 在释放任何资源后，永不请求资源
D. 执行前分配所有所需资源<strong><font color=''#2656b3''>解析</font></strong>为了预防死锁，需要破坏<strong><font color=''#2656b3''>死锁的四个必要条件</font></strong>之一：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥</font></strong></font></strong>（资源不能被共享）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>占有且等待</font></strong></font></strong>（一个进程持有资源并等待其他资源）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>不剥夺</font></strong></font></strong>（已经分配的资源不能被强制剥夺）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环等待</font></strong></font></strong>（存在一个等待资源的环）逐个分析选项：- A. 在请求新资源之前释放所有资源→ 破坏了占有且等待条件，是有效的预防策略。
- B. 为资源唯一编号，并且永远不要请求比上次请求的编号更低的资源→ 避免了循环等待，也是经典的死锁预防方法。
- C. 在释放任何资源后，永不请求资源→ 这个策略过于极端，实际上不可行，也不是有效的死锁预防方案。它限制了程序合理地分阶段申请资源的能力。
- D. 执行前分配所有所需资源→ 这也是一种经典策略，称为一次性分配策略，可以避免死锁。因此，<strong><font color=''#2656b3''>C 选项不是有效的死锁预防方案</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5569');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5570, '408考研练习题——操作系统——死锁第30题', '简单', '408考研练习题——操作系统——死锁', '考虑以下针对临界区问题的解决方案。共有$n$个进程：$P_{0}, P_{1}, ⋯  , P_{n-1}$。在代码中，函数`pmax`返回一个不小于其任何参数的整数。对于所有`i`，`t[i]`被初始化为零。关于上述解决方案，以下哪一项是正确的？（ ）

```c
do {
    c[i]=1; t[i] = pmax(t[0],...,t[n-1])+1; c[i]=0;
    for every j != i in {0,...,n-1} {
        while (c[j]);
        while (t[j] != 0 && t[j]<=t[i]);
    }
    Critical Section;
    t[i]=0;
    Remainder Section;
} while (true);
```
', '[''任何时候最多只有一个进程可以在临界区中'', ''满足有界等待条件'', ''满足进展条件'', ''不会导致死锁'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>互斥性分析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥性得到满足</font></strong></font></strong>：所有在进程`i`之前启动的其他进程`j`必须具有较小的值（即`t[j] < t[i]`），因为函数`pMax()`返回一个不小于其任何参数的整数。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>执行机制</font></strong></font></strong>：当`j`进程退出临界区时，它会将`t[j]`设为`0`；随后循环会选择下一个进程。因此，当`i`进程进入临界区时，所有在`i`进程之前启动的进程`j`都不在其临界区中。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：同一时间只有一个进程在执行其临界区。<strong><font color=''#2656b3''>死锁与进展条件</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>死锁可能发生</font></strong></font></strong>：由于`while (t[j] != 0 && t[j] <=t[i])`这一条件，当`j`进程的值等于`i`进程的值（即`t[j] == t[i]`）时可能发生死锁。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>进展条件未满足</font></strong></font></strong>：由于死锁的存在，进展条件也无法满足（即进展=无死锁），因为没有进程能够通过阻止其他进程来取得进展。<strong><font color=''#2656b3''>有界等待条件</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>有界等待未满足</font></strong></font></strong>：如果`t[j] == t[i]`是可能的，则可能导致饥饿（即无限等待）。这种情况源于相同的原因——死锁的可能性导致无法保证有限次等待后进入临界区。', 9, 'Mogullzr', '2026-02-02 11:52:44', 9, NULL, '2026-02-02 11:52:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5570');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5571, '408考研练习题——操作系统——死锁第31题', '简单', '408考研练习题——操作系统——死锁', '一个操作系统包含 3 个用户进程，每个进程需要 2 个资源单位 R。为确保永远不会发生死锁，R 的最小资源单位数是（ ）。
', '[''3'', ''5'', ''4'', ''6'']', "['C']", 'C</font></strong>
总进程数为 3，每个进程需要 2 个资源单位。如果我们给每个进程分配 1 个资源，则总资源数为 1+1+1=3，但此时必然会发生死锁，因为每个进程都持有 1 个资源并等待另一个资源。如果再增加 1 个资源（3+1=4），则死锁将不会发生（即当进程 1 完成执行后会释放 2 个资源，这 2 个资源可被其他进程使用）。<strong><font color=''#2656b3''>结论分析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>资源数 = 3</font></strong></font></strong>：每个进程各持 1 个资源，形成循环等待 → 死锁
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>资源数 ≥ 4</font></strong></font></strong>：至少有一个进程能获得全部所需资源并完成执行，释放资源供其他进程使用 → 避免死锁因此，系统至少需要<strong><font color=''#2656b3''>4 个资源单位</font></strong>才能保证不死锁。选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5571');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5572, '408考研练习题——操作系统——死锁第32题', '简单', '408考研练习题——操作系统——死锁', '进程$P_{1}$和$P_{2}$使用两个共享资源$R_{1}$和$R_{2}$。每个进程对每个资源的访问具有特定优先级。设$T_{ij}$表示进程$P_{i}$访问资源$R_{j}$的优先级。若$T_{ik}$>$T_{jk}$，则进程$P_{i}$可以从进程$P_{j}$处抢占资源$R_{h}$。
已知以下条件：
以下哪项条件能确保 P1 和 P2 永远不会发生死锁？（ ）
', '[''(I) 和 (IV)'', ''(II) 和 (III)'', ''(I) 和 (II)'', ''以上都不是'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>关键分析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>死锁预防核心</font></strong></font></strong>：若所有资源始终分配给单个进程，则系统处于安全状态，无法形成循环等待。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>条件解析</font></strong></font></strong>：

- 当满足 (I) 和 (II) 时，R1 和 R2 同时分配给 P1
- 当满足 (III) 和 (IV) 时，R1 和 R2 同时分配给 P2
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>执行流程</font></strong></font></strong>：

- 被分配资源的进程完成执行 → 释放全部资源 → 另一进程获得资源并继续执行
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：

- 条件组合 (I)+(II) 或 (III)+(IV) 均可打破死锁必要条件（循环等待）
- 因此选项 C 正确', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5572');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5573, '408考研练习题——操作系统——死锁第33题', '简单', '408考研练习题——操作系统——死锁', '信号量用于解决以下哪些问题？（ ）
I. 竞态条件
II. 进程同步
III. 互斥
IV. 以上都不是
', '[''I 和 II'', ''II 和 III'', ''以上全部'', ''以上都不是'']', "['B']", 'B</font></strong>
信号量（Semaphore）是操作系统中用于协调多个进程访问共享资源的机制。其核心作用包括：- 进程同步（II）通过P/V操作（或称wait/signal），信号量可以控制进程执行顺序，确保某些操作按预期时序完成。
- 互斥（III）当信号量初始值为 1 时，可作为互斥锁（Mutex）使用，保证同一时刻只有一个进程进入临界区。
- 竞态条件（I）的间接解决虽然信号量本身不直接解决竞态条件（Race Condition），但通过实现互斥和同步，能有效避免因资源竞争导致的竞态问题。因此选项 I 的表述存在误导性。综上，正确答案为<strong><font color=''#2656b3''>B（II 和 III）</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5573');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5574, '408考研练习题——操作系统——死锁第34题', '简单', '408考研练习题——操作系统——死锁', '一个操作系统有 13 个磁带驱动器。现有三个进程 P1、P2 和 P3。P1 的最大需求为 11 个磁带驱动器，P2 为 5 个，P3 为 8 个。当前 P1 已分配 6 个，P2 已分配 3 个，P3 已分配 2 个。以下哪个执行序列代表安全状态（ ）？
', '[''P2 → P1 → P3'', ''P2 → P3 → P1'', ''P1 → P2 → P3'', ''P1 → P3 → P2'']', "['A']", 'A</font></strong>
- 进程资源分配

- P1: 最大需求 11 / 当前分配 6
- P2: 最大需求 5 / 当前分配 3
- P3: 最大需求 8 / 当前分配 2
- 系统总资源：13 个磁带驱动器（已分配 11 个，剩余 2 个）
- 资源需求分析

- P1 需求：11 - 6 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>5 个</font></strong></font></strong>
- P2 需求：5 - 3 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 个</font></strong></font></strong>
- P3 需求：8 - 2 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>6 个</font></strong></font></strong>
- 安全序列验证
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>初始可用资源</font></strong></font></strong>：2 个

- 可满足 P2 的需求（2 ≤ 2），执行 P2 后释放 3 个 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>可用资源变为 5 个</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>可用资源 5 个</font></strong></font></strong>

- 满足 P1 的需求（5 ≤ 5），执行 P1 后释放 6 个 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>可用资源变为 11 个</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>可用资源 11 个</font></strong></font></strong>

- 满足 P3 的需求（6 ≤ 11），执行 P3 后释放 2 个 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>全部资源回收</font></strong></font></strong>
- 结论存在可行的安全序列P2 → P1 → P3，因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5574');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5575, '408考研练习题——操作系统——死锁第35题', '简单', '408考研练习题——操作系统——死锁', '进程 P1 和 P2 存在生产者 - 消费者关系，通过一组共享缓冲区进行通信。

```c
repeat
    获取一个空缓冲区
    填充数据
    返回一个满缓冲区
forever
```
P1 操作流程

```c
repeat
    获取一个满缓冲区
    清空数据
    返回一个空缓冲区
forever
```
P2 操作流程
增加缓冲区数量可能会导致以下哪些结果？（ ）
I. 提高请求满足率（吞吐量）
II. 降低死锁发生的可能性
III. 提升实现正确性的便利性
', '[''仅 III'', ''仅 II'', ''仅 I'', ''仅 II 和 III'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- I. 提高请求满足率（吞吐量）增加缓冲区数量可以提升系统同时处理的数据量，因此会提高吞吐量。
- II. 降低死锁发生的可能性缓冲区数量与死锁概率无直接关联。
- III. 提升实现正确性的便利性更多缓冲区可能使同步逻辑更复杂。<strong><font color=''#2656b3''>结论</font></strong>：因此正确答案是<strong><font color=''#2656b3''>仅 I</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5575');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5576, '408考研练习题——操作系统——死锁第36题', '简单', '408考研练习题——操作系统——死锁', '考虑一个拥有 m 个相同类型资源的系统。这些资源由三个进程 P1、P2 和 P3 共享，它们的峰值需求分别为 2、5 和 7 个资源。若要使得系统不发生死锁，m 的最小值是多少？（ ）
', '[''11'', ''12'', ''13'', ''14'']', "['B']", 'B</font></strong>
一个系统中，为了保证<strong><font color=''#2656b3''>不发生死锁</font></strong>，需要满足<strong><font color=''#2656b3''>最小资源数目定理</font></strong>：
$$
m ≥ ( \\sum_{i=1}^{n} (最大需求_{i} - 1)) + 1
$$
其中：- n为进程数，
- 每个进程最大需求为Maxi​。这个公式的直观含义：如果所有进程都至少先占有$Max_{i} - 1$个资源，那么还必须保证<strong><font color=''#2656b3''>至少有 1 个资源剩余</font></strong>，这样总能保证某个进程能最终拿到它的最大需求并运行结束，从而避免死锁。代入所有数值计算得到$m >= (2 - 1 + 5 - 1 + 7 - 1) + 1 = 1 + 4 + 6 + 1 = 12$，所以最小值为$12$，答案选择 B。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5576');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5577, '408考研练习题——操作系统——死锁第37题', '简单', '408考研练习题——操作系统——死锁', '假设系统中有 4 个进程正在运行，共有 12 个资源 R 的实例。
每个进程的最大需求和当前分配如下：根据当前分配情况，系统是否处于安全状态？如果是，安全序列是什么？
', '[''否'', ''是，P1→P2→P3→P4'', ''是，P4→P3→P1→P2'', ''是，P2→P1→P3→P4'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>当前分配</font></strong></font></strong>：P1=3，P2=4，P3=2，P4=1 → 总计 10 个资源
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>剩余资源</font></strong></font></strong>：12 - 10 = 2 个
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最大需求</font></strong></font></strong>：

- P1: 5
- P2: 5
- P3: 3
- P4: 2<strong><font color=''#2656b3''>执行流程分析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P4 执行</font></strong></font></strong>：释放 3 个资源（当前分配 1，需释放 1）→ 剩余 2 + 1 = 3
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P3 执行</font></strong></font></strong>：消耗 3 个资源 → 剩余 3 - 3 = 0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P1/P2 执行</font></strong></font></strong>：此时剩余 0 + 2（P3 释放）= 2 个资源，仍不足满足 P1/P2 需求

- 需等待 P3 完成后再释放 2 个资源（P3 当前分配 2）→ 剩余 2 + 2 = 4
- 此时仍不足 5 个资源，需继续等待
- 实际应为 P4 执行后释放 1 个资源（当前分配 1），剩余 2 + 1 = 3
- P3 执行后释放 2 个资源（当前分配 2），剩余 3 + 2 = 5
- 此时 P1 和 P2 各需 5 个资源，可任选其一先执行
- 优先选择 P1 → 顺序为 P4 → P3 → P1 → P2<strong><font color=''#2656b3''>结论</font></strong>：存在可行的安全序列<strong><font color=''#2656b3''>P4→P3→P1→P2</font></strong>，对应选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5577');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5578, '408考研练习题——操作系统——死锁第38题', '简单', '408考研练习题——操作系统——死锁', '考虑一个包含`n`个进程和`m`种资源类型的系统。检查系统是否处于安全状态的安全算法的时间复杂度为（ ）：
', '[''$O(mn)$'', ''$O(m^{2}n^{2})$'', ''$O(m^{2}n)$'', ''$O(mn^{2})$'']', "['D']", 'D</font></strong>
该算法需要进行三重嵌套循环：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>外层循环</font></strong></font></strong>：遍历所有资源类型（m 次）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中层循环</font></strong></font></strong>：遍历所有进程（n 次）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>内层循环</font></strong></font></strong>：每次分配检查时可能再次遍历所有进程（n 次）因此总时间复杂度为$O(m × n × n) = O(mn^{2})$。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5578');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5579, '408考研练习题——操作系统——死锁第39题', '简单', '408考研练习题——操作系统——死锁', '一个系统有四个进程和五个可分配资源。当前的分配、最大需求和可用资源如下：
请计算使上述系统处于安全状态的最小 x 值是（  ）。
', '[''1'', ''3'', ''2'', ''对于任何 x 值系统都不安全。'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>分析过程：</font></strong><strong><font color=''#2656b3''>当 x=1 时</font></strong>- 进程 D 将执行并释放<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 1 2 2 1</font></strong></font></strong>个实例
- 此时其他进程均无法执行（A 需求 [0,1,0,0,2] 无法满足）<strong><font color=''#2656b3''>当 x=2 时</font></strong>- 进程 D 执行并释放<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 1 3 2 1</font></strong></font></strong>个实例
- 随后进程 C 执行并释放<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 2 3 3 1</font></strong></font></strong>个实例
- 通过这些空闲实例：

- 进程 B 可以执行
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>进程 A 无法执行</font></strong></font></strong>（其需求 5 个资源中的 2 个实例永远无法满足）因此系统仍不处于安全状态。<strong><font color=''#2656b3''>结论</font></strong>无论 x 取何值，系统都无法找到一条安全序列满足所有进程需求，故<strong><font color=''#2656b3''>选项 (D) 正确</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:45', 9, NULL, '2026-02-02 11:52:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1347', '5579');
