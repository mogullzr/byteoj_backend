INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3629, '2016年408考研真题第1题', '简单', '2016年408真题', '已知表头元素为 c 的单链表在内存中的存储状态如下表所示。现将 f 存放于 1014H 处并插入单链表，若 f 在逻辑上位于 a 和 e 之间，则 a,e,f 的 “链接地址” 依次是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/c81afd53dd334f1c9a32aa295fb93cbe.svg)
', '[''1010H，1014H，1004H'', ''1010H，1004H，1014H'', ''1014H，1010H，1004H'', ''1014H，1004H，1010H'']', "['D']", 'D</font></strong>
根据存储状态，单链表的结构如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/95c4f5ba8b8d47c6b6f59468df9fa363.svg)
其中“链接地址”是指结点 next 所指的内存地址。当结点 f 插入后，a 指向 f, f 指向 e, e 指向 b。显然 a、e 和 f 的“链接地址”分别是 f、b 和 e 的内存地址，即 1014H、1004H 和 1010H。', 9, 'Mogullzr', '2026-02-01 23:09:44', 9, NULL, '2026-02-01 23:09:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1130', '3629');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3630, '2016年408考研真题第2题', '简单', '2016年408真题', '已知一个带有表头结点的双向循环链表`L`，结点结构为`prev|data|next`，`prev`和`next`分别是指向其直接前驱和直接后继结点的指针。现要删除指针`p`所指的结点，正确的语句序列是（ ）。', '[''`p->next->prev = p->prev; p->prev->next = p->prev; free(p);`'', ''`p->next->prev = p->next; p->prev->next = p->next; free(p);`'', ''`p->next->prev = p->next; p-> prev->next = p->prev; free(p);`'', ''`p->next->prev = p->prev; p->prev->next = p->next; free(p);`'']', "['D']", 'D</font></strong>
参考单链表删除操作，这种题为送分题。', 9, 'Mogullzr', '2026-02-01 23:09:45', 9, NULL, '2026-02-01 23:09:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1130', '3630');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3631, '2016年408考研真题第3题', '简单', '2016年408真题', '设有下图所示的火车车轨，入口到出口之间有 n 条轨道，列车的行进方向均为从左至右，列车可驶入任意一条轨道。现有编号为 1-9 的 9 列列车，驶入的次序依次是 8, 4, 2, 5, 3, 9, 1, 6, 7。若期望驶出的次序依次为 1~9，则 n 至少是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/2944cbda64c34735bd19a130d88cac5b.svg)
', '[''2'', ''3'', ''4'', ''5'']', "['C']", 'C</font></strong>
在确保队列先进先出原则的前提下。根据题意具体分析：入队顺序为 8, 4, 2, 5, 3, 9, 1, 6, 7，出队顺序为 1~9。入口和出口之间有多个队列（n 条轨道），且每个队列（轨道）可容纳多个元素（多列列车）。如此分析：显然先入队的元素必须小千后入队的元素（如果 8 和 4 入同一队列，8 在前 4 在后，那么出队时只能是 8 在前 4 在后），这样 8 入队列 1，4 入队列 2, 2 入队列 3，5 入队列 2（按照前面的原则“大的元素在小的元素后面”也可以将 5 入队列 3，但这时剩下的元素 3 就必须放到一个新的队列里面，无法确保”至少“，本应该是将 5 入队列 2，再将 3 入队列 3，不增加新队列的情况下，可以满足题意“至少”的要求），3 入队列 3，9 入队列 1，这时共占了 3 个队列，后面还有元素 1，直接再占用一个新的队列 4，1 从队列 4 出队后，剩下的元素 6 和 7 或者入队到队列 2 或者入队到队列 3（为简单起见我们不妨设 n 个队列的序号分别为 1, 2, …, n），这样就可以满足题目的要求。综上，共占用了 4 个队列。当然还有其他的入队出队的情况，请考生们自己推演。但要确保满足：O 队列中后面的元素大千前面的元素；@确保占用最少（即
满足题目中的“至少") 的队列。', 9, 'Mogullzr', '2026-02-01 23:09:47', 9, NULL, '2026-02-01 23:09:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1142', '3631');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3632, '2016年408考研真题第4题', '简单', '2016年408真题', '有一个 100 阶的三对角矩阵$M$，其元素$m_{i,j}(1 ≤ i ≤ 100, 1 ≤ j ≤ 100)$按行优先依次压缩存入下标从 0 开始的一维数组 N 中。元素$m_{30,30}$在数组 N 中的下标是（ ）。', '[''86'', ''87'', ''88'', ''89'']', "['B']", 'B</font></strong>
参考三对角矩阵，采用压缩存储，将 3 条对角线上的元素按行优先方式存放在一 维数组 B 中，且$a_{1,1}$存放于 B[0] 中，其存储形式如下所示：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/35f4688da09a44a6896991e423686b0d.jpg)
可以计算矩阵 A 中 3 条对角线上的元素$a_{i,j}$($1 ≤ i, j ≤ n, ∣i - j∣ ≤ 1$) 在一维数组 B 中存放的下标为$k = 2i + j - 3$。解法一：针对该题，仅需将数字逐一代入公式里面即可：k=2x30+30-3 = 87, 结果为 87。解法二：观察上图的三对角矩阵不难发现，第一行有两个元素，剩下的在元素$m_{30,30}$所在行之前的 28 行（注意下标$1 ≤ i ≤ 100$、$1 ≤ j ≤ 100$）中每行都有 3 个元素，而$m_{30,30}$之前仅有一个元素$m_{30,29}$, 那么不难发现元素$m_{30,30}$在数组 N 中的下标是：2+28x3+2-1 = 87。', 9, 'Mogullzr', '2026-02-01 23:09:47', 9, NULL, '2026-02-01 23:09:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1258', '3632');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1259', '3632');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3633, '2016年408考研真题第5题', '简单', '2016年408真题', '若森林 F 有 15 条边、25 个结点，则 F 包含树的个数是（ ）。', '[''8'', ''9'', ''10'', ''11'']', "['C']", 'C</font></strong>
解法一：树有一个很重要的性质：在 n 个结点的树中有 n-1 条边，“那么对于每棵树，其结点数比边数多 1”。题中的森林中的结点数比边数多 10（即 25-15=10），显然共有 10 棵树。解法二：若考生再仔细分析可发现，此题也是考察图的某些方面的性质：生成树和生成森林。此时对于图的生成树有一个重要的性质：若图中顶点数为 n，则它的生成树含有 n-1 条边。对比解法一中树的性质，不难发现两种解法都利用到了“树中结点数比边数多 1”的性质，接下来的分析如解法一。', 9, 'Mogullzr', '2026-02-01 23:09:48', 9, NULL, '2026-02-01 23:09:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1260', '3633');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3634, '2016年408考研真题第6题', '简单', '2016年408真题', '下列选项中，不是下图深度优先搜索序列的是（）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/569b22a0167541ef8b707ead881c90b3.jpg)
', '[''$V_{1}, V_{5}, V_{4}, V_{3}, V_{2}$'', ''$V_{1}, V_{3}, V_{2}, V_{5}, V_{4}$'', ''$V_{1}, V_{2}, V_{5}, V_{4}, V_{3}$'', ''$V_{1}, V_{2}, V_{3}, V_{4}, V_{5}$'']', "['D']", 'D</font></strong>
对于本题，只需按深度优先遍历的策略进行遍历即可。对千选项 A: 先访问$V_{1}$, 然后访问
与$V_{1}$邻接且未被访问的任一顶点（满足的有$V_{2}$、$V_{3}$和$V_{5}$）, 此时访问$V_{5}$, 然后从$V_{5}$出发，访
问与$V_{5}$邻接且未被访问的任一顶点（满足的只有$V_{4}$）, 然后从$V_{4}$出发，访问与$V_{4}$邻接且未被
访问的任一顶点（满足的只有$V_{3}$），然后从$V_{3}$出发，访问与$V_{3}$邻接且未被访问的任一顶点（满足的只有$V_{2}$）, 结束遍历。选项 B 和 C 的分析方法与选项 A 相同，不再赘述。对千选项 D, 首
先访问$V_{1}$, 然后从$V_{1}$出发，访问与$V_{1}$邻接且未被访问的任一顶点（满足的有$V_{2}$、$V_{3}$和$V_{5}$）,
然后从$V_{2}$出发，访问与$V_{2}$邻接且未被访问的任一顶点（满足的只有$V_{5}$）, 按规则本应该访问$V_{5}$, 但选项 D 却访问$V_{3}$, 因此 D 错误。', 9, 'Mogullzr', '2026-02-01 23:09:50', 9, NULL, '2026-02-01 23:09:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1199', '3634');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1261', '3634');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3635, '2016年408考研真题第7题', '简单', '2016年408真题', '若将 n 个顶点 e 条弧的有向图采用邻接表存储，则拓扑排序算法的时间复杂度是（）', '[''$O(n)$'', ''$O(n + e)$'', ''$O(n2)$'', ''$O(n ∗ e)$'']', "['B']", 'B</font></strong>
根据拓扑排序的规则，输出每个顶点的同时还要删除以它为起点的边，这样对各顶点和边都要进行遍历，故拓扑排序的时间复杂度为$O(n + e)$。', 9, 'Mogullzr', '2026-02-01 23:09:50', 9, NULL, '2026-02-01 23:09:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '3635');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1262', '3635');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1146', '3635');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3636, '2016年408考研真题第8题', '简单', '2016年408真题', '使用迪杰斯特拉（Djkstra）算法求下图中从顶点 1 到其他各顶点的最短路径，依次得到的各最短路径的目标顶点是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/37b38fc45df84ca588fd32ec7066eb19.svg)
', '[''$5, 2, 3, 4, 6$'', ''$5, 2, 3, 6, 4$'', ''$5, 2, 4, 3, 6$'', ''$5, 2, 6, 3, 4$'']', "['B']", 'B</font></strong>
根据 Dijkstra 算法，从顶点 1 到其余各顶点的最短路径如下表所示。
| 顶点 | 第 1 趟 | 第 2 趟 | 第 3 趟 | 第 4 趟 | 第 5 趟 |
| --- | --- | --- | --- | --- | --- |
| 2 | 5 v1​→v2​ | 5 v1​→v2​ |  |  |  |
| 3 | ∞ | ∞ | 7 v1​→v2​→v3​ |  |  |
| 4 | ∞ | 11 v1​→v5​→v4​ | 11 v1​→v5​→v4​ | 11<br>v1​→v5​→v4​ | 11 v1​→v5​→v4​ |
| 5 | 4 v1​→v5​ |  |  |  |  |
| 6 | ∞ | 9 v1​→v5​→v6​ | 9 v1​→v5​→v6​ | 9 v1​→v5​→v6​ |  |
| 集合 S | {1, 5} | {1, 5, 2} | {1, 5, 2, 3} | {1, 5, 2, 3, 6} | {1, 5, 2, 3, 6, 4} |
', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1129', '3636');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3637, '2016年408考研真题第9题', '简单', '2016年408真题', '在有 n(n>1000) 个元素的升序数组 A 中查找关键字 x。查找算法的伪代码如下所示。
```c
k = 0;
while (k < n 且 A[k] < x) k = k + 3;
if (k < n 且 A[k] == x) 查找成功；
else if (k - 1 < n 且 A[k - 1] == x) 查找成功；
else if (k - 2 < n 且 A[k - 2] == x) 查找成功；
else 查找失败；
```
本算法与折半查找算法相比，有可能具有更少比较次数的情形是（）', '[''当 x 不在数组中'', ''当 x 接近数组开头处'', ''当 x 接近数组结尾处'', ''当 x 位于数组中间位置'']', "['B']", 'B</font></strong>
此题为送分题。该程序采用跳跃式的顺利查找法查找升序数组中的 X, 显然是 x 越靠前，比较次数才会越少。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1147', '3637');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3638, '2016年408考研真题第10题', '简单', '2016年408真题', 'B+ 树不同于 B 树的特点之一是（）', '[''能支持顺序查找'', ''结点中含有关键字'', ''根结点至少有两个分支'', ''所有叶结点都在同一层上'']', "['A']", 'A</font></strong>
由于B+ 树的所有叶结点中包含了全部的关键字信息，且叶结点本身依关键字从小到大顺序
链接，可以进行顺序查找，而 B 树不支持顺序查找（只支持多路查找）。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '3638');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1263', '3638');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3639, '2016年408考研真题第11题', '简单', '2016年408真题', '对 10TB 的数据文件进行排序，应使用的方法是（）', '[''希尔排序'', ''堆排序'', ''快速排序'', ''归并排序'']', "['D']", 'D</font></strong>
外部排序指待排序文件较大，内存一次性放不下，需存放在外部介质中。外部排序通常采用归并排序法。选项 A、B、C 都是内部排序的方法。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1264', '3639');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3640, '2016年408考研真题第12题', '简单', '2016年408真题', '将高级语言源程序转换为机器目标代码文件的程序是（ ）。', '[''汇编程序'', ''链接程序'', ''编译程序'', ''解释程序'']', "['C']", 'C</font></strong>
翻译程序是指把高级语言源程序转换成机器语言程序（目标代码）的软件。翻译程序有两种：一种是编译程序，它将高级语言源程序一次全部翻译成目标程序，每次执行程序时，只要执行目标程序，因此，只要源程序不变，就无须重新编译。另一种是解释程序，它将源程序的一条语旬翻译成对应的机器目标代码，并立即执行，然后翻译下一条源程序语句并执行，直至所有源程序语句全部被翻译并执行完。所以解释程序的执行过程是翻译一句执行一句，并且不会生成目标程序。汇编程序也是一种语言翻译程序，它把汇编语言源程序翻译为机器语言程序。汇编语言是一种面向机器的低级语言，是机器语言的符号表示，与机器语言一一对应。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1201', '3640');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3641, '2016年408考研真题第13题', '简单', '2016年408真题', '有如下 C 语言程序段
```c
short si = -32767;
unsigned short usi = si;
```
执行上述两条语句后，usi 的值为（ ）。', '[''-32767'', ''32767'', ''32768'', ''32769'']', "['D']", 'D</font></strong>
结合题干及选项可知，short 为 16 位。因 C 语言中的数据在内存中为补码表示，si 对应的补码二进制表示为：1000 0000 0000 0001B, 最前面的一位 “1” 为符号位，表示负数，即 -32767。由 signed 型转化为等长 unsigned 型数据时，符号位成为数据的一部分，也就是说，负数转化为无符号数（即正数），其数值将发生变化。usi 对应的补码二进制表示与 si 的表示相同，但表示正数，为 32769。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1098', '3641');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3642, '2016年408考研真题第14题', '简单', '2016年408真题', '某计算机字长为 32 位，按字节编址，采用小端 (Little Endian) 方式存放数据，假定有一个 double 型变量，其机器数表示为 1122 3344 5566 7788H 存放在 0000 8040H 开始的连续存储单元中，则存储单元 0000 8046H 中存放的是（ ）。', '[''22H'', ''33H'', ''66H'', ''77H'']', "['A']", 'A</font></strong>
大端模式：一个字中的高位字节（Byte）存放在内存中这个字区域的低地址处。小端方式：一个字中的低位字节（Byte）存放在内存中这个字区域的低地址处。依此分析，各字节的存储分配如下表所示。
|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 地址 | 00008040H | 00008041H | 00008042H | 00008043H |
| 内容 | 88H | 77H | 66H | 55H |
| 地址 | 00008044H | 00008045H | 00008046H | 00008047H |
| 内容 | 44H | 33H | 22H | 11H |
从而存储单元 0000 804 6H 中存放的是 22H。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1265', '3642');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3643, '2016年408考研真题第15题', '简单', '2016年408真题', '有如下 C 语言程序段：
```c
for (k = 0; k < 1000; k++)
    a[k] = a[k] + 32;
```
若数组 a 以及变量 k 均为 int 型，int 型数据占 4B，数据 Cache 采用直接映射方式，数据区大小是 1KB，块大小是 16B，该程序段执行前 Cache 为空，则该程序段执行过程中，访问数组 a 的 Cache 的缺失率是（ ）。', '[''1.25%'', ''2.5%'', ''12.5%'', ''25%'']', "['C']", 'C</font></strong>
分析语旬`a[k] = a[k] + 32`: 首先读取`a[k]`需要访问一次`a[k]`，之后将结果赋值给`a[k]`需要访问一次，共访问两次。第一次访问`a[k]`未命中，并将该字所在的主存块调入 Cache 对应的块中，对于该主存块中的 4 个整数的两次访问中只在访问第一次的第一 个元素时发生缺失，其他
的 7 次访问中全部命中，故该程序段执行过程中访问数组 a 的 Cache 缺失率约为 1/8（即 12.5%）。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3643');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1101', '3643');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3644, '2016年408考研真题第16题', '简单', '2016年408真题', '某存储器容量为 64KB，按字节编址，地址 4000H～5FFFH 为 ROM 区，其余为 RAM 区。若采用 8K×4 位的 SRAM 芯片进行设计，则需要该芯片的数量是（ ）。', '[''7'', ''8'', ''14'', ''16'']', "['C']", 'C</font></strong>
参考主存容量的扩展，5FFFH - 4000H + 1 = 2000H，即 ROM 区容量为$2^{13}$B = 8KB（2000H =$2 × 16^{3} = 2^{13}$），RAM 区容量为 56KB（64KB-8KB=56KB），则需要 8 Kx4 位的 SRAM 芯片的数量为 14（56KB/(8Kx4bit)=14）。', 9, 'Mogullzr', '2026-02-01 23:09:52', 9, NULL, '2026-02-01 23:09:52', 1, 1);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3645, '2016年408考研真题第17题', '简单', '2016年408真题', '某指令格式如下所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/8a2b9542f2c54297a9a7885c195a7125.svg)
其中`M`为寻址方式，`I`为变址寄存器编号，`D`为形式地址。若采用先变址后间址的寻址方式，则操作数的有效地址是（ ）。', '[''`I+D`'', ''`(I)+D`'', ''`((I)+D)`'', ''`((I))+D`'']', "['C']", 'C</font></strong>
变址寻址中，有效地址 EA 等于指令字中的形式地址 D 与变址寄存器 I 的内容相加之和，即 EA= (I)+ D。间接寻址是相对于直接寻址而言的，指令的地址字段给出的形式地址不是操作数的真正地址，而是操作数地址的地址，即 EA=(D)。从而该 操作数的有效地址是 ((I)+ D)。', 9, 'Mogullzr', '2026-02-01 23:09:54', 9, NULL, '2026-02-01 23:09:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1103', '3645');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3646, '2016年408考研真题第18题', '简单', '2016年408真题', '某计算机主存空间为 4GB，字长为 32 位，按字节编址，采用 32 位定长指令字格式，若指令按字边界对齐存放，则程序计数器 (PC) 和指令寄存器 (IR) 的位数至少分别是（ ）。', '[''30、30'', ''30、32'', ''32、30'', ''32、32'']', "['B']", 'B</font></strong>
程序计数器（PC）给出下一条指令字的访存地址（指令在内存中的地址），取决于存储器的字数（4 GB / 32bit = 2³⁰），故程序计数器（PC）的位数至少是 30 位；指令寄存器（IR）用于接收取得的指令，取决于指令字长（32 位），故指令寄存器（IR) 的位数至少为 32 位。', 9, 'Mogullzr', '2026-02-01 23:09:54', 9, NULL, '2026-02-01 23:09:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3646');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3647, '2016年408考研真题第19题', '简单', '2016年408真题', '在无转发机制的五段基本流水线中，下列指令序列存在数据冒险的指令对是（ ）。
```c
I1: add R1, R2, R3;         // (R2)+(R3)→R1
I2: add R5, R2, R4;         // (R2)+(R4)→R5
I3: add R4, R5, R3;         // (R5)+(R3)→R4
I4: add R5, R2, R6;         // (R2)+(R6)→R5
```
', '[''I1 和 I2'', ''I2 和 I3'', ''I2 和 I4'', ''I3 和 I4'']', "['B']", 'B</font></strong>
数据冒险，即数据相关，指在一个程序中存在必须等前一条指令执行完才能执行后一条指令的情况，则 这两条指令即为数据相关。当多条指令重叠处理时就会发生冲突。首先这两条指令发生写后读相关，并且两条指令在流水线中执行情况（发生数据冒险）如下表所示：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/b6467e8ddde24def9db92200854f0f0b.svg)
指令 I2 在时钟 5 时将结果写入寄存器 (R5)，但指令 I3 在时钟 3 时读寄存器（R5）。本来指令 I2 应先写入 R5，指令 I3 后读 R5，结果变成指令 I3 先读 R5，指令 12 后写入 R5，因而发生数据冲突。', 9, 'Mogullzr', '2026-02-01 23:09:54', 9, NULL, '2026-02-01 23:09:54', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1151', '3647');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3648, '2016年408考研真题第20题', '简单', '2016年408真题', '单周期处理器中所有指令的指令周期为一个时钟周期。下列关干单周期处理器的叙述中，错误的是（ ）。', '[''可以采用单总线结构数据通路'', ''处理器时钟频率较低'', ''在指令执行过程中控制信号不变'', ''每条指令的 CPI 为 1'']', "['A']", 'A</font></strong>
本题考察对 CPU 时钟周期的理解。时钟周期：又称节拍周期，是处理操作的最基本单位。时钟周期是计算机中最基本的、最小的时间单位。在一个时钟周期内，CPU 仅完成一个最基本的动作。时钟周期是一个时间的量。单总线结构将 CPU、主存、I/O 设备都挂在一组总线上，允许 I/O 设备之间、I/O 设备与主存之间直接交换信息，但多个部件只能争用唯一的总线，且不支持并发传送操作，会造成总线冲突。单周期处理器不可以采用单总线结构数据通路。A 错误。假设一条指令分为五段①IF 取值②ID 译码和取数③EX 执行④M 访存⑤WB，每段执行需要一个时钟周期，若要在一个时钟周期内完成该指令，则需要 5 条总线并行，单总线显然无法满足要求，若要在单总线上完成，则需要串行执行 5 个时钟周期。单周期处理器采用单总线结构数据通路，好比上班高峰交通要道限速又限流，直接造成交通堵塞。因为要考虑比较慢的指令，所以处理器的时钟频率较低，B 正确。因为在一个时钟周通常为一个节拍脉冲，控制信号时控制单元 (CU) 根据指令操作码发出的信号，一个时钟周期内的控制信号不变，单周期处理器中所有指令的指令周期为一个时钟周期，在指令执行过程中控制信号不变。C 正确。因为单周期处理器即指所有指令的指令周期为一个时钟周期，所以每条指令的 CPI 为 1。D 正确。本题选 A。', 9, 'Mogullzr', '2026-02-01 23:09:55', 9, NULL, '2026-02-01 23:09:55', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1266', '3648');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1267', '3648');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3649, '2016年408考研真题第21题', '简单', '2016年408真题', '下列关于总线设计的叙述中的叙述中，错误的是（ ）。', '[''并行总线传输比串行总线传输速度快'', ''采用信号线复用技术可减少信号线数量'', ''采用突发传输方式可提高总线数据传输率'', ''采用分离事务通信方式可提高总线利用率'']', "['A']", 'A</font></strong>
并行总线传输通常比串行总线传输速度快，但这不是绝对的。在实际时钟频率比较低的情况下，并行总线因为可以同时传输若干比特，速率确实比串行总线快。但是，随着技术的发展，时钟频率越来越高，并行导线之间的相互干扰越来越严重，当时钟频率提高到一定程度时，传输的数据已经无法恢复。而串行总线因为导线少，线间干扰容易控制，反而可以通过不断提高时钟频率来提高传输速率。A错误。总线复用是指一种信号线在不同的时间传输不同的信息。可以使用较少的线路传输更多的信息，从而节省了空间和成本。B正确。突发（猝发）传输是在一个总线周期中，可以传输多个存储地址连续的数据，即一次传输一个地址和一批地址连续的数据。C正确。分离事务通信即总线复用的一种，相比单一的传输线路可以提高总线的利用率。D正确。本题选A。', 9, 'Mogullzr', '2026-02-01 23:09:56', 9, NULL, '2026-02-01 23:09:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1204', '3649');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3650, '2016年408考研真题第22题', '简单', '2016年408真题', '异常是指令执行过程中在处理器内部发生的特殊事件，中断是来自处理器外部的请求事件。下列关于中断或异常情况的叙述中，错误的是（ ）。', '[''“访存时缺页” 属于中断'', ''“整数除以 0” 属于异常'', ''“DMA 传送结束” 属于中断'', ''“存储保护错” 属于异常'']', "['A']", 'A</font></strong>
中断是指来自 CPU 执行指令以外事件的发生，如设备发出的 I/O 结束中断，表示设备输入/输出处理已经完成，希望处理机能够向设备发出下一个输入/输出请求，同时让完成输入/输出后的程序继续运行。时钟中断，表示一个固定的时间片已到，让处理机处理计时、启动定时运行的任务等。这一类中断通常是与当前程序运行无关的事件，即它们与当前处理机运行的程序无关。异常也称内中断、例外或陷入（Trap），指源自 CPU 执行指令内部的事件，如程序的非法操作码、地址越界、算术溢出、虚存系统的缺页以及专门的陷入指令等引起的事件。A 错误。', 9, 'Mogullzr', '2026-02-01 23:09:56', 9, NULL, '2026-02-01 23:09:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '3650');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3651, '2016年408考研真题第23题', '简单', '2016年408真题', '下列关于批处理系统的叙述中，正确的是（  ）Ⅰ.批处理系统允许多个用户与计算机直接交互Ⅱ.批处理系统分为单道批处理系统和多道批处理系统Ⅲ.中断技术使得多道批处理系统和 I/O 设备可与 CPU 并行工作', '[''仅Ⅱ、Ⅲ'', ''仅Ⅱ'', ''仅Ⅰ、Ⅱ'', ''仅Ⅰ、Ⅲ'']', "['A']", 'A</font></strong>
本题考察操作系统发展历程。批处理系统中，作业执行时用户无法干预其运行，只能通过事先配置作业控制来间接干预，缺少交互能力，也因此才发展出分时系统，I 错误。批处理系统按发展历程又分为单道批处理系统、多道批处理系统，II 正确。多道程序设计技术允许同时把多个程序放入内存，并允许它们交替在 CPU 中运行，它们共享系统中的各种硬、软件资源，当 一道程序因 1/0 请求而暂停运行时，CPU 便立即转去运行另 一道程序，即多道批处理系统的 1/0 设备可与 CPU 并行工作，这都是借助于中断技术实现的，III 正确。', 9, 'Mogullzr', '2026-02-01 23:09:56', 9, NULL, '2026-02-01 23:09:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1110', '3651');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3652, '2016年408考研真题第24题', '简单', '2016年408真题', '某单 CPU 系统中有输入和输出设备各 1 台，现有 3 个并发执行的作业，每个作业的输入、计算和输出时间均分别为 2ms，3ms 和 4ms，且都按输入、计算和输出的顺序执行，则执行完 3 个作业需要的时间最少是（）。', '[''15ms'', ''17ms'', ''22ms'', ''27ms'']', "['B']", 'B</font></strong>
这类调度题目最好画图。因 CPU、输入设备、输出设备都只有一个，因此各操作步骤不能重叠，画出运行时的甘特图后就能清楚地看到不同作业间的时序关系，如下表所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/eeb45d233bed4a7cb228e14623b648a1.svg)
', 9, 'Mogullzr', '2026-02-01 23:09:56', 9, NULL, '2026-02-01 23:09:56', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1223', '3652');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3653, '2016年408考研真题第25题', '简单', '2016年408真题', '系统中有$3$个不同的临界资源$R_{1}$、$R_{2}$和$R_{3}$，被$4$个进程$p_{1}$、$p_{2}$、$p_{3}$及$p_{4}$共享。各进程对资源的需求为：$p_{1}$申请$R_{1}$和$R_{2}$，$p_{2}$申请$R_{2}$和$R_{3}$，$p_{3}$申请$R_{1}$和$R_{3}$，$p_{4}$申请$R_{2}$。若系统出现死锁，则处于死锁状态的进程数至少是（ ）。', '[''1'', ''2'', ''3'', ''4'']', "['C']", 'C</font></strong>
对于本题，先满足一个进程的资源需求，再看其他进程是否能出现死锁状态。因为$p_{4}$只申请一个资源，当将$R_{2}$分配给$p_{4}$后，$p_{4}$执行完后将$R_{2}$释放，这时使得系统满足死锁的条件是$R_{1}$分配给$p_{1}$，$R_{2}$分配给$p_{2}$，$R_{3}$分配给$p_{3}$（或者$R_{2}$分配给$p_{1}$，$R_{3}$分配给$p_{2}$，$R_{1}$分配给$p_{3}$）。穷举其他情况如$p_{1}$申请的资源$R_{1}$和$R_{2}$，先都分配给$p_{1}$，运行完并释放占有的资源后，可以分别将$R_{1}$、$R_{2}$和$R_{3}$分配给$p_{3}$、$p_{4}$和$p_{2}$，也满足系统死锁的条件。各种情况需要使得处于死锁状态的进程数至少为 3。', 9, 'Mogullzr', '2026-02-01 23:09:57', 9, NULL, '2026-02-01 23:09:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1268', '3653');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1269', '3653');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3654, '2016年408考研真题第26题', '简单', '2016年408真题', '某系统采用改进型 CLOCK 置换算法，页表项中字段 A 为访问位，M 为修改位。A=0 表示页最近没有被访问，A=1 表示页最近被访问过。M=0 表示页没有被修改过，M=1 表示页被修改过。按 (A, M) 所有可能的取值，将页分为四类：(0, 0)、(1, 0)、(0, 1) 和 (1, 1)，则该算法淘汰页的次序为（ ）。', '[''(0, 0), (0, 1), (1,0), (1, 1)'', ''(0, 0), (1, 0), (0, 1), (1, 1)'', ''(0, 0), (0, 1), (1, 1), (1, 0)'', ''(0, 0), (1, 1), (0, 1), (1, 0)'']', "['A']", 'A</font></strong>
改进型 Clock也称为<strong><font color=''#2656b3''>“二次机会（Second-Chance）算法的增强版”</font></strong>，依据页的访问位`A`和修改位`M`将页分成四类：- `(0, 0)`：最近未被访问，未被修改 ——<strong><font color=''#2656b3''><strong><font color=''#2656b3''>优先淘汰</font></strong></font></strong>
- `(0, 1)`：最近未被访问，但被修改 —— 淘汰代价较大（需写回磁盘），<strong><font color=''#2656b3''><strong><font color=''#2656b3''>次优先</font></strong></font></strong>
- `(1, 0)`：最近被访问，未被修改 —— 说明该页仍有用，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>再次保留</font></strong></font></strong>
- `(1, 1)`：最近被访问，已被修改 —— 最不愿意淘汰因此，<strong><font color=''#2656b3''>淘汰顺序</font></strong>是按照代价和“是否有用”排序的：👉<strong><font color=''#2656b3''>(0, 0) < (0, 1) < (1, 0) < (1, 1)</font></strong>✅ 正确答案是：<strong><font color=''#2656b3''>A. (0, 0), (0, 1), (1, 0), (1, 1)</font></strong>', 9, 'Mogullzr', '2026-02-01 23:09:57', 9, NULL, '2026-02-01 23:09:57', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1253', '3654');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1270', '3654');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3655, '2016年408考研真题第27题', '简单', '2016年408真题', '使用 TSL (Test and Set Lock) 指令实现进程互斥的伪代码如下所示。
```c
do {
    ...
    while (TSL(&lock));
    critical section;
    lock = FALSE;
    ...
} while (TRUE);
```
下列与该实现机制相关的叙述中，正确的是（ ）。', '[''退出临界区的进程负责唤醒阻塞态进程'', ''等待进入临界区的进程不会主动放弃 CPU'', ''上述伪代码满足“让权等待”的同步准则'', ''`while (TSL(&lock))`应在关中断状态下执行'']', "['B']", 'B</font></strong>
本题考察硬件互斥，当进程退出临界区时置 lock 为 FALSE，会负责唤醒处于就绪状态的进程，A 错误。若等待进入临界区的进程会一直停留在执行`while(TSL(&lock))`的循环中，不会主动放弃 CPU, B 正确。让权等待，即当进程不能进入临界区时，应立即释放处理器，防止进程忙等待。通过 B 选项的分析中发现上述伪代码并不满足“让权等待”的同步准则，C 错误。若`while(TSL(&lock))`在关中断状态下执行，当`TSL(&lock)`一直为 true 时，不再开中断，则系统可能会因此终止，D 错误。', 9, 'Mogullzr', '2026-02-01 23:09:58', 9, NULL, '2026-02-01 23:09:58', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1271', '3655');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3656, '2016年408考研真题第28题', '简单', '2016年408真题', '某进程的段表内容如下所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/6ea24d87a9f841f4b5b20a15899b9aca.svg)
当访问段号为 2、段内地址为 400 的逻辑地址时，进行地址转换的结果是（ ）。', '[''段缺失异常'', ''得到内存地址 4400'', ''越权异常'', ''越界异常'']', "['D']", 'D</font></strong>
分段系统的逻辑地址 A 到物理地址 E 之间的地址变换过程参考该节。题目中段号为 2 的段长为 300，小于段内地址为 400，故发生越界异常，D 正确。', 9, 'Mogullzr', '2026-02-01 23:09:59', 9, NULL, '2026-02-01 23:09:59', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1137', '3656');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1272', '3656');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3657, '2016年408考研真题第29题', '简单', '2016年408真题', '某进程访问页面的序列如下所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/2d89b36f7b8f4f2aae1d429222cae533.svg)
若工作集的窗口大小为 6，则在 t 时刻的工作集为（ ）。', '[''{6, 0, 3, 2}'', ''{2, 3, 0, 4}'', ''{0, 4, 3, 2, 9}'', ''{4, 5, 6, 0, 3, 2}'']', "['A']", 'A</font></strong>
在任一时刻 t，都存在一个集合，它包含所有最近 k 次（该题窗口大小为 6）内存访问所访问过的页面。这个集合 w(k, t) 就是工作集。该题中最近 6 次访问的页面分别为 6, 0, 3, 2, 3, 2, 再去除重复的页面，形成的工作集为 {6, 0, 3, 2}。', 9, 'Mogullzr', '2026-02-01 23:10:00', 9, NULL, '2026-02-01 23:10:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1213', '3657');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3658, '2016年408考研真题第30题', '简单', '2016年408真题', '进程 P1 和 P2 均包含并发执行的线程，部分伪代码描述如下所示。进程 P1
```c
int x = 0;
Thread1()
{
    int a;
    a = 1; x += 1;
}
Thread2()
{
    int a;
    a = 2; x += 2;
}
```

进程 P2
```c
int x = 0;
Thread3()
{
    int a;
    a = x; x += 3;
}
Thread4()
{
    int b;
    b = x; x += 4;
}
```

下列选项中，需要互斥执行的操作是（ ）。', '[''a=1 与 a=2'', ''a=x 与 b=x'', ''x+=1 与 x+=2'', ''x+=1 与 x+=3'']', "['C']", 'C</font></strong>
P1 中对 a 进行赋值，并不影响最终的结果，故 a = l 与 a = 2 不需要互斥执行；a = x 与 b = x 执行先后不影响 a 与 b 的结果，无须互斥执行；x+=1 与 x+=2 执行先后会影响 x 的结果，需要互斥执行；P1 中的 x 和 P2 中的 x 是不同范围中的 X，互不影响，不需要互斥执行。', 9, 'Mogullzr', '2026-02-01 23:10:00', 9, NULL, '2026-02-01 23:10:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1273', '3658');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3659, '2016年408考研真题第31题', '简单', '2016年408真题', '下列关于 SPOOLing 技术的叙述中，错误的是（ ）。', '[''需要外存的支持'', ''需要多道程序设计技术的支持'', ''可以让多个作业共享一台独占设备'', ''由用户作业控制设备与输入/输出井之间的数据传送'']', "['D']", 'D</font></strong>
SPOOLing是利用专门的外围控制机，将低速 I/O 设备上的数据传送到高速磁盘上，或者相反。SPOOLing 的意思是外部设备同时联机操作，又称为假脱机输入／输出操作，是操作系统中采用的一项将独占设备改造成共享设备的技术。高速磁盘即外存，A 正确。SPOOLing 技术需要进行输入/输出操作，单道批处理系统无法满足，B 正确。SPOOLing 技术实现了将独占设备改造成共享设备的技术，C 正确。设备与输入／输出井之间数据的传送是由系统实现的，D 错误。', 9, 'Mogullzr', '2026-02-01 23:10:00', 9, NULL, '2026-02-01 23:10:00', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1274', '3659');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3660, '2016年408考研真题第32题', '简单', '2016年408真题', '下列关于管程的叙述中，错误的是（ ）。', '[''管程只能用于实现进程的互斥'', ''管程是由编程语言支持的进程同步机制'', ''任何时候只能有一个进程在管程中执行'', ''管程中定义的变量只能被管程内的过程访问'']', "['A']", 'A</font></strong>
管程是由一组数据以及定义在这组数据之上的对这组数据的操作组成的软件模块，这组操作能初始化并改变管程中的数据和同步进程。管程不仅能实现进程间的互斥，而且能实现进程间的同步，故 A 错误、B 正确。管程具有特性：①局部于管程的数据只能被局部于管程内的过程所访问；②一个进程只有通过调用管程内的过程才能进入管程访问共享数据；③每次仅允许一个进程在管程内执行某个内部过程，故 C 和 D 正确。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1275', '3660');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3661, '2016年408考研真题第33题', '简单', '2016年408真题', '在 OSI 参考模型中，R1、Switch、Hub 实现的最高功能层分别是（ ）。', '[''2、2、1'', ''2、2、2'', ''3、2、1'', ''3、2、2'']', "['C']", 'C</font></strong>
本题考察计算机网络设备，集线器是一个多端口的中继器，工作在物理层。以太网交换机是一个多端口的网桥，工作在数据链路层。路由器是网络层设备，它实现了网络模型的下三层，即物理层、数据链路层和网络层。题中 R1、Switch 和 Hub 分别是路由器、交换机和集线器，实现的最高层功能分别是网络层（即 3）、数据链路层（即 2）和物理层（即 1）。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1120', '3661');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1163', '3661');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3662, '2016年408考研真题第34题', '简单', '2016年408真题', '若连接 R2 和 R3 链路的频率带宽为 8 kHz，信噪比为 30 dB，该链路实际数据传输速率约为理论最大数据传输速率的 50％，则该链路的实际数据传输速率约是（ ）。', '[''8 kbps'', ''20 kbps'', ''40 kbps'', ''80 kbps'']', "['C']", 'C</font></strong>
本题考查的是香农定理，它给出了带宽受限信道的最大数据传输速率公式：
$$
C = B ⋅ \\log_{2}(1 + SNR)
$$
其中：- C：理论最大数据传输速率（单位：bps）
- B：信道带宽（单位：Hz）
- SNR：信噪比（<strong><font color=''#2656b3''><strong><font color=''#2656b3''>单位是比值</font></strong></font></strong>，不是 dB）<strong><font color=''#2656b3''>步骤 1：将 dB 转换为比值</font></strong>信噪比为 30 dB：
$$
SNR_{ratio} = 10^{30/10} = 10^{3} = 1000
$$
<strong><font color=''#2656b3''>步骤 2：带入香农公式计算最大数据速率</font></strong>
$$
C = 8000 ⋅ \\log_{2}(1 + 1000) ≈ 8000 ⋅ \\log_{2}(1001)
$$
利用换底公式（或估算）：
$$
\\log_{2}(1001) ≈ \\log_{2}(1024) = 10
$$
所以：
$$
C ≈ 8000 ⋅ 10 = 80000bps = 80kbps
$$
<strong><font color=''#2656b3''>步骤 3：实际传输速率为理论值的 50%</font></strong>
$$
实际速率 = 0.5 ⋅ 80kbps = 40kbps
$$
所以', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1239', '3662');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3663, '2016年408考研真题第35题', '简单', '2016年408真题', '若主机 H2 向主机 H4 发送 1 个数据帧，主机 H4 向主机 H2 立即发送一个确认帧，则除 H4 外，从物理层上能够收到该确认帧的主机还有（ ）。', '[''仅 H2'', ''仅 H3'', ''仅 H1、H2'', ''仅 H2、H3'']', "['D']", 'D</font></strong>
参考计算机网络设备，交换机可以隔离冲突域，但集线器无法隔离冲突域，因此从物理层上能够收到该确认帧的主机仅 H2、H3, 选项 D 正确。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1163', '3663');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3664, '2016年408考研真题第36题', '简单', '2016年408真题', '若 Hub 再生比特流过程中，会产生 1.535μs 延时，信号传播速度为 200m/μs，不考虑以太网帧的前导码，则 H3 与 H4 之间理论上可以相距的最远距离是（ ）。', '[''200 m'', ''205 m'', ''359 m'', ''512 m'']', "['B']", 'B</font></strong>
因为要解决理论上可以相距的最远距离，所以最远肯定要保证能检测到碰撞，而以太网规定最短帧长为 64B，其中 Hub 为 100Base-T 集线器，可知线路的传输速率为 100Mbps, 则单程传输时延为 64B/100Mbps/2 = 2.56μs，又 Hub 再产生比特流的过程中会导致延时 1.535μs，则单程的传播时延为 2.56μs- 1.535μs = 1.025μs，从而 H3 与 H4 之间理论上可以相距的最远距离为 200m/μs x 1.025μs = 205m。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1172', '3664');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3665, '2016年408考研真题第37题', '简单', '2016年408真题', '假设 R1、R2、R3 采用 RIP 协议交换路由信息，且均已收敛。若 R3 检测到网络 201.1.2.0/25 不可达，并向 R2 通告一次新的距离向量，则 R2 更新后，其到达该网络的距离是（ ）。', '[''2'', ''3'', ''16'', ''17'']', "['B']", 'B</font></strong>
因为 R3 检测到网络 201.1.2.0/25 不可达，故将到该网络的距离设置为 16（距离为 16 表示不可达）。当 R2 从 R3 收到路由信息时，因为 R3 到该网络的距离为 16，则 R2 到该网络也不可达，但此时记录 R1 可达（由千 RIP 的特点坏消息传得慢，R1 并没有收到 R3 发来的路由信息），R1 到该网络的距离为 2，再加上从 R2 到 Rl 的 l 就是 R2 到该网络的距离 3。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1276', '3665');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3666, '2016年408考研真题第38题', '简单', '2016年408真题', '假设连接 R1、R2 和 R3 之间的点对点链路使用 201.1.3.x/30 地址，当 H3 访问 Web 服务器 S 时，R2 转发出去的封装 HTTP 请求报文的 IP 分组的源 IP 地址和目的 IP 地址分别是（ ）。', '[''192.168.3.251，130.18.10.1'', ''192.168.3.251，201.1.3.9'', ''201.1.3.8，130.18.10.1'', ''201.1.3.10，130.18.10.1'']', "['D']", 'D</font></strong>
由题意知连接 R1、R2 和 R3 之间的点对点链路使用 201.1.3.x/30 地址，其子网掩码为 255.255.255.252，R1 的一 个接口的 IP 地址为 201.1.3.9，转换为对应的二进制的后 8 位为 0000 1001（由 201.1.3.x/30 知，IP 地址对应的二进制的后两位为主机号，而主机号全为 0 表示本网络本身，主机号全为 1 表示本网络的广播地址，不用于源 IP 地址或者目的 IP 地址），那么除 201.1.3.9 外，只有 IP 地址为 201.1.3.10 才可以作为源 IP 地址使用（本题为 201.1.3.10)。Web 服务器的 IP 地址为 130.18.10.1，作为 IP 分组的目的 IP 地址。综上可知，选项 D 正确。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1211', '3666');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3667, '2016年408考研真题第39题', '简单', '2016年408真题', '假设 H1 与 H2 的默认网关和子网掩码均分别配置为 192.168.3.1 和 255.255.255.128，H3 与 H4 的默认网关和子网掩码均分别配置为 192.168.3.254 和 255.255.255.128，则下列现象中可能发生的是（ ）。', '[''H1 不能与 H2 进行正常 IP 通信'', ''H2 与 H4 均不能访问 Internet'', ''H1 不能与 H3 进行正常 IP 通信'', ''H3 不能与 H4 进行正常 IP 通信'']', "['C']", 'C</font></strong>
从子网掩码可知 H1 和 H2 处于同一网段，H3 和 H4 处于同一网段，分别可以进行正常的 IP 通信，A 和 D 错误。因为 R2 的 E1 接口的 IP 地址为 192.168.3.254, 而 H2 的默认网关为 192.168.3.1，所以 H2 不能访问 Internet，而 H4 的默认网关为 192.168.3.254，所以 H4 可以正常访问 Internet，B 错误。由 H1、H2、H3 和 H4 的子网掩码可知 H1、H2 和 H3、H4 处于不同的网段，需通过路由器才能进行正常的 IP 通信，而这时 H1 和 H2 的默认网关为 192.168.3.1, 但 R2 的 E1 接口的 IP 地址为 192.168.3.254, 无法进行通信，从而 H1 不能与 H3 进行正常的 IP 通信。C 正确。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1140', '3667');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3668, '2016年408考研真题第40题', '简单', '2016年408真题', '假设所有域名服务器均采用迭代查询方式进行域名解析。当 H4 访问规范域名为 www.abc.xyz.com 的网站时，域名服务器 201.1.1.1 在完成该域名解析过程中，可能发出 DNS 查询的最少和最多次数分别是（ ）。', '[''0，3'', ''1，3'', ''0，4'', ''1，4'']', "['C']", 'C</font></strong>
最少情况下：当本机DNS 缓存中存有该域名的 DNS 信息时，则不 需要查询任何域名服务器，这样最少发出 0 次 DNS 查询。最多情况下：因为均采用迭代查询的方式，在最坏的情况下，需要依次迭代地向本地域名服务器、根域名服务器 (.com)、顶级域名服务器 (xyz.com)、权限域名服务器 (abc.xyz.com) 发出 DNS 查询 请求，因此 最多发出 4 次 DNS 查询。', 9, 'Mogullzr', '2026-02-01 23:10:01', 9, NULL, '2026-02-01 23:10:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1164', '3668');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3669, '2016年408考研真题第41题', '简单', '2016年408真题', '
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/44c21859e29f4d9a854524d021a836de.svg)
假设题 33～41 图中的 H3 访问 Web 服务器 S 时，S 为新建的 TCP 连接分配了 20 KB (K=1 024) 的接收缓存，最大段长 MSS=1 KB，平均往返时间 RTT=200 ms。H3 建立连接时的初始序号为 100，且持续以 MSS 大小的段向 S 发送数据，拥塞窗口初始阈值为 32 KB；S 对收到的每个段进行确认，并通告新的接收窗口。假定 TCP 连接建立完成后，S 端的 TCP 接收缓存仅有数据存入而无数据取出。请回答下列问题。(1) 在 TCP 连接建立过程中，H3 收到的 S 发送过来的第二次握手 TCP 段的 SYN 和 ACK 标志位的值分别是多少？确认序号是多少？(2) H3 收到的第 8 个确认段所通告的接收窗口是多少？此时 H3 的拥塞窗口变为多少？H3 的发送窗口变为多少？(3) 当 H3 的发送窗口等于 0 时，下一个待发送的数据段序号是多少？H3 从发送第 1 个数据段到发送窗口等于 0 时刻为止，平均数据传输速率是多少（忽略段的传输延时）？(4) 若 H3 与 S 之间通信已经结束，在 t 时刻 H3 请求断开该连接，则从 t 时刻起，S 释放该连接的最短时间是多少？', '[]', '', '1）TCP 连接的建立过程为三次握手：首先，H3 向 Wb 服务器 S 发出连接请求报文段，这时首部中的同步位 SYN=1，ACK=0，同时选择一个初始序号 seq=100。TCP 规定，SYN 报文段（即 SYN=1 的报文段）不能携带数据，但是要消耗一个序号。接着，S 收到连接请求报文段，为自己选择一个初始序号 seq=y，向 A 发送确认。这个报文段 SYN=1、ACK=1、seq=y，确认号 ack 是 100+1=101。它不能携带数据，但是也要消耗一个序号。最后，H3 收到 S 的确认报文段后，还要向 S 给出确认。这份确认报文段 SYN=0、ACK=1，确认号 ack=y+1，自己的序号 seq=101。因此，第二次握手 TCP 段的 SYN=1、（1 分）ACK=1;（1 分）确认序号是 101。（1 分）
2）题目规定 S 对收到的每个段（MSS 大小的段）进行确认，并通告新的接收窗口，而且 TCP 接收缓存仅有数据存入而无数据取出。H3 收到的第 8 个确认段所通告的接收窗口是 20-8=12KB;（1 分）在慢开始算法里，发送方 H3 先设置拥塞窗口 cwnd=1KB，接下来每收到一个对新报文段的确认就使发送方的拥塞窗口加 KB。H3 共收到 8 个确认段，所以此时 H3 的拥塞窗口变为 1+8=9KB;（1 分）发送窗口=min{拥塞窗口，接收窗口}，所以 H3 的发送窗口变为 min{9,12}=9KB。（1 分）
3）TCP 是用字节作为窗口和 序号 的单位。当 H3 的发送窗口等于 0KB 时，也就是接收窗口等于 0KB 时，下一个待发送段的序号是 20K+101=20×1024+101=20581；（1 分）H3 从发送第 1 个段到发送窗口等于 0KB 时刻为止，经过五个传输轮次，每个传输轮次的时间就是往返 RTT，因此平均数据传输速率是 20KB/(5×200ms)=20KB/s=20.48kbps。（1 分）
4）通信结束后，H3 向 S 发送连接释放报文段。S 收到 H3 的连接释放报文段后，马上发出确认报文段。此时 S 已经没有数据需要传输，于是它也马上发出连接释放报文段。H3 在收到 S 的连接释放报文段后，发出确认报文段。S 在收到这份确认后就释放 TCP 连接。因此从 t 时刻起，S 释放该连接的最短时间是：H3 的连接释放报文段传送到 S 的时间+S 的连接释放报文段传送到 H3 的时间+H3 的确认报文段传送到 S 的时间 = 1.5×200ms = 300ms。（1 分）
', 9, 'Mogullzr', '2026-02-01 23:10:03', 9, NULL, '2026-02-01 23:10:03', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1192', '3669');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1126', '3669');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3670, '2016年408考研真题第42题', '简单', '2016年408真题', '如果一棵非空$k$（$k ≥ 2$） 叉树$T$中每个非叶结点都有$k$个孩子，则称$T$为正则$k$叉树。请回答下列问题并给出推导过程。(1) 若$T$有$m$个非叶结点，则$T$中的叶结点有多少个？(2) 若$T$的高度为$h$（单结点的树$h = 1$），则$T$的结点数最多为多少个？最少为多少个？', '[]', '', '1）根据定义，正则$k$叉树中仅含有两类结点；叶结点（个数记为$n_{0}$）和度为$k$的分支结点（个数记为$n_{1}$）。树$T$中的结点总数$n = n_{0} + n_{k} = n_{0} + m$。树中所含的边数$e = n - 1$，这些边均为$m$个度为$k$的结点发出的，即$e = mk$。整理得$n_{0} + m = m_{k} + 1$，故$n_{0} = (k - 1)m + 1$。
2）高度为$h$的正则$k$叉树$T$中，含最多结点的树形为：除第$h$层外，第$1$层到第$h - 1$层的结点都是度为$k$的分支结点；而第$h$层均为叶结点，即树是“满”树。此时第$j$（$1 ≤ j ≤ h$）层结点数为$k^{j-1}$，结点总数$M_{1}$为

$$
M_{1} = \\sum_{i=0}^{h} k^{j-1} = \\frac{k^{h} - 1}{k - 1}
$$

含最少结点的正则$K$叉树的树形为：第$1$层只有根结点，第$2$层到第$h - 1$层仅含$1$个分支结点和$k - 1$个叶结点，第$h$层有$K$个叶结点。即除根外第$2$层到第$h$层中每层的结点数均为$k$，故$T$中所含结点总数$M_{2}$为

$$
M_{2} = 1 + (h - 1)k
$$

【评分说明】①参考答案仅给出一种推导过程，若考生采用其他推导方法且正确，同样给分。
②若考生仅给出结果，但没有推导过程，则 (1)、(2) 的最高得分分别是 2 分和 3 分。若推导过程或答案不完全正确，酌情给分。
', 9, 'Mogullzr', '2026-02-01 23:10:03', 9, NULL, '2026-02-01 23:10:03', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1144', '3670');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3671, '2016年408考研真题第43题', '简单', '2016年408真题', '已知由$n(n ≥ 2)$个正整数构成的集合$A = a_{k}∣0 ≤ k < n$，将其划分为两个不相交的子集$A_{1}$和$A_{2}$，元素个数分别是$n_{1}$和$n_{2}$，$A_{1}$和$A_{2}$中元素之和分别为$S_{1}$和$S_{2}$。设计一个尽可能高效的划分算法，满足$∣n_{1} - n_{2}∣$最小且$∣S_{1} - S_{2}∣$最大。要求：(1) 给出算法的基本设计思想。(2) 根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释。(3) 说明你所设计算法的时间复杂度和空间复杂度。', '[]', '', '1）算法的基本设计思想
由题意知，将最小的$⌊n/2⌋$个元素放在$A_{1}$中，其余的元素放在$A_{2}$中，分组结果即可满足题目要求。仿照快速排序的思想，基于枢轴将个整数划分为两个子集。根据划分后枢轴所处的位置$i$分别处理：
- 若i=⌊n/2⌋，则分组完成，算法结束；
- 若i<⌊n/2⌋，则枢轴及之前的所有元素均属于A1​,继续对 i 之后的元素进行划分；
- 若i>⌊n/2⌋，则枢轴及之后的所有元素均属于A2​，继续对i之前的元素进行划分；
基于该设计思想实现的算法，无须对全部元素进行全排序，其平均时间复杂度是$O(n)$，空间复杂度是$O(1)$。
2）算法实现
实现参考快速排序的单向递归算法。

```c
int partition(int a[], int low, int high) {
  int l = low;
  int r = high;
  int pivot = a[l];
  while (l < r) {
    while (l < r && a[r] >= pivot) {
      r--;
    }
    a[l] = a[r];
    while (l < r && a[l] <= pivot) {
      l++;
    }
    a[r] = a[l];
  }
  a[l] = pivot;
  return l;
}

// 按照第 k 个元素进行分区
void quickSelect(int a[], int low, int high, int k) {
  if (low < high) {
    int pivotIndex = partition(a, low, high);
    if (pivotIndex == k) {
      return
    } else if (pivotIndex < k) {
      quickSelect(a, pivotIndex+1, high, k);
    } else {
      quickSelect(a, low, pivotIndex-1, k);
    }
  }
}

// 空间复杂度：O(1)
// 时间复杂度：O(n)
void solve(int a[], int n) {
  quickSelect(a, 0, n-1, n/2);
  int S1 = 0;
  int S2 = 0;
  for (int i = 0; i < n/2; i++) {
    S1 += a[i];
  }
  for (int i = n/2; i < n; i++) {
    S2 += a[i];
  }
  return S2 - S1;
}
```
3）本参考答案给出的算法平均时间复杂度是$O(n)$, 空间复杂度是$O(1)$。
', 9, 'Mogullzr', '2026-02-01 23:10:04', 9, NULL, '2026-02-01 23:10:04', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1231', '3671');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3672, '2016年408考研真题第44题', '简单', '2016年408真题', '假定 CPU 主频为 50MHz，CPI 为 4。设备 D 采用异步串行通信方式向主机传送 7 位 ASCII 字符，通信规程中有 1 位奇校验位和 1 位停止位，从 D 接收启动命令到字符送入 I/O 端口需要 0.5ms。请回答下列问题，要求说明理由。(1) 每传送一个字符，在异步串行通信线上共需传输多少位？在设备 D 持续工作过程中，每秒钟最多可向 I/O 端口送入多少个字符？(2) 设备 D 采用中断方式进行输入/输出，示意图如下∶
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/180937a87c41417aa1dc47f5ba3410d9.svg)
I/O 端口每收到一个字符申请一次中断，中断响应需 10 个时钟周期，中断服务程序共有 20 条指令，其中第 15 条指令启动 D 工作。若 CPU 需从 D 读取 1000 个字符，则完成这一任务所需时间大约是多少个时钟周期？CPU 用于完成这一任务的时间大约是多少个时钟周期？在中断响应阶段 CPU 进行了哪些操作？', '[]', '', '1）每传送一个 ASCII 字符，需要传输的位数有 1 位起始位、7 位数据位（ASCII 字符占 7 位）、1 位奇校验位和 1 位停止位，故总位数为 1 + 7 + 1 + 1 = 10。（2 分）I/O 端口每秒钟最多可接收 1000/0.5 = 2000 个字符。（1 分）
【评分说明】对于第一问，若考生回答总位数为 9，则给 1 分。
2）一个字符传送时间包括：设备 D 将字符送/O 端口的时间、中断响应时间和中断服务程序前 15 条指令的执行时间。时钟周期为 1/(50MHz)=20ns，设备 D 将字符送 I/O 端口的时间为 0.5ms/20ns=2.5×10⁴ 个时钟周期。一个字符的传送时间大约为 2.5×10⁴+10+15×4=25070 个时钟周期。完成 1000 个字符传送所需时间大约为 1000×25070=25070000 个时钟周期。（3 分）
CPU 用于该任务的时间大约为 1000×(10+20×4)=9×10⁴ 个时钟周期。（1 分）
在中断响应阶段，CPU 主要进行以下操作：关中断、保护断点和程序状态、识别中断源。（2 分）
【评分说明】
①位于第一问，若答案是 25070020，则同样给分；若答案是 25000000 或 25000020，则给 2 分。如果没有给出分布计算步骤，但算式和结果正确，同样给分。
②对于第三问，只要回答关中断和保护断点，就给 2 分，其他答案酌情给分。
', 9, 'Mogullzr', '2026-02-01 23:10:05', 9, NULL, '2026-02-01 23:10:05', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '3672');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3672');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3673, '2016年408考研真题第45题', '简单', '2016年408真题', '某计算机采用页式虚拟存储管理方式，按字节编址，虚拟地址为 32 位，物理地址为 24 位，页大小为 8KB；TLB 采用全相联映射；Cache 数据区大小为 64KB，按 2 路组相联方式组织，主存块大小为 64B。存储访问过程的示意图如下。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/8baef0e831024fe7a79d6a9df6c87586.svg)
请回答下列问题。(1) 图中字段 A～G 的位数各是多少？TLB 标记字段 B 中存放的是什么信息？(2) 将块号为 4099 的主存块装入到 Cache 中时，所映射的 Cache 组号是多少？对应的 H 字段内容是什么？(3) Cache 缺失处理的时间开销大还是缺页处理的时间开销大？为什么？(4) 为什么 Cache 可以采用直写 (Write Through) 策略，而修改页面内容时总是采用回写 (Write Back) 策略？', '[]', '', '1）页大小为 8KB，页内偏移地址为 13 位，故 A = B = 32-13 = 19；D = 13；C = 24-13 = 11；主存块大小为 64B，故 G = 6。
2 路组相联，每组数据区容量有 64B×2 = 128B，共有 64KB/128B = 512 组，故 F = 9；E = 24-G-F = 24-6-9 = 9。
因而 A=19，B=19，C=11，D=13，E=9，F=9，G=6。（各 1 分，共 7 分）
TLB 中标记字段 B 的内容是虚页号，表示该 TLB 项对应哪个虚页的页表项。（1 分）
2）块号 4099=000001000000000011B，因此，所映射的 Cache 组号为 000000011B=3，（1 分）对应的 H 字段内容为 000001000B。（1 分）
3）Cache 缺失带来的开销小，而处理缺页的开销大。（1 分）因为缺页处理需要访问磁盘，而 Cache 缺失只要访问主存。（1 分）
【评分说明】对于 (3) 中第 2 问，若考生回答因为缺页需要软件实现而 Cache 缺失用硬件实现，则同样给分。
4）因为采用直写法时需要同时写快速存储器和慢速存储器，而写磁盘比写主存慢很多，所以，在 Cache-主存层次，Cache 可以采用直写策略，而在主存 - 外存（磁盘）层次，修改页面内容时总是采用回写法。（2 分）
', 9, 'Mogullzr', '2026-02-01 23:10:07', 9, NULL, '2026-02-01 23:10:07', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '3673');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1136', '3673');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3673');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3674, '2016年408考研真题第46题', '简单', '2016年408真题', '某进程调度程序采用基于优先数 (priority) 的调度策略，即选择优先数最小的进程运行，进程创建时由用户指定一个 nice 作为静态优先数。为了动态调整优先数，引入运行时间 cpuTime 和等待时间 waitTime，初值均为 0。进程处于执行态时，cpuTime 定时加 1，且 waitTime 置 0；进程处于就绪态时，cpuTime 置 0，waitTime 定时加 1。请回答下列问题。(1) 若调度程序只将 nice 的值作为进程的优先数，即 priority=nice，则可能会出现饥饿现象，为什么？(2) 使用 nice、cpuTime 和 waitTime 设计一种动态优先数计算方法，以避免产生饥饿现象，并说明 waitTime 的作用。', '[]', '', '1）由于采用了静态优先数，当就绪队列中总有优先数较小的进程时，优先数较大的进程一直没有机会运行，因而会出现饥饿现象。（2 分）
2）优先数 priority 的计算公式为 priority = nice + k1 × cpuTime - k2 × waitTime，其中 k1 > 0，k2 > 0，用来分别调整 cpuTime 和 waitTime 在 priority 中所占的比例。（3 分）waitTime 可使长时间等待的进程优先数减少，从而避免出现饥饿现象。（1 分）
【评分说明】
①公式中包含 nice 给 1 分，利用 cpuTime 增大优先数给 1 分，利用 waitTime 减少优先数
给 1 分；部分正确，酌情给分。
②若考生给出包含 nice、cpuTime 和 waitTime 的其他合理的优先数计算方法，同样给分。
', 9, 'Mogullzr', '2026-02-01 23:10:07', 9, NULL, '2026-02-01 23:10:07', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3674');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3675, '2016年408考研真题第47题', '简单', '2016年408真题', '某磁盘文件系统使用链接分配方式组织文件，簇大小为 4KB。目录文件的每个目录项包括文件名和文件的第一个簇号，其他簇号存放在文件分配表 FAT 中。(1) 假定目录树如下图所示，各文件占用的簇号及顺序如下表所示，其中 dir、dir1 是目录，file1、file2 是用户文件。请给出所有目录文件的内容。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/dfd0b08e1f3e4ba4b2d2a69ed1e92ff9.svg)
(2) 若 FAT 的每个表项仅存放簇号，占 2 个字节，则 FAT 的最大长度为多少字节？该文件系统支持的文件长度最大是多少？(3) 系统通过目录文件和 FAT 实现对文件的按名存取，说明 file1 的 106、108 两个簇号分别存放在 FAT 的哪个表项中。(4) 假设仅 FAT 和 dir 目录文件已读入内存，若需将文件 dir/dir1/file1 的第 5000 个字节读入内存，则要访问哪几个簇？', '[]', '', '1）两个目录文件 dir 和 dirl 的内容如下表所示。（3 分）
htmldir148文件名簇号dir 目录文件file1100文件名簇号dir1 目录文件file2200
【评分说明】每个目录项的内容正确给 1 分，共 3 分。
2）由于FAT的簇号为 2 个字节，即 16 比特，因此在 FAT 表中最多允许 2¹⁶（65536）个表项，一个 FAT 文件最多包含 2¹⁶（65536）个簇。FAT 的最大长度为 2¹⁶×2B=128KB。（1 分）文件的最大长度是 2¹⁶×4B=256MB。（1 分）
【评分说明】若考生考虑到文件结束标志、坏块标志等，且答案正确，同样给分。
3）在 FAT 的每个表项中存放下一个簇号。file1 的簇号 106 存放在 FAT 的 100 号表项中，（1 分）簇号 108 存放在 FAT 的 106 号表项中。（1 分）
4）先在 dir 目录文件里找到 dir1 的簇号，然后读取 48 号簇，得到 dir1 目录文件，接着找到 file1 的第一个簇号，据此在 FAT 里查找 file1 的第 5000 个字节所在的簇号，最后访问磁盘中的该簇。因此，需要访问目录文件 dir1 所在的 48 号簇，（1 分）及文件 file1 的 106 号簇。（1 分）
', 9, 'Mogullzr', '2026-02-01 23:10:08', 9, NULL, '2026-02-01 23:10:08', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1158', '3675');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1277', '3675');
