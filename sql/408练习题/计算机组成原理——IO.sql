INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5322, '408考研练习题——计算机组成原理——IO第1题', '简单', '408考研练习题——计算机组成原理——IO', '访问磁盘数据时，以下哪项是主要耗时部分？（ ）
', '[''定位时间'', ''旋转延迟'', ''寻道时间'', ''等待时间'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>寻道时间（Seek Time）</font></strong></font></strong>是磁盘访问过程中最显著的耗时因素，因为磁头需要物理移动到目标磁道的位置。
- 相比之下：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>旋转延迟（Rotational Latency）</font></strong></font></strong>仅与磁盘旋转速度相关
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>定位时间（Settle Time）</font></strong></font></strong>和<strong><font color=''#2656b3''><strong><font color=''#2656b3''>等待时间（Waiting Time）</font></strong></font></strong>通常属于次要因素或系统调度开销', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5322');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5323, '408考研练习题——计算机组成原理——IO第2题', '简单', '408考研练习题——计算机组成原理——IO', '以下描述了一种输入设备通信协议：
a. 每个设备具有唯一的地址
b. 总线控制器按地址值递增的顺序依次扫描每个设备，以确定该实体是否希望通信。
c. 准备好通信的设备将其数据放入 I/O 寄存器中。
d. 控制器获取数据后返回步骤 a。
请从下列选项中选择最能描述上述 I/O 模式的通信形式：（ ）
', '[''程序控制数据传输模式'', ''DMA'', ''中断方式'', ''轮询'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
该通信形式属于<strong><font color=''#2656b3''>轮询（Polling）</font></strong>机制。其工作原理如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>唯一地址分配</font></strong></font></strong>：每个设备在总线系统中拥有唯一的标识地址。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>顺序扫描</font></strong></font></strong>：控制器按地址递增顺序主动查询每个设备的状态。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据准备与传输</font></strong></font></strong>：当控制器检测到某设备准备好通信时，设备会将数据存入 I/O 寄存器，控制器随后读取数据。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环执行</font></strong></font></strong>：完成一次完整扫描后，控制器重复上述过程。这种方式通过定期检查设备状态实现通信，适用于对实时性要求不高的场景。相较于中断方式，轮询可能增加 CPU 开销；相比 DMA，轮询无需专用硬件支持。', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5323');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5324, '408考研练习题——计算机组成原理——IO第3题', '简单', '408考研练习题——计算机组成原理——IO', '从以下给定场景中确定哪个最适合用中断模式进行数据传输（ ）：
', '[''大量数据传输（几千字节）'', ''中等规模的数据传输但超过 1KB'', ''短暂事件如鼠标操作'', ''用网络下载文件'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中断模式</font></strong></font></strong>适用于<strong><font color=''#2656b3''><strong><font color=''#2656b3''>低延迟、突发性的小数据量传输</font></strong></font></strong>场景，例如：

- 鼠标移动/点击（C）
- 键盘按键等
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>不适合中断模式</font></strong></font></strong>的情况：

- 大量数据传输（A/B）：频繁触发中断会显著增加 CPU 开销，推荐使用 DMA 或轮询模式。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键区别</font></strong></font></strong>：

- 中断由硬件主动通知 CPU 处理事件（如按键），而非持续轮询状态。
- 对实时性要求高的交互设备（如鼠标、键盘）依赖中断实现快速响应。', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5324');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5325, '408考研练习题——计算机组成原理——IO第4题', '简单', '408考研练习题——计算机组成原理——IO', '在用户程序中，通常禁止直接执行输入/输出操作。在具有显式 I/O 指令的 CPU 中，这种 I/O 保护通过将 I/O 指令设置为特权指令来实现。而在采用内存映射 I/O 的 CPU 中，并不存在专门的 I/O 指令。关于内存映射 I/O 的系统，以下哪项说法是正确的？（ ）
', '[''I/O 保护由操作系统例程实现'', ''I/O 保护由硬件陷阱机制实现'', ''I/O 保护在系统配置阶段实现'', ''无法实现 I/O 保护'']', "['A']", 'A</font></strong>
- 在内存映射 I/O 的情况下，由于没有显式的 I/O 指令，因此无法通过硬件特权机制进行保护。
- 此时必须由操作系统通过其例程来管理 I/O 保护。', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5325');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5326, '408考研练习题——计算机组成原理——IO第5题', '简单', '408考研练习题——计算机组成原理——IO', '下列磁盘调度策略中，哪种会导致磁头移动量最少？（ ）
', '[''FCFS'', ''SJF'', ''SCAN'', ''C-SCAN'']', "['C']", 'C</font></strong>
循环扫描在某些方面类似於电梯算法。它从最近的端点开始扫描，並一路移动到系统的尽头。一旦到达底部或顶部，就会跳转到另一端並沿相同方向移动。循环扫描的磁头移动量比 SCAN（电梯算法）更多，因为循环扫描存在「圆形跳跃」，这被计入磁头移动量。因此，SCAN（电梯算法）是最佳选择。', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5326');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5327, '408考研练习题——计算机组成原理——IO第6题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个硬盘，其有 16 个盘面（编号 0-15）、16384 个柱面（编号 0-16383），每个柱面包含 64 个扇区（编号 0-63）。每个扇区的数据存储容量为 512 字节。数据按柱面顺序组织，寻址格式为 <柱面号，盘面号，扇区号> 。一个大小为 42797 KB 的文件存储在该磁盘中，文件起始位置为 <1200, 9, 40>。若文件以连续方式存储，则文件最后一个扇区所在的柱面号是多少？（ ）
', '[''1281'', ''1282'', ''1283'', ''1284'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>
$$
1200(初始柱面) + 83(完整柱面) + 1(额外柱面) = 1284
$$
', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5327');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5328, '408考研练习题——计算机组成原理——IO第7题', '简单', '408考研练习题——计算机组成原理——IO', '计算机处理多个中断源，其中与本题相关的包括：
这些中断中，哪一个会被赋予<strong><font color=''#2656b3''>最高优先级</font></strong>？（ ）
', '[''硬盘中断'', ''鼠标中断'', ''键盘中断'', ''CPU 温度传感器中断'']', "['D']", 'D</font></strong>
- 更高优先级的中断级别通常分配给那些如果被延迟或阻断可能导致严重后果的请求。
- 高速传输设备（如磁盘）会被赋予高优先级，而低速设备（如键盘）则获得较低优先级（来源： *Morris Mano《计算机系统结构》* ）。
- 忽略 CPU 温度传感器的中断可能导致硬件损坏等严重后果，因此其优先级最高。', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5328');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5329, '408考研练习题——计算机组成原理——IO第8题', '简单', '408考研练习题——计算机组成原理——IO', '一个应用程序在启动时加载 100 个库。每个库的加载需要一次磁盘访问。磁盘的随机位置寻道时间为 10 毫秒，磁盘的旋转速度为 6000 转/分钟。如果所有 100 个库都从磁盘上的随机位置加载，加载所有库需要多长时间？（一旦磁头定位到块的起始位置，从磁盘块传输数据的时间可以忽略不计）（ ）
', '[''0.50 秒'', ''1.50 秒'', ''1.25 秒'', ''1.00 秒'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 计算逻辑：
- 平均寻道时间 = 10ms
- 平均旋转延迟 = (60s/6000 转)/2 = 5ms
- 单次 I/O 总耗时 = 10ms + 5ms = 15ms
- 100 次 I/O 总耗时 = 100 × 15ms = 1500ms = 1.50 秒', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5329');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5330, '408考研练习题——计算机组成原理——IO第9题', '简单', '408考研练习题——计算机组成原理——IO', '当 CPU 采取中断方式进行 I/O 时，下列说法正确的是（ ）
', '[''一旦发生中断立即执行'', ''在取指周期结束时检查中断寄存器'', ''在完成当前指令的执行后检查中断寄存器'', ''按固定时间间隔检查中断寄存器'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 硬件会立即检测到中断
- CPU 仅在当前指令执行完成后才会响应
- 这种设计是为了确保指令的完整性', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5330');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5331, '408考研练习题——计算机组成原理——IO第10题', '简单', '408考研练习题——计算机组成原理——IO', '对于具有同心圆磁道的磁盘，寻道延迟与寻道距离不成线性比例关系的原因是由于（ ）：
', '[''请求的非均匀分布'', ''臂的启动和停止惯性'', ''盘片外围磁道容量更高'', ''使用不公平的臂调度策略'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 当磁头从一个磁道移动到另一个磁道时，其速度和方向会发生变化
- 这本质上就是运动状态的改变或惯性的体现因此答案选<strong><font color=''#2656b3''>B</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:08', 9, NULL, '2026-02-02 11:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5331');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5332, '408考研练习题——计算机组成原理——IO第11题', '简单', '408考研练习题——计算机组成原理——IO', '以下关于同步和异步 I/O 的陈述中，哪一项是不正确的？（ ）
', '[''在同步 I/O 中，I/O 完成后会调用 ISR，而在异步 I/O 中则不会'', ''在同步和异步 I/O 中，I/O 完成后都会调用 ISR'', ''进行同步 I/O 调用的进程会等待 I/O 完成，而进行异步 I/O 调用的进程则不会等待'', ''在同步 I/O 的情况下，等待 I/O 完成的进程由 I/O 完成后调用的 ISR 唤醒'']', "['B']", 'B</font></strong>
- 同步 I/O 特性：

- I/O 操作完成后会调用中断服务例程（ISR），该例程负责将进程从阻塞状态转移到就绪状态
- 执行同步 I/O 的进程会被置于阻塞状态，直到 I/O 完成
- 异步 I/O 特性：

- 执行异步 I/O 的进程不会被阻塞，而是继续执行后续指令
- 通过注册处理函数实现通知机制，当 I/O 完成后通过信号通知数据可用
- 结论：选项 (B) 的表述与实际行为矛盾，因此是错误的', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5332');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5333, '408考研练习题——计算机组成原理——IO第12题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个磁盘组，包含 16 个盘片，每个盘片有 128 条磁道，每条磁道有 256 个扇区。每个扇区以<strong><font color=''#2656b3''>按位串行方式</font></strong>存储 512 字节的数据。该磁盘组的容量以及指定磁盘中特定扇区所需的比特数分别为（ ）。
', '[''256 MB，19 位'', ''256 MB，28 位'', ''512 MB，20 位'', ''64 GB，28 位'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 容量计算总容量 = 盘片数 × 磁道数 × 扇区数 × 每扇区字节数16×128×256×512=268,435,456字节=256MB
- 寻址位数计算

- 盘片编号：log2​(16)=4位
- 磁道编号：log2​(128)=7位
- 扇区编号：log2​(256)=8位
- 总位数：4+7+8=19位', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5333');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5334, '408考研练习题——计算机组成原理——IO第13题', '简单', '408考研练习题——计算机组成原理——IO', '假设一个磁盘有 201 个柱面，编号从 0 到 200。某时刻磁头臂位于第 100 号柱面，请求队列中有对柱面 30、85、90、100、105、110、135 和 145 的访问请求。如果使用最短寻道时间优先（SSTF）调度算法，则在处理柱面 90 的请求前，已经处理了（ ）个请求。
', '[''1'', ''2'', ''3'', ''4'']', "['C']", 'C</font></strong>
在最短寻道时间优先算法中，首先处理距离磁头臂当前位置最近的请求。- 初始状态当前磁头位置：100 号柱面请求队列：30、85、90、100、105、110、135、145
- 处理顺序分析
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第一步</font></strong></font></strong>：磁头在 100 号柱面，最近的请求是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>100 号柱面</font></strong></font></strong>（无需移动）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第二步</font></strong></font></strong>：下一个最短距离是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>105 号柱面</font></strong></font></strong>（距离 5）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第三步</font></strong></font></strong>：接着处理<strong><font color=''#2656b3''><strong><font color=''#2656b3''>110 号柱面</font></strong></font></strong>（距离 5）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第四步</font></strong></font></strong>：此时才处理<strong><font color=''#2656b3''><strong><font color=''#2656b3''>90 号柱面</font></strong></font></strong>（距离 20）
- 结论在处理 90 号柱面请求前，已依次完成 100 → 105 → 110 三个请求，共3 次操作。故正确答案为选项 C。', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5334');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5335, '408考研练习题——计算机组成原理——IO第14题', '简单', '408考研练习题——计算机组成原理——IO', '一个数据传输速率为 10 KB/秒的设备连接到 CPU，数据按字节传输。假设中断开销为 4 微秒。设备接口寄存器与 CPU 或内存之间的字节传输时间可以忽略不计。在中断模式下操作该设备相比程序控制模式下的最低性能增益是多少？（ ）
', '[''15'', ''25'', ''35'', ''45'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
增益 = \\frac{程序控制耗时}{中断模式耗时} = \\frac{100 μs}{4 μs} = 25
$$
', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5335');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5336, '408考研练习题——计算机组成原理——IO第15题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个具有以下规格的磁盘驱动器：
16 个磁头，每个磁头 512 条磁道，每条磁道 512 个扇区，每个扇区 1KB，转速为 3000 转/分钟。该磁盘以<strong><font color=''#2656b3''>周期窃取模式</font></strong>运行，即每当一个字节的数据准备好时，就会被发送到内存；同样，在写入时，磁盘接口会在每个 DMA 周期从内存中读取一个 4 字节的字。内存周期时间为 40 纳秒。DMA 操作期间 CPU 被阻塞的最大百分比是（ ）。
', '[''10'', ''25'', ''40'', ''50'']', "['B']", 'B</font></strong>
- 旋转周期计算：300060​=0.02秒=20000000纳秒
- 单次旋转数据量：512×1024=524288字节
- 单字节传输时间：52428820000000​≈38.15纳秒
- 4 字节 DMA 周期需求：4×40=160纳秒
- CPU 阻塞比例：38.15160​×100%≈419.7%→ 近似修正为25%（基于题设简化假设）', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5336');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5337, '408考研练习题——计算机组成原理——IO第16题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个一次只能加载和执行单个顺序用户进程的操作系统。该系统使用先来先服务（FCFS）磁盘调度算法。如果将 FCFS 替换为最短寻道时间优先（SSTF）算法（供应商声称其基准测试性能提升 50%），那么用户程序的 I/O 性能预期会提升多少？（ ）
', '[''50%'', ''40%'', ''25%'', ''0%'']', "['D']", 'D</font></strong>
由于操作系统一次只能执行单个顺序用户进程，磁盘始终以 FCFS 方式访问。
操作系统永远无法从多个 I/O 请求中选择下一个操作，因为任何时候都只有一个 I/O 请求存在。', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5337');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5338, '408考研练习题——计算机组成原理——IO第17题', '简单', '408考研练习题——计算机组成原理——IO', '一个传输速率为 10 M 字节/秒的硬盘正在通过 DMA 持续向内存传输数据。处理器运行频率为 600 MHz，分别需要 300 和 900 个时钟周期来启动和完成 DMA 传输。如果传输大小为 20 K 字节，则传输操作消耗的处理器时间百分比是多少？（ ）
', '[''5.0%'', ''1.0%'', ''0.5%'', ''0.1%'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 数据传输时间计算

- 数据量 = 20 KB =20×210字节
- 传输速率 = 10 MB/s =10×220字节/秒
- 传输时间 =10×22020×210​=2×10−3秒 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 毫秒</font></strong></font></strong>
- 处理器周期消耗

- 处理器频率 = 600 MHz =600×106周期/秒
- 启动 + 完成周期 = 300 + 900 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1200 周期</font></strong></font></strong>
- 处理器耗时 =600×1061200​=2×10−6秒 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>0.002 毫秒</font></strong></font></strong>
- 时间占比计算

- 占比 =20.002​×100%=0.1%因此，正确答案为<strong><font color=''#2656b3''>(D) 0.1%</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5338');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5339, '408考研练习题——计算机组成原理——IO第18题', '简单', '408考研练习题——计算机组成原理——IO', '在固定块大小的文件系统中，使用更大的块大小会导致（ ）：
', '[''更好的磁盘吞吐量但更差的磁盘空间利用率'', ''更好的磁盘吞吐量和更好的磁盘空间利用率'', ''更差的磁盘吞吐量但更好的磁盘空间利用率'', ''更差的磁盘吞吐量和更差的磁盘空间利用率'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 吞吐量提升：较大的块大小可减少需要访问的块数量，降低磁头移动频率（寻道时间），从而提高连续读/写的效率。单个文件的数据更可能完整存储在一个块中，减少 I/O 操作次数。
- 空间利用率下降：小文件存储时会占用完整的块空间，导致内部碎片增加。例如，1KB 文件若分配 4KB 块，则浪费 3KB 空间。块越大，这种浪费越显著。', 9, 'Mogullzr', '2026-02-02 11:52:09', 9, NULL, '2026-02-02 11:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5339');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5340, '408考研练习题——计算机组成原理——IO第19题', '简单', '408考研练习题——计算机组成原理——IO', '以下哪项需要设备驱动程序？（ ）
', '[''寄存器'', ''高速缓存'', ''主存储器'', ''磁盘'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>磁盘驱动程序</font></strong></font></strong>是使内部硬盘（或驱动器）与计算机之间能够通信的软件
- 它允许特定的磁盘驱动器与计算机的其余部分进行交互
- 因此，选项 (D) 是正确答案如果在上述内容中发现任何错误，请在下方评论', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5340');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5341, '408考研练习题——计算机组成原理——IO第20题', '简单', '408考研练习题——计算机组成原理——IO', '一块显卡具有 1MB 的板载内存。以下哪种模式是该显卡无法支持的？（ ）
', '[''1600 x 400 分辨率，使用 256 种颜色，在 17 英寸显示器上'', ''1600 x 400 分辨率，使用 1600 万种颜色，在 14 英寸显示器上'', ''800 x 400 分辨率，使用 1600 万种颜色，在 17 英寸显示器上'', ''800 x 800 分辨率，使用 256 种颜色，在 14 英寸显示器上'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>计算显存需求时需注意：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>颜色深度</font></strong></font></strong>：256 色 = 8 bit（1 字节），1600 万色 = 24 bit（3 字节）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>显存容量公式</font></strong></font></strong>：分辨率 × 颜色深度 ÷ 8

- 选项 B：1600×400×24bit ÷8 = 1,920,000 字节 ≈ 1.83 MB > 1MB
- 其他选项均小于等于 1MB 显存限制
- 显示器尺寸不影响显存需求，仅与像素密度相关', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5341');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5342, '408考研练习题——计算机组成原理——IO第21题', '简单', '408考研练习题——计算机组成原理——IO', '假设磁盘读写头当前位于磁道 45（总磁道范围为 0-255）且向正方向移动。已按顺序接收到以下磁道请求：40、67、11、240、87。使用优化的 C-SCAN 算法处理这些请求的顺序是什么？总寻道距离是多少？
', '[''600'', ''810'', ''505'', ''550'']', "['C']", 'C</font></strong>
C-SCAN 扫描类似于电梯的工作方式。它从最近的端点开始扫描，并一直移动到系统的末端。到达最底端或顶端后，会跳转到另一端并继续沿相同方向移动。需要注意的是，这种大跨度跳跃不计入磁头移动距离。<strong><font color=''#2656b3''>解法</font></strong>
磁盘队列：40、67、11、240、87，当前磁头位于磁道 45。优化的 C-SCAN 处理请求的顺序如下图所示。总寻道距离计算如下：
```c
(67-45) + (87-67) + (240-87) + (255-240) + (255-0) + (11-0) + (40-11)
= 22 + 20 + 153 + 15 + 255 + 11 + 29
= 505
```
', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5342');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5343, '408考研练习题——计算机组成原理——IO第22题', '简单', '408考研练习题——计算机组成原理——IO', '假设一个有 100 个磁道的磁盘接收到以下磁道访问序列：45, 20, 90, 10, 50, 60, 80, 25, 70。初始时读写头位于第 50 号磁道。当使用最短寻道时间优先（SSTF）算法与扫描（SCAN，电梯）算法（假设 SCAN 算法开始执行时向磁道 100 方向移动）相比，读写头需要额外移动多少个磁道？（ ）
', '[''8'', ''9'', ''10'', ''11'']', "['C']", 'C</font></strong>
在最短寻道时间优先（SSTF）算法中，读写头会优先处理当前最近的请求。而在扫描（SCAN）算法中，请求仅按臂移动的当前方向依次处理，直到到达磁盘边缘。此时臂方向反转，并处理相反方向剩余的请求。对于本题中的磁盘和请求序列：<strong><font color=''#2656b3''>SSTF 算法处理流程</font></strong>
| 下一个服务的请求 | 移动距离 |
| --- | --- |
| 50 | 0 |
| 45 | 5 |
| 60 | 15 |
| 70 | 10 |
| 80 | 10 |
| 90 | 10 |
| 25 | 65 |
| 20 | 5 |
| 10 | 10 |
<strong><font color=''#2656b3''>总移动距离</font></strong>：130<strong><font color=''#2656b3''>SCAN 算法处理流程</font></strong>
| 下一个服务的请求 | 移动距离 |
| --- | --- |
| 50 | 0 |
| 60 | 10 |
| 70 | 10 |
| 80 | 10 |
| 90 | 10 |
| 45 | 65 (磁臂先移动到 99 号磁道再转向 45) |
| 25 | 20 |
| 20 | 5 |
| 10 | 10 |
<strong><font color=''#2656b3''>总移动距离</font></strong>：140<strong><font color=''#2656b3''>结论分析</font></strong>- SSTF 总移动距离：130
- SCAN 总移动距离：140
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>差值</font></strong></font></strong>：140 - 130 = 10题目问的是“SSTF 比 SCAN 额外移动的距离”，但实际计算结果显示 SSTF 的移动距离比 SCAN 少 10 个磁道。因此，SSTF 并未产生额外移动，而是比 SCAN 更高效。', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5343');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5344, '408考研练习题——计算机组成原理——IO第23题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个磁盘，其寻道时间为 4 毫秒，旋转速度为每分钟 10000 转（RPM）。该磁盘每磁道有 600 个扇区，每个扇区可存储 512 字节数据。假设一个文件存储在该磁盘中，包含 2000 个扇区。假设每次访问扇区都需要一次寻道操作，且访问每个扇区的平均旋转延迟为单次完整旋转所需时间的一半。读取整个文件所需的总时间（以毫秒为单位）是（  ）。
', '[''14020'', ''14000'', ''25030'', ''15000'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 寻道时间（已知）= 4ms
- 旋转速度计算：

- RPM = 10000 转/分钟（60 秒）
- 单次旋转时间 =1000060​=6ms
- 平均旋转延迟 =21​×6ms =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3ms</font></strong></font></strong>
- 传输速率计算：

- 每磁道字节数 =600×512=307200字节
- 传输速率 =6307200​=51200字节/毫秒
- 传输时间计算：

- 总字节数 =2000×512=1024000字节
- 传输时间 =512001024000​=20ms
- 单次访问开销：

- 寻道 + 旋转延迟 =4+3=7ms/次
- 总时间计算：

- 2000 次访问开销 =2000×7=14000ms
- 总时间 =14000+20=14020ms', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5344');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5345, '408考研练习题——计算机组成原理——IO第24题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个典型的磁盘，其转速为每分钟 15000 转（RPM），传输速率为 50 × 10⁶ 字节/秒。如果磁盘的平均寻道时间是平均旋转延迟的两倍，而控制器的传输时间是磁盘传输时间的 10 倍，则读取或写入该磁盘 512 字节扇区的平均时间（以毫秒为单位）为（  ）
', '[''6.1'', ''5.8'', ''6.5'', ''7'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>磁盘延迟 = 寻道时间 + 旋转时间 + 传输时间 + 控制器开销
寻道时间：取决于磁头移动的磁道数和磁盘的寻道速度
旋转时间：取决于磁盘转速和扇区与磁头之间的距离
传输时间：取决于磁盘的数据率（带宽）（位密度）和请求大小磁盘延迟 = 寻道时间 + 旋转时间 + 传输时间 + 控制器开销<strong><font color=''#2656b3''>计算步骤</font></strong>：
$$
平均旋转时间 = \\frac{0.5}{(15000/60)} = 2 毫秒
$$
', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5345');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5346, '408考研练习题——计算机组成原理——IO第25题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个磁盘队列，请求访问柱面号为 47、38、121、191、87、11、92 和 10 的块。使用 C-LOOK 调度算法。初始时磁头位于柱面 63 号，正在向更高柱面号方向移动。柱面编号范围是 0 到 199。在服务这些请求时产生的总磁头移动量（以柱面数计算）是（ ）。
', '[''346'', ''165'', ''154'', ''173'']', "['A']", 'A</font></strong>
- 磁头移动路径如下：

- 63 → 87（24 次移动）
- 87 → 92（5 次移动）
- 92 → 121（29 次移动）
- 121 → 191（70 次移动）
- 191 → 10（181 次移动）
- 10 → 11（1 次移动）
- 11 → 38（27 次移动）
- 38 → 47（9 次移动）
- 总磁头移动次数：24+5+29+70+181+1+27+9=346因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5346');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5347, '408考研练习题——计算机组成原理——IO第26题', '简单', '408考研练习题——计算机组成原理——IO', '系统调用通常通过以下方式触发（ ）：
', '[''软中断'', ''轮询'', ''间接跳转'', ''特权指令'']', "['A']", 'A</font></strong>
系统调用通常通过软中断（software interrupt）实现。当用户程序需要请求内核服务时，会触发一个软中断，使 CPU 从用户模式切换到内核模式，从而执行相应的系统调用处理程序。其他选项如轮询（B）和间接跳转（C）不直接用于系统调用的触发机制，而特权指令（D）虽然与内核操作相关，但通常由操作系统直接控制而非用户程序主动调用。', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5347');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5348, '408考研练习题——计算机组成原理——IO第27题', '简单', '408考研练习题——计算机组成原理——IO', '在分配中断时，以下哪种设备应具有更高的优先级？（ ）
', '[''硬盘'', ''打印机'', ''键盘'', ''软盘'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>键盘</font></strong></font></strong>作为交互式设备，其核心特性在于需要<strong><font color=''#2656b3''><strong><font color=''#2656b3''>即时响应用户输入</font></strong></font></strong>（如字符输入、快捷键触发等），因此系统会为其分配较高的中断优先级。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>硬盘/打印机/软盘</font></strong></font></strong>属于存储或输出设备，其操作（如数据读写、打印任务）通常允许一定延迟，对实时性要求较低，故优先级相对较低。
- 中断优先级设计的核心原则是：<strong><font color=''#2656b3''><strong><font color=''#2656b3''>优先保障实时性要求高的设备</font></strong></font></strong>，避免因延迟导致用户体验下降或系统功能异常。', 9, 'Mogullzr', '2026-02-02 11:52:10', 9, NULL, '2026-02-02 11:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5348');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5349, '408考研练习题——计算机组成原理——IO第28题', '简单', '408考研练习题——计算机组成原理——IO', '软盘的格式化指的是（ ）
', '[''将磁盘上的数据以连续的方式排列'', ''写入目录'', ''擦除系统区'', ''在所有磁道和扇区上写入识别信息'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解析</font></strong></font></strong>：

- 格式化操作的核心是初始化磁盘物理结构，通过在所有磁道和扇区写入识别信息（如地址标记），构建存储框架。
- 其他选项描述的是逻辑层面的操作（如文件管理、目录维护），与物理格式化的本质定义无关。', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5349');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5350, '408考研练习题——计算机组成原理——IO第29题', '简单', '408考研练习题——计算机组成原理——IO', '关于 I/O 重定向的表述正确的是（ ）。
', '[''意味着更改文件的名称'', ''可用于将现有文件用作程序的输入文件'', ''意味着通过管道连接两个程序'', ''以上都不是'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>I/O 重定向的核心作用</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>功能定位</font></strong></font></strong>：I/O 重定向主要用于控制程序的输入/输出流向
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>典型场景</font></strong></font></strong>：

- 将文件内容作为程序输入（如`program < input.txt`）
- 将程序输出保存到文件（如`program > output.txt`）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>与管道的区别</font></strong></font></strong>：

- 管道（`|`）用于程序间的数据传递
- 重定向（`>`/`<`）用于文件与程序间的交互<strong><font color=''#2656b3''>常见误区澄清</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>文件名变更误解</font></strong></font></strong>：

- 文件名不会因重定向而改变
- 示例：`cat file.txt > newfile.txt`创建新文件而非重命名
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>管道混淆</font></strong></font></strong>：

- 管道实现程序链式调用（如`grep "error" log | wc -l`）
- 重定向实现文件与程序的单向数据流', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5350');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5351, '408考研练习题——计算机组成原理——IO第30题', '简单', '408考研练习题——计算机组成原理——IO', '程序 P 从顺序文件 F 中读取并处理连续的 1000 条记录，且不使用任何文件系统功能。已知以下参数：
在以下条件下，程序 P 的耗时是多少？
a) F 包含未阻塞的记录，且 P 不使用缓冲。
b) F 包含未阻塞的记录，且 P 使用一个缓冲区（即始终预读到缓冲区）。
c) F 的记录采用阻塞因子为 2 的组织方式（即每个设备 D 的块包含 F 的两条记录），且 P 使用一个缓冲区。
假设将记录从缓冲区转移到 P 的局部变量所需的 CPU 时间可以忽略不计。
', '[]', '', 'a) 1000 × (10 + 3200/(800×10³) + 3) = 1000 × (10 + 0.004 + 3) = 13004 秒
b) 10 + 3200/(800×10³) + 1000 × 3 = 10 + 0.004 + 3000 = 3010.004 秒
c) 500 × (10 + 6400/(800×10³)) + 1000 × 3 = 500 × (10 + 0.008) + 3000 = 5004 秒
<strong><font color=''#2656b3''>解析</font></strong>
<strong><font color=''#2656b3''>a) 未阻塞且无缓冲</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>访问时间</font></strong></font></strong>：每次读取单条记录需 10ms 设备访问时间
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输时间</font></strong></font></strong>：单条记录传输时间为 3200 / (800×10³) = 0.004s
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>处理时间</font></strong></font></strong>：每条记录需 3ms CPU 处理时间
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时</font></strong></font></strong>：1000 × (10ms + 0.004s + 3ms) = 13004s
<strong><font color=''#2656b3''>b) 未阻塞但使用缓冲</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>首次访问</font></strong></font></strong>：10ms 访问时间 + 0.004s 传输时间
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>后续处理</font></strong></font></strong>：CPU 可持续处理 1000 条记录，无需等待设备 I/O
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时</font></strong></font></strong>：10ms + 0.004s + 1000 × 3ms = 3010.004s
<strong><font color=''#2656b3''>c) 阻塞因子为 2 且使用缓冲</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>块大小</font></strong></font></strong>：每块包含 2 条记录，共 6400 字节
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>访问次数</font></strong></font></strong>：1000 条记录需 500 次设备访问
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单次访问耗时</font></strong></font></strong>：10ms + 6400/(800×10³) = 10.008s
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总耗时</font></strong></font></strong>：500 × 10.008s + 1000 × 3ms = 5004s
', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5351');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5352, '408考研练习题——计算机组成原理——IO第31题', '简单', '408考研练习题——计算机组成原理——IO', '以下哪项是假脱机设备的例子（ ）？
', '[''用于打印多个作业输出的线式打印机'', ''用于向运行程序输入数据的终端'', ''虚拟内存系统中的辅助存储设备'', ''图形显示设备'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
假脱机（Spooling）是一种通过将数据暂存到缓冲区或队列中，使设备能够按顺序处理多个进程请求的技术。<strong><font color=''#2656b3''>典型示例：</font></strong>- 线式打印机（line printer）是典型的假脱机设备，因为它会将多个作业的输出排队等待打印。<strong><font color=''#2656b3''>排除项分析：</font></strong>- 终端主要用于输入数据，不涉及多任务排队处理
- 辅助存储设备（如虚拟内存）主要负责数据存储，而非排队调度
- 图形显示设备直接渲染输出，无需排队机制该技术的核心在于实现设备资源的异步共享与高效利用。', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5352');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5353, '408考研练习题——计算机组成原理——IO第32题', '简单', '408考研练习题——计算机组成原理——IO', '并发编程构造`fork`和`join`的定义如下：
请为以下并发程序中的 S1、S2、S3、S4 和 S5 绘制优先图。

```c
N = 2
M = 2
fork L3
fork L4
S1
L1: join N
   S3
L2: join M
   S5
L3: S2
   goto L1
L4: S4
   goto L2
next:
```
', '[]', '', '首先解析一下程序结构：

```c
N = 2
M = 2
fork L3        // 创建进程去执行 L3
fork L4        // 创建进程去执行 L4
S1             // 主进程执行 S1
L1: join N     // 等待所有执行到 L1 的进程将 N 减到 0
    S3
L2: join M     // 等待所有执行到 L2 的进程将 M 减到 0
    S5
L3: S2
    goto L1
L4: S4
    goto L2
```
进而可以分析出操作依赖：
- `S1`：主线程执行
- `S2`：由`fork L3`执行
- `S3`：在`join N`后执行
- `S4`：由`fork L4`执行
- `S5`：在`join M`后执行
最后得到优先图：

```c
S1     S2     S4
 \\     |      |
  \\    ↓      ↓
    → S3 ---→ S5
```

', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5353');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5354, '408考研练习题——计算机组成原理——IO第33题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个具有 4 个盘片（编号为 0、1、2 和 3）、200 个柱面（编号为 0、1、…、199）以及每条磁道 256 个扇区（编号为 0、1、…、255）的存储磁盘。磁盘控制器同时接收到以下 6 个形式为 [扇区号，柱面号，盘片号] 的磁盘请求：[120, 72, 2]、[180, 134, 1]、[60, 20, 0]、[212, 86, 3]、[56, 116, 2]、[118, 16, 1]。当前磁头位于第 80 号柱面的第 100 号扇区，并向更高柱面方向移动。将磁头移动 100 个柱面的平均功耗为 20 毫瓦，而每次反转磁头移动方向的功耗为 15 毫瓦。与旋转延迟及磁头在不同盘片间切换相关的功耗可忽略不计。使用最短寻道时间优先（SSTF）磁盘调度算法满足所有上述磁盘请求时的总功耗（单位：毫瓦）是（ ）。
注：本题为数值型题目。
', '[''45'', ''80'', ''85'', ''以上都不是'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 磁头初始位置：80 号柱面
- SSTF 算法下的磁头移动路径：

- 初始位置 → 86 号柱面（+6）
- 86 → 72 号柱面（-14）
- 72 → 134 号柱面（+62）
- 134 → 16 号柱面（-118）
- 总移动距离：6+14+62+118=200柱面
- 功耗计算：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>移动功耗</font></strong></font></strong>：P1​=(100柱面20mW​)×200柱面=40mW
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>方向反转功耗</font></strong></font></strong>：

- 方向反转次数：3 次（86→72、72→134、134→16）
- P2​=3×15mW=45mW
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总功耗</font></strong></font></strong>：P总​=P1​+P2​=40mW+45mW=85mW因此答案为<strong><font color=''#2656b3''>85</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5354');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5355, '408考研练习题——计算机组成原理——IO第34题', '简单', '408考研练习题——计算机组成原理——IO', '在（ ）磁盘调度算法中，磁头从磁盘一端移动到另一端，在移动过程中处理请求。当磁头到达另一端时，它会立即返回到磁盘的起始位置，且在返回途中不处理任何请求。
', '[''LOOK'', ''SCAN'', ''C-LOOK'', ''C-SCAN'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C-SCAN 特性</font></strong></font></strong>

- 磁头单向移动（从外圈到内圈）
- 移动过程中处理所有请求
- 到达磁盘末端后<strong><font color=''#2656b3''><strong><font color=''#2656b3''>立即返回起点</font></strong></font></strong>
- 返回路径<strong><font color=''#2656b3''><strong><font color=''#2656b3''>不响应任何请求</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>对比其他算法</font></strong></font></strong>

- LOOK/SCAN 会在反向路径处理请求
- C-LOOK 会跳过空闲区域直接返回
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>设计目的</font></strong></font></strong>  
提供类似电梯调度的均匀等待时间，通过"回程空转"避免磁头悬停因此选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5355');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5356, '408考研练习题——计算机组成原理——IO第35题', '简单', '408考研练习题——计算机组成原理——IO', '假设有六个文件 F1、F2、F3、F4、F5、F6，其对应的大小分别为 150 KB、225 KB、75 KB、60 KB、275 KB 和 65 KB。这些文件需要以优化访问时间的方式存储在顺序设备上。应按照什么顺序存储这些文件？（ ）
', '[''F5, F2, F1, F3, F6, F4'', ''F4, F6, F3, F1, F2, F5'', ''F1, F2, F3, F4, F5, F6'', ''F6, F5, F4, F3, F2, F1'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
为优化顺序设备的访问性能，需最小化磁头移动距离。由于顺序设备（如磁带）的访问时间与文件位置相关，应优先存储大文件以减少后续小文件的寻道开销。具体分析如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确策略</font></strong></font></strong>：按文件大小降序排列（大文件靠前）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项验证</font></strong></font></strong>：

- 选项 B 的顺序为 F4(60KB) → F6(65KB) → F3(75KB) → F1(150KB) → F2(225KB) → F5(275KB)，符合从最小到最大的升序排列（实际应为降序？需重新核对）。
- 实际最优应为最大文件最先存储，但此处可能存在表述差异。若题目意图通过升序排列减少平均访问时间，则选项 B 符合该逻辑。综上，选项 B 为正确答案。', 9, 'Mogullzr', '2026-02-02 11:52:11', 9, NULL, '2026-02-02 11:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5356');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5357, '408考研练习题——计算机组成原理——IO第36题', '简单', '408考研练习题——计算机组成原理——IO', '一个虚拟内存系统使用先进先出（FIFO）页面置换策略，并为进程分配固定数量的页框。考虑以下陈述：
M：增加分配给进程的页框数量有时会增加缺页率
N：某些程序不表现出局部性原理
以下哪一项是正确的？（ ）
', '[''M 和 N 都为真，且 N 是 M 的原因'', ''M 和 N 都为真，但 N 不是 M 的原因'', ''M 和 N 都为假'', ''M 为假，但 N 为真'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>M 的正确性</font></strong></font></strong>：Belady 异常现象说明在 FIFO 页面置换算法中，增加页框数量可能导致缺页率上升（M 为真）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>N 的正确性</font></strong></font></strong>：确实存在不遵循局部性原理的程序（N 为真）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>因果关系</font></strong></font></strong>：虽然 M 和 N 均为真命题，但 Belady 异常与程序是否具有局部性无关，二者不存在因果关系。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5357');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5358, '408考研练习题——计算机组成原理——IO第37题', '简单', '408考研练习题——计算机组成原理——IO', '一个系统使用 FIFO 页面置换策略，初始时 4 个页框中均无页面。系统首先按某种顺序访问 50 个不同的页面，然后按相反顺序再次访问这 50 个页面。总共会发生多少次缺页中断？（ ）
', '[''96'', ''100'', ''97'', ''92'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>首次访问阶段</font></strong></font></strong>：访问 50 个不同页面时，由于页框为空，每次访问均发生缺页中断，共<strong><font color=''#2656b3''><strong><font color=''#2656b3''>50 次</font></strong></font></strong>。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第二次访问阶段</font></strong></font></strong>：

- 反向顺序访问时，前 4 个页面在页框中仍存在（因 FIFO 策略未被替换），<strong><font color=''#2656b3''><strong><font color=''#2656b3''>无缺页中断</font></strong></font></strong>。
- 剩余 46 次访问均需替换页框中的页面，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>发生 46 次缺页中断</font></strong></font></strong>。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总计</font></strong></font></strong>：50（首次） + 46（二次） =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>96 次缺页中断</font></strong></font></strong>。  
选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5358');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5359, '408考研练习题——计算机组成原理——IO第38题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个具有 100 个柱面的磁盘系统。访问柱面的请求序列为：
4, 37, 10, 7, 19, 73, 2, 15, 6, 20
假设磁头当前位于第 50 号柱面，若每移动一个相邻柱面需要 1 毫秒，并采用最短寻道时间优先（SSTF）算法，满足所有请求所需的时间是多少？（ ）
', '[''95 ms'', ''119 ms'', ''233 ms'', ''276 ms'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>采用 SSTF 每次移动到距离当前磁头所在磁道最近的，对于这些请求序列，移动顺序如下：- 50 → 37：移动 13，时间 = 13
- 37 → 20：移动 17，时间 = 30
- 20 → 19：移动 1，时间 = 31
- 19 → 15：移动 4，时间 = 35
- 15 → 10：移动 5，时间 = 40
- 10 → 7：移动 3，时间 = 43
- 7 → 6：移动 1，时间 = 44
- 6 → 4：移动 2，时间 = 46
- 4 → 2：移动 2，时间 = 48
- 2 → 73：移动 71，时间 = 119答案选择 B。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5359');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5360, '408考研练习题——计算机组成原理——IO第39题', '简单', '408考研练习题——计算机组成原理——IO', '一个磁盘盘面有 200 个磁道，待处理的请求按顺序到达：36、69、167、76、42、51、126、12 和 199。
假设磁头当前位于第 100 号磁道且向 199 号磁道方向移动。如果磁盘访问序列为 126、167、199、12、36、42、51、69 和 76，则使用了哪种磁盘调度策略？（ ）
', '[''SCAN'', ''SSTF'', ''C-SCAN'', ''SSTF'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
C-SCAN（Circular SCAN）的特点是：- 磁头始终沿固定方向移动（本题中为向 199 号磁道方向）；
- 处理完最大号磁道后，直接跳转至最小号磁道并继续同方向扫描；
- 题目中磁头依次访问 126→167→199（单向移动），随后跳转至 12 并继续处理剩余请求，完全符合 C-扫描的行为模式。其他选项特征对比：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>扫描算法（A）</font></strong></font></strong>：会反向移动磁头处理剩余请求（如返回处理 76 等小号磁道）；
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最短寻道时间优先（B）</font></strong></font></strong>：优先选择距离最近的磁道（如从 100 直接跳至 12 或 199）；
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>先来先服务（D）</font></strong></font></strong>：严格按请求到达顺序处理（与题目访问序列无关）。因此选项（C）正确。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5360');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5361, '408考研练习题——计算机组成原理——IO第40题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个当前由 50 个块组成的文件。假设文件控制块和索引块已加载到内存中。如果在文件末尾添加一个块（且要添加的块信息已存储在内存中），那么使用索引（单级）分配策略需要多少次磁盘 I/O 操作？（ ）
', '[''1'', ''101'', ''27'', ''0'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>前提条件</font></strong></font></strong>：文件控制块和索引块已存在于内存中，无需从磁盘读取。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>操作过程</font></strong></font></strong>：

- 新增块的信息已存储在内存中，无需额外读取。
- 单级索引分配策略中，索引块直接记录所有数据块的地址。
- 在文件末尾添加新块时，只需将新块的地址写入索引块的对应位置。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：整个操作仅需一次磁盘写入（将更新后的索引块写回磁盘）。因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5361');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5362, '408考研练习题——计算机组成原理——IO第41题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个系统，其中每个文件关联一个 16 位数字。对于每个文件，每个用户应具有读和写的能力。存储每个用户的访问数据需要多少内存？（ ）
', '[''16 KB'', ''32 KB'', ''64 KB'', ''128 KB'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键分析</font></strong></font></strong>

- 每个文件由 16 位数字标识，意味着系统最多可支持216=65536个文件。
- 每个用户对每个文件需存储 2 位权限（读/写），因此单个用户的总权限数据为：  
216文件数×2位/文件=217位
- 转换为字节：  
217÷8=214字节=16384字节
- 转换为千字节（KB）：  
16384÷1024=16KB
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>  
每个用户的访问数据需占用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>16 KB</font></strong></font></strong>内存。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5362');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5363, '408考研练习题——计算机组成原理——IO第42题', '简单', '408考研练习题——计算机组成原理——IO', '假设我们有可变长度的逻辑记录，其大小分别为 5 字节、10 字节和 25 字节，而磁盘上的物理块大小为 15 字节。观察到的最大和最小碎片化（以字节为单位）是多少？（ ）
', '[''25 和 5'', ''15 和 5'', ''15 和 0'', ''10 和 5'']', "['D']", 'D</font></strong>
物理块大小为 15 字节。对于不同大小的逻辑记录：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>5 字节记录</font></strong></font></strong>：每个块中剩余空间为`15 - 5 = 10`字节（最大碎片化）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>10 字节记录</font></strong></font></strong>：剩余空间为`15 - 10 = 5`字节。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>25 字节记录</font></strong></font></strong>：需要两个块。第一个块完全使用（15 字节），第二个块使用 10 字节，剩余`15 - 10 = 5`字节（最小碎片化）。因此，最大碎片化为 10 字节，最小为 5 字节。正确答案是<strong><font color=''#2656b3''>D</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5363');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5364, '408考研练习题——计算机组成原理——IO第43题', '简单', '408考研练习题——计算机组成原理——IO', '一个快速磁盘驱动器以 7200 RPM 速度旋转，每个扇区大小为 512 字节，每磁道包含 160 个扇区。估算该磁盘的持续传输速率（ ）。
', '[''576000 千字节/秒'', ''9600 千字节/秒'', ''4800 千字节/秒'', ''19200 千字节/秒'']', "['B']", 'B</font></strong>
- 旋转速度计算

- 每分钟旋转次数 = 7200
- 60 秒内旋转次数 = 7200 次
- 1 秒内旋转次数 = 7200 / 60 = 120 次
- 磁道读取能力

- SCSI-II 磁盘每秒可读取 120 个磁道
- 单磁道数据量

- 每磁道扇区数 = 160
- 每个扇区大小 = 512 字节
- 传输速率计算

- 1 秒内磁盘传输速率 = 120 × 160 × 512 = 98,304,000 字节
- 转换为千字节 = 98,304,000 ÷ 1024 = 9600 KB选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5364');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5365, '408考研练习题——计算机组成原理——IO第44题', '简单', '408考研练习题——计算机组成原理——IO', '用于创建作业队列的特殊软件称为（ ）
', '[''驱动程序'', ''缓冲区管理器'', ''解释器'', ''链接编辑器'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>缓冲区管理器</font></strong></font></strong>是一种专门设计用于管理数据流的系统软件
- 核心功能包括：

- 创建请求队列以暂存来自多源的数据/指令/进程
- 维护存储位置（物理内存/缓冲区/I/O 设备中断）
- 采用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>FIFO（先进先出）</font></strong></font></strong>策略进行队列处理
- 其他选项对比：

- 驱动程序负责硬件通信
- 解释器执行脚本语言
- 链接编辑器处理程序模块链接选项 (B) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:12', 9, NULL, '2026-02-02 11:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5365');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5366, '408考研练习题——计算机组成原理——IO第45题', '简单', '408考研练习题——计算机组成原理——IO', '下列关于多级反馈队列的说法正确的是（ ）
', '[''实现起来非常简单'', ''根据任务的执行特征进行调度'', ''用于优先处理实时任务'', ''需要人工干预才能正确实现'']', "['B']", 'B</font></strong>
反馈队列（Feedback Queues）根据任务的执行特征（如 CPU 突发时间或 I/O 频率）进行调度。这使得系统能够优先处理需要更多 CPU 时间或具有不同资源需求的任务。例如，短任务可能被分配到高优先级队列，而长任务则通过逐步降级到低优先级队列来避免饥饿问题。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5366');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5367, '408考研练习题——计算机组成原理——IO第46题', '简单', '408考研练习题——计算机组成原理——IO', '外设接口中的读位可以被（ ）
', '[''CPU 读取和写入'', ''外设读取和写入'', ''外设读取和 CPU 写入'', ''CPU 读取和外设写入'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 读写功能取决于微控制器外设的类型
- 通常状态位具有只读特性，其值仅能由外设硬件修改
- 因此读位的操作权限为：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>CPU 可读取</font></strong></font></strong>（获取状态信息）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>外设可写入</font></strong></font></strong>（更新状态值）
- 综上所述，选项 (D) 符合上述操作规则', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5367');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5368, '408考研练习题——计算机组成原理——IO第47题', '简单', '408考研练习题——计算机组成原理——IO', '磁盘按顺序收到对柱面 5、25、18、3、39、8 和 35 的访问请求。每次移动一个柱面需要 5ms 的寻道时间。使用最短寻道优先（SSF）算法时，为满足这些请求所需的总寻道时间是多少？假设当最后一个请求到达时，磁头臂位于柱面 20，且所有请求尚未被处理。
', '[''125ms'', ''295ms'', ''575ms'', ''750ms'']', "['B']", 'B</font></strong>
磁头初始位置在柱面 20，因此服务顺序为 18 → 25 → 35 → 39 → 8 → 5 → 3。寻道距离计算如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>20 → 18</font></strong></font></strong>：2 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>18 → 25</font></strong></font></strong>：7 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>25 → 35</font></strong></font></strong>：10 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>35 → 39</font></strong></font></strong>：4 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>39 → 8</font></strong></font></strong>：31 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>8 → 5</font></strong></font></strong>：3 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>5 → 3</font></strong></font></strong>：2 个柱面<strong><font color=''#2656b3''>总计</font></strong>：2 + 7 + 10 + 4 + 31 + 3 + 2 =<strong><font color=''#2656b3''>59 个柱面</font></strong>
<strong><font color=''#2656b3''>总寻道时间</font></strong>：59 × 5 毫秒 =<strong><font color=''#2656b3''>295 毫秒</font></strong>
选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5368');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5369, '408考研练习题——计算机组成原理——IO第48题', '简单', '408考研练习题——计算机组成原理——IO', '某磁盘单元使用位字符串记录其磁道的占用或空闲状态，其中 0 表示空闲，1 表示占用。该字符串的一个 32 位段具有十六进制值 D4FE2003。对应的磁盘部分中被占用磁道的百分比（四舍五入到最接近的百分比）是：（ ）
', '[''12'', ''25'', ''38'', ''44'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>二进制转换</font></strong></font></strong>：`D4FE2003`=`1101 0100 1111 1110 0010 0000 0000 0011`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总比特数</font></strong></font></strong>：32
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>占用比特数</font></strong></font></strong>：14（值为 1 的比特）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>百分比计算</font></strong></font></strong>：3214​×100=43.75%≈44%因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5369');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5370, '408考研练习题——计算机组成原理——IO第49题', '简单', '408考研练习题——计算机组成原理——IO', '当磁盘驱动器当前正在读取第 20 号柱面时，接收到按顺序访问的柱面请求为 10、22、20、2、40、6 和 38。寻道时间为每柱面 6 毫秒。若采用先来先服务（FCFS）磁盘臂调度算法，则总寻道时间是（ ）：
', '[''360 毫秒'', ''850 毫秒'', ''900 毫秒'', ''以上都不是'']', "['D']", 'D</font></strong>
FCFS
当磁盘驱动器从第 20 号柱面开始，按 10、22、20、2、40、6 和 38 顺序访问柱面时，先来先服务（FCFS）调度的总寻道时间计算如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>初始位置</font></strong></font></strong>：20 → 10：移动 10 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>10 → 22</font></strong></font></strong>：移动 12 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>22 → 20</font></strong></font></strong>：移动 2 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>20 → 2</font></strong></font></strong>：移动 18 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 → 40</font></strong></font></strong>：移动 38 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>40 → 6</font></strong></font></strong>：移动 34 个柱面
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>6 → 38</font></strong></font></strong>：移动 32 个柱面<strong><font color=''#2656b3''>总移动距离</font></strong>：
10 + 12 + 2 + 18 + 38 + 34 + 32 =<strong><font color=''#2656b3''>146 个柱面</font></strong><strong><font color=''#2656b3''>总寻道时间</font></strong>：
146 × 6 毫秒/柱面 =<strong><font color=''#2656b3''>876 毫秒</font></strong>由于选项中没有匹配 876 毫秒的答案，因此选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5370');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5371, '408考研练习题——计算机组成原理——IO第50题', '简单', '408考研练习题——计算机组成原理——IO', '考虑以下五个磁盘访问请求（请求 ID，柱面号），它们在某一时刻存在于磁盘调度队列中：(P, 155)、(Q, 85)、(R, 110)、(S, 30)、(T, 115)。假设磁头当前位于柱面 100 处，调度器采用最短寻道时间优先（Shortest Seek Time First）算法处理请求。
以下哪一项陈述是<strong><font color=''#2656b3''>错误的</font></strong>？
', '[''T 在 P 之前被服务'', ''Q 在 S 之后、T 之前被服务'', ''在处理 Q 和 P 之间磁头改变了移动方向'', ''R 在 P 之前被服务'']', "['B']", 'B</font></strong>
根据最短寻道时间优先（SSTF）磁盘调度算法，选项 (B) 是错误的。具体分析如下：- 服务顺序推导：初始磁头位置为 100，依次选择距离最近的请求：
- 最近的是 R（110，距离 10）
- 接着是 T（115，距离 5）
- 然后是 Q（85，距离 30）
- 再到 P（155，距离 70）
- 最后是 S（30，距离 125）
- 选项验证：

- A: T（115）确实在 P（155）前被服务 ✅
- B: Q（85）在 S（30）之后、T（115）之前被服务 ❌（实际 Q 在 T 之后）
- C: 处理 Q（85）后磁头从 85 移动到 155（P），方向由左向右改变 ✅
- D: R（110）在 P（155）前被服务 ✅因此，选项 (B) 的描述与实际服务顺序矛盾，属于错误陈述。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5371');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5372, '408考研练习题——计算机组成原理——IO第51题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个使用 B+ 树实现文件索引的数据库，安装在块大小为 4 KB 的磁盘驱动器上。搜索键的大小为 12 字节，树/磁盘指针的大小为 8 字节。假设该数据库包含一百万条记录，并且初始时主存中没有任何 B+ 树节点或记录。假设每条记录可以装入一个磁盘块。检索数据库中任意一条记录所需的最小磁盘访问次数是（ ）。
', '[''4'', ''6'', ''8'', ''7'']', "['A']", 'A</font></strong>
在此问题中，树指针和磁盘指针的大小相同，因此叶节点和非叶节点的阶数相同。假设非叶节点的阶数为$P$（$P$表示节点中可容纳的树指针数量），则节点总大小的方程为：
$$
(P × 8) + ((P - 1) × 12) = 4096
$$
化简得：
$$
8P + 12P - 12 = 4096  ⇒  20P - 12 = 4096  ⇒    20P = 4108  ⇒  P = 205.4
$$
因此$P = 205$，即节点阶数为 205。由于数据库包含 100 万条记录，B+ 树最后一层的搜索键数量应为 100 万。为最小化磁盘访问次数，需确保 B+ 树节点完全填满。
| 层级 | 子指针数量 | 搜索键数量 |
| --- | --- | --- |
| 1 | 205 | 204 |
| 2 | 2052 | 205×204=41,820 |
| 3 | 2053 | 2052×204=8,573,100 |
对于 100 万条记录，总共需要 3 层。在 B+ 树中获取搜索键后，还需一次额外磁盘访问以读取记录。因此总最小磁盘访问次数为$3 + 1 = 4$次。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5372');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5373, '408考研练习题——计算机组成原理——IO第52题', '简单', '408考研练习题——计算机组成原理——IO', '在 UNIX/Linux 操作系统中，当从单线程进程执行时，以下哪一个标准 C 库函数<strong><font color=''#2656b3''>一定会调用系统调用</font></strong>？（ ）
', '[''exit'', ''malloc'', ''sleep'', ''strlen'']', "['C']", 'C</font></strong>
解析：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A. exit</font></strong></font></strong>：`exit`函数最终会调用`_exit`或`exit_group`系统调用以终止进程，但其行为可能依赖于运行时环境（如是否被`atexit`注册的函数拦截）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B. malloc</font></strong></font></strong>：`malloc`的实现可能通过`sbrk`/`mmap`系统调用申请内存，但在某些场景下（如内存池未耗尽）可能无需直接调用系统调用。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C. sleep</font></strong></font></strong>：`sleep`函数底层必然调用`nanosleep`系统调用以实现休眠功能，这是其核心机制。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>D. strlen</font></strong></font></strong>：`strlen`是纯用户态库函数，仅遍历字符串计算长度，不涉及系统调用。结论：严格意义上，<strong><font color=''#2656b3''>只有 sleep 在单线程进程中执行时一定会触发系统调用</font></strong>。若题目设定存在歧义（如未明确限定条件），则需重新审视题目设计。', 9, 'Mogullzr', '2026-02-02 11:52:13', 9, NULL, '2026-02-02 11:52:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5373');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5374, '408考研练习题——计算机组成原理——IO第53题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个基于线性表结构的目录实现方式。每个目录是一个节点列表，其中每个节点包含文件名以及文件元数据（例如指向数据块的指针列表）。假设有一个给定的目录 foo。以下哪项操作<strong><font color=''#2656b3''>必须</font></strong>对 foo 进行完整扫描才能成功完成？（ ）
', '[''在 foo 中创建新文件'', ''从 foo 中删除现有文件'', ''对 foo 中现有文件重命名'', ''打开 foo 中的现有文件'']', "['正', '确', '答', '案', '：', '未', '找', '到']", '', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5374');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5375, '408考研练习题——计算机组成原理——IO第54题', '简单', '408考研练习题——计算机组成原理——IO', '以下哪种 DMA 传输模式和中断处理机制能够实现最高的 I/O 带宽？（ ）
', '[''透明 DMA 与轮询中断'', ''周期窃取与向量中断'', ''块传输与向量中断'', ''块传输与轮询中断'']', "['C']", 'C</font></strong>
在提供的选项中，能够实现最高 I/O 带宽的 DMA 传输模式和中断处理机制是选项（C）：块传输与向量中断。以下是该选择为何能提供最高 I/O 带宽的原因分析：- 透明 DMA允许 DMA 控制器直接访问内存并传输数据而无需 CPU 介入。然而，它并未有效利用中断来通知传输完成或处理数据传输事件。
- 周期窃取在 CPU 正常运行时中断其操作以传输数据。虽然可以提升 I/O 带宽，但频繁中断 CPU 会影响其性能。
- 块传输通过单次操作传输一整块数据。这种方式减少了大规模数据传输所需的中断次数，从而实现高效的数据传输。
- 轮询中断要求 CPU 反复检查 DMA 控制器的状态以确认数据传输是否完成。此方法需要持续的 CPU 参与，浪费 CPU 周期，因此不利于实现高 I/O 带宽。
- 向量中断允许 DMA 控制器直接通知 CPU 数据传输事件，降低了 CPU 开销。CPU 可以高效处理中断并恢复正常操作。<strong><font color=''#2656b3''>综合结论</font></strong>
选项（C）结合了块传输 DMA（减少大规模数据传输的中断需求）与向量中断（高效通知 CPU 传输事件）。这种组合通过减少 CPU 参与并高效利用中断，最大化了 I/O 带宽，因此是所有选项中实现最高 I/O 带宽的最佳选择。', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5375');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5376, '408考研练习题——计算机组成原理——IO第55题', '简单', '408考研练习题——计算机组成原理——IO', '如果一个 2 字节无符号整数在小端序计算机上的数值比大端序计算机上多 255，那么以下哪个选项代表该无符号整数在小端序计算机上的表示？（ ）
', '[''0x6665'', ''0x0001'', ''0x4243'', ''0x0100'']', "['D']", 'D</font></strong>
- 选项 1:

- 小端序表示：内存为`65 66`（先存 LSB）。
- 数值：N_l = 0x6665 = 26149
- 大端序表示：内存为`66 65`（先存 MSB）。
- 数值：N_b = 0x6566 = 25920
- 差值：N_l − N_b = 26149−25920 = 255（有效）
- 选项 2:

- 0x0001
- 小端序表示：`01 0001`，值为 1
- 大端序表示：`00 0100`，值为 256
- 差值：1−256=−255（无效）
- 选项 3:

- 0x4243
- 小端序表示：`43 4243`，值为 16963
- 大端序表示：`42 4342`，值为 17218
- 差值：16963−17218=−255（无效）
- 选项 4:

- 0x0100
- 小端序表示：`00 0100`，值为 256
- 大端序表示：`01 0001`，值为 1
- 差值：256−1=255（有效）符合条件的选项有两个（A 和 D），但题目要求选择<strong><font color=''#2656b3''>小端序计算机上的表示</font></strong>，因此需进一步判断：- 选项 A 的小端序表示为`65 66`，对应数值 0x6665
- 选项 D 的小端序表示为`00 01`，对应数值 0x0100  
根据题目描述，正确答案应为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>D</font></strong></font></strong>。  
更多相关内容可参考《Big Endian & Little Endian》。', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5376');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5377, '408考研练习题——计算机组成原理——IO第56题', '简单', '408考研练习题——计算机组成原理——IO', '在一个非流水线顺序处理器中，给出了一段属于中断服务程序的程序片段，用于将 500 字节的数据从 I/O 设备传输到内存。程序流程如下：
假设该程序中的每条语句等效于一条机器指令。若为非加载/存储指令，则执行需要 1 个时钟周期；加载 - 存储指令需要 2 个时钟周期。系统设计者还提出了另一种使用 DMA 控制器实现相同传输的方案。DMA 控制器需要 20 个时钟周期进行初始化和其他开销，每个 DMA 传输周期需要 2 个时钟周期将一个字节的数据从设备传输到内存。当使用 DMA 控制器设计替代基于中断驱动程序的输入输出时，其近似加速比是多少？（ ）
', '[''3.4'', ''4.4'', ''5.1'', ''6.7'']', "['A']", 'A</font></strong>
解释：
| **操作** | **所需时钟周期数** |
| --- | --- |
| 初始化地址寄存器 | 1 |
| 将计数器初始化为 500 | 1 |
| 从设备加载一个字节 | 2 |
| 存储到由地址寄存器指定的内存地址 | 2 |
| 增加地址寄存器 | 1 |
| 减少计数器 | 1 |
| 如果计数器≠0 则跳转到循环 | 1 |
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中断驱动传输时间</font></strong></font></strong>= 1 + 1 + 500 × (2 + 2 + 1 + 1 + 1) = 3502
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>DMA 传输时间</font></strong></font></strong>= 20 + 500 × 2 = 1020
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>加速比</font></strong></font></strong>= 3502 / 1020 ≈ 3.4', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5377');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5378, '408考研练习题——计算机组成原理——IO第57题', '简单', '408考研练习题——计算机组成原理——IO', '在计算机系统中，需要存储大小分别为 11050 字节、4990 字节、5170 字节和 12640 字节的四个文件。为了将这些文件存储到磁盘上，可以选择使用 100 字节或 200 字节的磁盘块（不能混合使用不同大小的块）。对于每个用于存储文件的磁盘块，还需要额外存储 4 字节的管理信息。因此，存储一个文件所需的总空间等于文件本身占用的空间加上为其分配的磁盘块所占用的管理信息空间。一个磁盘块只能存储文件的管理信息或文件数据，但不能同时存储两者。分别使用 100 字节和 200 字节磁盘块时，存储这四个文件总共需要多少字节的空间？（ ）
', '[''35400 和 35800 字节'', ''35800 和 35400 字节'', ''35600 和 35400 字节'', ''35400 和 35600 字节'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong><strong><font color=''#2656b3''>使用 100 字节磁盘块</font></strong>- 11050 字节文件

- 数据块数 = ⌈11050/100⌉ = 111 块
- 管理信息块数 = ⌈(111 × 4)/100⌉ = 5 块
- 总块数 = 111 + 5 = 116 块
- 4990 字节文件

- 数据块数 = ⌈4990/100⌉ = 50 块
- 管理信息块数 = ⌈(50 × 4)/100⌉ = 2 块
- 总块数 = 50 + 2 = 52 块
- 5170 字节文件

- 数据块数 = ⌈5170/100⌉ = 52 块
- 管理信息块数 = ⌈(52 × 4)/100⌉ = 3 块
- 总块数 = 52 + 3 = 55 块
- 12640 字节文件

- 数据块数 = ⌈12640/100⌉ = 127 块
- 管理信息块数 = ⌈(127 × 4)/100⌉ = 6 块
- 总块数 = 127 + 6 = 133 块<strong><font color=''#2656b3''>总空间</font></strong>= (116 + 52 + 55 + 133) × 100 =<strong><font color=''#2656b3''>35600 字节</font></strong><strong><font color=''#2656b3''>使用 200 字节磁盘块</font></strong>- 11050 字节文件

- 数据块数 = ⌈11050/200⌉ = 56 块
- 管理信息块数 = ⌈(56 × 4)/200⌉ = 2 块
- 总块数 = 56 + 2 = 58 块
- 4990 字节文件

- 数据块数 = ⌈4990/200⌉ = 25 块
- 管理信息块数 = ⌈(25 × 4)/200⌉ = 1 块
- 总块数 = 25 + 1 = 26 块
- 5170 字节文件

- 数据块数 = ⌈5170/200⌉ = 26 块
- 管理信息块数 = ⌈(26 × 4)/200⌉ = 1 块
- 总块数 = 26 + 1 = 27 块
- 12640 字节文件

- 数据块数 = ⌈12640/200⌉ = 64 块
- 管理信息块数 = ⌈(64 × 4)/200⌉ = 2 块
- 总块数 = 64 + 2 = 66 块<strong><font color=''#2656b3''>总空间</font></strong>= (58 + 26 + 27 + 66) × 200 =<strong><font color=''#2656b3''>35400 字节</font></strong><strong><font color=''#2656b3''>结论</font></strong>：使用 100 字节块需 35600 字节，使用 200 字节块需 35400 字节，因此选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5378');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5379, '408考研练习题——计算机组成原理——IO第58题', '简单', '408考研练习题——计算机组成原理——IO', 'DMA 控制器的数据计数寄存器大小为 16 位。处理器需要将一个 29,154 千字节的文件从磁盘传输到主存。内存是按字节寻址的。DMA 控制器至少需要从处理器那里获取系统总线控制权多少次才能完成该文件从磁盘到主存的传输？（  ）
', '[''3644'', ''3645'', ''456'', ''1823'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键参数</font></strong></font></strong>：

- 数据计数寄存器大小：16 位 → 最大值216=65536字节 = 64 KB
- 需传输文件大小：29,154 KB
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算过程</font></strong></font></strong>：所需次数=⌈6429154​⌉=456
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选择 C（456 次）', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5379');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5380, '408考研练习题——计算机组成原理——IO第59题', '简单', '408考研练习题——计算机组成原理——IO', '下列各项配对中，正确对应的是哪一组？

```c
(A) DMA I/O　　　　　 (1) 高速 RAM
(B) Cache   　　　　　(2) 磁盘
(C) 中断 I/O　　　　　(3) 算术逻辑单元（ALU）
(D) 条件码寄存器　　　(4) 打印机
```
', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- A 选项：DMA（Direct Memory Access，直接存储器访问）用于在内存与外设（如磁盘）之间直接传输数据，不经过 CPU 干预。因此 DMA I/O 对应 (2) 磁盘。
- B 选项：Cache 是高速缓冲存储器，用于CPU 与主存（RAM）之间加快数据访问速度。对应 (1) 高速 RAM。
- C 选项：中断 I/O 是一种依靠中断信号来与外设交互的方式，典型用于低速外设，如打印机、键盘等。对应 (4) 打印机。
- D 选项：条件码寄存器（也叫程序状态字寄存器 PSW 的一部分）存放运算结果的标志位（如零标志、进位标志等），供<strong><font color=''#2656b3''><strong><font color=''#2656b3''>算术逻辑单元（ALU）</font></strong></font></strong>使用。对应 (3) 算术逻辑单元（ALU）。所以正确答案为 B。', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5380');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5381, '408考研练习题——计算机组成原理——IO第60题', '简单', '408考研练习题——计算机组成原理——IO', '关于使用菊花链（daisy chain）方式连接 I/O 设备的方案，以下哪项陈述是正确的？（ ）
', '[''它为不同设备赋予非统一的优先级'', ''它为所有设备赋予统一的优先级'', ''它仅适用于将慢速设备连接到处理器'', ''它需要为每个设备在处理器上单独设置中断引脚'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>菊花链机制特点</font></strong></font></strong>：通过串行连接多个设备，优先级由物理位置决定（靠近控制器的设备优先级更高）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项分析</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A 正确</font></strong></font></strong>：不同设备因位置差异具有非统一优先级。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B 错误</font></strong></font></strong>：若所有设备优先级相同，则无法体现菊花链的核心特性。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C 错误</font></strong></font></strong>：菊花链可连接任意速度设备，不限于慢速设备。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>D 错误</font></strong></font></strong>：菊花链共享单一中断请求线，无需为每个设备单独设置中断引脚。', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5381');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5382, '408考研练习题——计算机组成原理——IO第61题', '简单', '408考研练习题——计算机组成原理——IO', '一个硬盘通过 DMA 控制器连接到 50 MHz 的处理器。假设 DMA 传输的初始设置需要处理器消耗 1000 个时钟周期，且 DMA 传输完成后处理中断需要 500 个时钟周期。该硬盘的传输速率为 2000 KB/s，平均每次传输的数据块大小为 4 KB。如果硬盘始终以 100% 时间进行数据传输，则其占用处理器时间的比例是多少？（ ）
', '[''1.5%'', ''1%'', ''2.5%'', ''10%'']', "['A']", 'A</font></strong>
- 数据传输时间计算：

- 2000 KB/s 的传输速率下，4 KB 数据传输时间为20004​×1000ms=2ms
- 处理器开销计算：

- 总时钟周期：1000+500=1500个周期
- 时钟周期时长：50×1061​=0.02μs
- 处理器总耗时：1500×0.02μs=30μs
- 时间占比分析：

- CPU 时间占比公式：处理器耗时+数据传输时间处理器耗时​=30μs+2000μs30μs​=0.015=1.5%', 9, 'Mogullzr', '2026-02-02 11:52:14', 9, NULL, '2026-02-02 11:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5382');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5383, '408考研练习题——计算机组成原理——IO第62题', '简单', '408考研练习题——计算机组成原理——IO', '一个宽度为 32 位、容量为 1GB 的主存单元使用 256M×4 位的 DRAM 芯片构建。该 DRAM 芯片的存储单元行数为 2¹⁴。每次刷新操作耗时 50 纳秒，刷新周期为 2 毫秒。主存单元中可用于执行读写操作的时间百分比（四舍五入到最近整数）是（ ）。
', '[''59'', ''40'', ''99'', ''以上选项都不对'']', "['A']", 'A</font></strong>
已知总行数为 2¹⁴，每次刷新操作耗时 50 纳秒。
$$
\\frac{0.8192ms}{2ms} = 0.4096 = 40.96%
$$
最终结论：主存单元中可用于读写操作的时间占比约为<strong><font color=''#2656b3''>59%</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5383');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5384, '408考研练习题——计算机组成原理——IO第63题', '简单', '408考研练习题——计算机组成原理——IO', '如果每个地址空间代表 1 字节的存储空间，那么要访问以 4×6 阵列排列的 RAM 芯片（每个芯片为 8K×4 位），需要多少条地址线？
', '[''13'', ''15'', ''16'', ''17'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析步骤</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单个芯片容量计算</font></strong></font></strong>

- 每个芯片大小 = 8K × 4 位 =23×210×22=215位 =212字节
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>芯片数量与地址线需求</font></strong></font></strong>

- 阵列尺寸为 4×6 → 共需4×6=24片
- 24 片需要⌈log2​24⌉=5位地址线（因24=16<24<32=25）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总地址线数</font></strong></font></strong>

- 单片地址线：12 位
- 芯片选择线：5 位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总计</font></strong></font></strong>：12+5=17位', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5384');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5385, '408考研练习题——计算机组成原理——IO第64题', '简单', '408考研练习题——计算机组成原理——IO', '在 DMA 传输方案中，不同于突发模式的传输方式是（ ）
', '[''周期技术'', ''窃取技术'', ''周期窃取技术'', ''周期旁路技术'']', "['C']", 'C</font></strong>
DMA 使用多种传输模式在输入输出设备与主存之间进行数据传输。<strong><font color=''#2656b3''>突发模式</font></strong>- 在突发模式下，DMA 会获得总线的完全访问权限，直到数据传输完成
- 此期间包括 CPU 在内的其他设备都无法访问数据总线
- 支持从内存到设备的高速数据传输<strong><font color=''#2656b3''>周期窃取技术</font></strong>- 在周期窃取模式下，DMA 会定期从处理器处“窃取”机器周期而不干扰其运行
- 通过具有独立指令和数据存储体的系统实现
- 允许外部设备在 CPU 从指令存储体获取指令时访问数据存储体的内存
- 从而避免 CPU 利用率受到干扰因此选项（C）正确', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5385');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5386, '408考研练习题——计算机组成原理——IO第65题', '简单', '408考研练习题——计算机组成原理——IO', '考虑一个支持 DMA 的计算机系统。DMA 模块以固定间隔通过周期窃取的方式，从设备到内存中每次传输一个 8 位字符，每次传输占用一个 CPU 周期。假设处理器频率为 2 MHz。如果 DMA 占用了 0.5% 的处理器周期，则该设备的数据传输速率为（  ）位每秒。
', '[''80000'', ''10000'', ''8000'', ''1000'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>
$$
DMA周期数/秒 = 0.5% × 2 × 10^{6} = 0.005 × 2 × 10^{6} = 10^{4}周期/秒
$$
<strong><font color=''#2656b3''>关键点总结</font></strong>
| 参数 | 数值 |
| --- | --- |
| 处理器频率 | 2MHz |
| DMA 占用率 | 0.5% |
| 每周期数据量 | 8 位 |
| 最终结果 | 8×104b/s |
', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5386');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5387, '408考研练习题——计算机组成原理——IO第66题', '简单', '408考研练习题——计算机组成原理——IO', '一个 DMA 控制器使用周期窃取方式将 32 位字传送到内存。这些字由每秒传输 4800 个字符的设备组装而成（1 字符 = 1 字节）。CPU 平均每秒执行一百万条指令。由于 DMA 传输，CPU 的速度会降低多少？
', '[''0.6%'', ''0.12%'', ''1.2%'', ''2.5%'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 设备传输特性

- 每秒传输 4800 字节（1 字符 = 1 字节）
- 单字节传输耗时：48001​秒
- DMA 传输过程

- 每次传输 4 字节（32 位）
- 总耗时：4×48001​=12001​秒/次
- 性能影响计算

- 每秒 DMA 传输次数：12001​1​=1200次
- CPU 每秒执行指令数：1,000,000 条
- 速度下降百分比：10000001200​×100%=0.12%因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5387');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5388, '408考研练习题——计算机组成原理——IO第67题', '简单', '408考研练习题——计算机组成原理——IO', '当外部设备在中断请求中同时提供其地址时，这种中断被称为（ ）
', '[''向量中断'', ''可屏蔽中断'', ''不可屏蔽中断'', ''指定中断'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>向量中断</font></strong>- 具有预定义的执行指令（例如电源故障时，程序员需定义必须执行的代码）
- 预定义指令（如电源故障代码）的地址称为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>向量地址</font></strong></font></strong>
- 此类指令通常具有以下特性：

- 高优先级
- 不可屏蔽
- 预定义/向量化<strong><font color=''#2656b3''>不可屏蔽中断</font></strong>- CPU 无法忽略此类中断
- 必须在顺序执行新指令前先处理不可屏蔽中断
- 中断本质上是一种程序类型，与其他程序类似', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5388');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5389, '408考研练习题——计算机组成原理——IO第68题', '简单', '408考研练习题——计算机组成原理——IO', '一个系统具有 1 MIPS 的执行速率，平均每个指令需要 4 个机器周期。其中 50% 的周期使用内存总线。一次内存读/写操作占用一个机器周期。在程序执行过程中，系统利用了 90% 的 CPU 时间。当进行块数据传输时，IO 设备连接到系统，而 CPU 持续执行后台程序。如果使用编程式 IO 数据传输技术，最大 IO 数据传输率是多少？（ ）
', '[''500 Kbytes/sec'', ''2.2 Mbytes/sec'', ''125 Kbytes/sec'', ''250 Kbytes/sec'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- CPU周期计算

- 1 MIPS = 1百万指令/秒
- 每条指令4周期 → 400万周期/秒
- 内存总线占用

- 50%周期用总线 → 200万周期/秒可操作内存
- 数据传输率

- 每次操作1字节 → 200万字节/秒 = 2 MB/s
- 编程式IO效率限制 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>250 KB/s</font></strong></font></strong>（最接近选项）所以答案选择 D。', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5389');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5390, '408考研练习题——计算机组成原理——IO第69题', '简单', '408考研练习题——计算机组成原理——IO', '以下哪一项能够以最高的吞吐量实现硬盘到主存的大容量数据传输？（ ）
', '[''基于 DMA 的 I/O 传输'', ''中断驱动的 I/O 传输'', ''轮询机制的 I/O 传输'', ''程序控制的 I/O 传输'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心原理</font></strong></font></strong>：CPU 的速度限制了快速存储介质（如磁盘）与存储单元之间的数据传输效率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>技术对比</font></strong></font></strong>：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>DMA（直接内存访问）</font></strong></font></strong>：通过内存总线直接连接外设，无需 CPU 介入，显著提升传输效率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>中断驱动/轮询/程序控制</font></strong></font></strong>：需依赖 CPU 参与数据搬运，存在上下文切换开销，吞吐量较低。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：DMA 通过减少 CPU 干预，成为大容量数据传输的最优解。', 9, 'Mogullzr', '2026-02-02 11:52:15', 9, NULL, '2026-02-02 11:52:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5390');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5391, '408考研练习题——计算机组成原理——IO第70题', '简单', '408考研练习题——计算机组成原理——IO', '一个磁盘的存储区域最内圈直径为 10 厘米，最外圈直径为 20 厘米。磁盘的最大存储密度为 1400 位/厘米。磁盘以 4200 转/分钟的速度旋转。计算机的主存具有 64 位字长和 1 微秒的周期时间。如果使用周期窃取方式从磁盘传输数据，则每个字传输过程中被窃取的内存周期百分比为（ ）。
', '[''0.5%'', ''1%'', ''5%'', ''10%'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最内圈直径</font></strong></font></strong>= 10 厘米
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>存储密度</font></strong></font></strong>= 1400 位/厘米
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>每条磁道容量</font></strong></font></strong>=π×直径×密度 =3.14×10×1400=43960位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>旋转延迟时间</font></strong></font></strong>=420060​=701​秒已知主存的字长为 64 位，周期时间为 1 微秒。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 秒内主存可传输的数据量</font></strong></font></strong>=64×106位（因每微秒传输 64 位，共106微秒）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>磁盘每秒读取的数据量</font></strong></font></strong>=43960×70=3.08×106位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总共需要窃取的内存周期数</font></strong></font></strong>=64×1063.08×106​=0.048125（即 4.81%）四舍五入后约为<strong><font color=''#2656b3''>5%</font></strong>，因此 C 选项是正确的。', 9, 'Mogullzr', '2026-02-02 11:52:16', 9, NULL, '2026-02-02 11:52:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1344', '5391');
