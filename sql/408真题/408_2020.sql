INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3817, '2020年408考研真题第1题', '简单', '2020年408真题', '将一个 10*10 对称矩阵 M 的上三角部分的元素$m_{i,j}(1 ≤ i ≤ j ≤ 10)$，按列优先存入 C 语言的一维数组 N 中，元素$m_{7,2}$在 N 中的下标是（ ）', '[''15'', ''16'', ''22'', ''23'']', "['C']", 'C
上三角矩阵按列优先存储，先存储仅 1 个元素的第一列，再存储有 2 个元素的第二列，以此类推。加 7,2 位于左下角，对应右上角的元素为加 2, 7 , 在加 2,7 之前存有第 1 列：1第 2 列：2……第 6 列：6第 7 列：1前面共存有 1 + 2 + 3 + 4 + 5 + 6 + 1 = 2 2 个 元 素（数组下标范围为 0〜21）, 注意数组下标
从 0 开始，故加工 7 在数组 N 中的下标为 2 2 , 即加 7,2 在数组 N 中的下标为 22。', 9, 'Mogullzr', '2026-01-29 18:54:59', 9, NULL, '2026-01-29 18:54:59', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1258', '3817');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3818, '2020年408考研真题第2题', '简单', '2020年408真题', '对空栈 S 进行 Push 和 Pop 操作入栈序列 a,b,c,d,e 经过 Push,Push,Pop,Push,Pop,Push,Push,Pop 操作后得到的出栈序列是（  ）。', '[''b,a,c'', ''b,a,e'', ''b,c,a'', ''b,c,e'']', "['D']", 'D
按题意，出入栈操作的过程如下：| 操作   | 栈内元素  | 出栈元素 |
|:----:|:-----:|:----:|
| Push | a     |      |
| Push | a b   |      |
| Pop  | a     | b    |
| Push | a c   |      |
| Pop  | a     | c    |
| Push | a d   |      |
| Push | a d e |      |
| Pop  | a d   | e    |
故出栈序列为 c,e。', 9, 'Mogullzr', '2026-01-29 18:54:59', 9, NULL, '2026-01-29 18:54:59', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3818');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3819, '2020年408考研真题第3题', '简单', '2020年408真题', '对于任意一棵高度为 5 且有 10 个节点的二叉树，若采用顺序存储结构保存，每个结点占 1 个存储单元（仅存放结点的数据信息），则存放该二叉树需要的存储单元数量至少是（ ）。', '[''31'', ''16'', ''15'', ''10'']', "['A']", 'A
二叉树采用顺序存储时，用数组下标来表示结点之间的父子关系。对于一棵高度为 5 的二叉树，为了满足任意性，其 1~5 层的所有结点都要被存储起来，即考虑为一棵高度为 5 的满二叉树，总共需要存储单元的数量为 1 + 2 + 4 + 8 + 16 = 31。', 9, 'Mogullzr', '2026-01-29 18:54:59', 9, NULL, '2026-01-29 18:54:59', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1305', '3819');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3820, '2020年408考研真题第4题', '简单', '2020年408真题', '已知森林 F 及与之对应的二叉树 T，若 F 的先根遍历序列是a,b,c,d,e,f，中根遍历序列是b,a,d,f,e,c，则 T 的后根遍历序列是（ ）。', '[''b,a,d,f,e,c'', ''b,d,f,e,c,a'', ''b,f,e,d,c,a'', ''f,e,d,c,b,a'']', "['C']", 'C
本题考察的是森林的遍历，
森林 F 的先根遍历序列对应其二叉树 T 的先序遍历序列，森林 F 的中根遍历序列对应其二叉树 T 的中序遍历序列。即 T 的先序遍历序列为 a,b,c,d,e,f，中序遍历序列为 b,a,d,f,e,c。根据二叉树 T 的先序序列和中序序列可以唯一确定它的结构，构造过程如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/d15b813010ce4669b577acd3b47e3cd6.svg)
可以得到二叉树 T 的后序序列为 b,f,e,d,c,a。', 9, 'Mogullzr', '2026-01-29 18:54:59', 9, NULL, '2026-01-29 18:54:59', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1089', '3820');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1306', '3820');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3821, '2020年408考研真题第5题', '简单', '2020年408真题', '下列给定的关键字输入序列中，不能生成如下二叉排序树的是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/d579a7d529fd4452b981f9e7a6e52181.svg)
', '[''4，5，2，1，3'', ''4，5，1，2，3'', ''4，2，5，3，1'', ''4，2，1，3，5'']', "['B']", 'B
选项 B 生成二叉排序树的过程如下，显然 B 选项错误：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/e0e5ee144cca4ea5a2539ebb9756c6ec.svg)
', 9, 'Mogullzr', '2026-01-29 18:55:01', 9, NULL, '2026-01-29 18:55:01', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1174', '3821');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3822, '2020年408考研真题第6题', '简单', '2020年408真题', '修改递归方式实现的图的深度优先搜索（DFS）算法，将输出（访问）定点信息的语句移到退出递归前（即执行输出语句后立刻退出递归）。采用修改后的算法遍历有向无环图 G，若输出结果中包含 G 中的全部顶点，则输出的顶点序列是 G 的（ ）。', '[''拓扑有序序列'', ''逆拓扑有序序列'', ''广度优先搜索序列'', ''深度优先搜索序列'']', "['B']", 'B
DFS是一个递归算法，在遍历过程中，先访问的顶点被压入栈底。设在图中有顶点$v_{i}$，它有后继顶点$v_{j}$，即存在边<$v_{i}$,$v_{j}$>。根据 DFS 的规则，$v_{i}$入栈后，必先遍历完其后继顶点后$v_{j}$才会出栈，也就是说$v_{i}$会在$v_{j}$之后出栈，在如题所指的过程中，$v_{i}$在$v_{j}$后打印。由于$v_{i}$和$v_{j}$具有任意性，从上面的规律可以看出，输出顶点的序列是逆拓扑有序序列。', 9, 'Mogullzr', '2026-01-29 18:55:03', 9, NULL, '2026-01-29 18:55:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1261', '3822');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1199', '3822');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3823, '2020年408考研真题第7题', '简单', '2020年408真题', '已知无向图 G 如下所示，使用克鲁斯卡尔（Kruskal）算法求图 G 的最小生成树，加入到最小生成树中的边依次是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/d0731d6fbef146fd9897e931ed29d476.svg)
', '[''(b,f)(b,d)(a,e)(c,e)(b,e)'', ''(b,f)(b,d)(b,e)(a,e)(e,c)'', ''(a,e)(b,e)(c,e)(b,d)(b,f)'', ''(a,e)(c,e)(b,e)(b,f)(b,d)'']', "['A']", 'A
kruskal 算法依次将当前 不会导致环路的最短边 加入最小生成树中：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/f47710f3482b449abb6f1f7f1fe2ec46.svg)
', 9, 'Mogullzr', '2026-01-29 18:55:04', 9, NULL, '2026-01-29 18:55:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1200', '3823');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3824, '2020年408考研真题第8题', '简单', '2020年408真题', '若使 AOE 网估算工程进度则下列叙述中正确的是（ ）。', '[''关键路径是从原点到汇点边数最多的一条路径'', ''关键路径是从原点到汇点路径长度最长的路径'', ''增加任一关键活动的时间不会延长工程的工期'', ''缩短任一关键活动的时间将会缩短工程的工期'']', "['B']", 'B
关键路径是指权值之和最大而非边数最多的路径，故选项 A 错误。选项 B 正确，是关键路径的概念。无论是存在一条还是存在多条关键路径，增加任一关键活动的时间都会延长工程的工期，因为关键路径始终是权值之和最大的那条路径，选项 C 错误。仅有一条关键路径时，减少关键活动的时间会缩短工程的工期；存在多条关键路径时，缩短一条关键活动的时间不一定会缩短工程的工期，缩短了路径长度的那条关键路径不一定还是关键路径，选项 D 错误。', 9, 'Mogullzr', '2026-01-29 18:55:06', 9, NULL, '2026-01-29 18:55:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1194', '3824');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3825, '2020年408考研真题第9题', '简单', '2020年408真题', '下列关于大根堆（至少含 2 个元素）的叙述中正确的是（ ）。I. 可以将堆看成一颗完全二叉树；II. 可采用顺序存储方式保存堆；III. 可以将堆看成一棵二叉排序树；IV. 堆中的次大值一定在根的下一层。', '[''仅 I，II'', ''仅 II，III'', ''仅 I，II，IV'', ''仅 I，III，IV'']', "['C']", 'C
堆是一棵完全树，采用一维数组存储，故 I 正确，II 正确。大根堆只要求根结点值大于左右孩子值，并不要求左右孩子值有序，III 错误。堆的定义是递归的，所以其左右子树也是大根堆，所以堆的次大值一定是其左孩子或右孩子，IV 正确。', 9, 'Mogullzr', '2026-01-29 18:55:06', 9, NULL, '2026-01-29 18:55:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1095', '3825');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3826, '2020年408考研真题第10题', '简单', '2020年408真题', '依次将关键字 5, 6, 9, 13, 8, 2, 12, 15 插入初始为空的 4 阶 B 树后, 根节点中包含的关键字是（ ）。', '[''8'', ''6, 9'', ''8, 13'', ''9, 12'']', "['B']", 'B
一 个 4 阶B 树的任意非叶结点至多含有加 4-1=3 个关键字，在关键字依次插入的过程中，会导致结点的不断分裂，插入过程如下所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/009c5e8e99294459b70eb75bd045ec21.svg)
得到根结点包含的关键字为 6, 9。', 9, 'Mogullzr', '2026-01-29 18:55:06', 9, NULL, '2026-01-29 18:55:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '3826');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3827, '2020年408考研真题第11题', '简单', '2020年408真题', '对大部分元素已有序的数组进行排序时，直接插入排序比简单选择排序效率更高，其原因是（ ）。I. 直接插入排序过程中元素之间的比较次数更少II. 直接插入排序过程中所需要的辅助空间更少III. 直接插入排序过程中元素的移动次数更少', '[''仅 I'', ''仅 III'', ''仅 I，II'', ''仅 I，II 和 III'']', "['A']", 'A
考虑较极端的情况，对于有序数组，直接插入排序的比较次数为$n - 1$，简单选择排序的比较次数始终为$1 + 2 + ⋯ + n - 1 = n(n - 1)/2$，I 正确。两种排序方法的辅助空间都是$O(1)$，无差别，II 错误。初始有序时，移动次数均为 0；对于通常情况，直接插入排序每趟插入都
需要依次向后挪位，而简单选择排序只需与找到的最小元素交换位置，后者的移动次数少很多，III 错误。', 9, 'Mogullzr', '2026-01-29 18:55:07', 9, NULL, '2026-01-29 18:55:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3827');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1279', '3827');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3828, '2020年408考研真题第12题', '简单', '2020年408真题', '下列给出的部件中其位数（宽度）一定与机器字长相同的是（ ）。I、ALU
II、指令寄存器
III、通用寄存器
IV、浮点寄存器', '[''Ⅰ，Ⅱ'', ''Ⅰ，Ⅲ'', ''Ⅱ，Ⅲ'', ''Ⅱ，Ⅲ，IV'']', "['B']", 'B
机器字长是指 CPU 内部用于整数运算的数据通路的宽度。CPU 内部数据通路是指 CPU 内部的数据流经的路径及路径上的部件，主要是 CPU 内部进行数据运算、存储和传送的部件，这些部件的宽度基本上要一致才能相互匹配。因此，机器字长等于 CPU 内部用于整数运算的运算器位数和通用寄存器宽度。ALU（算术逻辑单元）功能：执行加减乘除、位运算等。分析：ALU 的宽度必须和机器字长一致，才能对一个机器字进行运算。✅一定与机器字长相同指令寄存器（IR）功能：存放当前正在执行的指令。分析：指令寄存器的宽度取决于指令长度，而不是机器字长。指令长度可能为 16 位、32 位、64 位等，不一定等于机器字长。❌不一定相同通用寄存器功能：存放数据、地址、中间计算结果。分析：通用寄存器通常与机器字长相等，以便完整存储一个字。✅通常与机器字长相同浮点寄存器功能：专门存储浮点数（如 IEEE 754 格式）分析：浮点寄存器的宽度通常和浮点数格式有关（如 32 位单精度，64 位双精度）。这与机器字长无固定关系，有的机器字长是 32 位，但支持 64 位浮点数。❌不一定相同所以 I、III 正确，答案选择 B。', 9, 'Mogullzr', '2026-01-29 18:55:07', 9, NULL, '2026-01-29 18:55:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3828');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '3828');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3829, '2020年408考研真题第13题', '简单', '2020年408真题', '已知带符号整数用补码表示，float 型数据用 IEEE 754 标准表示，假定变量 x 的类型只能是 int 或 float。当 x 的机器数为 C800 0000H 时，x 的值可能是（ ）。', '[''$−7 × 2^{27}$'', ''$−2^{16}$'', ''$2^{17}$'', ''$25 × 2^{27}$'']', "['A']", 'A
C800 0000H = 1100 1000 0000 0000 0000 0000 0000 0000将其转换为对应的 float 或 int：为 float 型时，尾数隐藏最高位 1 ,数符为 1 表示负数，阶码$10010000 = 2^{7} + 2^{4} = 128 + 16$,
再减去偏置值 127 得到 17 ,算出 x 值为$−2^{17}$。为 int 型时，带符号补码，为负数，数值部分取反加 1 ,得 011 1000 0000 0000 0000 0000
0000 0000 ,算出 x 值为$−7 × 2^{27}$。', 9, 'Mogullzr', '2026-01-29 18:55:08', 9, NULL, '2026-01-29 18:55:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '3829');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '3829');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3830, '2020年408考研真题第14题', '简单', '2020年408真题', '在按字节编址，采用小端方式的 32 位计算机中，按边界对齐方式为以下 C 语言结构型变量 a 分配存储空间。structrecord{shortx1;intx2;}a;若a的首地址为 2020FE00H，a 的成员变量x2的机器数为 12340000H，则其中 34H 所在存储单元的地址是（ ）。', '[''2020FE03H；'', ''2020FE04H；'', ''2020FE05H；'', ''2020FE06H；'']', "['D']", 'D
在 32 位计算机中，按字节编址，根据小端序和按边界对齐的定义，给出变量 a 的存放方式如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/c2cfb70a540744c4aa976d4cb42bad24.svg)
', 9, 'Mogullzr', '2026-01-29 18:55:08', 9, NULL, '2026-01-29 18:55:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1265', '3830');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1203', '3830');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3831, '2020年408考研真题第15题', '简单', '2020年408真题', '下列关于 TLB 和 Cache 的叙述中，错误的是（ ）。', '[''命中率都与程序局部性有关'', ''缺失后都需要去访问主存'', ''缺失处理都可以由硬件实现'', ''都由 DRAM 存储器组成'']', "['D']", 'D
Cache 由SRAM组成；TLB 通常由相联存储器组成，也可由 SRAM 组成。DRAM需要不断刷新，性能偏低，不适合组成 TLB 和 Cache 选项 A、B 和 C 都是 TLB 和 Cache 的特点。', 9, 'Mogullzr', '2026-01-29 18:55:09', 9, NULL, '2026-01-29 18:55:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3831');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1136', '3831');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3832, '2020年408考研真题第16题', '简单', '2020年408真题', '某计算机采用 16 位定长指令字格式，操作码位数和寻址方式位数固定，指令系统有 48 条指令，支持直接、间接、立即、相对 4 种寻址方式，单地址指令中直接寻址方式可寻址范围是（ ）。', '[''0 ~ 255；'', ''0 ~ 1023；'', ''-128 ~ 127；'', ''-512 ~ 511；'']', "['A']", 'A
参考指令格式，48 条指令需要 6 位操作码字段 ($2^{5} < 48 < 2^{6}$), 4 种寻址方式需要 2 位寻址特征位 ($4 = 2^{2}$),
还剩 16 - 6 - 2 = 8 位作为地址码，故直接寻址范围为 0 ~ 255。注意，主存地址不能为负。🚫常见误区说明：在相对寻址中，可能会有有符号偏移，比如-128 ~ 127或-512 ~ 511，那是针对偏移字段的符号解释；直接寻址不需要符号位，它就是一个无符号绝对地址。', 9, 'Mogullzr', '2026-01-29 18:55:09', 9, NULL, '2026-01-29 18:55:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1103', '3832');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1226', '3832');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3833, '2020年408考研真题第17题', '简单', '2020年408真题', '下列给出的处理器类型中理想情况下 CPI 为 1 的是（ ）。I、单周期 CPU；
II、多周期 CPU；
III、基本流水线 CPU；
IV、超标量流水线 CPU', '[''I、II；'', ''I、III;'', ''II、IV;'', ''III、IV.'']', "['B']", 'B
CPI表示执行指令所需的时钟周期数。对于一个程序或一台机器来说，其 CPI 指执行该程序或机器指令集中的所有指令所需的平均时钟周期数。对于单周期 CPU，令指令周期 = 时钟周期，CPI=1，I 正确。对于多周期 CPU，CPU 的执行过程分成几个阶段，每个阶段用一个时钟去完成，每种指令所用的时钟数可以不同，CPI > 1 , II 错误。对于基本流水线 CPU，让每个时钟周期流出一条指令，CPI = 1, III 正确。超标量流水线 CPU 在每个时钟周期内并发执行多条独立的指令，每个时钟周期流出多条指令，CPI < 1, IV 错误。', 9, 'Mogullzr', '2026-01-29 18:55:09', 9, NULL, '2026-01-29 18:55:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1106', '3833');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1307', '3833');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3834, '2020年408考研真题第18题', '简单', '2020年408真题', '下列关于“自陷”（Trap，也称陷阱）的叙述中错误的是（ ）。', '[''自陷是通过陷阱指令预先设定的一类外部中断事件；'', ''自陷可用于实现程序调试时的断点设置和单步跟踪；'', ''自陷发生后 CPU 将转去执行操作系统内核相应程序；'', ''自陷处理完成后返回到陷阱指令的下一条指令执行。'']', "['A']", 'A
自陷是一种内部异常，A 错误。在 8086 中，用于程序调试的“断点设置”功能是通过“自陷”方式实现的，选 项 B 正确。执行到自陷指令时，无条件或有条件地自动调出操作系统内核程序进行执行，选 项 C 正确。CPU 执 行“陷阱指令”后，会自动地根据不同“陷阱”
类型进行相应的处理，然后返回到“陷阱指令”的下一条指令执行，选 项 D 正确。', 9, 'Mogullzr', '2026-01-29 18:55:09', 9, NULL, '2026-01-29 18:55:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1235', '3834');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3835, '2020年408考研真题第19题', '简单', '2020年408真题', 'QPI 总线是一种点对点全工双同步串行总线，总线上的设备可同时接收和发送信息，每个方向可同时传输 20 位信息（16 位数据 + 4 位校验位），每个 QPI 数据包有 80 位信息，分 2 个时钟周期传送，每个时钟周期传递 2 次，因此 QPI 总线带宽为每秒传送次数×2B×2。若 QPI 时钟频率为 2.4GHz，则总线带宽为（ ）。', '[''4.8'', ''9.6'', ''19.2'', ''38.4（单位 GB/s）'']', "['C']", 'C
每个时钟周期传送 2 次，故每秒传送的次数= 时钟频率 x2 = 2.4Gx2/s。总线带宽 = 每秒传送次数×2B×2 = 2.4G×2×2B×2/s=19.2GB/s。题中已给出总线带宽公式，降低了难度。公式中的“x2B”是因为每次传输 16 位数据，“x2”是因为采用点对点全双工总线，两个方向可同时传输信息。', 9, 'Mogullzr', '2026-01-29 18:55:09', 9, NULL, '2026-01-29 18:55:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1107', '3835');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3836, '2020年408考研真题第20题', '简单', '2020年408真题', '下列事件中属于外部中断事件的是（ ）。I、访存时缺页；II、定时器到时；III、网络数据包到达；', '[''仅 I、II'', ''仅 I、III'', ''仅 II、III'', ''I、II、III'']', "['C']", 'C
访存时缺页属于内部异常，I 错误；定时器到时描述的是时钟中断，属于外部中断，II 正确；网络数据包到达描述的是 CPU 执行指令以外的事件，属于外部中断，III 正确。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '3836');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3836');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3837, '2020年408考研真题第21题', '简单', '2020年408真题', '外部中断包括不可屏蔽中断（NMI）和可屏蔽中断，下列关于外部中断的叙述中错误的是（ ）。', '[''CPU 处于关中断状态时也能响应 NMI 请求；'', ''一旦可屏蔽中断请求信号有效，CPU 将立即响应；'', ''不可屏蔽中断的优先级比可屏蔽中断的优先级高；'', ''可通过中断屏蔽字改变可屏蔽中断的处理优先级。'']', "['B']", 'B
由 CPU 内部产生的异常称为内中断，内中断都是不可屏蔽中断。通过中断请求线 INTR 和 NMI 从 CPU 外部发出的中断请求为外中断，通过 INTR 信号线发出的外中断是可屏蔽中断，而通过 NMI 信号线发出的是不可屏蔽中断。不可屏蔽中断不受中断标志位的影响，使在关中断的情况下也会被响应，选项 A 正确。不可屏蔽中断的处理优先级最高，任何时候只要发生不可屏蔽中断，都要中止现行程序的执行，转到不可屏蔽中断处理程序执行，选项 C 正确。可屏蔽中断可以通过中断屏蔽字来设定优先级，选项 D 正确。CPU 响应中断需要满足 3 个条件：① 中断源有中断请求；② CPU 允许中断 及开中断；③ 一条指令执行完毕，且没有更紧迫的任务。故选项 B 错误。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1178', '3837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '3837');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3838, '2020年408考研真题第22题', '简单', '2020年408真题', '若设备采用周期挪用 DMA 方式进行输入输出，每次 DMA 传送的数据块大小为 512 字节，相应的 I/O 接口中有一个 32 位数数据缓冲寄存器，对于数据输入过程，下列叙述中错误的是（ ）。', '[''每准备好 32 位数据，DMA 控制器就发出一次总线请求；'', ''相对于 CPU，DMA 控制器的总线使用权的优先级更高；'', ''在整个数据块的传送过过程中，CPU 不可以访问主存储器；'', ''数据块传送结束时，会产生“DMA 传送结束”的中断请求。'']', "['C']", 'C
题目考查周期挪用法的基本概念和过程。我们先简单回顾一下周期挪用 DMA 的基本特点：每当I/O 设备准备好一个字（比如 32 位）数据时，就向DMA 控制器请求一次传送；DMA 控制器申请一次总线使用权，占用一个内存周期，进行数据的读/写；每次传输只占用一个周期，不会长时间占用总线；CPU 运行被打断（因为 DMA 抢占了总线），但只影响一个周期；数据块传送完后会产生一次DMA 中断，通知 CPU 处理。各选项逐一分析：A 正确。题中说数据缓冲寄存器是 32 位，那么每准备好 32 位，就要进行一次 DMA 请求。这符合周期挪用方式的基本操作流程。B 正确。周期挪用的机制就是 DMA 控制器能优先抢占主存总线，在不影响整个系统效率的前提下完成数据传输。C 错误。这是正确答案。在周期挪用方式下，CPU 是可以访问主存的，只是当 DMA 传输发生的那个特定周期，CPU 被暂停一个周期，因为 DMA 暂时挪用了总线资源。也就是说，CPU 的访问会被“打断一下”，而不是整个传输过程中都无法访问主存。D 正确。DMA 会在一整个数据块（比如 512 字节）传送完毕后，产生一次中断，通知 CPU“数据传送完成”，此时 CPU 可以进行下一步操作（如处理数据等）。所以正确答案选择 C，因为在周期挪用 DMA 方式下，CPU 在数据传送过程中可以访问主存，只是会偶尔被暂停一个周期，不是整个过程都被阻止。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '3838');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3839, '2020年408考研真题第23题', '简单', '2020年408真题', '若多个进程共享同一个文件 F，则下列叙述中，正确的是（ ）。', '[''各进程只能用“读”方式打开文件 F'', ''在系统打开文件表中仅有一个表项包含 F 的属性'', ''各进程的用户打开文件表中关于 F 的表项内容相同'', ''进程关闭 F 时，系统删除 F 在系统打开文件表中的表项'']', "['B']", 'B
多个进程可同时以“读”或“写”方式打开文件，操作系统并不保证写操作的互斥性，进程可通过系统调用对文件加锁，保证互斥写（读者 - 写者问题），选项 A 错误。整个系统只有一个系统文件打开表，同一个文件打开多次只需改变引用计数，选项 B 正确。用户进程的打开文件表关于同一个文件不一定相同，例如读写指针位置不一定相同，选项 C 错误。进程关闭文件时，文件的引用计数减 1 , 引用计数变为 0 时才删除系统打开文件表中的表项，选项 D 错误。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1308', '3839');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3840, '2020年408考研真题第24题', '简单', '2020年408真题', '下列选项中，支持文件长度可变、随机访问的磁盘存储空间分配方式是（ ）。', '[''索引分配'', ''链接分配'', ''连续分配'', ''动态分区分配'']', "['A']", 'A
索引分配支持变长的文件，同时可以随机访问文件的指定数据块，选项 A 正确。链接分配
不支持随机访问，需要依靠指针依次访问，选项 B 错误。连续分配的文件长度固定，不支持
可变文件长度（连续分配的文件长度虽然也可变，但是需大量移动数据，代价较大，相比之
下不太合适），选项 C 错误。动态分区分配是内存管理方式，不是磁盘空间的管理方式，选
项 D 错误。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3840');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3841, '2020年408考研真题第25题', '简单', '2020年408真题', '下列与中断相关的操作中，由操作系统完成的是（）。Ⅰ、保存被中断程序的中断点Ⅱ、提供中断服务Ⅲ、初始化中断向量表Ⅳ、保存中断屏蔽字', '[''仅Ⅰ、Ⅱ'', ''仅Ⅰ、Ⅱ、Ⅳ'', ''仅Ⅲ、Ⅳ'', ''仅Ⅱ、Ⅲ、Ⅳ'']', "['D']", 'D
当 CPU 检测到中断信号后，由硬件自动保存被中断程序的断点（即程序计数器 PC）, I 错
误。之后，硬件找到该中断信号对应的中断向量，中断向量指明中断服务程序入口地址（各
中断向量统一存放在中断向量表中，该表由操作系统初始化，Ⅲ 正确）。接下来开始执行
中断服务程序，保存 PSW、保存中断屏蔽字、保存各通用寄存器的值，并提供与中断信号
对应的中断服务，中断服务程序属于操作系统内核，Ⅱ 和 Ⅳ 正确。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3841');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3842, '2020年408考研真题第26题', '简单', '2020年408真题', '下列与进程调度有关的因素中，在设计多级反馈队列调度算法时需要考虑的是（ ）。Ⅰ. 就绪队列的数量Ⅱ. 就绪队列的优先级Ⅲ. 各就绪队列的调度算法Ⅳ. 进程在就绪队列间的迁移条件', '[''仅Ⅰ、Ⅱ'', ''仅Ⅲ、Ⅳ'', ''仅Ⅱ、Ⅲ、Ⅳ'', ''Ⅰ、Ⅱ、Ⅲ和Ⅳ'']', "['D']", 'D
多级反馈队列调度算法需要综合考虑优先级数量、优先级之间的转换规则等，就绪队列的
数量会影响长进程的最终完成时间，I 正确；就绪队列的优先级会影响进程执行的顺序，II
正确；各就绪队列的调度算法会影响各队列中进程的调度顺序，m 正确；进程在就绪队列
中的迁移条件会影响各进程在各队列中的执行时间，IV 正确。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3842');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3843, '2020年408考研真题第27题', '简单', '2020年408真题', '某系统中有 A、B 两类资源各 6 个，t 时刻资源分配及需求情况如下表所示。t 时刻安全性检测结果是（ ）。', '[''存在安全序列 P1、P2、P3'', ''存在安全序列 P2、P1、P3'', ''存在安全序列 P2、P3、P1'', ''不存在安全序列'']', "['B']", 'B
首先求出需求矩阵：
由 Allocation 得知当前 Available 为 (1,0)。由需求矩阵可知，初始只能满足 P2 的需求，选
项 A 错误。P2 释放资源后 Available 变为 (3,1)，此时仅能满足 P1 的需求，选 项 C 错误。
P1 释放资源后 Available 变为 (5,4)，可以满足 P 3 的需求，得到的安全序列为 P2, Pl, P3,
选项 B 正确，选项 D 错误。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1185', '3843');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3844, '2020年408考研真题第28题', '简单', '2020年408真题', '下列因素中，影响请求分页系统有效（平均）访存时间的是（ ）。Ⅰ. 缺页率Ⅱ. 磁盘读写时间Ⅲ. 内存访问时间Ⅳ. 执行缺页处理程序的 CPU 时间', '[''仅Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅳ'', ''仅Ⅰ、Ⅲ、Ⅳ'', ''Ⅰ、Ⅱ、Ⅲ和Ⅳ'']', "['D']", 'D
I 影响缺页中断的频率，缺页率越高，平均访存时间越长；Ⅱ 和 Ⅳ 影响缺页中断的处理时
间，中断处理时间越长，平均访存时间越长；皿影响访问页表和访问目标物理地址的时间，
故Ⅰ、Ⅱ、Ⅲ 和Ⅳ 均正确。', 9, 'Mogullzr', '2026-01-29 18:55:10', 9, NULL, '2026-01-29 18:55:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1149', '3844');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3845, '2020年408考研真题第29题', '简单', '2020年408真题', '下列关于父进程与子进程的叙述中，错误的是（ ）。', '[''父进程与子进程可以并发执行'', ''父进程与子进程共享虚拟地址空间'', ''父进程与子进程有不同的进程控制块'', ''父进程与子进程不能同时使用同一临界资源'']', "['B']", 'B
父进程与子进程当然可以并发执行，选项 A 正确。父进程可与子进程共享一部分资源，但
不能共享虚拟地址空间，在创建子进程时，会为子进程分配资源，如虚拟地址空间等，选
项 B 错误。临界资源一次只能为一个进程所用，选项 D 正确。进程控制块 PCB 是进程存
在的唯一标志，每个进程都有自己的 PCB，选项 C 正确。', 9, 'Mogullzr', '2026-01-29 18:55:11', 9, NULL, '2026-01-29 18:55:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1153', '3845');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3846, '2020年408考研真题第30题', '简单', '2020年408真题', '对于具备设备独立性的系统，下列叙述中，错误的是（ ）。', '[''可以使用文件名访问物理设备'', ''用户程序使用逻辑设备名访问物理设备'', ''需要建立逻辑设备与物理设备之间的映射关系'', ''更换物理设备后必须修改访问该设备的应用程序'']', "['D']", 'D
设备可视为特殊文件，选项 A 正确。用户使用逻辑设备名来访问物理文件，有利于设备独
立性，选项 B 正确。通过逻辑设备名访问物理设备时，需要建立逻辑设备和物理设备之间
的映射关系，选项 C 正确。应用程序按逻辑设备名访问设备，再经驱动程序的处理来控制物理设备，若更换物理设备，则只需更换驱动程序，而无须修改应用程序，选项 D 错误。', 9, 'Mogullzr', '2026-01-29 18:55:11', 9, NULL, '2026-01-29 18:55:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1119', '3846');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3847, '2020年408考研真题第31题', '简单', '2020年408真题', '某文件系统的目录项由文件名和索引结点号构成。若每个目录项长度为 64 字节，其中 4 字节存放索引结点号，60 字节存放文件名。文件名由小写英文字母构成，则该文件系统能创建的文件数量的上限为（ ）。', '[''$2^{26}$'', ''$2^{32}$'', ''$2^{60}$'', ''$2^{64}$'']', "['B']", 'B
在总长为 64 字节的目录项中，索引结点占 4 字节，即 32 位。不同目录下的文件的文件名可以相同，所以在考虑系统创建最多文件数量时，只需考虑索引结点的个数，即创建文件数量上限 = 索引结点数量上限。整个系统中最多存储$2^{32}$个索引结点，因此整个系统最多可以表示$2^{32}$个文件，选项 B 正确。', 9, 'Mogullzr', '2026-01-29 18:55:11', 9, NULL, '2026-01-29 18:55:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1158', '3847');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1117', '3847');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3848, '2020年408考研真题第32题', '简单', '2020年408真题', '下列准则中，实现临界区互斥机制必须遵循的是（ ）。Ⅰ、两个进程不能同时进入临界区Ⅱ、允许进程访问空闲的临界资源Ⅲ、进程等待进入临界区的时间是有限的Ⅳ、不能进入临界区的执行态进程立即放弃 CPU', '[''仅Ⅰ、Ⅳ'', ''仅Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅲ、Ⅳ'']', "['C']", 'C
实现临界区互斥需满足多个准则。“忙则等待”准则，即两个进程不能同时访问临界区，Ⅰ
正确。 “空闲让进”准则，若临界区空闲，则允许其他进程访问，Ⅱ 正确。 “有限等待”
准则，即进程应该在有限时间内访问临界区，Ⅲ 正确。Ⅰ、Ⅱ 和 Ⅲ 是互斥机制必须遵循的
原则。Ⅳ 是“让权等待”准则，不一定非得实现，如皮特森算法。', 9, 'Mogullzr', '2026-01-29 18:55:11', 9, NULL, '2026-01-29 18:55:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1309', '3848');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3849, '2020年408考研真题第33题', '简单', '2020年408真题', '下图描述的协议要素是 (  )。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/b42bbba8a9364239b802ef9dc98f18bf.svg)
Ⅰ、语法；Ⅱ、语义；Ⅲ、时序', '[''仅 Ⅰ；'', ''仅 Ⅱ；'', ''仅 Ⅲ；'', ''Ⅰ、Ⅱ、Ⅲ'']', "['C']", 'C
本题考查网络协议要素。协议 由语法、语义和时序（又称同步）三部分组成：语法规定了通信双方彼此“如何讲”，即规定了传输数据的格式。语义规定了通信双方彼此“讲什么”，规定了所要完成的功能，如通信双方要发出什么控制信息、执行的动作和返回的应答。时序规定了信息交流的次序。由图可知发送方与接收方依次交换信息，体现了协议三要素中的时序要素。', 9, 'Mogullzr', '2026-01-29 18:55:12', 9, NULL, '2026-01-29 18:55:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1310', '3849');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3850, '2020年408考研真题第34题', '简单', '2020年408真题', '下列关于虚电路网络的叙述中错误的是（ ）。', '[''可以确保数据分组传输顺序；'', ''需要为每条虚电路预分配带宽；'', ''建立虚电路时需要进行路由选择；'', ''依据虚电路号（VCID）进行数据分组 转发。'']', "['B']", 'B
虚电路服务需要有建立连接过程，每个分组使用短的虚电路号，属于同一条虚电路的分组
按照同一路由进行转发，分组到达终点的顺序与发送顺序相同，可以保证有序传输，不需
要为每条虚电路预分配带宽。', 9, 'Mogullzr', '2026-01-29 18:55:12', 9, NULL, '2026-01-29 18:55:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1311', '3850');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3851, '2020年408考研真题第35题', '简单', '2020年408真题', '下图所示的网络冲突域和广播域的个数分别是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/74ac39df422f4670b16d8428eb22001b.svg)
', '[''2，2；'', ''2，4；'', ''4，2；'', ''4，4；'']', "['C']", 'C
参考网络设备总结：
网络层设备路由器可以隔离广播域和冲突域；链路层设备普通交换机只能隔离冲突域；物
理层设备集线器、中继器既不能隔离冲突域又不能隔离广播域。因此，题中共有 2 个广播
域、4 个冲突域。', 9, 'Mogullzr', '2026-01-29 18:55:14', 9, NULL, '2026-01-29 18:55:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1163', '3851');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3852, '2020年408考研真题第36题', '简单', '2020年408真题', '假设主机采用停等协议向主机乙发送数据帧，数据帧长与确认帧长均为 1000B。数据传输速率是 10kbps，单项传播延时是 200ms。则甲的最大信道利用率（ ）。', '[''80%；'', ''66.7%；'', ''44.4%；'', ''40%'']', "['D']", 'D
发送数据帧和确认帧的时间均为 t= 1000x8b/10kbps = 800ms。发送周期 T = 800ms + 200ms + 800ms + 200ms = 2000ms。信道利用率= t/T x 100% = 800/2000x100% = 40%。', 9, 'Mogullzr', '2026-01-29 18:55:14', 9, NULL, '2026-01-29 18:55:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1122', '3852');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1210', '3852');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3853, '2020年408考研真题第37题', '简单', '2020年408真题', '某 IEEE 802.11 无线局域网中主机 H 与 AP 之间发送或接收 CSMA/CA 帧的过程如下图所示，在 H 或 AP 发送帧前所等待的帧间间隔时间（IFS）中最长的是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/afbee992abe541799c97c65bbe4d4fa9.svg)
', '[''IFS1;'', ''IFS2;'', ''IFS3;'', ''IFS4；'']', "['A']", 'A
为了尽量避免碰撞，IEEE 802.11规定，所有站在完成发送后，必须等待一段很短的时间（继续
监听）才能发送下一帧。这段时间称为帧间间隔（InterFrame Space, IFS）。帧间间隔的长
短取决于该站要发送的帧的类型。IEEE 802.11 使 用 3 种帧间间隔：DIFS（分布式协调 IFS）：最长的 IFS , 优先级最低，用于异步帧竞争访问的时延。PIFS（点协调 IFS）：中等长度的 IFS , 优先级居中，在 PC F 操作中使用。SIFS（短 IFS）：最短的 IFS , 优先级最高，用于需要立即响应的操作。网络中的控制帧及所接收数据的确认帧都采用 SIFS 作为发送之前的等待时延。当结点要发
送数据帧时，载波监听到信道空闲时，需等待 DIFS 后发送 RTS 预约信道，图中 IFS1 对应
的是帧间间隔 DIFS，时间最长，图中 IFS2、IFS3、IFS4 对应 SIFS。', 9, 'Mogullzr', '2026-01-29 18:55:15', 9, NULL, '2026-01-29 18:55:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1287', '3853');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3854, '2020年408考研真题第38题', '简单', '2020年408真题', '若主机甲与主机乙已建立一条 TCP 连接，最大段长（MSS）为 1KB，往返时间（RTT）为 2ms，则在不出现拥塞的前提下，拥塞窗口从 8KB 增长到 32KB 所需的最长时间是：', '[''4ms；'', ''8ms；'', ''24ms;'', ''48ms；'']', "['D']", 'D
由于慢开始门限 ssthresh 可以根据需求设置，为了求拥塞窗口从 8KB 增长到 32KB 所需的最长时间，可以假定慢开始门限小于等于 8KB，只要不出现拥塞，拥塞窗口就都是加法增大，每经历一个传输轮次（RTT），拥塞窗口逐次加 1，所需最长时间为 (32-8)x2ms=48ms。', 9, 'Mogullzr', '2026-01-29 18:55:15', 9, NULL, '2026-01-29 18:55:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1127', '3854');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3855, '2020年408考研真题第39题', '简单', '2020年408真题', '若主机甲与主机乙建立 TCP 连接时发送的 SYN 段中的序号为 1000，在断开连接时，甲发送给乙的 FIN 段中的序号为 5001，则在无任何重传的情况下，甲向乙已经发送的应用层数据的字节数为：', '[''4002；'', ''4001；'', ''4000；'', ''3999；'']', "['C']", 'C
甲与乙建立 TCP 连接时发送的 SYN 段中的序号为 1000，则在数据传输阶段所用的起始序号为 1001；断开连接时，甲发送给乙的 FIN 段中的序号为 5001，在无任何重传的情况下，甲向乙已经发送的应用层数据的字节数为 5001-1001=4000。', 9, 'Mogullzr', '2026-01-29 18:55:15', 9, NULL, '2026-01-29 18:55:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1192', '3855');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1312', '3855');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3856, '2020年408考研真题第40题', '简单', '2020年408真题', '假设下图所示网络中的本地域名服务器只提供递归查询服务，其他域名的服务器均只提供迭代查询服务；局域网内主机访问 Internet 上各服务器的往返时间（RTT）均为 10ms，忽略其他各种时延，若主机 H 通过超链接http://www.abc.com/index.html，请求浏览纯文本 Web 页 index.html，则从点击 超链接开始到浏览器接收到 index.html 页面为止，所需最短、最长时间分别是：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/ef2b286f883d430badc0be5c10413b47.svg)
', '[''10ms，40ms；'', ''10ms，50ms；'', ''20ms，40ms；'', ''20ms，50ms;'']', "['D']", 'D
题中 RTT 均为局域网内主机（主机 H、本地域名服务器）访 问 Internet 上各服务器的往返时间，且忽略其他时延，因此主机 H 向本地域名服务器的查询时延忽略不计。最短时间：本地主机中有该域名到 IP 地址对应的记录，因此不需要 DNS 查询时延，直接和www.abc.com服务器建立 TCP 连接再进行资源访问，TCP 连接建立需要 1 个 RTT，接着发送访问请求并收到服务器资源响应需要 1 个 RTT，共计 2 个 RTT，即 20ms；最长时间：本地主机递归查询本地域名服务器（延时忽略），本地服务器依次迭代查询根域名服务器、com 顶级域名服务器、abc.com 域名服务器，共 3 个 RTT，查询到 IP 地址后，将该映射返回给主机 H，主机 H 和www.abc.com服务器建立 TCP 连接再进行资源访问，共 2 个 RTT，因此最长时间需要 3+2=5 个 RTT，即 50ms。', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1164', '3856');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3857, '2020年408考研真题第41题', '简单', '2020年408真题', '定义三元组$(a, b, c)$（$a, b, c$均为正数）的距离$D = ∣a - b∣ + ∣b - c∣ + ∣c - a∣$。给定$3$个非空整数集合$S_{1}, S_{2}, S_{3}$，按升序分别存储在$3$个数组中。请设计一个尽可能高效的算法，计算并输出所有可能的三元组$(a, b, c)$（$a ∈ S_{1}, b ∈ S_{2}, c ∈ S_{3}$）中的最小距离。例如$S_{1} = \\{−1, 0, 9\\}, S_{2} = \\{−25, −10, 10, 11\\}, S_{3} = \\{2, 9, 17, 30, 41\\}$。则最小距离为$2$，相应的三元组为$(9, 10, 9)$。要求：（1）给出算法的基本设计思想；（2）根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释；（3）说明你所设计算法的时间复杂度和空间复杂度', '[]', '', '分析，由$D = ∣a - b∣ + ∣b - c∣ + ∣c - a∣ ≥ 0$得：
① 当$a = b = c$时，距离最小。
② 其余情况。不失一般性，假设观察下面的数轴：

$L_{1} = ∣a - b∣$，$L_{2} = ∣b - c∣$，$L_{3} = ∣c - a∣$，$D = ∣a - b∣ + ∣b - c∣ + ∣c - a∣ = L_{1} + L_{2} + L_{3} = 2L_{3}$
由$D$的表达式可知，事实上决定$D$大小的关键是$a$和$c$之间的距离，于是问题就可以简化
为每次固定$c$找一个$a$使得$L_{3} = ∣c - a∣$最小。
1）算法的基本设计思想
使用$D_{min}$记录所有已处理过的三元组的最小距离，初值为一个足够大的整数。集合$S_{1}$、$S_{2}$和$S_{3}$，分别保存在数组$A$、$B$、$C$中。数组的下标变量$i = j = k = 0$，当$i < S_{1}$、$j < S_{2}$且$k < S_{3}$时（$∣S∣$表示集合$S$中的元素个数），循环执行以下过程：计算（$A \\lbrack i \\rbrack$，$B \\lbrack j \\rbrack$，$C \\lbrack j \\rbrack$）的距离$D$；（计算$D$）若$D < D_{min}$，则$D_{min} = D$；（更新$D$)将$A \\lbrack i \\rbrack$，$B \\lbrack i \\rbrack$，$C \\lbrack j \\rbrack$中的最小值的下标$+1$；（对照分析：最小值为$a$，最大值为$c$，这里$c$不变而更新$a$，试图寻找更小距离$D$）输出$D_{min}$，结束。
2）算法实现
voidsolve(intS1[],intn1,intS2[],intn2,intS3[],intn3){inti=0,j=0,k=0;intres=INT32_MAX;while(i<n1&&j<n2&&k<n3){inta=S1[i],b=S2[j],c=S3[k];intD=abs(a-b)+abs(b-c)+abs(a-c);res=min(res,D);intv=min3(a,b,c);if(v==a){i++;}elseif(v==b){j++;}else{k++;}}returnres;}
3）设$n = ∣S_{1}∣ + ∣S_{2}∣ + ∣S_{3}∣$，时间复杂度为$O(n)$，空间复杂度为$O(1)$。
', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1167', '3857');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3858, '2020年408考研真题第42题', '简单', '2020年408真题', '任一个字符的编码都不是其它字符编码的前缀，则称这种编码具有前缀特性。现有某字符集（字符个数≥2）的不等长编码，每个字符的编码均为二进制的 0、1 序列，最长为 L 位，且具有前缀特性。请回答下列问题：⑴ 哪种数据结构适宜保存上述具有前缀特性的不等长编码？⑵ 基于你所设计的数据结构，简述从 0/1 串到字符串的译码过程。⑶ 简述判定某字符集的不等长编码是否具有前缀特性的过程。', '[]', '', '1）使用一棵二叉树保存字符集中各字符的编码，每个编码对应于从根开始到达某叶结点的
一条路径，路径长度等于编码位数，路径到达的叶结点中保存该编码对应的字符。
2）从左至右依次扫描 0/1 串中的各位。从根开始，根据串中当前位沿当前结点的左子指针
或右子指针下移，直到移动到叶结点时为止。输出叶结点中保存的字符。然后从根开始
重复这个过程，直到扫描到 0/1 串结束，译码完成。
3）二叉树既可用于保存各字符的编码，又可用于检测编码是否具有前缀特性。判定编码是
否具有前缀特性的过程，也是构建二叉树的过程。初始时，二叉树中仅含有根结点，其
左子指针和右子指针均为空。
依次读入每个编码 C，建立/寻找从根开始对应于该编码的一条路径，过程如下：
对每个编码，从左至右扫描 C 的各位，根据 C 的当前位 (0 或 1) 沿结点的指针（左子指
针或右子指针）向下移动。当遇到空指针时，创建新结点，让空指针指向该新结点并继续
移动。沿指针移动的过程中，可能遇到三种情况：
若遇到了叶结点（非根），则表明不具有前缀特性，返回。若在处理 C 的所有位的过程中，均没有创建新结点，则表明不具有前缀特性，返回。若在处理 C 的最后一个编码位时创建了新结点，则继续验证下一个编码。
若所有编码均通过验证，则编码具有前缀特性。
', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1229', '3858');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3859, '2020年408考研真题第43题', '简单', '2020年408真题', '有实现$x × y$的两个 C 语言函数如下：unsignedumul(unsignedx,unsignedy){returnx*y;}intimul(intx,inty){returnx*y;}假定某计算机 M 中 ALU 只能进行加减运算和逻辑运算。请回答下列问题。(1) 若 M 的指令系统中没有乘法指令，但有加法、减法和移位等指令，则在 M 上也能实现上述两个函数中的乘法运算，为什么？(2) 若 M 的指令系统中有乘法指令，则基于 ALU、移位器、寄存器以及相应控制逻辑实现乘法指令时，控制逻辑的作用是什么？(3) 针对以下三种情况：
①没有乘法指令；
②有使用 ALU 和移位器实现的乘法指令；
③有使用阵列乘法器实现的乘法指令，
函数umul()在哪种情况下执行时间最长？哪种情况下执行的时间最短？说明理由。(4)$n$位整数乘法指令可保存$2n$位乘积，当仅取低$n$位作为乘积时，其结果可能会发生溢出。当$n = 32$、$x = 2^{31} - 1$、$y = 2$时，带符号整数乘法指令和无符号整数乘法指令得到的$x × y$的$2n$位乘积分别是什么（用十六进制表示）？此时函数umul()和imul()的返回结果是否溢出？对于无符号整数乘法运算，当仅取乘积的低位作为乘法结果时，如何用$2n$位乘积进行溢出判断', '[]', '', '1）乘法运算可以通过加法和移位来实现。编译器可以将乘法运算转换为一个循环代码段，在循环代码段中通过比较、加法和移位等指令实现乘法运算。
2）控制逻辑的作用是控制循环次数，控制加法和移位操作。
3）①最长，③最短。对于①，需要用循环代码段（即软件）实现乘法操作，因而需要反复
执行很多条指令，而每条指令都需要取指令、译码、取数、执行并保存结果，所以执行
时间很长；对于②和③，都只需用一条乘法指令实现乘法操作，不过②中的乘法指令需
要多个时钟周期才能完成，而③中的乘法指令可以在一个时钟周期内完成，所以③的执
行时间最短。
4）当$n = 32$，$x = 2^{31} - 1$，$y = 2$时，带符号整数和无符号整数乘法指令得到的$64$位乘积都是
00000000 FFFF FFFEH。int 型的表示范围为$\\lbrack −2^{31}, 2^{31} - 1 \\rbrack$，故函数imul()的结果溢出：
unsigned int 型的表示范围为$\\lbrack 0, 2^{32} - 1 \\rbrack$，故函数umul()的结果不溢出。对于无符号整数
乘法，若乘积高$n$位全为$0$，即使低$n$位全为$1$也正好是$2^{32} - 1$，不溢出，否则溢出。
', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1313', '3859');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1168', '3859');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3860, '2020年408考研真题第44题', '简单', '2020年408真题', '假定主存地址为 32 位，按字节编址，指令 Cache 和数据 Cache 与主存之间均采用 8 路组相联映射方式，直写（WriteThrough）写策略和 LRU 替换算法，主存块大小为 64B，数据区容量各为 32KB。开始时 Cache 均为空。请回答下列问题。(1) Cache 每一行中标记（Tag）、LRU 位各占几位？是否有修改位？(2) 有如下 C 语言程序段：for(k=0;k<1024;k++)s[k]=2*s[k];若数组 s 及其变量 k 均为 int 型，int 型数据占 4B，变量 k 分配在寄存器中，数组 s 在主存中的起始地址为 008000C0H，则该程序段执行过程中，访问数组 s 的数据 Cache 缺失次数为多少？(3) 若 CPU 最先开始的访问操作是读取主存单元 00010003H 中的指令，简要说明从 Cache 中访问该指令的过程，包括 Cache 缺失处理过程。', '[]', '', '1）主存块大小为 64B=2 字节，所以主存地址低 6 位为块内地址，Cache 组数为
32KB/(64B×8) = 64 =$2^{6}$，故主存地址中间 6 位为 Cache 组号，主存地址中高 32-6-6
=20 位为标记，采用 8 路组相联映射，故每行中的 LRU 位占 3 位，采用直写方式，故
没有修改位。
2）0080 00C0H = 0000 0000 1000 0000 0000 0000 1100 0000B，主存地址的低 6 位为块内地
址，为全 0，故 s 位于一个主存块的开始处，占 1024×4B/64B=64 个主存块：在执行程
序段的过程中，每个主存块中的 64B/4B=16 个数组元素依次读、写 1 次，因而对每个
主存块，总是第一次访问缺失，此时会将整个主存块调入 Cache，之后每次都命中。综
上，数组 s 的数据 Cache 访问缺失次数为 64 次。
3）0001 0003H = 0000 0000 0000 0001 0000 0000 0000 0011B，根据主存地址划分可知，组
索引为 0，故该地址所在主存块被映射到指令 Cache 的第 0 组；因为 Cache 初始为空，
所有 Cache 行的有效位均为 O，所以 Cache 访问缺失。此时，将该主存块取出后存入指
令 Cache 的第 0 组的任意一行，并将主存地址高 20 位（00010H）填入该行标记字段，
设置有效位，修改 LRU 位，最后根据块内地址 000011B 从该行中取出相应的内容。
', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1149', '3860');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3861, '2020年408考研真题第45题', '简单', '2020年408真题', '现有 5 个操作 A、B、C、D 和 E，操作 C 必须在 A 和 B 完成后执行，操作 E 必须在 C 和 D 完成后执行，请使用信号量的 wait()、signal() 操作（P、V 操作）描述上述操作之间的同步关系，并说明所用信号量及其初值。', '[]', '', '本题要求实现操作的先后顺序，没有互斥关系，是一个简单的同步问题。
本题虽然有 5 个操作，但是只有 4 个同步关系，因此分别设置信号量 SAC、SBC、SCE 和 SDE 对应 4 个同步关系。
semaphoreSAC=0;// 实现 A 是 C 的前驱关系semaphoreSBC=0;// 实现 B 是 C 的前驱关系semaphoreSCE=0;// 实现 C 是 E 的前驱关系semaphoreSDE=0;// 实现 D 是 E 的前驱关系A(){操作A;V(SAC);}B(){操作B;V(SBC);}C(){P(SAC);P(SBC);操作C;V(SCE);}D(){操作D;V(SDE);}E(){P(SCE);P(SDE);操作E;}
', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1135', '3861');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3862, '2020年408考研真题第46题', '简单', '2020年408真题', '某 32 位系统采用基于二级页表的请求分页存储管理方式，按字节编址，页目录项和页表项长度均为 4 字节，虚拟地址结构如下所示。
$$
\\begin{array}{c|c|c|}
页目录号（10位） & 页号（10位） & 页内偏移量（12位） \\\\
\\end{array}
$$
某 C 程序中数组 a[1024][1024]的起始虚拟地址为 1080 0000H，数组元素占 4 字节，该程序运行时，其进程的页目录起始物理地址为 0020 1000H，请回答下列问题。(1) 数组元素 a[1][2]的虚拟地址是什么？对应的页目录号和页号分别是什么？对应的页目录项的物理地址是什么？若该目录项中存放的页框号为 00301H，则 a[1][2]所在页对应的页表项的物理地址是什么？(2) 数组 a 在虚拟地址空间中所占区域是否必须连续？在物理地址空间中所占区域是否必须连续？(3) 已知数组 a 按行优先方式存放，若对数组 a 分别按行遍历和按列遍历，则哪一种遍历方式的局部性更好？', '[]', '', '1） ①页面大小=$2^{12}$B = 4096B = 4KB。每个数组元素 4B，每个页面可以存放 4KB/4B=
1024 个数组元素，正好是数组的一行，数组 a 按行优先方式存放。10800000H 的虚
页号为 10800H，因此 a[0] 行存放在虚页号为 10800H 的页面中，a[1] 行存放在页号
为 10801H 的页面中。a[1][2] 的虚拟地址为 10801000H+4×2=10801008H。
②转换为二进制 0001 0000 1000 0000 0001 0000 0000 1000，根据虚拟地址结构可知，对
应的页目录号为 042H，页号为 001H。
③进程的页目录表起始地址为 00201000H，每个页目录项长 4B，因此 042H 号页目录
项的物理地址是 00201000H+4×42H=00201108H。
④页目录项存放的页框号为 00301H，二级页表的起始地址为 00301000H，因此 a[1][2]
所在页的页号为 001H，每个页表项 4B，因此对应的页表项物理地址是 00301000H + 001H×4 = 00301004H。
2）根据数组的随机存取特点，数组 a 在虚拟地址空间中所占的区域必须连续，由于数组 a
不止占用一页，相邻逻辑页在物理上不一定相邻，因此数组 a 在物理地址空间中所占的
区域可以不连续。
3）由 1）可知每个页面正好可以存放一整行的数组元素，“按行优先方式存放”意味着数
组的同一行的所有元素都存放在同一个页面中，同一列的各个元素都存放在不同的页面
中，因此数组 a 按行遍历的局部性较好。
', 9, 'Mogullzr', '2026-01-29 18:55:17', 9, NULL, '2026-01-29 18:55:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '3862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1137', '3862');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3863, '2020年408考研真题第47题', '简单', '2020年408真题', '某校园网有两个局域网，通过路由器 R1、R2 和 R3 互联后接入 Internet，S1 和 S2 为 以太网交换机，局域网采用静态 IP 地址配置，路由器部分接口以及各主机的 IP 地址如图所示：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/d891e84bdc2e47d59aaca1257fd4ccea.svg)
假设 NAT 转换表结构为：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/feb0c0c62b4e4f01acc9734dd834073a.svg)
请回答下列问题：1）为使 H2 和 H3 能够访问 Web 服务器（使用默认端口号），需要进行什么配置？2）若 H2 主动访问 Web 服务器时，将 HTTP 请求报文封装到 IP 数据报 P 中发送，则 H2 发送 P 的源 IP 地址和目的 IP 地址分别是？经过 R3 转发后，P 的源 IP 地 址和目的 IP 地址分别是？经过 R2 转发后，P 的源 IP 地址和目的 IP 地址分别是？', '[]', '', '1）两个子网使用了相同的网段，且路由器开启了 NAT 功能，加上题干给出了 NAT 表的结
构，因此需要配置 NAT 表。路由器 R2 开启 NAT 服务，当路由器 R2 从 WAN 口收到
H2 或 H3 发来的数据时，根据 NAT 表发送给 Web 服务器的对应端口。外网 P 地址应
该为路由器的外端 P 地址，内网 P 地址应该为 Web 服务器的地址，Web 服务器的默
认端口为 80，因此内网端口号固定为 80，当其他网络的主机访问 Web 服务器时，默认
访问的端口应该也是 80，但是访问的目的 P 是路由器的 P 地址，因此 NAT 表中的外
部端口最好也统一为 80。题目中并未要求对 H1 进行访问，因此 H1 的 NAT 表项可以
不写。R2 的 NAT 表配置如下：
html外网内网IP 地址端口号IP 地址端口号203.10.2.280192.168.1.280
2）由于启用了 NAT 服务，H2 发送的 P 的源 P 地址应该是 H2 的内网地址，目的地址应
该是 R2 的外网 P 地址，源 P 地址是 192.168.1.2，目的 P 地址是 203.10.2.2。R3 转发
后，将 P 的源 P 地址改为 R3 的外网 P 地址，目的 P 地址仍然不变，源 P 地址是
203.10.2.6，目的 IP 地址是 203.10.2.2。R2 转发后，将 P 的目的 P 地址改为 Web 服务
器的内网地址，源地址仍然不变，源 P 地址是 203.10.2.6，.目的 P 地址是 192.168.1.2。
', 9, 'Mogullzr', '2026-01-29 18:55:20', 9, NULL, '2026-01-29 18:55:20', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1139', '3863');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1304', '3863');
