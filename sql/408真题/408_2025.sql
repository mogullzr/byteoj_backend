INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4052, '2025年408考研真题第1题', '简单', '2025年408真题', '以下 C 代码的时间复杂度是（ ）。intcount=0;for(inti=0;i*i<n;i++)for(intj=0;j<i;j++)count++;', '[''$O(log_{2}n)$'', ''$O(n)$'', ''$O(nlog_{2}n)$'', ''$O(n^{2})$'']', "['B']", 'B
外层循环的条件是$i^{2} < n$，因此 i 的最大值为$\\sqrt{n}$。内层循环的的次数同样与 i 相同。所以总的循环次数为$\\sqrt{n}\\sqrt{n} = n$，时间复杂度为$O(n)$。', 9, 'Mogullzr', '2026-01-29 18:56:58', 9, NULL, '2026-01-29 18:56:58', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '4052');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4053, '2025年408考研真题第2题', '简单', '2025年408真题', '对于括号匹配问题，符号栈初始为空，容量为 3，下列表达式不能实现的是（ ）。', '[''(a+[b+(c+d)e]+f)+g-h'', ''[a*((b+c)/(d-e)+f/g)]-h'', ''[a*(b-(c-d)*e/(f+g))-h]'', ''[a-(b+[c*(d+e)-f]+g+h)]'']', "['D']", 'D
栈的容量为 3，意味着在任何时候，栈中的元素数量不能超过 3。需要选择一个在某些时刻栈的深度超过 3 的表达式。通过分析各个选项的嵌套深度，可以发现：A.(a+[b+(c+d)e]+f)+g-h最深嵌套：([(+)])，最多 3 个未匹配括号，正确。B.[a*((b+c)/(d-e)+f/g)]-h最深嵌套：[(())]，最多 3 个未匹配括号，正确。C.[a*(b-(c-d)*e/(f+g))-h]最深嵌套：[()()]，最多 3 个未匹配括号，正确。D.[a-(b+[c*(d+e)-f]+g+h)]最深嵌套：[([])]，最多 4 个未匹配括号，错误。', 9, 'Mogullzr', '2026-01-29 18:56:58', 9, NULL, '2026-01-29 18:56:58', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4053');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4054, '2025年408考研真题第3题', '简单', '2025年408真题', '若二叉树的节点值均为正整数，采用顺序存储方式保存在数组 R 中，用 -1 表示节点不存在，则下列数组中，不能表示一棵二叉树的是（）。', '[''R[] = {20, 15, 40, -1, -1, 35}'', ''R[] = {15, 40, 10, 18, 35, -1, -1}'', ''R[] = {15, 40, 10, -1, -1, -1, 12}'', ''R[] = {17, 20, 35, -1, 18, 45, -1, -1, 19, 27}'']', "['D']", 'D
在二叉树的顺序存储表示中，数组中的每个位置对应二叉树中特定节点。若节点值非负（-1 表示不存在），则非 -1 节点的父节点必须存在（根节点除外）。
对于选项 D，索引 8 处的节点值为 19，其父节点索引为 3（由公式$⌊(8 - 1)/2⌋ = 3$计算），但索引 3 处的值为 -1，即父节点不存在，违反了二叉树顺序存储的规则。因此，选项 D 不能表示一棵二叉树。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/6ee8ea622e4940b6b23214ad943e737e.jpg)
其他选项均满足每个非 -1 节点（除根节点）都有存在的父节点，是有效的二叉树顺序存储表示。', 9, 'Mogullzr', '2026-01-29 18:56:58', 9, NULL, '2026-01-29 18:56:58', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1305', '4054');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4055, '2025年408考研真题第4题', '简单', '2025年408真题', '下列关于二叉树及森林的叙述中，正确的是？（ ）。', '[''完全二叉树不存在度为 1 的结点'', ''任意一个森林可以转换为一棵二叉树。'', ''二叉树的分支结点个数比叶结点个数少'', ''链式树的根中保存的是最先计算的运算符'']', "['B']", 'B
完全二叉树中，度为 1 的结点可能存在。比如一颗完全二叉树只有两个结点，那么根结点的度就是 1。A 选项错误。森林转二叉树有固定的方法，B 选项正确。', 9, 'Mogullzr', '2026-01-29 18:57:08', 9, NULL, '2026-01-29 18:57:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1092', '4055');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4056, '2025年408考研真题第5题', '简单', '2025年408真题', '设字符集 S 包含 7 个字符，各字符出现的频次分别是 2, 3, 4, 6, 8, 10, 11。
为 S 中的各字符构造哈夫曼编码，编码长度不小于 3 的字符个数是（ ）。', '[''2'', ''3'', ''4'', ''5'']', "['D']", 'D
按照哈夫曼树构造：频次为 2, 3, 4, 6, 8, 10, 11合并 2 + 3 = 5合并 4 + 5 = 9合并 6 + 8 = 14合并 9 + 10 = 19合并 11 + 14 = 25合并 19 + 25 = 44 （根）可以得到以下二叉树：44
      /    \\
    19      25
   /  \\    /  \\
  9    10 11  14
 / \\          / \\
4   5        6   8
   / \\
  2   3编码长度不小于 3 的字符：2, 3, 4, 6, 8。一共有 5 个字符编码长度不小于 3，正确答案为 D。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1145', '4056');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4057, '2025年408考研真题第6题', '简单', '2025年408真题', '下列关于图的叙述中，正确的是（ ）。', '[''有向图必定存在入度为 0 的顶点'', ''有向无环图的拓扑排序有序序列存在且唯一'', ''各顶点的度均大于等于 2 的无向图必有回路'', ''可用 BFS 算法求出带权图中的每一对顶点的最短路径'']', "['C']", 'C
逐个选项来看：A. 错误，考虑一个有向图的环，每个顶点的入度都为 1。B. 错误，拓扑排序不一定是唯一的，在计算拓扑排序序列的过程中，如果有多个入度为 0 的顶点，则拓扑序列的数量大于 1。C. 正确，无环的图至少有一个顶点的度为 1，如果所有顶点的度都大于 1 了，那图中肯定存在环。D. 错误，BFS 不能求 带权图 的最短路径，求最短路径是使用 Djkstra 算法。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1093', '4057');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4058, '2025年408考研真题第7题', '简单', '2025年408真题', '已知查找表中有 400 个元素，查找元素概率相同。采用分块查找法且均匀分块。若采用顺序查找法确定元素所在块，且块内也采用顺序查找法，为效率最高，每块包含元素应为（ ）。', '[''8'', ''10'', ''20'', ''25'']', "['C']", 'C
设块大小为$m$，块数为$\\frac{n}{m}$。查找复杂度为$O(n/m + m)$。根据高中数学的知识可以得知，$m = \\sqrt{n} = 20$时，查找复杂度最低，所以$m = 20$。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1147', '4058');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1329', '4058');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4059, '2025年408考研真题第8题', '简单', '2025年408真题', '给 7 个不同的关键字，能够构成不同 4 阶 B 树的个数为（ ）。', '[''7'', ''8'', ''9'', ''10'']', "['C']", 'C
树高为 3：每个节点内关键字个数最少取 1 时，B 树高度为 3（类似满二叉树）——仅一种结构；树高为 2:根节点关键字个数取 1，第二层两节点关键字个数均取 3——一种结构；根节点关键字个数取 2，则第二层内三个节点关键字个数分别可取 221、212、122、311、131、113 共计六种结构；根节点关键字个数取 3，则第二层显然只有四个节点各含一个关键字此一种结构。综上，共计 9 种可能的结构。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '4059');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4060, '2025年408考研真题第9题', '简单', '2025年408真题', '下列关于散列法处理冲突的叙述中，正确的是（ ）。', '[''只要散列表不满，线性探查再散列一定能找到一个空闲位置'', ''只要散列表不满，二次探查再散列一定能找到一个空闲位置'', ''线性探查再散列处理的冲突，一定是发生在同义词之间'', ''二次探查再散列处理的冲突，一定是发生在非同义词之间'']', "['A']", 'A
在散列（哈希）方法中，同义词是指不同的元素通过哈希函数映射到同一个哈希值（或哈希地址)。这意味着这些元素在散列表中会发生冲突，因为它们试图占用相同的位置。非同义词指的是通过哈希函数映射到不同哈希值的元素，它们通常不会在初始哈希地址上发生冲突。对于题目中的选项：A. 只要散列表不满，线性探查再散列一定能找到一个空闲位置。线性探查是在发生冲突时，按顺序查找下一个可用位置。例如，如果发生冲突，就逐一检查下一个位置，直到找到空闲位置。只要散列表有空位，线性探查一定能找到一个空闲位置。因此，这个选项是正确的。B. 只要散列表不满，二次探查再散列一定能找到一个空闲位置。二次探查是通过二次函数（如平方）来决定下一个检查的位置。虽然理论上在某些情况下可能会更快找到空位，但由于散列表的装填因子和特定的探查序列，可能会有探查不到空闲位置的情况，因此这个选项不一定总是正确。C. 线性探查再散列处理的冲突，一定是发生在同义词之间。线性探查处理的冲突可能发生在同义词之间（即初始哈希值相同的元素），但也可能发生在非同义词之间（即由于探查过程而导致的冲突）。因此，这个选项是不正确的。D. 二次探查再散列处理的冲突，一定是发生在非同义词之间。二次探查可能会导致同义词和非同义词之间的冲突。因此，这个选项是不正确的。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1165', '4060');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4061, '2025年408考研真题第10题', '简单', '2025年408真题', '下列排序算法中，最坏情况下元素移动最少的是（ ）。', '[''冒泡排序'', ''直接插入排序'', ''快速排序'', ''简单选择排序'']', "['D']", 'D
排序算法的元素移动次数参考此节，其中简单选择排序迭代 n 轮，每次确定一个元素的最终位置，元素移动次数平均为$O(n)$。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '4061');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4062, '2025年408考研真题第11题', '简单', '2025年408真题', '对含 9 个关键字的初始序列进行排序，若序列的变化情况如下表所示，则下列排序算法中，采用的是（ ）。', '[''希尔排序'', ''基数排序'', ''归并排序'', ''折半插入排序'']', "['A']", 'A
第一次排序后，下标相差 3 的子序列有序。第二次排序后，下标相差 2 的子序列有序。由此判断是希尔排序。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '4062');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4063, '2025年408考研真题第12题', '简单', '2025年408真题', '在 32 位计算机上执行下列 C 语言代码：shortsi=-32767unsignedintui=si;则 ui 的真值为（ ）。', '[''$2^{15} - 1$'', ''$2^{15} + 1$'', ''$2^{32} - 2^{15} - 1$'', ''$2^{32} - 2^{15} + 1$'']', "['D']", 'D
本题考察无符号数和有符号数的补码表示。16 位的 short 类型的 -32767 的二进制表示为 1000 0000 0000 0001，将其转化为 32 位的 unsigned 时，需要在最高位扩展 16 位。由于 -32767 (short) 的最高位为 1，所以扩展的高位全部为 1。由此得到 32 位的 unsigned 的二进制是 1111 1111 1111 1111 1000 0000 0000 0001，其值为$1 + 2^{15} + 2^{16} + ⋯ + 2^{31} = 2^{32} - 2^{15} + 1$。', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1098', '4063');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4064, '2025年408考研真题第13题', '简单', '2025年408真题', '已知 float 型变量用 IEEE754 单精度浮点数格式表示。若 float 型变量 x 的机器数为 4730 0000H；则 x 的值为（ ）。', '[''$0.375 × 2^{14}$'', ''$1.375 × 2^{14}$'', ''$0.375 × 2^{15}$'', ''$1.375 × 2^{15}$'']', "['D']", 'D
本题考察IEEE 单精度浮点数表示。首先将十六进制转化为二进制：0100 0111 0011 0000 0000 0000 0000 0000。然后从中分解符号位、指数位和尾数位：符号位：0。指数位：1000 1110。尾数位：011 0000 0000 0000 0000 0000。计算阶码：$1 × 2^{7} + 0 × 2^{6} + 0 × 2^{5} + 0 × 2^{4} + 1 × 2^{3} + 1 × 2^{2} + 1 × 2^{1} + 0 × 2^{0} = 128 + 8 + 4 + 2 = 142$。计算尾数：$1 × 2^{0} + 0 × 2^{−1} + 1 × 2^{−2} + 1 × 2^{−3} = 1 + 0 + 0.25 + 0.125 = 1.375$。计算浮点数的值：$(−1)符号位 × 尾数 × 2^{指数} = 1 × 1.375 × 2^{15}$', 9, 'Mogullzr', '2026-01-29 18:57:09', 9, NULL, '2026-01-29 18:57:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '4064');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4065, '2025年408考研真题第14题', '简单', '2025年408真题', '假设 8 位字长的计算机中，两个带符号整数 x 和 y 的补码表示分别为$x_{补} = A3H$，$y_{补} = 75H$，则通过补码加减运算器得到的 x-y 的值及 OF 标志分别为（ ）。', '[''24, 0'', ''24, 1'', ''46,\\xa00'', ''46, 1'']', "['D']", 'D
x 的补码二进制表示为 1010 0011。y 的补码二进制表示为 0111 0101。x-y = x+(-y) = 1010 0011 + 1000 1011 = 0010 1110 = 32 + 8 + 4 + 2 = 46.二进制加法时最高位有进位，所以 OF = 1。', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '4065');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4066, '2025年408考研真题第15题', '简单', '2025年408真题', '某 32 计算机按字节编址，采用小端方式存放数据，编译器按边界对齐方式为下列 C 语言结构型数组变量 employce 分配储存空间。structrecord{intid;charname[10];intsalary;}employee[200];数组 employee 的起始地址为 0000A0B0H，employee[1].id 的机器数为 12345678H，问 56H 的地址是多少？（ ）。', '[''0000 A0C3H'', ''0000 A0C4H'', ''0000\\xa0A0C5H'', ''0000 A0C6H'']', "['C']", 'C
在小端方式下，数据的存放顺序是从最低有效字节到最高有效字节。例如，对于一个 4 字节的整数 12345678H，存放顺序为 78H 56H 34H 12H。首先，我们需要计算 struct record 的大小。根据定义：int id; 占用 4 字节。char name[10]; 占用 10 字节。int salary; 占用 4 字节。总共需要 18 字节。然而，由于编译器按边界对齐方式分配存储空间，通常会对齐到最接近的 4 字节边界。因此，struct record 实际上会占用 20 字节（因为 18 需要向上对齐到 20）。数组employee的起始地址为 0000A0B0H。employee[1]的起始地址为 0000A0B0H + 20 = 0000A0C4H在employee[1]中，id的值为 12345678H，存储在小端模式下：地址 0000A0C4H 存放 78H地址 0000A0C5H 存放 56H地址 0000A0C6H 存放 34H地址 0000A0C7H 存放 12H因此，56H 的地址是 0000A0C5H。', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1265', '4066');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1203', '4066');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4067, '2025年408考研真题第16题', '简单', '2025年408真题', '下列选项中，由指令体系结构（ISA）规定的是（ ）。', '[''是否采用阵列乘法器'', ''是否采用定长指令字格式'', ''是否采用微程序控制器'', ''是否采用单总线数据通路'']', "['B']", 'B
指令体系结构主要规定的是计算机系统中硬件和软件之间的接口，即指令的格式、操作码、操作数及寻址方式等。ISA 是软件开发人员和编译器设计者需要了解的部分，而硬件实现的具体细节通常由计算机体系结构的实现部分决定，而不是由 ISA 直接规定。选项中：A. 是否采用阵列乘法器：这是实现层面的细节，属于硬件设计实现的一部分，不由 ISA 规定。B. 是否采用定长指令字格式：这是指令集架构的一部分，因为它直接影响指令的格式和解码过程，是由 ISA 规定的。C. 是否采用微程序控制器：这也是实现层面的细节，是关于如何实现控制单元的，不由 ISA 规定。D. 是否采用单总线数据通路：这是实现层面的细节，与具体的硬件设计有关，不由 ISA 规定。', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1280', '4067');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4068, '2025年408考研真题第17题', '简单', '2025年408真题', '下列关于 RISC 的叙述中，错误的是（ ）。', '[''多采用硬连线方式实现控制器'', ''通常采用 Load/Store 型指令设计风格'', ''难以采用流水线数据通路实现微架构'', ''多采用寄存器传递过程调用时的参数'']', "['C']", 'C
RISC设计的一个显著特点是由于指令定长且比较简单，所以易于采用流水线技术，从而提高指令执行的吞吐量。因此，RISC 体系结构并不难以采用流水线数据通路，因此 C 选项错误。', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1104', '4068');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4069, '2025年408考研真题第18题', '简单', '2025年408真题', '下列关于 CPI 和 CPU 时钟周期的叙述中，错误的是（ ）。', '[''不同类型指令的 CPI 可能不一样'', ''程序的 CPI 与 Cache 缺失率无关'', ''单周期 CPU 的时钟周期以最耗时指令所用的时间为准'', ''流水线 CPU 的时钟周期以最长流水段所用时间为准'']', "['B']", 'B
A. 不同类型指令的 CPI 可能不一样：这是正确的，不同类型的指令由于其复杂度和执行步骤的不同，可能会有不同的 CPI（每条指令的平均时钟周期数）。✅B. 程序的 CPI 会受到 Cache 缺失率的影响，因为 Cache 缺失会导致额外的内存访问延迟，从而增加访存型指令比如LOAD执行的平均时钟周期数。❌C. 在单周期 CPU 设计中，每条指令在一个时钟周期内完成，所以时钟周期必须足够长以涵盖最耗时的指令。✅D. 因为在流水线 CPU 中，时钟周期必须能够满足流水线中所有阶段的时间要求，因此时钟周期通常以最长的流水段为基准。✅', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '4069');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4070, '2025年408考研真题第19题', '简单', '2025年408真题', '下列关于 CPU 中的数据通路和控制器的叙述中，错误的是（ ）。', '[''通用寄存器组中应该包含程序计数器'', ''控制器中一定包含指令操作码的译码电路'', ''单周期 CPU 中的控制器比多周期 CPU 中的更简单'', ''流水线 CPU 需解决数据相关和控制相关等冒险问题'']', "['A']", 'A
A. 程序计数器（PC）是一个专用寄存器，用于存储下一条要执行指令的地址，它不属于通用寄存器组。通用寄存器组通常是用于算术、逻辑和数据存储等操作的寄存器，而程序计数器有其专门的用途和存储。❌B. 控制器中一定包含指令操作码的译码电路：这是正确的。控制器需要对指令操作码进行译码，以确定应执行的操作和控制信号。✅C. 单周期 CPU 的每条指令在一个时钟周期内完成，控制逻辑较为简单，而多周期 CPU 需要复杂的控制逻辑来管理每个周期的操作。✅D. 流水线 CPU 由于同时处理多条指令，会遇到数据冒险、控制冒险等问题，需要通过转发、暂停、分支预测等技术来解决。✅', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1227', '4070');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1320', '4070');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4071, '2025年408考研真题第20题', '简单', '2025年408真题', '某处理器总线采用同步，并行传输方式，每个总线时钟周期传送 4 次数据（quadpumped 技术），若该总线的工作频率为 1333MHz（实际单位是 MT/s，表示每秒传送 1333M/次），总线宽度为 64 位，则总线带宽约为（ ）。', '[''10.66 GB/s'', ''42.66 GB/s'', ''85.31 GB/s'', ''341.25 GB/s'']', "['A']", 'A
这一题是一道埋坑题，考查总线指标中工作频率和时钟频率的不同，杂货铺本人和多位同学一起确认，最后发现本题的原题中标记为工作频率而不是时钟频率：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/64529fdbc6c142969938db126f956930.jpg)
总线带宽可以通过以下方式计算：总线带宽 =总线工作频率× 总线宽度总线带宽 =总线时钟频率× 每个时钟周期传输次数 × 总线宽度因为题目中给出的是时钟频率，所以总线带宽计算为 1333M * 8B ≈ 10.66GB/s，答案选择 A。如果题目中给出的是 时钟频率为 1333MHz，则总线时钟频率为 1333 MHz（即 1333 MT/s，每秒传输 1333 百万次）。每个总线时钟周期传输 4 次数据（quadpumped 技术）。总线宽度为 64 位即 8 字节。总线每秒传输的数据量为 1333M × 8B × 4 ≈ 42.66G，此时答案选 B。', 9, 'Mogullzr', '2026-01-29 18:57:10', 9, NULL, '2026-01-29 18:57:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1107', '4071');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4072, '2025年408考研真题第21题', '简单', '2025年408真题', '下列设备中，适合采用 DMA 输入输出的设备是（ ）。I. 键盘II. 网卡III. 固态硬盘IV. 针式打印机', '[''I、II'', ''II、III'', ''II、IV'', ''III、IV'']', "['B']", 'B
网卡和固态硬盘通常适合采用 DMA（直接内存访问）进行输入输出，因为它们需要处理大量的数据传输，DMA 可以有效地提高数据传输效率而不占用 CPU 资源。键盘和针式打印机的数据传输量较小，通常不需要使用 DMA。', 9, 'Mogullzr', '2026-01-29 18:57:12', 9, NULL, '2026-01-29 18:57:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '4072');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4073, '2025年408考研真题第22题', '简单', '2025年408真题', '下列选项中，会触发外部中断请求的事件是（ ）。', '[''DMA 传送结束'', ''总线事务结束'', ''页故障处理结束'', ''执行断点指令'']', "['A']", 'A
参考中断和异常，外部中断请求通常是由外部设备或硬件事件触发的。DMA 传送结束是由 DMA 控制器发出的中断请求，用于通知 CPU 数据传输已经完成，这属于外部中断。而其他选项通常与内部事件或软件处理相关，不属于外部中断。', 9, 'Mogullzr', '2026-01-29 18:57:12', 9, NULL, '2026-01-29 18:57:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '4073');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4074, '2025年408考研真题第23题', '简单', '2025年408真题', '在采用页式虚拟存储管理方式的系统中，当发生上下文切换时，下列寄存器中操作系统不需要更新的是（ ）。', '[''通用寄存器'', ''页表基址寄存器'', ''程序计数器'', ''内核中断向量表基址寄存器'']', "['D']", 'D
在上下文切换时，操作系统需要保存和恢复与当前进程相关的状态信息。通用寄存器、页表基址寄存器和程序计数器通常会在上下文切换时更新，以切换到新进程的上下文。然而，内核中断向量表基址寄存器通常是系统级的，通常不会在每次上下文切换时更改，因此操作系统不需要在上下文切换时更新该寄存器。', 9, 'Mogullzr', '2026-01-29 18:57:12', 9, NULL, '2026-01-29 18:57:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4074');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4075, '2025年408考研真题第24题', '简单', '2025年408真题', '关于虚拟化技术，下列说法错误的是（ ）。', '[''操作系统可以在虚拟机上运行'', ''一台主机可以支持多个虚拟机'', ''VMM 与操作系统特权级相同'', ''通过虚拟机技术，可以用一台主机上模拟多种 ISA'']', "['C']", 'C
A. 操作系统可以在虚拟机上运行✅
正确。虚拟机（VM）提供了一个与真实硬件类似的环境，操作系统可以像在物理机上一样运行在虚拟机中。B. 一台主机可以支持多个虚拟机✅
正确。虚拟化的核心能力之一就是在同一物理主机上运行多个虚拟机实例，每个实例看起来像是一台独立的机器。C. VMM 与操作系统特权级相同❌
错误。VMM（虚拟机监控器或 Hypervisor）通常运行在比普通操作系统更高的特权级，因为它需要控制底层硬件资源，并管理多个客户操作系统。例如在 x86 架构中，VMM 通常在Ring -1（即硬件支持的更低层）运行，而操作系统在 Ring 0。
即使是某些 Type 2 Hypervisor（如 VMware Workstation）运行在宿主操作系统上，也会通过硬件辅助（如 Intel VT-x）获得高特权级访问。D. 通过虚拟机技术，可以用一台主机上模拟多种 ISA✅
正确，尽管这项功能涉及更多的是仿真（emulation）而非传统虚拟化。例如使用 QEMU 可以在 x86 主机上模拟 ARM、MIPS 等架构。不过现代虚拟化系统也可以部分结合硬件虚拟化技术来提高效率。所以正确答案是：C。', 9, 'Mogullzr', '2026-01-29 18:57:12', 9, NULL, '2026-01-29 18:57:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1110', '4075');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4076, '2025年408考研真题第25题', '简单', '2025年408真题', '在优先权调度中，采用单链表保存进程就绪队列，高优先级进程在队头。若就绪队列长度为 n，则插入进程、选出进程的时间复杂度为（ ）。', '[''$O(1), O(1)$'', ''$O(1), O(n)$'', ''$O(n), O(1)$'', ''$O(n), O(n)$'']', "['C']", 'C
在优先级调度中，如果我们采用单链表来保存进程就绪队列，并且高优先级进程在队头，那么：插入进程时，需要根据优先级找到合适的位置插入，因此时间复杂度为 O(n)。选出进程（即从队头选出最高优先级的进程）是一个 O(1) 的操作，因为高优先级的进程总是在队头。', 9, 'Mogullzr', '2026-01-29 18:57:12', 9, NULL, '2026-01-29 18:57:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '4076');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4077, '2025年408考研真题第26题', '简单', '2025年408真题', '现有一 LRU 算法，采用固定分配局部置换的页面置换策略，已为进程分配 3 个页框，页面访问序列为 {0,1,2,0,5,1,4,3,0,2,3,2,0 }，其中 0,1,2 已调入内存。则缺页次数是（ ）。', '[''5'', ''6'', ''7'', ''8'']', "['B']", 'B
在LRU算法中，每当需要访问一个不在当前内存中的页面时，就需要进行置换操作，并选择当前内存中最久未使用的页面进行替换。我们按照给定的页面访问序列进行模拟：初始状态：内存中页面为 {0, 1, 2}，访问序列：| 访问页面 | 是否命中/缺页   | 之后的内存页面   |
|:----:|:---------:|:---------:|
| 0    | 命中        | {1, 2, 0} |
| 1    | 命中        | {2, 0, 1} |
| 2    | 命中        | {0, 1, 2} |
| 0    | 命中        | {1, 2, 0} |
| 5    | 缺页，替换页面 1 | {2, 0, 5} |
| 1    | 缺页，替换页面 2 | {0, 5, 1} |
| 4    | 缺页，替换页面 0 | {5, 1, 4} |
| 3    | 缺页，替换页面 5 | {1, 4, 3} |
| 0    | 缺页，替换页面 1 | {4, 3, 0} |
| 2    | 缺页，替换页面 4 | {3, 0, 2} |
| 3    | 命中        | {0, 2, 3} |
| 2    | 命中        | {0, 3, 2} |
| 0    | 命中        | {3, 2, 0} |
总计缺页次数为 6 次。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1253', '4077');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1254', '4077');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4078, '2025年408考研真题第27题', '简单', '2025年408真题', '确定进程运行所需的最少页框数时，要考虑的指标是（ ）。', '[''代码段长'', ''虚拟地址空间大小'', ''物理地址空间大小'', ''指令系统支持的寻址方式'']', "['D']", 'D
确定进程运行所需的最少页框数时，主要需考虑以下指标：D. 指令系统支持的寻址方式指令系统的寻址方式直接影响进程执行时可能访问的页框数量。例如，若指令支持间接寻址，则需更多页框以处理跨页访问的情况。每条指令若仅包含一个内存地址，则至少需1个页框；若涉及跨页访问或间接寻址，则需更多页框（如4个页框）。其他选项分析A. 代码段长‌：代码段长度影响总页框需求，但并非决定“最少”页框数的关键因素。B. 虚拟地址空间大小‌：虚拟地址空间大小决定进程可访问的地址范围，但实际所需页框数取决于当前执行需求而非虚拟空间上限。C. 物理地址空间大小‌：物理内存容量限制实际可分配的页框数，但与“最少”页框数的计算无关。综上，正确答案为 ‌D‌。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4078');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4079, '2025年408考研真题第28题', '简单', '2025年408真题', '关于虚拟文件系统，下列说法正确的是（ ）。', '[''虚拟文件系统是运行在虚拟内存的文件系统'', ''VFS 可以加快文件系统的访问速度'', ''VFS 定义了可访问不同文件系统的统一接口'', ''VFS 只能访问本地文件系统，不能访问网络文件系统'']', "['C']", 'C
虚拟文件系统是一个抽象层，提供了一种统一的接口，使操作系统能够支持不同类型的文件系统。它通过这种抽象，使得上层应用程序可以通过统一的接口访问不同的底层文件系统，而不需要关心底层文件系统的具体实现细节。A 是错误的：虚拟文件系统不是运行在虚拟内存的文件系统，而是一个抽象层。B 是错误的：VFS 的主要目的是提供统一接口，而不是直接加快访问速度，尽管统一接口可以间接提升开发效率。D 是错误的：VFS 能够支持访问包括本地和网络文件系统在内的多种文件系统类型。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1330', '4079');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4080, '2025年408考研真题第29题', '简单', '2025年408真题', '某文件系统采用索引节点方式。用户在目录中新建文件 F 时，文件系统不会做的是（ ）。', '[''初始化文件 F 的索引节点'', ''在目录文件中写入 F 的索引节点号'', ''在目录文件中写入 F 的访问权限信息'', ''在目录文件中增加一条文件 F 对应的目录项'']', "['C']", 'C
当用户在目录中新建文件 F 时，文件系统通常会执行以下操作：A. 初始化文件 F 的索引节点：为新文件创建一个索引节点，并初始化相关信息。B. 在目录文件中写入 F 的索引节点号：在目录中为文件 F 创建一个目录项，该目录项包含文件名和其对应的索引节点号。D. 在目录文件中增加一条文件 F 对应的目录项：在目录中增加一个新的目录项来表示新文件 F。选项 C 是错误的，因为访问权限信息通常存储在文件的索引节点中，而不是在目录文件中。目录文件只记录文件名及其对应的索引节点号。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1308', '4080');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4081, '2025年408考研真题第30题', '简单', '2025年408真题', '关于内存映射文件，下列说法正确的是（ ）。I. 可实现进程间通信II. 实现了页面到磁盘块的映射III. 将文件映射到进程的虚拟地址空间IV. 将文件映射到系统的物理地址空间', '[''I、III'', ''I、IV'', ''II、III'', ''I、II、III'']', "['A']", 'A
本题考察内存映射文件，现对选项进行逐一分析：I. 内存映射文件可以用于进程间通信，因为多个进程可以将同一个文件映射到各自的虚拟地址空间，从而共享数据。✅II. 这个选项比较有争议，按照大家的反馈，出题人想考查的应该是 磁盘块 → 页面的映射。❌III. 内存映射文件的核心概念就是将文件映射到进程的虚拟地址空间，使得进程可以通过访问内存来操作文件。✅IV. 内存映射文件是将文件映射到进程的虚拟地址空间，而不是直接映射到物理地址空间。虚拟地址空间最终会通过操作系统的内存管理单元（MMU）映射到物理地址空间。❌所以正确的是 I、III，选择 A。【注意】严格来说，II 的描述是符合现代操作系统的实现的（比如 linux 中的mmap接口中如果开启MAP_SHARED（共享映射），写入页面即写入磁盘，即 页面 和 磁盘块 是双向映射关系）。估计出卷人的意思是内存映射文件语义是 磁盘块 → 页面的映射，而不是 页面 → 磁盘块，所以 II 是错误的，从这种角度来看也说得通。要是考场上这种题真的错了那就认了吧，毕竟这种概念题有分歧在 408 是很正常的，但是数量也会比较少就是了。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1331', '4081');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4082, '2025年408考研真题第31题', '简单', '2025年408真题', '下列选项中，可被文件系统用于外存空间使用情况的是（ ）。', '[''目录'', ''系统打开文件表'', ''文件分配表（FAT）'', ''文件控制块（FCB）'']', "['C']", 'C
文件分配表（FAT）是文件系统用来记录磁盘块（簇）使用情况的数据结构。它记录了哪些磁盘块是空闲的，哪些已经被文件占用，因此文件系统可以通过 FAT 来管理空闲空间。A. 目录用于存储文件和子目录的元数据（如文件名、位置等），但不直接管理空闲空间。B.系统打开文件表：用于记录当前打开的文件及其状态，与空闲空间管理无关。D. 文件控制块（FCB）：FCB 记录单个文件的元数据（如大小、位置等），不直接记录整个外存空间使用情况。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1170', '4082');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4083, '2025年408考研真题第32题', '简单', '2025年408真题', '下列选项中，文件系统能为温彻斯特硬盘和固态硬盘提供的功能是（ ）。', '[''划分扇区'', ''确定盘块大小'', ''降低寻道时间'', ''实现均衡磨损'']', "['B']", 'B
关于文件系统能为温彻斯特硬盘（HDD）和固态硬盘（SSD）提供的功能，分析如下：A. 划分扇区‌
扇区是磁盘物理结构的固有属性，由硬盘制造商在出厂时划分，文件系统不参与扇区的物理划分。B. 确定盘块大小‌
文件系统通过逻辑格式化设定文件存储的基本单位（如 4KB 的块大小），这是文件系统对物理存储的逻辑抽象，适用于 HDD 和 SSD。C. 降低寻道时间‌
寻道时间是 HDD 特有的机械性能指标，文件系统无法直接优化；而 SSD 无机械部件，不存在寻道时间问题。D. 实现均衡磨损‌
这是 SSD 特有的功能，由 SSD 控制器通过磨损均衡算法实现，文件系统仅能通过 Trim 指令辅助，并非直接控制。', 9, 'Mogullzr', '2026-01-29 18:57:13', 9, NULL, '2026-01-29 18:57:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1207', '4083');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4084, '2025年408考研真题第33题', '简单', '2025年408真题', '如下图所示，主机 H1 向 H2 发送一个 2MB（1MB =$10^{6}$B）文件有三种方式：① 电路交换，建立时间为 32us，速度为 10Mbps；② 分组交换，分组长度为 400B，忽略首部；③ 报文交换。电路交换的时间为$T_{cs}$，报文交换的时间为$T_{ms}$，分组交换的时间为$T_{ps}$，则三者的大小关系是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/054b7db9242749a9a2a719cfe06ed43f.svg)
', '[''$T_{cs} > T_{ms} > T_{ps}$'', ''$T_{ms} > T_{ps} > T_{cs}$'', ''$T_{ms} > T_{cs} > T_{ps}$'', ''$T_{ps} > T_{ms} > T_{cs}$'']', "['B']", 'B
参考传输时间计算：电路交换的时间$T_{cs}$= 连接建立时间 + 数据传输时间 = 32us + 2MB / 10Mbps报文交换的时间$T_{ms}$= 各链路传输时间之和 = 2MB/10Mbps + 2MB/100Mbps + 2MB/1000Mbps分组交换的时间$T_{ps}$= 考虑分组传输 overlap 的时间 = 2MB/10Mbps + 400B/100Mbps + 400B/1000Mbps经计算可知$T_{ms} > T_{ps} > T_{cs}$。', 9, 'Mogullzr', '2026-01-29 18:57:14', 9, NULL, '2026-01-29 18:57:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1160', '4084');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4085, '2025年408考研真题第34题', '简单', '2025年408真题', '某差错编码的编码集为 { 10011010，01011100，11110000，00001111 }，其检错和纠错能力是（ ）。', '[''可以检测不超过 2 位错，检错率 100%；可纠正不超过 1 位错'', ''可以检测不超过 2 位错，检错率 100%；可纠正不超过 2 位错'', ''可以检测不超过 3 位错，检错率 100%；可纠正不超过 1 位错'', ''可以检测不超过 3 位错，检错率 100%；可纠正不超过 2 位错'']', "['C']", 'C
先求这 4 个 8 位码字的两两海明距离（统计对应位不同的个数）：| 码字对                 | 距离 |
|:-------------------:|:--:|
| 10011010 – 01011100 | 4  |
| 10011010 – 11110000 | 4  |
| 10011010 – 00001111 | 4  |
| 01011100 – 11110000 | 4  |
| 01011100 – 00001111 | 4  |
| 11110000 – 00001111 | 8  |
最小汉明距离$d_{min} = 4$。检错能力：最多可保证检测到$d_{min} - 1 = 3$位错误（检错率 100 %）。纠错能力：可保证纠正$⌊(d_{min} - 1)/2⌋ = ⌊3/2⌋ = 1$位错误。因此正确选项为 C：可以检测不超过 3 位错，检错率 100%；可纠正不超过 1 位错', 9, 'Mogullzr', '2026-01-29 18:57:15', 9, NULL, '2026-01-29 18:57:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1216', '4085');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1332', '4085');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4086, '2025年408考研真题第35题', '简单', '2025年408真题', '现有一 10BaseT 以太网，甲乙处于同一个冲突域，连续发生 11 次冲突，甲再次发送的最大时间间隔为（ ）。', '[''0.512ms'', ''0.5632ms'', ''52.3776ms'', ''104.8064ms'']', "['C']", 'C
在以太网中，当发生冲突时，发送节点将执行指数退避算法。在这个算法中，节点在重传之前会等待一个随机的时间间隔，这个时间间隔是以时隙（slot time）为单位计算的。对于 10BaseT 以太网，时隙时间（slot time）为 51.2 微秒（0.0512 毫秒）。在指数退避算法中，第 n 次重传时，节点会从$0$到$2^{n} - 1$的范围内随机选择一个整数 k，然后等待 k 个时隙的时间。需要注意的是，当 n 达到 10 或更大时，退避范围的上限固定为 1023（即$2^{10} - 1$）。在题目中，已经发生了 11 次冲突，意味着这是第 12 次重传尝试。因此，n = 11，但因为$n ≥ 10$的时候，k 的范围是 0 到 1023。因此，甲再次发送的最大时间间隔为 1023 个时隙时间，即：
$$
1023 × 51.2us = 52.4288ms
$$
', 9, 'Mogullzr', '2026-01-29 18:57:15', 9, NULL, '2026-01-29 18:57:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1224', '4086');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1125', '4086');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4087, '2025年408考研真题第36题', '简单', '2025年408真题', '一台新接入网络的主机 H 通过 DHCP 服务器动态请求 IP 地址过程中，与 DHCP 服务器交换 DHCP 报文过程如下图所示。封装 DHCP 的 REQUEST 报文的 P 数据报的目的 IP 地址和源 IP 地址分别是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/66a5e013d0b54784a099fa3c3657a7cc.svg)
', '[''192.168.5.1, 0.0.0.0'', ''192.168.5.1, 192.168.5.9'', ''255.255.255.255, 0.0.0.0'', ''255.255.255.255, 192.168.5.9'']', "['C']", 'C
DHCP的 REQUEST 报文：目的 IP 地址：DHCP 服务器的 IP 地址或者广播地址（255.255.255.255），因为主机可能不知道 DHCP 服务器的确切 IP 地址，尤其是在初始请求阶段，广播地址确保网络中的所有 DHCP 服务器都能接收到请求。源 IP 地址：0.0.0.0，因为主机还未获得正式的 IP 地址，在这个阶段它使用 0.0.0.0 作为源地址来表示“没有 IP 地址”。', 9, 'Mogullzr', '2026-01-29 18:57:16', 9, NULL, '2026-01-29 18:57:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1256', '4087');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4088, '2025年408考研真题第37题', '简单', '2025年408真题', '假设路由器实现 NAT 功能，内网中主机 H 的 IP 地址为 192.168.1.5/24。若 H 运行某应用向 internet 发送一个 UDP 报文段，则路由器在转发封装该 UDP 报文段的 IP 数据报的过程中，UDP 报文的首部字段会被修改的是（ ）。I 源端口号II 目的端口号III 总长度IV 校验和', '[''仅 I、III'', ''仅 I、IV'', ''仅 lI、III'', ''仅 II、IV'']', "['B']", 'B
I. 源端口号：在NAT实现中，路由器可能会修改源端口号以便在多个内部主机使用相同外部 IP 地址时区分不同的会话。因此，源端口号可能会被修改。II. 目的端口号：通常不会被 NAT 修改，因为目的端口号用于指明接收方应用程序的端口。III. 总长度：UDP 报文段的总长度字段通常不会因为 NAT 而改变，因为 NAT 主要修改 IP 地址和源端口号，数据包的总长度保持不变。IV. 校验和：如果 NAT 修改了源 IP 地址或源端口号，导致 UDP 报文段的内容发生变化，UDP 校验和需要重新计算，因此校验和字段可能会被修改。因此，路由器在转发封装该 UDP 报文段的过程中，可能会修改的字段是源端口号和校验和，答案选 B。', 9, 'Mogullzr', '2026-01-29 18:57:16', 9, NULL, '2026-01-29 18:57:16', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1304', '4088');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4089, '2025年408考研真题第38题', '简单', '2025年408真题', '主机甲通过 TCP 向主机乙发送数据的部分过程如下图，seq 为序号，ack-seq 为确认序号，rcwnd 为接收窗口。甲在$t_{0}$时刻的拥塞窗口和发送窗口均为 2000B，拥塞控制阈值为 8000B，MSS=1000B。甲始终以 MSS 发送 TCP 段。若甲在$t_{1}$时刻收到如图所示的确认段，则甲在未收到新的确认段之前，还可以继续向乙发送的 TCP 段数是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/b667fe06bde64d888062c5a1f2654466.svg)
', '[''2'', ''3'', ''4'', ''5'']', "['A']", 'A
发送窗口取拥塞窗口和接收窗口之间的较小值，即 swnd = min(cwnd, rwnd)。根据 ack_seq = 3001 可知，目前乙已经接收到了 1000B 的数据即一个 1 个 MSS，seq = 3001 的 MSS 仍然在发送中，并且此时乙的接收窗口（swnd）为 4 个 MSS。此外，由于甲目前仍然在慢开始阶段（发送窗口没有达到阈值），所以接收到乙的确认后，拥塞窗口要 +1，此时 cwnd = 3 MSS。所以发送窗口 swmd = min(3, 4) = 3 MSS。另外需要注意这个公式：发送窗口的大小（swnd） = 已经发送但还没有确认数据（inflight） + 还没有发送的数据。这一题问的是甲还可以向乙发送多少个 TCP 段，这要减去那些之前已经发送但还没有确认的数据（1 MSS）。所以还可以发送 3 - 1 = 2 MSS，答案选择 B。', 9, 'Mogullzr', '2026-01-29 18:57:18', 9, NULL, '2026-01-29 18:57:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1126', '4089');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4090, '2025年408考研真题第39题', '简单', '2025年408真题', 'Time 是一个提供时间查询服务的 C/S 架构网络应用，支持客户通过 UDP 和 TCP 向 Time 服务器请求时间。若某客户与 Time 服务器通信往返时间为 8ms，则该客户分别通过 UDP 和 TCP 向该服务器请求服务，所需的最少时间分别是（ ）。', '[''8ms，8ms'', ''8ms，16ms'', ''16ms，8ms'', ''16ms，16ms'']', "['B']", 'B
读题可知，RTT = 8ms，使用 UDP 进行传输只需要一个 RTT，而使用 TCP 三次握手需要两个 RTT 共 16ms。', 9, 'Mogullzr', '2026-01-29 18:57:18', 9, NULL, '2026-01-29 18:57:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1301', '4090');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4091, '2025年408考研真题第40题', '简单', '2025年408真题', '关于 POP3，正确的是（ ）。I 支持用户代理从邮件服务器读取邮件II 支持用户代理向邮件服务器发送邮件III 支持邮件服务器之间发送与接收邮件IV 支持一条 TCP 连接收取多封邮件', '[''I、IV'', ''II、III'', ''I、II、III'', ''I、III、IV'']', "['A']", 'A
本题考察POP3协议，对题目提供的选项进行逐一分析：I. 支持用户代理从邮件服务器读取邮件：✅。POP3 的主要功能就是支持客户端（用户代理）从邮件服务器读取邮件。II. 支持用户代理向邮件服务器发送邮件：❌。发送邮件的功能通常由 SMTP（Simple Mail Transfer Protocol）负责，而不是 POP3。III. 支持邮件服务器之间发送与接收邮件：❌。邮件服务器之间的邮件传输通常由 SMTP 协议处理，而不是 POP3。IV. 支持一条 TCP 连接收取多封邮件：✅。POP3 可以在一个会话中通过一条 TCP 连接获取用户邮箱中的多封邮件。所以 I、IV 是正确的，本题答案为 A。', 9, 'Mogullzr', '2026-01-29 18:57:18', 9, NULL, '2026-01-29 18:57:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1212', '4091');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4092, '2025年408考研真题第41题', '简单', '2025年408真题', '设有两个长度均为n的一维整型数组A和res，对数组A中的每个元素A[i]，计算A[i]与A[j](0≤i≤j≤n-1)乘积的最大值，并将其保存到res[i]中。例如，若A[i] = {1, 4, -9, 6}，则得到res[i] = {6, 24, 81, 36}。现给定数组A，请设计一个时间和空间上尽可能高效的算法calMulMax，求res中各元素的值。函数原型为：void calMulMax(int A[], int res[], int n)，要求：(1) 给出算法的基本设计思想：（4 分）(2) 根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释：（7 分）(3) 说明你所设计算法的时间复杂度和空间复杂度。（2 分）', '[]', '', '1）若A[i]为负数的话，则A[j]为子数组A[i:n]中的最小值时，A[i] * A[j]为最大值。若A[i]为正数的话，则A[j]为子数组A[i:n]中的最大值时，A[i] * A[j]为最大值。
因此算法步骤如下：
从右到左遍历数组A：维护一个变量maxValue来存储当前从i到n-1范围内的最大值。维护一个变量minValue来存储当前从i到n-1范围内的最小值。在每次迭代中，更新maxValue和minValue。计算A[i] * maxValue和A[i] * minValue，并将它们的较大值存储在res[i]中。更新maxValue和minValue：在每次迭代中，maxValue是当前元素与之前的maxValue的较大值，minValue是当前元素与之前的minValue的较小值。
2）算法实现如下：
voidcalMulMax(intA[],intres[],intn){intminValue=INT32_MAX;intmaxValue=INT32_MIN;for(inti=n-1;i>=0;i--){if(A[i]<minValue){minValue=A[i];}if(A[i]>maxValue){maxValue=A[i];}if(A[i]>0){res[i]=A[i]*maxValue;}else{res[i]=A[i]*minValue;}}}
3）算法的时间复杂度为 O(n)，空间复杂度为 O(1)。
', 9, 'Mogullzr', '2026-01-29 18:57:18', 9, NULL, '2026-01-29 18:57:18', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1167', '4092');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4093, '2025年408考研真题第42题', '简单', '2025年408真题', 'AOE 网，描述 12 个工程活动及持续时间
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/652bddd93043405e9fe90c92442b8925.svg)
(1) 完成该工程的最短时间是多少？哪些是关键活动？(2) 若以最短时间完成工程，则与活动 e 同时进行的活动可能有哪些？(3) 时间余量最大的活动是哪个？其时间余量是多少？(4) 假设工程从时刻 0 启动，因某种原因，活动 b 在时刻 6 开始，为保证工程不延期，在其它活动持续时间保持不变的情况下，b 的持续时间最多是多少？若不改变 b 的持续时间，则压缩哪个活动的持续时间也能保证工程不延期？', '[]', '', '1）首先计算最早发生时间 ve：
| node | 1 | 2 | 3 | 4 | 5  | 6 | 7 |
|:----:|:-:|:-:|:-:|:-:|:--:|:-:|:-:|
| ve   | 0 | 9 | 2 | 5 | 12 | 6 | 9 |

然后计算最晚发生时间：
| node | 1 | 2  | 3 | 4 | 5  | 6 | 7 |
|:----:|:-:|:--:|:-:|:-:|:--:|:-:|:-:|
| vl   | 0 | 10 | 2 | 5 | 12 | 8 | 9 |

ve 和 vl 相同的顶点为 1、3、4、7、5，所以关键活动为 a、e、m、n。
2）e 的执行时间是 2~5，可以与 e 同时执行的活动为 b、d、c。
3）假设有顶点 i→j 的活动（边），则该活动的时间余量= vl(j) - ve(i) - 边的长度。
计算所有非关键路径上活动的时间余量，可以得到活动 j 的时间余量是最大的，为 vl(5) - ve(4) - 1 = 6。
4）为保证 1 → 2 → 5 的路径长度不超过关键路径的长度，需要保证 6 + b + k ≤ 12，所以 b ≤ 4，即 b 的持续时间最长为 4。如果想要保证 b 仍然为 5 的话，需要压缩 k 的时间长度，将 k 缩小为 1。
', 9, 'Mogullzr', '2026-01-29 18:57:19', 9, NULL, '2026-01-29 18:57:19', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1194', '4093');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4094, '2025年408考研真题第43题', '简单', '2025年408真题', '计算机 M 字长为 32 位，按字节编址，数据 cache 的数据区大小为 32KB，采 8 路组相联，主存块大小为 64B，cache 命中时间为 2 个时钟周期，缺失损失为 200 个时钟周期，采用页式虚拟存储，页大小为 4KB。数组 d 的起始地址为 0180 0020H（VA31~VA0）。(1) 主存地址中的 Cache 组号，块内地址分别占几位？VA 中哪些位可以作为 Cache 索引。(2) d[100] 的 VA 是多少？d[100] 所在主存块中对应的 Cache 组号是多少？(3) 设代码已经在 cache 中，i,x 已装入内存，但不在 cache，则 d[0] 在其主存块内的偏移量是多少？执行 for 的过程中，访问 d 的 Cache 缺失率和数组元素的平均访问时间分别是多少？（缺失率用百分比表示，保留两位小数）(4) d 分布在几个页中？若代码已在主存，d 不在主存，则执行 for 的过程中，访问 d 所引起的缺页次数是？', '[]', '', '1）cache 块大小和主存块大小一致为 64B，所以块内偏移为 6 位（$2^{6} = 64$）。
cache 块的数量为 32KB / 64B = 512，由于采用 8 路组相连，所以总共有 512 / 8 = 64 个组，组号占 6 位（$2^{6} = 64$）。
所以第 6 位到第 11 位可以作为 Cache 索引（用来定位地址可能被哪一组所缓存）。
2）&d[100] = d + 100 * 4 = 0x0180 0020 + 400 = 0x0180 01B0，对应的二进制为 0000 0001 1000 0000 0000 0001 1011 0000，组号为 000110B 即 6。
3）物理地址的结构为：页内偏移 12 位，物理页号 20 位，所以 &d[0] 的页内偏移为 020H = 32。
数组总共需要用 2048 * 4 / 64 = 128 个完整 cache 块存储，但由于数组第一个元素处于某个 cache 的中间（偏移为 32），所以总共需要 129 个 cache 块存储，在访问每个 cache 块中的第一个元素时会发生 Cache 缺失。
另外需要注意一点，对于指令d[i] = d[i] / x，实际上是访问了两次：一次读取，一次写入。所以在计算缺失率和平均访问时间的时候需要考虑这两次访问。
缺失率 = 129 / (2048 * 2) ≈ 3.15%。
数组的平均访问时间为 = (129 * 200 + (4096 - 129) * 2) / 4096 ≈ 8.24 个时钟周期。
4）数组 d 需要占用 8KB 的存储空间，占用两个页面。由于数组的起始地址处于页面内部（偏移 32B），所以数组 d 分布在三个页面中，触发的缺页次数为 3。
', 9, 'Mogullzr', '2026-01-29 18:57:19', 9, NULL, '2026-01-29 18:57:19', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4094');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1101', '4094');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1186', '4094');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4095, '2025年408考研真题第44题', '简单', '2025年408真题', '接上题，R0~R4 为通用寄存器，SEXT 表示按符号扩展，M 中补码除法器，逻辑结构图如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/794cb3bafa454b88afe6763fc4fa65db.jpg)
机器级代码：(1) 若执行 idiv 指令时，d[i]=0x87654321，x=0xff，则补码除法器中 R、Q、Y 的初始值分别为多少（用十六进制表示）？
图 b 中哪个部分包含计数器？在补码除法器执行过程中，ALUop 所控制的 ALU 运算有哪几种？(2) 假设 idiv 执行过程中会检测并触发除法异常，则执行 idiv 指令时，哪些情况下会发生除法异常（要求给出此时 d[i] 和 x 的十六进制机器数）。发生除法异常时，在异常响应过程中，CPU 需要完成哪些操作？', '[]', '
1）R 中的值为 0xffffffff，Q 中的值为 0x87654321，Y 中的值为 0x000000ff。b 中的控制逻辑包含计数器，ALUop 所控制的 ALU 运算包含加法和减法。
2）第一种情况除数为 0 异常，d[i] 为任意值，x 为 0x00000000。第二种情况溢出异常，d[i] 为 0x80000000，x 为 0xffffffff，在 d[i] = -2³¹、x = -1 的情况下会发生溢出异常。
在发生除法异常时 CPU 响应的操作：
关中断，修改 CPU 状态为内核态。保存断点（PC 和 PSWR 中的值）。跳转到异常处理程序。
', '
1）寄存器初始值分析
被除数:d[1] = 0x87654321是 32 位补码，最高位为 1（符号位），经sccv符号扩展为 64 位，高 32 位为0xFFFFFFFF，低 32 位为0x87654321。除法器结构: 余数寄存器R（高 32 位）和商寄存器Q（低 32 位）组成 64 位被除数，除数寄存器Y存储除数。初始值:R: 被除数高 32 位 →0xFFFFFFFFQ: 被除数低 32 位 →0x87654321Y: 除数x = 0xff→0x000000FF（这里虽然只用了 8 位，但是表示的意思是 255，最高位不是符号位）
计数器位置
图中控制逻辑模块包含计数器C，用于控制除法迭代次数（32 次，对应 32 位前）。
ALU 运算类型
补码除法采用加减交替法，ALU 需支持两种运算：
减法:R - Y（试减，判断余数符号）加法:R + Y（若余数为负，恢复余数）
2）除法异常的情况
除法异常包括除以 0和商溢出：
情况 1：除以 0当除数x = 0x00000000时，无论d[1]为何值，触发除以 0 异常。情况 2：商溢出32 位补码商的范围是[-2^31, 2^31 - 1]。当d[1] = 0x80000000（-2^31，32 位补码最小值）且x = 0xFFFFFFFF（-1）时：商为(-2^31) / (-1) = 2^31，超出 32 位补码最大值2^31 - 1，触发商溢出异常。
异常响应的 CPU 操作
异常响应时，CPU 需完成以下核心步骤：
保存现场保存当前程序计数器PC（下一条指令地址）、通用寄存器（或关键字寄存器）状态、程序状态字PSW（含标志位）。跳转异常处理从中断向量表加载除法异常对应的服务程序入口地址，更新PC。模式切换与栈处理若当前为用户态，切换至内核态，使用内核栈执行异常处理（避免用户栈破坏）。中断控制可选设置中断屏蔽位，防止嵌套异常干扰处理流程（视架构而定）。
', 9, 'Mogullzr', '2026-01-29 18:57:21', 9, NULL, '2026-01-29 18:57:21', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1313', '4095');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4096, '2025年408考研真题第45题', '简单', '2025年408真题', '三个人一起植树，甲挖坑，乙放树苗入坑并填土，丙负责为新种树苗浇水。步骤依次为：挖树坑，放树苗，填土和浇水。现在有铁锹和水桶各一个，铁锹用于挖树坑，填土。水桶用于浇水。当树坑数量小于 3 时，甲才可以挖树坑。设初始坑 = 0，铁锹水桶均可用，定义尽可能少的信号量，用 wait() 和 signal() 操作描述植树过程中三人的同步互斥关系，并说明所用信号量的作用及其初值。', '[]', '', '这题是一个近似于流水线的结构，其过程为：挖树坑（甲）→ 放树苗、填土（乙）→ 浇水（丙）。不过甲最多可以同时挖三个树苗，也就是说不允许同时存在 4 个未被乙使用的树坑，这是比较复杂的一点。
实现甲和乙之间的同步需要使用到 pits 和 empty 这两个信号量，同时还需要一个 water 信号量来实现乙和丁的同步，代码实现如下：
semaphoremutex=1;// 对铁锹的使用需要互斥semaphorepits=3;// 甲还能挖洞的数量sempahoreempty=0;// 可以使用的树坑数量sempahorewater=0;// 需要浇水的水苗数量甲(){while(1){wait(pits);// 最多只能挖三个未被乙使用的坑wait(mutex);// 占用铁锹挖树坑；signal(mutex);// 释放铁锹signal(empty);// 通知乙可以放树苗和填土了}}乙(){while(1){wait(empty);// 等待到有树坑为止wait(mutex);// 占用铁锹放树苗、填土；signal(mutex);// 释放铁锹signal(pits);// 通知甲可以继续挖坑了signal(water);// 通知丙可以浇水了}}丙(){while(1){wait(water);浇水；}}
', 9, 'Mogullzr', '2026-01-29 18:57:21', 9, NULL, '2026-01-29 18:57:21', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1135', '4096');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4097, '2025年408考研真题第46题', '简单', '2025年408真题', '某进程的虚拟地址空间如图，阴影部分为未占用区域，有 C 程序：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/8cbf2fc374644580b044c066b894a1b1.jpg)
char*ptr;voidmain(){intlength;ptr=(char*)malloc(100);scanf("%s",ptr);length=strlen(ptr);printf("length=%d\\n",length);free(ptr);}(1) 上述程序执行时，PCB 位于哪个区域，执行 scanf () 等待键盘输入时，该进程处于什么状态？(2) main() 函数的代码位于哪个区域？其直接调用的哪些函数的功能需要通过执行驱动程序实现？(3) 变量 ptr 被分配在哪个区域？若变量 length 没有被分配在寄存器中，则会被分配在哪个区域？ptr 指向的字符串位于哪个区域？', '[]', '', '本题考察进程内存空间，题目中给出的内存结构和标准 linux 进程结构由些许差异，主要不同点在于图中的 读/写代码段 将 .bss 和 .data 融合了，考生看到能够理解就可以。
1）进程管理属于操作系统提供的功能，所以 PCB（进程）位于内核区，执行 scanf() 时，进程在等待键盘 I/O，处于阻塞态。
2）main() 函数的代码位于只读代码段（.text），其直接调用的 scanf() 和 printf() 需要执行驱动程序。
3）ptr 是作为全局变量定义的，所以其位于读/写数据段，length 变量在 main 函数中定义，如果该变量不在寄存器中被分配的话，那么就位于用户栈段，ptr 指针指向的内存单元是使用 malloc 函数动态分配的，位于堆区。
', 9, 'Mogullzr', '2026-01-29 18:57:23', 9, NULL, '2026-01-29 18:57:23', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1333', '4097');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4098, '2025年408考研真题第47题', '简单', '2025年408真题', '
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/d0829e8c39f14fb9a4f4166e7232f5c7.svg)
(1) 忽略卫星信号中继，TR1，TR2 调制解调开销，则 R1 到 R2 之间的卫星链路单向传播时延是多少？主机 H 向总部服务器传输数据时可达到的最大吞吐量是多少？若忽略各层协议首部开销，以及以太网的传播时延，则 H → server 上传一个 4000B 的文件，至少需要多长时间？(2) 基于 GBN 为卫星链路设计单向可靠的链路层协议 SLP，支持 R1 → R2 发送数据。SLP 数据帧长 1500B，忽略 ACK 帧长度，要求 SLP 单向信道利用率不低于 80%，则发送窗口至少为？SLP 帧序号至少为多少？(3) 总部给工程部分配 IP 地址空间 10.10.10.0/24，再划分为 3 个子网：管理区子网、生活区子网、作业区子网。已知管理区子网地址为 10.10.10.33/26，若生活区子网不少于 120 个，作业子网、管理区子网 IP 均不少于 60 个，H 已正确配置 IP。请问作业区子网和生活区子网地址各是多少？', '[]', '', '1）计算卫星链路的单向传播时延：在忽略卫星信号中继、TR1、TR2 调制解调开销的情况下，R1 到 R2 之间的卫星链路单向传播时延主要取决于电滋波在太空中的传播速度以及卫星与地球之间的距离。卫星到地球表面的距离大约为 36000km。电磁滋波在太空中的传播速度接近光速，即约每秒 300000 公里。
因此，R1 和 R2 之间的卫星链路的单向传播时延可以计算为：时延 = 2×距离/速度 = 2×36000km/(300000km/s) =0.24 秒。
计算传播时延注意需要 × 2，因为需要通过卫星中转，首先地面 → 卫星，然后卫星 → 地面
计算主机 H 向总部服务器可达到的最大传输量：最大吞叶量与链路带宽和传播时延相关。在忽路一些开销的情况下，可以通过链路带宽和传播时延来计计算。一般公式为：

$$
吞吐量 = \\frac{数据帧大小}{传播时延 + 数据帧大小/链路带宽}
$$

当数据帧大小足够大时，即发送足够多的数据时。吞吐量最大，近似于链路带宽，为 200kbps。
H → Server 上传一个 4000B 文件至少需要多长时间：这里需要计算传播时延和传输时间，传播时间刚刚计算了等于 0.24s，传输时间 = 文件大小（比特）/ 带宽（bps） = 4000B / 200kbps = 0.16s。
总时间 = 0.24s + 0.16s = 0.4s。
2）本题考察 GBN 的连续 ARQ 协议计算：

$$
U = \\frac{N ⋅ T_{d}}{RTT + T_{d} + T_{a}}
$$

其中 SLP 数据帧长为 1500B，数据帧传输时间$T_{d}$= 1500B / 200kbps = 0.06s。$RTT$= 两倍单向传播时延 = 0.48s。确认帧大小和数据帧一致都为 1500B，所以确认帧传输时间$T_{a}$=$T_{d}$= 0.06s。
如果要求 GBN 的信道利用率不低于 80%，就是要满足这个公式：

$$
\\frac{N × 0.06}{0.48 + 0.06} ≥ 80%
$$

计算得到$N ≥ 7.2$，这里$N$就是发送窗口的大小，所以发送窗口最小为 8。
在 GBN 中，接收窗口大小为 1，根据窗口大小限制，假设帧序号比特数为 k，需要满足$2^{k} ≥ 8 + 1 = 9$，所以$k = 4$，即帧序号至少为 4 位。
3）本题考察变长子网划分，如果主机位长度为 N，那么子网内可用的 IP 地址数（不包括网络地址和广播地址）的个数就是$2^{N} - 2$。
生活区子网需要不少于 120 个 IP 地址，计算$2^{N} - 2 ≥ 120$，可以得到$N = 7$，所以子网掩码为 25 位，子网地址为 10.10.10.128/25，范围是 10.10.10.129 到 10.10.10.254（注意主机地址不能为全 0 或者全 1）。
作业区子网需要不少于 60 个 IP 地址，计算$2^{N} - 2 ≥ 60$，可以得到$N = 6$，所以子网掩码为 32 位，子网地址为 10.10.10.64/26，范围是 10.10.10.65 到 10.10.10.126。
', 9, 'Mogullzr', '2026-01-29 18:57:25', 9, NULL, '2026-01-29 18:57:25', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1122', '4098');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1140', '4098');
