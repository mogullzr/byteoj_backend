INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3488, '2013年408考研真题第1题', '简单', '2013年408真题', '已知两个长度分别为 m 和 n 的升序链表，若将它们合并为一个长度为 m+n 的降序链表，则最坏情况下的时间复杂度是（）。
', '[''$O(n)$'', ''$O(m × n)$'', ''$O(min(m, n))$'', ''$O(max(m, n))$'']', "['D']", 'D</font></strong>
两个升序链表合并，两两比较表中元素，每比较一次确定一个元素的链接位置（取较小元素，头插法）。当一个链表比较结束后，将另一个链表的剩余元素插入即可。最坏的情况是两个链表中的元素依次进行比较，直到两个链表都到表尾，即每个元素都经过比较，时间复杂度为$O(m + n) = O(max(m, n))$。', 9, 'Mogullzr', '2026-02-02 13:35:25', 9, NULL, '2026-02-02 13:35:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1173', '3488');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3489, '2013年408考研真题第2题', '简单', '2013年408真题', '一个栈的入栈序列为$1, 2, 3, ⋯  , n$，其出栈序列是$p_{1}, p_{2}, p_{3}, ⋯  , p_{n}$，若$p_{2} = 3$，则$p_{3}$可能取值的个数是（）。
', '[''$n - 3$'', ''$n - 2$'', ''$n - 1$'', ''无法确定'']', "['C']", 'C</font></strong>
本题考察入栈出栈序列。显然，$3$之后的$4, 5, ⋯  , n$都是$p_{3}$可取的数（一直进栈直到该数入栈后马上出栈）。接下来分析 1 和 2：$p_{1}$只能是$3$之前入栈的数（可能是 1 或 2），当$p_{1} = 1$时，$p_{3}$可取$2$；当$p_{1} = 2$时，$p_{3}$可取$1$，故$p_{3}$可能取除$3$之外的所有数，个数为$n - 1$。', 9, 'Mogullzr', '2026-02-02 13:35:25', 9, NULL, '2026-02-02 13:35:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1088', '3489');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3490, '2013年408考研真题第3题', '简单', '2013年408真题', '若将关键字 1,2,3,4,5,6,7 依次插入到初始为空的平衡二叉树 T 中，则 T 中平衡因子为 0 的分支结点的个数是（ ）。
', '[''0'', ''1'', ''2'', ''3'']', "['D']", 'D</font></strong>
利用 7 个关键字构建平衡二叉树 T，平衡因子为 0 的分支结点个数为 3，构建的平衡二叉树如下图所示。构造及调整的过程如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/48880708bd67426389c657aa16b5c636.svg)
', 9, 'Mogullzr', '2026-02-02 13:35:25', 9, NULL, '2026-02-02 13:35:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1090', '3490');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3491, '2013年408考研真题第4题', '简单', '2013年408真题', '已知三叉树 T 中 6 个叶结点的权分别是 2，3，4，5，6，7，T 的带权（外部）路径长度最小是（ ）。
', '[''27'', ''46'', ''54'', ''56'']', "['B']", 'B</font></strong>
将哈夫曼树的思想推广到三叉树的情形。为了构成严格的三叉树，需添加权为 0 的虚叶结点，对于严格的三叉树$(n_{0} - 1)%(3 - 1) = u = 1 \\neq 0$，需要添加$m - u - 1 = 3 - 1 - 1$个叶结点，说明 7 个叶结点刚好可以构成一个严格的三叉树。按照哈夫曼树的原则，权为 0 的叶结点应离树根最远构造最小带权生成树的过程如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/48ce24a4c79744019f92f1720592faf5.svg)
最小的带权路径长度为$(2 + 3) × 3 + (4 + 5) × 2 + (6 + 7) × 1 = 46$。', 9, 'Mogullzr', '2026-02-02 13:35:27', 9, NULL, '2026-02-02 13:35:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1144', '3491');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1215', '3491');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3492, '2013年408考研真题第5题', '简单', '2013年408真题', '若 X 是后序线索二叉树中的叶结点，且 X 存在左兄弟结点 Y 。则 X 的右线索指的是（ ）。
', '[''X\\xa0的父结点'', ''以 Y\\xa0为根的子树的最左下结点'', ''X\\xa0的左兄弟结点 Y'', ''以 Y\\xa0为根的子树的最右下结点'']', "['A']", 'A</font></strong>
根据后序线索二叉树的定义，X 结点为叶子结点且有左兄弟，那么这个结点为右孩子结点，利用后序遍历的方式可知 X 结点的后序后继是其父结点，即其右线索指向的是父结点。', 9, 'Mogullzr', '2026-02-02 13:35:28', 9, NULL, '2026-02-02 13:35:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1143', '3492');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3493, '2013年408考研真题第6题', '简单', '2013年408真题', '在任意一棵非空二叉排序树 T1 中，删除某结点 v 之后形成二叉排序树 T2 ，再将 v 插入 T2 形成二叉排序树 T3 。下列关于 T1 与 T3 的叙述中，正确的是（ ）。
I. 若 v 是 T1 的叶结点，则 T1 与 T3 不同
II. 若 v 是 T1 的叶结点，则 T1 与 T3 相同
III. 若 v 不是 T1 的叶结点，则 T1 与 T3 不同
IV. 若 v 不是 T1 的叶结点，则 T1 与 T3 相同
', '[''仅 I、III'', ''仅 I、IV'', ''仅 II、III'', ''仅 II、IV'']', "['C']", 'C</font></strong>
在一棵二叉排序树中删除一个结点后再将此结点插入到二叉排序树中，如果删除的结点是叶子结点，那么在插入结点后，后来的二叉排序树与删除结点之前相同。如果删除的结点不是叶子结点，那么再插入这个结点后，后来的二叉树会发生变化，不完全相同。', 9, 'Mogullzr', '2026-02-02 13:35:28', 9, NULL, '2026-02-02 13:35:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1174', '3493');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3494, '2013年408考研真题第7题', '简单', '2013年408真题', '设图的邻接矩阵 A 如下所示。各顶点的度依次是（）

$$
A = \\begin{vmatrix}
0 & 1 & 0 & 1\\\\
0 & 0 & 1 & 1\\\\
0 & 1 & 0 & 0\\\\
1 & 0 & 0 & 0
\\end{vmatrix}
$$
', '[''1，2，1，2'', ''2，2，1，1'', ''3，4，2，3'', ''4，4，2，2'']', "['C']", 'C</font></strong>
邻接矩阵A 为非对称矩阵，说明图是有向图，度为入度加出度之和。各顶点的度是矩阵中此结点对应的行（对应出度）和列（对应入度）的非零元素之和。', 9, 'Mogullzr', '2026-02-02 13:35:28', 9, NULL, '2026-02-02 13:35:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1193', '3494');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3495, '2013年408考研真题第8题', '简单', '2013年408真题', '若对如下无向图进行遍历，则下列选项中，不是广度优先遍历序列的是（）

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/96b20d5132fd447fb9fede44b1b6ff77.svg)

', '[''h，c，a，b，d，e，g，f'', ''e，a，f，g，b，h，c，d'', ''d，b，c，a，h，e，f，g'', ''a，b，c，d，h，e，f，g'']', "['D']", 'D</font></strong>
此题为送分题。只要掌握DFS和BFS的遍历过程，便能轻易解决。逐个代入，手工模拟，选项 D 是深度优先遍历，而不是广度优先遍历。', 9, 'Mogullzr', '2026-02-02 13:35:30', 9, NULL, '2026-02-02 13:35:30', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1199', '3495');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3496, '2013年408考研真题第9题', '简单', '2013年408真题', '下列 AOE 网表示一项包含 8 个活动的工程。通过同时加快若干活动的进度可以缩短整个工程的工期。下列选项中，加快其进度就可以缩短工程工期的是（）

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/85b9e82ff4a943e6aa14f98b6df80236.svg)

', '[''c 和 e'', ''d 和 e'', ''f 和 d'', ''f 和 h'']', "['C']", 'C</font></strong>
找出 AOE 网的全部关键路径为 (b,d,c,g)、(b,d,e,h) 和 (b,f,h)。根据定义，只有关键路径上的活动时间同时减少时，才能缩短工期，即正确选项中的两条路径必须涵盖在所有关键路径之中。利用关键路径算法可求出图中的关键路径共有三条：(b,d,cg)、(b,d,e,h) 和 (b,f,h)。由此可知，选项 A 和 B 中并不能包含 (b,f,h) 这条路径，选项 C 中，并不能包含 (b,d,c,g) 和 (b,d,e,h) 这两条路径，只有 C 包含了所有的关键路径，因此只有加快 f 和 d 的进度才能缩短工期。', 9, 'Mogullzr', '2026-02-02 13:35:31', 9, NULL, '2026-02-02 13:35:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1194', '3496');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3497, '2013年408考研真题第10题', '简单', '2013年408真题', '在一株高度为 2 的 5 阶 B 树中，所含关键字的个数最少是（）
', '[''5'', ''7'', ''8'', ''14'']', "['A']", 'A</font></strong>
对于 5 阶B 树，根结点只有达到 5 个关键字时才能产生分裂，成为高度为 2 的 B 树，因此高度为 2 的 5 阶 B 树所含关键字的个数最少是 5。', 9, 'Mogullzr', '2026-02-02 13:35:31', 9, NULL, '2026-02-02 13:35:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1094', '3497');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3498, '2013年408考研真题第11题', '简单', '2013年408真题', '对给定的关键字序列 110，119，007，911，114，120，122 进行基数排序，则第 2 趟分配收集后得到的关键字序列是（）。
', '[''007，110，119，114，911，120，122'', ''007，110，119，114，911，122，120'', ''007，110，911，114，119，120，122'', ''110，120，911，122，114，007，119'']', "['C']", 'C</font></strong>
基数排序一般使用低位优先，即第 1 趟排序是按照个位数字的大小来排序的，第 2 趟排序是按照十位数字的大小进行排序的，排序的过程如下图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/e405c371dff04b639809265aeb455892.svg)
', 9, 'Mogullzr', '2026-02-02 13:35:31', 9, NULL, '2026-02-02 13:35:31', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1096', '3498');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3499, '2013年408考研真题第12题', '简单', '2013年408真题', '某计算机主频为 1.2GHz，其指令分为 4 类，它们在基准程序中所占比例及 CPI 如下表所示。
该机的 MIPS 数是（ ）。
', '[''100'', ''200'', ''400'', ''600'']', "['C']", 'C</font></strong>
基准程序的 CPI= 2x0.5 + 3x0.2 + 4x0.1 + 5x0.2 = 3。计算机的主频为 1.2 GHz, 即 1200 MHz，故该机器的MIPS= 1200/3= 400。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1175', '3499');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3500, '2013年408考研真题第13题', '简单', '2013年408真题', '某数采用 IEEE754 单精度浮点数格式表示为 C6400000H，则该数的值是（ ）。
', '[''$−1.5 × 2^{13}$'', ''$−1.5 × 2^{12}$'', ''$−0.5 × 2^{13}$'', ''$−0.5 × 2^{12}$'']', "['A']", 'A</font></strong>
IEEE 754单精度浮点数格式为 C640 OOOOH, 二进制格式为 1100 0110 0100 0000 0000 0000 0000 0000, 转换为标准的格式为：`| 1（符号位） | 1000 1100（阶码） | 100 0000 0000 0000 0000 0000（尾数） |`数符 = 1 表示负数；阶码值为 1000 1100 - 0111 1111 = 0000 1101 = 13; 尾数值为 1.5（注意其有隐含位，要加 1)。因此，浮点数的值为$−1, 5 × 2^{13}$。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '3500');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3501, '2013年408考研真题第14题', '简单', '2013年408真题', '某字长为 8 位的计算机中，已知整型变量 x、y 的机器数分别为 [x]补=11110100 ， [y]补=10110000 。若整型变量 z=2x+y/2，则 z 的机器数为（ ）。
', '[''11000000'', ''00100100'', ''10101010'', ''溢出'']', "['A']", 'A</font></strong>
x*2，将 x 算术左移一位为 1 1101000；y/2，将 y 算术右移一位为 1 1011000, 均无溢出或丢失精度。补码相加为 1 1101000 + 1 1011000 = 1 1000000, 亦无溢出。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '3501');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3502, '2013年408考研真题第15题', '简单', '2013年408真题', '用海明码对长度为 8 位的数据进行检/纠错时，若能纠正一位错，则校验位数至少为（ ）。
', '[''2'', ''3'', ''4'', ''5'']', "['C']", 'C</font></strong>
设校验位的位数为 k，数据位的位数为 n，海明码能纠正一位错应满足下述关系：$2^{k} ≥ n + k + 1$。n = 8，当 k = 4 时，$2^{4}(= 16) > 8 + 4 + 1(= 13)$，符合要求，故校验位至少是 4 位。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1216', '3502');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1217', '3502');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3503, '2013年408考研真题第16题', '简单', '2013年408真题', '某计算机主存地址空间大小为 256MB，按字节编址。虚拟地址空间大小为 4GB，采用页式存储管理，页面大小为 4KB，TLB（快表）采用全相联映射，有 4 个页表项，内容如下表所示。
则对虚拟地址 03FFF180H 进行虚实地址变换的结果是（ ）。
', '[''0153180H'', ''0035180H'', ''TLB 缺失'', ''缺页'']', "['A']", 'A</font></strong>
按字节编址，页面大小为 4KB，页内地址共 12 位。地址空间大小为 4GB，虚拟地址共 32 位，前 20 位为页号。虚拟地址为 03FF F180H，故页号为 03 FFFH，页内地址为 180H。查找页标记 03FFFH 所对应的页表项，页框号为 0153H，页框号与页内地址拼接即为物理地址 0153180H。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1137', '3503');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3504, '2013年408考研真题第17题', '简单', '2013年408真题', '假设变址寄存器 R 的内容为 1000H，指令中的形式地址为 2000H；地址 1000H 中的内容为 2000H，地址 2000H 中的内容为 3000H，地址 3000H 的内容为 4000H，则变址寻址方式下访问到的操作数是（）。
', '[''1000H'', ''2000H'', ''3000H'', ''4000H'']', "['D']", 'D</font></strong>
根据变址寻址的方法，变址寄存器的内容（1000H）与形式地址的内容（2000H）相加，得到操作数的实际地址（3000H）, 根据实际地址访问内存，获取操作数 4000H。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1103', '3504');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3505, '2013年408考研真题第18题', '简单', '2013年408真题', '某 CPU 主频为 1.03GHz，采用 4 级指令流水线，每个段的执行需要 1 个时钟周期。假定 CPU 执行了 100 条指令，在其执行过程中没有发生任何流水线阻塞，此时流水线的吞吐率为（ ）。
', '[''$0.25 × 10^{9}$条指令/秒'', ''$0.97 × 10^{9}$条指令/秒'', ''$1.0 × 10^{9}$条指令/秒'', ''$1.03 × 10^{9}$条指令/秒'']', "['C']", 'C</font></strong>
采用 4 级流水执行 100 条指令，在执行过程中共用 4 + (100-1) =103 个时钟周期。CPU 的主频是 1.03GHz，也就是说每秒钟有 1.03G 个时钟周期。流水线的吞吐率为$1.03G × 100/103 = 1.0x10^{9}$条指令／秒。', 9, 'Mogullzr', '2026-02-02 13:35:33', 9, NULL, '2026-02-02 13:35:33', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1106', '3505');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3506, '2013年408考研真题第19题', '简单', '2013年408真题', '下列选项中，用于设备和设备控制器（I/O 接口）之间互连的接口标准是（ ）。
', '[''PCI'', ''USB'', ''AGP'', ''PCI-Express'']', "['B']", 'B</font></strong>
本题考察常见总线标准。题目问的是<strong><font color=''#2656b3''>“设备和设备控制器（I/O 接口）之间互连”</font></strong>的接口标准，这通常指的是<strong><font color=''#2656b3''>外部设备（如鼠标、键盘、打印机）</font></strong>与计算机之间的连接方式。<strong><font color=''#2656b3''>各选项说明：</font></strong>- A. PCI（Peripheral Component Interconnect）是一种用于主板上连接CPU与设备控制器（如声卡、网卡）的总线标准，属于主板内部总线标准，不是设备与控制器之间的接口。
- B. USB（Universal Serial Bus）✅
是一种用于连接外部设备和I/O接口（控制器）之间的通用串行接口标准，如键盘、鼠标、U盘等，正是题目所问的接口标准。
- C. AGP（Accelerated Graphics Port）是专门用于显卡与主板之间通信的接口，不用于通用I/O设备，已经被淘汰。
- D. PCI-Express（PCIe）是PCI的高速串行替代方案，也用于内部高速设备（如GPU、SSD）与主板通信，不是用于连接外部I/O设备。
| 接口标准 | 用途 |
| --- | --- |
| PCI | 主板内部设备控制器与CPU之间通信 |
| **USB** | **外部I/O设备与设备控制器之间的接口标准** |
| AGP | 旧式显卡接口，已淘汰 |
| PCI-Express | 高速内部设备连接 |
因此，正确答案是：<strong><font color=''#2656b3''>B. USB</font></strong>。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1152', '3506');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3507, '2013年408考研真题第20题', '简单', '2013年408真题', '下列选项中，用于提高 RAID 可靠性的措施有（ ）。
I. 磁盘镜像
Ⅱ. 条带化
Ⅲ. 奇偶校验
Ⅳ. 增加 Cache 机制
', '[''仅 I、Ⅱ'', ''仅 I、Ⅲ'', ''仅 I、Ⅲ和Ⅳ'', ''仅Ⅱ、Ⅲ和Ⅳ'']', "['B']", 'B</font></strong>
本题考察RAID，RAID0 方案是无几余和无校验的磁盘阵列，而 RAID1~5 方案均是加入了冗余（镜像）或校验的磁盘阵列。条带化技术就是一种自动地将 IO 的负载均衡到多个物理磁盘上的技术，条带化技术就是将一块连续的数据分成很多小部分并把它们分别存储到不同磁盘上去。这就能使多个进程同时访问数据的多个不同部分但不会造成磁盘冲突，而且在需要对这种数据进行顺序访问的时候可以获得最大程度上的 I/0 并行能力，从而获得非常好的性能。故能够提高 RAID 可靠性的措施主要是对磁盘进行镜像处理和奇偶校验，其余选项不符合条件。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1218', '3507');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3508, '2013年408考研真题第21题', '简单', '2013年408真题', '某磁盘的转速为 10000rpm，平均寻道时间是 6ms，磁盘传输速率是 20MB/s，磁盘控制器延时为 0.2ms，读取一个 4KB 的扇区所需的平均时间约为（ ）。
', '[''9ms'', ''9.4ms'', ''12ms'', ''12.4ms'']', "['B']", 'B</font></strong>
磁盘转速是 10000rpm，转一圈的时间为 6ms，因此平均查询扇区的时间为 3ms，平均寻道时间为 6ms，读取 4KB 扇区信息的时间为 4KB/(20MB/s)=0.2ms，磁盘控制器延迟为 0.2ms，平均存取时间为 3+6+0.2+0.2=9.4ms。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1219', '3508');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3509, '2013年408考研真题第22题', '简单', '2013年408真题', '下列关于中断 I/O 方式和 DMA 方式比较的叙述中，错误的是（ ）。
', '[''中断 I/O 方式请求的是方式请求的是 CPU 处理时间，DMA 方式请求的是总线使用权'', ''中断响应发生在一条指令执行结束后，DMA 响应发生在一个总线事务完成后'', ''中断 I/O 方式下数据传送通过软件完成，DMA 方式下数据传送由硬件完成'', ''中断 I/O 方式适用于所有外部设备，DMA 方式仅适用于快速外部设备'']', "['D']", 'D</font></strong>
中断处理方式：在 I/O 设备输入每个数据的过程中，由于无须 CPU 干预，因而可使 CPU 与 I/O 设备并行工作。仅当输完一个数据时，才需 CPU 花费极短的时间去做些中断处理。因此中断申请使用的是 CPU 处理时间，发生的时间是在一条指令执行结束之后，数据是在软件的控制下完成传送的。而 DMA 方式与之不同。DMA 方式：数据传输的基本单位是数据块，即在 CPU 与 I/O 设备之间，每次传送至少一个数据块；DMA 方式每次申请的是总线的使用权，所传送的数据是从设备直接送入内存的，或者相反；仅在传送一个或多个数据块的开始和结束时，才需 CPU 干预，整块数据的传送是在控制器的控制下完成的。D 选项错误。这个说法过于绝对。DMA 虽然适合大批量、速度较高的设备（如磁盘、网卡），但它并非仅适用于快速设备，只要设备支持 DMA 协议，都可以使用。此外，中断 I/O 虽然可以用于多数外设，但在频繁交互场景中反而效率低。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '3509');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '3509');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3510, '2013年408考研真题第23题', '简单', '2013年408真题', '用户在删除某文件的过程中，操作系统不可能执行的操作是（ ）。
', '[''删除此文件所在的目录'', ''删除与此文件关联的目录项'', ''删除与此文件对应的文件控制块'', ''释放与此文件关联的内存缓冲区'']', "['A']", 'A</font></strong>
此文件所在目录下可能还存在其他文件，因此删除文件时不能（也不需要）删除文件所在的目录，而与此文件关联的目录项和文件控制块需要随着文件一同删除，同时释放文件关联的内存缓冲区。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1220', '3510');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3511, '2013年408考研真题第24题', '简单', '2013年408真题', '为支持 CD-ROM 中视频文件的快速随机播放，播放性能最好的文件数据块组织方式是（ ）。
', '[''连续结构'', ''链式结构'', ''直接索引结构'', ''多级索引结构'']', "['A']", 'A</font></strong>
为了实现快速随机播放，要保证最短的查询时间，即不能选取链表和索引结构，因此连续分配方案最优。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1115', '3511');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3512, '2013年408考研真题第25题', '简单', '2013年408真题', '用户程序发出磁盘 I/O 请求后，系统的处理流程是：用户程序→系统调用处理程序→设备驱动程序→中断处理程序。其中，计算数据所在磁盘的柱面号、磁头号、扇区号的程序是（ ）。
', '[''用户程序'', ''系统调用处理程序'', ''设备驱动程序'', ''中断处理程序'']', "['C']", 'C</font></strong>
计算磁盘号、磁头号和扇区号的工作是由设备驱动程序完成的。题中的功能因设备硬件的不同而不同，因此应由厂家提供的设备驱动程序实现。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1221', '3512');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1184', '3512');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3513, '2013年408考研真题第26题', '简单', '2013年408真题', '若某文件系统索引结点 (inode) 中有直接地址项和间接地址项，则下列选项中，与单个文件长度无关的因素是（ ）。
', '[''索引结点的总数'', ''间接地址索引的级数'', ''地址项的个数'', ''文件块大小'']', "['A']", 'A</font></strong>
四个选项中，只有 A 选项是与单个文件长度无关的。索引结点的总数即文件的总数，与单个文件的长度无关；间接地址级数越多、地址项数越多、文件块越大，单个文件的长度就会越大。', 9, 'Mogullzr', '2026-02-02 13:35:34', 9, NULL, '2026-02-02 13:35:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1117', '3513');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3514, '2013年408考研真题第27题', '简单', '2013年408真题', '设系统缓冲区和用户工作区均采用单缓冲，从外设读入 1 个数据块到系统缓冲区的时间为 100，从系统缓冲区读入 1 个数据块到用户工作区的时间为 5，对用户工作区中的 1 个数据块进行分析的时间为 90（如下图所示）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/316aa4e0232a497e847b3855daa2d853.svg)

进程从外设读入并分析 2 个数据块的最短时间是（ ）。
', '[''200'', ''295'', ''300'', ''390'']', "['C']", 'C</font></strong>
在单缓冲中，数据块 1 从外设到用户工作区的总时间为 105，在这段时间中，数据块 2 没有进行操作。在数据块 1 进行分析处理 时，数据块 2 从外设到用户工作区的总时间为 105，这段时间是并行的。再加上处理数据块 2 的时间 90，总时间为 300，答案为 C。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1087', '3514');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3515, '2013年408考研真题第28题', '简单', '2013年408真题', '下列选项中，会导致用户进程从用户态切换到内核态的操作是（ ）。
I. 整数除以零
II. sin() 函数调用
III. read 系统调用
', '[''仅 I、II'', ''仅 I、III'', ''仅 II、III'', ''I、II 和 III'']', "['B']", 'B</font></strong>
需要在系统内核态执行的操作是整数除零操作（需要中断处理）和 read 系统调用函数，sin() 函数调用是在用户态下进行的。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1182', '3515');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1205', '3515');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3516, '2013年408考研真题第29题', '简单', '2013年408真题', '计算机开机后，操作系统最终被加载到（  ）。
', '[''BIOS'', ''ROM'', ''EPROM'', ''RAM'']', "['D']", 'D</font></strong>
此题为基本常识题，送分题。系统开机后，操作系统的程序会被自动加载到内存中的系统区，这段区域是 RAM。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1222', '3516');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3517, '2013年408考研真题第30题', '简单', '2013年408真题', '若用户进程访问内存时产生缺页，则下列选项中，操作系统可能执行的操作是（ ）。
I. 处理越界错
II. 置换页
III. 分配内存
', '[''仅 I、II'', ''仅 II、III'', ''仅 I、III'', ''I、II 和 III'']', "['B']", 'B</font></strong>
用户进程访问内存时缺页会发生缺页中断。发生缺页中断，系统会执行的操作可能是置换页面或分配内存。系统内没有越界的错误，不会进行越界出错处理。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1186', '3517');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3518, '2013年408考研真题第31题', '简单', '2013年408真题', '某系统正在执行三个进程$P_{1}$、$P_{2}$和$P_{3}$，各进程的计算 (CPU) 时间和 I/O 时间比例如下表所示。
为提高系统资源利用率，合理的进程优先级设置应为（ ）。
', '[''$P_{1} > P_{2} > P_{3}$'', ''$P_{3} > P_{2} > P_{1}$'', ''$P_{2} > P_{1} = P_{3}$'', ''$P_{1} > P_{2} = P_{3}$'']', "['B']", 'B</font></strong>
为了合理地设置进程优先级，应该将进程的 CPU 时间和 I/0 时间做综合考虑，对千 CPU 占用时间较少而 I/O 占用时间较多的进程，优先调度能让 I/O 更早地得到使用，提高了系统的资源利用率，显然应该具有更高的优先级。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1223', '3518');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3519, '2013年408考研真题第32题', '简单', '2013年408真题', '下列关于银行家算法的叙述中，正确的是（ ）。
', '[''银行家算法可以预防死锁'', ''当系统处于安全状态时，系统中一定无死锁进程'', ''当系统处于不安全状态时，系统中一定会出现死锁进程'', ''银行家算法破坏了死锁必要条件中的“请求和保持”条件'']', "['B']", 'B</font></strong>
银行家算法是避免死锁的方法，破坏死锁产生的必要条件是预防死锁的方法。利用银行家算法，系统处于安全状态时就可以避免死锁（即此时必然无死锁）；当系统进入不安全状态后便可能进入死锁状态（但也不是必然）。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1185', '3519');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3520, '2013年408考研真题第33题', '简单', '2013年408真题', '在 OSI 参考模型中，下列功能需由应用层的相邻层实现的是（ ）。
', '[''对话管理'', ''数据格式转换'', ''路由选择'', ''可靠数据传输'']', "['B']", 'B</font></strong>
在OSI 参考模型中，应用层的相邻层是表示层。表示层是 OSI 七层协议的第六层。表示层的功能是表示出用户看得懂的数据格式，实现与数据表示有关的功能。主要完成数据字符集的转换、数据格式化和文本压缩、数据加密和解密等工作。', 9, 'Mogullzr', '2026-02-02 13:35:36', 9, NULL, '2026-02-02 13:35:36', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1120', '3520');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3521, '2013年408考研真题第34题', '简单', '2013年408真题', '若下图为 10 BaseT 网卡接收到的信号波形，则该网卡收到的比特串是（ ）。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/1174c4f7b01e4100bf1fba04b5aa114a.svg)

', '[''0011 0110'', ''1010 1101'', ''0101 0010'', ''1100 0101'']', "['A']", 'A</font></strong>
需要了解传输介质的命名规则：10BaseT 即 10Mbps 的以太网，采用曼彻斯特编码，将一个码元分成两个相等的间隔，前一个间隔为低电平后一个间隔为高电平表示码元 1；码元 0 正好相反，也可以采用相反的规定。故对应比特串可以是 0011 0110 或 1100 1001。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1224', '3521');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3522, '2013年408考研真题第35题', '简单', '2013年408真题', '主机甲通过 1 个路由器（存储转发方式）与主机乙互联，两段链路的数据传输速率均为 10Mbps，主机甲分别采用报文交换和分组大小为 10kb 的分组交换向主机乙发送 1 个大小为 8 Mb（1M = 10⁶ ）的报文。若忽略链路传播延迟、分组头开销和分组拆装时间，则两种交换方式完成该报文传输所需的总时间分别为（ ）。
', '[''800 ms、1600 ms'', ''801 ms、1600 ms'', ''1600 ms、800 ms'', ''1600 ms、801 ms'']', "['D']", 'D</font></strong>
本题考察分组交换的传输时间计算，不进行分组时，发送一个报文的时延是 8Mb / 10Mbps = 800s，采用报文交换时，主机甲发送报文需要一次时延，而报文到达路由器进行存储转发又需要一次时延，总时延为 800ms × 2 = 1600ms。进行分组后，发送一个报文的时延是 10kb / 10Mbps = 1ms，一共有 8Mb / 10kb = 800 个分组，主机甲发送 800 个分组需要 1ms × 800 = 800ms 的时延，而路由器接收到第一个分组后直接开始转发，即除了第一个分组，其余分组经过路由器转发不会产生额外的时延，总时延就为 800ms+1ms=801ms。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1160', '3522');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3523, '2013年408考研真题第36题', '简单', '2013年408真题', '下列介质访问控制方法中，可能发生冲突的是（ ）。
', '[''CDMA'', ''CSMA'', ''TDMA'', ''FDMA'']', "['B']", 'B</font></strong>
选项 A、C 和 D 都是信道划分协议，信道划分协议是静态划分信道的方法，肯定不会发生冲突。CSMA 全称是载波侦听多路访问协议，其原理是站点在发送数据前先侦听信道，发现信道空闲后再发送，但在发送过程中有可能会发生冲突。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1191', '3523');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3524, '2013年408考研真题第37题', '简单', '2013年408真题', 'HDLC 协议对 01111100 01111110 组帧后对应的比特串为（ ）。
', '[''01111100 00111110 10'', ''01111100 01111101 01111110'', ''01111100 01111101 0'', ''01111100 01111110 01111101'']', "['A']", 'A</font></strong>
HDLC 协议对比特串进行组帧时，HDLC 数据帧以位模式 0111 1110 标识每一个帧的开始和结束，因此在帧数据中凡是出现了 5 个连续的位“1”的时候，就会在输出的位流中填充一个“0”。因此组帧后的比特串为 0111 1100 0011 1110 10。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1225', '3524');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3525, '2013年408考研真题第38题', '简单', '2013年408真题', '对于 100 Mbps 的以太网交换机，当输出端口无排队，以直通交换 (cut-through switching) 方式转发一个以太网帧（不包括前导码）时，引入的转发延迟至少是（ ）。
', '[''0 μs'', ''0.48 μs'', ''5.12 μs'', ''121.44 μs'']', "['B']", 'B</font></strong>
直通交换在输入端口检测到一个数据帧时，检查帧首部，获取帧的目的地址，启动内部的动态查找表转换成相应的输出端口，在输入与输出交叉处接通，把数据帧直通到相应的端口，实现交换功能。直通交换方式只检查帧的目的地址，共 6B，所以最短的传输延迟是 6 × 8bit / 100Mbps = 0.48μs。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1160', '3525');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3526, '2013年408考研真题第39题', '简单', '2013年408真题', '主机甲与主机乙之间已建立一个 TCP 连接，双方持续有数据传输，且数据无差错与丢失。若甲收到 1 个来自乙的 TCP 段，该段的序号为 1913、确认序号为 2046、有效载荷为 100 字节，则甲立即发送给乙的 TCP 段的序号和确认序号分别是（ ）。
', '[''2046、2012'', ''2046、2013'', ''2047、2012'', ''2047、2013'']', "['B']", 'B</font></strong>
本题考察序列号和确认号，确认序号 ack 是期望收到对方下一个报文段的数据的第一个字节的序号，序号 seq 是指本报文段所发送的数据的第一个字节的序号。甲收到 1 个来自乙的 TCP 段，该段的序号 seq=1913、确认序号 ack=2046、有效载荷为 100 字节，表明到序号 1913+100-1=2012 为止的所有数据甲均已收到，而乙期望收到下一个报文段的序号从 2046 开始。故甲发给乙的 TCP 段的序号 seq1=ack=2046 和确认序号 ack1=seq+100=2013。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1126', '3526');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3527, '2013年408考研真题第40题', '简单', '2013年408真题', '下列关于 SMTP 协议的叙述中，正确的是（ ）。
I. 只支持传输 7 比特 ASCII 码内容
II. 支持在邮件服务器之间发送邮件
III. 支持从用户代理向邮件服务器发送邮件
IV. 支持从邮件服务器向用户代理发送邮件
', '[''仅 I、II 和 III'', ''仅 I、II 和 IV'', ''仅 I、III 和 IV'', ''仅 II、III 和 IV'']', "['A']", 'A</font></strong>
SMTP协议用于用户代理向邮件服务器发送邮件，或在邮件服务器之间发送邮件。SMTP 协议只支持传输 7 比特的 ASCII 码内容。', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1212', '3527');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3528, '2013年408考研真题第41题', '简单', '2013年408真题', '已知一个整数序列$A = (a_{0}, a_{1}, … , a_{n-1})$，其中$0 ≤ a_{i} < n$$(0 ≤ i < n)$。
若存在$a_{p_{1}} = a_{p_{2}} = ⋯ = a_{p_{m}} = x$且$m > n/2$$(0 ≤ p_{k} < n, 1 ≤ k ≤ m)$，则称$x$为$A$的主元素。
例如$A = (0, 5, 5, 3, 5, 7, 5, 5)$，则$5$为主元素；又如$A = (0, 5, 5, 3, 5, 1, 5, 7)$，则$A$中没有主元素。
假设$A$中的$n$个元素保存在一个一维数组中，请设计一个尽可能高效的算法，找出$A$的主元素。若存在主元素，则输出该元素；否则输出$−1$。要求：
(1) 给出算法的基本设计思想。
(2) 根据设计思想，采用 C、C++ 或 Java 语言描述算法，关键之处给出注释。
(3) 说明你所设计算法的时间复杂度和空间复杂度。
', '[]', '', '1）给出算法的基本设计思想：
算法的策略是从前向后扫描数组元素，标记出一个可能成为主元素的元素 Num。然后重新计数，确认 Num 是否为主元素。
算法可分为以下两步：
① 选取候选的主元素：依次扫描所给数组中的每个整数，将第一个遇到的整数 Num 保存到 c 中，记录 Num 的出现次数为 1；若遇到的下一个整数仍等于 Num，则计数加 1，否则计数减 1；当计数减到 0 时，将遇到的下一个整数保存到 c 中，计数重新记为 1，开始新一轮计数，即从当前位置开始重复上述过程，直到扫描完全部数组元素。
② 判断 c 中元素是否是真正的主元素：再次扫描该数组，统计 c 中元素出现的次数，若大于 2，则为主元素；否则，序列中不存在主元素。
2）算法实现

```c
int majority(int a[], int n) {
  if (n == 0) {
    return -1;
  }
  // 选取候选元素
  int num = a[0];
  int cnt = 1;

  // 如果主元素存在，会被以下过程筛选出来
  // 但是筛选出来的不一定是主元素
  for (int i = 1; i < n; i++) {
    if (a[i] == num) {
      // 候选元素个数 +1
      cnt++;
    } else {
      // 重新设置候选元素
      cnt--;
      if (cnt == 0) {
        num = a[i];
        cnt = 1;
      }
    }
  }

  // 再判断候选元素是不是主元素
  int m = 0;
  for (int i = 0; i < n; i++) {
    // 统计候选元素出现的次数
    if (a[i] == num) {
      m++;
    }
  }
  if (m > n / 2) {
    return num;
  }
  return -1;
}
```
【评分说明】
① 若考生设计的算法满足题目的功能要求且正确，则 (1)、(2) 根据所实现算法的效率给分，细则见下表：

| 时间复杂度 | 空间复杂度 | (1) 得分 | (2) 得分 |  |
| --- | --- | --- | --- | --- |
| O(n) | O(1) | 4 | 7 |  |
| O(n) | O(n) | 4 | 6 |  |
| O(nlog2​n) | 其他 | 3 | 6 |  |
| ≥O(n2) | 其他 | 3 | 5 |  |

② 若在算法的基本设计思想描述中因文字表达没有非常清晰反映出算法思路，但在算法实现中能够清晰看出算法思想且正确的，可参照①的标准给分。
③ 若算法的基本设计思想描述或算法实现中部分正确，可参照①中各种情况的相应给分标准酌情给分。
(3) 说明算法复杂性：
参考答案中实现的程序的时间复杂度为$O(m)$，空间复杂度为$O(1)$。
【评分说明】若考生所估计的时间复杂度与空间复杂度与考生所实现的算法一致，可各给 1 分。
【说明】本题如果采用先排好序再统计的方法，只要解答正确，最高可拿 9 分，因此对于统考算法题，去花费大量时间去思考最优解法是得不偿失的。
', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1167', '3528');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3529, '2013年408考研真题第42题', '简单', '2013年408真题', '设包含 4 个数据元素的集合 S = { “do”, “for”, “repeat”, “while” }，各元素的查找概率依次为：$p_{1} = 0.35$，$p_{2} = 0.15$，$p_{3} = 0.15$，$p_{4} = 0.35$。将 S 保存在一个长度为 4 的顺序表中，采用折半查找法，查找成功时的平均查找长度为 2.2 。请回答：
(1) 若采用顺序存储结构保存 S ，且要求平均查找长度更短，则元素应如何排列？应使用何种查找方法？查找成功时的平均查找长度是多少？
(2) 若采用链式存储结构保存 S ，且要求平均查找长度更短，则元素应如何排列？应使用何种查找方法？查找成功时的平均查找长度是多少？
', '[]', '', '1）折半查找要求元素有序顺序存储，若各个元素的查找概率不同，则折半查找的性能不一定优于顺序查找。采用顺序查找时，元素按其查找概率的降序排列时查找长度最小。
采用顺序存储结构，数据元素按其查找概率降序排列。采用顺序查找方法。
查找成功时的平均查找长度=0.35×1+0.35×2+0.15×3+0.15×4=2.1。
此时，显然查找长度比折半查找的更短。
2）答案一：采用链式存储结构时，只能采用顺序查找，其性能和顺序表一样，类似于上题。数据元素按其查找概率降序排列，构成单链表。采用顺序查找方法。
查找成功时的平均查找长度=0.35×1+0.35×2+0.15×3+0.15×4=2.1。
答案二：还可以构造成二叉排序树的形式。采用二叉链表的存储结构，构造二叉排序树，元素的存储方式见下图。采用二叉排序树的查找方法。
htmlfordowhilerepeatrepeatdowhilefor二叉排序树1二叉排序树2或
查找成功时的平均查找长度=0.15×1+0.35×2+0.35×2+0.15×3=2.0。
【评分说明】
①若考生以实际元素表示“降序排列”，同样给分。
②若考生正确求出与其查找方法对应的查找成功时的平均查找长度，给 2 分；若计算过
程正确，但结果错误，给 1 分。
③考生给出其他更高效的查找方法且正确，可参照评分标准给分。
', 9, 'Mogullzr', '2026-02-02 13:35:38', 9, NULL, '2026-02-02 13:35:38', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1166', '3529');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3530, '2013年408考研真题第43题', '简单', '2013年408真题', '某 32 位计算机，CPU 主频为 800MHz，Cache 命中时的 CPI 为 4，Cache 块大小为 32 字节；主存采用 8 体交叉存储方式，每个体的存储字长为 32 位、存储周期是 40ns；存储器总线宽度为 32 位，总线时钟频率为 200MHz，支持突发传送总线事务。每次读突发传送总线事务的过程包括：送首地址和命令、存储器准备数据、传送数据。每次突发传送 32 字节，传送地址或者 32 位数据均需要一个总线时钟周期。请回答下列问题，要求给出理由或者计算过程。
(1) CPU 和总线的时钟周期各是多少？总线的带宽（即最大数据传输率）为多少？
(2) Cache 缺失时，需要用几个读突发传送总线事务来完成一个主存块的读取？
(3) 存储器总线完成一次读突发传送总线事务所需的时间是多少？
(4) 若程序 BP 执行过程中，共执行了 100 条指令，平均每条指令需要 1.2 次访存，Cache 缺失率是 5%，不考虑替换等开销，则 BP 的 CPU 执行时间是多少？
', '[]', '', '1）CPU 的时钟周期是主频的倒数，即 1/800MHz=1.25ns。
总线的时钟周期是总线频率的倒数，即 1/200MHz=5ns。
总线宽度为 32 位，故总线带宽为 4B×200MHz=800MB/s 或 4B/5ns=800MB/s。
2）Cache 块大小是 32B，因此 Cache 缺失时需要一个读突发传送总线事务读取一个主存块。
3）本题重点考查多体交叉存储器的并行性。一次读突发总线传输事务包括一次地址传送和 32B 数据传送：用 1 个总线时钟周期传输地址；每隔 40ns/8=5ns 启动一个体工作（各进行 1 次存取），第一个体读数据花费 40ns，之后数据存取与数据传输重叠；用 8 个总线时钟周期传输数据。读突发传送总线事务时间：5ns+40s+8×5ns=85ns
4）BP 的 CPU 执行时间包括 Cache 命中时的指令执行时间和 Cache 缺失时带来的额外开销。命中时的指令执行时间：100×4×1.25ns=500ns。
指令执行过程中 Cache 缺失时的额外开销：1.2×100×5%×85ns=510ns。BP 的 CPU 执行时间：500ns+510ns=1010ns。
【评分说明】
① 执行时间采用如下公式计算时，可酌情给分。
执行时间=指令条数×CPI×时钟周期×命中率 + 访存次数×缺失率×缺失损失
② 计算公式正确但运算结果不正确时，可酌情给分。
', 9, 'Mogullzr', '2026-02-02 13:35:39', 9, NULL, '2026-02-02 13:35:39', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1131', '3530');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1108', '3530');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1204', '3530');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3531, '2013年408考研真题第44题', '简单', '2013年408真题', '某计算机采用 16 位定长指令字格式，其 CPU 中有一个标志寄存器，其中包含进位/借位标志 CF、零标志 ZF 和符号标志 NF。假定为该机设计了条件转移指令，其格式如下：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/a9353645449341f78fb74a7321030b3e.svg)

其中，00000 为操作码 OP；C、Z 和 N 分别为 CF、ZF 和 NF 的对应检测位，某检测位为 1 时表示需检测对应标志，需检测的标志位中只要有一个为 1 就转移，否则就不转移，例如，若 C=1，Z=0，N=1，则需检测 CF 和 NF 的值，当 CF=1 或 NF=1 时发生转移；OFFSET 是相对偏移量，用补码表示。转移执行时，转移目标地址为 (PC)+2+2×OFFSET；顺序执行时，下条指令地址为 (PC)+2。请回答下列问题。
(1) 该计算机存储器按字节编址，还是按字编址？该条件转移指令向后（反向）最多可跳转最多少条指令？
(2) 某条件转移指令的地址为 200CH，指令内容如下图所示，若该执行时 CF=0，ZF=0，NF=1，则该指令执行后 PC 的值是多少？若该指令执行时 CF=1，ZF=0，NF=0，则该指令执行后 PC 的值又是多少？请给出计算过程。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/d5d500f1f2ac40219981957ffa63b4aa.svg)

(3) 实现“无符号数比较小于等于时转移”功能的指令中，C、Z 和 N 应各是什么？
(4) 以下是该指令对应的数据通路示意图，要求给出中部件①~③的名称或功能说明。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/9bc63964655b4b32b729d44d56dd8709.svg)

', '[]', '', '1）因为指令长度为 16 位，且下条指令地址为 (PC)+2，故编址单位是字节。
偏移量 OFFSET 为 8 位补码，范围为 -128~127，故相对于当前条件转移指令，向后最多可跳转 127 条指令。
【评分说明】若正确给出 OFFSET 的取值范围，则酌情给分。
2）指令中 C=0，Z=1，N=1，故应根据 ZF 和 NT 的值来判断是否转移。当 CF=0，ZF=0，NF=1 时，需转移。己知指令中偏移量为 11100011B=E3H，符号扩展后为 FFE3H，左移一位（乘 2）后为 FFC6H，故 PC 的值（即转移目标地址）为 200CH+2+FFC6H=1FD4H。当 CF=1，ZF=0，NF=0 时不转移。PC 的值为 200CH+2=200EH。
3）指令中的 C、Z 和 N 应分别设置为 C=Z=1，N=0，进行数之间的大小比较通常是对两个数进行减法，而因为是无符号数比较小于等于时转移，即两个数相减结果为 0 或者负数都应该转移，若是 0，则 ZF 标志应当为 1，所以是负数，则借位标志应该为 1，而无符号数并不涉及符号标志 NF。
4）部件①用于存放当前指令，不难得出为指令寄存器；多路选择器根据符号标志 C/Z/N 来决定下一条指令的地址是 PC+2 还是 PC+2+2×OFFSET，故多路选择器左边线上的结果应该是 PC+2+2×OFFSET。根据运算的先后顺序以及与 PC+2 的连接，部件②用于左移一位实现乘 2，为移位寄存器。部件③用于 PC+2 和 2×OFFSET 相加，为加法器。
部件②：移位寄存器（用于左移一位）；部件③：加法器（地址相加）。
【评分说明】合理给出部件名称或功能说明均给分。
', 9, 'Mogullzr', '2026-02-02 13:35:42', 9, NULL, '2026-02-02 13:35:42', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1226', '3531');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1177', '3531');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1227', '3531');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3532, '2013年408考研真题第45题', '简单', '2013年408真题', '某博物馆最多可以容纳 500 人同时参观，有一个出入口，该出入口一次仅允许一个人通过。参观者的活动描述如下：

```c
cobegin
参观者进程 i:
{
    ...
    进门；
    ...
    参观；
    ...
    出门；
    ...
}
coend
```
请添加必要的信号量和 P、V（或`wait()`、`signal()`）操作，以实现上述过程中的互斥与同步。要求写出完整的过程，说明信号量的含义并赋初值。
', '[]', '', '出入口一次仅允许一个人通过，设置互斥信号量 mutex, 初值为 1。博物馆最多可同时容
纳 500 人，故设置信号量 empty, 初值为 500。

```c
semaphore empty = 500;
semaphore mutex = 1;

visitor() {
    P(empty);
    P(mutex);
    进门;
    V(mutex);
    参观;
    P(mutex);
    出门;
    V(mutex);
    V(empty);
}
```
【评分说明】
①信号量初值给 1 分，说明含义给 1 分，两个信号量的初值和含义共 4 分。
②对 mutex 的 P、V 操作正确给 2 分。
③对 empty 的 P、V 操作正确给 1 分。
④其他答案，参照①~③的标准给分。
', 9, 'Mogullzr', '2026-02-02 13:35:43', 9, NULL, '2026-02-02 13:35:43', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1135', '3532');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3533, '2013年408考研真题第46题', '简单', '2013年408真题', '某计算机主存按字节编址，逻辑地址和物理地址都是 32 位，页表项大小为 4 字节。请回答下列问题。
(1) 若使用一级页表的分页存储管理方式，逻辑地址结构为：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/d0138080965c451ba198dcdfcb1a52b1.svg)

则页的大小是多少字节？页表最大占用多少字节？
(2) 若使用二级页表的分页存储管理方式，逻辑地址结构为：

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/1b71bb3d92ff4d19b6948449e5eb9177.svg)

设逻辑地址为 LA，请分别给出其对应的页目录号和页表索引的表达式。
(3) 采用 (1) 中的分页存储管理方式，一个代码段起始逻辑地址为 0000 8000H，其长度为 8KB，被装载到从物理地址 0090 0000H 开始的连续主存空间中。页表从主存 0020 0000H 开始的物理地址处连续存放，如下图所示（地址大小自下向上递增）。请计算出该代码段对应的两个页表项的物理地址、这两个页表项中的页框号以及代码页面 2 的起始物理地址。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/2937adebb51d41588f56ce24afce52c9.svg)

', '[]', '', '1）因为主存按字节编址，页内偏移量是 12 位，所以页大小为$2^{12}$B=$4$KB。（1 分）
页表项数为$2^{20}$，故该一级页表最大为$2^{20} × 4$B =$4$MB。（2 分）
2）页目录号可表示为：`(((unsigned int)(LA)) >> 22) & 0x3FF`。（1 分）
页表索引可表示为：`(((unsigned int)(LA)) >> 12) & 0x3FF`。（1 分）
【评分说明】
①页目录号也可以写成`(unsigned int)(LA) > 22`；如果两个表达式没有对 LA 进行类型转换，同样给分。
②如果用除法和其他开销很大的运算方法，但对基本原理是理解的，同样给分。
③参考答案给出的是 C 语言的描述，用其他语言（包括自然语言）正确地表述了，同样给分。
3）代码页面 1 的逻辑地址为 00008000H，表明其位于第 8 个页的位置，对应页表中的第 8 个页表项，所以第 8 个页表项的物理地址 = 页表起始地址 + 8×页表项的字节数 = 00200000H + 8×4 = 00200020H。由此可得如下图所示的答案。（3 分）
html00901H00900H0020 0024H0020 0020H代码页面2代码页面10090 1000H0090 0000H页表
【评分说明】共 5 个答数。物理地址 1 和物理地址 2 共 1 分；页框号 1 和页框号 2 共 1 分；物理地址 3 给 1 分。
', 9, 'Mogullzr', '2026-02-02 13:35:46', 9, NULL, '2026-02-02 13:35:46', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1157', '3533');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '3533');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3534, '2013年408考研真题第47题', '简单', '2013年408真题', '假设 Internet 的两个自治系统构成的网络如题 47 图所示，自治系统 AS1 由路由器 R1 连接两个子网构成；自治系统 AS2 由路由器 R2、R3 互联并连接 3 个子网构成。各子网地址、R2 的接口名、R1 与 R3 的部分接口 IP 地址如题 47 图所示。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/c94670713a024337bd16b161339a5603.svg)

请回答下列问题。
(1) 假设路由表结构如下表所示。

![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/02/a896f16a098f4a5086648a5f2ac987bf.svg)

请利用路由聚合技术，给出 R2 的路由表，要求包括到达题 47 图中所有子网的路由，且路由表中的路由项尽可能少。
(2) 若 R2 收到一个目的 IP 地址为 194.17.20.200 的 IP 分组，R2 会通过哪个接口转发该 IP 分组？
(3) R1 与 R2 之间利用哪个路由协议交换路由信息？该路由协议的报文被封装到哪个协议的分组中进行传输？
', '[]', '', '1）要求 R2 的路由表能到达图中所有的子网，且路由项尽可能的少，则应对每个路由接口的子网进行聚合。在 AS1 中，子网 153.14.5.0/25 和子网 153.14.5.128/25 可以聚合为子网 153.14.5.0/24；在 AS2 中，子网 194.17.20.0/25 和子网 194.17.21.0/24 可以聚合为子网 194.17.20.0/23；子网 194.17.20.128/25 单独连接到 R2 的接口 E0。（6 分）
于是可以得到 R2 的路由表如下：

| 目的网络 | 下一跳 | 接口 |
| --- | --- | --- |
| 153.14.5.0/24 | 153.14.3.2 | S0 |
| 194.17.20.0/23 | 194.17.24.2 | S1 |
| 194.17.20.128/25 | - | E0 |

【评分说明】①每正确解答 1 个路由项，给 2 分，共 6 分。每条路由项正确解答目的网络 IP 地址但无前缀长度，给 0.5 分，正确解答前缀长度给 0.5 分，正确解答下一跳 IP 地址给 0.5 分，正确解答接口给 0.5 分。
②路由项解答部分正确或路由项多于 3 条，可酌情给分。
2）该 IP 分组的目的 P 地址 194.17.20.200 与路由表中 194.17.20.0/23 和 194.17.20.128/25 两个路由表项均匹配，根据最长匹配原则，R2 将通过 E0 接口转发该 P 分组。（1 分）
3）R1 和 R2 属于不同的自治系统，故应使用边界网关协议 BGP（或 BGP4）交换路由信息；（1 分）BGP 是应用层协议，它的报文被封装到 TCP 协议段中进行传输。（1 分）
【评分说明】若考生解答为 EGP 协议，且正确解答 EGP 采用 IP 协议进行通信，亦给分。
', 9, 'Mogullzr', '2026-02-02 13:35:49', 9, NULL, '2026-02-02 13:35:49', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1139', '3534');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1228', '3534');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1161', '3534');
