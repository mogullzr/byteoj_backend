INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5728, '408考研练习题——计算机网络——网络层第1题', '简单', '408考研练习题——计算机网络——网络层', '如果一家公司需要 60 个主机，那么最佳的子网掩码是什么（ ）？
', '[''255.255.255.0'', ''255.255.255.192'', ''255.255.225.224'', ''225.225.255.240'']', "['B']", 'B</font></strong>
根据子网划分规则：- 主机数量公式为2n−2（n 为主机位数）
- 代入计算：2n−2=60⇒n≈6
- 对应的子网掩码需保留 6 位主机位，即 32 - 6 = 26 位网络位
- 二进制表示为：11111111.11111111.11111111.11000000
- 转换为十进制即<strong><font color=''#2656b3''><strong><font color=''#2656b3''>255.255.255.192</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:53:16', 9, NULL, '2026-02-02 11:53:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5728');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5729, '408考研练习题——计算机网络——网络层第2题', '简单', '408考研练习题——计算机网络——网络层', '在 C 类网络中，如果子网掩码为 255.255.255.224，则计算子网数量（ ）？
', '[''6'', ''8'', ''4'', ''以上都不是'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- C 类默认子网掩码为`255.255.255.0`
- 子网划分时从主机位借取位数进行划分
- 给定子网掩码二进制表示为`11111111.11111111.11111111.11100000`
- 默认掩码为`11111111.11111111.11111111.00000000`，因此借用了<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3 位</font></strong></font></strong>主机位
- 子网数量计算公式：子网数量=2n(n=3)23=8', 9, 'Mogullzr', '2026-02-02 11:53:16', 9, NULL, '2026-02-02 11:53:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5729');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5730, '408考研练习题——计算机网络——网络层第3题', '简单', '408考研练习题——计算机网络——网络层', '在 IPv4 数据报中，M 位为 0，HLEN 字段的值为 10，总长度为 400，分片偏移值为 300。该数据报的位置以及有效载荷的第一个字节和最后一个字节的序号分别为（ ）：
', '[''最后一个分片，2400 和 2789'', ''第一个分片，2400 和 2759'', ''最后一个分片，2400 和 2759'', ''中间分片，300 和 689'']', "['C']", 'C</font></strong>
M=0 表示该数据报是原始数据报所有分片中的最后一个分片。因此答案只能是 A 或 C。已知 HLEN 字段为 10。HLEN 字段表示头部长度（单位为 32 位字），因此头部长度=10×4=40 字节。
同时给出总长度为 400。总长度包含头部和有效载荷的总长度。
除去头部的有效载荷长度=400-40=360 字节。
最后一个字节的序号=2400+360-1=2759（因为编号从 0 开始）', 9, 'Mogullzr', '2026-02-02 11:53:16', 9, NULL, '2026-02-02 11:53:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5730');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5731, '408考研练习题——计算机网络——网络层第4题', '简单', '408考研练习题——计算机网络——网络层', 'IP 数据报头中的一个字段是生存时间（TTL）字段。以下哪项最能解释该字段存在的必要性？（ ）
', '[''可用于对数据包进行优先级排序'', ''可用于减少延迟'', ''可用于优化吞吐量'', ''可用于防止数据包循环'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- TTL（Time To Live）字段的核心功能是限制数据报在网络中的有效生命周期
- 每经过一个路由器，TTL 值减 1，当值为 0 时数据报会被丢弃
- 有效防止因路由环路导致的数据包无限循环传输问题
- 确保无法到达目标地址的数据包不会永久滞留在网络中', 9, 'Mogullzr', '2026-02-02 11:53:17', 9, NULL, '2026-02-02 11:53:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5731');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5732, '408考研练习题——计算机网络——网络层第5题', '简单', '408考研练习题——计算机网络——网络层', '考虑一个由 6 个路由器 R1 到 R6 组成的网络，这些路由器通过具有权重的链路连接，如下图所示。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/ca3f87b5bb24493b91370ae4757980a7.svg)
所有路由器都使用基于距离向量的路由算法来更新其路由表。每个路由器初始时会为其邻居创建条目，并将相应连接链路的权重作为初始值。当所有路由表稳定后，网络中有多少条链路永远不会被用于传输任何数据？（ ）
', '[''4'', ''3'', ''2'', ''1'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>以下是所有节点的距离向量。从$R_{1}$到$R_{2}$,$R_{3}$,$R_{4}$,$R_{5}$和$R_{6}$的最短距离
$R_{1}(5, 3, 12, 12, 16)$
使用的链接：$R_{1} - R_{3}$,$R_{3} - R_{2}$,$R_{2} - R_{4}$,$R_{3} - R_{5}$,$R_{5} - R_{6}$从$R_{2}$到$R_{3}$,$R_{4}$,$R_{5}$和$R_{6}$的最短距离
$R_{2}(2, 7, 8, 12)$
使用的链接：$R_{2} - R_{3}$,$R_{2} - R_{4}$,$R_{4} - R_{5}$,$R_{5} - R_{6}$从$R_{3}$到$R_{4}$,$R_{5}$和$R_{6}$的最短距离
$R_{3}(9, 9, 13)$
使用的链接：$R_{3} - R_{2}$,$R_{2} - R_{4}$,$R_{3} - R_{5}$,$R_{5} - R_{6}$从$R_{4}$到$R_{5}$和$R_{6}$的最短距离
$R_{4}(1, 5)$
使用的链接：$R_{4} - R_{5}$,$R_{5} - R_{6}$从$R_{5}$到$R_{6}$的最短距离
$R_{5}(4)$
使用的链接：$R_{5} - R_{6}$如果我们逐一标记所有使用的链接，我们可以看到以下链接从未使用过：
$R_{1} - R_{2}$
$R_{4} - R_{6}$', 9, 'Mogullzr', '2026-02-02 11:53:18', 9, NULL, '2026-02-02 11:53:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5732');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5733, '408考研练习题——计算机网络——网络层第6题', '简单', '408考研练习题——计算机网络——网络层', '互联网协议（IP）为何在 IP 数据报首部使用生存时间（TTL）字段？（ ）
', '[''确保数据包在该时间内到达目的地'', ''丢弃在该时间之后到达的数据包'', ''防止数据包无限循环'', ''限制数据包在中间路由器中排队的时间'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- IP 数据包首部的 *TTL（Time To Live）字段* 在每次经过一个路由器时，其值会减 1。
- 当 TTL 字段的值变为 0 时：

- 路由器将丢弃该数据包；
- 向发送方返回一个 *ICMP“时间超时”消息* 。
- 这一机制的设计目的是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>防止数据包因路由环路或其他网络问题而无限循环</font></strong></font></strong>。
- 因此，IP 使用 TTL 字段的核心原因是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>“防止数据包无限循环”</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:18', 9, NULL, '2026-02-02 11:53:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5733');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5734, '408考研练习题——计算机网络——网络层第7题', '简单', '408考研练习题——计算机网络——网络层', '考虑以下关于链路状态和距离向量路由协议的三个陈述，针对一个包含 500 个网络节点和 4000 条链路的大规模网络。
[S1] 链路状态协议中的计算开销高于距离向量协议。
[S2] 距离向量协议（带水平分割）可以避免持久性路由环路，但链路状态协议不能。
[S3] 拓扑变化后，链路状态协议的收敛速度比距离向量协议快。
以下关于 S1、S2 和 S3 的哪一项是正确的？（ ）
', '[''S1、S2 和 S3 均正确。'', ''S1、S2 和 S3 均错误。'', ''S1 和 S2 正确，但 S3 错误'', ''S1 和 S3 正确，但 S2 错误'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>链路状态：每个节点收集完整的网络拓扑结构
每个节点计算从自身出发的最短路径
每个节点生成自己的路由表
距离向量：无人持有完整拓扑图
节点通过迭代构建自己的路由表
每个节点向邻居发送其路由表信息[S1] 链路状态协议中的计算开销高于距离向量协议。
[S2] 距离向量协议（带水平分割）可以避免持久性路由环路，但链路状态协议不能。
[S3] 拓扑变化后，链路状态协议的收敛速度比距离向量协议快。- S1 分析链路状态协议要求每个节点维护完整的网络拓扑图并执行 Dijkstra 算法计算最短路径，因此计算复杂度为O(N2)（N 为节点数）。相比之下，距离向量协议仅需局部更新路由表，计算开销显著更低。此结论成立。
- S2 分析距离向量协议即使采用水平分割（split horizon）和毒化反转（poison reverse），仍无法完全消除路由环路。例如，当多条路径权重相近时，环路可能持续存在。链路状态协议因全局拓扑视图和最短路径算法设计，天然避免了此类问题。因此该陈述错误。
- S3 分析链路状态协议通过洪泛更新拓扑信息，各节点独立计算新路径，收敛速度快；而距离向量协议依赖逐跳传播和迭代计算，易受“计数到无穷大”问题影响，收敛速度明显滞后。此结论成立。综上，S1 和 S3 正确，S2 错误。', 9, 'Mogullzr', '2026-02-02 11:53:18', 9, NULL, '2026-02-02 11:53:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5734');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5735, '408考研练习题——计算机网络——网络层第8题', '简单', '408考研练习题——计算机网络——网络层', '以下哪一项关于内部网关路由协议 - 路由信息协议（RIP）和开放最短路径优先（OSPF）的描述是正确的？（ ）
', '[''RIP 使用距离向量路由，OSPF 使用链路状态路由'', ''OSPF 使用距离向量路由，RIP 使用链路状态路由'', ''RIP 和 OSPF 都使用链路状态路由'', ''RIP 和 OSPF 都使用距离向量路由'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>协议分类</font></strong></font></strong>：RIP 和 OSPF 均为内部网关协议（IGP），仅用于自治系统内部通信
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心机制差异</font></strong></font></strong>：

- RIP 采用距离向量算法（Distance Vector Routing）
- OSPF 采用链路状态算法（Link State Routing）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>技术演进</font></strong></font></strong>：RIP 是较早期的路由协议，现已被更高效的 OSPF 等协议逐步取代', 9, 'Mogullzr', '2026-02-02 11:53:18', 9, NULL, '2026-02-02 11:53:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5735');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5736, '408考研练习题——计算机网络——网络层第9题', '简单', '408考研练习题——计算机网络——网络层', '主机 A（位于 TCP/IP v4 网络 A）向主机 B（位于 TCP/IP v4 网络 B）发送 IP 数据报 D。假设在传输过程中未发生错误。当 D 到达 B 时，以下哪些 IP 首部字段可能与原始数据报 D 不同？
(i) TTL
(ii) 校验和
(iii) 分片偏移
', '[''(i) 仅'', ''(i) 和 (ii) 仅'', ''(ii) 和 (iii) 仅'', ''(i), (ii) 和 (iii)'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>所有 (i), (ii) 和 (iii) 都会变化</font></strong></font></strong>

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(i)</font></strong></font></strong>每经过一个路由跳点，TTL 都会递减，因此 TTL 值与原始值不同。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(ii)</font></strong></font></strong>由于 TTL 发生变化，数据包的校验和也会随之改变。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>(iii)</font></strong></font></strong>如果数据包大小超过网络的最大传输单元（MTU），则会被分片。中间网络可能会通过分片修改分片偏移量。', 9, 'Mogullzr', '2026-02-02 11:53:18', 9, NULL, '2026-02-02 11:53:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5736');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5737, '408考研练习题——计算机网络——网络层第10题', '简单', '408考研练习题——计算机网络——网络层', 'IPv4 网络中的每个主机都配备了一个具有电池备份的 1 秒分辨率实时时钟。每个主机需要每秒生成最多 1000 个唯一标识符。假设每个主机拥有全局唯一的 IPv4 地址。请为此设计一个 50 位的全局唯一标识符。主机生成的标识符在多少秒后会发生循环？（ ）
', '[''128'', ''64'', ''256'', ''512'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环时间定义</font></strong></font></strong>：所有主机生成所有可能 ID 所需的时间（即总 ID 数 ÷ 每秒生成的 ID 数）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总 ID 数</font></strong></font></strong>：50 位可表示250个唯一标识符。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>主机总数</font></strong></font></strong>：IPv4 地址空间为232台主机。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>每秒生成 ID 数</font></strong></font></strong>：

- 单台主机每秒生成 1000 个 ID（即210）；
- 全网每秒生成总量为232×210=242个 ID。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>循环时间计算</font></strong></font></strong>：242250​=28=256秒', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5737');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5738, '408考研练习题——计算机网络——网络层第11题', '简单', '408考研练习题——计算机网络——网络层', '一个最大传输单元（MTU）为 1500 字节的 IP 路由器接收到一个总长度为 4404 字节、IP 首部长度为 20 字节的 IP 数据报。该路由器为此数据报生成的第三个 IP 分片中，相关字段的取值是（ ）：
', '[''MF 位：0，数据报长度：1444；偏移量：370'', ''MF 位：1，数据报长度：1424；偏移量：185'', ''MF 位：1，数据报长度：1500；偏移量：37'', ''MF 位：0，数据报长度：1424；偏移量：2960'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
$$
分片数量 = ⌈\\frac{数据报总长度}{MTU}⌉   = ⌈\\frac{4404}{1500}⌉   = ⌈2.936⌉   = 3
$$
', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5738');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5739, '408考研练习题——计算机网络——网络层第12题', '简单', '408考研练习题——计算机网络——网络层', '在一个分组交换网络中，数据包从源到目的地沿着一条包含两个中间节点的单一路径进行路由。如果消息大小为 24 字节，每个数据包包含 3 字节的头部，则最佳分组大小是（ ）。
', '[''4'', ''6'', ''7'', ''9'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>将消息划分为分组可能会由于并行性而减少传输时间。但超过一定限制后，减小分组大小也可能增加传输时间。假设所有节点传输 1 字节所需的时间为 t。第一个分组的传输时间为 (分组大小) 3×t。在第一个分组到达目的地后，剩余分组由于并行性只需 (分组大小)×t 的时间。<strong><font color=''#2656b3''>计算分析</font></strong><strong><font color=''#2656b3''>分组大小为 4 字节</font></strong>- 分组数量：24 个
- 总传输时间 = 第一个分组耗时 + 剩余分组耗时  
=3×4×t+23×4×t=104t<strong><font color=''#2656b3''>分组大小为 6 字节</font></strong>- 分组数量：8 个
- 总传输时间 =3×6×t+7×6×t=60t<strong><font color=''#2656b3''>分组大小为 7 字节</font></strong>- 分组数量：6 个
- 总传输时间 =3×7×t+5×7×t=56t<strong><font color=''#2656b3''>分组大小为 9 字节</font></strong>- 分组数量：4 个
- 总传输时间 =3×9×t+3×9×t=54t<strong><font color=''#2656b3''>结论</font></strong>通过对比不同分组大小的总传输时间，<strong><font color=''#2656b3''>9 字节</font></strong>的分组大小具有最小的总传输时间（54t），因此是最佳选择。', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5739');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5740, '408考研练习题——计算机网络——网络层第13题', '简单', '408考研练习题——计算机网络——网络层', '考虑给定的网络实现场景。对于给定的一个分类 IP 网络 199.10.20.0/24，需要创建 13 个子网。根据给定信息，求第 15 个子网中第一个和最后一个有效 IP 的范围（ ）。
', '[''199.10.20.208 到 199.10.20.222'', ''199.10.20.225 到 199.10.20.238'', ''199.10.20.193 到 199.10.20.206'', ''以上都不是'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析说明</font></strong>- 默认掩码：255.255.255.0
- 子网需求分析：

- 需求 13 个子网 → 实际需满足2n≥13，取n=4（24=16）
- 借用主机位数：4 位
- 新子网掩码：`255.255.255.240`（二进制`11111111.11111111.11111111.11110000`）
- 子网参数计算：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>块大小</font></strong></font></strong>：256−240=16
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>每子网可用 IP 数</font></strong></font></strong>：24−2=14（扣除网络地址和广播地址）
- 子网划分示例：子网编号网络地址可用 IP 范围广播地址0199.10.20.0199.10.20.1 - 199.10.20.14199.10.20.151199.10.20.16199.10.20.17 - 199.10.20.30199.10.20.31…………14199.10.20.224199.10.20.225 - 199.10.20.238199.10.20.239
- 关键结论：第 15 个子网（索引从 0 开始计数）的可用 IP 范围为199.10.20.225 至 199.10.20.238，对应选项 (b)。', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5740');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5741, '408考研练习题——计算机网络——网络层第14题', '简单', '408考研练习题——计算机网络——网络层', '某路由器的路由表如下所示：
目标地址为<strong><font color=''#2656b3''>128.75.43.16</font></strong>和<strong><font color=''#2656b3''>192.12.17.10</font></strong>的数据包将分别通过哪个接口转发？（ ）
', '[''Eth1 和 Eth2'', ''Eth0 和 Eth2'', ''Eth0 和 Eth3'', ''Eth1 和 Eth3'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析流程</font></strong>
```c
目标地址：128.75.43.16
匹配项：
- 128.75.43.0/24 (255.255.255.0) → 掩码长度 24
- 128.75.43.0/25 (255.255.255.128) → 掩码长度 25
```
', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5741');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5742, '408考研练习题——计算机网络——网络层第15题', '简单', '408考研练习题——计算机网络——网络层', '考虑三个 IP 网络 A、B 和 C。网络 A 中的主机 HA 向网络 C 中的主机 HC 发送消息，每条消息包含 180 字节的应用层数据。TCP 层在消息前添加 20 字节的头部。该消息通过中间网络 B 传输。每个网络的最大分组大小（包括 20 字节的 IP 头部）为：
A : 1000 字节
B : 100 字节
C : 1000 字节
网络 A 与 B 通过 1 Mbps 链路连接，而 B 与 C 通过 512 Kbps 链路连接（bps = bit/s）。假设分组正确交付，在最佳情况下，一个应用层消息到达目的地时，IP 层总共接收多少字节（含头部）？仅考虑数据分组。（ ）

```c
-------------     1 Mbps     -------------      512 Kbps    -------------
| network A |----------------| network B |------------------| newtork C |
-------------                -------------                  -------------
```
', '[''200'', ''220'', ''240'', ''260'']', "['D']", 'D</font></strong>
网络 B 从网络 A 接收到 220 字节的数据（180 字节应用层数据 + 20 字节 TCP 头部 + 20 字节 IP 头部）。由于网络 B 的最大分组大小为 100 字节（80 字节数据 + 20 字节 IP 头部），对于网络 B 来说，220 字节中 200 字节是数据或有效载荷（180 字节应用层数据 + 20 字节 TCP 头部），20 字节是 IP 头部。网络 B 移除 20 字节的 IP 头部后，剩余 200 字节数据。它使用其中 80 字节数据，因此第一个离开 B 的分组为 100 字节（数据 80 字节，IP 头部 20 字节）。此时剩余 120 字节数据，第二个分组同样为 100 字节（数据 80 字节，IP 头部 20 字节）。最后剩余 40 字节数据，第三个分组为 60 字节（数据 40 字节，IP 头部 20 字节）。因此，目的地总共接收<strong><font color=''#2656b3''>100 + 100 + 60 = 260 字节</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5742');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5743, '408考研练习题——计算机网络——网络层第16题', '简单', '408考研练习题——计算机网络——网络层', '继续上一题，问应用数据传输到主机 HC 的速率是多少？忽略错误、确认和其他开销。（ ）
', '[''325.5 Kbps'', ''354.5 Kbps'', ''409.6 Kbps'', ''512.0 Kbps'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>接收数据</font></strong></font></strong>：主机 C 接收到 260 字节的数据（包含 IP 和 TCP 首部），其中 180 字节为有效应用数据。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>传输效率</font></strong></font></strong>：计算得传输效率为260180​=0.6923。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>应用数据速率</font></strong></font></strong>：基于上述效率，实际应用数据传输速率为0.6923×512Kbps=354.45Kbps。', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5743');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5744, '408考研练习题——计算机网络——网络层第17题', '简单', '408考研练习题——计算机网络——网络层', '下列以下关于互联网协议（IP）的说法中，哪一项是错误的？（ ）
', '[''一台计算机可能拥有多个 IP 地址'', ''来自同一源到同一目的地的 IP 数据包在网络中可以走不同路径'', ''IP 确保如果数据包在给定跳数内无法到达目的地，则丢弃该数据包'', ''数据包源不能设置传出数据包的路由；路由仅由沿途路由器中的路由表决定'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 选项 A 正确：一台计算机可以绑定多个网络接口，或者一个接口上配置多个 IP 地址（例如内网地址 + 外网地址，或 IPv4 + IPv6）。
- 选项 B 正确：IP 协议是无连接的，每个数据包独立处理，可能走不同路径（称为路由的非确定性）。
- 选项 C 正确：IP 数据包有一个 TTL（Time To Live）字段，每经过一个路由器就减 1，若减为 0 则丢弃，防止死循环。
- 选项 D 错误：虽然默认情况下路由是由路由器决定的，但 IP 协议支持源路由（source routing），即数据包源主机可以在 IP 头中指定部分或全部的路由路径。不过，出于安全原因，大多数现代路由器已禁用该功能。', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5744');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5745, '408考研练习题——计算机网络——网络层第18题', '简单', '408考研练习题——计算机网络——网络层', '路由器使用转发表条目转发数据包。传入数据包的网络地址可能与多个条目匹配。路由器如何解决此问题（ ）？
', '[''将数据包转发给其条目与传入数据包最长前缀匹配的路由器'', ''将数据包转发给所有网络地址匹配的路由器'', ''丢弃该数据包'', ''将数据包转发给其条目与传入数据包最长后缀匹配的路由器'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 转发表中的不同条目可能存在网络地址重叠的情况
- 路由器通过选择与传入数据包<strong><font color=''#2656b3''><strong><font color=''#2656b3''>最长前缀匹配</font></strong></font></strong>的路由条目来决定转发路径
- 这是 IP 路由中解决多匹配问题的标准机制（Longest Prefix Match, LPM）', 9, 'Mogullzr', '2026-02-02 11:53:19', 9, NULL, '2026-02-02 11:53:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5745');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5746, '408考研练习题——计算机网络——网络层第19题', '简单', '408考研练习题——计算机网络——网络层', '考虑以下路由器的路由表：
考虑以下三个 IP 地址：
这三个目标 IP 地址对应的分组将如何转发？（ ）
', '[''1→D, 2→B, 3→B'', ''1→D, 2→B, 3→D'', ''1→B, 2→D, 3→D'', ''1→D, 2→D, 3→D'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 I</font></strong></font></strong>匹配第一个和第三个 IP 地址，因为它们属于其子网掩码定义的范围。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 II</font></strong></font></strong>匹配第二个 IP 地址，因为它属于其子网掩码定义的范围。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 III</font></strong></font></strong>不匹配任何 IP 地址，因为它们超出其子网掩码定义的范围。  
因此正确答案是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>B</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5746');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5747, '408考研练习题——计算机网络——网络层第20题', '简单', '408考研练习题——计算机网络——网络层', '以下哪一项 IP 头部字段不会被典型的 IP 路由器（非 NAT 路由器）修改？（ ）
', '[''校验和'', ''源地址'', ''生存时间（TTL）'', ''长度'']', "['B']", 'B</font></strong>
当发生 IP 分片时，长度和校验和可能被修改。生存时间（TTL）会在路由路径上的每个路由器处递减。源地址字段的两种情况：- 若设备具有公网 IP 地址，则任何路由器均无法修改 IP 头部的源地址字段。
- 若设备具有私有 IP 地址，则仅支持网络地址转换（NAT）功能的路由器可以将其转换为公网 IP 地址：

- 普通路由器无法处理私有 IP 地址，因此会丢弃数据包
- 将私有 IP 转换为公网 IP 的目的是实现发送方与接收方在局域网外或互联网上的通信<strong><font color=''#2656b3''>唯一不能被修改的 IP 地址字段是源地址</font></strong>，因此答案选 B。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5747');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5748, '408考研练习题——计算机网络——网络层第21题', '简单', '408考研练习题——计算机网络——网络层', '在子网 200.10.11.144/27 中，可分配给主机的最后一个 IP 地址的第四字节（十进制）是（ ）
', '[''158'', ''255'', ''222'', ''223'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>网络地址</font></strong></font></strong>的第四字节为`144`。
- 将`144`转换为二进制为`10010000`。
- 该字节的前三位固定为`100`，剩余位最大值为`11111`。
- 因此，主机 IP 的最后一个字节最大可能为`10011110`（即`158`）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>广播地址</font></strong></font></strong>（主机位全为 1 的地址）不能分配给主机，因此最大可用主机地址为`10011110`，对应十进制`158`。
- 可分配的最大网络地址为`200.10.11.158/31`，其最后字节为`158`。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5748');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5749, '408考研练习题——计算机网络——网络层第22题', '简单', '408考研练习题——计算机网络——网络层', '一个子网被分配了子网掩码 255.255.255.192。该子网最多可以容纳多少台主机？（ ）
', '[''14'', ''30'', ''62'', ''126'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>给定的子网掩码 255.255.255.192 的二进制表示为：
```c
11111111.11111111.11111111.1100000
```
网络前缀的位数为：8 + 8 + 8 + 2 = 26
可用于主机的位数为：32 - 26 = 6
可用地址数量为：2⁶ = 64
首个地址保留给子网，最后一个地址作为广播地址。
因此，可用主机地址数量为：64 - 2 = 62
所以选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5749');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5750, '408考研练习题——计算机网络——网络层第23题', '简单', '408考研练习题——计算机网络——网络层', '一台主机连接到一个部门网络，该部门网络属于大学网络的一部分。而大学网络本身又是互联网的一部分。主机的以太网地址在其范围内唯一的最大网络是（ ）：
', '[''主机所属的子网'', ''部门网络'', ''大学网络'', ''互联网'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 以太网地址本质是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>MAC 地址</font></strong></font></strong>
- 其设计目标是实现<strong><font color=''#2656b3''><strong><font color=''#2656b3''>网卡（NIC）层面的全局唯一性</font></strong></font></strong>
- 因此在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>互联网范围</font></strong></font></strong>内均保持唯一性
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>知识延伸</font></strong></font></strong>：MAC 地址由 IEEE 统一分配，前 3 字节为厂商标识符，后 3 字节为设备序列号，确保全球唯一性', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5750');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5751, '408考研练习题——计算机网络——网络层第24题', '简单', '408考研练习题——计算机网络——网络层', '在 TCP/IP 协议套件中，以下哪一项<strong><font color=''#2656b3''>不是</font></strong>IP 首部的组成部分（ ）？
', '[''分片偏移量'', ''源 IP 地址'', ''目的 IP 地址'', ''目的端口号'']', "['D']", 'D</font></strong>
根据 IP 首部格式定义，其包含源地址、目的地址、分片偏移量等字段，但<strong><font color=''#2656b3''>目的端口号</font></strong>属于传输层（如 TCP/UDP）首部字段，而非网络层 IP 首部内容。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5751');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5752, '408考研练习题——计算机网络——网络层第25题', '简单', '408考研练习题——计算机网络——网络层', '假设某 TCP 连接的最大发送窗口尺寸为 12000 字节，每个数据包大小为 2000 字节。在某一时刻，该连接处于慢启动阶段，当前发送窗口为 4000 字节。随后发送方收到两个确认应答。假设无数据包丢失且无超时发生，当前发送窗口的最大可能值是多少？（ ）
', '[''4000 字节'', ''8000 字节'', ''10000 字节'', ''12000 字节'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 在慢启动阶段，TCP 协议中每收到一个确认应答（ACK），发送方会将当前发送窗口大小增加一个最大报文段长度（MSS）。
- 根据题目描述，每个数据包大小为 2000 字节，即 MSS = 2000 字节。
- 收到两个 ACK 后，当前窗口尺寸将从 4000 字节增加至 4000 + 2000 + 2000 = 8000 字节。
- 最终结果未超过最大发送窗口尺寸（12000 字节），因此有效。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5752');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5753, '408考研练习题——计算机网络——网络层第26题', '简单', '408考研练习题——计算机网络——网络层', '路径追踪（Traceroute）报告了从主机 A 到主机 B 的数据包可能经过的路由。以下哪个选项代表了路径追踪用于识别这些主机的技术？（ ）
', '[''通过逐步使用 ICMP 数据包查询路径上下一个路由器的信息，从第一个路由器开始'', ''要求每个路由器在转发到 B 时将地址附加到 ICMP 数据包中。B 在 ICMP 回复数据包中返回所有通往 B 的路由器列表'', ''确保通往 B 的每个路由器按与 A 的跳数距离升序返回 ICMP 回复数据包给 A'', ''本地计算从 A 到 B 的最短路径'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>路径追踪跟踪 IP 网络中数据包到达指定主机所经过的路由。它利用 IP 协议的生存时间（TTL）字段，并尝试从路径上的每个网关获取 ICMP_TIME_EXCEEDED 响应。替代方案——本题提供的选项部分正确。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 A</font></strong></font></strong>部分正确地指出源节点逐步查询路由器，但错误地声称源节点使用 ICMP 数据包查询路径上下一个路由器的信息。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C</font></strong></font></strong>也部分正确。路径追踪通过提前耗尽 TTL 字段来确保从每个路由器返回数据包，每次收到路由器响应时 TTL 递增 1。但它错误地声称使用的是 ICMP 回复数据包，而实际上使用的是 ICMP 错误数据包。在两个选项中，选项 C 更准确地描述了路径追踪程序的工作方式。此解释由 Chirag Manwani 提供。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5753');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5754, '408考研练习题——计算机网络——网络层第27题', '简单', '408考研练习题——计算机网络——网络层', '计数到无穷大问题是与以下哪项相关的？（ ）
', '[''链路状态路由协议'', ''距离向量路由协议'', ''DNS 在解析主机名时'', ''TCP 用于拥塞控制'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 使用距离向量路由的网络容易出现环路和计数到无穷大的问题。
- 当链路或路由器发生故障时，路由协议可能会出现问题。', 9, 'Mogullzr', '2026-02-02 11:53:20', 9, NULL, '2026-02-02 11:53:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5754');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5755, '408考研练习题——计算机网络——网络层第28题', '简单', '408考研练习题——计算机网络——网络层', '在一个通信网络中，一个长度为$L$比特的数据包以概率$p_{1}$通过链路$L_{1}$，或以概率$p_{2}$通过链路$L_{2}$。链路$L_{1}$和$L_{2}$的比特错误概率分别为$b_{1}$和$b_{2}$。该数据包通过 L1 或 L2 接收无错误的概率是（ ）：
', '[''$(1 - b_{1})Lp_{1} + (1 - b_{2})Lp_{2}$'', ''$\\\\lbrack 1 - (b_{1} + b_{2})Lp_{1}p_{2}$'', ''$(1 - b_{1})L(1\\u200b−b_{2})Lp_{1}p_{2}$'', ''$1 - (b_{1}^{L}p_{1} + b_{2}^{L}p_{2})$'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数据包比特数</font></strong></font></strong>：L比特
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>链路选择与参数</font></strong></font></strong>

- 选择链路L1​的概率：p1​
- 链路L1​的比特错误概率：b1​
- 链路L1​无比特错误的概率：(1−b1​)
- 选择链路L2​的概率：p2​
- 链路L2​的比特错误概率：b2​
- 链路L2​无比特错误的概率：(1−b2​)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>互斥性分析</font></strong></font></strong>  
链路 L1 和 L2 是互斥的选择路径，因此总无错误接收概率为两路径概率之和：总概率=(1−b1​)L⋅p1​+(1−b2​)L⋅p2​
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>  
选项 A 正确表达了上述计算公式。', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5755');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5756, '408考研练习题——计算机网络——网络层第29题', '简单', '408考研练习题——计算机网络——网络层', '一家公司拥有一个 C 类网络地址 204.204.204.0。该公司希望将其划分为三个子网，其中 1 个子网需容纳 100 台主机，另外两个子网各需容纳 50 台主机。以下哪个选项代表了可行的子网地址/子网掩码组合？（ ）
', '[''`204.204.204.128/255.255.255.192`，`204.204.204.0/255.255.255.128`，`204.204.204.64/255.255.255.128`'', ''`204.204.204.0/255.255.255.192`，`204.204.204.192/255.255.255.128`，`204.204.204.64/255.255.255.128`'', ''`204.204.204.128/255.255.255.128`，`204.204.204.192/255.255.255.192`，`204.204.204.224/255.255.255.192`'', ''`204.204.204.128/255.255.255.128`，`204.204.204.64/255.255.255.192`，`204.204.204.0/255.255.255.192`'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>背景知识</font></strong>- IP 地址分类

- A 类：1.0.0.1 - 126.255.255.254
- B 类：128.1.0.1 - 191.255.255.254
- C 类：192.0.1.1 - 223.255.254.254
- D 类：224.0.0.0 - 239.255.255.255（127.0.0.0 用于回环）
- 特殊地址规则

- x.x.x.0 和 x.x.x.255 分别为网络 ID 和广播地址
- 网络 ID = IP 地址 & 子网掩码
- IPv4 地址位分配

- A 类：1-8 位网络，9-32 位主机
- B 类：1-16 位网络，17-32 位主机
- C 类：1-24 位网络，25-32 位主机<strong><font color=''#2656b3''>解题分析</font></strong><strong><font color=''#2656b3''>原始网络信息</font></strong>- 网络地址：204.204.204.0（二进制：11001100.11001100.11001100.00000000）
- 地址范围：204.204.204.0 - 204.204.204.255<strong><font color=''#2656b3''>子网划分原则</font></strong>通过借用主机位创建子网：- 子网掩码中网络位 + 子网位为 1，主机位为 0
- 主机数量计算公式：2n−2（n=可用主机位数）<strong><font color=''#2656b3''>选项解析</font></strong><strong><font color=''#2656b3''>选项 (A)</font></strong>
```c
204.204.204.128/255.255.255.192 → 62 主机
204.204.204.0/255.255.255.128   → 126 主机
204.204.204.64/255.255.255.128  → 与主网络冲突
→ 仅生成 2 个有效子网
```
<strong><font color=''#2656b3''>选项 (B)</font></strong>
```c
204.204.204.0/255.255.255.192    → 62 主机
204.204.204.192/255.255.255.128  → 126 主机
204.204.204.64/255.255.255.128   → 与主网络冲突
→ 仅生成 2 个有效子网
```
<strong><font color=''#2656b3''>选项 (C)</font></strong>
```c
204.204.204.128/255.255.255.128 → 126 主机
204.204.204.192/255.255.255.192 → 62 主机
204.204.204.224/255.255.255.192 → 与前一子网冲突
→ 仅生成 2 个有效子网
```
<strong><font color=''#2656b3''>选项 (D)</font></strong>
```c
204.204.204.128/255.255.255.128 → 126 主机（满足 100 需求）
204.204.204.64/255.255.255.192  → 62 主机（满足 50 需求）
204.204.204.0/255.255.255.192   → 62 主机（满足 50 需求）
→ 生成 3 个互不重叠的有效子网
```
', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5756');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5757, '408考研练习题——计算机网络——网络层第30题', '简单', '408考研练习题——计算机网络——网络层', '假设主机 “host1.mydomain.dom” 的 IP 地址为 145.128.16.8。以下哪个选项最适合作为执行该 IP 的反向查询步骤序列？在下列选项中，“NS” 是 “nameserver” 的缩写。
', '[''查询根域的 NS，然后查询 “dom” 域的 NS'', ''直接查询 “dom” 域的 NS，然后查询 “mydomain.dom” 域的 NS'', ''查询 in-addr.arpa 的 NS，然后查询 128.145.in-addr.arpa 域的 NS'', ''直接查询 145.in-addr.arpa 的 NS，然后查询 128.145.in-addr.arpa 域的 NS'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>背景知识</font></strong>当您在浏览器中输入网址（如www.google.com）时，计算机需要将其转换为 IP 地址以连接到目标服务器并获取网页。<strong><font color=''#2656b3''>正向 DNS 查询流程</font></strong>域名 → IP
客户端首先向 ISP 请求域名的 DNS。若缓存未命中，则：- 向根级 DNS 服务器发起请求
- 根服务器重定向至顶级域服务器（如 .org）
- 最终获得目标 IP 地址返回给客户端<strong><font color=''#2656b3''>反向 DNS 查询流程</font></strong>IP → 域名
特殊地址域`in.addr.arpa`用于逆向解析：- IPv4 使用`in-addr.arpa`
- IPv6 使用`ip6.arpa`<strong><font color=''#2656b3''>具体实现方式</font></strong>对于 IP 地址 192.19.20.1，其 PTR 记录格式为：
```c
1.20.19.192.in-addr.arpa. IN PTR www.geeksforgeeks.org.
```
<strong><font color=''#2656b3''>关键规则</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>地址倒序排列</font></strong></font></strong>：IP 地址在记录中按字节倒序排列
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>域名映射</font></strong></font></strong>：ISP 维护双向映射表
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>验证机制</font></strong></font></strong>：用于验证发送方的 IP 地址真实性<strong><font color=''#2656b3''>本题解析</font></strong>针对 IP 145.128.16.8 的反向查询应遵循：- 首先查询`in-addr.arpa`的 NS
- 然后查询`128.145.in-addr.arpa`域的 NS  
此过程符合反向 DNS 查询的标准路径设计原则。', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5757');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5758, '408考研练习题——计算机网络——网络层第31题', '简单', '408考研练习题——计算机网络——网络层', '一个大小为 1000 字节的 IP 数据报到达路由器。该路由器需要将此数据报转发到最大传输单元（MTU）为 100 字节的链路上。假设 IP 首部长度为 20 字节。该 IP 数据报在传输时将被划分为多少个分片？（ ）。
', '[''10'', ''50'', ''12'', ''13'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>已知条件</font></strong></font></strong>：

- MTU = 100 B
- IP 首部长度 = 20 B
- IP 数据报总长度 = 1000 B
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算步骤</font></strong></font></strong>：
- 每个分片可传输数据大小 = MTU - 首部长度 = 100 - 20 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>80 B</font></strong></font></strong>
- 待传输总数据量 = 总长度 - 首部长度 = 1000 - 20 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>980 B</font></strong></font></strong>
- 分片数量 =⌈80980​⌉=<strong><font color=''#2656b3''><strong><font color=''#2656b3''>13</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：需划分<strong><font color=''#2656b3''><strong><font color=''#2656b3''>13</font></strong></font></strong>个分片以满足 MTU 限制', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5758');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5759, '408考研练习题——计算机网络——网络层第32题', '简单', '408考研练习题——计算机网络——网络层', '以下哪项陈述是正确的？（ ）
', '[''以太网帧和 IP 数据报都包含校验和字段'', ''以太网帧包含校验和字段，IP 数据报包含 CRC 字段'', ''以太网帧包含 CRC 字段，IP 数据报包含校验和字段'', ''以太网帧和 IP 数据报都包含 CRC 字段'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>以太网帧格式</font></strong>- 又称为 IEEE 802.3 协议
- 工作在数据链路层，采用总线拓扑结构，CSMA/CD 访问控制，不使用确认机制
- 安全性方面使用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>CRC</font></strong></font></strong>（更精确地说是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>CRC-32 位</font></strong></font></strong>）<strong><font color=''#2656b3''>IP 数据报格式</font></strong>- 使用<strong><font color=''#2656b3''><strong><font color=''#2656b3''>16 位校验和</font></strong></font></strong><strong><font color=''#2656b3''>结论</font></strong>
因此，以太网 → CRC，IP → 校验和', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5759');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5760, '408考研练习题——计算机网络——网络层第33题', '简单', '408考研练习题——计算机网络——网络层', '两种流行的路由算法是距离向量（Distance Vector，DV）和链路状态（Link State，LS）路由。以下哪项正确？
(S1) 无限计数问题是 DV 特有的，不会出现在 LS 路由中
(S2) 在 LS 中，最短路径算法仅在一个节点上运行
(S3) 在 DV 中，最短路径算法仅在一个节点上运行
(S4) DV 所需的网络消息数量少于 LS
', '[''S1、S2 和 S4'', ''S1、S3 和 S4'', ''仅 S2 和 S3'', ''仅 S1 和 S4'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₁为真</font></strong></font></strong>：无限计数问题仅与距离向量算法相关，而不会影响链路状态算法
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₂为假</font></strong></font></strong>：在链路状态算法中，每个节点在广播其邻居信息到所有其他节点后，都会运行最短路径算法
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₃为假</font></strong></font></strong>：在距离向量算法中，每个节点在接收到邻居的距离向量或链路成本变化时，会异步运行最短路径算法
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₄为真</font></strong></font></strong>：在链路状态算法中，每个节点需要将其邻居信息广播给所有其他节点；而在距离向量算法中，每个节点只需将路由信息发送给直接邻居。因此，DV 所需的网络消息数量少于 LS因此选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5760');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5761, '408考研练习题——计算机网络——网络层第34题', '简单', '408考研练习题——计算机网络——网络层', 'IPv4 地址系统已经包含了网络和主机的信息。为了将数据包正确路由到目标网络，路由器除了需要主机的 IP 地址外，还需要子网掩码。主机本身不会转发数据包，那么为什么主机也需要子网掩码呢？（ ）
', '[''主机需要子网掩码进行与运算以确定自己的网络。'', ''获取目标主机的 IP 地址'', ''判断数据包是否应该发送给路由器'', ''从 DNS 服务器解析逻辑地址'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 子网掩码（存储在路由表中）是路由器将数据包导向目标网络的关键信息
- 主机通过子网掩码执行<strong><font color=''#2656b3''><strong><font color=''#2656b3''>逻辑与运算</font></strong></font></strong>来识别目标地址是否属于本地网络
- 当主机需要通信时：
- 将目标 IP 地址与自身子网掩码进行与运算
- 比较结果与本机网络地址
- 若匹配则直接发送；若不匹配则交由默认网关（路由器）处理
- 这种机制确保主机能自主决定数据传输路径  
因此，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5761');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5762, '408考研练习题——计算机网络——网络层第35题', '简单', '408考研练习题——计算机网络——网络层', '考虑一个长度为 4500 字节的 IP 数据包，其中包含 20 字节的 IPv4 首部和 40 字节的 TCP 首部。该数据包被转发到一个支持最大传输单元（MTU）为 600 字节的 IPv4 路由器。假设所有传出分片中的 IP 首部长度均为 20 字节。假设第一个分片中存储的分片偏移值为 0。第三个分片中存储的分片偏移值是（ ）。注意：这是一个数值类型题目。
', '[''0'', ''72'', ''144'', ''216'']', "['C']", 'C</font></strong>
在 IP 分片问题中，我们不需要担心 TCP/UDP 首部，因为路由器处理分片时甚至无需查看 TCP/UDP 首部，因此不会将它们附加到每个分片上。TCP/UDP 首部只是有效载荷的一部分，被视为普通数据，且仅存在于第一个分片中。MTU=600 字节，IP 首部=20 字节，因此有效载荷为 600-20=580 字节。580 不是 8 的倍数，但分片大小必须是 8 的倍数，因此分片大小=576 字节。第 K 个分片的偏移值=分片大小×(第 K 个分片 -1)/缩放因子。
第三个分片的偏移值=576×(3-1)/8=144。', 9, 'Mogullzr', '2026-02-02 11:53:21', 9, NULL, '2026-02-02 11:53:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5762');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5763, '408考研练习题——计算机网络——网络层第36题', '简单', '408考研练习题——计算机网络——网络层', '主机在启动时使用的 IP 地址是（  ）。
', '[''0.0.0.0'', ''1.0.0.0'', ''1.1.1.1'', ''255.255.255.255'']', "['A']", 'A</font></strong>
在 IPv4 中，<strong><font color=''#2656b3''>0.0.0.0</font></strong>有多种用途，其中之一是：- 它被用于<strong><font color=''#2656b3''><strong><font color=''#2656b3''>系统启动时</font></strong></font></strong>的临时地址表示  
因此<strong><font color=''#2656b3''><strong><font color=''#2656b3''>(A)</font></strong></font></strong>是正确选项。', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5763');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5764, '408考研练习题——计算机网络——网络层第37题', '简单', '408考研练习题——计算机网络——网络层', '以下哪些陈述是正确的？
(a) IPv4 基本头部中的分片字段已移动到 IPv6 的分片扩展头部中。
(b) 认证扩展头部是 IPv6 新增的特性。
(c) IPv6 未实现记录路由选项。
', '[''(a) 和 (b) 仅'', ''(b) 和 (c) 仅'', ''(a) 和 (c) 仅'', ''(a)、(b) 和 (c)'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>结论</font></strong>- (a) 分片字段迁移IPv4 基本头部中的分片字段已移至 IPv6 的分片扩展头部，此陈述正确。
- (b) 认证扩展头部虽然认证头（协议 51）在 IPv4 和 IPv6 中相同，但认证扩展头部是 IPv6 新增特性，因此该陈述正确。
- (c) 记录路由功能根据 [IPv6] 规范，IPv6 未定义记录路由功能。IPv4 的记录路由功能存在灵活性差和可扩展性问题。尽管 RR6（IPv6 记录路由）机制尝试优化并修复这些问题，但 IPv6 本身并未实现该功能，故此陈述正确。<strong><font color=''#2656b3''>结论</font></strong>
所有陈述均正确，因此选项<strong><font color=''#2656b3''>(D)</font></strong>是正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5764');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5765, '408考研练习题——计算机网络——网络层第38题', '简单', '408考研练习题——计算机网络——网络层', '在 10 Mbps 网络上的节点 X 由一个令牌桶进行调节。令牌桶以 2 Mbps 的速度填充，初始容量为 16 兆比特。X 以 10 Mbps 全速率传输的最大持续时间是（ ）秒。
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>

$$
t = \\frac{16}{10 - 2} = \\frac{16}{8} = 2 秒
$$
', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5765');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5766, '408考研练习题——计算机网络——网络层第39题', '简单', '408考研练习题——计算机网络——网络层', '动态路由协议使路由器能够（ ）
', '[''动态发现和维护路由'', ''向其他路由器分发路由更新'', ''与其他路由器就网络拓扑达成一致'', ''以上全部'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解释</font></strong>A、B、C 三个选项描述的都是动态路由协议的核心功能：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>动态发现和维护路由</font></strong></font></strong>（A）是动态路由协议的基本特性
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分发路由更新</font></strong></font></strong>（B）用于同步网络状态信息
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>就网络拓扑达成一致</font></strong></font></strong>（C）是实现路由收敛的前提条件
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>动态发现和维护路由</font></strong></font></strong>：通过协议算法（如 OSPF、BGP）自动识别网络变化并更新路由表', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5766');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5767, '408考研练习题——计算机网络——网络层第40题', '简单', '408考研练习题——计算机网络——网络层', '一个 B 类主机的地址要划分为子网，子网号为 6 位。每个子网中最多可以有多少个子网和每子网中的最大主机数是多少？（ ）
', '[''62 个子网和 262142 台主机。'', ''64 个子网和 262142 台主机。'', ''62 个子网和 1022 台主机。'', ''64 个子网和 1024 台主机。'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 子网数量计算使用 6 位作为子网号时，传统公式为2n−2（其中n=6），因为全 0 和全 1 的子网通常被保留。因此26−2=62个有效子网。
- 每子网主机数B 类网络默认有 16 位主机位，划分 6 位子网后剩余16−6=10位主机位。每子网可用主机数为210−2=1022（减去网络地址和广播地址）。
- 选项分析选项 C 符合上述计算结果，而其他选项要么未扣除保留地址（如 64 个子网或 1024 台主机），要么数值错误。', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5767');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5768, '408考研练习题——计算机网络——网络层第41题', '简单', '408考研练习题——计算机网络——网络层', '以下哪项陈述是错误的？（ ）
', '[''PING 是一个 TCP/IP 应用程序，它每秒发送一次数据报，希望从被 PING 的机器获得回声响应'', ''如果机器已连接并运行 TCP/IP 协议栈，它应该用自己的数据报响应 PING 数据报'', ''如果 PING 遇到错误条件，不会返回 ICMP 消息'', ''PING 显示返回响应的时间（以毫秒为单位）或几种错误信息之一'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 当 PING 遇到错误时（如目标不可达、网络拥塞等），会通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>ICMP 错误消息</font></strong></font></strong>返回具体信息
- 常见的 ICMP 错误消息包括：

- `Destination Unreachable`
- `Time Exceeded`
- `Parameter Problem`等
- 因此，选项 C 的描述与实际行为相悖，属于错误陈述', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5768');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5769, '408考研练习题——计算机网络——网络层第42题', '简单', '408考研练习题——计算机网络——网络层', '带宽为 10 Mbps 的网络平均每分钟只能传输 12,000 帧，每帧平均携带 10,000 位。该网络的吞吐量是多少？（ ）
', '[''1 Mbps'', ''2 Mbps'', ''10 Mbps'', ''12 Mbps'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>吞吐量定义</font></strong>
吞吐量是指成功从一个地方传输到另一个地方的数据量。<strong><font color=''#2656b3''>计算过程</font></strong>- 每分钟传输帧数：12,000 帧
- 每帧数据量：10,000 位
- 总数据量 = 12,000 × 10,000 = 120,000,000 位/分钟
- 转换为秒级：120,000,000 ÷ 60 = 2,000,000 比特/秒 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 Mbps</font></strong></font></strong><strong><font color=''#2656b3''>结论</font></strong>
因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5769');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5770, '408考研练习题——计算机网络——网络层第43题', '简单', '408考研练习题——计算机网络——网络层', '在数据包通过流量路由设备传输过程中，修改 IP 数据包头部的 IP 地址信息的过程称为（ ）
', '[''端口地址转换 (PAT)'', ''网络地址翻译 (NAT)'', ''地址映射'', ''端口映射'']', "['B']", 'B</font></strong>
网络地址转换（<strong><font color=''#2656b3''>Network address translation，NAT</font></strong>）是一种通过修改网络地址信息将一个 IP 地址空间重新映射到另一个 IP 地址空间的方法。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>端口地址转换（Port Address Translation，PAT）</font></strong></font></strong>：是 NAT 的扩展，允许本地局域网（LAN）上的多个设备映射到单个公共 IP 地址。其目标是节约 IP 地址资源。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>地址映射（Address mapping）</font></strong></font></strong>：也称为点映射或地理编码，是将数据库中的地址分配地图坐标位置的过程，其输出结果是一个带有输入数据库所有数据属性的点图层。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>端口映射（Port mapping）</font></strong></font></strong>：或端口转发，是 NAT 的一种应用，用于在网络网关（如路由器或防火墙）中将通信请求从一个地址和端口号组合重定向到另一个组合。因此，选项 (B) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5770');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5771, '408考研练习题——计算机网络——网络层第44题', '简单', '408考研练习题——计算机网络——网络层', 'OSPF 路由协议使用的路由算法是什么？（ ）
', '[''距离向量'', ''洪泛法'', ''路径向量'', ''链路状态'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 开放最短路径优先（Open Shortest Path First，OSPF）是一种链路状态路由协议，属于网络层协议。
- 它通过链路状态路由方法基于特定算法计算网络中到目标的最短路径。
- 该协议属于 IGP（内部网关协议）类别。因此，选项<strong><font color=''#2656b3''>(D)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:53:22', 9, NULL, '2026-02-02 11:53:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5771');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5772, '408考研练习题——计算机网络——网络层第45题', '简单', '408考研练习题——计算机网络——网络层', '一个 IP 数据包到达，其分片偏移值为 100，首部长度字段（HLEN）值为 5，总长度字段值为 200。该数据包中最后一个字节的编号是多少？（ ）
', '[''194'', ''394'', ''979'', ''1179'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分片偏移量</font></strong></font></strong>= 100 × 8 = 800
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>HLEN</font></strong></font></strong>= 5，因此首部长度 = 5 × 4 = 20
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总长度字段</font></strong></font></strong>= 200
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>载荷大小</font></strong></font></strong>= 200 - 20 = 180<strong><font color=''#2656b3''>计算过程：</font></strong>- 数据包起始字节位置 = 分片偏移量 × 8 = 800
- 数据包结束字节位置 = 起始位置 + 载荷大小 - 1 = 800 + 180 - 1 = 979最终结果为<strong><font color=''#2656b3''>979</font></strong>，对应选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5772');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5773, '408考研练习题——计算机网络——网络层第46题', '简单', '408考研练习题——计算机网络——网络层', '假设信道的传输速率为 32kbps。如果从源到目的地有‘8’条路由路径，且每个数据包 p 包含 8000 位。发送数据包 P 的总端到端延迟是（ ）。
', '[''2 秒'', ''3 秒'', ''4 秒'', ''1 秒'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>已知信道的传输速率为 32kbps，从源到目的地有‘8’条路由路径，每个数据包 p 包含 8000 位。
总延迟 = 路由路径数 × 数据包大小 / 传输速率。
即：8 × 8000 b / 32 kbps
= 8 × 8000 b / 32000 bps
= 2 s
因此，选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5773');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5774, '408考研练习题——计算机网络——网络层第47题', '简单', '408考研练习题——计算机网络——网络层', '一个 IP 数据包到达时，前 8 位为 0100 0010。以下哪项是正确的？（ ）
', '[''该数据包可传输的跳数为 2'', ''首部总字节数为 16 字节'', ''上层协议是 ICMP'', ''接收方会拒绝该数据包'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>分析过程</font></strong>- 前 4 位表示版本<strong><font color=''#2656b3''><strong><font color=''#2656b3''>IPv4</font></strong></font></strong>
- 后 4 位表示首部长度（/4），应介于<strong><font color=''#2656b3''><strong><font color=''#2656b3''>20 到 60 字节</font></strong></font></strong>之间
- 此处`0010`表示首部长度，等于2×4=8字节
- 因此接收方将<strong><font color=''#2656b3''><strong><font color=''#2656b3''>拒绝该数据包</font></strong></font></strong><strong><font color=''#2656b3''>结论</font></strong>：选项<strong><font color=''#2656b3''>(D)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5774');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5775, '408考研练习题——计算机网络——网络层第48题', '简单', '408考研练习题——计算机网络——网络层', '一个超网的第一个地址是 205.16.32.0，子网掩码为 255.255.248.0。路由器收到 4 个目的地址的分组，其中哪个分组属于该超网？
（A）205.16.42.56
（B）205.17.32.76
（C）205.16.31.10
（D）205.16.39.44
', '[''205.16.42.56'', ''205.17.32.76'', ''205.16.31.10'', ''205.16.39.44'']', "['D']", 'D</font></strong>
通过将超网掩码与给定 IP 地址进行与运算，如果结果等于超网的第一个地址，则该 IP 地址属于同一超网。以选项（D）为例验证：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>超网掩码</font></strong></font></strong>：255.255.248.0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>IP 地址</font></strong></font></strong>：205.16.39.44
```c
11111111. 11111111. 11111000. 00000000   # 超网掩码（二进制）
11001101. 00010000. 00100111. 00101100   # IP 地址（二进制）
----------------------------------------
11001101. 00010000. 00100000. 00000000   # 与运算结果
```
运算结果`205.16.32.0`恰好等于超网的第一个地址，因此选项（D）正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5775');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5776, '408考研练习题——计算机网络——网络层第49题', '简单', '408考研练习题——计算机网络——网络层', '一个组织被分配了 IP 地址块 130.34.12.64/26，需要划分 4 个子网。以下哪个地址不属于该组织？（ ）
', '[''130.34.12.124'', ''130.34.12.89'', ''130.34.12.70'', ''130.34.12.132'']', "['D']", 'D</font></strong>
130.34.12.64/26 的地址空间分析如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>网络前缀长度</font></strong></font></strong>：`/26`表示网络位占 26 位，主机位占32−26=6位
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>可用地址数量</font></strong></font></strong>：26=64个地址（含网络地址和广播地址）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>地址范围</font></strong></font></strong>：

- 起始地址：130.34.12.64
- 结束地址：130.34.12.127
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>验证选项</font></strong></font></strong>：

- A. 130.34.12.124 ∈ [64, 127] ✅
- B. 130.34.12.89 ∈ [64, 127] ✅
- C. 130.34.12.70 ∈ [64, 127] ✅
- D. 130.34.12.132 ∉ [64, 127] ❌结论：选项 (D) 超出该组织分配的地址范围，因此是正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5776');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5777, '408考研练习题——计算机网络——网络层第50题', '简单', '408考研练习题——计算机网络——网络层', 'IPv6 不支持以下哪种寻址模式（ ）？
', '[''单播寻址'', ''多播寻址'', ''广播寻址'', ''任播寻址'']', "['C']", 'C</font></strong>
IPv6 支持的寻址模式包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>单播寻址</font></strong></font></strong>：在单播模式下，IPv6 接口（主机）在网络段中被唯一标识。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>多播寻址</font></strong></font></strong>：发送给多个主机的数据包通过特殊的多播地址传输。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>任播寻址</font></strong></font></strong>：IPv6 引入了任播寻址。在此模式下，多个接口（主机）可以分配相同的任播 IP 地址。IPv6 不支持广播寻址。选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5777');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5778, '408考研练习题——计算机网络——网络层第51题', '简单', '408考研练习题——计算机网络——网络层', '如果子网掩码是 255.224.0.0，那么 IP 的类别和子网数量是多少（ ）？
', '[''A 类，3'', ''A 类，8'', ''B 类，3'', ''B 类，32'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
```c
11111111.11100000.00000000.00000000
```
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>前 8 位</font></strong></font></strong>：`11111111`表示 A 类网络地址
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>后续 3 位</font></strong></font></strong>：`11100000`中的前 3 个`1`用于子网划分
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>子网数量计算</font></strong></font></strong>：23=8(B) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5778');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5779, '408考研练习题——计算机网络——网络层第52题', '简单', '408考研练习题——计算机网络——网络层', '在 IPv4 数据报中，以下哪个字段与分片无关？（ ）
', '[''服务类型'', ''分片偏移'', ''标志位'', ''标识符'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>服务类型</font></strong></font></strong>与 IPv4 数据报的分片功能无直接关联
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分片偏移</font></strong></font></strong>用于指示当前分片在原始数据报中的位置
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>标志位</font></strong></font></strong>控制是否允许分片及是否为最后一个分片
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>标识符</font></strong></font></strong>用于标识同一原始数据报的所有分片因此，选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5779');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5780, '408考研练习题——计算机网络——网络层第53题', '简单', '408考研练习题——计算机网络——网络层', '以下哪项不是网络层的拥塞控制策略（ ）？
', '[''流量控制策略'', ''分组丢弃策略'', ''分组生存期管理策略'', ''路由算法'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>流量控制</font></strong></font></strong>是管理两个节点间数据传输速率的过程，用于防止发送方过快导致接收方被淹没。该机制通常属于传输层功能（如 TCP 滑动窗口），而非网络层职责范畴。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分组丢弃策略</font></strong></font></strong>：网络层通过主动丢弃超额数据包缓解拥塞。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>分组生存期管理策略</font></strong></font></strong>：通过 TTL（Time To Live）字段限制分组在网络中的存活时间，避免无效循环。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>路由算法</font></strong></font></strong>：动态选择低负载路径分散流量，是典型的网络层拥塞控制手段。因此，选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:53:23', 9, NULL, '2026-02-02 11:53:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5780');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5781, '408考研练习题——计算机网络——网络层第54题', '简单', '408考研练习题——计算机网络——网络层', '一个带宽为 10 Mbps 的网络平均每分钟只能传输 15000 帧，每帧平均携带 8000 比特。该网络的吞吐量是多少？（ ）
', '[''2 Mbps'', ''60 Mbps'', ''120 Mbps'', ''10 Mbps'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 总传输数据量计算

- 每帧数据量：8000 bit
- 每分钟传输帧数：15000 帧
- 总数据量 = 15000 × 8000 = 120,000,000 bit
- 吞吐量换算

- 时间单位转换：1 分钟 = 60 秒
- 吞吐量 = 120,000,000 ÷ 60 = 2,000,000 bps =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2 Mbps</font></strong></font></strong>
- 结论网络实际吞吐量（2 Mbps）远低于理论带宽（10 Mbps），表明存在显著的传输效率损耗。因此，选项（A）正确。', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5781');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5782, '408考研练习题——计算机网络——网络层第55题', '简单', '408考研练习题——计算机网络——网络层', '在隧道模式下使用 IPSEC 会导致（ ）
', '[''具有相同头部的 IP 数据包'', ''具有新头部的 IP 数据包'', ''没有头部的 IP 数据包'', ''IP 数据包无变化'']', "['B']", 'B</font></strong>
当使用 IPSec 隧道模式时，IPSec 会加密 IP 头部和有效载荷，而传输模式仅加密 IP 有效载荷。在隧道模式下，整个 IP 数据包会被封装一个 AH 或 ESP 头部和新的 IP 数据包（包括原始头部），对整个数据包应用 IPSec 安全方法，并添加一个新的 IP 头部。外层 IP 头部的地址是隧道端点，被封装 IP 头部的地址是最终源地址和目的地址。隧道模式可用于以下配置：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>网关到网关</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>隧道模式通常用于两个路由器之间</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>保护原始 IP 头部</font></strong></font></strong><strong><font color=''#2656b3''>选项 (B) 正确</font></strong>', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5782');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5783, '408考研练习题——计算机网络——网络层第56题', '简单', '408考研练习题——计算机网络——网络层', '在局域网（LAN）中，IP 数据报是如何传输的？（ ）
', '[''在 LAN 头部'', ''在应用层字段'', ''在 LAN 帧的信息字段中'', ''在 TCP 头部之后'']', "['C']", 'C</font></strong>
IP 数据报被封装在以太网帧的有效载荷字段中，因此可以说它是在帧的信息字段中传输的。
所以，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5783');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5784, '408考研练习题——计算机网络——网络层第57题', '简单', '408考研练习题——计算机网络——网络层', '如果一个内网使用链路状态路由（link state routing），其中有 5 个路由器和 6 个网络，那么共有多少张路由表？（ ）
', '[''1'', ''5'', ''6'', ''11'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>核心原理</font></strong></font></strong>：路由器通过路由表选择性地将数据包转发到其他网络。这些路由器会应用最短路径算法，选择数据包需要经过的链路，以确保其在最少跳数内到达目的地。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数量计算</font></strong></font></strong>：

- 每个路由器维护独立的路由表
- 网络中有 5 个路由器 → 对应 5 张路由表
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项（B）正确。', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5784');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5785, '408考研练习题——计算机网络——网络层第58题', '简单', '408考研练习题——计算机网络——网络层', '当网络 A 上的主机向网络 B 上的主机发送消息时，路由器查看的是哪个地址？（ ）
', '[''端口'', ''IP'', ''物理地址'', ''子网掩码'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>路由机制</font></strong></font></strong>：路由是基于 IP 地址进行的。当网络 A 上的主机向网络 B 上的主机发送数据包时，它会检查接收主机的 IP 地址，并将数据包路由到合适的下一跳。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>物理地址（MAC）</font></strong></font></strong>：物理地址（即 MAC 地址）用于在局域网中识别网络上的唯一主机。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>端口作用</font></strong></font></strong>：端口号用于标识消息到达服务器后需要转发到的特定进程或应用程序。因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5785');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5786, '408考研练习题——计算机网络——网络层第59题', '简单', '408考研练习题——计算机网络——网络层', '在一个包含 n 台设备的网络中，网状拓扑结构需要（  ）条全双工模式链路。
', '[''$n(n + 1)$'', ''$n(n - 1)$'', ''$n(n + 1)/2$'', ''$n(n - 1)/2$'']', "['D']", 'D</font></strong>
在一个包含$n$台设备的网络中，网状拓扑结构需要$\\frac{n(n-1)}{2}$条全双工模式链路。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>计算逻辑</font></strong></font></strong>：每台设备需与其他n−1台设备建立独立连接，总连接数为n(n−1)，但由于每条链路被两台设备共享，因此除以 2 去重。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>参考依据</font></strong></font></strong>：网络拓扑结构 | 计算机网络
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 (D) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5786');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5787, '408考研练习题——计算机网络——网络层第60题', '简单', '408考研练习题——计算机网络——网络层', '（ ）是一种面向比特的协议，用于点对点和多点链路的通信。
', '[''停止等待'', ''HDLC'', ''滑动窗口'', ''回退 N'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释</font></strong>HDLC 是一种<strong><font color=''#2656b3''>面向比特的协议</font></strong>，专门设计用于点对点和多点链路通信。
其他选项（如停止等待、滑动窗口、回退 N）属于流量控制或错误恢复机制，并非面向比特的协议。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>停止等待</font></strong></font></strong>：通过发送方每次仅发送一个帧并等待确认后继续发送，实现简单但效率较低的流量控制。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>滑动窗口</font></strong></font></strong>：允许发送方连续发送多个帧，并通过动态调整窗口大小优化信道利用率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>回退 N</font></strong></font></strong>：在检测到错误时，从出错帧开始重传后续所有未确认的帧，属于自动重传请求（ARQ）机制。这些机制主要关注数据传输的可靠性和效率，与 HDLC 的协议类型本质不同。', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5787');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5788, '408考研练习题——计算机网络——网络层第61题', '简单', '408考研练习题——计算机网络——网络层', '假设源 S 和目的 D 通过中间路由器 R 连接。在从 S 到 D 的传输过程中，数据包需要访问网络层和数据链路层多少次？（ ）
', '[''网络层 – 4 次，数据链路层 – 4 次'', ''网络层 – 4 次，数据链路层 – 6 次'', ''网络层 – 2 次，数据链路层 – 4 次'', ''网络层 – 3 次，数据链路层 – 4 次'']', "['D']", 'D</font></strong>
路由器是网络层设备。如下图所示：源 S 和目的 D 各包含 1 个网络层和 1 个数据链路层，而中间路由器 R 包含 2 个数据链路层和 1 个网络层。因此：- 网络层总共访问<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3 次</font></strong></font></strong>（S→R→D）
- 数据链路层总共访问<strong><font color=''#2656b3''><strong><font color=''#2656b3''>4 次</font></strong></font></strong>（S→R 入、R 出→D）  
正确答案为 (D)', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5788');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5789, '408考研练习题——计算机网络——网络层第62题', '简单', '408考研练习题——计算机网络——网络层', '假设源 S 和目的 D 通过两个标记为 R 的中间路由器连接。确定在从 S 到 D 的传输过程中，每个数据包必须访问网络层和数据链路层多少次？（ ）
', '[''网络层 – 4 次 和 数据链路层 – 4 次'', ''网络层 – 4 次 和 数据链路层 – 3 次'', ''网络层 – 4 次 和 数据链路层 – 6 次'', ''网络层 – 2 次 和 数据链路层 – 6 次'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 网络层访问次数

- 路由器属于网络层设备（第 3 层）
- 数据包需经过：S → R1 → R2 → D 共 4 个节点
- 每个节点都会进行网络层处理（路由决策/转发）
- 数据链路层访问次数

- 数据链路层（第 2 层）负责物理传输
- 传输路径包含 3 段链路：S-R1, R1-R2, R2-D
- 每段链路两端设备均需进行数据链路层封装/解封装
- 因此总共访问数据链路层：3 段 × 2 次 = 6 次
- 结论

- 网络层共访问 4 次（每个节点 1 次）
- 数据链路层共访问 6 次（每段链路 2 次）', 9, 'Mogullzr', '2026-02-02 11:53:24', 9, NULL, '2026-02-02 11:53:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5789');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5790, '408考研练习题——计算机网络——网络层第63题', '简单', '408考研练习题——计算机网络——网络层', '考虑一个源计算机$(S)$正在通过一个由两个路由器$(R_{1}$和$R_{2})$以及三条链路$(L_{1}, L_{2}$和$L_{3})$组成的网络向一个目标计算机$(D)$传输一个大小为$10^{6}$比特的文件。$L_{1}$连接$S$到$R_{1}$；$L_{2}$连接$R_{1}$到$R_{2}$；$L_{3}$连接$R_{2}$到$D$。假设每条链路的长度为$100$公里。假设信号在每条链路上以$10^{8}$米/秒的速度传播。假设每条链路的带宽为$1$Mbps。假设文件被分解成$1000$个数据包，每个数据包的大小为$1000$比特。求文件从$S$传输到$D$的传输和传播延迟的总和是多少？
', '[''1005 ms'', ''1010 ms'', ''3000 ms'', ''3003 ms'']', "['A']", 'A</font></strong>
路由器是存储转发设备。传播时间 =$\\frac{100km}{10^{8}m/s} = 1$毫秒一个数据包的传输时间 =$\\frac{1000bits}{10^{6}bits/sec} = 1$毫秒在第一个数据包到达接收器之后，数据包将以流水线方式转发，每$1$毫秒会有一个新的数据包到达。现在数据包 No.1 到达目的地所需的时间是：$1$毫秒（发送方的$T_{x}$）$+1$毫秒（从发送方到 R1 的$T_{p}$）$+1$毫秒（R1 处的$T_{x}$）$+1$毫秒（从 R1 到 R2 的$T_{p}$）$+1$毫秒（R2 处的$T_{x}$）$+1$毫秒（从 R2 到目的地的$T_{p}$）$= 6$毫秒所以，1000 个数据包的时间 =$6$毫秒$+999$毫秒$= 1005$毫秒', 9, 'Mogullzr', '2026-02-02 11:53:25', 9, NULL, '2026-02-02 11:53:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5790');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5791, '408考研练习题——计算机网络——网络层第64题', '简单', '408考研练习题——计算机网络——网络层', '无类别域间路由（CIDR）接收到一个地址为 131.23.151.76 的数据包。路由器的路由表包含以下条目：
该数据包将被转发到输出接口标识符为 (  ) 的接口。
', '[''1'', ''2'', ''3'', ''5'']', "['A']", 'A</font></strong>
在本题中，我们需要为每个路由表项计算子网掩码，并将其与给定的数据包地址进行<strong><font color=''#2656b3''>按位与运算</font></strong>，结果等于网络 ID（Netid）的即为候选答案。例如：- 第一个表项`131.16.0.0/12`的子网掩码是前 12 位全为 1（网络部分），后 20 位全为 0（主机部分），即`255.240.0.0`。将`131.23.151.76`与该掩码进行按位与运算得到`131.16.0.0`，匹配成功。
- 最后一个表项`131.22.0.0/15`的掩码为`255.254.0.0`，运算结果为`131.22.0.0`，同样匹配成功。此时需要通过<strong><font color=''#2656b3''>最长前缀匹配</font></strong>规则决定最终接口：当目标地址匹配多个路由表项时，选择最具体的（即前缀长度最长）表项作为接口。输入 IP 地址与接口 1 的前缀匹配长度最长，因此选择接口 1。', 9, 'Mogullzr', '2026-02-02 11:53:25', 9, NULL, '2026-02-02 11:53:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5791');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5792, '408考研练习题——计算机网络——网络层第65题', '简单', '408考研练习题——计算机网络——网络层', '两台计算机 C1 和 C2 的配置如下：C1 的 IP 地址为 203.197.2.53，子网掩码为 255.255.128.0；C2 的 IP 地址为 203.197.75.201，子网掩码为 255.255.192.0。以下哪项陈述是正确的（ ）？
', '[''C1 和 C2 都认为它们在同一个网络中'', ''C2 认为 C1 在同一个网络中，但 C1 认为 C2 在不同网络中'', ''C1 认为 C2 在同一个网络中，但 C2 认为 C1 在不同网络中'', ''C1 和 C2 都认为它们在不同网络中'']', "['C']", 'C</font></strong>
根据网络地址计算规则：- C1 的网络地址203.197.2.53 & 255.255.128.0 = 203.197.0.0/17
- C2 的网络地址203.197.75.201 & 255.255.192.0 = 203.197.64.0/18<strong><font color=''#2656b3''>分析过程</font></strong>- 从 C1 视角看 C2 的 IP 地址

- 使用 C1 的子网掩码进行与运算：  
`203.197.75.201 & 255.255.128.0 = 203.197.0.0/17`
- 结果与 C1 自身网络地址相同（203.197.0.0/17），因此<strong><font color=''#2656b3''><strong><font color=''#2656b3''>C1 认为 C2 在同一网络中</font></strong></font></strong>。
- 从 C2 视角看 C1 的 IP 地址

- 使用 C2 的子网掩码进行与运算：  
`203.197.2.53 & 255.255.192.0 = 203.197.0.0/18`
- 结果与 C2 自身网络地址（203.197.64.0/18）不同，因此<strong><font color=''#2656b3''><strong><font color=''#2656b3''>C2 认为 C1 在不同网络中</font></strong></font></strong>。综合上述分析，<strong><font color=''#2656b3''>选项 C 正确</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:53:25', 9, NULL, '2026-02-02 11:53:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5792');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5793, '408考研练习题——计算机网络——网络层第66题', '简单', '408考研练习题——计算机网络——网络层', '考虑一个包含 720 个路由器的子网。如果选择三级层次结构，包括八个簇，每个簇包含 9 个区域，每个区域有 10 个路由器，则路由表中的总条目数为（  ）。
', '[''25'', ''27'', ''53'', ''72'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结构分解</font></strong></font></strong>：8 个簇 × 9 个区域 × 10 个路由器
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>路由表条目组成</font></strong></font></strong>：

- 本地路由器：10 条目
- 其他区域：8 条目
- 远端簇：7 条目
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总计</font></strong></font></strong>：10 + 8 + 7 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>25</font></strong></font></strong>  
因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:25', 9, NULL, '2026-02-02 11:53:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5793');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5794, '408考研练习题——计算机网络——网络层第67题', '简单', '408考研练习题——计算机网络——网络层', '目标地址不在本地 TCP/IP 网络段的数据包会被发送到（ ）。
', '[''文件服务器'', ''DNS 服务器'', ''DHCP 服务器'', ''默认网关'']', "['D']", 'D</font></strong>
目标地址不在本地 TCP/IP 网络段的数据包会被发送到默认网关。<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键概念</font></strong></font></strong>：当主机发现目标 IP 地址不属于本地网络时，会通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>默认网关</font></strong></font></strong>（Default Gateway）转发数据包。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>工作原理</font></strong></font></strong>：

- 默认网关是主机通往外部网络的出口节点，负责将数据包路由到其他网络段。
- 其他选项（文件服务器/DNS/DHCP）仅提供特定服务，不承担跨网络通信的路由功能。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>相关知识点</font></strong></font></strong>：

- 集线器/中继器：物理层设备，仅放大信号。
- 网桥/交换机：数据链路层设备，基于 MAC 地址转发。
- 路由器/网关：网络层设备，基于 IP 地址实现跨网段通信。因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:25', 9, NULL, '2026-02-02 11:53:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5794');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5795, '408考研练习题——计算机网络——网络层第68题', '简单', '408考研练习题——计算机网络——网络层', '考虑一个具有五个结点的网络如下图所示：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/f099e353402e4ee380297688cdb51aed.jpg)
网络使用<strong><font color=''#2656b3''>距离向量路由协议（Distance Vector Routing Protocol）</font></strong>。一旦路径稳定，各节点的距离向量如下所示：
每个距离向量表示从当前节点到其他节点（N1 到 N5）的最短已知路径的距离，其中到自身的距离为 0。所有链路是对称的，且代价在两个方向上相同。在每一轮中，所有节点与其邻居交换距离向量，然后更新自己的距离向量。
在两轮更新之间，链路的任何变化只会导致相连的两个节点改变其距离向量中相应的一项。
现在，链路<strong><font color=''#2656b3''>N2 − N3</font></strong>的代价降低为<strong><font color=''#2656b3''>2</font></strong>（双向）。在下一轮更新后，链路<strong><font color=''#2656b3''>N1 − N2</font></strong>失效，代价变为 ∞。<strong><font color=''#2656b3''>N2</font></strong>将立即反映这一变化，其距离向量中对应代价设为 ∞。
<strong><font color=''#2656b3''>在下一轮更新后，N3 的距离向量中到 N1 的代价将是多少？</font></strong>
', '[''3'', ''9'', ''10'', ''∞'']', "['C']", 'C</font></strong>
首先，当链路<strong><font color=''#2656b3''>N1 − N2</font></strong>失效后，<strong><font color=''#2656b3''>N2</font></strong>和<strong><font color=''#2656b3''>N1</font></strong>都会将其路由表中对应项更新为 ∞。所以此时<strong><font color=''#2656b3''>N2</font></strong>的路由表为`N2(∞, 0, 2, _, _)`（我省略了其余部分，因为它们在这里不重要）。接下来，<strong><font color=''#2656b3''>N3</font></strong>在下一轮中会通过<strong><font color=''#2656b3''>N2</font></strong>和<strong><font color=''#2656b3''>N4</font></strong>获取更新的路由表。但在此之前，我们需要知道上一轮<strong><font color=''#2656b3''>N4</font></strong>是如何更新的。在上一题中，<strong><font color=''#2656b3''>N4</font></strong>收到了来自<strong><font color=''#2656b3''>N3</font></strong>和<strong><font color=''#2656b3''>N5</font></strong>的更新，其表分别为：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>N3</font></strong></font></strong>:`(7, 6, 0, 2, 6)`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>N5</font></strong></font></strong>:`(4, 3, 6, 4, 0)`<strong><font color=''#2656b3''>现在这点非常重要：为什么 N4 没有从 N3 获取到更新后的路由表？</font></strong>
答案是：这些路由表是在<strong><font color=''#2656b3''>同一时刻</font></strong>被共享的，因此在一次更新轮次中用到的都是<strong><font color=''#2656b3''>旧值</font></strong>，而不是已更新的值。<strong><font color=''#2656b3''>N3</font></strong>是在<strong><font color=''#2656b3''>先将旧的路由表传给邻居后</font></strong>，才进行了更新的。<strong><font color=''#2656b3''>N4</font></strong>没理由等<strong><font color=''#2656b3''>N3</font></strong>先更新再处理，所以它会直接使用旧表更新（也就是`N4(8, 7, 2, 0, 4)`）。来看通向<strong><font color=''#2656b3''>N1</font></strong>的路径：这条路径是通过<strong><font color=''#2656b3''>N5</font></strong>而不是<strong><font color=''#2656b3''>N3</font></strong>的。因为当时<strong><font color=''#2656b3''>N3</font></strong>所分享的表中指向<strong><font color=''#2656b3''>N1</font></strong>的代价是 7，而<strong><font color=''#2656b3''>N1</font></strong>通过<strong><font color=''#2656b3''>N3</font></strong>的路径代价是`7 + 2 = 9`。
现在，当<strong><font color=''#2656b3''>N3</font></strong>接收到来自<strong><font color=''#2656b3''>N2</font></strong>和<strong><font color=''#2656b3''>N4</font></strong>的表：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>N2</font></strong></font></strong>:`(∞, 0, _, _, _)`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>N4</font></strong></font></strong>:`(8, 7, 2, 0, 4)`它首先会将指向<strong><font color=''#2656b3''>N1</font></strong>的距离更新为 ∞，而不是 3，因为现在从<strong><font color=''#2656b3''>N2</font></strong>到<strong><font color=''#2656b3''>N1</font></strong>的距离为 ∞，且下一跳还是<strong><font color=''#2656b3''>N2</font></strong>。
（<strong><font color=''#2656b3''>注意</font></strong>：如果下一跳相同，即使新值比旧值大，也会更新。）但与此同时，<strong><font color=''#2656b3''>N3</font></strong>也会看到来自<strong><font color=''#2656b3''>N4</font></strong>的表中到<strong><font color=''#2656b3''>N1</font></strong>的距离是 8，因此通过路径`N3 − N4 − N1`的代价是`2 + 8 = 10`，于是它更新距离为 10。因此，<strong><font color=''#2656b3''>N3 到 N1 的距离将更新为 10</font></strong>，最终路由表变为：- `N3(10, _, 0, _, _)`<strong><font color=''#2656b3''>所以，答案是 (C)。</font></strong>', 9, 'Mogullzr', '2026-02-02 11:53:27', 9, NULL, '2026-02-02 11:53:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1351', '5795');
