INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4005, '2024年408考研真题第1题', '简单', '2024年408真题', '已知带头结点的非空单链表L的头指针为h，指针p指向L中间的一个链表结点（不是第一个和最后一个结点）。q=p->next，p->next=q->next，q->next=h->next，h->next=q。这段代码的功能是（）。', '[''把q指向的结点插入到p的后面'', ''把p指向的结点插入到q的后面'', ''把p指向的结点插入到h的后面'', ''把q指向的结点插入到h的后面'']', "['D']", 'D
代码分解分析：q=p->next;现在q指向的是p的下一个结点。p->next=q->next;这一步将q从链表中“摘除”：原本是p -> q -> q->next，现在变成了p -> q->next，也就是说q不再出现在链表的原位置。q->next=h->next;这一步将q->next指向当前链表的第一个有效结点（注意是h->next，即第一个结点，不是头结点）。h->next=q;把q接到头结点之后，也就是插入到链表头部（第一个有效结点之前）。操作的效果是：从链表中间删除了q，然后把它插入到了头结点之后，也就是插入到链表第一个有效结点之前。所以这段代码的功能是：把q指向的结点插入到h的后面正确答案选择D。', 9, 'Mogullzr', '2026-01-29 18:56:34', 9, NULL, '2026-01-29 18:56:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1130', '4005');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4006, '2024年408考研真题第2题', '简单', '2024年408真题', '表达式x+y*(z-u)/v的等价后缀是（  ）', '[''xyzu-*v/+'', ''xyzu-v/*+'', ''+x/*y-zuv'', ''+x*y/-zuv'']', "['A']", 'A
本题有两种解法：第一种是使用栈将中序转后序。
第二种方式是先将中序表达式转换为二叉树，然后再对二叉树进行后序遍历，得到后续表达式。这里建议使用第二种方式，对于选择题比较高效。', 9, 'Mogullzr', '2026-01-29 18:56:34', 9, NULL, '2026-01-29 18:56:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1198', '4006');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4007, '2024年408考研真题第3题', '简单', '2024年408真题', 'p、q、v 都是二叉树 T 中的结点，二叉树 T 的中序遍历为 ···, p，v，q，··· ，其中 v 有两个孩子结点，则下列说法正确的是（ ）。', '[''p 没右孩子，q 没左孩子'', ''p 没右孩子，q 有左孩子'', ''p 有右孩子，q 没左孩子'', ''p 有右孩子，q 有左孩子'']', "['A']", 'A
根据中序遍历结果和 v 是子树的根节点这些信息，则可以判定 p,q 分别在 v 的的左右子树上，对
于左子树而言，根据中序遍历结果为…p，则没有右孩子，同理，q 没有左孩子。或者假设 p 有右孩子
,q 有左孩子，则中序遍历结果中 p,v 之间一定还有序列，v,q 之间也一定还有序列，和题意冲突。', 9, 'Mogullzr', '2026-01-29 18:56:34', 9, NULL, '2026-01-29 18:56:34', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1089', '4007');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4008, '2024年408考研真题第4题', '简单', '2024年408真题', '给定无向图的邻接多重表，求顶点 b、d 的度（）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/732fb0503dc74eb8a7018ba9334ee00e.svg)
', '[''0, 2'', ''2, 4'', ''3, 2'', ''2, 3'']', "['B']", 'B
根据邻接多重表还原图，由下图可知，b 的度为 2，d 的图为 4。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/7223cf8a51934b688854b4a9ef1e5108.svg)
', 9, 'Mogullzr', '2026-01-29 18:56:35', 9, NULL, '2026-01-29 18:56:35', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1326', '4008');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4009, '2024年408考研真题第5题', '简单', '2024年408真题', '下列数据结构中，不适合直接使用折半查找的是（）I 有序链表 II 无序数组 III 有序静态链表 IV 无序静态链表', '[''仅 1、II'', ''仅 II、IV'', ''仅、II、IV'', ''I、II、III、IV'']', "['D']", 'D
折半查找需要数据结构支持随机访问才能发挥作用，对于链表，无法随机访问其中某个下标的元素。', 9, 'Mogullzr', '2026-01-29 18:56:37', 9, NULL, '2026-01-29 18:56:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1147', '4009');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4010, '2024年408考研真题第6题', '简单', '2024年408真题', 'KMP 算法使用修正后的 next 数组进行模式匹配，模式串 S = “aabaab”，当主串中某字符与 S 中某字符失去配对时，S 将向右滑动的最长距离是（  ）', '[''5'', ''4'', ''3'', ''2'']', "['A']", 'A
本题参考修正后的 next 数组，传统 KMP 使用 next 数组，不过会存在 j=next[j]的情况，因此采用 next_val[] 来优化，处理
好 next[] 和 next_val[] 后，举例即可，比如倒数第二个元素 a 匹配失败，会回到 -1 的位置，从 -1 的位
置走到 4 的位置需要右滑的距离为 5 位。| 下标       | 0  | 1  | 2 | 3  | 4  | 5 |
|:--------:|:--:|:--:|:-:|:--:|:--:|:-:|
| 元素       | a  | a  | b | a  | a  | b |
| next     | -1 | 0  | 1 | 0  | 1  | 2 |
| next_val | -1 | -1 | 1 | -1 | -1 | 1 |
', 9, 'Mogullzr', '2026-01-29 18:56:37', 9, NULL, '2026-01-29 18:56:37', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1248', '4010');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4011, '2024年408考研真题第7题', '简单', '2024年408真题', '一棵二叉搜索树如下图所示，K1、K2、K3 分别是对应结点中保存的关键字、三角形表示子树。则子树 T 中任一结点中保存的关键字 X 满足的是（ ）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/5031956b186a4097a9c7fc8569747aff.svg)
', '[''$X < K_{1}$'', ''$X > K_{2}$'', ''$K_{1} < X < K_{3}$'', ''$K_{3} < X < K_{2}$'']', "['D']", 'D
根据二叉搜索树的性质，$K_{2}$的左子树的节点关键字均小于$K_{2}$，可以得出$K_{3} < K_{2}$，$T$中所有节点小于$K_{2}$，同理也可以得出$K_{3}$的右子树节点均大于$K_{3}$，即$T$中所有节点$> K_{3}$，$X$是$T$中节点，由此可以得出$K_{3} < X < K_{2}$。', 9, 'Mogullzr', '2026-01-29 18:56:38', 9, NULL, '2026-01-29 18:56:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1174', '4011');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4012, '2024年408考研真题第8题', '简单', '2024年408真题', '使用快速排序算法对含 N（N ≥ 3） 个元素的数组 M 进行排序，若第一趟排序将除枢轴外的 N-1 个元素划分为 P 和 Q 两个部分，则下列叙述中，正确的是（ ）。', '[''P 和 Q 块间有序'', ''P 和 Q 均块内有序'', ''P 和 Q 的元素个数大致相等'', ''P 和 Q 中均不存在相等的元素'']', "['A']", 'A
本题考察快排的原理，快排第一趟找到枢轴之后，枢轴的左边的元素即 P 块都是小于枢轴的，枢轴的右边的元素即 Q 块是大于枢轴的，所以 P 和 Q 块间有序，然而块内未必是有序的，所以还需要继续对 P 和 Q 两块进行递归快排。', 9, 'Mogullzr', '2026-01-29 18:56:38', 9, NULL, '2026-01-29 18:56:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1231', '4012');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4013, '2024年408考研真题第9题', '简单', '2024年408真题', '已知关键字序列 28, 22, 20, 19, 8, 12, 15, 5 是大根堆（最大堆），对该堆进行两次删除操作后，得到的新堆是（ ）。', '[''20, 19, 15, 12, 8, 5'', ''20, 19, 15, 5, 8, 12'', ''20, 19, 12, 15, 8, 5'', ''20, 19, 8, 12, 15, 5'']', "['B']", 'B
本题考察堆的删除操作，先根据初始序列建堆，然后依次删除堆项元素，过程如下图：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/033c932586154f14b0334f35bc272654.svg)
', 9, 'Mogullzr', '2026-01-29 18:56:38', 9, NULL, '2026-01-29 18:56:38', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1095', '4013');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4014, '2024年408考研真题第10题', '简单', '2024年408真题', '初始有三个升序序列 (3, 5)、(7, 9)、(6)，若按从左至右的次序选择有序序列进行二路归并排序，则关键字之间的总比较次数是（）。', '[''3'', ''4'', ''5'', ''6'']', "['C']", 'C
本题考察多路归并的原理，二路归并排序将相邻的有序子序列两两合并，得到合并后有序子序列。重复此过程，直到所有子序列合并为一个有序序列。第一轮归并：将升序序列两两分组，(3,5) 和 (7,9) 分为一组，(6) 分为一组。(3,5) 和 (7,9) 的归并过程如下：| 输入序列          | 比较首个元素 | 输出元素 | 输出序列    | 剩余输入序列      |
|:-------------:|:------:|:----:|:-------:|:-----------:|
| (3,5) 和 (7,9) | 3 < 7  | 3    | 3       | (5) 和 (7,9) |
| (5) 和 (7,9)   | 5 < 7  | 5    | 3,5     | (7,9)       |
| (7,9)         |        | 7    | 3,5,7   | (9)         |
| (9)           |        | 9    | 3,5,7,9 |             |
第二轮归并：将升序序列两两分组，(3,5,7,9) 和 (6) 分为一组。(3,5,7,9) 和 (6) 的归并过程如下：| 输入序列            | 比较首个元素 | 输出元素 | 输出序列      | 剩余输入序列        |
|:---------------:|:------:|:----:|:---------:|:-------------:|
| (3,5,7,9) 和 (6) | 3 < 6  | 3    | 3         | (5,7,9) 和 (6) |
| (5,7,9) 和 (6)   | 5 < 6  | 5    | 3,5       | (7,9) 和 (6)   |
| (7,9) 和 (6)     | 7 > 6  | 6    | 3,5,6     | (7,9)         |
| (7,9)           |        | 7    | 3,5,6,7   | (9)           |
| (9)             |        | 9    | 3,5,6,7,9 |               |
到此，二路归并排序执行完毕。上述过程中第一轮归并关键字之间比较 2 次，第二轮归并关键字之间比较 3 次，因此，关键字之间的总比较次数为 2 + 3 = 5。本题选 C。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1195', '4014');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4015, '2024年408考研真题第11题', '简单', '2024年408真题', '在外排序中，利用败者树对初始为升序的归并段进行多路归并，败者树中记录"冠军"的结点保存的是（ ）', '[''最大关键字'', ''最小关键字'', ''最大关键字所在的归并段号'', ''最小关键字所在的归并段号'']', "['D']", 'D
在外排序的多路归并中，败者树（Loser Tree）是一种优化的数据结构，用于快速找出多个归并段中当前最小的关键字。它是一个完全二叉树，每个非叶子节点保存的是“败者”，而整棵树的根节点保存的是当前“冠军” —— 即：当前最小关键字所在的归并段号。所以答案选择 D。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1327', '4015');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4016, '2024年408考研真题第12题', '简单', '2024年408真题', 'C 语言代码如下：inti=32777;shortsi=i;intj=si;执行上述代码段后， j 的值为（ ）。', '[''-32777'', ''-32759'', ''32759'', ''32777'']', "['B']", 'B
int i=32777，赋值给 short 后，由于 short 只有 16 位，则只会保留 i 的低 16 位，同时，short 的上限为$2^{15} - 1$即 32767，所以 32777 在 short 类型的变量中会出现数据溢出问题，32777=32767+9，则溢出后的二进制补码为 1000000000001001。再将此数转为 int，此时将进行符号扩展，补高 16 位的时候取决于当前 short 的符号位，若符号位为 1，则高 16 位补 16 个 1，若符号位为 0，则高 16 位补 16 个 0，所以本题补 16 个 1，结果为补码 1111 …. 1000 0000 0000 1001，换算成原码再计算，选 B。或者使用排除法，最终通过补码的最高位 1 可以断定该数为负数，A、B 里面选，32777 对于 short 已经溢出，转为 short 再符号扩展，并不只是单纯地改变子符号，故排除 A，选 B。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '4016');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1098', '4016');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4017, '2024年408考研真题第13题', '简单', '2024年408真题', '将汇编语言程序中实现特定功能的指令序列定义成一条伪指令。下列选项中，CPU 能理解并直接执行的是Ⅰ. 伪指令 Ⅱ. 微指令 Ⅲ. 机器指令 Ⅳ. 汇编指令', '[''仅Ⅰ和Ⅳ'', ''仅Ⅱ和Ⅲ'', ''仅Ⅲ和Ⅳ'', ''仅Ⅰ、Ⅲ和Ⅳ'']', "['B']", 'B
伪指令：伪指令不是真正的 CPU 指令，而是由汇编器识别和执行的一些特殊指令。微指令：微指令是计算机硬件级别指令，一条机器指令所完成的操作划分成若干条微指令来完成。机器指令：CPU 可以直接解析和执行的二进制代码。汇编指令：低级别的编程语言，与机器指令一一对应，不过需要汇编器转换为机器指令，CPU 才能执行。这些概念的关系参考该节。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1232', '4017');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4018, '2024年408考研真题第14题', '简单', '2024年408真题', '某科学实验中，需要使用大量的整型参数，为了在保证表数精度的基础上提高运算速度，需要选择合理的数据表示方法。若整型参数$α$和$β$的取值范围分别为$−2^{20} ∼ 2^{20}$、$−2^{40} ∼ 2^{40}$，则下列选项中，$α$和$β$最适宜采用的数据表示方法分别是 (  ）', '[''32 位整数、32 位整数'', ''单精度浮点数、单精度浮点数'', ''32 位整数、双精度浮点数'', ''单精度浮点数、双精度浮点数'']', "['C']", 'C
a 最适宜采用 32 位整数，32 位整数可以表示$−2^{31} ∼ 2^{31} - 1$的范围，对于 a 的取值范围，可以用 32 位整数表示，不会发生溢出或者精度损失，而且整数运算比浮点数运算更快，更省空间，所以优先使用 32 位整数而不是单精度浮点数。排除 B、D，根据 B 的取值范围，可以使用双精度浮点数存储，双精度浮点数存储范围为$−2^{1023} ∼ 2^{1024}$，不会发生溢出问题，双精度浮点的小数精度为 15-16 位，比起单精度浮点，基本上不会发生精度损失。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1176', '4018');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1099', '4018');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4019, '2024年408考研真题第15题', '简单', '2024年408真题', '下列关于整数乘法运算的叙述中，错误的是（ ）。', '[''用阵列乘法器实现乘运算可以在一个时钟周期完成'', ''用 ALU 和移位器实现的乘运算无法在一个时钟周期内完成'', ''变量与常数的乘运算可编译优化为若干条移位及加/减运算指令'', ''两个变量的乘运算无法编译为移位及加法等指令的循环实现'']', "['D']", 'D
参考该节，我们逐项分析：A.用阵列乘法器实现乘运算可以在一个时钟周期完成✅阵列乘法器（array multiplier）是一种并行结构，硬件资源充足的情况下，确实可以在一个时钟周期内完成乘法运算（代价是面积大）。因此这个说法是正确的。B.用 ALU 和移位器实现的乘运算无法在一个时钟周期内完成✅这种方式对应的是串行乘法器，通过不断地移位与加法模拟乘法过程，至少需要多个时钟周期完成，因此正确。C.变量与常数的乘运算可编译优化为若干条移位及加/减运算指令✅例如x * 10可编译为(x << 3) + (x << 1)，这是常见的编译器优化技术，因此此项正确。D.两个变量的乘运算无法编译为移位及加法等指令的循环实现❌这项是错误的。事实上，若没有硬件乘法器，编译器或低级代码确实可以将变量之间的乘法（如a * b）转换为循环移位加法实现。比如使用Booth 算法、加移法（shift-and-add）等。因此选项 D 的说法是错误的。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1313', '4019');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4020, '2024年408考研真题第16题', '简单', '2024年408真题', '对于页式虚拟存储管理系统，下列关于存储器层次结构的叙述中，错误的是（ ）。', '[''Cache-主存层次的交换单位为主存块，主存-外存层次的交换单位为页'', ''Cache-主存层次替换算法由硬件实现，主存-外存层次由软件实现'', ''Cache-主存层次可采用回写法写策略，主存-外存层次通常采用回写法'', ''Cache-主存层次可采用直接映射，主存-外存层次通常采用直接映射'']', "['D']", 'D
主存 - 外存层次的映射方式通常采用页式映射，而不是直接映射。页式映射是一种将虚拟地址空间分割为固定大小的单元（页）的映射方式，它将页映射到物理地址的空间的相应单元（页框）中。页式映射的优点是减少了内外存之间的交换次数，提高了空间利用率，缺点是增加了地址转换的开销，需默维护页表。想一想，如果主存 - 外存页面采用直接映射的话，那么替换算法都直接没用了，所以 D 肯定是错误的。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4020');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4021, '2024年408考研真题第17题', '简单', '2024年408真题', '某计算机按字节编址，采用页式虚拟存储管理方式，虚拟地址为 32 位，主存地址为 30 位，页大小为 1 KB。若 TLB 共有 32 个表项，采用 4 路组相联映射方式，则 TLB 表项中标记字段的位数至少是（ ）。', '[''17'', ''18'', ''19'', ''20'']', "['C']", 'C
根据题意可知，虚拟地址为 32 位，主存地址为 30 位，页大小为 1KB，因此，虚拟页号为 32-10=22 位，物理页号为 30-10=20 位。TLB 共有 32 个表项，采用 4 路组相联映射方式。因此，TLB 共有 32/4=8 组，每组有 4 路。索引字段为$log_{2}8 = 3$位。标记字段位数 = 虚拟页号位数 - 索引字段位数=22-3=19 位。具体原理可以参考TLB一节。', 9, 'Mogullzr', '2026-01-29 18:56:40', 9, NULL, '2026-01-29 18:56:40', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1136', '4021');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4022, '2024年408考研真题第18题', '简单', '2024年408真题', '下列事件中，不是在 MMU 地址转换过程检测的是（）', '[''访问越权'', ''Cache 缺失'', ''页面缺失'', ''TLB 缺失'']', "['B']", 'B
MMU负责将虚拟地址转化为物理地址，所以会检测以下事件：访问越权、页面缺失、TLB 缺失。Cache 缺失不是在 MMU 地址转换过程中检测的，而是在 CPU 访问主存数据检测的，访问主存的前提是有物理地址，所以该过程是在 MMU 完成地址翻译之后。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4022');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4023, '2024年408考研真题第19题', '简单', '2024年408真题', '在采用“取指、译码/取数、执行、访存、写回”5 段流水线的 RISC 处理器中，下列关于指令流水线数据冒险处理的叙述中，错误的是（ ）。', '[''相邻两条指令中的操作数相关可能引起数据冒险'', ''在数据相关的指令间插入“气泡”能避免数据冒险'', ''所有数据冒险都可以通过加入转发（旁路）电路解决'', ''所有数据冒险都能通过调整指令顺序和插入 nop 指令解决'']', "['C']", 'C
本题考查数据冒险。A 选项正确，比如第一条指令写寄存器，下一条马上读同一个寄存器，就可能发生数据冒险。B 选项正确，“气泡”本质上是插入一条空操作（nop），让数据有时间准备好，避免错误读取。C 选项错误，Load-use hazard（加载 - 使用冒险）：加载指令的数据在内存访问阶段（MEM）才准备好，而后续指令可能在执行阶段（EX）就需要使用数据，这种情况即使有旁路电路也可能无法避免，通常还需要插入一个“气泡”。D 选项正确，插入气泡即推迟指令后续阶段执行，可以避免所有数据冒险。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1151', '4023');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4024, '2024年408考研真题第20题', '简单', '2024年408真题', '某存储器总线的时钟频率为 420 MHz，总线宽度为 64 位，每个时钟周期传送 2 次数据；其总线事务支持突发传送方式，最多传送 8 次数据，第 1 个时钟周期传送地址和读/写命令，从第 4 个至第 7 个时钟周期连续传送 8 次数据。该总线的总线带宽（最大传输速率）为（ ）。', '[''3.84GB/s'', ''6.72GB/s'', ''30.72 GB/s'', ''53.76GB/s'']', "['B']", 'B
已知：时钟$f = 420 MHz$总线宽度$w = 64 bit$每个时钟传2次数据（DDR），所以每周期传输次数$= 2$瞬时峰值带宽（只看数据线、连续传数据时）每秒传输次数$= 420 × 10^{6} × 2 = 840 × 10^{6}$次/秒， 每次 64 bit。
带宽（比特）$= 840 × 10^{6} × 64 = 53.76 × 10^{9} bit/s = 53.76 Gb/s$。
换算字节：$53.76/8 = 6.72 GB/s$。所以瞬时峰值：53.76 Gbit/s = 6.72 GB/s。按题目给出的事务时序（每次事务第1周期发地址/命令，第4~7周期传 8 次数据）计算的有效/持续带宽每次事务传输数据量：$8 × 64 = 512 bit = 64 bytes$。
每个事务占用时钟周期数为 7 周期（第1~第7周期），周期时长为$1/420 MHz$。
时间$t = 7/(420 × 10^{6})$s， 因此有效带宽（字节/s）：
$$
\\frac{64 bytes}{7/(420 × 10^{6}) s} = 3.84 × 10^{9} bytes/s = 3.84 GB/s
$$
比特/s 即$3.84 × 8 = 30.72 Gb/s$。所以按该事务时序的平均最大传输速率（持续带宽）为：30.72 Gbit/s = 3.84 GB/s。结论（按题意的推荐答案）：正确答案选择B，题目中问的是最大传输速率，指的是物理线的理论峰值，所以正确答案是6.72 GB/s（53.76 Gbit/s）。如果题目要求考虑第1周期的地址/命令开销，则答案是3.84 GB/s（30.72 Gbit/s）；这题属于是出题人故意埋坑，插入了一堆无用信息，属于很令人无语的一道题，正确答案是 B 而不是 A。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1107', '4024');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4025, '2024年408考研真题第21题', '简单', '2024年408真题', '下列关于中断 I/O 方式的叙述中，错误的是（ ）。', '[''中断屏蔽字用于确定中断响应的优先级'', ''保存断点和程序状态字在中断响应阶段完成'', ''保存通用寄存器和设置新中断屏蔽字由软件实现'', ''单重中断方式下，中断处理时 CPU 处于关中断状态'']', "['A']", 'A
中断是指外部设备或者程序需要 CPU 的服务时，向 CPU 发出一个信号，请求 CPU 暂停当前的任务，转而处理中断请求的情况。中断响应顺序是指当同时有多个中断请求时，CPU 按照一定的优先级顺序来选择响应哪个中断的规则。中断屏蔽字只能控制中断的开关，而不能控制中断的顺序，中断的顺序由中断的优先级决定，优先级高的中断先被响应，优先级低的中断后被响应。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '4025');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4026, '2024年408考研真题第22题', '简单', '2024年408真题', 'DMA 方式中，DMA 控制器控制的数据传输通路位于（ ）。', '[''CPU 和主存之间'', ''CPU 和 DMA 控制器之间'', ''设备接口和主存之间'', ''设备接口和 DMA 控制器之间'']', "['C']", 'C
在 DMA 方式中，DMA 控制器控制的数据传输通路位于设备接口和主存之间。这是因为 DMA（Direct Memory Access，直接存储器访问）的主要功能是在外设和存储器之间或者存储器和存储器之间提供高速数据传输。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1133', '4026');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4027, '2024年408考研真题第23题', '简单', '2024年408真题', '下面关于中断和异常的说法中，错误的是（ ）。', '[''中断或异常发生时，CPU 处于内核态'', ''每个系统调用都有对应的内核服务例程'', ''中断处理程序开始执行时，CPU 处于内核态'', ''系统添加新类型设备时，需注册相应的中断服务例程'']', "['A']", 'A
本题考查中断和异常。A 错误。中断或异常发生时，CPU 处于用户态。当中断或异常发生时，CPU 会从用户态切换到内核态，然后开始执行相应的中断处理程序或异常处理程序。B 正确。操作系统为每种系统调用提供了对应的内核服务例程，这些例程负责处理用户程序发起的系统调用，以及管理内核资源和执行相应的操作。当用户程序发起系统调用时，处理器会从用户态切换到内核态，并执行与该系统调用对应的内核服务例程。C 正确。当中断发生时，CPU 会从用户态切换到内核态，并开始执行相应的中断处理程序。因为中断处理程序需要访问和操作受保护的内核资源，如管理设备、执行特权指令等，所以中断处理程序必须在内核态下执行。D 正确。系统添加新类型设备时，需注册相应的中断服务例程。因为许多设备在发生特定事件时会触发中断，需要相应的中断处理程序来进行处理，该中断处理程序就是中断服务例程。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1109', '4027');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4028, '2024年408考研真题第24题', '简单', '2024年408真题', '下列选项中，操作系统在终止进程时不一定执行的是（）。', '[''终止子进程'', ''回收分配的内存资源'', ''撤销进程 PCB'', ''回收进程占用的设备'']', "['A']", 'A
当用户终止进程时，不一定终止子进程。因为子进程的生命周期并不总是与父进程紧密相关联，在某些情况下，即使父进程被终止，子进程也可以继续运行，如孤儿进程和僵尸进程。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1153', '4028');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4029, '2024年408考研真题第25题', '简单', '2024年408真题', '在支持页式存储管理的系统中，进程切换时 OS 要执行（）。I. 更新 PC（程序计数器）值
II. 更新栈基址寄存器值（ebp）
III. 更新页表基址寄存器值', '[''仅 III'', ''仅 I、II'', ''仅 I、III'', ''I、II、III'']', "['D']", 'D
I. 更新程序计数器的值：程序计数器存储了下一条要执行的指令的地址。当进程切换时
，操作系统需要更新程序计数器的值，以便于新的进程能从正确的位置开始执行。II. 更新栈基址寄存器的值：栈基址寄存器存储了当前进程栈的基址。当进程切换时，操作系统
需要更新栈基址寄存器的值，以确保新的进程使用正确的栈。III. 更新页表基址寄存器值：页基址寄存器存储了当前进程的页表基址。当进程切换时，操作系
统需要更新页基址寄存器的值，以确保新的进程能正确地访问其内存空间。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4029');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1150', '4029');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4030, '2024年408考研真题第26题', '简单', '2024年408真题', '文件系统需要额外的外存空间记录空闲块的位置，占用外存空间大小与当前空闲块数量无关的是（）。', '[''位示图'', ''空闲表'', ''成组链接'', ''空闲链表'']', "['A']", 'A
A. 文件系统需要额外的外存空间记录空闲块的位置，占用外存空间大小与当前空闲块数
量无关的是位示图。位示图是一种常用的记录空闲块位置的方法，它使用一个位来表示一个块是
否空闲。位示图的大小取决于磁盘的总块数，而与当前的空闲块数量无关。B. 空闲表：空闲表是一种记录磁盘空闲块位置的方法它使用一个表来记录空闲块的位置。空闲
表的大小会随着空闲块的数量的变化而变化。C. 成组链接：成组链接是一种记录该组中其他块的位置。成组链接的大小会随着空闲块数量的变
化而变化。D. 空闲链表：空闲链表是一种记录酸盘空闲块位置的方法，它使用一个链表来记录所有空闲块的
位置。空闲链表的大小会随着空闲块数量的变化而变化。', 9, 'Mogullzr', '2026-01-29 18:56:41', 9, NULL, '2026-01-29 18:56:41', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1170', '4030');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4031, '2024年408考研真题第27题', '简单', '2024年408真题', '回收分区时，仅合并大小相等的空闲分区的算法是（）。', '[''伙伴算法'', ''最佳适应算法'', ''最坏适应算法'', ''首次适应算法'']', "['A']", 'A
A.伙伴算法是一种特殊的内存分配算法，他在分配和回收内存时，只合并大小相等的空
闲分区。这种算法的优点是简单且执行速度快，但可能会导致内存碎片：B. 最佳适应算法：它在分配内存时，会选择大小最接近所需的空闲分区。这种算法的优点是可以
减少内存的浪费，但可能会导致大量的小碎片。C. 最坏适应算法：它在分配内存时，会选择最大的空闲分区。这种算法的优点是可以减沙内存的
碎片，但可能会导致大量的大碎片。D.首次适应算法：它在分配内存时，会选择第一个满足所需的空闲分区。这种算法的优点是简单
且执行速度快，但可能会导致内存的碎片。动态分区分配算法具体参考该节。', 9, 'Mogullzr', '2026-01-29 18:56:42', 9, NULL, '2026-01-29 18:56:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1156', '4031');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4032, '2024年408考研真题第28题', '简单', '2024年408真题', '若进程 P 中有一个线程 T，打开文件后获得 fd，再创建线程 Ta、Tb，则线程 Ta、Tb 可共享的资源是（）。I. 进程 P 的地址空间
II. 线程 T 的栈
III. fd', '[''仅 I'', ''仅 I、III'', ''仅 II、III'', ''I、II、III'']', "['B']", 'B
I. 进程 P 的地址空间：在同一进程中的所有线程共享该进程的地址空间。这意味着，线程 Ta 和 Tb 可以访问进程 P 的全局变量，因为这些变量存储在进程的地址空间中。此外，如果线程 T 在堆上分配了内存，那么线程 T 和 Tb 也可以访问这些内存，因为堆是存储在进程的地址空间中的。II. 线程 T 的栈：每个线程都有自己的栈，这是线程的私有资源，不会被其他线程共享。栈用于存储函数调用的局部变量和返回地址。由于每个线程可能有不同的函数调用序列，因此每个线程需要由自己的栈，因此，线程 Ta 和 Tb 不能访问线程 T 的栈。III. 文件描述符 fd：同进程中的所有线程共享该进程打开的文件描述符。文件描述符是一个整数，用于表示进程打开的文件。当线程打开一个文件时，操作系统会返回一个文件描述符，然后线程 T、T 和 Tb 都可以使用这个文件描述符来读写该文件，这是因为，尽管每个线程有自己的栈，但是它们共享其余的进程资源，包括文件描述符。', 9, 'Mogullzr', '2026-01-29 18:56:42', 9, NULL, '2026-01-29 18:56:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1183', '4032');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4033, '2024年408考研真题第29题', '简单', '2024年408真题', '以下系统调用中，包含文件按名查找功能的系统调用是（）。', '[''open()'', ''read()'', ''write()'', ''close()'']', "['A']", 'A
A. open() 系统调用用于打开一个文件。它需要一个文件名作为参数，因此它包含了按名
查找文件的功能。如果文件存在并且进程有足够的权限，open() 会成功打开文件并返回一个文件
描述符，否则，它会返回一个错误。B. read() 系统调用用于从已打开的文件中读取数据。C. write() 系统调用用于向已打开的文件中写入数据。D. close() 系统调用用于关闭已打开的文件。', 9, 'Mogullzr', '2026-01-29 18:56:42', 9, NULL, '2026-01-29 18:56:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1205', '4033');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1308', '4033');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4034, '2024年408考研真题第30题', '简单', '2024年408真题', '假设某系统使用时间片轮转调度算法进行 CPU 调度，时间片大小为 5 ms，系统共有 10 个进程，初始时均处于就绪队列，执行结束前仅处于执行态或就绪态。若队尾的进程 P 所需 CPU 时间最短，时间为 25 ms。在不考虑系统开销的情况下，则进程 P 的周转时间为（ ）。', '[''200ms'', ''205ms'', ''250ms'', ''295ms'']', "['C']", 'C
由于使用的是轮转调度算法，进程即在每次执行一个时间片后，都需要重新回到就绪队列的末尾等待下一次的时间片。所以，实际上，进程 P 的每一个时间片之间都有一个完整的轮转周期的等待时间：10×5ms=50ms，进程 P 需要执行 25/5 个时间片，所有中间有 4 个完整的轮转周期再加上 P 的周转时间为，总共需要 5 个轮转周期：5×50ms=250s。', 9, 'Mogullzr', '2026-01-29 18:56:42', 9, NULL, '2026-01-29 18:56:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1111', '4034');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1284', '4034');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4035, '2024年408考研真题第31题', '简单', '2024年408真题', '键盘中断服务例程执行结束时，所输入的数据存放位置是（） 。', '[''用户缓冲区'', ''CPU 的通用寄存器'', ''内核缓冲区'', ''键盘控制器的数据缓冲区'']', "['C']", 'C
当键盘输入数据时，首先会将数据发送到键盘控制器的数据寄存器中。当键盘控制器的数据寄存器接收到数据后，它会触发一个中断请求 (IRQ1)，通知 CPU 有数据等待处理。CPU 响应中断请求后，会执行键盘中断服务例程。在中断服务例程中，CPU 从键盘控制器的数据寄存器读取输入数据，并将其存放到内核缓冲区中。A 错误。用户缓冲区通常指的是应用程序为接收输入数据而分配的缓冲区。在键盘中断服务例程执行结束时，输入数据并不会直接存放在用户缓冲区中，而是先存放在内核缓冲区中。应用程序可以通过系统调用或其他机制从内核缓冲区读取输入数据，并将其复制到用户缓冲区中。B 错误。CPU 中的通用寄存器并不是输入数据的最终存放位置。在键盘中断服务例程执行过程中，输入数据可能会暂时存放在 CPU 的通用寄存器中，但最终会被存放到内核缓冲区中。C 正确。内核缓冲区是操作系统用于暂存输入数据的内存区域。在键盘中断服务例程执行过程中，输入数据被读取并存入内核缓冲区，以便后续的系统调用或应用程序访问。内核缓冲区通常由操作系统管理，确保数据的正确性和一致性。D 错误。键盘控制器的数据寄存器是输入数据的初始存放位置，但并不是中断服务例程执行结束时的最终存放位置。本题选 C。', 9, 'Mogullzr', '2026-01-29 18:56:42', 9, NULL, '2026-01-29 18:56:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1132', '4035');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4036, '2024年408考研真题第32题', '简单', '2024年408真题', '某磁盘的磁道数为 400（磁道号为 0~399），采用循环扫描算法 (CSCAN) 进行磁盘调度，完成对 200 号磁道的请求后，磁头向磁道号减小的方向移动，若还有 7 个请求，对应的磁道号分别为 300, 120, 110, 0, 160, 210, 399，则完成上述磁盘请求后磁头移动的距离是（ ）。', '[''599'', ''619'', ''788'', ''799'']', "['C']", 'C
在CSCAN中，磁头会在一个方向上移动，直到达到磁道的一端，然后立即返回到另一端，再次开始扫描。首先磁头会移动到 160 号磁道，然后依次是 120 号、110 号、0 号，接着磁头移动到开头，然后向磁道号减少的方向移动：依次移动到 399 号、300 号、210 号，完成所有请求后，磁头移动的总距离为：200-160=40；160-110=50；110-0=110；399-0=399；399-300=90；300-210=90；磁头移动的总距离为 40+50+110+399+99+90=788', 9, 'Mogullzr', '2026-01-29 18:56:42', 9, NULL, '2026-01-29 18:56:42', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1116', '4036');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4037, '2024年408考研真题第33题', '简单', '2024年408真题', '若分组交换网络及每段链路的带宽如下图，则 H1 到 H2 的最大吞吐量约为（）。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/68d5b1d9c48e49929af03c2b6824022f.svg)
', '[''1Mbps'', ''10Mbps'', ''100Mbps'', ''1000Mbps'']', "['B']", 'B
H1 和 H2 两端的最大传输速率为 10Mbps，虽然中间的路由器最大传输速率为 1000Mbps,
但是根据网路最大流算法，HI 和 H2 的最大吞吐量等价于最大流，最大流为 1OMbps。', 9, 'Mogullzr', '2026-01-29 18:56:43', 9, NULL, '2026-01-29 18:56:43', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1160', '4037');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4038, '2024年408考研真题第34题', '简单', '2024年408真题', '在下列二进制数字调制方法中，需要 2 个不同频率载波的是（）。', '[''ASP'', ''PSK'', ''FSK'', ''DPSK'']', "['C']", 'C
本题考查调制方法：选项 A：ASK (Amplitude Shift Keying) 幅移键控，这种调制方式是利用载波幅度的变化来传送数字信息的。因此排除选项 A。选项 B：PSK (Phase Shift Keying) 相移键控，这种调制方式是利用载波振荡相位的变化来传送数字信息的。因此排除选项 B。选项 C：FSK (Frequency Shift Keying) 频移键控，这种调制方式是利用载波频率的变化来传送数字信息的。在二进制数字调制中，常见的是二进制 0 和 1 对应不同的频率。因此选项 C 为正确选项。选项 D：DPSK (Differential Phase Shift Keying) 差分相移键控，它不是利用载波相位的绝对数值传送数字信息，而是用前后码元的相对载波相位值传送数字信息。因此排除选项 D。本题选 C。', 9, 'Mogullzr', '2026-01-29 18:56:44', 9, NULL, '2026-01-29 18:56:44', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1121', '4038');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4039, '2024年408考研真题第35题', '简单', '2024年408真题', '如题 35 图所示的支持 VLAN 划分的交换机，已按端口划分了 3 个 VLAN，部分端口连接主机的 IP 地址和 MAC 地址如图中所示，ARP 表结构为<IP 地址，MAC 地址，TTL> ，下列选项中，不会出现在 H4 的 ARP 表中的是（）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/780bf4ce85d542d198a1af696dbd8d12.svg)
', '[''192.168.3.81, 00-18-A2-3B-36-21, 14:32:00'', ''192.168.3.91, 00-3E-C2-39-12-B5, 14:37:00'', ''192.168.3.125, 00-E5-78-4A-09-B2, 14:35:00'', ''192.168.3.129, 00-08-6E-05-A7-82, 14:52:00'']', "['D']", 'D
VLAN(Virtual Local Area Network) 虚拟局域网技术可以把同一物理局域网内的不同用户逻辑地划分成不同的广播域。位于同一 VLAN 的主机之间可以相互通信，位于不同 VLAN 的主机之间不能直接通信。ARP(Address Resolution Protocol) 地址解析协议，是根据 IP 地址获取物理地址的一个 TCP/IP 协议。主机发送信息时将包含目标 IP 地址的 ARP 请求广播到局域网络上的所有主机，并接收返回消息，以此确定目标的物理地址；收到返回消息后将该 IP 地址和物理地址存入本机 ARP 缓存中并保留一定时间，下次请求时直接查询 ARP 缓存以节约资源。因此，ARP 协议可以在同一 VLAN 中起作用。由图可知，VLAN1 中包含 H1、H2、H3 和 H4；VLAN2 中包含 H5；VLAN3 中包含 H6 和 H7。A 和 H2 有关，H2 和 H4 都位于 VLAN1 中，因此该项会出现在 H4 的 ARP 表中。B 和 H1 有关，H1 和 H4 都位于 VLAN1 中，因此该项会出现在 H4 的 ARP 表中。C 和 H3 有关，H3 和 H4 都位于 VLAN1 中，因此该项会出现在 H4 的 ARP 表中。D 和 H6 有关，H6 位于 VLAN3 中，而 H4 都位于 VLAN1 中，两者不在同一个 VLAN 中，因此该项不会出现在 H4 的 ARP 表中。本题选 D。', 9, 'Mogullzr', '2026-01-29 18:56:45', 9, NULL, '2026-01-29 18:56:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1123', '4039');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1328', '4039');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1196', '4039');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4040, '2024年408考研真题第36题', '简单', '2024年408真题', '在采用 CSMA/CA 的 802.11 无线局域网中，DIFS = 120 μs，SIFS = 28μs，RTS、CTS 和 ACK 帧的传输时延分别是 3 μs、2 μs 和 2 μs，忽略信号传播时延。若主机 A 欲向 AP 发送一个总长度为 1998 B 的数据帧，无线链路带宽为 54 Mb/s，则隐藏站 B 收到 AP 发送的 CTS 帧时，设置的网络分配向量 NAV 的值是（）', '[''326us'', ''354us'', ''385us'', ''513us'']', "['B']", 'B
在CSMA/CA的 802.11 无线局域网中，网路分配向量（NAV）是用来告诉其他节点预计要占用无线媒体多长时间的一种机制。在发送 RTS（请求发送）和 CTS（清除发送）帧时，发送节点会在帧头中包含一个持续时间字段，这个字段表示从发送当前帧到接收到最后一个 ACK 帧所需的时间。其他节点在接收到 RTS 或 CTS 帧后，会根据这个持续时间字段设置自己的 NAV，从而避免在这段时间内发送数据，防止发生冲突。NAV 的时间就是其他节点推迟访问的时间，约等于 SIFS 时间 + 数据发送时间 + SIFS 时间 + ACK 帧传播时延。根据题目中的信息，我们可以计算出设置 NAV 的值。首先，我们需要计算发送数据顿所需的时间数据帧的总长度为 1998B，无线链路带宽为 54bps，所以发送数据帧所需的时间为：1998B/54Mbps=296μs，则总时间=28μs+296μs+28μs+2μs=354μs', 9, 'Mogullzr', '2026-01-29 18:56:45', 9, NULL, '2026-01-29 18:56:45', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1287', '4040');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4041, '2024年408考研真题第37题', '简单', '2024年408真题', '主机甲通过选择重传（SR）滑动窗口协议向主机乙发送帧的部分过程如下图所示。F 为数据帧，ACKx
为确认帧，x 是位数为比特的序号。乙只对正确接收的数据帧进行独立确认。发送窗口与接收窗口大小相
同且均为最大值。甲在$t_{1}$时刻和$t_{2}$时刻发送的数据帧分别是 ( )
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/56d40a15e3344ea38ceca0d043e54606.svg)
', '[''F1、F3'', ''F1、F4'', ''F3、F1'', ''F4、F1'']', "['D']", 'D
在$t_{1}$时刻主机甲接收到了主机乙发送的 ACKO，暂时没有出错的帧，所以继续发送下一
个数据帧 F4。在$t_{2}$时刻主机甲收到了 F1 超时的错误，根据选择性重传，发送方只需要重传出错的帧，而不是所有的帧，所以只需要重新发送 F1。', 9, 'Mogullzr', '2026-01-29 18:56:47', 9, NULL, '2026-01-29 18:56:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1122', '4041');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4042, '2024年408考研真题第38题', '简单', '2024年408真题', '假设主机 H 通过 TCP 向服务器发送长度为 3000B 的报文，往返时间 RTT=10ms，最长报文段寿命
MSL=30s，最大报文段长度 MSS=1000B，忽略 TCP 段的传输时廷，报文传输结束后 H 首先请求断开连接，
则从 H 请求建立 TCP 连接时刻起，到 H 进入 CLOSED 状态为止，所需时间至少是（ ）', '[''30.03s'', ''30.04s'', ''60.03s'', ''60.04s'']', "['D']", 'D
在 TCP 连接中，从建立连接到关闭连接的过程包括以下步骤：建立链接：这个过程通常为称为三次握手，SYN、SYN-ACK、ACK，需要一个往返时间 RTT。数据传输：主机 H 向服务器发送长度为 3000B 的报文。由于最大报文段长度 MSS=1000B，第一
次拥塞窗口为 1 发送 1000B，第二次拥塞窗口为 2 发送 2000B，所以一共消耗 2 个最长报文段寿
命，2 个 RTT。关闭连接：这个过程通常称为四次挥手FIN、ACK、FIN、ACK。第一次挥手和第三次挥手构成一个 RTT，第二次和第三次是连续发送的，第四次发出去的时候和客户端等待的 2SL 时间重叠，所以需要 1 个 RTT。所需时间 1RTT+2RTT+1RTT+2MSL=4RTT+2MSL。将 RTT=10ms=0.01s 和 MSL=30s 代入上式，得到 60.04s。', 9, 'Mogullzr', '2026-01-29 18:56:47', 9, NULL, '2026-01-29 18:56:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1192', '4042');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1312', '4042');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4043, '2024年408考研真题第39题', '简单', '2024年408真题', '若 UDP 协议在计算校验和过程中，计算机得到中间结果为 1011 1001 1011 0110 时，还需要加上最后
一个 16 位数 0110 0101 1100 0101，则最终计算得到的校验和是（）', '[''0001 1111 0111 1011'', ''0001 1111 0111 1100'', ''1110 0000 1000 0011'', ''1110 0000 1000 0100'']', "['C']", 'C
UDP 是一种传输层协议，UDP 校验和计算的步骤如下：将 UDP 首部和 UDP 数据字段合并成一个伪首部和一个伪数据字段。伪首部的内容包括源 IP 地址、目
的 IP 地址、协议类型、UDP 数据长度。伪数据字段的内容 UDP 首部和数据字段本身。对伪首部和伪数据字段进行 16 位的字节级求和，得到一个结果。对结果进行反码运算，得到最终的校验和。1011 1001 1011 0110
+ 0110 0101 1100 0101
---------------------
 10001 1111 0111 1011最高位产生进位所以需要在末尾加 1，可得：0001111101111100。取反可得：1110 0000 1000 0011', 9, 'Mogullzr', '2026-01-29 18:56:47', 9, NULL, '2026-01-29 18:56:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1242', '4043');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4044, '2024年408考研真题第40题', '简单', '2024年408真题', '若浏览器不支持并行 TCP 连接，使用非持久的 HTTP/1.0 协议请求浏览 1 个 web 页，该页中引用同一
个网站上 7 个小图像文件，则从浏览器传输 web 页请求建立 TCP 连接开始，到接收完所有内容为止，所
需要的往返时间 RTT 数至少是（）', '[''4'', ''9'', ''14'', ''16'']', "['D']", 'D
参考长连接和短连接，在 HTTP/1.0 协议中，如果浏览器不支持并行 TCP 连接，那么每个请求（包括主页面和每个图像文件）都需要单独建立一个 TCP 连接。每个 TCP 连接的建立都需要 1 个往返时间 RTT，因此，对于主页面和 7 个图像文件的请求，总共需要 8 个 RTT。此外，每个 TCP 连接在数据传输完成后都需要关闭，每个关闭连接也需要一个 RTT，共 8 个 RTT。所以从浏览器为传输 Web 页请求建立 TCP 连接开始，到接收完所有内容为所需要的往返时间 RTT 数至少是 8（建立连接）+8（关闭连接）= 16。', 9, 'Mogullzr', '2026-01-29 18:56:47', 9, NULL, '2026-01-29 18:56:47', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1197', '4044');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4045, '2024年408考研真题第41题', '简单', '2024年408真题', '2023 年 10 月 26 日，神州十七号载人飞船发射取得圆满成功，再次彰显了中国航天事业的辉煌成就。载人航天工程是包含众多子工程的复杂系统工程，为了保证工程的有序开展，需要明确各子工程的前导工程。以协调各子工程的实施。该问题可以简化、抽象为有向图的拓扑序列问题。已如有向图 G 采用邻接矩阵存储，类型定义如下：typedefstruct// 图的类型定义{intnumVertices,numEdges;// 图的顶点数和有向边数charverticesList[MAXV];// 项点表，MAXV 为以定义常量intEdge[MAXV][MAXV];// 邻接矩阵}MGraph请设计算法：int uniquely(MGraph G)。判定 G 是否存在唯一的拓扑序列，若是则返回 1，否则返回 0。要求：(1) 给出算法的基本设计思想（4 分）(2) 根据设计思想，采用 C 或 C++ 语言描述算法，关键之处给出注释（9 分）', '[]', '', '1）算法基本设计思想
输出拓扑序列的过程如下：依次从图中选取入度为 0 的点进行输出。
确保拓扑序列唯一需要保证如下条件：在输出拓扑序列时，每一次有且仅有一个入度为 0 的顶点。
所以这题最直观的思路就是进行 numEdges 轮遍历，如果每轮遍历只有一个顶点的入度为 0，则图中存在唯一的拓扑序列；
否则不存在唯一的拓扑序列。
2）算法实现
intuniquely(MGraphg){intn=g.numVertices;intinDegrees[MAXV];/* 计算所有顶点的入度 */for(intv=0;v<n;v++){inDegrees[v]=0;for(inti=0;i<n;i++){if(g.Edge[i][v]!=0)inDegrees[v]+=g.Edge[i][v];}}/* 进行 n 轮拓扑删除 */for(intk=0;k<n;k++){intcount0=0;// 入度为 0 的顶点个数intv0=-1;// 本轮唯一可以选择的顶点/* 找所有入度为 0 的顶点 */for(inti=0;i<n;i++){if(inDegrees[i]==0){count0++;v0=i;}}/* 若不是唯一一个，则拓扑序列不唯一 */if(count0!=1){return0;}/* “删除”该顶点：将其入度设为 -1，避免重复选取 */inDegrees[v0]=-1;/* 更新其所有后继节点的入度 */for(intj=0;j<n;j++){if(g.Edge[v0][j]!=0)inDegrees[j]--;}}/* 所有步骤都唯一，拓扑序唯一 */return1;}
', 9, 'Mogullzr', '2026-01-29 18:56:47', 9, NULL, '2026-01-29 18:56:47', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1146', '4045');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1193', '4045');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4046, '2024年408考研真题第42题', '简单', '2024年408真题', '将关键字$20, 3, 11, 18, 9, 14, 7$依次存储到长度为$11$的散列表$HT$中，散列函数为$H(key) = (key × 3)%11$，$H0$为初始散列地址，$H_{1}$、$H_{2}$、$H_{3}$、$⋯$、$H_{k}$分别为第$1$次冲突、第$2$次冲突、第$3$次冲突、$⋯$、第$k$次冲突时探测的地址。$H_{k} = (H_{0} + k^{2})%11$。请回答下列问题：(1) 画出所构造的$HT$。并计算$HT$的域装因子（6 分）(2) 给出在$HT$中查找关键字 14 的关键字比较序列（2 分）(3) 在$HT$中查找关键字 8，确认查找失败时的散列地址是多少？（2 分）', '[]', '', '1）散列表 HT 如下：
|      |    |   |    |   |   |    |   |   |   |   |    |    |    |
|:----:|:--:|:-:|:--:|:-:|:-:|:--:|:-:|:-:|:-:|:-:|:--:|:--:|:--:|
| 散列地址 | 0  | 1 | 2  | 3 | 4 | 5  | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
| 关键字  | 11 |   | 14 | 7 |   | 20 | 9 |   |   | 3 | 18 |    |    |
| 冲突次数 | 1  |   | 3  | 2 |   | 1  | 2 |   |   | 1 | 1  |    |    |

装填因子等于散列表中已经被填充的位置的数量除以散列表的总长度，因此本题的填装因子是 7/11。
2）查找关键字 14 的比较序列：
首先，我们计算 14 的散列地址：$H(14) = (14 × 3)%11 = 42%11 = 9$。我们查看散列表中索引为 9 的位置，发现哪里存储的是关键字 3，此时产生哈希冲突。由于我们使用的是二次探查，所以计算下一个散列地址：$H_{1} = (H_{0} + 1^{1})%11 = (9 + 1)%11 = 10$。
发现那哪里存储的是关键字 18，再次遇到哈希冲突。继续计算下一个散列地址：$H_{2} = (H_{0} + 2^{2})%11 = (9 + 4)%11 = 2$，找到关键字 14，
3）查找关键字 8 失败时的哈希地址
计算 8 的散列地址：$H(8) = (8 × 3)%11 = 24%11 = 2$，索引为 2 的位置发现关键字 18，遇到冲突。使用二次探查，计算下一个散列地址：$H_{1} = (H_{0} + 1^{1})%11 = (2 + 1)%11 = 3$。索引为 3 的位置
存储的是关键字 7，遇到冲突。我们继续使用一次探查，计算下一个散列地址：$H_{2} = (H_{0} + 2^{2})%11 = (2 + 4)%11 = 6$，索引为 6 的位置存储的是关键字 9，遇到冲突。我们继续使用二次探查，计算下一个散列地址：$H_{3} = (H_{0} + 3^{2})%11 = (2 + 9)%11 = 0$。索引为 0 的位置存储的是关键字 11，遇到冲突。我们继续使用二次探查，计算下一个散列地址：$H_{4} = (H_{0} + 4^{2})%11 = (2 + 16)%11 = 7$，发现索引为 7 的位置是空的，确认查找失败，散列地址是 7。
', 9, 'Mogullzr', '2026-01-29 18:56:47', 9, NULL, '2026-01-29 18:56:47', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1165', '4046');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4047, '2024年408考研真题第43题', '简单', '2024年408真题', '假定计算机 M 字长为 32 位。按字节编址，采用 32 位定长指令字，指令add slli和lw的格式、编码和功能说明如题 43(a) 图所示。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/3d52059785ea40bbbae8ac976b620e89.svg)
其中R[x]表示通用寄存器x的内容，M[x]表示地址为x的存储单元内容，shamt为移位位数，imm为补码表示的偏移量。题 43(b) 图给出了计算机 M 的部分数据通路及其控制信号（用箭头虚线表示），其中，A和B分别表示从通用寄存器rs1和rs2中读出的内容，IR[31:20]表示指令寄存器中的高12位。控制信号Ext为 0、1 时扩展器分别实现零扩展，符写扩展ALUctr为 000、001、010 时 ALU 分别实现加、减、逻辑左移运算。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/c36ebc6612274d8d98126522f1c68f55.svg)
请回答下列问题(1) 计算机 M 最多有多少个通用寄存器？为什么shamt字段占 5 位？（2 分）(2) 执行add指令时，控制信号ALUBsrc的取值应该是什么？若rs1和rs2寄存器内容分别是8765 4321H和9876 5432H，则add指令执行后，ALU输出端F、OF和CF的结果分别是什么？若设add指令处理的是无符号整数，则应根据哪个标志判断是否溢出（3 分）(3) 执行slli指令时，控制信号Ext的取值可以是 0 也可以是 1，为什么？（2 分）(4) 执行lw指令时，控制信号Ext、ALUctr的取值分别是什么？（2 分）(5) 若一条指令的机器码是A040 A103H，则该指令一定是lw指令，为什么？(2 分）(6) 若执行该指令时，R[01H]=FFFF A2D0H，则所读取数据的存储地址是多少？(2 分）', '[]', '', '1）从 43 题 (a) 图可以看到，Y 寄存器 rs1 和 rs2 用 5 位表示，所以计算机 M 最多的是 2⁵=32 个寄存器。根据指令R[rd] ← [rs1] << shamt可知，shamt 表示左移。
shamt：计算机的机器字长是 32 位，所以 shamt 表示左移的最大范围不能超过 32，所以只需要
5bit 就可以表示对应的范围：$log_{2}32 = 5$。
2）ALUBsrc = 0，它的作用是支持 lw 指令和 imm 的偏移（R[rd] ← M[R[rs1]+imm]）
F 的计算如下：
8765 4321
+ 9876 5432
------------
 11FDB 9753
由于计算机的机器字长是 32 位，所以最高位的 1 舍掉，F = 1FDB 9753H:
OF是溢出位，我们计算的结果发现确实发生了溢出和进位，所以 OF=1。
CF是进位位，计算时发现了最高位有进位，所以 CF=1。
溢出的判断方法是，最高位进位（异或）次高位，计算过程发现最高位进位，次高位没有进位，所以 CF 是标志判断是否溢出。
3）slli 代表左移指令，slli 指令的高 12 位（即 IR[31:20]）的最高位为 0，因此无论进行零扩展还是符号扩展，都是在高位补 0，效果等价，因此 Ext 可以是 0 也可以是 1。
4）R[rd] ← M[R[rs1]+imm]这条指令的意思是，rs1 里的内容加上立即数，等于真正要访问的内存地址。
计算偏移地址，偏移地址可正可负，应该使用补码表示。
所以是符号扩展，Ext=1，然后表示加法，所以根据 (b) 图可知 ALUctr=000。
5）A040 A103H = 1010 0000 0100 0000 1010 0001 0000 0011B，60 位 = 0000011，中间的 1412 位 = 010，
最高的 12 位为 A04H。其他两个指令 add 和 slli 的高 12 位都是 000H，所以该指令一定是 lw 指令。
6）A040 A103H = 1010 0000 0100 0000 1010 0001 0000 0011B，60 位 = 000 0011，中间的 1412 位 = 010，
最高的 12 位为 A04。imm 是 31~25，也就是 A404 组（注意是符号扩展）
扩展完 1111 1111 1111 1111 1111 1010 0000 0100，十六进制是 FFFF FA04。rs1 里的内容加上立即数，等于真正要访问的内存地址，R[O1H]=FFFF A2DOH，所以 FFFFFA04 + FFFFA2D0 = FFFF9CD4H。
', 9, 'Mogullzr', '2026-01-29 18:56:50', 9, NULL, '2026-01-29 18:56:50', 1, 0);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4048, '2024年408考研真题第44题', '简单', '2024年408真题', '对于题 43 中的计算机 M，C 语言程序 P 包含的语句sum+=a[i];，在 M 中对应的指令序列 S 如下：已知变量i，sum和数组a都为 int 型，通用寄存器r1 - r5的编号为01H-05H。请回答下列问题。（1）根据指令序列s中每条指令的功能，写出存放数组a的首地址、变参i和sum的通用寄存器编号（3 分）（2）已知 M 为小端方式，计算机采用页式存储管理方式。页大小为 4KB。若执行到指令序列 s 中第 1 条指令时，i=5且r1和r3的内容分别为0000 1332H和0013 DFF0H。从地址0013 DFF0H开始存储单元内容如题 44 图所示。则执行sum+=a[i];语句后。a[i]的地址、a[i]和sum的机器数分别是什么（用十六进制表示）？a[i]所在页的页号是多少？在此次执行中，数据组a至少存放在几页中？（5 分）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/27da5e43df0b4f34a9097714a5443c94.svg)
（3）指令slli r4, r2, 2的机器码是什么（用十六进制表示）？若数组a改为 short 类型，则指令序列存到 S 中slli指令的汇编形式应是什么？', '[]', '
1）a的首地址存放在r3；i存放在r2；sum存放在r1。
2）a[i]的地址为0013 E004H；a[i]的机器数为FFFF ECDCH；sum的机器数为0000 000EH；a[i]所在页的页号是0013EH；数组a至少存放在 2 页中。
3）指令机器码为0021 2213H。汇编形式是slli r4, r2, 1。
', '
1）add r4,r3,r4：这条指令将寄存器 r3 和 r4 的值相加，结果存储在寄存器 r4 中。这对应于计算数组元素的内存地址（即&a[i]）。因此，我们可以推断出寄存器 r3 存储的是数组 a 的首地址，即 a 的寄存器编号为 03H。
slli r4,r2,2：这条指令将寄存器 r2 的值左移 2 位，2 结果存储在寄存器 r4 中。在 C 语言中，这对应于数组索引的计算（即i*4，因为每个 int 类型占 4 字节）。因此，我们可以推断出寄存器 r2 存储的是变量 i 的值，即的寄存器编号位 02H。
add r1,rl,r5：这条指令将寄存器 r1 和 r5 的值相加，结果存储在寄存器 r1 中。这对应于累加操作（即 sum+=a[i])。因此，我们可以推断出寄存器 r1 存储的是变量 sum 的值，即 sum 的寄存器编号为 01H。
所以，数组 a 的首地址、变量 i 和 sum 的通用寄存器编号分别为 03H、02H 和 01H。
2）执行sum+=a[i]语句后，i 保持不变即 i = 5，每个数组元素占用四个字节
i=0时，a[0]占据存储单元 FF FF FF 7Ci=1时，a[1]占据存储单元 70 FE FF FFi=2时，a[2]占据存储单元 00 00 00 00i=3时，a[3]占据存储单元 3C 02 01 FFi=4时，a[4]占据存储单元 FF FF FF 7Ci=5时，a[5]占据存储单元 F0 F1 00 00i=6时，a[6]占据存储单元 DC EC FF FF
所以a[i]的地址 = 首地址 + 偏移量 =0013 E000 + 4 * (5-1)=0013 E004H。
a[i]的机器数按照小端编址，所以 DC 作为最低位放在最右边，以此类推可得：a[i] 的机器数 =FFFF ECDCH。
sum 的机器数 = 0000 1332H + FFFF ECDCH = (1) 0000 000EH。由于只有 32 位，所以最高位舍掉后答案为0000 000EH。
页大小为 4KB =$2^{12}$B，所以页内地址占 12 位，去掉后 12 位剩余的则是 20 位页号，a[i] 所在页页号 =0013EH。
我们有 20 位页号，根据题目可知数组跨页号了 0013E 和 0013D，所以数组 a至少存放在 2 页中。
3）slli r4,r2,2//R[r4]←R[r2]<<2
通用寄存器 r1→r5 的编号位 01H→05H。
6~0：由表可得：001001111~7：rd = r2 = 0001014~12：由表可知为 01019~15：rd = r4 = 0010024~20：shamt = 2，可以为 2420：31~25：由表可知为 000 0000
机器码 = 0000 0000 0010 0001 0010 0010 0001 0011B =0021 2213H。
若 a 改为 short 类型，slli 指令的汇编形式应该是slli r4, r2, 1。
', 9, 'Mogullzr', '2026-01-29 18:56:51', 9, NULL, '2026-01-29 18:56:51', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1169', '4048');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4048');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1265', '4048');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4049, '2024年408考研真题第45题', '简单', '2024年408真题', '某计算机按字节编址，采用页式虚拟存储管理方式，虚拟地址和物理地址的长度均为 32 位，页表项的大小为 4 字节，页大小为 4MB，虚拟地址结构如下：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/eaffcfb7eede4e77ba7bd6fb828568d8.svg)
进程 Р 的页表起始虚拟地址为 B8C0 0000H，被装载到从物理地址 6540 0000H 开始的连续主存空间中。请回答下列问题：（1）若 CPU 在执行进程 P 的过程中，访问虚拟地址 1234 5678H 时发生了缺页异常，经过缺页异常处理和 MMU 地址转换后得到的物理地址是 BAB4 5678H。在此次缺页异常的处理中，需要为新缺页分配页框并更新相应的页表项，则该页表项的虚拟地址和物理地址分别是什么？该页表项中的页框号更新后的值是什么？（3 分）（2）进程 P 的页表所在页的页号是什么？该页对应的页表项的虚拟地址是什么？该页表项中的页框号是多少？（4 分）', '[]', '', '1）首先，我们需要确定虚拟地址 12345678H 对应页号。由于页号占 10 位，
1234 5678H = 0001 0010 0011 0100 0101 0110 0111 1000B。
计算得到：
页内偏移量（22 位）= 11 0100 0101 0110 0111 1000B = 345678H
页号（10 位）= 00 0100 1000B = 048H
然后，我们需要找到这个页号对应的页表项的虚拟地址和物理地址。由于页表项的大小为字节，我们可以通过将页号乘以 4 得到页表项的偏移量。然后将这个偏移量加到页表的起始地址上，就可以得到页表项的虚拟地址和物理地址。进程 P 的页表起始虚拟地址为 B8C0 0000H，物理地址 654 0000H。
计算得到：页表项虚拟地址 = 页表起始虚拟地址 + 页号×4 = B8C00000H + 048H×4 =B8C00120，页表项物理地址 = 页表起始物理地址 + 页号×4 = 65400000H + 048H×4 =65400120H。
最后，我们需要更新页表项中的页框号。由于经过 U 地址转换后得到的物理地址是 BAB4 5678H，我们可以通过右移 22 位得到页框号。
计算得到：页框号 = 物理地址 BAB45678H 的前 10 位，即 10 1110 1010B =2EAH。
2）首先，我们需要确定进程即的页表所在页的页号。由于页表起始虚拟地址位 B8C00000H，我们可以通过右移 22 位得到页号。
计算得到：
进程 P 的页表所在页的页号等于 B8C0 0000 的前 10 位，即 10 1110 0011B =2E3H。
然后，我们需要找到这个页号对应的页表项的虚拟地址。由于页表项的大小为 4 字节，我们可以通过将页号
乘以 4 得到页表项的偏移量。然后将这个偏移量加到页表的起始地址上，就可以得到顷表项的虚拟地址。
计算得到：
该页对应的页表项的虚拟地址 = B8C0 0000H + 2E3H*4 =B8C0 0B8CH。
最后，我们需要确定贡表项中的页框号。由于页表被装在到从物理地址 65400000 开始的连续主存空间中，我们可以通过右移 22 位得到页框号。
计算得到：
该页表项中的页框号等于物理地址 6540 0000H 的前 10 位，即 01 1001 0101B =195H。
', 9, 'Mogullzr', '2026-01-29 18:56:53', 9, NULL, '2026-01-29 18:56:53', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1138', '4049');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1186', '4049');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1157', '4049');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4050, '2024年408考研真题第46题', '简单', '2024年408真题', '计算机系统中的进程之间往往需要相互协作以完成一个任务，在某网络系统中缓冲区 B 用于存放一个数据分组，对 B 的操作有 C1、C2 和 C3。C1 将一个数据分组写入 B 中，C2 从 B 中读出一个数据分组，C3 对 B 中的数据分组进行修改。要求 B 为空时才能执行 C1，B 非空时才能执行 C2 和 C3。请回答下列问题。（1）假设进程 P1 和 P2 均需执行 C1，实现 C1 的代码是否为临界区？为什么？(2 分）（2）假设 B 初始为空，进程 P1 执行 C1 一次，进程 P2 执行 C2 一次。请定义尽可能少的信号量。并用 wait()，signal() 操作描述进程 P1、P2 之间的同步或互斥关系，说明所用信号量的作用及初值。（3 分）（3）假设 B 初始不为空，进程 P1 和 P2 各执行 C3 一次，请定义尽可能少的信号量。并用 wait()、signal() 操作描述进程 P1 和 P2 之间的同步或互斥关系，说明所用信号量的作用及初值。（3 分）', '[]', '', '1）是的，实现 C1 的代码可以被视为临界区。临界区是指在并发编程中，当多个进程同时访问和修改共享数据时，必须进行互斥访问的代码区域。在这个例子中，进程 P1 和 P2 都需要执行 C1，即它们都需要将一个数据分组写入缓冲区 B。如果这两个进程同时执行 C1，那么它们可能会试图同时写入数据分组，这可能会导致数据的不一致性。因此，我们需要确保在任何时刻，只有一个进程可以执行 C1。这就需要将执行 C1 的代码区域定义为临界区，并使用适当的同步机制（如互斥锁或信号量）来保证在同一时刻只有个进程可以进入临界区。所以，实现 C1 的代码是临界区，因为它涉及到对共享资源（在这里是缓冲区 B) 的修改，而这个修改需要被同步，以防止数据的不一致性。
2）在这个问题中，我们可以使用两个信号量：一个用于保护缓使区 B（我们称之为 mutex），另一个用于同步进程 PI 和 P2（我们称之为 full）。mutex 用于确保在同一时刻只有一个进程可以访问缓冲区 B，而 full 用于表示缓冲区 B 是否已满。
初始时，mutex 的值为 1，表示缓冲区 B 是可用的：fu1I 的值为 0，表示缓冲区 B 是空的。
以下是进程 P1 和 P2 的代码：
semaphoremutex=1;semaphorefull=0;// 进程 P1P1(){wait(mutex);// 请求访问缓冲区 B执行C1，将一个数据分组写入B中signal(mutex);// 释放缓冲区 B 的使用权signal(full);// 表示缓冲区 B 已满}// 进程 P2P2(){wait(full);// 等待缓冲区 B 变满wait(mutex);// 请求访问缓冲区 B执行C1，从B中读出一个数组分组signal(mutex);// 释放缓冲区 B 的使用权}
在这个代码中，wait() 操作表示请求一个信号量，如果信号量的值大于 0，那么就将其减 1：如果信号量的值为 0，那么就阻塞，直到信号量的值大于 0。signal() 操作表示释放一个信号量，将其值加 1。
3）在这个问题中，我们可以使用一个信号量：一个用于保护缓冲区 B（我们称之为 mutex）。mutex 用于确保在同一时刻只有一个进程可以访问缓冲区 B。初始时，mutex 的值为 1，表示缓冲区 B 是可用的。以下是进程 P1 和 P2 的代码：
semaphoremutex=1;// 进程 P1P1(){wait(mutex);// 请求访问缓冲区 B执行C3,对B中的数据分组进行修改signal(mutex);// 释放对缓冲区 B 的访问}// 进程 P2P2(){wait(mutex);// 请求访问缓冲区 B执行C3,对B中的数据分组进行修signal(mutex);// 释放对缓冲区 B 的访问}
在这个代码中，wait() 操作表示请求一个信号量，如果信号量的值大于 0，那么就将其减 1；如果信号量的值为 0，那么就阻塞，直到信号量的值大于 0。signal() 操作表示释放一个信号量，将其值加 1。
所以，实现 C3 的代码是临界区，因为它涉及到共享资源（在这里是缓冲区 B）的修改，而这个修改需要被同步，以防止数据的不一致性。
', 9, 'Mogullzr', '2026-01-29 18:56:53', 9, NULL, '2026-01-29 18:56:53', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1153', '4050');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1154', '4050');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4051, '2024年408考研真题第47题', '简单', '2024年408真题', '网络空间是继陆海空地之后的"第五疆域"，网络技术是网络疆域建设与治理的基础。路由算法与协议是网络核心技术之一。对其准确认知，合理选择与应用，对网络建设十分重要。假设现有互联网中的 4 个自治系统互连拓扑示意图如题 47 图所示。其中，AS1 运行内部网关协议 RIP；AS3 规模较小，自治系统内任意两个主机间通信，经过路由器数不超过 15 个；AS4 规模较大，自治系统内任意两个主机间通信，经过路由器数量可能超过 20 个。
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/00fee939ba5d4a2da8f609cd86f144c5.svg)
请回答下列问题：（1）若仅有 RIP 和 OSPF 内部网关协议供选择，则 AS4 应选择哪个协议？（1 分）（2）若 AS3 中的某主机向本自治系统另一主机发送 1 个 IP 分组，为确保该 IP 分组能正常接收，则该 IP 分组的初始 TTL 值应至少设置为多少？（1 分）（3）设 AS1 中的路由器同一时刻启动，启动后立即构建并交换初始距离向量，之后，每隔 30s 交换一次最新的距离向量。则从交换初始距离向量时刻算起，R11~R16 路由器均获到达网络 210.2.4.0/24 的正确路由，至少需多长时间？（2 分）（4）R44 向 R13 通告到达网络 136.5.16.0/20 路由时，由 BGP 协议哪类会话完成？通过哪个 BGP 报文通告？R13 通过 BGP 协议的哪类会话将该网络可达性信息通告给 R14 和 R15?（3 分）（5）若 R14 和 R15 均收到分别由 R11、R12、R13 通告的到达网络 136.5.16.0/20 的可达性信息为：目的网络：136.5.16.0/20，AS 路径：AS2 AS8 AS19，下一跳：R11目的网络：136.5.16.0/20，AS 路轻：AS3 AS7 AS11 AS19，下一跳：R12目的网络：136,5.16.0/20，AS 路径：AS4 AS10 AS19，下一跳：R13则在无策略约束情况下，R14 和 R15 更新路由表后，各自路由表中到达网络 136.5.16.0/20 路由的下一跳分别是什么（用路由器名称表示）?（2 分）', '[]', '', '1）AS4 应选择 OSPF 协议。理由：
RIP（Routing Information Protocol）采用 跳数（hop count）作为度量标准，最大跳数限制为 15，超过 15 跳的网络将被视为不可达。因此，AS4 内部通信可能超过 20 个路由器的情况下，RIP 不能正常工作。OSPF（Open Shortest Path First）采用 链路状态路由，支持大规模网络，并且没有严格的跳数限制，适合规模较大的自治系统（如 AS4）。
因此，AS4 应选择 OSPF 作为内部网关协议。
2）应该被设置为 16。
AS3 内部任意两个主机之间通信，最多需要经过 15 个路由器。
TTL（Time To Live）值在每经过一个路由器时减 1，若 TTL 变为 0，分组将被丢弃。因此，为了确保 IP 分组能够到达目标主机，初始 TTL 至少应设置为 16，这样即使经过 15 个路由器，TTL 仍剩 1，可以成功到达目标主机。
3）AS1 运行的是 RIP（Routing Information Protocol），采用 距离向量路由算法，每 30 秒 交换一次最新的距离向量，并使用 逐跳扩散（Bellman-Ford 算法）更新路由表。
假设网络 210.2.4.0/24 最初只被某个路由器（如 R1）知道，其他路由器需要逐步学习该路由信息。
每次 RIP 更新，信息只能传播 1 跳，即相邻路由器在下一次交换后获得该路由。
直到 R11~R16 均获得正确路由时，最好情况下至少需要经历 2 跳（从 R14 出发，经过 2 个周期传播至每个路由器）。
每次传播耗时 30 秒，则 2 跳需要 2 × 30 = 60 秒。
4）如果路由器属于不同的自治系统，它们之间运行 eBGP（External BGP）进行路由通告。
如果路由器属于同一个自治系统，它们之间运行 iBGP（Internal BGP）来传播外部学到的 BGP 路由信息。
在 BGP 中，路由更新信息使用 UPDATE（更新）报文 进行通告，包含 网络前缀（136.5.16.0/20）及其路径属性（如 AS Path、下一跳等）。
R44 → R13：通过 eBGP 会话，使用 UPDATE 报文通告路由信息。
R13 → R14, R15：通过 iBGP 会话，使用 UPDATE 报文通告路由信息。
5）在 BGP（边界网关协议）中，默认情况下，路由选择遵循以下决策过程（无策略约束时）：
最短 AS 路径优先（首要准则）：BGP 会优先选择 AS 路径最短 的路由。若 AS 路径相同，则选取最小的下一跳路由 ID（RID）或基于其他 BGP 规则。
分析 R14 和 R15 的可选路由：
| 下一跳 | AS 路径             | 路径长度 |
|:---:|:-----------------:|:----:|
| R11 | AS2 AS8 AS19      | 3    |
| R12 | AS3 AS7 AS11 AS19 | 4    |
| R13 | AS4 AS10 19       | 3    |

R11 和 R13 的 AS 路径长度均为 3，比 R12（路径长度 4）更短，因此 R12 的路由会被排除。
R14 离 R11 更近，R15 离 R13 更近。
所以 R14 的下一跳为 R11，R15 的下一跳为 R13。
', 9, 'Mogullzr', '2026-01-29 18:56:54', 9, NULL, '2026-01-29 18:56:54', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1161', '4051');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1257', '4051');
