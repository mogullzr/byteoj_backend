INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5091, '408考研练习题——计算机组成原理——进制第1题', '简单', '408考研练习题——计算机组成原理——进制', '设 m=(313)₄ 且 n=(322)₄。求 m+n 的四进制展开式（ ）。
', '[''(635)₄'', ''(32312)₄'', ''(21323)₄'', ''(1301)₄'']', "['D']", 'D</font></strong>
- 将 m 和 n 转换为十进制后相加：

- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>m</font></strong></font></strong>= 3×4² + 1×4¹ + 3×4⁰ = 3×16 + 1×4 + 3×1 = 48 + 4 + 3 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>55</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>n</font></strong></font></strong>= 3×4² + 2×4¹ + 2×4⁰ = 3×16 + 2×4 + 2×1 = 48 + 8 + 2 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>58</font></strong></font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>m+n</font></strong></font></strong>= 55 + 58 =<strong><font color=''#2656b3''><strong><font color=''#2656b3''>113</font></strong></font></strong>（十进制）
- 将 113 转换为四进制：
- 113 ÷ 4 = 28 余<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1</font></strong></font></strong>
- 28 ÷ 4 = 7 余<strong><font color=''#2656b3''><strong><font color=''#2656b3''>0</font></strong></font></strong>
- 7 ÷ 4 = 1 余<strong><font color=''#2656b3''><strong><font color=''#2656b3''>3</font></strong></font></strong>
- 1 ÷ 4 = 0 余<strong><font color=''#2656b3''><strong><font color=''#2656b3''>1</font></strong></font></strong>因此，四进制表示为<strong><font color=''#2656b3''>(1301)₄</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:23', 9, NULL, '2026-02-02 11:51:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5091');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5092, '408考研练习题——计算机组成原理——进制第2题', '简单', '408考研练习题——计算机组成原理——进制', '十进制数值 0.5 在 IEEE 单精度浮点表示中具有以下特征（ ）：
', '[''尾数位为 000…000 且指数值为 0'', ''尾数位为 000…000 且指数值为−1'', ''尾数位为 100…000 且指数值为 0'', ''没有精确表示'']', "['B']", 'B</font></strong>
IEEE 754 标准规定了以下位分配：- 符号位：1 位
- 指数宽度：8 位
- 有效数字（尾数）：24 位（其中 23 位显式存储）十进制的 0.5 对应二进制的$1 × 2^{−1}$。因此：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>指数值</font></strong></font></strong>：偏移量为 127 的 IEEE 754 单精度浮点数中，实际指数值为 -1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>尾数位</font></strong></font></strong>：由于二进制表示为`1.0`（隐含前导 1），显式存储的 23 位尾数全为 0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>符号位</font></strong></font></strong>：正数，故为 0最终表示为：
`0 11111110 00000000000000000000000`
（符号位 | 指数域 | 尾数域）', 9, 'Mogullzr', '2026-02-02 11:51:23', 9, NULL, '2026-02-02 11:51:23', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5092');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5093, '408考研练习题——计算机组成原理——进制第3题', '简单', '408考研练习题——计算机组成原理——进制', '用 8 位二进制补码表示的最小整数是（ ）：
', '[''-256'', ''-128'', ''-127'', ''0'']', "['B']", 'B</font></strong>
参见补码表示。
对于 n 位二进制补码数，其数值范围为：

$$
−2^{n-1} 到 2^{n-1} - 1
$$
当 n=8 时，最小值为$−2^{7} = −128$', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5093');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5094, '408考研练习题——计算机组成原理——进制第4题', '简单', '408考研练习题——计算机组成原理——进制', 'P 是一个 16 位有符号整数。P 的二进制补码表示为 (F87B)₁₆。8×P 的二进制补码表示是（ ）：
', '[''(C3D8)₁₆'', ''(187B)₁₆'', ''(F878)₁₆'', ''(987B)₁₆'']', "['A']", 'A</font></strong>
解释：P = (F87B)₁₆ 对应的二进制为 -1111 1000 0111 1011。注意最高有效位为 1，说明该数为负数。对数值进行二进制补码运算可得 P = -1925，8P = -15400。由于 8P 仍为负数，需对其取补码：- 15400 的二进制为 0011 1100 0010 1000
- 补码结果为 1100 0011 1101 1000 = (C3D8)₁₆另一种方法：- P = (F87B)₁₆ 的二进制为 1111 1000 0111 1011（最高位为 1 表示负数）
- 通过补码运算得 P = -1925
- 1925 的二进制为 0000 0111 1000 0101
- 8P 相当于将 P 左移 3 位得到 0011 1100 0010 1000
- 加上负号后变为 1011 1100 0010 1000
- 其补码为 1100 0011 1101 1000 = (C3D8)₁₆', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5094');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5095, '408考研练习题——计算机组成原理——进制第5题', '简单', '408考研练习题——计算机组成原理——进制', '(1217)₈ 等于以下哪个选项？
', '[''(1217)₁₆'', ''(028F)₁₆'', ''(2297)₁₀'', ''(0B17)₁₆'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 八进制转二进制每位八进制数对应 3 位二进制数：1 → 001
2 → 010
1 → 001
7 → 111合并后得到：(001 010 001 111)₂
- 二进制转十六进制将二进制数从右向左每 4 位分组（不足补零）：(0010 1000 1111)₂对应十六进制：0010 → 2
1000 → 8
1111 → F最终结果为：(28F)₁₆，即选项 B', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5095');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5096, '408考研练习题——计算机组成原理——进制第6题', '简单', '408考研练习题——计算机组成原理——进制', '在 IEEE 浮点数表示中，十六进制值 0x00000000 对应的是（ ）：
', '[''规格化值$2^{−127}$'', ''规格化值$2^{−126}$'', ''规格化值 +0'', ''特殊值 +0'']', "['D']", 'D</font></strong>
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>IEEE 754 标准规定</font></strong></font></strong>：当指数域和尾数域全部为零时，表示零值（Zero）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>符号位决定正负</font></strong></font></strong>：符号位为 0 表示正零（+0），为 1 表示负零（-0）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>本题分析</font></strong></font></strong>：题目未明确给出符号位，默认按 0 处理，因此对应特殊值 +0
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>关键区分</font></strong></font></strong>：

- 规格化值需满足指数域非全 0/全 1
- 全 0 的指数域与尾数域组合属于特殊值范畴', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5096');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5097, '408考研练习题——计算机组成原理——进制第7题', '简单', '408考研练习题——计算机组成原理——进制', '一个浮点型变量的值使用 IEEE-754 单精度 32 位浮点格式表示，该格式采用 1 位符号位、8 位偏移指数和 23 位尾数。将十进制值 -14.25 赋给浮点型变量 X 后，X 的十六进制表示是（ ）：
', '[''C1640000H'', ''416C0000H'', ''41640000H'', ''C16C0000H'']', "['A']", 'A</font></strong>
由于数值为负，符号位 S 为 1
将 14.25 转换为二进制：1110.01
归一化为：1.11001 × 2³
偏移指数（加 127）：3 + 127 = 130（二进制为 10000010）
尾数：110010…..0（共 23 位）IEEE 754 单精度格式表示为：
1 10000010 11001000000000000000000按四比特分组转换为十六进制：
1100 0001 0110 0100 0000 0000 0000 0000结果为：C1640000', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5097');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5098, '408考研练习题——计算机组成原理——进制第8题', '简单', '408考研练习题——计算机组成原理——进制', '在 n 位二进制补码表示系统中，可以表示的整数范围是（ ）：
', '[''$−2^{n-1} ∼ 2^{n-1} - 1$'', ''$−2^{n-1} - 1 ∼ 2^{n-1} - 1$'', ''$−2^{n-1} - 1 ∼ 2^{n-1}$'', ''$−2^{n-1} + 1 ∼ 2^{n-1} + 1$'']', "['A']", 'A</font></strong>
本题考查补码的表示范围。', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5098');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5099, '408考研练习题——计算机组成原理——进制第9题', '简单', '408考研练习题——计算机组成原理——进制', '设 A = 1111 1010 和 B = 0000 1010 为两个 8 位二进制补码数。它们的乘积在二进制补码表示中是（ ）：
', '[''1100 0100'', ''1001 1100'', ''1010 0101'', ''1101 0101'']', "['A']", 'A</font></strong>
此处我们有：- A =`1111 1010`= -6₁₀（A 是二进制补码数）
- B =`0000 1010`= 10₁₀（B 是二进制补码数）<strong><font color=''#2656b3''>计算过程：</font></strong>- 十进制乘法：A × B = (-6) × 10 = -60₁₀
- 转换为二进制补码：

- 原码表示：`1 011 1100`₂（最高位为符号位）
- 反码转换：`1 100 0011`₂
- 补码结果：`1 100 0100`₂（8 位截断后为`1100 0100`）<strong><font color=''#2656b3''>结论：</font></strong>
A 和 B 在二进制补码中的乘积是`1100 0100`，即选项 A。
所以，A 是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5099');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5100, '408考研练习题——计算机组成原理——进制第10题', '简单', '408考研练习题——计算机组成原理——进制', '假设所有数字都以二进制补码形式表示，以下哪个数能被 11111011 整除？（ ）
', '[''11100111'', ''11100100'', ''11010111'', ''11011011'']', "['A']", 'A</font></strong>
由于最高有效位为 1，所有数字均为负数。
除数（11111011）的二进制补码 = 反码 + 1 = 00000100 + 1 = 00000101
因此该数对应的十进制值为 -5选项 A 的十进制值为 -25', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5100');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5101, '408考研练习题——计算机组成原理——进制第11题', '简单', '408考研练习题——计算机组成原理——进制', '以下是一种使用 16 位表示浮点数的方案。
设 s、e 和 m 分别为符号位、指数位和尾数位中二进制表示的数值。则该系统中可表示的两个连续实数之间的最大差值是多少？（ ）
', '[''2⁻⁴⁰'', ''2⁻⁹'', ''2²²'', ''2³¹'']', "['C']", 'C</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最大差值条件</font></strong></font></strong>：相邻两个数的最大差值出现在指数部分取最大值时。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>指数字段分析</font></strong></font></strong>：

- 指数字段为 6 位（位置 14 至 9），其无偏最大值为 63。
- 若采用偏置值 32（即实际指数为`e - 32`），则最大有效指数为`63 - 32 = 31`。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>尾数字段分析</font></strong></font></strong>：

- 尾数字段为 9 位（位置 8 至 0）。
- 相邻数的间隔为`2⁽³¹ ⁻ ⁹⁾ = 2²²`。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>结论</font></strong></font></strong>：正确答案为选项<strong><font color=''#2656b3''><strong><font color=''#2656b3''>C</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5101');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5102, '408考研练习题——计算机组成原理——进制第12题', '简单', '408考研练习题——计算机组成原理——进制', '十进制数值 0.25（ ）
', '[''等价于二进制数值 0.1'', ''等价于二进制数值 0.01'', ''等价于二进制数值 0.00111…'', ''无法用二进制精确表示'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 第一步：0.25₁₀ × 2 = 0.50 → 整数部分为 0
- 第二步：0.50 × 2 = 1.00 → 整数部分为 1通过连续乘以 2 取整数部分的方法，最终得到：
<strong><font color=''#2656b3''>0.25₁₀ = 0.01₂</font></strong>
因此选项 B 正确。', 9, 'Mogullzr', '2026-02-02 11:51:24', 9, NULL, '2026-02-02 11:51:24', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5102');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5103, '408考研练习题——计算机组成原理——进制第13题', '简单', '408考研练习题——计算机组成原理——进制', '十进制数值 -15 的二进制补码表示是（ ）
', '[''1111'', ''11111'', ''111111'', ''10001'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析步骤：</font></strong>- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>原码表示</font></strong></font></strong>：-15 的原码为`11111`（最高位为符号位 1，其余 4 位表示数值 15）
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>反码计算</font></strong></font></strong>：符号位保持 1 不变，其余位取反 →`10000`
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>补码生成</font></strong></font></strong>：反码基础上加 1 →`10000 + 1 = 10001`<strong><font color=''#2656b3''>结论</font></strong>：最终补码结果为`10001`，对应选项 D。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5103');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5104, '408考研练习题——计算机组成原理——进制第14题', '简单', '408考研练习题——计算机组成原理——进制', '符号扩展是以下哪一项中的步骤？（ ）
', '[''浮点数乘法'', ''有符号 16 位整数加法'', ''算术左移'', ''将有符号整数从一种大小转换到另一种大小'']', "['D']", 'D</font></strong>
符号扩展（Sign Extension）是一种将较小位宽的有符号整数转换为较大位宽时的操作，通过复制最高有效位（符号位）来保持数值的正负属性不变。这一过程常见于不同字长的数据类型转换场景，例如将 8 位有符号整数转换为 16 位或 32 位时。其他选项中涉及的操作（如加法、乘法、移位）均不直接依赖符号扩展机制。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5104');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5105, '408考研练习题——计算机组成原理——进制第15题', '简单', '408考研练习题——计算机组成原理——进制', '在二进制补码加法中，溢出（overflow）（ ）
', '[''当符号位相加产生进位时始终被标记'', ''在正数与负数相加时不会发生'', ''当符号位和前一位的进位匹配时被标记'', ''以上都不对'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>- 溢出仅在符号位与最高有效位的进位<strong><font color=''#2656b3''><strong><font color=''#2656b3''>不一致</font></strong></font></strong>时发生
- 正负数相加不会导致溢出（因为结果绝对值一定小于任一操作数）', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5105');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5106, '408考研练习题——计算机组成原理——进制第16题', '简单', '408考研练习题——计算机组成原理——进制', '十进制数$−539_{10}$的二进制补码表示用十六进制表示为（ ）？
', '[''ABE'', ''DBC'', ''DE5'', ''9E7'']', "['C']", 'C</font></strong>
$−539_{10} = 1 010 0001 1011_{2}$（最高位的 1 表示负数）
```c
1101 1110 0101
 D    E    5
```
因此，选项<strong><font color=''#2656b3''>C</font></strong>是正确答案。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5106');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5107, '408考研练习题——计算机组成原理——进制第17题', '简单', '408考研练习题——计算机组成原理——进制', '考虑数值 A = 2.0 × 10³⁰，B = -2.0 × 10³⁰，C = 1.0，以及在使用 32 位浮点数表示的计算机上执行以下序列操作：
X := A + B
Y := A + C
X := X + C
Y := Y + B
X 和 Y 的最终值将是（ ）：
', '[''X = 1.0, Y = 1.0'', ''X = 1.0, Y = 0.0'', ''X = 0.0, Y = 1.0'', ''X = 0.0, Y = 0.0'']', "['B']", 'B</font></strong>
由于采用 32 位表示法，因此最大精度为 32 位。
当将 C（即 1.0）加到 A 时，相当于在 A 的第 31 位设置为 1，这显然超出了 A 的精度范围（注意是第 31 位而非第 31 个二进制位）。因此，该加法操作会直接返回 A 的原始值作为 Y 的赋值结果。
随后，Y + B 会抵消 A 的值，得到 0.0；而 X 初始为 A + B = 0.0，再加 C 后得到 1.0。需要注意的是，2000 与 2×10³的表示方式存在差异。结果取决于数量级部分可用数字的数量，无法通过调整指数部分来弥补精度损失。
因此，选项 (B) 正确。此解释由 Piyush Doorwar 贡献。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5107');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5108, '408考研练习题——计算机组成原理——进制第18题', '简单', '408考研练习题——计算机组成原理——进制', '以下关于不同基数之间数字转换的选项中，哪一个是正确的？（ ）
', '[''如果一个数在十六进制中有 k 位，则其二进制中可能有 k/4 位（比特）。'', ''如果一个数在十进制中有 k 位，则其二进制中可能有约 k/2 位。'', ''如果一个数在 a 进制中有 k 位，则其 b 进制中可能有约 k*logₐ(b) 位？'', ''以上都不对'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>：- 十进制数k位转换为二进制时，位数约为log2​(10)k​≈3.32k​。
- 选项 (B) 中的 “k/2” 明显小于实际值，因此错误。
- 其他选项同样不符合数学规律，故正确答案为<strong><font color=''#2656b3''><strong><font color=''#2656b3''>D（以上都不对）</font></strong></font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5108');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5109, '408考研练习题——计算机组成原理——进制第19题', '简单', '408考研练习题——计算机组成原理——进制', '一个浮点型变量的值使用 IEEE 754 单精度 32 位浮点格式表示，该格式使用 1 位符号位、8 位偏移指数和 23 位尾数。将十进制值 -25.75 赋给浮点型变量 X。X 的十六进制表示是（ ）。
', '[''61CD0000'', ''C1640000'', ''C1CD0000'', ''C1CE0000'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>IEEE 754 转换过程如下：
```c
S    指数 (8 位)        尾数 (23 位)
1  10000011  10011100000000000000000
```
', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5109');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5110, '408考研练习题——计算机组成原理——进制第20题', '简单', '408考研练习题——计算机组成原理——进制', '考虑无符号的 8 位定点二进制数表示形式：b7b6b5b4b3⋅b2b1b0，其中二进制小数点位于 b3 和 b2 之间。假设 b7 是最高有效位。下列十进制数中有些无法用上述表示形式精确表示：
(i) 31.500
(ii) 0.875
(iii) 12.100
(iv) 3.001。
以下哪个说法是正确的？
', '[''(i)、(ii)、(iii)、(iv) 都无法精确表示'', ''只有 (ii) 无法精确表示'', ''只有 (iii) 和 (iv) 无法精确表示'', ''只有 (i) 和 (ii) 无法精确表示'']', "['C']", 'C</font></strong>
- (i) 31.500可以表示为：(31.5)10​=(11111.100)2​24+23+22+21+20+2−1=16+8+4+2+1+0.5=(31.5)10​
- (ii) 0.875可以表示为：(0.875)10​=(00000.111)2​2−1+2−2+2−3=0.50+0.25+0.125=(0.875)10​
- (iii) 12.100和(iv) 3.001无法表示。

- (iii) 的小数部分 0.1 无法用有限二进制小数表示
- (iv) 的小数部分 0.001 也无法用有限二进制小数表示因此，选项<strong><font color=''#2656b3''>(C)</font></strong>正确。更多信息请参阅。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5110');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5111, '408考研练习题——计算机组成原理——进制第21题', '简单', '408考研练习题——计算机组成原理——进制', '在 IEEE 浮点数表示中，十六进制数 0xC0000000 对应的数值是（ ）：
', '[''-3.0'', ''-1.0'', ''-4.0'', ''-2.0'']', "['D']", 'D</font></strong>
0xC0000000 = 1100 0000 0000 0000 0000 0000 0000 0000
在 IEEE 浮点数表示中：最高位（MSB）是尾数的符号位，接下来 8 位表示指数值，最后 23 位表示尾数值。该系统采用带偏移的指数系统，其中偏移量=2^(指数位数 -1)-1=127
因此数值=(-1)^1 × 1.M × 2^(128-127) = -1.0 × 2 = -2.0
所以选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:25', 9, NULL, '2026-02-02 11:51:25', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5111');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5112, '408考研练习题——计算机组成原理——进制第22题', '简单', '408考研练习题——计算机组成原理——进制', '如果 X 是一个二进制数且是 2 的幂，则 X & (X - 1) 的值为（ ）：
', '[''11……11'', ''00……00'', ''100……0'', ''000……1'']', "['B']", 'B</font></strong>
& 是按位与运算符。
<strong><font color=''#2656b3''>示例分析：</font></strong>- 设 X = 2⁴ = 16 =`10000`（二进制）
- 则 X - 1 = 15 =`01111`（二进制）
- 此时 X & (X-1) =`00000`<strong><font color=''#2656b3''>原理说明：</font></strong>
当 X 是 2 的幂时，其二进制形式为`100...0`，减 1 后变为`011...1`。按位与操作会逐位比较，只有全为 1 时结果才为 1，因此最终结果必为全 0。因此，选项 (B) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5112');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5113, '408考研练习题——计算机组成原理——进制第23题', '简单', '408考研练习题——计算机组成原理——进制', '在标准 IEEE 754 单精度浮点数表示中，有 1 位符号位、23 位小数部分和 8 位指数部分。其十进制数字的精度是多少（ ）？
', '[''5'', ''6'', ''7'', ''8'']', "['C']", 'C</font></strong>
精度可以理解为浮点数能够表示的最大准确性。
它是浮点表示中能够表示的最小变化量。单精度规范化数的小数部分恰好具有 23 位分辨率（加上隐含位后共 24 位）。从十进制表示的角度来看：
设十进制有效数字位数为$x$，则满足关系式：
$$
2^{−23} = 10^{−x}
$$
取对数得：
$$
\\log_{2}(10^{−x}) = −23  - x \\log_{2} 10 = −23  - 3.322x = −23 x = 6.92
$$
由于有效数字位数需向下取整，因此十进制精度为<strong><font color=''#2656b3''>7 位</font></strong>。
故正确答案是 (C)', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5113');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5114, '408考研练习题——计算机组成原理——进制第24题', '简单', '408考研练习题——计算机组成原理——进制', '考虑三个寄存器 R1、R2 和 R3，它们存储以 IEEE-754 单精度浮点数格式表示的数值。假设 R1 和 R2 分别包含十六进制表示的值 0x42200000 和 0xC1200000。如果 R3 = R1 / R2，那么 R3 中存储的值是什么？（ ）
', '[''0x40800000'', ''0xC0800000'', ''0x83400000'', ''0xC8500000'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>解析过程：</font></strong>- R1 = 0x42200000

- 二进制表示：`0100 0010 0010 0000 0000 0000 0000 0000`
- 符号位 S=0 → 正数
- 阶码`(10000100)₂`= 132 → 真实阶码 = 132 - 127 = 5
- 尾数`(010 000000000)₂`→ 数值计算：(−1)0×(1.01000000000...)×25=(101000.0)2​=40
- R2 = 0xC1200000

- 二进制表示：`1100 0001 0010 0000 0000 0000 0000 0000`
- 符号位 S=1 → 负数
- 阶码`(10000010)₂`= 130 → 真实阶码 = 130 - 127 = 3
- 尾数`(010 000000000)₂`→ 数值计算：(−1)1×(1.01000000000...)×23=−(1010.0)2​=−10
- R3 = 40 / -10 = -4

- IEEE-754 格式转换：

- 符号位 S=1
- 数值−4=−1.0×22→ 真实阶码 = 2
- 对应阶码 = 2 + 127 = 129 →`(10000001)₂`
- 尾数全零
- 最终二进制：`1100 0000 1000 0000 0000 0000 0000 0000`
- 十六进制表示：`0xC0800000`选项 B 正确。', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5114');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5115, '408考研练习题——计算机组成原理——进制第25题', '简单', '408考研练习题——计算机组成原理——进制', '考虑以下使用 IEEE 754 单精度浮点数格式（偏移量为 127）表示的数字：
S : 1 E : 10000001 F : 11110000000000000000000
其中，S、E 和 F 分别表示浮点数的符号位、指数位和尾数部分。
上述表示对应的十进制数值（保留两位小数）是（  ）。
', '[''-7.75'', ''+7.75'', ''-5.57'', ''5.75'']', "['A']", 'A</font></strong>
已知：- 符号位 = 1 → 数值为负
- 有偏指数位 = 10000001 = 129 → 实际指数 E = 129 - 127 = 2
- 尾数位 = 11110000000000000000000数值计算过程：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>二进制表示</font></strong></font></strong>：–1.111100..00 × 2²
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>二进制展开</font></strong></font></strong>：-111.11
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>十进制转换</font></strong></font></strong>：

- 整数部分：111₂ = 7₁₀
- 小数部分：0.11₂ = 0.75₁₀
- 合并结果：-7.75因此，该数值的十进制形式为<strong><font color=''#2656b3''>-7.75</font></strong>。', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5115');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5116, '408考研练习题——计算机组成原理——进制第26题', '简单', '408考研练习题——计算机组成原理——进制', '使用 4 位二进制补码运算时，以下哪些加法操作会导致溢出？（ ）
(i) 1100 + 1100
(ii) 0011 + 0111
(iii) 1111 + 0111
', '[''仅 (i)'', ''仅 (ii)'', ''仅 (iii)'', ''仅 (i) 和 (iii)'']', "['B']", 'B</font></strong>
<strong><font color=''#2656b3''>溢出判定规则</font></strong>：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>带符号数（补码）</font></strong></font></strong>：

- 若两个正数相加结果为负 → 溢出
- 若两个负数相加结果为正 → 溢出
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>无符号数</font></strong></font></strong>：

- 最高位产生进位 → 溢出<strong><font color=''#2656b3''>具体分析</font></strong>：- (i)`1100`（-4）+`1100`（-4）=`11000`（截断后为`1000`，即 -8）→ 结果仍为负数，无溢出
- (ii)`0011`（3）+`0111`（7）=`1010`（-6）→ 正数相加得负数，<strong><font color=''#2656b3''><strong><font color=''#2656b3''>溢出</font></strong></font></strong>
- (iii)`1111`（-1）+`0111`（7）=`0110`（6）→ 负数与正数相加，结果在有效范围内，无溢出综上，仅 (ii) 符合溢出条件，故选 B', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5116');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5117, '408考研练习题——计算机组成原理——进制第27题', '简单', '408考研练习题——计算机组成原理——进制', '设 X 为使用补码表示的 16 位整数的不同值的数量。设 Y 为使用原码表示的 16 位整数的不同值的数量。则 X - Y 等于（  ）。
', '[''1'', ''2'', ''3'', ''0'']', "['A']", 'A</font></strong>
- 补码表示范围：−2(n−1)到2(n−1)−1
- 原码表示范围：−(2(n−1)−1)到2(n−1)−1以 n=8 为例：
• 补码可表示 -128 到 127（共 256 个不同值）
• 原码可表示 -127 到 127（共 255 个不同值）差值为 1 的原因在于：
1. 原码存在两个零的表示（+0 和 -0）
2. 补码仅有一个零的表示', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5117');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5118, '408考研练习题——计算机组成原理——进制第28题', '简单', '408考研练习题——计算机组成原理——进制', '将八进制数 0.4051 转换为对应的十进制数（ ）。
', '[''0.5100098'', ''0.2096'', ''0.52'', ''0.4192'']', "['A']", 'A</font></strong>
使用传统方法将 0.4051 转换为十进制：即
4 × 8⁻¹ + 0 × 8⁻² + 5 × 8⁻³ + 1 × 8⁻⁴ = 0.5100098
因此，选项 (A) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5118');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5119, '408考研练习题——计算机组成原理——进制第29题', '简单', '408考研练习题——计算机组成原理——进制', '以下哪个二进制数与其二进制补码相同？（ ）
', '[''1010'', ''0101'', ''1000'', ''1001'']', "['C']", 'C</font></strong>
- 选项 (A)：1010

- 二进制补码计算：`0101 + 1 = 0110`
- 补码结果与原数不同
- 选项 (B)：0101

- 二进制补码计算：`1010 + 1 = 1011`
- 补码结果与原数不同
- 选项 (C)：1000

- 二进制补码计算：`0111 + 1 = 1000`
- 补码结果与原数相同 ✅
- 选项 (D)：1001

- 二进制补码计算：`0110 + 1 = 0111`
- 补码结果与原数不同因此，选项 (C) 是正确的。', 9, 'Mogullzr', '2026-02-02 11:51:26', 9, NULL, '2026-02-02 11:51:26', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5119');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5120, '408考研练习题——计算机组成原理——进制第30题', '简单', '408考研练习题——计算机组成原理——进制', '以下哪个数字的 IEEE-754 32 位浮点数表示为`0 10000000 110 0000 0000 0000 0000 0000`？（ ）
', '[''2.5'', ''3.0'', ''3.5'', ''4.5'']', "['C']", 'C</font></strong>
IEEE-754 32 位浮点数表示采用移码（excess-127）格式：- 最高位表示<strong><font color=''#2656b3''><strong><font color=''#2656b3''>尾数符号位</font></strong></font></strong>（0 表示正数）
- 接下来 8 位表示<strong><font color=''#2656b3''><strong><font color=''#2656b3''>指数部分</font></strong></font></strong>（移码）
- 最后 23 位表示<strong><font color=''#2656b3''><strong><font color=''#2656b3''>尾数值</font></strong></font></strong>已知浮点数表示为：`0 10000000 110 0000 0000 0000 0000 0000`- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>符号位</font></strong></font></strong>：最高位为 0 → 尾数为正
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>指数部分</font></strong></font></strong>：`10000000`对应十进制27=128

- 移码转实际指数：128−127=1
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>尾数部分</font></strong></font></strong>：隐含前导 1 的规范化形式

- 二进制尾数：1.110000000000000000000002​
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>最终计算</font></strong></font></strong>：(1.11)2​×21=1+21​+41​=1.75×2=3.5选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5120');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5121, '408考研练习题——计算机组成原理——进制第31题', '简单', '408考研练习题——计算机组成原理——进制', '(3×4096 + 15×256 + 5×16 + 3) 的二进制表示中 1 的个数是（ ）：
', '[''8'', ''9'', ''10'', ''12'']', "['C']", 'C</font></strong>
原式 = 3×4096 + 15×256 + 5×16 + 3
= (2 + 1)×4096 + (8 + 4 + 2 + 1)×256 + (4 + 1)×16 + 2 + 1
= (2 + 1)×2¹² + (2³ + 2² + 2 + 1)×2⁸ + (2² + 1)×2⁴ + 2 + 1
= (2¹³ + 2¹²) + (2¹¹ + 2¹⁰ + 2⁹ + 2⁸) + (2⁶ + 2⁴) + 2 + 1由于：- 213是 1 后面跟着 12 个 0
- 212是 1 后面跟着 11 个 0
- 211是 1 后面跟着 10 个 0
- 210是 1 后面跟着 9 个 0
- 29是 1 后面跟着 8 个 0
- 28是 1 后面跟着 7 个 0
- 26是 1 后面跟着 5 个 0
- 24是 1 后面跟着 3 个 0
- 21是 1 后面跟着 0 个 0将这些二进制数相加时，每个$2^{n}$在二进制中仅包含一个 1。
最终结果中 1 的个数为：
$2^{13}$→ 1 个
$2^{12}$→ 1 个
$2^{11}$→ 1 个
$2^{10}$→ 1 个
$2^{9}$→ 1 个
$2^{8}$→ 1 个
$2^{6}$→ 1 个
$2^{4}$→ 1 个
$2^{1}$→ 1 个
$2^{0}$→ 1 个总计<strong><font color=''#2656b3''>10 个 1</font></strong>。因此选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5121');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5122, '408考研练习题——计算机组成原理——进制第32题', '简单', '408考研练习题——计算机组成原理——进制', '以下哪种表示方法在进行数字的算术运算时效率最高？（ ）
', '[''原码'', ''反码'', ''补码'', ''BCD码'']', "['C']", 'C</font></strong>
符号 - 绝对值仅用于符号约定（最高有效位为 1 表示负数，0 表示正数）。
主要区别在于使用反码相加时，首先进行二进制加法，然后添加一个循环进位值。但补码对零只有一个表示形式，且不需要处理进位值。
九的补码是将十进制数的每一位从 9 中减去得到的。与反码类似，九的补码也通过加法实现减法运算。- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>补码表示法对 0 具有唯一性</font></strong></font></strong>（即只有正零），
- 而符号 - 绝对值、反码和九的补码对 0 的表示存在歧义（即同时存在正零和负零）。因此，选项 (C) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5122');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5123, '408考研练习题——计算机组成原理——进制第33题', '简单', '408考研练习题——计算机组成原理——进制', '使用 12 个开关可以存储多少种不同的 BCD 数字？（假设每个开关为双位置或开/关状态）（ ）
', '[''$2^{12}$'', ''$2^{12} - 1$'', ''$10^{12}$'', ''$10^{3}$'']', "['D']", 'D</font></strong>
在二进制编码十进制（BCD）编码方案中，每个十进制数字（0-9）都由其对应的 4 位二进制模式表示。一个开关可以存储 1 位信息（0 表示关闭，1 表示开启），而每个 BCD 数字占用 4 位，因此 12 个开关可组成 12/4 = 3 个 BCD 数字。每个 BCD 数字的取值范围是 0 到 9（共 10 种可能）。因此，12 个开关中不同可能的 BCD 数字数量为：
= 10 × 10 × 10 = 1000 = 10³
所以选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5123');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5124, '408考研练习题——计算机组成原理——进制第34题', '简单', '408考研练习题——计算机组成原理——进制', 'IEEE-754 双精度格式表示浮点数的长度为（ ）位。
', '[''16'', ''32'', ''48'', ''64'']', "['D']", 'D</font></strong>
IEEE-754 双精度格式表示浮点数的长度为 64 位。
其组成结构如下：- 符号位：1 位
- 指数位：11 位
- 尾数（小数）部分：52 位  
因此，选项 (D) 正确。', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5124');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5125, '408考研练习题——计算机组成原理——进制第35题', '简单', '408考研练习题——计算机组成原理——进制', '一台计算机使用三进制系统而不是传统的二进制系统。一个 n 位的二进制字符串将占用（ ）。
', '[''3 + n 个三进制数字'', ''2n / 3 个三进制数字'', ''n(log₂3) 个三进制数字'', ''n(log₃2 ) 个三进制数字'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析</font></strong>在二进制和三进制之间转换时，表示相同数值所需的位数与对数关系相关。具体推导如下：- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>二进制表示</font></strong></font></strong>：若一个二进制数有n位，则其最大值为2n−1。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>三进制表示</font></strong></font></strong>：设三进制所需位数为m，需满足3m≥2n。
- <strong><font color=''#2656b3''><strong><font color=''#2656b3''>对数推导</font></strong></font></strong>：取对数得m≥n⋅log3​2。因此，三进制表示该数值所需的最小位数与$n$成正比，比例系数为$\\log_{3} 2$。最终答案为选项 D。', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5125');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5126, '408考研练习题——计算机组成原理——进制第36题', '简单', '408考研练习题——计算机组成原理——进制', '三进制数 1102 等于多少进制下的 123？（ ）
', '[''4'', ''5'', ''6'', ''8'']', "['B']", 'B</font></strong>
设该进制为 ‘x’。
$$
(1102)3​ = (123)x​ = 1 × 3^{3} + 1 × 3^{2} + 0 × 3^{1} + 2 × 3^{0} = 1 × x^{2} + 2 × x + 3
$$

$$
= 27 + 9 + 0 + 2 = x^{2} + 2x + 3
$$

$$
⇒ x^{2} + 2x - 35 = 0
$$

$$
⇒ x = 5 (舍去负解)
$$
正确选项是 (B)', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5126');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5127, '408考研练习题——计算机组成原理——进制第37题', '简单', '408考研练习题——计算机组成原理——进制', '十进制数 42.75 的二进制等价形式是（ ）
', '[''101010.110'', ''100110.101'', ''101010.101'', ''100110.110'']', "['A']", 'A</font></strong>
(42.75)₁₀ = (?)₂- 整数部分：  
32 16 8 4 2 1  
1 0 1 0 1 0
- 小数部分：  
0.75 × 2 = 1.5 → 取整 1  
0.5 × 2 = 1.0 → 取整 1  
0.0 × 2 = 0.0 → 取整 0  
得到 0.110  
选项 (A) 正确', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5127');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5128, '408考研练习题——计算机组成原理——进制第38题', '简单', '408考研练习题——计算机组成原理——进制', '十六进制浮点数 C1D00000 的十进制值是多少？（假设为 32 位单精度 IEEE 浮点表示）（ ）
', '[''28'', ''-15'', ''-26'', ''-28'']', "['C']", 'C</font></strong>
浮点数的十六进制表示 = C1D00000
浮点数的二进制表示 = 1100 0001 1101 0000 0000 0000 0000 0000
在 32 位单精度 IEEE 浮点表示中，最高位表示尾数符号：1 表示负数，0 表示正数。接下来 8 位是指数部分，最后 23 位是尾数部分。
```c
指数值 = 131 - 127 = 4
尾数 = -1.101000000...0
```
浮点数值 = -1.10100…0000 × 2⁴ = -11010
= -26', 9, 'Mogullzr', '2026-02-02 11:51:27', 9, NULL, '2026-02-02 11:51:27', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5128');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5129, '408考研练习题——计算机组成原理——进制第39题', '简单', '408考研练习题——计算机组成原理——进制', '考虑一个计算机系统，使用 16 位尾数和 8 位指数（均采用二进制补码）存储浮点数。能够存储的最小和最大正数值分别是（ ）。
', '[''$1 × 10^{−128}$和$2^{15} × 10^{15}$'', ''$1 × 10^{−256}$和$2^{15} × 10^{255}$'', ''$1 × 10^{−128}$和$2^{15} × 10^{127}$'', ''$1 × 10^{−128}$和$(2^{15} - 1) × 10^{127}$'']', "['D']", 'D</font></strong>
<strong><font color=''#2656b3''>解析：</font></strong>- 指数范围分析8 位二进制补码表示的指数范围为[−128,127]，因此最大正指数为10127。
- 尾数范围分析16 位尾数（二进制补码）能表示的最大正数为215−1，而非215（因最高位为符号位）。
- 组合计算

- 最小正数：当尾数为1（最小非零值），指数为−128时，结果为1×10−128。
- 最大正数：当尾数为215−1，指数为127时，结果为(215−1)×10127。
- 选项排除

- A/B/C 中的215或10255均不符合实际尾数/指数范围。
- D 项精确匹配上述推导结果。', 9, 'Mogullzr', '2026-02-02 11:51:28', 9, NULL, '2026-02-02 11:51:28', 1, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1340', '5129');
