INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5844, '408考研练习题——计算机网络——应用层第1题', '简单', '408考研练习题——计算机网络——应用层', '考虑与电子邮件相关的不同活动：
m1: 从邮件客户端向邮件服务器发送电子邮件
m2: 从邮箱服务器下载电子邮件到邮件客户端
m3: 在网页浏览器中查看电子邮件
每个活动使用的应用层协议是什么？（ ）
', '[''m1: HTTP m2: SMTP m3: POP'', ''m1: SMTP m2: FTP m3: HTTP'', ''m1: SMTP m2: POP m3: HTTP'', ''m1: POP m2: SMTP m3: IMAP'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SMTP</font></strong></font></strong>（简单邮件传输协议）通常由用户客户端用于发送邮件。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>POP</font></strong></font></strong>（邮局协议）由客户端用于接收邮件。
- 在网页浏览器中查看邮件是一个简单的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>HTTP</font></strong></font></strong>过程。<strong><font color=''#2656b3''>选项 C 正确。</font></strong>', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5844');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5845, '408考研练习题——计算机网络——应用层第2题', '简单', '408考研练习题——计算机网络——应用层', '确定以下操作在浏览器与 Web 服务器交互过程中的正确顺序。
', '[''4, 2, 1, 3'', ''1, 2, 3, 4'', ''4, 1, 2, 3'', ''2, 4, 1, 3'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>DNS 解析</font></strong></font></strong>：浏览器首先通过`DNS`将 URL 中的域名（如`example.com`）解析为对应的 IP 地址。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 连接</font></strong></font></strong>：在获得 IP 地址后，浏览器通常通过`80`端口与 Web 服务器建立`TCP`连接。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>HTTP 请求</font></strong></font></strong>：TCP 连接成功后，浏览器发送`HTTP GET`请求以获取资源。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>HTTP 响应</font></strong></font></strong>：Web 服务器接收请求后，通过`HTTP`协议将所请求的网页内容返回给浏览器。此顺序符合浏览器从输入 URL 到加载页面的标准网络通信流程。', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5845');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5846, '408考研练习题——计算机网络——应用层第3题', '简单', '408考研练习题——计算机网络——应用层', '位于网络客户端机器 Q 的图形化 HTML 浏览器从 HTTP 服务器 S 访问一个静态 HTML 网页。该静态 HTML 页面中恰好嵌入了一个静态图像，且该图像也存储在 S 上。假设没有缓存机制，以下关于加载该 HTML 网页（包括嵌入图像）的说法中哪一项是正确的？
', '[''Q 需要向 S 发送至少 2 个 HTTP 请求，每个请求必须通过与服务器 S 的独立 TCP 连接完成'', ''Q 需要向 S 发送至少 2 个 HTTP 请求，但单个与服务器 S 的 TCP 连接就足够了'', ''Q 向 S 发送一次 HTTP 请求就足够了，且 Q 与 S 之间仅需建立一个 TCP 连接即可完成此操作'', ''Q 向 S 发送一次 HTTP 请求就足够了，且无需在 Q 与 S 之间建立任何 TCP 连接'']', "['B']", 'B</font></strong>
- 当浏览器解析 HTML 文档时，会为每个资源（HTML 文件本身 + 嵌入图像）发起独立的 HTTP 请求
- 由于所有资源均来自同一服务器 S，HTTP/1.1 协议支持持久化连接（Persistent Connection），允许复用同一个 TCP 连接完成多个请求
- 因此总共需要 2 次 HTTP 请求（HTML + 图像），但只需 1 个 TCP 连接即可完成全部交互', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5846');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5847, '408考研练习题——计算机网络——应用层第4题', '简单', '408考研练习题——计算机网络——应用层', '在下列协议对中，哪一对的两个协议可以在同一客户端与服务器之间使用多个 TCP 连接？
', '[''HTTP, FTP'', ''HTTP, TELNET'', ''FTP, SMTP'', ''HTTP, SMTP'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>HTTP</font></strong></font></strong>在非持久连接模式下，可能会为网页的不同对象建立多个 TCP 连接。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>FTP</font></strong></font></strong>使用两个独立的 TCP 连接：一个用于数据传输，另一个用于控制命令。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TELNET</font></strong></font></strong>和<strong><font color=''#2656b3''><strong><font color=''#2656b3''>SMTP</font></strong></font></strong>同时仅能使用一个 TCP 连接。', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5847');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5848, '408考研练习题——计算机网络——应用层第5题', '简单', '408考研练习题——计算机网络——应用层', '以下关于 HTTP Cookie 的陈述中，哪一项是不正确的？（ ）
', '[''Cookie 是一种可能危及互联网用户安全的代码片段'', ''Cookie 通过 HTTP 头进入用户的操作区域'', ''Cookie 具有过期日期和时间'', ''Cookie 可用于跟踪用户在特定网站的浏览模式'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
Cookie 并不是代码片段，它们通常是以键值对形式存在的字符串。', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5848');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5849, '408考研练习题——计算机网络——应用层第6题', '简单', '408考研练习题——计算机网络——应用层', '以下哪项是状态型应用层协议的示例？
(i) HTTP
(ii) FTP
(iii) TCP
(iv) POP3
', '[''仅 (i) 和 (ii)'', ''仅 (ii) 和 (iii)'', ''仅 (ii) 和 (iv)'', ''仅 (iv)'']', "['C']", 'C</font></strong>
在计算机领域，无状态协议是一种将每个请求视为独立事务的通信协议，该每个事务与任何先前请求无关，因此通信由独立的请求 - 响应对组成。无状态协议的示例包括（IP）和（HTTP）。更多参考资料：无状态与有状态协议。TCP 是有状态的，因为它在多次传输中维护连接信息，但 TCP 不是应用层协议。在给定的协议中，只有 FTP 和 POP3 是有状态的应用层协议。', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5849');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5850, '408考研练习题——计算机网络——应用层第7题', '简单', '408考研练习题——计算机网络——应用层', '以下哪种协议用于在不同计算机之间传输电子邮件消息？（ ）
', '[''TELNET'', ''FTP'', ''SNMP'', ''SMTP'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 简单邮件传输协议（Simple Mail Transfer Protocol，SMTP）是专门设计用于在网络中传输电子邮件的标准协议
- 其核心功能包括：

- 邮件服务器之间的邮件路由
- 邮件地址验证
- 邮件队列管理
- 相较于其他选项：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TELNET</font></strong></font></strong>是远程终端协议
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>FTP</font></strong></font></strong>是文件传输协议
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SNMP</font></strong></font></strong>是网络管理协议
- SMTP 通过 TCP 端口 25 建立连接，采用明文传输方式完成邮件发送过程', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5850');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5851, '408考研练习题——计算机网络——应用层第8题', '简单', '408考研练习题——计算机网络——应用层', '以下哪种协议用于电子邮件服务器以维护一个可以从任何机器访问的中心存储库？（ ）
', '[''POP3'', ''IMAP'', ''SMTP'', ''DMSP'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>IMAP</font></strong></font></strong>(Internet Message Access Protocol)：用于维护可从任何设备访问的邮件中心存储库
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>POP3</font></strong></font></strong>(Post Office Protocol Version 3)：通过端口 110 监听，支持客户端本地访问邮件服务，包含删除/保留两种工作模式
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>SMTP</font></strong></font></strong>(Simple Mail Transfer Protocol)：负责邮件传输的标准协议
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>DMSP</font></strong></font></strong>(Distributed Mail Service Protocol)：分布式邮件服务协议（非主流协议）因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5851');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5852, '408考研练习题——计算机网络——应用层第9题', '简单', '408考研练习题——计算机网络——应用层', '考虑以下与电子邮件相关的活动：
m1 : 从邮件客户端向邮件服务器发送电子邮件
m2 : 从邮箱下载邮件头并将邮件从服务器缓存到本地
m3 : 通过网页浏览器查看电子邮件
按照相同顺序，每个活动使用的应用层协议是（ ）
', '[''m1: HTTP m2: SMTP m3: POP'', ''m1: SMTP m2: FTP m3: HTTP'', ''m1: SMTP m2: POP m3: HTTP'', ''m1: POP m2: SMTP m3: IMAP'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- m1：从邮件客户端向邮件服务器发送电子邮件这是邮件提交（Submission）过程，一般使用SMTP（Simple Mail Transfer Protocol）。
- m2：从邮箱下载邮件头并将邮件从服务器缓存到本地这是从邮件服务器（邮箱）收取邮件到本地客户端的过程，常用POP3（Post Office Protocol）或 IMAP。但 POP3 会将邮件下载到本地并从服务器删除（或保留副本取决于配置），而 IMAP 更适合在服务器上管理邮件。题中描述“下载邮件头并将邮件从服务器缓存到本地”更接近 POP 的行为（虽然 IMAP 也可缓存，但典型协议匹配里，这种“下载到本地”是 POP 的典型用法）。
- m3：通过网页浏览器查看电子邮件这是 Webmail 服务，使用HTTP（或 HTTPS）。所以顺序是：
m1 → SMTP
m2 → POP
m3 → HTTP对应选项<strong><font color=''#2656b3''>C</font></strong>。<strong><font color=''#2656b3''>答案：C</font></strong>✅', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5852');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5853, '408考研练习题——计算机网络——应用层第10题', '简单', '408考研练习题——计算机网络——应用层', '互联网协议栈中应用层的协议数据单元（PDU）是（ ）
', '[''段（Segment）'', ''数据报（Datagram）'', ''消息（Message）'', ''帧（Frame）'']', "['C']", 'C</font></strong>
协议数据单元（PDU）是特定层级的通信单位：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第 1 层</font></strong></font></strong>（物理层）：比特/符号
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第 2 层</font></strong></font></strong>（数据链路层）：帧
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第 3 层</font></strong></font></strong>（网络层）：分组
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第 4 层</font></strong></font></strong>（传输层）：TCP 段 / UDP 数据报
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>第 5 层</font></strong></font></strong>（应用层）：消息/数据不同层级的 PDU 具有不同的命名规则。应用层直接面向用户数据传输，其 PDU 被称为"消息（Message）“或"数据（Data）"，与传输层的"段”、网络层的"分组"形成明确区分。', 9, 'Mogullzr', '2026-02-02 11:53:36', 9, NULL, '2026-02-02 11:53:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5853');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5854, '408考研练习题——计算机网络——应用层第11题', '简单', '408考研练习题——计算机网络——应用层', '应用程序层可以向下传递给 TCP 层的数据最大尺寸是多少？（ ）
', '[''任意大小'', ''$2^{16}$字节 - TCP 首部大小'', ''$2^{16}$字节'', ''$1500$字节'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>默认的 TCP 最大报文段长度（MSS）为 536 字节</font></strong></font></strong>
- 当主机希望自定义 MSS 值时：

- 该值通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 选项字段</font></strong></font></strong>指定
- 在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 三次握手</font></strong></font></strong>的初始`SYN`包中声明
- 特性说明：

- MSS 参数由<strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP 选项控制</font></strong></font></strong>
- 主机可在后续数据传输中<strong><font color=''#2656b3''><strong><font color=''#2656b3''>动态修改</font></strong></font></strong>该值
- 实际 MSS 受网络路径 MTU 限制（通常为 1500 字节）', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5854');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5855, '408考研练习题——计算机网络——应用层第12题', '简单', '408考研练习题——计算机网络——应用层', '以下哪项与会话层无关？（ ）
', '[''对话控制'', ''令牌管理'', ''传输信息的语义'', ''同步'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>会话层功能</font></strong></font></strong>：

- 对话控制
- 令牌管理
- 同步
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>表示层功能</font></strong></font></strong>：

- 传输信息的语义
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：  
传输信息的语义属于表示层而非会话层，因此选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5855');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5856, '408考研练习题——计算机网络——应用层第13题', '简单', '408考研练习题——计算机网络——应用层', '以下哪一项不是客户端 - 服务器应用程序？（ ）
', '[''网络聊天'', ''网页浏览'', ''电子邮件'', ''ping'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解析</font></strong></font></strong>：Ping 不是客户端 - 服务器应用程序。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原因</font></strong></font></strong>：Ping 是一种计算机网络管理工具，用于测试在互联网协议（IP）下主机的可达性。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>区别</font></strong></font></strong>：在 Ping 中，并没有提供服务的服务器，其本质是通过发送 ICMP 协议包检测网络连通性，而非依赖传统的客户端 - 服务器架构中的服务交互模型。', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5856');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5857, '408考研练习题——计算机网络——应用层第14题', '简单', '408考研练习题——计算机网络——应用层', '将以下协议与对应的 OSI 模型层级进行匹配：

```c
(P) SMTP  （1）应用层  
(Q) BGP   （2）传输层  
(R) TCP   （3）数据链路层  
(S) PPP   （4）网络层  
          （5）物理层
```
', '[''P – 2, Q – 1, R – 3, S – 5'', ''P – 1, Q – 4, R – 2, S – 3'', ''P – 1, Q – 4, R – 2, S – 5'', ''P – 2, Q – 4, R – 1, S – 3'']', "['B']", 'B</font></strong>
P) SMTP → 应用层（1）：邮件协议，应用层协议。
Q) BGP → 网络层（4）：路由协议，属于网络层。
R) TCP → 传输层（2）：典型的传输层协议。
S) PPP → 数据链路层（3）：点对点链路协议，工作在数据链路层。', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5857');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5858, '408考研练习题——计算机网络——应用层第15题', '简单', '408考研练习题——计算机网络——应用层', '在以下 OSI 协议层/子层与其功能的配对中，错误的是（ ）
', '[''网络层与路由'', ''数据链路层与比特同步'', ''传输层与端到端进程通信'', ''介质访问控制子层与信道共享'']', "['B']", 'B</font></strong>
- A 正确，网络层负责路由
- B 错误，比特同步由物理层提供
- C 正确，传输层提供端到端进程通信
- D 正确，数据链路层的介质访问控制子层提供信道共享', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5858');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5859, '408考研练习题——计算机网络——应用层第16题', '简单', '408考研练习题——计算机网络——应用层', '在以下网络体系结构中，安全套接字层（SSL）被使用在哪一层？（ ）
', '[''物理层'', ''会话层'', ''应用层'', ''表示层'']', "['D']", 'D</font></strong>
安全套接字层是用于传输层的网络协议，通过互联网在客户端和服务器之间提供安全连接。其协议归属存在两种模型差异：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>TCP/IP 参考模型</font></strong></font></strong>：被视为应用层协议
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>OSI 模型</font></strong></font></strong>：被视为表示层协议', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5859');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5860, '408考研练习题——计算机网络——应用层第17题', '简单', '408考研练习题——计算机网络——应用层', 'WPA 是什么？（ ）
', '[''有线保护访问'', ''Wi-Fi 保护访问'', ''有线进程访问'', ''Wi-Fi 进程访问'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- WPA 代表<strong><font color=''#2656b3''><strong><font color=''#2656b3''>Wi-Fi 保护访问</font></strong></font></strong>（Wi-Fi Protected Access）
- 它是为配备无线互联网连接的计算设备设计的安全标准
- 核心功能包括：
- 数据加密
- 用户身份验证
- 目的：为连接到 Wi-Fi 网络的计算设备提供安全保障', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5860');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5861, '408考研练习题——计算机网络——应用层第18题', '简单', '408考研练习题——计算机网络——应用层', '如果一个网络中有$n$个设备（节点），那么实现全连接网状拓扑和星型拓扑分别需要多少条电缆链路？（ ）
', '[''$n(n - 1)/2$,$n$'', ''$n$,$n - 1$'', ''$n - 1$,$n$'', ''$n - 1$,$n(n - 1)/2$'']', "['A']", 'A</font></strong>
- 全连接网状拓扑：可视为完全图结构，每个节点需与其余n−1个节点直连⇒链路总数 =2n(n−1)​
- 星型拓扑：所有节点通过中心节点互联⇒链路总数 =n数学验证：- 网状拓扑本质是组合数C(n,2)的应用
- 星型拓扑仅需n条边（含中心节点到各终端的连接）', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5861');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5862, '408考研练习题——计算机网络——应用层第19题', '简单', '408考研练习题——计算机网络——应用层', '以下关于透明网桥和路由器的描述中，哪一项是不正确的？（ ）
', '[''网桥和路由器都会选择性地转发数据包'', ''网桥使用 IP 地址，而路由器使用 MAC 地址'', ''网桥通过检查入站数据包来构建其路由表'', ''路由器可以连接局域网（LAN）和广域网（WAN）'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>网络设备解析</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>网桥功能</font></strong></font></strong>：用于连接两个或更多网络以形成更大的网络
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>工作层级</font></strong></font></strong>：仅工作于 OSI 模型的第二层（物理层 + 数据链路层）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>地址特性</font></strong></font></strong>：基于 MAC 地址进行数据帧转发，不涉及 IP 地址处理
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误原因</font></strong></font></strong>：选项 B 混淆了网桥与路由器的寻址机制，实际应为网桥使用 MAC 地址，路由器使用 IP 地址', 9, 'Mogullzr', '2026-02-02 11:53:37', 9, NULL, '2026-02-02 11:53:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1353', '5862');
