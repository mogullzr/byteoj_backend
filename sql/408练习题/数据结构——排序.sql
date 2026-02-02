INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5063, '408考研练习题——数据结构——排序第1题', '简单', '408考研练习题——数据结构——排序', '快速排序的最坏情况下，其递归式是什么？时间复杂度是多少？
', '[''递归式为 T(n) = T(n-2) + O(n)，时间复杂度为 O(n²)'', ''递归式为 T(n) = T(n-1) + O(n)，时间复杂度为 O(n²)'', ''递归式为 T(n) = 2T(n/2) + O(n)，时间复杂度为 O(nLogn)'', ''递归式为 T(n) = T(n/10) + T(9n/10) + O(n)，时间复杂度为 O(nLogn)'']', "['B']", 'B</font></strong>
当选择的基准元素始终是已排序数组中的端点元素时，快速排序会进入最坏情况。此时快速排序递归调用一个大小为 0 的子问题和另一个大小为 (n-1) 的子问题。因此递归式为 T(n) = T(n-1) + T(0) + O(n)，该表达式可简化为 T(n) = T(n-1) + O(n)。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5063');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5064, '408考研练习题——数据结构——排序第2题', '简单', '408考研练习题——数据结构——排序', '假设我们有一个 O(n) 时间的算法可以找到一个未排序数组的中位数。现在考虑一个快速排序的实现：我们首先使用上述算法找到中位数，然后将该中位数作为主元。这种修改后的快速排序的最坏情况时间复杂度是多少？
', '[''O(n² log n)'', ''O(n²)'', ''O(n log n log n)'', ''O(n log n)'']', "['D']", 'D</font></strong>
如果使用中位数作为主元元素，则所有情况的递归关系式变为 T(n) = 2T(n/2) + O(n)。上述递归关系可以通过主定理（Master Theorem）求解。它符合主定理的第 2 种情形。因此，这种修改后的快速排序的最坏情况时间复杂度为 O(n log n)。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5064');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5065, '408考研练习题——数据结构——排序第3题', '简单', '408考研练习题——数据结构——排序', '以下哪种排序算法在典型实现中不是稳定的排序算法？
', '[''插入排序'', ''归并排序'', ''快速排序'', ''冒泡排序'']', "['C']", 'C</font></strong>
快速排序在其典型实现中不是稳定的排序算法。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5065');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5066, '408考研练习题——数据结构——排序第4题', '简单', '408考研练习题——数据结构——排序', '在以下排序算法中，哪种在典型实现下对已排序或几乎排序（最多有 1 或 2 个元素错位）的数组性能最佳？
', '[''快速排序'', ''堆排序'', ''归并排序'', ''插入排序'']', "['D']", 'D</font></strong>
当输入数组已排序或几乎排序时，插入排序的时间复杂度为线性时间。上述所有其他排序算法在典型实现下所需时间均超过线性时间。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5066');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5067, '408考研练习题——数据结构——排序第5题', '简单', '408考研练习题——数据结构——排序', '假设我们正在使用快速排序法对一个包含八个整数的数组进行排序，并且刚刚完成第一次划分操作后数组的状态如下：
2 5 1 7 9 12 11 10
以下哪个陈述是正确的？
', '[''主元可能是 7 或 9。'', ''主元可能是 7，但不是 9'', ''主元不是 7，但可能是 9'', ''7 和 9 都不是主元。'']', "['A']", 'A</font></strong>
7 和 9 都处于其在已排序数组中的正确位置（即最终位置）。此外，7 左侧的所有元素均小于 7，右侧所有元素均大于 7；9 左侧的所有元素均小于 9，右侧所有元素均大于 9。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5067');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5068, '408考研练习题——数据结构——排序第6题', '简单', '408考研练习题——数据结构——排序', '假设我们正在使用堆排序对一个包含八个整数的数组进行排序，并且刚刚完成了一些堆化（最大堆化或最小堆化）操作。当前数组为：16 14 15 10 12 27 28。已对堆的根节点执行了多少次堆化操作？
', '[''1'', ''2'', ''3 或 4'', ''5 或 6'']', "['B']", 'B</font></strong>
在堆排序中，我们首先构建一个堆，然后重复以下操作直到堆大小变为 1：a) 交换根节点与最后一个元素 b) 对根节点调用堆化操作 c) 将堆大小减 1。本题中，观察到数组最后两个元素是最大的两个值，说明这是通过最大堆化操作实现的，且该操作已被执行了 2 次。因此选项 B 为正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5068');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5069, '408考研练习题——数据结构——排序第7题', '简单', '408考研练习题——数据结构——排序', '冒泡排序（优化版）的最佳时间复杂度是什么？
', '[''$N^{2}$'', ''$NlogN$'', ''$N$'', ''$N(logN)2$'']', "['C']", 'C</font></strong>
当输入数据已经按预期输出顺序排列时，冒泡排序达到最佳性能。通过引入一个布尔变量来检测内层循环中是否发生过交换即可实现。该布尔变量用于判断在内层循环中是否有至少一次值的交换。请观察以下代码片段：
```c
int main()
{   
    int arr[] = {10, 20, 30, 40, 50}, i, j, isSwapped;
    int n = sizeof(arr) / sizeof(*arr);
    isSwapped = 1;
    for(i = 0; i < n - 1 && isSwapped; ++i)
    {
        isSwapped = 0;
        for(j = 0; j < n - i - 1; ++j)
            if (arr[j] > arr[j + 1])
            {
                swap(&arr[j], &arr[j + 1]);
                isSwapped = 1;
            }
    }
    for(i = 0; i < n; ++i)
        printf("%d ", arr[i]);
    return 0;
}
```
请注意，在上述代码中，外层循环仅运行一次。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5069');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5070, '408考研练习题——数据结构——排序第8题', '简单', '408考研练习题——数据结构——排序', '你需要对 1GB 的数据进行排序，但主内存只有 100MB 可用。哪种排序方法最合适？
', '[''堆排序'', ''归并排序'', ''快速排序'', ''插入排序'']', "['B']", 'B</font></strong>
该数据可以通过使用合并技术的外部排序来处理。具体步骤如下：- 将数据分成 10 个组，每组大小为 100MB
- 对每个组单独排序后写入磁盘
- 从每个组中加载 10 个元素到主内存
- 将主内存中的最小元素输出到磁盘，并从被选中元素所在组加载下一个元素
- 循环执行第 4 步直到所有元素都被输出步骤 3-5 被称为合并技术。', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5070');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5071, '408考研练习题——数据结构——排序第9题', '简单', '408考研练习题——数据结构——排序', '在一种修改后的归并排序中，输入数组被分割在数组长度（N）的三分之一位置。以下哪项是该修改后归并排序时间复杂度的最紧上界？
', '[''$N(log_{3}N)$'', ''$N(log_{2/}N)$'', ''$N(log_{1/3}N)$'', ''$N(log_{3/2}N)$'']', "['D']", 'D</font></strong>
时间复杂度由以下递归关系式给出：$T(N) = T(N/3) + T(2N/3) + N$。求解上述递推关系可得：$T(N) = N(log_{3/2}N)$', 9, 'Mogullzr', '2026-02-02 11:51:19', 9, NULL, '2026-02-02 11:51:19', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5071');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5072, '408考研练习题——数据结构——排序第10题', '简单', '408考研练习题——数据结构——排序', '当输入数组的所有元素都相同时，哪种排序算法所需时间最短？考虑典型的排序算法实现。
', '[''插入排序'', ''堆排序'', ''归并排序'', ''选择排序'']', "['A']", 'A</font></strong>
当输入数组已排序时，插入排序的时间复杂度为 O(n)。', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5072');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5073, '408考研练习题——数据结构——排序第11题', '简单', '408考研练习题——数据结构——排序', '以下哪种排序算法的最坏情况时间复杂度最低？
', '[''归并排序'', ''冒泡排序'', ''快速排序'', ''选择排序'']', "['A']", 'A</font></strong>
上述排序算法的最坏情况时间复杂度如下：- 归并排序：O(n*log(n))
- 冒泡排序：O(n²)
- 快速排序：O(n²)
- 选择排序：O(n²)', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5073');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5074, '408考研练习题——数据结构——排序第12题', '简单', '408考研练习题——数据结构——排序', '关于归并排序（Merge Sort），以下哪项描述是正确的？
', '[''如果数据来自慢速顺序存储设备，归并排序的表现优于快速排序。'', ''归并排序本质上是一种稳定排序算法。'', ''在大多数实际应用场景中，归并排序的性能优于堆排序。'', ''以上全部正确。'']', "['D']", 'D</font></strong>
归并排序满足上述所有三个选项的描述。', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5074');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5075, '408考研练习题——数据结构——排序第13题', '简单', '408考研练习题——数据结构——排序', '给定一个数组，其中数字的范围从 1 到 n⁶，哪种排序算法可以在线性时间内对这些数字进行排序？
', '[''不可能在线性时间内排序'', ''基数排序（Radix Sort）'', ''计数排序（Counting Sort）'', ''快速排序（Quick Sort）'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>
$$
O(\\log n ⋅ (n + b))
$$
因此，在输入规模$n$增大时，基数排序可以实现<strong><font color=''#2656b3''>近似线性</font></strong>甚至<strong><font color=''#2656b3''>线性时间</font></strong>排序。<strong><font color=''#2656b3''>其他选项分析：</font></strong>- 计数排序（Counting Sort）时间复杂度为O(n+k)，其中k是数字范围，即最大值为n6。
因此复杂度为O(n+n6)=O(n6)，远远超过线性，不适用。
- 快速排序（Quick Sort）时间复杂度O(nlogn)，不是线性时间。
- 不可能在线性时间内排序错误。因为基数排序可以在线性时间内完成（在特定情况下）。最终选择：<strong><font color=''#2656b3''>基数排序（Radix Sort）</font></strong>', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5075');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5076, '408考研练习题——数据结构——排序第14题', '简单', '408考研练习题——数据结构——排序', '你有一个包含 n 个元素的数组。假设你通过始终选择数组的中心元素作为基准元素来实现快速排序。那么最坏情况下的性能最优上界是（ ）。
', '[''$O(n^{2})$'', ''$O(log_{2}n)$'', ''$O(n × log_{2}n)$'', ''$O(n^{3})$'']', "['A']", 'A</font></strong>
对于任何输入，都存在一些排列方式会导致最坏情况为$O(n^{2})$。在某些情况下，选择中间元素可以降低遇到$O(n^{2})$的可能性，但最坏情况下仍可能达到$O(n^{2})$。无论我们选择第一个还是中间元素作为基准元素，只要基准位置固定，最坏情况仍会是$O(n^{2})$。而选择随机基准元素则能进一步降低遇到最坏情况（即$O(n^{2})$）的可能性。', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5076');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5077, '408考研练习题——数据结构——排序第15题', '简单', '408考研练习题——数据结构——排序', '在由$n$个不同整数构成的排列$a_{1} ⋯ a_{n}$中，<strong><font color=''#2656b3''>逆序对</font></strong>是指满足$i < j$且$a_{i} > a_{j}$的一对元素$(a_{i}, a_{j})$。如果输入限制为最多包含$n$个逆序对的$1 ⋯ n$排列，则插入排序算法的最坏时间复杂度是多少？（ ）
', '[''$Θ(n^{2})$'', ''$Θ(nlog_{2}n)$'', ''$Θ(n^{1.5})$'', ''$Θ(n)$'']', "['D']", 'D</font></strong>
插入排序的运行时间为Θ(n + f(n))，其中 f(n) 表示数组中初始存在的逆序对数量。', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5077');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5078, '408考研练习题——数据结构——排序第16题', '简单', '408考研练习题——数据结构——排序', '以下哪种对典型快速排序的改进能提升其平均性能，并且在实际应用中通常会被采用？
', '[''1 和 2'', ''2、3 和 4'', ''1、2 和 3'', ''2、3 和 4'']', "['C']", 'C</font></strong>
第四个优化方案在实践中通常不会被采用，虽然它能将最坏情况的时间复杂度降低到$O(nlog_{2}n)$，但隐藏的常数因子非常高。', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5078');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5079, '408考研练习题——数据结构——排序第17题', '简单', '408考研练习题——数据结构——排序', '以下算法在最佳情况下的时间复杂度正确排序是？
', '[''归并排序 > 快速排序 > 插入排序 > 选择排序'', ''插入排序 < 快速排序 < 归并排序 < 选择排序'', ''归并排序 > 选择排序 > 快速排序 > 插入排序'', ''归并排序 > 快速排序 > 选择排序 > 插入排序'']', "['B']", 'B</font></strong>
在最佳情况下：- 快速排序：O (nlogn)
- 归并排序：O (nlogn)
- 插入排序：O (n)
- 选择排序：O (n²)', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5079');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5080, '408考研练习题——数据结构——排序第18题', '简单', '408考研练习题——数据结构——排序', '关于插入排序（insertion sort）的以下陈述中，哪一项是正确的？
', '[''插入排序是稳定的、在线排序，但不适合处理大量元素。'', ''插入排序是不稳定的且在线排序'', ''插入排序是在线排序且可以应用于超过 100 个元素的情况'', ''插入排序是稳定和在线排序，且可以应用于超过 100 个元素的情况'']', "['A']", 'A</font></strong>
该算法在元素数量较少时耗时较短，但随着元素数量增加，时间复杂度呈二次方增长。', 9, 'Mogullzr', '2026-02-02 11:51:20', 9, NULL, '2026-02-02 11:51:20', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5080');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5081, '408考研练习题——数据结构——排序第19题', '简单', '408考研练习题——数据结构——排序', '对于数组中的元素超过一百万的情况，哪种排序算法最合适？（ ）
', '[''归并排序。'', ''冒泡排序。'', ''快速排序。'', ''插入排序。'']', "['C']", 'C</font></strong>
大多数实际的快速排序实现采用随机化版本。该版本的平均时间复杂度为 O(nLogn)。虽然随机化版本也存在最坏情况，但最坏情况不会针对特定模式（如已排序数组）发生，且在实践中随机化快速排序表现良好。快速排序也是一种缓存友好的排序算法，在处理数组时具有良好的局部性引用特性。此外，快速排序是尾递归的，因此可以进行尾调用优化。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5081');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5082, '408考研练习题——数据结构——排序第20题', '简单', '408考研练习题——数据结构——排序', '对以下两个输入使用快速排序进行升序排列，且每次都将第一个元素选为主元：
(i) 1, 2, 3, …, n
(ii) n, n-1, n-2, …, 2, 1
设 C1 和 C2 分别为处理输入 (i) 和 (ii) 时的比较次数。则：
', '[''C1 < C2'', ''C1 > C2'', ''C1 = C2'', ''对任意 n 都无法确定两者关系'']', "['C']", 'C</font></strong>
当输入序列本身已按升序或降序排列时，快速排序会进入最坏情况。此时两种输入模式（正序和逆序）都会导致完全相同的划分过程，因此比较次数必然相等。选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5082');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5083, '408考研练习题——数据结构——排序第21题', '简单', '408考研练习题——数据结构——排序', '考虑以下排序算法：
I. 快速排序（Quicksort）
II. 堆排序（Heapsort）
III. 归并排序（Mergesort）
在最坏情况下，哪些算法的执行时间最少？
', '[''仅 I 和 II'', ''仅 II 和 III'', ''仅 III'', ''I、II 和 III'']', "['B']", 'B</font></strong>
堆排序和归并排序的最坏情况时间复杂度为$O(nlog_{2}n)$，而快速排序的最坏情况时间复杂度为$O(n^{2})$。因此选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5083');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5084, '408考研练习题——数据结构——排序第22题', '简单', '408考研练习题——数据结构——排序', '以下哪种原地排序算法所需的交换次数最少？（ ）
', '[''快速排序'', ''插入排序'', ''选择排序'', ''堆排序'']', "['C']", 'C</font></strong>
选择排序在排序数组时需要的交换次数最少。它最多需要进行 O(n) 次比较来对包含 n 个元素的数组进行排序。因此，选择排序是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5084');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5085, '408考研练习题——数据结构——排序第23题', '简单', '408考研练习题——数据结构——排序', '以下哪项关于基于比较的排序算法的说法是不正确的？
', '[''基于比较的排序算法对于随机输入数组的最小可能时间复杂度是 O(n log n)'', ''任何基于比较的排序算法都可以通过在比较两个元素时使用位置作为标准来变得稳定'', ''计数排序不是基于比较的排序算法'', ''堆排序不是基于比较的排序算法'']', "['D']", 'D</font></strong>
堆排序不是基于比较的排序算法的说法不正确。堆排序是一种典型的基于比较的排序算法，其核心操作依赖于元素之间的比较（如父节点与子节点的大小关系判断），而计数排序属于非比较类排序算法。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5085');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5086, '408考研练习题——数据结构——排序第24题', '简单', '408考研练习题——数据结构——排序', '以下哪种算法可以在$O(n)$时间内对范围为 0 到$(n^{2} - 1)$的$n$个整数进行升序排序？
', '[''选择排序'', ''冒泡排序'', ''基数排序'', ''插入排序'']', "['C']", 'C</font></strong>
选择排序需要$O(n^{2})$时间。冒泡排序需要$O(n^{2})$时间。基数排序需要$O(n)$时间。插入排序需要$O(n^{2})$时间。因此，选项 (C) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5086');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5087, '408考研练习题——数据结构——排序第25题', '简单', '408考研练习题——数据结构——排序', '下列哪种算法设计技术用于归并排序？
', '[''贪心法'', ''回溯法'', ''动态规划'', ''分治法'']', "['D']", 'D</font></strong>
归并排序采用分治法对元素进行排序。数组会递归地被分割为两半，直到大小变为 1。当数组大小变为 1 时，合并过程开始执行，并逐步将子数组合并回完整数组。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5087');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5088, '408考研练习题——数据结构——排序第26题', '简单', '408考研练习题——数据结构——排序', '如果我们使用基数排序（Radix Sort）对范围在$(nk/2, nk \\rbrack$内的$n$个整数进行排序，且$k > 0$是与$n$无关的常数，那么所需时间是多少？
A.$O(n)$B.$O(kn)$C.$O(nlog_{2}n)$D.$O(n^{2})$查看答案与解析<strong><font color=''#2656b3''></font></strong>收藏<strong><font color=''#2656b3''>正确答案：C</font></strong>
基数排序的时间复杂度 =$O(w⋅ n)$，其中$n$是键的数量，$w$是字长 =$log(n^{k})$。因此$O(w⋅ n) = O(k⋅ log(n)⋅ n) ⇒ O(nklog_{2}n)$。
', '[]', 'C</font></strong>
基数排序的时间复杂度 =$O(w⋅ n)$，其中$n$是键的数量，$w$是字长 =$log(n^{k})$。因此$O(w⋅ n) = O(k⋅ log(n)⋅ n) ⇒ O(nklog_{2}n)$。', '如果我们使用基数排序（Radix Sort）对范围在$(nk/2, nk \\rbrack$内的$n$个整数进行排序，且$k > 0$是与$n$无关的常数，那么所需时间是多少？
A.$O(n)$B.$O(kn)$C.$O(nlog_{2}n)$D.$O(n^{2})$查看答案与解析<strong><font color=''#2656b3''></font></strong>收藏<strong><font color=''#2656b3''>正确答案：C</font></strong>
基数排序的时间复杂度 =$O(w⋅ n)$，其中$n$是键的数量，$w$是字长 =$log(n^{k})$。因此$O(w⋅ n) = O(k⋅ log(n)⋅ n) ⇒ O(nklog_{2}n)$。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5088');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5089, '408考研练习题——数据结构——排序第27题', '简单', '408考研练习题——数据结构——排序', '假设我们使用冒泡排序对 n 个不同的元素进行升序排序。冒泡排序的最佳情况何时发生？
', '[''当元素已按升序排列时'', ''当元素已按降序排列时'', ''当元素未按任何顺序排列时'', ''冒泡排序没有最佳情况，它始终需要 O(n²) 时间'']', "['A']", 'A</font></strong>
在最佳情况下，数组本身已经有序，但为了验证这一点，冒泡排序仍会执行 O(n) 次比较。因此，冒泡排序在最佳情况下的时间复杂度为 O(n)。选项 A 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:21', 9, NULL, '2026-02-02 11:51:21', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5089');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5090, '408考研练习题——数据结构——排序第28题', '简单', '408考研练习题——数据结构——排序', '考虑一种情况，其中交换操作非常昂贵。在以下排序算法中，应优先选择哪一种以通常最小化交换操作的次数？
', '[''堆排序'', ''选择排序'', ''插入排序'', ''归并排序'']', "['B']", 'B</font></strong>
选择排序进行 O(n) 次交换，这是上述所有排序算法中最小的。因此选项 (B) 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:22', 9, NULL, '2026-02-02 11:51:22', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1339', '5090');
