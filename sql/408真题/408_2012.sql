INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3441, '2012年408考研真题第1题', '简单', '2012年408真题', '求整数$n(n ≥ 0)$阶乘的算法如下，其时间复杂度是（ ）。intfact(intn){if(n<=1)return1;returnn*fact(n-1);}', '[''$O(log_{2}n))$'', ''$O(n)$'', ''$O(nlog_{2}n))$'', ''$O(n^{2})$'']', "['B']", 'B
本算法是一个递归运算，即算法中出现了调用自身的情形。递归的边界条件是$≤ 1$，每调用一次 fact()，传入该层 fact() 的参数值减 1。采用递归式来表示时间复杂度有
$$
T_{n} = \\begin{cases} O(1), n ≤ 1 \\\\ T(n - 1) + 1, n > 1 \\end{cases}
$$
则$T(n) = T(n - 1) + 1 = T(n - 2) + 2 = ⋯ = T(1) + n - 1 = O(n)$，故时间复杂度为$O(n)$。', 9, 'Mogullzr', '2026-01-29 18:52:04', 9, NULL, '2026-01-29 18:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '3441');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3442, '2012年408考研真题第2题', '简单', '2012年408真题', '已知操作符包括+、−、∗、/、(和)。将中缀表达式a+b−a∗((c+d)/e−f)+g转换为等价的后缀表达式ab+acd+e/f−∗−g+时，用栈来存放暂时还不能确定运算次序的操作符，若栈初始为空，则转换过程中同时保存在栈中的操作符的最大个数是（ ）。', '[''5'', ''7'', ''8'', ''11'']', "['A']", 'A
表达式求值是栈的典型应用。中缀表达式不仅依赖千运算符的优先级，而且要处理括号。后缀表达式的运算符在表达式的后面且没有括号，其形式已经包含了运算符的优先级。所以从中序转后序需要用运算符进行处理，使其包含运算符优先级的信息，从而转换为后缀表达式的形式。', 9, 'Mogullzr', '2026-01-29 18:52:04', 9, NULL, '2026-01-29 18:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1198', '3442');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3443, '2012年408考研真题第3题', '简单', '2012年408真题', '若一棵二叉树的前序遍历序列为 a, e, b, d, c，后序遍历序列为 b, c, d, e, a，则根结点的孩子结点（ ）。', '[''只有 e'', ''有 e、b'', ''有 e、c'', ''无法确定'']', "['A']", 'A
本题考察双序列组合重建二叉树，前序序列和后序序列不能唯一确定一棵二叉树，但可以确定二叉树中结点的祖先关系：当两个结点的前序序列为 XY 与后序序列为 YX 时，则 X 为 Y 的祖先。考虑前序序列 a,e,b,d,c、后序序列 b,c,d,e,a 且，可知 a 为根结点，e 为 a 的孩子结点。此外，a 的孩子结点的前序序列 e,b,d,c、后序序列 b,c,d,e，可知 e 是 bcd 的祖先，故根结点的孩子结点只有 e。故选 A。', 9, 'Mogullzr', '2026-01-29 18:52:04', 9, NULL, '2026-01-29 18:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1089', '3443');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3444, '2012年408考研真题第4题', '简单', '2012年408真题', '若平衡二叉树的高度为 6 ，且所有非叶结点的平衡因子均为 1 ，则该平衡二叉树的结点总数为（ ）。', '[''10'', ''20'', ''32'', ''33'']', "['B']", 'B
所有非叶结点的平衡因子均为 1，即平衡二叉树满足平衡的最少结点情况，如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/0d83e960c4244a29a634624d302ba42f.jpg)
对于高度为 N、左右子树的高度分别为 N-1 和 N-2、所有非叶结点的平衡因子均为 1 的平衡二叉树，总结点数的公式为：$C_{N} = C_{N-1} + C_{N-2} + 1$,$C_{1} = 1$,$C_{2} = 2$,$C_{3} = 2 + 1 + 1 = 4$，可推出$C_{6} = 20$。', 9, 'Mogullzr', '2026-01-29 18:52:04', 9, NULL, '2026-01-29 18:52:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1090', '3444');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3445, '2012年408考研真题第5题', '简单', '2012年408真题', '对有 n 个结点、e 条边且使用邻接表存储的有向图进行广度优先遍历，其算法时间复杂度是（）。', '[''$O(n)$'', ''$O(e)$'', ''$O(n + e)$'', ''$O(n × e)$'']', "['C']", 'C
广度优先遍历需要借助队列实现。邻接表的结构包括：顶点表；边表（有向图为出边表）。当采用邻接表存储方式时，在对图进行广度优先遍历时每个顶点均需入队一次（顶点表遍历），故时间复杂度为$O(n)$，在搜索所有顶点的邻接点的过程中，每条边至少访问一次（出边表遍历），故时间复杂度为$O(e)$，算法总的时间复杂度为$O(n + e)$。', 9, 'Mogullzr', '2026-01-29 18:52:06', 9, NULL, '2026-01-29 18:52:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1199', '3445');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3446, '2012年408考研真题第6题', '简单', '2012年408真题', '若用邻接矩阵存储有向图，矩阵中主对角线以下的元素均为零，则关于该图拓扑序列的结论是（ ）。', '[''存在，且唯一'', ''存在，且不唯一'', ''存在，可能不唯一'', ''无法确定是否存在'']', "['C']", 'C
对角线以下元素均为零，表明只有顶点$i$到顶点$j$($i < j$) 可能有边，而顶点$j$到顶点$i$一定没有边，即有向图是一个无环图，因此一定存在拓扑序列。对于拓扑序列是否唯一，试举一例：设有向图的邻接矩阵
$$
\\begin{vmatrix}
0 & 1 & 1\\\\
0 & 0 & 0\\\\
0 & 0 & 0
\\end{vmatrix}
$$
则存在两个拓扑序列，因此该图存在可能不唯一的拓扑序列。结论：对于任一有向图，如果它的邻接矩阵中对角线以下（或以上）的元素均为零，则存在拓扑序列（可能不唯一）。反正，若图存在拓扑序列，却不一定能满足邻接矩阵中主对角线以下的元素均为零，但是可以通过适当地调整结点编号，使其邻接矩阵满足前述性质。', 9, 'Mogullzr', '2026-01-29 18:52:06', 9, NULL, '2026-01-29 18:52:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1146', '3446');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3447, '2012年408考研真题第7题', '简单', '2012年408真题', '对如下有向图带权图，若采用迪杰斯特拉（Dijkstra）算法求从源点 a 到其他各顶点的最短路径，则得到的第一条最短路径的目标顶点是 b，第二条最短路径的目标顶点是 c，后续得到的其余最短路径的目标顶点依次是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/5572ff4d22f146d789bd848dc19ea403.svg)
', '[''d, e, f'', ''e, d, f'', ''f, d, e'', ''f, e, d'']', "['C']", 'C
从 a 到各顶点的最短路径的求解过程：| 顶点   | 第 1 趟  | 第 2 趟    | 第 3 趟      | 第 4 趟       | 第 5 趟         |
|:----:|:------:|:--------:|:----------:|:-----------:|:-------------:|
| b    | (a,b)2 |          |            |             |               |
| c    | (a,c)5 | (a,b,c)3 |            |             |               |
| d    | ∞      | (a,b,d)5 | (a,b,d)5   | (a,b,d)5    |               |
| e    | ∞      | ∞        | (a,b,c,f)4 |             |               |
| f    | ∞      | ∞        | (a,b,c,e)7 | (a,b,c,e)7  | (a,b,d,e)6    |
| 集合 S | {a,b}  | {a,b,c}  | {a,b,c,f}  | {a,b,c,f,d} | {a,b,c,f,d,e} |
后续目标顶点依次为 f, d, e。【排除法】对于 A，若下一个顶点为 d，路径 a,b,d 的长度5，而 a,b,c,f 的长度仅为4，显然错误。同理可以排除B。将 f 加入集合 S 后，采用上述的方法也可以排除 D。', 9, 'Mogullzr', '2026-01-29 18:52:07', 9, NULL, '2026-01-29 18:52:07', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1129', '3447');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3448, '2012年408考研真题第8题', '简单', '2012年408真题', '下列关于最小生成树的叙述中，正确的是（）。Ⅰ．最小生成树的代价唯一Ⅱ．所有权值最小的边一定会出现在所有的最小生成树中Ⅲ．使用普里姆（Prim）算法从不同顶点开始得到的最小生成树一定相同Ⅳ．使用普里姆算法和克鲁斯卡尔（Kruskal）算法得到的最小生成树总不相同', '[''仅Ⅰ'', ''仅Ⅱ'', ''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅳ'']', "['A']", 'A
对于 I，最小生成树的树形可能不唯一（这是因为可能存在权值相同的边），但是代价一定是唯一的，I 正确。对于Ⅱ，如果权值最小的边有多条并且构成环状，则总有权值最小的边将不出现在某棵最小生成树中，Ⅱ错误。对于Ⅲ，设 N 个结点构成环，N-1 条边权值相等，则从不同的顶点开始普里姆算法会得到 N-1 中不同的最小生成树，Ⅱ 错误。对于 V，当最小生成树唯一时（各边的权值不同），Prim 算法和 Kruskal 算法得到的最小生成树相同，IV 错误。', 9, 'Mogullzr', '2026-01-29 18:52:08', 9, NULL, '2026-01-29 18:52:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1200', '3448');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3449, '2012年408考研真题第9题', '简单', '2012年408真题', '已知一棵 3 阶 B 树，如下图所示。删除关键字 78 得到一棵新 B 树，其最右叶结点中的关键字是（）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/4e43f68e0b104adcbb6c9b74d15c85f7.svg)
', '[''60'', ''60, 62'', ''62, 65'', ''65'']', "['D']", 'D
本题考察 B 树的删除操作。对于上图所示的 3 阶 B 树，被删关键字 78 所在结点在删除前的关键字个数 = 1 = ⌈3/2⌉-1，且其左兄弟结点的关键字个数 = 2 ≥ ⌈3/2⌉，属于“兄弟够借”的情况，则需把该结点的左兄弟结点中最大的关键字上移到双亲结点中，同时把双亲结点中大于上移关键字的关键字下移到要删除关键字的结点中，这样就达到了新的平衡，如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/f0084e946fd94527a136b0b0d2753b38.svg)
', 9, 'Mogullzr', '2026-01-29 18:52:09', 9, NULL, '2026-01-29 18:52:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '3449');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3450, '2012年408考研真题第10题', '简单', '2012年408真题', '在内部排序过程中，对尚未确定最终位置的所有元素进行一遍处理称为一趟排序。下列排序方法中，每一趟排序结束都至少能够确定一个元素最终位置的方法是（ ）。Ⅰ．简单选择排序Ⅱ．希尔排序Ⅲ．快速排序Ⅳ．堆排序Ⅴ．二路归并排序', '[''仅Ⅰ、Ⅲ、Ⅳ'', ''仅Ⅰ、Ⅲ、Ⅴ'', ''仅Ⅱ、Ⅲ、Ⅳ'', ''仅Ⅲ、Ⅳ、Ⅴ'']', "['A']", 'A
本题考察不同内部排序算法的细节：对于 I，简单选择排序每次选择未排序列中的最小元素放入其最终位置。对于 II，希尔排序每次是对划分的子表进行排序，得到局部有序的结果，所以不能保证每一趟排序结束都能确定一个元素的最终位置。对于 III，快速排序每一趟排序结束后都将枢轴元素放到最终位置。对于 IV，堆排序属于选择排序，每次都将大根堆的根结点与表尾结点交换，确定其最终位置。对于 V，二路归并排序每趟对子表进行两两归并从而得到若干个局部有序的结果，但无法确定最终位置。I、III、IV 正确，本题选择 A。', 9, 'Mogullzr', '2026-01-29 18:52:10', 9, NULL, '2026-01-29 18:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3450');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3451, '2012年408考研真题第11题', '简单', '2012年408真题', '对同一待排序序列分别进行折半插入排序和直接插入排序，两者之间可能的不同之处是（ ）。', '[''排序的总趟数'', ''元素的移动次数'', ''使用辅助空间的数量'', ''元素之间的比较次数'']', "['D']", 'D
本题考察插入排序，折半插入排序与直接插入排序是将待插入元素插入前面的有序子表，区别是：确定当前记录在前面有序子表中的位置时，直接插入排序是采用顺序查找法，而折半插入排序是采用折半查找法。排序的总趟数取决于元素个数$n$，两者都是$n - 1$趟。元素的移动次数都取决于初试序列，两者相同。使用辅助空间的数量也都是 O(1)。折半插入排序的比较次数与序列初态无关，为$O(nlog_{2}n)$：直接插入排序的比较次数与序列初态有关，为$O(n) ∼ O(n^{2})$。', 9, 'Mogullzr', '2026-01-29 18:52:10', 9, NULL, '2026-01-29 18:52:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3451');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3452, '2012年408考研真题第12题', '简单', '2012年408真题', '假定基准程序 A 在某计算机上的运行时间为 100 秒，其中 90 秒为 CPU 时间，其余为 I/O 时间。若 CPU 速度提高 50%，I/O 速度不变，则运行基准程序 A 所耗费的时间是（ ）。', '[''55s'', ''60s'', ''65s'', ''70s'']', "['D']", 'D
程序 A 的运行时间为 100s，除去 CPU 时间 90s，剩余 10s 为 I/O 时间。CPU 提速后运行基准程序 A 所耗费的时间是 T = 90/1.5 + 10 = 70s。【误区】CPU速度提高50%，则CPU时间减少一半，而误选A。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1201', '3452');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3453, '2012年408考研真题第13题', '简单', '2012年408真题', '假定编译器规定 int 和 short 型长度分别为 32 位和 16 位，执行下列 C 语言语句：unsignedshortx=65530;unsignedinty=x;得到 y 的机器数为（ ）。', '[''0000 7FFAH'', ''0000 FFFAH'', ''FFFF 7FFAH'', ''FFFF FFFAH'']', "['B']", 'B
将一个 16 位 unsigned short 转换成 32 位形式的 unsigned int，因为都是无符号数，新表示形式的高位用 0 填充。16 位无符号整数所能表示的最大值为 65 5 35，其十六进制表示为 FFFFH，故 x 的十六进制表示为 FFFFH - 5H = FFFAH，所以 y 的十六进制表示为 0000 FFFAH。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1202', '3453');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1098', '3453');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3454, '2012年408考研真题第14题', '简单', '2012年408真题', 'float 类型（即 IEEE754 单精度浮点数格式）能表示的最大正整数是（ ）。', '[''$2^{126} - 2^{103}$'', ''$2^{127} - 2^{104}$'', ''$2^{127} - 2^{103}$'', ''$2^{128} - 2^{104}$'']', "['D']", 'D
IEEE754 单精度浮点数是尾数用采取隐藏位策略的原码表示，且阶码用移码（偏置值为$127$）表示的浮点数。规格化的短浮点数的真值为：$(−1)S × 1.m × 2^{E-127}$，$S$为符号位，阶码$E$的取值为$1 ∼ 254$（8 位表示），尾数$m$为$23$位，共$32$位；故 float 类型能表示的最大整数是$1.111 ⋯ 1 × 2^{254-127} = 2^{127} × (2 - 2^{−23}) = 2^{128} - 2^{104}$，故选 D。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '3454');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3455, '2012年408考研真题第15题', '简单', '2012年408真题', '某计算机存储器按字节编址，采用小端方式存放数据。假定编译器规定 int 型和 short 型长度分别为 32 位和 16 位，并且数据按边界对齐存储。某 C 语言程序段如下：struct{inta;charb;shortc;}record;record.a=273;若 record 变量的首地址为 0xC008，则地址 0xC008 中内容及 record.c 的地址分别为（ ）。', '[''0x00、0xC00D'', ''0x00、0xC00E'', ''0x11、0xC00D'', ''0x11、0xC00E'']', "['D']", 'D
尽管 record 大小为 7 个字节（成员 a 有 4 个字节，成员 b 有 1 个字节，成员 c 有 2 个字节），
由于数据按边界对齐方式存储，故 record 共占用 8 个字节。record.a 的十六进制
表示为 0x00000111，由于采用小端方式存放数据，故地址 0xC008 中内容应为低字节 0x11;
record.b 只占 1 个字节，后面的一个字节留空；record.c 占 2 个字节，故其地址为 0xC00E。各字
节的存储分配如下图所示。| 地址 | 0xC008          | 0xC009          | 0xC00A          | 0xC00B          |
|:--:|:---------------:|:---------------:|:---------------:|:---------------:|
| 内容 | record.a.(0x11) | record.a.(0x01) | record.a.(0x00) | record.a.(0x00) |
| 地址 | 0xC00C          | 0xC00D          | 0xC00E          | 0xC00F          |
| 内容 | record.b        | -               | record.c        | record.c        |
', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1203', '3455');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3456, '2012年408考研真题第16题', '简单', '2012年408真题', '下列关于闪存（Flash Memory）的叙述中，错误的是（ ）。', '[''信息可读可写，并且读、写速度一样快'', ''存储元由 MOS 管组成，是一种半导体存储器'', ''掉电后信息不丢失，是一种非易失性存储器'', ''采用随机访问方式，可替代计算机外部存储器'']', "['A']", 'A
闪存是 EEPROM 的进一步发展，可读可写，用 MOS 管的浮栅上有无电荷来存储信息。闪存依然是 ROM 的一种，写入时必须先擦除原有数据，故写的速度比读的速度要慢不少（硬件常识）。闪存是一种非易失性存储器，它采用随机访问方式。现在常见的 SSD 固态硬盘，即由Flash 芯片组成。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3457, '2012年408考研真题第17题', '简单', '2012年408真题', '假设某计算机按字编址，Cache 有 4 个行，Cache 和主存之间交换的块大小为 1 个字。若 Cache 的内容初始为空，采用 2 路组相联映射方式和 LRU 替换策略。访问的主存地址依次为 0,4,8,2,0,6,8,6,4,8 时，命中 Cache 的次数是（ ）。', '[''1'', ''2'', ''3'', ''4'']', "['C']", 'C
地址映射采用 2 路组相联，则主存地址为 01、45、89 可映射到第 0 组 Cache 中，主存地址为 23、6~7 可映射到第 1 组 Cache 中。Cache 置换过程如下表所示。|     | 走向 | 0 | 4 | 8 | 2 | 0 | 6 | 8  | 6  | 4 | 8  |
|:---:|:--:|:-:|:-:|:-:|:-:|:-:|:-:|:--:|:--:|:-:|:--:|
| 第0组 | 块0 |   | 0 | 4 | 4 | 8 | 8 | 0  | 0  | 8 | 4  |
|     | 块1 | 0 | 4 | 8 | 8 | 0 | 0 | 8* | 8  | 4 | 8* |
| 第1组 | 块2 |   |   |   |   |   | 2 | 2  | 2  | 2 | 2  |
|     | 块3 |   |   |   | 2 | 2 | 6 | 6  | 6* | 6 | 6  |
注：“_” 表示当前访问块，“*” 表示本次访问命中。注意：在不同的《计算机组成原理》教材中，关于组相联映射的介绍并不相同。通常采用唐朔飞教材中的方式，但本题中采用的是蒋本珊教材中的方式。可以推断两次命题的老师应该不是同一位老师，这也给考生答题带来了困扰。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1101', '3457');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3458, '2012年408考研真题第18题', '简单', '2012年408真题', '某计算机的控制器采用微程序控制方式，微指令中的操作控制字段采用字段直接编码法，共有 33 个微命令，构成 5 个互斥类，分别包含 7、3、12、5 和 6 个微命令，则操作控制字段至少有（ ）。', '[''5 位'', ''6 位'', ''15 位'', ''33 位'']', "['C']", 'C
字段直接编码方式将微命令字段分成若干个小字段，互斥性微命令组合在同一字段中，相容性微命令分在不同字段中，每个字段还要留出一个状态，表示本字段不发出任何微命令。5 个互斥类分别包含 7、3、12、5 和 6 个微命令，需要 3、2、4、3 和 3 位，共 15 位。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1105', '3458');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3459, '2012年408考研真题第19题', '简单', '2012年408真题', '某同步总线的时钟频率为 100MHz，宽度为 32 位，地址/数据线复用，每传输一个地址或数据占用一个时钟周期。若该总线支持突发（猝发）传输方式，则一次 “主存写” 总线事务传输 128 位数据所需要的时间至少是（ ）。', '[''20ns'', ''40ns'', ''50ns'', ''80ns'']', "['C']", 'C
总线频率为 100 MHz，则时钟周期为 10ns。总线位宽与存储字长都是 32 位，故每一个时钟周期可传送一个 32 位存储字。猝发式发送可以连续传送地址连续的数据，故总的传送时间为：传送地址 10ns，传送 128 位数据 40ns，共需 50ns。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1204', '3459');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3460, '2012年408考研真题第20题', '简单', '2012年408真题', '下列关于 USB 总线特性的描述中，错误的是（ ）。', '[''可实现外设的即插即用和热插拔'', ''可通过级联方式连接多台外设'', ''是一种通信总线，可连接不同外设'', ''同时可传输 2 位数据，数据传输率高'']', "['D']", 'D
USB（通用串行总线）的特点有：① 即插即用；② 热插拔；③ 有很强的连接能力，采用菊花链形式将众多外设连接起来；④ 有很好的可扩充性，一个 USB 控制器可扩充高达 127 个外部USB 设备；⑤ 高速传输，速度可达 480Mbps。所以 A、B、C 选项都符合 USB 总线的特点。对于 D, USB 是串行总线，不能同时传输 2 位数据。', 9, 'Mogullzr', '2026-01-29 18:52:11', 9, NULL, '2026-01-29 18:52:11', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1152', '3460');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3461, '2012年408考研真题第21题', '简单', '2012年408真题', '下列选项中，在 I/O 总线的数据线上传输的信息包括（ ）。Ⅰ. I/O 接口中的命令字Ⅱ. I/O 接口中的状态字Ⅲ. 中断类型号', '[''仅Ⅰ、Ⅱ'', ''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅲ'', ''Ⅰ、Ⅱ、Ⅲ'']', "['D']", 'D
根据总线组成，I/O 接口与 CPU 之间的 I/O 总线有数据线、控制线和地址线。控制线和地址线都是单向传输的，从 CPU 传送给 I/O 接口，而 I/O 接口中的命令字、状态字以及中断类型号均是由 I/O 接口发往 CPU 的，故只能通过 I/O 总线的数据线传输。', 9, 'Mogullzr', '2026-01-29 18:52:12', 9, NULL, '2026-01-29 18:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1179', '3461');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3462, '2012年408考研真题第22题', '简单', '2012年408真题', '响应外部中断的过程中，中断隐指令完成的操作，除保护断点外，还包括（ ）。Ⅰ. 关中断Ⅱ. 保存通用寄存器的内容Ⅲ. 形成中断服务程序入口地址并送 PC', '[''仅Ⅰ、Ⅱ'', ''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅲ'', ''Ⅰ、Ⅱ、Ⅲ'']', "['B']", 'B
在响应外部中断的过程中，中断隐指令完成的操作包括：①关中断；②保护断点；③引出中断服务程序（形成中断服务程序入口地址并送 PC）,所以只有 I、III 正确。Ⅱ 中的保存通用寄存器的内容是在进入中断服务程序后首先进行的操作。', 9, 'Mogullzr', '2026-01-29 18:52:12', 9, NULL, '2026-01-29 18:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3462');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '3462');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3463, '2012年408考研真题第23题', '简单', '2012年408真题', '下列选项中，不可能在用户态发生的事件是（ ）。', '[''系统调用'', ''外部中断'', ''进程切换'', ''缺页'']', "['C']", 'C
本题关键是对 “在用户态发生”（与上题的 “执行” 区分）的理解。对于 A，系统调用是操作系统提供给用户程序的接口，系统调用发生在用户态，被调用程序在核心态下执行。对于 B，外部中断是用户态到核心态的 “门”，也发生在用户态，在核心态完成中断过程。对于 C，进程切换属于系统调用执行过程中的事件，只能发生在核心态。对于 D，缺页产生后，在用户态发生缺页中断，然后进入核心态执行缺页中断服务程序。', 9, 'Mogullzr', '2026-01-29 18:52:12', 9, NULL, '2026-01-29 18:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1182', '3463');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3464, '2012年408考研真题第24题', '简单', '2012年408真题', '中断处理和子程序调用都需要压栈以保护现场，中断处理一定会保存而子程序调用不需要保存其内容的是（ ）。', '[''程序计数器'', ''程序状态字寄存器'', ''通用数据寄存器'', ''通用地址寄存器'']', "['B']", 'B
子程序调用只需保存程序断点，即该指令的下一条指令的地址；中断调用子程序不仅要保护断点（PC 的内容），而且要保护程序状态字寄存器的内容 PSW。在中断处理中，最重要的两个寄存器是 PC 和 PSWR。', 9, 'Mogullzr', '2026-01-29 18:52:12', 9, NULL, '2026-01-29 18:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3464');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3465, '2012年408考研真题第25题', '简单', '2012年408真题', '下列关于虚拟存储器的叙述中，正确的是（ ）。', '[''虚拟存储只能基于连续分配技术'', ''虚拟存储只能基于非连续分配技术'', ''虚拟存储容量只受外存容量的限制'', ''虚拟存储容量只受内存容量的限制'']', "['B']", 'B
在程序装入时，可以只将程序的一部分装入内存，而将其余部分留在外存，就可以自动程序执行。采用连续分配方式时，会使相当一部分内存空间都处于暂时或 “永久” 的空闲状态，造成内存资源的严重浪费，也无法从逻辑上扩大内存容量，因此虚拟内存的实现只能建立在离散分配的内存管理的基础上。有以下三种实现方式：①请求分页存储管理；②请求分段存储管理；③请求段页式存储管理。虚拟存储器容量既不受外存容量限制，也不受内存容量限制，而是由 CPU 的寻址范围决定的。', 9, 'Mogullzr', '2026-01-29 18:52:12', 9, NULL, '2026-01-29 18:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '3465');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3466, '2012年408考研真题第26题', '简单', '2012年408真题', '用户程序发出磁盘 I/O 请求后，系统的正确处理流程是操作系统的 I/O 子系统通常由四个层次组成，每一层明确定义了与邻近层次的接口。其合理的层次组织排列顺序是（ ）。', '[''用户级 I/O 软件、设备无关软件、设备驱动程序、中断处理程序'', ''用户级 I/O 软件、设备无关软件、中断处理程序、设备驱动程序'', ''用户级 I/O 软件、设备驱动程序、设备无关软件、中断处理程序'', ''用户级 I/O 软件、中断处理程序、设备无关软件、设备驱动程序'']', "['A']", 'A
设备管理软件一般分为以下层次：用户层、与设备无关的系统调用处理层、设备驱动程序以及中断处理程序。', 9, 'Mogullzr', '2026-01-29 18:52:12', 9, NULL, '2026-01-29 18:52:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1184', '3466');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3467, '2012年408考研真题第27题', '简单', '2012年408真题', '假设 5 个进程$P_{0}$、$P_{1}$、$P_{2}$、$P_{3}$、$P_{4}$共享三类资源$R_{1}$、$R_{2}$、$R_{3}$，这些资源总数分别为 18、6、22。T0 时刻的资源分配情况如下表所示，此时存在的一个安全序列是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/c49a67ae8ada4e579054a6737883ca3e.jpg)
', '[''$P_{0}, P_{2}, P_{4}, P_{1}, P_{3}$'', ''$P_{1}, P_{0}, P_{3}, P_{4}, P_{2}$'', ''$P_{2}, P_{1}, P_{0}, P_{3}, P_{4}$'', ''$P_{3}, P_{4}, P_{2}, P_{1}, P_{0}$'']', "['D']", 'D
首先求得各进程的需求矩阵 Need 与可利用资源矢量 Available：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/fde387f36b914ebfb0e8e05cda2e04b7.jpg)
比较 Need 和 Available 可以发现，初始时进程$P_{1}$与$P_{3}$可满足需求，排除 A、C。尝试给$P_{1}$分配资源，则$P_{1}$完成后 Available 将变为 (6,3,6)，无法满足$P_{0}$的需求，排除 B。尝试给$P_{3}$分配资源，则$P_{3}$完成后 Available 将变为 (4,3,7)，该向量能满足其他所有进程的需求。所以，以$P_{3}$开头的所有序列都是安全序列。', 9, 'Mogullzr', '2026-01-29 18:52:14', 9, NULL, '2026-01-29 18:52:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1185', '3467');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3468, '2012年408考研真题第28题', '简单', '2012年408真题', '若一个用户进程通过 read 系统调用读取一个磁盘文件中的数据，则下列关于此过程的叙述中，正确的是（ ）。Ⅰ. 若该文件的数据不在内存中，则该进程进入睡眠等待状态Ⅱ. 请求 read 系统调用会导致 CPU 从用户态切换到核心态Ⅲ. read 系统调用的参数应包含文件的名称', '[''仅Ⅰ、Ⅱ'', ''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅲ'', ''Ⅰ、Ⅱ和Ⅲ'']', "['A']", 'A
对于 I，当所读文件的数据不在内存时，产生中断（缺页中断），原进程进入阻塞状态，直到所需数据从外存调入内存后，才将该进程唤醒。对于 II，read 系统调用通过陷入将 CPU 从用户态切换到核心态，从而获取操作系统提供的服务。对于Ⅲ，要读一个文件首先要用 open 系统调用打开该文件。open 中的参数包含文件的路径名与文件名，而 read 只需要使用 open 返回的文件描述符，并不使用文件名作为参数。read 要求用户提供三个输入参数：①文件描述符 fd；②buf 缓冲区首址；③传送的字节数 n。read 的功能是试图从 fd 所指示的文件中读入 n 个字节的数据，并将它们送至由指针 buf 所指示的缓冲区中。', 9, 'Mogullzr', '2026-01-29 18:52:16', 9, NULL, '2026-01-29 18:52:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1205', '3468');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1186', '3468');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3469, '2012年408考研真题第29题', '简单', '2012年408真题', '一个多道批处理系统中仅有$P_{1}$和$P_{2}$两个作业，$P_{2}$比$P_{1}$晚 5ms 到达，它们的计算和 I/O 操作顺序如下：$P_{1}$：计算 60ms，I/O 80ms，计算 20ms$P_{2}$：计算 120ms，I/O 40ms，计算 40ms若不考虑调度和切换时间，则完成两个作业需要的时间最少是（ ）。', '[''240ms'', ''260ms'', ''340ms'', ''360ms'']', "['B']", 'B
由于$P_{2}$比$P_{1}$晚 5ms 到达，$P_{1}$先占用 CPU, 作业运行的甘特图如下所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/a2bdd02a78494250be58d2fa19518beb.jpg)
', 9, 'Mogullzr', '2026-01-29 18:52:16', 9, NULL, '2026-01-29 18:52:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3469');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3470, '2012年408考研真题第30题', '简单', '2012年408真题', '若某单处理器多进程系统中有多个就绪态进程，则下列关于处理机调度的叙述中，错误的是（ ）。', '[''在进程结束时能进行处理机调度'', ''创建新进程后能进行处理机调度'', ''在进程处于临界区时不能进行处理机调度'', ''在系统调用完成并返回用户态时能进行处理机调度'']', "['C']", 'C
选项 A、B、D 显然是可以进行处理机调度的情况。对于 C，当进程处于临界区时，说明进程正在占用处理机，只要不破坏临界资源的使用规侧，是不会影响处理机调度的。比如，通常访问的临界资源可能是慢速的外设（如打印机），如果在进程访问打印机时，不能进行处理机调度，那么系统的性能将是非常差的。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1206', '3470');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3471, '2012年408考研真题第31题', '简单', '2012年408真题', '下列关于进程和线程的叙述中，正确的是（ ）。', '[''不管系统是否支持线程，进程都是资源分配的基本单位'', ''线程是资源分配的基本单位，进程是调度的基本单位'', ''系统级线程和用户级线程的切换都需要内核的支持'', ''同一进程中的各个线程拥有各自不同的地址空间'']', "['A']", 'A
在引入线程后，进程依然还是资源分配的基本单位，线程是调度的基本单位，同一进程中的各个线程共享进程的地址空间。在用户级线程中，有关线程管理的所有工作都由应用程序完成，无须内核的干预，内核意识不到线程的存在。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1183', '3471');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3472, '2012年408考研真题第32题', '简单', '2012年408真题', '下列选项中，不能改善磁盘设备 I/O 性能的是（ ）。', '[''重排 I/O 请求次序'', ''在一个磁盘上设置多个分区'', ''预读和滞后写'', ''优化文件物理块的分布'']', "['B']", 'B
对于 A，重排 I/O 请求次序也就是进行I/O 调度，从而使进程之间公平地共享磁盘访问，减少 I/O 完成所需要的平均等待时间。对于 C，缓冲区结合预读和滞后写技术对于具有重复性及阵发性的 I/O 进程改善磁盘 I/O 性能很有帮助。对于 D，优化文件物理块的分布可以减少寻找时间与延迟时间，从而提高磁盘性能。在一个磁盘上设置多个分区与改善设备/O 性能并无多大联系，相反还会带来处理的复杂和降低利用率。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1207', '3472');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3473, '2012年408考研真题第33题', '简单', '2012年408真题', '在 TCP/IP 体系结构中，直接为 ICMP 提供服务的协议是（ ）。', '[''PPP'', ''IP'', ''UDP'', ''TCP'']', "['B']", 'B
ICMP 报文作为数据字段封装在 IP 分组中，因此，IP 协议直接为 ICMP 提供服务。UDP 和 TCP 都是传输层协议，为应用层提供服务。PPP 协议是链路层协议，为网络层提供服务。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1190', '3473');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1162', '3473');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3474, '2012年408考研真题第34题', '简单', '2012年408真题', '在物理层接口特性中，用于描述完成每种功能的事件发生顺序的是（ ）。', '[''机械特性'', ''功能特性'', ''过程特性'', ''电气特性'']', "['C']", 'C
此题考查物理层接口特性，过程特性定义各条物理线路的工作过程和时序关系。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1208', '3474');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3475, '2012年408考研真题第35题', '简单', '2012年408真题', '以太网的 MAC 协议提供的是（ ）。', '[''无连接不可靠服务'', ''无连接可靠服务'', ''有连接不可靠服务'', ''有连接可靠服务'']', "['A']", 'A
考虑到局域网信道质量好，以太网采取了两项重要的措施以使通信更简便：① 采用无连接的工作方式；② 不对发送的数据帧进行编号，也不要求对方发回确认。因此，以太网提供的服务是不可靠的服务，即尽最大努力的交付。差错的纠正由高层完成。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1209', '3475');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3476, '2012年408考研真题第36题', '简单', '2012年408真题', '两台主机之间的数据链路层采用后退 N 帧协议 (GBN) 传输数据，数据传输速率为 16 kbps，单向传播时延为 270 ms，数据帧长度范围是 128~512 字节，接收方总是以与数据帧等长的帧进行确认。为使信道利用率达到最高，帧序号的比特数至少为（ ）。', '[''5'', ''4'', ''3'', ''2'']', "['B']", 'B
本题考察回退 N 帧的极限，即求从发送一个帧到接收到这个帧的确认为止的时间内最多可以发送多少数据帧。要尽可能多发帧，应以短的数据帧计算，首先计算出发送一帧的时间：$128 × 8/(16 × 10^{3}) = 64$ms；发送一帧到收到确认为止的总时间：$64 + 270 × 2 + 64 = 668$ms；这段时间总共可以发送$668/64 = 10.4$（帧），发送这么多帧至少需要用$4$位比特进行编号。', 9, 'Mogullzr', '2026-01-29 18:52:18', 9, NULL, '2026-01-29 18:52:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1122', '3476');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1210', '3476');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3477, '2012年408考研真题第37题', '简单', '2012年408真题', '下列关于 IP 路由器功能的描述中，正确的是（ ）。I. 运行路由协议，设置路由表II. 监测到拥塞时，合理丢弃 IP 分组III. 对收到的 IP 分组头进行差错校验，确保传输的 IP 分组不丢失IV. 根据收到的 IP 分组的目的 IP 地址，将其转发到合适的输出线路上', '[''仅 III、IV'', ''仅 I、II、III'', ''仅 I、II、IV'', ''I、II、III、IV'']', "['C']", 'C
I 和 V 显然是 IP 路由器的功能。对于Ⅱ，当路由器监测到拥塞时，可合理丢弃 IP 分组，并向发出该 IP 分组的源主机发送一个源点抑制的 ICMP 报文。对于 III，路由器对收到的 IP 分组首部进行差错检验，丢弃有差错首部的报文，但不保证 IP 分组不丢失。对于 IV，这表述的也就是路由器的路由功能。', 9, 'Mogullzr', '2026-01-29 18:52:19', 9, NULL, '2026-01-29 18:52:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1139', '3477');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3478, '2012年408考研真题第38题', '简单', '2012年408真题', 'ARP 协议的功能是（ ）。', '[''根据 IP 地址查询 MAC 地址'', ''根据 MAC 地址查询 IP 地址'', ''根据域名查询\\xa0IP 地址'', ''根据 IP 地址查询域名'']', "['A']", 'A
在实际网络的数据链路层上传送数据时，最终必须使用硬件地址，ARP 协议是将网络层的 IP 地址解析为数据链路层的 MAC 地址。', 9, 'Mogullzr', '2026-01-29 18:52:19', 9, NULL, '2026-01-29 18:52:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1196', '3478');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3479, '2012年408考研真题第39题', '简单', '2012年408真题', '某主机的 IP 地址为 180.80.77.55，子网掩码为 255.255.252.0。若该主机向其所在子网发送广播分组，则目的地址可以是（ ）。', '[''180.80.76.0'', ''180.80.76.255'', ''180.80.77.255'', ''180.80.79.255'']', "['D']", 'D
子网掩码的第 3 个字节为 11111100，可知前 22 位为子网号、后 10 位为主机号。IP 地址的第 3 个字节为01001101（下画线为子网号的一部分），将主机号（即后 10 位）全置为 1，可以得到广播地址为 180.80.79.255。', 9, 'Mogullzr', '2026-01-29 18:52:19', 9, NULL, '2026-01-29 18:52:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1211', '3479');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3480, '2012年408考研真题第40题', '简单', '2012年408真题', '若用户 1 与用户 2 之间发送和接收电子邮件的过程如下图所示，则图中 ①、②、③ 阶段分别使用的应用层协议可以是
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/0a767af459e84546b1e9033ffccbd5f0.svg)
', '[''SMTP、SMTP、SMTP'', ''POP3、SMTP、POP3'', ''POP3、SMTP、SMTP'', ''SMTP、SMTP、POP3'']', "['D']", 'D
SMTP采用 “推” 的通信方式，在用户代理向邮件服务器及邮件服务器之间发送邮件时，SMTP 客户主动将邮件“推”送到 SMTP 服务器。而POP3采用 “拉” 的通信方式，当用户读取邮件时，用户代理向邮件服务器发出请求，“拉”取用户邮箱中的邮件。', 9, 'Mogullzr', '2026-01-29 18:52:20', 9, NULL, '2026-01-29 18:52:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1212', '3480');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3481, '2012年408考研真题第41题', '简单', '2012年408真题', '设有 6 个有序表 A、B、C、D、E、F，分别含有 10、35、40、50、60 和 200 个数据元素，各表中元素按升序排列。要求通过 5 次两两合并，将 5 个表最终合并成 1 个升序表，并在最坏情况下比较的总次数达到最小。请回答下列问题。(1) 给出完整的合并过程，并求出最坏情况下比较的总次数。(2) 根据你的合并过程，描述$N(N ≥ 2)$个不等长升序表的合并策略，并说明理由。', '[]', '', '1）对于长度分别为 m, n 的两个有序表的合并，最坏情况下是一直比较到两个表尾元素，比较次数为 m +n-1 次。故最坏情况的比较次数依赖于表长，为了缩短总的比较次数，根据哈夫曼树（最佳归并树）思想的启发，可采用如图所示的合并顺序。
html39519520085110454010355060
根据上图中的哈夫曼树，6 个序列的合并过程为：
第 1 次合并：表 A 与表 B 合并，生成含有 45 个元素的表 AB ;
第 2 次合并：表 AB 与表 C 合并，生成含有 85 个元素的表 ABC;
第 3 次合并：表 D 与表 E 合并，生成含有 110 个元素表 DE;
第 4 次合并：表 ABC 与表 DE 合并，生成含有 195 个元素的表 ABCDE;
第 5 次合并：表 ABCDE 与表 F 合并，生成含有 395 个元素的最终表。
由上述分析可知，最坏清况下的比较次数为：第 1 次合并，最多比较次数 = 10+35-1 = 44；第 2 次合并，最多比较次数 = 45+40-1 = 84；第 3 次合并，最多比较次数 = 50+60-1 = 109；第 4 次合并，最多比较次数 = 85+110-1 = 194；第 5 次合并，最多比较次数 = 195+200-1 = 394。
故比较的总次数最多为：44+84+109+194+394 = 825。
2）各表的合并策略是：在对多个有序表进行两两合并时，若表长不同，则最坏情况下总的比较次数依赖于表的合并次序。可以借用哈夫曼树的构造思想，依次选择最短的两个表进行合并，可以获得最坏情况下最佳的合并效率。
【评分说明】①对于用类似哈夫曼树（或最佳归并树）思想进行合并，过程描述正确，给 5 分。按其他策略进行合并，过程描述正确，给 3 分。
②正确算出与合并过程一致的总比较次数，给 2 分。若计算过程正确，但结果错误，可给 1 分。
③考生只要说明采用的是类似哈夫曼树（或最佳归并树）的构造方法作为合并策略，即可给 3 分。如果采用其他策略，只要能够完成合并，给 2 分。
', 9, 'Mogullzr', '2026-01-29 18:52:20', 9, NULL, '2026-01-29 18:52:20', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1145', '3481');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1195', '3481');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3482, '2012年408考研真题第42题', '简单', '2012年408真题', '假定采用带头结点的单链表保存单词，当两个单词有相同的后缀时，则可共享相同的后缀存储空间，例如，“loading" 和 “being” 的存储映像如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/64aef1654b9141899e58ac43e1fb4f93.svg)
设 str1 和 str2 分别指向两个单词所在单链表的头结点，链表结点结构为| data | next |，请设计一个时间上尽可能高效的算法，找出由 str1 和 str2 所指向两个链表共同后缀的起始位置（如图中字符 i 所在的结点位置 p）。要求：1）给出算法的基本设计思想。2）根据设计思想，采用 C 或 C++ 或 Java 语言描述算法，关键之处给出注释。3）说明你所设计算法的时间复杂度。', '[]', '', '顺序遍历两个链表到尾结点时，并不能保证两个链表同时到达尾结点。这是因为两个链表的长度不同。假设一个链表比另 一个链表长 k 个结点，我们先在长链表上遍历 k 个结点，之后同步遍历两个链表，这样就能够保证它们同时到达最后一个结点。由于两个链表从第一个公共结点到链表的尾结点都是重合的，所以它们肯定同时到达第 一个公共结点。
htmlloadbeing^str1str2ing^尾部对齐pq
算法的基本设计思想：
①分别求出 strl 和 str2 所指的两个链表的长度 m 和 n。
②将两个链表以表尾对齐：令指针 p、q 分别指向 strl 和 str2 的头结点，若$m ≥ n$，则使 p 指向链表中的第 m-n+1 个结点；若$m < n$，则使 q 指向链表中的第 n-m+1 个结点，即使指针 p 和 q 所指的结点到表尾的长度相等。
③反复将指针 p 和 q 同步向后移动，并判断它们是否指向同一结点。若 p 和 q 指向同一结点，则该点即为所求的共同后缀的起始位置。
2）算法的 C 语言代码描述：
structNode{intdata;Node*next;};intgetLength(Node*h){intlength=0;Node*p=h->next;while(p){length++;p=p->next;}returnlength;}Node*findCommonSuffix(Node*h1,Node*h2){Node*p1=h1;Node*p2=h2;intm=getLength(h1);intn=getLength(h2);if(m>n){for(inti=0;i<m-n;i++){p1=p1->next;}}else{for(inti=0;i<n-m;i++){p2=p2->next;}}while(p1!=p2){p1=p1->next;p2=p2->next;}returnp1;}
【评分说明】 ① 若考生所给算法实现正确，且时间复杂度为 O(m+n)，可给 12分；若算法正确，但时间复杂度超过 O(m+n)，则最高可给 9 分。
② 若在算法的基本设计思想描述中因文字表达没有非常清晰反映出算法思路，但在算法实现中能够清晰看出算法思想且正确的，可参照①的标准给分。
③ 若算法的基本设计思想描述或算法实现中部分正确，可参照①中各种情况的相应给分标准酌情给分。
③ 时间复杂度为 O(len1+len2) 或 O(max(len1,len2)), 其中 len1、len2 分别为两个链表的长度。
', 9, 'Mogullzr', '2026-01-29 18:52:22', 9, NULL, '2026-01-29 18:52:22', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1130', '3482');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3483, '2012年408考研真题第43题', '简单', '2012年408真题', '假定某计算机的 CPU 主频为 80MHz，CPI 为 4，平均每条指令访存 1.5 次，主存与 Cache 之间交换的块大小为 16B，Cache 的命中率为 99%，存储器总线宽度为 32 位。请回答下列问题。(1) 该计算机的 MIPS 数是多少？平均每秒 Cache 缺失的次数是多少？在不考虑 DMA 传送的情况下，主存带宽至少达到多少才能满足 CPU 的访存要求？(2) 假定在 Cache 缺失的情况下访问主存时，存在 0.0005% 的缺页率，则 CPU 平均每秒产生多少次缺页异常？若页面大小为 4KB，每次缺页都需要访问磁盘，访问磁盘时 DMA 传送采用周期挪用方式，磁盘 I/O 接口的数据缓冲寄存器为 32 位，则磁盘 I/O 接口平均每秒发出的 DMA 请求次数至少是多少？(3) CPU 和 DMA 控制器同时要求使用存储器总线时，哪个优先级更高？为什么？(4) 为了提高性能，主存采用四体低位交叉存储模式，工作时每 1/4 个存储周期启动一个体。若每个体的存储周期为 50ns，则该主存能提供的最大带宽是多少？', '[]', '', '本题综合涉及多个考点：计算机的性能指标、存储器的性能指标、DMA 的性能分析，DMA 方式的特点，多体交叉存储器的性能分析。
1）平均每秒 CPU 执行的指令数为：80M/4 = 20M，故MIPS数为 20；（1 分）平均每条指令访存 1.5 次，故平均每秒 Cache 缺失的次数 = 20M×1.5×(1-99%) = 300k;（1 分）当 Cache 缺失时，CPU 访问主存，主存与 Cache 之间以块为传送单位，此时，主存带宽为16B×300k/s = 4.8MB/s。在不考虑 DMA 传送的情况下，主存带宽至少达到 4.8MB/s 才能满足 CPU 的访存要求。（2 分）
2）题中假定在 Cache 缺失的情况下访问主存，平均每秒产生缺页中断 300000×0.0005% = 1.5 次。因为存储器总线宽度为 32 位，所以每传送 32 位数据，磁盘控制器发出一次 DMA 请求，故平均每秒磁盘 DMA 请求的次数至少为 1.5×4KB/4B = 1.5K = 1536。（2 分）
3）CPU 和 DMA 控制器同时要求使用存储器总线时，DMA 请求优先级更高；（1 分）因为 DMA 请求得不到及时响应，I/O 传输数据可能会丢失。（1 分）
4）四体交叉存储模式能提供的最大带宽为 4×4B/50ns=320MB/s。（2 分）
', 9, 'Mogullzr', '2026-01-29 18:52:22', 9, NULL, '2026-01-29 18:52:22', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '3483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '3483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1102', '3483');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3484, '2012年408考研真题第44题', '简单', '2012年408真题', '某 16 位计算机中，带符号整数用补码表示，数据 Cache 和指令 Cache 分离。下表给出了指令系统中部分指令格式，其中 Rs 和 Rd 表示寄存器，mem 表示存储单元地址，(x) 表示寄存器 x 或存储单元 x 的内容。该计算机采用 5 段流水方式执行指令，各流水段分别是取指（IF）、译码/读寄存器（ID）、执行/计算有效地址（EX）、访问存储器（M）和结果写回寄存器（WB），流水线采用 “按序发射，按序完成” 方式，没有采用转发技术处理数据相关，并且同一个寄存器的读和写操作不能在同一个时钟周期内进行。请回答下列问题：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/b689087811934ba09fed575fe4489c3f.jpg)
(1) 若 int 型变量 x 的值为 -513，存放在寄存器 R1 中，则执行指令 “SHR R1” 后，R1 的内容是多少（用十六进制表示）？(2) 若某个时间段中，有连续的 4 条指令进入流水线，在其执行过程中没有发生任何阻塞，则执行这 4 条指令所需的时钟周期数为多少？(3) 若高级语言程序中某赋值语句为x=a+b，x、a和b均为 int 型变量，它们的存储单元地址分别表示为[x]、[a]和[b]。该语句对应的指令序列及其在指令流水线中的执行过程如下图所示。则这 4 条指令执行过程中，$I_{3}$的 ID 段和$I_{4}$的 IF 段被阻塞的原因各是什么？(4) 若高级语言程序中某赋值语句为x=x*2+a，x和a均为 unsigned int 类型变量，它们的存储单元地址分别表示为[x]、[a]，则执行这条语句至少需要多少个时钟周期？要求模仿题 44 图画出这条语句对应的指令序列及其在流水线中的执行过程示意图。', '[]', '', '1）x 的机器码为$\\lbrack x \\rbrack 补​$= 1111 1101 1111 1111B，即指令执行前 (R1)=FDFFH，右移 1 位后为 1111 1110 1111 1111B，即指令执行后 (R1) = FEFFH。（2 分）
2）每个时钟周期只能有一条指令进入流水线，从第 5 个时钟周期开始，每个时钟周期都会有一条指令执行完毕，故至少需要 4+(5-1)=8 个时钟周期。（2 分）
3）$I_{3}$的 ID 段被阻塞的原因：因为$I_{3}$与$I_{1}$和$I_{2}$都存在数据冒险，需等到$I_{1}$和$I_{2}$将结果写回寄存器后，$I_{3}$才能读寄存器内容，所以$I_{3}$的 ID 段被阻塞（1 分）。$I_{4}$的 IF 段被阻塞的原因：因为$I_{4}$的前一条指令$I_{3}$在 ID 段被阻塞，所以$I_{4}$的 IF 段被阻塞（1 分）。
注意：要求“按序发射，按序完成”，故 2) 中下一条指令的 IF 必须和上一条指令的 ID 并行，以免因上一条指令发生冲突而导致下一条指令先执行完。
4）因2*x操作有左移和加法两种实现，故x=x*2+a对应的指令序列为：
I1    LOAD  R1, [x]
I2    LOAD  R2, [a]
I3    SHL   R1       // 或者 ADD R1, R1
I4    ADD   R1, R2
I5    STORE R2, [x]
这 5 条指令在流水线中的执行过程如下表所示：

故x=x*2+a语句最少需要 17 个时钟周期。
', 9, 'Mogullzr', '2026-01-29 18:52:24', 9, NULL, '2026-01-29 18:52:24', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1106', '3484');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1151', '3484');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3485, '2012年408考研真题第45题', '简单', '2012年408真题', '某请求分页系统的局部页面置换策略如下：系统从 0 时刻开始扫描，每隔 5 个时间单位扫描一轮驻留集（扫描时间忽略不计），本轮没有被访问过的页框将被系统回收，并放入到空闲页框链尾，其中内容在下一次被分配之前不被清空。当发生缺页时，如果该页曾被使用过且还在空闲页框链表中，则重新放回进程的驻留集中；否则，从空闲页框链表头部取出一个页框。假设不考虑其他进程的影响和系统开销，初始时进程驻留集为空。目前系统空闲页框链表中页框号依次为 32、15、21、41。进程 P 依次访问的 <虚拟页号，访问时刻> 是：<1, 1>、<3, 2>、<0, 4>、<0, 6>、<1, 11>、<0, 13>、<2, 14>。请回答下列问题。(1) 访问<0, 4>时，对应的页框号是什么？(2) 访问<1, 11>时，对应的页框号是什么？说明理由。(3) 访问<2, 14>时，对应的页框号是什么？说明理由。(4) 该策略是否适合于时间局部性好的程序？说明理由。', '[]', '', '1）页框号为 21。理由：因为起始驻留集为空，因此 0 页对应的页框为空闲链表中的第三个空闲页框 21，其对应的页框号为 21。
2）页框号为 32。理由：因 11>10 故发生第三轮扫描，页号为 1 的页框在第二轮已处于空闲页框链表中，此刻该页又被重新访问，因此应被重新放回驻留集中，其页框号为 32。
3）页框号为 41。理由：因为第 2 页从来没有被访问过，它不在驻留集中，因此从空闲页框链表中取出链表头的页框 41，页框号为 41。
4）合适。理由：如果程序的时间局部性越好，那么从空闲页框链表中重新取回的机会越大，该策略的优势越明显。
', 9, 'Mogullzr', '2026-01-29 18:52:24', 9, NULL, '2026-01-29 18:52:24', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1213', '3485');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3486, '2012年408考研真题第46题', '简单', '2012年408真题', '某文件系统空间的最大容量为 4TB（1TB=$2^{40}$B），以磁盘块为基本分配单位。磁盘块大小为 1KB。文件控制块 (FCB) 包含一个 512B 的索引表区。请回答下列问题。(1) 假设索引表区仅采用直接索引结构，索引表区存放文件占用的磁盘块号，索引表项中块号最少占多少字节？可支持的单个文件最大长度是多少字节？(2) 假设索引表区采用如下结构：第 0～7 字节采用 <起始块号，块数> 格式表示文件创建时预分配的连续存储空间，其中起始块号占 6B，块数占 2B；剩余 504 字节采用直接索引结构，一个索引项占 6B，那么可支持的单个文件最大长度是多少字节？为了使单个文件的长度达到最大，请指出起始块号和块数分别所占字节数的合理值并说明理由。', '[]', '', '1）文件系统中所能容纳的磁盘块总数为 4TB/1KB=2³²。要完全表示所有磁盘块，索引项中的块号最少要占 32/8=4B。而索引表区仅采用直接索引结构，故 512B 的索引表区能容纳512B/4B=128 个索引项。每个索引项对应一个磁盘块，所以该系统可支持的单个文件最大长度是 128×1KB=128KB.
2）这里的考查的分配方式不同于我们所熟悉的三种经典分配方式，但是题目中给出了详细的解释，这个小问采用混合索引的方式。所求的单个文件最大长度一共包含两部分：预分配的连续空间和直接索引区。
连续区块数占 2B，共可以表示 2¹⁶ 个磁盘块，即 2²⁶B。直接索引区共 504B/6B=84 个索引项。所以该系统可支持的单个文件最大长度是 2²⁶B+84KB。
为了使单个文件的长度达到最大，应使连续区的块数字段表示的空间大小尽可能接近系统最大容量 4TB。分别设起始块号和块数分别占 4B，这样起始块号可以寻址的范围是 2³² 个磁盘块，共 4TB，即整个系统空间。同样，块数字段可以表示最多 2³² 个磁盘块，共 4TB。
', 9, 'Mogullzr', '2026-01-29 18:52:24', 9, NULL, '2026-01-29 18:52:24', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3486');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3487, '2012年408考研真题第47题', '简单', '2012年408真题', '主机 H 通过快速以太网连接 Internet，IP 地址为 192.168.0.8，服务器 S 的 IP 地址为 211.68.71.80。H 与 S 使用 TCP 通信时，在 H 上捕获的其中 5 个 IP 分组如题 47-a 表所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/74bb56ce32214d13a8000066f3c44192.jpg)
请回答下列问题。(1) 题 47-a 表中的 IP 分组中，哪几个是由 H 发送的？哪几个完成了 TCP 连接建立过程？哪几个在通过快速以太网传输时进行了填充？(2) 根据题 47-a 表中的 IP 分组，分析 S 已经收到的应用层数据字节数是多少？(3) 若题 47-a 表中的某个 IP 分组在 S 发出时的前 40 字节如题 47-b 表所示，则该 IP 分组到达 H 时经过了多少个路由器？
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/4877ecba8de543579fe972b16444d2da.svg)
', '[]', '', '1）由题 47-a 表看出，源 IP 地址为 IP 分组头的第 13~16 字节。表中 1、3、4 号分组的源 P 地址均为 192.168.0.8（c0a80 008H），所以 1、3、4 号分组是由 H 发送的。
题 47-a 表中，1 号分组封装的 TCP 段的 SYN=1，ACK=0，seq=846b 41c5H；2 号分组封装的 TCP 段的 SYN=1，ACK=1，seq=e059 9fefH，ack=846b 41c6H；3 号分组装的 TCP 段的 ACK=1，seq=846b 41c6H，ack=e059 9ff0H，所以 1、2、3 号分组完成了 TCP 连接的建立过程。
由于快速以太网数据帧有效载荷的最小长度为 46 字节，表中 3、5 号分组的总长度为 40（28H）字节，小于 46 字节，其余分组总长度均大于 46 字节。所以 3、5 号分组通过以太网快速填充。
2）由 3 号分组封装的 TCP 段可知，发送应用层数据初始序号为 seq=846b 41c6H，由 5 号分组封装的 TCP 段可知，ack 为 seq=846b 41d6H，所以 S 己经收到的应用层数据的字节数为 846b 41d6H - 846b 41c6H = 10H = 16，所以 S 已经接收到了 16 个字节的应用层数据。
3）首先需要确定表 47-a 中的哪一个 IP 分组与表 47-b 中的 IP 分组相对应，这就要根据 IP 分组中的标识字段（第 5-6 个字节），观察可以判断表 47-a 编号为 5 的分组是与表 47-b 的分组相对应的，因为它们的标识字段都是 68H。若要判断 IP 分组经过多少个路由器就要观察TTL字段（第 9 个字节），发送前来自 S 的分组的 TTL 为 40H，H 接收到的分组的 TTL 为 31H，所以经过路由器的个数为 40H - 31H = 15。
', 9, 'Mogullzr', '2026-01-29 18:52:28', 9, NULL, '2026-01-29 18:52:28', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1214', '3487');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1124', '3487');
