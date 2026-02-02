INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3394, '2011年408考研真题第1题', '简单', '2011年408真题', '设 n 是描述问题规模的非负整数，下面程序片段的时间复杂度是（ ）。

```c
x = 2;
while (x < n / 2)
    x = 2 * x;
```

', '[''$O(logn)$'', ''$O(n)$'', ''$O(nlog_{2}n)$'', ''$O(n^{2})$'']', "['A']", 'A</font></strong>
在程序中，执行频率最高的语句为`x = x * 2`，设该语句总共执行了 T(n) 次，则$2^{T(n)+1} ≤ n/2$，故$T(n) = log_{2}(n/2) - 1 = log_{2}n - 2$，得$T(n) = O(log_{2}n)$。', 9, 'Mogullzr', '2026-02-02 13:34:42', 9, NULL, '2026-02-02 13:34:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '3394');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3395, '2011年408考研真题第2题', '简单', '2011年408真题', '元素 a，b，c，d，e 依次进入初始为空的栈中，若元素进栈后可停留、可出栈，知道所有元素都出栈，则在所有可能的出现序列中，以元素 d 开头的序列个数是（ ）。
', '[''3'', ''4'', ''5'', ''6'']', "['B']", 'B</font></strong>
本题考察入栈出栈序列，d 为第 1 个出栈元素，则 d 之前的元素必定是进栈后在栈中停留。因而出栈顺序必为 d_c_b_a_，e 的顺序不定，在任一 “_” 上都有可能，一共有 4 种可能。', 9, 'Mogullzr', '2026-02-02 13:34:42', 9, NULL, '2026-02-02 13:34:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3395');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3396, '2011年408考研真题第3题', '简单', '2011年408真题', '已知循环队列存储在一维数组`A[0..n-1]`中，且队列非空时`front`和`rear`分别指向队头元素和队尾元素。若初始时队列空，且要求第一个进入队列的元素存储在`A[0]`处，则初始时`front`和`rear`的值分别是（ ）。
', '[''0，0'', ''0，n-1'', ''n-1，0'', ''n-1，n-1'']', "['B']", 'B</font></strong>
根据题意，第一个元素进入队列后存储在`A[0]`处，此时`front`和`rear`值都为`0`。入队时由于要执行`(rear+1) % n`操作，所以如果入队后指针指向 0， 则`rear`初值为`n-1`，而由于第一个元素在`A[0]`中，插入操作只改变`rear`指针，所以`front`为 0 不变。', 9, 'Mogullzr', '2026-02-02 13:34:42', 9, NULL, '2026-02-02 13:34:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1142', '3396');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3397, '2011年408考研真题第4题', '简单', '2011年408真题', '若一棵完全二叉树有 768 个结点，则该二叉树中叶结点的个数是（）
', '[''257'', ''258'', ''384'', ''385'']', "['C']", 'C</font></strong>
根据完全二叉树的性质，最后一个分支结点的序号为$⌊n/2⌋ = ⌊768/2⌋ = 384$, 故叶子结点的个数为 768 - 384 = 384。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1091', '3397');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3398, '2011年408考研真题第5题', '简单', '2011年408真题', '若一棵二叉树的前序遍历序列和后序遍历序列分别为 1,2,3,4 和 4,3,2,1，则该二叉树的中序遍历序列不会是（）
', '[''1,2,3,4'', ''2,3,4,1'', ''3,2,4,1'', ''4,3,2,1'']', "['C']", 'C</font></strong>
前序序列为根左右，后序序列为左右根，由于前序序列和后序序列刚好相反，故不可能存在一个结点同时存在左右孩子，即二叉树的高度为 4。1 为根结点，由于根结点只能有左孩子（或右孩子），因此，在中序序列中，1 或在序列首或在序列尾，ABCD 皆满足要求。仅考虑以 1 的孩子结点 2 为根结点的子树，它也只能有左孩子（或右孩子），因此，在中序序列中，2 或在序列首或序列尾，ABD 皆满足要求，答案选择 C。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1089', '3398');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3399, '2011年408考研真题第6题', '简单', '2011年408真题', '已知一棵有 2011 个结点的树，其叶结点个数为 116，该树对应的二叉树中无右孩子的结点个数是（ ）。
', '[''115'', ''116'', ''1895'', ''1896'']', "['D']", 'D</font></strong>
树转化为二叉树时，树中每一个分支结点的所有子结点中的最右子结点无右孩子，根结点转换后也没有右孩子，因此，对应的二叉树中无右孩子的结点个数＝分支结点数+1 = 2011-116+1 = 1896。通常本题应采用特殊法解，设题意中的树是如右图所示的结构，则对应的二叉树中仅有前 115 个叶结点有右孩子，故无右孩子的结点个数 = 2011-115 = 1896。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1144', '3399');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3400, '2011年408考研真题第7题', '简单', '2011年408真题', '对于下列关键字序列，不可能构成某二叉排序树中一条查找路径的序列是（ ）。
', '[''95，22，91，24，94，71'', ''92，20，91，34，88，35'', ''21，89，77，29，36，38'', ''12，25，71，68，33，34'']', "['A']", 'A</font></strong>
在二叉排序树中，左子树结点值小于根结点，右子树结点值大于根结点。在选项 A 中，当查找到 91 后再向 24 查找，说明这一条路径（左子树）之后查找的数都要比 91 小，而后面却查找到了 94（解题过程中，建议配合画图），因此错误。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1174', '3400');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3401, '2011年408考研真题第8题', '简单', '2011年408真题', '下列关于图的叙述中，正确的是（ ）。
I. 回路是简单路径
II. 存储稀疏图，用邻接矩阵比邻接表更省空间
III. 若有向图中存在拓扑序列，则该图不存在回路
', '[''仅 II'', ''仅 Ⅰ、II'', ''仅 III'', ''仅 Ⅰ、III'']', "['C']", 'C</font></strong>
第一个顶点和最后一个顶点相同的路径称为回路；序列中顶点不重复出现的路径称为简单路径；回路显然不是简单路径，故 I 错误；稀疏图是边比较少的情况，此时用邻接矩阵的空间复杂度为$O(n^{2})$，必将浪费大量的空间，而邻接表的空间复杂度为$O(n + e)$，应该选用邻接表，故 II 错误。存在回路的有向图不存在拓扑序列，若拓扑排序输出结束后所余下的顶点都有前驱，则说明只得到了部分顶点的拓扑有序序列，图中存在回路，故 III 正确。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1093', '3401');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3402, '2011年408考研真题第9题', '简单', '2011年408真题', '为提高哈希（Hash）表的查找效率，可以采取的正确措施是（ ）。
I. 增大装填因子
II. 设计冲突少的哈希函数
III. 处理冲突时避免产生堆积现象
', '[''仅 I'', ''仅 II'', ''仅 I、II'', ''仅 II、III'']', "['D']", 'D</font></strong>
哈希表的查找效率取决于散列函数、处理冲突的方法和装填因子。显然，冲突的产生概率与装填因子（表中记录数与表长之比）的大小成正比，即装填得越满越容易发生冲突，I 错误。II 显然正确。采用合适的处理冲突的方式避免产生聚集现象，也将提高查找效率，例如用拉链法解决冲突时就不存在聚集现象，用线性探测法解决冲突时易引起聚集现象，III 正确。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1165', '3402');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3403, '2011年408考研真题第10题', '简单', '2011年408真题', '为实现快速排序算法，待排序序列宜采用的存储方式是（）
', '[''顺序存储'', ''散列存储'', ''链式存储'', ''索引存储'']', "['A']", 'A</font></strong>
对绝大部分内部排序而言，只适用于顺序存储结构。快速排序在排序的过程中，既要从后向前查找，也要从前向后查找，因此宜采用顺序存储。', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3403');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3404, '2011年408考研真题第11题', '简单', '2011年408真题', '已知序列 25,13,10,12,9 是大根堆，在序列尾部插入新元素 18，将其再调整为大根堆，调整过程中元素之间进行的比较次数是（）
', '[''1'', ''2'', ''4'', ''5'']', "['B']", 'B</font></strong>
插入 18 后，首先将 18 与 10 比较，交换位置，再将 18 与 25 比较，不交换位置。共比较了 2
次，调整的过程如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/f6f3c2c885cf42cdbeea18f791baefc9.svg)
', 9, 'Mogullzr', '2026-02-02 13:34:43', 9, NULL, '2026-02-02 13:34:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1095', '3404');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3405, '2011年408考研真题第12题', '简单', '2011年408真题', '下列选项中，描述浮点数操作速度指标的是（ ）。
', '[''MIPS'', ''CPI'', ''IPC'', ''MFLOPS'']', "['D']", 'D</font></strong>
MIPS是每秒执行多少百万条指令，适用千衡量标量机的性能。CPI是平均每条指令的时钟周期数。IPC是 CPI 的倒数，即每个时钟周期执行的指令数。MFLOPS是每秒执行多少百万条浮点数运算，用来描述浮点数运算速度，适用于衡量向量机的性能。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1175', '3405');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3406, '2011年408考研真题第13题', '简单', '2011年408真题', 'float 型数据通常用 IEEE754 单精度浮点数格式表示。若编译器将 float 型变量 x 分配在一个 32 位浮点寄存器 FR1 中，且 x=-8.25，则 FR1 的内容是（ ）。
', '[''C1040000H'', ''C2420000H'', ''C1840000H'', ''C1C20000H'']', "['A']", 'A</font></strong>
本题题意即考查IEEE 754 单精度浮点数的表示。先将 x 转换成二进制为$−1000.01 = −1.00001 × 2^{3}$，其次计算阶码 E，根据 IEEE 754 单精度浮点数格式，有 E-127=3，故 E=130，转换成二进制为 1000 0010。最后，根据 IEEE 754 标准，最高位的 “1” 是被隐藏的。IEEE 754 单精度浮点数格式：数符（1 位）＋阶码（8 位）＋尾数（23 位）。故，FR1 内容为 1; 1000 0010; 0000 10000 0000 0000 0000 000。即，1100 0001 0000 0100 0000 0000 0000 0000= C104000H。本题易误选 D, 未考虑 IEEE 754 标准隐含最高位 1 的情况，偏置值是 128。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '3406');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3407, '2011年408考研真题第14题', '简单', '2011年408真题', '下列各类存储器中，不采用随机存取方式的是（ ）。
', '[''EPROM'', ''CDROM'', ''DRAM'', ''SRAM'']', "['B']", 'B</font></strong>
随机存取方式是指 CPU 可以对存储器的任一存储单元中的内容随机存取，而且存取时间与存储单元的物理位置无关。选项 A、C、D 均采用随机存取方式，CDROM即光盘，采用串行存取方式。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1148', '3407');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3408, '2011年408考研真题第15题', '简单', '2011年408真题', '某计算机存储器按字节编址，主存地址空间大小为 64MB，现用 4M×8 位的 RAM 芯片组成 32MB 的主存储器，则存储器地址寄存器 MAR 的位数至少是（ ）。
', '[''22 位'', ''23 位'', ''25 位'', ''26 位'']', "['D']", 'D</font></strong>
主存按字节编址，地址空间大小为 64MB，MAR 的寻址范围为 64M =$2^{26}$，故为 26 位。实际的主存容量 32MB 不能代表 MAR 的位数，考虑到存储器扩展的需要，MAR 应保证访问到整个主存地址空间，反过来，MAR 的位数决定了主存地址空间的大小。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1148', '3408');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3409, '2011年408考研真题第16题', '简单', '2011年408真题', '偏移寻址将某个寄存器内容与一个形式地址相加而生成有效地址。下列寻址方式中，不属于偏移寻址方式的是（ ）。
', '[''间接寻址'', ''基址寻址'', ''相对寻址'', ''变址寻址'']', "['A']", 'A</font></strong>
间接寻址不需要寄存器，EA = (A)。基址寻址 EA = A + 基址寄存器 BR 内容；相对寻址 EA= A + 程序计数器 PC 内容；变址寻址 EA = A + 变址寄存器 IX 内容。后三者都是将某个寄存器内容与一个形式地址相加而形成有效地址，故选 A。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1103', '3409');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3410, '2011年408考研真题第17题', '简单', '2011年408真题', '某机器有一个标志寄存器，其中有进位/借位标志 CF、零标志 ZF、符号标志 SF 和溢出标志 OF，条件转移指令 bgt（无符号整数比较大于时转移）的转移条件是 (  )
', '[''$CF + OF = 1$'', ''$\\\\overline{SF} + ZF = 1$'', ''$\\\\overline{CF+ZF\\u200b} = 1$'', ''$\\\\overline{CF+SF\\u200b} = 1$'']', "['C']", 'C</font></strong>
本题考察标志寄存器，假设两个无符号整数 A 和 B，bgt 指令会将 A 和 B 进行比较，也就是将 A 和 B 相减。如果 A > B，则 A-B 肯定无进位／借位，也不为 0（为 0 时表示两数相同），故而 CF 和 ZF 均为 0，选 C。其余选项中用到了符号标志 SF 和溢出标志 OF, 显然应当排除。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1177', '3410');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3411, '2011年408考研真题第18题', '简单', '2011年408真题', '下列给出的指令系统特点中，有利于实现指令流水线的是（ ）。
Ⅰ. 指令格式规整且长度一致
Ⅱ. 指令和数据按边界对齐存放
Ⅲ. 只有 Load/Store 指令才能对操作数进行存储访问
', '[''仅Ⅰ、Ⅱ'', ''仅Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅲ'', ''Ⅰ、Ⅱ、Ⅲ'']', "['D']", 'D</font></strong>
指令定长、对齐和仅 Load/Store 指令访存，这 3 个都是 RISC 的特征，指令格式规整且长度一 致能大大简化指令译码的复杂度，有利于 实现流水线。指令和数据按边界对齐存放能保证在一个存取周期内取到需要的数据和指令，不用多余的延迟等待，也有利于实现流水线。只有 Load/Store 指令才能对操作数进行存储访问使取指令、取操作数操作简化且时间长度固定，能够有效地简化流水线的复杂度。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1106', '3411');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3412, '2011年408考研真题第19题', '简单', '2011年408真题', '假定不采用 Cache 和指令预取技术，且机器处于“开中断”状态，则在下列有关指令执行的叙述中，错误的是（ ）。
', '[''每个指令周期中 CPU 都至少访问内存一次'', ''每个指令周期一定大于或等于一个 CPU 时钟周期'', ''空操作指令的指令周期中任何寄存器的内容都不会被改变'', ''当前程序在每条指令执行结束时都可能被外部中断打断'']', "['C']", 'C</font></strong>
由于不采用指令预取技术，每个指令周期都需要取指令，而不采用 Cache 技术，则每次取指令都至少要访问内存一次（当指令字长与存储字长相等且按边界对齐时），A 正确。时钟周期是 CPU 的最小时间单位，每个指令周期一定大于或等于 一个 CPU 时钟周期，B 正确。即使是空操作指令，在取指操作后，PC 也会自动加 1，C 错误。由于机器处于“开中断”状态，在 每条指令执行结束时都可能被外部中断而 打断。', 9, 'Mogullzr', '2026-02-02 13:34:45', 9, NULL, '2026-02-02 13:34:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '3412');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1178', '3412');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3413, '2011年408考研真题第20题', '简单', '2011年408真题', '在系统总线的数据线上，不可能传输的是（ ）。
', '[''指令'', ''操作数'', ''握手（应答）信号'', ''中断类型号'']', "['C']", 'C</font></strong>
在取指令时，指令便是在数据线上传输的。操作数显然在数据线上传输。中断类型号用以指出中断向量表的地址，CPU 响应中断请求后，将中断应答信号（INTR）发回到数据总线上，CPU 从数据总线上读取中断类型号后，查找中断向量表，找到相应的中断处理程序入口。而握手（应答）信号属于通信联络控制信号，应在通信总线上传输。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1179', '3413');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3414, '2011年408考研真题第21题', '简单', '2011年408真题', '某计算机有五级中断$L_{4} ∼ L_{0}$，中断屏蔽字为$M_{4}M_{3}M_{2}M_{1}M_{0}$，$M_{i} = 1$（$0 ≤ i ≤ 4$）表示对$L_{i}$级中断进行屏蔽。若中断响应优先级从高到低的顺序是$L_{0} → L_{1} → L_{2} → L_{3} → L_{4}$，且要求中断处理优先级从高到低的顺序是$L_{4} → L_{0} → L_{2} → L_{1} → L_{3}$，则$L_{1}$的中断处理程序中设置的中断屏蔽字是（ ）。
', '[''11110'', ''01101'', ''00011'', ''01010'']', "['D']", 'D</font></strong>
高优先级置 0 表示可被中断，比该中断优先级低（或相等）的置 l 表示不可被中断，$L_{1}$只能屏蔽$L_{3}$和其自身，故$M_{3}$和$M_{1}$置 1，中断屏蔽字$M_{4}M_{3}M_{2}M_{1}M_{0} = 01010$。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1180', '3414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1178', '3414');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3415, '2011年408考研真题第22题', '简单', '2011年408真题', '某计算机处理器主频为 50MHz，采用定时查询方式控制设备 A 的 I/O，查询程序运行一次所用的时钟周期数至少为 500。在设备 A 工作期间，为数据不丢失，每秒需对其查询至少 200 次，则 CPU 用于设备 A 的 I/O 的时间占整个 CPU 时间的百分比至少是（ ）。
', '[''0.02%'', ''0.05%'', ''0.20%'', ''0.50%'']', "['C']", 'C</font></strong>
本题考察程序查询 I/O 方式，每秒至少查询 200 次，每次查询至少 500 个 时钟周期，总的时钟周期数为 200 × 500 =100000，因此 CPU 用于设备 A 的 I/O 的时间占 CPU 时间比为 100000/50M =0.20%。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1181', '3415');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3416, '2011年408考研真题第23题', '简单', '2011年408真题', '下列选项中，满足短任务优先且不会发生饥饿现象的调度算法是（ ）。
', '[''先来先服务'', ''高响应比优先'', ''时间片轮转'', ''非抢占式短任务优先'']', "['B']", 'B</font></strong>
最高响应比优先是一种综合考虑任务长度和等待时间的调度算法，响应比＝（等待时间＋执行时间）／执行时间。高响应比优先算法在等待时间相同的情况下，作业执行时间越短则响应比越高，满足短任务优先。随着长任务的等待时间增加，响应比也会变大，执行机会也就增大，所以不会发生饥饿现象。先来先服务和时间片轮转不符合短任务优先，非抢占式短任务优先会产生饥饿现象。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3416');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3417, '2011年408考研真题第24题', '简单', '2011年408真题', '下列选项中，在用户态执行的是（ ）。
', '[''命令解释程序'', ''缺页处理程序'', ''进程调度程序'', ''时钟中断处理程序'']', "['A']", 'A</font></strong>
缺页处理和时钟中断都属于中断，在内核态执行；进程调度是操作系统内核进程，无须用户干预，在核心态执行；命令解释程序属于命令接口，是四个选项中唯一能面对用户的，它在用户态执行。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1182', '3417');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3418, '2011年408考研真题第25题', '简单', '2011年408真题', '在支持多线程的系统中，进程 P 创建的若干线程不能共享的是（ ）。
', '[''进程 P 的代码段'', ''进程 P 中打开的文件'', ''进程 P 的全局变量'', ''进程 P 中某线程的栈指针'']', "['D']", 'D</font></strong>
进程是资源分配的基本单位，线程是处理机调度的基本单位。因此，进程的代码段、进程打开的文件、进程的全局变量等都是进程的资源，唯有进程中某线程的栈指针是属于线程的，属于进程的资源可以共享，属于线程的栈是独享的，对其他线程透明。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1183', '3418');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3419, '2011年408考研真题第26题', '简单', '2011年408真题', '用户程序发出磁盘 I/O 请求后，系统的正确处理流程是（ ）。
', '[''用户程序→系统调用处理程序→中断处理程序→设备驱动程序'', ''用户程序→系统调用处理程序→设备驱动程序→中断处理程序'', ''用户程序→设备驱动程序→系统调用处理程序→中断处理程序'', ''用户程序→设备驱动程序→中断处理程序→系统调用处理程序'']', "['B']", 'B</font></strong>
I/O 软件一般从上到下分为四个层次：用户层、与设备无关的软件层、设备驱动程序以及中断处理程序。与设备无关的软件层也就是系统调用的处理程序。当用户使用设备时，首先在用户程序中发起一次系统调用，操作系统的内核接到该调用请求后请求调用处理程序进行处理，再转到相应的设备驱动程序，当设备准备好或所需数据到达后设备硬件发出中断，将数据按上述调用顺序逆向回传到用户程序中。', 9, 'Mogullzr', '2026-02-02 13:34:46', 9, NULL, '2026-02-02 13:34:46', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1184', '3419');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3420, '2011年408考研真题第27题', '简单', '2011年408真题', '某时刻进程的资源使用情况如下表所示。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/6d7f509b0d1f40be9845ac7ff6f6d498.jpg)

此时的安全序列是（ ）。
', '[''$P_{1}, P_{2}, P_{3}, P_{4}$'', ''$P_{1}, P_{4}, P_{3}, P_{2}$'', ''$P_{1}, P_{3}, P_{2}, P_{4}$'', ''不存在'']', "['D']", 'D</font></strong>
题应采用排除法，逐个代入分析。当剩余资源分配给$P_{1}$，待$P_{1}$执行完后，可用资源数为 (2,2,1)，此时仅能满足$P_{4}$的需求，排除 A、B；接着分配给$P_{4}$，待$P_{4}$执行完后，可用资源数为 (2,2,2)，此时已无法满足任何进程的需求，排除 C。此外，本题还可以使用银行家算法求解（对于选择题来说，显得过于复杂）。', 9, 'Mogullzr', '2026-02-02 13:34:48', 9, NULL, '2026-02-02 13:34:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1185', '3420');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3421, '2011年408考研真题第28题', '简单', '2011年408真题', '在缺页处理过程中，操作系统执行的操作可能是（）。
I、修改页表
II、磁盘 I/O
III、分配页框
', '[''仅 I、II'', ''仅 II'', ''仅 III'', ''I、II 和 III'']', "['D']", 'D</font></strong>
缺页中断产生后，需要在内存中找到空闲页框并分配给需要访问的页（可能涉及页面置换），之后缺页中断处理程序调用设备驱动程序做磁盘/O，将位于外存上的页面调入内存，调入后需要修改页表，将页表中代表该页是否在内存的标志位（或有效位）置为 1，并将物理页框号填入相应位置，若必要还需修改其他相关表项等。', 9, 'Mogullzr', '2026-02-02 13:34:48', 9, NULL, '2026-02-02 13:34:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1186', '3421');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3422, '2011年408考研真题第29题', '简单', '2011年408真题', '当系统发生抖动 (thrashing) 时，可以采取的有效措施是（ ）。
I. 撤销部分进程
II. 增加磁盘交换区的容量
III. 提高用户进程的优先级
', '[''仅 I'', ''仅 II'', ''仅 III'', ''仅 I、II'']', "['A']", 'A</font></strong>
在具有对换功能的操作系统中，通常把外存分为文件区和对换区。前者用于存放文件，后者用于存放从内存换出的进程。抖动现象是指刚刚被换出的页很快又要被访问，为此又要换出其他页，而该页又很快被访问，如此频繁地置换页面，以致大部分时间都花在页面置换上，引起系统
性能下降。撤销部分进程可以减少所要用到的页面数，防止抖动。对换区大小和进程优先级都与抖动无关。', 9, 'Mogullzr', '2026-02-02 13:34:48', 9, NULL, '2026-02-02 13:34:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1187', '3422');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3423, '2011年408考研真题第30题', '简单', '2011年408真题', '在虚拟内存管理中，地址变换机构将逻辑地址变换为物理地址，形成该逻辑地址的阶段是（）。
', '[''编辑'', ''编译'', ''链接'', ''装载'']', "['C']", 'C</font></strong>
编译后的模块需要经过链接才能装载，而链接后形成的地址才是整个程序的完整逻辑地址空间。以 C 语言为例：C 语言经过预处理 (cpp)→编译 (ccl)→汇编 (as)→链接 (ld) 产生可执行文件。其中链接的前一步，产生了可重定位的二进制的目标文件。C 语言采用源文件独立编译的方法，如程序 main.c，file1.c,file2.c,file1.h,file2.h，在链接的前一步生成了 main.o,file1.o,file2.o，这些目标模块采用的逻辑地址都从 0 开始，但只是相对于该模块的逻辑地址。链接器将这三个文件，libc 和其他的库文件链接成一个可执行文件。链接阶段主要完成了重定位，形成整个程序的完整逻辑地址空间。例如，file1.o 的逻辑地址为 01023，main.o 的逻辑地址为 01023，假设链接时将 file1.o 链接在 main.o 之后，则重定位之后 file1.o 对应的逻辑地址就应为 1024~2047。', 9, 'Mogullzr', '2026-02-02 13:34:48', 9, NULL, '2026-02-02 13:34:48', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1188', '3423');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1189', '3423');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3424, '2011年408考研真题第31题', '简单', '2011年408真题', '某文件占 10 个磁盘块，现要把该文件磁盘块逐个读入主存缓冲区，并送用户区进行分析，假设一个缓冲区与一个磁盘块大小相同，把一个磁盘块读入缓冲区的时间为 100μs，将缓冲区的数据传送到用户区的时间是 50μs，CPU 对一块数据进行分析的时间为 50μs。在单缓冲区和双缓冲区结构下，读入并分析完该文件的时间分别是（ ）。
', '[''1500μs、1000μs'', ''1550μs、1100μs'', ''1550μs、1550μs'', ''2000μs、2000μs'']', "['B']", 'B</font></strong>
在单缓冲区中，当上一个磁盘块从缓冲区读入用户区完成时，下一磁盘块才能开始读入，也就是当最后一块磁盘块读入用户区完毕时所用时间为 150×10=1500μs，加上处理最后一个磁盘块的时间 50μs，得 1550μs。在双缓冲中，不存在等待磁盘块从缓冲区读入用户区的问题，10 个磁盘块可以连续从外存读入主存缓冲区，加上将最后一个磁盘块从缓冲区送到用户区的传输时间 50μs 以及处理时间 50μs，也就是 100×10+50+50=1100μs。', 9, 'Mogullzr', '2026-02-02 13:34:49', 9, NULL, '2026-02-02 13:34:49', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1087', '3424');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3425, '2011年408考研真题第32题', '简单', '2011年408真题', '有两个并发执行的进程 P1 和 P2，共享初值为 1 的变量 x。P1 对 x 加 1，P2 对 x 减 1。加 1 和减 1 操作的指令序列分别如下所示。

```c
P1 // 加 1 操作
load R1, x // 取 x 到寄存器 R1 中
inc R1
store x, R1 // 将 R1 的内容存入 x
P2 // 减 1 操作
load R2, x // 取 x 到寄存器 R2 中
dec R2
store x, R2 // 将 R2 的内容存入 x
```
两个操作完成后，x 的值（ ）。
', '[''可能为 -1 或 3'', ''只能为 1'', ''可能为 0、1 或 2'', ''可能为 -1、0、1 或 2'']', "['C']", 'C</font></strong>
将$P_{1}$中 3 条语句依次编号为 1,2,3；$P_{2}$中 3 条语句依次编号为 4,5,6。依次执行 1,2,3,4,5,6 得结果 1，依次执行 1,2,4,5,6,3 得结果 2，执行 4,5,1,2,3,6 得结果 0。因此结果 -1 不可能得出。', 9, 'Mogullzr', '2026-02-02 13:34:49', 9, NULL, '2026-02-02 13:34:49', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1183', '3425');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3426, '2011年408考研真题第33题', '简单', '2011年408真题', 'TCP/IP 参考模型的网络层提供的是（ ）。
', '[''无连接不可靠的数据报服务'', ''无连接可靠的数据报服务'', ''有连接不可靠的虚电路服务'', ''有连接可靠的虚电路服务'']', "['A']", 'A</font></strong>
TCP/IP 的网络层向上只提供简单灵活的、无连接的、尽最大努力交付的数据报服务。考查 IP
首部，如果是面向连接的，那么应有用于建立连接的字段，但是没有；如果提供可靠的服务，那
么至少应有序号和校验 和两个字段，但是 IP 分组头中也没有（IP 首部中只是首部校验和）。通常
有连 接、可靠 的应用是由运输层的 TCP 实现的。', 9, 'Mogullzr', '2026-02-02 13:34:49', 9, NULL, '2026-02-02 13:34:49', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1190', '3426');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3427, '2011年408考研真题第34题', '简单', '2011年408真题', '若某通信链路的数据传输速率为 2400 bps，采用 4 相位调制，则该链路的波特率是（ ）。
', '[''600 波特'', ''1200 波特'', ''4800 波特'', ''9600 波特'']', "['B']", 'B</font></strong>
波特率B 与数据传输率 C 的关系：$C = Blog_{2}N$，$N$为一个码元所取的离散值个数。采用$4$种相位，也即可以表示$4$种变化，故一个码元可携带$log_{2}4 = 2$bit 信息，则该链路的波特率 = 比特率/2 = 1200 波特。', 9, 'Mogullzr', '2026-02-02 13:34:49', 9, NULL, '2026-02-02 13:34:49', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1121', '3427');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3428, '2011年408考研真题第35题', '简单', '2011年408真题', '数据链路层采用选择重传协议 (SR) 传输数据，发送方已发送了 0～3 号数据帧，现已收到 1 号帧的确认，而 0、2 号帧依次超时，则此时需要重传的帧数是（ ）。
', '[''1'', ''2'', ''3'', ''4'']', "['B']", 'B</font></strong>
在选择性重传中，接收方逐个确认正确接收的分组，不管接收到的分组是否有序，只要正确接收就发送选择 ACK 分组进行确认。因此选择重传协议中的 ACK 分组不再具有累积确认的作用，要特别注意其与 GBN 协议的区别。本题中只收到 1 号帧的确认，0、2 号帧超时，由于对于1 号帧的确认不具累积确认的作用，因此发送方认为接收方没有收到 0、2 号帧，于是重传这两帧。因为 3 号帧计时器并无超时，所以暂时不用重传 3 号帧。', 9, 'Mogullzr', '2026-02-02 13:34:49', 9, NULL, '2026-02-02 13:34:49', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1122', '3428');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3429, '2011年408考研真题第36题', '简单', '2011年408真题', '下列选项中，对正确接收到的数据帧进行确认的 MAC 协议是（ ）。
', '[''CSMA'', ''CDMA'', ''CSMA/CD'', ''CSMA/CA'']', "['D']", 'D</font></strong>
CSMA/CA 协议是无线局域网标准 802.11 中的协议，它在 CSMA 的基础上增加了冲突避免的功能。ACK 帧是 CSMA/CA 避免冲突的机制之一，也就是说，只有当发送方收到接收方发回的 ACK 帧后才确认发出的数据帧已正确到达目的地。', 9, 'Mogullzr', '2026-02-02 13:34:49', 9, NULL, '2026-02-02 13:34:49', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1191', '3429');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3430, '2011年408考研真题第37题', '简单', '2011年408真题', '某网络拓扑如下图所示，路由器`R1`只有到达子网`192.168.1.0/24`的路由。为使`R1`可以将`IP`分组正确地路由到图中所有子网，则在`R1`中需要增加的一条路由（目的网络，子网掩码，下一跳）是（ ）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/0fa16eb2963041ddb2797283371e5a9d.svg)

', '[''`192.168.2.0`，`255.255.255.128`，`192.168.1.1`'', ''`192.168.2.0`，`255.255.255.0`，`192.168.1.1`'', ''`192.168.2.0`，`255.255.255.128`，`192.168.1.2`'', ''`192.168.2.0`，`255.255.255.0`，`192.168.1.2`'']', "['D']", 'D</font></strong>
要使 R1 能够正确将分组路由到所有子网，则 R1 中需要有到 192.168.2.0/25 和 192.168.2.128/25 的路由，分别转换成二进制如下：192.168.2.0:11000000 10101000 0000001000000000192.168.2.128:11000000 10101000 0000001010000000前 24 位都是相同的，于是可以聚合成超网 192.168.2.0/24, 子网掩码为前 24 位，即 255.255.255.0。下 一跳是与 R1 直接相连的 R2 的地址，因此是 192.168.1.2。', 9, 'Mogullzr', '2026-02-02 13:34:50', 9, NULL, '2026-02-02 13:34:50', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1141', '3430');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3431, '2011年408考研真题第38题', '简单', '2011年408真题', '在子网 192.168.4.0/30 中，能接收目的地址为 192.168.4.3 的 IP 分组的最大主机数是（ ）。
', '[''0'', ''1'', ''2'', ''4'']', "['C']", 'C</font></strong>
首先分析 192.168.4.0/30 这个网络，主机号只占 2 位，地址范围为 192.168.4.0-192.168.4.3，主机号全 1 时，即 192.168.4.3 是广播地址，主机号全 0 表示本网络本身，不作为主机地址使用，因此可容纳 4-2=2 个 主机。', 9, 'Mogullzr', '2026-02-02 13:34:51', 9, NULL, '2026-02-02 13:34:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1140', '3431');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3432, '2011年408考研真题第39题', '简单', '2011年408真题', '主机甲向主机乙发送一个 (SYN＝1, seq＝11220) 的 TCP 段，期望与主机乙建立 TCP 连接，若主机乙接受该连接请求，则主机乙向主机甲发送的正确的 TCP 段可能是
', '[''(SYN＝0, ACK＝0, seq＝11221, ack＝11221)'', ''(SYN＝1, ACK＝1, seq＝11220, ack＝11220)'', ''(SYN＝1, ACK＝1, seq＝11221, ack＝11221)'', ''(SYN＝0, ACK＝0, seq＝11220, ack＝11220)'']', "['C']", 'C</font></strong>
本题考查三次握手，在确认报文段中，同步位 SYN 和确认位 ACK 必须都是 1；返回的确认号 seq 是甲发送的初始序号 seq=11220 加 1，即 ack= 11221；同时乙也要选择并消耗一个初始序号 seq，seq 值由乙的TCP 进程任意给出，它与确认号、请求报文段的序号没有任何关系。', 9, 'Mogullzr', '2026-02-02 13:34:51', 9, NULL, '2026-02-02 13:34:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1192', '3432');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3433, '2011年408考研真题第40题', '简单', '2011年408真题', '主机甲与主机乙之间已建立一个 TCP 连接，主机甲向主机乙发送了 3 个连续的 TCP 段，分别包含 300 字节、400 字节和 500 字节的有效载荷，第 3 个段的序号为 900。若主机乙仅正确接收到第 1 和第 3 个段，则主机乙发送给主机甲的确认序号是
', '[''300'', ''500'', ''1200'', ''1400'']', "['B']", 'B</font></strong>
TCP 首部的序号字段是指本报文段数据部分的第一个字节的序号，而确认号是期待收到对方下一个报文段的第一个字节的序号。第三个段的序号为 900，则第二个段的序号为 900-400=500，现在主机乙期待收到第二个段，故发给甲的确认号是 500。', 9, 'Mogullzr', '2026-02-02 13:34:51', 9, NULL, '2026-02-02 13:34:51', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1126', '3433');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3434, '2011年408考研真题第41题', '简单', '2011年408真题', '已知有 6 个顶点（顶点编号为 0～5）的有向带权图 G ，其邻接矩阵 A 为上三角矩阵，按行为主序（行优先）保存在如下的一维数组中。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/9fcd47278d4b4b229648a05fc86967ca.svg)

要求：
(1) 写出图 G 的邻接矩阵 A 。
(2) 画出有向带权图 G 。
(3) 求图 G 的关键路径，并计算该关键路径的长度。
', '[]', '', '1）上三角矩阵 A[6][6] 中，第 1 行至第 5 行主对角线上方的元素个数分别为 5, 4, 3, 2, 1,
由此可以画出压缩存储数组中的元素所属行的情况，如下图所示。
html46∞∞∞5∞∞∞43∞∞33第1行第2行第4行第3行第5行
用“平移”的思想，将前 5 个、后 4 个、后 3 个、后 2 个、后 1 个元素，分别移动到矩阵对
角线 (“0”) 右边的行上。图 G 的邻接矩阵 A 如下所示。

$$
A = \\begin{vmatrix}
0 & 4 & 6 & ∞ & ∞ & ∞\\\\
∞ & 0 & 5 & ∞ & ∞ & ∞\\\\
∞ & ∞ & 0 & 4 & 3 & ∞\\\\
∞ & ∞ & ∞ & 0 & ∞ & 3\\\\
∞ & ∞ & ∞ & ∞ & 0 & 3\\\\
∞ & ∞ & ∞ & ∞ & ∞ & 0
\\end{vmatrix}
$$

2）据上面的邻接矩阵，画出有向带权图 G, 如下图所示。
html0123454654333
(3) 按照算法，先计算各个事件的最早发生时间，计算过程如下：
$ve(0) = 0$;
$ve(1) = ve(0) + a_{0→1} = 4$;
$ve(2) = max(ve(0) + a_{0→1}, ve(1) + a_{1→2}) = max(6, 4 + 5) = 9$;
$ve(3) = ve(2) + a_{2→3} = 9 + 4 = 13$;
$ve(4) = ve(2) + a_{2→4} = 9 + 3 = 12$;
$ve(5) = max(ve(3) + a_{3→5}, ve(4) + a_{4→5}) = max(16, 15) = 16$;
接下来求各个时间的最迟发生时间，计算过程如下：
$vl(5) = ve(5) = 16$;
$vl(4) = vl(5) - a_{4→5} = 16 - 3 = 13$;
$vl(3) = vl(5) - a_{3→5} = 16 - 3 = 13$;
$vl(2) = min(vl(3) - a_{2→3}, vl(4) - a_{2→4}) = min(9, 10) = 9$;
$vl(1) = vl(2) - a_{1→2} = 4$;
$vl(0) = min(vl(2) - a_{0→2}, vl(1) - a_{0→1}) = min(3, 0) = 0$;
即 ve() 和 vl() 数组如下表所示。

| i | 0 | 1 | 2 | 3 | 4 | 5 |
| --- | --- | --- | --- | --- | --- | --- |
| ve(i) | 0 | 4 | 9 | 13 | 12 | 16 |
| vl(i) | 0 | 4 | 9 | 13 | 13 | 16 |

接下来计算所有活动的最早和最迟发生时间 e() 和 l()：
$e(a_{0→1}) = e(a_{0→2}) = ve(0) = 0$;
$e(a_{1→2}) = ve(1) = 4$;
$e(a_{2→3}) = e(a_{2→4}) = ve(2) = 9$;
$e(a_{3→5}) = ve(3) = 13$;
$e(a_{4→5}) = ve(4) = 12$;
$l(a_{4→5}) = vl(5) - a_{4→5} = 16 - 3 = 13$;
$l(a_{3→5}) = vl(5) - a_{3→5} = 16 - 3 = 13$;
$l(a_{2→4}) = vl(4) - a_{2→4} = 13 - 3 = 10$;
$l(a_{2→3}) = vl(3) - a_{2→3} = 13 - 4 = 9$;
$l(a_{1→2}) = vl(2) - a_{1→2} = 9 - 5 = 4$;
$l(a_{0→2}) = vl(2) - a_{0→2} = 9 - 6 = 3$;
$l(a_{0→1}) = vl(1) - a_{0→1} = 4 - 4 = 0$;
e() 和 l() 数组与它们的差值如下表所示。

|  | a0→1​ | a0→2​ | a1→2​ | a2→3​ | a2→4​ | a3→5​ | a4→5​ |
| --- | --- | --- | --- | --- | --- | --- | --- |
| e() | 0 | 0 | 4 | 9 | 9 | 13 | 12 |
| l() | 0 | 3 | 4 | 9 | 10 | 13 | 13 |
| l-e | 0 | 3 | 0 | 0 | 1 | 0 | 1 |

满足 l() - e() = 0 的路径就是关键路径，所以关键路径为$a_{0→1}$、$a_{1→2}$、$a_{2→3}$、$a_{3→5}$，如下图所示（粗线表示），长度为$4 + 5 + 4 + 3 = 16$。
html0123454654333
', 9, 'Mogullzr', '2026-02-02 13:34:52', 9, NULL, '2026-02-02 13:34:52', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1193', '3434');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1194', '3434');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3435, '2011年408考研真题第42题', '简单', '2011年408真题', '一个长度为 L（L ≥ 1） 的升序序列 S ，处在第$⌈L/2⌉$个位置的数称为 S 的中位数。例如，若序列 S1 = (11,13,15,17,19)，则 S1 的中位数是 15 。两个序列的中位数是含它们所有元素的升序序列的中位数。例如，若序列 S2 = (2,4,6,8,20)，则 S1 和 S2 的中位数是 11 。现有两个等长的升序序列 A 和 B ，试设计一个在时间和空间两方面都尽可能高效的算法，找出两个序列 A 和 B 的中位数。要求：
(1) 给出算法的基本设计思想。
(2) 根据设计思想，采用 C 或 C++ 或 Java 语言描述，关键之处给出注释。
(3) 说明你所设计算法的时间复杂度和空间复杂度。
', '[]', '', '(1) 求两个序列 A 和 B 的中位数最简单的办法就是将两个升序序列进行归并排序，然后求其中位数。这种解法虽可求解，但在时间和空间两方面都不大符合高效的要求，但也能获得部分分值。
根据题目分析，分别求两个升序序列 A 和 B 的中位数，设为 a 和 b。
① 若$a = b$，则$a$或$b$即为所求的中位数。
原因：容易验证，如果将两个序列归并排序，则最终序列中，排在子序列 b 前边的元素为先前两个序列中排在 a 和 b 前边的元素；排在子序列 ab 后边的元素为先前两个序列中排在 a 和 b后边的元素。所以子序列 ab 一定位于最终序列的中间，又因为 a=b，显然 a 就是中位数。
②否则（假设$a < b$)，中位数只能出现 (a,b) 范围内。
原因：同样可以用归并排序后的序列来验证，归并排序后必然有形如$⋯ a ⋯ b ⋯$的序列出现，中位数必出现在 (a,b) 之间。因此可以做如下处理：舍弃 a 所在序列 A 的较小一半，同时舍弃 b 所在序列 B 的较大一半。在保留两个升序序列中求出新的中位数 a 和 b，重复上述过程，直到两个序列中只含一个元素时为止，则较小者即为所求的中位数。每次总的元素个数变为原来的一半。
算法的基本设计思想如下。
分别求出序列 A 和 B 的中位数，设为 a 和 b，求序列 A 和 B 的中位数过程如下：
① 若$a = b$，则 a 或 b 即为所求中位数，算法结束。
② 若$a < b$，则舍弃序列 A 中较小的一半，同时舍弃序列 B 中较大的一半，要求舍弃的长度
相等。
③ 若$a > b$，则舍弃序列 A 中较大的一半，同时舍弃序列 B 中较小的一半，要求舍弃的长度
相等。
在保留的两个升序序列中，重复过程①、②、③，直到两个序列中只含一个元素时为止，较小者即为所求的中位数。
2）算法实现

```c
int M_Search(int A[], int B[], int n) {
    int s1 = 0, d1 = n - 1, m1, s2 = 1, d2 = n - 1, m2;
    // 分别表示序列 A 和 B 的首位、末位和中位数
    while (s1 != d1 || s2 != d2) {
        m1 = (s1 + d1) / 2;
        m2 = (s2 + d2) / 2;
        if (A[m1] == B[m2])
            return A[m1];     // 满足条件 1
        if (A[m1] < B[m2]) {  // 满足条件 2
            if ((s1 + d1) % 2 == 0) {
                // 若元素个数为奇数
                s1 = m1;       // 舍弃 A 中间点以后的部分，且保留中间点
                d2 = m2;       // 舍弃 B 中间点以前的部分，且保留中间点
            } else {
                // 元素个数为偶数
                s1 = m1 + 1;   // 舍弃 A 中间点及中间点以后的部分
                d2 = m2;       // 舍弃 B 中间点以前部分，且保留中间点
            }
        } else {  // 满足条件 3
            if ((s1 + d1) % 2 == 0) {
                // 若元素个数为奇数
                d1 = m1;       // 舍弃 A 中间点以前的部分，且保留中间点
                s2 = m2;       // 舍弃 B 中间点以后的部分，且保留中间点
            } else {
                // 元素个数为偶数
                d1 = m1 + 1;   // 舍弃 A 中间点及中间点以前部分
                s2 = m2;       // 舍弃 B 中间点以后的部分，且保留中间点
            }
        }
    }
    return A[s1] < B[s2] ? A[s1] : B[s2];
}
```
3）时间复杂度 O(n)，空间复杂度 O(1)。
', 9, 'Mogullzr', '2026-02-02 13:34:52', 9, NULL, '2026-02-02 13:34:52', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1195', '3435');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3436, '2011年408考研真题第43题', '简单', '2011年408真题', '假定在一个 8 位字长的计算机中运行如下 C 程序段：

```c
unsigned int x=134;
unsigned int y=246;
int m=x;
int n=y;
unsigned int z1=x-y;
unsigned int z2=x+y;
int k1=m-n;
int k2=m+n;
```

若编译器编译时将 8 个 8 位寄存器 R1～R8 分别分配给变量 x、y、m、n、z1、z2、k1 和 k2。请回答下列问题。（提示：带符号整数用补码表示）
(1) 执行上述程序段后，寄存器 R1、R5 和 R6 的内容分别是什么（用十六进制表示）？
(2) 执行上述程序段后，变量 m 和 k1 的值分别是多少（用十进制表示）？
(3) 上述程序段涉及带符号整数加/减、无符号整数加/减运算，这四种运算能否利用同一个加法器及辅助电路实现？简述理由。
(4) 计算机内部如何判断带符号整数加/减运算的结果是否发生溢出？上述程序段中，哪些带符号整数运算语句的执行结果会发生溢出？
', '[]', '', '1）134 = 128 + 6 = 1000 0110B，所以 x 的机器数为 1000 0110B，故 R1 的内容为 86H。
246 = 255 - 9 = 1111 0110B，所以 y 的机器数为 1111 0110B。
x-y: 1000 0110 + 0000 1010 = (0)1001 0000，括弧中为加法器的进位，故 R5 的内容为 90H。
x+y: 1000 0110 + 1111 0110 = (1)0111 1100，括弧中为加法器的进位，故 R6 的内容为 7CH。
2）m 的机器数与 x 的机器数相同，皆为 86H=1000 0110B，解释为带符号整数 m（用补码
表示）时，其值为 -1111010B = -122。
m-n 的机器数与 x-y 的机器数相同，皆为 90H=1001 0000B，解释为带符号整数 k1（用
补码表示）时，其值为 -1110000B = -112。
3）能。n 位加法器实现的是模$2^{n}$无符号整数加法运算。
对于无符号整数 a 和 b，a + b 可以直接用加法器实现，而 a - b 可以通过 a 加上 b 的补数来实现，即 a - b 等价于 a 加上 -b 的补码，结果对 2 的 n 次方取模。因此，n 位无符号整数的加法和减法运算都可以通过 n 位加法器实现。
由于带符号整数使用补码表示，其加减法遵循的公式是：a + b 的补码等于 a 的补码加上 b 的补码，结果对 2 的 n 次方取模；同样，a - b 的补码等于 a 的补码加上 -b 的补码，结果也对 2 的 n 次方取模。因此，n 位带符号整数的加减运算也都可以通过 n 位加法器完成。
4）带符号整数加/减运算的溢出判断规则为：若加法器的两个输入端（加法）的符号相同，且不同于输出端（和）的符号，则结果溢出，或加法器完成加法操作时，若次高位的进位和最高位的进位不同，则结果溢出。
最后一条语句执行时会发生溢出。因为 10000110+11110110=(1)01111100，括弧中为加法器的进位，根据上述溢出判断规则，可知结果溢出。或因为 2 个带符号整数均为负数，它们相加之后，结果小于 8 位二进制所能表示的最小负数。
', 9, 'Mogullzr', '2026-02-02 13:34:53', 9, NULL, '2026-02-02 13:34:53', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '3436');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1098', '3436');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3437, '2011年408考研真题第44题', '简单', '2011年408真题', '某计算机存储器按字节编址，虚拟（逻辑）地址空间大小为 16MB，主存（物理）地址空间大小为 1MB，页面大小为 4KB：Cache 采用直接映射方式，共 8 行：主存与 Cache 之间交换的块大小为 32B。系统运行到某一时刻时，页表的部分内容和 Cache 的部分内容分别如题 44-a 图、题 44-b 图所示，图中页框号及标记字段的内容为十六进制形式。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/94821ce04b4d4a89b61718e38e61a539.svg)

请回答下列问题∶
(1) 虚拟地址共有几位，哪几位表示虚页号？物理地址共有几位，哪几位表示页框号（物理页号）？
(2) 使用物理地址访问 Cache 时，物理地址应划分成哪几个字段？要求说明每个字段的位数及在物理地址中的位置。
(3) 虚拟地址 001C60H 所在的页面是否在主存中？若在主存中，则该虚拟地址对应的物理地址是什么？访问该地址时是否 Cache 命中？要求说明理由。
(4) 假定为该机配置一个 4 路组相连的 TLB，该 TLB 共可存放 8 个页表项，若其当前内容（十六进制）如题 44-c 图所示，则此时虚拟地址 024BACH 所在的页面是否在主存中？要求说明理由。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/75bc8ffdc999430596a8c6904cb91d19.svg)

', '[]', '', '1）存储器按字节编址，虚拟地址空间大小为 16B=24B，故虚拟地址为 24 位；页面大小为$4KB = 2^{12}B$，故高 12 位为虚页号。主存地址空间大小为$1MB = 22B$，故物理地址为 20 位；由于页内地址为 12 位，故高 8 位为页框号。
2）由于 Cache 采用直接映射方式，所以物理地址各字段的划分如下。
| Tag 标记 | Cache 行号 | 块内偏移 |
块大小为 32B，所以块内偏移为 5 位；Cache 共 8 行，故 Cache 行号为 3 位，标记字段为 20-5-3=12 位。
3）虚拟地址 001C60H 的前 12 位为虚页号，即 001H，查看 001H 处的页表项，其对应的效位为 1，故虚拟地址 001C60H 所在的页面在主存中。页表 001H 处的页框号为 04H，与页内偏移（虚拟地址后 12 位）拼接成物理地址为 04C60H.物理地址 04C60H=00000100110001100000B，主存块只能映射到 Cache 的第 3 行（即第 011B 行），由于该行的有效位=1，标记（值为 105H) ≠ 04CH（物理地址高 12 位），故不命中。
4）由于 TLB 采用四路组相联，故 TLB 被分为 8/4=2 个组，因此虚页号中高 11 位为 TLB 标记、最低 1 位为 TLB 组号。虚拟地址 024BACH=000000100100101110101100B，虚页号为 000000100100B，TLB 标记为 00000010010B（即 012H)，TLB 组号为 0B，因此，该虚拟地址所对应物理页面只可能映射到 TLB 的第 0 组。组 0 中存在有效位=1、标记=012H 的项，因此访问 TLB 命中，即虚拟地址 024BACH 所在的页面在主存中。
', 9, 'Mogullzr', '2026-02-02 13:34:55', 9, NULL, '2026-02-02 13:34:55', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '3437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1137', '3437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1136', '3437');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3438, '2011年408考研真题第45题', '简单', '2011年408真题', '某银行提供 1 个服务窗口和 10 个顾客等待座位。顾客到达银行时，若有空座位，则到取号机领取一个号，等待叫号。取号机每次仅允许一位顾客使用。当营业员空闲时，通过叫号选取一位顾客，并为其服务。顾客和营业员的活动过程描述如下：

```c
cobegin
{
    process 顾客 i 
    {
        从取号机获得一个号码;
        等待叫号;
        获得服务;
    }

    process 营业员
    {
        while (TRUE) {
            叫号;
            为顾客服务;
        }
    }
}coend
```
请添加必要的信号量和 P、V（或`wait()`、`signal()`）操作实现上述过程的互斥和同步。要求写出完整的过程，说明信号量的含义并赋初值。
', '[]', '', '1）互斥资源：取号机（一次只一位顾客领号），因此设一个互斥信号量 mutex。
2）同步问题：顾客需要获得空座位等待叫号，当营业员空闲时，将选取一位顾客并为其服务。空座位的有、无影响等待顾客数量，顾客的有、无决定了营业员是否能开始服务，故分别设置信号量 empty 和 full 来实现这一同步关系。另外，顾客获得空座位后，需要等待叫号和被服务。这样，顾客与营业员就服务何时开始又构成了一个同步关系，定义信号量 service 来完成这一同步过程。

```c
semaphore empty   = 10;       // 空座位的数量
semaphore mutex   = 1;        // 互斥使用取号机
semaphore full    = 0;        // 已占座位的数量
semaphore service = 0;        // 等待叫号

process 顾客 i {
    P(empty);                 // 等空位
    P(mutex);                 // 申请使用取号机
    从取号机上取号;
    V(mutex);                 // 取号完毕
    V(fu11);                  // 通知营业员有新顾客
    P(service);               // 等待营业员叫号
    接受服务;
}

process 营业员 {
    while(True) (
        P(fu11);              // 没有顾客则休息
        叫号;
        V(empty);             // 离开座位
        V(service);           // 叫号
        为顾客服务;
    }
}
```

', 9, 'Mogullzr', '2026-02-02 13:34:55', 9, NULL, '2026-02-02 13:34:55', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1135', '3438');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3439, '2011年408考研真题第46题', '简单', '2011年408真题', '某文件系统为一级目录结构，文件的数据一次性写入磁盘，已写入的文件不可修改，但可多次创建新文件。请回答如下问题∶
(1) 在连续、链式、索引二种文件的数据块组织方式中。哪种更合适？要求说明理由。为定位文件数据块，需要在 FCB 中设计哪些相关描述字段？
(2) 为快速找到文件，对于 FCB，是集中存储好，还是与对应的文件数据块连续存储好？要求说明理由。
', '[]', '', '1）在磁盘中连续存放（采取连续结构），磁盘寻道时间更短，文件随机访问效率更高；在 FCB 中加入的字段为：<起始块号，块数> 或者 <起始块号，结束块号>。
2）将所有的 FCB 集中存放，文件数据集中存放。这样在随机查找文件名时，只需访问 FCB 对应的块，可减少磁头移动和磁盘 I/O 访问次数。
', 9, 'Mogullzr', '2026-02-02 13:34:56', 9, NULL, '2026-02-02 13:34:56', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3439');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3440, '2011年408考研真题第47题', '简单', '2011年408真题', '某主机的 MAC 地址为 00-15-C5-C1-5E-28，IP 地址为 10.2.128.100（私有地址）。题 47-a 图是网络拓扑，题 47-b 图是该主机进行 Web 请求的 1 个以太网数据帧前 80 个字节的十六进制及 ASCII 码内容。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/5630fec593be42d9933278c9f90a495a.svg)

请参考图中的数据回答以下问题。
(1) Web 服务器的 IP 地址是什么？该主机的默认网关的 MAC 地址是什么？
(2) 该主机在构造题 47-b 图的数据帧时，使用什么协议确定目的 MAC 地址？封装该协议请求报文的以太网帧的目的 MAC 地址是什么？
(3) 假设 HTTP/1.1 协议以持续的非流水线方式工作，一次请求 - 响应时间为 RTT，rfc.html 页面引用了 5 个 JPEG 小图像，则从发出题 47-b 图中的 Web 请求开始到浏览器收到全部内容为止，需要多少个 RTT？
(4) 该帧所封装的 IP 分组经过路由器 R 转发时，需修改 IP 分组头中的哪些字段？
注意：以太网数据帧结构和 IP 分组头结构分别如题 47-c 图、题 47-d 图所示。
', '[]', '', '1）以太网帧的数据部分是 IP 数据报，只要数出相应字段所在的字节即可。由图可知以太网帧头部有 6+6+2=14 字节，IP 数据报首部的目的 IP 地址字段前有 4×4=16 字节，从帧的第 1 字节开始数 14+16=30 字节，得目的 IP 地址 40.aa.62.20（十六进制），转换成十进制为 64.170.98.32。可知以太网帧的前 6 字节 00-21-27-21-51-ee 是的 MAC 地址，即为主机的默认网关 10.2.128.1 端口的 MAC 地址。
2）ARP 协议于解决 IP 地址到 MAC 地址的映射问题。主机的 ARP 进程在本以太网以广播的形式发送 ARP 请求分组，在以太网上广播时，以太网帧的目的地址为全 1，即 FF-FF-FF-FF-FF-FF。
3）HTTP/1.1 协议以持续的非流水线方式工作时，服务器在发送响应后仍然在一段时间内保持这段连接，客户机在收到前一个请求的响应后才能发出下一个请求。第一个 RTT 用于请求 Web 页面，客户机收到第一个请求的响应后（还有五个请求未发送），每访问一次对象就用去一个 RTT。故共需 1+5=6 个 RTT 后浏览器收到全部内容。
4）源 IP 地址 0a.02.80.64 改为 65.0c.7b.0f；生存时间（TTL）减 1；校验和字段重新计算。私有地址和 Internet 的主机通信时，须由NAT路由器进行网络地址转换，把 IP 数据报的源 IP 地址（本题为私有地址 10.2.128.100）转换为 NAT 路由器的一个全球 IP 地址（本题为 101.12.123.15）因此，源 IP 地址字段 0a 02 80 64 变为 65 0c 7b 0f。IP 数据报每经过一个路由器，生存时间 TTL 值就减 1，并重新计算首部校验和。若 IP 分组的长度超过输出链路的 MTU，则总长度字段、标志字段、片偏移字段也要发生变化。
注意：题 47-b 图中每行前 4bit 是数据帧的字节计数，不属于以太网数据帧的内容。
【评分说明】若考生解答时将所有 IP 头中的字段进行罗列，不给分，其他情况的情给分。
', 9, 'Mogullzr', '2026-02-02 13:34:57', 9, NULL, '2026-02-02 13:34:57', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1196', '3440');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1197', '3440');
