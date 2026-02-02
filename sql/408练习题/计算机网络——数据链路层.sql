INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5643, '408考研练习题——计算机网络——数据链路层第1题', '简单', '408考研练习题——计算机网络——数据链路层', '在以太网局域网中，数据传输速率为 500 Mbps，帧大小为 10,000 bit。假设电缆中的信号传播速度为 200,000 km/s，求该电缆的最大长度（单位：km）（ ）。
', '[''1'', ''2'', ''2.5'', ''5'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>关键条件</font></strong>：数据需以<strong><font color=''#2656b3''>500 Mbps</font></strong>的速率传输。
根据以太网冲突检测机制，<strong><font color=''#2656b3''>传输时间 ≥ 2 × 传播时间</font></strong>。<strong><font color=''#2656b3''>推导过程</font></strong>：- 传输时间T_transmit=数据速率帧大小​=500×10610000​=2×10−5s
- 传播时间T_propagate=传播速度电缆长度​=2×105L​s
- 根据约束条件：Ttransmit​≥2×Tpropagate​⇒2×10−5≥2×2×105L​⇒L≤2km<strong><font color=''#2656b3''>结论</font></strong>：电缆的最大允许长度为<strong><font color=''#2656b3''>2 km</font></strong>，对应选项<strong><font color=''#2656b3''>(B)</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5643');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5644, '408考研练习题——计算机网络——数据链路层第2题', '简单', '408考研练习题——计算机网络——数据链路层', '设$G(x)$是用于 CRC 校验的生成多项式。为了检测奇数个错误位，$G(x)$应满足什么条件？（ ）
', '[''$G(x)$包含超过两个项'', ''$G(x)$不整除$1 + x^{k}$（对于任何不超过帧长的 k）'', ''$1 + x$是$G(x)$的一个因子'', ''$G(x)$具有奇数个项'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>必要条件</font></strong></font></strong>：生成多项式G(x)必须包含(1+x)作为因子。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>作用</font></strong></font></strong>：此条件确保所有具有奇数个 1 的错误模式（即奇数个比特翻转）能够被检测到。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原理</font></strong></font></strong>：当(1+x)是G(x)的因子时，任何奇数个错误的多项式表示在模G(x)下无法整除，从而触发校验失败。', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5644');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5645, '408考研练习题——计算机网络——数据链路层第3题', '简单', '408考研练习题——计算机网络——数据链路层', '两个主机之间通过一条 10⁶ bps 的双工链路发送 1000 位的帧。传播时延为 25ms。需要将尽可能多的帧打包在链路中传输（在链路内）。
为了唯一表示这些帧的序列号，至少需要多少位 i（ ）？假设两帧之间不需要时间间隔。
', '[''i = 2'', ''i = 3'', ''i = 4'', ''i = 5'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单帧传输延迟</font></strong></font></strong>：1061000​=1ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传播时延</font></strong></font></strong>：25 ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最大可发送帧数</font></strong></font></strong>：发送方在第一帧到达接收方前最多可发送125​=25帧
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>序列号位数计算</font></strong></font></strong>：表示 25 个不同帧所需的最小位数为⌈log2​(25)⌉=5位所以答案选择 D。', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5645');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5646, '408考研练习题——计算机网络——数据链路层第4题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑上一题的数据。假设使用滑动窗口协议，发送窗口大小为$2^{i}$（其中 i 是上一题中确定的位数），且确认帧始终采用捎带方式。在发送完$2^{i}$帧后，发送方至少需要等待多长时间才能开始发送下一帧？（忽略帧处理时间，选择最接近的选项）（ ）
', '[''16ms'', ''18ms'', ''20ms'', ''22ms'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>滑动窗口大小</font></strong></font></strong>：25=32
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单帧传输时间</font></strong></font></strong>：1ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>32 帧总传输时间</font></strong></font></strong>：32 × 1ms = 32ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>往返时延</font></strong></font></strong>：2×传输时间 + 2×传播时延 = 2+50 = 52ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>发送方需等待的时间</font></strong></font></strong>：52ms - 32ms = 20ms计算逻辑基于滑动窗口协议的工作原理。当发送窗口满载时，发送方必须等待第一个确认帧返回后才能继续发送新帧。由于确认帧采用捎带方式，其返回时间等于数据帧的往返时延。因此，发送完全部 32 帧后，剩余的等待时间为往返时延与总传输时间的差值。', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5646');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5647, '408考研练习题——计算机网络——数据链路层第5题', '简单', '408考研练习题——计算机网络——数据链路层', '在以太网中使用曼彻斯特编码时，比特率是（ ）：
', '[''1/2 波特率。'', ''2 倍波特率。'', ''与波特率相同。'', ''以上都不是'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：比特率是波特率的一半
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原理说明</font></strong></font></strong>：曼彻斯特编码通过每个比特周期内的电平跳变实现同步，导致每个比特对应两个信号变化（即波特率是比特率的两倍）。因此比特率 = 波特率 ÷ 2。', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5647');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5648, '408考研练习题——计算机网络——数据链路层第6题', '简单', '408考研练习题——计算机网络——数据链路层', '假设一个时隙 LAN 中有$n$个站点。每个站点在每个时隙中以概率$P$尝试发送数据。在给定时隙中仅有一个站点发送的概率是（ ）。
', '[''$nP(1 - P)n−1$'', ''$nP$'', ''$P(1 - P)n−1$'', ''$n^{P}(1 - P)n−1$'']', "['A']", 'A</font></strong>
站点$X$尝试发送的概率为$P(X) = p$。站点$X$不发送的概率为$P(∼ X) = 1 - p$。仅有一个站点发送的概率为$Y$。当有$n$个站点时，$Y$可以表示为：
$$
\\begin{array}{cc}
Y & = P(A_{1}∩ ∼ A_{2} ∩ ⋯ ∩ ∼ A_{n}) \\\\
 & + P(∼ A_{1} ∩ A_{2} ∩ ⋯ ∩ ∼ A_{n}) \\\\
 & + … \\\\
\\end{array}
$$
假设各站点的发送行为相互独立，则上述各项可以写成：
$$
\\begin{array}{cc}
Y & =  \\lbrack p × (1 - p) × ⋯ × (1 - p) \\rbrack  \\\\
 & +  \\lbrack (1 - p) × p × ⋯ × (1 - p) \\rbrack  \\\\
 & + … \\\\
\\end{array}
$$
简化后，每项都为：
$$
p × (1 - p)n−1
$$
由于共有$n$种情况（即$n$个站点中恰好有一个发送），因此$Y$的最终表达式为：
$$
Y = n × p × (1 - p)n−1
$$
', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5648');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5649, '408考研练习题——计算机网络——数据链路层第7题', '简单', '408考研练习题——计算机网络——数据链路层', '在一个令牌环网络中，传输速率为$10^{7}$bps，传播速率为 200 米/微秒。该网络中的 1 位延迟相当于（ ）。
', '[''500 米的电缆。'', ''200 米的电缆。'', ''20 米的电缆。'', ''50 米的电缆。'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 位时间</font></strong></font></strong>：1071​秒 = 0.1 微秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传播距离</font></strong></font></strong>：传播速度 × 时间 =200米/微秒×0.1μs=20米', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5649');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5650, '408考研练习题——计算机网络——数据链路层第8题', '简单', '408考研练习题——计算机网络——数据链路层', '消息 11001001 使用 CRC 多项式$x^{3} + 1$进行传输以防止错误。应传输的消息是（ ）：
', '[''11001001000'', ''11001001011'', ''11001010'', ''110010010011'']', "['B']", 'B</font></strong>
已知如下信息:- 消息：11001001
- CRC 多项式：x³ + 1 = 1·x³ + 0·x² + 0·x¹ + 1·x⁰
- CRC 生成多项式：1001由于多项式的最高次是 3，因此在消息末尾补上 3 个 0消息变为：11001001000，CRC 计算过程如下：
```c
        11001001000          （原始消息 + 3 个 0）
⊕       1001
        ---------
        01011001000          （第一步异或结果）

         1011                （移位到第一个 1 的位置）
⊕        1001
         ----
          0010001000         （第二步异或结果）

            1000             （继续移位到第一个 1 的位置）
⊕           1001
            ----
             00011000        （第三步异或结果）

               1100
⊕              1001
               ----
                01010         （第四步异或结果）

                 1010
⊕                1001
                 ----
                  0011         （余数）
```
最后一步得到了 0011。而生成多项式的阶是 3，这意味着 余数应该保留 3 位。在最后的结果 0011 中，最高的 1 对应的位数只需要取多项式阶数（3 位）。也就是说，我们只保留 最低 3 位 作为最终 CRC：011所以最终传输的消息为 11001001 011，答案选择 B。', 9, 'Mogullzr', '2026-02-02 11:53:00', 9, NULL, '2026-02-02 11:53:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5650');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5651, '408考研练习题——计算机网络——数据链路层第9题', '简单', '408考研练习题——计算机网络——数据链路层', '两站$M$和$N$之间的距离为$L$公里。所有帧的长度为$K$位。每公里的传播延迟为$t$秒。设信道容量为$R$位/秒。假设处理延迟可忽略不计，当使用滑动窗口协议时，为了实现最大利用率，帧中序列号字段所需的最小位数是（ ）。
', '[''$⌈log_{2}(\\\\frac{2LtR+2K}{K})⌉$'', ''$⌈log_{2}(\\\\frac{2LtR}{K})⌉$'', ''$⌈log_{2}(\\\\frac{2LtR+K}{K})⌉$'', ''$⌈log_{2}(\\\\frac{2LtR+K}{2K})⌉$'']', "['C']", 'C</font></strong>
可以发送$\\frac{RTT}{Transmission Time}$数量的数据包，以最大化信道利用率，因为在这段时间内，我们收到第一个 ACK，在此之前，我们可以继续发送数据包。因此，应该发送$\\frac{Transmission Time+2×Propagation Time}{Transmission Time}$数量的数据包。因此，序列号字段所需的比特数：
$$
⌈\\log_{2} (\\frac{K}{R} + 2Lt)/(\\frac{K}{R})⌉ = ⌈\\log_{2} (\\frac{K + 2LtR}{K})⌉
$$
<strong><font color=''#2656b3''>注意</font></strong>：这里询问的是通用的滑动窗口协议，而不是 GBN 或 SR。在通用滑动窗口协议中：序列号比特数 =$\\log_{2}(发送方窗口大小)$', 9, 'Mogullzr', '2026-02-02 11:53:01', 9, NULL, '2026-02-02 11:53:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5651');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5652, '408考研练习题——计算机网络——数据链路层第10题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一个长度为 2 公里的令牌环网络，包含 10 个站点（包括监控站）。信号传播速度为 2 × 10⁸ m/s，令牌传输时间可忽略不计。如果每个站点持有令牌的时间为 2 μsec，则监控站在假设令牌丢失前应等待的最短时间（单位：μsec）是（ ）。
', '[''28 到 30'', ''20 到 22'', ''0 到 2'', ''31 到 33'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>长度 = 2 公里
传播速度 v = 2×10⁸ m/s
令牌持有时间 = 2 微秒
$$
传播时间 = \\frac{距离}{速度} = \\frac{2000 m}{2 × 10^{8} m/s} = 10^{−5} s = 10 μsec
$$
因此，监控站应等待的最短时间为<strong><font color=''#2656b3''>28 到 30 μsec</font></strong>', 9, 'Mogullzr', '2026-02-02 11:53:01', 9, NULL, '2026-02-02 11:53:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5652');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5653, '408考研练习题——计算机网络——数据链路层第11题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一个使用 1 KB 帧大小的选择性重传滑动窗口协议，在 1.5 Mbps 链路上发送数据，单向传播时延为 50 ms。为了实现 60% 的链路利用率，序列号字段所需的最小位数是（ ）。
', '[''3'', ''4'', ''5'', ''6'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
$$
\\frac{1 × 8 × 1024}{1.5 × 10^{6}} = 5.33 ms
$$
最终答案为<strong><font color=''#2656b3''>5 位</font></strong>，对应选项 C。', 9, 'Mogullzr', '2026-02-02 11:53:01', 9, NULL, '2026-02-02 11:53:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5653');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5654, '408考研练习题——计算机网络——数据链路层第12题', '简单', '408考研练习题——计算机网络——数据链路层', '在下图中，L1 是以太网局域网（Ethernet LAN），L2 是令牌环局域网（Token-Ring LAN）。一个 IP 数据包从发送方 S 出发，如图所示传输到接收方 R。每个 ISP 内部以及两个 ISP 之间的链路均为点对点光纤链路。数据包的初始 TTL 值为 32。当 R 接收到该数据报时，TTL 字段的最大可能值是：（ ）

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/20dfff7df58f4033a338db7dfb1999ee.jpg)
', '[''25'', ''24'', ''26'', ''28'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>TTL（生存时间）机制解析</font></strong>- 定义与作用TTL 是一种限制网络中数据包生命周期的机制，通过计数器或时间戳实现。由发送方设置并嵌入数据包中，表示数据包在网络中的最大存活时间。
- 工作流程

- 每个路由器在转发数据包时会执行以下操作：
- 检查当前 TTL 值
- 若 TTL ≠ 0，则接受数据包并将 TTL 减 1
- 若 TTL = 0，则丢弃数据包
- 设计目的

- 防止无限循环的未送达数据包
- 避免因网络拥塞导致的重复投递问题
- 本题关键点分析

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>路由决策层级</font></strong></font></strong>：仅在网络层进行，局域网（LAN）工作在数据链路层，不会触发 TTL 修改
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>路径统计</font></strong></font></strong>：

- 图中共有 6 个路由器节点
- 接收端需通过网络层传递数据包，因此也会减少 TTL
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算过程</font></strong></font></strong>：  
`text 初始 TTL = 32 经过 6 个路由器 → 32 - 6 = 26`', 9, 'Mogullzr', '2026-02-02 11:53:03', 9, NULL, '2026-02-02 11:53:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5654');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5655, '408考研练习题——计算机网络——数据链路层第13题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑下图所示的存储转发分组交换网络。假设每条链路的带宽为$10^{6}$字节/秒。主机 A 上的用户通过路由器 R1 和 R2 向主机 B 发送一个大小为$10^{3}$字节的文件，采用三种不同的方式传输：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/722f8aaac4624aadac1df56ac2f4bceb.jpg)
每个分组包含 100 字节的头部信息和用户数据。仅考虑传输时间，忽略处理、排队和传播延迟，并假设传输过程中没有错误。设 T1、T2 和 T3 分别为第一、第二和第三种情况下的传输时间。以下哪一项是正确的？（ ）
', '[''T1 < T2 < T3'', ''T1 > T2 > T3'', ''T2 = T3, T3 < T1'', ''T1 = T3, T3 > T2'']', "['D']", 'D</font></strong>
此处需要注意的关键点是：在第一种情况下，整个数据包被传输，因此无法实现分组流水线操作。在第二和第三种情况下，可以利用流水线优势（当分组 i 从 R1 到 R2 传输时，分组 i-1 同时从 A 到 R1 传输）。以下是完整计算过程：<strong><font color=''#2656b3''>文件大小</font></strong>= 1000 字节
<strong><font color=''#2656b3''>头部大小</font></strong>= 100 字节
<strong><font color=''#2656b3''>所有链路传输速率</font></strong>=$10^{6}$字节/秒<strong><font color=''#2656b3''>第一种情况</font></strong>- 单个链路的传输时间  
= 数据包大小 / 带宽  
= (1000 + 100)/106  
= 1100 微秒
- 总时间 = 3 × 1100 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3300 微秒</font></strong></font></strong><strong><font color=''#2656b3''>第二种情况</font></strong>- 单个链路和单个部分的传输时间  
= (100 + 100)/106= 200 微秒
- 流水线优势说明：

- 当分组 i 从 R1 → R2 传输时，分组 i-1 同时从 A → R1 传输
- 总时间 = 3 × 200 + 9 × 200 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2400 微秒</font></strong></font></strong><strong><font color=''#2656b3''>第三种情况</font></strong>- 单个链路和单个部分的传输时间  
= (50 + 100)/106= 150 微秒
- 总时间 = 3 × 150 + 19 × 150 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3300 微秒</font></strong></font></strong>最终结论：<strong><font color=''#2656b3''>T1 = T3 > T2</font></strong>，对应选项 D 正确。', 9, 'Mogullzr', '2026-02-02 11:53:04', 9, NULL, '2026-02-02 11:53:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5655');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5656, '408考研练习题——计算机网络——数据链路层第14题', '简单', '408考研练习题——计算机网络——数据链路层', '一种基于位填充的帧定界协议使用一个 8 位的定界符模式 01111110。如果填充后的输出比特串为 01111100101，则输入的比特串是（ ）：
', '[''0111110100'', ''0111110101'', ''0111111101'', ''0111111111'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>位填充机制解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心原理</font></strong></font></strong>：通过插入特定比特避免与定界符冲突
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>定界符作用</font></strong></font></strong>：01111110 用于标识帧的起始/结束边界<strong><font color=''#2656b3''>填充规则详解</font></strong>- 发送端处理

- 当检测到连续 5 个`1`时，自动插入`0`
- 示例：原始数据`0111111101`→ 填充后`011111 0 1101`（加粗 0 为填充位）
- 接收端处理

- 遇到连续 5 个`1`时：

- 若后续为`0`→ 移除该填充位
- 若后续为`1`→ 判断是否为定界符或错误

- 后续再遇`0`→ 确认为定界符
- 后续再遇`1`→ 标记为错误并丢弃<strong><font color=''#2656b3''>本题解题过程</font></strong>
```c
011111 0 0101
└─┬─┘ └┬┘
  5 个 1  填充位
```
<strong><font color=''#2656b3''>结论验证</font></strong>- 正确选项 B 对应还原后的原始数据
- 其他选项均不符合位填充规则', 9, 'Mogullzr', '2026-02-02 11:53:04', 9, NULL, '2026-02-02 11:53:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5656');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5657, '408考研练习题——计算机网络——数据链路层第15题', '简单', '408考研练习题——计算机网络——数据链路层', 'A 站使用 32 字节的数据包通过滑动窗口协议向 B 站发送消息。A 和 B 之间的往返延迟为 80 ms，路径上的瓶颈带宽为 128kbps。A 应使用的最佳窗口大小是多少？（ ）
', '[''20'', ''40'', ''160'', ''320'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>往返传播延迟</font></strong></font></strong>= 80 ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>帧大小</font></strong></font></strong>= 32×8 比特
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>带宽</font></strong></font></strong>= 128 kbps
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输时间</font></strong></font></strong>=12832×8​ms = 2 ms设窗口大小为$n$：

$$
利用率 = \\frac{n}{1 + 2a}
$$
其中$a = \\frac{传播时间}{传输时间} = \\frac{80}{2} = 40$当$n = 41$时达到最大利用率，
选项中<strong><font color=''#2656b3''>40</font></strong>是最接近的合理值。', 9, 'Mogullzr', '2026-02-02 11:53:05', 9, NULL, '2026-02-02 11:53:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5657');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5658, '408考研练习题——计算机网络——数据链路层第16题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑下文所示的场景，其中多个 LAN 通过（透明）网桥连接。为了避免数据包在网络中循环，网桥会组织成一个生成树。首先，根网桥被识别为序列号最小的网桥。接着，根网桥发送（一个或多个）数据单元以建立从根网桥到每个网桥的最短路径生成树。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/990957d96ba64bbc8734581ef4a0dd12.jpg)
每个网桥都会确定一个端口（根端口），用于向根网桥转发帧。端口冲突始终优先选择索引值较低的端口。当存在多个网桥可能向同一 LAN 转发数据（但不通过根端口）时，规则如下：距离根网桥更近的网桥具有优先权；若距离相同，则序列号较小的网桥优先。
对于给定的 LAN 连接方式，以下哪个选项代表了网桥生成树的深度优先遍历？
', '[''B1, B5, B3, B4, B2'', ''B1, B3, B5, B2, B4'', ''B1, B5, B2, B3, B4'', ''B1, B3, B4, B5, B2'']', "['A']", 'A</font></strong>
生成树结构为：
```c
        B1
       /  \\
      /    \\
     B5    B3
            /  \\
           /    \\
          B4    B2
```

```c
B1 → B5 (左子树)
B5 无子节点 → 回溯至 B1
B1 → B3 (右子树)
B3 → B4 (左子树)
B4 无子节点 → 回溯至 B3
B3 → B2 (右子树)
```
', 9, 'Mogullzr', '2026-02-02 11:53:06', 9, NULL, '2026-02-02 11:53:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5658');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5659, '408考研练习题——计算机网络——数据链路层第17题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑上一题中给出的数据。考虑前一题的正确生成树。假设主机 H1 发送一个广播 ping 包，以下哪个选项代表了交换机 B3 上的正确转发表？（ ）
<strong><font color=''#2656b3''>A</font></strong>
<strong><font color=''#2656b3''>B</font></strong>
<strong><font color=''#2656b3''>C</font></strong>
<strong><font color=''#2656b3''>D</font></strong>
', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>广播传播机制</font></strong></font></strong>

- 广播包从 H1 发出后，B3 会将其转发至所有非接收端口（遵循 IEEE 802.1D 标准）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>生成树阻塞端口影响</font></strong></font></strong>

- 阻塞端口的存在限制了广播路径，仅允许通过生成树确定的活动链路进行转发
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>转发表构建逻辑</font></strong></font></strong>

- 转发表需记录各主机首次被发现的入端口（基于 MAC 地址学习过程）
- 选项 A 中：

- 端口 3 对应 H1-H4（直连设备）
- 端口 1 对应 H5-H6/H9-H10（经由上游交换机）
- 端口 2 对应 H7-H8/H11-H12（经由下游交换机）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误选项分析</font></strong></font></strong>

- 选项 D 存在端口冲突（H5 和 H7 同时指向端口 1）
- 选项 C 混淆了直连设备的端口分配
- 选项 B 错误划分了主机群组的端口映射关系', 9, 'Mogullzr', '2026-02-02 11:53:06', 9, NULL, '2026-02-02 11:53:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5659');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5660, '408考研练习题——计算机网络——数据链路层第18题', '简单', '408考研练习题——计算机网络——数据链路层', '假设一个 10 Mbps 以太网的往返传播延迟为 46.4 μs，其 48 位阻塞信号的最小帧长度是（ ）：
', '[''94'', ''416'', ''464'', ''512'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- Td > 2 × Tp + Td（用于阻塞信号）
- Td > Rtt + (阻塞信号长度 / 带宽)
- Td > 46.4μs + (48 bit / 10 × 10⁶ bits/秒)
- Td > 46.4 × 10⁻⁶ 秒 + (4.8 × 10⁻⁶ 秒)
- Td > 51.2 × 10⁻⁶ 秒
- (帧长度 / 带宽) > 51.2 × 10⁻⁶ 秒
- 帧长度 > 51.2 × 10⁻⁶ 秒 × 带宽
- 帧长度 > 51.2 × 10⁻⁶ 秒 × 10 × 10⁶ bits/秒
- 帧长度 > 512 bits<strong><font color=''#2656b3''>结论</font></strong>：因此，最小帧长度为<strong><font color=''#2656b3''>512 bits</font></strong>。<strong><font color=''#2656b3''>注</font></strong>：- 传输延迟 = Td
- 传播延迟 = Tp
- 往返时间 = Rtt = 2 × Tp
- Td = (帧长度 / 带宽)', 9, 'Mogullzr', '2026-02-02 11:53:06', 9, NULL, '2026-02-02 11:53:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5660');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5661, '408考研练习题——计算机网络——数据链路层第19题', '简单', '408考研练习题——计算机网络——数据链路层', '在使用异步传输模式的 9600 波特率串行通信链路中，每个字符包含 1 个起始位、8 个数据位、2 个停止位和 1 个校验位。每秒最多可以传输多少个 8 位字符？（ ）
', '[''600'', ''800'', ''876'', ''1200'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>背景知识</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>OSI 模型中的物理层</font></strong></font></strong>  
在串行通信中，信息是按位依次传输的。波特率表示串行线路的数据传输速率，通常以比特每秒（bps）为单位。每次传输一个数据块（通常是一个字节）时，会将其封装成包含同步位和校验位的帧进行发送。“9600 波特率"表示该串口每秒最多可传输 9600 比特。<strong><font color=''#2656b3''>计算步骤</font></strong>- 单字符传输开销每个字符需传输的总位数 =1 位（起始位） + 8 位（字符大小） + 1 位（校验位） + 2 位（停止位） = 12 位
- 理论最大值计算每秒可传输的 8 位字符数量 =9600 ÷ 12 = 800', 9, 'Mogullzr', '2026-02-02 11:53:06', 9, NULL, '2026-02-02 11:53:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5661');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5662, '408考研练习题——计算机网络——数据链路层第20题', '简单', '408考研练习题——计算机网络——数据链路层', 'A 和 B 是同一以太网上的仅有的两个站点。每个站点都有待发送的帧队列。A 和 B 同时尝试发送帧时发生冲突，且 A 在第一次退避竞争中获胜。当 A 成功传输完成后，A 和 B 再次同时尝试发送帧并发生冲突。此时 A 在第二次退避竞争中获胜的概率是（ ）：
', '[''0.5'', ''0.625'', ''0.75'', ''1.0'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>每次发送帧时，A 和 B 会随机选择一个整数 k 值。根据 k 值计算退避时间（单位为时隙）。退避时间较小的站点优先发送。<strong><font color=''#2656b3''>第一次尝试</font></strong>：k 的取值范围为 k=0 或 k=1（0 ≤ k ≤ 2¹⁻¹；n 为第 n 次尝试）。由于 A 首次获胜，说明 A 选择了 k=0 而 B 选择了 k=1（A 获胜概率为 0.25）。A 将继续用 k=0 或 k=1 尝试第二个帧，但 B 因首次失败将使用 k=0、1、2 或 3 进行第二次尝试。<strong><font color=''#2656b3''>第二次尝试</font></strong>：设 kA 为 A 选择的 k 值，kB 为 B 选择的 k 值。可能的组合 (kA,kB) 包括：(0,0),(0,1),(0,2),(0,3),(1,0),(1,1),(1,2),(1,3)，共 8 种情况。A 获胜需满足 kA < kB，对应的事件空间为 (0,1),(0,2),(0,3),(1,2),(1,3)，共 5 种情况。因此，A 在第二次退避竞争中获胜的概率为 5/8 = 0.625', 9, 'Mogullzr', '2026-02-02 11:53:06', 9, NULL, '2026-02-02 11:53:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5662');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5663, '408考研练习题——计算机网络——数据链路层第21题', '简单', '408考研练习题——计算机网络——数据链路层', '一个长度为 2 公里的广播局域网，带宽为 10⁷ bps，使用 CSMA/CD 协议。信号沿电缆的传播速度为 2 × 10⁸ m/s。该网络可使用的最小数据包大小是多少？（ ）
', '[''50 字节'', ''100 字节'', ''200 字节'', ''以上都不是'']', "['D']", 'D</font></strong>
在 CSMA/CD 中，发送节点在传输帧的同时会监听冲突。如果在发送完最后一个比特时未检测到冲突，则认为传输成功。最坏情况下的冲突检测时间等于两倍的传播延迟。因此，确保冲突未发生的最小数据包条件是：
$$
RTT = 传输时间
$$
<strong><font color=''#2656b3''>计算过程</font></strong>
$$
传输时间 = \\frac{数据包长度}{带宽}
$$
<strong><font color=''#2656b3''>结论</font></strong>
最小数据包大小为<strong><font color=''#2656b3''>25 字节</font></strong>，选项中无此答案，故选 D。', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5663');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5664, '408考研练习题——计算机网络——数据链路层第22题', '简单', '408考研练习题——计算机网络——数据链路层', '主机 A 通过全双工链路向主机 B 发送数据。A 和 B 使用滑动窗口协议进行流量控制，发送窗口和接收窗口大小均为 5 个分组。数据分组（仅从 A 到 B）长度为 1000 字节，每个分组的传输时延为 50 微秒。确认分组（仅从 B 到 A）体积很小，传输时延可忽略不计。链路传播延迟为 200 微秒。该通信的最大可实现吞吐量是多少？（ ）
', '[''$7.69 × 10^{6}B/s$'', ''$11.11 × 10^{6}B/s$'', ''$12.33 × 10^{6}B/s$'', ''$15.00 × 10^{6}B/s$'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
$$
吞吐量 = \\frac{5 × 1000 字节}{500 μs} = 10^{7} 字节/秒 = 10 MB/s
$$
', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5664');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5665, '408考研练习题——计算机网络——数据链路层第23题', '简单', '408考研练习题——计算机网络——数据链路层', '在串行数据传输中，每个字节的数据开头会添加一个 ‘0’，结尾会添加一到两个 ‘1’ 是因为（ ）
', '[''接收方需要为字节接收进行同步'', ''接收方通过这些填充位恢复丢失的‘0’和‘1’'', ''填充位对奇偶校验计算有用'', ''以上都不是'']', "['A']", 'A</font></strong>
在串行通信中，发送端与接收端需要<strong><font color=''#2656b3''>相互同步</font></strong>。数据开头添加的`0`作为<strong><font color=''#2656b3''>起始位</font></strong>，结尾添加的`1`作为<strong><font color=''#2656b3''>停止位</font></strong>。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>起始位</font></strong></font></strong>：通知接收方数据的到来
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>停止位</font></strong></font></strong>：重置接收方的状态以准备接收新数据  
因此，在串行通信中，接收方必须为字节接收进行同步。若发现上述内容有误，欢迎在下方评论指正。', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5665');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5666, '408考研练习题——计算机网络——数据链路层第24题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一个包含四个节点 S1、S2、S3 和 S4 的局域网。时间被划分为固定大小的时隙，节点只能在时隙开始时发起传输。如果同一时隙内有多个节点同时发送数据，则认为发生了冲突。S1、S2、S3 和 S4 在每个时隙生成帧的概率分别为 0.1、0.2、0.3 和 0.4。这四个站点中任意一个在第一个时隙无冲突地发送帧的概率是（ ）。
', '[''0.462'', ''0.711'', ''0.5'', ''0.652'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>这四个站点在第一个时隙无冲突地发送帧的概率等于以下四种情况的概率之和：- S1 发送且其他节点不发送的概率
- S2 发送且其他节点不发送的概率
- S3 发送且其他节点不发送的概率
- S4 发送且其他节点不发送的概率计算公式为：
```c
0.1 * (1 - 0.2) * (1 - 0.3) * (1 - 0.4)
+ (1 - 0.1) * 0.2 * (1 - 0.3) * (1 - 0.4)
+ (1 - 0.1) * (1 - 0.2) * 0.3 * (1 - 0.4)
+ (1 - 0.1) * (1 - 0.2) * (1 - 0.3) * 0.4
= 0.4404
```
', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5666');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5667, '408考研练习题——计算机网络——数据链路层第25题', '简单', '408考研练习题——计算机网络——数据链路层', '假设在比特率为 64 kbit/s、传播延迟为 20 ms 的链路上使用停止等待协议。假设确认帧的传输时间和节点处理时间可忽略不计。则要实现至少 50% 的链路利用率，所需最小帧大小（单位：字节）为（ ）。
', '[''160'', ''320'', ''640'', ''220'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
$$
\\frac{x}{64} × 2 ≥ \\frac{x}{64} + 2 × 20
$$
', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5667');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5668, '408考研练习题——计算机网络——数据链路层第26题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一个在无中继器的 1 公里（千米）电缆上以 100 Mbps（10⁸ bit/s）速率传输数据的 CSMA/CD 网络。若该网络所需的最小帧大小为 1250 字节，则电缆中的信号传播速度（km/s）是多少？（ ）
', '[''8000'', ''10000'', ''16000'', ''20000'']', "['D']", 'D</font></strong>
根据 CSMA/CD 协议原理，需满足<strong><font color=''#2656b3''>传输时间 ≥ 2 × 传播时间</font></strong>。
具体计算如下：- 帧大小 = 1250 字节 =1250×8=10,000比特
- 传输时间 =100×10610,000​=1×10−4秒
- 传播时间 =v1km​（设信号速度为vkm/s）代入公式得：
$$
1 × 10^{−4} ≥ 2 × \\frac{1}{v} ⇒ v ≤ \\frac{2}{1 × 10^{−4}} = 20, 000 km/s
$$
因此，最大允许的信号传播速度为<strong><font color=''#2656b3''>20,000 km/s</font></strong>。
选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5668');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5669, '408考研练习题——计算机网络——数据链路层第27题', '简单', '408考研练习题——计算机网络——数据链路层', '以下哪项陈述是错误的？（ ）
', '[''分组交换比电路交换能更好地利用带宽资源。'', ''分组交换产生的延迟变化比电路交换更小。'', ''分组交换需要比电路交换更多的每个分组处理。'', ''分组交换可能导致分组顺序错乱，而电路交换不会。'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分组交换网络</font></strong></font></strong>以独立的小数据包传输数据——根据每个分组中的目标地址。接收时，这些分组会按正确顺序重新组装成消息。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>电路交换网络</font></strong></font></strong>在通话期间需要专用的点对点连接。
| 特性 | 分组交换 | 电路交换 |
| --- | --- | --- |
| 带宽利用率 | 更高（数据以分组形式传输） | 较低（需专用连接） |
| 延迟变化 | 更大（无专用路径导致队列波动） | 更小（固定路径） |
| 处理开销 | 更多（需封装/解封装及重组） | 更少（无需额外处理） |
| 分组顺序 | 可能错乱（需终端重组） | 顺序固定（物理链路保障） |
<strong><font color=''#2656b3''>结论</font></strong>：选项 B 的描述与实际特性矛盾，因此<strong><font color=''#2656b3''>B 是错误的</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5669');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5670, '408考研练习题——计算机网络——数据链路层第28题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一种简化的时隙 MAC 协议，其中每个主机始终有数据要发送，并且在每个时隙中以概率 p = 0.2 进行传输。没有退避机制，一个帧可以在一个时隙内传输。如果同一时隙中有多个主机同时传输，则由于冲突导致传输失败。如果每个主机需要至少提供每时间时隙 0.16 帧的吞吐量，那么该协议最多可以支持多少个主机？（ ）
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
这里讨论的是时隙 MAC 协议，当一个站点传输时，其他站点不能传输。现在假设单个站点传输数据的概率为 p，能够传输的站点数为 n。由于当一个站点传输时其他站点必须保持静默，因此会有 n-1 个站点以概率 1-p 保持静默。对于每个站点，需要保证每时隙至少 0.16 帧的吞吐量。因此，$n$个站点的总吞吐量为$0.16 × n$，而每个站点始终以概率 p = 0.2 在每个时隙中尝试传输。因此：
$$
0.16 × n = n × 0.2 × (0.8)n−1
$$

$$
0.8 = 0.8^{n-1}
$$
比较等式两边可得：
$$
1 = n - 1
$$
这意味着$n = 2$。', 9, 'Mogullzr', '2026-02-02 11:53:07', 9, NULL, '2026-02-02 11:53:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5670');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5671, '408考研练习题——计算机网络——数据链路层第29题', '简单', '408考研练习题——计算机网络——数据链路层', '关于 CSMA/CD 的以下陈述中，哪一项是正确的？（ ）
', '[''IEEE 802.11 无线局域网运行 CSMA/CD 协议'', ''以太网不基于 CSMA/CD 协议'', ''CSMA/CD不适合像卫星网络这样的高传播延迟网络'', ''CSMA/CD网络中不存在竞争'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>CSMA/CD 要求发送方至少持续传输到第一个比特到达接收方为止，以检测可能发生的冲突。
对于具有<strong><font color=''#2656b3''>高传播延迟</font></strong>的网络（如卫星网络），这种时间会变得过长，导致所需的<strong><font color=''#2656b3''>最小数据包尺寸</font></strong>过大而不可行。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5671');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5672, '408考研练习题——计算机网络——数据链路层第30题', '简单', '408考研练习题——计算机网络——数据链路层', '以下关于网桥的陈述中，哪一项是错误的？（ ）
', '[''网桥是第 2 层设备'', ''网桥减少冲突域'', ''网桥用于连接两个或多个局域网（LAN）段'', ''网桥减少广播域'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 网桥是第 2 层设备 - 正确用于将两个独立的以太网网络连接成一个扩展的以太网，而以太网工作在数据链路层。
- 网桥减少冲突域 - 正确网桥是一个具有两个接口的设备，会创建两个冲突域。它仅将从一个接口接收到的流量转发到目标第 2 层设备（根据其 MAC 地址）所连接的接口。
- 网桥用于连接两个或多个局域网（LAN）段 - 正确这是网桥的核心功能。
- 网桥减少广播域 - 错误网桥可以减少冲突域，但不能减少广播域。广播帧仍会在所有端口泛洪，因此广播域范围未被缩小。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5672');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5673, '408考研练习题——计算机网络——数据链路层第31题', '简单', '408考研练习题——计算机网络——数据链路层', '在 MAC 层使用 CSMA/CD 协议的网络通过无中继器的 1 公里电缆以 1 Gbps 运行。电缆中的信号速度为 2×10⁸ 米/秒。该网络的最小帧大小应为（ ）。
', '[''10000 bits'', ''10000 bytes'', ''5000 bits'', ''5000 bytes'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>根据公式$S ≥ \\frac{2BL}{P}$，其中：- 电缆长度L=1000m
- 传播速度P=2×108m/s
- 带宽B=1Gbps=109bps<strong><font color=''#2656b3''>计算过程：</font></strong>
$$
S ≥ \\frac{2 × 10^{9} × 1000}{2 × 10^{8}} = 10000 bits
$$
因此最小帧大小应为<strong><font color=''#2656b3''>10000 bits</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5673');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5674, '408考研练习题——计算机网络——数据链路层第32题', '简单', '408考研练习题——计算机网络——数据链路层', '一个信道的比特率为 4 kbps，单向传播延迟为 20 ms。该信道使用停等协议，确认帧的传输时间可以忽略不计。为了达到至少 50% 的信道效率，最小帧大小应为（ ）：
', '[''80 字节'', ''80 比特'', ''160 字节'', ''160 比特'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
$$
效率 = \\frac{数据包传输时间}{数据包传输时间 + 2 × 传播延迟}
$$
因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5674');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5675, '408考研练习题——计算机网络——数据链路层第33题', '简单', '408考研练习题——计算机网络——数据链路层', '在采用时分复用（TDM）介质访问控制的总线型局域网中，每个站点被分配一个周期内的固定时隙用于发送数据。假设每个时隙的长度为发送 100 位所需的时间加上端到端传播延迟。已知信号传播速度为 2×10⁸ 米/秒，局域网长度为 1 公里，带宽为 10 Mbps。若要求每个站点的吞吐量达到 2/3 Mbps，则该局域网最多可容纳多少个站点？（ ）
', '[''3'', ''5'', ''10'', ''20'']', "['C']", 'C</font></strong>
已知 TDM 局域网中：- 数据包大小L=100比特
- 带宽B=10Mbps =10×106bps
- 距离d=1公里 =1×103米
- 传播速度v=2×108米/秒
- 每个站点吞吐量b=32​Mbps =32​×106bps<strong><font color=''#2656b3''>计算步骤</font></strong>：
$$
T_{x} = \\frac{L}{B} = \\frac{100}{10 × 10^{6}} = 1 × 10^{−5}秒
$$
因此，当每个站点吞吐量为$\\frac{2}{3}$Mbps 时，局域网最多可容纳<strong><font color=''#2656b3''>10</font></strong>个站点。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5675');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5676, '408考研练习题——计算机网络——数据链路层第34题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑以下消息 M = 1010001101。使用除数多项式 x⁵ + x⁴ + x² + 1 对该消息进行循环冗余校验（CRC）的结果是（ ）：
', '[''01110'', ''01011'', ''10101'', ''10110'']', "['A']", 'A</font></strong>
M = 1010001101
除数多项式：1·x⁵ + 1·x⁴ + 0·x³ + 1·x² + 0·x¹ + 1·x⁰
除数多项式位数：110101
需附加到消息的位数 = (除数多项式位数 - 1) = 5
在消息末尾添加 5 个零，修改后的消息：101000110100000
现在，用除数多项式位数对消息进行异或除法运算。再次将结果的余数调整为 5 位，这就是随消息一起发送的 CRC 值。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5676');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5677, '408考研练习题——计算机网络——数据链路层第35题', '简单', '408考研练习题——计算机网络——数据链路层', '发送方使用停等 ARQ 协议可靠传输帧。帧大小为 1000 字节，发送端的传输速率为 80 Kbps（1 Kbps = 1000 bit/秒）。确认帧大小为 100 字节，接收端的传输速率为 8 Kbps。单向传播延迟为 100 ms。假设无帧丢失，发送方吞吐量为（  ）字节/秒。
', '[''2500'', ''2000'', ''1500'', ''500'']', "['A']", 'A</font></strong>
总时间 = 传输时间 + 2×传播延迟 + 确认帧传输时间- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输时间</font></strong></font></strong>：(1000×8)/(80×1000) = 0.1 秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>双程传播延迟</font></strong></font></strong>：2×100ms = 0.2 秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>确认帧时间</font></strong></font></strong>：(100×8)/(8×1000) = 0.1 秒  
总时间 = 0.1 + 0.2 + 0.1 = 0.4 秒吞吐量计算公式：

$$
吞吐量 = \\frac{数据包大小}{总时间}
$$
代入数值：

$$
吞吐量 = \\frac{1000}{0.4} = 2500字节/秒
$$
', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5677');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5678, '408考研练习题——计算机网络——数据链路层第36题', '简单', '408考研练习题——计算机网络——数据链路层', '在以太网局域网中，以下哪项陈述是正确的（ ）？
', '[''站点一旦开始传输帧就会停止感知信道。'', ''阻塞信号的目的是填充小于最小帧长度的帧。'', ''即使检测到冲突，站点仍会继续传输数据包。'', ''指数退避机制可降低重传时发生冲突的概率'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>以太网是最流行且广泛使用的数据传输局域网。它是数据链路层的协议，规定了数据如何格式化传输以及如何将数据放置在网络上传输。现在我们逐一分析各选项：- (A) 错误在以太网中，站点在发送帧前不需要停止感知信道。CSMA/CD 机制要求站点持续监听信道状态，直到帧发送完成。
- (B) 错误阻塞信号（Jam Signal）的作用是通知所有设备已发生冲突，强制它们停止进一步的数据传输，而非填充帧长度。
- (C) 错误一旦检测到冲突，站点会立即停止传输并发送阻塞信号，以确保网络中所有设备知晓冲突发生。
- (D) 正确指数退避机制通过随机延迟重传时间，有效降低多个站点同时重传导致的新冲突概率，从而提高网络效率。', 9, 'Mogullzr', '2026-02-02 11:53:08', 9, NULL, '2026-02-02 11:53:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5678');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5679, '408考研练习题——计算机网络——数据链路层第37题', '简单', '408考研练习题——计算机网络——数据链路层', '一个网络的数据传输带宽为 20 × 10⁶ 比特每秒。它在 MAC 层使用 CSMA/CD 协议。从一个节点到另一个节点的最大信号传播时间为 40 微秒。该网络中帧的最小尺寸是（ ）字节。
', '[''200'', ''250'', ''400'', ''1200'']', "['A']", 'A</font></strong>
要使帧尺寸最小，其传输时间应等于单向传播延迟的两倍。即，$T_{x} = 2T_{p}$假设最小帧尺寸为$L$比特。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输时间公式</font></strong></font></strong>：Tx​=BL​
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>已知条件</font></strong></font></strong>：

- 带宽B=20×106比特/秒
- 传播延迟Tp​=40微秒由于$T_{x} = 2T_{p}$，代入得：
$$
\\frac{L}{20 × 10^{6}} = 80 μs
$$
解得：
$$
L = 20 × 10^{6} × 80 × 10^{−6} = 1600 比特
$$
<strong><font color=''#2656b3''>单位转换</font></strong>：
1600 比特 ÷ 8 = 200 字节因此，A 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5679');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5680, '408考研练习题——计算机网络——数据链路层第38题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一个带宽为 128×10³ 比特/秒的卫星通信链路，单向传播延迟为 150 ms。该链路上使用选择性重传（重复）协议发送数据，帧大小为 1 千字节。忽略确认帧的传输时间。为了实现 100% 的利用率，序列号字段所需的最小位数是（ ）。
', '[''2'', ''4'', ''6'', ''8'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>要实现 100% 效率，应发送的帧数 = 1 + 2 ×$T_{p}/T_{t}$，其中$T_{p}$是传播延迟，$T_{t}$是传输延迟。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输延迟</font></strong></font></strong>Tt​= 帧大小 / 带宽 = (1 KB × 8 bit/byte) / (128×10³ bit/s) = 0.064 s = 64 ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传播延迟</font></strong></font></strong>Tp​= 150 ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>发送窗口大小</font></strong></font></strong>= 1 + 2 × (150 ms / 64 ms) ≈ 5.687 → 向上取整为 6由于选择性重传协议要求接收窗口大小与发送窗口大小相等，因此需要的不同序列号数量为：
6（发送窗口） + 6（接收窗口） = 12表示 12 个不同序列号所需的最小位数为：
log₂(12) ≈ 3.584 → 向上取整为 4 位因此答案是 (B)', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5680');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5681, '408考研练习题——计算机网络——数据链路层第39题', '简单', '408考研练习题——计算机网络——数据链路层', '一条 1Mbps 的卫星链路连接两个地面站。卫星的高度为 36,504 千米，信号速度为 3 × 10⁸ 米/秒。使用回退 127 滑动窗口协议时，为了使卫星链路的信道利用率达到 25%，数据包的大小应为多少？假设确认报文的大小可以忽略不计，且通信过程中无错误。
（ ）
A. 120 字节
B. 60 字节
C. 240 字节
D. 90 字节
', '[''120 字节'', ''60 字节'', ''240 字节'', ''90 字节'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
η = \\frac{窗口大小}{1 + 2a}
$$
', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5681');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5682, '408考研练习题——计算机网络——数据链路层第40题', '简单', '408考研练习题——计算机网络——数据链路层', '在一条 200 米长的电缆上运行速率为 1 Gbps、链路传播速度为 2 × 10⁸ m/s 的 CSMA/CD 网络中，所需的最小帧长度是（ ）：
', '[''125 字节'', ''250 字节'', ''500 字节'', ''以上都不是'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>为了使 CSMA/CD 协议正常工作，帧的传输时间必须大于一个最小值。这个最小值是往返时延（RTT）的最坏情况。
因此，传输时间 ≥ RTT
设帧大小为$f$字节，则：

$$
\\frac{f}{1Gbps} ≥ \\frac{2 ∗ 200}{2 ∗ 10^{8}}
$$

$$
f ≥ \\frac{2 ∗ 200 ∗ 10^{9}}{2 ∗ 10^{8} ∗ 8}
$$

$$
f ≥ 250
$$
最小帧长度为 250 字节，因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5682');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5683, '408考研练习题——计算机网络——数据链路层第41题', '简单', '408考研练习题——计算机网络——数据链路层', '链路上传输的数据使用以下二维奇偶校验方案进行错误检测：
每个 28 位序列被排列成一个 4×7 矩阵（行 r₀ 到 r₃，列 d₇ 到 d₁），并通过添加一列 d₀ 和一行 r₄ 的奇偶校验位进行填充。这些奇偶校验位使用<strong><font color=''#2656b3''>偶校验</font></strong>方案计算。列 d₀（或行 r₄）中的每一位表示对应行（或列）的奇偶性。这 40 位通过数据链路传输。下表显示了接收方接收到的数据，并有 n 个错误位。n 的最小可能值是多少？（ ）
', '[''1'', ''2'', ''3'', ''4'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 在给定的二维奇偶校验矩阵中，除了 r₁ 外的所有行都具有偶校验。因此，该行至少存在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 位错误</font></strong></font></strong>。
- 此外，有三列具有奇校验（奇校验表示错误），即 d₅、d₂和 d₀。
- 因此，必须至少存在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3 位错误</font></strong></font></strong>。
- 这三个错误可能：

- 全部出现在 r₁中
- 或者其中两个错误可能出现在其他任何行
- 由于 r₁具有奇校验，因此该行至少有一个错误位', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5683');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5684, '408考研练习题——计算机网络——数据链路层第42题', '简单', '408考研练习题——计算机网络——数据链路层', '假设某 100 Mbps 以太网的单向传播延迟为 1.04 微秒，其 48 位阻塞信号的最小帧大小（单位：bit）是（ ）：
', '[''112'', ''160'', ''208'', ''256'']', "['D']", 'D</font></strong>
最小帧大小需满足：

$$
\\frac{x}{100 Mbps} ≥ \\frac{48}{100 Mbps} + RTT
$$
即：

$$
x ≥ 48 + RTT × 100 Mbps
$$
代入数值计算：

$$
x ≥ 48 + 2 × 1.04 × 10^{−6} s × 100 × 10^{6} bps
$$

$$
x ≥ 48 + 208
$$

$$
x ≥ 256 bits
$$
选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5684');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5685, '408考研练习题——计算机网络——数据链路层第43题', '简单', '408考研练习题——计算机网络——数据链路层', '以下哪种设备会接收来自一个网络设备的数据，并根据 MAC 地址将其转发到目标节点？（ ）
', '[''集线器'', ''调制解调器'', ''交换机'', ''网关'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>参考</font></strong>- 网络设备中，交换机会根据 MAC 地址表进行数据帧的定向转发
- 相较于集线器的广播式转发，交换机实现了点对点通信
- 网关工作在网络层，负责不同协议网络间的转换
- 调制解调器主要实现数字信号与模拟信号的相互转换<strong><font color=''#2656b3''>结论</font></strong>
选择 (C) 是因为交换机通过学习 MAC 地址构建转发表，能精准地将数据帧转发至目标设备，这是其区别于其他网络设备的核心特性。', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5685');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5686, '408考研练习题——计算机网络——数据链路层第44题', '简单', '408考研练习题——计算机网络——数据链路层', '千兆以太网中用于寻址的位数是（  ）。
', '[''32 位'', ''48 位'', ''64 位'', ''128 位'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 千兆以太网采用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>48 位地址长度</font></strong></font></strong>实现设备寻址
- 该设计沿用了传统以太网的 MAC 地址标准
- 参考依据：以太网帧格式规范
- 因此选项 (B) 是正确答案', 9, 'Mogullzr', '2026-02-02 11:53:09', 9, NULL, '2026-02-02 11:53:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5686');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5687, '408考研练习题——计算机网络——数据链路层第45题', '简单', '408考研练习题——计算机网络——数据链路层', '假设我们希望以每秒 100 页的速度下载文本文档。假定每页平均包含 24 行，每行有 80 个字符。该通道所需的比特率是多少？（ ）
', '[''192 kbps'', ''512 kbps'', ''1.248 Mbps'', ''1.536 Mbps'']', "['D']", 'D</font></strong>

$$
比特率 = 100 × 24 × 80 × 8 = 1,  536,  000 bit/s
$$
', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5687');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5688, '408考研练习题——计算机网络——数据链路层第46题', '简单', '408考研练习题——计算机网络——数据链路层', '如果一个包含 50,000 个字符的文件发送需要 40 秒，那么数据速率是（ ）。
', '[''1 kbps'', ''1.25 kbps'', ''2 kbps'', ''10 kbps'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>- 50,000 个字符需要 40 秒
- 每个字符为 8 位 → 总数据量：50,000 × 8 = 400,000 比特
- 数据速率计算：400,000 比特 ÷ 40 秒 = 10,000 比特/秒
- 单位换算：10,000 bps = 10 Kbps  
因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5688');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5689, '408考研练习题——计算机网络——数据链路层第47题', '简单', '408考研练习题——计算机网络——数据链路层', '在分组交换网络中，若消息大小为 48 字节，每个分组包含 3 字节的头部。若传输该消息需要 24 个分组，则分组大小为（ ）。
', '[''2 字节'', ''1 字节'', ''4 字节'', ''5 字节'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据分组计算</font></strong></font></strong>：48 字节 ÷ 24 个分组 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 字节/分组</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>头部开销</font></strong></font></strong>：每个分组固定包含<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3 字节</font></strong></font></strong>头部
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总分组大小</font></strong></font></strong>：2 字节（数据） + 3 字节（头部） =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>5 字节</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项<strong><font color=''#2656b3''><strong><font color=''#2656b3''>(D)</font></strong></font></strong>正确', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5689');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5690, '408考研练习题——计算机网络——数据链路层第48题', '简单', '408考研练习题——计算机网络——数据链路层', '在以太网 CSMA/CD 中，媒体访问管理用于处理冲突的特殊比特序列称为（ ）
', '[''前导码'', ''后导码'', ''碰撞信号'', ''以上都不是'']', "['C']", 'C</font></strong>
当网络中的两个站点同时检测到冲突时，会立即发送<strong><font color=''#2656b3''>碰撞信号</font></strong>（Jam Signal），这是一个特殊的 32 位比特序列。该信号的作用是确保所有站点都能可靠地检测到冲突，即使冲突发生在信号传播延迟期间。通过持续发送碰撞信号，可以延长冲突持续时间，使网络上所有节点都有足够时间识别冲突并停止数据传输，从而实现冲突处理机制的有效性。', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5690');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5691, '408考研练习题——计算机网络——数据链路层第49题', '简单', '408考研练习题——计算机网络——数据链路层', '在 CRC 中，若数据单元为 100111001，除数为 1011，则接收端的被除数是什么？（ ）
', '[''100111001101'', ''100111001011'', ''100111001'', ''100111001110'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>步骤 1：在数据单元末尾附加（除数位数 - 1）个零</font></strong>- 数据单元 =`100111001`
- 附加 3 个零后变为：`100111001000`<strong><font color=''#2656b3''>步骤 2：使用异或减法进行除法运算</font></strong>
```c
     *********
   1011) 100111001000 (101000001
       1011
      ------
        01011
         1011
        ------
          01000
           1011
          ------
            011
```
<strong><font color=''#2656b3''>步骤 3：将余数与数据单元中附加的零进行异或求和</font></strong>- 原始数据单元 + 附加零：`100111001(000)`
- 异或余数`011`后结果：`100111001011`因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5691');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5692, '408考研练习题——计算机网络——数据链路层第50题', '简单', '408考研练习题——计算机网络——数据链路层', 'ALOHA 用户群体每秒产生 70 个请求。若时间被划分为 50 ms 的时隙单元，则信道负载为（ ）。
', '[''4.25'', ''3.5'', ''350'', ''450'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>请求速率</font></strong></font></strong>：70 个/秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时隙单位</font></strong></font></strong>：50 ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 秒内包含的时隙数</font></strong></font></strong>：  
50ms1000ms​=20
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>信道负载计算公式</font></strong></font></strong>：信道负载=1秒内的时隙数1秒内的请求数​=2070​=3.5
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5692');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5693, '408考研练习题——计算机网络——数据链路层第51题', '简单', '408考研练习题——计算机网络——数据链路层', '一个纯 ALOHA 网络使用带宽为 200 Kbps 的共享信道传输 200 位帧。如果系统（所有站点合计）每秒产生 500 帧，则系统的吞吐量是（ ）。
', '[''0.384'', ''0.184'', ''0.286'', ''0.586'']', "['B']", 'B</font></strong>
纯 ALOHA 的吞吐量 (S) 公式为$S = G ⋅ e^{−2G}$：- 当G=21​时达到最大值
- 即S=21​⋅(e)−1=21​⋅2.711​≈0.184因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5693');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5694, '408考研练习题——计算机网络——数据链路层第52题', '简单', '408考研练习题——计算机网络——数据链路层', '在快速以太网布线中，100 Base-TX 使用（ ）电缆，最大段长度是（ ）。
', '[''双绞线，100 米'', ''双绞线，200 米'', ''光纤，1000 米'', ''光纤，2000 米'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>100 Base-TX</font></strong></font></strong>是快速以太网标准，数据传输速率为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>100 Mbps</font></strong></font></strong>
- 最大段长度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>100 米</font></strong></font></strong>，使用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>双绞线</font></strong></font></strong>作为传输介质
- “Base” 表示采用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>基带传输</font></strong></font></strong>方式
- 因此，选项 (A) 正确', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5694');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5695, '408考研练习题——计算机网络——数据链路层第53题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一个带宽为 50 kbps、往返传播延迟为 500 ms 的卫星信道。如果发送方要传输 1000 位的帧，接收方接收到该帧需要多长时间？（ ）
', '[''250 ms'', ''20 ms'', ''520 ms'', ''270 ms'']', "['D']", 'D</font></strong>
- 已知条件：

- 带宽 = 50 kbps
- 往返时间 = 500 ms = 2 × 传播时间
- 计算步骤：
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传播时间</font></strong></font></strong>= 500 ms ÷ 2 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>250 ms</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输时间</font></strong></font></strong>= 数据大小 ÷ 带宽 = 1000 位 ÷ 50 kbps =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>20 ms</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总接收时间</font></strong></font></strong>= 传播时间 + 传输时间 = 250 ms + 20 ms =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>270 ms</font></strong></font></strong><strong><font color=''#2656b3''>结论</font></strong>：接收方需等待传播时间与传输时间之和，故选择 D（270 ms）。', 9, 'Mogullzr', '2026-02-02 11:53:10', 9, NULL, '2026-02-02 11:53:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5695');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5696, '408考研练习题——计算机网络——数据链路层第54题', '简单', '408考研练习题——计算机网络——数据链路层', '一个模拟信号的比特率为 8000 bps，波特率为 1000。该模拟信号有（ ）个信号元素，每个信号携带（ ）个数据元素。
', '[''256, 8 位'', ''128, 4 位'', ''256, 4 位'', ''128, 8 位'']', "['A']", 'A</font></strong>
- 已知条件

- 比特率Rb​=8000bps
- 波特率Rs​=1000Baud
- 计算步骤
- 每个信号元素携带的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据元素位数</font></strong></font></strong>（bit per symbol）：Rs​Rb​​=10008000​=8位
- 信号元素总数（不同幅度/相位组合数）：2数据位数=28=256个信号元素
- 结论因此，正确答案为256 个信号元素，每个信号携带 8 位数据，对应选项 (A)。', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5696');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5697, '408考研练习题——计算机网络——数据链路层第55题', '简单', '408考研练习题——计算机网络——数据链路层', '以太网中用于连接设备选择共同传输参数（如速度、双工模式和流量控制）的机制或技术称为（ ）
', '[''自动感应'', ''同步'', ''Ping 检测'', ''自动协商'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 自动协商是双绞线以太网中设备选择共同传输参数的过程
- 自动协商在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>IEEE 802.3</font></strong></font></strong>中定义
- 最初是快速以太网的组成部分因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5697');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5698, '408考研练习题——计算机网络——数据链路层第56题', '简单', '408考研练习题——计算机网络——数据链路层', '在由 10 台计算机组成的全互连网状网络中，总共需要（ ）根电缆，每台设备需要（ ）个端口。
', '[''40,9'', ''45,10'', ''45,9'', ''50,10'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 总电缆数计算：全互连网络中任意两台主机之间需一根电缆，总电缆数公式为2n(n−1)​。当n=10时，210×(10−1)​=45根电缆。
- 单机端口需求：每台设备需与其余n−1台设备直连，因此每台设备需10−1=9个端口。
- 结论：综上所述，正确答案为 (C) 45,9。', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5698');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5699, '408考研练习题——计算机网络——数据链路层第57题', '简单', '408考研练习题——计算机网络——数据链路层', '使用汉明码对 16 位数据字进行编码时，需要多少个校验位才能检测 2 位错误并实现单比特纠错？（ ）
', '[''5'', ''6'', ''7'', ''8'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>错误检测需求</font></strong>- 检测d位错误需满足d+1位海明距离
- 此处d=2，所需位数=2+1=3<strong><font color=''#2656b3''>错误纠正需求</font></strong>- 纠正t位错误需满足2t+1位海明距离
- 此处t=1，所需位数=2×1+1=3<strong><font color=''#2656b3''>总需求</font></strong>- 最大值max(3,3)=3位海明距离
- 校验位数r需满足2r≥m+r+1（m=16）
- 尝试r=5:25=32≥16+5+1=22，成立因此，选项 (A) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5699');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5700, '408考研练习题——计算机网络——数据链路层第58题', '简单', '408考研练习题——计算机网络——数据链路层', '在以太网中，以下哪个字段实际上是在物理层添加的，并不属于帧的一部分？（ ）
', '[''前导码'', ''CRC'', ''地址'', ''位置'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>：前导码属于物理层，仅在物理层添加。', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5700');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5701, '408考研练习题——计算机网络——数据链路层第59题', '简单', '408考研练习题——计算机网络——数据链路层', '以太网二层交换机是一种网络元素类型，它提供了（ ）
', '[''不同的冲突域和相同的广播域'', ''不同的冲突域和不同的广播域'', ''相同的冲突域和相同的广播域'', ''相同的冲突域和不同的广播域'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 工作原理

- 交换机本质上是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>多端口网桥</font></strong></font></strong>，通过 MAC 地址表实现精准转发
- 内置<strong><font color=''#2656b3''><strong><font color=''#2656b3''>缓冲区</font></strong></font></strong>优化数据传输效率（更多端口=更低冲突概率）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误检查机制</font></strong></font></strong>：仅转发无差错数据包，避免无效流量传播
- 网络特性分析

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>冲突域划分</font></strong></font></strong>：每个端口构成独立冲突域，有效隔离物理层冲突
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>广播域特性</font></strong></font></strong>：所有端口共享同一广播域，广播帧仍会泛洪全网
- 结论验证

- 冲突域被分割 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>不同冲突域</font></strong></font></strong>
- 广播域未被隔离 →<strong><font color=''#2656b3''><strong><font color=''#2656b3''>相同广播域</font></strong></font></strong>
- 因此选项 A 符合实际网络行为', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5701');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5702, '408考研练习题——计算机网络——数据链路层第60题', '简单', '408考研练习题——计算机网络——数据链路层', '如果一个帧的传输时延为 20ns，传播时延为 30ns，那么停等协议的效率是多少（ ）？
', '[''20%'', ''25%'', ''40%'', ''66%'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 停等协议效率公式：效率=1+2a1​
- 其中参数定义：

- a=传输时延(tx)传播时延(tpd)​
- 代入数值计算：

- a=2030​=1.5
- 效率=1+2×1.51​=41​=0.25
- 最终结果：0.25×100%=25%', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5702');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5703, '408考研练习题——计算机网络——数据链路层第61题', '简单', '408考研练习题——计算机网络——数据链路层', 'IP 地址和端口号的组合被称为（ ）。
', '[''网络号'', ''套接字地址'', ''子网掩码号'', ''MAC 地址'']', "['B']", 'B</font></strong>
IP 地址和端口号的组合称为套接字地址。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>子网掩码号</font></strong></font></strong>是一个 32 位数字，用于屏蔽 IP 地址
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>MAC（媒体访问控制）地址</font></strong></font></strong>是计算机唯一的硬件编号
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>网络号</font></strong></font></strong>是 32 位 IP 地址与网络掩码进行逻辑与运算后得到的数字  
因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:11', 9, NULL, '2026-02-02 11:53:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5703');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5704, '408考研练习题——计算机网络——数据链路层第62题', '简单', '408考研练习题——计算机网络——数据链路层', '地址解析协议（ARP）用于（ ）
', '[''从 DNS 查找 IP 地址'', ''查找默认网关的 IP 地址'', ''查找与 MAC 地址对应的 IP 地址'', ''查找与 IP 地址对应的 MAC 地址'']', "['D']", 'D</font></strong>
地址解析协议（ARP）是一种将互联网协议地址（IP 地址）映射到本地网络中可识别的物理机器地址的协议。它是一个用于将网络层地址转换为链路层地址的低层网络协议。因此，选项（D）正确。', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5704');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5705, '408考研练习题——计算机网络——数据链路层第63题', '简单', '408考研练习题——计算机网络——数据链路层', '以下哪项是 MAC 地址（ ）？
', '[''192.166.200.50'', ''00056A:01A01A5CCA7FF60'', ''568, Airport Road'', ''01:A5:BB:A7:FF:60'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- MAC 地址由<strong><font color=''#2656b3''><strong><font color=''#2656b3''>48 位</font></strong></font></strong>组成
- 包含<strong><font color=''#2656b3''><strong><font color=''#2656b3''>12 个十六进制数字</font></strong></font></strong>（0-9 和 A-F）
- 格式通常表示为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>六组两位十六进制数</font></strong></font></strong>，用冒号`:`或连字符`-`分隔
- 示例：`01:A5:BB:A7:FF:60`符合上述规范
- 其他选项分别为 IP 地址、非标准格式、物理地址', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5705');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5706, '408考研练习题——计算机网络——数据链路层第64题', '简单', '408考研练习题——计算机网络——数据链路层', '虚拟局域网（VLAN）的主要目的是什么？（ ）
', '[''展示网络的正确布局'', ''模拟网络'', ''创建虚拟专用网络'', ''在交换机或设备内分割网络'']', "['D']", 'D</font></strong>
解释：
<strong><font color=''#2656b3''>VLAN（虚拟局域网）的核心功能</font></strong>是通过逻辑方式将物理网络划分为多个独立的广播域。即使设备位于同一物理交换机中，也可以根据需求将它们分配到不同的 VLAN 中，从而实现网络流量的隔离和管理。选项 D 准确描述了这一特性。<strong><font color=''#2656b3''>其他选项分析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A. 展示网络的正确布局</font></strong></font></strong>：属于网络设计/测试范畴，与 VLAN 的核心目的无关。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B. 模拟网络</font></strong></font></strong>：同样属于网络设计/测试范畴，不符合 VLAN 的实际功能。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C. 创建虚拟专用网络</font></strong></font></strong>：指的是 VPN 技术，与 VLAN 不同。', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5706');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5707, '408考研练习题——计算机网络——数据链路层第65题', '简单', '408考研练习题——计算机网络——数据链路层', '以下哪种传输介质不适合用于 CSMA 操作？（ ）
', '[''无线电'', ''光纤'', ''同轴电缆'', ''双绞线'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>原因解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>无线介质限制</font></strong></font></strong>：无线电波传播特性决定了其无法有效实现冲突检测（CD）机制
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>多用户干扰</font></strong></font></strong>：在无线环境中存在大量并发用户时，发送端与接收端之间难以准确检测信号冲突
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>协议适配性</font></strong></font></strong>：CSMA/CA（碰撞避免）更适合无线环境，而传统 CSMA/CD 依赖物理介质的冲突可检测特性因此，选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5707');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5708, '408考研练习题——计算机网络——数据链路层第66题', '简单', '408考研练习题——计算机网络——数据链路层', '在以太网中，MAC 帧中的源地址字段是（ ）地址。
', '[''原始发送方的物理'', ''上一节点的物理'', ''下一目的地的物理'', ''原始发送方的服务端口'']', "['B']", 'B</font></strong>
- 尽管数据报中的源和目的 IP 地址在每个跳转点保持不变，但帧在传输过程中每个站点都会替换源 MAC 地址。
- 因此，对于当前站点而言，源地址字段将包含<strong><font color=''#2656b3''><strong><font color=''#2656b3''>上一节点的 MAC 地址</font></strong></font></strong>。因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5708');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5709, '408考研练习题——计算机网络——数据链路层第67题', '简单', '408考研练习题——计算机网络——数据链路层', '假设每个字符编码由 8 位组成。通过异步串行线路以 2400 波特率和两个停止位每秒可传输的字符数是（ ）
', '[''109'', ''216'', ''218'', ''219'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>波特率定义</font></strong></font></strong>：2400 波特表示串口每秒最大传输速率为 2400 位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单字符开销</font></strong></font></strong>：

- 起始位：1 位
- 字符数据：8 位
- 停止位：2 位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总计</font></strong></font></strong>：11 位/字符
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算过程</font></strong></font></strong>：  
11位/字符2400位/秒​≈218.18
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：实际有效传输字符数为 218 个/秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>补充说明</font></strong></font></strong>：  
在异步串行通信中，奇偶校验位是可选配置项，本题未涉及该字段', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5709');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5710, '408考研练习题——计算机网络——数据链路层第68题', '简单', '408考研练习题——计算机网络——数据链路层', '假设一个数字化语音信道是通过对 8kHz 带宽的模拟语音信号进行数字化处理得到的。要求以最高频率的两倍对信号进行采样（即每赫兹两个样本）。如果假设每个样本需要 8 位，那么所需的比特率是多少？（ ）
', '[''32 kbps'', ''64 kbps'', ''128 kbps'', ''256 kbps'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 采样频率为信号最高频率的 2 倍（即奈奎斯特采样定理）
- 计算公式：比特率 = 采样频率 × 每样本位数
- 具体计算过程：

- 采样频率 = 8 kHz × 2 = 16 kHz
- 比特率 = 16,000 samples/second × 8 bits/sample = 128,000 bps
- 单位换算：128,000 bps = 128 kbps  
因此，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5710');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5711, '408考研练习题——计算机网络——数据链路层第69题', '简单', '408考研练习题——计算机网络——数据链路层', '在二进制汉明码中，若校验位的数量为$r$，则信息位的数量等于：（ ）
', '[''$2r - 1$'', ''$2^{r} - r - 1$'', ''$2r - r + 1$'', ''$2r + r - 1$'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>：- 汉明码的基本原理是通过校验位覆盖特定位置的信息位，实现错误检测与纠正。
- 总码长n=2r−1（包含校验位和信息位）。
- 校验位数量为r，因此信息位数量为总码长减去校验位：信息位=(2r−1)−r=2r−r−1
- 选项 B 的表达式2r−r−1符合上述推导。', 9, 'Mogullzr', '2026-02-02 11:53:12', 9, NULL, '2026-02-02 11:53:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5711');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5712, '408考研练习题——计算机网络——数据链路层第70题', '简单', '408考研练习题——计算机网络——数据链路层', '假设每个字符编码由 8 位组成。通过波特率为 2400 的同步串行线路传输，且包含两个停止位时，每秒可传输的字符数为（ ）：
', '[''109'', ''216'', ''300'', ''219'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 同步通信要求发送端和接收方的时钟同步——以相同速率运行，从而使接收方能在与发送方相同的间隔内采样信号。因此不需要起始位或停止位。正因如此，“同步通信允许在单位时间内通过电路传递更多信息”。
- 2400 波特表示串口最多每秒可传输 2400 位数据。
- 每秒可传输的 8 位字符数 =2400÷8=300正确选项是（C）', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5712');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5713, '408考研练习题——计算机网络——数据链路层第71题', '简单', '408考研练习题——计算机网络——数据链路层', '位填充（Bit stuffing）指的是什么？（ ）
', '[''在 用户数据流 中插入一个 0，以避免与帧的标志序列混淆'', ''在 标志字段 中插入一个 0，以避免歧义'', ''在帧尾添加一个 结束符（trailer）'', ''在数据流传输结束后添加一个 结束符'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 位填充是指在数据中插入<strong><font color=''#2656b3''><strong><font color=''#2656b3''>非信息位</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>注意</font></strong></font></strong>：填充的位不应与<strong><font color=''#2656b3''><strong><font color=''#2656b3''>开销位</font></strong></font></strong>混淆

- 开销位是传输所必需的非数据位（通常作为头部、校验和等的一部分）', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5713');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5714, '408考研练习题——计算机网络——数据链路层第72题', '简单', '408考研练习题——计算机网络——数据链路层', 'IEEE 802.11 是什么的标准？（ ）
', '[''以太网'', ''蓝牙'', ''宽带无线'', ''无线局域网'']', "['D']", 'D</font></strong>
IEEE 802.11 指的是定义无线局域网（WLAN）通信的一系列标准。选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5714');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5715, '408考研练习题——计算机网络——数据链路层第73题', '简单', '408考研练习题——计算机网络——数据链路层', '一个模拟信号的比特率为 6000 bps，波特率为 2000 波特。每个信号元素携带多少个数据元素？（ ）
', '[''0.336 比特/波特'', ''3 比特/波特'', ''120,00,000 比特/波特'', ''以上都不是'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 已知条件

- 波特率 = 2000 波特
- 比特率 = 6000 bps
- 计算公式$$\\text{每波特比特数} = \\frac{\\text{比特率}}{\\text{波特率}}$$
- 代入数值$$\\text{每波特比特数} = \\frac{6000}{2000} = 3\\ \\text{比特/波特}$$
- 结论根据计算结果，选项(B)正确。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5715');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5716, '408考研练习题——计算机网络——数据链路层第74题', '简单', '408考研练习题——计算机网络——数据链路层', '如果传输是异步的，那么在一条 3200 bps 的线路上，每秒可以传输多少个字符（7 位数据 +1 位校验）？（假设 1 个起始位和 1 个停止位）（ ）
', '[''300'', ''320'', ''360'', ''400'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 异步传输时：

- 数据位 + 校验位 + 起始位 + 停止位 = 7 + 1 + 1 + 1 = 10 位/字符
- 每秒传输位数：3200 bit/s
- 可传输字符数：3200 ÷ 10 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>320 字符/秒</font></strong></font></strong>
- 同步传输时：

- 数据位 + 校验位 = 7 + 1 = 8 位/字符
- 每秒传输位数：3200 bit/s
- 可传输字符数：3200 ÷ 8 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>400 字符/秒</font></strong></font></strong>注：本题问的是异步传输场景，因此正确答案为 B（320）。同步传输结果 400 用于对比说明。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5716');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5717, '408考研练习题——计算机网络——数据链路层第75题', '简单', '408考研练习题——计算机网络——数据链路层', '如果两点之间的距离为 48,000 公里，假设电缆中的传播速度为 2.4 × 10⁸ 米/秒，则传播时间是多少？（ ）
', '[''0.5 ms'', ''20 ms'', ''50 ms'', ''200 ms'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>公式依据</font></strong></font></strong>：传播时间 = 距离 ÷ 传播速度
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单位换算</font></strong></font></strong>：

- 距离 = 48,000 公里 =48×106米
- 速度 =2.4×108米/秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算过程</font></strong></font></strong>：传播时间=2.4×10848×106​=0.2秒=200ms
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：最终结果与选项 D 完全一致，故选择 D。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5717');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5718, '408考研练习题——计算机网络——数据链路层第76题', '简单', '408考研练习题——计算机网络——数据链路层', 'A 站使用 32 字节的数据包通过滑动窗口协议向 B 站发送消息。A 与 B 之间的往返延迟为 80ms，路径上的瓶颈带宽为 128kbps。A 应使用的最佳窗口大小是多少？（ ）
', '[''20'', ''40'', ''160'', ''320'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 带宽延迟积（BDP）计算

- 带宽：128 kbps = 128,000 bit/s
- 往返延迟：80 ms = 0.08 s
- BDP = 带宽 × 延迟 = 128,000 bit/s × 0.08 s = 10,240 bit
- 转换为字节

- 10,240 bit ÷ 8 = 1,280 byte
- 计算窗口大小

- 每个数据包大小：32 byte
- 窗口大小 = 1,280 byte ÷ 32 byte/packet = 40 packet因此，最佳窗口大小为<strong><font color=''#2656b3''>40</font></strong>，对应选项 (B)。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5718');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5719, '408考研练习题——计算机网络——数据链路层第77题', '简单', '408考研练习题——计算机网络——数据链路层', '站 A 使用 32 字节的数据包通过滑动窗口协议向站 B 发送消息。A 和 B 之间的往返延迟为 40 毫秒，路径上的瓶颈带宽为 64 kbps。A 的最优窗口大小是（ ）。
', '[''20'', ''10'', ''30'', ''40'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>往返传播延迟</font></strong></font></strong>= 40 毫秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>帧大小</font></strong></font></strong>= 32 × 8 位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>瓶颈带宽</font></strong></font></strong>= 64 kbps<strong><font color=''#2656b3''>计算过程</font></strong>：- 总数据量 = 往返延迟 × 带宽=40ms×64kbps=40×64位
- 转换为字节：840×64​=320字节
- 数据包数量 = 总数据量 ÷ 单包大小32B320B​=10个数据包因此，最优窗口大小为<strong><font color=''#2656b3''>10</font></strong>，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5719');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5720, '408考研练习题——计算机网络——数据链路层第78题', '简单', '408考研练习题——计算机网络——数据链路层', '一个信号的周期为 100 ms。它的频率是（  ）。
', '[''1003 赫兹'', ''10⁻²千赫'', ''10⁻³千赫'', ''10⁵赫兹'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 基本公式频率f=T1​，其中T为周期。
- 代入数值

- 已知周期T=100ms
- 计算得f=1001​Hz
- 单位换算

- 将 ms 转换为秒：100ms=0.1秒
- 因此f=0.11​=10Hz
- 指数形式转换

- 10Hz 可表示为10−2千赫（因1千赫=103赫兹）
- 结论选项 (B) 符合计算结果。', 9, 'Mogullzr', '2026-02-02 11:53:13', 9, NULL, '2026-02-02 11:53:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5720');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5721, '408考研练习题——计算机网络——数据链路层第79题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑以下两个陈述：
S1：ARP 应答的目标 MAC 地址是广播地址。
S2：ARP 请求的目标 MAC 地址是广播地址。
以下哪个选项是正确的？（ ）
', '[''S1 和 S2 均正确'', ''S1 正确，S2 错误'', ''S1 错误，S2 正确'', ''S1 和 S2 均错误'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- S1 分析ARP 应答由知道自身 MAC 地址的设备发送，用于回复特定的 ARP 请求，其目标 MAC 地址是请求设备的 MAC 地址，而非广播地址。结论：S1 错误
- S2 分析ARP 请求会向本地网络中的所有设备广播，以确定特定 IP 地址对应的 MAC 地址，其目标 MAC 地址为广播地址：FF:FF:FF:FF:FF:FF。结论：S2 正确', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5721');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5722, '408考研练习题——计算机网络——数据链路层第80题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑在发送方和接收方之间通过全双工无差错链路运行的滑动窗口流量控制协议。假设以下条件：
为了实现 50% 的链路利用率，发送方窗口大小（以帧数为单位）的最小值（四舍五入到最接近的整数）是（  ）。
', '[''51'', ''50'', ''25'', ''52'']', "['A']", 'A</font></strong>
已知数据帧加确认帧总大小为 2000+10 = 2010 比特，带宽为 1 Mbps（= 10⁶ 比特/秒）。因此，传输时间为 Tx = 2010 比特 / 1 Mbps = 2.01 ms。且已知传播延迟 Tp = 100 ms。根据效率公式，效率 effi = N / (1 + 2Tp/Tx)，其中 N 为窗口大小。
代入 1/2 = N / (1 + 2100 / 2.01)
解得 N = (1 + 2100 / 2.01) / 2
N = 100.502488 / 2
N = 50.251244
N = 51（最接近的整数）', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5722');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5723, '408考研练习题——计算机网络——数据链路层第81题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑基于循环冗余校验（CRC）的错误检测方案，其生成多项式为 X³+X+1。假设要传输的消息 m₄m₃m₂m₁m₀ = 11000。发送方使用上述 CRC 方案在消息末尾附加校验位 c₂c₁c₀，传输的比特串表示为 m₄m₃m₂m₁m₀c₂c₁c₀。校验位序列 c₂c₁c₀ 的值是（ ）：
', '[''101'', ''110'', ''100'', ''111'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>多项式转换</font></strong></font></strong>：X³+X+1 对应二进制表示为`1011`（最高次幂为 3，共 4 位）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>附加操作</font></strong></font></strong>：原始消息`11000`需在末尾附加与生成多项式阶数相同的 3 个 0，形成`11000000`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>模 2 除法</font></strong></font></strong>：将`11000000`除以`1011`，通过异或运算计算余数
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结果验证</font></strong></font></strong>：最终余数（即校验位）为`100`，因此正确答案为 C
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>参考资料</font></strong></font></strong>：循环冗余校验（CRC）的基本原理及实现方法', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5723');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5724, '408考研练习题——计算机网络——数据链路层第82题', '简单', '408考研练习题——计算机网络——数据链路层', '考虑一条链路的数据包丢失概率为 0.2。使用停等协议传输 200 个数据包时，预期需要多少次传输（ ）？
', '[''125'', ''250'', ''225'', ''150'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 对于N个数据包，有Np个会丢失（因为p是丢失概率），因此必须重传
- 对于Np个数据包，又有Np2个会丢失并需重传
- 依此类推<strong><font color=''#2656b3''>期望的传输次数计算如下</font></strong>：
$$
\\begin{array}{cc}
 & = N + Np + Np^{2} + ⋯ \\\\
 & = N(1 + p + p^{2} + ⋯ ) \\\\
 & = N ⋅ \\frac{1}{1 - p} (等比数列求和公式) \\\\
\\end{array}
$$
当$N = 200$且$p = 0.2$时：
$$
期望传输次数 = \\frac{200}{1 - 0.2} = \\frac{200}{0.8} = 250
$$
', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5724');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5725, '408考研练习题——计算机网络——数据链路层第83题', '简单', '408考研练习题——计算机网络——数据链路层', '在异步模式下，使用奇校验和两个停止位的帧格式，通过波特率为 9600 的串行链路，在 15 秒内可以发送多少字节的数据？（ ）
', '[''10,000 字节'', ''12,000 字节'', ''15,000 字节'', ''27,000 字节'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 串行通信原理在串行通信中，信息是按位依次传输的。波特率指定了数据在串行线路上传输的速度，通常以比特每秒（bps）为单位。“9600 波特"表示该串口每秒最多可传输 9600 比特。
- 关键计算步骤
- 总传输时间内的总比特数：  
9600bps×15s=144000bits
- 单个数据帧的总位数：  
起始位（1 位） + 数据位（8 位） + 奇校验位（1 位） + 停止位（2 位） =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>12 位</font></strong></font></strong>
- 可传输的完整帧数量：  
144000bits÷12bits/帧=12000帧
- 每帧对应一个字节，因此总字节数为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>12000 字节</font></strong></font></strong>
- 结论正确答案为12,000 字节（选项 B）。', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5725');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5726, '408考研练习题——计算机网络——数据链路层第84题', '简单', '408考研练习题——计算机网络——数据链路层', '使用 TDM 将四个信道复用。如果每个信道发送 100 字节/秒，且我们每信道复用 1 字节，则链路的比特率是（ ）。
', '[''400 bps'', ''800 bps'', ''1600 bps'', ''3200 bps'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>信道数量</font></strong></font></strong>：4
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>每帧数据分配</font></strong></font></strong>：

- 每信道复用 1 字节 → 每帧总大小 = 1 × 4 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>4 字节</font></strong></font></strong>
- 转换为位：4 字节 × 8 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>32 位/帧</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>帧传输速率</font></strong></font></strong>：

- 每信道 100 字节/秒 → 每帧 4 字节 → 帧速 = 100 ÷ 1 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>100 帧/秒</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总比特率</font></strong></font></strong>：

- 32 位/帧 × 100 帧/秒 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3200 bps</font></strong></font></strong>  
因此选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5726');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5727, '408考研练习题——计算机网络——数据链路层第85题', '简单', '408考研练习题——计算机网络——数据链路层', '十六进制数 0xAA 和 0x55 的字节之间的汉明距离是（ ）
', '[''7'', ''5'', ''8'', ''6'']', "['C']", 'C</font></strong>
两个字节的汉明距离：
`0xAA = 1010 1010`
`0x55 = 0101 0101`
这两个字节的所有位均不同，因此汉明距离为 8。选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:14', 9, NULL, '2026-02-02 11:53:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1350', '5727');
