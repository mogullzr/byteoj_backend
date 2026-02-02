INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5630, '408考研练习题——计算机网络——物理层第1题', '简单', '408考研练习题——计算机网络——物理层', '调制解调技术主要使用在（ ）通信方式中。
', '[''模拟信道传输模拟数据'', ''数字信道传输模拟数据'', ''数字信道传输数字数据'', ''模拟信道传输数字数据'']', "['D']", 'D</font></strong>
调制解调技术（Modulation and Demodulation）主要用于将<strong><font color=''#2656b3''>数字信号转换为模拟信号</font></strong>，以便通过<strong><font color=''#2656b3''>模拟信道（如电话线、无线电波等）</font></strong>进行传输。在接收端再通过解调将其还原为数字信号。适用场景包括：- 调制器将<strong><font color=''#2656b3''><strong><font color=''#2656b3''>数字数据调制</font></strong></font></strong>成模拟信号进行传输；
- 解调器在接收端将模拟信号<strong><font color=''#2656b3''><strong><font color=''#2656b3''>还原为数字数据</font></strong></font></strong>。因此，调制解调器（Modem）主要用于<strong><font color=''#2656b3''>模拟信道传输数字数据</font></strong>的场景中。', 9, 'Mogullzr', '2026-02-02 11:52:56', 9, NULL, '2026-02-02 11:52:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5630');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5631, '408考研练习题——计算机网络——物理层第2题', '简单', '408考研练习题——计算机网络——物理层', '电话系统的典型参数是信道带宽为 3000Hz，信噪比为 30DB，则该系统的最大数据传输率为（ ）。
', '[''3 kbps'', ''30 kbps'', ''6 kbps'', ''64 kbps'']', "['B']", 'B</font></strong>
要计算该电话系统的最大数据传输率，我们使用<strong><font color=''#2656b3''>香农定理（Shannon Capacity Formula）</font></strong>：
$$
C = B ⋅ \\log_{2}(1 + SNR)
$$
其中：- C：信道容量（最大数据传输率，单位是 bps）
- B：信道带宽（单位是 Hz）
- SNR：信噪比（功率比，不是分贝）
- SNR=10log10​(SNR)<strong><font color=''#2656b3''>已知</font></strong>- B=3000Hz
- SNRdB​=30⇒SNR=1030/10=1000代入香农公式：
$$
C = 3000 ⋅ \\log_{2}(1 + 1000) ≈ 29, 910 bps ≈ 30kbps
$$
得到', 9, 'Mogullzr', '2026-02-02 11:52:56', 9, NULL, '2026-02-02 11:52:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5631');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5632, '408考研练习题——计算机网络——物理层第3题', '简单', '408考研练习题——计算机网络——物理层', '关于曼彻斯特编码，下面叙述中错误的是（ ）。
', '[''曼彻斯特编码效率高'', ''曼彻斯特编码属于基带传输'', ''采用曼彻斯特编码，波特率是数据速率的 2 倍'', ''曼彻斯特编码可以自同步'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 曼彻斯特编码属于基带传输✅
曼彻斯特编码是一种基带传输技术，用于在不调制的情况下直接在信道上传输数字信号。
- 采用曼彻斯特编码，波特率是数据速率的 2 倍✅
曼彻斯特编码中，每一位数据都包含一个中间跳变（例如 1 表示为高到低，0 表示为低到高），因此每秒的数据位数（比特率）为波特率的一半。
- 曼彻斯特编码可以自同步✅
由于每位都有跳变边沿，接收方可以通过这些跳变实现时钟同步，即“自同步”。
- 曼彻斯特编码效率高❌
曼彻斯特编码每个数据位需要两个信号周期，带宽要求比非编码方式更高，因此效率较低。它以牺牲带宽换取同步能力和抗干扰性。正确答案为<strong><font color=''#2656b3''>A</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:52:56', 9, NULL, '2026-02-02 11:52:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5632');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5633, '408考研练习题——计算机网络——物理层第4题', '简单', '408考研练习题——计算机网络——物理层', '列因素中，不会影响信道数据传输率的是（ ）。
', '[''信噪比'', ''频率带宽'', ''信号传播速度'', ''调制速率'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>信道数据传输率（也称为<strong><font color=''#2656b3''>信道容量</font></strong>）主要受以下因素影响：
$$
C = B ⋅ \\log_{2}(1 + SNR)
$$
<strong><font color=''#2656b3''>信号传播速度：</font></strong>- 它决定的是信号<strong><font color=''#2656b3''><strong><font color=''#2656b3''>传播延迟（Latency）</font></strong></font></strong>，而不是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据传输速率（Throughput）</font></strong></font></strong>。
- 即使信号传播得再快（如光速），每秒能传输的数据量仍由前面几项决定。<strong><font color=''#2656b3''>因此，不会影响信道数据传输率的是：信号传播速度。✔</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:56', 9, NULL, '2026-02-02 11:52:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5633');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5634, '408考研练习题——计算机网络——物理层第5题', '简单', '408考研练习题——计算机网络——物理层', '下列编码方式中属于基带传输的是（ ）。
', '[''正交幅度相位调制法'', ''移相键控法'', ''曼彻斯特编码'', ''FSK'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>基带传输：</font></strong>- 指<strong><font color=''#2656b3''><strong><font color=''#2656b3''>不经调制</font></strong></font></strong>、直接在信道上传输数字信号的方式。
- 通常采用编码技术，如：<strong><font color=''#2656b3''><strong><font color=''#2656b3''>曼彻斯特编码</font></strong></font></strong>、NRZ（不归零编码）等。
- 适用于局域网、有线传输等。<strong><font color=''#2656b3''>带通传输：</font></strong>- 是调制后传输信号的方法，用于远距离或无线传输。
- 包括以下调制方式：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>正交幅度相位调制法（QAM）</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>移相键控法（PSK）</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>频移键控法（FSK）</font></strong></font></strong><strong><font color=''#2656b3''>曼彻斯特编码</font></strong>：- 是一种<strong><font color=''#2656b3''><strong><font color=''#2656b3''>基带传输编码</font></strong></font></strong>，在每个位周期中间发生电平跳变。
- 常用于以太网等局域网标准中。因此，属于基带传输的是：<strong><font color=''#2656b3''>曼彻斯特编码（C）✔</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5634');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5635, '408考研练习题——计算机网络——物理层第6题', '简单', '408考研练习题——计算机网络——物理层', '曼彻斯特编码的特点是（ ）。
', '[''在每个比特的前沿有电平翻转'', ''在“0”比特的前沿有电平翻转，在“1”比特的前沿没有电平翻转'', ''在每个比特的中间有电平翻转'', ''在“1”比特的前沿有电平翻转，在“0”比特的前沿没有电平翻转'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong><strong><font color=''#2656b3''>曼彻斯特编码（Manchester Encoding）</font></strong>的主要特点是：- 每个比特周期的中间进行一次电平翻转。
- 用于同步时钟，因为每一位中间都有电平变化，便于接收端提取时钟。
- 编码规则（IEEE 802.3 标准下的常见方式）：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>逻辑 1</font></strong></font></strong>表示为：<strong><font color=''#2656b3''><strong><font color=''#2656b3''>低电平 → 高电平</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>逻辑 0</font></strong></font></strong>表示为：<strong><font color=''#2656b3''><strong><font color=''#2656b3''>高电平 → 低电平</font></strong></font></strong>
- 无论是 0 还是 1，中间都有跳变。<strong><font color=''#2656b3''>错误选项解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>A</font></strong></font></strong>：“每个比特的前沿有电平翻转” —— 错，跳变发生在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>中间</font></strong></font></strong>。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B、D</font></strong></font></strong>：区分 0 和 1 是否跳变 —— 错，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>每一位都有跳变</font></strong></font></strong>，不是仅某一类比特。因此，曼彻斯特编码的特点是：<strong><font color=''#2656b3''>C. 在每个比特的中间有电平翻转 ✔</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5635');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5636, '408考研练习题——计算机网络——物理层第7题', '简单', '408考研练习题——计算机网络——物理层', '当数据由计算机 A 送至计算机 B 时不对数据进行封装处理工作的是（ ）。
', '[''应用层'', ''数据链路层'', ''物理层'', ''运输层'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>在计算机网络中，<strong><font color=''#2656b3''>数据传输涉及从高层到低层的逐层封装</font></strong>过程（通常参照 OSI 七层模型或 TCP/IP 模型）。每一层都对数据进行某种“封装”处理，直到最底层通过物理媒介传输比特。<strong><font color=''#2656b3''>各层封装处理如下：</font></strong>- 应用层、运输层、网络层、数据链路层：

- 都会添加各自的首部（Header），对数据进行封装。
- 例如：

- 应用层添加应用协议数据。
- 运输层（如 TCP）添加端口信息、序号等。
- 网络层（如 IP）添加 IP 地址等。
- 数据链路层添加帧头帧尾（如 MAC 地址等）。
- 物理层：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>不进行任何封装</font></strong></font></strong>。
- 它只负责将比特流从一端发送到另一端（如通过电缆或无线），<strong><font color=''#2656b3''><strong><font color=''#2656b3''>处理的是 0 和 1 的电信号或光信号</font></strong></font></strong>。因此，不进行封装处理的是：<strong><font color=''#2656b3''>✔ 物理层</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5636');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5637, '408考研练习题——计算机网络——物理层第8题', '简单', '408考研练习题——计算机网络——物理层', '（ ）是实现数字信号和模拟信号转换的设备。
', '[''网卡'', ''调制解调器'', ''网络线'', ''都不是'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 是“调制-解调器”的简称。
- 用于数字信号和模拟信号之间的相互转换：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>调制</font></strong></font></strong>：把计算机的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>数字信号</font></strong></font></strong>转换为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>模拟信号</font></strong></font></strong>，以便通过电话线等模拟信道发送。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解调</font></strong></font></strong>：把接收到的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>模拟信号</font></strong></font></strong>还原为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>数字信号</font></strong></font></strong>。<strong><font color=''#2656b3''>其他选项解释：</font></strong>- 网卡（Network Interface Card, NIC）：

- 在数字网络中工作，只负责数字信号的传输。
- 不涉及数字与模拟信号的转换。
- 网络线（如双绞线、光纤等）：

- 是传输介质，不进行任何信号转换。正确答案是：<strong><font color=''#2656b3''>✔ 调制解调器</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5637');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5638, '408考研练习题——计算机网络——物理层第9题', '简单', '408考研练习题——计算机网络——物理层', '已知某信道的数据传输速率为 64kb/s，一个载波信号码元有 4 个有效离散值，则该信道的波特率为（ ）。
', '[''16 kBaud/s'', ''32 kBaud/s'', ''64 kBaud/s'', ''128 kBaud/s'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 数据传输速率R=64kbps=64,000bps
- 一个载波信号码元有 4 个有效离散值<strong><font color=''#2656b3''>计算波特率</font></strong>波特率表示<strong><font color=''#2656b3''>每秒钟传输的符号数</font></strong>。每个符号（信号码元）携带的比特数$n$由离散值数目决定：
$$
n = \\log_{2}(离散值数) = \\log_{2}(4) = 2bits/符号
$$
所以，波特率$B$计算为：
$$
B = \\frac{R}{n} = \\frac{64, 000}{2} = 32, 000Baud
$$
<strong><font color=''#2656b3''>正确选项：32 kBaud/s</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5638');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5639, '408考研练习题——计算机网络——物理层第10题', '简单', '408考研练习题——计算机网络——物理层', '采用 8 种相位，每种相位各有两种幅度的 QAM 调制方法，在 1200Bud 的信号传输速率下能达到的数据传输率为（ ）。
', '[''2400b/s'', ''3600bs'', ''4800b/s'', ''9600b/s'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>计算步骤：</font></strong>- 计算每个符号携带的比特数：- 总的离散状态数 = 相位数 × 幅度数 = 8 × 2 = 16 种不同符号。
- 每个符号携带的比特数：
$$
n = \\log_{2}(16) = 4bits/符号
$$
- 计算数据传输率：
$$
R = n × 波特率 = 4 × 1200 = 4800bps
$$
正确选项是：<strong><font color=''#2656b3''>4800b/s</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5639');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5640, '408考研练习题——计算机网络——物理层第11题', '简单', '408考研练习题——计算机网络——物理层', '影响信道最大传输速率的因素主要有（ ）。
', '[''信道带宽和信噪比'', ''码元传输速率和噪声功率'', ''频率特性和带宽'', ''发送功率和噪声功率'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>信道最大传输速率通常受<strong><font color=''#2656b3''>信道带宽</font></strong>和<strong><font color=''#2656b3''>信噪比</font></strong>的限制，常用的理论公式包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>香农公式（Shannon Capacity）</font></strong></font></strong>：
$$
C = B ⋅ \\log_{2}(1 + SNR)
$$
- 其中C是最大传输速率（bps），B是信道带宽（Hz），
SNR 是信噪比（无单位）。<strong><font color=''#2656b3''>其他选项说明：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>码元传输速率和噪声功率</font></strong></font></strong>：码元速率只是传输速率的一个表现，噪声功率影响信噪比，但不直接等同。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>频率特性和带宽</font></strong></font></strong>：频率特性影响信号失真，但不直接定义最大传输速率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>发送功率和噪声功率</font></strong></font></strong>：发送功率影响信号强度，但信噪比才是关键。<strong><font color=''#2656b3''>所以，影响信道最大传输速率的主要因素是：信道带宽和信噪比。✔</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5640');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5641, '408考研练习题——计算机网络——物理层第12题', '简单', '408考研练习题——计算机网络——物理层', '电话系统的典型参数是信道带宽为 3000Hz，信噪比为 30B，则该系统的最大数据传输率为（ ）。
', '[''3kb/s'', ''6kb/s'', ''30kb/s'', ''64kb/s'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>使用香农公式计算最大数据传输率：</font></strong>
$$
C = B ⋅ \\log_{2}(1 + SNR) = 3000 × \\log_{2}(1 + 1000)
$$

$$
\\log_{2}(1001) ≈ \\log_{2}(1024) = 10 (近似)
$$
所以：
$$
C ≈ 3000 × 10 = 30, 000 bps = 30kbps
$$
正确选项是：<strong><font color=''#2656b3''>30kb/s</font></strong>', 9, 'Mogullzr', '2026-02-02 11:52:57', 9, NULL, '2026-02-02 11:52:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5641');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5642, '408考研练习题——计算机网络——物理层第13题', '简单', '408考研练习题——计算机网络——物理层', '假定要用 3KHz 带宽的电话信道传送 64kb/s 的数据（无差错传输），试问这个信道应具有多高的信噪比（分别用比值和分贝来表示？这个结果说明什么问题？）
', '[]', '', '假设：
- 信道带宽B=3kHz=3000Hz
- 数据传输速率C=64kb/s=64000bps
- 要实现无差错传输，信道容量C要满足香农定理：

$$
C = B \\log_{2}(1 + SNR)
$$

<strong><font color=''#2656b3''>1. 计算信噪比 SNR</font></strong>
代入数据：

$$
64000 = 3000 × \\log_{2}(1 + SNR)
$$

两边同时除以 3000：

$$
\\log_{2}(1 + SNR) = \\frac{64000}{3000} ≈ 21.33
$$

对数换底后求 SNR：

$$
1 + SNR = 2^{21.33}
$$

用计算器算：

$$
2^{21.33} ≈ 2^{21} × 2^{0.33} = 2, 097, 152 × 1.26 ≈ 2, 640, 000
$$

所以：

$$
SNR ≈ 2, 640, 000 - 1 ≈ 2, 640, 000
$$

<strong><font color=''#2656b3''>2. 换算成分贝（dB）</font></strong>

$$
SNR dB = 10 \\log_{10}(SNR) = 10 \\log_{10}(2, 640, 000)
$$


$$
\\log_{10}(2, 640, 000) = \\log_{10}(2.64 × 10^{6}) = \\log_{10}(2.64) + 6 ≈ 0.42 + 6 = 6.42
$$

因此：

$$
SNR_{dB} ≈ 10 × 6.42 = 64.2dB
$$

<strong><font color=''#2656b3''>3. 结果说明</font></strong>
- 该信道要传送 64kb/s 的数据，且保证无差错传输，信噪比需要极高，约为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>264万倍</font></strong></font></strong>，即<strong><font color=''#2656b3''><strong><font color=''#2656b3''>64.2 dB</font></strong></font></strong>。
- 这是一个非常苛刻的条件，说明用 3kHz 带宽的电话信道传输如此高速率数据，必须要有极高的信噪比。
- 实际中，这很难达到，因此传统电话信道传送高速数字数据必须使用调制解调技术（如调制解调器、DSL等），且仍受到信道质量限制。
- 也反映了香农定理的基本限制：在给定带宽下，想达到更高的数据速率，必须提升信噪比，或者拓宽带宽。
', 9, 'Mogullzr', '2026-02-02 11:52:58', 9, NULL, '2026-02-02 11:52:58', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1349', '5642');
