INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4821, '408考研练习题——数据结构——数组第1题', '简单', '408考研练习题——数据结构——数组', '在包含 n 个整数的已排序数组中，确定某个整数是否出现超过 n/2 次所需的最小比较次数是（ ）：
', '[''Θ(n)'', ''Θ(logn)'', ''Θ(n*logn)'', ''Θ(1)'']', "['B']", 'B</font></strong>
如果选择Θ(1)，请考虑示例：- {1, 2, 2, 2, 4, 4}
- {1, 1, 2, 2, 2, 2, 3, 3}判断已排序（升序）数组中是否存在出现次数超过 n/2 次的整数的最佳方法是使用<strong><font color=''#2656b3''>二分查找</font></strong>。具体步骤如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>通过分治技术</font></strong></font></strong>在 O(log(n)) 时间内找到目标元素的首次出现位置`i`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>通过分治技术</font></strong></font></strong>在 O(log(n)) 时间内找到目标元素的末次出现位置`j`
- 计算该元素的出现次数：`count = j - i + 1`时间复杂度分析：
```c
O(log n) [首次查找]
+ O(log n) [末次查找]
+ 1 [计数计算]
= O(log n)
```
', 9, 'Mogullzr', '2026-02-02 11:50:17', 9, NULL, '2026-02-02 11:50:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4821');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4822, '408考研练习题——数据结构——数组第2题', '简单', '408考研练习题——数据结构——数组', '一个算法对一组键值来自线性有序集合的数据项执行$(logN)1/2$次查找操作、$N$次插入操作、$(logN)1/2$次删除操作和$(logN)1/2$次减键操作。对于删除操作，会提供指向必须删除记录的指针；对于减键操作，也会提供指向其键值被减少的记录的指针。如果目标是通过考虑所有操作实现最佳的总渐近时间复杂度，那么以下哪种数据结构最适合该算法使用？（ ）
', '[''无序数组'', ''最小堆'', ''有序数组'', ''有序双向链表'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>无序数组</font></strong></font></strong>：插入操作的时间复杂度为 *O(1)* ，因为可以在末尾直接插入。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最小堆</font></strong></font></strong>：插入操作需要 *O(log n)* 时间（参考二叉堆操作）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>有序数组</font></strong></font></strong>：插入操作可能需要移动所有元素，最坏情况下为 *O(n)* 。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>有序双向链表</font></strong></font></strong>：需要 *O(n)* 时间来找到插入位置。由于插入操作的数量在渐近意义上最高（N次），因此优先选择插入效率最高的<strong><font color=''#2656b3''>无序数组</font></strong>。尽管其他操作如删除和减键可能需要额外开销，但题目明确提供了直接指针，使得这些操作可在O(1)时间内完成，从而整体时间复杂度由插入操作主导。', 9, 'Mogullzr', '2026-02-02 11:50:17', 9, NULL, '2026-02-02 11:50:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4822');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4823, '408考研练习题——数据结构——数组第3题', '简单', '408考研练习题——数据结构——数组', '考虑一个包含正数和负数的数组。将相同符号的数字分组（即所有正数在一边，所有负数在另一边）的算法最坏情况下的时间复杂度是多少？（ ）
', '[''$O(N)$'', ''$O(NlogN)$'', ''$O(N × N)$'', ''$O(N log logN)$'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解释：</font></strong>- 可以采用快速排序的分区思想进行分组
- 通过单次遍历即可完成符号分组操作
- 时间复杂度与数组长度呈线性关系
- 最终时间复杂度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(N)</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:50:17', 9, NULL, '2026-02-02 11:50:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4823');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4824, '408考研练习题——数据结构——数组第4题', '简单', '408考研练习题——数据结构——数组', '设`A[1...n]`是一个包含`n`个互不相同数字的数组。若`i < j`且`A[i] > A[j]`，则称`(i, j)`为`A`的一个逆序对。在任意`n`个元素的排列中，逆序对的期望数量是多少？（ ）
', '[''$n(n - 1)/2$'', ''$n(n - 1)/4$'', ''$n(n + 1)/4$'', ''$2n \\\\lbrack logn \\\\rbrack$'']', "['B']", 'B</font></strong>
- 数组中共有2n(n−1)​个满足i<j的数对组合
- 对于任意一对(ai​,aj​)，由于元素互异且随机排列，出现逆序对的概率为21​
- 根据期望的线性性质，总期望为：21​×2n(n−1)​=4n(n−1)​', 9, 'Mogullzr', '2026-02-02 11:50:17', 9, NULL, '2026-02-02 11:50:17', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4824');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4825, '408考研练习题——数据结构——数组第5题', '简单', '408考研练习题——数据结构——数组', '考虑一个二维数组`A[20][10]`。假设每个内存单元存储`4`个字，数组`A`的基地址为`100`，元素按行优先顺序存储且第一个元素是`A[0][0]`。`A[11][5]`的地址是多少？（ ）
', '[''560'', ''460'', ''570'', ''575'']', "['A']", 'A</font></strong>

$$
行偏移 = 11 × 10 × 4 = 440
$$
', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4825');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4826, '408考研练习题——数据结构——数组第6题', '简单', '408考研练习题——数据结构——数组', '数组`A`包含`n`个整数，位于`A[0], A[1]...A[n-1]`。要求将数组元素循环左移`k`位，其中`1 <= k <= (n-1)`。给出一个不完整的算法，在不使用额外数组的情况下以线性时间完成此操作。请通过填充空白处来完善该算法。假设所有变量均已正确声明。

```c
min = n;
i = 0;
while(___________){
    temp = A[i];
    j = i;
    while(________){
        A[j] = ________;
        j = (j + k) % n;
        If(j < min) then min = j;
    }
    A[(n + i - k) % n] = _________;
    i = ___________;
}
```
', '[''`i > min`；`j != (n+i) mod n`；`A[j + k]`；`temp`；`i + 1`；'', ''`i < min`；`j != (n+i) mod n`；`A[j + k]`；`temp`；`i + 1`；'', ''`i > min`；`j != (n+i+k) mod n`；`A[(j + k)]`；`temp`；`i + 1`；'', ''`i < min`；`j != (n+i-k) mod n`；`A[(j + k) mod n]`；`temp`；`i + 1`；'']', "['D']", 'D</font></strong>
在题目给出的五个空白中，最后两个空白必须是`temp`和`i+1`，因为第四、第五个空白的所有选项都包含这两个值。现在考虑第一个空白，当初始时`i=0`且`min=n`时，若条件为`i>min`则会直接退出`while`循环，因此第一个空白应为`i < min`，这意味着选项<strong><font color=''#2656b3''>(B)</font></strong>或<strong><font color=''#2656b3''>(D)</font></strong>可能正确。假设选项<strong><font color=''#2656b3''>(B)</font></strong>正确，则第二个`while`循环的条件为`j!=(n+i) mod n`。由于`(n+i) mod n=i`且代码第 3 行将`i`赋值给`j`，此时`j`始终等于`i`，导致控制流永远不会进入内部循环，而实际上需要进入内部循环才能实现左移`k`位的操作。因此选项<strong><font color=''#2656b3''>(D)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4826');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4827, '408考研练习题——数据结构——数组第7题', '简单', '408考研练习题——数据结构——数组', '以下哪项正确声明了一个数组？（ ）
', '[''`int geeks[20];`'', ''`int geeks;`'', ''`geeks{20};`'', ''`array geeks[20];`'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
选项 A 正确地声明了一个整数数组`geeks`，其大小为 20。- `int`指定了数组元素的数据类型为整型。
- `geeks`是数组的名称。
- `[20]`表示数组可存储 20 个元素。其他选项均不符合 C/C++ 的数组声明语法规范。', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4827');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4828, '408考研练习题——数据结构——数组第8题', '简单', '408考研练习题——数据结构——数组', '在 C++ 中，一个三维数组声明为`int A[x][y][z]`。假设数组元素按行优先顺序存储且索引从 0 开始。那么，位置`A[p][q][r]`的地址可以计算如下（其中 w 是整数的字长）：（ ）
', '[''`&A[0][0][0] + w(y × z × q + z × p + r)`'', ''`&A[0][0][0] + w(y × z × p + z × q + r)`'', ''`&A[0][0][0] + w(x × y × p + z × q + r)`'', ''`&A[0][0][0] + w(x × y × q + z × p + r)`'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 行优先存储原理三维数组int A[x][y][z]在内存中按行优先顺序存储，其访问顺序遵循：

- 第一维（x）变化最慢
- 第二维（y）次之
- 第三维（z）变化最快
- 地址计算步骤

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>定位到第 p 行</font></strong></font></strong>  
需跨越前 p 行的所有元素：元素数量=p×(y×z)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>定位到第 q 列</font></strong></font></strong>  
需跨越当前行中前 q 列的所有元素：元素数量=q×z
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>定位到第 r 个元素</font></strong></font></strong>  
直接取当前列的第 r 个元素：元素数量=r
- 总偏移量与地址公式

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总元素偏移量</font></strong></font></strong>：Total Offset=y⋅z⋅p+z⋅q+r
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最终地址</font></strong></font></strong>：Address=addr(A[0][0][0])+w⋅(Total Offset)即：Address(A[0][0][0])+w⋅(y⋅z⋅p+z⋅q+r)
- 结论选项 B 的表达式完全匹配上述推导结果，因此选项 B 正确。', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4828');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4829, '408考研练习题——数据结构——数组第9题', '简单', '408考研练习题——数据结构——数组', '设 A 是一个 n×n 的方阵。考虑以下程序。预期输出是什么？

```c
C = 100
for i = 1 to n do
    for j = 1 to n do
        {
            Temp = A[i][j] + C
            A[i][j] = A[j][i]
            A[j][i] = Temp - C
        }
for i = 1 to n do
    for j = 1 to n do
        Output(A[i][j])
```
', '[''矩阵 A 本身'', ''矩阵 A 的转置'', ''将 A 的上三角元素加 100，对角线元素减 100'', ''矩阵 A 的逆'']', "['A']", 'A</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键分析</font></strong></font></strong>：观察第一个循环中的三步操作：
- `Temp = A[i][j] + C`
- `A[i][j] = A[j][i]`
- `A[j][i] = Temp - C`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>执行效果</font></strong></font></strong>：当`i ≠ j`时，该操作实现了`A[i][j]`与`A[j][i]`的值交换（通过中间变量`Temp`）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>双重交换机制</font></strong></font></strong>：由于循环遍历所有`(i, j)`组合，每个非对角线元素会被交换两次（一次作为`(i,j)`，另一次作为`(j,i)`），从而恢复原始值。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：矩阵整体未发生任何变化，最终输出仍为原矩阵 A。', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4829');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4830, '408考研练习题——数据结构——数组第10题', '简单', '408考研练习题——数据结构——数组', '程序 P 读取 500 个范围在 [0..100] 的整数，这些整数代表 500 名学生的成绩。然后程序输出每个高于 50 的成绩的出现频率。对于 P 来说，存储这些频率的最佳方式是什么？（ ）
', '[''一个包含 50 个数字的数组'', ''一个包含 100 个数字的数组'', ''一个包含 500 个数字的数组'', ''一个动态分配的包含 550 个数字的数组'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 题目要求统计<strong><font color=''#2656b3''><strong><font color=''#2656b3''>高于 50 的成绩</font></strong></font></strong>的频率
- 成绩范围是 [0..100]，因此高于 50 的有效成绩范围是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>51 到 100</font></strong></font></strong>（共 50 个不同值）
- 每个值对应的频率可以用一个长度为 50 的数组存储
- 其他选项要么空间浪费（如 100/500/550），要么不符合实际需求
- 因此，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>一个包含 50 个数字的数组</font></strong></font></strong>是最优解', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4830');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4831, '408考研练习题——数据结构——数组第11题', '简单', '408考研练习题——数据结构——数组', '以下程序中，调用函数`fun`的正确方式是什么？（ ）

```c
#include <bits/stdc++.h>
#include <iostream>
using namespace std;

void fun(char* arr) {
    int i;
    unsigned int n = strlen(arr);
    for (i = 0; i < n; i++)
        cout << " " << arr[i];
}

// 主程序
int main() {
    char arr[] = {''g'', ''e'', ''e'', ''k'', ''s'', ''q'', ''u'', ''i'', ''z''};
    // 如何在此处调用上述函数以打印字符元素？
    return 0;
}
```
', '[''fun(&arr);'', ''fun(_arr);'', ''fun(arr)'', ''None'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数组退化规则</font></strong></font></strong>：在 C/C++ 中，数组作为函数参数传递时会自动退化为指向其首元素的指针
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>参数匹配</font></strong></font></strong>：`char arr[]`在函数参数中等价于`char*`类型
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>正确调用</font></strong></font></strong>：直接使用`arr`即可（等价于`&arr[0]`），与函数参数类型`char*`完全匹配
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>错误选项分析</font></strong></font></strong>：

- `fun(&arr)`实际传递的是`char(*)[9]`类型（指向数组的指针）
- `_arr`不是合法标识符
- `None`选项不符合实际需求', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4831');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4832, '408考研练习题——数据结构——数组第12题', '简单', '408考研练习题——数据结构——数组', '设 A 是一个 n x n 的矩阵。考虑以下程序。预期输出是什么？

```c
void fun(int A[][N]) {
    for (int i = 0; i < N; i++)
        for (int j = i + 1; j < N; j++)
            swap(A[i][j], A[j][i]);
}
```
', '[''矩阵 A'', ''矩阵 A 的对角线'', ''矩阵 A 的转置'', ''以上都不是'']', "['C']", 'C</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>解析</font></strong></font></strong>：  
在函数`fun`中，通过双重循环遍历矩阵的上三角区域（即i<j的位置）。

- 对于每个元素A[i][j]，将其与A[j][i]交换。
- 这一操作实际上将矩阵的行和列互换位置，最终得到的是矩阵A的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>转置矩阵</font></strong></font></strong>。  
因此，正确答案是<strong><font color=''#2656b3''><strong><font color=''#2656b3''>(C)</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4832');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4833, '408考研练习题——数据结构——数组第13题', '简单', '408考研练习题——数据结构——数组', '以下哪项是数组的局限性？（ ）
', '[''元素可以从任何位置访问。'', ''数组的大小是固定的。'', ''索引从零开始。'', ''如果数组元素的数量小于分配给它们的大小，会导致内存浪费'']', "['D']", 'D</font></strong>
假设我们声明一个数组：
```c
arr[5] = {1, 2, 3};
```
此时数组的大小被声明为 5，但实际仅初始化了 3 个元素。<strong><font color=''#2656b3''>这种预分配空间与实际使用量的差异会直接导致内存资源的浪费</font></strong>。因此选项（D）描述的情况是数组的典型局限性。', 9, 'Mogullzr', '2026-02-02 11:50:18', 9, NULL, '2026-02-02 11:50:18', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4833');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4834, '408考研练习题——数据结构——数组第14题', '简单', '408考研练习题——数据结构——数组', '考虑以下程序，该程序基本上在做什么？

```c
#include<bits/stdc++.h>
using namespace std;

void print(char a[], int n, int ind) {
    for(int i = ind; i < n + ind; i++)
        cout << a[(i % n)] << " ";
}

int main() {
    char a[] = {''A'',''B'',''C'',''D'',''E'',''F''};
    int n = sizeof(a)/sizeof(a[0]);
    print(a, n, 3);
    return 0;
}
```
', '[''它正在打印普通数组'', ''它正在打印循环右移 3 位的数组'', ''语法错误'', ''无'']', "['B']", 'B</font></strong>
在上述程序中，我们只是将数组元素循环右移 3 位。循环从`i=3`运行到`9`，在循环内部：- `a[3%6] = a[3] = ''D''`
- `a[4%6] = a[4] = ''E''`
- `a[5%6] = a[5] = ''F''`
- `a[6%6] = a[0] = ''A''`
- `a[7%6] = a[1] = ''B''`
- `a[8%6] = a[2] = ''C''`因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:19', 9, NULL, '2026-02-02 11:50:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4834');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4835, '408考研练习题——数据结构——数组第15题', '简单', '408考研练习题——数据结构——数组', '请填写空白以完成程序，实现将数组旋转 d 个元素。

```c
/*Function to left rotate arr[] of size n by d*/
void Rotate(int arr[], int d, int n) {
    int p = 1;
    while(_______) {
        int last = arr[0];
        for(int i = 0; _______i++) {
            arr[i] = arr[i+1];
        }
        __________
        p++;
    }
}
```
', '[''`p <= d`，`i < n - 1`，`arr[n - 1] = last;`'', ''`p < d`，`i < n`，`arr[n] = last;`'', ''`p >=d`，`i >n`，`arr[n] = last`'', ''以上选项都不正确'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 第一个空白处（while 循环条件）p <= d因为初始值p = 1，需要循环执行d次（每次左移一个元素），所以条件应为p <= d。
- 第二个空白处（for 循环条件）i < n - 1循环需将前n-1个元素依次前移，因此终止条件为i < n - 1。
- 第三个空白处（更新最后一个元素）arr[n - 1] = last;将原首元素last赋值给数组末尾，完成单次左移操作。综上，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:19', 9, NULL, '2026-02-02 11:50:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4835');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4836, '408考研练习题——数据结构——数组第16题', '简单', '408考研练习题——数据结构——数组', '考虑以下程序。预期输出是什么？

```c
void fun(int arr[], int start, int end) {
    while (start < end) {
        int temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;
        start++;
        end--;
    }
}
```
', '[''成对交换元素'', ''排序元素'', ''反转数组'', ''无'']', "['C']", 'C</font></strong>
该函数通过交换首尾元素逐步向中间移动，最终实现数组反转', 9, 'Mogullzr', '2026-02-02 11:50:19', 9, NULL, '2026-02-02 11:50:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1335', '4836');
