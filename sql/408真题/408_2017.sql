INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3676, '2017年408考研真题第1题', '简单', '2017年408真题', '下列函数的时间复杂度是（ ）。intfunc(intn){inti=0,sum=0;while(sum<n)sum+=++i;returni;}', '[''$O(log_{2}n)$'', ''$O(n^{1/2})$'', ''$O(n)$'', ''$O(nlog_{2}n)$'']', "['B']", 'B
sum += ++i;相当于++i; sum = sum + i;进行到第 k 趟循环，sum = (1+k)*k/2。显然需要进行$O(n^{1/2})$趟循环，因此这也是该函数的时间复杂度。', 9, 'Mogullzr', '2026-01-29 18:54:03', 9, NULL, '2026-01-29 18:54:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '3676');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3677, '2017年408考研真题第2题', '简单', '2017年408真题', '下列关于栈的叙述中，错误的是（ ）。I. 采用非递归方式重写递归程序时必须使用栈II. 函数调用时，系统要用栈保存必要信息III. 只要确定了入栈次序，即可确定出栈次序IV. 栈是一种受限的线性表，允许在其两端进行操作', '[''仅 I'', ''仅 I、II、III'', ''仅 I、III、IV'', ''仅 II、III、IV'']', "['C']", 'C
I 的反例：计算斐波拉契数列迭代实现只需要一个循环即可实现。
III 的反例：入栈序列为 1、2, 进行如下操作 PUSH、PUSH、POP、POP，出栈次序为 2、1；进行如下操作 PUSH、POP、PUSH、POP，出栈次序为 1、2。
IV，栈是一种受限的线性表，只允许在一端进行操作。
因此 II 正确。', 9, 'Mogullzr', '2026-01-29 18:54:03', 9, NULL, '2026-01-29 18:54:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '3677');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3677');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3678, '2017年408考研真题第3题', '简单', '2017年408真题', '适用于压缩存储稀疏矩阵的两种存储结构是（）', '[''三元组表和十字链表'', ''三元组表和邻接矩阵'', ''十字链表和二叉链表'', ''邻接矩阵和十字链表'']', "['A']", 'A
三元组表的结点存储了行 row、列 col、值 value 三种信息，是主要用来存储稀疏矩阵的一种
数据结构。十字链表将行单链表和列单链表结合起来存储稀疏矩阵。邻接矩阵空间复杂度达$O(n^{2})$,
不适用于存储稀疏矩阵。二叉链表又名左孩子右兄弟表示法，可用于表示树或森林。因此 A 正确。', 9, 'Mogullzr', '2026-01-29 18:54:03', 9, NULL, '2026-01-29 18:54:03', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1258', '3678');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3679, '2017年408考研真题第4题', '简单', '2017年408真题', '要使一颗非空二叉树的先序序列与中序序列相同，其所有非叶节点须满足的条件是（）', '[''只有左子树'', ''只有右子树'', ''结点的度均为 1'', ''结点的度均为 2'']', "['B']", 'B
先序序列是根左右，中序序列是左根右，递归进行。如果所有非叶结点只有右子树，先序序列和中序序列都是先父结点，然后右子树，递归进行，因此 B 正确。', 9, 'Mogullzr', '2026-01-29 18:54:04', 9, NULL, '2026-01-29 18:54:04', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1089', '3679');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3680, '2017年408考研真题第5题', '简单', '2017年408真题', '已知一颗二叉树的树形如下图所示，其后序序列为 e，a，c，b，d，g，f，树中与结点 a 同层的结点是（）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/fadb513079f344069f98151823c14d71.svg)
', '[''c'', ''d'', ''f'', ''g'']', "['B']", 'B
后序序列是先左子树，接着右子树，最后父结点，递归进行。根结点左子树的叶结点首先被访问，它是 e。接下来是它的父结点 a, 然后是 a 的父结点 c。接着访问根结点的右子树。它的叶结点 b 首先被访问，然后是 b 的父结点 d, 再者是 d 的父结点 g。最后是根结点 f。因此 d 与 a 同层，B 正确。', 9, 'Mogullzr', '2026-01-29 18:54:05', 9, NULL, '2026-01-29 18:54:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1089', '3680');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3681, '2017年408考研真题第6题', '简单', '2017年408真题', '已知字符集 {a, b, c, d, e, f, g, h}，若各字符的哈夫曼编码依次是 0100, 10, 0000, 0101, 001, 011, 11, 0001，则编码序列 0100011001001011110101 的译码结果是（ ）。', '[''a c g a b f h'', ''a d b a g b b'', ''a f b e a g d'', ''a f e e f g d'']', "['D']", 'D
哈夫曼编码是前缀编码，各个编码的前缀各不相同，因此直接拿编码序列与哈夫曼编码一一比对即可。序列可分割为 0100 011 001 001 011 11 0101，译码结果是 a f e e f g d，选项 D 正确。', 9, 'Mogullzr', '2026-01-29 18:54:05', 9, NULL, '2026-01-29 18:54:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1278', '3681');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3682, '2017年408考研真题第7题', '简单', '2017年408真题', '已知无向图 G 含有 16 条边，其中度为 4 的顶点个数为 3，度为 3 的顶点个数为 4，其他顶点的度均小于 3。图 G 所含的顶点个数至少是（）', '[''10'', ''11'', ''13'', ''15'']', "['B']", 'B
无向图边数的两倍等于各顶点度数的总和。由于其他顶点的度均小于 3，可以设它们的度都为 2，设它们的数量是 X，可列出方程 4x3 + 3x4 + 2x = 16x2，解得 x = 3。4 + 3 + 3 = 11，B 正确。', 9, 'Mogullzr', '2026-01-29 18:54:05', 9, NULL, '2026-01-29 18:54:05', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1093', '3682');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3683, '2017年408考研真题第8题', '简单', '2017年408真题', '下列二叉树中，可能成为折半查找判定树（不含外部结点）的是（）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/f7a9519f76124af0af04d1de22d0da25.svg)
', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['A']", 'A
折半查找判定树实际上是一棵二叉排序树，它的中序序列是一个有序序列。可以在树结点上依次填上相应的元素，判断哪颗树符合折半查找的规则。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/d16f35e8bc474cf8986a8990f5dc9ae2.svg)
折半查找树由于其中序遍历是一个升序序列，因此相比于在以往的序列中进行二分查找，折半查找二叉树的优点在于不用自己去找中点，而是直接将要查找的关键字与根节点相比，小的话再和根节点的左子节点（又是相应的左子树中点，更加方便）比较，大的话则是和根节点的右子节点比较。而对于这道题的解题思路就在于向上或向下取整的问题，也就是说如果升序序列是偶数个，那么中点应该偏左多右少还是左少右多。但是很显然应该进行一个统一，像 B 和 C 选项中间的对称部分明显就是选择了不同的策略。D 则由根节点左子树 4 个节点而点右子树 5 个节点可以确定用的是向下取整策略，但是我们再看它的左子节点在左子树中对应的中点左边 2 个数，右边一个数，明显是向上取整策略，策略没有统一，所以是错的。', 9, 'Mogullzr', '2026-01-29 18:54:06', 9, NULL, '2026-01-29 18:54:06', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1174', '3683');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3684, '2017年408考研真题第9题', '简单', '2017年408真题', '下列应用中，适合使用 B+ 树的是（）', '[''编译器中的词法分析'', ''关系数据库系统中的索引'', ''网络中的路由表快速查找'', ''操作系统的磁盘空闲块管理'']', "['B']", 'B
B+ 树是应文件系统所需而产生的 B 树 的变形，前者比后者更加适用于实际应用中的操作系统的文件索引和数据库索引，因为前者磁盘读写代价更低，查询效率更加稳定。编译器中的词法分析使用有穷自动机和语法树。网络中的路由表快速查找主要靠高速缓存、路由表压缩技术和快速查找算法。系统一 般使用空闲空间链表管理磁盘空闲块。所以 B 正确。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1263', '3684');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3685, '2017年408考研真题第10题', '简单', '2017年408真题', '在内部排序时，若选择了归并排序而没有选择插入排序，则可能的理由是（）', '[''仅 2'', ''仅 3'', ''仅 1、2'', ''仅 1、3'']', "['B']", 'B
参考排序算法复杂度，归并排序代码比选择插入排序更复杂，前者空间复杂度是$O(n)$, 后者是$O(1)$。但是前者时间复杂度是$O(nlogn)$, 后者是$O(n^{2})$。所以 B 正确。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3685');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1195', '3685');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1279', '3685');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3686, '2017年408考研真题第11题', '简单', '2017年408真题', '下列排序方法中，若将顺序存储更换为链式存储，则算法的时间效率会降低的是（）', '[''仅 1、2'', ''仅 2、3'', ''仅 3、4'', ''仅 4、5'']', "['D']", 'D
插入排序、选择排序、冒泡原本时间复杂度是$O(n^{2})$，更换为链式存储后的时间复杂度还是$O(n^{2})$。希尔排序和堆排序都利用了顺序存储的随机访问特性，而链式存储不支持这种性质，所以时间复杂度会增加，因此选 D。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3686');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3687, '2017年408考研真题第12题', '简单', '2017年408真题', '假定计算机 M1 和 M2 具有相同的指令集体系结构（ISA），主频分别为 1.5GHz 和 1.2GHz。在 M1 和 M2 上运行某基准程序 P，平均 CPI 分别为 2 和 1，则程序 P 在 M1 和 M2 上运行时间的比值是（ ）。', '[''0.4'', ''0.625'', ''1.6'', ''2.5'']', "['C']", 'C
运行时间 = 指令数 x CPI / 主频。M1 的时间 = 指令数 x 2 / 1.5，M2 的时间 = 指令数 x 1 / 1.2，两者之比为 (2/1.5):(1/1.2) = 1.6。故选 C。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1280', '3687');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3688, '2017年408考研真题第13题', '简单', '2017年408真题', '某计算机主存按字节编址，由 4 个 64M×8 位的 DRAM 芯片采用交叉编址方式构成，并与宽度为 32 位的存储器总线相连，主存每次最多读写 32 位数据。若 double 型变量 x 的主存地址为 804001AH，则读取 x 需要的存储周期数是（ ）。', '[''1'', ''2'', ''3'', ''4'']', "['C']", 'C
由 4 个 DRAM 芯片采用交叉编址方式构成主存可知主存地址最低二位表示该字节存储的芯片编号。double 型变量占 64 位，8 个字节。它的主存地址 804001AH 最低二位是 10，说明它从编号为 2 的 芯片开始存储（编号从 0 开始）。一个存储周期可以对所有芯片各读取一个字节，因此需要 3 轮，故选 C。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1102', '3688');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3689, '2017年408考研真题第14题', '简单', '2017年408真题', '某 C 语言程序段如下：for(i=0;i<=9;i++){temp=1;for(j=0;j<=i;j++){temp*=a[j];}sum+=temp;}下列关于数组 a 的访问局部性的描述中，正确的是（ ）。', '[''时间局部性和空间局部性皆有'', ''无时间局部性，有空间局部性'', ''有时间局部性，无空间局部性'', ''时间局部性和空间局部性皆无'']', "['A']", 'A
时间局部性是一旦一条指令被执行，则在不久的将来它可能再次被执行。空间局部性是一旦一个存储单元被访问，那么它附近的存储单元也很快被访问。显然，这里的循环指令本身具有时间局部性，它对数组 a 的访问具有空间局部性，故选 A。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3689');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3690, '2017年408考研真题第15题', '简单', '2017年408真题', '下列寻址方式中，最适合按下标顺序访问一维数组元素的是（ ）。', '[''相对寻址'', ''寄存器寻址'', ''直接寻址'', ''变址寻址'']', "['D']", 'D
在变址寻址时，将计算机指令中的地址与变址寄存器中的地址相加，得到有效地址，指令提供数组首地址，由变址寄存器来定位数据中的各元素。所以它最适合按下标顺序访问一维数组元素，故选 D。相对寻址以 PC 为基地址，以指令中的地址为偏移量确定有效地址。寄存器寻址则是在指令中指出需要使用的寄存器。直接寻址是在指令的地址字段直接指出操作数的有效地址。', 9, 'Mogullzr', '2026-01-29 18:54:08', 9, NULL, '2026-01-29 18:54:08', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1103', '3690');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3691, '2017年408考研真题第16题', '简单', '2017年408真题', '某计算机按字节编址，指令字长固定且只有两种指令格式，其中三地址指令 29 条，二地址指令 107 条，每个地址字段为 6 位，则指令字长至少应该是（ ）。', '[''24 位'', ''26 位'', ''28 位'', ''32 位'']', "['A']", 'A
三地址指令有 29 条，所以它的操作码至少为 5 位。以 5 位进行计算，它剩余 32-29=3 种操作码给二地址。而二地址另外多了 6 位给操作码，因此它的数量最大达 3x64=192。所以指令字长最少为 23 位，因为计算机按字节编址，需要是 8 的倍数，所以指令字长至少应该是 24 位，故选 A。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1281', '3691');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3692, '2017年408考研真题第17题', '简单', '2017年408真题', '下列关于超标量流水线特性的叙述中，正确的是（ ）。Ⅰ. 能缩短流水线功能段的处理时间Ⅱ. 能在一个时钟周期内同时发射多条指令Ⅲ. 能结合动态调度技术提高指令执行并行性', '[''仅Ⅱ'', ''仅Ⅰ、Ⅲ'', ''仅Ⅱ、Ⅲ'', ''Ⅰ、Ⅱ和Ⅲ'']', "['C']", 'C
超标量流水线是指在 CPU 中有一条以上的流水线，并且每个时钟周期内可以完成一条以上的指令，其实质是以空间换时间。I 错误，它不影响流水线功能段的处理时间；II、III 正确。故选 C。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1282', '3692');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3693, '2017年408考研真题第18题', '简单', '2017年408真题', '下列关于主存储器（MM）和控制存储器（CS）的叙述中，错误的是（ ）。', '[''MM 在 CPU 外，CS 在 CPU 内'', ''MM 按地址访问，CS 按内容访问'', ''MM 存储指令和数据，CS 存储微指令'', ''MM 用 RAM 和 ROM 实现，CS 用 ROM 实现'']', "['B']", 'B
主存储器就是我们通常说的主存，在 CPU 外，存储指令和数据，由 RAM 和 ROM 实现。控制存储器用来存放实现指令系统的所有微指令，是一种只读型存储器，机器运行时只读不写，在 CPU 的控制器内。CS 按照微指令的地址访问，所以 B 错误。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3693');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3694, '2017年408考研真题第19题', '简单', '2017年408真题', '下列关于指令流水线数据通路的叙述中，错误的是（ ）。', '[''包含生成控制信号的控制部件'', ''包含算术逻辑运算部件（ALU）'', ''包含通用寄存器组和取指部件'', ''由组合逻辑电路和时序逻辑电路组合而成'']', "['A']", 'A
五阶段流水线可分为取指（IF）、译码／取数（ID）、执行（EXC）、存储器读（MEM）、写回（Write Back）。数字系统中，各个子系统通过数据总线连接形成的数据传送路径称为数据通路，包括程序计数器、算术逻辑运算部件、通用寄存器组、取指部件等，不包括控制部件，故选 A。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1106', '3694');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1227', '3694');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3695, '2017年408考研真题第20题', '简单', '2017年408真题', '下列关于多总线结构的叙述中，错误的是（ ）。', '[''靠近 CPU 的总线速度较快'', ''存储器总线可支持突发传送方式'', ''总线之间须通过桥接器相连'', ''PCI-Express×16 采用并行传输方式'']', "['D']", 'D
多总线结构用速率高的总线连接高速设备用速率低的总线连接低速设备。一般来说，CPU 是计算机的核心，是计算机中速度最快的设备之一，所以 A 正确。突发传送方式把多个数据单元作为一个独立传输处理，从而最大化设备的吞吐量。现实中一般用支待突发传送方式的总线提高存储器的读写效率，B 正确。各总线通过桥接器相连，后者起流量交换作用。PCI-Express 总线都采用串行数据包传输数据，所以选 D。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1267', '3695');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1152', '3695');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3696, '2017年408考研真题第21题', '简单', '2017年408真题', 'I/O 指令实现的数据传送通常发生在（ ）。', '[''I/O 设备和 I/O 端口之间'', ''通用寄存器和 I/O 设备之间'', ''I/O 端口和 I/O 端口之间'', ''通用寄存器和 I/O 端口之间'']', "['D']", 'D
I/O 端口是 CPU 与设备之间的交接面。由于主机和 I/0 设备的工作方式和工作速度有很大差异，I/O 端口就应运而生。在执行一条指令时，CPU 使用地址总线选择所请求的 I/O 端口，使用数据总线在 CPU 寄存器和端口之间传输数据。所以选 D。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1233', '3696');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3697, '2017年408考研真题第22题', '简单', '2017年408真题', '下列关于多重中断系统的叙述中，错误的是（ ）。', '[''在一条指令执行结束时响应中断'', ''中断处理期间 CPU 处于关中断状态'', ''中断请求的产生与当前指令的执行无关'', ''CPU 通过采样中断请求信号检测中断请求'']', "['B']", 'B
多重中断系统在保护被中断进程现场时关中断，执行中断处理程序时开中断，B 错误。CPU 一般在一条指令执行结束的阶段采样中断请求信号，查看是否存在中断请求，然后决定是否响应中断，A、D 正确。中断请求一般来自 CPU 以外的事件，异常一般发生在 CPU 内部，C 正确。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1283', '3697');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3698, '2017年408考研真题第23题', '简单', '2017年408真题', '假设 4 个作业到达系统的时刻和运行时间如下表所示。系统在 t=2 时开始作业调度。若分别采用先来先服务和短作业优先调度算法，则选中的作业分别是（ ）。', '[''$J_{2}$、$J_{3}$'', ''$J_{1}$、$J_{4}$'', ''$J_{2}$、$J_{4}$'', ''$J_{1}$、$J_{3}$'']', "['D']", 'D
先来先服务是作业来得越早，优先级越高，因此会选择$J_{1}$。最短作业优先是作业运行时间越短，优先级越高，因此会选择$J_{3}$。所以 D 正确。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3698');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3699, '2017年408考研真题第24题', '简单', '2017年408真题', '执行系统调用的过程包括如下主要操作：①返回用户态         ②执行陷入（trap）指令③传递系统调用参数   ④执行相应的服务程序正确的执行顺序是（ ）。', '[''②→③→①→④'', ''②→④→③→①'', ''③→②→④→①'', ''③→④→②→①'']', "['C']", 'C
执行系统调用的过程是这样的：正在运行的进程先传递系统调用参数，然后由陷入指令负责将用户态转化为内核态，并将返回地址压入堆栈以备后用，接下来 CPU 执行相应的内核态服务程序，最后返回用户态。所以 C 正确。', 9, 'Mogullzr', '2026-01-29 18:54:09', 9, NULL, '2026-01-29 18:54:09', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1205', '3699');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3700, '2017年408考研真题第25题', '简单', '2017年408真题', '某计算机按字节编址，其动态分区内存管理采用最佳适应算法，每次分配和回收内存后都对空闲分区链重新排序。当前空闲分区信息如下表所示。回收起始地址为 60K、大小为 140KB 的分区后，系统中空闲分区的数量、空闲分区链第一个分区的起始地址和大小分别是（ ）。', '[''3、20K、380KB'', ''3、500K、80KB'', ''4、20K、180KB'', ''4、500K、80KB'']', "['B']", 'B
参考动态内存内存回收过程，回收起始地址为 60K、大小为 140KB 的分区时，它与表中第一个分区和第四个分区合并，成为起始地址为 20K、大小为 380KB 的分区，剩余 3 个空闲分区。在回收内存后，算法会对空闲分区链按分区大小由小到大进行排序，表中的第二个分区排第一。所以选择 B。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1156', '3700');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3701, '2017年408考研真题第26题', '简单', '2017年408真题', '某文件系统的簇和磁盘扇区大小分别为 1KB 和 512B。若一个文件的大小为 1026B，则系统分配给该文件的磁盘空间大小是（ ）。', '[''1026B'', ''1536B'', ''1538B'', ''2048B'']', "['D']", 'D
在文件系统中，磁盘空间以簇为单位分配，每个簇的大小为 1KB（1024B）。而磁盘扇区大小为 512B，但分配时只考虑簇的整数倍。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1170', '3701');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3702, '2017年408考研真题第27题', '简单', '2017年408真题', '下列有关基于时间片的进程调度的叙述中，错误的是（ ）。', '[''时间片越短，进程切换的次数越多，系统开销也越大'', ''当前进程的时间片用完后，该进程状态由执行态变为阻塞态'', ''时钟中断发生后，系统会修改当前进程在时间片内的剩余时间'', ''影响时间片大小的主要因素包括响应时间、系统开销和进程数量等'']', "['B']", 'B
进程切换带来系统开销，切换次数越多，开销越大，A 正确。当前进程的时间片用完后，它的状态由执行态变为就绪态，B 错误。时钟中断是系统中特定的周期性时钟节拍。操作系统通过它来确定时间间隔，实现时间的延时和任务的超时，C 正确。现代操作系统为了保证性能最优，通常根据响应时间、系统开销、进程数量、进程运行时间、进程切换开销等因素确定 时间片大小，D 正确。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3702');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1284', '3702');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3703, '2017年408考研真题第28题', '简单', '2017年408真题', '与单道程序系统相比，多道程序系统的优点是（  ）Ⅰ.CPU 利用率高Ⅱ.系统开销小Ⅲ.系统吞吐量大Ⅳ.I/O 设备利用率高', '[''仅Ⅰ、Ⅲ'', ''仅Ⅰ、Ⅳ'', ''仅Ⅱ\\xa0、Ⅲ'', ''仅Ⅰ、Ⅲ、Ⅳ'']', "['D']", 'D
多道程序系统通过组织作业（编码或数据）使 CPU 总有一个作业可执行，从而提高了 CPU 的利用率、系统吞吐量和 I/O 设备利用率，I、III、IV 是优点。但系统要付出额外的开销来组织作业和切换作业，II 错误。所以选 D。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1110', '3703');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3704, '2017年408考研真题第29题', '简单', '2017年408真题', '下列选项中，磁盘逻辑格式化程序所做的工作是（ ）。Ⅰ. 对磁盘进行分区Ⅱ. 建立文件系统的根目录Ⅲ. 确定磁盘扇区校验码所占位数Ⅳ. 对保存空闲磁盘块信息的数据结构进行初始化', '[''仅Ⅱ'', ''仅Ⅱ、Ⅳ'', ''仅Ⅲ、Ⅳ'', ''仅Ⅰ、Ⅱ、Ⅳ'']', "['B']", 'B
一个新的磁盘是一个空白盘，必须分成扇区以便磁盘控制器能读和写，这个过程称为物理格式化。低级格式化为磁盘的每个扇区采用特别的数据结构，包括校验码，III 错误。为了使用磁盘存储文件，操作系统还需要将其数据结构记录在磁盘上。这分为两步。第一步是将磁盘分为由一个或多个柱面组成的分区，每个分区可以作为一个独立的磁盘，I 错误。在分区之后，第二步是逻辑格式化（创建文件系统）。在这一步，操作系统将初始的文件系统数据结构存储到磁盘上。这些数据结构包括空闲和已分配的空间和一个初始 为空的目录，II、IV 正确。所以选 B。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1285', '3704');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3705, '2017年408考研真题第30题', '简单', '2017年408真题', '某文件系统中，针对每个文件，用户类别分为 4 类：安全管理员、文件主、文件主的伙伴、其他用户；访问权限分为 5 种：完全控制、执行、修改、读取、写入。若文件控制块中用二进制位串表示文件权限，为表示不同类别用户对一个文件的访问权限，则描述文件权限的位数至少应为（ ）。', '[''5'', ''9'', ''12'', ''20'']', "['D']", 'D
可以把用户访问权限抽象为一个矩阵，行代表用户，列代表访问权限。这个矩阵有 4 行 5 列，1 代表 true，0 代表 false，所以需要 20 位，选 D。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1117', '3705');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3706, '2017年408考研真题第31题', '简单', '2017年408真题', '若文件 f1 的硬链接为 f2，两个进程分别打开 f1 和 f2，获得对应的文件描述符为 fd1 和 fd2，则下列叙述中，正确的是（ ）。Ⅰ. f1 和 f2 的读写指针位置保持相同Ⅱ. f1 和 f2 共享同一个内存索引结点Ⅲ. fd1 和 fd2 分别指向各自的用户打开文件表中的一项', '[''仅Ⅲ'', ''仅Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅱ'', ''Ⅰ、Ⅱ和Ⅲ'']', "['B']", 'B
背景知识：硬链接：f1 和 f2 是同一个 inode 的两个目录项（即它们指向同一个文件的 inode），共享相同的索引节点（inode）和数据块。打开文件的过程：
每个进程在打开文件时会创建：一个对应的用户级打开文件表项（即fd指向它）用户打开文件表项再指向系统级打开文件表项（Open File Table）系统级表项包含文件的读写偏移量（读写指针）和对 inode 的引用分析选项：Ⅰ. f1 和 f2 的读写指针位置保持相同❌错误。
虽然 f1 和 f2 是同一个文件（硬链接），但两个进程分别打开它们时，会在系统级打开文件表中生成两个不同的表项，每个表项维护独立的文件偏移量（读写指针），所以互不影响。Ⅱ. f1 和 f2 共享同一个内存索引结点✅正确。
硬链接的本质就是多个目录项共享同一个 inode。即使路径不同（f1 和 f2），它们最终指向的是同一个 inode。Ⅲ. fd1 和 fd2 分别指向各自的用户打开文件表中的一项✅正确。
每个进程维护自己的文件描述符表（用户级文件表），fd1和fd2分别是两个不同进程打开文件得到的描述符，它们自然是指向各自进程的用户打开文件表项。Ⅱ 和 Ⅲ 正确，因此，正确答案为 B。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1117', '3706');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1118', '3706');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3707, '2017年408考研真题第32题', '简单', '2017年408真题', '系统将数据从磁盘读到内存的过程包括以下操作：① DMA 控制器发出中断请求② 初始化 DMA 控制器并启动磁盘③ 从磁盘传输一块数据到内存缓冲区④ 执行“DMA 结束”中断服务程序正确的执行顺序是（ ）。', '[''③→①→②→④'', ''②→③→①→④'', ''②→①→③→④'', ''①→②→④→③'']', "['B']", 'B
在开始DMA传输时，主机向内存写入 DMA 命令块，向 DMA 控制器写入该命令块的地址，启动 I/O 设备。然后，CPU 继续其他工作，DMA 控制器则继续下去直接操作内存总线，将地址放到总线上开始传输。当整个传输完成后，DMA 控制器中断 CPU。因此执行顺序是 ②→③→①→④ 选 B。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '3707');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3708, '2017年408考研真题第33题', '简单', '2017年408真题', '假设 OSI 参考模型的应用层欲发送 400B 的数据（无拆分），除物理层和应用层之外，其他各层在封装 PDU 时均引入 20B 的额外开销，则应用层数据传输效率约为（ ）。', '[''80%'', ''83%'', ''87%'', ''91%'']', "['A']", 'A
OSI 参考模型共 7 层，除去物理层和应用层，剩五层。它们会向PDU引入 20Bx5 = 100B 的额外开销。应用层是最顶层，所以它的数据传输效率为 400B/500B=80%，选 A。', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1120', '3708');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3709, '2017年408考研真题第34题', '简单', '2017年408真题', '若信道在无噪声情况下的极限数据传输速率不小于信噪比为 30dB 条件下的极限数据传输速率，则信号状态数至少是（ ）。', '[''4'', ''8'', ''16'', ''32'']', "['D']", 'D
可用奈奎斯特定理计算无噪声情况下的极限数据传输速率，用香农定理计算有噪信道极限数据传输速率。$2Wlog_{2}N ≥ Wlog_{2}(1 + S/N)$，$W$是信道带宽，$N$是信号状态数，$S/N$是信噪比，将数据代入计算可得$N ≥ 32$，选 D。（注意 分贝数=$10log_{10}(S/N)$。）', 9, 'Mogullzr', '2026-01-29 18:54:10', 9, NULL, '2026-01-29 18:54:10', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1286', '3709');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3710, '2017年408考研真题第35题', '简单', '2017年408真题', '在下图所示的网络中，若主机 H 发送一个封装访问 Internet 的 IP 分组的 IEEE 802.11 数据帧 F，则帧 F 的地址 1、地址 2 和地址 3 分别是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/418d3f9e305d4b5c941e63616aa59b59.svg)
', '[''00-12-34-56-78-9a, 00-12-34-56-78-9b, 00-12-34-56-78-9c'', ''00-12-34-56-78-9b, 00-12-34-56-78-9a, 00-12-34-56-78-9c'', ''00-12-34-56-78-9b, 00-12-34-56-78-9c, 00-12-34-56-78-9a'', ''00-12-34-56-78-9a, 00-12-34-56-78-9c, 00-12-34-56-78-9b'']', "['B']", 'B
IEEE 802.11数据帧有四种子类型，分别是 IBSS、From AP、ToAP、WDS。这里的数据帧 F 是从笔记本电脑发送往访问接入点（AP），所以属于 To AP 子类型。这种帧地址 l 是 RA (BSSID)，地址 2 是 SA，地址 3 是 DA。RA 是 Receiver Address 的缩写，BSSID 是 basic service set identifier 的缩写，SA 是 source address 的缩写，DA 是 destination address 的缩写。因此地址 1 是 AP 的 MAC，地址 2 是 H 的 MAC，地址 3 是 R 的 MAC，选 B。', 9, 'Mogullzr', '2026-01-29 18:54:12', 9, NULL, '2026-01-29 18:54:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1287', '3710');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3711, '2017年408考研真题第36题', '简单', '2017年408真题', '下列 IP 地址中，只能作为 IP 分组的源 IP 地址但不能作为目的 IP 地址的是（ ）。', '[''0.0.0.0'', ''127.0.0.1'', ''200.10.10.3'', ''255.255.255.255'']', "['A']", 'A
0.0.0.0/32 可以作为本主机在本网络上的源地址。127.0.0.1 是 loopback 地址，以它为目的 IP 地址的数据将被立即返回到本机。200.10.10.3 是 C 类 IP 地址。255.255.255.255 是广播地址。', 9, 'Mogullzr', '2026-01-29 18:54:12', 9, NULL, '2026-01-29 18:54:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1211', '3711');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3712, '2017年408考研真题第37题', '简单', '2017年408真题', '直接封装 RIP、OSPF、BGP 报文的协议分别是（ ）。', '[''TCP、UDP、IP'', ''TCP、IP、UDP'', ''UDP、TCP、IP'', ''UDP、IP、TCP'']', "['D']", 'D
参考路由协议对比，RIP 是一种分布式的基于距离向量的路由选择协议，通过广播 UDP 报文来交换路由信息。OSPF 是一个内部网关协议，不使用传输协议，如 UDP 或 TCP，而是直接用 IP 包封装它的数据。BGP 是一个外部网关协议，用 TCP 封装它的数据。因此选 D。', 9, 'Mogullzr', '2026-01-29 18:54:12', 9, NULL, '2026-01-29 18:54:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1161', '3712');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3713, '2017年408考研真题第38题', '简单', '2017年408真题', '若将网络 21.3.0.0/16 划分为 128 个规模相同的子网，则每个子网可分配的最大 IP 地址个数是（ ）。', '[''254'', ''256'', ''510'', ''512'']', "['C']", 'C
这个网络有 16 位的主机号，平均分成 128 个规模相同的子网，每个子网有 7 位的子网号，9 位的主机号。除去一个网络地址和广播地址，可分配的最大 IP 地址个数是 29-2=512-2=510，故选 C。', 9, 'Mogullzr', '2026-01-29 18:54:12', 9, NULL, '2026-01-29 18:54:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1211', '3713');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3714, '2017年408考研真题第39题', '简单', '2017年408真题', '若甲向乙发起一个 TCP 连接，最大段长 MSS=1KB，RTT=5ms，乙开辟的接收缓存为 64KB，则甲从连接建立成功至发送窗口达到 32KB，需经过的时间至少是（ ）。', '[''25 ms'', ''30 ms'', ''160 ms'', ''165 ms'']', "['A']", 'A
按照慢开始算法，发送窗口 = min{ 拥塞窗口，接收窗口｝，初始的拥塞窗口为最大报文段长度 1KB 海经过一个 RTT，拥塞窗口翻倍，因此需至少经过 5 个 RTT，发送窗口才能达到 32KB，所以选 A。这里假定乙能及时处理接收到的数据，空闲的接收缓存 ≥ 32KB。', 9, 'Mogullzr', '2026-01-29 18:54:12', 9, NULL, '2026-01-29 18:54:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1127', '3714');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3715, '2017年408考研真题第40题', '简单', '2017年408真题', '下列关于 FTP 协议的叙述中，错误的是（ ）。', '[''数据连接在每次数据传输完毕后就关闭'', ''控制连接在整个会话期间保持打开状态'', ''服务器与客户端的 TCP 20 端口建立数据连接'', ''客户端与服务器的 TCP 21 端口建立控制连接'']', "['C']", 'C
FTP协议使用控制连接和数据连接，控制连接存在于整个 FTP 会话过程中，数据连接在每次文件传输时才建立，传输结束就关闭，A 和 B 是正确的。默认情况下 FTP 协议使用 TCP 20 端口进行数据连接，TCP 21 端口进行控制连接。但是是否使用 TCP 20 端口建立数据连接与传输模式有关，主动方式使用 TCP20 端口，被动方式由服务器和客户端自行协商决定，C 错，D 对。所以选 C。', 9, 'Mogullzr', '2026-01-29 18:54:12', 9, NULL, '2026-01-29 18:54:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1128', '3715');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3716, '2017年408考研真题第41题', '简单', '2017年408真题', '请设计一个算法，将给定的表达式树（二叉树）转换为等价的中缀表达式（通过括号反映操作符的计算次序）并输出。例如，当下列两棵表达式树作为算法输入时：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/2966bfb5fcf24775b0c8c4406f696daa.svg)
输出的中缀表达式分别为(a+b)*(c*(−d))和(a*b)+(−(c−d))。二叉树结点的定义如下：typedefstructnode{chardata[10];// 存储操作数或操作符structnode*left,*right;}BTree;要求：(1) 给出算法的基本设计思想。(2) 根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释。', '[]', '', '1）算法的基本设计思想
表达式树的中序序列加上必要的括号即为等价的中缀表达式。可以基于二叉树的中序遍历策略得到所需的表达式。（3 分）
表达式树中分支结点所对应的子表达式的计算次序，由该分支结点所处的位置决定。为得到正确的中缀表达式，需要在生成遍历序列的同时，在适当位置增加必要的括号。显然，表达式的最外层（对应根结点）及操作数（对应叶结点）不需要添加括号。（2 分）
2）算法实现（10 分）
voidpreorder(node*root,intdepth){if(!root){return;}boolisRoot=(depth==1);boolisLeaf=(!root->left&&!root->right);if(!isRoot&&!isLeaf){printf("(");}preorder(root->left,depth+1);printf("%s",root->data);preorder(root->right,depth+1);if(!isRoot&&!isLeaf){printf(")");}}voidsolve(node*root){preorder(root,1);}
将二叉树的中序遍历递归算法稍加改造即可得本题答案。除根结点和叶结点外，遍历到其他结点时在遍历其左子树之前加上左括号，在遍历完右子树后加上右括号。
【评分说明】①若考生设计的算法满足题目的功能要求，则（1)、(2) 根据所实现算法的策略及输出结果给分，评分标准见下表。
| 分数 | 备注                                                       |
|:--:|:--------------------------------------------------------:|
| 15 | 采用中序遍历算法且正确，括号嵌套正确，层数适当                                  |
| 14 | 采用中序遍历算法且正确，括号嵌套正确，但括号嵌套层数过多。例如，表达式最外层加上括号，或操作数加括号，如 (a) |
| 11 | 采用中序遍历算法，但括号嵌套层数不完全正确。例如，左右括号数量不匹配                       |
| 9  | 采用中序遍历算法，但没有考虑括号                                         |
| ≤7 | 其他                                                       |

②若考生采用其他方法得到正确结果，可参照①的评分标准给分。
③如果程序中使用了求结点深度等辅助函数，但没有给出相应的实现过程，只要考生进
行了必要的说明，可不扣分。
④若在算法的基本设计思想描述中因文字表达没有清晰反映出算法思路，但在算法实现
中能够表达出算法思想且正确的，则可参照①的标准给分。
⑤若算法的基本设计思想描述或算法实现中部分正确，可参照①中各种情况的相应给分标准酌情给分。
', 9, 'Mogullzr', '2026-01-29 18:54:14', 9, NULL, '2026-01-29 18:54:14', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1243', '3716');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3717, '2017年408考研真题第42题', '简单', '2017年408真题', '使用 Prim（普里姆）算法求带权连通图的最小（代价）生成树（MST）。请回答下列问题。(1) 对下列图 G，从顶点 A 开始求 G 的 MST，依次给出按算法选出的边。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/3ff1ce62cc0e45cc857b31be9b0d8d14.svg)
(2) 图 G 的 MST 是唯一的吗？(3) 对任意的带权连通图，满足什么条件时，其 MST 是唯一的？', '[]', '', '1）Prim 算法属于贪心策略。算法从一个任意的顶点开始，一直长大到覆盖图中所有顶点为止。算法每一步在连接树集合 S 中顶点和其他顶点的边中，选择一条使得树的总权重增加最小的边加入集合 S。当算法终止时，S 就是最小生成树。
S 中顶点为 A，候选边为 (A,D),(A,B),(A,E)，选择 (A,D) 加入 S。S 中顶点为 A,D，候选边为 (A,B),(A,E),(D,E),(C,D)，选择 (D,E) 加入 S。S 中顶点为 A,D,E，候选边为 (A,B),(C,D),(C,E)，选择 (C,E) 加入 S。S 中顶点为 A,D,E,C，候选边为 (A,B),(B,C)，选择 (B,C) 加入 S。S 就是最小生成树。
依次选出的边为 (A,D),(D,E),(C,E),(B,C)（4 分）
【评分说明】每正确选对一条边且次序正确，给 1 分。若考生选择的边正确，但次序不完
全正确，酌情给分。
2）图 G 的 MST 是唯一的。（2 分）第一小题的最小生成树包括了图中权值最小的四条边，其他边都比这四条边大，所以此图的 MST 唯一。
3）当带权连通图的任意一个环中所包含的边的权值均不相同时，其 MST 是唯一的。（2 分）此题不要求回答充分必要条件，所以回答一个限制边权值的充分条件即可。
【评分说明】①若考生答案中给出的是其他充分条件，例如“带权连通图的所有边的权值均不相同”，同样给分。
②若考生给出的充分条件对图的顶点数和边数做了某些限制，例如，限制了图中顶点的个数（顶点个数少于 3 个）、限制了图的形状（图中没有环）等，则最高给 1 分。
③答案部分正确，酌情给分。
', 9, 'Mogullzr', '2026-01-29 18:54:15', 9, NULL, '2026-01-29 18:54:15', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1200', '3717');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3718, '2017年408考研真题第43题', '简单', '2017年408真题', '已知$f(n) = \\sum_{i=0}^{n} 2^{i} = 2^{n+1} - 1 = 11 ⋯ 1$B，计算$f(n)$的 C 语言函数 f1 如下：intf1(unsignedn){intsum=1,power=1;for(unsignedi=0;i<=n-1;i++){power*=2;sum+=power;}returnsum;}将 f1 中的 int 都改为 float，可得到计算 f(n) 的另一个函数 f2。假设 unsigned 和 int 型数据都占 32 位，float 采用 IEEE754 单精度标准。请回答下列问题。(1) 当 n=0 时，f1 会出现死循环，为什么？若将 f1 中的变量 i 和 n 都定义为 int 型，则 f1 是否还会出现死循环？为什么？(2) f1(23) 和 f2(23) 的返回值是否相等？机器数各是什么（用十六进制表示）？(3) f1(24) 和 f2(24) 的返回值分别为 33554431 和 33554432.0，为什么不相等？(4) f(31)=$2^{32} - 1$，而 f1(31) 的返回值却为 -1，为什么？若使 f1(n) 的返回值与 f(n) 相等，则最大的 n 是多少？(5) f2(127) 的机器数为 7F80 0000H，对应的值是什么？若使 f2(n) 的结果不溢出，则最大的 n 是多少？若使 f2(n) 的结果精确（无舍入），则最大的 n 是多少？', '[]', '', '1）由于$i$和$n$是 unsigned 型，故$i ≤ n - l$是无符号数比较，$n = 0$时，$n - 1$的机器数为全$1$，值是$2^{32} - 1$，为 unsigned 型可表示的最大数，条件$i ≤ n - 1$永真，因此出现死循环。（2 分）
若$i$和$n$改为 int 类型则不会出现死循环。（1 分）
因为$i ≤ n - 1$是带符号整数比较，$n = 0$时，$n - 1$的值是$−1$，当$i = 0$时条件$i ≤ n - 1$不成立，此时退出 for 循环。（1 分）
2）f1(23) 与 f2(23) 的返回值相等。（1 分）f(23) =$2^{23+1} - 1 = 2^{24} - 1$，它的二进制形式是$24$个$1$。int 占$32$位，没有溢出。float 有$1$个符号位，$8$个指数位，$23$个底数位，$23$个底数位可以表示$24$位的底数。所以两者返回值相等。
f1(23) 的机器数是 00FF FFFFH。（1 分）
f2(23) 的机器数是 4B7F FFFFH。（1 分）
显而易见前者是$24$个$1$，即$0000 0000 1111 1111 1111 1111 1111 1111_{(2)}$，后者符号位是$0$，
指数位为$23 + 127_{10} = 10010110_{2}$，底数位是$111 1111 1111 1111 1111 1111_{2}$。
3）当 n=24 时，f(24) = 1 1111 1111 1111 1111 1111 1111 B，而 float 型数只有 24 位有效位，舍入后数值增大，所以 f2(24) 比 f1(24) 大 1。（1 分）
【评分说明】只要说明 f2(24) 需舍入处理即可给分。
4）显然 f(31) 已超出了 int 型数据的表示范围，用 f1(31) 实现时得到的机器数为 32 个 1，作为 int 型数解释时其值为 -1，即 f1(31) 的返回值为 -1。（1 分）
因为 int 型最大可表示数是 0 后面加 31 个 1，故使 f1(n) 的返回值与 f(n) 相等的最大 n 值是 30。（1 分）
【评分说明】对于第二问，只要给出 n=30 即可给分。
5）IEEE754 标准用“阶码全 1、尾数全 0”表示无穷大。2 返回值为 f1oat 型，机器数 7F800000H 对应的值是+∞。（1 分）
当 n=126 时，f(126) =$2^{127} - 1 = 1.1 … 1 × 2^{126}$，对应阶码为 127+126=253，尾数部分舍入后阶码加 1，最终阶码为 254，是 IEEE754 单精度格式表示的最大阶码。故使 2 结果不溢出的最大 n 值为 126。（1 分）
当 n=23 时，f(23) 为 24 位 1，f1oat 型数有 24 位有效位，所以不需舍入，结果精确。故使 f2 获得精确结果的最大 n 值为 23。（1 分）
【评分说明】对于第二问，只要给出 n=23，即可给分。对于第三问，只要给出 n=126，即可给分。
', 9, 'Mogullzr', '2026-01-29 18:54:15', 9, NULL, '2026-01-29 18:54:15', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '3718');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '3718');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3719, '2017年408考研真题第44题', '简单', '2017年408真题', '在按字节编址的计算机 M 上，题 43 中 f1 的部分源程序（阴影部分）与对应的机器级代码（包括指令的虚拟地址）如下图所示。其中，机器级代码行包括行号、虚拟地址、机器指令和汇编指令。请回答下列问题。(1) 计算机 M 是 RISC 还是 CISC？为什么？(2) f1 的机器指令代码共占多少字节？要求给出计算过程。(3) 第 20 条指令 cmp 通过 i 减 n-1 实现对 i 和 n-1 的比较。执行 f1(0) 过程中，当 i=0 时，cmp 指令执行后，进/借位标志 CF 的内容是什么？要求给出计算过程。(4) 第 23 条指令 shl 通过左移操作实现了 power*2 运算，在 f2 中能否也用 shl 指令实现 power*2？为什么？', '[]', '', '（1）M 为 CISC。（1 分）
M 的指令长短不一，不符合 RISC 指令系统特点。（1 分）
（2）f1 的机器代码为 96B。（1 分）
因为 f1 的第一条指令 “push ebp” 所在的虚拟地址为0040 1020H，最后一条指令 “ret” 所在的虚拟地址为0040 107FH，所以，f1 的机器指令代码长度为：0040 107FH - 0040 1020H + 1 = 60H = 96B（1分）
（3）CF = 1。（1 分）
cmp指令实现i与n-1的比较功能，进行的是减法运算。在执行 f1(0) 过程中，n=0，当i=0时，i=0000 0000H，并且n-1=FFFF FFFFH。因此，当执行第 20 条指令时，在补码加/减运算器中执行的是 “0 - FFFF FFFFH” 的操作，即：0000 0000H + 0000 0000H + 1 = 0000 0001H。此时，进位输出C=0，减法运算时的借位标志CF = C ⊕ 1 = 1。（2 分）
（4）f2 中不能用shl指令实现power * 2。（1 分）
因为shl指令用来将一个整数的所有有效位作为一个整体左移；而 f2 中的变量power是 float 型，其机器数中不包含最高有效位，但包含了阶码部分，将其作为一个整体左移时并不能实现 “乘 2” 的功能。因此在 f2 中不能用shl指令实现power * 2。（2 分）浮点数运算比整型运算要复杂，耗时也较长。
', 9, 'Mogullzr', '2026-01-29 18:54:15', 9, NULL, '2026-01-29 18:54:15', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1104', '3719');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1177', '3719');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1245', '3719');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3720, '2017年408考研真题第45题', '简单', '2017年408真题', '假定题 44 给出的计算机 M 采用二级分页虚拟存储管理方式，虚拟地址格式如下：请针对题 43 的函数 f1 和题 44 中的机器指令代码，回答下列问题。(1) 函数 f1 的机器指令代码占多少页？(2) 取第 1 条指令（push ebp）时，若在进行地址变换的过程中需要访问内存中的页目录和页表，则会分别访问它们各自的第几个表项（编号从 0 开始）？(3) M 的 I/O 采用中断控制方式。若进程 P 在调用 f1 之前通过 scanf() 获取 n 的值，则在执行 scanf() 的过程中，进程 P 的状态会如何变化？CPU 是否会进入内核态？', '[]', '', '1）函数 1 的代码段中所有指令的虚拟地址的高 20 位相同，因此 1 的机器指令代码在同
一页中，仅占用 1 页。（1 分）页目录号用于寻找页目录的表项，该表项包含页表的位置。页表
索引用于寻找页表的表项，该表项包含页的位置。
2）push ebp 指令的虚拟地址的最高 10 位（页目录号）为 0000000001，中间 10 位（页
表索引）为 0000000001，所以，取该指令时访问了页目录的第 1 个表项，（1 分）在对应的页
表中访问了第 1 个表项。（1 分）
3）在执行 scanf0 的过程中，进程 P 因等待输入而从执行态变为阻塞态。（1 分）输入结束
时，P 被中断处理程序唤醒，变为就绪态。（1 分）P 被调度程序调度，变为运行态。（1 分）CPU
状态会从用户态变为内核态。（1 分）
', 9, 'Mogullzr', '2026-01-29 18:54:15', 9, NULL, '2026-01-29 18:54:15', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1157', '3720');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1137', '3720');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3720');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3721, '2017年408考研真题第46题', '简单', '2017年408真题', '某进程中有 3 个并发执行的线程 thread1、thread2、thread3，其伪代码如下所示。请添加必要的信号量和 P、V（或 wait()、signal()）操作，要求确保线程互斥访问临界资源，并且最大程度地并发执行。', '[]', '', '先找出线程对在各个变量上的互斥、并发关系。如果是一读一写或两个都是写，那么这就是互斥关系。每一个互斥关系都需要一个信号量进行调节。
// 冲突：// t1 和 t3 关于 y 有读写冲突// t2 和 t3 关于 y, z 都有读写冲突// 解决 t1 和 t3 关于 y 读写冲突semaphorey_mutex1=1;semaphorey_mutex2=1;semaphorez_mutex=1;// 全局变量 x y zcnumx,y,z;thread1(){cnumw;// 读 x, yP(y_mutex1);w=add(x,y);V(y_mutex1);// ...}thread2(){cnumw;// 读 y, zP(z_mutex);P(y_mutex2);w=add(y,z);V(y_mutex2);V(z_mutex);// ...}thread3(){cnumw;w.a=1;w.b=1;// 写 zP(z_mutex);z=add(z,w);V(z_mutex);// 写 yP(y_mutex1);P(y_mutex2);y=add(y,w);V(y_mutex2);V(y_mutex1);// ...}
【评分标准】
① 各线程与变量之间的互斥、并发情况及相应评分见下表。
| 变量/线程对 | thread1 和 thread2 | thread2 和 thread3 | thread3 和 thread4 | 给分  |
|:------:|:-----------------:|:-----------------:|:-----------------:|:---:|
| x      | 不共享               | 不共享               | 不共享               | 1 分 |
| y      | 同时读               | 读写互斥              | 读写互斥              | 3 分 |
| z      | 不共享               | 读写互斥              | 不共享               | 1 分 |

② 考生仅使用一个互斥信号量，互斥代码部分的得分最多给 2 分。
③ 答案部分正确，酌情给分。
', 9, 'Mogullzr', '2026-01-29 18:54:15', 9, NULL, '2026-01-29 18:54:15', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1154', '3721');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3722, '2017年408考研真题第47题', '简单', '2017年408真题', '甲乙双方均采用后退 N 帧协议 (GBN) 进行持续的双向数据传输，且双方始终采用捎带确认，帧长均为 1000 B。$S_{x,y}$和$R_{x,y}$分别表示甲方和乙方发送的数据帧，其中：$x$是发送序号；$y$是确认序号（表示希望接收对方的下一帧序号）；数据帧的发送序号和确认序号字段均为 3 比特。信道传输速率为 100 Mbps，RTT = 0.96 ms。下图给出了甲方发送数据帧和接收数据帧的两种场景，其中$t_{0}$为初始时刻，此时甲方的发送和确认序号均为 0，$t_{1}$时刻甲方有足够多的数据待发送。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/6e9ba5203b644bbab3edc6fcfad3f0fd.jpg)
请回答下列问题。(1) 对于图 (a)，$t_{0}$时刻到$t_{1}$时刻期间，甲方可以断定乙方已正确接收的数据帧数是多少？正确接收的是哪几个帧（请用$S_{x,y}$形式给出）？(2) 对于图 (a)，从$t_{1}$时刻起，甲方在不出现超时且未收到乙方新的数据帧之前，最多还可以发送多少个数据帧？其中第一个帧和最后一个帧分别是哪个（请用$S_{x,y}$形式给出）？(3) 对于图 (b)，从$t_{1}$时刻起，甲方在不出现新的超时且未收到乙方新的数据帧之前，需要重发多少个数据帧？重发的第一个帧是哪个（请用$S_{x,y}$形式给出）？(4) 甲方可以达到的最大信道利用率是多少？', '[]', '', '1）6 时刻到 t 时刻期间，甲方可以断定乙方已正确接收了 3 个数据帧，（1 分）分别是$S_{0,0}$,$S_{1,0}$,$S_{2,0}$（1 分）。$R_{3,3}$说明乙发送的数据帧确认号是 3，即希望甲发送序号 3 的数据帧，说明乙已经接收了序号为 0~2 的数据帧。
2）从$t_{1}$时刻起，甲方最多还可以发送 5 个数据帧（1 分），其中第一个帧是$S_{5,2}$（1 分），最后一个数据帧是$S_{1,2}$（1 分）。发送序号 3 位，有 8 个序号。在 GBN 协议中，序号个数 ≥ 发送窗口 + 1，所以这里发送窗口最大为 7。此时已发送了$S_{3,0}$和$S_{4,1}$，所以最多还可以发送 5 个帧。
3）甲方需要重发 3 个数据帧（1 分），重发的第一个帧是$S_{2,3}$（1 分）。在 GBN 协议中，接收方发送了 N 帧后，检测出错，则需要发送出错帧及其之后的帧。$S_{2,0}$超时，所以重发的第一帧是$S_{2}$。已收到乙的$R_{2}$帧，所以确认号应为 3。
\\[
\\frac{7 \\times \\frac{8 \\times 1000}{100 \\times 10^6}}{0.96 \\times 10^{-3} + 2 \\times \\frac{8 \\times 1000}{100 \\times 10^6}} \\times 100\\% = 50%
\\]
4）甲方可以达到的最大信道利用率是
$U$= 发送数据的时间/从开始发送第一帧到收到第一个确认帧的时间 =$N ⋅ Td/(Td + RTT + Ta)$
$U$是信道利用率，$N$是发送窗口的最大值，$Td$是发送一数据帧的时间，$RTT$是往返时间，$Ta$是发送一确认帧的时间。这里采用捎带确认，$Td = Ta$。
【评分说明】答案部分正确，酌情给分。
', 9, 'Mogullzr', '2026-01-29 18:54:17', 9, NULL, '2026-01-29 18:54:17', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1122', '3722');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1210', '3722');
