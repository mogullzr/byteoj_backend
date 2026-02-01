INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3911, '2022年408考研真题第1题', '简单', '2022年408真题', '下列程序段的时间复杂度是（ ）。
```c
int sum = 0;
for (int i = 1; i < n; i *= 2)
    for (int j = 0; j < i; j++)
        sum++;
```
', '[''$O(log_{2}n)$'', ''$O(n)$'', ''$O(nlog_{2}n)$'', ''$O(n^{2})$'']', "['B']", 'B</font></strong>
当外层循环的变量$i$取不同值时，内层循环就执行多少次，因此总循环次数为
的所有取值之和。假设外层循环共执行$k$次，当$i = 1, 2, 4, 8, ⋯  , 2^{k-1}(2^{k-1} < n ≤ 2^{k})$时，内层循
环执行$i$次，因此总循环次数$T = 1 + 2 + 4 + 8 + ⋯ + 2^{k-1} = 2^{k} - 1$即$n < T < 2n$，时间复杂度为$O(n)$。', 9, 'Mogullzr', '2026-02-01 23:11:53', 9, NULL, '2026-02-01 23:11:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '3911');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3912, '2022年408考研真题第2题', '简单', '2022年408真题', '给定有限符号集 S, in 和 out 均为 S 中所有元素的任意排列。对于初始为空的栈 ST, 下列叙述中，正确的是（ ）。', '[''若 in 是 ST 的入栈序列，则不能判断 out 是否为其可能的出栈序列'', ''若 out 是 ST 的出栈序列，则不能判断 in 是否为其可能的入栈序列'', ''若 in 是 ST 的入栈序列，out 是对应 in 的出栈序列，则 in 与 out 一定不同'', ''若 in 是 ST 的入栈序列，out 是对应 in 的出栈序列，则 in 与 out 可能互为倒序'']', "['D']", 'D</font></strong>
参考入栈出栈序列，如果给定一个入栈序列，我们可以得到其所有可能的出栈序列，所以当给定一个出栈序列时，我们可以判断其是否正确，所以 A、B、C 均为错误选项。', 9, 'Mogullzr', '2026-02-01 23:11:53', 9, NULL, '2026-02-01 23:11:53', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3912');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3913, '2022年408考研真题第3题', '简单', '2022年408真题', '若结点 p 与 q 在二叉树 T 的中序遍历序列中相邻，且 p 在 q 之前，则下列 p 与 q 的关系中，不可能的是（ ）。I. q 是 p 的双亲II. q 是 p 的右孩子III. q 是 p 的右兄弟IV. q 是 p 的双亲的双亲', '[''仅 I'', ''仅 III'', ''仅 II、III'', ''仅 II、IV'']', "['B']", 'B</font></strong>
对于此类题，每种情况只需举出一个反例即可。如图 1 所示，q 是 p 的双亲，中
序遍历序列为 {p, q}，I 可能。如图 2 所示，q 是 p 的右孩子，中序遍历序列为 {p, q}，Ⅱ可能。
如图 4 所示，q 是 p 的双亲的双亲，中序遍历序列为 {x, p, q}，IV 可能。如图 3 所示，q 是 p
的右兄弟，F 是 q 和 p 的父结点，中序遍历要求先遍历左子树，再访问根结点，最后遍历右
子树，因此一定先访问 p，再访问 F，最后访问 q，p 和 q 不可能相邻出现，II 不可能。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/08cd57ce6e1e4f078be89c0a86d47db9.svg)
', 9, 'Mogullzr', '2026-02-01 23:11:54', 9, NULL, '2026-02-01 23:11:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1243', '3913');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3914, '2022年408考研真题第4题', '简单', '2022年408真题', '若三叉树 T 中有 244 个结点（叶结点的高度为 1），则 T 的高度至少是 ( )。', '[''8'', ''7'', ''6'', ''5'']', "['C']", 'C</font></strong>
高度为$n$的二叉树最多有$1 + 2 + ⋯ + 2^{n-1} = 2^{n} - 1$个结点，高度为$n$的三叉树最多有$f(n) = 1 + 3 + ⋯ + 3^{n-1} = \\frac{3^{n}-1}{3-1} - \\frac{3^{n}-1}{2}$。$f(5) = 121$$f(6) = 364$因为$121 < 244 < 364$，所以高度至少为 6。', 9, 'Mogullzr', '2026-02-01 23:11:55', 9, NULL, '2026-02-01 23:11:55', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1144', '3914');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3915, '2022年408考研真题第5题', '简单', '2022年408真题', '对任意给定的含 n (n > 2) 个字符的有限集 S, 用二叉树表示 S 的哈夫曼编码集和定长编码集，分别得到二叉树 T1 和 T2。下列叙述中，正确的是 ( )。', '[''T1 与 T2 的结点数相同'', ''T1 的高度大于 T2 的高度'', ''出现频次不同的字符在 T1 中处于不同的层'', ''出现频次不同的字符在 T2 中处于相同的层'']', "['D']", 'D</font></strong>
可以画一个简单的特例来证明。图 1 是满足条件的二叉树 T1，图 2 是满足条件的二叉树 T2，结点中有值表示这个结点是编码字符。T1 和 T2 的结点数不同，A 错误。T1 的高度等于 T2 的高度，B 错误。出现频次不同的字符在 T1 中也可能处于相同的层，C 错误。对于定长编码码集，所有字符一定都在 T2 中处于相同的层，而且都是叶子结点。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/abb23277cd2a46248fe50b5853943710.svg)
', 9, 'Mogullzr', '2026-02-01 23:11:55', 9, NULL, '2026-02-01 23:11:55', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1145', '3915');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3916, '2022年408考研真题第6题', '简单', '2022年408真题', '对于无向图 G=(V,E)，下列选项中，正确的是（  ）。', '[''当 |V| ＞|E| 时，G 一定是连通的'', ''当 |V| < |E| 时，G 一定是连通的'', ''当 |V| = |E|-1 时，G 一定是不连通的'', ''当 |V| > |E|+1 时，G 一定是不连通的'']', "['D']", 'D</font></strong>
注意，E 是图的边数，V 是图的顶点数。A 和 B 明显错误，如图 1 所示，|V| < |E|，但图 G 不连通；如图 2 所示，|V| > |E|，但图 G 不连通。如图 3 所示，在无向图中至少要有 |V| - 1 个顶点才可能连通，顶点数小于 |V| - 1 一定不可能连通，C 错误，D 正确。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/601d564c734f4d3aa09b050954c8451a.svg)
', 9, 'Mogullzr', '2026-02-01 23:11:56', 9, NULL, '2026-02-01 23:11:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1093', '3916');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3917, '2022年408考研真题第7题', '简单', '2022年408真题', '下图是一个有 10 个活动的 AOE 网，时间余量最大的活动是 ( )。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/32b12500eb9a47b7bfee1ca7080a9bb3.svg)
', '[''c'', ''g'', ''h'', ''j'']', "['B']", 'B</font></strong>
在 AOE 网中，活动的时间余量 = 结束顶点的最迟开始时间 - 开始顶点的最早开始时间 - 该活动的持续时间。根据关键路径算法得到下表：
| 结点编号 | 1 | 2 | 3 | 4 | 5 | 6 |
| --- | --- | --- | --- | --- | --- | --- |
| 最早开始时间 ve(i) | 0 | 2 | 5 | 8 | 9 | 12 |
| 最迟开始时间 vl(i) | 0 | 4 | 5 | 8 | 11 | 12 |
- c 的时间余量= vl(3) - ve(2) - 1 = 5 - 2 - 1 = 2
- g 的时间余量 = vl(6) - ve(3) - 1 = 12 - 5 - 1 = 6，
- h 的时间余量 = vl(5) - ve(4) - 1 = 11 - 8 - 1 = 2
- j 的时间余量 = vl(6) - ve(5) - 1 = 12 - 9 - 1 = 2，时间余量最大的活动是 g。', 9, 'Mogullzr', '2026-02-01 23:11:59', 9, NULL, '2026-02-01 23:11:59', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1194', '3917');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3918, '2022年408考研真题第8题', '简单', '2022年408真题', '在下图所示的 5 阶 B 树 T 中，删除关键字 260 之后需要进行必要的调整，得到新的 B 树 T1。下列选项中，不可能是 T1 根结点中关键字序列的是（  ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/df57a0bcb17e447a9c1e5ef05b34c413.svg)
', '[''60，90，280'', ''60，90，350'', ''60，85，110，350'', ''60，90，110，350'']', "['D']", 'D</font></strong>
参考B 树插入操作，在 5 阶 B 树中，除根结点外的非叶子结点的关键字数 k 需要满足 2 ≤ k ≤ 4。当被删关键字 x 不在终端结点（最底层非叶子结点）时，可以用 x 的前驱（或后继) 关键字 y 来替代 x，然后在相应结点中删除 y。情况①：删除 260，将其前驱 110 放入 260 处，删除 110 后的结点 不满足 5 阶 B 树定义，从左兄弟中借 85，将 85 放入根中，将根中的 90 移入结点 变为 <90, 100>。情况②：删除 260，将其后继 280 放入 260 处，结点 不满足 5 阶 B 树定义且左右兄弟都不够借，结点 可以和左兄弟 <100, 110> 以及关键字 280 合并成一个新的结点 <100, 110, 280, 300>。情况③：在情况②中，结点 也可以和右兄弟 <400, 500> 以及关键字 350 合并成一个新的结点 <300, 350, 400, 500>。综上，T1 根结点中的关键字序列可能是 <60, 85, 110, 350> 或 <60, 90, 350> 或 <60, 90, 280>，仅 D 不可能。', 9, 'Mogullzr', '2026-02-01 23:12:00', 9, NULL, '2026-02-01 23:12:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '3918');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3919, '2022年408考研真题第9题', '简单', '2022年408真题', '下列因素中，影响散列（哈希）方法平均查找长度的是（ ）。I. 装填因子II. 散列函数III. 冲突解决策略', '[''仅 I、II'', ''仅 I、III'', ''仅 II、III'', ''I、 II、 III'']', "['D']", 'D</font></strong>
三者都会影响：装填因子越大，说明哈希表中存储的元素越满，发生冲突的可能性越大，平均查找长度也越大。散列函数、突解决策略会影响发生冲突的可能性。', 9, 'Mogullzr', '2026-02-01 23:12:00', 9, NULL, '2026-02-01 23:12:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1165', '3919');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3920, '2022年408考研真题第10题', '简单', '2022年408真题', '使用二路归并排序对含 n 个元素的数组 M 进行排序时，二路归并操作的功能是（ ）。', '[''将两个有序表合并为一个新的有序表'', ''将 M 划分为两部分，两部分的元素个数大致相等'', ''将 M 划分为 n 个部分，每个部分中仅含有一个元素'', ''将 M 划分为两部分，一部分元素的值均小于另一部分元素的值'']', "['A']", 'A</font></strong>
概念题，归并针对的对象是序列，二路归并就是将两个有序序列合并成一个。', 9, 'Mogullzr', '2026-02-01 23:12:00', 9, NULL, '2026-02-01 23:12:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1195', '3920');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3921, '2022年408考研真题第11题', '简单', '2022年408真题', '对数据进行排序时，若采用直接插入排序而不采用快速排序，则可能的原因是（  ）。I. 大部分元素已有序II. 待排序元素数量很少III. 要求空间复杂度为 O(1)IV. 要求排序算法是稳定的', '[''仅 I、II'', ''仅 III、IV'', ''仅 I、II、IV'', ''I、 II、 III、 IV'']', "['D']", 'D</font></strong>
直接插入排序和快速排序的特点如下表所示：
|  | 适合初始序列情况 | 适合元素数量 | 空间复杂度 | 稳定性 |
| --- | --- | --- | --- | --- |
| 直接插入排序 | 大部分元素有序 | 较少 | O(1) | 稳定 |
| 快速排序 | 基本无序 | 较多 | O(log2​n) | 不稳定 |
<strong><font color=''#2656b3''>I. 大部分元素已有序</font></strong>✅<strong><font color=''#2656b3''>正确。</font></strong>直接插入排序在序列<strong><font color=''#2656b3''>基本有序</font></strong>的情况下表现非常好，接近 O(n) 的时间复杂度，而快速排序在此场景下仍需要递归处理。因此此项成立。<strong><font color=''#2656b3''>II. 待排序元素数量很少</font></strong>✅<strong><font color=''#2656b3''>正确。</font></strong>当元素数量较少时，插入排序的常数因子小、实现简单，<strong><font color=''#2656b3''>实际运行效率往往优于快速排序</font></strong>，这是实际工程中的常见优化策略（如许多库排序在小规模时使用插入排序）。<strong><font color=''#2656b3''>III. 要求空间复杂度为 O(1)</font></strong>✅<strong><font color=''#2656b3''>正确。</font></strong>插入排序是<strong><font color=''#2656b3''>原地排序</font></strong>，空间复杂度为 O(1)；而快速排序虽然通常也是原地排序，但某些实现（尤其是递归调用）存在 O(log n) 的栈空间。若对空间要求极严，插入排序更适合。<strong><font color=''#2656b3''>IV. 要求排序算法是稳定的</font></strong>✅<strong><font color=''#2656b3''>正确。</font></strong>插入排序是<strong><font color=''#2656b3''>稳定排序</font></strong>，而快速排序是<strong><font color=''#2656b3''>不稳定的</font></strong>（原始版本）。如果应用场景要求排序后相等元素的相对顺序不变，选择插入排序是合理的。综上，所有说法都正确，正确答案选择 D。', 9, 'Mogullzr', '2026-02-01 23:12:01', 9, NULL, '2026-02-01 23:12:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3921');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3922, '2022年408考研真题第12题', '简单', '2022年408真题', '某计算机主频为 1GHz，程序 P 运行过程中，共执行了 10000 条指令，其中，80% 的指令执行平均需 1 个时钟周期，20% 的指令执行平均需 10 个时钟周期。程序 P 的平均 CPI 和 CPU 执行时间分别是（ ）。', '[''2.8，28μs'', ''28，28μs'', ''2.8，28ms'', ''28，28ms'']', "['A']", 'A</font></strong>
参考指令执行指标，CPI 指平均每条指令的执行需要多少个时钟周期。由于 80% 的指令执行平均需要
1 个时钟周期，20% 的指令执行平均需要 10 个时钟周期，因此 CPI =$80% × 1 + 20% × 10 = 2.8$。
计算机主频为 1GHz，程序 P 共执行 10000 条指令，平均每条指令需要 2.8 个时钟周期，因此，
CPU 执行时间=$(10000 × 2.8)/10^{9} = 2.8 × 10^{−5}s = 28μs$。', 9, 'Mogullzr', '2026-02-01 23:12:01', 9, NULL, '2026-02-01 23:12:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '3922');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3923, '2022年408考研真题第13题', '简单', '2022年408真题', '32 位补码所能表示的整数范围是（ ）。', '[''$−2^{32} ∼ 2^{31} - 1$'', ''$−2^{31} ∼ 2^{31} - 1$'', ''$−2^{32} ∼ 2^{32} - 1$'', ''$−2^{31} ∼ 2^{32} - 1$'']', "['B']", 'B</font></strong>
32 位补码的最大值为 0x7fffffff =$2^{31} - 1$（最高位为 0，其他位为 1），最小值为 0x80000000 =$−2^{31}$（最高位为 1，其他位为 0)。', 9, 'Mogullzr', '2026-02-01 23:12:01', 9, NULL, '2026-02-01 23:12:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '3923');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3924, '2022年408考研真题第14题', '简单', '2022年408真题', '-0.4375 的 IEEE754 单精度浮点数表示为（ ）。', '[''BEE0 0000H'', ''BF60 0000H'', ''BF70 0000H'', ''C0E0 0000H'']', "['A']", 'A</font></strong>
IEEE754 单精度浮点数格式中依次为数符 1 位、阶码 8 位（偏置值 127)、尾数
23 位（隐藏 1 位）。$−0.4375 = −1.75 × 2^{−2}$，保证小数点前是 1。根据单精度浮点数格式，数符
为 1；阶码为移码表示，-2+127=125，写成 8 位二进制数为 01111101；尾数隐藏小数点前
的 1，剩下的 0.75 写成二进制数为 0.11，所以尾数部分是 1100…0。该浮点数的二进制格式为
1011111011100000000000000000000，对应的十六进制格式为 BEE00000H。', 9, 'Mogullzr', '2026-02-01 23:12:01', 9, NULL, '2026-02-01 23:12:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '3924');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3925, '2022年408考研真题第15题', '简单', '2022年408真题', '某计算机主存地址为 24 位，采用分页虚拟存储管理方式，虚拟地址空间大小为 4GB，页大小为 4KB，按字节编址。某进程的页表部分内容如下表所示。当 CPU 访问虚拟地址 00082840H，虚 - 实地址转换的结果是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/9fa4ccc4f93c4ea5a06036a7f8aab9cd.svg)
', '[''得到主存地址 02 4840H'', ''得到主存地址 18 0840H'', ''得到主存地址 01 8840H'', ''检测到缺页异常'']', "['C']", 'C</font></strong>
本题考察通过单级页表的地址翻译过程。
页大小为 4KB =$2^{12}$B，按字节编址，故页内地址为 12 位。虚拟地址空间大小为
4GB=23，故虚拟地址共 32 位，其中低 12 位为页内地址，高 20 位为虚页号。题中给出的
虚拟地址为 00082840H，虚页号为高 20 位即 00082H（页内地址为低 12 位即 840H），82H 对
应的十进制数为 130（注意题中页表的虚页号部分末尾未写 H，所以是十进制数，故查找时要
先将虚页号转换为十进制数），查页表命中，且存在位为 1，对应页框号为 018H。将查找到的
页框号 018H 和页内地址 840H 拼接，得到主存地址为 018840H。', 9, 'Mogullzr', '2026-02-01 23:12:02', 9, NULL, '2026-02-01 23:12:02', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1157', '3925');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3926, '2022年408考研真题第16题', '简单', '2022年408真题', '某计算机主存地址为 32 位，按字节编址，某 Cache 的数据区容量为 32KB，主存块大小为 64B，采用 8 路组相联映射方式，该 Cache 中比较器的个数和位数分别为（ ）。', '[''8，20'', ''8，23'', ''64，20'', ''64，23'']', "['A']", 'A</font></strong>
Cache 采用组相联映射，主存地址结构应分为 Tag 标记、组号、块内地址三部分。
主存块大小 = Cache 块大小 = 64B =$2^{6}$B，因此块内地址占 6 位。Cache 数据区容量为 32KB,
每个 Cache 块大小为 64B，则 Cache 总块数 = 32KB/64B =$2^{9}$，由于采用 8 路组相联映射，即
每 8 个 Cache 块为一个分组，因此总共被分为$2^{9}/8 = 2^{6}$组，因此，组号占 6 位。除了块内地
址和组号，剩余的位为 Tag 标记，占 32-6-6=20 位。地址结构如下所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/a7a40155a1924f08a42763772315a535.svg)
Cache 采用 8 路组相联映射，因此在访问一个物理地址时，要先根据组号定位到某一分组，然
后用物理地址的高 20 位（Tag 标记）与分组中 8 个 Cache 行的 Tag 标记做并行比较（用 8 个
20 位“比较器”实现），若某个 Cache 行的 Tag 标记与物理地址的高 20 位完全一致，则选
中该 Cache 行。综上所述，在组相联映射的 Cache 中，“比较器”用于并行地比较分组中所
有 Cache 行的 Tag 标记位与欲访问物理地址的 Tag 标记位，因此比较器的个数就是分组中的
Cache 行数 8，比较器的位数就是 Tag 标记位数 20。', 9, 'Mogullzr', '2026-02-01 23:12:02', 9, NULL, '2026-02-01 23:12:02', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1101', '3926');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3927, '2022年408考研真题第17题', '简单', '2022年408真题', '某内存条包含 8 个 8192×8192×8 位的 DRAM 芯片，按字节编址，支持突发传送方式，对应存储器总线宽度为 64 位，每个 DRAM 芯片内有一个行缓冲区。下列关于该内存条的叙述中，不正确的是（ ）。', '[''内存条的容量为 512MB'', ''采用多模块交叉编址方式'', ''芯片的地址引脚为 26 位'', ''芯片内行缓冲有 8192×8 位'']', "['C']", 'C</font></strong>
本题考察主存容量的扩展。- 8×8192×8192×8bit=512MB，内存条的容量为 512MB，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>A 正确</font></strong></font></strong>。
- 存储器总线宽度 64=8×8bit，而每个芯片一次只能传输 8bit，需要 8 体多模块交叉编址才能实现，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>B 正确</font></strong></font></strong>。
- DRAM 芯片是矩阵样式的行列存储结果，行地址和列地址复用一个地址，根据题意，DRAM 芯片的行数和列数都是 8192，所以引脚个数为log2​8192=13，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>C 错误</font></strong></font></strong>。
- 芯片内行数是 8192，一行的大小是 8192×8bit，行缓冲长度就是一行的大小，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>D 正确</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-01 23:12:04', 9, NULL, '2026-02-01 23:12:04', 1, 1);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3928, '2022年408考研真题第18题', '简单', '2022年408真题', '下列选项中，属于指令集体系结构（ISA）规定的内容是（ ）。Ⅰ. 指令字格式和指令类型Ⅱ. CPU 的时钟周期Ⅲ. 通用寄存器个数和位数Ⅳ. 加法器的进位方式', '[''仅Ⅰ、Ⅱ'', ''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅳ'', ''仅Ⅰ、Ⅲ、Ⅳ'']', "['B']", 'B</font></strong>
指令集处于软硬件的交界面上。指令字和指令格式、通用寄存器个数和位数都与
机器指令有关，由指令体系结构规定。两个 CPU 可以有不同的时钟周期，但指令集可以相同，CPU 的
时钟周期不由 ISA 规定。加法器的进位方式涉及电路设计，也不由指令集规定。', 9, 'Mogullzr', '2026-02-01 23:12:04', 9, NULL, '2026-02-01 23:12:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1280', '3928');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3929, '2022年408考研真题第19题', '简单', '2022年408真题', '设计某指令系统时，假设采用 16 位定长指令字格式，操作码使用扩展编码方式，地址码为 6 位，包含零地址、一地址和二地址 3 种格式的指令。若二地址指令有 12 条，一地址指令有 254 条，则零地址指令的条数最多为（ ）。', '[''0'', ''2'', ''64'', ''128'']', "['D']", 'D</font></strong>
本题考察N 地址指令如下图所示：零地址指令的 OP 字段位数相比一地址和二地址指令更短，但是需要注意的是，零地址指令的 OP 字段前缀与一地址和二地址指令的 OP 字段不能相同。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/e30dfaf1d4bc456d973e3b37b2281eeb.svg)
所以零地址指令的条数为$2^{16} - 254 × 2^{6} - 12 × 2^{12} = 128$。', 9, 'Mogullzr', '2026-02-01 23:12:04', 9, NULL, '2026-02-01 23:12:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1168', '3929');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1281', '3929');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3930, '2022年408考研真题第20题', '简单', '2022年408真题', '将高级语言源程序转换为可执行目标文件的主要过程是（ ）。', '[''预处理 → 编译 → 汇编 → 链接'', ''预处理 → 汇编 → 编译 → 链接'', ''预处理 → 编译 → 链接 → 汇编'', ''预处理 → 汇编 → 链接 → 编译'']', "['A']", 'A</font></strong>
将源程序转换为可执行目标文件的过程分为预处理、编译、汇编、链接四个阶段', 9, 'Mogullzr', '2026-02-01 23:12:05', 9, NULL, '2026-02-01 23:12:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1317', '3930');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3931, '2022年408考研真题第21题', '简单', '2022年408真题', '下列关于中断 I/O 方式的叙述中，不正确的是（ ）。', '[''适用于键盘、针式打印机等字符型设备'', ''外设和主机之间的数据传送通过软件完成'', ''外设准备数据的时间应小于中断处理时间'', ''外设为某进程准备数据时 CPU 可运行其他进程'']', "['C']", 'C</font></strong>
中断 I/O 方式适用于字符型设备，此类设备的特点是数据传输速率慢，以字符或
字为单位进行传输，A 正确。若采用中断 VO 方式，当外设准备好数据后，向 CPU 发出中断
请求，CPU 暂时中止现行程序，转去运行中断服务程序，由中断服务程序完成数据传送，B
正确。若外设准备数据的时间小于中断处理时间，则可能导致数据丢失，以输入设备为例，
设备为进程准备的数据会先写入设备控制器的缓冲区（缓冲区大小有限，通常只能暂存几个
字节），缓冲区每写满一次，就会向 CPU 发出一次中断请求，CPU 响应并处理中断的过程，
就是将缓冲区中的数据“取走”的过程，因此若外设准备数据的时间小于中断处理时间，则
可能导致外设往缓冲区写入数据的速度快于 CPU 从缓冲区取走数据的速度，从而导致缓冲区
的数据被覆盖，进而导致数据丢失。C 错误。若采用中断 I/O 方式，则外设为某进程准备数据
时，可令该进程阻塞，CPU 运行其他进程，D 正确。', 9, 'Mogullzr', '2026-02-01 23:12:05', 9, NULL, '2026-02-01 23:12:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3931');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3932, '2022年408考研真题第22题', '简单', '2022年408真题', '下列关于并行处理技术的叙述中，不正确的是（ ）。', '[''多核处理器属于 MIMD 结构'', ''向量处理器属于 SIMD 结构'', ''硬件多线程技术只可用于多核处理器'', ''SMP 中所有处理器共享单一物理地址空间'']', "['C']", 'C</font></strong>
本题考察多处理器，
MIMD 结构分为多计算机系统和多处理器系统，A 正确。向量处理器是 SIMD 的
变体，属于 SIMD 结构，B 正确。硬件多线程技术是在一个核中处理多个线程，可用于单核
处理器，C 错误。共享内存多处理器 (SMP) 具有共享的单一物理地址空间，所有核都可通
过存取指令来访问同一片主存地址空间，D 正确。', 9, 'Mogullzr', '2026-02-01 23:12:06', 9, NULL, '2026-02-01 23:12:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1318', '3932');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3933, '2022年408考研真题第23题', '简单', '2022年408真题', '下列关于多道程序系统的叙述中，不正确的是（ ）。', '[''支持进程的并发执行'', ''不必支持虚拟存储管理'', ''需要实现对共享资源的管理'', ''进程数越多 CPU 利用率越高'']', "['D']", 'D</font></strong>
操作系统的基本特点：并发、共享、虚拟、异步，其中最基本、一定要实现的是并发和共享，A、C 正确。早期的多道批处理操作系统会将所有进程的数据全部调入主存，再让多道程序并发执行，即使不支持虚拟存储管理，也能实现“多道程序并发”，B 正确。进程多并不意味着 CPU 利用率高，进程数量越多，进程之间的资源竞争越激烈，甚至可能因为资源竞争而出现死锁现象，导致 CPU 利用率低，D 错误。', 9, 'Mogullzr', '2026-02-01 23:12:06', 9, NULL, '2026-02-01 23:12:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1110', '3933');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3934, '2022年408考研真题第24题', '简单', '2022年408真题', '下列选项中，需要在操作系统进行初始化过程中创建的是（ ）。', '[''中断向量表'', ''文件系统的根目录'', ''硬盘分区表'', ''文件系统的索引节点表'']', "['A']", 'A</font></strong>
解析：- 中断向量表：在操作系统启动时，必须初始化中断向量表，用于存储中断服务例程的入口地址，以便处理硬件或软件中断。这是操作系统初始化过程中的关键步骤。
- 文件系统的根目录：根目录通常在文件系统格式化时创建，而不是操作系统初始化过程中。
- 硬盘分区表：分区表是在磁盘分区时创建的，通常在安装操作系统之前完成。
- 文件系统的索引节点表：索引节点表（inode 表）是在文件系统创建时生成的，不是操作系统初始化的一部分。因此，正确答案是 A。', 9, 'Mogullzr', '2026-02-01 23:12:06', 9, NULL, '2026-02-01 23:12:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3934');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3935, '2022年408考研真题第25题', '简单', '2022年408真题', '进程 P0、P1、P2 和 P3 进入就绪队列的时刻、优先级（值越小优先权越高）及 CPU 执行时间如下表所示。若系统采用基于优先权的抢占式进程调度算法，则从 0ms 时刻开始调度，到 4 个进程都运行结束为止，发生进程调度的总次数为（ ）。', '[''4'', ''5'', ''6'', ''7'']', "['C']", 'C</font></strong>
本题考察优先级调度：- 0 时刻调度进程 P0 获得 CPU；
- 1Oms 时 P2 进入就绪队列，调度 P2 抢占获得 CPU；
- 15ms 时 P3 进入就绪队列，调度 P3 抢占获得 CPU；
- 25ms 时 P3 执行完毕，调度 P2 获得 CPU；
- 40ms 时 P2 执行完毕，调度 P0 获得 CPU；
- 130ms 时 P2 执行完毕，调度 P1 获得 CPU；
- 190ms 时 P2 执行完毕，结束；总共调度 6 次。', 9, 'Mogullzr', '2026-02-01 23:12:06', 9, NULL, '2026-02-01 23:12:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3935');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3936, '2022年408考研真题第26题', '简单', '2022年408真题', '系统中有三个进程 P0、P1、P2 及三类资源 A. B. C。若某时刻系统分配资源的情况如下表所示，则此时系统中存在的安全序列的个数为（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/a26562698ab24170bf892c9b4858426c.svg)
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
初始时系统中的可用资源数为`<1,3,2>`，只能满足 P0 的需求`<0,2,1>`，所以安全分配序列第一个只能是 P0，
将资源分配给 P0 后，P0 执行完释放所占资源，可用资源数变为`<1,3,2> + <2,0,1> = <3,3,3>`，
此时可用资源数既能满足 P1，也能满足 P2，可以先分配给 P1，P1 执行完释放资源再分配给 P2，
也可以先分配给 P2，P2 执行完释放资源再分配给 P1。
所以安全序列可以是 ①P0、P1、P2 或 ②P0、P2、P1。', 9, 'Mogullzr', '2026-02-01 23:12:07', 9, NULL, '2026-02-01 23:12:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1185', '3936');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3937, '2022年408考研真题第27题', '简单', '2022年408真题', '下列关于 CPU 模式的叙述中，正确的是（ ）。', '[''CPU 处于用户态时只能执行特权指令'', ''CPU 处于内核态时只能执行特权指令'', ''CPU 处于用户态时只能执行非特权指令'', ''CPU 处于内核态时只能执行非特权指令'']', "['C']", 'C</font></strong>
CPU 在用户态时只能执行非特权指令，在内核态时可以执行特权指令和非特权指令。', 9, 'Mogullzr', '2026-02-01 23:12:07', 9, NULL, '2026-02-01 23:12:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1182', '3937');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3938, '2022年408考研真题第28题', '简单', '2022年408真题', '下列事件或操作中，可能导致进程 P 由执行态变为阻塞态的是（ ）。Ⅰ. 进程 P 读文件Ⅱ. 进程 P 的时间片用完Ⅲ. 进程 P 申请外设Ⅳ. 进程 P 执行信号量的 wait() 操作', '[''仅Ⅰ、Ⅳ'', ''仅Ⅱ、Ⅲ'', ''仅Ⅲ、Ⅳ'', ''仅Ⅰ、Ⅲ、Ⅳ'']', "['D']", 'D</font></strong>
参考状态转化。
进程 P 读文件时，进程从执行态进入阻塞态，等待磁盘 I/O 完成，I 正确。进程 P4
的时间片用完，导致进程从执行态进入就绪态，转入就绪队列等待下次被调度，Ⅱ错误。进
程 P 申请外设，若外设是独占设备且正在被其他进程使用，则进程 P 从执行态进入阻塞态，
等待系统分配外设，Ⅲ 正确。进程 P 执行信号量的 wait() 操作，如果信号量的值小于等于
0，则进程进入阻塞态，等待其他进程用 signal() 操作唤醒，V 正确。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1206', '3938');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3939, '2022年408考研真题第29题', '简单', '2022年408真题', '某进程访问的页 b 不在内存中，导致产生缺页异常，该缺页异常处理过程中不一定包含的操作是（ ）。', '[''淘汰内存中的页'', ''建立页号与页框号的对应关系'', ''将页 b 从外存读入内存'', ''修改页表中页 b 对应的存在位'']', "['A']", 'A</font></strong>
缺页异常需要从磁盘调页到内存中，将新调入的页与页框建立对应关系，并修改
该页的存在位，B、C、D 正确：如果内存中有空闲页框，就不需要淘汰其他页，A 错误。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1186', '3939');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3940, '2022年408考研真题第30题', '简单', '2022年408真题', '下列选项中，不会影响系统缺页率的是（ ）。', '[''页面置换算法'', ''工作集的大小'', ''进程的数量'', ''页缓冲队列的长度'']', "['D']", 'D</font></strong>
页置换算法会影响缺页率，例如，LRU 算法的缺页率通常要比 FIFO 算法的缺页
率低，排除 A。工作集的大小决定了分配给进程的物理块数，分配给进程的物理块数越多，
缺页率就越低，排除 B。进程的数量越多，对内存资源的竞争越激烈，每个进程被分配的物
理块数越少，缺页率也就越高，排除 C。页缓冲队列是将被淘汰的页面缓存下来，暂时不写
回磁盘，队列长度会影响页面置换的速度，但不会影响缺页率，答案选 D。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1253', '3940');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1087', '3940');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3941, '2022年408考研真题第31题', '简单', '2022年408真题', '执行系统调用的过程涉及下列操作，其中由操作系统完成的是（ ）。Ⅰ. 保存断点和程序状态字Ⅱ. 保存通用寄存器的内容Ⅲ. 执行系统调用服务程序Ⅳ. 将 CPU 模式改为内核态', '[''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅲ'', ''仅Ⅱ、Ⅳ'', ''仅Ⅱ、Ⅲ、Ⅳ'']', "['B']", 'B</font></strong>
对四个选项进行逐一分析：<strong><font color=''#2656b3''>Ⅰ. 保存断点和程序状态字</font></strong>❌
参考中断处理过程，保存断点由中断隐指令完成，即由硬件完成。<strong><font color=''#2656b3''>Ⅱ. 保存通用寄存器的内容</font></strong>✅
为了防止系统调用覆盖用户程序中的数据，操作系统在进入系统调用处理程序时会保存用户程序的寄存器内容（这属于上下文切换的一部分）。<strong><font color=''#2656b3''>Ⅲ. 执行系统调用服务程序</font></strong>✅
系统调用就是要求操作系统执行某项服务，服务程序是操作系统的一部分，由操作系统调度执行。<strong><font color=''#2656b3''>Ⅳ. 将 CPU 模式改为内核态</font></strong>❌
这一点不是由操作系统主动完成，而是由硬件自动完成的：当执行陷阱指令（如`int 0x80`）或发生中断时，CPU 自动将模式从用户态切换为内核态，然后跳转到操作系统提供的中断向量地址。所以，这属于硬件响应的一部分，不是由操作系统“显式”控制的。所以正确答案选择 B。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1205', '3941');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3942, '2022年408考研真题第32题', '简单', '2022年408真题', '下列关于驱动程序的叙述中，不正确的是（ ）。', '[''驱动程序与 I/O 控制方式无关'', ''初始化设备是由驱动程序控制完成的'', ''进程在执行驱动程序时可能进入阻塞态'', ''读/写设备的操作是由驱动程序控制完成的'']', "['A']", 'A</font></strong>
厂家在设计一个设备时，通常会为该设备编写设备驱动程序，主机需要先安装驱动程序，才能使用设备。当一个设备被连接到主机时，驱动程序负责初始化设备（如将设备控制器中的寄存器初始化），B 正确。当进程在执行驱动程序时，可能会因为设备忙碌而进入阻塞态，C 正确。设备的读/写操作本质就是在设备控制器和主机之间传送数据，而只有厂家知道
设备控制器的内部实现，因此也只有厂家提供的驱动程序能控制设备的读/写操作，D 正确。厂家会根据设备特性，在驱动程序中实现一种合适的 I/O 控制方式，A 错误。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1184', '3942');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3943, '2022年408考研真题第33题', '简单', '2022年408真题', '在 ISO/OSI 参考模型中，实现两个相邻结点间流量控制功能的是（ ）。', '[''物理层'', ''数据链路层'', ''网络层'', ''传输层'']', "['B']", 'B</font></strong>
在ISO/OSI 模型中，数据链路层、网络层、传输层都具有流量控制功能，数据链路层是相邻结点之间的流量控制，网络层是整个网络中的流量控制，传输层是端到端的流量控制。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1120', '3943');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3944, '2022年408考研真题第34题', '简单', '2022年408真题', '在一条带宽为 200kHz 的无噪声信道上，若采用 4 个幅值的 ASK 调制，则该信道的最大数据传输速率是（ ）。', '[''200 kbps'', ''400 kbps'', ''800 kbps'', ''1600 kbps'']', "['C']", 'C</font></strong>
根据奈奎斯特定理，最大数据传输速率=$2Wlog_{2}V$，4 个幅值的 ASK 调制说明有 4 个相位，将 V=4 代入，得 800kbps。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1286', '3944');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3945, '2022年408考研真题第35题', '简单', '2022年408真题', '若某主机的 IP 地址是 183.80.72.48, 子网掩码是 255.255.192.0, 则该主机所在网络的网络地址是 (  )。', '[''183.80.0.0'', ''183.80.64.0'', ''183.80.72.0'', ''183.80.192.0'']', "['B']", 'B</font></strong>
主机所在网络的网络地址可以通过主机的 IP 地址和子网掩码逐位相与得到。子网掩码 255.255.192.0 的二进制前 18 位为 1、后 14 位为 0，把主机 P 地址的后 14 位变为 0，得
到的结果为 183.80.64.0，即为主机所在网络的网络地址。', 9, 'Mogullzr', '2026-02-01 23:12:08', 9, NULL, '2026-02-01 23:12:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1211', '3945');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3946, '2022年408考研真题第36题', '简单', '2022年408真题', '下图所示网络中的主机 H 的子网掩码与默认网关分别是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/02d0f325afef40d28ec6e1d69a8cdc07.svg)
', '[''255.255.255.192, 192.168.1.1'', ''255.255.255.192, 192.168.1.62'', ''255.255.255.224, 192.168.1.1'', ''255.255.255.224, 192.168.1.62'']', "['D']", 'D</font></strong>
默认网关可以理解为离当前主机最近的路由器的端口地址，所以是 192.168.1.62，
而该主机的子网掩码和网关的子网掩码也相同，/27 即为 255.255.255.224。', 9, 'Mogullzr', '2026-02-01 23:12:10', 9, NULL, '2026-02-01 23:12:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1257', '3946');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3947, '2022年408考研真题第37题', '简单', '2022年408真题', '在 SDN 网络体系结构中，SDN 控制器向数据平面的 SDN 交换机下发流表时所使用的接口是（ ）。', '[''东向接口'', ''南向接口'', ''西向接口'', ''北向接口'']', "['B']", 'B</font></strong>
SDN对上层开发者提供的编程接口称为北向接口，而南向接口则负责控制平面和
数据平面间的通信，所以 SDN 控制器向数据平面的 SDN 交换机下发流表时使用南向接口。', 9, 'Mogullzr', '2026-02-01 23:12:10', 9, NULL, '2026-02-01 23:12:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1319', '3947');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3948, '2022年408考研真题第38题', '简单', '2022年408真题', '假设主机甲和主机乙已建立一个 TCP 连接，最大段长 MSS = 1 KB，甲一直有数据向乙发送，当甲的拥塞窗口为 16KB 时，计时器发生了超时，则甲的拥塞窗口再次增长到 16KB 所需要的时间至少是（ ）。', '[''4 RTT'', ''5 RTT'', ''11 RTT'', ''16 RTT'']', "['C']", 'C</font></strong>
时刻 0 发生了超时，门限值 ssthresh 变为拥塞窗口 cwnd 的一半即 8，同时 cwnd
置为 1，执行慢开始算法，cwnd 指数增长，经过 3 个 RTT，增长到 ssthresh 值：之后执行拥塞避免算法，cwmd 线性增长，再经过 8 个 RTT，增长到 16，共花费 11 个 RTT，如下表所示。
| 时刻 | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 拥塞窗口 | 1 | 2 | 4 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 |
', 9, 'Mogullzr', '2026-02-01 23:12:10', 9, NULL, '2026-02-01 23:12:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1127', '3948');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3949, '2022年408考研真题第39题', '简单', '2022年408真题', '假设客户 C 和服务器 S 已建立一个 TCP 连接，通信往返时间 RTT = 50 ms, 最长报文段寿命 MSL= 800ms, 数据传输结束后，C 主动请求断开连接。若从 C 主动向 S 发出 FIN 段时刻算起，则 C 和 S 进入 CLOSED 状态所需的时间至少分别是 ( )。', '[''850 ms, 50 ms'', ''1650 ms, 50 ms'', ''850 ms, 75 ms'', ''1650 ms, 75 ms'']', "['D']", 'D</font></strong>
TCP 连接的释放过程见四次挥手。题目问的是最少时间，所以当服务器 S 收到客户 C 发送的 FIN 请求后不再发送数据，而是立马发送 FN 请求（即第②步和第③步同时发生，忽略 FIN-WAIT2 和 CLOSE-WAIT 状态。C 收到 S 发来的 FIN 报文段后，进入 CLOSED 状态还需等到 TIME-WAIT 结束，总用时至少为 1RTT + 2MSL = 50 + 800×2 = 1650ms。S 进入 CLOSED 状态需要经过 3 次报文段的传输时间，即 1.5RTT=75ms。', 9, 'Mogullzr', '2026-02-01 23:12:10', 9, NULL, '2026-02-01 23:12:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1312', '3949');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3950, '2022年408考研真题第40题', '简单', '2022年408真题', '假设主机 H 通过 HTTP/1.1 请求浏览某 Web 服务器 S 上的 Web 页 news408.html, news408.html 引用了同目录下的 1 幅图像，news408.html 文件大小为 1 MSS（最大段长），图像文件大小为 3 MSS, H 访问 S 的往返时间 RTT = 10 ms, 忽略 HTTP 响应报文的首部开销和 TCP 段传输时延。若 H 已完成域名解析，则从 H 请求与 S 建立 TCP 连接时刻起，到接收到全部内容止，所需的时间至少 是（ ）。', '[''30ms'', ''40ms'', ''50ms'', ''60ms'']', "['B']", 'B</font></strong>
HTTP/1.1 默认使用流水线的长连接，所有请求都是连续发送的。题目要求最少
时间，最理想的流程是 TCP 在第三次握手的报文段中捎带 HTTP 请求，以及 TCP 连接后慢开
始阶段不考虑拥塞情况。假设接收方有足够大的缓存空间，即发送窗口等同于拥塞窗口，总
共需要经过：第 1 个 RTT，进行 TCP 连接，此时服务器 S 的发送窗口= 1MSS，并在第三次
握手时捎带 HTTP 请求；第 2 个 RTT，服务器 S 发送大小为 1MSS 的 html 文件，主机 C 确认
后服务器 S 的发送窗口变为 2MSS；第 3 个 RTT，服务器 S 发送大小为 2MSS 的图像文件，
主机 C 确认后服务器 S 的发送窗口变为 4MSS；第 4 个 RTT，服务器 S 发送剩下的 1MSS 图
像文件，完成传输，总共需要 4 个 RTT，即 40ms。', 9, 'Mogullzr', '2026-02-01 23:12:10', 9, NULL, '2026-02-01 23:12:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1197', '3950');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3951, '2022年408考研真题第41题', '简单', '2022年408真题', '已知非空二叉树 T 的结点值均为正整数，采用顺序存储方式保存，数据结构定义如下：
```c
typedef struct {                    // MAX_SIZE 为已定义常量
    Elemtype SqBiTNode[MAX_SIZE];   // 保存二叉树结点值的数组
    int ElemNum;                    // 实际占用的数组元素个数
}SqBiTree;
```
T 中不存在的结点在数组 SqBiTNode 中用 -1 表示。例如，对于下图所示的两棵非空二叉树 T1 和 T2：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/465e405cb8c84977a704536d27073cd2.svg)
T1 的存储结果如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/3881ccc441e34578abe6548ec0ac73d5.svg)
T2 的存储结果如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/d5c83a28203e4f439c690526a19b2ac1.svg)
请设计一个尽可能高效的算法，判定一棵采用这种方式存储的二叉树是否为二叉搜索树，若是，则返回 true，否则，返回 false，要求：(1) 给出算法的基本设计思想。(2) 根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释。', '[]', '', '1）算法的基本设计思想
对于采用顺序存储方式保存的二叉树，根结点保存在`SqBiTNode[0]`中：当某结点保存在`SqBiTNode[i]`中时，若有左孩子，则其值保存在`SqBiTNode[2i+1]`中；若有右孩子，则其值保存在`SqBiTNode[2i+2]`中；若有双亲结点，则其值保存在`SqBiTNode[(i-1)/2]`中。
二叉搜索树需要满足的条件是：任一结点值大于其左子树中的全部结点值，小于其右子树中的全部结点值。中序遍历二叉搜索树得到一个升序序列。
使用整型变量`val`记录中序遍历过程中已遍历结点的最大值，初值为一个负整数，对二叉树进行中序遍历。若当前遍历的结点值小于等于`val`，则算法返回 false，否则，将`val`的值更新为当前结点的值。
2）算法实现

```c
// val 存储中序遍历中访问到的最大值
// 返回值：当前子树是否为 BST
bool solve(SqBiTree *tree, int k, int *val) {
  if (k >= tree->ElemNum) {
    // 空结点
    return true;
  }
  // 判断左子树是否为 BST
  bool ret = solve(tree, 2*k+1, val);
  if (!ret) {
    return false;
  }
  int cur_val = tree->SqbiTNode[k];
  if (cur_val == -1) {
    // 空结点
    return true;
  }
  // 判断中序序列是否递增
  if (cur_val > *val) {
    *val = cur_val;
  } else {
    return false;
  }
  // 判断右子树是否为 BST
  ret = solve(tree, 2*k+2, val);
  if (!ret) {
    return false;
  }
  return true;
}
```
', 9, 'Mogullzr', '2026-02-01 23:12:14', 9, NULL, '2026-02-01 23:12:14', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1174', '3951');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3952, '2022年408考研真题第42题', '简单', '2022年408真题', '现有 n（n > 100000）个数保存在一维数组 M 中，需要查找 M 中最小的 10 个数，请回答下列问题。(1) 设计一个完成上述查找任务的算法，要求平均情况下的比较次数尽可能少，简单描述其算法思想，不需要程序实现。(2) 说明你所设计的算法平均情况下的时间复杂度和空间复杂度。', '[]', '', '【答案 1】
定义含 10 个元素的数组 A，初始时元素值均为该数组类型能表示的最大数 MAX。

```c
for M 中的每个元素 s
    if (s < A[9]) 丢弃 A[9]并将 s 按升序插入到 A 中；
```

当数据全部扫描完毕，数组 A[0]~A[9]保存的即是最小的 10 个数。
【答案 2】
定义含 10 个元素的大根堆 H，元素值均为该堆元素类型能表示的最大数 MAX。

```c
for M 中的每个元素 s
    if （s < H 的堆顶元素）
```

删除堆顶元素并将 s 插入到 H 中；
当数据全部扫描完毕，堆 H 中保存的即是最小的 10 个数。
', 9, 'Mogullzr', '2026-02-01 23:12:14', 9, NULL, '2026-02-01 23:12:14', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1095', '3952');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1279', '3952');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3953, '2022年408考研真题第43题', '简单', '2022年408真题', '某 CPU 中部分数据通路如图所示，其中，GPRs 为通用寄存器组；FR 为标志寄存器，用于存放 ALU 产生的标志信息；带箭头虚线表示控制信号，如控制信号 ReaD. Write 分别表示主存读、主存写，MDRin 表示内部总线上数据写入 MDR，MDRout 表示 MDR 的内容送内部总线。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/ff831b62be46449687528632c9f0f30a.svg)
(1) ALU 的输入端 A. B 及输出端 F 的最高位分别为 A15 、 B15 及 F15 ，FR 中的符号标志和溢出标志分别为 SF 和 OF，则 SF 的逻辑表达式是什么？A 加 B. A 减 B 时 OF 的逻辑表达式分别是什么？要求逻辑表达式的输入变量为 A15、B15 及 F15 。(2) 为什么要设置暂存器 Y 和 Z？(3) 若 GPRs 的输入端 rs、rd 分别为所读、写的通用寄存器的编号，则 GPRs 中最多有多少个通用寄存器？rs 和 rd 来自图中的哪个寄存器？已知 GPRs 内部有一个地址译码器和一个多路选择器，rd 应该连接地址译码器还是多路选择器？(4) 取指令阶段（不考虑 PC 增量操作）的控制信号序列是什么？若从发出主存读命令到主存读出数据并传送到 MDR 共需 5 个时钟周期，则取指令阶段至少需要几个时钟周期？(5) 图中控制信号由什么部件产生？图中哪些寄存器的输出信号会连到该部件的输入端？', '[]', '', '1）符号标志 SF 表示运算结果的正负性，因此$SF = F_{15}$
对于加法运算$A + B → F$，若$A$、$B$为负，且$F$为正，则说明发生溢出：或者，若$A$、$B$为正，
且$F$为负，也说明发生溢出。因此，加运算时，溢出标志$OF = \\overline{A15​​} ⋅ \\overline{B15​​} ⋅ F_{15} + A_{15} ⋅ B_{15} ⋅ \\overline{F15​​}$。
对于减法运算$A - B → F$，若$A$为负、$B$为正，且$F$为正，则说明发生溢出：或者，若$A$为正、$B$为负，且$F$为负，也说明发生溢出。因此，减运算时，溢出标志$OF = \\overline{A15​​} ⋅ B_{15} ⋅ F_{15} + A_{15} ⋅ \\overline{B15​​} ⋅ \\overline{F15​​}$。
2）因为在单总线结构中，每一时刻总线上只有一个数据有效，而 ALU 有两个输入端和一个
输出端。因此，当 ALU 运算时，需要先用暂存器 Y 缓存其中一个输入端的数据，再通过
总线传送另一个输入端的数据。与此同时，ALU 的输出端产生运算结果，但由于总线正
被占用，因此需要暂存器 Z，以缓存 ALU 的输出端数据。
3）由图可知，rs 和 rd 都是 4bit，因此 GPRs 中最多有$2^{4} = 16$个通用寄存器；rs 和 rd 来自指令寄
存器 IR；rd 表示寄存器编号，应连接地址译码器。
4）取指阶段需要根据程序计数器 PC 取出主存中的指令，并将指令写入指令寄存器 R 中。控制
信号序列如下：
①PCout,MARin // 将指令的地址写入 MAR
②Read // 读主存，并将读出的数据写入 MDR
③MDRout,Rin // 将 MDR 的内容写入指令寄存器 R
步骤①需要 1 个时钟周期，步骤②需要 5 个时钟周期，步骤③需要 1 个时钟周期，因此取指
令阶段至少需要 7 个时钟周期。
5）图中控制信号由控制部件（CU）产生。指令寄存器 IR 和标志寄存器 FR 的输出信号会连
到控制部件的输入端。
', 9, 'Mogullzr', '2026-02-01 23:12:16', 9, NULL, '2026-02-01 23:12:16', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3953');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1320', '3953');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3954, '2022年408考研真题第44题', '简单', '2022年408真题', '假设某磁盘驱动器中有 4 个双面盘片，每个盘面有 20000 个磁道，每个磁道有 500 个扇区，每个扇区可记录 512 字节的数据，盘片转速为 7200rpm（转/分），平均寻道时间为 5ms，请回答下列问题。(1) 每个扇区包含数据及地址信息，地址信息分为 3 个字段，这 3 个字段的名称格式什么？对于该磁盘，各字段至少占多少位？(2) 一个扇区的平均访问时间约为多少？(3) 若采用周期挪用 DMA 方式进行磁盘与主机之间的数据传送，磁盘控制器中的数据缓冲区大小为 64 位，则在一个扇区读写过程中，DMA 控制器向 CPU 发送了多少次总线请求？若 CPU 检测到 DMA 控制器的总线请求信号时也需要访问主存，则 DMA 控制器是否可以获得总线使用权？为什么？', '[]', '', '1）参考CHS 地址，三个字段的名称为柱面号（或磁道号）、磁头号（或盘面号）、扇区号。
由于每个盘面有 20000 个磁道，因此该磁盘共有 20000 个柱面，柱面号字段至少占$⌈\\log_{2} 20000⌉ = 15$位。
由于该磁盘共有 4 个盘片，每个盘片有 2 个盘面，因此磁头号字段至少占$\\log_{2}(4 × 2) = 3$位。
由于每个磁道有 500 个扇区，因此扇区号字段至少占$⌈\\log_{2} 500⌉ = 9$位。
2）一个扇区的访问时间由寻道时间、延迟时间、传输时间三部分组成。
平均寻道时间为 5 ms，平均延迟时间等于磁盘转半圈所需要的时间，平均传输时间等于一个扇区划过磁头下方所需要的时间。
该磁盘转一圈的时间为$60 × 10^{3}/7200 ≈ 8.33$ms，因此一个扇区的平均访问时间约为


$$
5 + 8.33/2 + 8.33/500 ≈ 9.18ms
$$

3）磁盘控制器中的数据缓冲区每充满一次，DMA 控制器就需要发出一次总线请求，将这 64 bit 数据通过总线传送到主存。
因此，在一个扇区读写过程中，DMA 控制器向 CPU 发送了$512B/64bit = 64$次总线请求。
由于采用周期挪用DMA 方式，当 CPU 和 DMA 控制器都需要访问主存时，DMA 控制器可以优先获得总线使用权。
这是因为一旦磁盘开始读写，就必须按时完成数据传送，否则数据缓冲区中的数据会发生丢失。
', 9, 'Mogullzr', '2026-02-01 23:12:16', 9, NULL, '2026-02-01 23:12:16', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1221', '3954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '3954');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3955, '2022年408考研真题第45题', '简单', '2022年408真题', '某文件系统的磁盘块大小为 4KB，目录项由文件名和索引节点号构成，每个索引节点占 256 字节，其中包含直接地址项 10 个，一级、二级和三级间接地址项各 1 个，每个地址项占 4 字节。该文件系统中子目录 stu 的结构如题 45(a) 图所示，stu 包含子目录 course 和文件 doc，course 子目录包含文件 course1 和 course2。各文件的文件名、索引节点号、占用磁盘块的块号如题 45(b) 图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/d43674553fab4b0ba700a4208a7dcdf7.svg)
请回答下列问题。(1) 目录文件 stu 中每个目录项的内容是什么？(2) 文件 doc 占用的磁盘块的块号 x 的值是多少？(3) 若目录文件 course 的内容已在内存，则打开文件 course1 并将其读入内存，需要读几个磁盘块？说明理由。(4) 若文件 course2 的大小增长到 6MB，为了存取 course2 需要使用该文件索引节点的哪几级间接地址项？说明理由。', '[]', '', '1）在该文件系统中，目录项由文件名和索引结点号构成。由图 a 可知，stu 目录下有两个文
件，分别是 course 和 doc。由图 b 可知，这两个文件分别对应索引结点号 2 和 10。因此，
目录文件 stu 中两个目录项的内容是
2）由图 b 可知，文件 doc 和文件 course1 对应的索引结点号都是 10。说明 doc 和 course1 两
个目录项共享同一个索引结点，本质上对应同一个文件。而文件 course1 存储在 30 号磁盘
块，因此文件 doc 占用的磁盘块的块号 x 为 30。
3）需要读 2 个磁盘块。先读 course1 的索引结点所在的磁盘块，再读 course1 的内容所在的
磁盘块。目录文件 course 的内容已在内存中，即 coursel、course2 对应的目录项己在内存
中，根据 coursel 对应的目录项可以知道其索引结点号，即可读入 course1 的索引结点所
在的磁盘块：根据 course1 的索引结点可知该文件存储在 30 号磁盘块，因此可再读入
coursel 的内容所在的磁盘块。
4）存取 course2 需要使用索引结点的一级和二级间接地址项。6MB 大小的文件需要占用
6MB/4KB=1536 个磁盘块。直接地址项可以记录 10 个磁盘块号，一级间接地址块可以记
录 4KB/4B=1024 个磁盘块号，二级间接地址块可以记录 1024×1024 个磁盘块号，而$10 + 1024 < 1536 < 10 + 1024 + 1024 × 1024$。因此，6MB 大小的文件，需要使用一级间接地址
项和二级间接地址项（拓展：若文件的总大小超出$10 + 1024 + 1024 × 1024$块，则还需使
用三级间接地址项）。
', 9, 'Mogullzr', '2026-02-01 23:12:17', 9, NULL, '2026-02-01 23:12:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3955');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1158', '3955');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3956, '2022年408考研真题第46题', '简单', '2022年408真题', '某进程的两个线程 T1 和 T2 并发执行 A. B. C. D. E 和 F 共 6 个操作，其中 T1 执行 A. E 和 F，T2 执行 B. C 和 D。题 46 图表示上述 6 个操作的执行顺序所必须满足的约束：C 在 A 和 B 完成后执行，D 和 E 在 C 完成后执行，F 在 E 完成后执行。请使用信号量的 wait()、signal() 操作描述 T1 和 T2 之间的同步关系，并说明所用信号量的作用及其初值。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/c2bbd9eb8f00450fa358e566c68cd20c.svg)
', '[]', '', '进程 T1 要依次执行 A、E、F。进程 T2 要执行 B、C、D。由图可知，T2 执行 C 必须在 T1
执行完 A 之后；T1 执行 E 必须在 T2 执行完 C 之后。因此，有两对同步关系。信号量的定义
和同步关系的描述如下：

```c
semaphore AC = 0;
semaphore CE = 0;

T1() {
    A;
    signal(AC);
    wait(CE);
    E;
    F;
}

T2() {
    B;
    wait(AC);
    C;
    signal(CE);
    D;
}
```
', 9, 'Mogullzr', '2026-02-01 23:12:19', 9, NULL, '2026-02-01 23:12:19', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1135', '3956');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3957, '2022年408考研真题第47题', '简单', '2022年408真题', '某网络拓扑如题 47 图所示，R 为路由器，S 为以太网交换机，AP 是 802.11 接入点，路由器的 E0 接口和 DHCP 服务器的 IP 地址配置如图中所示；H1 与 H2 属于同一个广播域，但不属于同一个冲突域；H2 和 H3 属于同一个冲突域；H4 和 H5 已经接入网络，并通过 DHCP 动态获取了 IP 地址。现有路由器、100BaseT 以太网交换机和 100BaseT 集线器 (Hub) 三类设备各若干台。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/deaa4f07771b4570a28f4538b21dd79b.svg)
请回答下列问题。', '[]', '', '1）设备 1 选择 100 BaseT 以太网交换机，设备 2 选择 100 BaseT 集线器。因为物理层设备既不
能隔离冲突域也不能隔离广播域，链路层设备可以隔离冲突域但不能隔离广播域。
2）假设 H2 与 H3 之间的最远距离是 D，根据 CSMA/CD 协议的限制条件：
最短帧长 = 总线传播时延 × 数据传输速率 × 2
本题中由于使用 100 BaseT 局域网标准，所以数据传输速率为 100Mbps，总线传播时延由
两部分组成，一部分是信号传播时延，另一部分是信号通过设备 2 时产生的额外 1.51μs
时间延迟。代入公式为 64 B = (1.51 us + D / (2 × 10⁸ m/s)) × 100 Mbps × 2，注意单位换算，最终解得 D = 210m。
3）M 是 DHCP 发现报文（Discover报文）。路由器 E0 接口能收到封装 M 的以太网帧，由于 H4 发送的 DHCP 发现报文是广播的形式，所以同一个广播域内的所有设备和接口都可
以收到该以太网帧。由于是广播帧，所以目的 MAC 地址是全 1，S 向 DHCP 服务器转发
的封装 M 的以太网帧的目的 MAC 地址是 FF-FF-FF-FF-FF-FF。
4）在 H5 收到的帧中，地址 1、地址 2 和地址 3 分别是 00-11-11-11-11-E1、00-11-11-11-11-C1
和 0011-11-11-11-D1。该帧来自 AP，地址 1 代表接收端的地址，地址 2 代表 AP 的地址，
地址 3 是发送端的地址。
', 9, 'Mogullzr', '2026-02-01 23:12:20', 9, NULL, '2026-02-01 23:12:20', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1224', '3957');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1172', '3957');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1256', '3957');
