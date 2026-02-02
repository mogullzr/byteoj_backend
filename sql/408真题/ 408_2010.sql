INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3347, '2010年408考研真题第1题', '简单', '2010年408真题', '若元素 a, b, c, d, e, f 依次进栈，允许进栈、退栈操作交替进行，但不允许连续三次进行退栈操作，则不可能得到的出栈序列是（ ）。
', '[''d, c, e, b, f, a'', ''c, b, d, a, e, f'', ''b, c, a, e, f, d'', ''a, f, e, d, c, b'']', "['D']", 'D</font></strong>
本题考查入栈出栈序列。- 选项 A 可由 in,in,in,in,out,out,in,out,out,in,ot,out 得到；
- 选项 B 可由 in,in,in,out,out,in,out,out,in,out,in,out 得到；
- 选项 C 可由 in,in,out,in,out,out,in,in,out,in,out,out 得到；
- 选项 D 可由 in,out,in,in,in,in,in,out,out,out,out,out 得到，但题意要求不允许连续三次退栈操作，故 D 不可能得到。【另解】先进栈的元素后出栈，进栈顺序为 a,b,c,d,e,f，故连续出栈时的序列必然是按字母表逆序的，若出栈序列中出现了长度大于等于 3 的连续逆序子序列，侧为不符合要求的出栈序列。', 9, 'Mogullzr', '2026-02-02 13:34:22', 9, NULL, '2026-02-02 13:34:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3347');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3348, '2010年408考研真题第2题', '简单', '2010年408真题', '某队列允许在其两端进行入队操作，但仅允许在一端进行出队操作，若元素 a, b, c, d, e 依次入此队列后再进行出队操作，则不可能得到的出队序列是（ ）。
', '[''b, a, c, d, e'', ''d, b, a, c, e'', ''d, b, c, a, e'', ''e, c, b, a, d'']', "['C']", 'C</font></strong>
本题的队列实际上是一个输出受限的双端队列。A 操作：a 左入（或右入）、b 左入、c 右入、d 右入、e 右入。B 操作：a 左入（或右入）、b 左入、c 右入、d 左入、e 右入。D 操作：a 左入（或右入）、b 左入、c 左入、d 右入、e 左入。C 操作：a 左入（或右入）、b 右入、因 d 未出，此时只能进队，c 怎么进都不可能在 b 和 a 之间。【另解】初始时队列为空，第 1 个元素 a 左入（或右入），而第 2 个元素 b 无论是左入还是右入都必与 a 相邻，而选项 D 中 a 与 b 不相邻，不合题意。', 9, 'Mogullzr', '2026-02-02 13:34:22', 9, NULL, '2026-02-02 13:34:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1142', '3348');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3349, '2010年408考研真题第3题', '简单', '2010年408真题', '下列线索二叉树中（用虚线表示线索），符合后序线索树定义的是（ ）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/b6a2ee7b15a343f09ccdc49210dfff94.svg)

', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['D']", 'D</font></strong>
题中所给二叉树的后序序列为 d,b,c,a。结点 d 无前驱和左子树，左链域空，无右子树，右链域指向其后继结点 b；结点 b 无左子树，左链域指向其前驱结点 d；结点 c 无左子树，左链域指向其前驱结点 b，无右子树，右链域指向其后继结点 a。故选 D。', 9, 'Mogullzr', '2026-02-02 13:34:24', 9, NULL, '2026-02-02 13:34:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1143', '3349');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3350, '2010年408考研真题第4题', '简单', '2010年408真题', '在下图所示的平衡二叉树中，插入关键字 48 后得到一棵新平衡二叉树。在新平衡二叉树中，关键字 37 所在结点的左、右子结点中保存的关键字分别是（ ）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/298106c4dcbe4f059a56e36082b37a5a.svg)

', '[''13, 48'', ''24, 48'', ''24, 53'', ''24, 90'']', "['C']", 'C</font></strong>
插入 48 以后，该AVL根结点的平衡因子由 -1 变为 -2, 在最小不平衡子树根结点的右子树 (R) 的左子树 (L) 中插入新结点引起的不平衡属于 RL 型平衡旋转，需要做两次旋转操作（先右旋后左旋）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/58a7769e8bca4e89ad9546081fd0c7e0.svg)
调整后，关键字 37 所在结点的左、右子结点中保存的关键字分别是 24、53。', 9, 'Mogullzr', '2026-02-02 13:34:25', 9, NULL, '2026-02-02 13:34:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1090', '3350');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3351, '2010年408考研真题第5题', '简单', '2010年408真题', '在一棵度数为 4 的树 T 中，若有 20 个度为 4 的结点，10 个度为 3 的结点，1 个度为 2 的结点，10 个度为 1 的结点，则树 T 的叶结点个数是（ ）。
', '[''41'', ''82'', ''113'', ''122'']', "['B']", 'B</font></strong>
设树中度为 i（i=0,1,2,3,4）的结点数分别为$N_{i}$, 树中结点总数为 N，则树中各结点的度之和等于 N-1，即$N = 1 + N_{1} + 2N_{2} + 3N_{3} + 4N_{4} = N_{0} + N_{1} + N_{2} + N_{3} + N_{4}$，根据题设中的数据，即可得到$N_{0} = 82$,即树 T 的叶结点的个数是 82。', 9, 'Mogullzr', '2026-02-02 13:34:26', 9, NULL, '2026-02-02 13:34:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1144', '3351');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3352, '2010年408考研真题第6题', '简单', '2010年408真题', '对 n (n≥2) 个权值均不相同的字符构成哈夫曼树。下列关于该哈夫曼树的叙述中，错误的是（ ）。
', '[''该树一定是一棵完全二叉树'', ''树中一定没有度为\\xa01\\xa0的结点'', ''树中两个权值最小的结点一定是兄弟结点'', ''树中任一非叶结点的权值一定不小于下一层任一结点的权值'']', "['A']", 'A</font></strong>
哈夫曼树为带权路径长度最小的二叉树，不一定是完全二叉树。哈夫曼树中没有度为 1 的结点，B 正确；构造哈夫曼树时，最先选取两个权值最小的结点作为左、右子树构造一棵新的二叉树，C 正确；哈夫曼树中任一非叶结点 P 的权值为其左、右子树根结点权值之和，其权值不小于其左、右子树根结点的权值，在与结点 P 的左、右子树根结点处于同一层的结点中，若存在权值大于结点 P 权值的结点 Q，则结点 Q 的兄弟结点中权值较小的一个应该与结点 P 作为左、右子树构造新的二叉树。综上可知，哈夫曼树中任一非叶结点的权值一定不小于下一层任一结点的权值。', 9, 'Mogullzr', '2026-02-02 13:34:26', 9, NULL, '2026-02-02 13:34:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1145', '3352');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3353, '2010年408考研真题第7题', '简单', '2010年408真题', '若无向图 G=(V,E) 中含有 7 个顶点，要保证图 G 在任何情况下都是连通的，则需要的边数最少是（）。
', '[''6'', ''15'', ''16'', ''21'']', "['C']", 'C</font></strong>
要保证无向图 G 在任何情况下都是连通的，即任意变动图 G 中的边，G 始终保持连通，首先需要 G 的任意 6 个结点构成完全连通子图 G1，需 n(n-1)/2 = 6×(6-1)/2 = 15 条边，然后再添条边将第 7 个结点与 G1 连接起来，共需 16 条边。', 9, 'Mogullzr', '2026-02-02 13:34:26', 9, NULL, '2026-02-02 13:34:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1093', '3353');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3354, '2010年408考研真题第8题', '简单', '2010年408真题', '对下图进行拓扑排序，可以得到不同拓扑序列的个数是（）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/a56963bb6f374d238a7336a4b8628633.svg)

', '[''4'', ''3'', ''2'', ''1'']', "['B']", 'B</font></strong>
拓扑排序的过程如下图所示：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/2ae61abcd82c4c9187408dd035b4fc3a.svg)
可以得到 3 个不同的拓扑序列，分别为 abced、abecd、aebcd。', 9, 'Mogullzr', '2026-02-02 13:34:28', 9, NULL, '2026-02-02 13:34:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1146', '3354');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3355, '2010年408考研真题第9题', '简单', '2010年408真题', '已知一个长度为 16 的顺序表 L，其元素按关键字有序排列。若采用折半查找法查找一个 L 中不存在的元素，则关键字的比较次数最多是（ ）。
', '[''4'', ''5'', ''6'', ''7'']', "['B']", 'B</font></strong>
折半查找在查找成功时进行的关键字比较次数最多为$⌊log_{2}n⌋ + 1$，即判定树的高度；折半查找法在查找不成功时进行的关键字比较次数最多为$⌊log_{2}n⌋ + 1$。题中$n = 16$,因此最多比较$⌊log_{2}16⌋ + 1 = 5$次。也可以画出草图求解。', 9, 'Mogullzr', '2026-02-02 13:34:29', 9, NULL, '2026-02-02 13:34:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1147', '3355');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3356, '2010年408考研真题第10题', '简单', '2010年408真题', '采用递归方式对顺序表进行快速排序。下列关于递归次数的叙述中，正确的是（）。
', '[''递归次数与初始数据的排列次序无关。'', ''每次划分后，先处理较长的分区可以减少递归次数。'', ''每次划分后，先处理较短的分区可以减少递归次数。'', ''递归次数与每次划分后得到的分区的处理顺序无关。'']', "['D']", 'D</font></strong>
快速排序的递归次数与元素的初始排列有关。若每次划分后分区比较平衡，则递归次数少；若划分后分区不平衡，则递归次数多。但快速排序的递归次数与分区处理顺序无关，即先处理较长的分区或先处理较短的分区都不影响递归次数。此外，可以形象地把快速排序的递归调用过程用一个二叉树描述，先处理较长或较短分区，可以想象为交换某一递归结点处的左右子树，这并 不会影响树中的分支数。', 9, 'Mogullzr', '2026-02-02 13:34:29', 9, NULL, '2026-02-02 13:34:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3356');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3357, '2010年408考研真题第11题', '简单', '2010年408真题', '对一组数据 (2，12，16，88，5，10) 进行排序，若前三趟排序结果如下：
第一趟排序结果：2，12，16，5，10，88
第二趟排序结果：2，12，5，10，16，88
第三趟排序结果：2，5，10，12，16，88
则采用的排序方法可能是（）。
', '[''起泡排序'', ''希尔排序'', ''归并排序'', ''基数排序'']', "['A']", 'A</font></strong>
本题考查内部排序的特征，题中所给的三趟排序过程中，每一趟排序是从前往后依次比较，使最大值“沉底”，符合冒泡排序的特点。看第一趟可知仅有 88 被移到最后。- 如果是希尔排序，则 12,88,10 应变为 10,12,88。因此排除希尔排序。
- 如果是归并排序，则长度为 2 的子序列是有序的。因此可排除归并排序。
- 如果是基数排序，则 16,5,10 应变为 10,5,16。因此排除基数排序。提示：对于此类题，先看备选项的排序算法有什么特征，再看题目中的排序过程是否符合这一特征，从而得出答案。一般先从选项中的简单排序方法（插入排序、起泡排序、选择排序）开始判断，若简单排序方法不符合，再判断排序方法（希尔排序、快速排序、堆排序、归并排序）。', 9, 'Mogullzr', '2026-02-02 13:34:29', 9, NULL, '2026-02-02 13:34:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3357');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3358, '2010年408考研真题第12题', '简单', '2010年408真题', '下列选项中，能缩短程序执行时间的措施是（）。
I. 提高 CPU 时钟频率
II.优化数据通路结构
III. 对程序进行编译优化
', '[''仅 I 和 II'', ''仅 I 和 III'', ''仅 II 和 III'', ''I、II 和 III'']', "['D']", 'D</font></strong>
CPU主频越高，完成指令的一个执行步骤所用的时间就越短，执行指令的速度越快，I 正确。数据通路的功能是实现 CPU 内部的运算器和寄存器以及寄存器之间的数据交换，优化数据通路结构，可以有效提高计算机系统的吞吐量，从而加快程序的执行，II 正确。计算机程序需要先转化成机器指令序列才能最终得到执行，通过对程序进行编译优化可以得到更优的指令序列，从而使得程序的执行时间也越短，III 正确。【另解】定量分析：CPU 执行时间 = (程序指令条数×每条指令时钟周期数)/时钟频率。提高时钟频率显然可以缩短 CPU 执行时间；编译优化可能减少程序的指令数或优化指令结构；优化数据通路结构可能减少时钟周期，即提高时钟频率，故选 D。', 9, 'Mogullzr', '2026-02-02 13:34:29', 9, NULL, '2026-02-02 13:34:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1097', '3358');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3359, '2010年408考研真题第13题', '简单', '2010年408真题', '假定有 4 个整数用 8 位补码分别表示 r1=FEH，r2=F2H，r3=90H，r4=F8H，若将运算结果存放在一个 8 位寄存器中，则下列运算中会发生溢出的是（）。
', '[''r1 × r2'', ''r2 × r3'', ''r1 × r4'', ''r2 × r4'']', "['B']", 'B</font></strong>
本题的真正意图是考查补码表示的表示范围，而不是补码的乘法运算。若采用补码乘法规则计算出 4 个选项，是费力不讨好的做法，而且极容易出错。8 位补码所能表示的整数范围为 -128~+127。将 4 个数全部转换为十进制：r1=-2，r2=-14，r3=-112，r4=-8，得 r2×r3=1568，远超出了表示范围，发生溢出。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '3359');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3360, '2010年408考研真题第14题', '简单', '2010年408真题', '假定变量`i`、`f`和`d`的数据类型分别为`int`，`float`和`double`（`int`用补码表示，`float`和`double`分别用`IEEE754`单精度和双精度浮点数格式表示），已`i=785`，`f=1.5678e3`，`d=1.5e100`。若在 32 位机器中执行下列关系表达式，则结果为 “真” 的是（）。
I.`i == (int)(float)i`II.`f == (float)(int)f`
III.`f == (float)(double)f`IV.`(d+f)-d == f`
', '[''仅 I 和 II'', ''仅 I 和 III'', ''仅 II 和 III'', ''仅 III 和 IV'']', "['B']", 'B</font></strong>
本题考查不同长度的类型转换，题中三种数据类型的精度从低到高为 int → float → double。<strong><font color=''#2656b3''>变量说明：</font></strong>- `i = 785`（int）：32 位整数，用补码表示。
- `f = 1.5678e3 = 1567.8`（float）：32 位 IEEE754 单精度浮点数。
- `d = 1.5e100`（double）：64 位 IEEE754 双精度浮点数。<strong><font color=''#2656b3''>对于 I.</font></strong>`i == (int)(float)i`- `i`是整数 785。
- `(float)i`会把整数 785 转为浮点数 —— 精度<strong><font color=''#2656b3''><strong><font color=''#2656b3''>足够准确表示 785</font></strong></font></strong>。
- 再`(int)(float)i`转回整数，仍然是 785。✅<strong><font color=''#2656b3''>结果：真</font></strong><strong><font color=''#2656b3''>对于 II.</font></strong>`f == (float)(int)f`- `f = 1567.8`，转换为`(int)f`得到`1567`（小数部分被截断）。
- 再转回`(float)(int)f`得到 1567.0。
- 显然：1567.8 ≠ 1567.0❌<strong><font color=''#2656b3''>结果：假</font></strong><strong><font color=''#2656b3''>对于 III.</font></strong>`f == (float)(double)f`- `f`是 float（32 位），被转为`double`（64 位）后，再强转回`float`。
- 由于 double 转 float 的精度缩减回原始，值不变。
- 所以整体等价于`f == f`。✅<strong><font color=''#2656b3''>结果：真</font></strong><strong><font color=''#2656b3''>对于 IV.</font></strong>`(d + f) - d == f`- `d = 1.5e100`（极大），`f = 1567.8`（非常小，相比于 d）。
- `d + f ≈ d`（因为`f`精度在`d`这个数量级上被吞掉，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>f 被舍入掉</font></strong></font></strong>）。
- 所以`(d + f) - d ≈ 0`，不等于`f`❌<strong><font color=''#2656b3''>结果：假</font></strong>所以<strong><font color=''#2656b3''>', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1098', '3360');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3361, '2010年408考研真题第15题', '简单', '2010年408真题', '假定用若干个 2kx4 位的芯片组成一个 8kx8 位的存储器，则地址 0B1FH 所在芯片的最小地址是（ ）。
', '[''0000H'', ''0600H'', ''0700H'', ''0800H'']', "['D']", 'D</font></strong>
本题考查主存容量的扩展，用 2Kx4 位的芯片组成一个 8Kx8 位存储器，共需 8 片 2Kx4 位的芯片，分为 4 组，每组由 2 片 2Kx4 位的芯片并联组成 2Kx8 位的芯片，各组芯片的地址分配如下：- 第一组（2 个芯片并联）：0000H ~ 07FFH
- 第二组（2 个芯片并联）：0800H ~ 0FFFH
- 第三组（2 个芯片并联）：1000H ~ 17FFH
- 第四组（2 个芯片并联）：1800H ~ 1FFFH地址 OBIFH 所在的芯片属于第二组，故其所在 芯片的最小地址为 0800H。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1102', '3361');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3362, '2010年408考研真题第16题', '简单', '2010年408真题', '下列有关 RAM 和 ROM 的叙述中，正确的是（ ）。
I. RAM 是易失性存储器，ROM 是非易失性存储器
II. RAM 和 ROM 都采用随机存取方式进行信息访问
III. RAM 和 ROM 都可用作 Cache
IV. RAM 和 ROM 都需要进行刷新
', '[''仅 I 和 II'', ''仅 II 和 III'', ''仅 I,II 和 IV'', ''仅 II，III 和 IV'']', "['A']", 'A</font></strong>
RAM（分为 DRAM 和 SRAM）断电后会失去信息，而 ROM 断电后不会丢失信息，它们都采用随机存取方式（注意，采用随机存取方式的存储器并不一定就是随机存储器）。Cache 一般采用高速的 SRAM 制成，而 ROM 只可读，不能用作 Cache，II 错误。DRAM 需要定期刷新，而 ROM 不需要刷新，故 IV 错误。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1148', '3362');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3363, '2010年408考研真题第17题', '简单', '2010年408真题', '下列命中组合情况中，一次访存过程中不可能发生的是（ ）。
', '[''TLB 未命中，Cache 未命中，Page 未命中'', ''TLB 未命中，Cache 命中，Page 命中'', ''TLB 命中，Cache 未命中，Page 命中'', ''TLB 命中，Cache 命中，Page 未命中'']', "['D']", 'D</font></strong>
Cache中存放的是主存的一部分副本，TLB（快表）中存放的是 Page（页表）的一部分副本。在同时具有虚拟页式存储器（有 TLB）和 Cache 的系统中，CPU 发出访存命令，先查找对应的 Cache 块。- 若 Cache 命中，则说明所需内容在 Cache 内，其所在页面必然已调入主存，因此 Page 必然命中，但 TLB 不一定命中。
- 若 Cache 不命中，并不能说明所需内容未调入主存，和 TLB、Page 命中与否没有联系。但若 TLB 命中，Page 也必然命中；而当 Page 命中，TLB 则未必命中，故 D 不可能发生。【提示】本题看似既涉及虚拟存储器又涉及 Cache，实际上这里并不需要考虑 Cache 命中与否。因为一旦缺页，说明信息不在主存，那么 TLB 中就一定没有该页表项，所以不存在 TLB 命中、Page 缺失的情况，也根本谈不上访问 Cache 是否命中。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1149', '3363');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3364, '2010年408考研真题第18题', '简单', '2010年408真题', '下列寄存器中，汇编语言程序员可见的是（ ）。
', '[''存储器地址寄存器 (MAR)'', ''程序计数器 (PC)'', ''存储器数据寄存器 (MDR)'', ''指令寄存器 (IR)'']', "['B']", 'B</font></strong>
读者首先必须明白“汇编程序员可见”的含义，即汇编语言程序员通过汇编程序可以对某个寄存器进行访问。汇编程序员可以通过指定待执行指令的地址来设置 PC 的值，如转移指令、子程序调用指令等。而 R、MAR、MDR 是 CPU 的内部工作寄存器，程序员无法直接获取和设置它们的值，也无法直接对它们进行其他操作，所以对程序员不可见。【提示】①指令寄存器 R 中的内容总是根据 PC 所取出的指令代码。②在 CPU 的专用寄存器中，只有 PC 和 PSWR 是汇编程序员可见的。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '3364');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3365, '2010年408考研真题第19题', '简单', '2010年408真题', '下列选项中，不会引起指令流水线阻塞的是（ ）。
', '[''数据旁路（转发）'', ''数据相关'', ''条件转移'', ''资源冲突'']', "['A']", 'A</font></strong>
采用流水线方式，相邻或相近的两条指令可能会因为存在某种关联，后一条指令不能按照原指定的时钟周期运行，从而使流水线断流。有三种相关可能引起指令流水线阻塞：①结构相关，又称资源相关；②数据相关；③控制相关，主要由转移指令引起。数据旁路转发，其主要思想是不必待某条指令的执行结果送回到寄存器，再从寄存器中取出该结果，作为下一条指令的源操作数，而是直接将执行结果送到其他指令所需要的地方，这样可以使流水线不发生停顿。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1151', '3365');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3366, '2010年408考研真题第20题', '简单', '2010年408真题', '下列选项中的英文缩写均为总线标准的是（ ）。
', '[''PCI、CRT、USB、EISA'', ''ISA、CPI、VESA、EISA'', ''ISA、SCSI、RAM、MIPS'', ''ISA、EISA、PCI、PCI-Express'']', "['D']", 'D</font></strong>
常见总线标准有：ISA、EISA、VESA、PCI、PCI-Express、AGP、USB、RS-232C 等。A 中的 CRT 是纯平显示器；B 中的 CPI 是每条指令的时钟周期数；C 中的 RAM 是半导体随机存储器、MIPS 是每秒执行多少百万条指令数。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1152', '3366');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3367, '2010年408考研真题第21题', '简单', '2010年408真题', '单级中断系统中，中断服务程序内的执行顺序是（ ）。
I 保护现场    II 开中断
III 关中断    IV 保存断点
V 中断事件处理    VI 恢复现场    VII 中断返回
', '[''I→V→VI→II→VII'', ''III→I→V→VII'', ''III→IV→V→VI→VII'', ''IV→I→V→VI→VI'']', "['A']", 'A</font></strong>
在单级中断系统中，不允许中断嵌套。中断处理过程为：①关中断；②保存断点；③识别中断源；④保存现场；⑤中断事件处理；⑥恢复现场；⑦开中断；⑧中断返回。其中，①③由硬件完成，④⑧由中断服务程序完成，故选 A。【排除法】选项 B、C、D 的第一个任务（保存断点或关中断）都是由中断隐指令完成的，即由硬件直接执行，与中断服务程序无关。', 9, 'Mogullzr', '2026-02-02 13:34:30', 9, NULL, '2026-02-02 13:34:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3367');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3368, '2010年408考研真题第22题', '简单', '2010年408真题', '假定一台计算机的显示存储器用 DRAM 芯片实现，若要求显示分辨率为 1600*1200，颜色深度为 24 位，帧频为 85HZ，显存总带宽的 50% 用来刷新屏幕，则需要的显存总带宽至少约为（ ）。
', '[''245Mbps'', ''979Mbps'', ''1958Mbps'', ''7834Mbps'']', "['D']", 'D</font></strong>
刷新所需带宽 = 分辨率×色深×帧频 = 1600×1200×24bit×85Hz = 3916.8Mbps，显存总带宽的 50% 用来刷屏，于是需要的显存总带宽为 3916.8Mbps/0.5 = 7833.6Mbps ≈ 7834Mbps。', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1148', '3368');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3369, '2010年408考研真题第23题', '简单', '2010年408真题', '下列选项中，操作系统提供给应用程序的接口是（  ）。
', '[''系统调用'', ''中断'', ''库函数'', ''原语'']', "['A']", 'A</font></strong>
操作系统提供的接口主要有两类：命令接口和系统调用。系统调用是能完成特定功能的子程序，当应用程序请求操作系统提供某种服务时，便调用具有相应功能的系统调用。库函数则是高级语言中提供的与系统调用对应的函数（也有些库函数与系统调用无关），目的是隐藏访管指令的细节，使系统调用更为方便、抽象。但要注意，库函数属于用户程序而非系统调用，是系统调用的上层。', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1110', '3369');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3370, '2010年408考研真题第24题', '简单', '2010年408真题', '下列选项中，导致创建新进程的操作是（ ）。
I.用户登录成功    II.设备分配    III.启动程序执行
', '[''仅 I 和 II'', ''仅 II 和 III'', ''仅 I 和 III'', ''I、II 和 III'']', "['C']", 'C</font></strong>
引起进程创建的事件有：用户登录、作业调度、提供服务、应用请求等。I. 用户登录成功后，系统要为此创建一个用户管理的进程，包括用户桌面、环境等。所有的用户进程会在该进程下创建和管理。II. 设备分配是通过在系统中设置相应的数据结构实现的，不需要创建进程。III. 启动程序执行是典型的引起创建进程的事件。', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1153', '3370');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3371, '2010年408考研真题第25题', '简单', '2010年408真题', '设与某资源关联的信号量初值为 3，当前值为 1。若 M 表示该资源的可用个数，N 表示等待该资源的进程数，则 M、N 分别是（ ）。
', '[''0、1'', ''1、0'', ''1、2'', ''2、0'']', "['B']", 'B</font></strong>
信号量表示相关资源的当前可用数量。当信号量 K>0 时，表示还有 K 个相关资源可用，所以该资源的可用个数是 1。而当信号量 K<0 时，表示有 |K| 个进程在等待该资源。由于资源有剩余，可见没有其他进程等待使用该资源，故进程数为 0。', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1154', '3371');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3372, '2010年408考研真题第26题', '简单', '2010年408真题', '下列选项中，降低进程优先级的合理时机是（  ）。
', '[''进程时间片用完'', ''进程刚完成 I/O 操作，进入就绪队列'', ''进程长期处于就绪队列'', ''进程从就绪状态转为运行状态'']', "['A']", 'A</font></strong>
进程时间片用完，可降低其优先级以让别的进程被调度进入执行状态。B 选项中进程刚完成 I/O，进入就绪队列等待被处理机调度，为了让其尽快处理 I/O 结果，故应提高优先权。C 选项中进程长期处于就绪队列，为不至于产生饥饿现象，也应适当提高优先级。D 选项中进程的优先级不应该在此时降低，而应在时间片用完后再降低。', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '3372');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3373, '2010年408考研真题第27题', '简单', '2010年408真题', '进程$P_{0}$和$P_{1}$的共享变量定义及其初值为

```c
boolean flag[2];
int turn = 0;
flag[0] = FALSE;
flag[1] = FALSE;
```

若进程$P_{0}$和$P_{1}$访问临界资源的类 C 伪代码实现如下：
进程 P0
```c
void P0() {
    while (TRUE) {
        flag[0] = TRUE;
        turn = 1;
        while (flag[1] && (turn == 1));
        临界区；
        flag[0] = FALSE;
    }
}
```

进程 P1
```c
void P1() {
    while (TRUE) {
        flag[1] = TRUE;
        turn = 0;
        while (flag[0] && (turn == 0));
        临界区；
        flag[1] = FALSE;
    }
}
```


则并发执行进程$P_{0}$和$P_{1}$时产生的情形是（ ）。
', '[''不能保证进程互斥进入临界区，会出现“饥饿”现象'', ''不能保证进程互斥进入临界区，不会出现“饥饿”现象'', ''能保证进程互斥进入临界区，会出现“饥饿”现象'', ''能保证进程互斥进入临界区，不会出现“饥饿”现象'']', "['D']", 'D</font></strong>
这是Peterson 算法的实际实现，保证进入临界区的进程合理安全。该算法为了防止两个进程为进入临界区而无限期等待，设置变量 u，表示不允许进入临界区的编号，每个进程在先设置自己标志后再设置 u 标志，不允许另一个进程进入，这时，再同时检测另一个进程状态标志和不允许进入表示，这样可以保证当两个进程同时要求进入临界区时只允许一个进程进入临界区。保存的是较晚的一次赋值，因此较晚的进程等待，较早的进程进入。先到先入，后到等待，从而完成临界区访问的要求。其实这里可以想象为两个人进门，每个人进门前都会和对方客套一句“你先走”。如果进门时没别人，就当和空气说句废话，然后大步登门入室；如果两人同时进门，就互相请先，但各自只客套一次，所以先客套的人请完对方，就等着对方请自己，然后光明正大地进门。', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1155', '3373');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3374, '2010年408考研真题第28题', '简单', '2010年408真题', '某基于动态分区存储管理的计算机，其主存容量为 55MB（初始为空闲），采用最佳适配 (Best Fit) 算法，分配和释放的顺序为：分配 15MB、分配 30MB、释放 15MB、分配 8MB、分配 6MB，此时主存中最大空闲分区的大小是（ ）。
', '[''7MB'', ''9MB'', ''10MB'', ''15MB'']', "['B']", 'B</font></strong>
最佳适应算法是指每次为作业分配内存空间时，总是找到能满足空间大小需要的最小的空闲分区给作业，可以产生最小的内存空闲分区，如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/7840af3ceab348bebed68b94f7f23ad4.svg)
', 9, 'Mogullzr', '2026-02-02 13:34:31', 9, NULL, '2026-02-02 13:34:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1156', '3374');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3375, '2010年408考研真题第29题', '简单', '2010年408真题', '某计算机采用二级页表的分页存储管理方式，按字节编址，页大小为$2^{10}$B，页表项大小为 2B，逻辑地址结构为`| 页目录号 | 页号 |页内偏移量 |`。逻辑地址空间大小为$2^{16}$页，则表示整个逻辑地址空间的页目录表中包含表项的个数至少是（）。
', '[''64'', ''128'', ''256'', ''512'']', "['B']", 'B</font></strong>
页大小为$2^{10}$B，页表项大小为 2B，故一页可以存放$2^{9}$个页表项，逻辑地址空间大小为$2^{16}$页，即共需$2^{16}$个页表项，则需要$2^{16}/2^{9} = 2^{7} = 128$个页面保存页表项，即页目录表中包含表项的个数至少是$128$。', 9, 'Mogullzr', '2026-02-02 13:34:33', 9, NULL, '2026-02-02 13:34:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1157', '3375');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3376, '2010年408考研真题第30题', '简单', '2010年408真题', '设文件索引结点中有 7 个地址项，其中 4 个地址项是直接地址索引，2 个地址项是一级间接地址索引，1 个地址项是二级间接地址索引，每个地址项大小为 4B，若磁盘索引块和磁盘数据块大小均为 256B，则可表示的单个文件最大长度是（）。
', '[''33KB'', ''519KB'', ''1057KB'', ''1651KB'']', "['C']", 'C</font></strong>
每个磁盘索引块和磁盘数据块大小均为 256B，每个磁盘索引块有 256/4=64 个地址项。因
此，4 个直接地址索引指向的数据块大小为 4×256B;2 个一级间接索引包含的直接地址索引数
为 2×(256/4)，即其指向的数据块大小为 2×(256/4)×256B。1 个二级间接索引所包含的直接地址
索引数为 (256/4)×(256/4)，即其所指向的数据块大小为 (256/4)×(256/4)×256B。即 7 个地址项所
指向的数据块总大小为 4×256+2×(256/4)×256+(256/4)×(256/4)×256=1082368B=1057KB。', 9, 'Mogullzr', '2026-02-02 13:34:33', 9, NULL, '2026-02-02 13:34:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3376');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3377, '2010年408考研真题第31题', '简单', '2010年408真题', '设置当前工作目录的的主要目的是（ ）。
', '[''节省外存空间'', ''节省内存空间'', ''加快文件的检索速度'', ''加快文件的读/写速度'']', "['C']", 'C</font></strong>
当一个文件系统含有多级目录时，每访问一个文件，都要使用从树根开始到树叶为止、包括各中间结点名的全路径名。当前目录又称工作目录，进程对各个文件的访问都相对于当前目录进行，而不需要从根目录一层一层的检索，加快了文件的检索速度。选项 A 和 B 都与相对目录无关；选项 D，文件的读/写速度取决于磁盘的性能。', 9, 'Mogullzr', '2026-02-02 13:34:33', 9, NULL, '2026-02-02 13:34:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1158', '3377');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3378, '2010年408考研真题第32题', '简单', '2010年408真题', '本地用户通过键盘登录系统时，首先获得键盘输入信息的程序是（ ）。
', '[''命令解释程序'', ''中断处理程序'', ''系统调用服务程序'', ''用户登录程序'']', "['B']", 'B</font></strong>
键盘是典型的通过中断 I/O 方式工作的外设，当用户输入信息时，计算机响应中断并通过中断处理程序获得输入信息。', 9, 'Mogullzr', '2026-02-02 13:34:33', 9, NULL, '2026-02-02 13:34:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3378');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3379, '2010年408考研真题第33题', '简单', '2010年408真题', '下列选项中，不属于网络体系结构所描述的内容是（ ）。
', '[''网络的层次'', ''每一层使用的协议'', ''协议的内部实现细节'', ''每一层必须完成的功能'']', "['C']", 'C</font></strong>
计算机网络的各层及其协议的集合称为体系结构，分层就涉及对各层功能的划分，因此 A、B、D 正确。体系结构是抽象的，它不包括各层协议的具体实现细节。《计算机网络》中在讲解网络层次时，仅有讲各层的协议和功能，而内部实现细节没有提及。内部实现细节是由具体设备厂家来确定的。', 9, 'Mogullzr', '2026-02-02 13:34:33', 9, NULL, '2026-02-02 13:34:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1159', '3379');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3380, '2010年408考研真题第34题', '简单', '2010年408真题', '在下图所示的采用 “存储-转发” 方式的分组交换网络中，所有链路的数据传输速率为 100 Mbps，分组大小为 1000 B，其中分组头大小为 20 B。若主机 H1 向主机 H2 发送一个大小为 980 000 B 的文件，则在不考虑分组拆装时间和传播延迟的情况下，从 H1 发送开始到 H2 接收完为止，需要的时间至少是（ ）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/506ccb28f15a4eb089d9591dc418d696.svg)

', '[''80 ms'', ''80.08 ms'', ''80.16 ms'', ''80.24 ms'']', "['C']", 'C</font></strong>
本题考查交换机存储转发的交换方式。分组大小为 1000B，其中分组头大小为 20B，则分组携带的数据大小为 980B，文件长度为 980000B，需拆分为 1000 个分组，加上头部后，每个分组大小为 1000B，总共需要传送的数据量大小为 1MB。由于所有链路的数据传输速度相同，因此文件传输经过最短路径时所需时间最
少，最短路径经过 2 个分组交换机。当$t = 1M × 8/(100Mbps) = 80ms$时，H1 发送完最后一个比特。当 H1 发送完最后一个分组时，该分组需要经过 2 个分组交换机的转发，在 2 次转发完成后，所有分组均到达 H2。每次转发的时间为$t_{0} = 1K × 8/(100Mbps) = 0.08ms$。所以，在不考虑分组拆装时间和传播延迟的情况下，当$t = 80ms + 2t_{0} = 80.16ms$时，H2 接收完文件，即所需的时间至少为 80.16ms。', 9, 'Mogullzr', '2026-02-02 13:34:34', 9, NULL, '2026-02-02 13:34:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1160', '3380');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3381, '2010年408考研真题第35题', '简单', '2010年408真题', '某自治系统采用 RIP 协议，若该自治系统内的路由器 R1 收到其邻居路由器 R2 的距离矢量中包含信息<net1,16>，则可能得出的结论是 ( )。
', '[''R2 可以经过 R1 到达 net1，跳数为 17'', ''R2 可以到达 net1，跳数为 16'', ''R1 可以经过 R2 到达 net1，跳数为 17'', ''R1 不能经过 R2 到达 net1'']', "['D']", 'D</font></strong>
R1 在收到信息并更新路由表后，若需要经过 R2 到达 net1，则其跳数为 17，由于距离为 16 表示不可达，因此 R1 不能经过 R2 到达 net1，R2 也不可能到达 net1。B、C 错误，D 正确。而题目中并未给出 R1 向 R2 发送的信息，因此 A 也不正确。', 9, 'Mogullzr', '2026-02-02 13:34:34', 9, NULL, '2026-02-02 13:34:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1161', '3381');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3382, '2010年408考研真题第36题', '简单', '2010年408真题', '若路由器 R 因为拥塞丢弃 IP 分组，则此时 R 可向发出该 IP 分组的源主机发送的 ICMP 报文类型是（ ）。
', '[''路由重定向'', ''目的不可达'', ''源点抑制'', ''超时'']', "['C']", 'C</font></strong>
ICMP差错报文报文有 5 种：终点不可达、源点抑制、时间超过、参数问题、改变路由（重定向），其中源点抑制是当路由器或主机由于拥塞而丢弃数据报时，就向源点发送源点抑制报文，使源点知道应当把数据报的发送速率放慢。', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1162', '3382');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3383, '2010年408考研真题第37题', '简单', '2010年408真题', '某网络的 IP 地址空间为 192.168.5.0/24，采用定长子网划分，子网掩码为 255.255.255.248，则该网络中的最大子网个数、每个子网内的最大可分配地址个数分别是（ ）。
', '[''32, 8'', ''32, 6'', ''8, 32'', ''8, 30'']', "['B']", 'B</font></strong>
由于该网络的 IP 地址为 192.168.5.0/24，网络号为前 24 位，后 8 位为子网号 + 主机号。子网掩码为 255.255.255.248，第 4 个字节 248 转换成二进制为 11111000，因此后 8 位中，前 5 位用于子网号，在 CIDR 中可以表示$2^{5} = 32$个子网；后 3 位用于主机号，除去全 0 和全 1 的情况，可以表示$2^{3} - 2 = 6$个主机地址。', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1140', '3383');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3384, '2010年408考研真题第38题', '简单', '2010年408真题', '下列网络设备中，能够抑制广播风暴的是（ ）。
I. 中继器 II. 集线器 III. 网桥 IV. 路由器
', '[''仅 I 和 II'', ''仅 III'', ''仅 III 和 IV'', ''仅 IV'']', "['D']", 'D</font></strong>
参考网络设备对比，中继器和集线器工作在物理层，既不隔离冲突域也不隔离广播域。为了解决冲突域的问题，人们利用网桥和交换机来分隔互联网的各个网段中的通信量，建立多个分离的冲突域，但当网桥和交换机接收到一个未知转发信息的数据帧时，为了保证该帧能被目的结点正确接收，将该帧从所有的端口广播出去，可以看出网桥和交换机的冲突域等于端口个数，广播域为 1。路由器工作在网络层，既隔离冲突域，也隔离广播域。【提示】广播风暴产生于网络层，因此只有网络层设备才能抑制。链路层设备和物理层设备对网络层的数据包是透明传输，对是否为广播报文是不可知的。', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1163', '3384');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3385, '2010年408考研真题第39题', '简单', '2010年408真题', '主机甲和主机乙之间已建立了一个 TCP 连接，TCP 最大段长度为 1000 字节。若主机甲的当前拥塞窗口为 4000 字节，在主机甲向主机乙连续发送两个最大段后，成功收到主机乙发送的第一个段的确认段，确认段中通告的接收窗口大小为 2000 字节，则此时主机甲还可以向主机乙发送的最大字节数是（ ）。
', '[''1000'', ''2000'', ''3000'', ''4000'']', "['A']", 'A</font></strong>
发送窗口大小的上限值取接收方窗口和拥塞窗口这两个值中较小的一个，于是此时发送方的发送窗口为 min{4000,2000}=2000B。由于发送方还没有收到第二个最大段的确认，所以此时甲还可以向乙发送的最大字节数为 2000-1000=1000B。', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1127', '3385');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3386, '2010年408考研真题第40题', '简单', '2010年408真题', '如果本地域名服务器无缓存，当采用递归方法解析另一网络某主机域名时，用户主机、本地域名服务器发送的域名请求消息数分别为（ ）。
', '[''一条、一条'', ''一条、多条'', ''多条、一条'', ''多条、多条'']', "['A']", 'A</font></strong>
当采用递归查询时，如果主机所询问的本地域名服务器不知道被查询域名的 IP 地址，那么本地域名服务器就以 DNS 客户的身份，向其他根域名服务器继续发出查询请求报文，而不是让该主机自己进行下一步的查询。因此，这种方法用户主机和本地域名服务器发送的域名请求条数均为 1 条。因此选 A。', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1164', '3386');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3387, '2010年408考研真题第41题', '简单', '2010年408真题', '将关键字序列 ⟨7,8,30,11,18,9,14⟩ 散列存储到散列表中。散列表的存储空间是一个下标从 0 开始的一维数组，散列函数为 H(key)=(key×3)mod7 ，处理冲突采用线性探测再散列法，要求装填（载）因子为 0.7 。
(1) 请画出所构造的散列表。
(2) 分别计算等概率情况下查找成功和查找不成功的平均查找长度。
', '[]', '', '1）由装载因子为 0.7, 数据总数为 7, 得一维数组大小为 7/0.7= 10, 数组下标为 0~9。所构造的散列函数值见下表。

| key | 7 | 8 | 30 | 11 | 18 | 9 | 14 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| H(key) | 0 | 3 | 6 | 5 | 5 | 6 | 0 |

采用线性探测再散列法处理冲突，所构造的散列表见下表。

| 地址 | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 关键词 | 7 | 14 |  | 8 |  | 11 | 30 | 18 | 9 |  |

2）查找成功时，是根据每个元素查找次数来计算平均长度的，在等概率的情况下，各关键字的查找次数见下表。

| key | 7 | 8 | 30 | 11 | 18 | 9 | 14 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 次数 | 1 | 1 | 1 | 1 | 3 | 3 | 2 |

$ASL_{成功}$= 查找次数/元素个数 = (1 + 2 + 1 + 1 + 1 + 3 + 3)/7= 12/7。
这里要特别防止惯性思维。查找失败时，是根据查找失败位置计算平均次数，根据散列函数 mod7，初始只可能在 06 的位置。等概率情况下，查找 06 位置查找失败的查找次数见下表。

| H(key) | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 次数 | 3 | 2 | 1 | 2 | 1 | 5 | 4 |

$ASL_{不成功}$= 查找次数/散列后地址个数 = (3 + 2 + 1 + 2 + 1 + 5 + 4)/7= 18/7。
', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1165', '3387');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1166', '3387');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3388, '2010年408考研真题第42题', '简单', '2010年408真题', '设将$n$($n > 1$) 个整数存放到一维数组 R 中。试设计一个在时间和空间两方面都尽可能高效的算法。将 R 中保存的序列循环左移$p(0 < p < N$) 个位置，即将 R 中的数据由$< x_{0}, x_{1}, ⋯  , x_{n-1} >$变换为$< x_{p}, x_{p+1}, ⋯  , x_{n-1}, x_{0}, x_{1}, ⋯  , x_{p-1} >$。要求：
(1) 给出算法的基本设计思想。
(2) 根据设计思想，采用 C 或 C++ 或 Java 语言描述，关键之处给出注释。
(3) 说明你所设计算法的时间复杂度和空间复杂度。
', '[]', '', '1）算法的基本设计思想
可以将这个问题视为把数组$ab$转换成数组$ba$（$a$代表数组的前$p$个元素，$b$代表数组中余下的$n - p$个元素），先将$a$逆置得到$a^{−1}b$, 再将$b$逆置得到$a^{−1}b^{−1}$，最后将整个$a^{−1}b^{−1}$逆置得到$(a^{−1}b^{−1})−1 = ba$。设 Reverse 函数执行将数组元素逆置的操作，对`abcdefgh`向左循环移动 3(p=3) 个位置的过程如下：
`Reverse(0,p-1)`得到`cbadefgh`:
`Reverse(p,n-l)`得到`cbahgfed`;
`Reverse(0,n-l)`得到`defghabc`,
注：Reverse 中，两个参数分别表示数组中待转换元素的始末位置。
2）使用 C 语言描述算法如下：

```c
void reverse(int a[], int from, int to) {
  int i = from;
  int j = to;
  while (i < j) {
    int tmp = a[i];
    a[i] = a[j];
    a[j] = tmp;
    i++;
    j--;
  }
}

void loopMove(int a[], int n, int p) {
  if (p < 0) {
    return;
  }
  p = p % n;
  reverse(a, 0, p-1);
  reverse(a, p, n-1);
  reverse(a, 0, n-1);
}
```
3）上述算法中 3 个 Reverse 函数的时间复杂度分别为$O(p/2)$、$O((n - p)/2)$和$O(n/2)$，故所设计的算法的时间复杂度为$O(n)$，空间复杂度为$O(1)$。
【另解】借助辅助数组来实现。
算法思想：创建大小为$p$的辅助数组$S$，将$R$中前$p$个整数依次暂存在$S$中，同时将$R$中后$p$个整数左移，然后将$S$中暂存的$p$个数依次放回到$R$中的后续单元。
时间复杂度为$O(n)$, 空间复杂度为$O(p)$。
', 9, 'Mogullzr', '2026-02-02 13:34:35', 9, NULL, '2026-02-02 13:34:35', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1167', '3388');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3389, '2010年408考研真题第43题', '简单', '2010年408真题', '某计算机字长为 16 位，主存地址空间大小为 128KB，按字编址。采用单字长指令格式，指令各字段定义如下：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/89076773955c4418904b8a046546f848.svg)

转移指令采用相对寻址方式，相对偏移量用补码表示，寻址方式定义如下：
请回答下列问题：
(1) 该指令系统最多可有多少条指令？该计算机最多有多少个通用寄存器？存储器地址寄存器（MAR）和存储器数据寄存器（MDR）至少各需要多少位？
(2) 转移指令的目标地址范围是多少？
(3) 若操作码 0010B 表示加法操作（助记符为 add），寄存器 R4 和 R5 的编号分别为 100B 和 101B，R4 的内容为 1234H，R5 的内容为 5678H，地址 1234H 中的内容为 5678H，地址 5678H 中的内容为 1234H，则汇编语言为“add (R4), (R5)+”（逗号前为源操作数，逗号后为目的操作数）对应的机器码是什么（用十六进制表示）？该指令执行后，哪些寄存器和存储单元中的内容会改变？改变后的内容是什么？
', '[]', '', '1）操作码占 4 位，则该指令系统最多可有$2^{4} = 16$条指令。操作数占 6 位，其中寻址方式占 3 位、寄存器编号占 3 位，因此该机最多有$2^{3} = 8$个通用寄存器。主存地址空间大小为 128KB，按字编址，字长为 16 位，共有 128KB/2B =$2^{16}$个存储单元，因此 MAR 至少为 16 位；因为字长为 16 位，故 MDR 至少为 16 位。
2）寄存器字长为 16 位，PC 和 Rn 可表示的地址范围均为$0 ∼ 2^{16} - 1$，而主存地址空间为$2^{16}$，故转移指令的目标地址范围为 0000H~FFFFH（$0 ∼ 2^{16} - 1$）。
3）汇编语句“add(R4),(R5)+”，对应的机器码为

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 字段 | OP | Ms | Rs | Md | Rd |
| 内容 | 0010 | 001 | 100 | 010 | 101 |
| 说明 | add | 寄存器间接 | R4 | 寄存器间接，自增 | R5 |

将对应的机器码写成十六进制形式为 0010 0011 0001 0101B = 2315H。
该指令的功能是将 R4 的内容所指存储单元的数据与 R5 的内容所指存储单元的数据相加，并将结果送入 R5 的内容所指存储单元中。(R4)=1234H，(1234H)=5678H，(R5)=5678H，(5678H)=1234H；执行加法操作 5678H+1234H=68ACH，之后 R5 自增。
该指令执行后，R5 和存储单元 5678H 的内容会改变，R5 的内容从 5678H 变为 5679H，存储单元 5678H 中的内容变为该指令的计算结果 68ACH。
【注意】第 3 问中两个操作数的存储地址和数值有点令人晕头，请读者务必保持清醒。
', 9, 'Mogullzr', '2026-02-02 13:34:37', 9, NULL, '2026-02-02 13:34:37', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1168', '3389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1103', '3389');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3390, '2010年408考研真题第44题', '简单', '2010年408真题', '某计算机的主存地址空间大小为 256MB，按字节编址。指令 Cache 和数据 Cache 分离，均有 8 个 Cache 行，每个 Cache 行大小为 64B，数据 Cache 采用直接映射方式。现有两个功能相同的程序 A 和 B，其伪代码如下所示：

```c
// 程序 A
int a[256][256];
.....
int sum_array1()
{
  int i, j, sum=0;
  for (i=0; i<256; i++)
    for (j=0; j<256; j++)
      sum += a[i][j];
  return sum;
}
```


```c
// 程序 B
int a[256][256];
.....
int sum_array2()
{
  int i, j, sum=0;
  for (j=0; j<256; j++)
    for (i=0; i<256; i++)
      sum += a[i][j];
  return sum;
}
```


假定 int 类型数据用 32 位补码表示，程序编译时 i，j，sum 均分配在寄存器中，数组 a 按行优先方式存放，其首地址为 320（十进制数）。请回答下列问题，要求说明理由或给出计算过程。
(1) 若不考虑用于 cache 一致性维护和替换算法的控制位，则数据 Cache 的总容量为多少？
(2) 数组元素 a[0][31] 和 a[1][1] 各自所在的主存块对应的 Cache 行号分别是多少（Cache 行号从 0 开始）？
(3) 程序 A 和 B 的数据访问命中率各是多少？哪个程序的执行时间更短？
', '[]', '', '1）每个 Cache 行对应一个标记项，如下所示：
`| 有效位 | 脏位 | 替换控制位 | 标记位 |`
不考虑用于 Cache 一致性维护和替换算法的控制位。地址总长度为 28 位（$2^{28} = 256$M），块内地址 6 位（$2^{6} = 64$），Cache 块号 3 位（$2^{3} = 8$），故 Tag 的位数为 28-6-3=19 位，还需使用一个有效位，故题中数据 Cache 行的结构如下图所示。
html1 bit19 bits64B = 512 bits有效位tag 标记每行存储的数据
数据 Cache 共有 8 行，因此数据 Cache 的 总容量为$8 × (64 + 20/8)$B= 532B。
2）数组 a 在主存的存放位置及其 与 Cache 之间的映射关系如下图所示。
html行号0567a[0][0]· · ·a[0][15]· · ·a[0][16]· · ·a[0][31]a[0][255]· · ·a[1][0]· · ·a[1][15]· · ·· · ·a[1][255]· · ·a[255][255]Cache主存块号3205621
数组按行优先方式存放，首地址为 320，数组元素占 4 字节。a[0][31] 所在的主存块对应的 Cache 行号为$(320 + 31 × 4)/64 = 6$；a[1][1] 所在的主存块对应的 Cache 行号为$(320 + 256 × 4 + 1 × 4)/64%8 = 5$。
3）数组 a 的大小为$256 × 256 × 4B = 2^{18}$B, 占用$2^{18}/64 = 2^{12}$个主存块，按行优先存放，程序$A$逐行访问数组，共需访问的次数为$2^{16}$次，未命中次数为$2^{12}$次（即每个字块的第一个数未命中），因此程序$A$的命中率为$(2^{16} - 2^{12})/2^{16} × 100% = 93.75%$。
【另解】数组 a 按行存放，程序 A 按行存取。每个字块中存放 16 个 int 型数据，除访问的第一个不命中，随后的 15 个全都命中，访问全部字块都符合这一规律，且数组大小为字块大小的整数倍，故程序 A 的命中率为 15/16=93.75%。
程序 B 逐列访问数组 a，Cache 总容量为 64Bx8=512B，数组 a 一行的大小为 1KB，正好是 Cache 容量的 2 倍，可知不同行的同一列数组元素使用的是同一个 Cache 单元，故逐列访问每个数据时，都会将之前的字块置换出，也即每次访问都不会命中，命中率为 0。由于从 Cache 读数据比从主存读数据快很多，所以程序 A 的执行比程序 B 快得多。
注意：本题考查 Cache 容量计算，直接映射方式的地址计算，以及命中率计算（注意：行优先遍历与列优先遍历命中率差别很大）。
', 9, 'Mogullzr', '2026-02-02 13:34:37', 9, NULL, '2026-02-02 13:34:37', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1169', '3390');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3391, '2010年408考研真题第45题', '简单', '2010年408真题', '假设计算机系统采用 CSCAN（循环扫描）磁盘调度策略，使用 2KB 的内存空间记录 16384 个磁盘块的空闲状态。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/841023378328453ebc7e29e9d84ee97c.svg)

(1) 请说明在上述条件如何进行磁盘块空闲状态的管理。
(2) 设某单面磁盘的旋转速度为 6000rpm，每个磁道有 100 个扇区，相邻磁道间的平均移动的时间为 1ms。若在某时刻，磁头位于 100 号磁道处，并沿着磁道号增大的方向移动（见下图），磁道号的请求队列为 50, 90, 30, 120，对请求队列中的每个磁道需读取 1 个随机分布的扇区，则读完这个扇区点共需要多少时间？需要给出计算过程。
(3) 如果将磁盘替换为随机访问的 Flash 半导体存储器（如 U 盘、SSD 等），是否有比 CSCAN 更高效的磁盘调度策略？若有，给出磁盘调度策略的名称并说明理由；若无，说明理由。
', '[]', '', '1）用位图表示磁盘的空闲状态。每位表示一个磁盘块的空闲状态，共需要 16384/32 = 512字 = 512×4字节 = 2KB，正好可放在系统提供的内存中。
2）采用C-SCAN调度算法，访问磁道的顺序和移动的磁道数见下表。

| 被访问的下一个磁道号 | 移动距离（磁道数） |
| --- | --- |
| 120 | 20 |
| 30 | 90 |
| 50 | 20 |
| 90 | 40 |

移动的磁道数为 20+90+20+40 = 170，故总的移动磁道时间为 170ms。
由于转速为 6000rpm，则平均旋转延迟为 5ms，总的旋转延迟时间 = 20ms。
由于转速为 6000rpm，则读取一个磁道上一个扇区的平均读取时间为 0.1ms，总的读取扇区的时间为 0.4ms。
综上，读取上述磁道上 所有扇区所花的总时间为 190.4ms。
3）采用FCFS调度策略更高效。因为 Flash 半导体存储器的物理结构不需要考虑寻道时间和旋转延迟，可直接按 I/O 请求的先后顺序服务。
', 9, 'Mogullzr', '2026-02-02 13:34:38', 9, NULL, '2026-02-02 13:34:38', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1170', '3391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1116', '3391');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3392, '2010年408考研真题第46题', '简单', '2010年408真题', '设某计算机的逻辑地址空间和物理地址空间均为 64KB，按字节编址。若某进程最多需要 6 页（Page）数据存储空间，页的大小为 1KB，操作系统采用固定分配局部置换策略为此进程分配 4 个页框（Page Frame）。在时刻 260 前该进程访问情况见下表（访问位即使用位）。
当该进程执行到时刻 260 时，要访问逻辑地址为 17CAH 的数据。请回答下列问题：
(1) 该逻辑地址对应的页号是多少？
(2) 若采用先进先出 (FIFO) 置换算法，该逻辑地址对应的物理地址？要求给出计算过程。
(3) 采用时钟 (CLOCK) 置换算法，该逻辑地址对应的物理地址是多少？要求给出计算过程（设搜索下一页的指针按顺时针方向移动，且指向当前 2 号页框，示意图如下图）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/d7416bed80a445b49497a1885a8a0891.svg)

', '[]', '', '1） 由于该计算机的逻辑地址空间和物理地址空间均为$64KB = 2^{16}$B，按字节编址，且页的大小为$1KB = 2^{10}$B，故逻辑地址和物理地址的地址格式均为
`| 页框号（6 位） | 页内偏移（10 位） |`
17CAH = 0001 0111 1100 1010B，可知该逻辑地址的页号为 000101B = 5。
2） 根据FIFO算法，需要替换装入时间最早的页，故需要置换装入时间最早的 0 号页，即将 5 号页装入 7 号页框中，所以物理地址为 0001 1111 1100 1010B = 1FCAH。
3） 根据Clock算法，如果当前指针所指页框的使用位为 0，则替换该页；否则将使用位清零，并将指针指向下一个页框，继续查找。根据题设和示意图，将从 2 号页框开始，前 4 次查找页框号的顺序为 2→4→7→9，并将对应页框的使用位清零。在第 5 次查找中，指针指向 2 号页框，因 2 号页框的使用位为 0，故淘汰 2 号页框对应的 2 号页，把 5 号页装入 2 号页框中，并将对应使用位设置为 1，所以对应的物理地址为 0000 1011 1100 1010B = 0BCAH。
', 9, 'Mogullzr', '2026-02-02 13:34:39', 9, NULL, '2026-02-02 13:34:39', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1171', '3392');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1137', '3392');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3393, '2010年408考研真题第47题', '简单', '2010年408真题', '某局域网采用 CSMA/CD 协议实现介质访问控制，数据传输速率为 10 Mbps，主机甲和主机乙之间的距离为 2 km，信号传播速度是 200 000 km/s。请回答下列问题，要求说明理由或写出计算过程。
(1) 若主机甲和主机乙发送数据时发生冲突，则从开始发送数据时刻起，到两台主机均检测到冲突时刻止，最短需经过多长时间？最长需经过多长时间（假设主机甲和主机乙发送数据过程中，其他主机不发送数据）？
(2) 若网络不存在任何冲突与差错，主机甲总是以标准的最长以太网数据帧（1518 字节）向主机乙发送数据，主机乙每成功收到一个数据帧后立即向主机甲发送一个 64 字节的确认帧，主机甲收到确认帧后方可发送下一个数据帧。此时主机甲的有效数据传输速率是多少（不考虑以太网的前导码）？
', '[]', '', '1）显然当甲和乙同时向对方发送数据时，信号在信道中发生冲突后，冲突信号继续向两个方向传播。这种情况下两台主机均检测到冲突需要经过的时间最短：
$T_{(a)} = 1km/200000km/s × 2 = 0.01ms = 单程传播时延t_{0}$
设甲先发送数据，当数据即将到达乙时，乙也开始发送数据，此时乙将立刻检测到冲突，而甲要检测到冲突还需等待冲突信号从乙传播到甲。两台主机均检测到冲突的时间最长：
$T_{(b)} = 2km/200000km/s × 2 = 0.02ms = 双程传播时延2t_{0}$
html甲甲乙乙甲乙甲甲乙乙甲乙(a) 时间最短的情况(b) 时间最长的情况
2）甲发送一个数据帧的时间，即发送时延$t_{1} = 1518 × 8bit/(10Mbps) = 1.2144ms$；乙每成功收到一个数据帧后，向甲发送一个确认帧，确认帧的发送时延$t_{2} = 64 × 8bit/10Mbps = 0.0512ms$；主机甲收到确认帧后，即发送下一数据帧，故主机甲的发送周期$T$= 数据帧发送时延$t_{1}$+ 确认帧发送时延$t_{2}$+ 双程传播时延 =$t_{1} + t_{2} + 2t_{0}$= 1.2856ms。于是主机甲的有效数据传输率为$1500 × 8/T = 12000bit/1.2856ms ≈ 9.33Mbps$（以太网帧的数据部分为 1500B)。
', 9, 'Mogullzr', '2026-02-02 13:34:40', 9, NULL, '2026-02-02 13:34:40', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1172', '3393');
