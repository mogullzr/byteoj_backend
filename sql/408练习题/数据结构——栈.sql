INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4868, '408考研练习题——数据结构——栈第1题', '简单', '408考研练习题——数据结构——栈', '以下是一个错误的伪代码，该算法本应判断括号序列是否平衡：

```c
创建一个字符栈
while(还有输入可用) {
    读取一个字符
    if(该字符是 ''('')
        将其压入栈中
    else if(该字符是 '')'' 且栈不为空)
        弹出栈顶字符
    else
        打印 "unbalanced" 并退出
}
打印 "balanced"
```
上述代码会将下列哪个不平衡序列误判为平衡？（ ）
', '[''((())'', ''())(()'', ''(()()))'', ''(()))()'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键问题</font></strong></font></strong>：在`while`循环结束后，必须检查栈是否为空。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>示例分析</font></strong></font></strong>：对于输入`((())`，循环结束后栈不为空（剩余一个未匹配的`''(''`），但代码未执行此检查，导致误判为平衡。', 9, 'Mogullzr', '2026-02-02 11:50:27', 9, NULL, '2026-02-02 11:50:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4868');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4869, '408考研练习题——数据结构——栈第2题', '简单', '408考研练习题——数据结构——栈', '使用一个单数组`A[1..MAXSIZE]`实现两个栈。这两个栈从数组的两端向中间增长。变量`top1`和`top2`（`top1 < top2`）分别指向每个栈的栈顶元素位置。若要高效利用空间，则“栈满”的条件是（ ）：
', '[''`(top1 = MAXSIZE/2)`且`(top2 = MAXSIZE/2+1)`'', ''`top1 + top2 + 1 = MAXSIZE`'', ''`(top1 = MAXSIZE/2)`或`(top2 = MAXSIZE)`'', ''`top1 = top2 -1`'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 该设计允许两个栈动态共享数组空间
- 当`top1 = top2 - 1`时，表示两个栈顶指针相邻
- 此时数组中已无可用空间（因`top1 < top2`的约束）
- 其他条件均未体现双栈协同增长的特性
- 该条件能最大化利用数组存储空间', 9, 'Mogullzr', '2026-02-02 11:50:27', 9, NULL, '2026-02-02 11:50:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4869');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4870, '408考研练习题——数据结构——栈第3题', '简单', '408考研练习题——数据结构——栈', '评估一个没有嵌套函数调用的表达式时（ ）：
', '[''需要与表达式树高度相同数量的栈'', ''一个栈就足够了'', ''需要两个栈'', ''一般情况下需要图灵机'']', "['B']", 'B</font></strong>
任何表达式都可以转换为后缀或前缀形式。前缀和后缀表达式的计算可以通过单个栈完成。例如：给定表达式 ‘10 2 8 * + 3 -’，操作步骤如下：- 将 10 压入栈
- 将 2 压入栈
- 将 8 压入栈
- 遇到运算符 ‘*’ 时，弹出 2 和 8，计算 2*8=16 后压入栈
- 遇到运算符 ‘+’ 时，弹出 16 和 10，计算 10+16=26 后压入栈
- 将 3 压入栈
- 遇到运算符 ‘-’ 时，弹出 26 和 3，计算 26-3=23 后压入栈最终结果 23 是通过单个栈得到的。因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:27', 9, NULL, '2026-02-02 11:50:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4870');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4871, '408考研练习题——数据结构——栈第4题', '简单', '408考研练习题——数据结构——栈', '计算后缀表达式`10 5 + 60 6 / * 8 -`的结果是（ ）：
', '[''284'', ''213'', ''142'', ''71'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>步骤 1：后缀表达式求值规则</font></strong>
操作数（数字）被压入栈中。遇到运算符时，从栈中弹出所需数量的操作数，执行运算，并将结果重新压入栈中。<strong><font color=''#2656b3''>步骤 2：逐步求值</font></strong>
表达式：`10 5 + 60 6 / ∗ 8 −`- 压入 10：栈 = [10]
- 压入 5：栈 = [10, 5]
- 遇到`+`：弹出 10 和 5，相加：10+5=15。将结果压入栈：栈=[15]
- 压入 60：栈 = [15, 60]
- 压入 6：栈 = [15, 60, 6]
- 遇到`/`：弹出 60 和 6，相除：60/6=10。将结果压入栈：栈=[15,10]
- 遇到`*`：弹出 15 和 10，相乘：15×10=150。将结果压入栈：栈=[150]
- 压入 8：栈 = [150, 8]
- 遇到`-`：弹出 150 和 8，相减：150−8=142。将结果压入栈：栈=[142]<strong><font color=''#2656b3''>步骤 3：栈中的最终结果</font></strong>
最终结果为<strong><font color=''#2656b3''>142</font></strong>', 9, 'Mogullzr', '2026-02-02 11:50:27', 9, NULL, '2026-02-02 11:50:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4871');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4872, '408考研练习题——数据结构——栈第5题', '简单', '408考研练习题——数据结构——栈', '假设使用链表而非数组实现一个栈。对于使用链表实现的栈（假设实现方式高效），其入栈和出栈操作的时间复杂度会受到什么影响？
', '[''插入操作为 O(1)，删除操作为 O(n)'', ''插入操作为 O(1)，删除操作为 O(1)'', ''插入操作为 O(n)，删除操作为 O(1)'', ''插入操作为 O(n)，删除操作为 O(n)'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>插入操作（入栈）</font></strong></font></strong>：在链表头部插入新节点时，仅需修改头指针和新节点的引用关系，无需遍历链表，因此时间复杂度为 O(1)。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>删除操作（出栈）</font></strong></font></strong>：移除链表头部节点时，同样只需调整头指针指向下一个节点，操作时间为 O(1)。
- 链表实现栈的核心优势在于始终在头部进行操作，避免了尾部操作所需的遍历开销。', 9, 'Mogullzr', '2026-02-02 11:50:27', 9, NULL, '2026-02-02 11:50:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4872');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4873, '408考研练习题——数据结构——栈第6题', '简单', '408考研练习题——数据结构——栈', '考虑有 n 个元素均匀分布在 k 个栈中。每个栈中的元素按升序排列（每个栈的顶部是最小值，向下依次递增）。
现有一个容量为 n 的队列，需要将所有 n 个元素按升序放入其中。已知最优算法的时间复杂度是多少？（ ）
', '[''$O(nlogk)$'', ''$O(nk)$'', ''$O(n^{2})$'', ''$O(k^{2})$'']', "['A']", 'A</font></strong>
- 核心思路：构建大小为 k 的最小堆
- 初始阶段将所有栈顶元素加入堆（共 k 个元素）
- 每次从堆中提取最小值后，从对应栈取出下一个元素并重新插入堆
- 重复此过程直至所有元素入队
- 时间复杂度分析：

- 堆初始化：O(k)
- 后续操作：每轮堆操作耗时O(logk)，共需执行n−k次
- 总时间复杂度：O(k)+(n−k)logk=O(nlogk)', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4873');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4874, '408考研练习题——数据结构——栈第7题', '简单', '408考研练习题——数据结构——栈', '假设输入序列是 5, 6, 7, 8, 9（按此顺序），以下哪种排列可以通过栈操作得到相同的顺序？（ ）
', '[''7, 8, 9, 5, 6'', ''5, 9, 6, 7, 8'', ''7, 8, 9, 6, 5'', ''9, 8, 7, 5, 6'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>选项 (C) 的解析说明</font></strong>- 该序列可通过以下栈操作实现：

- Push 5
- Push 6
- Push 7
- Pop 7
- Push 8
- Pop 8
- Push 9
- Pop 9
- Pop 6
- Pop 5
- 栈遵循先进后出原则，上述操作严格满足输入顺序与输出序列的匹配关系
- 最终输出结果为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>7, 8, 9, 6, 5</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4874');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4875, '408考研练习题——数据结构——栈第8题', '简单', '408考研练习题——数据结构——栈', '检查算术表达式中括号是否匹配的最佳数据结构是（ ）
', '[''队列'', ''栈'', ''树'', ''列表'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原因</font></strong></font></strong>：栈的后进先出（LIFO）特性与括号匹配需求高度契合
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>操作流程</font></strong></font></strong>：
- 遇到左括号`(`时，将其压入栈
- 遇到右括号`)`时，检查栈顶元素是否为对应左括号
- 若栈为空或类型不匹配，则括号不匹配
- 表达式处理完成后，若栈为空则表示完全匹配
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>优势对比</font></strong></font></strong>：

- 队列（FIFO）无法保证最近左括号优先匹配
- 树/列表缺乏顺序性约束，需额外维护索引', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4875');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4876, '408考研练习题——数据结构——栈第9题', '简单', '408考研练习题——数据结构——栈', '如果在栈上执行以下操作序列：push(1)、push(2)、pop、push(1)、push(2)、pop、pop、pop、push(2)、pop，那么弹出值的顺序是（ ）：
', '[''2,2,1,1,2'', ''2,2,1,2,2'', ''2,1,2,2,1'', ''2,1,2,2,2'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>- `Push(1)`→ 栈 = [1]
- `Push(2)`→ 栈 = [1, 2]
- `Pop`→ 弹出<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2</font></strong></font></strong>，栈 = [1]
- `Push(1)`→ 栈 = [1, 1]
- `Push(2)`→ 栈 = [1, 1, 2]
- `Pop`→ 弹出<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2</font></strong></font></strong>，栈 = [1, 1]
- `Pop`→ 弹出<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1</font></strong></font></strong>，栈 = [1]
- `Pop`→ 弹出<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1</font></strong></font></strong>，栈 = []
- `Push(2)`→ 栈 = [2]
- `Pop`→ 弹出<strong><font color=''#2656b3''><strong><font color=''#2656b3''>2</font></strong></font></strong>，栈 = []<strong><font color=''#2656b3''>最终弹出顺序：</font></strong>2, 2, 1, 1, 2', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4876');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4877, '408考研练习题——数据结构——栈第10题', '简单', '408考研练习题——数据结构——栈', '考虑以下对一个大小为 5 的栈执行的操作：`Push(a)`；`Pop()`；`Push(b)`；`Push(c)`；`Pop()`；`Push(d)`；`Pop()`；`Pop()`；`Push(e)`。以下哪项陈述是正确的？（ ）
', '[''发生下溢'', ''栈操作顺利执行'', ''发生上溢'', ''以上都不正确'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 初始空栈容量为 5
- 操作序列分析：
- Push(a) → [a]
- Pop() → []
- Push(b) → [b]
- Push(c) → [b, c]
- Pop() → [b]
- Push(d) → [b, d]
- Pop() → [b]
- Pop() → []
- Push(e) → [e]
- 所有操作均未超出栈容量限制
- 最终栈状态为 [e]
- 因此选项 (B) 正确，栈操作顺利执行', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4877');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4878, '408考研练习题——数据结构——栈第11题', '简单', '408考研练习题——数据结构——栈', '以下哪项不是栈的固有应用？（ ）
', '[''递归的实现'', ''后缀表达式求值'', ''作业调度'', ''反转字符串'']', "['C']", 'C</font></strong>
- 栈的典型应用场景包括：

- 字符串反转（D）
- 后缀表达式求值（B）
- 递归函数调用（A）
- 作业调度（C）通常由操作系统中的队列管理，而非栈结构
- 因此选项 C 不属于栈的固有应用', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4878');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4879, '408考研练习题——数据结构——栈第12题', '简单', '408考研练习题——数据结构——栈', '考虑以下在空栈上的操作序列：
`Push(54);`
`Push(52);`
`Pop();`
`Push(55);`
`Push(62);`
`s = Pop();`
考虑以下在空队列上的操作序列：
`Enqueue(21);`
`Enqueue(24);`
`Dequeue();`
`Enqueue(28);`
`Enqueue(32);`
`q = Dequeue();`
s + q 的值是（  ）。
', '[''86'', ''68'', ''24'', ''94'']', "['A']", 'A</font></strong>
我们构建一个空栈并执行操作。栈遵循后进先出（LIFO）顺序：- Push(54) // (54)
- Push(52) // (54,52)
- Pop() // (54)
- Push(55) // (54,55)
- Push(62) // (54,55,62)
- s = Pop() // (54,55) s=62我们构建一个空队列并执行操作。队列遵循先进先出（FIFO）顺序：- Enqueue(21) // [21]
- Enqueue(24) // [21,24]
- Dequeue() // [24]
- Enqueue(28) // [24,28]
- Enqueue(32) // [24,28,32]
- q = Dequeue() // [28,32] q=24因此，s + q = 62 + 24 = 86。另一种方式：- 栈是后进先出的数据结构，因此 s = Pop() = 62
- 队列是先进先出的数据结构，因此 q = Dequeue() = 24
- 所以 s + q = 62 + 24 = 86。', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4879');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4880, '408考研练习题——数据结构——栈第13题', '简单', '408考研练习题——数据结构——栈', '以下关于使用链表实现栈的说法中，哪一项是正确的？（ ）
', '[''在 push 操作中，如果新节点插入到链表的开头，则在 pop 操作中必须从链表末尾删除节点。'', ''在 push 操作中，如果新节点插入到链表的末尾，则在 pop 操作中必须从链表开头删除节点。'', ''以上两者都正确'', ''以上都不正确'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>为了保持后进先出（LIFO）的顺序，可以使用链表以两种方式实现栈：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>a)</font></strong></font></strong>在`push`操作中，如果新节点插入到链表的开头，则在`pop`操作中必须从开头删除节点。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>b)</font></strong></font></strong>在`push`操作中，如果新节点插入到链表的末尾，则在`pop`操作中必须从末尾删除节点。', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4880');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4881, '408考研练习题——数据结构——栈第14题', '简单', '408考研练习题——数据结构——栈', '堆栈 A 中包含元素 a、b、c（a 在顶部），堆栈 B 为空。从堆栈 A 弹出的元素可以立即打印或压入堆栈 B，而从堆栈 B 弹出的元素只能被打印。在这种安排下，以下哪个排列顺序不可能实现？（ ）
', '[''b a c'', ''b c a'', ''c a b'', ''a b c'']', "['C']", 'C</font></strong>
- 选项 (A):
- 从堆栈 A 弹出 a
- 将 a 压入堆栈 B
- 打印 b
- 从堆栈 B 弹出 a 并打印
- 从堆栈 A 弹出 c 并打印  
输出顺序：`b a c`
- 选项 (B):
- 从堆栈 A 弹出 a
- 将 a 压入堆栈 B
- 从堆栈 A 弹出 b 并打印
- 从堆栈 A 弹出 c 并打印
- 从堆栈 B 弹出 a 并打印  
输出顺序：`b c a`
- 选项 (C):
- 从堆栈 A 弹出 a → 压入堆栈 B
- 从堆栈 A 弹出 b → 压入堆栈 B
- 从堆栈 A 弹出 c → 直接打印  
此时堆栈 B 内容为 [a, b]（a 在顶部）  
后续操作限制：

- 必须先弹出 b 才能弹出 a
- 导致输出顺序为`c b a`或`c a b`（需先弹出 b）  
因此`c a b`无法实现
- 选项 (D):
- 从堆栈 A 依次弹出 a → 打印
- 弹出 b → 打印
- 弹出 c → 打印  
输出顺序：`a b c`', 9, 'Mogullzr', '2026-02-02 11:50:28', 9, NULL, '2026-02-02 11:50:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4881');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4882, '408考研练习题——数据结构——栈第15题', '简单', '408考研练习题——数据结构——栈', '将五个元素 A、B、C、D 和 E 依次入栈（从 A 开始）。随后将栈中弹出四个元素并依次插入队列。接着从队列中删除两个元素并重新压入栈。此时从栈中弹出一个元素，该元素是（ ）：
', '[''A'', ''B'', ''C'', ''D'']', "['D']", 'D</font></strong>
- 当五个元素 A、B、C、D 和 E 依次入栈时：栈的顺序为：A、B、C、D、E（A 在底部，E 在顶部）
- 弹出四个元素并插入队列后：队列的顺序为：B、C、D、E（B 在队尾，E 在队首）弹出操作后的栈仅剩：A
- 从队列中删除两个元素并重新压入栈后：新栈的顺序为：A、E、D（A 在底部，D 在顶部）
- 最终操作结果：由于 D 位于栈顶，因此弹出操作会取出 D所以，正确选项是 (D)。', 9, 'Mogullzr', '2026-02-02 11:50:29', 9, NULL, '2026-02-02 11:50:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4882');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4883, '408考研练习题——数据结构——栈第16题', '简单', '408考研练习题——数据结构——栈', '考虑以下陈述：
i. 先进先出（FIFO）类型的计算通过栈（STACKS）可以高效支持。
ii. 在链表上实现列表（LISTS）比在数组上实现列表对于几乎所有基本列表操作都更高效。
iii. 在循环数组上实现队列（QUEUES）比在使用两个索引的线性数组上实现队列更高效。
iv. 后进先出（LIFO）类型的计算通过队列（QUEUES）可以高效支持。
以下哪项是正确的？（ ）
', '[''(ii) 是正确的'', ''(i) 和 (ii) 是正确的'', ''(iii) 是正确的'', ''(ii) 和 (iv) 是正确的'']', "['C']", 'C</font></strong>
正确陈述是：iii. 在循环数组上实现队列比在使用两个索引的线性数组上实现队列更高效。
<strong><font color=''#2656b3''>解释</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>i. 错误</font></strong></font></strong>：栈（STACKS）支持 LIFO 操作，而非 FIFO。FIFO 由队列（QUEUES）实现。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>ii. 错误</font></strong></font></strong>：链表在插入/删除操作上更高效，但随机访问不如数组高效。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>iii. 正确</font></strong></font></strong>：循环数组通过索引环绕机制提升队列操作效率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>iv. 错误</font></strong></font></strong>：队列（QUEUES）实现 FIFO，LIFO 由栈（STACKS）实现。综上，选项 (C) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:50:29', 9, NULL, '2026-02-02 11:50:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4883');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4884, '408考研练习题——数据结构——栈第17题', '简单', '408考研练习题——数据结构——栈', '实现一个队列所需的最小栈数量是（ ）
', '[''3'', ''1'', ''2'', ''4'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>实现原理：</font></strong>- 使用两个栈<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₁</font></strong></font></strong>和<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₂</font></strong></font></strong>
- 新元素入队时，压入<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₁</font></strong></font></strong>栈顶
- 出队操作时：

- 若<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₂</font></strong></font></strong>为空，则将<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₁</font></strong></font></strong>所有元素依次弹出并压入<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₂</font></strong></font></strong>
- 直接弹出<strong><font color=''#2656b3''><strong><font color=''#2656b3''>S₂</font></strong></font></strong>栈顶元素（即队首）<strong><font color=''#2656b3''>时间复杂度分析：</font></strong>- 入队操作：O(1)
- 出队操作：均摊 O(1)（每个元素最多被压入/弹出两次）<strong><font color=''#2656b3''>结论：</font></strong>
通过这种双栈结构，既能保证先进先出的队列特性，又能达到最优的时间效率。因此最少需要<strong><font color=''#2656b3''>2 个栈</font></strong>实现队列，选项<strong><font color=''#2656b3''>(C)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:50:29', 9, NULL, '2026-02-02 11:50:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4884');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4885, '408考研练习题——数据结构——栈第18题', '简单', '408考研练习题——数据结构——栈', '使用逆波兰表示法在栈机器上计算表达式`(A * B) + (C * D / E)`需要多少次 PUSH 和 POP 操作？（ ）
', '[''4 次 PUSH 和 3 次 POP 指令'', ''5 次 PUSH 和 4 次 POP 指令'', ''6 次 PUSH 和 2 次 POP 指令'', ''5 次 PUSH 和 3 次 POP 指令'']', "['B']", 'B</font></strong>
逆波兰表示法是一种无需括号或特殊标点的公式表示方法。
计算 (A ∗ B) + (C ∗ D / E) 的过程如下：- 去除括号和标点，将其转换为后缀形式 AB+CDE/*+
- 将 AB 压入栈 → 执行 * 操作时弹出 AB 并计算 A*B，将结果（设为 X）重新压入栈
- 将 CDE 压入栈 → 执行 / 操作时弹出 DE 并计算 C*D/E，将结果（设为 Y）重新压入栈
- 执行 * 操作时弹出 CY 并计算 Y*C，将结果（设为 Z）重新压入栈
- 最后执行 + 操作时弹出 XZ 并计算 X+Z，将最终结果压入栈  
上述计算过程共包含 5 次 PUSH 和 4 次 POP 操作。因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:29', 9, NULL, '2026-02-02 11:50:29', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1246', '4885');
