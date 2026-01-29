INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1387, '2001年考研数学卷1第1题', '简单', '考研数学2001年卷1真题', '设$y = e^{x}(c_{1} \\sin x + c_{2} \\cos x)$（$c_{1}, c_{2}$为任意常数）为某二阶常系数线性齐次微分方程的通解，则该方程为 ______．', '[]', '
$y^{′′} - 2y^{′} + 2y = 0$
', '
给定通解$y = e^{x}(c_{1} \\sin x + c_{2} \\cos x)$，可知该二阶常系数线性齐次微分方程的特征根为$r = 1 ± i$。特征方程为$(r - (1 + i))(r - (1 - i)) = 0$，即$(r - 1)2 + 1 = 0$，展开得$r^{2} - 2r + 2 = 0$。因此，对应的微分方程为$y^{′′} - 2y^{′} + 2y = 0$。
', 9, 'Mogullzr', '2026-01-29 14:11:50', 9, 'Mogullzr', '2026-01-29 14:11:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1387');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1387');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '1387');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1388, '2001年考研数学卷1第2题', '简单', '考研数学2001年卷1真题', '设$r = \\sqrt{x^{2} + y^{2} + z^{2}}$，则$÷(∇r)∣_{(1,−2,2)} =$______．', '[]', '$\\frac{2}{3}$
', '给定$r = \\sqrt{x^{2} + y^{2} + z^{2}}$，需计算$÷(∇r)$在点$(1, −2, 2)$的值。首先，计算梯度$∇r$：

$$
∇r = (\\frac{∂r}{∂x}, \\frac{∂r}{∂y}, \\frac{∂r}{∂z}) = (\\frac{x}{r}, \\frac{y}{r}, \\frac{z}{r}) .
$$

然后计算散度：

$$
÷(∇r) = \\frac{∂}{∂x} (\\frac{x}{r}) + \\frac{∂}{∂y} (\\frac{y}{r}) + \\frac{∂}{∂z} (\\frac{z}{r}) .
$$

对每一项求偏导：

$$
\\frac{∂}{∂x} (\\frac{x}{r}) = \\frac{1}{r} - \\frac{x^{2}}{r^{3}},  \\frac{∂}{∂y} (\\frac{y}{r}) = \\frac{1}{r} - \\frac{y^{2}}{r^{3}},  \\frac{∂}{∂z} (\\frac{z}{r}) = \\frac{1}{r} - \\frac{z^{2}}{r^{3}}.
$$

求和得：

$$
÷(∇r) = (\\frac{1}{r} - \\frac{x^{2}}{r^{3}}) + (\\frac{1}{r} - \\frac{y^{2}}{r^{3}}) + (\\frac{1}{r} - \\frac{z^{2}}{r^{3}}) = \\frac{3}{r} - \\frac{x^{2} + y^{2} + z^{2}}{r^{3}}.
$$

由于$x^{2} + y^{2} + z^{2} = r^{2}$，代入得：

$$
÷(∇r) = \\frac{3}{r} - \\frac{r^{2}}{r^{3}} = \\frac{3}{r} - \\frac{1}{r} = \\frac{2}{r}.
$$

在点$(1, −2, 2)$处，计算$r = \\sqrt{1^{2} + (−2)2 + 2^{2}} = \\sqrt{9} = 3$，因此：

$$
÷(∇r) = \\frac{2}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:50', 9, 'Mogullzr', '2026-01-29 14:11:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1388');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1388');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '1388');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1389, '2001年考研数学卷1第3题', '简单', '考研数学2001年卷1真题', '交换二次积分的积分次序：$\\int_{−1}^{0} dy \\int_{2}^{1-y} f(x, y)dx =$______．', '[]', '

$$
\\int_{1}^{2} dx \\int_{1-x}^{0} f(x, y)dy
$$

', '原积分为$\\int_{−1}^{0} dy \\int_{2}^{1-y} f(x, y)dx$。积分区域由$y = −1$，$y = 0$，$x = 2$，和$x = 1 - y$围成。对于$y ∈  \\lbrack −1, 0 \\rbrack$，$x$从$1 - y$到$2$（由于原积分中$x$从$2$到$1 - y$，但上下限反转，因此实际区域为$x$从$1 - y$到$2$）。
交换积分次序后，先积分$y$后积分$x$。确定$x$的范围：当$y = −1$时，$x = 2$；当$y = 0$时，$x = 1$。因此$x$从$1$到$2$。对于固定$x ∈  \\lbrack 1, 2 \\rbrack$，$y$的范围由$x = 1 - y$和$y = 0$决定，即$y$从$1 - x$到$0$。
因此，交换次序后的积分为$\\int_{1}^{2} dx \\int_{1-x}^{0} f(x, y)dy$。
', 9, 'Mogullzr', '2026-01-29 14:11:51', 9, 'Mogullzr', '2026-01-29 14:11:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '1389');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1390, '2001年考研数学卷1第4题', '简单', '考研数学2001年卷1真题', '设矩阵$A$满足$A^{2}$$+A - 4E = 0$，其中$E$为单位矩阵，则$(A - E)−1$= ______．', '[]', '


$$
\\frac{1}{2}(A + 2E)
$$

', '
已知矩阵$A$满足$A^{2} + A - 4E = 0$，即


$$
A^{2} + A = 4E.
$$

考虑矩阵$(A - E)(A + 2E)$，计算得


$$
(A - E)(A + 2E) = A^{2} + 2A - A - 2E = A^{2} + A - 2E.
$$

代入已知条件$A^{2} + A = 4E$，得


$$
(A - E)(A + 2E) = 4E - 2E = 2E.
$$

因此，


$$
(A - E)(A + 2E) = 2E,
$$

即


$$
(A - E) ⋅ \\frac{1}{2}(A + 2E) = E.
$$

故


$$
(A - E)−1 = \\frac{1}{2}(A + 2E).
$$

', 9, 'Mogullzr', '2026-01-29 14:11:51', 9, 'Mogullzr', '2026-01-29 14:11:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1390');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1391, '2001年考研数学卷1第5题', '简单', '考研数学2001年卷1真题', '设随机变量$X$的方差为$2$，则根据切比雪夫不等式有估计$P \\{∣X - E(X)∣ ≥ 2\\} ≤$______．', '[]', '$\\frac{1}{2}$
', '切比雪夫不等式指出，对于随机变量$X$，若其期望为$E(X)$，方差为$σ^{2}$，则对任意$k > 0$，有：

$$
P \\{∣X - E(X)∣ ≥ k\\} ≤ \\frac{σ^{2}}{k^{2}}.
$$

现已知方差$σ^{2} = 2$，取$k = 2$，代入不等式可得：

$$
P \\{∣X - E(X)∣ ≥ 2\\} ≤ \\frac{2}{2^{2}} = \\frac{2}{4} = \\frac{1}{2}.
$$

因此，所求概率上界为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:11:51', 9, 'Mogullzr', '2026-01-29 14:11:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1391');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1392, '2001年考研数学卷1第6题', '简单', '考研数学2001年卷1真题', '设函数$f(x)$在定义域内可导，$y = f(x)$的图形如下图所示，
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/0332de11c76c44eebaee9f7d296d7033.jpg)
则导函数$y = f^{′}(x)$的图形为', '[]', "['D']", '应选 (D)。从题设图形可见，在$y$轴的左侧，曲线$y = f(x)$是严格单调增加的，因此当$x < 0$时，一定有$f^{′}(x) > 0$，对应$y = f^{′}(x)$图形必在$x$轴的上方，由此可排除 (A) 和 (C)。又$y = f(x)$的图形在$y$轴右侧靠近$y$轴部分单调增加，所以在这一段内一定有$f^{′}(x) > 0$，对应$y = f^{′}(x)$图形必在$x$轴的上方，进一步可排除 (B)，故正确答案为 (D)。', 9, 'Mogullzr', '2026-01-29 14:11:53', 9, 'Mogullzr', '2026-01-29 14:11:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1392');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1392');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1392');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1393, '2001年考研数学卷1第7题', '简单', '考研数学2001年卷1真题', '设函数$f(x, y)$在点$(0, 0)$附近有定义，且$f_{x}^{′}(0, 0) = 3, f_{y}^{′}(0, 0) = 1$，则', '[''$dz∣_{(0,0)} = 3dx + dy$．'', ''曲面$z = f(x, y)$在点$(0, 0, f(0, 0))$的法向量为$(3, 1, 1)$．'', ''曲线$\\\\begin{cases} z = f(x, y) \\\\\\\\ y = 0 \\\\end{cases}$在点$(0, 0, f(0, 0))$的切向量为$(1, 0, 3)$．'', ''曲线$\\\\begin{cases} z = f(x, y) \\\\\\\\ y = 0 \\\\end{cases}$在点$(0, 0, f(0, 0))$的切向量为$(3, 0, 1)$．'']', "['C']", '函数$f(x, y)$在点$(0, 0)$处的偏导数为：
$$
f_{x}^{′}(0, 0) = 3,  f_{y}^{′}(0, 0) = 1.
$$
考虑曲线

$$
\\begin{cases} z = f(x, y) \\\\ y = 0 \\end{cases}
$$
该曲线位于平面$y = 0$上，可参数化为：
$$
x = t,  y = 0,  z = f(t, 0).
$$
其切向量为：
$$
(\\frac{dx}{dt}, \\frac{dy}{dt}, \\frac{dz}{dt}) = (1, 0, f_{x}(t, 0)) .
$$
在点$(0, 0, f(0, 0))$处，即$t = 0$，有$f_{x}(0, 0) = 3$，因此切向量为：
$$
(1, 0, 3).
$$
✅ 选项C与此一致，正确。❌ 选项A要求函数可微，但偏导数存在不一定保证可微，因此A不一定成立。❌ 选项B中曲面$z = f(x, y)$的法向量应为：
$$
(f_{x}, f_{y}, −1) = (3, 1, −1),
$$
而非$(3, 1, 1)$，因此B错误。❌ 选项D给出的切向量为$(3, 0, 1)$，与计算结果$(1, 0, 3)$不符，因此D错误。', 9, 'Mogullzr', '2026-01-29 14:11:53', 9, 'Mogullzr', '2026-01-29 14:11:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1393');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1393');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1393');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1394, '2001年考研数学卷1第8题', '简单', '考研数学2001年卷1真题', '设$f(0) = 0$，则$f(x)$在点$x = 0$可导的充要条件为', '[''$\\\\lim_{h→0} \\\\frac{1}{h^{2}}f(1 - \\\\cosh)$存在．'', ''$\\\\lim_{h→0} \\\\frac{1}{h}f(1 - e^{h})$存在．'', ''$\\\\lim_{h→0} \\\\frac{1}{h^{2}}f(h - \\\\sinh)$存在．'', ''$\\\\lim_{h→0} \\\\frac{1}{h}  \\\\lbrack f(2h) - f(h) \\\\rbrack$存在．'']', "['B']", '
函数$f(x)$在$x = 0$可导的充要条件是极限

$$
\\lim_{h→0} \\frac{f(h)}{h}
$$
存在（因为$f(0) = 0$）。分析选项 B：

$$
\\lim_{h→0} \\frac{1}{h}f(1 - e^{h})
$$
令$u = 1 - e^{h}$，则当$h → 0$时，$u → 0$，且$h ∼ −u$。于是

$$
\\frac{1}{h}f(1 - e^{h}) ∼ \\frac{1}{−u}f(u) = −\\frac{f(u)}{u}.
$$
因此该极限存在当且仅当

$$
\\lim_{u→0} \\frac{f(u)}{u}
$$
存在，即$f(x)$在$x = 0$可导。故选项 B 是充要条件。分析选项 A：

$$
\\lim_{h→0} \\frac{1}{h^{2}}f(1 - \\cos h)
$$
取$f(x) = ∣x∣$，则$f(0) = 0$，但$f(x)$在$x = 0$不可导。计算极限：

$$
\\frac{1}{h^{2}}f(1 - \\cos h) = \\frac{1}{h^{2}}∣1 - \\cos h∣ = \\frac{1}{h^{2}}(1 - \\cos h) → \\frac{1}{2},
$$
极限存在，但$f(x)$不可导，因此 A 不是充要条件。分析选项 C：

$$
\\lim_{h→0} \\frac{1}{h^{2}}f(h - \\sin h)
$$
取$f(x) = ∣x∣^{2/3}$，则$f(0) = 0$，但$f(x)$在$x = 0$不可导。计算极限：

$$
\\frac{1}{h^{2}}f(h - \\sin h) ≈ \\frac{1}{h^{2}} ​\\frac{h^{3}}{6}​^{2/3} = \\frac{1}{h^{2}} ⋅ \\frac{h^{2}}{6^{2/3}} = \\frac{1}{6^{2/3}},
$$
极限存在，但$f(x)$不可导，因此 C 不是充要条件。分析选项 D：

$$
\\lim_{h→0} \\frac{1}{h} \\lbrack f(2h) - f(h) \\rbrack
$$
取$f(x) = 1$（当$x \\neq 0$）且$f(0) = 0$，则$f(x)$在$x = 0$不连续，故不可导。计算极限：

$$
\\frac{1}{h} \\lbrack f(2h) - f(h) \\rbrack  = \\frac{1}{h} \\lbrack 1 - 1 \\rbrack  = 0,
$$
极限存在，但$f(x)$不可导，因此 D 不是充要条件。结论：唯一充要条件为选项 B。', 9, 'Mogullzr', '2026-01-29 14:11:53', 9, 'Mogullzr', '2026-01-29 14:11:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1394');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1394');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1394');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1395, '2001年考研数学卷1第9题', '简单', '考研数学2001年卷1真题', '设$A = \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
\\end{array} \\right) , B = \\left( \\begin{array}{cccc}
4 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$，则$A$与$B$', '[''合同且相似．'', ''合同但不相似．'', ''不合同但相似．'', ''不合同且不相似．'']', "['A']", '因为$A$是实对称矩阵，故$A$必相似于一对角阵$Λ$。又由相似矩阵有相同的特征值，相同的秩，知$A$与$Λ$有相同的秩，故$r(Λ) = r(A) = 1$，即$Λ$对角线上有 3 个元素为零。因此，$λ_{1} = λ_{2} = λ_{3} = 0$是$A$的特征值。由特征值的和等于矩阵主对角线元素之和，知
$$
\\sum_{i=1}^{4} λ_{i} = λ_{4} = \\sum_{i=1}^{4} a_{ii} = 4.
$$
故$λ_{4} = 4$。即$A$有特征值$λ = 4$和$λ = 0$（三重根），和对角阵$B$的特征值完全一致，故$A, B$相似。又由两矩阵合同的充要条件：实对称矩阵$A$与$B$合同的充要条件是$A$与$B$相似。知$A, B$合同。', 9, 'Mogullzr', '2026-01-29 14:11:53', 9, 'Mogullzr', '2026-01-29 14:11:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1395');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '1395');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1396, '2001年考研数学卷1第10题', '简单', '考研数学2001年卷1真题', '将一枚硬币重复掷$n$次，以$X$和$Y$分别表示正面向上和反面向上的次数，则$X$和$Y$的相关系数等于', '[''$−1$．'', ''$0$．'', ''$\\\\frac{1}{2}$．'', ''$1$．'']', "['A']", '
每次掷硬币的结果为正面或反面，设正面次数为$X$，反面次数为$Y$，则满足

$$
X + Y = n,
$$
即

$$
Y = n - X.
$$
因此，$X$与$Y$存在完全的线性负相关关系。计算协方差：

$$
Cov(X, Y) = Cov(X, n - X) = − Var(X).
$$
方差满足：

$$
Var(Y) = Var(n - X) = Var(X).
$$
因此，相关系数为

$$
ρ = \\frac{Cov(X, Y)}{σ_{X}σ_{Y}} = \\frac{− Var(X)}{\\sqrt{Var(X)} ⋅ \\sqrt{Var(X)}} = −1.
$$
故答案为A。', 9, 'Mogullzr', '2026-01-29 14:11:53', 9, 'Mogullzr', '2026-01-29 14:11:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1396');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1396');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1396');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1397, '2001年考研数学卷1第11题', '简单', '考研数学2001年卷1真题', '
$$
∫ \\frac{arctan e^{x}}{e^{2x}}dx =
$$
', '[]', '

$$
−\\frac{1}{2}e^{−x} - \\frac{1}{2} arctan e^{x}(1 + e^{−2x}) + C
$$

', '考虑积分$I = ∫ \\frac{arctan e^{x}}{e^{2x}} dx$。令$u = e^{x}$，则$du = e^{x} dx$，即$dx = \\frac{du}{u}$。代入得：

$$
I = ∫ \\frac{arctan u}{u^{2}} ⋅ \\frac{du}{u} = ∫ \\frac{arctan u}{u^{3}} du.
$$

使用分部积分法，令$p = arctan u$，$dq = u^{−3} du$，则$dp = \\frac{1}{1+u^{2}} du$，$q = −\\frac{1}{2}u^{−2}$。于是：

$$
∫ p dq = pq - ∫ q dp = −\\frac{1}{2}u^{−2} arctan u + \\frac{1}{2} ∫ \\frac{u^{−2}}{1 + u^{2}} du.
$$

计算积分$∫ \\frac{u^{−2}}{1+u^{2}} du = ∫ \\frac{1}{u^{2}(1+u^{2})} du$。进行部分分式分解：

$$
\\frac{1}{u^{2}(1 + u^{2})} = \\frac{1}{u^{2}} - \\frac{1}{1 + u^{2}},
$$

所以：

$$
∫ \\frac{1}{u^{2}(1 + u^{2})} du = ∫ \\frac{1}{u^{2}} du - ∫ \\frac{1}{1 + u^{2}} du = −\\frac{1}{u} - arctan u + C.
$$

代回得：

$$
∫ \\frac{arctan u}{u^{3}} du = −\\frac{1}{2}u^{−2} arctan u + \\frac{1}{2} (−\\frac{1}{u} - arctan u) + C = −\\frac{1}{2}u^{−2} arctan u - \\frac{1}{2}u^{−1} - \\frac{1}{2} arctan u + C.
$$

将$u = e^{x}$代回，得到：

$$
I = −\\frac{1}{2}e^{−2x} arctan e^{x} - \\frac{1}{2}e^{−x} - \\frac{1}{2} arctan e^{x} + C = −\\frac{1}{2}e^{−x} - \\frac{1}{2} arctan e^{x}(1 + e^{−2x}) + C.
$$

此为最终结果。
', 9, 'Mogullzr', '2026-01-29 14:11:53', 9, 'Mogullzr', '2026-01-29 14:11:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1397');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1397');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1397');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1398, '2001年考研数学卷1第12题', '简单', '考研数学2001年卷1真题', '设函数$z = f(x, y)$在点(1,1) 处可微，且
$$
f(1, 1) = 1, \\frac{∂f}{∂x}​_{(1,1)} = 2, \\frac{∂f}{∂y}​_{(1,1)} = 3, φ(x) = f(x, f(x, x)).
$$
求$\\frac{d}{dx}φ^{3}(x)​_{x=1}$．', '[]', '$51$
', '给定函数$φ(x) = f(x, f(x, x))$，需要求$\\frac{d}{dx}φ^{3}(x)​_{x=1}$。首先，计算$\\frac{d}{dx}φ^{3}(x) = 3 \\lbrack φ(x) \\rbrack 2φ^{′}(x)$，因此需要求$φ(1)$和$φ^{′}(1)$。
由已知条件，$f(1, 1) = 1$，所以$φ(1) = f(1, f(1, 1)) = f(1, 1) = 1$。
接下来，求$φ^{′}(x)$。令$u = x$，$v = f(x, x)$，则$φ(x) = f(u, v)$。由链式法则：

$$
φ^{′}(x) = \\frac{∂f}{∂u} ⋅ \\frac{du}{dx} + \\frac{∂f}{∂v} ⋅ \\frac{dv}{dx}
$$

其中$\\frac{du}{dx} = 1$，而$\\frac{dv}{dx} = \\frac{d}{dx}f(x, x) = \\frac{∂f}{∂x}​_{(x,x)} + \\frac{∂f}{∂y}​_{(x,x)}$。
在$x = 1$时，点$(u, v) = (1, f(1, 1)) = (1, 1)$，因此：

$$
\\frac{∂f}{∂u}​_{(1,1)} = \\frac{∂f}{∂x}​_{(1,1)} = 2,  \\frac{∂f}{∂v}​_{(1,1)} = \\frac{∂f}{∂y}​_{(1,1)} = 3
$$

且

$$
\\frac{dv}{dx}​_{x=1} = \\frac{∂f}{∂x}​_{(1,1)} + \\frac{∂f}{∂y}​_{(1,1)} = 2 + 3 = 5
$$

所以：

$$
φ^{′}(1) = 2 ⋅ 1 + 3 ⋅ 5 = 2 + 15 = 17
$$

代入：

$$
\\frac{d}{dx}φ^{3}(x)​_{x=1} = 3 \\lbrack φ(1) \\rbrack 2φ^{′}(1) = 3 ⋅ 1^{2} ⋅ 17 = 51
$$

因此，结果为 51。
', 9, 'Mogullzr', '2026-01-29 14:11:54', 9, 'Mogullzr', '2026-01-29 14:11:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1398');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1398');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1398');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1399, '2001年考研数学卷1第13题', '简单', '考研数学2001年卷1真题', '设$f(x) = \\begin{cases} \\frac{1+x^{2}}{x} arctan x & x \\neq 0; \\\\ 1 & x = 0. \\end{cases}$试将$f(x)$展开成$x$的幂级数，并求级数$\\sum_{n=1}^{∞} \\frac{(−1)n}{1-4n^{2}}$的和．', '[]', '

$$
\\sum_{n=1}^{∞} \\frac{(−1)n}{1 - 4n^{2}} = \\frac{π}{4} - \\frac{1}{2}
$$

', '给定函数$f(x) = \\begin{cases} \\frac{1+x^{2}}{x} arctan x & x \\neq 0; \\\\ 1 & x = 0. \\end{cases}$将其展开为$x$的幂级数。
首先，对于$x \\neq 0$，有：

$$
f(x) = \\frac{1 + x^{2}}{x} arctan x = \\frac{arctan x}{x} + x arctan x.
$$

利用$arctan x$的麦克劳林级数：

$$
arctan x = \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n + 1},  ∣x∣ < 1,
$$

代入得：

$$
\\frac{arctan x}{x} = \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n}}{2n + 1},  x arctan x = \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+2}}{2n + 1}.
$$

因此，

$$
f(x) = \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n}}{2n + 1} + \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+2}}{2n + 1}.
$$

将第二个级数改写为：

$$
\\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+2}}{2n + 1} = \\sum_{m=1}^{∞}(−1)m−1\\frac{x^{2m}}{2m - 1}.
$$

于是，

$$
f(x) = 1 + \\sum_{n=1}^{∞}(−1)n\\frac{x^{2n}}{2n + 1} + \\sum_{n=1}^{∞}(−1)n−1\\frac{x^{2n}}{2n - 1} = 1 + \\sum_{n=1}^{∞}  \\lbrack (−1)n\\frac{1}{2n + 1} + (−1)n−1\\frac{1}{2n - 1} \\rbrack  x^{2n}.
$$

简化括号内表达式：

$$
(−1)n\\frac{1}{2n + 1} + (−1)n−1\\frac{1}{2n - 1} = (−1)n (\\frac{1}{2n + 1} - \\frac{1}{2n - 1}) = (−1)n ⋅ \\frac{−2}{4n^{2} - 1} = \\frac{2(−1)n+1}{4n^{2} - 1}.
$$

因此，

$$
f(x) = 1 + \\sum_{n=1}^{∞} \\frac{2(−1)n+1}{4n^{2} - 1}x^{2n}.
$$

这就是$f(x)$的幂级数展开。
现在求级数$\\sum_{n=1}^{∞} \\frac{(−1)n}{1-4n^{2}}$的和。注意到：

$$
\\frac{(−1)n}{1 - 4n^{2}} = \\frac{(−1)n}{−(4n^{2} - 1)} = −\\frac{(−1)n}{4n^{2} - 1} = \\frac{(−1)n+1}{4n^{2} - 1}.
$$

在$f(x)$的展开式中，令$x = 1$，有：

$$
f(1) = \\frac{1 + 1^{2}}{1} arctan 1 = 2 ⋅ \\frac{π}{4} = \\frac{π}{2},
$$

同时由级数展开：

$$
f(1) = 1 + \\sum_{n=1}^{∞} \\frac{2(−1)n+1}{4n^{2} - 1}.
$$

所以，

$$
\\frac{π}{2} = 1 + \\sum_{n=1}^{∞} \\frac{2(−1)n+1}{4n^{2} - 1},
$$

即：

$$
\\sum_{n=1}^{∞} \\frac{2(−1)n+1}{4n^{2} - 1} = \\frac{π}{2} - 1,
$$

因此：

$$
\\sum_{n=1}^{∞} \\frac{(−1)n+1}{4n^{2} - 1} = \\frac{π}{4} - \\frac{1}{2}.
$$

于是，

$$
\\sum_{n=1}^{∞} \\frac{(−1)n}{1 - 4n^{2}} = \\sum_{n=1}^{∞} \\frac{(−1)n+1}{4n^{2} - 1} = \\frac{π}{4} - \\frac{1}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:54', 9, 'Mogullzr', '2026-01-29 14:11:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1399');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1399');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1399');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1400, '2001年考研数学卷1第14题', '简单', '考研数学2001年卷1真题', '计算$I = ∮_{L}(y^{2} - z^{2})dx + (2z^{2} - x^{2})dy + (3x^{2} - y^{2})dz$，
其中$L$是平面$x + y + z = 2$与柱面$∣x∣ + ∣y∣ = 1$的交线，从$z$轴正向看去，$L$为逆时针方向．', '[]', '$−24$
', '使用斯托克斯定理将曲线积分转化为曲面积分。给定向量场$F = (P, Q, R) = (y^{2} - z^{2}, 2z^{2} - x^{2}, 3x^{2} - y^{2})$，计算旋度：

$$
∇ × F = (\\frac{∂R}{∂y} - \\frac{∂Q}{∂z}, \\frac{∂P}{∂z} - \\frac{∂R}{∂x}, \\frac{∂Q}{∂x} - \\frac{∂P}{∂y}) = (−2y - 4z, −2z - 6x, −2x - 2y).
$$

曲线$L$是平面$x + y + z = 2$与柱面$∣x∣ + ∣y∣ = 1$的交线，选取曲面$S$为平面$x + y + z = 2$上被$L$包围的部分。参数化曲面为$z = 2 - x - y$，其中$(x, y)$在区域$D : ∣x∣ + ∣y∣ ≤ 1$上。曲面向量元为$dS = (1, 1, 1) dx dy$，方向与从$z$轴正向看逆时针方向一致。
曲面积分为：

$$
\\iint_{S}(∇ × F) ⋅ dS = \\iint_{D}(∇ × F) ⋅ (1, 1, 1) dx dy.
$$

计算点积：

$$
(∇ × F) ⋅ (1, 1, 1) = (−2y - 4z) + (−2z - 6x) + (−2x - 2y) = −8x - 4y - 6z.
$$

代入$z = 2 - x - y$：

$$
−8x - 4y - 6(2 - x - y) = −8x - 4y - 12 + 6x + 6y = −2x + 2y - 12.
$$

因此，积分化为：

$$
\\iint_{D}(−2x + 2y - 12) dx dy.
$$

区域$D$是菱形$∣x∣ + ∣y∣ ≤ 1$，关于$x$轴和$y$对称。函数$−2x$和$2y$是奇函数，积分值为零。常数项$−12$的积分为：

$$
−12 × Area(D) = −12 × 2 = −24.
$$

故曲线积分$I = −24$。
\\boxed{-24}
', 9, 'Mogullzr', '2026-01-29 14:11:54', 9, 'Mogullzr', '2026-01-29 14:11:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1400');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1400');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1400');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1401, '2001年考研数学卷1第15题', '简单', '考研数学2001年卷1真题', '设$y = f(x)$在$(−1, 1)$内具有二阶连续导数且$f^{′′}(x) \\neq 0$，试证：(1) 对于$(−1, 1)$内的任意$x \\neq 0$，存在唯一的$θ(x) ∈ (0, 1)$，
使得$f(x) = f(0) + xf^{′} (θ(x)x)$成立；(2)$\\lim_{x→0} θ(x) = \\frac{1}{2}$．', '[]', '
(1) 对于任意$x \\neq 0$在$(−1, 1)$内，存在唯一的$θ(x) ∈ (0, 1)$使得$f(x) = f(0) + xf^{′}(θ(x)x)$成立。
(2)$\\lim_{x→0} θ(x) = \\frac{1}{2}$。
', '
(1) 由拉格朗日中值定理，对于$x \\neq 0$在$(−1, 1)$内，存在$c$在$0$与$x$之间使得$f(x) - f(0) = f^{′}(c)x$。令$c = θ(x)x$，则$θ(x) = c/x$。当$x > 0$时，$c ∈ (0, x)$，故$θ(x) ∈ (0, 1)$；当$x < 0$时，$c ∈ (x, 0)$，故$θ(x) ∈ (0, 1)$。因此存在$θ(x) ∈ (0, 1)$满足等式。
为证唯一性，考虑$f^{′′}(x) \\neq 0$且连续，故$f^{′′}(x)$恒正或恒负，从而$f^{′}(x)$严格单调。对于固定$x$，函数$h(θ) = f^{′}(θx)$是严格单调的，因此方程$h(θ) = \\frac{f(x)-f(0)}{x}$有唯一解$θ ∈ (0, 1)$。故$θ(x)$唯一。
(2) 由泰勒展开，在$x = 0$处有：


$$
f(x) = f(0) + f^{′}(0)x + \\frac{1}{2}f^{′′}(0)x^{2} + o(x^{2})
$$

又由给定等式：


$$
f(x) = f(0) + xf^{′}(θx)
$$

对$f^{′}(θx)$在$0$处展开：


$$
f^{′}(θx) = f^{′}(0) + f^{′′}(0)θx + o(θx) = f^{′}(0) + f^{′′}(0)θx + o(x)
$$

代入得：


$$
f(x) = f(0) + x \\lbrack f^{′}(0) + f^{′′}(0)θx + o(x) \\rbrack  = f(0) + f^{′}(0)x + f^{′′}(0)θx^{2} + o(x^{2})
$$

比较两式：


$$
f(0) + f^{′}(0)x + f^{′′}(0)θx^{2} + o(x^{2}) = f(0) + f^{′}(0)x + \\frac{1}{2}f^{′′}(0)x^{2} + o(x^{2})
$$

即：


$$
f^{′′}(0)θx^{2} + o(x^{2}) = \\frac{1}{2}f^{′′}(0)x^{2} + o(x^{2})
$$

整理得：


$$
f^{′′}(0) (θ - \\frac{1}{2}) x^{2} = o(x^{2})
$$

由于$f^{′′}(0) \\neq 0$，两边除以$f^{′′}(0)x^{2}$：


$$
θ - \\frac{1}{2} = \\frac{o(x^{2})}{f^{′′}(0)x^{2}} → 0 (x → 0)
$$

故$\\lim_{x→0} θ(x) = \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:11:54', 9, 'Mogullzr', '2026-01-29 14:11:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1401');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1401');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1401');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1402, '2001年考研数学卷1第16题', '简单', '考研数学2001年卷1真题', '设有一高度为$h(t)$（$t$为时间）的雪堆在融化过程中，其侧面满足方程
$$
z = h(t) - \\frac{2(x^{2} + y^{2})}{h(t)}
$$
（设长度单位为厘米，时间单位为小时），已知体积减少的速率与侧面积成正比（比例系数$0.9$），
问高度为$130$厘米的雪堆全部融化需多少小时？', '[]', '$100$
', '
雪堆的形状由方程$z = h(t) - \\frac{2(x^{2}+y^{2})}{h(t)}$描述，这是一个旋转抛物面。首先，计算体积$V$和侧面积$S$作为$h(t)$的函数。
体积$V$通过积分求得：
在高度$z$处的截面半径满足$r^{2} = \\frac{h}{2}(h - z)$，因此


$$
V = \\int_{0}^{h} πr^{2} dz = \\int_{0}^{h} π ⋅ \\frac{h}{2}(h - z) dz = π\\frac{h}{2} \\int_{0}^{h}(h - z) dz = π\\frac{h}{2} ⋅ \\frac{h^{2}}{2} = \\frac{π}{4}h^{3}
$$

侧面积$S$通过旋转曲面积分求得：
由曲线$z = h - \\frac{2r^{2}}{h}$，其中$r$从$0$到$\\frac{h}{\\sqrt{2}}$，


$$
\\frac{dz}{dr} = −\\frac{4r}{h}
$$



$$
S = \\int_{0}^{\\frac{h}{\\sqrt{2}}} 2πr\\sqrt{1 + (\\frac{dz}{dr})^{2}} dr = \\int_{0}^{\\frac{h}{\\sqrt{2}}} 2πr\\sqrt{1 + \\frac{16r^{2}}{h^{2}}} dr
$$

令$u = \\frac{4r}{h}$，则$dr = \\frac{h}{4}du$，积分限变为$u = 0$到$u = 2\\sqrt{2}$，


$$
S = \\int_{0}^{2\\sqrt{2}} 2π (\\frac{hu}{4}) \\sqrt{1 + u^{2}} ⋅ \\frac{h}{4} du = \\frac{πh^{2}}{8} \\int_{0}^{2\\sqrt{2}} u\\sqrt{1 + u^{2}} du
$$

计算积分：令$v = 1 + u^{2}$，则$dv = 2u du$，


$$
\\int_{0}^{2\\sqrt{2}} u\\sqrt{1 + u^{2}} du = \\frac{1}{2} \\int_{1}^{9} v^{1/2} dv = \\frac{1}{2} ⋅ \\frac{2}{3}v^{3/2}​_{1}^{9} = \\frac{1}{3}(27 - 1) = \\frac{26}{3}
$$

因此，


$$
S = \\frac{πh^{2}}{8} ⋅ \\frac{26}{3} = \\frac{13π}{12}h^{2}
$$

已知体积减少速率与侧面积成正比，比例系数$0.9$，即


$$
\\frac{dV}{dt} = −0.9S
$$

代入$V$和$S$：


$$
\\frac{d}{dt} (\\frac{π}{4}h^{3}) = −0.9 ⋅ \\frac{13π}{12}h^{2}
$$

求导得：


$$
\\frac{3π}{4}h^{2}\\frac{dh}{dt} = −0.9 ⋅ \\frac{13π}{12}h^{2}
$$

两边除以$πh^{2}$（假设$h \\neq 0$)：


$$
\\frac{3}{4}\\frac{dh}{dt} = −0.9 ⋅ \\frac{13}{12}
$$

计算右边：


$$
0.9 ⋅ \\frac{13}{12} = \\frac{9}{10} ⋅ \\frac{13}{12} = \\frac{117}{120} = \\frac{39}{40}
$$

所以，


$$
\\frac{3}{4}\\frac{dh}{dt} = −\\frac{39}{40}
$$

解得：


$$
\\frac{dh}{dt} = −\\frac{39}{40} ⋅ \\frac{4}{3} = −\\frac{13}{10}
$$

即高度减少速率为常数$−\\frac{13}{10}$cm/h。
雪堆初始高度为 130 cm，全部融化时高度为 0，所需时间为：


$$
t = \\frac{130}{\\frac{13}{10}} = 130 ⋅ \\frac{10}{13} = 100
$$

因此，雪堆全部融化需 100 小时。
', 9, 'Mogullzr', '2026-01-29 14:11:55', 9, 'Mogullzr', '2026-01-29 14:11:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1402');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1402');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '1402');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1403, '2001年考研数学卷1第17题', '简单', '考研数学2001年卷1真题', '设$α_{1}, α_{2}, ⋯  , α_{s}$为线性方程组$Ax = 0$的一个基础解系，
$$
β_{1} = t_{1}α_{1} + t_{2}α_{2}, β_{2} = t_{1}α_{2} + t_{2}α_{3}, ⋯  , β_{s} = t_{1}α_{s} + t_{2}α_{1},
$$
其中$t_{1}, t_{2}$为实常数．试问$t_{1}, t_{2}$满足什么关系时，$β_{1}, β_{2}, ⋯  , β_{s}$也为$Ax = 0$的一个基础解系？', '[]', '当$s$为奇数时，$t_{1} + t_{2} \\neq 0$；当$s$为偶数时，$t_{1} + t_{2} \\neq 0$且$t_{1} - t_{2} \\neq 0$。
', '设$α_{1}, α_{2}, ⋯  , α_{s}$是线性方程组$Ax = 0$的一个基础解系，则它们线性无关且张成解空间。$β_{1}, β_{2}, ⋯  , β_{s}$是$α_{1}, α_{2}, ⋯  , α_{s}$的线性组合，因此每个$β_{i}$都是$Ax = 0$的解。要使$β_{1}, β_{2}, ⋯  , β_{s}$也成为基础解系，只需它们线性无关。
考虑变换矩阵$T$，使得$\\lbrack β_{1}, β_{2}, ⋯  , β_{s} \\rbrack  =  \\lbrack α_{1}, α_{2}, ⋯  , α_{s} \\rbrack T$，其中$T$是$s × s$矩阵：

$$
T = \\left( \\begin{array}{cccccc}
t_{1} & 0 & 0 &  & 0 & t_{2} \\\\
 &  &  & ⋯ &  &  \\\\
t_{2} & t_{1} & 0 &  & 0 & 0 \\\\
 &  &  & ⋯ &  &  \\\\
0 & t_{2} & t_{1} &  & 0 & 0 \\\\
 &  &  & ⋯ &  &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 &  &  & ⋱ &  &  \\\\
0 & 0 & 0 &  & t_{1} & 0 \\\\
 &  &  & ⋯ &  &  \\\\
\\end{array} \\right) .
$$

由于$α_{1}, α_{2}, ⋯  , α_{s}$线性无关，$β_{1}, β_{2}, ⋯  , β_{s}$线性无关当且仅当$T$可逆。
矩阵$T$可以写为$T = t_{1}I + t_{2}P$，其中$P$是循环置换矩阵：

$$
P = \\left( \\begin{array}{cccccc}
0 & 0 & 0 &  & 0 & 1 \\\\
 &  &  & ⋯ &  &  \\\\
1 & 0 & 0 &  & 0 & 0 \\\\
 &  &  & ⋯ &  &  \\\\
0 & 1 & 0 &  & 0 & 0 \\\\
 &  &  & ⋯ &  &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 &  &  & ⋱ &  &  \\\\
0 & 0 & 0 &  & 0 & 0 \\\\
 &  &  & ⋯ &  &  \\\\
\\end{array} \\right) .
$$

$P$的特征值为$ω^{k}$（$k = 0, 1, … , s - 1$），其中$ω = e^{2πi/s}$。因此$T$的特征值为$t_{1} + t_{2}ω^{k}$（$k = 0, 1, … , s - 1$)。$T$可逆当且仅当所有特征值非零，即$t_{1} + t_{2}ω^{k} \\neq 0$对所有$k$成立。
当$t_{2} = 0$时，$T = t_{1}I$，可逆当且仅当$t_{1} \\neq 0$。当$t_{2} \\neq 0$时，条件等价于$−t_{1}/t_{2}$不是$s$次单位根。考虑到$t_{1}, t_{2}$为实数，仅需考虑实单位根：
若$s$为奇数，实单位根只有$1$，故需$t_{1} + t_{2} \\neq 0$。若$s$为偶数，实单位根有$1$和$−1$，故需$t_{1} + t_{2} \\neq 0$且$t_{1} - t_{2} \\neq 0$。
当$s = 1$时，$β_{1} = (t_{1} + t_{2})α_{1}$，线性无关当且仅当$t_{1} + t_{2} \\neq 0$，与奇数情况一致。
因此，综上所述，当$s$为奇数时，条件为$t_{1} + t_{2} \\neq 0$；当$s$为偶数时，条件为$t_{1} + t_{2} \\neq 0$且$t_{1} - t_{2} \\neq 0$。
', 9, 'Mogullzr', '2026-01-29 14:11:55', 9, 'Mogullzr', '2026-01-29 14:11:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1403');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1403');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1404, '2001年考研数学卷1第18题', '简单', '考研数学2001年卷1真题', '已知$3$阶矩阵$A$与三维向量$x$，使得向量组$x, Ax, A^{2}x$线性无关，且满足
$$
A^{3}x = 3Ax - 2A^{2}x.
$$
(1) 记$P = (x, Ax, A^{2}x)$，求$3$阶矩阵$B$，使$A = PBP^{−1}$；(2) 计算行列式$∣A + E∣$．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
1 & 0 & 3 \\\\
0 & 1 & −2 \\\\
\\end{array} \\right) ,  ∣A + E∣ = −4
$$

', '已知向量组$x, Ax, A^{2}x$线性无关，且满足$A^{3}x = 3Ax - 2A^{2}x$。令$P = (x, Ax, A^{2}x)$，则$P$可逆。
(1) 求矩阵$B$使得$A = PBP^{−1}$。考虑基向量$v_{1} = x$,$v_{2} = Ax$,$v_{3} = A^{2}x$，计算$A$在这些基向量上的作用：
$Av_{1} = Ax = v_{2}$，对应坐标$(0, 1, 0)T$；$Av_{2} = A(Ax) = A^{2}x = v_{3}$，对应坐标$(0, 0, 1)T$；$Av_{3} = A(A^{2}x) = A^{3}x = 3Ax - 2A^{2}x = 3v_{2} - 2v_{3}$，对应坐标$(0, 3, −2)T$。
因此，矩阵$B$为：$B = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
1 & 0 & 3 \\\\
0 & 1 & −2 \\\\
\\end{array} \\right)$
(2) 计算行列式$∣A + E∣$。由$A = PBP^{−1}$，得$A + E = PBP^{−1} + PIP^{−1} = P(B + I)P^{−1}$，故$∣A + E∣ = ∣P(B + I)P^{−1}∣ = ∣B + I∣$。计算$B + I$：

$$
B + I = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 1 & 3 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)
$$

行列式为：

$$
∣B + I∣ = \\begin{vmatrix}
1 & 0 & 0\\\\
1 & 1 & 3\\\\
0 & 1 & −1
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
1 & 3\\\\
1 & −1
\\end{vmatrix} = 1 ⋅ (1 ⋅ (−1) - 3 ⋅ 1) = −4
$$

因此，$∣A + E∣ = −4$。
', 9, 'Mogullzr', '2026-01-29 14:11:55', 9, 'Mogullzr', '2026-01-29 14:11:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1404');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1404');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1404');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1405, '2001年考研数学卷1第19题', '简单', '考研数学2001年卷1真题', '设某班车起点站上客人数$X$服从参数$λ$（$λ > 0$）的泊松分布，
每位乘客在中途下车的概率为$p$（$0 < p < 1$），且途中下车与否相互独立，以$Y$表示在中途下车的人数，求：(1) 在发车时有$n$个乘客的条件下，中途有$m$人下车的概率；(2) 二维随机变量$(X, Y)$的概率分布．', '[]', '
(1) 在发车时有$n$个乘客的条件下，中途有$m$人下车的概率为：


$$
P(Y = m ∣ X = n) = (\\frac{n}{m})p^{m}(1 - p)n−m,  m = 0, 1, … , n.
$$

(2) 二维随机变量$(X, Y)$的概率分布为：
对于$n = 0, 1, 2, …$和$m = 0, 1, … , n$，


$$
P(X = n, Y = m) = (\\frac{n}{m})p^{m}(1 - p)n−m ⋅ \\frac{λ^{n}e^{−λ}}{n!}.
$$

当$n < m$时，$P(X = n, Y = m) = 0$。
', '
(1) 给定发车时乘客人数$X = n$，每位乘客中途下车相互独立且概率为$p$，因此中途下车人数$Y$服从二项分布，即

$$
P(Y = m ∣ X = n) = (\\frac{n}{m})p^{m}(1 - p)n−m.
$$

(2) 二维随机变量$(X, Y)$的联合概率分布可通过条件概率公式得到：

$$
P(X = n, Y = m) = P(Y = m ∣ X = n) ⋅ P(X = n).
$$

其中$P(X = n)$是参数为$λ$的泊松分布，即

$$
P(X = n) = \\frac{λ^{n}e^{−λ}}{n!},
$$

而$P(Y = m ∣ X = n)$如 (1) 所示。
因此，当$n ≥ m$时，有

$$
P(X = n, Y = m) = (\\frac{n}{m})p^{m}(1 - p)n−m ⋅ \\frac{λ^{n}e^{−λ}}{n!};
$$

当$n < m$时，概率为$0$。
', 9, 'Mogullzr', '2026-01-29 14:11:55', 9, 'Mogullzr', '2026-01-29 14:11:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1405');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1405');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1405');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1406, '2001年考研数学卷1第20题', '简单', '考研数学2001年卷1真题', '设总体$X$服从正态分布$N(μ, σ^{2})$（$σ > 0$），
从该总体中抽取简单随机样本$X_{1}$,$X_{2}$,$⋯$,$X_{2n}$（$n ≥ 2$），
其样本均值为$\\overline{X} = \\frac{1}{2n} \\sum_{i=1}^{2n} X_{i}$，求统计量
$$
Y = \\sum_{i=1}^{n} (X_{i} + X_{n+i} - 2\\overline{X})^{2}
$$
的数学期望$E(Y)$．', '[]', '
$2(n - 1)σ^{2}$
', '
设$S_{i} = X_{i} + X_{n+i}$，则$S_{i} ∼ N(2μ, 2σ^{2})$，且$S_{1}, S_{2}, … , S_{n}$相互独立。
样本均值为


$$
\\overline{X} = \\frac{1}{2n} \\sum_{i=1}^{2n} X_{i} = \\frac{1}{2n} \\sum_{i=1}^{n} S_{i},
$$

因此


$$
2\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} S_{i} = \\bar{S},
$$

其中$\\bar{S}$是$S_{i}$的样本均值。
定义统计量


$$
Y = \\sum_{i=1}^{n}(S_{i} - \\bar{S})2.
$$

由于$S_{i}$独立同分布，且$\\bar{S}$为其样本均值，有


$$
E  \\lbrack \\sum_{i=1}^{n}(S_{i} - \\bar{S})2 \\rbrack  = (n - 1) Var(S_{i}).
$$

已知$Var(S_{i}) = 2σ^{2}$，故


$$
E(Y) = (n - 1) ⋅ 2σ^{2} = 2(n - 1)σ^{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:56', 9, 'Mogullzr', '2026-01-29 14:11:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1406');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1406');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1406');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1407, '2001年考研数学卷2第1题', '简单', '考研数学2001年卷2真题', '$\\lim_{x→1} \\frac{\\sqrt{3-x}-\\sqrt{1+x}}{x^{2}+x-2} =$______．', '[]', '
$−\\frac{\\sqrt{2}}{6}$
', '
首先，观察到当$x → 1$时，分子$\\sqrt{3 - x} - \\sqrt{1 + x} = 0$，分母$x^{2} + x - 2 = 0$，因此为$\\frac{0}{0}$型不定式。
对分子进行有理化：乘以共轭式$\\frac{\\sqrt{3-x}+\\sqrt{1+x}}{\\sqrt{3-x}+\\sqrt{1+x}}$，得到：


$$
\\begin{array}{cc}
 & \\frac{(\\sqrt{3 - x} - \\sqrt{1 + x})(\\sqrt{3 - x} + \\sqrt{1 + x})}{(x^{2} + x - 2)(\\sqrt{3 - x} + \\sqrt{1 + x})} \\\\
 & = \\frac{(3 - x) - (1 + x)}{(x^{2} + x - 2)(\\sqrt{3 - x} + \\sqrt{1 + x})} \\\\
\\end{array}
$$

分子提取公因子：


$$
\\frac{2(1 - x)}{(x^{2} + x - 2)(\\sqrt{3 - x} + \\sqrt{1 + x})}
$$

分母因式分解：$x^{2} + x - 2 = (x - 1)(x + 2)$，代入得：


$$
\\frac{2(1 - x)}{(x - 1)(x + 2)(\\sqrt{3 - x} + \\sqrt{1 + x})}
$$

注意到$1 - x = −(x - 1)$，因此：


$$
\\frac{2(−(x - 1))}{(x - 1)(x + 2)(\\sqrt{3 - x} + \\sqrt{1 + x})} = \\frac{−2}{(x + 2)(\\sqrt{3 - x} + \\sqrt{1 + x})}
$$

现在，代入$x = 1$：
分母为$(1 + 2)(\\sqrt{3 - 1} + \\sqrt{1 + 1}) = 3 × (\\sqrt{2} + \\sqrt{2}) = 3 × 2\\sqrt{2} = 6\\sqrt{2}$，分子为$−2$，所以极限为：


$$
\\frac{−2}{6\\sqrt{2}} = \\frac{−1}{3\\sqrt{2}} = −\\frac{\\sqrt{2}}{6}
$$

因此，极限为$−\\frac{\\sqrt{2}}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:11:58', 9, 'Mogullzr', '2026-01-29 14:11:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1407');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1407');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1407');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1408, '2001年考研数学卷2第2题', '简单', '考研数学2001年卷2真题', '设函数$y = f(x)$由方程$e^{2x+y} - \\cos(xy) = e - 1$所确定，则曲线$y = f(x)$在点$(0, 1)$处的法线方程为 ______．', '[]', '
$x - 2y + 2 = 0$
', '
在等式$e^{2x+y} - \\cos(xy) = e - 1$两边对$x$求导得

$$
e^{2x+y} ⋅ (2 + y^{′}) + \\sin(xy) ⋅ (y + xy^{′}) = 0.
$$

将$x = 0, y = 1$代入上式解得$y^{′}(0) = −2$。故所求法线方程斜率$k = \\frac{1}{2}$，从而法线方程为

$$
y - 1 = \\frac{1}{2}x,
$$

即$x - 2y + 2 = 0$。
', 9, 'Mogullzr', '2026-01-29 14:11:58', 9, 'Mogullzr', '2026-01-29 14:11:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1408');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1408');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1408');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1409, '2001年考研数学卷2第3题', '简单', '考研数学2001年卷2真题', '$\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} (x^{3} + \\sin^{2} x) \\cos^{2} xdx =$______．', '[]', '$\\frac{π}{8}$
', '考虑积分$I = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} (x^{3} + \\sin^{2} x) \\cos^{2} x dx$。
令$f(x) = (x^{3} + \\sin^{2} x) \\cos^{2} x$，其中$\\cos^{2} x$和$\\sin^{2} x$均为偶函数，$x^{3}$为奇函数。
因此，$f(x) = x^{3} \\cos^{2} x + \\sin^{2} x \\cos^{2} x$，其中$x^{3} \\cos^{2} x$为奇函数，$\\sin^{2} x \\cos^{2} x$为偶函数。
在对称区间$\\lbrack −\\frac{π}{2}, \\frac{π}{2} \\rbrack$上，奇函数的积分为零，故：


$$
\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} x^{3} \\cos^{2} x dx = 0
$$

只需计算偶函数部分：


$$
I = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\sin^{2} x \\cos^{2} x dx = 2 \\int_{0}^{\\frac{π}{2}} \\sin^{2} x \\cos^{2} x dx
$$

利用三角恒等式$\\sin^{2} x \\cos^{2} x = \\frac{1}{4} \\sin^{2} 2x$，得：


$$
2 \\int_{0}^{\\frac{π}{2}} \\sin^{2} x \\cos^{2} x dx = 2 ⋅ \\frac{1}{4} \\int_{0}^{\\frac{π}{2}} \\sin^{2} 2x dx = \\frac{1}{2} \\int_{0}^{\\frac{π}{2}} \\sin^{2} 2x dx
$$

再使用倍角公式$\\sin^{2} 2x = \\frac{1-\\cos 4x}{2}$，有：


$$
\\frac{1}{2} \\int_{0}^{\\frac{π}{2}} \\sin^{2} 2x dx = \\frac{1}{2} \\int_{0}^{\\frac{π}{2}} \\frac{1 - \\cos 4x}{2} dx = \\frac{1}{4} \\int_{0}^{\\frac{π}{2}}(1 - \\cos 4x) dx
$$

计算积分：


$$
\\int_{0}^{\\frac{π}{2}} 1 dx = \\frac{π}{2},  \\int_{0}^{\\frac{π}{2}} \\cos 4x dx = \\frac{1}{4} \\sin 4x​_{0}^{\\frac{π}{2}} = \\frac{1}{4}(\\sin 2π - \\sin 0) = 0
$$

所以：


$$
\\frac{1}{4} (\\frac{π}{2} - 0) = \\frac{π}{8}
$$

因此，积分结果为$\\frac{π}{8}$。
', 9, 'Mogullzr', '2026-01-29 14:11:58', 9, 'Mogullzr', '2026-01-29 14:11:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1409');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1409');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1409');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1410, '2001年考研数学卷2第4题', '简单', '考研数学2001年卷2真题', '过点$(\\frac{1}{2}, 0)$且满足关系式$y^{′} arcsin x + \\frac{y}{\\sqrt{1-x^{2}}} = 1$的曲线方程为 ______．', '[]', '
$y arcsin x = x - \\frac{1}{2}$
', '
给定微分方程$y^{′} arcsin x + \\frac{y}{\\sqrt{1-x^{2}}} = 1$及点$(\\frac{1}{2}, 0)$。
注意到左边恰为


$$
\\frac{d}{dx}(y arcsin x) = y^{′} arcsin x + \\frac{y}{\\sqrt{1 - x^{2}}},
$$

故原方程化为


$$
\\frac{d}{dx}(y arcsin x) = 1.
$$

积分得


$$
y arcsin x = x + C.
$$

代入$x = \\frac{1}{2},  y = 0$：


$$
0 ⋅ arcsin \\frac{1}{2} = \\frac{1}{2} + C  ⇒  C = −\\frac{1}{2}.
$$

因此所求曲线方程为


$$
y arcsin x = x - \\frac{1}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1410');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1410');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1410');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1411, '2001年考研数学卷2第5题', '简单', '考研数学2001年卷2真题', '设方程$\\left( \\begin{array}{ccc}
a & 1 & 1 \\\\
1 & a & 1 \\\\
1 & 1 & a \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−2 \\\\
\\end{array} \\right)$有无穷多个解，则$a =$______．', '[]', '$−2$
', '
利用初等行变换化增广矩阵为阶梯形，可得

$$
\\overline{A} = \\left( \\begin{array}{cccc}
a & 1 & 1 & 1 \\\\
1 & a & 1 & 1 \\\\
1 & 1 & a & −2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & a & −2 \\\\
0 & a - 1 & 1 - a & 3 \\\\
0 & 0 & (1 - a)(a + 2) & 2(2 + a) \\\\
\\end{array} \\right)
$$

可见，只有当$a = −2$时才有秩$r(\\overline{A}) = r(A) = 2 < 3$，对应方程组有无穷多个解。
', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1411');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1411');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1412, '2001年考研数学卷2第6题', '简单', '考研数学2001年卷2真题', '设$f(x) = \\begin{cases} 1 & ∣x∣ ≤ 1 \\\\ 0 & ∣x∣ > 1 \\end{cases}$则$f \\{f  \\lbrack f(x) \\rbrack \\}$等于', '[''$0$．'', ''$1$．'', ''$\\\\begin{cases} 1 & ∣x∣ ≤ 1 \\\\\\\\ 0 & ∣x∣ > 1. \\\\end{cases}$'', ''$f(x) = \\\\begin{cases} 0 & ∣x∣ ≤ 1 \\\\\\\\ 1 & ∣x∣ > 1. \\\\end{cases}$'']', "['B']", '
函数$f(x)$在$∣x∣ ≤ 1$时输出 1，在$∣x∣ > 1$时输出 0。
对于任意$x$，$f(x)$的值只能是 0 或 1。当输入为 0 或 1 时，由于$∣0∣ ≤ 1$和$∣1∣ ≤ 1$，有

$$
f(0) = 1,  f(1) = 1,
$$
因此$f(f(x)) = 1$。进而

$$
f(f(f(x))) = f(1) = 1,
$$
故三重嵌套函数恒等于 1，选项 B 正确。', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1412');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1412');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1412');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1413, '2001年考研数学卷2第7题', '简单', '考研数学2001年卷2真题', '设当$x → 0$时，$(1 - \\cos x) \\ln(1 + x^{2})$是比$x \\sin x^{n}$高阶的无穷小，$x \\sin x^{n}$是比$(e^{x^{2}} - 1)$高阶的无穷小，则正整数$n$等于', '[''$1$．'', ''$2$．'', ''$3$．'', ''$4$．'']', "['B']", '
当$x → 0$时，利用等价无穷小替换：
$$
1 - \\cos x ∼ \\frac{1}{2}x^{2},  \\ln(1 + x^{2}) ∼ x^{2},
$$
所以

$$
(1 - \\cos x) \\ln(1 + x^{2}) ∼ \\frac{1}{2}x^{4}.
$$

$$
x \\sin x^{n} ∼ x ⋅ x^{n} = x^{n+1}.
$$

$$
e^{x^{2}} - 1 ∼ x^{2}.
$$
条件一
$(1 - \\cos x) \\ln(1 + x^{2})$是比$x \\sin x^{n}$高阶的无穷小，即

$$
\\frac{\\frac{1}{2}x^{4}}{x^{n+1}} = \\frac{1}{2}x^{3-n} → 0,
$$
要求$3 - n > 0$，即$n < 3$。条件二
$x \\sin x^{n}$是比$e^{x^{2}} - 1$高阶的无穷小，即

$$
\\frac{x^{n+1}}{x^{2}} = x^{n-1} → 0,
$$
要求$n - 1 > 0$，即$n > 1$。结合两者，$n$为正整数，且$1 < n < 3$，所以$n = 2$。验证
当$n = 2$时，
条件一比值$\\frac{1}{2}x^{1} → 0$，
条件二比值$x^{1} → 0$，
均满足。因此，正整数$n$等于$2$。', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1413');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1413');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1413');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1414, '2001年考研数学卷2第8题', '简单', '考研数学2001年卷2真题', '曲线$y = (x - 1)2(x - 3)2$的拐点个数为', '[''$0$．'', ''$1$．'', ''$2$．'', ''$3$．'']', "['C']", '
为了求曲线$y = (x - 1)2(x - 3)2$的拐点，需要找到二阶导数为零且符号改变的点。首先求一阶导数：

$$
y^{′} = 4(x - 1)(x - 2)(x - 3).
$$
然后求二阶导数：

$$
y^{′′} = 12x^{2} - 48x + 44.
$$
设$y^{′′} = 0$，即

$$
12x^{2} - 48x + 44 = 0,
$$
化简为

$$
3x^{2} - 12x + 11 = 0.
$$
解此二次方程，判别式

$$
D = (−12)2 - 4 ⋅ 3 ⋅ 11 = 144 - 132 = 12,
$$
所以根为

$$
x = \\frac{12 ± \\sqrt{12}}{6} = \\frac{12 ± 2\\sqrt{3}}{6} = 2 ± \\frac{\\sqrt{3}}{3}.
$$
由于$y^{′′}$是二次函数且开口向上，在两根之间$y^{′′} < 0$，在两根之外$y^{′′} > 0$，因此在这两个点处$y^{′′}$符号改变，故有两个拐点。', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1414');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1415, '2001年考研数学卷2第9题', '简单', '考研数学2001年卷2真题', '已知函数$f(x)$在区间$(1 - δ, 1 + δ)$内具有二阶导数，$f^{′}(x)$严格单调减少，且$f(1) = f^{′}(1) = 1$，则', '[''在$(1 - δ, 1)$和$(1, 1 + δ)$内均有$f(x) < x$．'', ''在$(1 - δ, 1)$和$(1, 1 + δ)$内均有$f(x) > x$．'', ''在$(1 - δ, 1)$内$f(x) < x$，在$(1, 1 + δ)$内$f(x) > x$．'', ''在$(1 - δ, 1)$内$f(x) > x$，在$(1, 1 + δ)$内$f(x) < x$．'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1415');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1415');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1415');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1416, '2001年考研数学卷2第10题', '', '考研数学2001年卷2真题', '/problems/other/1392', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1417, '2001年考研数学卷2第11题', '简单', '考研数学2001年卷2真题', '求$∫ \\frac{dx}{(2x^{2}+1)\\sqrt{x^{2}+1}}$．', '[]', '

$$
arctan \\frac{x}{\\sqrt{x^{2} + 1}} + C
$$

', '考虑代换$x = \\tan t$，则$dx = sec^{2} t dt$，且$\\sqrt{x^{2} + 1} = sec t$。积分化为：

$$
∫ \\frac{sec^{2} t dt}{(2 \\tan^{2} t + 1) sec t} = ∫ \\frac{sec t dt}{2 \\tan^{2} t + 1}.
$$

利用恒等式$\\tan^{2} t = sec^{2} t - 1$，分母化为：

$$
2(sec^{2} t - 1) + 1 = 2 sec^{2} t - 1.
$$

因此积分变为：

$$
∫ \\frac{sec t dt}{2 sec^{2} t - 1} = ∫ \\frac{\\cos t dt}{2 - \\cos^{2} t}.
$$

进一步，$2 - \\cos^{2} t = 1 + \\sin^{2} t$，所以：

$$
∫ \\frac{\\cos t dt}{1 + \\sin^{2} t}.
$$

令$u = \\sin t$，则$du = \\cos t dt$，积分化为：

$$
∫ \\frac{du}{1 + u^{2}} = arctan u + C.
$$

代回$u = \\sin t$，并利用$x = \\tan t$时$\\sin t = \\frac{x}{\\sqrt{x^{2}+1}}$，得：

$$
arctan \\frac{x}{\\sqrt{x^{2} + 1}} + C.
$$

此结果为积分原函数。
', 9, 'Mogullzr', '2026-01-29 14:11:59', 9, 'Mogullzr', '2026-01-29 14:11:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1417');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1417');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1417');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1418, '2001年考研数学卷2第12题', '简单', '考研数学2001年卷2真题', '求极限$\\lim_{t→x} (\\frac{\\sin t}{\\sin x})^{\\frac{x}{\\sin t-\\sin x}}$，
记此极限为$f(x)$，求函数$f(x)$的间断点并指出其类型．', '[]', '
函数$f(x)$的间断点为$x = kπ$($k ∈ Z$)。当$k = 0$时，为可去间断点；当$k \\neq 0$时，为第二类间断点（无穷间断点）。
', '
首先，求极限$\\lim_{t→x} (\\frac{\\sin t}{\\sin x})^{\\frac{x}{\\sin t-\\sin x}}$。
令$L = \\lim_{t→x} (\\frac{\\sin t}{\\sin x})^{\\frac{x}{\\sin t-\\sin x}}$，取对数得：


$$
\\ln L = \\lim_{t→x} \\frac{x}{\\sin t - \\sin x} \\ln (\\frac{\\sin t}{\\sin x})
$$

令$u = t - x$，则当$t → x$时，$u → 0$。
利用等价无穷小：$\\sin t - \\sin x = 2 \\cos \\frac{x+t}{2} \\sin \\frac{t-x}{2} ≈ 2 \\cos x ⋅ \\frac{u}{2} = u \\cos x$，
且$\\ln (\\frac{\\sin t}{\\sin x}) = \\ln (1 + \\frac{\\sin t-\\sin x}{\\sin x}) ≈ \\frac{\\sin t-\\sin x}{\\sin x} ≈ \\frac{u \\cos x}{\\sin x} = u cot x$。
代入得：


$$
\\ln L = \\lim_{u→0} \\frac{x}{u \\cos x} ⋅ u cot x = \\frac{x}{\\cos x} ⋅ cot x = \\frac{x}{\\sin x}
$$

因此，$L = e^{x/ \\sin x}$，即$f(x) = e^{x/ \\sin x}$。
函数$f(x)$在$\\sin x = 0$处未定义，即$x = kπ$($k ∈ Z$) 为间断点。
当$x = 0$($k = 0$) 时，$\\lim_{x→0} f(x) = \\lim_{x→0} e^{x/ \\sin x} = e^{1} = e$，极限存在，故为可去间断点。当$x = kπ$($k \\neq 0$) 时，考虑$x = kπ + h$($h → 0$)。
若$k$为奇数，$\\sin x = (−1)k \\sin h = − \\sin h$，则$x/ \\sin x = −(kπ + h)/ \\sin h$。
当$h → 0^{+}$，$x/ \\sin x → −∞$，$f(x) → 0$；
当$h → 0^{-}$，$x/ \\sin x → +∞$，$f(x) → +∞$。
若$k$为偶数，$\\sin x = \\sin h$，则$x/ \\sin x = (kπ + h)/ \\sin h$。
当$h → 0^{+}$，$x/ \\sin x → +∞$，$f(x) → +∞$；
当$h → 0^{-}$，$x/ \\sin x → −∞$，$f(x) → 0$。
左右极限至少有一个为无穷，故为第二类间断点（无穷间断点）。
', 9, 'Mogullzr', '2026-01-29 14:12:00', 9, 'Mogullzr', '2026-01-29 14:12:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1418');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1418');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1418');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1419, '2001年考研数学卷2第13题', '简单', '考研数学2001年卷2真题', '设$ρ = ρ(x)$是抛物线$y = \\sqrt{x}$上任一点$M(x, y)$（$x ≥ 1$）处的曲率半径，$s = s(x)$是该抛物线上介于点$A(1, 1)$与$M$之间的弧长，
计算$3ρ\\frac{d^{2}ρ}{ds^{2}} - (\\frac{dρ}{ds})^{2}$的值
（在直角坐标系下曲率公式为$K = \\frac{∣y^{′′}∣}{(1+y^{′2})3/2}$）．', '[]', '$9$
', '由$y = \\sqrt{x}$，有$y^{′} = \\frac{1}{2\\sqrt{x}}$，$y^{′′} = −\\frac{1}{4\\sqrt{x^{3}}}$，抛物线在点$M(x, y)$处的曲率半径

$$
ρ = ρ(x) = \\frac{1}{K} = \\frac{(1 + y^{′2})23​}{∣y^{′′}∣} = \\frac{1}{2}(4x + 1)23​.
$$

抛物线上的弧长

$$
s = s(x) = \\int_{1}^{x} \\sqrt{1 + y^{′2}} dx = \\int_{1}^{x} \\sqrt{1 + \\frac{1}{4x}} dx.
$$

从而

$$
\\frac{dρ}{ds} = \\frac{\\frac{dρ}{dx}}{\\frac{ds}{dx}} = \\frac{\\frac{1}{2} ⋅ \\frac{3}{2}(4x + 1)21​ ⋅ 4}{\\sqrt{1 + \\frac{1}{4x}}} = 6\\sqrt{x},
$$


$$
\\frac{d^{2}ρ}{ds^{2}} = \\frac{d}{dx} (\\frac{dρ}{ds}) ⋅ \\frac{1}{\\frac{ds}{dx}} = \\frac{6}{2\\sqrt{x}} ⋅ \\frac{1}{\\sqrt{1 + \\frac{1}{4x}}} = \\frac{6}{\\sqrt{1 + 4x}}.
$$

于是

$$
3ρ\\frac{d^{2}ρ}{ds^{2}} - (\\frac{dρ}{ds})^{2} = 3 ⋅ \\frac{1}{2}(1 + 4x)23​ ⋅ \\frac{6}{\\sqrt{1 + 4x}} - (6\\sqrt{x})^{2} = 9
$$

', 9, 'Mogullzr', '2026-01-29 14:12:00', 9, 'Mogullzr', '2026-01-29 14:12:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1419');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1419');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1419');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1420, '2001年考研数学卷2第14题', '简单', '考研数学2001年卷2真题', '设函数$f(x)$在$\\lbrack 0, +∞)$上可导，$f(0) = 0$，且其反函数为$g(x)$．若
$$
\\int_{0}^{f(x)} g(t)dt = x^{2}e^{x},
$$
求$f(x)$．', '[]', '

$$
f(x) = (x + 1)e^{x} - 1
$$

', '已知函数$f(x)$在$\\lbrack 0, +∞)$上可导，且$f(0) = 0$，其反函数为$g(x)$，满足

$$
\\int_{0}^{f(x)} g(t) dt = x^{2}e^{x}.
$$

对等式两边关于$x$求导，左边利用链式法则和反函数性质：

$$
\\frac{d}{dx} \\int_{0}^{f(x)} g(t) dt = g(f(x)) ⋅ f^{′}(x) = xf^{′}(x),
$$

右边求导得：

$$
\\frac{d}{dx}(x^{2}e^{x}) = 2xe^{x} + x^{2}e^{x} = xe^{x}(x + 2).
$$

于是有：

$$
xf^{′}(x) = xe^{x}(x + 2).
$$

当$x > 0$时，可除以$x$得：

$$
f^{′}(x) = e^{x}(x + 2).
$$

对$f^{′}(x)$积分：

$$
f(x) = ∫ e^{x}(x + 2) dx.
$$

计算积分：

$$
\\begin{array}{cc}
∫ e^{x}(x + 2) dx & = ∫ xe^{x} dx + 2 ∫ e^{x} dx \\\\
 & = (xe^{x} - e^{x}) + 2e^{x} + C \\\\
 & = xe^{x} + e^{x} + C \\\\
\\end{array}
$$

由初始条件$f(0) = 0$，代入得：

$$
e^{0}(0 + 1) + C = 1 + C = 0  ⇒  C = −1.
$$

因此，

$$
f(x) = e^{x}(x + 1) - 1.
$$

验证当$x = 0$时，$f(0) = 0$，符合条件。故所求函数为

$$
f(x) = (x + 1)e^{x} - 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:00', 9, 'Mogullzr', '2026-01-29 14:12:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1420');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1420');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1420');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1421, '2001年考研数学卷2第15题', '简单', '考研数学2001年卷2真题', '设函数$f(x), g(x)$满足$f^{′}(x) = g(x), g^{′}(x) = 2e^{x} - f(x)$，且$f(0) = 0, g(0) = 2$，求
$$
\\int_{0}^{π}  \\lbrack \\frac{g(x)}{1 + x} - \\frac{f(x)}{(1 + x)2} \\rbrack  dx.
$$
', '[]', '

$$
\\frac{1 + e^{π}}{1 + π}
$$

', '设$h(x) = \\frac{f(x)}{1+x}$，则

$$
h^{′}(x) = \\frac{f^{′}(x)(1 + x) - f(x)}{(1 + x)2} = \\frac{g(x)(1 + x) - f(x)}{(1 + x)2} = \\frac{g(x)}{1 + x} - \\frac{f(x)}{(1 + x)2}.
$$

因此，被积函数为$h^{′}(x)$，积分化为

$$
\\int_{0}^{π}  \\lbrack \\frac{g(x)}{1 + x} - \\frac{f(x)}{(1 + x)2} \\rbrack  dx = \\int_{0}^{π} h^{′}(x)dx = h(π) - h(0) = \\frac{f(π)}{1 + π} - \\frac{f(0)}{1 + 0}.
$$

由$f(0) = 0$，得

$$
\\int_{0}^{π}  \\lbrack \\frac{g(x)}{1 + x} - \\frac{f(x)}{(1 + x)2} \\rbrack  dx = \\frac{f(π)}{1 + π}.
$$

接下来求$f(π)$。由已知条件$f^{′}(x) = g(x)$和$g^{′}(x) = 2e^{x} - f(x)$，代入得

$$
f^{′′}(x) = g^{′}(x) = 2e^{x} - f(x)  ⟹  f^{′′}(x) + f(x) = 2e^{x}.
$$

该方程为二阶非齐次线性微分方程。齐次解为$f_{h}(x) = A \\cos x + B \\sin x$，特解形式为$f_{p}(x) = Ce^{x}$，代入得

$$
Ce^{x} + Ce^{x} = 2Ce^{x} = 2e^{x}  ⟹  C = 1,
$$

故特解为$f_{p}(x) = e^{x}$。通解为

$$
f(x) = A \\cos x + B \\sin x + e^{x}.
$$

由$f(0) = 0$，得

$$
A \\cos 0 + B \\sin 0 + e^{0} = A + 1 = 0  ⟹  A = −1.
$$

又$g(x) = f^{′}(x) = −A \\sin x + B \\cos x + e^{x}$，由$g(0) = 2$，得

$$
−A \\sin 0 + B \\cos 0 + e^{0} = B + 1 = 2  ⟹  B = 1.
$$

因此，

$$
f(x) = − \\cos x + \\sin x + e^{x},
$$

于是

$$
f(π) = − \\cos π + \\sin π + e^{π} = −(−1) + 0 + e^{π} = 1 + e^{π}.
$$

代入积分得

$$
\\int_{0}^{π}  \\lbrack \\frac{g(x)}{1 + x} - \\frac{f(x)}{(1 + x)2} \\rbrack  dx = \\frac{1 + e^{π}}{1 + π}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:00', 9, 'Mogullzr', '2026-01-29 14:12:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1421');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1421');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1421');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1422, '2001年考研数学卷2第16题', '简单', '考研数学2001年卷2真题', '设$L$是一条平面曲线，其上任意一点$P(x, y)$（$x > 0$）到坐标原点的距离恒等于该点处的切线在$y$轴上的的截距，
且$L$经过点$(\\frac{1}{2}, 0)$．(1) 试求曲线$L$的方程．(2) 求$L$位于第一象限部分的一条切线，使该切线与$L$以及两坐标轴所围图形面积最小．', '[]', '(1) 曲线$L$的方程为$y = \\frac{1}{4} - x^{2}$。
(2) 所求切线方程为$y = −\\frac{\\sqrt{3}}{3}x + \\frac{1}{3}$。
', '(1) 设曲线$L$上任意一点$P(x, y)$（$x > 0$）到原点的距离为$\\sqrt{x^{2} + y^{2}}$，该点处切线在$y$轴上的截距为$y - xy^{′}$。由条件得：

$$
\\sqrt{x^{2} + y^{2}} = y - xy^{′}
$$

解此微分方程。令$u = y/x$，则$y = ux$，$y^{′} = u^{′}x + u$，代入得：

$$
x\\sqrt{1 + u^{2}} = −x^{2}u^{′}
$$

即：

$$
u^{′} = −\\frac{\\sqrt{1 + u^{2}}}{x}
$$

分离变量：

$$
\\frac{du}{\\sqrt{1 + u^{2}}} = −\\frac{dx}{x}
$$

积分得：

$$
\\ln ∣u + \\sqrt{1 + u^{2}}∣ = − \\ln x + C
$$

即：

$$
u + \\sqrt{1 + u^{2}} = \\frac{k}{x}
$$

其中$k = e^{C}$。由$u = y/x$和$\\sqrt{1 + u^{2}} = \\sqrt{x^{2} + y^{2}}/x$，得：

$$
\\frac{y + \\sqrt{x^{2} + y^{2}}}{x} = \\frac{k}{x}
$$

所以：

$$
y + \\sqrt{x^{2} + y^{2}} = k
$$

代入点$(\\frac{1}{2}, 0)$：

$$
0 + \\sqrt{(\\frac{1}{2})^{2} + 0} = \\frac{1}{2} = k
$$

故曲线方程为：

$$
y + \\sqrt{x^{2} + y^{2}} = \\frac{1}{2}
$$

解得：

$$
y = \\frac{1}{4} - x^{2}
$$

因此曲线$L$的方程为$y = \\frac{1}{4} - x^{2}$。
(2) 曲线$L$在第一象限部分满足$x > 0$，$y > 0$，即$0 < x < \\frac{1}{2}$。设切点为$P(x_{0}, y_{0})$，其中$y_{0} = \\frac{1}{4} - x_{0}^{2}$。切线斜率为$y^{′} = −2x_{0}$，切线方程为：

$$
y = x_{0}^{2} - 2x_{0}x + \\frac{1}{4}
$$

切线与坐标轴交于点$A(a, 0)$和$B(0, b)$，其中：

$$
a = \\frac{x_{0}}{2} + \\frac{1}{8x_{0}},  b = x_{0}^{2} + \\frac{1}{4}
$$

切线与$L$以及两坐标轴所围图形的面积$S$为三角形$OAB$面积减去曲线$L$与坐标轴所围图形面积：

$$
S = \\frac{1}{2}ab - \\int_{0}^{1/2} (\\frac{1}{4} - x^{2}) dx
$$

计算积分：

$$
\\int_{0}^{1/2} (\\frac{1}{4} - x^{2}) dx =  \\lbrack \\frac{1}{4}x - \\frac{x^{3}}{3} \\rbrack _{0}^{1/2} = \\frac{1}{8} - \\frac{1}{24} = \\frac{1}{12}
$$

代入$a$和$b$：

$$
ab = (\\frac{x_{0}}{2} + \\frac{1}{8x_{0}}) (x_{0}^{2} + \\frac{1}{4}) = \\frac{(4x_{0}^{2} + 1)2}{32x_{0}}
$$

所以：

$$
S(x_{0}) = \\frac{(4x_{0}^{2} + 1)2}{64x_{0}} - \\frac{1}{12}
$$

令$t = x_{0}$，则：

$$
S(t) = \\frac{(4t^{2} + 1)2}{64t} - \\frac{1}{12}
$$

最小化$S(t)$等价于最小化$f(t) = \\frac{(4t^{2}+1)2}{64t}$。化简：

$$
f(t) = \\frac{1}{4}t^{3} + \\frac{1}{8}t + \\frac{1}{64}t^{−1}
$$

求导：

$$
f^{′}(t) = \\frac{3}{4}t^{2} + \\frac{1}{8} - \\frac{1}{64}t^{−2}
$$

令$f^{′}(t) = 0$：

$$
\\frac{3}{4}t^{2} + \\frac{1}{8} - \\frac{1}{64}t^{−2} = 0
$$

乘以$64t^{2}$：

$$
48t^{4} + 8t^{2} - 1 = 0
$$

令$u = t^{2}$，则：

$$
48u^{2} + 8u - 1 = 0
$$

解得：

$$
u = \\frac{−8 ± \\sqrt{64 + 192}}{96} = \\frac{−8 ± 16}{96}
$$

取正值：

$$
u = \\frac{8}{96} = \\frac{1}{12}
$$

所以$t = \\frac{1}{2\\sqrt{3}}$。此时$y_{0} = \\frac{1}{4} - \\frac{1}{12} = \\frac{1}{6}$，切线斜率为$−\\frac{1}{\\sqrt{3}}$。切线方程为：

$$
y - \\frac{1}{6} = −\\frac{1}{\\sqrt{3}} (x - \\frac{1}{2\\sqrt{3}})
$$

即：

$$
y = −\\frac{\\sqrt{3}}{3}x + \\frac{1}{3}
$$

因此，所求切线方程为$y = −\\frac{\\sqrt{3}}{3}x + \\frac{1}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:12:00', 9, 'Mogullzr', '2026-01-29 14:12:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1422');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1422');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1422');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1423, '2001年考研数学卷2第17题', '简单', '考研数学2001年卷2真题', '一个半球体状的雪堆，其体积融化的速率与半球面面积$S$成正比，比例常数$K > 0$．
假设在融化过程中雪堆始终保持半球体状，已知半径为$r_{0}$的雪堆在开始融化的$3$小时内，
融化了其体积的$\\frac{7}{8}$，问雪堆全部融化需要多少小时？', '[]', '6 小时
', '
设半球形雪堆在时刻$t$时的半径为$r$，则半球的体积$V = \\frac{2}{3}πr^{3}$，侧面积$S = 2πr^{2}$。
由题设体积融化的速率与半球面面积$S$成正比，则有


$$
\\frac{dV}{dt} = −kS  ⇒  \\frac{dV}{dr} ⋅ \\frac{dr}{dt} = −kS  ⇒  \\frac{dr}{dt} = −k.
$$

积分得$r = −kt + c$，把$r∣_{t=0} = r_{0}$代入得$c = r_{0}$，所以$r = −kt + r_{0}$。
又半径为$r_{0}$的雪堆在开始融化的 3 小时内，融化了其体积的$\\frac{7}{8}$，即$V∣_{t=3} = \\frac{1}{8}V∣_{t=0}$。以$V$的公式代入上式，得到


$$
\\frac{2}{3}π(−3k + r_{0})3 = \\frac{1}{8} ⋅ \\frac{2}{3}πr_{0}^{3}  ⇒  k = \\frac{1}{6}r_{0},
$$

于是$r = −kt + r_{0} = r_{0} (1 - \\frac{t}{6})$。当$t = 6$时$r = 0$，雪堆全部融化需 6 小时。
', 9, 'Mogullzr', '2026-01-29 14:12:01', 9, 'Mogullzr', '2026-01-29 14:12:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1423');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1423');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1074', '1423');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1424, '2001年考研数学卷2第18题', '简单', '考研数学2001年卷2真题', '设$f(x)$在区间$\\lbrack −a, a \\rbrack$（$a > 0$）上具有二阶连续导数，$f(0) = 0$．(1) 写出$f(x)$的带拉格朗日余项的一阶麦克劳林公式；(2) 证明在$\\lbrack −a, a \\rbrack$上至少存在一点$η$，使$a^{3}f^{′′}(η) = 3 \\int_{−a}^{a} f(x)dx$．', '[]', '
(1)$f(x) = f^{′}(0)x + \\frac{f^{′′}(ξ)}{2}x^{2}$，其中$ξ$在 0 与$x$之间。
(2) 在$\\lbrack −a, a \\rbrack$上至少存在一点$η$，使$a^{3}f^{′′}(η) = 3 \\int_{−a}^{a} f(x) dx$。
', '
(1) 由于$f(x)$在$\\lbrack −a, a \\rbrack$上具有二阶连续导数，且$f(0) = 0$，根据带拉格朗日余项的一阶麦克劳林公式，有


$$
f(x) = f(0) + f^{′}(0)x + \\frac{f^{′′}(ξ)}{2!}x^{2} = f^{′}(0)x + \\frac{f^{′′}(ξ)}{2}x^{2},
$$

其中$ξ$在 0 与$x$之间。
(2) 将$f(x)$的麦克劳林公式从$−a$到$a$积分，得到

$$
\\int_{−a}^{a} f(x) dx = \\int_{−a}^{a} f^{′}(0)x dx + \\frac{1}{2} \\int_{−a}^{a} f^{′′}(ξ)x^{2} dx = \\frac{1}{2} \\int_{−a}^{a} f^{′′}(ξ)x^{2} dx.
$$

因为$f^{′′}(x)$在$\\lbrack −a, a \\rbrack$上连续，所以$f^{′′}(x)$在$\\lbrack −a, a \\rbrack$上存在最大值$M$和最小值$m$，因此

$$
\\frac{1}{3}ma^{3} = \\frac{1}{2}m \\int_{−a}^{a} x^{2} dx ≤ \\frac{1}{2} \\int_{−a}^{a} f^{′′}(ξ)x^{2} dx ≤ \\frac{1}{2}M \\int_{−a}^{a} x^{2} dx = \\frac{Ma^{3}}{3},
$$

从而

$$
m ≤ \\frac{3}{a^{3}} \\int_{−a}^{a} f(x) dx ≤ M.
$$

由连续函数介值定理知，存在$η ∈  \\lbrack −a, a \\rbrack$，使

$$
f^{′′}(η) = \\frac{3}{a^{3}} \\int_{−a}^{a} f(x) dx  ⟺  a^{3}f^{′′}(η) = 3 \\int_{−a}^{a} f(x) dx.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:01', 9, 'Mogullzr', '2026-01-29 14:12:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1424');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1424');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1424');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1425, '2001年考研数学卷2第19题', '简单', '考研数学2001年卷2真题', '已知矩阵$A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 1 & 0 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{ccc}
0 & 1 & 1 \\\\
1 & 0 & 1 \\\\
1 & 1 & 0 \\\\
\\end{array} \\right)$．且矩阵$X$满足
$$
AXA + BXB = AXB + BXA + E,
$$
其中$E$是$3$阶单位矩阵，求$X$．', '[]', '

$$
X = \\left( \\begin{array}{ccc}
1 & 2 & 5 \\\\
0 & 1 & 2 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

', '
由题设的关系式可得$(A - B)X(A - B) = E$。其中


$$
A - B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 1 & 0 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right) - \\left( \\begin{array}{ccc}
0 & 1 & 1 \\\\
1 & 0 & 1 \\\\
1 & 1 & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & −1 & −1 \\\\
0 & 1 & −1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

因为$∣A - B∣ = 1 \\neq 0$，故知矩阵$A - B$可逆，求其逆矩阵得


$$
(A - B)−1 = \\left( \\begin{array}{ccc}
1 & 1 & 2 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) ,
$$

于是，在等式$(A - B)X(A - B) = E$两边左乘和右乘$(A - B)−1$可得


$$
X =  \\lbrack (A - B)−1 \\rbrack 2 = \\left( \\begin{array}{ccc}
1 & 1 & 2 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 1 & 2 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 2 & 5 \\\\
0 & 1 & 2 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:12:01', 9, 'Mogullzr', '2026-01-29 14:12:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1425');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1425');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1425');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1426, '2001年考研数学卷2第20题', '简单', '考研数学2001年卷2真题', '设$α_{1}, α_{2}, α_{3}, α_{4}$为线性方程组$AX = 0$的一个基础解系，
$$
β_{1} = α_{1} + tα_{2}, β_{2} = α_{2} + tα_{3}, β_{3} = α_{3} + tα_{4}, β_{4} = α_{4} + tα_{1}.
$$
试问实数$t$满足什么关系时，$β_{1}, β_{2}, β_{3}, β_{4}$也为$AX = 0$的一个基础解系．', '[]', '$t \\neq ±1$
', '已知$α_{1}, α_{2}, α_{3}, α_{4}$是线性方程组$AX = 0$的一个基础解系，因此它们线性无关且解空间的维数为4。$β_{1}, β_{2}, β_{3}, β_{4}$是解向量的线性组合，故它们也是解向量。要使得$β_{1}, β_{2}, β_{3}, β_{4}$成为基础解系，只需它们线性无关。
考虑线性组合$c_{1}β_{1} + c_{2}β_{2} + c_{3}β_{3} + c_{4}β_{4} = 0$，代入$β_{i}$的表达式：

$$
c_{1}(α_{1} + tα_{2}) + c_{2}(α_{2} + tα_{3}) + c_{3}(α_{3} + tα_{4}) + c_{4}(α_{4} + tα_{1}) = 0
$$

整理得：

$$
(c_{1} + c_{4}t)α_{1} + (c_{1}t + c_{2})α_{2} + (c_{2}t + c_{3})α_{3} + (c_{3}t + c_{4})α_{4} = 0
$$

由于$α_{1}, α_{2}, α_{3}, α_{4}$线性无关，系数必须为零：

$$
\\begin{cases} c_{1} + c_{4}t = 0 \\\\ c_{1}t + c_{2} = 0 \\\\ c_{2}t + c_{3} = 0 \\\\ c_{3}t + c_{4} = 0 \\end{cases}
$$

该齐次线性方程组的系数矩阵为：

$$
M = \\left( \\begin{array}{cccc}
1 & 0 & 0 & t \\\\
t & 1 & 0 & 0 \\\\
0 & t & 1 & 0 \\\\
0 & 0 & t & 1 \\\\
\\end{array} \\right)
$$

计算行列式：

$$
∣M∣ = \\begin{vmatrix}
1 & 0 & 0 & t\\\\
t & 1 & 0 & 0\\\\
0 & t & 1 & 0\\\\
0 & 0 & t & 1
\\end{vmatrix} = 1 - t^{4}
$$

当$∣M∣ \\neq 0$时，方程组只有零解，即$β_{1}, β_{2}, β_{3}, β_{4}$线性无关。因此，要求$1 - t^{4} \\neq 0$，即$t^{4} \\neq 1$，在实数范围内等价于$t \\neq ±1$。
当$t = ±1$时，可验证$β_{1}, β_{2}, β_{3}, β_{4}$线性相关，故不构成基础解系。因此，当且仅当$t \\neq ±1$时，$β_{1}, β_{2}, β_{3}, β_{4}$为$AX = 0$的一个基础解系。
', 9, 'Mogullzr', '2026-01-29 14:12:01', 9, 'Mogullzr', '2026-01-29 14:12:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1426');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1426');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1426');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1427, '2001年考研数学卷3第1题', '简单', '考研数学2001年卷3真题', '设生产函数为$Q = AL^{α}K^{β}$，其中$Q$是产出量，$L$是劳动投入量，$K$是资本投入量，
而$A$,$α$,$β$均为大于零的参数，则当$Q = 1$时$K$关于$L$的弹性为 ______．', '[]', '$−\\frac{α}{β}$
', '
当$Q = 1$时，有$AL^{α}K^{β} = 1$，两边取对数再对$L$求导得

$$
\\frac{α}{L} + \\frac{β}{K}\\frac{dK}{dL} = 0  ⇒  \\frac{EK}{EL} = \\frac{L}{K}\\frac{dK}{dL} = −\\frac{α}{β}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:04', 9, 'Mogullzr', '2026-01-29 14:12:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1427');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1427');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1427');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1428, '2001年考研数学卷3第2题', '简单', '考研数学2001年卷3真题', '某公司每年的工资总额比上一年增加$20%$的基础上再追加$2$百万．若以$W_{t}$表示第$t$年的工资总额（单位：百万元），则$W_{t}$满足的差分方程是', '[]', '$W_{t} = 1.2W_{t-1} + 2$
', '
根据问题描述，第$t$年的工资总额$W_{t}$是在第$t - 1$年工资总额$W_{t-1}$的基础上增加$20%$后再追加$2$百万。
由于$W_{t}$的单位是百万元，追加的$2$百万相当于$2$百万元。
因此，增加$20%$的部分为$0.2W_{t-1}$，整体关系可表示为


$$
W_{t} = W_{t-1} + 0.2W_{t-1} + 2,
$$

简化后得到差分方程


$$
W_{t} = 1.2W_{t-1} + 2.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:04', 9, 'Mogullzr', '2026-01-29 14:12:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1428');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1428');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1428');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1429, '2001年考研数学卷3第3题', '简单', '考研数学2001年卷3真题', '设矩阵$A = \\left( \\begin{array}{cccc}
k & 1 & 1 & 1 \\\\
1 & k & 1 & 1 \\\\
1 & 1 & k & 1 \\\\
1 & 1 & 1 & k \\\\
\\end{array} \\right)$，且秩$r(A) = 3$，则$k =$______．', '[]', '-3
', '
对$A$进行初等变换得

$$
A = \\left( \\begin{array}{cccc}
k & 1 & 1 & 1 \\\\
1 & k & 1 & 1 \\\\
1 & 1 & k & 1 \\\\
1 & 1 & 1 & k \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
k & 1 & 1 & 1 \\\\
1 - k & k - 1 & 0 & 0 \\\\
1 - k & 0 & k - 1 & 0 \\\\
1 - k & 0 & 0 & k - 1 \\\\
\\end{array} \\right)
$$



$$
→ \\left( \\begin{array}{cccc}
k + 3 & 1 & 1 & 1 \\\\
0 & k - 1 & 0 & 0 \\\\
0 & 0 & k - 1 & 0 \\\\
0 & 0 & 0 & k - 1 \\\\
\\end{array} \\right) .
$$

可见只有当$k = −3$时，秩$r(A) = 3$。
', 9, 'Mogullzr', '2026-01-29 14:12:04', 9, 'Mogullzr', '2026-01-29 14:12:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1429');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1429');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '1429');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1430, '2001年考研数学卷3第4题', '简单', '考研数学2001年卷3真题', '设随机变量$X, Y$的数学期望分别为$−2$和$2$，方差分别为$1$和$4$，而相关系数为$−0.5$．
则根据切比雪夫不等式$P \\{∣X + Y∣ ≥ 6\\} ≤$______．', '[]', '$\\frac{1}{12}$
', '
应填$\\frac{1}{12}$。先求出随机变量$X + Y$的期望和方差：

$$
E(X + Y) = EX + EY = −2 + 2 = 0,
$$


$$
Cov(X, Y) = ρ(X, Y)\\sqrt{DX}\\sqrt{DY} = (−0.5) × \\sqrt{1} × \\sqrt{4} = −1,
$$


$$
D(X + Y) = DX + 2 Cov(X, Y) + DY = 1 + 2 × (−1) + 4 = 3.
$$

所以由切比雪夫不等式：

$$
P \\{∣X + Y∣ ⩾ 6\\} = P \\{∣X + Y - E(X + Y)∣ ⩾ 6\\} ⩽ \\frac{D(X + Y)}{6^{2}} = \\frac{3}{36} = \\frac{1}{12}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:04', 9, 'Mogullzr', '2026-01-29 14:12:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1430');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1430');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1430');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1431, '2001年考研数学卷3第5题', '简单', '考研数学2001年卷3真题', '设总体$X$服从正态分布$N(0, 0.2^{2})$，而$X_{1}, X_{2}, ⋯ X_{15}$是来自总体$X$的简单随机样本，
则随机变量$Y = \\frac{X_{1}^{2}+⋯+X_{10}^{2}}{2(X_{11}^{2}+⋯+X_{15}^{2})}$服从 ______ 分布，参数为 ______．', '[]', '$F$分布，参数为$10$和$5$
', '
应填$F$和$(10, 5)$。因为$X_{i} ∼ N(0, 2^{2})$，所以$\\frac{X_{i}}{2} ∼ N(0, 1)$。从而根据卡方分布的定义有

$$
U = (\\frac{X_{1}}{2})^{2} + ⋯ + (\\frac{X_{10}}{2})^{2} ∼ χ^{2}(10),
$$


$$
V = (\\frac{X_{11}}{2})^{2} + ⋯ + (\\frac{X_{15}}{2})^{2} ∼ χ^{2}(5).
$$

由样本的独立性可知，$U$与$V$相互独立。根据$F$分布的定义

$$
Y = \\frac{X_{1}^{2} + ⋯ + X_{10}^{2}}{2(X_{11}^{2} + ⋯ + X_{15}^{2})} = \\frac{U/10}{V/5} ∼ F(10, 5).
$$

故$Y$服从第一个自由度为 10，第二个自由度为 5 的$F$分布。
', 9, 'Mogullzr', '2026-01-29 14:12:04', 9, 'Mogullzr', '2026-01-29 14:12:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1431');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1431');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1432, '2001年考研数学卷3第6题', '简单', '考研数学2001年卷3真题', '设函数$f(x)$的导数在$x = a$处连续，又$\\lim_{x→a} \\frac{f^{′}(x)}{x-a} = −1$，则', '[''$x = a$是$f(x)$的极小值点．'', ''$x = a$是$f(x)$的极大值点．'', ''$(a, f(a))$是曲线$y = f(x)$的拐点．'', ''$x = a$不是$f(x)$的极值点，$(a, f(a))$也不是曲线$y = f(x)$的拐点．'']', "['B']", '
由极限$\\lim_{x→a} \\frac{f^{′}(x)}{x-a} = −1$以及$f^{′}(x)$在$x = a$处连续可知，当$x → a$时分母$x - a → 0$，因此分子$f^{′}(x) → 0$，否则极限不为有限值，于是$f^{′}(a) = 0$。考虑$f^{′′}(a)$的定义：

$$
f^{′′}(a) = \\lim_{x→a} \\frac{f^{′}(x) - f^{′}(a)}{x - a} = \\lim_{x→a} \\frac{f^{′}(x)}{x - a} = −1,
$$
因此$f^{′′}(a) = −1 < 0$。由于$f^{′}(a) = 0$且$f^{′′}(a) < 0$，根据极值的二阶导数判别法，$x = a$是$f(x)$的极大值点。选项 A、C、D 均不正确，故正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:12:04', 9, 'Mogullzr', '2026-01-29 14:12:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1432');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1432');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1432');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1433, '2001年考研数学卷3第7题', '简单', '考研数学2001年卷3真题', '设函数$g(x) = \\int_{0}^{x} f(u)du$，其中$f(x) = \\begin{cases} \\frac{1}{2}(x^{2} + 1) & 0 ≤ x ≤ 1 \\\\ \\frac{1}{3}(x - 1) & 1 ≤ x ≤ 2. \\end{cases}$则$g(x)$在区间$(0, 2)$内', '[''无界．'', ''递减．'', ''不连续．'', ''连续．'']', "['D']", '
函数$g(x) = \\int_{0}^{x} f(u) du$，其中$f(x)$是分段函数。
首先，计算$g(x)$的表达式：
$$
g(x) = \\int_{0}^{x} \\frac{1}{2}(u^{2} + 1) du = \\frac{x^{3}}{6} + \\frac{x}{2}.
$$
在$x = 1$处，左极限

$$
g(1^{-}) = \\frac{1}{6} + \\frac{1}{2} = \\frac{2}{3},
$$
右极限

$$
g(1^{+}) = \\frac{2}{3} + 0 = \\frac{2}{3},
$$
且$g(1) = \\frac{2}{3}$，因此$g(x)$在$x = 1$处连续。由于$g(x)$在$\\lbrack 0, 1 \\rbrack$和$\\lbrack 1, 2 \\rbrack$上连续，且在$x = 1$处连续，故$g(x)$在$\\lbrack 0, 2 \\rbrack$上连续，进而在$(0, 2)$内连续。选项 A：$g(x)$在闭区间$\\lbrack 0, 2 \\rbrack$上连续，故有界，不是无界。选项 B：$g^{′}(x) = f(x)$，在$\\lbrack 0, 1 \\rbrack$上$f(x) = \\frac{1}{2}(x^{2} + 1) > 0$，在$\\lbrack 1, 2 \\rbrack$上$f(x) = \\frac{1}{3}(x - 1) ≥ 0$，故$g(x)$递增，不是递减。选项 C：如上所述，$g(x)$连续，故“不连续”错误。因此，正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:12:05', 9, 'Mogullzr', '2026-01-29 14:12:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1433');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1433');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1433');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1434, '2001年考研数学卷3第8题', '简单', '考研数学2001年卷3真题', '设$A = \\left( \\begin{array}{cccc}
a_{11} & a_{12} & a_{13} & a_{14} \\\\
a_{21} & a_{22} & a_{23} & a_{24} \\\\
a_{31} & a_{32} & a_{33} & a_{34} \\\\
a_{41} & a_{42} & a_{43} & a_{44} \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cccc}
a_{14} & a_{13} & a_{12} & a_{11} \\\\
a_{24} & a_{23} & a_{22} & a_{21} \\\\
a_{34} & a_{33} & a_{32} & a_{31} \\\\
a_{44} & a_{43} & a_{42} & a_{41} \\\\
\\end{array} \\right)$，$P_{1} = \\left( \\begin{array}{cccc}
0 & 0 & 0 & 1 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 1 & 0 \\\\
1 & 0 & 0 & 0 \\\\
\\end{array} \\right)$，$P_{2} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 0 & 1 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right)$，其中$A$可逆，则$B^{−1}$等于', '[''$A^{−1}P_{1}P_{2}$．'', ''$P_{1}A^{−1}P_{2}$．'', ''$P_{1}P_{2}A^{−1}$．'', ''$P_{2}A^{−1}P_{1}$．'']', "['C']", '
通过观察矩阵$B$与$A$的关系，发现$B$的每一行都是$A$对应行的列顺序反转。具体而言，$B$可以通过$A$右乘置换矩阵得到。首先右乘$P_{2}$交换第二和第三列，然后右乘$P_{1}$交换第一和第四列，即$B = AP_{2}P_{1}$。由于$A$可逆，且$P_{1}$和$P_{2}$为置换矩阵（其逆矩阵等于自身），则
$$
B^{−1} = (AP_{2}P_{1})−1 = P_{1}^{−1}P_{2}^{−1}A^{−1} = P_{1}P_{2}A^{−1}.
$$
因此，$B^{−1} = P_{1}P_{2}A^{−1}$，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:12:05', 9, 'Mogullzr', '2026-01-29 14:12:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1434');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1434');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1434');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1435, '2001年考研数学卷3第9题', '简单', '考研数学2001年卷3真题', '设$A$是$n$阶矩阵，$α$是$n$维列向量．若秩$r \\left( \\begin{array}{cc}
A & α \\\\
α^{T} & 0 \\\\
\\end{array} \\right) = r(A)$，则线性方程组', '[''$AX = α$必有无穷多解．'', ''$AX = α$必有惟一解．'', ''$\\\\left( \\\\begin{array}{cc}\\nA & α \\\\\\\\\\nα^{T} & 0 \\\\\\\\\\n\\\\end{array} \\\\right) \\\\left( \\\\begin{array}{c}\\nX \\\\\\\\\\ny \\\\\\\\\\n\\\\end{array} \\\\right) = 0$仅有零解．'', ''$\\\\left( \\\\begin{array}{cc}\\nA & α \\\\\\\\\\nα^{T} & 0 \\\\\\\\\\n\\\\end{array} \\\\right) \\\\left( \\\\begin{array}{c}\\nX \\\\\\\\\\ny \\\\\\\\\\n\\\\end{array} \\\\right) = 0$必有非零解．'']', "['D']", '
给定秩条件$r \\left( \\begin{array}{cc}
A & α \\\\
α^{T} & 0 \\\\
\\end{array} \\right) = r(A)$，考虑分块矩阵

$$
B = \\left( \\begin{array}{cc}
A & α \\\\
α^{T} & 0 \\\\
\\end{array} \\right) ,
$$
其为$(n + 1) × (n + 1)$矩阵。由于

$$
r(B) = r(A) ≤ n < n + 1,
$$
即系数矩阵$B$的秩小于未知数个数，因此齐次方程组

$$
\\left( \\begin{array}{cc}
A & α \\\\
α^{T} & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
X \\\\
y \\\\
\\end{array} \\right) = 0
$$
必有非零解，故选项 D 正确。对于选项 A 和 B，方程组$AX = α$有解（因为存在向量$c$使得$Ac = α$且$α^{T}c = 0$），但解的唯一性取决于$A$的秩：若$r(A) = n$，则解唯一；若$r(A) < n$，则有无穷多解。因此 A 和 B 不一定成立。选项 C 声称仅有零解，与必有非零解矛盾，故错误。因此，正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:12:05', 9, 'Mogullzr', '2026-01-29 14:12:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1435');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1435');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1435');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1436, '2001年考研数学卷3第10题', '', '考研数学2001年卷3真题', '/problems/other/1396', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:05', 9, 'Mogullzr', '2026-01-29 14:12:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1437, '2001年考研数学卷3第11题', '简单', '考研数学2001年卷3真题', '设$u = f(x, y, z)$有连续的一阶偏导数，又函数$y = y(x)$及$z = z(x)$分别由下列两式确定：$e^{xy} - xy = 2$和$e^{x} = \\int_{0}^{x-z} \\frac{\\sin t}{t}dt$，求$\\frac{du}{dx}$．', '[]', '

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} - \\frac{y}{x}\\frac{∂f}{∂y} + \\frac{∂f}{∂z} (1 - e^{x}\\frac{x - z}{\\sin(x - z)})
$$

', '
给定$u = f(x, y, z)$，其中$y = y(x)$和$z = z(x)$由方程$e^{xy} - xy = 2$和$e^{x} = \\int_{0}^{x-z} \\frac{\\sin t}{t} dt$确定。通过链式法则，有：

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y}\\frac{dy}{dx} + \\frac{∂f}{∂z}\\frac{dz}{dx}
$$

首先，求$\\frac{dy}{dx}$。由方程$e^{xy} - xy = 2$两边对$x$求导，得：

$$
(ye^{xy} - y) + (xe^{xy} - x)\\frac{dy}{dx} = 0
$$

整理得：

$$
x(e^{xy} - 1)\\frac{dy}{dx} = −y(e^{xy} - 1)
$$

假设$e^{xy} - 1 \\neq 0$，解得：

$$
\\frac{dy}{dx} = −\\frac{y}{x}
$$

其次，求$\\frac{dz}{dx}$。由方程$e^{x} = \\int_{0}^{x-z} \\frac{\\sin t}{t} dt$两边对$x$求导，令$S(u) = \\int_{0}^{u} \\frac{\\sin t}{t} dt$，则$S^{′}(u) = \\frac{\\sin u}{u}$。于是：

$$
e^{x} = \\frac{\\sin(x - z)}{x - z} (1 - \\frac{dz}{dx})
$$

解得：

$$
\\frac{dz}{dx} = 1 - e^{x}\\frac{x - z}{\\sin(x - z)}
$$

将$\\frac{dy}{dx}$和$\\frac{dz}{dx}$代入链式法则公式，即得所求。
', 9, 'Mogullzr', '2026-01-29 14:12:05', 9, 'Mogullzr', '2026-01-29 14:12:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1437');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1438, '2001年考研数学卷3第12题', '简单', '考研数学2001年卷3真题', '已知$f(x)$在$(−∞, +∞)$内可导，且
$$
\\lim_{x→∞} f^{′}(x) = e,  \\lim_{x→∞} (\\frac{x + c}{x - c})^{x} = \\lim_{x→∞} \\lbrack f(x) - f(x - 1) \\rbrack ,
$$
求$c$的值．', '[]', '$c = \\frac{1}{2}$
', '
首先，计算极限$\\lim_{x→∞} (\\frac{x+c}{x-c})^{x}$。
令$L = \\lim_{x→∞} (\\frac{x+c}{x-c})^{x}$，取自然对数得：


$$
\\ln L = \\lim_{x→∞} x \\ln (\\frac{x + c}{x - c}) = \\lim_{x→∞} x \\ln (1 + \\frac{2c}{x - c})
$$

当$x → ∞$时，$\\ln (1 + \\frac{2c}{x-c}) ∼ \\frac{2c}{x-c}$，所以：


$$
\\ln L = \\lim_{x→∞} x ⋅ \\frac{2c}{x - c} = \\lim_{x→∞} \\frac{2cx}{x - c} = \\lim_{x→∞} \\frac{2c}{1 - \\frac{c}{x}} = 2c
$$

因此，$L = e^{2c}$。
其次，计算极限$\\lim_{x→∞} \\lbrack f(x) - f(x - 1) \\rbrack$。
由于$f(x)$在$(−∞, +∞)$内可导，根据拉格朗日中值定理，存在$ξ_{x} ∈ (x - 1, x)$使得：


$$
f(x) - f(x - 1) = f^{′}(ξ_{x}) ⋅ (x - (x - 1)) = f^{′}(ξ_{x})
$$

当$x → ∞$时，$ξ_{x} → ∞$，且已知$\\lim_{x→∞} f^{′}(x) = e$，因此：


$$
\\lim_{x→∞} \\lbrack f(x) - f(x - 1) \\rbrack  = \\lim_{x→∞} f^{′}(ξ_{x}) = e
$$

由题设条件，两个极限相等：


$$
e^{2c} = e
$$

解得$2c = 1$，即$c = \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:05', 9, 'Mogullzr', '2026-01-29 14:12:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1438');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1438');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1438');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1439, '2001年考研数学卷3第13题', '简单', '考研数学2001年卷3真题', '求二重积分$\\iint_{D} y \\lbrack 1 + xe^{\\frac{1}{2}(x^{2}+y^{2})} \\rbrack dxdy$的值，
其中$D$是由直线$y = x$，$y = −1$及$x = 1$围成的平面区域．', '[]', '-2/3
', '首先，将二重积分拆分为两部分：

$$
\\iint_{D} y \\lbrack 1 + xe^{\\frac{1}{2}(x^{2}+y^{2})} \\rbrack  dx dy = \\iint_{D} y dx dy + \\iint_{D} yxe^{\\frac{1}{2}(x^{2}+y^{2})} dx dy
$$

其中区域$D$是由直线$y = x$、$y = −1$和$x = 1$围成的三角形区域。
计算第一部分$\\iint_{D} y dx dy$。采用先对$y$后对$x$的积分顺序，$x$从$−1$到$1$，$y$从$−1$到$x$：

$$
\\int_{x=−1}^{1} \\int_{y=−1}^{x} y dy dx = \\int_{x=−1}^{1}  \\lbrack \\frac{1}{2}y^{2} \\rbrack _{y=−1}^{x} dx = \\int_{x=−1}^{1} \\frac{1}{2}(x^{2} - 1) dx = \\frac{1}{2} \\int_{−1}^{1}(x^{2} - 1) dx
$$

由于$x^{2} - 1$是偶函数，有：

$$
\\int_{−1}^{1} x^{2} dx = 2 \\int_{0}^{1} x^{2} dx = \\frac{2}{3},  \\int_{−1}^{1} 1 dx = 2
$$

所以：

$$
\\int_{−1}^{1}(x^{2} - 1) dx = \\frac{2}{3} - 2 = −\\frac{4}{3},  ∴ \\frac{1}{2} × (−\\frac{4}{3}) = −\\frac{2}{3}
$$

计算第二部分$\\iint_{D} yxe^{\\frac{1}{2}(x^{2}+y^{2})} dx dy$。采用先对$x$后对$y$的积分顺序，$y$从$−1$到$1$，$x$从$y$到$1$：

$$
\\int_{y=−1}^{1} \\int_{x=y}^{1} yxe^{\\frac{1}{2}(x^{2}+y^{2})} dx dy = \\int_{y=−1}^{1} ye^{\\frac{1}{2}y^{2}} (\\int_{x=y}^{1} xe^{\\frac{1}{2}x^{2}} dx) dy
$$

计算内层积分：

$$
∫ xe^{\\frac{1}{2}x^{2}} dx = e^{\\frac{1}{2}x^{2}},  ∴ \\int_{x=y}^{1} xe^{\\frac{1}{2}x^{2}} dx = e^{\\frac{1}{2}} - e^{\\frac{1}{2}y^{2}}
$$

代入得：

$$
\\int_{y=−1}^{1} ye^{\\frac{1}{2}y^{2}}(e^{\\frac{1}{2}} - e^{\\frac{1}{2}y^{2}}) dy = e^{\\frac{1}{2}} \\int_{−1}^{1} ye^{\\frac{1}{2}y^{2}} dy - \\int_{−1}^{1} ye^{y^{2}} dy
$$

由于$ye^{\\frac{1}{2}y^{2}}$和$ye^{y^{2}}$都是奇函数，在对称区间$\\lbrack −1, 1 \\rbrack$上的积分为零，因此第二部分为 0。
综上，二重积分的值为$−\\frac{2}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:12:06', 9, 'Mogullzr', '2026-01-29 14:12:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1439');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1439');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1439');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1440, '2001年考研数学卷3第14题', '简单', '考研数学2001年卷3真题', '已知抛物线$y = px^{2} + qx$（其中$p < 0$,$q > 0$）在第一象限与直线$x + y = 5$相切，
且此抛物线与$x$轴所围成的平面图形的面积为$S$．(1) 问$p$和$q$为何值时，$S$达到最大？(2) 求出此最大值．', '[]', '$p = −\\frac{4}{5}$，$q = 3$，$S_{max} = \\frac{225}{32}$
', '
依题意知，抛物线与$x$轴交点的横坐标为$x_{1} = 0$,$x_{2} = −\\frac{q}{p}$。根据定积分的定义，面积$S$为

$$
S = \\int_{0}^{−\\frac{q}{p}}(px^{2} + qx) dx =  \\lbrack \\frac{p}{3}x^{3} + \\frac{q}{2}x^{2} \\rbrack _{0}^{−\\frac{q}{p}} = \\frac{q^{3}}{6p^{2}}.
$$

因直线$x + y = 5$与抛物线$y = px^{2} + qx$相切，故它们有唯一公共点。由方程组

$$
\\begin{cases} x + y = 5 \\\\ y = px^{2} + qx \\end{cases}
$$

得$px^{2} + (q + 1)x - 5 = 0$。因为其公共解唯一，其判别式必为零，即

$$
Δ = (q + 1)2 - 4 ⋅ p ⋅ (−5) = (q + 1)2 + 20p = 0.
$$

解得$p = −\\frac{1}{20}(q + 1)2$。将$p$代入$S$中得

$$
S(q) = \\frac{q^{3}}{6p^{2}} = \\frac{200q^{3}}{3(q + 1)4}.
$$

根据函数除法的求导公式，

$$
S^{′}(q) = \\frac{200q^{2}(3 - q)}{3(q + 1)5}.
$$

令$S^{′}(q) = 0$，已知有$q > 0$，得唯一驻点$q = 3$。当$1 < q < 3$时，$S^{′}(q) > 0$；当$q > 3$时，$S^{′}(q) < 0$。于是当$q = 3$时，$S(q)$取唯一极大值，即最大值。从而最大值为$S = S(3) = \\frac{225}{32}$。
', 9, 'Mogullzr', '2026-01-29 14:12:06', 9, 'Mogullzr', '2026-01-29 14:12:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1440');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1440');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1440');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1441, '2001年考研数学卷3第15题', '简单', '考研数学2001年卷3真题', '设$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导，且满足$f(1) = k \\int_{0}^{\\frac{1}{3}} xe^{1-x}f(x)dx$（$k > 1$）．
证明：存在$ξ ∈ (0, 1)$，使得$f^{′}(ξ) = 2(1 - ξ^{−1})f(ξ)$．', '[]', '见解析
', '
由$f(1) = k \\int_{0}^{\\frac{1}{k}} xe^{1-x}f(x) dx$（$k > 1$）及积分中值定理，存在$η ∈ (0, \\frac{1}{k}) ⊂  \\lbrack 0, 1 \\rbrack$使得

$$
f(1) = k \\int_{0}^{\\frac{1}{k}} xe^{1-x}f(x) dx = ηe^{1-η}f(η)
$$

令$F(x) = xe^{−x}f(x)$，则由上式可得

$$
F(1) = e^{−1}f(1) = e^{−1}ηe^{1-η}f(η) = ηe^{−η}f(η) = F(η)
$$

那么$F(x)$在$\\lbrack η, 1 \\rbrack$上连续，在$(η, 1)$内可导，由罗尔中值定理知，至少存在一点$ξ ∈ (η, 1) ⊂  \\lbrack 0, 1 \\rbrack$，使得

$$
F^{′}(ξ) = e^{−ξ}f(ξ) + ξe^{−ξ}f^{′}(ξ) = 0,
$$

即

$$
f^{′}(ξ) = (1 - ξ^{−1})f(ξ).
$$

', 9, 'Mogullzr', '2026-01-29 14:12:06', 9, 'Mogullzr', '2026-01-29 14:12:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1441');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1441');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1441');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1442, '2001年考研数学卷3第16题', '简单', '考研数学2001年卷3真题', '已知$f_{n}(x)$满足$f_{n}^{′}(x) = f_{n}(x) + x^{n-1}e^{x}$（$n$为正整数）且$f_{n}(1) = \\frac{e}{n}$，
求函数项级数$\\sum_{i=1}^{∞} f_{n}(x)$之和．', '[]', '$−e^{x} \\ln(1 - x)$
', '
由已知条件$f_{n}^{′}(x) = f_{n}(x) + x^{n-1}e^{x}$，得其通解为

$$
f_{n}(x) = e^{∫ dx} (∫ x^{n-1}e^{x}e^{− ∫ dx} dx + C) = e^{x} (\\frac{x^{n}}{n} + C) ,
$$

由条件$f_{n}(1) = \\frac{e}{n}$，得$C = 0$，故$f_{n}(x) = \\frac{x^{n}e^{x}}{n}$。从而

$$
\\sum_{n=1}^{∞} f_{n}(x) = \\sum_{n=1}^{∞} \\frac{x^{n}e^{x}}{n} = e^{x} \\sum_{n=1}^{∞} \\frac{x^{n}}{n}
$$

记$S(x) = \\sum_{n=1}^{∞} \\frac{x^{n}}{n}$，则其收敛半径为$R = 1$，收敛域为$\\lbrack −1, 1)$。当$x ∈ (−1, 1)$时，有

$$
S^{′}(x) = (\\sum_{n=1}^{∞} \\frac{x^{n}}{n})^{′} = \\sum_{n=1}^{∞} (\\frac{x^{n}}{n})^{′} = \\sum_{n=1}^{∞} x^{n-1} = \\frac{1}{1 - x}
$$



$$
⇒ S(x) = S(0) + \\int_{0}^{x} S^{′}(x) dx = 0 + \\int_{0}^{x} \\frac{1}{1 - x} dx = − \\ln(1 - x).
$$

当$x = −1$时，$\\sum_{n=1}^{∞} \\frac{(−1)n}{n} = − \\ln 2$。级数在此点处收敛，而右边函数连续，因此成立的范围可扩大到$x = −1$处，即

$$
\\sum_{n=1}^{∞} \\frac{x^{n}}{n} = − \\ln(1 - x),  x ∈  \\lbrack −1, 1)
$$



$$
⇒ \\sum_{n=1}^{∞} f_{n}(x) = −e^{x} \\ln(1 - x),  x ∈  \\lbrack −1, 1).
$$

', 9, 'Mogullzr', '2026-01-29 14:12:06', 9, 'Mogullzr', '2026-01-29 14:12:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1442');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1442');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1442');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1443, '2001年考研数学卷3第17题', '简单', '考研数学2001年卷3真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & a \\\\
1 & a & 1 \\\\
a & 1 & 1 \\\\
\\end{array} \\right) , β = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−2 \\\\
\\end{array} \\right)$．已知线性方程组$Ax = β$有解但不唯一，试求：(1)$a$的值；(2) 正交矩阵$Q$，使$Q^{T}AQ$为对角矩阵．', '[]', '
(1)$a = −2$
(2) 正交矩阵$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{3}} & −\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & 0 & −\\frac{2}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\end{array} \\right)$
', '
(1) 线性方程组$Ax = β$有解但不唯一，因此系数矩阵$A$奇异，即$det(A) = 0$。计算行列式：


$$
det(A) = \\begin{vmatrix}
1 & 1 & a\\\\
1 & a & 1\\\\
a & 1 & 1
\\end{vmatrix} = −a^{3} + 3a - 2
$$

设$det(A) = 0$，得$a^{3} - 3a + 2 = 0$，解得$a = 1$或$a = −2$。
当$a = 1$时，$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，增广矩阵为$\\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & −2 \\\\
\\end{array} \\right)$，第三行与第一行矛盾，方程组无解。
当$a = −2$时，$A = \\left( \\begin{array}{ccc}
1 & 1 & −2 \\\\
1 & −2 & 1 \\\\
−2 & 1 & 1 \\\\
\\end{array} \\right)$，增广矩阵为$\\left( \\begin{array}{cccc}
1 & 1 & −2 & 1 \\\\
1 & −2 & 1 & 1 \\\\
−2 & 1 & 1 & −2 \\\\
\\end{array} \\right)$，行变换后得$\\left( \\begin{array}{cccc}
1 & 1 & −2 & 1 \\\\
0 & −3 & 3 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$，方程组有解且秩为 2，未知数为 3，故有无穷多解。因此$a = −2$。
(2) 当$a = −2$时，$A = \\left( \\begin{array}{ccc}
1 & 1 & −2 \\\\
1 & −2 & 1 \\\\
−2 & 1 & 1 \\\\
\\end{array} \\right)$。求特征值和特征向量：
特征多项式$det(A - λI) = −λ^{3} + 9λ = 0$，解得特征值$λ = 0, 3, −3$。
对应特征向量：
$λ = 0$：解$Ax = 0$，得$x_{1} = x_{2} = x_{3}$，特征向量$v_{1} = (1, 1, 1)T$。$λ = 3$：解$(A - 3I)x = 0$，得$x_{1} = −x_{3}, x_{2} = 0$，特征向量$v_{2} = (−1, 0, 1)T$。$λ = −3$：解$(A + 3I)x = 0$，得$x_{1} = x_{3}, x_{2} = −2x_{3}$，特征向量$v_{3} = (1, −2, 1)T$。
特征向量两两正交，单位化：$u_{1} = \\frac{v_{1}}{∥v_{1}∥} = (\\frac{1}{\\sqrt{3}}, \\frac{1}{\\sqrt{3}}, \\frac{1}{\\sqrt{3}})^{T}$$u_{2} = \\frac{v_{2}}{∥v_{2}∥} = (−\\frac{1}{\\sqrt{2}}, 0, \\frac{1}{\\sqrt{2}})^{T}$$u_{3} = \\frac{v_{3}}{∥v_{3}∥} = (\\frac{1}{\\sqrt{6}}, −\\frac{2}{\\sqrt{6}}, \\frac{1}{\\sqrt{6}})^{T}$
正交矩阵$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{3}} & −\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & 0 & −\\frac{2}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\end{array} \\right)$，使得$Q^{T}AQ = diag(0, 3, −3)$。
', 9, 'Mogullzr', '2026-01-29 14:12:06', 9, 'Mogullzr', '2026-01-29 14:12:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1443');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1443');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1443');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1444, '2001年考研数学卷3第18题', '简单', '考研数学2001年卷3真题', '设$A$为$n$阶实对称矩阵，秩$r(A) = n$，$A_{ij}$是$A = (a_{ij})_{n×n}$中元素$a_{ij}$的代数余子式($i, j = 1, 2, ⋯  , n$)，
二次型$f(x_{1}, x_{2}, ⋯ x_{n}) = \\sum_{i=1}^{n} \\sum_{j=1}^{n} \\frac{A_{ij}}{A}x_{i}x_{j}.$(1) 记$A = (x_{1}, x_{2}, ⋯ x_{n})$，把$f(x_{1}, x_{2}, ⋯ x_{n}) = \\sum_{i=1}^{n} \\sum_{j=1}^{n} \\frac{A_{ij}}{A}x_{i}x_{j}$写成矩阵形式，并证明二次型$f(X)$的矩阵为$A^{−1}$；(2) 二次型$g(X) = X^{T}AX$与$f(X)$的规范形是否相同？说明理由．', '[]', '
(1) 二次型$f(X)$的矩阵形式为$f(X) = X^{T}A^{−1}X$，且二次型$f(X)$的矩阵为$A^{−1}$。
(2) 二次型$g(X) = X^{T}AX$与$f(X) = X^{T}A^{−1}X$的规范形相同。
', '
(I) 由题设条件，$A$是可逆的实对称矩阵，故$(A^{−1})T = (A^{T})−1 = A^{−1}$，因此由实对称的定义知，$A^{−1}$也是实对称矩阵。又由伴随矩阵的性质$A^{∗}A = ∣A∣E$，知$A^{∗} = ∣A∣A^{−1}$，因此$A^{∗}$也是实对称矩阵，$(A^{∗})T = A^{∗}$，故有

$$
\\begin{array}{ccccccc}
f(x_{1}, x_{2}, ⋯  , x_{n}) & = \\sum_{i=1}^{n} \\sum_{j=1}^{n} \\frac{A_{ij}}{∣A∣}x_{i}x_{j} &  &  &  &  &  \\\\
 & \\begin{array}{cccc}
A_{11} & A_{12} &  & A_{1n} \\\\
 &  & ⋯ &  \\\\
A_{21} & A_{22} &  & A_{2n} \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
A_{n1} & A_{n2} &  & A_{nn} \\\\
 &  & ⋯ &  \\\\
\\end{array} &  &  &  &  &  \\\\
 &  & A_{11} & A_{12} &  & A_{1n} & x_{1} \\\\
 &  &  &  & ⋯ &  &  \\\\
 &  & A_{21} & A_{22} &  & A_{2n} & x_{2} \\\\
 &  &  &  & ⋯ &  &  \\\\
 &  & ⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 & = X^{T}\\frac{(A^{∗})T}{∣A∣}X &  &  &  &  &  \\\\
 &  &  &  & ⋱ &  &  \\\\
 &  & A_{n1} & A_{n2} &  & A_{nn} & x_{n} \\\\
 &  &  &  & ⋯ &  &  \\\\
 & = X^{T}A^{−1}X. &  &  &  &  &  \\\\
\\end{array}
$$

(II) 因为$(A^{−1})TAA^{−1} = (A^{T})−1E = A^{−1}$，所以由合同的定义知$A$与$A^{−1}$合同。因此可知，$g(X) = X^{T}AX$与$f(X)$有相同的规范形。
', 9, 'Mogullzr', '2026-01-29 14:12:07', 9, 'Mogullzr', '2026-01-29 14:12:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1444');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1444');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1444');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1445, '2001年考研数学卷3第19题', '简单', '考研数学2001年卷3真题', '生产线生产的产品成箱包装，每箱的重量是随机的，假设每箱平均重$50$千克，标准差为$5$千克．
若用最大载重量为$5$吨的汽车承运，试利用中心极限定理说明每辆车最多可以装多少箱，
才能保障不超载的概率大于$0.977$（$Φ(2) = 0.977$，其中$Φ(x)$是标准正态分布函数）．', '[]', '98 箱
', '
设$X_{i}$（$i = 1, 2, ⋯ n$）是装运的第$i$箱的重量（单位：千克），$n$是所求箱数。
由题设，可以将$X_{1}, X_{2}, ⋯  , X_{n}$视为独立同分布的随机变量，而$n$箱产品的总重量$S_{n} = X_{1} + X_{2} + ⋯ + X_{n}$是独立同分布随机变量之和。
由条件有$E(X_{i}) = 50$，$\\sqrt{D(X_{i})} = 5$，所以

$$
E(S_{n}) = E(X_{1} + X_{2} + ⋯ + X_{n}) = EX_{1} + EX_{2} + ⋯ + EX_{n} = 50n,
$$



$$
D(S_{n}) = D(X_{1} + X_{2} + ⋯ + X_{n}) = DX_{1} + DX_{2} + ⋯ + DX_{n} = 25n.
$$

则根据列维—林德柏格中心极限定理，知$S_{n}$近似服从正态分布$N(50n, 25n)$，箱数$n$决定于条件

$$
\\begin{array}{cc}
P\\{S_{n} ≤ 5000\\} & = P \\{\\frac{S_{n} - 50n}{5\\sqrt{n}} ≤ \\frac{5000 - 50n}{5\\sqrt{n}}\\} \\\\
 & ≈ Φ (\\frac{1000 - 10n}{\\sqrt{n}}) \\\\
\\end{array}
$$

由此得$\\frac{1000 - 10n}{\\sqrt{n}} > 2$，从而$n < 98.0199$，即最多可以装 98 箱。
', 9, 'Mogullzr', '2026-01-29 14:12:07', 9, 'Mogullzr', '2026-01-29 14:12:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1445');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1081', '1445');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1446, '2001年考研数学卷3第20题', '简单', '考研数学2001年卷3真题', '设随机变量$X$和$Y$的联合分布是正方形$G = \\{(x, y)∣1 ≤ x ≤ 3, 1 ≤ y ≤ 3\\}$上的均匀分布，
试求随机变量$U = ∣X - Y∣$的概率密度$p(u)$．', '[]', '


$$
p(u) = \\begin{cases} \\frac{1}{2}(2 - u) & 0 ≤ u ≤ 2 \\\\ 0 & 其他 \\end{cases}
$$

', '
由题设条件$X$和$Y$是正方形$G = \\{(x, y) ∣ 1 ≤ x ≤ 3, 1 ≤ y ≤ 3\\}$上的均匀分布，则$X$和$Y$的联合密度为：

$$
f(x, y) = \\begin{cases} \\frac{1}{4} & 1 ≤ x ≤ 3, 1 ≤ y ≤ 3 \\\\ 0 & 其他. \\end{cases}
$$

由分布函数的定义：$F(u) = P\\{U ≤ u\\} = P\\{∣X - Y∣ ≤ u\\}$。当$u < 0$时，$F(u) = 0$；当$u ≥ 2$时，$F(u) = 1$。当$0 ≤ u < 2$时，

$$
F(u) = P\\{U ≤ u\\} = P\\{∣X - Y∣ ≤ u\\} = \\frac{1}{4}  \\lbrack 4 - (2 - u)2 \\rbrack  = 1 - \\frac{1}{4}(2 - u)2.
$$

于是随机变量$U$的概率密度为：

$$
p(u) = F^{′}(u) = \\begin{cases} \\frac{1}{2}(2 - u) & 0 < u < 2; \\\\ 0 & 其他. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:07', 9, 'Mogullzr', '2026-01-29 14:12:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1446');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1446');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1446');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1447, '2001年考研数学卷4第1题', '', '考研数学2001年卷4真题', '/problems/other/1427', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1448, '2001年考研数学卷4第2题', '简单', '考研数学2001年卷4真题', '设$z = e^{−x} - f(x - 2y)$，且当$y = 0$时，$z = x^{2}$，则$\\frac{∂z}{∂x} =$______．', '[]', '


$$
2(x - 2y) + e^{−x}(e^{2y} - 1)​
$$

', '
已知$z = e^{−x} - f(x - 2y)$，且当$y = 0$时，$z = x^{2}$。
代入$y = 0$得：


$$
z = e^{−x} - f(x) = x^{2}
$$

解得：


$$
f(x) = e^{−x} - x^{2}
$$

因此，


$$
f(x - 2y) = e^{−(x-2y)} - (x - 2y)2 = e^{−x+2y} - (x - 2y)2
$$

代入原式得：


$$
z = e^{−x} -  \\lbrack e^{−x+2y} - (x - 2y)2 \\rbrack  = e^{−x} - e^{−x+2y} + (x - 2y)2
$$

对$x$求偏导：


$$
\\frac{∂z}{∂x} = −e^{−x} - (−e^{−x+2y}) + 2(x - 2y) = −e^{−x} + e^{−x+2y} + 2(x - 2y)
$$

整理得：


$$
\\frac{∂z}{∂x} = 2(x - 2y) + e^{−x}(e^{2y} - 1)
$$

故答案为$2(x - 2y) + e^{−x}(e^{2y} - 1)​$。
', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1448');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1448');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1448');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1449, '2001年考研数学卷4第3题', '简单', '考研数学2001年卷4真题', '设行列式$D = \\begin{vmatrix}
3 & 0 & 4 & 0\\\\
2 & 2 & 2 & 2\\\\
0 & −7 & 0 & 0\\\\
5 & 3 & −2 & 2
\\end{vmatrix}$，则第$4$行各元素余子式之和的值为 ______．', '[]', '-28
', '
根据代数余子式的定义：$A_{41} = (−1)4+1M_{41} = −M_{41}$$A_{42} = (−1)4+2M_{42} = M_{42}$$A_{43} = (−1)4+3M_{43} = −M_{43}$$A_{44} = (−1)4+4M_{44} = M_{44}$
所以：

$$
M_{41} + M_{42} + M_{43} + M_{44} = −A_{41} + A_{42} - A_{43} + A_{44}
$$

根据行列式展开定理，这个和等于将原行列式$D$的第4行元素替换为$−1, 1, −1, 1$后的行列式的值：

$$
M_{41} + M_{42} + M_{43} + M_{44} = \\begin{vmatrix}
3 & 0 & 4 & 0\\\\
2 & 2 & 2 & 2\\\\
0 & −7 & 2 & 0\\\\
−1 & 1 & −1 & 1
\\end{vmatrix}
$$

计算这个行列式：

$$
\\begin{vmatrix}
3 & 0 & 4 & 0\\\\
2 & 2 & 2 & 2\\\\
0 & −7 & 2 & 0\\\\
−1 & 1 & −1 & 1
\\end{vmatrix} = 2 \\begin{vmatrix}
3 & 0 & 4 & 0\\\\
1 & 1 & 1 & 1\\\\
0 & −7 & 2 & 0\\\\
−1 & 1 & −1 & 1
\\end{vmatrix}
$$

将第二行乘以$\\frac{1}{2}$，行列式值乘以2。
继续计算：

$$
= 2 \\begin{vmatrix}
3 & 0 & 4 & 0\\\\
1 & 1 & 1 & 1\\\\
0 & −7 & 2 & 0\\\\
−2 & 0 & −2 & 0
\\end{vmatrix}
$$

将第四行加上第一行，第四列全为0。

$$
= 2 \\begin{vmatrix}
3 & 0 & 4\\\\
0 & −7 & 2\\\\
−2 & 0 & −2
\\end{vmatrix}
$$

按第四列展开，只剩前3×3行列式。

$$
= 2 \\left( \\begin{array}{cc}
−7 & 2 \\\\
0 & −2 \\\\
\\end{array} \\right)
$$


$$
= 2  \\lbrack 3 ⋅ (14) + 4 ⋅ (14) \\rbrack
$$


$$
= 2  \\lbrack 42 - 56 \\rbrack
$$


$$
= 2 ⋅ (−14) = −28
$$

所以，第4行各元素余子式之和的值为$−28$。
最终答案：$−28​$
', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1449');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '1449');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1450, '2001年考研数学卷4第4题', '', '考研数学2001年卷4真题', '/problems/other/1429', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1451, '2001年考研数学卷4第5题', '', '考研数学2001年卷4真题', '/problems/other/1430', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1452, '2001年考研数学卷4第6题', '', '考研数学2001年卷4真题', '/problems/other/1432', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1453, '2001年考研数学卷4第7题', '', '考研数学2001年卷4真题', '/problems/other/1433', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1454, '2001年考研数学卷4第8题', '', '考研数学2001年卷4真题', '/problems/other/1434', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1455, '2001年考研数学卷4第9题', '简单', '考研数学2001年卷4真题', '对于任意二事件$A$和$B$，与$A ∪ B = B$不等价的是', '[''$A ⊂ B$．'', ''$\\\\bar{B} ⊂ \\\\bar{A}$．'', ''$A\\\\bar{B} = ∅$．'', ''$\\\\bar{A}B = ∅$．'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:12:09', 9, 'Mogullzr', '2026-01-29 14:12:09', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1455');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1455');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1456, '2001年考研数学卷4第10题', '', '考研数学2001年卷4真题', '/problems/other/1396', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1457, '2001年考研数学卷4第11题', '', '考研数学2001年卷4真题', '/problems/other/1437', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1458, '2001年考研数学卷4第12题', '', '考研数学2001年卷4真题', '/problems/other/1438', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1459, '2001年考研数学卷4第13题', '', '考研数学2001年卷4真题', '/problems/other/1439', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1460, '2001年考研数学卷4第14题', '简单', '考研数学2001年卷4真题', '某商品进价为$a$（元/件），根据以往经验，当销售价为$b$（元/件）时，销售量为$c$件（$a, b, c$均为正常数，且$b ≥ \\frac{4}{3}a$）。市场调查表明，销售价每下降 10%，销售量可增加 40%。现决定一次性降价，试问，当销售价定为多少时，可获得最大利润？并求出最大利润。', '[]', '当销售价定为$\\frac{5b+4a}{8}$元/件时，可获得最大利润，最大利润为$\\frac{c}{16b}(5b - 4a)2$元。
', '设销售价为$x$元/件，则根据市场调查，销售价每下降10%（相对于原销售价$b$），销售量增加40%。因此，销售价下降百分比为$r = \\frac{b-x}{b}$，销售量$q = c(1 + 4r) = c ⋅ \\frac{5b-4x}{b}$。
利润函数为：

$$
L = (x - a) ⋅ q = (x - a) ⋅ c ⋅ \\frac{5b - 4x}{b} = \\frac{c}{b}(x - a)(5b - 4x).
$$

这是一个关于$x$的二次函数，且二次项系数为负，故存在最大值。通过求顶点坐标，可得最大利润对应的销售价：

$$
x^{∗} = \\frac{5b + 4a}{8}.
$$

代入利润函数，计算最大利润：

$$
\\begin{array}{cc}
L_{max} & = \\frac{c}{b} (\\frac{5b + 4a}{8} - a) (5b - 4 ⋅ \\frac{5b + 4a}{8}) \\\\
 & = \\frac{c}{b} ⋅ \\frac{5b - 4a}{8} ⋅ \\frac{5b - 4a}{2} \\\\
 & = \\frac{c}{16b}(5b - 4a)2. \\\\
\\end{array}
$$

由于$b ≥ \\frac{4}{3}a$，有$5b - 4a > 0$，且$x^{∗} ≤ b$和$x^{∗} ≥ a$均成立，故该解有效。
', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1460');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1460');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1460');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1461, '2001年考研数学卷4第15题', '简单', '考研数学2001年卷4真题', '设$f(x)$在区间$\\lbrack 0.1 \\rbrack$上连续，在$(0, 1)$内可导，且满足$f(1) = 3 \\int_{0}^{1/3} e^{1-x^{2}}f(x)dx$．
证明至少存在一点$ξ ∈ (0, 1)$，使得$f^{′}(ξ) = 2ξf(ξ)$．', '[]', '见解析
', '令$g(x) = e^{−x^{2}}f(x)$，则$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导，且

$$
g^{′}(x) = e^{−x^{2}} \\lbrack f^{′}(x) - 2xf(x) \\rbrack .
$$

由题设条件$f(1) = 3 \\int_{0}^{1/3} e^{1-x^{2}}f(x)dx$，两边同乘$e^{−1}$得

$$
e^{−1}f(1) = 3 \\int_{0}^{1/3} e^{−x^{2}}f(x)dx,
$$

即

$$
g(1) = 3 \\int_{0}^{1/3} g(x)dx.
$$

由积分中值定理，存在$c ∈  \\lbrack 0, 1/3 \\rbrack$，使得

$$
\\int_{0}^{1/3} g(x)dx = \\frac{1}{3}g(c),
$$

所以

$$
g(1) = 3 ⋅ \\frac{1}{3}g(c) = g(c).
$$

因此$g(c) = g(1)$。在区间$\\lbrack c, 1 \\rbrack$上应用罗尔定理，存在$ξ ∈ (c, 1) ⊂ (0, 1)$，使得$g^{′}(ξ) = 0$，即

$$
e^{−ξ^{2}} \\lbrack f^{′}(ξ) - 2ξf(ξ) \\rbrack  = 0,
$$

故$f^{′}(ξ) = 2ξf(ξ)$。证毕。
', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1461');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1461');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1461');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1462, '2001年考研数学卷4第16题', '简单', '考研数学2001年卷4真题', '设函数$f(x)$在$(0, +∞)$内连续，$f(1) = \\frac{5}{2}$，且对所有$x, t ∈ (0, +∞)$，满足条件
$$
\\int_{1}^{xt} f(u)du = t \\int_{1}^{x} f(u)du + x \\int_{1}^{t} f(u)du.
$$
求$f(x)$．', '[]', '

$$
f(x) = \\frac{5}{2}(1 + \\ln x)
$$

', '设$F(x) = \\int_{1}^{x} f(u) du$，则原方程化为：

$$
F(xt) = tF(x) + xF(t)
$$

对两边关于$t$求导（视$x$为常数）：

$$
xf(xt) = F(x) + xf(t)
$$

令$t = 1$，代入$f(1) = \\frac{5}{2}$：

$$
xf(x) = F(x) + x ⋅ \\frac{5}{2}
$$

即：

$$
xf(x) = \\int_{1}^{x} f(u) du + \\frac{5}{2}x
$$

两边对$x$求导：

$$
f(x) + xf^{′}(x) = f(x) + \\frac{5}{2}
$$

简化得：

$$
xf^{′}(x) = \\frac{5}{2}
$$

解得：

$$
f^{′}(x) = \\frac{5}{2x}
$$

积分得：

$$
f(x) = \\frac{5}{2} \\ln x + C
$$

代入$f(1) = \\frac{5}{2}$：

$$
\\frac{5}{2} = \\frac{5}{2} \\ln 1 + C  ⟹  C = \\frac{5}{2}
$$

故：

$$
f(x) = \\frac{5}{2}(1 + \\ln x)
$$

验证：令$F(x) = \\int_{1}^{x} f(u) du = \\frac{5}{2}x \\ln x$，则$F(xt) = \\frac{5}{2}xt \\ln(xt) = \\frac{5}{2}xt(\\ln x + \\ln t)$，且$tF(x) + xF(t) = \\frac{5}{2}xt \\ln x + \\frac{5}{2}xt \\ln t = \\frac{5}{2}xt(\\ln x + \\ln t)$，满足原方程。
', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1462');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1462');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1462');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1463, '2001年考研数学卷4第17题', '', '考研数学2001年卷4真题', '/problems/other/1443', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1464, '2001年考研数学卷4第18题', '简单', '考研数学2001年卷4真题', '设$α_{i} = (a_{i1}, a_{i2}, ⋯  , a_{in})T$（$i = 1, 2, ⋯  , r$；$r < n$）是$n$维实向量，
且$α_{1}$,$α_{2}$,$⋯$,$α_{r}$线性无关．已知$β = (b_{1}, b_{2}, ⋯  , b_{n})T$是线性方程组
$$
\\begin{cases} a_{11}x_{1} + a_{12}x_{2} + ⋯ + a_{1n}x_{n} = 0 \\\\ a_{21}x_{1} + a_{22}x_{2} + ⋯ + a_{2n}x_{n} = 0 \\\\ ⋯⋯ \\\\ a_{r1}x_{1} + a_{r2}x_{2} + ⋯ + a_{rn}x_{n} = 0 \\end{cases}
$$
的非零解向量．试判断向量组$α_{1}$,$α_{2}$,$⋯$,$α_{r}$,$β$的线性相关性．', '[]', '线性无关
', '
考虑向量组$α_{1}, α_{2}, ⋯  , α_{r}, β$的线性相关性。设存在标量$c_{1}, c_{2}, ⋯  , c_{r}, c_{r+1}$，使得


$$
c_{1}α_{1} + c_{2}α_{2} + ⋯ + c_{r}α_{r} + c_{r+1}β = 0.
$$

由于$β$是线性方程组的解向量，即对于每个$i = 1, 2, ⋯  , r$，有$α_{i}^{T}β = 0$。将上述方程两边与$β$做内积（即左乘$β^{T}$），得


$$
c_{1}β^{T}α_{1} + c_{2}β^{T}α_{2} + ⋯ + c_{r}β^{T}α_{r} + c_{r+1}β^{T}β = 0.
$$

由$α_{i}^{T}β = 0$可知$β^{T}α_{i} = 0$，因此


$$
c_{r+1}β^{T}β = 0.
$$

由于$β$是非零向量，$β^{T}β = ∥β∥^{2} \\neq 0$，故$c_{r+1} = 0$。代入原方程，得


$$
c_{1}α_{1} + c_{2}α_{2} + ⋯ + c_{r}α_{r} = 0.
$$

已知$α_{1}, α_{2}, ⋯  , α_{r}$线性无关，因此$c_{1} = c_{2} = ⋯ = c_{r} = 0$。综上，所有标量均为零，故向量组$α_{1}, α_{2}, ⋯  , α_{r}, β$线性无关。
', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1464');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1464');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1464');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1465, '2001年考研数学卷4第19题', '', '考研数学2001年卷4真题', '/problems/other/1445', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1466, '2001年考研数学卷4第20题', '简单', '考研数学2001年卷4真题', '设随机变量$X$和$Y$的联合分布在以点$(0, 1)$,$(1, 0)$,$(1, 1)$为顶点的三角形区域上服从均匀分布，
试求随机变量$U = X + Y$的方差．', '[]', '$\\frac{1}{18}$
', '随机变量$X$和$Y$的联合概率密度函数在三角形区域上为常数。三角形的顶点为$(0, 1)$、$(1, 0)$、$(1, 1)$，其面积为$\\frac{1}{2}$，因此联合概率密度函数为$f_{X,Y}(x, y) = 2$，其中$0 ≤ x ≤ 1$，$1 - x ≤ y ≤ 1$。
需要求$U = X + Y$的方差，即$Var(U) = E \\lbrack U^{2} \\rbrack  - (E \\lbrack U \\rbrack )2$。首先计算$E \\lbrack U \\rbrack  = E \\lbrack X + Y \\rbrack  = E \\lbrack X \\rbrack  + E \\lbrack Y \\rbrack$。
计算$E \\lbrack X \\rbrack$：

$$
\\begin{array}{cc}
E \\lbrack X \\rbrack  & = \\int_{0}^{1} \\int_{1-x}^{1} 2x dy dx \\\\
 & = \\int_{0}^{1} 2x  \\lbrack y \\rbrack _{1-x}^{1} dx = \\int_{0}^{1} 2x ⋅ x dx \\\\
 & = \\int_{0}^{1} 2x^{2} dx = 2  \\lbrack \\frac{x^{3}}{3} \\rbrack _{0}^{1} \\\\
\\end{array}
$$

类似地，计算$E \\lbrack Y \\rbrack$：

$$
\\begin{array}{cc}
E \\lbrack Y \\rbrack  & = \\int_{0}^{1} \\int_{1-x}^{1} 2y dy dx = \\int_{0}^{1} 2  \\lbrack \\frac{y^{2}}{2} \\rbrack _{1-x}^{1} dx \\\\
 & = \\int_{0}^{1}  \\lbrack 1 - (1 - x)2 \\rbrack  dx = \\int_{0}^{1}(2x - x^{2}) dx \\\\
 & =  \\lbrack x^{2} - \\frac{x^{3}}{3} \\rbrack _{0}^{1} \\\\
\\end{array}
$$

所以$E \\lbrack U \\rbrack  = \\frac{2}{3} + \\frac{2}{3} = \\frac{4}{3}$.
接下来计算$E \\lbrack U^{2} \\rbrack  = E \\lbrack (X + Y)2 \\rbrack  = E \\lbrack X^{2} \\rbrack  + 2E \\lbrack XY \\rbrack  + E \\lbrack Y^{2} \\rbrack$。
计算$E \\lbrack X^{2} \\rbrack$：

$$
E \\lbrack X^{2} \\rbrack  = \\int_{0}^{1} \\int_{1-x}^{1} 2x^{2} dy dx = \\int_{0}^{1} 2x^{2} ⋅ x dx = \\int_{0}^{1} 2x^{3} dx = 2  \\lbrack \\frac{x^{4}}{4} \\rbrack _{0}^{1} = \\frac{1}{2}.
$$

计算$E \\lbrack Y^{2} \\rbrack$：

$$
\\begin{array}{cc}
E \\lbrack Y^{2} \\rbrack  & = \\int_{0}^{1} \\int_{1-x}^{1} 2y^{2} dy dx = \\int_{0}^{1} 2  \\lbrack \\frac{y^{3}}{3} \\rbrack _{1-x}^{1} dx \\\\
 & = \\int_{0}^{1} \\frac{2}{3}  \\lbrack 1 - (1 - x)3 \\rbrack  dx = \\int_{0}^{1} \\frac{2}{3}(3x - 3x^{2} + x^{3}) dx \\\\
 & = \\int_{0}^{1} (2x - 2x^{2} + \\frac{2}{3}x^{3}) dx =  \\lbrack x^{2} - \\frac{2}{3}x^{3} + \\frac{1}{6}x^{4} \\rbrack _{0}^{1} \\\\
 & = \\frac{1}{2}. \\\\
\\end{array}
$$

计算$E \\lbrack XY \\rbrack$：

$$
\\begin{array}{cc}
E \\lbrack XY \\rbrack  & = \\int_{0}^{1} \\int_{1-x}^{1} 2xy dy dx = \\int_{0}^{1} 2x  \\lbrack \\frac{y^{2}}{2} \\rbrack _{1-x}^{1} dx \\\\
 & = \\int_{0}^{1} x  \\lbrack 1 - (1 - x)2 \\rbrack  dx = \\int_{0}^{1} x(2x - x^{2}) dx \\\\
 & = \\int_{0}^{1}(2x^{2} - x^{3}) dx =  \\lbrack \\frac{2}{3}x^{3} - \\frac{1}{4}x^{4} \\rbrack _{0}^{1} \\\\
\\end{array}
$$

所以$E \\lbrack U^{2} \\rbrack  = \\frac{1}{2} + 2 × \\frac{5}{12} + \\frac{1}{2} = \\frac{1}{2} + \\frac{10}{12} + \\frac{1}{2} = \\frac{11}{6}$.
因此，$Var(U) = E \\lbrack U^{2} \\rbrack  - (E \\lbrack U \\rbrack )2 = \\frac{11}{6} - (\\frac{4}{3})^{2} = \\frac{11}{6} - \\frac{16}{9} = \\frac{33}{18} - \\frac{32}{18} = \\frac{1}{18}$.
', 9, 'Mogullzr', '2026-01-29 14:12:10', 9, 'Mogullzr', '2026-01-29 14:12:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1466');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1466');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1466');
