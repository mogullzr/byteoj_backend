INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4792, '408考研练习题——数据结构——时间复杂度第1题', '简单', '408考研练习题——数据结构——时间复杂度', '函数`fun()`的时间复杂度是多少？（ ）

```c
int fun(int n) {
    int count = 0;
    for (int i = n; i > 0; i /= 2)
        for (int j = 0; j < i; j++)
            count += 1;
    return count;
}
```
', '[''$O(n^{2})$'', ''$O(n × log(n))$'', ''$O(n)$'', ''$O(n × log(n × log_{2}n))$'']', "['C']", 'C</font></strong>
这是一个<strong><font color=''#2656b3''>嵌套循环</font></strong>，外层是一个<strong><font color=''#2656b3''>以 2 为因子的递减</font></strong>（即对数级别），内层是线性地跑`j < i`。我们可以将整个过程看成：- 第1轮：`i = n`，执行`n`次
- 第2轮：`i = n/2`，执行`n/2`次
- 第3轮：`i = n/4`，执行`n/4`次
- …
- 直到`i <= 0`因此，总执行次数是：
$$
n + \\frac{n}{2} + \\frac{n}{4} + ⋯ + 1
$$
这是一个<strong><font color=''#2656b3''>等比数列</font></strong>，其和趋近于：
$$
n (1 + \\frac{1}{2} + \\frac{1}{4} + ⋯ ) = 2n
$$
所以函数`fun(n)`的时间复杂度是<strong><font color=''#2656b3''>O(n)</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:50:12', 9, NULL, '2026-02-02 11:50:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4792');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4793, '408考研练习题——数据结构——时间复杂度第2题', '简单', '408考研练习题——数据结构——时间复杂度', '函数`fun()`的时间复杂度是多少？

```c
int fun(int n) {
    int count = 0;
    for (int i = 0; i < n; i++)
        for (int j = i; j > 0; j--)
            count = count + 1;
    return count;
}
```
', '[''$O(n)$'', ''$O(n^{2})$'', ''$O(n × log(n))$'', ''$O(n × (log(n × log_{2}(n))))$'']', "['B']", 'B</font></strong>
通过计算表达式`count = count + 1;`的执行次数可以得出时间复杂度。该表达式的执行次数为 0 + 1 + 2 + 3 + 4 + … + (n-1) 次。因此时间复杂度为：
$$
O(0 + 1 + 2 + 3 + ⋯ + n - 1) = O (\\frac{n(n - 1)}{2}) = O(n^{2})
$$
', 9, 'Mogullzr', '2026-02-02 11:50:12', 9, NULL, '2026-02-02 11:50:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4793');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4794, '408考研练习题——数据结构——时间复杂度第3题', '简单', '408考研练习题——数据结构——时间复杂度', '汉诺塔问题中，n 个圆盘的最优时间递推关系式是（ ）
', '[''$T(n) = 2T(n - 2) + 2$'', ''$T(n) = 2T(n - 1) + n$'', ''$T(n) = 2T(n/2) + 1$'', ''$T(n) = 2T(n - 1) + 1$'']', "['D']", 'D</font></strong>
解决汉诺塔问题的递归步骤如下。设三根柱子分别为 A、B 和 C，目标是将 n 个圆盘从 A 移动到 C。
具体步骤为：- 将 n-1 个圆盘从 A 移动到 B，此时 A 上仅剩第 n 个圆盘
- 将第 n 个圆盘从 A 移动到 C
- 将 n-1 个圆盘从 B 移动到 C，叠放在第 n 个圆盘之上上述递归解法的时间复杂度递推函数 T(n) 可表示为：

$$
T(n) = 2T(n - 1) + 1
$$
', 9, 'Mogullzr', '2026-02-02 11:50:12', 9, NULL, '2026-02-02 11:50:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4794');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4795, '408考研练习题——数据结构——时间复杂度第4题', '简单', '408考研练习题——数据结构——时间复杂度', '下面函数的时间复杂度是多少？

```c
void fun(int n, int arr[]) {
    int i = 0, j = 0;
    for (; i < n; ++i)
        while (j < n && arr[i] < arr[j])
            j++;
}
```
', '[''O(n)'', ''O(n²)'', ''O(n*log(n))'', ''O(n*log(n)²)'']', "['A']", 'A</font></strong>

```c
void fun(int n, int arr[]) {
    int i = 0, j = 0;
    for (; i < n; ++i) {
        j = 0;
        while (j < n && arr[i] < arr[j])
            j++;
    }
}
```
', 9, 'Mogullzr', '2026-02-02 11:50:12', 9, NULL, '2026-02-02 11:50:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4795');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4796, '408考研练习题——数据结构——时间复杂度第5题', '简单', '408考研练习题——数据结构——时间复杂度', '在一场竞赛中，观察到四个不同的函数。所有函数都使用单个 for 循环，且循环内部执行相同的语句集。考虑以下 for 循环：
A)`for(i=0;i<n;i++)`
B)`for(i=0;i<n;i+=2)`
C)`for(i=1;i<n;i*=2)`
D)`for(i=n;i<=n;i/=2)`
若$n$是输入规模（正数），哪个函数最高效（假设任务本身不是问题）？（ ）
', '''['''' '''', '''' '''', '''' '''', '''' '''']''', "['C']", 'C</font></strong>
- A)for(i=0;i<n;i++)时间复杂度为O(n)。循环从 0 到n−1，每次递增 1，共执行n次。
- B)for(i=0;i<n;i+=2)时间复杂度为O(n/2)。虽然每次步长为 2，但在渐近分析中与O(n)等价。
- C)for(i=1;i<n;i*=2)时间复杂度为O(logn)。指数增长使得迭代次数随n增大呈对数级增长。
- D)for(i=n;i<=n;i/=2)此循环为无限循环。初始值i=n满足i≤n，但除以 2 后i会逐渐减小，始终满足循环条件。综上，C 的时间复杂度最低，因此最高效。', 9, 'Mogullzr', '2026-02-02 11:50:12', 9, NULL, '2026-02-02 11:50:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4796');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4797, '408考研练习题——数据结构——时间复杂度第6题', '简单', '408考研练习题——数据结构——时间复杂度', '当说算法 X 比 Y<strong><font color=''#2656b3''>渐近更高效</font></strong>时，其含义是什么？（ ）
', '[''X 将是所有输入情况下的更好选择'', ''X 将是除可能的小输入外所有输入情况下的更好选择'', ''X 将是除可能的大输入外所有输入情况下的更好选择'', ''Y 将是小输入情况下的更好选择'']', "['B']", 'B</font></strong>
当我们说算法 X 比 Y 渐近更高效时，意味着随着算法输入规模的不断增大，X 的运行时间最终会比 Y 的运行时间更快。这通常通过大 O 表示法（big O notation）来描述，它给出了算法最坏情况运行时间的上界。具体来说：- 如果 X 比 Y 渐近更高效，则存在一个常数 *c* ，使得对于所有足够大的输入，X 的运行时间 ≤ *c* × Y 的运行时间；
- 即 X 的大 O 复杂度类低于 Y（如O(n)vsO(n2)）；
- 这表明在<strong><font color=''#2656b3''><strong><font color=''#2656b3''>大输入情况下</font></strong></font></strong>，X 在效率上始终优于 Y；
- 然而，对于<strong><font color=''#2656b3''><strong><font color=''#2656b3''>小输入</font></strong></font></strong>，Y 可能仍然比 X 更快（因常数因子或低阶项影响）。因此，我们不能断言 X 是所有输入情况下的更好选择，但可以说 X 是除可能的小输入外所有输入情况下的更好选择。', 9, 'Mogullzr', '2026-02-02 11:50:12', 9, NULL, '2026-02-02 11:50:12', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4797');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4798, '408考研练习题——数据结构——时间复杂度第7题', '简单', '408考研练习题——数据结构——时间复杂度', '在以下 C 函数中，假设$n ≥ m$。

```c
int gcd(n, m) {
    if (n % m == 0)
        return m;
    n = n % m;
    return gcd(m, n);
}
```
该函数会进行多少次递归调用？
', '[''O(log(n))'', ''O(n)'', ''O(log(log(n)))'', ''O(sqrt(n))'']', "['A']", 'A</font></strong>
- 上述代码是用于计算最大公约数（GCD）的<strong><font color=''#2656b3''><strong><font color=''#2656b3''>欧几里得算法</font></strong></font></strong>的实现。
- 欧几里得算法的核心思想是：若a>b，则gcd(a,b)=gcd(b,amodb)。
- 在最坏情况下，递归次数与斐波那契数列相邻两项的比值有关，其时间复杂度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(logn)
</font></strong></font></strong>。
- 因此，选项 A 正确。', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4798');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4799, '408考研练习题——数据结构——时间复杂度第8题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下函数：

```c
int unknown(int n) {
    int i, j, k = 0;
    for (i  = n/2; i <= n; i++)
        for (j = 2; j <= n; j = j * 2)
            k = k + n/2;
    return k;
}
```
该函数的时间复杂度是多少？（ ）
', '[''$O(n^{2})$'', ''$O(nlogn)$'', ''$O(n^{3})$'', ''$O(n^{3}logn)$'']', "['B']", 'B</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>外层循环</font></strong></font></strong>：执行次数为`n - n/2 + 1 ≈ n/2`次，即 Θ(n)
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>内层循环</font></strong></font></strong>：`j`每次乘以 2 直至超过`n`，执行次数为`log₂n`次
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>总时间复杂度</font></strong></font></strong>：外层循环次数 × 内层循环次数 = Θ(n) × log n =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(n log n)</font></strong></font></strong>', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4799');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4800, '408考研练习题——数据结构——时间复杂度第9题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下两个函数。它们的时间复杂度是多少？

```c
int fun1(int n) {
    if (n <= 1)
        return n;
    return 2 * fun1(n - 1);
}
```

```c
int fun2(int n) {
    if (n <= 1)
        return n;
    return fun2(n - 1) + fun2(n - 1);
}
```
', '[''fun1() 和 fun2() 都是$O(2^{n})$'', ''fun1() 是$O(n)$，fun2() 是$O(2^{n})$'', ''fun1() 是$O(2^{n})$，fun2() 是$O(n)$'', ''fun1() 和 fun2() 都是$O(n)$'']', "['B']", 'B</font></strong>
- fun1() 分析递归关系式：T(n)=T(n−1)+C时间复杂度：O(n)（线性递归）
- fun2() 分析递归关系式：T(n)=2T(n−1)+C时间复杂度：O(2n)（指数级递归树）<strong><font color=''#2656b3''>关键区别</font></strong>：
`fun1()`每次递归仅调用自身一次，形成单链递归结构；
`fun2()`每次递归调用自身两次，形成二叉树状递归结构，导致子问题数量呈指数增长。', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4800');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4801, '408考研练习题——数据结构——时间复杂度第10题', '简单', '408考研练习题——数据结构——时间复杂度', '当使用二分查找计算待插入数据的位置时，插入排序的最坏情况时间复杂度是多少？（ ）
', '[''O(N)'', ''O(N log N)'', ''O(N²)'', ''O((N log N)²)'']', "['C']", 'C</font></strong>
使用二分查找确定插入位置不会降低插入排序的时间复杂度。这是因为插入操作包含两个步骤：- 计算插入位置

- 使用二分查找可将此步骤时间复杂度从 O(N) 降低至 O(log N)
- 将插入位置后的数据向右移动一位

- 此步骤始终需要 O(N) 时间复杂度尽管第一步通过二分查找优化了时间效率，但第二步的数据移动操作仍是决定性因素。由于每次插入都需要进行一次完整的数组移动（最坏情况下），总共有 N 次插入操作，因此整体时间复杂度仍为 O(N²)。', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4801');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4802, '408考研练习题——数据结构——时间复杂度第11题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下 C 语言程序片段，其中`i`、`j`和`n`是整型变量。

```c
for(i = n, j = 0; i > 0; i /= 2, j += i);
```
设`val(j)`表示 for 循环终止后变量`j`中存储的值。以下哪一项是正确的？
', '[''val(j) =$O(logn)$'', ''val(j) =$O(\\\\sqrt{n})$'', ''val(j) =$O(n)$'', ''val(j) =$O(nlogn)$'']', "['C']", 'C</font></strong>
变量 j 初始为 0，其值是 i 在每次迭代中的值之和。i 初始化为 n，并在每次迭代中减半。
$$
j = \\frac{n}{2} + \\frac{n}{4} + \\frac{n}{8} + ⋯ + 1
$$
', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4802');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4803, '408考研练习题——数据结构——时间复杂度第12题', '简单', '408考研练习题——数据结构——时间复杂度', '要找出 100 个数中的最小值和最大值所需的最少比较次数是（ ）。
', '[''148'', ''147'', ''146'', ''140'']', "['A']", 'A</font></strong>
在 n 个数中找出最小值和最大值的步骤：- 取两个元素 (a, b)，比较它们（假设 a > b）
- 通过比较 (min, b) 更新最小值
- 通过比较 (max, a) 更新最大值因此，每处理两个元素需要 3 次比较，总比较次数为$\\frac{3n}{2} - 2$，因为第一步不需要更新 min 或 max。递推关系式为：

$$
\\begin{array}{cc}
T(n) & = T(⌈\\frac{n}{2}⌉) + T(⌊\\frac{n}{2}⌋) + 2 \\\\
 & = 2T(\\frac{n}{2}) + 2 \\\\
 & = ⌈\\frac{3n}{2}⌉ - 2 \\\\
\\end{array}
$$
代入$n = 100$得：$\\frac{3×100}{2} - 2 = 148$，即答案。', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4803');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4804, '408考研练习题——数据结构——时间复杂度第13题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下 C 函数：

```c
double foo(int n) {
    int i;
    double sum;
    if (n == 0)
        return 1.0;
    else {
        sum = 0.0;
        for (i = 0; i < n; i++)
            sum += foo(i);
        return sum;
    }
}
```
上述函数的空间复杂度是（ ）：
', '[''$O(1)$'', ''$O(n)$'', ''$O(n!)$'', ''$O(n^{n})$'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 函数`foo()`是递归实现的，每次调用会创建新的栈帧
- 最坏情况下（当`n`为最大值时），递归调用链深度达到`n`层
- 栈空间消耗与递归深度成正比，因此空间复杂度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(n)</font></strong></font></strong>
- 其他选项分析：

- O(1) 表示常数空间，不符合递归特性
- O(n!) 和 O(n^n) 是时间复杂度的典型表现，而非空间复杂度', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4804');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4805, '408考研练习题——数据结构——时间复杂度第14题', '简单', '408考研练习题——数据结构——时间复杂度', '两个矩阵 M1 和 M2 分别存储在数组 A 和 B 中。每个数组可以按行优先或列优先的顺序连续存储在内存中。计算 M1 × M2 的算法的时间复杂度将如何（ ）？
', '[''当 A 按行优先存储，B 按列优先存储时效果最佳'', ''当两者均按行优先存储时效果最佳'', ''当两者均按列优先存储时效果最佳'', ''与存储方式无关'']', "['D']", 'D</font></strong>
这是一个陷阱题。注意问题询问的是<strong><font color=''#2656b3''>时间复杂度</font></strong>，而非程序实际运行时间。对于时间复杂度而言，数组元素的存储方式并不影响结果，因为：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>矩阵乘法始终需要访问相同数量的 M1 和 M2 元素</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>数组元素访问始终是常数时间 O(1)</font></strong></font></strong>
- 不同存储方案可能产生不同的常数因子（如缓存命中率差异），但时间复杂度本身不会改变因此，无论采用行优先还是列优先存储，其时间复杂度仍为标准的矩阵乘法复杂度$O(n^{3})$。', 9, 'Mogullzr', '2026-02-02 11:50:13', 9, NULL, '2026-02-02 11:50:13', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4805');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4806, '408考研练习题——数据结构——时间复杂度第15题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下 C 函数。

```c
int fun1(int n)
{
   int i, j, k, p, q = 0;

   for (i = 1; i < n; ++i)
   {
      p = 0;

      for (j=n; j > 1; j=j/2)
         ++p;

      for (k=1; k < p; k=k*2)
         ++q;

   }
   return q;
}
```
下列哪一项是函数`fun1`的时间复杂度？（ ）
', '[''$Θ(n^{3})$'', ''$Θ(n(logn)2)$'', ''$Θ(nlogn)$'', ''$Θ(nlog(logn))$'']', "['C']", 'C</font></strong>

$$
T(n) = n × (\\log n + \\log \\log n)
$$
', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4806');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4807, '408考研练习题——数据结构——时间复杂度第16题', '简单', '408考研练习题——数据结构——时间复杂度', '一个无序列表包含 n 个不同的元素。在该列表中找到一个既不是最大值也不是最小值的元素所需的比较次数是（ ）：
', '[''$Θ(nlogn)$'', ''$Θ(n)$'', ''$Θ(logn)$'', ''$Θ(1)$'']', "['D']", 'D</font></strong>
我们只需要考虑任意三个元素并进行比较。因此，比较次数是常数，时间复杂度为<strong><font color=''#2656b3''>Θ(1)</font></strong>。<strong><font color=''#2656b3''>关键点</font></strong>：- 需要返回任意一个既不是最大值也不是最小值的元素
- 例如数组`{10, 20, 15, 7, 90}`，输出可以是`10`、`15`或`20`
- 从给定列表中任取三个元素（如`10`、`20`和`7`），通过<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3 次比较</font></strong></font></strong>即可确定中间元素为`10`', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4807');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4808, '408考研练习题——数据结构——时间复杂度第17题', '简单', '408考研练习题——数据结构——时间复杂度', '假设我们想将存储在数组中的 i 个数重新排列，使得所有负值都出现在正值之前。在最坏情况下所需的最少交换次数是（ ）：
', '[''$n - 1$'', ''$n$'', ''$n + 1$'', ''以上都不对'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 当数组中存储了`i`个数时，最坏情况发生在正负数分布最为分散的情形（如正负交替排列）
- 此时需要将所有正数与负数进行交换操作
- 最坏情况下正数的数量为`i/2`
- 由于每次交换操作最多能将两个元素归位（一个正数到右侧，一个负数到左侧），因此理论最小交换次数应为`floor(i/4)`级别
- 题目中所有选项均未覆盖这一复杂度范围，故选择 “以上都不对”', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4808');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4809, '408考研练习题——数据结构——时间复杂度第18题', '简单', '408考研练习题——数据结构——时间复杂度', '将下列函数按渐近增长顺序从小到大排列：
A.$n^{1/3}$
B.$e^{n}$
C.$n^{7/4}$
D.$nlogn$
E.$1.0000001^{n}$
', '[''A, D, C, E, B'', ''D, A, C, E, B'', ''A, C, D, E, B'', ''A, C, D, B, E'']', "['A']", 'A</font></strong>
B 和 E 属于指数函数，因此 {B,E} > > > {A, C, D}。
B > > > E。
A < < < {C, D}。
D < < < C
因此正确顺序为 A < < < D < < < C < < < E < < < B。', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4809');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4810, '408考研练习题——数据结构——时间复杂度第19题', '简单', '408考研练习题——数据结构——时间复杂度', '合并五个文件（A 有 10 条记录，B 有 20 条记录，C 有 15 条记录，D 有 5 条记录，E 有 25 条记录）所需的最小记录移动次数是：（ ）
', '[''165'', ''90'', ''75'', ''65'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 使用最优归并模式算法，按记录数从小到大排列文件：D → A → C → B → E
- 初始记录数序列：5, 10, 15, 20, 25
- 合并过程及记录移动次数计算：

- 第一次合并 D(5) + A(10) → 新文件 F(15)，移动次数 5+10=15
- 第二次合并 F(15) + C(15) → 新文件 G(30)，移动次数 15+15=30
- 第三次合并 G(30) + B(20) → 新文件 H(50)，移动次数 30+20=45
- 第四次合并 H(50) + E(25) → 最终文件 I(75)，移动次数 50+25=75
- 总记录移动次数 = 15 + 30 + 45 + 75 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>165</font></strong></font></strong>因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4810');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4811, '408考研练习题——数据结构——时间复杂度第20题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下 C 函数定义：

```c
int Trial(int a, int b, int c)
{
    if ((a >= b) && (c < b)) return b;
    else if (a >= b) return Trial(a, c, b);
    else return Trial(b, a, c);
}
```
该函数`Trial`的作用是（ ）：
', '[''找出 a、b 和 c 中的最大值'', ''找出 a、b 和 c 中的最小值'', ''找出 a、b 和 c 中的中间数'', ''以上都不正确'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>函数行为</font></strong></font></strong>：`Trial(a,b,c)`实际上通过递归调用实现了对三个参数的排序逻辑，最终返回的是三者的中位数（即第二大的元素）。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>特殊场景</font></strong></font></strong>：当`a = b = c`时，函数会陷入无限递归循环，导致程序崩溃或栈溢出。因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4811');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4812, '408考研练习题——数据结构——时间复杂度第21题', '简单', '408考研练习题——数据结构——时间复杂度', '给定一个大小为 n 的数组 A，其由一个递增序列后紧接一个递减序列组成。使用最优算法判断给定数字 x 是否存在于该数组中，（ ）？
', '[''$Θ(logn)$'', ''$Θ(n)$'', ''$Θ(n^{2})$'', ''$Θ(logn)2$'']', "['A']", 'A</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 该问题可通过二分查找法解决
- 最坏情况下时间复杂度为 Θ(log n)
- 因此选项 (A) 正确', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4812');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4813, '408考研练习题——数据结构——时间复杂度第22题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑递归方程

$$
T(n) = \\begin{cases} 1 & 当n = 0 \\\\  &  \\\\ 2T(n - 1) & 当n > 0 \\end{cases}
$$
则 T(n) 的大 O 阶是（ ）
', '[''$O(n)$'', ''$O(2^{n})$'', ''$O(1)$'', ''$O(logn)$'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>
通过递归展开可得：

$$
T(n) = 2T(n - 1) = 2 \\lbrack 2T(n - 2) \\rbrack  = 2^{2}T(n - 2)
$$

$$
= 2^{2} \\lbrack 2T(n - 3) \\rbrack  = 2^{3}T(n - 3)
$$

$$
⋯
$$

$$
= 2^{k}T(n - k)
$$
当$n - k = 0$即$k = n$时，若$T(0) = 1$，则：

$$
T(n) = 2^{n} ⋅ T(0) = 2^{n}
$$
因此时间复杂度为$O(2^{n})$。', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4813');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4814, '408考研练习题——数据结构——时间复杂度第23题', '简单', '408考研练习题——数据结构——时间复杂度', '考虑以下程序：

```c
void function(int n) {
    int i, j, count = 0;
    for (i = n / 2; i <= n; i++)
        for (j = 1; j <= n; j = j * 2)
            count++;
}
```
该程序的时间复杂度是（ ）
', '[''$O(logn)$'', ''$O(n^{2})$'', ''$O(n^{2}logn)$'', ''$O(nlogn)$'']', "['D']", 'D</font></strong>
- 外层循环执行2n​次
- 内层循环执行logn次因此程序的总时间复杂度为<strong><font color=''#2656b3''>O(n log n)</font></strong>，对应选项 (D)', 9, 'Mogullzr', '2026-02-02 11:50:14', 9, NULL, '2026-02-02 11:50:14', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4814');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4815, '408考研练习题——数据结构——时间复杂度第24题', '简单', '408考研练习题——数据结构——时间复杂度', '如果$b$是分支因子，$m$是搜索树的最大深度，那么贪婪搜索的空间复杂度是多少？（ ）
', '[''$O(b + m)$'', ''$O(b^{m})$'', ''$O(bm)$'', ''$O(mm)$'']', "['C']", 'C</font></strong>
- 在二叉树中，当分支因子为 2 且高度为 n 时，空间复杂度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(2n)</font></strong></font></strong>
- 在三叉树中，当分支因子为 3 且高度为 n 时，空间复杂度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(3n)</font></strong></font></strong>
- 因此，若搜索树的分支因子为 b 且最大深度为 m，则贪婪搜索的空间复杂度为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>O(bm)</font></strong></font></strong>综上所述，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:15', 9, NULL, '2026-02-02 11:50:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4815');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4816, '408考研练习题——数据结构——时间复杂度第25题', '简单', '408考研练习题——数据结构——时间复杂度', '一个递归函数$h$定义如下：

$$
h(m) = \\begin{cases} k & 当m = 0 \\\\ 1 & 当m = 1 \\\\ 2h(m - 1) + 4h(m - 2) & 当m ≥ 2 \\end{cases}
$$
若$h(4) = 88$，则$k$的值是（ ）。
', '[''0'', ''1'', ''2'', ''-1'']', "['C']", 'C</font></strong>
根据题目给出的条件：$h(4) = 88$
$$
\\begin{array}{cc}
88 & = 2h(3) + 4h(2) \\\\
 & = 2 \\lbrack 2h(2) + 4h(1) \\rbrack  + 4h(2) \\\\
 & = 8h(2) + 8h(1) \\\\
 & = 8(2 + 4k) + 8 \\\\
\\end{array}
$$
解得$k = 2$。因此选项<strong><font color=''#2656b3''>(C)</font></strong>正确。', 9, 'Mogullzr', '2026-02-02 11:50:15', 9, NULL, '2026-02-02 11:50:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4816');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4817, '408考研练习题——数据结构——时间复杂度第26题', '简单', '408考研练习题——数据结构——时间复杂度', '下面 C 函数的时间复杂度是（假设$n > 0$）（ ）

```c
int recursive(int n) {
     if(n == 1)
         return (1);
     else
         return (recursive(n-1) + recursive(n-1));
}
```
', '[''$O(n)$'', ''$O(nlogn)$'', ''$O(n^{2})$'', ''$O(2^{n})$'']', "['D']", 'D</font></strong>
代码的递归关系式为 T(n) = 2T(n-1) + k。我们可以通过代入法求解该递归式：
$$
T(n) = 2T(n - 1) + k
$$
因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:50:15', 9, NULL, '2026-02-02 11:50:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4817');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4818, '408考研练习题——数据结构——时间复杂度第27题', '简单', '408考研练习题——数据结构——时间复杂度', '确定算法效率时，时间因素是通过以下哪种方式衡量的？（ ）
', '[''计算微秒数'', ''计算关键操作的数量'', ''计算语句数量'', ''计算算法的千字节数'']', "['B']", 'B</font></strong>
确定算法效率时，时间因素是通过<strong><font color=''#2656b3''>计算关键操作的数量</font></strong>来衡量的。<strong><font color=''#2656b3''>错误选项解析</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>语句数量</font></strong></font></strong>：不能通过计算语句数量来衡量，因为语句数量少并不意味着程序更高效。很多时候我们需要编写更多代码以提高效率。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>空间复杂度</font></strong></font></strong>：空间复杂度是以千字节为单位进行衡量的，与时间因素无关。因此，选项 (B) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:50:15', 9, NULL, '2026-02-02 11:50:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4818');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4819, '408考研练习题——数据结构——时间复杂度第28题', '简单', '408考研练习题——数据结构——时间复杂度', '设$T(n)$由$T(1) = 10$和$T(n + 1) = 2n + T(n)$定义，其中$n ≥ 1$为整数。以下哪项表示$T(n)$作为函数的增长阶数？（ ）
', '[''$O(n)$'', ''$O(nlogn)$'', ''$O(n^{2})$'', ''$O(n^{3})$'']', "['C']", 'C</font></strong>
T(n+1) = 2n + T(n)
通过代入法：
T(n+1) = 2n + (2(n-1) + T(n-1))
T(n+1) = 2n + (2(n-1) + (2(n-2) + T(n-2)))
T(n+1) = 2n + (2(n-1) + (2(n-2) + (2(n-3) + T(n-3))))
T(n+1) = 2n + 2(n-1) + 2(n-2) + 2(n-3)……2(n-(n-1) + T(1))
T(n+1) = 2[n + n + n + …] - 2[1 + 2 + 3 +…]
T(n+1) = 2[n·n] - 2[n(n+1)/2]
T(n+1) = 2[n²] - [n² + n]
T(n+1) = n² - n
T(n+1) = O(n²)', 9, 'Mogullzr', '2026-02-02 11:50:15', 9, NULL, '2026-02-02 11:50:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4819');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4820, '408考研练习题——数据结构——时间复杂度第29题', '简单', '408考研练习题——数据结构——时间复杂度', '当以下递归函数被调用时，n=5 的输出是什么？（ ）

```c
int foo(int n) {
    if (n == 0)
        return 1;
    else
        return n * foo(n - 1);
}
```
', '[''1'', ''5'', ''120'', ''720'']', "['C']", 'C</font></strong>
给定的递归函数计算非负整数 n 的阶乘。当函数以 n=5 调用时，函数会检查 n 是否等于 0。由于 n 不等于零，它返回 n 乘以将 n-1 作为输入调用相同函数的值。递归调用会持续进行直到达到基准情况（n==0）。foo(5) 的计算过程如下：- `foo(5) = 5 * foo(4)`
- `foo(4) = 4 * foo(3)`
- `foo(3) = 3 * foo(2)`
- `foo(2) = 2 * foo(1)`
- `foo(1) = 1 * foo(0)`
- `foo(0) = 1`逐步代入计算：- 将foo(0)=1代入foo(1):foo(1) = 1 * 1 = 1
- 将foo(1)=1代入foo(2):foo(2) = 2 * 1 = 2
- 将foo(2)=2代入foo(3):foo(3) = 3 * 2 = 6
- 将foo(3)=6代入foo(4):foo(4) = 4 * 6 = 24
- 将foo(4)=24代入foo(5):foo(5) = 5 * 24 = 120因此，当以 n=5 调用该函数时，输出为<strong><font color=''#2656b3''>120</font></strong>，即选项 C。', 9, 'Mogullzr', '2026-02-02 11:50:15', 9, NULL, '2026-02-02 11:50:15', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1334', '4820');
