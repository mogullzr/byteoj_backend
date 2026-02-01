INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3582, '2015年408考研真题第1题', '简单', '2015年408真题', '已知程序如下：
```c
int S(int n) {
    return (n <= 0) ? 0 : S(n - 1) + n;
}

void main() {
    cout << S(1);
}
```
程序运行时使用栈来保存调用过程的信息，自栈底到栈顶保存的信息依次对应的是（ ）。', '[''`main()`→`S(1)`→`S(0)`'', ''`S(0)`→`S(1)`→`main()`'', ''`main()`→`S(0)`→`S(1)`'', ''`S(1)`→`S(0)`→`main()`'']', "['A']", 'A</font></strong>
递归调用函数时，在系统栈里保存的函数信息需满足先进后出的特点，依次调用了`main()`，`S(1)`，`S(0)`，故栈底到栈顶的信息依次是`main()`，`S(1)`，`S(O)`。', 9, 'Mogullzr', '2026-02-01 23:09:17', 9, NULL, '2026-02-01 23:09:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '3582');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3583, '2015年408考研真题第2题', '简单', '2015年408真题', '先序序列为 a,b,c,d 的不同二叉树的个数是（）。', '[''13'', ''14'', ''15'', ''16'']', "['B']", 'B</font></strong>
本题考察卡特兰数。根据二叉树前序遍历和中序遍历的递归算法中递归工作栈的状态变化得出：前序序列和中序序列的关系相当于以前序序列为入栈次序，以中序序列为出栈次序。因为前序序列和中序序列可以唯一地确定一棵二叉树，所以题意相当千“以序列 a, b, c, d 为入栈次序，则出栈序列的个数为多少“，对于 n 个不同元素进栈，出栈序列的个数$\\frac{1}{n+1}C_{2n}^{n} = 14$。', 9, 'Mogullzr', '2026-02-01 23:09:17', 9, NULL, '2026-02-01 23:09:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1247', '3583');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3584, '2015年408考研真题第3题', '简单', '2015年408真题', '下列选项给出的是从根分别到达两个叶结点路径上的权值序列，能属于同一棵哈夫曼树的是（ ）。', '[''24, 10, 5 和 24, 10, 7'', ''24, 10, 5 和 24, 12, 7'', ''24, 10, 10 和 24, 14, 11'', ''24, 10, 5 和 24, 14, 6'']', "['D']", 'D</font></strong>
在哈夫曼树中，左右孩子权值之和为父结点权值。仅以分析选项 A 为例：若两个 10 分别属于两棵不同的子树，根的权值不等于其孩子的权值和，不符；若两个 10 属于同棵子树，其权值不等千其两个孩子（叶结点）的权值和，不符。B、C 选项的排除方法一样。', 9, 'Mogullzr', '2026-02-01 23:09:18', 9, NULL, '2026-02-01 23:09:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1145', '3584');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3585, '2015年408考研真题第4题', '简单', '2015年408真题', '现有一棵无重复关键字的平衡二叉树（AVL 树），对其进行中序遍历可得到一个降序序列。下列关于该平衡二叉树的叙述中，正确的是（ ）。', '[''根结点的度一定为 2'', ''树中最小元素一定是叶结点'', ''最后插入的元素一定是叶结点'', ''树中最大元素一定是无左子树'']', "['D']", 'D</font></strong>
只有两个结点的平衡二叉树的根结点的度为 1，A 错误。中序遍历后可以得到一个降序序列，树中最大元素一定无左子树（可能有右子树），因此不一定是叶结点，B 错误。最后插入的结点可能会导致平衡调整，而不一定是叶结点，C 错误。', 9, 'Mogullzr', '2026-02-01 23:09:18', 9, NULL, '2026-02-01 23:09:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1090', '3585');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3586, '2015年408考研真题第5题', '简单', '2015年408真题', '设有向图 G=(V,E)，顶点集 V={$v_{0}$,$v_{1}$,$v_{2}$,$v_{3}$}，边集 E={<$v_{0}$,$v_{1}$>，<$v_{0}$,$v_{2}$>，<$v_{0}$,$v_{3}$>，<$v_{1}$,$v_{3}$>}。若从顶点$v_{0}$开始对图进行深度优先遍历，则可能得到的不同遍历序列个数是（）。', '[''2'', ''3'', ''4'', ''5'']', "['D']", 'D</font></strong>
画出该有向图图形如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/4278929d695f4b6c8058b02f352f23ee.svg)
采用图的深度优先遍历，共 5 种可能： <$v_{0}$,$v_{1}$,$v_{3}$,$v_{2}$>, <$v_{0}$,$v_{2}$,$v_{3}$,$v_{1}$>, <$v_{0}$,$v_{2}$, vi,$v_{3}$>, <$v_{0}$,$v_{3}$,$v_{2}$,$v_{1}$>, <$v_{0}$,$v_{3}$,$v_{1}$,$v_{2}$>, 选 D。', 9, 'Mogullzr', '2026-02-01 23:09:18', 9, NULL, '2026-02-01 23:09:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1199', '3586');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3587, '2015年408考研真题第6题', '简单', '2015年408真题', '求下面带权图的最小（代价）生成树时，可能是克鲁斯卡（Kruskal）算法第 2 次选中但不是普里姆（Prim）算法（从 V4 开始）第 2 次选中的边是（）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/296daf5b9b204bc486c20420f6357bca.jpg)
', '[''($V_{1}$,$V_{3}$)'', ''($V_{1}$,$V_{4}$)'', ''($V_{2}$,$V_{3}$)'', ''($V_{3}$,$V_{4}$)'']', "['C']", 'C</font></strong>
$V_{4}$开始，kruskal 算法选中的第一条边一定是权值最小的 ($V_{1}$,$V_{4}$), B 错误。由于$V_{1}$和$V_{4}$已经可达，第二条边含有$V_{1}$和$V_{4}$的权值为 8 的一定符合prim 算法，排除 A、D。', 9, 'Mogullzr', '2026-02-01 23:09:21', 9, NULL, '2026-02-01 23:09:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1200', '3587');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3588, '2015年408考研真题第7题', '简单', '2015年408真题', '下列选项中，不能构成折半查找中关键字比较序列的是（）。', '[''500,200,450,180'', ''500,450,200,180'', ''180,500,200,450'', ''180,200,500,450'']', "['A']", 'A</font></strong>
画出查找路径图，因为折半查找的判定树是一棵二叉排序树，看其是否满足二叉排序树的要求。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/2348a347988d4eb1a70b921680ee1266.svg)
显然，选项 A 的查找路径不满足。', 9, 'Mogullzr', '2026-02-01 23:09:21', 9, NULL, '2026-02-01 23:09:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1147', '3588');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3589, '2015年408考研真题第8题', '简单', '2015年408真题', '已知字符串`s`为 “`abaabaabacacaabaabcc`”，模式串`t`为 “`abaabc`”。采用 KMP 算法进行匹配，第一次出现“失配”（`s[i]`≠`t[j]`）时，`i = j = 5`，则下次开始匹配时，`i`和`j`的值分别是（ ）。', '[''`i = 1, j = 0`'', ''`i = 5, j = 0`'', ''`i = 5, j = 2`'', ''`i = 6, j = 2`'']', "['C']", 'C</font></strong>
由题中失配`s[i] ≠ s[j]`时，`i = j = 5",`可知题中的主串和模式串 的位序都是从 0 开始的（要注意灵活应变）。按照`next`数组生成算法，对于`t`有：
| 编号 | 0 | 1 | 2 | 3 | 4 | 5 |
| --- | --- | --- | --- | --- | --- | --- |
| t | a | b | a | a | b | b |
| next | -1 | 0 | 0 | 1 | 1 | 2 |
依据KMP 算法“当失配时，`i`不变，`j`回退到`next[j]`的位置并重新比较”，当失配`s[i] ≠ s[j]`时，`i=j=5,`由上表不难得出`next[j]=next[5]=2`（位序从 0 开始）。从而最后结果应为`i=5`（`i`保持不变），`j=2`。', 9, 'Mogullzr', '2026-02-01 23:09:22', 9, NULL, '2026-02-01 23:09:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1248', '3589');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3590, '2015年408考研真题第9题', '简单', '2015年408真题', '下列排序算法中，元素的移动次数与关键字的初始排列次序无关的是（）。', '[''直接插入排序'', ''起泡排序'', ''基数排序'', ''快速排序'']', "['C']", 'C</font></strong>
基数排序的元素移动次数与关键字的初始排列次序无关，而其他三种排序都是与关键字的初始排列明显相关的。', 9, 'Mogullzr', '2026-02-01 23:09:22', 9, NULL, '2026-02-01 23:09:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3590');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1249', '3590');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3591, '2015年408考研真题第10题', '简单', '2015年408真题', '已知小根堆为 8,15,10,21,34,16,12，删除关键字 8 之后需重建堆，在此过程中，关键字之间的比较次数是（）。', '[''1'', ''2'', ''3'', ''4'']', "['C']", 'C</font></strong>
删除 8 后，将 12 移动到堆顶，第一 次是 15 和 10 比较，第二次是 10 和 12 比较并交换，第三次还需比较 12 和 16, 故比较次数为 3 次。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/1cdda7ac035c43fa9b99abae04467df9.svg)
', 9, 'Mogullzr', '2026-02-01 23:09:22', 9, NULL, '2026-02-01 23:09:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1095', '3591');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3592, '2015年408考研真题第11题', '简单', '2015年408真题', '希尔排序的组内排序采用的是（）。', '[''直接插入排序'', ''折半插入排序'', ''快速排序'', ''归并排序'']', "['A']", 'A</font></strong>
希尔排序的思想是：先将待排元素序列分割成若干子序列（由相隔某个“增量”的元素组成），分别进行直接插入排序，然后依次缩减增量再进行排序，待整个序列中的元素基本有序（增量足够小）时，再对全体元素进行一次直接插入排序。', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1230', '3592');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3593, '2015年408考研真题第12题', '简单', '2015年408真题', '计算机硬件能够直接执行的语言是（ ）。I. 机器语言程序II. 汇编语言程序III. 硬件描述语言程序', '[''仅 I'', ''仅 I、II'', ''仅 I、III'', ''I、II、III'']', "['A']", 'A</font></strong>
硬件能直接执行的只能是机器语言（二进制编码），汇编语言是为了增强机器语言的可读性和记忆性的语言，经过汇编后才能被执行。', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1201', '3593');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3594, '2015年408考研真题第13题', '简单', '2015年408真题', '由 3 个“1”和 5 个“0”组成的 8 位二进制补码，能表示的最小整数（ ）。', '[''-126'', ''-125'', ''-32'', ''-3'']', "['B']", 'B</font></strong>
使用补码表示整数时，负数的符号位为 1, 数值位按位取反，末位加 1, 因此剩下的 2 个 1 在最低位时，表示的是最小整数，为 10000011, 转换成真值为 -125。', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3595, '2015年408考研真题第14题', '简单', '2015年408真题', '下列有关浮点数加减运算的叙述中，正确的是（ ）。Ⅰ. 对阶操作不会引起阶码上溢或下溢Ⅱ. 右规和尾数舍入都可能引起阶码上溢Ⅲ. 左规时可能引起阶码下溢Ⅳ. 尾数溢出时结果不一定溢出', '[''仅Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅱ、Ⅳ'', ''仅Ⅰ、Ⅲ、Ⅳ'', ''Ⅰ、Ⅱ、Ⅲ、Ⅳ'']', "['D']", 'D</font></strong>
参考浮点数加减，对阶是较小的阶码对齐至较 大的阶码，I 正确。右规和尾数舍入过程，阶码加 1 而可能上溢，II 正确，同理 III 也正确。尾数溢出时可能仅产生误差，结果不一定溢出，IV 正确。', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1100', '3595');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3596, '2015年408考研真题第15题', '简单', '2015年408真题', '假定主存地址位数为 32 位，按字节编址，主存和 Cache 之间采用直接映射方式，主存块大小为 4 个字，每字 32 位，写操作时采用回写 (Write Back) 方式，则能存放 4K 字数据的 Cache 的总容量的位数至少是（ ）。', '[''146K'', ''147K'', ''148K'', ''158K'']', "['C']", 'C</font></strong>
直接映射的地址结构为：<strong><font color=''#2656b3''>主存字块标记 | 行号 | 块内地址</font></strong>
$$
(20 + 128) × 1024 = 148 × 1024 位 = 148 Kb
$$
', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1101', '3596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1250', '3596');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3597, '2015年408考研真题第16题', '简单', '2015年408真题', '假定编译器将赋值语句 “`x=x+3;`” 转换为指令 “`add xaddr, 3`”，其中`xaddr`是`x`对应的存储单元地址。若执行该指令的计算机采用页式虚拟存储管理方式，并配有相应的 TLB，且 Cache 使用直写（Write Through）方式，则完成该指令功能需要访问主存的次数至少是（ ）。', '[''0'', ''1'', ''2'', ''3'']', "['B']", 'B</font></strong>
上述指令的执行过程可划分为取数、运算和写回过程，取数时读取 xaddr 可能不需要访问主存而直接访问 Cache，而直写法需要把数据同时写入 Cache 和主存，因此至少访问 1 次。', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1250', '3597');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1136', '3597');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3598, '2015年408考研真题第17题', '简单', '2015年408真题', '下列存储器中，在工作期间需要刷新的是（ ）。', '[''SRAM'', ''SDRAM'', ''ROM'', ''FLASH'']', "['B']", 'B</font></strong>
DRAM 芯片使用电容存储，所以必须隔一段时间刷新一次，如果存储单元没有被刷新，存储的信息就会丢失。SDRAM 表示同步动态随机存储器。B 选项 SDRAM 中 S 的意思是 synchronized 的，意思是同步 DRAM。', 9, 'Mogullzr', '2026-02-01 23:09:24', 9, NULL, '2026-02-01 23:09:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1148', '3598');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3599, '2015年408考研真题第18题', '简单', '2015年408真题', '某计算机使用 4 体交叉编址存储器，假定在存储器总线上出现的主存地址（十进制）序列为 8005，8006，8007，8008，8001，8002，8003，8004，8000，则可能发生访存冲突的地址对是（ ）。', '[''8004 和 8008'', ''8002 和 8007'', ''8001 和 8008'', ''8000 和 8004'']', "['D']", 'D</font></strong>
本题考察多体交叉存储器，每个访存地址对应的存储模块序号 (0, 1, 2, 3) 如下所示：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/6f71395c0e98422b85ed4b8230b14990.svg)
其中，模块序号 = 访存地址 % 存储器交叉模块数。判断可能发生访存冲突的规则是：给定的访存地址在相邻的四次访问中出现在同一个存储模块内。据此，根据上表可知 8004 和 8000 对应的模块号都为 0，即表明这两次的访问出现在同一模块内且在相邻的访问请求中，满足发生冲突的条件。', 9, 'Mogullzr', '2026-02-01 23:09:25', 9, NULL, '2026-02-01 23:09:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1102', '3599');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3600, '2015年408考研真题第19题', '简单', '2015年408真题', '下列有关总线定时的叙述中，错误的是（ ）。', '[''异步通信方式中，全互锁协议最慢'', ''异步通信方式中，非互锁协议的可靠性最差'', ''同步通信方式中，同步时钟信号可由各设备提供'', ''半同步通信方式中，握手信号的采样由同步时钟控制'']', "['C']", 'C</font></strong>
在同步通信方式中，系统采用一个统一的时钟信号，而不是由各设备提供，否则没法实现统一的时钟。', 9, 'Mogullzr', '2026-02-01 23:09:26', 9, NULL, '2026-02-01 23:09:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1251', '3600');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3601, '2015年408考研真题第20题', '简单', '2015年408真题', '若磁盘转速为 7200rpm，平均寻道时间为 8ms，每个磁道包含 1000 个扇区，则访问一个扇区的平均存取时间大约是（ ）。', '[''8.1ms'', ''12.2ms'', ''16.3ms'', ''20.5ms'']', "['B']", 'B</font></strong>
存取时间= 寻道时间 + 延迟时间 + 传输时间。存取一个扇区的平均延迟时间为旋转半周的时间，即为 (60/7200)/2=4.17ms，传输时间为 (60/7200)/1000=0.01ms，因此访问一个扇区的平均存取时间为 4.17+0.01+8=12.18ms，保留一位小数则为 12.2ms。', 9, 'Mogullzr', '2026-02-01 23:09:26', 9, NULL, '2026-02-01 23:09:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1219', '3601');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3602, '2015年408考研真题第21题', '简单', '2015年408真题', '在采用中断 I/O 方式控制打印输出的情况下，CPU 和打印控制接口中的 I/O 端口之间交换的信息不可能是（ ）。', '[''打印字符'', ''主存地址'', ''设备状态'', ''控制命令'']', "['B']", 'B</font></strong>
在程序中断方式中，CPU 和打印控制接口（I/O 端口）之间常见的交互信息包括：- A. 打印字符：✅  
CPU 通过 I/O 端口向打印机发送要打印的字符数据。
- C. 设备状态：✅  
CPU 可以从设备读取其状态（如“忙碌”、“准备好”、“出错”等），判断是否可以继续发送数据。
- D. 控制命令：✅  
CPU 可以向设备发送控制命令（如“启动打印”、“复位”等）控制设备的行为。所以 B 选项错误，主存地址属于内存地址空间，而不是 I/O 端口和控制接口之间直接交换的信息。在中断 I/O 方式中：- 数据是由 CPU 从内存中取出，然后通过 I/O 指令送到 I/O 端口；
- 并不是由 CPU 告诉 I/O 接口一个内存地址，让设备自己去内存取数据（那是 DMA 的行为）。因此，中断 I/O方式下不会在 CPU 和设备控制器之间交换主存地址。', 9, 'Mogullzr', '2026-02-01 23:09:26', 9, NULL, '2026-02-01 23:09:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3602');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3603, '2015年408考研真题第22题', '简单', '2015年408真题', '内部异常（内中断）可分为故障（fault）、陷阱（trap）和终止（abort）三类。下列有关内部异常的叙述中，错误的是（ ）。', '[''内部异常的产生与当前执行指令相关'', ''内部异常的检测由 CPU 内部逻辑实现'', ''内部异常的响应发生在指令执行过程中'', ''内部异常处理后返回到发生异常的指令继续执行'']', "['D']", 'D</font></strong>
参考中断和异常的区别，内中断是指来自 CPU 和内存内部产生的中断，包括程序运算引起的各种错误，如地址非法、校验错、页面失效、非法指令、用户程序执行特权指令自行中断（INT）和除数为零等，以上中断都在指令的执行过程中产生的，故 A 正确。这种检测异常的工作肯定是由 CPU（包括控制器和运算器）实现的，故 B 正确。内中断不能被屏蔽，一旦出现应立即处理，C 正确。对于 D，考虑到特殊情况，如除数为零和自行中断（INT）都会自动跳过中断指令，所以不会返回到发生异常的指令继续执行，故错误。', 9, 'Mogullzr', '2026-02-01 23:09:26', 9, NULL, '2026-02-01 23:09:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '3603');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3604, '2015年408考研真题第23题', '简单', '2015年408真题', '处理外部中断时，应该由操作系统保存的是（ ）。', '[''程序计数器（PC）的内容'', ''通用寄存器的内容'', ''块表（TLB）中的内容'', ''Cache 中的内容'']', "['B']", 'B</font></strong>
外部中断处理过程中，PC 值由中断隐指令自动保存，而通用寄存器 内容由操作系统保存。', 9, 'Mogullzr', '2026-02-01 23:09:26', 9, NULL, '2026-02-01 23:09:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3604');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3605, '2015年408考研真题第24题', '简单', '2015年408真题', '假定下列指令已装入指令寄存器，则执行时不可能导致 CPU 从用户态变为内核态（系统态）的是（ ）。', '[''`DIV R0, R1;`(R0)/(R1)→R0'', ''`INT n;`产生软中断'', ''`NOT R0;`寄存器`R0`的内容取非'', ''`MOV R0, addr;`把地址`addr`的内存数据放入寄存器`R0`中'']', "['C']", 'C</font></strong>
考虑到部分指令可能出现异常（导致中断），从而转到内核模式。指令 A 有除零异常的可能，指令 B 为中断指令，指令 D 有缺页异常的可能，指令 C 不会发生异常。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1182', '3605');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3606, '2015年408考研真题第25题', '简单', '2015年408真题', '下列选项中，会导致进程从执行态变为就绪态的事件是（  ）。', '[''执行 P(wait) 操作'', ''申请内存失败'', ''启动 I/O 设备'', ''被高优先级进程抢占'']', "['D']", 'D</font></strong>
参考状态转化，A、B 和 C 都 因为请求某一资源会进入阻塞态，而 D 只是被剥夺了处理机资源，进入就绪态，一 旦得到处理机即可运行。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1206', '3606');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3607, '2015年408考研真题第26题', '简单', '2015年408真题', '若系统 S1 采用死锁避免方法，S2 采用死锁检测方法。下列叙述中，正确的是（）。Ⅰ、S1 会限制用户申请资源的顺序，而 S2 不会Ⅱ、S1 需要进程运行所需的资源总量信息，而 S2 不需要Ⅲ、S1 不会给可能导致死锁的进程分配资源，而 S2 会', '[''仅Ⅰ、Ⅱ'', ''仅Ⅱ、Ⅲ'', ''仅Ⅰ、Ⅲ'', ''Ⅰ、Ⅱ、Ⅲ'']', "['B']", 'B</font></strong>
死锁处理采用三种策略：死锁预防、死锁避免、死锁检测和解除。死锁预防，采用破坏产生死锁的四个必要条件中的一个或几个，以防止发生死锁。其中之一的“破坏循环等待条件”，一般采用顺序资源分配法，首先给系统的资源编号，规定每个进程必须按编号递增的顺序请求资源，也就是限制了用户申请资源的顺序，故 I 的前半句属于死锁预防的范畴。银行家算法是最著名的死锁避免算法，其中的最大需求矩阵 MAX 定义了每一个进程对 m 类资源的最大需求量，系统在执行安全性算法中都会检查此次资源试分配后，系统是否处于安全状态，若不安全则将本次的试探分配作废。在死锁的检测和解除中，在系统为进程分配资源时不采取任何措施，但提供死锁的检测和解除的手段。故 II、III 正确。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1252', '3607');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3608, '2015年408考研真题第27题', '简单', '2015年408真题', '系统为某进程分配了 4 个页框，该进程已访问的页号序列为 2, 0, 2, 9, 3, 4, 2, 8, 2, 4, 8, 4, 5。若进程要访问的下一页的页号为 7，依据 LRU 算法，应淘汰页的页号是（ ）。', '[''2'', ''3'', ''4'', ''8'']', "['A']", 'A</font></strong>
参考LRU，对页号序列从后往前计数，直到数到 4（页框数）个不同的数字为止，这个停止的数字就是要淘汰的页号（最近最久未使用的页），题中为页号 2。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1253', '3608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1254', '3608');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3609, '2015年408考研真题第28题', '简单', '2015年408真题', '在系统内存中设置磁盘缓冲区的主要目的是（ ）。', '[''减少磁盘 I/O 次数'', ''减少平均寻道时间'', ''提高磁盘数据可靠性'', ''实现设备无关性'']', "['A']", 'A</font></strong>
磁盘和内存的速度差异，决定了可以将内存经常访问的文件调入磁盘缓冲区，从高速缓存中复制的访问比磁盘 I/O 的机械操作要快很多。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1087', '3609');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3610, '2015年408考研真题第29题', '简单', '2015年408真题', '在文件的索引节点中存放直接索引指针 10 个，一级和二级索引指针各 1 个。磁盘块大小为 1KB，每个索引指针占 4 个字节。若某文件的索引节点已在内存中，则把该文件偏移量（按字节编址）为 1234 和 307400 处所在的磁盘块读入内存，需访问的磁盘块个数分别是（ ）。', '[''1、2'', ''1、3'', ''2、3'', ''2、4'']', "['B']", 'B</font></strong>
本题考察混合索引：其中 10 个直接索引指针指向的数据块大小为 10×1KB = 10KB。每个索引指针占 4B，则每个磁盘块可存放 1KB/4B = 256 个索引指针，一级索引指针指向的数据块大小为 256×1KB = 256KB，二级索引指针指向的数据块大小为 256×256×1KB = 216KB = 64MB。按字节编址，偏移量为 1234 时，因 1234B < 10KB，则由直接索引指针可得到其所在的磁盘块地址。文件的索引结点已在内存中，则地址可直接得到，故仅需 1 次访盘即可。偏移量为 307400 时，因 10KB+256KB < 307400B < 64MB，可知该偏移量的内容在二级索引指针所指向的某个磁盘块中，索引结点已在内存中，故先访盘 2 次得到文件所在的磁盘块地址，再访盘 1 次即可读出内容，故共需 3 次访盘。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3610');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3611, '2015年408考研真题第30题', '简单', '2015年408真题', '在请求分页系统中，页面分配策略与页面置换策略不能组合使用的是（ ）。', '[''可变分配，全局置换'', ''可变分配，局部置换'', ''固定分配，全局置换'', ''固定分配，局部置换'']', "['C']", 'C</font></strong>
本题考察内存置换策略：对各进程进行固定分配时页面数不变，不可能出现全局置换。而 A、B、D 是现代操作系统中常见的 3 种策略。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1171', '3611');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3612, '2015年408考研真题第31题', '简单', '2015年408真题', '文件系统用位图法表示磁盘空间的分配情况，位图存于磁盘的 32～127 号块中，每个盘块占 1024 个字节，盘块和块内字节均从 0 开始编号。假设要释放的盘块号为 409612，则位图中要修改的位所在的盘块号和块内字节序号分别是（ ）。', '[''81、1'', ''81、2'', ''82、1'', ''82、2'']', "['C']", 'C</font></strong>
盘块号＝起始块号 + ⌊盘块号/(1024x8)」= 32 + ⌊409612/(1024x8)」= 32 + 50 = 82，这里问的是块内字节号而不是位号，因此还需要除以 8（1 字节=8 位），块内字节号= ⌊（盘块号%(1024x8))/8」= 1。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1236', '3612');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3613, '2015年408考研真题第32题', '简单', '2015年408真题', '某硬盘有 200 个磁道（最外侧磁道号为 0），磁道访问请求序列为：130，42，180，15，199，当前磁头位于第 58 号磁道并从外侧向内侧移动。按照 SCAN 调度方法处理完上述请求后，磁头移过的磁道数是（ ）。', '[''208'', ''287'', ''325'', ''382'']', "['C']", 'C</font></strong>
SCAN算法就是电梯调度算法。顾名思义，如果开始时磁头向外移动就一直要到最外侧，然后再返回向内侧移动，就像电梯若往下则一直要下到最底层需求才会再上升一样。当期磁头位于 58 号并从外侧向内侧移动，先依次访问 130 和 199, 然后再返回向外侧移动，依次访问 42 和 15, 故磁头移过的磁道数是：(199-58)+(199-15) = 325。', 9, 'Mogullzr', '2026-02-01 23:09:27', 9, NULL, '2026-02-01 23:09:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1116', '3613');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3614, '2015年408考研真题第33题', '简单', '2015年408真题', '通过 POP3 协议接收邮件时，使用的传输层服务类型是（ ）。', '[''无连接不可靠的数据传输服务'', ''无连接可靠的数据传输服务'', ''有连接不可靠的数据传输服务'', ''有连接可靠的数据传输服务'']', "['D']", 'D</font></strong>
POP3建立在 TCP 连接上，使用的是有连接可靠的数据传输服务。', 9, 'Mogullzr', '2026-02-01 23:09:28', 9, NULL, '2026-02-01 23:09:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1212', '3614');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3615, '2015年408考研真题第34题', '简单', '2015年408真题', '使用两种编码方案对比特流 01100111 进行编码的结果如下图所示，编码 1 和编码 2 分别是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/4a78bbe24dd4498595afb466cc3c3582.svg)
', '[''NRZ 和曼彻斯特编码'', ''NRZ 和差分曼彻斯特编码'', ''NRZI 和曼彻斯特编码'', ''NRZI 和差分曼彻斯特编码'']', "['A']", 'A</font></strong>
NRZ是最简单的串行编码技术，用两个电压来代表两个二进制数，如高电平表示 1，低电平表示 0，题中编码 1 符合。NRZI 则是用电平的一次翻转来表示 1，与前一个 NRZI 电平相同的电平表示 0。曼彻斯特编码将一个码元分成两个相等的间隔，前一个间隔为低电平后一个间隔为高电平表示 1；0 的表示正好相反，题中编码 2 符合。', 9, 'Mogullzr', '2026-02-01 23:09:29', 9, NULL, '2026-02-01 23:09:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1255', '3615');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3616, '2015年408考研真题第35题', '简单', '2015年408真题', '主机甲通过 128 kbps 卫星链路，采用滑动窗口协议向主机乙发送数据，链路单向传播延迟为 250 ms，帧长为 1000 字节。不考虑确认帧的开销，为使链路利用率不小于 80％，帧序号的比特数至少是（ ）。', '[''3'', ''4'', ''7'', ''8'']', "['B']", 'B</font></strong>
不考虑确认帧的开销，一个帧发送完后经过一个单程传播时延到达接收方，再经过一个单程传播时延发送方收到应答，从而继续发送。要使得传输效率最大化，就是不用等确认也可以连续发送多个帧。设连续发送 n 个帧，一个帧的发送时延为 1000B/128kbps= 62.5ms。对于采用滑动窗口协议的流水线机制，我们有如下公式：链路利用率= (n×发送时延)/(RTT+ 发送时延)。依题意，有 (n×62.5ms)/(62.5ms+250msx2)≥80%, 得 n≥7.2, 帧序号的比特数 K 需要满足$2^{k} ≥ n + 1$。从而，帧序号的比特数至少为 4。', 9, 'Mogullzr', '2026-02-01 23:09:29', 9, NULL, '2026-02-01 23:09:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1210', '3616');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3617, '2015年408考研真题第36题', '简单', '2015年408真题', '下列关于 CSMA/CD 协议的叙述中，错误的是（ ）。', '[''边发送数据帧，边检测是否发生冲突'', ''适用于无线网络，以实现无线链路共享'', ''需要根据网络跨距和数据传输速率限定最小帧长'', ''当信号传播延迟趋近 0 时，信道利用率趋近 100％'']', "['B']", 'B</font></strong>
CCSM/CD 适用于有线网络，而 CSMA/CA 则 广泛应用于无线局域网。其他选项关于 CSMA/CD 的描述都是正确的。', 9, 'Mogullzr', '2026-02-01 23:09:29', 9, NULL, '2026-02-01 23:09:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1125', '3617');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3618, '2015年408考研真题第37题', '简单', '2015年408真题', '下列关于交换机的叙述中，正确的是（ ）。', '[''以太网交换机本质上是一种多端口网桥'', ''通过交换机互连的一组工作站构成一个冲突域'', ''交换机每个端口所连网络构成一个独立的广播域'', ''以太网交换机可实现采用不同网络层协议的网络互联'']', "['A']", 'A</font></strong>
从本质上说，交换机就是一个多端口的网桥（A 正确），工作在数据链路层（因此不能实现不同网络层协议的网络互联，D 错误），交换机能经济地将网络分成小的冲突域（B 错误）。广播域属于网络层概念，只有网络层设备（如路由器）才能分割广播域（C 错误）。', 9, 'Mogullzr', '2026-02-01 23:09:29', 9, NULL, '2026-02-01 23:09:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1123', '3618');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3619, '2015年408考研真题第38题', '简单', '2015年408真题', '某路由器的路由表如下表所示：若路由器收到一个目的地址为 169.96.40.5 的 IP 分组，则转发该 IP 分组的接口是（ ）。', '[''S1'', ''S2'', ''S3'', ''S4'']', "['C']", 'C</font></strong>
根据最长前缀匹配，169.96.40.5 与 169.96.40.0 前 27 位匹配最长，故选 C。选项 D 为默认路由，只有当前面的所有目的网络都不能和分组的目的 IP 地址匹配时才使用。', 9, 'Mogullzr', '2026-02-01 23:09:29', 9, NULL, '2026-02-01 23:09:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1139', '3619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1244', '3619');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3620, '2015年408考研真题第39题', '简单', '2015年408真题', '主机甲和主机乙新建一个 TCP 连接，甲的拥塞控制初始阈值为 32 KB，甲向乙始终以 MSS = 1KB 大小的段发送数据，并一直有数据发送；乙为该连接分配 16 KB 接收缓存，并对每个数据段进行确认，忽略段传输延迟。若乙收到的数据全部存入缓存，不被取走，则甲从连接建立成功时刻起，未发生超时的情况下，经过 4 个 RTT 后，甲的发送窗口是（ ）。', '[''1 KB'', ''8 KB'', ''16 KB'', ''32 KB'']', "['A']", 'A</font></strong>
发送窗口的上限值 = min{接收窗口，拥塞窗口}。4 个 RTT 后，乙收到的数据全部存入缓存，不被取走，接收窗口只剩下 1KB（16-1-2-4-8=1）缓存，使得甲的发送窗口为 1KB。', 9, 'Mogullzr', '2026-02-01 23:09:29', 9, NULL, '2026-02-01 23:09:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1127', '3620');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3621, '2015年408考研真题第40题', '简单', '2015年408真题', '某浏览器发出的 HTTP 请求报文如下（ ）。
```c
GET /index .html HTTP/1.1
Host: www.test.edu.cn
Connection: close
Cookie: 123456
```
下列叙述中，错误的是', '[''该浏览器请求浏览 index.html'', ''index.html 存放在\\xa0www.test.edu.cn\\xa0上'', ''该浏览器请求使用持续连接'', ''该浏览器曾经浏览过\\xa0www.test.edu.cn'']', "['C']", 'C</font></strong>
Connection 字段代表连接方式，Close 表明为非持续连接方式，keep-alive 表示持续连接方式。Cookie 值是由服务器产生的，HTTP 请求报文中有 Cookie 报头表示曾经访问过www.test.edu.cn服务器。', 9, 'Mogullzr', '2026-02-01 23:09:30', 9, NULL, '2026-02-01 23:09:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1197', '3621');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3622, '2015年408考研真题第41题', '简单', '2015年408真题', '用单链表保存$m$个整数，结点的结构为，且$∣data∣ ≤ n$（$n$为正整数）。现要求设计一个时间复杂度尽可能高效的算法，对于链表中 data 的绝对值相等的结点，仅保留第一次出现的结点而删除其余绝对值相等的结点。例如，若给定的单链表 head 如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/3a165bbcaf094b82a1574f34258e2413.svg)
则删除结点后的 head 为：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/0ff2a7924818442797bff3ccd3ea8eef.svg)
要求：(1) 给出算法的基本设计思想。(2) 使用 C 或 C++ 语言，给出单链表结点的数据类型定义。(3) 根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释。(4) 说明你所设计算法的时间复杂度和空间复杂度。', '[]', '', '1）算法的基本设计思想
算法的核心思想是用空间换时间。使用辅助数组记录链表中已出现的数值，从而只需对链表进行一趟扫描。
因为$∣data∣ ≤ n$，故辅助数组$q$的大小为$n + 1$，各元素的初值均为 0。依次扫描链表中的各
结点，同时检查$q \\lbrack ∣data∣ \\rbrack$的值，如果为$0$，则保留该结点，并令$q \\lbrack data \\rbrack  = 1$；否则，将该结点从
链表中删除。
2）使用 C 语言描述的单链表结点的数据结构定义：
3）算法实现

```c
void RemoveElements(ListNode *head, int n) {
  // 数组充当哈希表
  int hash[n+1];
  for (int i = 0; i <= n; i++) {
    // 0 表示没有命中
    hash[i] = 0;
  }
  // 当遍历的结点
  ListNode *q = head->link;
  // 先前的结点
  ListNode *p = head;
  while (q != NULL) {
    // 绝对值已经出现过
    if (hash[abs(q->data)] == 1) {
      // 删除该节点
      p->next = q->next;
      q = p->next;
    } else {
      // 设置哈希表
      hash[abs(q->data)] = 1;
      q = q->next;
      p = p->next;
    }
  }
}
```
【评分说明】若考生设计的算法满足题目的功能要求且正确，则酌情给分。
4）参考答案所给算法的时间复杂度为 O(m)，空间复杂度为 O(n)。
【评分说明】若考生所估计的时间复杂度和空间复杂度与考生实现的算法一致，可给分。
', 9, 'Mogullzr', '2026-02-01 23:09:32', 9, NULL, '2026-02-01 23:09:32', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1130', '3622');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3623, '2015年408考研真题第42题', '简单', '2015年408真题', '已知含有$5$个顶点的图$G$如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/c1a3b5ce261348a297160e1dc9c81f36.svg)
请回答下列问题：(1) 写出图$G$的邻接矩阵$A$（行、列下标均从$0$开始）。(2) 求$A^{2}$，矩阵$A^{2}$中位于 0 行 3 列元素值的含义是什么？(3) 若已知具有$n$$(n ≥ 2)$个顶点的图的邻接矩阵为$B$，则$B^{m}$$(2 ≤ m ≤ n)$中非零元素的含义是什么？', '[]', '', '1）图$A$的邻接矩阵如下：

$$
A = \\begin{vmatrix}
0 & 1 & 1 & 0 & 1\\\\
1 & 0 & 0 & 1 & 1\\\\
1 & 0 & 0 & 1 & 0\\\\
0 & 1 & 1 & 0 & 1\\\\
1 & 1 & 0 & 1 & 0
\\end{vmatrix}
$$

2）$A^{2}$如下：

$$
A = \\begin{vmatrix}
3 & 1 & 0 & 3 & 1\\\\
1 & 3 & 2 & 1 & 2\\\\
0 & 2 & 2 & 0 & 2\\\\
3 & 1 & 0 & 3 & 1\\\\
1 & 2 & 2 & 1 & 3
\\end{vmatrix}
$$

0 行 3 列的元素值 3 表示从顶点 0 到顶点 3 之间长度为 2 的路径共有 3 条。
3）$B^{m}$($2 ≤ m ≤ n$) 中位于$i$行$j$列（$0 ≤ i$,$j ≤ n - 1$）的非零元素的含义是：图中从顶点$i$到顶点$j$长度为$m$的路径条数。
', 9, 'Mogullzr', '2026-02-01 23:09:33', 9, NULL, '2026-02-01 23:09:33', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1193', '3623');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3624, '2015年408考研真题第43题', '简单', '2015年408真题', '某 16 位计算机的主存按字节编址，存取单位为 16 位；采用 16 位定长指令字格式；CPU 采用单总线结构，主要部分如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/42a3315455d94ab2950325a2677a3344.svg)
图中 R0～R3 为通用寄存器；T 为暂存器；SR 为移位寄存器，可实现直送（mov）、左移一位（left）和右移一位（right）3 种操作，控制信号为 SRop，SR 的输出由信号 SRout 控制；ALU 可实现直送 A（mova）、A 加 B（add）、A 减 B（sub）、A 与 B（and）、A 或 B（or）、非 A（not）、A 加 1（inc）这 7 种操作，控制信号为 ALUop。注：已补充内总线到 MAR 的箭头和内总线到 IR 的箭头。请回答下列问题。(1) 图中哪些寄存器是程序员可见的？为何要设置暂存器 T？(2) 控制信号 ALUop 和 SRop 的位数至少各是多少？(3) 控制信号 SRout 所控制部件的名称或作用是什么？(4) 端点①～⑨中，哪些端点须连接到控制部件的输出端？(5) 为完善单总线数据通路，需要在端点①～⑨中相应的端点之间添加必要的连线。写出连线的起点和终点，以正确表示数据的流动方向。(6) 为什么二路选择器 MUX 的一个输入端是 2？', '[]', '', '1）程序员可见寄存器为通用寄存器（R0~R3）和 PC。因为采用了单总线结构，因此，若无暂存器 T，则 ALU 的 A、B 端口会同时获得两个相同的数据，使数据通路不能正常工作。
【评分说明】回答通用寄存器（R0~R3），给分；回答 PC，给分；部分正确，酌情给分。设置暂存器 T 的原因若回答用于暂时存放端口 A 的数据，则给分；其他答案，酌情给分。
2）ALU 共有 7 种操作，故其操作控制信号 ALUop 至少需要 3 位；移位寄存器有 3 种操作，其操作控制信号 SRop 至少需要 2 位。
3）信号 SRout 所控制的部件是一个三态门，用于控制移位器与总线之间数据通路的连接与断开。
【评分说明】只要回答出三态门或者控制连接/断开，即给分。
4）端口 ①、②、③、⑤、⑧ 须连接到控制部件输出端。
【评分说明】答案包含④、⑥、⑦、⑨中任意一个，不给分；答案不全酌情给分。
5）连线 1，⑥→⑨：连线 2，⑦→④。
【评分说明】回答除上述连线以外的其他连线，酌情给分。
6）因为每条指令的长度为 16 位，按字节编址，所以每条指令占用 2 个内存单元，顺序执行时，下条指令地址为 (PC)+2。MUX 的一个输入端为 2，可便于执行 (PC)+2 操作。
', 9, 'Mogullzr', '2026-02-01 23:09:35', 9, NULL, '2026-02-01 23:09:35', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3624');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1227', '3624');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3625, '2015年408考研真题第44题', '简单', '2015年408真题', '题 43 中描述的计算机，其部分指令执行过程的控制信号如题 44 图 a 所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/41724ebcafcd4a059a2ee400ed348e94.svg)
该机指令格式如题 44 图 b 所示，支持寄存器直接和寄存器间接两种寻址方式，寻址方式位分别为 0 和 1，通用寄存器 R0～R3 的编号分别为 0、1、2 和 3。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/01e20ff2131a48658abf515fb37621c4.svg)
请回答下列问题。(1) 该机的指令系统最多可定义多少条指令？(2) 假定 inc、shl 和 sub 指令的操作码分别为 01H、02H 和 03H，则以下指令对应的机器代码各是什么？
```c
inc R1;             // (R1)+1→R1
shl R2, R1;         // (R1)<<1→R2
sub R3, (R1), R2;   // ((R1))–(R2)→R3
```
(3) 假设寄存器 X 的输入和输出控制信号分别为 Xin 和 Xout，其值为 1 表示有效，为 0 表示无效（例如，PCout=1 表示 PC 内容送总线）；存储器控制信号为 MEMop，用于控制存储器的读 (read) 和写 (write) 操作。写出题 44 图 a 中标号①～⑧处的控制信号或控制信号的取值。(4) 指令`sub R1，R3，(R2)`和`inc R1`的执行阶段至少各需要多少个时钟周期？', '[]', '', '1）指令操作码有 7 位，因此最多可定义$2^{7} = 128$条指令。
2）各条指令的机器代码分别如下：
①“incR1”的机器码为 0000001001000000，即 0240H。
②“shlR2,R1”的机器码为 0000010010001000，即 0488H。
③“subR3,(R1),R2”的机器码为 0000011011101010，即 06EAH。
3）各标号处的控制信号或控制信号取值如下：
①0；②mov；③mova；④left；⑤read；⑥sub；⑦mov；⑧Srout
【评分说明】答对两个给分。
4）指令`subR1, R3, (R2)`的执行阶段至少包含 4 个时钟周期；指令`incR1`的执行阶段至少包含 2 个时钟周期。
', 9, 'Mogullzr', '2026-02-01 23:09:38', 9, NULL, '2026-02-01 23:09:38', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1226', '3625');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3626, '2015年408考研真题第45题', '简单', '2015年408真题', '有 A、B 两人通过信箱进行辩论，每个人都从自己的信箱中取得对方的问题，将答案和向对方提出的新问题组成一个邮件放人对方的信箱中。假设 A 的信箱最多放$M$个邮件，B 的信箱最多放$N$个邮件。初始时 A 的信箱中有$x$个邮件 ($0 < x < M$)，B 的的信箱中有$y$个邮件 ($0 < y < N$)。辩论者每取出一个邮件，邮件数减 1。A 和 B 两人的操作过程描述如下：
```c
A {
    while (true) {
        从 A 的信箱中取出一个邮件；
        回答问题并提出一个新问题；
        将新邮件放入 B 的信箱；
    }
}
```


```c
B {
    while (true) {
        从 B 的信箱中取出一个邮件；
        回答问题并提出一个新问题；
        将新邮件放入 A 的信箱；
    }
}
```

当信箱不为空时，辩论者才能从信箱中取邮件，否则等待。当信箱不满时，辩论者才能将新邮件放入信箱，否则等待。请添加必要的信号量和 P、V（或 wait、signal）操作，以实现上述过程的同步。要求写出完整的过程，并说明信号量的含义和初值。', '[]', '', '
```c
semaphore A_full = x;        // A 信箱中已有的邮件个数
semaphore A_empty = M - x;   // A 信箱还可以放多少个邮件
semaphore B_full = y;        // B 信箱中已有的邮件个数
semaphore B_empty = N - y;   // B 信箱中还能放多少个邮件
semaphore A_mutex = 1;       // 互斥访问 A 信箱
semaphore B_mutex = 1;       // 互斥访问 B 信箱

A() {
  while (1) {
    P(A_full);
    P(A_mutex);
    从A信箱中取出一个邮件;
    V(A_mutex);
    V(A_empty);
    回答问题并提出新问题;
    P(B_empty);
    P(B_mutex);
    将信件放入B邮箱;
    V(B_mutex);
    V(B_full);
  }
}

B() {
  while (1) {
    P(B_full);
    P(B_mutex);
    从B信箱中取出一个邮件;
    V(B_mutex);
    V(B_empty);
    回答问题并提出新问题;
    P(A_empty);
    P(A_mutex);
    将信件放入A邮箱;
    V(A_mutex);
    V(A_full);
  }
}
```
【评分说明】
1）每对信号量的定义及初值正确，给分。
2）每个互斥信号量的 P、V 操作使用正确，各给分。
3）每个同步信号量的 P、V 操作使用正确，各给分。
4）其他答案酌情给分。
', 9, 'Mogullzr', '2026-02-01 23:09:38', 9, NULL, '2026-02-01 23:09:38', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1135', '3626');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3627, '2015年408考研真题第46题', '简单', '2015年408真题', '某计算机系统按字节编址，采用二级页表的分页存储管理方式，虚拟地址格式如下所示：请回答下列问题。(1) 页和页框的大小各为多少字节？进程的虚拟地址空间大小为多少页？(2) 假定页目录项和页表项均占 4 个字节，则进程的页目录和页表共占多少页？要求写出计算过程。(3) 若某指令周期内访问的虚拟地址为 0100 0000H 和 0111 2048H，则进行地址转换时共访问多少个二级页表？要求说明坪由。', '[]', '', '1）在分页存储管理方式中，将用户程序的地址空间分为若干固定大小的区域，称为“页”或“页面”。相应地，将内存空间分为若干物理块或页框（frame），页和页框大小相同。因此，页和页框大小均为$2^{12}$B =$4$KB。进程的虚拟地址空间大小为$2^{32}/2^{12} = 2^{20}$页。
2）$(2^{10} × 4)/2^{12}$（页目录所占页数）+$(2^{20} × 4)/2^{12}$（页表所占页数）=$1025$页。
3）需要访问一个二级页表。因为虚拟地址 01000000H 和 01112048H 的最高 10 位的值都是 4，页目录号相同，访问的是同一个二级页表。
【评分说明】用其他方法计算，思路和结果正确同样给分。
', 9, 'Mogullzr', '2026-02-01 23:09:38', 9, NULL, '2026-02-01 23:09:38', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1157', '3627');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '3627');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3628, '2015年408考研真题第47题', '简单', '2015年408真题', '某网络拓扑如题 47 图所示，其中路由器内网接口、DHCP 服务器、WWW 服务器与主机 1 均采用静态 IP 地址配置，相关地址信息见图中标注；主机 2～主机 N 通过 DHCP 服务器动态获取 IP 地址等配置信息。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/8076d18a7e06460d8d6b0d50c37bd15c.svg)
(1) DHCP 服务器可为主机 2～主机 N 动态分配 IP 地址的最大范围是什么？主机 2 使用 DHCP 协议获取 IP 地址的过程中，发送的封装 DHCP Discover 报文的 IP 分组的源 IP 地址和目的 IP 地址分别是什么？(2) 若主机 2 的 ARP 表为空，则该主机访问 Internet 时，发出的第一个以太网帧的目的 MAC 地址是什么？封装主机 2 发往 Internet 的 IP 分组的以太网帧的目的 MAC 地址是什么？(3) 若主机 1 的子网掩码和默认网关分别配置为 255.255.255.0 和 111.123.15.2，则该主机是否能访问 WWW 服务器？是否能访问 Internet？请说明理由。', '[]', '', '1）DHCP 服务器可为 主机 2 ~ 主机 N 动态分配 IP 地址的最大范围是：111.123.15.5 ~ 111.123.15.254；主机 2 发送的封装 DHCP Discover 报文的 IP 分组的源 IP 地址和目的 IP 地址分别是 0.0.0.0 和 255.255.255.255。
2）主机 2 发出的第一个以太网帧的目的 MAC 地址是 ff-ff-ff-f-ff-ff，封装主机 2 发往 Internet 的 P 分组的以太网帧的目的 MAC 地址是 00-a1-a1-a1-a1-a1。
3）主机 1 能访问 WWW 服务器，但不能访问 Internet。.由于主机 1 的子网掩码配置正确而默认网关 IP 地址被错误地配置为 111.123.15.2（正确 IP 地址是 111.123.15.1)，所以主机 1 可以访问在同一个子网内的 WWW 服务器，但当主机 1 访问 Internet 时，主机 1 发出的 IP 分组会被路由到错误的默认网关（111.123.15.2)，从而无法到达目的主机。
', 9, 'Mogullzr', '2026-02-01 23:09:40', 9, NULL, '2026-02-01 23:09:40', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1256', '3628');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1196', '3628');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1257', '3628');
