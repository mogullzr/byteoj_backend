INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5050, '408考研练习题——数据结构——B树第1题', '简单', '408考研练习题——数据结构——B树', '考虑一个 B+ 树，其中每个节点的最大键数为 5。任何非根节点中最小的键数是多少？( )
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最大子节点数</font></strong></font></strong>：每个节点最多有5+1=6个子节点（键数+1）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>B+ 树性质</font></strong></font></strong>：非根节点的最小子节点数为⌈26​⌉=3。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最小键数计算</font></strong></font></strong>：子节点数减 1 即为键数，因此最小键数为3−1=2。', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5050');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5051, '408考研练习题——数据结构——B树第2题', '简单', '408考研练习题——数据结构——B树', '数据库中更倾向于使用 B+ 树而不是二叉树，因为（ ）
', '[''磁盘容量大于内存容量'', ''磁盘访问速度远慢于内存访问'', ''磁盘数据传输速率远小于内存数据传输速率'', ''磁盘比内存更可靠'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 磁盘访问速度较慢，因此减少 I/O 操作次数至关重要
- B+ 树通过高扇出度（通常 100 或更多）显著降低树高度
- 相比二叉查找树，B+ 树能以更少层级完成查找
- 高扇出特性使每次磁盘访问能检索更多子节点信息', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5051');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5052, '408考研练习题——数据结构——B树第3题', '简单', '408考研练习题——数据结构——B树', '从空的 4 阶 B 树开始，通过连续插入 10 个元素，最多可能发生多少次节点分裂操作？（ ）
', '[''3'', ''4'', ''5'', ''6'']', "['C']", 'C</font></strong>
- 插入第 3 个键初始状态：10 20 30
- 插入第 4 个键（第一次分裂）插入40后触发分裂：30  
 / \\  
10*20  40
- 插入第 5 个键（无分裂）插入5至左子节点：30  
 / \\  
5*10*20  40
- 插入第 6 个键（第二次分裂）插入8触发分裂：8*30  
 / | \\  
5  10*20  40
- 插入第 7 个键（无分裂）插入15至右子节点：8*30  
 / | \\  
5  10*15*20  40
- 插入第 8 个键（第三次分裂）插入12触发分裂：8*12*30  
 / / \\ \\  
5  10  15*20  40
- 插入第 9 个键（无分裂）插入17至右子节点：8*12*30  
 / / \\ \\  
5  10  15*17*20  40
- 插入第 10 个键（第四次和第五次分裂）插入13导致两次分裂：12  
   / \\  
  8   15*30  
 / \\ / | \\  
5  10 13 17*20  40<strong><font color=''#2656b3''>结论</font></strong>：最大分裂次数为<strong><font color=''#2656b3''>5 次</font></strong>。
<strong><font color=''#2656b3''>关键点</font></strong>：- 4 阶 B 树节点最多容纳 3 个键，满载后插入新键会触发分裂
- 通过优先向有空间的节点插入，可最大化分裂次数
- 最终分裂路径包含 5 次节点分裂操作', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5052');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5053, '408考研练习题——数据结构——B树第4题', '简单', '408考研练习题——数据结构——B树', 'B+ 树中叶节点的阶数是指其最多能容纳的 (value, 数据记录指针) 对的数量。已知磁盘块大小为 1K 字节，数据记录指针长度为 7 字节，值域长度为 9 字节，磁盘块指针长度为 6 字节，问该叶节点的阶数是多少？
', '[''63'', ''64'', ''67'', ''68'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 磁盘块大小 = 1024 字节
- 数据记录指针大小r=7字节
- 值域大小V=9字节
- 磁盘块指针p=6字节设叶节点的阶数为$m$。B+ 树的叶节点最多包含$m$个记录指针、$m$个值和一个磁盘块指针。
根据空间约束条件：

$$
r ⋅ m + V ⋅ m + p ≤ 1024
$$

$$
(7 + 9)m + 6 ≤ 1024
$$

$$
16m + 6 ≤ 1024
$$

$$
16m ≤ 1018
$$

$$
m ≤ 63.625
$$
因此，最大整数$m = 63$，对应选项<strong><font color=''#2656b3''>A</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5053');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5054, '408考研练习题——数据结构——B树第5题', '简单', '408考研练习题——数据结构——B树', '要在关系 STUDENT 的 Name 属性上建立一个 B+ 树索引。假设所有学生姓名长度为 8 字节，磁盘块大小为 512 字节，索引指针大小为 4 字节。在这种情况下，B+ 树的最佳阶数（即每个节点的指针数量）应选择什么？
', '[''16'', ''42'', ''43'', ''44'']', "['C']", 'C</font></strong>
- 单条记录大小：8字节+4字节=12字节
- 设阶数为N
- 每个磁盘块存储的索引项数量满足：  
(N−1)×12字节+4字节≤512字节
- 化简方程：  
12N−8=512⟹12N=520⟹N=12520​≈43.33
- 取整数部分作为最大可行解，故最佳阶数为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>43</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5054');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5055, '408考研练习题——数据结构——B树第6题', '简单', '408考研练习题——数据结构——B树', '考虑一个 B+ 树，其中搜索键长度为 12 字节，块大小为 1024 字节，记录指针长度为 10 字节，块指针长度为 8 字节。该树中每个非叶节点最多可容纳的键数量是（ ）：
', '[''49'', ''50'', ''51'', ''52'']', "['B']", 'B</font></strong>
设 B+ 树的阶数为$m$非叶节点存储结构需满足：
$$
m × 8 + (m - 1) × 12 ≤ 1024
$$
推导过程：- 块指针总占用：m×8
- 搜索键总占用：(m−1)×12
- 总占用不超过块大小 1024 字节解得：
$$
m ≤ 51
$$
由于非叶节点的键数量为$m - 1$，故最大键数量为 50。', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5055');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5056, '408考研练习题——数据结构——B树第7题', '简单', '408考研练习题——数据结构——B树', '用于大型数据库表索引的 B 树共有四层（包括根节点）。如果在此索引中插入一个新键，则在此过程中最多可能创建的新节点数为（ ）：
', '[''5'', ''4'', ''3'', ''2'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>节点特性</font></strong></font></strong>：一个节点的子节点数量等于其包含的键数加 1。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>树高变化</font></strong></font></strong>：给定的树有 4 层，若插入一个新键导致树的高度增加一层，则在此过程中最多可能创建的新节点数为 5 个。当插入新键导致 B 树高度增加时，分裂会从叶子节点开始，逐层向上进行。对于 4 层的 B 树：- 叶子节点分裂 → 新增 1 个节点；
- 第二层节点分裂 → 新增 1 个节点；
- 第三层节点分裂 → 新增 1 个节点；
- 根节点分裂 → 新增 2 个节点（原根节点拆分为两个子节点，新增一个根节点）。总计新增 1 + 1 + 1 + 2 =<strong><font color=''#2656b3''>5 个新节点</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5056');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5057, '408考研练习题——数据结构——B树第8题', '简单', '408考研练习题——数据结构——B树', '以下关于 B/B+ 树的说法中，哪一项是错误的？（ ）
', '[''B/B+ 树向上增长，而二叉搜索树向下增长。'', ''B/B+ 树的查找操作时间复杂度通常优于红黑树。'', ''B/B+ 树节点中的子指针数量始终等于其键的数量加一。'', ''B/B+ 树由一个称为最小度数的参数定义。该最小度数取决于硬盘块大小、键和地址的大小。'']', "['B']", 'B</font></strong>
两者的渐进时间复杂度都是<strong><font color=''#2656b3''>O(log n)</font></strong>级别。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>理论分析</font></strong></font></strong>：B/B+ 树与红黑树的查找时间复杂度均为 O(log n)，但 B/B+ 树的底数更大（取决于节点容量），因此实际层级更少。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>实际表现</font></strong></font></strong>：由于 B/B+ 树更适合磁盘 I/O 操作，其常数因子更优，但在内存数据结构中，红黑树的实现效率可能更高。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：选项 B 的表述存在误导性，因为“通常优于”忽略了具体应用场景的差异。', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5057');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5058, '408考研练习题——数据结构——B树第9题', '简单', '408考研练习题——数据结构——B树', '在 B+ 树索引中，内部节点的阶数是指其最多可以拥有的子节点数量。已知每个子指针占用 6 字节，搜索字段值占用 14 字节，块大小为 512 字节。问：该内部节点的阶数是多少？（ ）
', '[''24'', ''25'', ''26'', ''27'']', "['C']", 'C</font></strong>
键值大小 = 14 字节（已知）
子指针 = 6 字节（已知）<strong><font color=''#2656b3''>计算公式推导</font></strong>
B+ 树内部节点存储结构满足：

$$
块大小 ≥ (n - 1) × 键值大小 + n × 子指针大小
$$
代入已知数值：

$$
512 ≥ (n - 1) × 14 + n × 6
$$
展开并化简：

$$
512 ≥ 14n - 14 + 6n  ⇒  512 ≥ 20n - 14
$$

$$
20n ≤ 526  ⇒  n ≤ \\frac{526}{20} = 26.3
$$
<strong><font color=''#2656b3''>结论</font></strong>
由于阶数$n$必须为整数，向下取整后$n = 26$。因此选项<strong><font color=''#2656b3''>(C)</font></strong>正确。注：B+ 树内部节点的阶数定义为最大子节点数，而非键值对数量。本题通过容量约束反推最大可能的$n$值。', 9, 'Mogullzr', '2026-02-02 11:51:16', 9, NULL, '2026-02-02 11:51:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5058');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5059, '408考研练习题——数据结构——B树第10题', '简单', '408考研练习题——数据结构——B树', '用于大型数据库表索引的 B 树包含根节点在内共有四个层级。若在此索引中插入一个新的键，则在此过程中最多可能新创建的节点数为（ ）
', '[''5'', ''4'', ''1'', ''2'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 当 B 树需要分裂时，每个层级都可能产生一个新节点。
- 由于树有四层（根节点到叶节点），最坏情况下每层都会发生一次分裂，因此最多会创建<strong><font color=''#2656b3''><strong><font color=''#2656b3''>4 个新节点</font></strong></font></strong>。
- 但根节点分裂时会产生两个子节点，因此总共有<strong><font color=''#2656b3''><strong><font color=''#2656b3''>4 + 1 = 5 个新节点</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:17', 9, NULL, '2026-02-02 11:51:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5059');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5060, '408考研练习题——数据结构——B树第11题', '简单', '408考研练习题——数据结构——B树', '在一个包含 100 万条记录的文件中，若使用 B+ 树索引且树的阶数为 100，则最多需要访问多少个节点？（ ）
', '[''5'', ''4'', ''3'', ''10'']', "['B']", 'B</font></strong>
我们需要计算 B+ 树中最多需要访问的节点数，因此需考虑最小填充因子。已知记录数=100 万=10⁶（给定），B+ 树的阶数=每个节点的指针数=p=100（给定）。<strong><font color=''#2656b3''>计算步骤</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最小指针数</font></strong></font></strong>：每个节点的最小指针数=⌈p/2⌉=⌈100/2⌉=50
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最后一层节点数</font></strong></font></strong>：10⁶ / 50 = 2×10⁴
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>倒数第二层节点数</font></strong></font></strong>：2×10⁴ / 50 = 400
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>倒数第三层节点数</font></strong></font></strong>：400 / 50 = 8
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>倒数第四层节点数</font></strong></font></strong>：8 / 50 = 1<strong><font color=''#2656b3''>结论</font></strong>：
B+ 树的层级数=4，因此最多需要访问 4 个节点。选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:17', 9, NULL, '2026-02-02 11:51:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5060');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5061, '408考研练习题——数据结构——B树第12题', '简单', '408考研练习题——数据结构——B树', 'B+ 树被认为是平衡的，因为（ ）
', '[''从根节点到所有叶节点的路径长度都相等。'', ''从根节点到所有叶节点的路径长度最多相差 1。'', ''任意两个非叶兄弟节点的子节点数量最多相差 1。'', ''任意两个叶节点中记录的数量最多相差 1。'']', "['A']", 'A</font></strong>
在 B 树和 B+ 树中，所有叶节点的深度（根节点到叶节点的路径长度）是相同的。插入和删除操作会确保这一点。具体特性包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>严格平衡机制</font></strong></font></strong>：通过插入时从根节点增加高度（而非像 BST 从叶节点增加），删除时将根节点下移一级（不同于 BST 从底部收缩），从而保证所有叶节点深度一致。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>对比 BST 的差异</font></strong></font></strong>：

- BST 插入/删除可能导致树高变化集中在叶节点
- B+ 树通过自顶向下的高度调整维持全局平衡
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>实现保障</font></strong></font></strong>：这种设计使得查询性能具有确定性，所有查找路径长度相同，是数据库索引选择 B+ 树的核心原因。', 9, 'Mogullzr', '2026-02-02 11:51:17', 9, NULL, '2026-02-02 11:51:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5061');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5062, '408考研练习题——数据结构——B树第13题', '简单', '408考研练习题——数据结构——B树', '以下哪项是正确的？（ ）
', '[''B 树用于磁盘存储数据，B+ 树用于主存。'', ''范围查询在 B+ 树上更快。'', ''B 树用于主索引，B+ 树用于次级索引。'', ''B+ 树的高度与记录数量无关。'']', "['B']", 'B</font></strong>
逐一分析各个选项：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 A 错误</font></strong></font></strong>：B 树和 B+ 树都用于磁盘存储数据。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 B 正确</font></strong></font></strong>：B+ 树通过叶节点间的链式连接实现范围查询的线性遍历，而 B 树需遍历整棵树。数据库常用 B+ 树索引，因其叶节点链表特性显著提升范围查询效率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C 错误</font></strong></font></strong>：B 树与 B+ 树均可用于主索引和次级索引，二者并无此限制。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 D 错误</font></strong></font></strong>：树的高度由记录数量及节点最大键值数（树的阶数）共同决定。', 9, 'Mogullzr', '2026-02-02 11:51:17', 9, NULL, '2026-02-02 11:51:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '5062');
