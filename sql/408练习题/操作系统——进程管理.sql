INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5472, '408考研练习题——操作系统——进程管理第1题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下代码片段：

```c
if (fork() == 0) {
    a=a+5;
    printf("%d,%d\\n",a,&a);
} else {
    a=a–5;
    printf("%d, %d\\n",a,&a);
}
```
设父进程打印的值为$u$、$v$，子进程打印的值为$x$、$y$。以下哪一项是正确的？
', '[''u = x + 10 且 v = y'', ''u = x + 10 且 v != y'', ''u + 10 = x 且 v = y'', ''u + 10 = x 且 v != y'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- fork()行为：

- 子进程返回值为 0
- 父进程返回子进程的进程 ID
- 变量操作：

- 子进程执行`a = a + 5`→ 结果为`x`
- 父进程执行`a = a - 5`→ 结果为`u`
- 数学关系推导：`x = u + 10`
- 地址分析：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>物理地址</font></strong></font></strong>：父子进程不同（因`fork()`复制）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>虚拟地址</font></strong></font></strong>：通过`fork()`复制机制，子进程继承父进程的虚拟地址空间
- 打印结果验证：`v = y`（地址相同）
- 关键结论：

- 数值关系：`u + 10 = x`
- 地址关系：`v = y`
- 正确选项为 C', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5472');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5473, '408考研练习题——操作系统——进程管理第2题', '简单', '408考研练习题——操作系统——进程管理', '原子操作 fetch-and-set x, y 无条件地将内存位置 x 设置为 1，并在不允许任何其他访问内存位置 x 的情况下获取 x 的旧值并存储进入 y。考虑以下对二进制信号量的 P 和 V 函数的实现：

```c
void P (binary_semaphore *s) {
  unsigned y;
  unsigned *x = &(s->value);
  do {
     fetch-and-set x, y;
  } while (y);
}

void V (binary_semaphore *s) {
  S->value = 0;
}
```
以下哪一项是正确的？（ ）
', '[''如果在 P 中禁用上下文切换，该实现可能无法正常工作'', ''可以使用普通加载/存储指令代替 fetch-and-set 操作'', ''V 的实现是错误的'', ''代码未实现二进制信号量'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- P() 函数的工作原理

- 使用`fetch-and-set`操作将内存位置`x`（即`s->value`）设置为 1，并读取其旧值到`y`。
- 如果`y`不为 0，则进入`while`循环，持续尝试获取锁。
- 死锁风险分析

- 若未启用上下文切换（即无法调度其他进程），则当前进程会陷入无限循环，无法退出`P()`。
- 此时，由于没有其他进程能执行`V()`将`s->value`置为 0，循环条件始终成立，导致死锁。', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5473');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5474, '408考研练习题——操作系统——进程管理第3题', '简单', '408考研练习题——操作系统——进程管理', '一个共享变量 x 的初始值为 0，由四个并发进程 W、X、Y 和 Z 进行如下操作：进程 W 和 X 会从内存中读取 x，将其加 1 后写回内存，然后终止；进程 Y 和 Z 则从内存中读取 x，将其减 2 后写回内存，然后终止。每个进程在读取 x 之前会执行计数信号量 S 的 P 操作（即等待），在将 x 写入内存后执行 V 操作（即信号）。信号量 S 的初始值为 2。所有进程执行完毕后，x 的最大可能值是多少？
', '[''-2'', ''-1'', ''1'', ''2'']', "['D']", 'D</font></strong>
进程可以以多种方式运行，以下是一种使 x 达到最大值的情况：信号量 S 初始值为 2- 进程 W 执行

- S = 1
- x = 1（但未立即写回内存）
- 进程 Y 执行

- S = 0
- x = -2（执行减 2 操作）
- S = 1（释放信号量）
- 进程 Z 执行

- S = 0
- x = -4（再次减 2）
- S = 1（释放信号量）
- 进程 W 完成写回

- x = 1（最终写回内存）
- S = 2（释放信号量）
- 进程 X 执行

- S = 1
- x = 2（加 1 操作完成）
- S = 2（释放信号量）', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5474');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5475, '408考研练习题——操作系统——进程管理第4题', '简单', '408考研练习题——操作系统——进程管理', '某个计算生成两个数组`a`和`b`，满足以下条件：
对于`0 ≤ i < n`，有`a[i] = f(i)`，且`b[i] = g(a[i])`。
假设该计算被分解为两个并发进程`X`和`Y`，其中`X`计算数组`a`，`Y`计算数组`b`。
两个进程使用两个二进制信号量`R`和`S`（初始值均为`0`）。数组`a`由两个进程共享。进程结构如下所示：

```c
private i;
for (i=0; i < n; i++) {
   a[i] = f(i);
   ExitX(R, S);
}
```
进程X

```c
private i;
for (i=0; i < n; i++) {
   EntryY(R, S);
   b[i] = g(a[i]);
}
```
进程Y
以下哪一项代表 ExitX 和 EntryY 的正确实现？（ ）

```c
ExitX(R, S) {
  P(R);
  V(S);
}

EntryY(R, S) {
  P(S);
  V(R);
}
```
A

```c
ExitX(R, S) {
  V(R);
  V(S);
}

EntryY(R, S) {
  P(R);
  P(S);
}
```
B

```c
ExitX(R, S) {
  P(S);
  V(R);
}

EntryY(R, S) {
  V(S);
  P(R);
}
```
C

```c
ExitX(R, S) {
  V(R);
  P(S);
}

EntryY(R, S) {
  V(S);
  P(R);
}
```
D
', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>由于`b[i] = g(a[i])`，所以对于每一个数据，进程 B 必须在 A 计算完`a[i]`之后再计算`b[i]`。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>目标约束</font></strong></font></strong>：既不发生死锁，也不让二进制信号量的值超过 1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>各选项分析</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A</font></strong></font></strong>: 会导致死锁
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B</font></strong></font></strong>: 可能使信号量的值在 1 到 n 之间变化
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C</font></strong></font></strong>: 正确实现，通过互斥操作保证同步
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>D</font></strong></font></strong>: 在某些情况下可能导致信号量 R 和 S 的值达到 2', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5475');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5476, '408考研练习题——操作系统——进程管理第5题', '简单', '408考研练习题——操作系统——进程管理', '三个并发进程 X、Y 和 Z 分别执行不同的代码段，这些代码段访问并更新某些共享变量。在进入其代码段之前，进程 X 对信号量 a、b 和 c 执行 P 操作（即 wait）；进程 Y 对信号量 b、c 和 d 执行 P 操作；进程 Z 对信号量 c、d 和 a 执行 P 操作。每个进程在其代码段执行完成后，会对其三个信号量执行 V 操作（即 signal）。所有信号量均为二进制信号量，初始值为 1。以下哪一项代表了进程调用 P 操作的无死锁顺序？
', '[''X: P(a)P(b)P(c) Y: P(b)P(c)P(d) Z: P(c)P(d)P(a)'', ''X: P(b)P(a)P(c) Y: P(b)P(c)P(d) Z: P(a)P(c)P(d)'', ''X: P(b)P(a)P(c) Y: P(c)P(b)P(d) Z: P(a)P(c)P(d)'', ''X: P(a)P(b)P(c) Y: P(c)P(b)P(d) Z: P(c)P(d)P(a)'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 A</font></strong></font></strong>可能导致死锁。想象一种情况：进程 X 已获取 a，进程 Y 已获取 b，进程 Z 已获取 c 和 d。此时形成循环等待。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C</font></strong></font></strong>也可能导致死锁。想象一种情况：进程 X 已获取 b，进程 Y 已获取 c，进程 Z 已获取 a。此时形成循环等待。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 D</font></strong></font></strong>也可能导致死锁。想象一种情况：进程 X 已获取 a 和 b，进程 Y 已获取 c。X 和 Y 形成相互等待。', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5476');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5477, '408考研练习题——操作系统——进程管理第6题', '简单', '408考研练习题——操作系统——进程管理', '两个并发进程 P1 和 P2 使用四个共享资源 R1、R2、R3 和 R4，如下所示：

```c
Compute;
Use R1;
Use R2;
Use R3;
Use R4;
```
P1

```c
Compute;
Use R1;
Use R2;
Use R3;
Use R4;
```
P2
两个进程同时启动，每个资源一次只能被一个进程访问。进程间存在以下资源调度约束：
除此之外没有其他调度约束。若仅使用二进制信号量来强制执行上述调度约束，至少需要多少个二进制信号量？（ ）
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>需要使用两个信号量 A 和 B，其中 A 的初始值为 0，B 的初始值为 1。
```c
semaphore A = 0;
semaphore B = 1;

P1() {
    Compute;
    Wait(A);
    Use R1;
    Use R2;
    Signal(B);
    Wait(A);
    Use R3;
    Use R4;
    Signal(B);
}

P2() {
    Compute;
    Wait(B);
    Use r1;
    Signal(A); 
    Wait(B);
    Use R2;
    Use R3;
    Signal(A);
    Wait(B);
    Use R4;
    Signal(B);
}
```
在进程 P1 中，起初由于信号量 A = 0，控制流程会被卡在 Wait(A) 的 while 循环中。而在进程 P2 中，Wait(B) 会将信号量 B 的值减为 0。接下来，P2 使用资源 R1，并将信号量 A 的值加一，使得进程 P1 能够进入其临界区并使用资源 R1。因此，P2 会在 P1 获取资源 R1 之前，先完成对 R1 的使用。此时，在 P2 中，B 的值为 0，所以 P2 无法使用资源 R2，必须等待 P1 使用完 R2 并调用 Signal(B) 来将 B 的值加一。这样，P1 会在 P2 获取 R2 之前，先完成对 R2 的使用。随后，由于信号量 A 又变为 0，P1 无法继续执行，再次卡在 Wait(A) 的 while 循环中。此时，P2 使用资源 R3，并将信号量 A 的值加一，使得 P1 能够进入临界区使用 R3。因此，P2 会在 P1 获取 R3 之前，先完成对 R3 的使用。最后，P1 使用资源 R4，并将 B 的值加一，使得 P2 可以进入临界区使用 R4。由此可见，P1 会在 P2 获取 R4 之前，先完成对 R4 的使用。综上所述，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5477');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5478, '408考研练习题——操作系统——进程管理第7题', '简单', '408考研练习题——操作系统——进程管理', '一个进程执行以下代码：

```c
fork();
fork();
fork();
```
创建的子进程总数是（ ）？
', '[''3'', ''4'', ''7'', ''8'']', "['C']", 'C</font></strong>
让我们为这三行 fork() 添加标签：
```c
fork(); // 第 1 行  
fork(); // 第 2 行  
fork(); // 第 3 行

      L1      // 第 1 行将创建 1 个子进程  
    /    \\  
  L2     L2   // 第 2 行将创建 2 个子进程  
  / \\    / \\  
L3 L3   L3 L3 // 第 3 行将创建 4 个子进程
```
我们也可以通过直接公式计算子进程数量。<strong><font color=''#2656b3''>n 个 fork 语句时，子进程数总是 2ⁿ – 1</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5478');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5479, '408考研练习题——操作系统——进程管理第8题', '简单', '408考研练习题——操作系统——进程管理', '`Fetch_And_Add(X,i)`是一个原子指令，它会读取内存位置`X`的值，将其增加`i`，并返回`X`的旧值。该指令用于以下伪代码中实现忙等待锁。`L`是一个初始化为 0 的无符号整型共享变量。值 0 表示锁可用，非零值表示锁不可用。
假设我们使用该原子指令实现如下自旋锁：

```c
AcquireLock(L) {
    while (Fetch_And_Add(L,1))
        L = 1;
}
ReleaseLock(L) {
    L = 0;
}
```
则此实现方式（ ）：
', '[''因 L 可能溢出而失败'', ''当锁实际可用时，L 可能变为非零值导致失败'', ''正确工作但可能导致某些进程饥饿'', ''无饥饿地正确工作'']', "['B']", 'B</font></strong>
仔细观察下面的 while 循环：
```c
while (Fetch_And_Add(L,1))
    L = 1; // 等待进程可能在此处执行
           // 刚好在锁被释放后立即执行
           // 并将 L 设置为 1。
```
考虑一种情况：某个进程刚释放锁并使 L=0。此时若有另一个进程正在等待锁（即执行 AcquireLock() 函数），则在 L 被设为 0 后，等待进程可能立即执行`L=1`。此时锁是可用的，但 L=1。由于 L=1，等待进程（以及后续任何新到达的进程）都无法退出 while 循环。上述问题可通过修改 AcquireLock() 解决：
```c
AcquireLock(L){
    while (Fetch_And_Add(L,1)) {
        // Do Nothing
    }
}
```
溢出仅当比 ‘int’ 类型大小更多的进程执行 while 循环的检查条件但未执行`L=1`时才会发生（需要抢占）。但当 L=1 时，进程会在 while 循环中重复，不会发生溢出，因为每次对 L 的递增后，L 都会被重新设置为 1。选项 (b) 比选项 (a) 更优。', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5479');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5480, '408考研练习题——操作系统——进程管理第9题', '简单', '408考研练习题——操作系统——进程管理', '在用户模式和内核模式之间切换所需的时间为 t1，而切换两个进程所需的时间为 t2。以下哪项是正确的？（ ）
', '[''t1 > t2'', ''t1 = t2'', ''t1 < t2'', ''无法判断 t1 和 t2 之间的关系'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 进程切换机制：进程切换（或上下文切换）必须在内核模式下执行。其完整流程包含：
- 用户模式 → 内核模式切换
- 保存当前进程的 PCB（进程控制块）
- 加载目标进程的 PCB
- 内核模式 → 用户模式切换
- 时间对比分析：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t1（模式切换）</font></strong></font></strong>：仅需修改硬件状态标志位，耗时极短
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>t2（进程切换）</font></strong></font></strong>：除模式切换外，还需执行 PCB 的保存/恢复等复杂操作
- 因此必然满足<strong><font color=''#2656b3''><strong><font color=''#2656b3''>t1 < t2</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:29', 9, NULL, '2026-02-02 11:52:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5480');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5481, '408考研练习题——操作系统——进程管理第10题', '简单', '408考研练习题——操作系统——进程管理', '线程通常被定义为“轻量级进程”，因为操作系统（OS）为线程维护的数据结构比为进程维护的小。关于这一点，以下哪项是正确的？（ ）
', '[''每个线程基础上，操作系统仅维护 CPU 寄存器状态'', ''操作系统不为每个线程维护单独的栈'', ''每个线程基础上，操作系统不维护虚拟内存状态'', ''每个线程基础上，操作系统仅维护调度和记账信息'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>线程共享进程的地址空间</font></strong></font></strong>。虚拟内存与进程相关，而非线程。
- 线程是 CPU 利用的基本单位，包含程序计数器、栈和一组寄存器（以及线程 ID）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项分析</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 A</font></strong></font></strong>：操作系统不仅维护 CPU 寄存器，还维护栈、代码文件和数据文件。因此该选项错误。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 B</font></strong></font></strong>：每个线程都维护独立的栈，因此该选项错误。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C</font></strong></font></strong>：操作系统不会为单个线程维护任何虚拟内存状态，这是正确的。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 D</font></strong></font></strong>：操作系统还会维护其他信息（如 CPU 寄存器、栈、程序计数器等），因此该选项错误。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5481');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5482, '408考研练习题——操作系统——进程管理第11题', '简单', '408考研练习题——操作系统——进程管理', '考虑进程 P1 和 P2 访问临界区时使用的如下方法。共享布尔变量`S1`和`S2`的初始值是随机分配的：

```c
while (S1 == S2) ;
Critical Section
S1 = S2;
```
P1

```c
while (S1 != S2) ;
Critical Section
S2 = !S1;
```
P1
关于上述方案，以下哪项描述是正确的？（ ）
', '[''满足互斥性，但不满足进展性'', ''满足进展性，但不满足互斥性'', ''既不满足互斥性，也不满足进展性'', ''同时满足互斥性和进展性'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>互斥性（Mutual Exclusion）</font></strong>该方案确保：- P1 仅在`S1 != S2`时进入临界区，
- P2 仅在`S1 == S2`时进入临界区，
二者永不同时成立，因此保证互斥性。<strong><font color=''#2656b3''>进展性（Progress）</font></strong>如果只有一个进程希望进入临界区，且另一个进程不打算进入，那么该进程应该能够进入临界区。但在此方案中，两个变量的更新取决于彼此的退出行为。因此，即使 P1 不想进入临界区，它不更新`S1`也可能阻止 P2 进入。
故不满足进展性。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5482');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5483, '408考研练习题——操作系统——进程管理第12题', '简单', '408考研练习题——操作系统——进程管理', '以下程序包含 3 个并发进程和 3 个二进制信号量。信号量初始化为 S0 = 1，S1 = 0，S2 = 0。进程 P0 将打印 ‘0’ 多少次？（ ）

```c
while (true) {
    wait(S0);
    print ''0'';
    signal(S1);
    signal(S2);
}
```
Process P0

```c
wait(S1);
signal(S0);
```
Process P1

```c
wait(S2);
signal(S0);
```
Process P2
', '[''至少两次'', ''正好两次'', ''正好三次'', ''正好一次'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>P1 和 P2 都只有一条语句，会各执行一次就结束。每次 P0 运行后，它会分别 signal S1 和 S2，允许一次 P1 和一次 P22的执行，每次分别只增加一个 S0。所以每执行完一次 P0，P2 和 P3 都必须各执行一次才能再次唤醒 P0。但问题是 P2 和 P3 各只有一次机会，执行完之后就无法再次执行。所以 P1 一共会执行三次循环，然后就在`wait(S0)`的地方阻塞住，答案是正好三次，选择 C。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5483');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5484, '408考研练习题——操作系统——进程管理第13题', '简单', '408考研练习题——操作系统——进程管理', '使用测试并设置（test-and-set）指令实现进程临界区的`enter_CS()`和`leave_CS()`函数如下所示：

```c
void enter_CS(X) {
    while test-and-set(X);
}
void leave_CS(X) {
   X = 0;
}
```
在上述方案中，`X`是与临界区关联的内存位置，初始值为 0。现在考虑以下陈述：
I. 上述临界区问题的解决方案是无死锁的
II. 该方案是无饥饿的
III. 进程以先进先出（FIFO）顺序进入临界区
IV. 同一时间可能有多个进程进入临界区
以上陈述中哪些为真？（ ）
', '[''I'', ''I 和 II'', ''II 和 III'', ''IV'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>上述方案是一个简单的测试并设置解决方案，确保不会发生死锁，但未使用任何队列来避免饥饿或保证 FIFO 顺序。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 I 正确</font></strong></font></strong>：`test-and-set`指令通过原子操作确保至少有一个进程能进入临界区，因此方案本身是无死锁的。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 II 错误</font></strong></font></strong>：由于缺乏优先级或队列机制，某些进程可能长期无法进入临界区，导致饥饿。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 III 错误</font></strong></font></strong>：算法未维护请求顺序，无法保证 FIFO 顺序。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 IV 错误</font></strong></font></strong>：`test-and-set`的原子性确保每次只有一个进程能进入临界区。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5484');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5485, '408考研练习题——操作系统——进程管理第14题', '简单', '408考研练习题——操作系统——进程管理', '一个进程执行以下代码：

```c
for (i = 0; i < n; i++)
    fork();
```
创建的子进程总数是（ ）
', '[''n'', ''2ⁿ-1'', ''2n'', ''2⁽ⁿ⁺¹⁾-1'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
```c
    F0       // 第一次 fork 会创建 1 个子进程
   / \\
  F1 F1      // 第二次 fork 会创建 2 个子进程
 / \\ / \\
F2 F2 F2 F2  // 第三次 fork 会创建 4 个子进程
...
```
- 对上述树结构中 i=0 到 n-1 的所有层级求和，得到的结果是 2ⁿ-1。因此，子进程的数量为 2ⁿ–1。
- 创建的总进程数为（子进程数）+1。
- 注意：最大进程数为 2ⁿ，可能因 fork 失败而有所变化。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5485');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5486, '408考研练习题——操作系统——进程管理第15题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下关于用户级线程和内核级线程的陈述。以下哪一项是<strong><font color=''#2656b3''>错误</font></strong>的？（ ）
', '[''内核级线程的上下文切换时间比用户级线程长。'', ''用户级线程不需要任何硬件支持。'', ''相关的内核级线程可以在多处理器系统的不同处理器上调度。'', ''阻塞一个内核级线程会阻塞所有相关线程。'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>内核级线程由操作系统管理，因此线程操作在内核代码中实现。内核级线程可以通过将线程分配到不同处理器上利用多处理器系统。如果一个线程阻塞，不会导致整个进程阻塞。内核级线程也有一些缺点：由于管理开销，它们比用户级线程更慢；内核级上下文切换涉及更多步骤，而不仅仅是保存一些寄存器；此外，它们不可移植，因为实现依赖于操作系统。- 选项 (A): 内核级线程的上下文切换时间比用户级线程长。正确。因为用户级线程由用户管理，内核级线程由操作系统管理。内核级线程管理涉及许多开销，而用户级线程管理没有这些开销。因此内核级线程的上下文切换时间更长。
- 选项 (B): 用户级线程不需要任何硬件支持。正确。因为用户级线程由用户管理和库实现，不需要硬件支持。
- 选项 (C): 相关的内核级线程可以在多处理器系统的不同处理器上调度。正确。
- 选项 (D): 阻塞一个内核级线程会阻塞所有相关线程。错误。因为内核级线程由操作系统管理，如果一个线程阻塞，不会导致所有线程或整个进程阻塞。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5486');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5487, '408考研练习题——操作系统——进程管理第16题', '简单', '408考研练习题——操作系统——进程管理', '两个进程 P1 和 P2 需要访问一段代码的临界区。考虑以下同步构造：其中`wants1`和`wants2`是初始化为`false`的共享变量。关于上述结构，以下哪个陈述是正确的？

```c
while (true) {
  wants1 = true;
  while (wants2 == true);
  /* Critical Section */
  wants1 = false;
}
/* Remainder section */
```
P1

```c
while (true) {
  wants2 = true;
  while (wants1 == true);
  /* Critical Section */
  wants2 = false;
}
/* Remainder section */
```
P2
', '[''它不能确保互斥'', ''它不能确保有限等待'', ''它要求进程以严格交替的方式进入临界区'', ''它不能防止死锁，但能确保互斥'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>有限等待定义</font></strong>：在某个进程请求进入其临界区后到该请求被满足之前，其他进程进入其临界区的次数存在一个上限。<strong><font color=''#2656b3''>互斥机制分析</font></strong>：- 互斥用于防止对共享资源的同时访问。通过临界区实现，即进程或线程访问共享资源的代码段。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解决方案</font></strong></font></strong>：两个进程 P1 和 P2 需要访问代码的临界区。此处`wants1`和`wants2`是初始化为`false`的共享变量。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥验证</font></strong></font></strong>：当`wants1`和`wants2`同时为`true`时，两个进程都会进入`while`循环并相互等待对方完成，这会导致无限循环从而引发死锁。假设 P1 在临界区（意味着`wants1=true`，`wants2`可以是`true`或`false`），此时 P2 无法进入临界区，反之亦然，这满足了互斥属性。<strong><font color=''#2656b3''>有限等待验证</font></strong>：- 由于每次请求后进入临界区的进程数量有上限，因此也满足有限等待条件。<strong><font color=''#2656b3''>结论</font></strong>：- 此算法<strong><font color=''#2656b3''><strong><font color=''#2656b3''>不能防止死锁</font></strong></font></strong>（当两个进程同时设置`wants`标志为`true`时会发生死锁）
- 但<strong><font color=''#2656b3''><strong><font color=''#2656b3''>能确保互斥</font></strong></font></strong>（同一时间只有一个进程能进入临界区）', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5487');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5488, '408考研练习题——操作系统——进程管理第17题', '简单', '408考研练习题——操作系统——进程管理', '以下哪一项是错误的？（ ）
', '[''用户级线程不由内核调度。'', ''当一个用户级线程被阻塞时，其进程的其他所有线程都会被阻塞。'', ''用户级线程之间的上下文切换比内核级线程之间的上下文切换更快。'', ''内核级线程不能共享代码段'']', "['D']", 'D</font></strong>
用户级线程由用户进程实现，内核级线程由操作系统实现。操作系统不识别用户级线程，但能识别内核级线程。- 用户线程：

- 实现简单，上下文切换时间短，无需硬件支持
- 若一个用户级线程执行阻塞操作，则整个进程会被阻塞
- 示例：Java 线程、POSIX 线程
- 内核线程：

- 实现复杂，上下文切换时间较长，需要硬件支持
- 若一个内核级线程执行阻塞操作，其他线程仍可继续执行
- 示例：Windows、Solaris 系统', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5488');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5489, '408考研练习题——操作系统——进程管理第18题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下使用信号量的生产者-消费者问题的过程：以下哪一项是正确的？（ ）

```c
semaphore n = 0;
semaphore s = 1;

void producer() {
    while (true) {
        produce();
        semWait(s);
        addToBuffer();
        semSignal(s);
        semSignal(n);
    }
}

void consumer() {
    while (true) {
        semWait(s);
        semWait(n);
        removeFromBuffer();
        semSignal(s);
        consume();
    }
}
```
', '[''生产者能够将项目添加到缓冲区，但消费者永远无法消费它。'', ''消费者从缓冲区中移除的项目不会超过一个。'', ''如果消费者在缓冲区为空时成功获取信号量 s，则会发生死锁。'', ''为了无死锁操作，信号量 n 的初始值必须为 1 而非 0。'']', "['C']", 'C</font></strong>
最初，缓冲区中没有元素。
信号量 s=1 且信号量 n=0。
我们假设当缓冲区为空时，控制权首先交给消费者。semWait(s) 会减少信号量’s’的值。
现在，s=0 且 semWait(n) 会减少信号量’n’的值。
由于信号量’n’的值变为小于 0，控制权会卡在函数 semWait() 的 while 循环中，从而导致死锁。
因此，如果消费者在缓冲区为空时成功获取信号量 s，则会发生死锁。', 9, 'Mogullzr', '2026-02-02 11:52:30', 9, NULL, '2026-02-02 11:52:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5489');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5490, '408考研练习题——操作系统——进程管理第19题', '简单', '408考研练习题——操作系统——进程管理', '考虑两个进程 P1 和 P2 访问受二进制信号量 SX 和 SY 保护的共享变量 X 和 Y，SX 和 SY 均初始化为 1。P 和 V 表示通常的信号量操作符，其中 P 减少信号量值，V 增加信号量值。P1 和 P2 的伪代码如下：

```c
P1 : While true do {
   L1 : ................
   L2 : ................
   X = X + 1;
   Y = Y - 1;
   V(SX);
   V(SY);
 }

P2 : While true do {
   L3 : ................
   L4 : ................
   Y = Y + 1;
   X = Y - 1;
   V(SY);
   V(SX);
}
```
为了避免死锁，L1、L2、L3 和 L4 处的正确操作符分别是（ ）？
', '[''P(SY), P(SX); P(SX), P(SY)'', ''P(SX), P(SY); P(SY), P(SX)'', ''P(SX), P(SX); P(SY), P(SY)'', ''P(SX), P(SY); P(SX), P(SY)'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 选项 A：

- 在 L1（`P(SY)`）处，即进程 P1 请求 SY 锁，而该锁由进程 P2 持有；
- 在 L3（`P(SX)`）处，P2 请求 SX 锁，而该锁由 P1 持有。
- 此处存在循环等待条件，意味着死锁。
- 选项 B：

- 在 L1（`P(SX)`）处，即进程 P1 请求 SX 锁，而该锁由进程 P2 持有；
- 在 L3（`P(SY)`）处，P2 请求 SY 锁，而该锁由 P1 持有。
- 同样存在循环等待条件，导致死锁。
- 选项 C：

- 在 L1（`P(SX)`）处，即进程 P1 请求 SX 锁；
- 在 L3（`P(SY)`）处，P2 请求 SY 锁。
- 但 SX 和 SY 无法被其所属进程 P1 和 P2 释放。
- （注：此描述存在矛盾，实际应通过统一顺序获取资源以避免死锁）
- 选项 D：

- 所有进程均按相同顺序请求资源（先`P(SX)`再`P(SY)`），
- 避免了循环等待条件，从而防止死锁发生。
- 符合银行家算法中“有序资源分配法”的原则。', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5490');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5491, '408考研练习题——操作系统——进程管理第20题', '简单', '408考研练习题——操作系统——进程管理', '假设我们想使用二进制信号量 S 和 T 同步两个并发进程 P 和 Q。进程 P 和 Q 的代码如下所示：

```c
while (1) {
W:
   print ''0'';
   print ''0'';
X:
}
```
进程 P

```c
while (1) {
Y:
   print ''1'';
   print ''1'';
Z:
}
```
进程 Q
同步语句只能插入在 W、X、Y 和 Z 这四个位置。以下哪一项操作序列<strong><font color=''#2656b3''>始终</font></strong>会导致输出以`''001100110011...''`开头？
', '[''在 W 处执行 P(S)，在 X 处执行 V(S)，在 Y 处执行 P(T)，在 Z 处执行 V(T)，S 和 T 初始值为 1'', ''在 W 处执行 P(S)，在 X 处执行 V(T)，在 Y 处执行 P(T)，在 Z 处执行 V(S)，S 初始值为 1，T 初始值为 0'', ''在 W 处执行 P(S)，在 X 处执行 V(T)，在 Y 处执行 P(T)，在 Z 处执行 V(S)，S 和 T 初始值为 1'', ''在 W 处执行 P(S)，在 X 处执行 V(S)，在 Y 处执行 P(T)，在 Z 处执行 V(T)，S 初始值为 1，T 初始值为 0'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>初始化状态</font></strong></font></strong>：S = 1，T = 0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>执行流程</font></strong></font></strong>：
- *进程 P 首先获得执行权* ：

- 执行`P(S)`操作，S 减至 0
- 打印`''00''`
- 执行`V(T)`操作，T 增至 1
- *进程 Q 获得执行权* ：

- 执行`P(T)`操作，T 减至 0
- 打印`''11''`
- 执行`V(S)`操作，S 恢复为 1
- *循环往复* ：

- S 和 T 的值在每次循环中交替控制进程 P 和 Q 的执行权限
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最终输出序列</font></strong></font></strong>：`00 11 00 11 ...`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 B 的信号量配置与操作顺序满足题目要求', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5491');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5492, '408考研练习题——操作系统——进程管理第21题', '简单', '408考研练习题——操作系统——进程管理', '以下哪项本身不会主动中断正在运行的进程？（ ）
', '[''设备'', ''定时器'', ''调度程序（Scheduler）'', ''电源故障'']', "['C']", 'C</font></strong>
调度程序不会主动中断进程。它是在中断（如定时器中断、I/O 中断或系统调用）发生后，由操作系统内核调用，用于决定是否切换当前进程。调度程序负责实现进程调度策略，但不是中断的来源。', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5492');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5493, '408考研练习题——操作系统——进程管理第22题', '简单', '408考研练习题——操作系统——进程管理', '在进程上下文切换时，以下哪项内容<strong><font color=''#2656b3''>不一定需要</font></strong>被保存？（ ）
', '[''通用寄存器'', ''TLB'', ''程序计数器'', ''以上全部'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
在进程上下文切换时，操作系统需要保存当前进程的状态以便后续恢复。通常包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>通用寄存器（A）</font></strong></font></strong>：必须保存，因为它们存储了进程执行时的临时数据。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>程序计数器（C）</font></strong></font></strong>：必须保存，用于记录下一条要执行的指令地址。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TLB（B）</font></strong></font></strong>：其内容在进程切换时可能被刷新，但并非必须显式保存，因为页表基址寄存器会改变，导致 TLB 失效，系统会自动清空或无效化 TLB，无需手动保存。因此，<strong><font color=''#2656b3''>B 项不一定需要被保存</font></strong>，正确答案为<strong><font color=''#2656b3''>B</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5493');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5494, '408考研练习题——操作系统——进程管理第23题', '简单', '408考研练习题——操作系统——进程管理', '以下两个共享变量 B（初始值为 2）的函数 P1 和 P2 并发执行。

```c
P1() {
    C = B – 1;
    B = 2 * C;  
}

P2() {
    D = 2 * B;
    B = D - 1;
}
```
执行后，B 可能取的不同值的数量是（ ）：
', '[''3'', ''2'', ''5'', ''4'']', "['A']", 'A</font></strong>
并发进程可能有以下几种执行方式：- 执行方式一C = B – 1; // C = 1B = 2 * C; // B = 2D = 2 * B; // D = 4B = D - 1; // B = 3
- 执行方式二C = B – 1; // C = 1D = 2 * B; // D = 4B = D - 1; // B = 3B = 2 * C; // B = 2
- 执行方式三C = B – 1; // C = 1D = 2 * B; // D = 4B = 2 * C; // B = 2B = D - 1; // B = 3
- 执行方式四D = 2 * B; // D = 4C = B – 1; // C = 1B = 2 * C; // B = 2B = D - 1; // B = 3
- 执行方式五D = 2 * B; // D = 4B = D - 1; // B = 3C = B – 1; // C = 2B = 2 * C; // B = 4通过上述所有可能的执行路径分析，最终 B 的不同取值包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>2</font></strong></font></strong>（由执行方式一、二、三、四产生）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>3</font></strong></font></strong>（由执行方式一、二、三、四产生）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>4</font></strong></font></strong>（由执行方式五产生）因此，B 的不同可能值共有<strong><font color=''#2656b3''>3 个</font></strong>：`2`、`3`和`4`。', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5494');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5495, '408考研练习题——操作系统——进程管理第24题', '简单', '408考研练习题——操作系统——进程管理', '进程 X 和 Y 需要访问一个临界区。考虑以下由两个进程使用的同步构造。其中，varP 和 varQ 是共享变量，且初始值均为 false。以下哪一项陈述是正确的？（ ）

```c
/* other code for process X */
while (true) {
    varP = true;
    while (varQ == true) {
        /* Critical Seciton */
        varP = false;
    }
}
/* other code for process X */
```
Process X

```c
/* other code for process Y */
while (true) {
    varQ = true;
    while (varP == true) {
        /* Critical Seciton */
        varQ = false;
    }
}
/* other code for process Y */
```
Process Y
', '[''该方案防止死锁但无法保证互斥'', ''该方案保证互斥但无法防止死锁'', ''该方案既保证互斥又防止死锁'', ''该方案既无法防止死锁也无法保证互斥'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 互斥失效分析当两个进程同时尝试进入临界区时，由于两个共享变量varP和varQ都为true，因此两者会被同时允许进入临界区。这直接违反了互斥原则（Mutual Exclusion），即同一时刻只能有一个进程在临界区内执行。
- 死锁预防机制死锁的四个必要条件包括：互斥、持有并等待、不可抢占和循环等待。由于本方案未能满足互斥这一前提条件，因此死锁根本无法形成。换句话说，只要互斥未被满足，死锁就不可能发生。综上，该方案虽然避免了死锁风险，但未能实现基本的互斥保护，故正确答案为 A。', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5495');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5496, '408考研练习题——操作系统——进程管理第25题', '简单', '408考研练习题——操作系统——进程管理', '在某操作系统中，尝试使用以下策略进行死锁预防：为每个进程分配一个唯一的时间戳。如果一个进程被终止，则其在重新启动时仍保留原始时间戳。设 Ph 是当前持有资源 R 的进程，Pr 是请求该资源的进程，T(Ph) 和 T(Pr) 分别表示它们的时间戳。系统根据以下规则进行调度决策：

```c
if (T(Pr) < T(Ph))
    then kill Pr
else wait
```
关于该策略的以下哪项说法是正确的？
', '[''该策略可以避免死锁，但可能导致进程饥饿'', ''该策略不能避免死锁，但可以避免进程饥饿'', ''该策略既不能避免死锁，也不能避免进程饥饿'', ''该策略既能避免死锁，也能避免进程饥饿'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 死锁预防机制

- 请求进程的时间戳始终小于持有进程的时间戳
- 被终止的进程以相同时间戳重启，其时间戳不会超过当前最大值
- 新到达的较小时间戳进程会被直接终止，打破循环等待条件
- 饥饿可能性

- 较小时间戳的进程可能因持续被终止而无法获取资源
- 即使重启后仍保持原时间戳，可能导致无限等待综上，该方案通过时间戳策略实现死锁预防，但存在进程长期无法执行的风险。答案选 A', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5496');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5497, '408考研练习题——操作系统——进程管理第26题', '简单', '408考研练习题——操作系统——进程管理', '信号量变量 full、empty 和 mutex 分别初始化为 0、n 和 1。进程 P1 反复每次向大小为 n 的缓冲区添加一个项目，进程 P2 反复每次从同一缓冲区移除一个项目，使用如下程序实现。在程序中，K、L、M 和 N 是未指定的语句。

```c
P1 {
    while (1) {
        K;
        P(mutex);
        Add an item to the buffer;
        V(mutex);
        L;
    }
}

P2 {
    while (1) {
        M;
        P(mutex);
        Remove an item from the buffer;
        V(mutex);
        N;
    }
}
```
语句 K、L、M 和 N 分别是：（ ）
', '[''P(full), V(empty), P(full), V(empty)'', ''P(full), V(empty), P(empty), V(full)'', ''P(empty), V(full), P(empty), V(full)'', ''P(empty), V(full), P(full), V(empty)'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 进程 P1 是生产者，进程 P2 是消费者。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>信号量 full</font></strong></font></strong>初始化为 0，表示缓冲区中没有项目。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>信号量 empty</font></strong></font></strong>初始化为 n，表示缓冲区有 n 个空间。在<strong><font color=''#2656b3''>进程 P1</font></strong>中：- 对`empty`执行等待操作（P(empty)），表示如果缓冲区无空间则 P1 无法继续生产；
- 对`full`执行信号操作（V(full)），表示已向缓冲区添加一个项目。在<strong><font color=''#2656b3''>进程 P2</font></strong>中：- 对`full`执行等待操作（P(full)），表示如果缓冲区为空则消费者无法消费；
- 对`empty`执行信号操作（V(empty)），表示消费后缓冲区增加一个空间。因此选项<strong><font color=''#2656b3''>(D)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:52:31', 9, NULL, '2026-02-02 11:52:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5497');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5498, '408考研练习题——操作系统——进程管理第27题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下两个进程的同步解决方案。
<strong><font color=''#2656b3''>进程 0</font></strong>
进入：循环 while (turn == 1);
（临界区）
退出：turn = 1;
<strong><font color=''#2656b3''>进程 1</font></strong>
进入：循环 while (turn == 0);
（临界区）
退出：turn = 0;
共享变量`turn`初始化为零。以下哪一项是正确的？（ ）
', '[''这是一个正确的双进程同步解决方案。'', ''该方案违反了互斥要求。'', ''该方案违反了进展要求。'', ''该方案违反了有限等待要求。'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>互斥要求</font></strong>：防止对共享资源的同时访问。由于信号量`turn`初始化为零，且此信号量值仅在给定进程的临界区之后改变。因此，这确保了每次最多只有一个进程在临界区中，即互斥要求得到满足。<strong><font color=''#2656b3''>进展要求</font></strong>：进程最终应能完成。但进程 1 初始时无法直接进入临界区，因为信号量值为 0，只有在进程 0 执行后，进程 1 才能进入临界区。因此，进展要求未被满足。<strong><font color=''#2656b3''>有限等待要求</font></strong>：任何进程都不应无限期地等待资源。进程 1 可以直接进入，也可以在进程 0 之后进入临界区。因此，有限等待要求得到满足。<strong><font color=''#2656b3''>结论</font></strong>：选项 (C) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5498');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5499, '408考研练习题——操作系统——进程管理第28题', '简单', '408考研练习题——操作系统——进程管理', '考虑一个非负计数信号量 S。操作 P(S) 会将 S 减 1，V(S) 会将 S 加 1。在执行过程中，以某种顺序发起了 20 次 P(S) 操作和 12 次 V(S) 操作。使得至少有一个 P(S) 操作仍处于阻塞状态的 S 的最大初始值是（ ）。
', '[''7'', ''8'', ''9'', ''10'']', "['A']", 'A</font></strong>
20-7=13 将在阻塞状态下，当我们执行 12 次 V(S) 操作时，会使 12 个进程从阻塞状态获得执行机会。因此这里会剩下 1 个进程处于队列（阻塞状态）。此处假设如果一个进程正在临界区中，则不会被其他进程阻塞。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5499');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5500, '408考研练习题——操作系统——进程管理第29题', '简单', '408考研练习题——操作系统——进程管理', '以下代码包含两个可以并行运行的线程（生产者和消费者）。此外，S 和 Q 是配备标准 P 和 V 操作的二进制信号量。

```c
semaphore S = 1, Q = 0; integer x;

producer:
    while (true) do
        P(S);
        x = produce();
        V(Q);
    done

consumer:
    while (true) do
        P(Q);
        consume(x);
        V(S);
    done
```
关于上述程序，以下哪项是正确的？（ ）
', '[''进程可能发生死锁'', ''其中一个线程可能发生饥饿'', ''生产者生成的部分项目可能会丢失'', ''生产者生成并存储在’x’中的值将在生产者生成新值之前被消费'']', "['D']", 'D</font></strong>
信号量是一种硬件或软件标记变量，其值表示公共资源的状态。其目的是锁定正在使用的资源。需要该资源的进程会检查信号量以确定资源状态，并据此决定是否继续执行。在多任务操作系统中，通过信号量技术实现活动同步。信号量上定义了`wait`和`signal`操作：进入临界区由`wait`操作控制，退出临界区由`signal`操作处理。`wait`和`signal`操作也称为 P 和 V 操作。信号量 (S) 的操作规则如下：- `P(S)`操作将信号量值减 1。若结果为负数，则 P 操作会被阻塞直到条件满足。
- `V(S)`操作将信号量值加 1。<strong><font color=''#2656b3''>解析</font></strong>：消费者仅在生产者生成物品后才能消费，而生产者（除第一次外）必须在消费者消费完当前物品后才能生成新物品。- 生产者流程：

- 初始时 S=1，P(S) 使 S 变为 0 → 生成物品 x → V(Q) 使 Q 变为 1。
- 下一次循环时 S 仍为 0，P(S) 会阻塞生产者。
- 消费者流程：

- P(Q) 使 Q 变为 0 → 消费物品 x → V(S) 唤醒被阻塞的生产者。
- 此时生产者从生成 x 的位置继续执行。因此，消费者总是在生产者生成新值前消费当前值。<strong><font color=''#2656b3''>选项分析</font></strong>：- A) 不会发生死锁，因为生产者和消费者使用不同的信号量（无持有并请求）。
- B) 不会发生饥饿，因为生产者和消费者交替执行且具有有限等待时间。
- C) 生产者生成的物品不会丢失，因为每次生成后都会被消费者消费。
- D) 正确，消费者在生产者生成新值前必须消费当前值。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5500');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5501, '408考研练习题——操作系统——进程管理第30题', '简单', '408考研练习题——操作系统——进程管理', '一个操作系统实现了一项策略，要求进程在请求新资源之前必须释放所有已持有的资源。从以下选项中选择正确的陈述（ ）：
', '[''两者都可能发生'', ''资源饥饿可能发生，但死锁不可能发生'', ''资源饥饿不可能发生，但死锁可能发生'', ''两者都不可能发生'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 资源饥饿可能发生：进程在持有当前资源时若需申请新资源，必须先释放已有资源。这种机制可能导致进程反复申请/释放资源却始终无法获得全部所需资源，从而陷入饥饿状态。
- 死锁不可能发生：该策略强制进程在请求新资源前释放所有已占资源，直接破坏了死锁的"不可抢占"条件，同时消除了循环等待的可能性。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5501');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5502, '408考研练习题——操作系统——进程管理第31题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下进程 P1 和 P2 的 C 代码。初始值为 a=4，b=0，c=0。

```c
1. if (a < 0)
2.     c = b-a;
3. else
4.     c = b+a;
```
P1

```c
1. b = 10;
2. a = -3;
```
P1
如果 P1 和 P2 并发执行，a、b、c 是两个进程的共享变量，两个进程都执行结束后，变量 c 的值不可能是以下选项中的那一个？（ ）
', '[''4'', ''7'', ''10'', ''13'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>由于 P1 和 P2 并发执行，所以可能存在多种情况，接下来逐一进行分析：- P1(1,3,4):`a = 4, b = 0, c = b+a = 4`，选项 A 可能
- P1(1,3) → P2(1,2) → P1(4):`a = -3, b = 10, c = b+a = 7`，选项 B 可能
- P2(1,2) → P1(1,2):`a = -3, b = 10, c = b-a = 13`，选项 D 可能所以选项 C 是不可能出现的，答案选择 C。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5502');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5503, '408考研练习题——操作系统——进程管理第32题', '简单', '408考研练习题——操作系统——进程管理', '当操作系统从进程 A 切换到进程 B 时，以下哪项操作通常<strong><font color=''#2656b3''>不会</font></strong>执行？（ ）
', '[''保存当前寄存器值并恢复进程 B 的已保存寄存器值。'', ''更改地址转换表。'', ''将进程 A 的内存镜像换出到磁盘。'', ''使 TLB 失效。'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>：- 进程换出内存的情况在上下文切换期间，进程不会被换出内存到磁盘。进程通常在挂起时才会被换出内存到磁盘。
- TLB 失效操作在上下文切换过程中，操作系统会使 TLB（Translation Lookaside Buffer，转换后备缓冲区）失效，以确保 TLB 与当前运行的进程一致。
- 结论因此，选项 (C) 是错误的。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5503');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5504, '408考研练习题——操作系统——进程管理第33题', '简单', '408考研练习题——操作系统——进程管理', '在使用 “最佳适配” 算法为 “作业” 分配 “内存分区” 的计算机系统中，遇到以下情况：
问 20K 的作业何时完成？（ ）
', '[''8'', ''18'', ''11'', ''上面选项都不对'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>内存分区为 4k、8k、20k、2k</font></strong>。由于采用最佳适配分配算法，该算法会将进程分配到<strong><font color=''#2656b3''>最小且足够容纳</font></strong>的空闲分区中。<strong><font color=''#2656b3''>作业分配过程如下</font></strong>：- 2k 的作业进入 2k 分区并运行（4 单位时间）
- 14k 的作业进入 20k 分区并运行（10 单位时间）
- 3k 的作业进入 4k 分区并运行（2 单位时间）
- 6k 的作业进入 8k 分区并运行（1 单位时间）
- 10k 的作业进入 20k 分区并运行（1 单位时间）
- 20k 的作业进入 20k 分区并运行（8 单位时间）<strong><font color=''#2656b3''>总完成时间计算</font></strong>：

$$
10 (14k) + 1 (10k) + 8 (20k) = 19 单位时间
$$
因此，20k 作业的总完成时间为<strong><font color=''#2656b3''>19 单位时间</font></strong>，正确答案为 “这些都不对”。', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5504');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5505, '408考研练习题——操作系统——进程管理第34题', '简单', '408考研练习题——操作系统——进程管理', '一个并发系统包含 3 个进程，以非抢占式和互斥方式共享资源 R。这些进程具有唯一的优先级范围 1…3（3 为最高优先级）。需要同步这些进程，确保资源始终分配给最高优先级的请求者。系统伪代码如下：

```c
Shared Data
    mutex: semaphore = 1; /* 初始化为1 */
    proceed[3]: semaphore = 0; /* 所有初始化为0 */
    R_requested[3]: boolean = false; /* 所有初始化为false */
    busy: boolean = false; /* 初始化为false */

Code for processes
begin process
    my-priority: integer;
    my-priority := ____; /* 范围1...3 */
    repeat
        request_R(my-priority);
        P(proceed[my-priority]);
        {使用共享资源R}
        release_R(my-priority);
    forever
end process;

Procedures
procedure request_R(priority);
    P(mutex);
    if busy = true then
        R_requested[priority] := true;
    else
    begin
        V(proceed[priority]);
        busy := true;
    end
    V(mutex);
```
请给出过程`release_R`的伪代码。
', '[]', '', '
```c
procedure release_R(priority);
    P(mutex);
    busy := false;
    next_priority := 0;
    for i from 3 downto 1 do
        if R_requested[i] = true then
            next_priority := i;
            break;
    if next_priority > 0 then
    begin
        R_requested[next_priority] := false;
        V(proceed[next_priority]);
        busy := true;
    end
    V(mutex);
```

<strong><font color=''#2656b3''>解释：</font></strong>
- 互斥保护使用P(mutex)和V(mutex)包裹整个操作，确保对共享数据的访问互斥。
- 资源释放逻辑

- 将`busy`标志设为`false`，表示资源已释放。
- 从最高优先级（3）到最低优先级（1）遍历`R_requested`数组，寻找第一个请求资源的进程。
- 若找到等待的进程（`next_priority > 0`），则：

- 清除其请求标志`R_requested[next_priority]`。
- 通过`V(proceed[next_priority])`唤醒该进程。
- 设置`busy := true`，表示资源已被重新分配。
- 优先级调度通过降序遍历优先级，确保每次释放资源后，优先级最高的等待进程能立即获得资源使用权，满足题目要求。
', 9, 'Mogullzr', '2026-02-02 11:52:32', 9, NULL, '2026-02-02 11:52:32', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5505');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5506, '408考研练习题——操作系统——进程管理第35题', '简单', '408考研练习题——操作系统——进程管理', '下图中的进程状态转换图所代表的是（ ）

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/b7a8071764e54232bef6d35db1bf8e69.jpg)
', '[''批处理操作系统'', ''具备抢占式调度器的操作系统'', ''具备非抢占式调度器的操作系统'', ''单道程序操作系统'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
具备抢占式调度器的操作系统允许高优先级进程中断当前运行的低优先级进程，从而实现更灵活的资源分配。进程状态转换图中若包含"就绪 → 运行"的双向箭头（即运行态可被抢占），则表明系统支持抢占式调度。', 9, 'Mogullzr', '2026-02-02 11:52:34', 9, NULL, '2026-02-02 11:52:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5506');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5507, '408考研练习题——操作系统——进程管理第36题', '简单', '408考研练习题——操作系统——进程管理', '以下哪个选项是错误的？（ ）
', '[''程序的一个执行实例称为进程，而线程是进程的一个子集。'', ''线程有相当大的开销，而进程几乎没有开销。'', ''进程的执行是独立的，而线程的执行是依赖的。'', ''新进程需要复制父进程，而新线程则很容易创建。'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误原因</font></strong></font></strong>：实际情况下，进程的创建和管理开销较大，而线程由于共享进程资源，开销较小。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：因此，选项 (B) 的描述与事实相反，属于错误选项。', 9, 'Mogullzr', '2026-02-02 11:52:34', 9, NULL, '2026-02-02 11:52:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5507');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5508, '408考研练习题——操作系统——进程管理第37题', '简单', '408考研练习题——操作系统——进程管理', '以下哪项不是同一进程中的所有线程共享的？
I. 程序计数器
II. 栈
III. 寄存器
IV. 地址空间
', '[''I 和 II'', ''II 和 III'', ''I、II 和 III'', ''IV'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键概念</font></strong></font></strong>：线程是进程内的执行单元，多个线程共享进程的资源，但拥有独立的控制流。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>私有资源</font></strong></font></strong>：

- 程序计数器（记录当前执行指令位置）
- 栈（存储函数调用时的局部变量和返回地址）
- 寄存器（保存线程执行时的临时数据）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>共享资源</font></strong></font></strong>：

- 地址空间（包括代码段、数据段、堆等内存区域）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 (C) 正确，因为 I、II 和 III 都是线程私有资源，而 IV 是唯一共享的资源。', 9, 'Mogullzr', '2026-02-02 11:52:34', 9, NULL, '2026-02-02 11:52:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5508');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5509, '408考研练习题——操作系统——进程管理第38题', '简单', '408考研练习题——操作系统——进程管理', '当进程 L 执行期间设备控制器发出中断后，会发生以下事件：
(P) 处理器将进程 L 的状态压入控制栈。
(Q) 处理器完成当前指令的执行。
(R) 处理器执行中断服务程序。
(S) 处理器从控制栈中弹出进程 L 的状态。
(T) 处理器根据中断加载新的 PC 值。
上述事件发生的正确顺序是（ ）？
', '[''QPTRS'', ''PTRSQ'', ''TRPQS'', ''QTPRS'']', "['A']", 'A</font></strong>
因此，选项 (A) 是正确的。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中断响应流程</font></strong></font></strong>

- 首先，处理器需完成当前正在执行的指令（Q），这是中断响应的基本原则。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>上下文切换准备</font></strong></font></strong>

- 完成当前指令后，处理器根据中断向量表加载新的程序计数器（PC）值（T），定位到中断服务程序入口。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>状态保存</font></strong></font></strong>

- 在跳转执行中断服务前，处理器将进程 L 的当前状态（如寄存器内容）压入控制栈（P），以保证中断返回后能恢复执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中断服务执行</font></strong></font></strong>

- 处理器开始执行中断服务程序（R），处理设备控制器的中断请求。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>状态恢复与返回</font></strong></font></strong>

- 中断服务完成后，处理器从控制栈中弹出之前保存的进程状态（S），恢复现场并继续执行被中断的进程。该顺序严格遵循操作系统中断处理的标准流程，确保系统稳定性和进程连续性。', 9, 'Mogullzr', '2026-02-02 11:52:34', 9, NULL, '2026-02-02 11:52:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5509');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5510, '408考研练习题——操作系统——进程管理第39题', '简单', '408考研练习题——操作系统——进程管理', '用户级线程是程序员可见的线程，但内核并不知道它们的存在。操作系统内核支持并管理内核级线程。三种不同的模型关联了用户级线程和内核级线程。以下哪些陈述是正确的？（ ）
(a)
(i) 多对一模型将多个用户线程映射到一个内核线程
(ii) 一对一模型将一个用户线程映射到一个内核线程
(iii) 多对多模型将多个用户线程映射到较少或相等数量的内核线程
(b)
(i) 多对一模型将多个内核线程映射到一个用户线程
(ii) 一对一模型将一个内核线程映射到一个用户线程
(iii) 多对多模型将多个内核线程映射到较少或相等数量的用户线程
', '[''(a) 正确；(b) 错误'', ''(a) 错误；(b) 正确'', ''(a) 和 (b) 都正确'', ''(a) 和 (b) 都错误'']', "['A']", 'A</font></strong>
在多对多模型中，我们映射的是<strong><font color=''#2656b3''>内核线程而非用户线程</font></strong>。所以选项 (A) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:34', 9, NULL, '2026-02-02 11:52:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5510');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5511, '408考研练习题——操作系统——进程管理第40题', '简单', '408考研练习题——操作系统——进程管理', '临界区是程序的一个段，该程序段的功能是（ ）
', '[''应该在一定规定时间内运行'', ''避免死锁'', ''访问共享资源'', ''必须由一对信号量操作 P 和 V 包围'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>临界区</font></strong></font></strong>是进程访问<strong><font color=''#2656b3''><strong><font color=''#2656b3''>共享资源</font></strong></font></strong>的程序部分
- 它包含<strong><font color=''#2656b3''><strong><font color=''#2656b3''>共享变量</font></strong></font></strong>或<strong><font color=''#2656b3''><strong><font color=''#2656b3''>共享数据</font></strong></font></strong>
- 程序的其余部分称为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>非临界区</font></strong></font></strong>或<strong><font color=''#2656b3''><strong><font color=''#2656b3''>剩余部分</font></strong></font></strong><strong><font color=''#2656b3''>选项（C）正确</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5511');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5512, '408考研练习题——操作系统——进程管理第41题', '简单', '408考研练习题——操作系统——进程管理', '以下程序的输出是什么？

```c
main( )
{
    int a = 10;
    if ((fork ( ) == 0))
        a++;
    printf (“%d\\\\n”, a );
}
```
', '[''10 和 11'', ''10'', ''11'', ''11 和 11'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- `fork()`系统调用会创建当前进程的副本（子进程）
- 父进程中`fork()`返回子进程 PID（非 0 值），条件不成立不执行`a++`
- 子进程中`fork()`返回 0，条件成立执行`a++`使`a=11`
- 两个进程分别执行`printf`输出各自的`a`值
- 最终输出结果为两行：

- 父进程输出`10`
- 子进程输出`11`
- 注意：由于进程调度顺序不确定，输出顺序可能为`10\\n11`或`11\\n10`', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5512');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5513, '408考研练习题——操作系统——进程管理第42题', '简单', '408考研练习题——操作系统——进程管理', '互斥问题发生于（ ）
', '[''在两个不交互的独立进程之间'', ''在共享资源的进程之间'', ''在不使用相同资源的进程之间'', ''在使用不同机器上不同资源的两个进程之间'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥问题的核心场景</font></strong></font></strong>：当多个进程需要访问同一资源时（如内存、文件或设备）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>触发条件</font></strong></font></strong>：缺乏同步机制导致并发访问冲突
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>典型表现</font></strong></font></strong>：数据不一致、竞争条件等问题
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解决目标</font></strong></font></strong>：通过互斥机制确保<strong><font color=''#2656b3''><strong><font color=''#2656b3''>同一时刻仅一个进程</font></strong></font></strong>能操作临界资源', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5513');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5514, '408考研练习题——操作系统——进程管理第43题', '简单', '408考研练习题——操作系统——进程管理', '临界区是指（ ）：
', '[''是一段每次只能由一个进程执行的代码'', ''是容易发生死锁的区域'', ''是一段只有有限数量进程可以执行的代码'', ''仅在 Windows NT 操作系统中存在的区域'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确答案 A</font></strong></font></strong>：临界区（Critical Section）指程序中访问共享资源的代码段，其核心特性是互斥性——同一时刻仅允许一个进程/线程执行该代码段，以避免数据竞争和不一致问题。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 B 错误</font></strong></font></strong>：死锁是多个进程因资源循环等待导致的僵局，属于并发控制的问题范畴，与临界区的定义无直接关联。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C 错误</font></strong></font></strong>：临界区的互斥性要求严格限定为单个执行体，“有限数量"描述不符合其本质特征。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 D 错误</font></strong></font></strong>：临界区是操作系统理论中的通用概念，Windows NT 的实现方式（如使用内核对象）仅为具体技术方案之一。', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5514');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5515, '408考研练习题——操作系统——进程管理第44题', '简单', '408考研练习题——操作系统——进程管理', '在某一时刻，计数信号量的值为 10。经过以下哪种操作后，其值会变为 7？
(a) 3 次 V 操作
(b) 3 次 P 操作
(c) 5 次 V 操作和 2 次 P 操作
(d) 2 次 V 操作和 5 次 P 操作
以下哪个选项正确？（ ）
', '[''仅 (b)'', ''仅 (d)'', ''(b) 和 (d) 均正确'', ''以上都不对'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>操作说明</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P 操作</font></strong></font></strong>：等待操作会使计数信号量的值<strong><font color=''#2656b3''><strong><font color=''#2656b3''>减 1</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>V 操作</font></strong></font></strong>：信号操作会使计数信号量的值<strong><font color=''#2656b3''><strong><font color=''#2656b3''>加 1</font></strong></font></strong><strong><font color=''#2656b3''>初始状态</font></strong>
当前计数信号量的值 = 10<strong><font color=''#2656b3''>选项分析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(a)</font></strong></font></strong>3 次 V 操作 → 10 + 3 = 13 ❌
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(b)</font></strong></font></strong>3 次 P 操作 → 10 - 3 = 7 ✅
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(c)</font></strong></font></strong>5 次 V 操作 + 2 次 P 操作 → 10 + 5 - 2 = 13 ❌
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(d)</font></strong></font></strong>2 次 V 操作 + 5 次 P 操作 → 10 + 2 - 5 = 7 ✅<strong><font color=''#2656b3''>结论</font></strong>
选项 (b) 和 (d) 的结果均为 7，因此<strong><font color=''#2656b3''>选项 (C) 正确</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5515');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5516, '408考研练习题——操作系统——进程管理第45题', '简单', '408考研练习题——操作系统——进程管理', '有三个进程 P1、P2 和 P3 共享一个信号量以同步某个变量。
信号量的初始值为 1。假设信号量的负值表示当前有多少个进程在等待队列中。
进程按以下顺序访问该信号量：
(a) P2 需要访问
(b) P1 需要访问
(c) P3 需要访问
(d) P2 退出临界区
(e) P1 退出临界区
最终信号量的值将是（ ）。
', '[''0'', ''1'', ''-1'', ''-2'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析过程</font></strong>：- 初始值 S = 1

- P2 访问时，S -= 1 → S = 0（无进程等待）
- P1 访问时，S -= 1 → S = -1（1 个进程等待）
- P3 访问时，S -= 1 → S = -2（2 个进程等待）
- P2 退出时，S += 1 → S = -1（1 个进程等待）
- P1 退出时，S += 1 → S = 0（无进程等待）<strong><font color=''#2656b3''>结论</font></strong>：最终信号量值为 0，因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5516');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5517, '408考研练习题——操作系统——进程管理第46题', '简单', '408考研练习题——操作系统——进程管理', '在某一计算时刻，计数信号量的值为 7。随后对该信号量执行了 20 次 P 操作和 x 次 V 操作。若信号量的新值为 5，则 x 的值为（ ）：
', '[''18'', ''22'', ''15'', ''13'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>P 操作</font></strong></font></strong>：将信号量值减 1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>V 操作</font></strong></font></strong>：将信号量值加 1
- 初始信号量值 = 7
- 经过 20 次 P 操作后：  
`7 - 20 = -13`
- 再经过 x 次 V 操作后：  
`-13 + x = 5`
- 解得：  
`x = 5 + 13 = 18`  
因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5517');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5518, '408考研练习题——操作系统——进程管理第47题', '简单', '408考研练习题——操作系统——进程管理', '用户级线程相比内核级线程的一个缺点是（ ）：
', '[''如果一个进程的用户级线程执行系统调用，则该进程中的所有线程都会被阻塞'', ''调度依赖于应用程序'', ''线程切换不需要内核模式权限'', ''用户级线程中用于线程管理的库过程是本地过程'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>用户级线程的优势：</font></strong>- 调度依赖于应用程序
- 线程切换不需要内核模式权限
- 用户级线程中用于线程管理的库过程是本地过程
- 用户级线程创建和管理速度快
- 用户级线程可以在任何操作系统上运行<strong><font color=''#2656b3''>用户级线程的劣势：</font></strong>- 在典型操作系统中，大多数系统调用会阻塞整个进程
- 多线程应用程序不支持多处理因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5518');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5519, '408考研练习题——操作系统——进程管理第48题', '简单', '408考研练习题——操作系统——进程管理', '考虑一个包含七个进程（A 到 G）和六种资源（R 到 W）的系统。
资源所有权如下：
该系统是否发生死锁？如果是，请指出哪些进程陷入死锁。（ ）
', '[''否'', ''是的，A、B、C 进程死锁'', ''是的，D、E、G 进程死锁'', ''是的，A、B、F 进程死锁'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 资源请求链分析

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>进程 D → T → E → V → G → U → D</font></strong></font></strong>形成闭环：

- D 持有 U，请求 T（被 E 占用）
- E 持有 T，请求 V（被 G 占用）
- G 持有 V，请求 U（被 D 占用）
- 此闭环满足死锁的四个必要条件（互斥、持有并等待、不可抢占、循环等待）。
- 排除无关进程

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A</font></strong></font></strong>请求 T 被 E 阻塞，但 A 未参与闭环。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B</font></strong></font></strong>请求 T 被 E 阻塞，但 B 未持有任何资源。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C</font></strong></font></strong>请求 S 被 D/F 阻塞，但 C 未持有资源。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>F</font></strong></font></strong>请求 S 被 D/C 阻塞，但 F 未参与闭环。
- 结论只有D、E、G三者构成闭环且相互等待，因此它们陷入死锁。', 9, 'Mogullzr', '2026-02-02 11:52:35', 9, NULL, '2026-02-02 11:52:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5519');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5520, '408考研练习题——操作系统——进程管理第49题', '简单', '408考研练习题——操作系统——进程管理', '一个 CPU 调度算法决定了其已安排进程的执行顺序。给定 n 个进程在单个处理器上进行调度，可能有多少种不同的调度顺序？
', '[''n'', ''n²'', ''n!'', ''2n'']', "['C']", 'C</font></strong>
对于 n 个进程在单个处理器上的调度，可能存在 n! 种不同的调度顺序。
示例：假设操作系统有 4 个进程 P1、P2、P3 和 P4 需要调度。调度第一个进程时有 4 种选择，从剩余三个进程中可选 3 种，依此类推。因此总共有 4×3×2×1=4! 种调度方式。选项（C）正确。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5520');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5521, '408考研练习题——操作系统——进程管理第50题', '简单', '408考研练习题——操作系统——进程管理', '进程在遇到 I/O 指令后所处的状态是（ ）
', '[''就绪'', ''阻塞'', ''空闲'', ''运行'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>就绪状态</font></strong></font></strong>：进程刚被创建时，会被放入就绪队列
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>运行状态</font></strong></font></strong>：当进程开始执行时，处于运行状态
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>阻塞状态</font></strong></font></strong>：一旦进程开始进行输入/输出操作，它会进入阻塞状态', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5521');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5522, '408考研练习题——操作系统——进程管理第51题', '简单', '408考研练习题——操作系统——进程管理', '以下哪种策略用于解决优先级反转问题？（ ）
', '[''暂时提升低优先级进程的优先级'', ''采用固定优先级调度方案'', ''实现内核抢占机制'', ''允许低优先级进程完成其任务'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>优先级反转</font></strong></font></strong>是调度中的一个场景，当高优先级进程被低优先级进程<strong><font color=''#2656b3''><strong><font color=''#2656b3''>间接抢占</font></strong></font></strong>，从而导致进程相对优先级的倒置。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解决方案</font></strong></font></strong>：通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>暂时提升低优先级进程的优先级</font></strong></font></strong>，使其无法抢占高优先级进程，即可消除此问题。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5522');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5523, '408考研练习题——操作系统——进程管理第52题', '简单', '408考研练习题——操作系统——进程管理', '考虑一个拥有十二个磁带驱动器的系统，其中包含三个进程 P1、P2 和 P3。
进程 P1 最多需要十个磁带驱动器，进程 P2 最多需要四个磁带驱动器，进程 P3 最多需要九个磁带驱动器。假设在时间 t1 时，进程 P1 持有五个磁带驱动器，进程 P2 持有两个磁带驱动器，进程 P3 持有三个磁带驱动器。此时系统处于（ ）。
', '[''安全状态'', ''不安全状态'', ''死锁状态'', ''饥饿状态'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 进程需求分析

- P1 当前持有 5 个磁带驱动器，还需 5 个（共需 10 个）
- P2 当前持有 2 个磁带驱动器，还需 2 个（共需 4 个）
- P3 当前持有 3 个磁带驱动器，还需 6 个（共需 9 个）
- 系统资源状态

- 总驱动器数：12 个
- 已分配：10 个（5+2+3）
- 剩余空闲：2 个
- 资源分配逻辑

- 剩余 2 个可分配给 P2，满足其需求后释放 4 个驱动器
- 释放的 4 个仍无法满足 P1（需 5 个）或 P3（需 6 个）
- 无足够资源继续推进其他进程
- 结论系统无法找到一条安全序列，因此处于不安全状态所以选项 (B) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5523');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5524, '408考研练习题——操作系统——进程管理第53题', '简单', '408考研练习题——操作系统——进程管理', '在操作系统中，操作的不可分割性意味着（ ）：
', '[''操作可以被中断'', ''可能发生竞态条件'', ''处理器不能被抢占'', ''以上所有选项'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>不可分割性</font></strong></font></strong>（原子性）的核心特征是操作在执行过程中不会被中断
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项分析：</font></strong></font></strong>

- A 错误：可分割的操作才可能发生中断
- B 错误：竞态条件通常出现在非原子操作场景
- C 正确：不可分割性保证了处理器无法抢占当前执行的操作
- D 错误：并非所有选项都成立
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论：</font></strong></font></strong>不可分割性通过禁止处理器抢占，确保操作序列的完整性和一致性，因此选项（C）正确', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5524');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5525, '408考研练习题——操作系统——进程管理第54题', '简单', '408考研练习题——操作系统——进程管理', '就绪队列中有三个进程。当当前运行的进程请求 I/O 时，会发生多少次进程切换？（ ）
', '[''1'', ''2'', ''3'', ''4'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 当前运行的进程发起 I/O 请求后，会从运行状态转为阻塞状态
- 操作系统会从就绪队列中选择一个进程（通常为队首进程）投入运行
- 此过程涉及两次状态变更（运行→阻塞 + 就绪→运行），但实际进程切换操作仅发生<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 次</font></strong></font></strong>选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5525');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5526, '408考研练习题——操作系统——进程管理第55题', '简单', '408考研练习题——操作系统——进程管理', '以下哪项是操作系统中有效进程状态转换的正确定义？（ ）
', '[''唤醒：就绪 → 运行'', ''调度：就绪 → 运行'', ''阻塞：就绪 → 运行'', ''时间片耗尽：就绪 → 运行'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>进程状态转换图（抢占式调度）</font></strong>- 选项 1：唤醒：就绪 → 运行错误。当进程被唤醒时，其状态应从阻塞状态转为就绪状态，而非从就绪到运行。
- 选项 2：调度：就绪 → 运行正确。调度器会根据明确算法，将 CPU 分配给就绪队列中的某个进程。
- 选项 3：阻塞：就绪 → 运行错误。进程被阻塞通常是因为被其他进程抢占或因 I/O 操作。此时进程状态应从运行状态转为阻塞状态。
- 选项 4：时间片耗尽：就绪 → 运行错误。当进程执行时间片到期时，定时器中断会使其状态从运行状态转为就绪队列。<strong><font color=''#2656b3''>结论</font></strong>因此，选项<strong><font color=''#2656b3''>(B)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5526');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5527, '408考研练习题——操作系统——进程管理第56题', '简单', '408考研练习题——操作系统——进程管理', '下列配对的正确匹配是（ ）
(A) 磁盘检查  (1) 轮转法
(B) 批处理   (2) 扫描算法
(C) 分时    (3) 后进先出
(D) 栈操作   (4) 先进先出
', '[''A-3 B-4 C-2 D-1'', ''A-4 B-3 C-2 D-1'', ''A-3 B-4 C-1 D-2'', ''A-2 B-4 C-1 D-3'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>选项 (D) 正确：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A</font></strong></font></strong>: 磁盘检查 - (2) 磁盘检查使用多种扫描算法，如 FCFS、SSTF、SCAN、C-SCAN、LOOK、C-LOOK 等。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B</font></strong></font></strong>: 批处理 - 在批处理中，进程严格按照先进先出（FIFO）顺序执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C</font></strong></font></strong>: 分时 - 在轮转调度算法中，进程以分时方式执行 CPU 任务，每个进程有固定的时间片。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>D</font></strong></font></strong>: 栈操作 - 栈遵循后进先出（LIFO）原则。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5527');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5528, '408考研练习题——操作系统——进程管理第57题', '简单', '408考研练习题——操作系统——进程管理', '考虑三个 CPU 密集型进程，它们分别需要 10、20 和 30 个时间单位，并且在时间 0、2 和 6 到达。如果操作系统实现最短剩余时间优先调度算法，需要多少次上下文切换？（不计算时间零点和结束时的上下文切换。）
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
根据最短剩余时间优先（SRTF）调度规则，每次选择剩余时间最短的进程执行。具体过程如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 0-2</font></strong></font></strong>：进程 P1（需 10 单位）开始执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 2</font></strong></font></strong>：进程 P2 到达（剩余时间 20），当前 P1 剩余 8 单位。由于 8 < 20，P1 继续执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 6</font></strong></font></strong>：进程 P3 到达（剩余时间 30），此时 P1 剩余 4 单位。仍选择 P1 执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 6</font></strong></font></strong>：P1 完成（总耗时 6 单位）。此时 P2 剩余 20，P3 剩余 30。选择 P2 执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 6-16</font></strong></font></strong>：P2 执行 10 单位后，剩余 10。此时 P3 剩余 30，P2 继续执行。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间 16</font></strong></font></strong>：P2 完成。此时 P3 剩余 30，开始执行至结束。<strong><font color=''#2656b3''>上下文切换分析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第一次切换</font></strong></font></strong>：P1 被 P2 抢占（时间 6）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第二次切换</font></strong></font></strong>：P2 被 P3 抢占（时间 16）。最终共发生<strong><font color=''#2656b3''>2 次上下文切换</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:36', 9, NULL, '2026-02-02 11:52:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5528');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5529, '408考研练习题——操作系统——进程管理第58题', '简单', '408考研练习题——操作系统——进程管理', '进程是（ ）：
', '[''磁盘上保存的高级语言程序'', ''主存中的内容'', ''正在执行的程序'', ''辅存中的作业'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>进程是指正在执行的程序。当需要执行某个程序时，其进程映像会被创建在主存中，并被放入就绪队列。随后 CPU 会分配给该进程并开始执行。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项分析</font></strong></font></strong>

- A. 磁盘上保存的高级语言程序 → 属于静态存储的源代码或编译后的可执行文件
- B. 主存中的内容 → 泛指内存数据，未体现动态执行特性
- C. 正在执行的程序 → 符合进程的定义（动态执行实体）
- D. 辅存中的作业 → 指待处理的作业，尚未进入内存因此，选项（C）正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5529');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5530, '408考研练习题——操作系统——进程管理第59题', '简单', '408考研练习题——操作系统——进程管理', '在操作系统中，哪种操作系统的名称是指能够及时读取并响应事件的？（ ）
', '[''批处理系统'', ''快速响应时间'', ''实时系统'', ''分时系统'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 实时操作系统（RTOS）的核心特性是在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>严格的时间限制内</font></strong></font></strong>完成事件处理
- 其设计目标是确保关键任务在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>截止时间前</font></strong></font></strong>获得确定性响应
- 与普通分时系统不同，实时系统对响应延迟有<strong><font color=''#2656b3''><strong><font color=''#2656b3''>可预测性和可靠性</font></strong></font></strong>要求
- 常见应用场景包括工业控制、航空航天、医疗设备等对时效性敏感的领域选项（C）正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5530');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5531, '408考研练习题——操作系统——进程管理第60题', '简单', '408考研练习题——操作系统——进程管理', 'Fork 系统调用的功能是（ ）
', '[''创建一个新任务'', ''分派一个任务'', ''提高任务的优先级'', ''创建一个新进程'']', "['D']", 'D</font></strong>
fork() 通过复制调用进程来创建一个新进程。新进程（称为子进程）是调用进程（称为父进程）的完全副本，但以下情况除外：- 子进程拥有自己唯一的进程 ID，且该 PID 与任何现有进程组的 ID 都不匹配。
- 子进程的父进程 ID 与父进程的进程 ID 相同。
- 子进程不会继承父进程的内存锁和信号量调整。
- 子进程不会从父进程继承未完成的异步 I/O 操作，也不会继承父进程的任何异步 I/O 上下文。因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5531');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5532, '408考研练习题——操作系统——进程管理第61题', '简单', '408考研练习题——操作系统——进程管理', '哲学家就餐问题是一个（ ）
', '[''生产者 - 消费者问题'', ''经典 IPC 问题'', ''饥饿问题'', ''同步原语'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解析</font></strong></font></strong>：用餐哲学家问题是一个经典 IPC 问题。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5532');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5533, '408考研练习题——操作系统——进程管理第62题', '简单', '408考研练习题——操作系统——进程管理', '处于阻塞状态的任务（ ）
', '[''可执行的'', ''正在运行'', ''必须仍然放置在运行队列中'', ''正在等待某些暂时不可用的资源'']', "['D']", 'D</font></strong>
当进程请求了某些输入/输出并正在等待资源时，它会处于等待或阻塞状态。因此，选项 (D) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5533');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5534, '408考研练习题——操作系统——进程管理第63题', '简单', '408考研练习题——操作系统——进程管理', '在使用非抢占式调度的系统中，就绪队列中有四个进程，其预计运行时间分别为 5、18、9 和 12。应按照什么顺序运行这些进程以最小化等待时间（ ）？
', '[''5, 12, 9, 18'', ''5, 9, 12, 18'', ''12, 18, 9, 5'', ''9, 12, 18, 5'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 进程应按最短作业优先（SJF）的方式执行，以获得最低的等待时间。
- 因此，正确的顺序是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>5、9、12、18</font></strong></font></strong>。
- 选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5534');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5535, '408考研练习题——操作系统——进程管理第64题', '简单', '408考研练习题——操作系统——进程管理', '在某个计算时刻，计数信号量的值为 10。随后对该信号量执行了 12 次 P 操作和 “x” 次 V 操作。若信号量的最终值为 7，则 x 的值为（ ）：
', '[''8'', ''9'', ''10'', ''11'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>- 初始信号量值为 10
- 执行 12 次 P 操作后：10−12=−2
- 执行 x 次 V 操作后：−2+x=7⟹x=9<strong><font color=''#2656b3''>结论：</font></strong>因此选项（B）正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5535');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5536, '408考研练习题——操作系统——进程管理第65题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下关于采用抢占式调度系统中进程状态转换的陈述：
I. 运行态进程可以转为就绪态。
II. 就绪态进程可以转为运行态。
III. 阻塞态进程可以转为运行态。
IV. 阻塞态进程可以转为就绪态。
以上陈述中哪些是正确的？（ ）
', '[''I、II 和 III'', ''II 和 III'', ''I、II 和 IV'', ''I、II、III 和 IV'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>根据采用抢占式调度系统的进程状态转换规则：阻塞态进程<strong><font color=''#2656b3''>不能</font></strong>直接转为运行态。因此，只有陈述 I、II 和 IV 是正确的。选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5536');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5537, '408考研练习题——操作系统——进程管理第66题', '简单', '408考研练习题——操作系统——进程管理', '在某一计算时刻，计数信号量的值为 7。随后对该信号量执行了 20 次 P（等待）操作和 15 次 V（信号）操作。该信号量的最终值是多少？（ ）
', '[''28'', ''12'', ''2'', ''42'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>初始值</font></strong></font></strong>：7
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>执行 20 次 P 操作后</font></strong></font></strong>：7 – 20 = -13
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>执行 15 次 V 操作后</font></strong></font></strong>：-13 + 15 = 2  
因此，选项 C 正确。', 9, 'Mogullzr', '2026-02-02 11:52:37', 9, NULL, '2026-02-02 11:52:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5537');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5538, '408考研练习题——操作系统——进程管理第67题', '简单', '408考研练习题——操作系统——进程管理', '进程 P1 和 P2 使用以下代码中的`critical_flag`实现互斥。假设主程序中将`critical_flag`初始化为 FALSE。

```c
get_exclusive_access() {
    if (critical_flag == FALSE) {
        critical_flag = TRUE;
        critical_region();
        critical_flag = FALSE;
    }
}
```
考虑以下两个陈述：
i. P1 和 P2 可能同时访问临界区。
ii. 此方法可能导致死锁。
以下哪项正确？（ ）
', '[''(i) 错误且 (ii) 正确'', ''(i) 和 (ii) 均错误'', ''(i) 正确且 (ii) 错误'', ''(i) 和 (ii) 均正确'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键分析</font></strong></font></strong>

- 当 P1 执行至`critical_flag = TRUE;`后被中断，P2 检查`critical_flag`仍为`FALSE`，因此可进入临界区。此时两个进程同时处于临界区，验证了 (i) 的正确性。
- 关于 (ii)，由于每次进入临界区后都会重置`critical_flag`为`FALSE`，不存在标志位为`TRUE`而无进程占用的场景，因此不会发生死锁。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>  
陈述 (i) 正确，陈述 (ii) 错误。', 9, 'Mogullzr', '2026-02-02 11:52:38', 9, NULL, '2026-02-02 11:52:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5538');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5539, '408考研练习题——操作系统——进程管理第68题', '简单', '408考研练习题——操作系统——进程管理', '考虑以下三个线程 T1、T2 和 T3 在单处理器上执行，使用三个二进制信号量变量 S1、S2 和 S3 进行同步，通过标准的 wait() 和 signal() 操作。线程可以在任何顺序和任何时间进行上下文切换。哪种信号量初始化方式会打印出序列 BCABCABCA…？

```c
while(true) {
    wait(S3);
    print("C");
    signal(S2);
}
```
T1

```c
while(true) {
    wait(S1);
    print("B");
    signal(S3);
}
```
T2

```c
while(true) {
    wait(S2);
    print("A");
    signal(S1);
}
```
T3
', '[''S1=1; S2=1; S3=1'', ''S1=1; S2=1; S3=0'', ''S1=1; S2=0; S3=0'', ''S1=0; S2=1; S3=1'']', "['C']", 'C</font></strong>
若初始时 S1 = 1，S2 = 0，S3 = 0，则进程 T2 可成功执行`wait(S1);`，而 T1 和 T3 分别卡在`wait(S3);`和`wait(S2);`上。T2 打印 B 后执行`signal(S3)`，随后卡在`wait(S1);`（此过程中打印 B）。此时进程 T1 可成功执行`wait(S3);`，然后打印“C”，接着执行`signal(S2);`并卡在`wait(S3);`（此过程中打印 C）。之后进程 T3 可成功执行`wait(S2);`，打印“A”，再执行`signal(S1);`并卡在`wait(S2);`（此过程中打印 A）。此后 T2 又可成功执行`wait(S1);`。该过程不断重复，最终输出序列为<strong><font color=''#2656b3''>BCABCABCA…</font></strong>。因此选项 C 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:52:38', 9, NULL, '2026-02-02 11:52:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5539');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5540, '408考研练习题——操作系统——进程管理第69题', '简单', '408考研练习题——操作系统——进程管理', '屏障（Barrier）是一种同步构造，其中一组进程需要进行全局同步。即集合中的每个进程都必须到达屏障并等待其他所有进程也到达后，所有进程才能一起离开屏障。假设集合中进程数量为三个，S 是一个二进制信号量，具有常规的 P 和 V 操作。考虑以下带有行号的 C 语言实现：

```c
void barrier(void) {
    1: P(S);
    2: process_arrived++;
    3: V(S);
    4: while(process_arrived != 3);
    5: P(S);
    6: process_left++;
    7: if(process_left == 3){
    8:     process_arrived = 0;
    9:     process_left = 0;
   10: }
   11: V(S);
}
```
变量`process_arrived`和`process_left`在所有进程中共享，并初始化为零。在并发程序中，当三个进程需要进行全局同步时会调用该屏障函数。
以下哪一项可以修正该实现中的问题？（ ）
', '[''将第 6 到 10 行简单替换为`process_arrived--`'', ''在屏障开始处，第一个进入屏障的进程会等待直到`process_arrived`变为零，然后继续执行 P(S)'', ''在屏障开始处禁用上下文切换，在结束时重新启用'', ''将变量`process_left`改为私有而非共享'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
```c
// 修改后的伪代码示意
void barrier(void) {
    if (process_arrived != 0) {
        P(S); // 等待前一轮屏障完成
    }
    // 原有逻辑...
}
```
', 9, 'Mogullzr', '2026-02-02 11:52:38', 9, NULL, '2026-02-02 11:52:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1346', '5540');
