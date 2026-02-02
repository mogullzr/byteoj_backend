INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5022, '408考研练习题——数据结构——哈希表第1题', '简单', '408考研练习题——数据结构——哈希表', '使用哈希函数$h(k) = k  mod  10$和线性探测法，有多少种不同的关键字值插入顺序会导致下图所示的哈希表？（ ）
', '[''10'', ''20'', ''30'', ''40'']', "['C']", 'C</font></strong>

$$
不同序列总数 = 3! × 5 = 30
$$
', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5022');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5023, '408考研练习题——数据结构——哈希表第2题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个有 100 个槽位的哈希表，冲突通过链地址法解决。假设采用简单均匀哈希，那么在前 3 次插入操作后，第一个 3 个槽位都未被填充的概率是多少？（ ）
', '[''(97 × 97 × 97)/100³'', ''(99 × 98 × 97)/100³'', ''(97 × 96 × 95)/100³'', ''(97 × 96 × 95)/(3! × 100³)'']', "['A']", 'A</font></strong>
简单均匀哈希函数是一种理想化的哈希函数，它能将元素均匀地分布到哈希表的各个槽位中。此外，每个待哈希元素被分配到任意槽位的概率相等，且与其他元素无关。前 3 次插入后第一个 3 个槽位未被填充的概率为：- 第一个元素不放入前 3 个槽位的概率：10097​
- 第二个元素不放入前 3 个槽位的概率：10097​
- 第三个元素不放入前 3 个槽位的概率：10097​综合计算得：

$$
(\\frac{97}{100}) × (\\frac{97}{100}) × (\\frac{97}{100}) = \\frac{97^{3}}{100^{3}}
$$
', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5023');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5024, '408考研练习题——数据结构——哈希表第3题', '简单', '408考研练习题——数据结构——哈希表', '以下哪种整数哈希函数在将键值分布到编号为 0 到 9 的 10 个桶中时，对于 i 从 0 到 2020 的情况，能实现最均匀的分布？（ ）
', '[''h(i) = (12 ∗ i) mod 10'', ''h(i) = (11 ∗ i²) mod 10'', ''h(i) =i³ mod 10'', ''h(i) =i² mod 10'']', "['C']", 'C</font></strong>
由于使用了 mod 10 操作，因此结果的最后一位数字是关键。如果对 0 到 9 的所有数字进行立方运算，得到的结果如下：
| 数字 | 立方 | 立方的最后一位 |
| --- | --- | --- |
| 0 | 0 | 0 |
| 1 | 1 | 1 |
| 2 | 8 | 8 |
| 3 | 27 | 7 |
| 4 | 64 | 4 |
| 5 | 125 | 5 |
| 6 | 216 | 6 |
| 7 | 343 | 3 |
| 8 | 512 | 2 |
| 9 | 729 | 9 |
因此，从 0 到 2020 的所有数字会被均匀地分配到 10 个桶中。如果我们制作平方表，则无法获得均匀分布。在下表中，1、4、6 和 9 重复出现，因此这些桶会有更多条目，而 2、3、7 和 8 则为空。
| 数字 | 平方 | 平方的最后一位 |
| --- | --- | --- |
| 0 | 0 | 0 |
| 1 | 1 | 1 |
| 2 | 4 | 4 |
| 3 | 9 | 9 |
| 4 | 16 | 6 |
| 5 | 25 | 5 |
| 6 | 36 | 6 |
| 7 | 49 | 9 |
| 8 | 64 | 4 |
| 9 | 81 | 1 |
另一种方法是利用幂次循环的概念：- (a) (0,1,4,9,6,5,6,9,4,1,0) 循环
- (b) (0,1,8,7,4,5,6,3,2,9) 循环
- (c) (0,1,4,9,6,5,6,9,4,1,0) 循环
- (d) (0,2,4,6,8) 循环因此，只有 h(i) =i³ mod 10 涵盖了 0 到 9 的所有数字。故选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5024');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5025, '408考研练习题——数据结构——哈希表第4题', '简单', '408考研练习题——数据结构——哈希表', '以下哪项陈述是正确的？（ ）
', '[''仅 I'', ''仅 II 和 III'', ''仅 I 和 III'', ''仅 II'']', "['C']", 'C</font></strong>
哈希函数被定义为任何可以将任意大小的数据映射到固定大小数据的函数。哈希函数返回的值称为哈希值、哈希码、摘要或简称为哈希：
<strong><font color=''#2656b3''>陈述 1 正确</font></strong>是的，哈希函数确实可能将不同的值映射到内存中的同一位置，这就是冲突发生的原因，我们有不同技术来处理这个问题：
<strong><font color=''#2656b3''>陈述 3 正确</font></strong>示例验证：- 假设哈希函数`h(x) = x % 3`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>验证陈述 1</font></strong></font></strong>：无论 ‘x’ 的值是什么，h(x) 都会生成一个固定的映射位置（0, 1, 或 2）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>验证陈述 3</font></strong></font></strong>：当 x=4 或 x=7 时，h(x)=1，在两种情况下都发生了冲突结论：- 陈述 I 和 III 成立
- 陈述 II 错误（哈希函数始终输出固定长度结果）', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5025');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5026, '408考研练习题——数据结构——哈希表第5题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个均匀分布键值的哈希函数。哈希表大小为 20。在插入多少个键后，新键发生冲突的概率将超过 0.5？（ ）
', '[''5'', ''6'', ''7'', ''10'']', "['D']", 'D</font></strong>
每个键发生冲突的概率是$\\frac{1}{20}$（因为总共有 20 个存储位置，且每个键只能映射到一个位置）。设插入$x$个键后概率变为$\\frac{1}{2}$，则有：

$$
\\frac{1}{20} ⋅ x = \\frac{1}{2} ⇒ x = 10
$$
因此选项 (D) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5026');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5027, '408考研练习题——数据结构——哈希表第6题', '简单', '408考研练习题——数据结构——哈希表', '当将 n 个键哈希到大小为 m 的哈希表中时，发生冲突的概率是多少？假设哈希函数产生均匀随机分布。（ ）
', '[''O(1/n)'', ''O(n/m)'', ''O(logn)'', ''O(m/n)'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键因素</font></strong></font></strong>：冲突概率主要由两个因素决定：

- 被哈希项的数量n
- 哈希表的大小m
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>变化趋势</font></strong></font></strong>：

- 当n增加时，冲突概率<strong><font color=''#2656b3''><strong><font color=''#2656b3''>上升</font></strong></font></strong>
- 当m增大时，冲突概率<strong><font color=''#2656b3''><strong><font color=''#2656b3''>下降</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数学表达式</font></strong></font></strong>：因此，冲突概率可估计为O(mn​)', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5027');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5028, '408考研练习题——数据结构——哈希表第7题', '简单', '408考研练习题——数据结构——哈希表', '将字符串 K R P C S N Y T J M 的字符插入大小为 10 的哈希表中。使用哈希函数`h(x) = (ord(x) – ord("A") + 1) mod 10`。如果使用线性探测解决冲突，则以下插入会导致冲突（ ）：
', '[''Y'', ''C'', ''M'', ''P'']', "['C']", 'C</font></strong>
(a) 大小为 10 的哈希表索引范围是 0 到 9。哈希函数为 h(x) = ((ord(x) - ord(A) + 1)) mod 10。对于字符串 K R P C S N Y T J M：- K 插入索引：(11-1+1) mod 10 = 1
- R 插入索引：(18-1+1) mod 10 = 8
- P 插入索引：(16-1+1) mod 10 = 6
- C 插入索引：(3-1+1) mod 10 = 3
- S 插入索引：(19-1+1) mod 10 = 9
- N 插入索引：(14-1+1) mod 10 = 4
- Y 插入索引：(25-1+1) mod 10 = 5
- T 插入索引：(20-1+1) mod 10 = 0
- J 插入索引：(10-1+1) mod 10 = 0 // 第一次冲突发生
- M 插入索引：(13-1+1) mod 10 = 3 // 第二次冲突发生仅 J 和 M 导致冲突。(b) 最终哈希表如下：
```c
0 T  
1 K  
2 J  
3 C  
4 N  
5 Y  
6 P  
7 M  
8 R  
9 S
```
', 9, 'Mogullzr', '2026-02-02 11:51:07', 9, NULL, '2026-02-02 11:51:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5028');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5029, '408考研练习题——数据结构——哈希表第8题', '简单', '408考研练习题——数据结构——哈希表', '哪种搜索技术在数据查找时的时间复杂度为 O(1)？（ ）
', '[''二分查找'', ''线性查找'', ''AVL 树查找'', ''哈希'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
哈希表通过键值映射实现常数级时间复杂度$O(1)$的查找操作。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>二分查找</font></strong></font></strong>需在有序数组中进行，时间复杂度为O(logn)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>线性查找</font></strong></font></strong>需遍历数据，时间复杂度为O(n)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>AVL 树查找</font></strong></font></strong>基于平衡二叉树结构，时间复杂度为O(logn)  
哈希函数的理想情况下能直接定位存储位置，因此具有最优的查找效率。', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5029');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5030, '408考研练习题——数据结构——哈希表第9题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个大小为$m = 10000$的哈希表，其哈希函数为$h(K) = ⌊m(K ⋅ A  mod  1)⌋$，其中$A = \\frac{\\sqrt{5}-1}{2}$。键值 123456 被映射到位置（ ）。
', '[''46'', ''41'', ''43'', ''48'']', "['B']", 'B</font></strong>
- 给定的哈希函数：h(K) = floor(m (K*A mod 1))
- 其中A=25​−1​
- 计算过程：  
h(123456)​=⌊10000×(123456×25​−1​mod1)⌋=⌊10000×(76300.004115mod1)⌋=⌊10000×0.004115⌋=⌊41.15⌋=41​
- 因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5030');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5031, '408考研练习题——数据结构——哈希表第10题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个包含 13 个元素的哈希表，其整数键使用哈希函数 f(key) = key mod 13。假设采用线性探测法（linear probing）解决冲突，当按顺序插入键值 661、182、24 和 103 时，键值 103 最终会被插入到哪个位置？（ ）
', '[''0'', ''1'', ''11'', ''12'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>661</font></strong></font></strong>的哈希值：`661 % 13 = 11`→ 插入位置 11
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>182</font></strong></font></strong>的哈希值：`182 % 13 = 0`→ 插入位置 0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>24</font></strong></font></strong>的哈希值：`24 % 13 = 11`（冲突）

- 线性探测找到下一个可用位置 12
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>103</font></strong></font></strong>的哈希值：`103 % 13 = 12`（冲突）

- 线性探测找到下一个可用位置 1
- 因此键值 103 最终插入位置为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1</font></strong></font></strong>，对应选项 (B)', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5031');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5032, '408考研练习题——数据结构——哈希表第11题', '简单', '408考研练习题——数据结构——哈希表', '使用以下密码函数对明文 ISRO 进行加密时，当密钥$k = 7$时会生成什么密文？[假设 ‘A’ = 0, ‘B’ = 1, …, ‘Z’ = 25]。


$$
C_{k}(M) = (kM + 13)  mod  26
$$
', '[''RJCH'', ''QIBG'', ''GQPM'', ''XPIN'']', "['A']", 'A</font></strong>
Ck(M) = (kM + 13) mod 26此处，‘A’ = 0, ‘B’ = 1, …….‘Z’ = 25- I 的加密过程

- 明文字符 I 对应数值 8
- 代入公式：7×8+13=69
- 取模运算：69mod26=17
- 数值 17 对应密文字符 R
- S 的加密过程

- 明文字符 S 对应数值 18
- 代入公式：7×18+13=139
- 取模运算：139mod26=9
- 数值 9 对应密文字符 J
- R 的加密过程

- 明文字符 R 对应数值 17
- 代入公式：7×17+13=132
- 取模运算：132mod26=2
- 数值 2 对应密文字符 C
- O 的加密过程

- 明文字符 O 对应数值 14
- 代入公式：7×14+13=105
- 取模运算：105mod26=7
- 数值 7 对应密文字符 H综上，明文 ISRO 加密后得到密文 RJCH，因此选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5032');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5033, '408考研练习题——数据结构——哈希表第12题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个大小为$m = 100$的哈希表，其哈希函数为$h(k) = ⌊m(kA  mod  1)⌋$。计算键$k = 123456$在哈希表中的存储位置（ ）。
', '[''77'', ''82'', ''88'', ''89'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
$$
h(k) = ⌊m(kA  mod  1)⌋
$$
', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5033');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5034, '408考研练习题——数据结构——哈希表第13题', '简单', '408考研练习题——数据结构——哈希表', '一个包含 10 个桶的哈希表，每个桶仅有一个槽位，如下图所示。符号 S1 到 S7 最初通过哈希函数和线性探测法插入。在搜索一个不存在的项时，最多需要进行多少次比较？（ ）
', '[''4'', ''5'', ''6'', ''3'']', "['B']", 'B</font></strong>
- 分析思路

- 情况一：当搜索从索引 0 开始时

- 比较顺序：索引 0 → 索引 1 → 索引 2
- 终止条件：在索引 2 发现空桶
- 总比较次数：3 次
- 情况二：当搜索从索引 8 开始时

- 比较顺序：索引 8 → 索引 9 → 索引 0 → 索引 1 → 索引 2
- 终止条件：在索引 2 发现空桶
- 总比较次数：5 次
- 结论根据线性探测法的特性，搜索路径需连续探测直到遇到空桶。上述两种情况中，从索引 8 开始的搜索路径最长，因此最大比较次数为5 次。正确答案为(B)。', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5034');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5035, '408考研练习题——数据结构——哈希表第14题', '简单', '408考研练习题——数据结构——哈希表', '一个哈希函数$h$定义为$h(key) = key  mod  7$，并使用线性探测法解决冲突。将键值 44、45、79、55、91、18、63 插入索引范围为 0 到 6 的哈希表中。键值 18 最终会存储在哪个位置？（ ）
', '[''3'', ''4'', ''5'', ''6'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>44</font></strong></font></strong>：h(44)=44mod7=2，直接存入位置 2
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>45</font></strong></font></strong>：h(45)=45mod7=3，直接存入位置 3
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>79</font></strong></font></strong>：h(79)=79mod7=2，位置 2 被占用 → 探测位置 3（被占用）→ 存入位置 4
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>55</font></strong></font></strong>：h(55)=55mod7=6，直接存入位置 6
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>91</font></strong></font></strong>：h(91)=91mod7=0，直接存入位置 0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>18</font></strong></font></strong>：h(18)=18mod7=4，位置 4 被占用 → 探测位置 5（空闲）→ 存入位置 5
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>63</font></strong></font></strong>：h(63)=63mod7=0，位置 0 被占用 → 探测位置 1（空闲）→ 存入位置 1最终哈希表状态：
| 索引 | 内容 |
| --- | --- |
| 0 | 91 |
| 1 | 63 |
| 2 | 44 |
| 3 | 45 |
| 4 | 79 |
| 5 | 18 |
| 6 | 55 |
因此键值 18 存储在位置<strong><font color=''#2656b3''>5</font></strong>，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5035');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5036, '408考研练习题——数据结构——哈希表第15题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个双重哈希方案，其中主哈希函数为$h_{1}(k) = k%23$，次哈希函数为$h_{2}(k) = 1 + (k%19)$。假设表的大小为$23$。那么对于键值$k = 90$，在探测序列中第$1$次探测（假设探测序列从第$0$次探测开始）返回的地址是（ ）。
', '[''13'', ''15'', ''21'', ''23'']', "['A']", 'A</font></strong>

$$
地址 = (h_{1}(k) + i × h_{2}(k))  mod  (表的大小)
$$
', 9, 'Mogullzr', '2026-02-02 11:51:08', 9, NULL, '2026-02-02 11:51:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5036');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5037, '408考研练习题——数据结构——哈希表第16题', '简单', '408考研练习题——数据结构——哈希表', '考虑一种针对 4 位整数键的动态哈希方法：
(A) 主哈希表大小为 4。
(B) 使用键的 2 个最低有效位来索引主哈希表。
(C) 初始时，主哈希表条目为空。
(D) 随后，当更多键被哈希到表中时，通过将对应于主哈希表条目的所有键组织成按需增长的二叉树来解决冲突。
(E) 首先，使用第 3 个最低有效位将键划分为左子树和右子树。
(F) 为了进一步解决冲突，每个二叉树节点根据第 4 个最低有效位再细分为左子树和右子树。
(G) 只有在需要时（即发生冲突时）才进行拆分。
考虑以下哈希表状态。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/d0f163fe1e4b4d5b9aecd91a184fc939.svg)
下列哪个键插入序列可能导致上述哈希表状态（假设键以十进制表示）？（ ）
', '[''5,9,4,13,10,7'', ''9,5,10,6,7,1'', ''10,9,6,7,5,13'', ''9,5,13,6,10,14'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (A)</font></strong></font></strong>中的序列不可能，因为包含键`4 (= 0100)`，但最终哈希表中没有该键。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (B)</font></strong></font></strong>中的序列不可能，因为键`1 (=0001)`和`9 (=1001)`在基于第三最低有效位的 0 侧解决冲突的方式与最终结果不符。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (C)</font></strong></font></strong>是正确的序列，可得到给定的最终哈希表。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 (D)</font></strong></font></strong>中的序列不可能，因为在第三列中包含键`6 (=0110)`、`10 (=1010)`和`14 (=1110)`，而这些键在最终哈希表中并未出现。', 9, 'Mogullzr', '2026-02-02 11:51:10', 9, NULL, '2026-02-02 11:51:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5037');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5038, '408考研练习题——数据结构——哈希表第17题', '简单', '408考研练习题——数据结构——哈希表', '考虑形式为

$$
h(k, i) = (h_{1}(k) + i⋅ h_{2}(k)) mod m
$$
的双重哈希，其中


$$
h_{1}(k) = k mod m
$$


$$
h_{2}(k) = 1 + (k mod n)
$$
且$n = m - 1$，$m = 701$。当$k = 123456$时，第一次和第二次探测在槽位上的差值是多少？（ ）
', '[''255'', ''256'', ''257'', ''258'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>计算步骤：</font></strong>
$$
h_{1}(123456) = 123456  mod  701 = 80
$$
<strong><font color=''#2656b3''>结论：</font></strong>正确答案为选项 C。', 9, 'Mogullzr', '2026-02-02 11:51:10', 9, NULL, '2026-02-02 11:51:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5038');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5039, '408考研练习题——数据结构——哈希表第18题', '简单', '408考研练习题——数据结构——哈希表', '链式哈希表（外部哈希）相较于开放寻址方案的优势是（ ）
', '[''搜索操作的最坏情况复杂度更低'', ''占用空间更少'', ''删除操作更容易'', ''以上都不是'']', "['C']", 'C</font></strong>
- 在开放寻址方案中，当尝试删除一个元素时，如果在查找过程中遇到空桶（即未被占用的位置），可能会错误地认为该元素不存在，从而导致无法正确删除。
- 链式哈希表（外部哈希）通过将所有具有相同哈希值的元素存储在链表中，避免了这一问题，使得删除操作更加直接和可靠。
- 因此，选项 C 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:10', 9, NULL, '2026-02-02 11:51:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5039');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5040, '408考研练习题——数据结构——哈希表第19题', '简单', '408考研练习题——数据结构——哈希表', '给定一个哈希表 T，其包含 25 个槽位并存储了 2000 个元素，则 T 的负载因子 α 为（ ）
', '[''80'', ''0.0125'', ''8000'', ''1.25'']', "['A']", 'A</font></strong>
负载因子 = 元素数量 / 表槽位数量 =$\\frac{2000}{25} = 80$。因此选项 (A) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:10', 9, NULL, '2026-02-02 11:51:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5040');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5041, '408考研练习题——数据结构——哈希表第20题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个大小为 7 的哈希表，起始索引为 0，哈希函数为 (7x + 3) mod 4。假设哈希表初始为空，使用闭散列法将序列 1, 3, 8, 10 插入表中后，下列哪一项是表中的内容？（此处“**”表示表中的空位置）
', '[''3, 10, 1, 8, ** , ** , **'', ''1, 3, 8, 10, ** , ** , **'', ''1, ** , 3, ** , 8, ** , 10'', ''3, 10, ** , ** , 8, ** , **'']', "['A']", 'A</font></strong>
- 键值集合：{1, 3, 8, 10}
- 哈希函数：h(x) = (7*x + 3) mod 4<strong><font color=''#2656b3''>计算过程</font></strong>：- h(1) = (7×1 + 3) mod 4 = 10 mod 4 = 2
- h(3) = (7×3 + 3) mod 4 = 24 mod 4 = 0
- h(8) = (7×8 + 3) mod 4 = 59 mod 4 = 3
- h(10)= (7×10 + 3) mod 4 = 73 mod 4 = 1<strong><font color=''#2656b3''>哈希表构建</font></strong>：
| 索引 | 内容 |
| --- | --- |
| 0 | 3 |
| 1 | 10 |
| 2 | 1 |
| 3 | 8 |
| 4 |  |
| 5 |  |
| 6 |  |
因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:10', 9, NULL, '2026-02-02 11:51:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5041');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5042, '408考研练习题——数据结构——哈希表第21题', '简单', '408考研练习题——数据结构——哈希表', '将键值 12、18、13、2、3、23、5 和 15 按顺序插入一个初始为空的长度为 10 的哈希表中。该哈希表使用开放寻址法（Open Addressing）进行冲突处理，哈希函数为 h(k) = k mod 10，且采用线性探测（Linear Probing）。最终得到的哈希表是哪一个？（ ）

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/6ff982615cf04030abb2e1ebc0d510f9.svg)
', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['C']", 'C</font></strong>
开放寻址法（Open Addressing）是一种哈希表冲突解决方法。当发生哈希冲突时，通过在数组中按一定规则探测其他位置（称为探测序列），直到找到目标记录或空闲槽位。常见的探测方式包括：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>线性探测</font></strong></font></strong>：每次以固定步长（通常为 1）进行探测。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>二次探测</font></strong></font></strong>：探测间隔随线性增长（索引由二次函数描述）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>双重哈希</font></strong></font></strong>：每个记录的探测间隔由另一个哈希函数计算得出。本题中，所有键值均通过 h(k) = k mod 10 计算初始位置，并在线性探测下依次解决冲突，最终形成的哈希表对应选项 C。', 9, 'Mogullzr', '2026-02-02 11:51:12', 9, NULL, '2026-02-02 11:51:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5042');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5043, '408考研练习题——数据结构——哈希表第22题', '简单', '408考研练习题——数据结构——哈希表', '一个长度为 10 的哈希表使用开放寻址法，其哈希函数为 h(k) = k mod 10，并采用线性探测。在向空表中插入 6 个值后，表的状态如下所示。以下哪个选项给出了可能的键值插入顺序？

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/e0ef6ac256b846d5ad52dbab3a7a5d5a.svg)
', '[''46, 42, 34, 52, 23, 33'', ''34, 42, 23, 52, 33, 46'', ''46, 34, 42, 23, 52, 33'', ''42, 46, 33, 23, 34, 52'']', "['C']", 'C</font></strong>
此处使用哈希函数 h(k)=k mod 10 和线性探测。仔细分析所有选项：
| 索引 | A | B | C | D |
| --- | --- | --- | --- | --- |
| 0 |  |  |  |  |
| 1 |  |  |  |  |
| 2 | 42 | 42 | 42 | 42 |
| 3 | 52 | 23 | 23 | 33 |
| 4 | 34 | 34 | 34 | 23 |
| 5 | 23 | 52 | 52 | 34 |
| 6 | 46 | 33 | 46 | 46 |
| 7 | 33 | 46 | 33 | 52 |
| 8 |  |  |  |  |
| 9 |  |  |  |  |
分析所有选项后，(C) 是正确的可能插入顺序：- (A)不成立，因为序列中52出现在23之前。

- 根据线性探测规则，`23`的哈希位置为 3（23 mod 10 = 3），而`52`的哈希位置为 2（52 mod 10 = 2）。若先插入`52`，则`23`在探测时会占据位置 3，导致后续插入冲突逻辑不一致。
- (B)不成立，因为序列中33出现在46之前。

- `33`的哈希位置为 3（33 mod 10 = 3），而`46`的哈希位置为 6（46 mod 10 = 6）。若先插入`33`，则`46`插入时应直接放置于位置 6，但实际表中`46`位于位置 6，与插入顺序矛盾。
- (C)成立，因为：

- `42`（42 mod 10 = 2）→ 直接插入位置 2
- `34`（34 mod 10 = 4）→ 直接插入位置 4
- `42`已存在，`23`（23 mod 10 = 3）→ 插入位置 3
- `52`（52 mod 10 = 2）→ 冲突后探测至位置 5
- `33`（33 mod 10 = 3）→ 冲突后探测至位置 7
- 所有插入操作均符合线性探测规则。
- (D)不成立，因为序列中33出现在23之前。

- `33`插入时会占据位置 3，导致`23`插入时需从位置 3 开始探测，最终插入位置 4 或 5，但实际表中`23`位于位置 4，与插入顺序不符。', 9, 'Mogullzr', '2026-02-02 11:51:13', 9, NULL, '2026-02-02 11:51:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5043');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5044, '408考研练习题——数据结构——哈希表第23题', '简单', '408考研练习题——数据结构——哈希表', '假设我们有$n$个关键字、$m$个哈希表槽位，以及两个简单且均匀的哈希函数$h_{1}$和$h_{2}$。进一步假设我们的哈希方案对奇数关键字使用$h_{1}$，对偶数关键字使用$h_{2}$。那么每个槽位中关键字的期望数量是多少？（ ）
', '[''$\\\\frac{n}{2m}$'', ''$\\\\frac{n}{m}$'', ''$\\\\frac{m}{n}$'', ''$\\\\frac{2n}{m}$'']', "['B']", 'B</font></strong>
对于均匀哈希函数而言，无论使用多少个哈希函数，每个槽位中关键字的期望数量始终等于<strong><font color=''#2656b3''>关键字总数 ÷ 槽位总数</font></strong>。
具体分析如下：- 哈希函数的均匀性保证了每个关键字被分配到任意槽位的概率相等
- 即使采用多个哈希函数（如本题的h1​和h2​），只要它们都满足均匀分布特性
- 最终每个槽位的期望负载仍为mn​  
因此，选项 B 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:13', 9, NULL, '2026-02-02 11:51:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5044');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5045, '408考研练习题——数据结构——哈希表第24题', '简单', '408考研练习题——数据结构——哈希表', '以下哪项是哈希的组成部分？（ ）
', '[''键'', ''哈希函数'', ''哈希表'', ''以上所有选项'']', "['D']", 'D</font></strong>
哈希的组成部分主要有三个：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>键（Key）</font></strong></font></strong>：键可以是字符串或整数等任何输入到哈希函数中的内容，该技术用于确定数据结构中存储项目的索引或位置。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>哈希函数（Hash Function）</font></strong></font></strong>：哈希函数接收输入键，并返回一个称为哈希表的数组中元素的索引。该索引称为哈希索引。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>哈希表（Hash Table）</font></strong></font></strong>：哈希表是一种使用哈希函数将键映射到值的数据结构。它以关联方式在数组中存储数据，每个数据值都有其唯一的索引。  
因此，选项 (D) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:13', 9, NULL, '2026-02-02 11:51:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5045');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5046, '408考研练习题——数据结构——哈希表第25题', '简单', '408考研练习题——数据结构——哈希表', '以下哪项是一种简单的哈希方法，其中数据直接映射到哈希表中的索引（ ）。
', '[''碰撞'', ''索引映射'', ''函数映射'', ''哈希函数'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>索引映射</font></strong>（也称为平凡哈希）是一种简单的哈希方法，其中数据直接映射到哈希表中的索引。
此方法中使用的哈希函数通常是恒等函数，该函数将输入数据映射到其自身。
在这种情况下，数据的键被用作哈希表中的索引，值存储在该索引处。
因此选项 B 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:13', 9, NULL, '2026-02-02 11:51:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5046');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5047, '408考研练习题——数据结构——哈希表第26题', '简单', '408考研练习题——数据结构——哈希表', '线性探测法的应用包括（ ）：
', '[''数据库'', ''缓存'', ''编译器设计'', ''以上所有'']', "['D']", 'D</font></strong>
线性探测法是一种哈希冲突处理技术，当发生冲突时，算法会在哈希表中寻找下一个可用的存储位置。其应用包括：- 缓存线性探测法可用于缓存系统，将频繁访问的数据存储在内存中。

- 当发生缓存未命中时，数据可通过线性探测法加载到缓存中
- 当发生冲突时，使用缓存中的下一个可用位置存储数据
- 数据库线性探测法可用于数据库中存储记录及其关联键值。

- 当发生冲突时，通过线性探测法查找下一个可用位置存储记录
- 编译器设计线性探测法可用于实现：
- 符号表管理
- 错误恢复机制
- 语法分析过程因此选项 (D) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:13', 9, NULL, '2026-02-02 11:51:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5047');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5048, '408考研练习题——数据结构——哈希表第27题', '简单', '408考研练习题——数据结构——哈希表', '处理冲突的方法有哪些？（ ）
', '[''独立链接法'', ''开放链接法'', ''上述两者'', ''以上都不是'']', "['C']", 'C</font></strong>
- 主要的冲突处理方法有两种：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>独立链接法</font></strong></font></strong>（Separate Chaining）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>开放寻址法</font></strong></font></strong>（Open Addressing）
- 因此<strong><font color=''#2656b3''><strong><font color=''#2656b3''>选项 C</font></strong></font></strong>是正确答案', 9, 'Mogullzr', '2026-02-02 11:51:14', 9, NULL, '2026-02-02 11:51:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5048');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5049, '408考研练习题——数据结构——哈希表第28题', '简单', '408考研练习题——数据结构——哈希表', '考虑一个大小为七、起始索引为零的哈希表，其哈希函数为 (3x + 4) mod 7。假设哈希表初始为空，使用闭散列（closed hashing）插入序列 1, 3, 8, 10 后，表中内容是以下哪一项？注意`_`表示表中的空位置。（ ）
', '[''`8, _, _, _, _, _, 10`'', ''`1, 8, 10, _, _, _, 3`'', ''`1, _, _, _, _, _,3`'', ''`1, 10, 8, _, _, _, 3`'']', "['B']", 'B</font></strong>
让我们将值 1, 3, 8, 10 插入大小为 7 的哈希表中：初始时哈希表为空：
| 索引 | 内容 |
| --- | --- |
| 0 | - |
| 1 | - |
| 2 | - |
| 3 | - |
| 4 | - |
| 5 | - |
| 6 | - |
<strong><font color=''#2656b3''>插入 1</font></strong>- 哈希计算：(3×1 + 4) mod 7 = 7 mod 7 = 0
- 直接放入索引 0
| 索引 | 内容 |
| --- | --- |
| 0 | 1 |
| 1 | - |
| 2 | - |
| 3 | - |
| 4 | - |
| 5 | - |
| 6 | - |
<strong><font color=''#2656b3''>插入 3</font></strong>- 哈希计算：(3×3 + 4) mod 7 = 13 mod 7 = 6
- 直接放入索引 6
| 索引 | 内容 |
| --- | --- |
| 0 | 1 |
| 1 | - |
| 2 | - |
| 3 | - |
| 4 | - |
| 5 | - |
| 6 | 3 |
<strong><font color=''#2656b3''>插入 8</font></strong>- 哈希计算：(3×8 + 4) mod 7 = 28 mod 7 = 0
- 索引 0 被占用，使用线性探测找到下一个可用位置 1
| 索引 | 内容 |
| --- | --- |
| 0 | 1 |
| 1 | 8 |
| 2 | - |
| 3 | - |
| 4 | - |
| 5 | - |
| 6 | 3 |
<strong><font color=''#2656b3''>插入 10</font></strong>- 哈希计算：(3×10 + 4) mod 7 = 34 mod 7 = 6
- 索引 6 被占用，使用线性探测找到下一个可用位置 2
| 索引 | 内容 |
| --- | --- |
| 0 | 1 |
| 1 | 8 |
| 2 | 10 |
| 3 | - |
| 4 | - |
| 5 | - |
| 6 | 3 |
最终哈希表状态为：`1, 8, 10, _, _, _, 3`', 9, 'Mogullzr', '2026-02-02 11:51:14', 9, NULL, '2026-02-02 11:51:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1338', '5049');
