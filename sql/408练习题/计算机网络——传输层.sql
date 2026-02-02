INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5796, '408考研练习题——计算机网络——传输层第1题', '简单', '408考研练习题——计算机网络——传输层', '用于实时多媒体、文件传输、DNS 和电子邮件的传输层协议分别是（ ）：
', '[''TCP，UDP，UDP 和 TCP'', ''UDP，TCP，TCP 和 UDP'', ''UDP，TCP，UDP 和 TCP'', ''TCP，UDP，TCP 和 UDP'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>TCP（传输控制协议）和 UDP（用户数据报协议）是两种主要的传输层协议。TCP 是面向连接的，而 UDP 是无连接的，这使得 TCP 比 UDP 更可靠。但 UDP 是无状态的（开销更小），因此在需要及时交付而非错误检查和纠正的场景中更为适用。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>实时多媒体</font></strong></font></strong>：及时交付比正确性更重要 → UDP
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>文件传输</font></strong></font></strong>：正确性至关重要 → TCP
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>DNS</font></strong></font></strong>：及时交付更重要 → UDP
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>电子邮件</font></strong></font></strong>：与文件传输相同 → TCP', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5796');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5797, '408考研练习题——计算机网络——传输层第2题', '简单', '408考研练习题——计算机网络——传输层', '以下哪种传输层协议用于支持电子邮件？（ ）
', '[''SMTP'', ''IP'', ''TCP'', ''UDP'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SMTP</font></strong></font></strong>是应用层协议，负责邮件传输
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP/UDP</font></strong></font></strong>属于传输层协议
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SMTP 选择 TCP</font></strong></font></strong>的原因：

- TCP 提供可靠的数据传输服务
- 确保邮件数据完整无误地到达目标
- 与 UDP 不同，TCP 支持连接建立和错误重传机制', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5797');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5798, '408考研练习题——计算机网络——传输层第3题', '简单', '408考研练习题——计算机网络——传输层', '考虑 TCP 的 AIMD 算法的一个实例，其中慢启动阶段开始时窗口大小为 2 MSS，第一次传输开始时的阈值为 8 MSS。假设第五次传输期间发生超时，请计算第十次传输结束时的拥塞窗口大小（ ）。
', '[''8 MSS'', ''14 MSS'', ''7 MSS'', ''12 MSS'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解析</font></strong></font></strong>根据 AIMD 算法规则：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>慢启动阶段</font></strong></font></strong>：窗口大小按指数增长（每次翻倍）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>拥塞避免阶段</font></strong></font></strong>：窗口大小线性增长（每次 +1 MSS）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>超时处理</font></strong></font></strong>：将当前窗口大小的一半作为新阈值，并重置窗口为 1 MSS，重新进入慢启动阶段。<strong><font color=''#2656b3''>具体过程</font></strong>：- 第 1 次传输：窗口 = 2 MSS（未达阈值 8，继续慢启动）。
- 第 2 次传输：窗口 = 4 MSS（未达阈值 8，继续慢启动）。
- 第 3 次传输：窗口 = 8 MSS（达到阈值，进入拥塞避免阶段）。
- 第 4 次传输：窗口 = 9 MSS（线性增长）。
- 第 5 次传输：窗口 = 10 MSS（发生超时，触发拥塞控制）。

- 新阈值 = 10 / 2 = 5 MSS。
- 窗口重置为 1 MSS，重新进入慢启动阶段。
- 第 6 次传输：窗口 = 2 MSS（未达新阈值 5，继续慢启动）。
- 第 7 次传输：窗口 = 4 MSS（未达新阈值 5，继续慢启动）。
- 第 8 次传输：窗口 = 5 MSS（达到新阈值，进入拥塞避免阶段）。
- 第 9 次传输：窗口 = 6 MSS（线性增长）。
- 第 10 次传输：窗口 = 7 MSS（线性增长）。因此，第十次传输结束时的拥塞窗口大小为<strong><font color=''#2656b3''>7 MSS</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5798');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5799, '408考研练习题——计算机网络——传输层第4题', '简单', '408考研练习题——计算机网络——传输层', '第 4 层防火墙（一种可以查看到传输层所有协议头的设备）无法（ ）
', '[''在晚上 9 点至凌晨 5 点期间阻止全部 HTTP 流量'', ''阻止所有 ICMP 流量'', ''阻止来自特定 IP 地址的入站流量但允许向同一 IP 地址发送出站流量'', ''在晚上 9 点至凌晨 5 点期间阻止多用户系统中特定用户的 TCP 流量'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A</font></strong></font></strong>: 可通过阻止 TCP 端口 80 实现，属于第 4 层功能
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B</font></strong></font></strong>: 第 4 层可识别并阻止 ICMP 协议
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C</font></strong></font></strong>: 基于源/目的 IP 的过滤是第 4 层基本能力
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>D</font></strong></font></strong>: 用户身份识别需依赖应用层信息，超出第 4 层防火墙的能力范围', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5799');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5800, '408考研练习题——计算机网络——传输层第5题', '简单', '408考研练习题——计算机网络——传输层', '在建立 TCP 连接时，初始序列号需通过一个即使主机关闭仍持续运行的时间戳（ToD）时钟生成。该时钟计数器的低 32 位将用于初始序列号。时钟计数器每 ms 递增一次。已知最大数据包生存时间为 64 秒。
以下哪个选项最接近于连接中用于数据包的序列号增加的最小允许速率？（ ）
', '[''0.015/s'', ''0.064/s'', ''0.135/s'', ''0.327/s'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键参数：</font></strong></font></strong>最大数据包生存时间MSL=64秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心逻辑：</font></strong></font></strong>序列号需在MSL时间内至少递增一次，以避免旧数据包与新连接冲突。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算公式：</font></strong></font></strong>  
最小速率=MSL1​=641​≈0.015625/s
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论：</font></strong></font></strong>四舍五入后最接近的选项为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>0.015/s</font></strong></font></strong>，对应选项 (A)。  
若发现上述内容有误，请在下方评论指出。', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5800');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5801, '408考研练习题——计算机网络——传输层第6题', '简单', '408考研练习题——计算机网络——传输层', '以下哪个系统调用会导致发送 SYN 数据包？（ ）
', '[''socket'', ''bind'', ''listen'', ''connect'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>socket() 创建一个特定类型（通过整数标识）的套接字，并为其分配系统资源。bind() 通常在服务器端使用，将套接字与地址结构绑定（即指定本地端口号和 IP 地址）。listen() 在服务器端使用，使已绑定的 TCP 套接字进入监听状态。connect() 在客户端使用，为套接字分配一个空闲的本地端口号。对于 TCP 套接字，它会尝试建立新的 TCP 连接。当客户端调用 connect() 时，TCP 通过以下三次握手建立连接：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>客户端</font></strong></font></strong>通过向服务器发送<strong><font color=''#2656b3''><strong><font color=''#2656b3''>SYN</font></strong></font></strong>（同步）消息请求连接。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>服务器</font></strong></font></strong>通过发送<strong><font color=''#2656b3''><strong><font color=''#2656b3''>SYN-ACK</font></strong></font></strong>响应客户端的请求。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>客户端</font></strong></font></strong>以<strong><font color=''#2656b3''><strong><font color=''#2656b3''>ACK</font></strong></font></strong>响应，连接建立完成。', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5801');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5802, '408考研练习题——计算机网络——传输层第7题', '简单', '408考研练习题——计算机网络——传输层', '在 TCP 拥塞控制算法的慢启动阶段，拥塞窗口的大小（ ）
', '[''不会增加'', ''线性增长'', ''二次方增长'', ''指数增长'']', "['D']", 'D</font></strong>
参考 TCP 拥塞控制慢开始算法。', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5802');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5803, '408考研练习题——计算机网络——传输层第8题', '简单', '408考研练习题——计算机网络——传输层', '以下哪一项使用 UDP 作为传输协议？（ ）
', '[''HTTP'', ''Telnet'', ''DNS'', ''SMTP'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>UDP 特性</font></strong>：无状态、无连接、不可靠
<strong><font color=''#2656b3''>HTTP</font></strong>：需要建立连接 → 使用 TCP
<strong><font color=''#2656b3''>Telnet</font></strong>：字节流协议，需连接 → 使用 TCP
<strong><font color=''#2656b3''>DNS</font></strong>：快速处理小规模查询 → 使用 UDP
<strong><font color=''#2656b3''>SMTP</font></strong>：需要可靠性 → 使用 TCPDNS 查询场景中，UDP 的速度优势与无状态特性使其能高效处理海量用户的短报文请求，因此成为最优选择。', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5803');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5804, '408考研练习题——计算机网络——传输层第9题', '简单', '408考研练习题——计算机网络——传输层', '假设 TCP 连接在发生超时时拥塞窗口的大小为 32KB。该连接的往返时间（RTT）为 100 ms，使用的最大报文段长度（MSS）为 2KB。TCP 连接恢复到 32KB 拥塞窗口所需的时间（单位：ms）是（  ）。
', '[''1100 到 1300'', ''800 到 1000'', ''1400 到 1600'', ''1500 到 1700'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>以报文段数量表示的当前拥塞窗口大小：

$$
\\frac{32KB}{2KB} = 16MSS
$$
当发生超时后，TCP 慢启动算法会将阈值减半至 8MSS（16KB），并进入慢启动阶段（此时拥塞窗口呈指数增长）。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>慢启动阶段</font></strong></font></strong>：从 1MSS 开始，经过 3 个 RTT 后达到 8MSS（1→2→4→8）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>拥塞避免阶段</font></strong></font></strong>：从 8MSS 到 16MSS 需要 8 个 RTT（线性增长，每次增加 1MSS）。总耗时 = (3 + 8) × 100ms = 1100ms，因此答案范围为 1100-1300。', 9, 'Mogullzr', '2026-02-02 11:53:29', 9, NULL, '2026-02-02 11:53:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5804');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5805, '408考研练习题——计算机网络——传输层第10题', '简单', '408考研练习题——计算机网络——传输层', '同一会话的数据包可能通过不同路径路由的是（ ）
', '[''TCP，但不是 UDP'', ''TCP 和 UDP'', ''UDP，但不是 TCP'', ''既不是 TCP，也不是 UDP'']', "['B']", 'B</font></strong>
正确答案是 (B) TCP 和 UDP。在传输控制协议（<strong><font color=''#2656b3''>TCP</font></strong>）和用户数据报协议（<strong><font color=''#2656b3''>UDP</font></strong>）中，同一会话的数据包都可以通过不同的路径进行路由。- TCP 和 UDP 的共性

- 两者均为 IP 网络通信中的传输层协议。
- 尽管 TCP 是面向连接的协议（确保可靠且有序的数据流），而 UDP 是无连接协议（不保证可靠性或顺序），但它们的数据包均可能因网络条件选择不同路径。
- TCP 的路由灵活性

- 虽然 TCP 处理数据包丢失和重传，但网络拥塞、负载均衡或拓扑变化可能导致数据包实际走不同路径。
- UDP 的路由特性

- 每个 UDP 数据包独立发送，无需维护连接状态，因此天然支持多路径传输。综上，<strong><font color=''#2656b3''>TCP 和 UDP 都允许同一会话的数据包通过不同路径路由</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5805');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5806, '408考研练习题——计算机网络——传输层第11题', '简单', '408考研练习题——计算机网络——传输层', '使用 n 位帧序列号的选择性拒绝协议的数据传输最大窗口大小是（ ）：
', '[''$2^{n}$'', ''$2^{n-1}$'', ''$2^{n} - 1$'', ''$2^{n-2}$'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>在选择性拒绝（或选择性重复）协议中，为避免接收方无法区分新旧数据包，需满足以下条件：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>窗口大小限制</font></strong></font></strong>：发送窗口与接收窗口总和不得超过序列号空间总数2n
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>对称分配原则</font></strong></font></strong>：通常将序列号空间均分为发送窗口和接收窗口
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数学推导</font></strong></font></strong>：最大窗口尺寸 =22n​=2n−1因此，当使用 n 位帧序列号时，最大窗口尺寸为$2^{n-1}$。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5806');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5807, '408考研练习题——计算机网络——传输层第12题', '简单', '408考研练习题——计算机网络——传输层', '以下哪项功能必须由传输协议在传输层协议之上实现？（ ）
', '[''数据包丢失恢复'', ''重复数据包检测'', ''按正确顺序交付数据包'', ''端到端连接性'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>端到端连接性</font></strong></font></strong>是传输协议的核心职责，通过建立、维护和终止通信会话实现可靠的数据传输。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP</font></strong></font></strong>提供了 A/B/C 三项功能：

- 数据包丢失恢复（重传机制）
- 重复数据包检测（序列号校验）
- 数据包顺序交付（排序重组）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>UDP</font></strong></font></strong>作为无连接协议，不提供上述可靠性功能，仅保证基本的端到端通信能力。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5807');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5808, '408考研练习题——计算机网络——传输层第13题', '简单', '408考研练习题——计算机网络——传输层', '以下关于传输层中用户数据报协议（UDP）的描述，哪一项是不正确的？（ ）
', '[''在单向通信中表现良好，适合广播信息'', ''发送数据报前会进行三次握手'', ''提供数据报，适合建模其他协议（如 IP 隧道或远程过程调用和网络文件系统）'', ''缺乏重传延迟使其适合实时应用'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>UDP 是一种无连接协议</font></strong></font></strong>，因此不会建立连接。三次握手由传输层完成。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A 选项</font></strong></font></strong>：UDP 是无状态协议，因此适用于需要回答大量客户端小型查询的服务器，因为它不需要为每个客户端存储状态。因此，UDP 适合广播和单向通信。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B 选项</font></strong></font></strong>：三次握手由 TCP 在建立连接时执行：首先发送 SYN 包，然后接收 SYN-ACK，最后发送 ACK 包。UDP 是无连接协议，因此无需执行三次握手。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>C 选项</font></strong></font></strong>：IP 隧道是两种不同网络之间的通信通道。它通过将 IPv6 数据包封装在 IPv4 帧格式中，用于连接跨越 IPv4 互联网的 IPv6 孤岛。远程过程调用是指程序在另一个地址空间中运行子例程。该地址空间可以位于服务器上。它是一个请求 - 响应协议，因此 UDP 适合。数据报也适用，因为 UDP 是面向数据流的协议。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>D 选项</font></strong></font></strong>：TCP 会从源到目的地重传错误的数据包，而 UDP 则丢弃它们。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5808');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5809, '408考研练习题——计算机网络——传输层第14题', '简单', '408考研练习题——计算机网络——传输层', '假设两台主机通过 TCP 连接传输一个大文件。关于该 TCP 连接，以下哪些陈述是<strong><font color=''#2656b3''>错误的</font></strong>？（ ）
', '[''仅 3'', ''仅 1 和 3'', ''仅 1 和 4'', ''仅 2 和 4'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误陈述 1</font></strong></font></strong>：TCP 分段的序列号表示该分段中第一个字节的编号。例如，若某分段包含从 1000 到 1499 的 500 个字节，其序列号为 1000，后续分段的序列号应为 1500（而非 m+1）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误陈述 3</font></strong></font></strong>：接收方通告窗口的大小会随着接收端应用层处理数据而动态变化。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5809');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5810, '408考研练习题——计算机网络——传输层第15题', '简单', '408考研练习题——计算机网络——传输层', '一条链路的传输速率为$10^{6}$bit/s，使用大小为 1000 字节的数据分组。假设确认帧的传输延迟可以忽略不计，且其传播延迟与数据分组的传播延迟相同。同时假设节点处的处理延迟可忽略不计。在此配置下，停等协议的效率恰好为 25%。单向传播延迟（以 ms 为单位）的值是（ ）。
', '[''4'', ''8'', ''12'', ''16'']', "['C']", 'C</font></strong>
在停等协议中，只有在接收到前一个分组的确认帧后才会发送下一个分组。这会导致链路利用率低下。
$$
T_{transmission} = \\frac{L}{R} = \\frac{8000}{10^{6}} = 0.008 s = 8 ms
$$
', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5810');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5811, '408考研练习题——计算机网络——传输层第16题', '简单', '408考研练习题——计算机网络——传输层', '确定服务器进程必须调用`accept`、`bind`、`listen`和`recv`函数的正确顺序（根据 UNIX 套接字 API）（ ）。
', '[''`listen`，`accept`，`bind`，`accept`'', ''`bind`，`listen`，`accept`，`accept`'', ''`bind`，`accept`，`listen`，`accept`'', ''`accept`，`listen`，`bind`，`accept`'']', "['B']", 'B</font></strong>
`bind`、`listen`、`accept`和`recv`是服务器端套接字 API 函数。- `bind()`将套接字与套接字地址结构关联，即指定本地端口号和 IP 地址
- `listen()`使已绑定的 TCP 套接字进入监听状态
- `accept()`接受来自远程客户端的新 TCP 连接请求
- `recv()`用于从远程套接字接收数据服务器初始化流程需遵循以下顺序：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>绑定</font></strong></font></strong>：通过`bind()`告知操作系统监听的端口号
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>监听</font></strong></font></strong>：通过`listen()`在该端口上等待连接请求
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>接受连接</font></strong></font></strong>：当有连接到达时，使用`accept()`建立连接
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>接收数据</font></strong></font></strong>：通过`recv()`开始接收客户端发送的数据此顺序确保了网络服务的正常启动与通信流程。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5811');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5812, '408考研练习题——计算机网络——传输层第17题', '简单', '408考研练习题——计算机网络——传输层', '假设某 TCP 连接的带宽为 1048560 位/秒。设 α 为需要启用 TCP 窗口缩放选项时的 RTT（以 ms 为单位，四舍五入取整），β 为启用窗口缩放选项后的最大可能窗口大小。则 α 和 β 的值分别为：
', '[''63 ms，65535 × 2¹⁴'', ''63 ms，65535 × 2¹⁶'', ''500 ms，65535 × 2¹⁴'', ''500 ms，65535 × 2¹⁶'']', "['C']", 'C</font></strong>
由于 TCP 首部中窗口字段长度限制为 16 位，最大窗口大小受限。当链路的带宽延迟乘积较高时，需要进行缩放以高效利用链路。TCP 允许在带宽延迟乘积超过 65535 字节时进行窗口缩放。给定链路的带宽延迟乘积为 1048560 × α。当该值超过 65535 字节时（即 α > 65535 × 8 / 1048560 ≈ 0.5 秒）需要启用缩放。缩放通过在首部选项字段中指定一个 1 字节的移位计数实现。实际接收窗口大小按移位计数值左移。移位计数的最大值可为 14。因此，启用缩放选项后的最大窗口大小为 65535 × 2¹⁴', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5812');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5813, '408考研练习题——计算机网络——传输层第18题', '简单', '408考研练习题——计算机网络——传输层', '考虑以下陈述：
I. TCP 连接是全双工的。
II. TCP 没有选择性确认选项。
III. TCP 连接是消息流。
上述说法正确的是（）。
', '[''仅 I 正确'', ''仅 I 和 II 正确'', ''仅 II 和 III 正确'', ''I、II 和 III 均正确'']', "['A']", 'A</font></strong>
在 TCP 中，由于发送方和接收方可同时发送分段，因此它是<strong><font color=''#2656b3''>全双工</font></strong>的。
TCP 具有<strong><font color=''#2656b3''>选择性确认（SACK）选项。通过选择性确认，数据接收方可以向发送方告知所有成功到达的分段，从而发送方只需重传实际丢失的分段。由于 TCP 分段中每个字节</font></strong>都会被计数，并且首字节的序号会保存在报头中，因此 TCP 是<strong><font color=''#2656b3''>字节流协议</font></strong>。
因此，只有第一个陈述正确，其余错误。', 9, 'Mogullzr', '2026-02-02 11:53:30', 9, NULL, '2026-02-02 11:53:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5813');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5814, '408考研练习题——计算机网络——传输层第19题', '简单', '408考研练习题——计算机网络——传输层', '考虑一个连接两个相距 8000 公里的系统的网络。该网络的带宽为 500 × 10⁶ 位/秒，媒体的传播速度为 4 × 10⁶ 米/秒。需要为该网络设计一个 Go-Back-N 滑动窗口协议。平均数据包大小为 10⁷ 位。要求网络以满容量运行。假设节点的处理延迟可以忽略不计。那么，序列号字段的最小位数应为（ ）。
', '[''2'', ''4'', ''8'', ''16'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传播时间</font></strong></font></strong>= (8000 × 1000) / (4 × 10⁶) = 2 秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总往返传播时间</font></strong></font></strong>= 2 × 2 = 4 秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单个数据包的传输时间</font></strong></font></strong>= 数据包大小 / 带宽 = 10⁷ / (500 × 10⁶) = 0.02 秒
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>在收到确认之前可发送的数据包总数</font></strong></font></strong>= 往返传播时间 / 单个传输时间 = 4 / 0.02 = 200
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最大可能窗口大小</font></strong></font></strong>= 200
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>Go-Back-N 协议要求</font></strong></font></strong>：最大序列号应比窗口大小多 1 → 需要 201 个序列号
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>序列号编码需求</font></strong></font></strong>：201 个不同值可用 8 位二进制表示（2⁷=128 < 201 ≤ 2⁸=256）', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5814');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5815, '408考研练习题——计算机网络——传输层第20题', '简单', '408考研练习题——计算机网络——传输层', '在一条 TCP 连接中，当前拥塞窗口大小为 Congestion Window = 4 KB。接收方通告的窗口大小为 Advertise Window = 6 KB。发送方已发送的最后一个字节是 LastByteSent = 10240，接收方已确认的最后一个字节是 LastByteAcked = 8192。发送方当前的窗口大小是（ ）。
', '[''2048 字节'', ''4096 字节'', ''6144 字节'', ''8192 字节'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>发送方的窗口大小由`min(CWND, AWND)`减去已传输数据量（Bytes in Flight）决定。具体步骤如下：- 参数换算

- 拥塞窗口（CWND）为 4 KB，即 4096 字节
- 接收方通告窗口（AWND）为 6 KB，即 6144 字节
- 计算有效窗口上限有效窗口上限是拥塞窗口和接收窗口中较小的一个，即 4096 字节
- 计算已传输数据量（Bytes in Flight）已传输数据量等于 LastByteSent 减去 LastByteAcked，即 10240 减去 8192，得到 2048 字节
- 最终可用窗口大小可用窗口大小等于有效窗口上限减去已传输数据量，即 4096 减去 2048，结果为 2048 字节<strong><font color=''#2656b3''>注意：</font></strong>题目中标准答案标注为 B（4096 字节），但根据上述计算，正确结果应为<strong><font color=''#2656b3''>2048 字节（选项 A）</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5815');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5816, '408考研练习题——计算机网络——传输层第21题', '简单', '408考研练习题——计算机网络——传输层', '考虑以下关于 TCP 中使用的超时值的陈述：
i. 超时值在整个连接期间被设置为 TCP 连接建立期间测量的 RTT（往返时间）。
ii. 使用适当的 RTT 估计算法来设置 TCP 连接的超时值。
iii. 超时值被设置为发送方到接收方传播延迟的两倍。
以下哪个选项正确？（ ）
', '[''i 是错误的，但 ii 和 iii 是正确的'', ''i 和 iii 是错误的，但 ii 是正确的'', ''i 和 ii 是错误的，但 iii 是正确的'', ''i、ii 和 iii 都是错误的'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>TCP 中的超时定时器：不能使用数据链路层（DLL）中使用的静态定时器（HOP 到 HOP 连接），因为没有人知道从发送方到接收方路径中有多少跳（由于使用 IP 服务且路径可能随时间变化）。因此，TCP 中使用动态定时器。超时定时器应根据流量增加或减少，以避免因重传导致不必要的拥塞。为此目的有三种算法：1. 基本算法 2. Jacobson 算法 3. Karl 的改进算法。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>超时值在整个连接期间被设置为 TCP 连接建立期间测量的 RTT</font></strong></font></strong>— 错误。超时值不能固定整个连接期间，这会使定时器变为静态定时器，我们需要动态定时器来处理超时。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>使用适当的 RTT 估计算法来设置 TCP 连接的超时值</font></strong></font></strong>— 正确。是的，所有三种算法都是用于动态设置超时值的适当 RTT 估计算法。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>超时值被设置为发送方到接收方传播延迟的两倍</font></strong></font></strong>— 错误。此陈述错误，因为在数据链路层中，当已知 HOP 到 HOP 距离时，超时值被设置为传播延迟的两倍，而不是在 TCP 层。', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5816');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5817, '408考研练习题——计算机网络——传输层第22题', '简单', '408考研练习题——计算机网络——传输层', '考虑一个 TCP 连接，当前处于没有未确认 ACK 的状态。发送方连续发送了两个数据段，第一个段的序列号是 230，第二个段的序列号是 290。第一个段丢失了，但第二个段被接收方正确接收。设 X 表示第一个段中携带的数据量（以字节为单位），Y 表示接收方发送的确认号（ACK number）。
X 和 Y 的值依次为（ ）：
', '[''60 和 290'', ''230 和 291'', ''60 和 231'', ''60 和 230'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>X 的计算</font></strong></font></strong>：第一个段的数据范围从字节编号 230 到 289，共 60 字节
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>Y 的确定</font></strong></font></strong>：由于第一个段丢失，接收方期望的下一个有序字节编号为 230，因此确认号应为 230', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5817');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5818, '408考研练习题——计算机网络——传输层第23题', '简单', '408考研练习题——计算机网络——传输层', '以下哪些陈述是正确的？
(S1) TCP 同时处理拥塞控制和流量控制
(S2) UDP 处理拥塞控制但不处理流量控制
(S3) 快速重传机制处理拥塞控制但不处理流量控制
(S4) 慢启动机制同时处理拥塞控制和流量控制
', '[''仅 S1、S2 和 S3'', ''仅 S1 和 S3'', ''仅 S3 和 S4'', ''仅 S1、S3 和 S4'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S1</font></strong></font></strong>: 通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 窗口</font></strong></font></strong>实现流量控制，通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>拥塞窗口</font></strong></font></strong>实现拥塞控制
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S2</font></strong></font></strong>: UDP 头部没有字段用于控制流量或拥塞
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S3</font></strong></font></strong>: TCP 使用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>快速重传</font></strong></font></strong>解决乱序分段问题，与流量控制无关
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S4</font></strong></font></strong>:<strong><font color=''#2656b3''><strong><font color=''#2656b3''>慢启动</font></strong></font></strong>机制与流量控制无关', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5818');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5819, '408考研练习题——计算机网络——传输层第24题', '简单', '408考研练习题——计算机网络——传输层', '对于 TCP 连接建立的三次握手的过程。以下哪些陈述是正确的？
(S1) 服务器发送的 SYN+ACK 丢失将无法建立连接
(S2) 客户端发送的 ACK 丢失将无法建立连接
(S3) 在无数据包丢失的情况下，服务器状态机将经历 LISTEN → SYN_RCVD → SYN_SENT → ESTABLISHED 的转换
(S4) 在无数据包丢失的情况下，服务器状态机将经历 LISTEN → SYN_RCVD → ESTABLISHED 的转换
', '[''S2 和 S3'', ''S1 和 S4'', ''S1 和 S3'', ''S2 和 S4'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>在三次握手之前，客户端和服务器均处于关闭状态。当开始发送或接收时，双方进入监听（LISTEN）状态。步骤：- 客户端发送 SYN 包，服务器接收。
- 服务器发送 SYN+ACK 包以建立连接，此时客户端准备发送数据。
- 客户端发送 ACK 包给服务器，服务器接收到后也进入已建立（ESTABLISHED）状态。若 SYN+ACK 丢失，则客户端无法建立连接，因此无法向服务器发送数据。
而客户端的 ACK 并非必需，因为如果客户端立即发送数据包，该数据包可被视为对服务器的确认。', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5819');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5820, '408考研练习题——计算机网络——传输层第25题', '简单', '408考研练习题——计算机网络——传输层', '考虑以下关于 TCP 拥塞控制算法慢启动阶段的陈述。注意，cwnd 表示 TCP 拥塞窗口，MSS 表示最大报文段长度。
(1) 每个成功的确认使 cwnd 增加 2 个 MSS。
(2) 每个成功的确认使 cwnd 大约翻倍。
(3) 每个往返时间（RTT）内 cwnd 增加 1 个 MSS。
(4) 每个往返时间（RTT）内 cwnd 大约翻倍。
以下哪一项是正确的？（ ）
', '[''仅 (2) 和 (3) 正确'', ''仅 (1) 和 (3) 正确'', ''仅 (4) 正确'', ''仅 (1) 和 (4) 正确'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心机制</font></strong></font></strong>：慢启动阶段中，每次收到确认（ACK）后，`cwnd`增加<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1 个 MSS</font></strong></font></strong>，而非 2 个 MSS 或翻倍。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>指数增长特性</font></strong></font></strong>：由于每个 RTT 内可接收多个 ACK，`cwnd`在每个 RTT 内会<strong><font color=''#2656b3''><strong><font color=''#2656b3''>大致翻倍</font></strong></font></strong>（近似指数增长）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：

- 陈述 (1) 错误（应为 +1 MSS）
- 陈述 (2) 错误（单次 ACK 不会导致翻倍）
- 陈述 (3) 错误（RTT 内增加量与 ACK 数量相关，非固定 1 MSS）
- 陈述 (4) 正确（RTT 内整体翻倍）
- 因此，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>仅 (4) 正确</font></strong></font></strong>，选项 (C) 为正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5820');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5821, '408考研练习题——计算机网络——传输层第26题', '简单', '408考研练习题——计算机网络——传输层', '考虑一个端到端带宽为 1 Gbps（= 10⁹ bit/秒）的长期 TCP 会话。该会话以序列号 1234 开始。在该序列号可以再次使用之前的最小时间（单位：秒，四舍五入到最接近的整数）是（ ）。
', '[''34'', ''4.30'', ''43'', ''以上选项都不对'']', "['A']", 'A</font></strong>
由于<strong><font color=''#2656b3''>TCP 序列号字段为 32 位</font></strong>，因此总共有$2^{32}$个唯一的序列号（从 0 到$2^{32} - 1$），这是 TCP 数据的限制。但如果需要通过 TCP 发送超过$2^{32}$字节的数据，则在发送完$2^{32}$字节或唯一序列号后需要重复此过程。这个概念称为<strong><font color=''#2656b3''>绕回（wrap-around）</font></strong>，它允许通过 TCP 发送无限数据。问题询问的是<strong><font color=''#2656b3''>绕回时间</font></strong>，即首先遍历所有唯一序列号所需的时间，即$2^{32}$。TCP 为每个数据字节分配 1 个序列号。计算公式如下：
$$
T_{wrap-around} = \\frac{总数据量}{带宽}
$$
具体步骤：- 总数据量：232字节=232×8bit=34,359,738,368bit
- 带宽：109bit/秒
- 时间：10934,359,738,368​≈34.35秒根据题目要求，四舍五入到最接近的整数，结果为<strong><font color=''#2656b3''>34 秒</font></strong>（向上取整或向下取整均可接受，即 34 和 35 都正确）。 因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5821');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5822, '408考研练习题——计算机网络——传输层第27题', '简单', '408考研练习题——计算机网络——传输层', '将以下内容进行匹配（ ）：
', '[''P-III, Q-IV, R-II, S-I'', ''P-II, Q-I, R-IV, S-III'', ''P-IV, Q-I, R-II, S-III'', ''P-IV, Q-I, R-III, S-II'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- UDP 报头的端口号为 16 位
- 媒体访问控制（MAC）地址是分配给网络设备的全局唯一标识符，通常被称为硬件或物理地址。其长度为 6 字节（48 位），格式为 MM:MM:MM:SS:SS:SS
- IPv6 中的下一个头部字段表示第一个扩展头部（如果存在）或上层协议数据单元（如 TCP、UDP 或 ICMPv6）。该字段大小为 8 位。当指示互联网层之上的上层协议时，此处使用的值与 IPv4 协议字段相同
- TCP 报头的序列号（32 位）具有双重作用：

- 若 SYN 标志位被设置为 1，则此字段为初始序列号，实际第一个数据字节的序列号以及对应 ACK 中的确认号为此序列号加 1
- 若 SYN 标志位为 0，则此字段为当前会话中该分段第一个数据字节的累计序列号因此，选项 (C) P-IV, Q-I, R-II, S-III 是正确的。', 9, 'Mogullzr', '2026-02-02 11:53:31', 9, NULL, '2026-02-02 11:53:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5822');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5823, '408考研练习题——计算机网络——传输层第28题', '简单', '408考研练习题——计算机网络——传输层', '在 OSI 参考模型中，以下哪一层也被称为端到端层？（ ）
', '[''网络层'', ''数据层'', ''会话层'', ''传输层'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>答案解析：</font></strong>在 OSI 模型中，传输层负责端到端通信。', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5823');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5824, '408考研练习题——计算机网络——传输层第29题', '简单', '408考研练习题——计算机网络——传输层', '通常 TCP 是可靠的，而 UDP 不可靠。DNS 需要可靠性却使用 UDP 的原因是（ ）：
', '[''UDP 速度更慢'', ''DNS 服务器必须保持连接'', ''DNS 请求通常很小且适合在 UDP 数据段中传输'', ''以上都不是'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- DNS 请求通常较小（512 字节），适合通过 UDP 快速传输
- 当响应数据超过 512 字节或存在安全需求时，会切换至 TCP
- 因此选项 (C) 正确', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5824');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5825, '408考研练习题——计算机网络——传输层第30题', '简单', '408考研练习题——计算机网络——传输层', 'A 站使用 32 字节的数据包通过滑动窗口协议向 B 站发送消息。A 与 B 之间的往返时延为 40ms，且 A 与 B 路径上的瓶颈带宽为 64kbps。A 应使用的最佳窗口大小是多少？（ ）
', '[''5'', ''10'', ''40'', ''80'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
T_{trans} = \\frac{L}{B} = \\frac{256}{64} = 4 ms
$$
', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5825');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5826, '408考研练习题——计算机网络——传输层第31题', '简单', '408考研练习题——计算机网络——传输层', '应用程序层可以向下传递给 TCP 层的最大数据量是多少？（ ）
', '[''任意大小'', ''216 字节 - TCP 头部大小'', ''216 字节'', ''1500'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>TCP 协议本身具有流量控制和拥塞控制机制，能够动态适应网络状况。应用程序层数据通过 TCP 的滑动窗口机制进行传输，最大可发送的数据量由接收方的接收窗口（Receiver Window）和网络路径上的可用带宽决定。因此理论上应用程序层可以发送任意大小的数据，TCP 会自动将其分割为适合网络传输的 MSS（Maximum Segment Size）大小的数据段。
选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5826');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5827, '408考研练习题——计算机网络——传输层第32题', '简单', '408考研练习题——计算机网络——传输层', 'TCP 中确认号（ACK number）为 1000 时，总是意味着（ ）
', '[''已成功接收 999 字节'', ''已成功接收 1000 字节'', ''已成功接收 1001 字节'', ''以上都不正确'']', "['D']", 'D</font></strong>
TCP 的确认号表示期望接收的下一个字节的编号。- 若<strong><font color=''#2656b3''><strong><font color=''#2656b3''>初始序列号（Initial sequence number）= 1</font></strong></font></strong>，则确认号=1000 表示已传输<strong><font color=''#2656b3''><strong><font color=''#2656b3''>999 字节</font></strong></font></strong>
- 若<strong><font color=''#2656b3''><strong><font color=''#2656b3''>初始序列号= 0</font></strong></font></strong>，则确认号=1000 表示已传输<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1000 字节</font></strong></font></strong>选项 (C) 不可能成立，因为初始序列号不能为 -1（即负数）', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5827');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5828, '408考研练习题——计算机网络——传输层第33题', '简单', '408考研练习题——计算机网络——传输层', '考虑以下陈述：
A. 高速以太网使用光纤传输。
B. 以太网点对点协议（PPPoE）是一种网络协议，用于将以太网帧内封装 PPP 帧。
C. 高速以太网不使用光纤传输。
D. 以太网点对点协议（PPPoE）是一种网络协议，用于将 PPP 帧内封装以太网帧。
以下哪项是正确的？（ ）
', '[''A 和 B 正确；C 和 D 错误。'', ''A 和 B 错误；C 和 D 正确。'', ''A、B、C 和 D 均正确。'', ''A、B、C 和 D 均错误。'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- A. 高速以太网使用光纤传输。

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确。</font></strong></font></strong>高速以太网标准（如千兆以太网、万兆以太网等）广泛使用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>光纤电缆</font></strong></font></strong>进行远距离传输，以实现更高的带宽和抗干扰能力。虽然铜缆也用于短距离连接，但光纤是高速以太网的主要传输介质之一。
- B. 以太网点对点协议（PPPoE）是一种网络协议，用于将以太网帧内封装 PPP 帧。

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确。</font></strong></font></strong><strong><font color=''#2656b3''><strong><font color=''#2656b3''>PPPoE</font></strong></font></strong>确实是一种将<strong><font color=''#2656b3''><strong><font color=''#2656b3''>PPP（点对点协议）帧</font></strong></font></strong>封装在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>以太网帧</font></strong></font></strong>中的协议。这使得 PPP 会话可以通过以太网网络传输，这在许多宽带互联网服务（如 DSL 和光纤入户）中很常见。
- C. 高速以太网不使用光纤传输。

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误。</font></strong></font></strong>这个陈述与陈述 A 直接矛盾。高速以太网明确使用光纤传输。
- D. 以太网点对点协议（PPPoE）是一种网络协议，用于将 PPP 帧内封装以太网帧。

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误。</font></strong></font></strong>这个陈述颠倒了封装的顺序。PPPoE 是将 PPP 帧封装在以太网帧 *内部* ，而不是将以太网帧封装在 PPP 帧内部。综上所述，陈述 A 和 B 是正确的，而陈述 C 和 D 是错误的。因此，正确答案是：<strong><font color=''#2656b3''>A 和 B 正确；C 和 D 错误。</font></strong>', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5828');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5829, '408考研练习题——计算机网络——传输层第34题', '简单', '408考研练习题——计算机网络——传输层', '假设你正在使用网页浏览器浏览万维网并尝试访问 Web 服务器。所使用的底层协议和端口号是什么（ ）？
', '[''UDP，80'', ''TCP，80'', ''TCP，25'', ''UDP，25'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 协议特性</font></strong></font></strong>：TCP 是面向连接的可靠传输协议，适用于需要保证数据完整性和顺序的场景。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>HTTP 默认端口</font></strong></font></strong>：万维网服务（HTTP）通常使用 80 号端口作为标准通信端口。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>对比其他选项</font></strong></font></strong>：

- UDP 是无连接协议，不适用于需要稳定连接的 Web 访问。
- 25 号端口是 SMTP 邮件协议的默认端口，与 Web 服务无关。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：浏览器访问 Web 服务器需通过 TCP 协议在 80 端口建立连接，因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5829');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5830, '408考研练习题——计算机网络——传输层第35题', '简单', '408考研练习题——计算机网络——传输层', '互联网体系结构中传输层的协议数据单元是（ ）：
', '[''报文段'', ''消息'', ''数据报'', ''帧'']', "['A']", 'A</font></strong>
在互联网体系结构中，传输层的协议数据单元对于<strong><font color=''#2656b3''>TCP</font></strong>是<strong><font color=''#2656b3''>报文段</font></strong>（Segment），对于<strong><font color=''#2656b3''>UDP</font></strong>是<strong><font color=''#2656b3''>数据报</font></strong>（Datagram）。其他各层的协议数据单元如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>网络层</font></strong></font></strong>：数据包 (Packet)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据链路层</font></strong></font></strong>：帧 (Frame)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>物理层</font></strong></font></strong>：流 (stream)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>应用层</font></strong></font></strong>：消息 (Message)选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5830');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5831, '408考研练习题——计算机网络——传输层第36题', '简单', '408考研练习题——计算机网络——传输层', '一个设备以 2000 bps 的速率发送数据。发送包含 100,000 个字符的文件需要多长时间？（ ）
', '[''50'', ''200'', ''400'', ''800'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>文件总位数计算</font></strong></font></strong>：100,000 字符 × 8 位/字符 = 800,000 位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据传输速率</font></strong></font></strong>：2000 bps（即每秒传输 2000 位）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>时间计算</font></strong></font></strong>：

- 2000 位 → 1 秒
- 1 位 → 1/2000 秒
- 800,000 位 → 800,000 × (1/2000) = 400 秒- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：因此，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:32', 9, NULL, '2026-02-02 11:53:32', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5831');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5832, '408考研练习题——计算机网络——传输层第37题', '简单', '408考研练习题——计算机网络——传输层', 'TCP 段的最大有效载荷是（ ）：
', '[''65,535'', ''65,515'', ''65,495'', ''65,475'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 窗口最大尺寸</font></strong></font></strong>：65,535 字节
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>头部尺寸</font></strong></font></strong>：

- TCP 头部最小 20 字节，最大 60 字节
- IP 头部最小 20 字节，最大 60 字节
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>有效载荷计算</font></strong></font></strong>：  
最大有效载荷 = 窗口尺寸 - (TCP 最小头部 + IP 最小头部)  
= 65,535 - (20 + 20)  
= 65,535 - 40  
= 65,495 字节因此，正确答案为<strong><font color=''#2656b3''>选项 (C)</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5832');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5833, '408考研练习题——计算机网络——传输层第38题', '简单', '408考研练习题——计算机网络——传输层', '以下哪项不是 TCP 首部中的字段（ ）？
', '[''序列号'', ''分片偏移量'', ''校验和'', ''窗口大小'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分片偏移量</font></strong></font></strong>是 IP 协议首部中的字段，用于标识 IP 数据报分片后各片段在原始数据报中的相对位置。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 首部</font></strong></font></strong>包含的字段包括：序列号（用于字节流编号）、校验和（验证数据完整性）、窗口大小（流量控制）等。
- 因此，选项 B 不属于 TCP 首部字段。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5833');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5834, '408考研练习题——计算机网络——传输层第39题', '简单', '408考研练习题——计算机网络——传输层', '假设对于给定的网络层实现，连接建立开销为 100 字节，断开连接开销为 28 字节。如果传输层希望在该网络之上实现数据报服务，并将其开销控制在最低 12.5%，那么传输层需要保持的最小数据包大小是多少？（忽略传输层本身的开销）（ ）
', '[''512 字节'', ''768 字节'', ''1152 字节'', ''1024 字节'']', "['D']", 'D</font></strong>
要计算连接（100 字节）和断开（28 字节）的 12.5% 开销下的最小数据包大小，请使用公式：
<strong><font color=''#2656b3''>S = 总开销 / 开销百分比</font></strong>具体计算步骤如下：- 计算总开销：100 + 28 = 128 字节
- 将开销比例转换为小数：12.5% = 0.125
- 代入公式：S = 128 / 0.125 = 1024 字节因此，传输层在 12.5% 开销下实现数据报服务的最小数据包大小为<strong><font color=''#2656b3''>1024 字节</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5834');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5835, '408考研练习题——计算机网络——传输层第40题', '简单', '408考研练习题——计算机网络——传输层', '以下哪些陈述是正确的？
(a) 网络的三大类是：电路交换网络、分组交换网络、报文交换网络
(b) 电路交换网络在建立阶段不需要预留资源
(c) 分组交换中，分组无需资源分配
', '[''(a) 和 (b) 仅'', ''(b) 和 (c) 仅'', ''(a) 和 (c) 仅'', ''(a)、(b) 和 (c)'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 (a)</font></strong></font></strong>：网络的三大类是：(i) 电路交换网络 (ii) 分组交换网络 (iii) 报文交换网络。<strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 (b)</font></strong></font></strong>：电路交换网络在建立阶段不需要预留资源。<strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误</font></strong></font></strong>（因为需要预留资源）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>陈述 (c)</font></strong></font></strong>：分组交换中，分组无需资源分配。<strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确</font></strong></font></strong>因此，选项 (C) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5835');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5836, '408考研练习题——计算机网络——传输层第41题', '简单', '408考研练习题——计算机网络——传输层', '为了保证最多能纠正 t 个错误，分组码的最小汉明距离必须为（ ）。
', '[''$t + 1$'', ''$t - 2$'', ''$2t - 1$'', ''$2t + 1$'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>要确保最多能纠正 t 个错误，分组码的最小汉明距离必须至少为<strong><font color=''#2656b3''>2t + 1</font></strong>。根据海明距离：- 若要求码字能够<strong><font color=''#2656b3''><strong><font color=''#2656b3''>纠正 t 个错误</font></strong></font></strong>，则需满足dmin​≥2t+1
- 若仅需<strong><font color=''#2656b3''><strong><font color=''#2656b3''>检测 e 个错误</font></strong></font></strong>，则需满足dmin​≥e+1因此选项 D 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5836');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5837, '408考研练习题——计算机网络——传输层第42题', '简单', '408考研练习题——计算机网络——传输层', '假设您通过网页浏览器向 Web 服务器请求了一个网页。初始时浏览器缓存为空，且浏览器配置为以<strong><font color=''#2656b3''>非持久模式</font></strong>发送 HTTP 请求。该网页包含文本和五张非常小的图片。在浏览器中完全显示该网页所需的最小 TCP 连接数是（  ）。
', '[''6'', ''7'', ''8'', ''9'']', "['A']", 'A</font></strong>
HTTP 非持久模式要求为每个要传输的对象重新建立连接。因此，总共需要 6 次连接（1 次用于文本，5 次用于图片）。选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5837');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5838, '408考研练习题——计算机网络——传输层第43题', '简单', '408考研练习题——计算机网络——传输层', '考虑一个客户端与服务器之间的 TCP 连接，其参数如下：往返时间（RTT）为 6 ms，接收方通告窗口大小为 50 KB，客户端的慢启动阈值为 32 KB，最大报文段长度（MSS）为 2 KB。连接在 t=0 时刻建立。假设传输过程中没有超时和错误。那么，在所有确认应答处理完毕后，t+60 ms 时刻的拥塞窗口大小（单位：KB）是（  ）。
', '[''33'', ''44'', ''55'', ''50'']', "['B']", 'B</font></strong>
已知，阈值 = 32 KB，MSS = 2 KB，RTT = 6 ms。此处，t + 60 等价于第 10 个 RTT（60/6 = 10）。具体过程如下：- 第 1 次传输：2 KB
- 第 2 次传输：4 KB
- 第 3 次传输：8 KB
- 第 4 次传输：16 KB
- 第 5 次传输：32 KB（达到阈值）
- 第 6 次传输：34 KB
- 第 7 次传输：36 KB
- 第 8 次传输：38 KB
- 第 9 次传输：40 KB
- 第 10 次传输：42 KB当第 10 次传输的 RTT 完成时（即 10*6=60 ms），此时拥塞窗口大小为 42 KB。但根据 TCP 规则，<strong><font color=''#2656b3''>在收到第 10 次传输的确认应答后（即第 11 次传输阶段）</font></strong>，拥塞窗口会进入加性增阶段，因此第 11 次传输时窗口大小增加到 44 KB。选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5838');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5839, '408考研练习题——计算机网络——传输层第44题', '简单', '408考研练习题——计算机网络——传输层', '考虑主机 P 和 Q 之间 TCP 连接建立时遵循的三次握手机制。设 X 和 Y 分别为 P 和 Q 随机选择的 32 位初始序列号。假设 P 向 Q 发送一个 TCP 连接请求报文段，其中 SYN 位=1，序号=X，确认位=0。若 Q 接受该连接请求，则 Q 发送给 P 的 TCP 报文段首部中包含的信息是以下哪一项？
', '[''SYN 位=1，序号=X+1，确认位=0，确认号=Y，FIN 位=0'', ''SYN 位=0，序号=X+1，确认位=0，确认号=Y，FIN 位=1'', ''SYN 位=1，序号=Y，确认位=1，确认号=X+1，FIN 位=0'', ''SYN 位=1，序号=Y，确认位=1，确认号=X，FIN 位=0'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>确认位判定</font></strong></font></strong>：因 P 的 SYN=1 且序号=X，Q 必须发送确认，故确认位应为 1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>确认号计算</font></strong></font></strong>：对 P 的初始序列号 X 进行确认，需设置确认号=X+1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SYN 位作用</font></strong></font></strong>：Q 需主动同步自身序列号，因此 SYN 位=1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>FIN 位状态</font></strong></font></strong>：FIN 标志仅用于连接终止阶段，建立阶段应为 0  
综上，选项 (C) 完全符合 TCP 三次握手协议规范', 9, 'Mogullzr', '2026-02-02 11:53:33', 9, NULL, '2026-02-02 11:53:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5839');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5840, '408考研练习题——计算机网络——传输层第45题', '简单', '408考研练习题——计算机网络——传输层', '一个 TCP 服务器应用程序被编程为在主机 S 上监听端口号 P。一个 TCP 客户端通过网络连接到该 TCP 服务器。假设当 TCP 连接处于活动状态时，服务器机器 S 发生崩溃并重新启动。假设客户端未使用 TCP 保活计时器。以下哪些行为是<strong><font color=''#2656b3''>不可能</font></strong>发生的（ ）？
', '[''如果客户端正在等待接收数据包，它可能会无限等待'', ''S 上的 TCP 服务器应用程序在重启后可以继续监听 P 端口'', ''如果客户端在服务器重启后发送数据包，它会收到一个 RST 段'', ''如果客户端在服务器重启后发送数据包，它会收到一个 FIN 段'']', "['_', '_', '解', '析', '_', '_']", '__解析__</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 A</font></strong></font></strong>：由于服务器崩溃导致连接中断，但客户端未启用保活机制，因此客户端可能永远无法检测到连接异常。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 B</font></strong></font></strong>：服务器重启后操作系统通常会释放所有端口绑定，因此重启后监听 P 端口需要应用程序重新初始化。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C</font></strong></font></strong>：若服务器重启后未恢复旧连接状态，客户端发送的数据包会被新服务器视为无效连接，触发 RST 段。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 D</font></strong></font></strong>：FIN 段用于正常关闭连接，而服务器崩溃后的异常断开通常由 RST 段表示。因此，客户端在服务器重启后发送数据包，会收到一个 FIN 段，这是不可能发生的行为。', 9, 'Mogullzr', '2026-02-02 11:53:34', 9, NULL, '2026-02-02 11:53:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5840');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5841, '408考研练习题——计算机网络——传输层第46题', '简单', '408考研练习题——计算机网络——传输层', 'SSL 不负责以下哪项功能（ ）？
', '[''客户端与服务器的相互认证'', ''保密通信'', ''数据完整性保护'', ''错误检测和纠正'']', "['D']", 'D</font></strong>
SSL（安全套接字层）是用于在 Web 服务器和浏览器之间建立加密连接的标准安全技术。该连接确保所有通过 Web 服务器和浏览器的数据保持私密性和完整性。SSL 是行业标准，被数百万网站用于保护其与客户的在线交易。
它用于通过超文本传输协议（HTTP）加密 Web 流量，验证 Web 服务器，并加密 Web 浏览器与 Web 服务器之间的通信等。
因此，除了错误检测和纠正外，其他选项均正确。<strong><font color=''#2656b3''>选项 (D) 正确。</font></strong>SSL 的核心功能包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>客户端与服务器的相互认证</font></strong></font></strong>（A）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据加密实现保密通信</font></strong></font></strong>（B）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>通过消息摘要算法保障数据完整性</font></strong></font></strong>（C）而<strong><font color=''#2656b3''>错误检测和纠正</font></strong>属于网络传输层（如 TCP/IP 协议栈）的职责范畴，SSL 并不直接处理此类功能。', 9, 'Mogullzr', '2026-02-02 11:53:34', 9, NULL, '2026-02-02 11:53:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5841');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5842, '408考研练习题——计算机网络——传输层第47题', '简单', '408考研练习题——计算机网络——传输层', '糊涂窗口综合症是与（ ）相关的问题。
', '[''传输过程中的错误'', ''文件传输协议'', ''TCP 性能下降'', ''接口问题'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>Silly window syndrome</font></strong>是计算机网络中由于<strong><font color=''#2656b3''>TCP 流量控制实现不当</font></strong>导致的问题。该现象通常发生在接收方缓冲区过小或发送方持续发送小数据包时，造成网络资源浪费和传输效率降低。因此，选项（C）正确。', 9, 'Mogullzr', '2026-02-02 11:53:34', 9, NULL, '2026-02-02 11:53:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5842');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5843, '408考研练习题——计算机网络——传输层第48题', '简单', '408考研练习题——计算机网络——传输层', '以下哪个 TCP 首部的控制栏位用於指定发送方没有更多数据要传输？（ ）
', '[''FIN'', ''RST'', ''SYN'', ''PSH'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>FIN</font></strong></font></strong>是 TCP 首部中的控制標誌，表示数据传输结束以终止 TCP 连接
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SYN</font></strong></font></strong>标志用於同步序列號以初始化 TCP 连接
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>RST</font></strong></font></strong>会立即终止 TCP 连接
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>PSH</font></strong></font></strong>标志通知主机应立即将数据上传至接收应用程序因此，选项 (A) 正確。', 9, 'Mogullzr', '2026-02-02 11:53:34', 9, NULL, '2026-02-02 11:53:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1352', '5843');
