INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1547, '2003年考研数学卷1第1题', '简单', '考研数学2003年卷1真题', '
$$
\\lim_{x→0}(\\cos x)ln(1+x2)1​ =
$$
', '[]', '$e^{−\\frac{1}{2}}$
', '
考虑极限$\\lim_{x→0}(\\cos x)ln(1+x2)1​$。该极限为$1^{∞}$型不定式，取自然对数处理。
设$L = \\lim_{x→0}(\\cos x)ln(1+x2)1​$，则


$$
\\ln L = \\lim_{x→0} \\frac{\\ln(\\cos x)}{\\ln(1 + x^{2})}.
$$

当$x → 0$时，分子和分母均趋于 0，应用洛必达法则：
分子导数为$\\frac{d}{dx} \\ln(\\cos x) = − \\tan x$，分母导数为$\\frac{d}{dx} \\ln(1 + x^{2}) = \\frac{2x}{1+x^{2}}$。
因此，


$$
\\ln L = \\lim_{x→0} \\frac{− \\tan x}{\\frac{2x}{1+x^{2}}} = \\lim_{x→0} \\frac{− \\tan x ⋅ (1 + x^{2})}{2x}.
$$

利用等价无穷小，当$x → 0$时，$\\tan x ∼ x$，代入得


$$
\\ln L = \\lim_{x→0} \\frac{−x ⋅ (1 + x^{2})}{2x} = \\lim_{x→0} \\frac{−(1 + x^{2})}{2} = −\\frac{1}{2}.
$$

故$L = e^{\\ln L} = e^{−\\frac{1}{2}}$。
或者，使用泰勒展开验证：当$x → 0$时，$\\cos x ≈ 1 - \\frac{x^{2}}{2}$，则$\\ln(\\cos x) ≈ −\\frac{x^{2}}{2}$；$\\ln(1 + x^{2}) ≈ x^{2}$，代入得


$$
\\frac{\\ln(\\cos x)}{\\ln(1 + x^{2})} ≈ \\frac{−\\frac{x^{2}}{2}}{x^{2}} = −\\frac{1}{2},
$$

结果一致。因此极限为$e^{−\\frac{1}{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:12:36', 9, 'Mogullzr', '2026-01-29 14:12:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1547');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1547');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1547');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1548, '2003年考研数学卷1第2题', '简单', '考研数学2003年卷1真题', '曲面$z = x^{2} + y^{2}$与平面$2x + 4y - z = 0$平行的切平面的方程是 ______．', '[]', '
$2x + 4y - z - 5 = 0$
', '
曲面$z = x^{2} + y^{2}$在点$(x_{0}, y_{0}, z_{0})$处的切平面法向量为$(−2x_{0}, −2y_{0}, 1)$。给定平面$2x + 4y - z = 0$的法向量为$(2, 4, −1)$。两平面平行时法向量平行，即存在常数$k$使得$(−2x_{0}, −2y_{0}, 1) = k(2, 4, −1)$。由$1 = −k$得$k = −1$。代入得$−2x_{0} = −2$，即$x_{0} = 1$；$−2y_{0} = −4$，即$y_{0} = 2$。则$z_{0} = x_{0}^{2} + y_{0}^{2} = 1 + 4 = 5$。切点为$(1, 2, 5)$，法向量为$(−2, −4, 1)$，切平面方程为$−2(x - 1) - 4(y - 2) + (z - 5) = 0$，化简得$2x + 4y - z - 5 = 0$。
', 9, 'Mogullzr', '2026-01-29 14:12:36', 9, 'Mogullzr', '2026-01-29 14:12:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1548');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1548');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1548');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1549, '2003年考研数学卷1第3题', '简单', '考研数学2003年卷1真题', '设$x^{2} = \\sum_{n=0}^{∞} a_{n} \\cos nx(−π ≤ x ≤ π)$，则$a_{2} =$______．', '[]', '$1$
', '
给定$x^{2} = \\sum_{n=0}^{∞} a_{n} \\cos nx$（$−π ≤ x ≤ π$），求$a_{2}$。由于$x^{2}$是偶函数，傅里叶余弦系数公式为：


$$
a_{n} = \\frac{2}{π} \\int_{0}^{π} x^{2} \\cos nx dx
$$

对于$n = 2$，有：


$$
a_{2} = \\frac{2}{π} \\int_{0}^{π} x^{2} \\cos(2x) dx
$$

计算积分$\\int_{0}^{π} x^{2} \\cos(2x) dx$。使用分部积分法：
令$u = x^{2}$，$dv = \\cos(2x) dx$，则$du = 2x dx$，$v = \\frac{\\sin(2x)}{2}$，
于是：


$$
∫ x^{2} \\cos(2x) dx = \\frac{x^{2} \\sin(2x)}{2} - ∫ x \\sin(2x) dx
$$

再计算$∫ x \\sin(2x) dx$：
令$u = x$，$dv = \\sin(2x) dx$，则$du = dx$，$v = −\\frac{\\cos(2x)}{2}$，
于是：


$$
∫ x \\sin(2x) dx = −\\frac{x \\cos(2x)}{2} + \\frac{1}{2} ∫ \\cos(2x) dx = −\\frac{x \\cos(2x)}{2} + \\frac{\\sin(2x)}{4} + C
$$

代入得：


$$
∫ x^{2} \\cos(2x) dx = \\frac{x^{2} \\sin(2x)}{2} + \\frac{x \\cos(2x)}{2} - \\frac{\\sin(2x)}{4} + C
$$

计算定积分从$0$到$π$：
在$x = π$时，$\\sin(2π) = 0$，$\\cos(2π) = 1$，值为$\\frac{π}{2}$；
在$x = 0$时，所有项为 0。
因此，积分值为$\\frac{π}{2}$。
代入$a_{2}$：


$$
a_{2} = \\frac{2}{π} × \\frac{π}{2} = 1
$$

故$a_{2} = 1$。
', 9, 'Mogullzr', '2026-01-29 14:12:36', 9, 'Mogullzr', '2026-01-29 14:12:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1549');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1549');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1549');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1550, '2003年考研数学卷1第4题', '简单', '考研数学2003年卷1真题', '从$R^{2}$的基$α_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
\\end{array} \\right) , α_{2} = \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
\\end{array} \\right)$到基$β_{1} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
\\end{array} \\right) , β_{2} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
\\end{array} \\right)$的过渡矩阵为 ______．', '[]', '

$$
\\left( \\begin{array}{cc}
2 & 3 \\\\
−1 & −2 \\\\
\\end{array} \\right)
$$

', '过渡矩阵是将基$α$的坐标转换为基$β$的坐标的矩阵。具体地，过渡矩阵$P$的列是基$β$的向量在基$α$下的坐标表示。
给定基$α_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
\\end{array} \\right)$,$α_{2} = \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
\\end{array} \\right)$和基$β_{1} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
\\end{array} \\right)$,$β_{2} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
\\end{array} \\right)$。
首先，求$β_{1}$在基$α$下的坐标：设$β_{1} = aα_{1} + bα_{2}$，即：

$$
\\left( \\begin{array}{c}
1 \\\\
1 \\\\
\\end{array} \\right) = a \\left( \\begin{array}{c}
1 \\\\
0 \\\\
\\end{array} \\right) + b \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
a + b \\\\
−b \\\\
\\end{array} \\right)
$$

解方程组：

$$
\\begin{cases} a + b = 1 \\\\ −b = 1 \\end{cases}
$$

得$b = −1$,$a = 2$，所以坐标为$\\left( \\begin{array}{c}
2 \\\\
−1 \\\\
\\end{array} \\right)$.
再求$β_{2}$在基$α$下的坐标：设$β_{2} = aα_{1} + bα_{2}$，即：

$$
\\left( \\begin{array}{c}
1 \\\\
2 \\\\
\\end{array} \\right) = a \\left( \\begin{array}{c}
1 \\\\
0 \\\\
\\end{array} \\right) + b \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
a + b \\\\
−b \\\\
\\end{array} \\right)
$$

解方程组：

$$
\\begin{cases} a + b = 1 \\\\ −b = 2 \\end{cases}
$$

得$b = −2$,$a = 3$，所以坐标为$\\left( \\begin{array}{c}
3 \\\\
−2 \\\\
\\end{array} \\right)$.
因此，过渡矩阵为：

$$
\\left( \\begin{array}{cc}
2 & 3 \\\\
−1 & −2 \\\\
\\end{array} \\right)
$$

验证：通过矩阵方法，设$A = \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & −1 \\\\
\\end{array} \\right)$（基$α$的矩阵），$B = \\left( \\begin{array}{cc}
1 & 1 \\\\
1 & 2 \\\\
\\end{array} \\right)$（基$β$的矩阵），则过渡矩阵$P = A^{−1}B$。计算$A^{−1} = \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & −1 \\\\
\\end{array} \\right)$，则$P = \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & −1 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
1 & 1 \\\\
1 & 2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
2 & 3 \\\\
−1 & −2 \\\\
\\end{array} \\right)$，结果一致。
', 9, 'Mogullzr', '2026-01-29 14:12:36', 9, 'Mogullzr', '2026-01-29 14:12:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1550');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1550');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '1550');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1551, '2003年考研数学卷1第5题', '简单', '考研数学2003年卷1真题', '设二维随机变量$(X, Y)$的概率密度为
$$
f(x, y) = \\begin{cases} 6x & 0 ≤ x ≤ y ≤ 1 \\\\ 0 & 其他. \\end{cases}
$$
则$P\\{X + Y ≤ 1\\} =$______．', '[]', '$0.25$
', '
给定二维随机变量$(X, Y)$的概率密度函数为


$$
f(x, y) = 6x,  0 ≤ x ≤ y ≤ 1,
$$

否则为 0。需要计算


$$
P\\{X + Y ≤ 1\\},
$$

即求概率密度函数在区域


$$
0 ≤ x ≤ y ≤ 1 且 x + y ≤ 1
$$

上的二重积分。
概率密度函数的定义域为$0 ≤ x ≤ y ≤ 1$，即直线$y = x$上方的区域。约束条件$x + y ≤ 1$对应直线$x + y = 1$下方的区域。两者的交集需同时满足$x ≤ y$与$x + y ≤ 1$。
由$x + y ≤ 1$与$y ≥ x$可得


$$
y ≤ 1 - x 且 y ≥ x,
$$

这要求


$$
x ≤ 1 - x  ⇒  x ≤ 0.5.
$$

因此，积分区域为


$$
0 ≤ x ≤ 0.5,  x ≤ y ≤ 1 - x.
$$

于是所求概率为


$$
P\\{X + Y ≤ 1\\} = \\int_{0}^{0.5} \\int_{x}^{1-x} 6x dy dx.
$$

先对$y$积分：


$$
\\int_{x}^{1-x} 6x dy = 6x ⋅ (1 - x - x) = 6x(1 - 2x) = 6x - 12x^{2}.
$$

再对$x$积分：


$$
\\int_{0}^{0.5}(6x - 12x^{2}) dx =  \\lbrack 3x^{2} - 4x^{3} \\rbrack _{0}^{0.5} = 3(0.25) - 4(0.125) = 0.75 - 0.5 = 0.25.
$$

因此，


$$
P\\{X + Y ≤ 1\\} = 0.25.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:37', 9, 'Mogullzr', '2026-01-29 14:12:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1551');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1551');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1551');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1552, '2003年考研数学卷1第6题', '简单', '考研数学2003年卷1真题', '已知一批零件的长度$X$（单位：cm）服从正态分布$N(μ, 1)$，从中随机地抽取$16$个零件，得到长度的平均值为$40$（cm），
则$μ$的置信度为$0.95$的置信区间是______．（注：标准正态分布函数值$Φ(1.96) = 0.975$，$Φ(1.645) = 0.95$．）', '[]', '$(39.51, 40.49)$
', '
已知总体方差$σ^{2} = 1$，样本容量$n = 16$，样本均值$\\bar{X} = 40$，置信水平$1 - α = 0.95$，因此$α = 0.05$，$α/2 = 0.025$。
由于总体服从正态分布且方差已知，均值$μ$的置信区间为：

$$
\\bar{X} ± z_{α/2} ⋅ \\frac{σ}{\\sqrt{n}}
$$

由标准正态分布可知，$Φ(1.96) = 0.975$，因此$z_{α/2} = 1.96$。
计算标准误差：

$$
\\frac{σ}{\\sqrt{n}} = \\frac{1}{\\sqrt{16}} = 0.25
$$

代入公式得置信区间：

$$
40 ± 1.96 × 0.25 = 40 ± 0.49
$$

即：

$$
(39.51,  40.49)
$$

', 9, 'Mogullzr', '2026-01-29 14:12:37', 9, 'Mogullzr', '2026-01-29 14:12:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1552');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1552');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1075', '1552');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1553, '2003年考研数学卷1第7题', '简单', '考研数学2003年卷1真题', '设函数$f(x)$在$(−∞, +∞)$内连续，其导函数的图形如图所示，则$f(x)$有
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/82de2fbb0c7a4c7d8b4e705a0f65327c.jpg)
', '[''一个极小值点和两个极大值点．'', ''两个极小值点和一个极大值点．'', ''两个极小值点和两个极大值点．'', ''三个极小值点和一个极大值点．'']', "['C']", '根据导函数的图形可知，一阶导数为零的点有 3 个；$x = 0$是导数不存在的点。第一个交点左右两侧导数符号由正变为负，是极大值点；第二个交点和第三个交点左右两侧导数符号由负变为正，是极小值点。对导数不存在的点$x = 0$，左侧一阶导数为正，右侧一阶导数为负，可见$x = 0$为极大值点。故$f(x)$共有两个极小值点和两个极大值点。', 9, 'Mogullzr', '2026-01-29 14:12:38', 9, 'Mogullzr', '2026-01-29 14:12:38', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1553');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1553');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1553');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1554, '2003年考研数学卷1第8题', '简单', '考研数学2003年卷1真题', '设$\\{a_{n}\\}, \\{b_{n}\\}, \\{c_{n}\\}$均为非负数列，
且$\\lim_{n→∞} a_{n} = 0$,$\\lim_{n→∞} b_{n} = 1$,$\\lim_{n→∞} c_{n} = ∞$，
则必有', '[''$a_{n} < b_{n}$对任意$n$成立．'', ''$b_{n} < c_{n}$对任意$n$成立．'', ''极限$\\\\lim_{n→∞} a_{n}c_{n}$不存在．'', ''极限$\\\\lim_{n→∞} b_{n}c_{n}$不存在．'']', "['D']", '选项 A
虽然$a_{n} → 0$且$b_{n} → 1$，但数列可能在某些项上满足$a_{n} ≥ b_{n}$。
例如：

$$
a_{n} = 1 + \\frac{1}{n},  b_{n} = 1 - \\frac{1}{n}
$$
当$n = 1$时，$a_{1} = 2$，$b_{1} = 0$，有$a_{n} > b_{n}$，但$a_{n} → 0$不成立（需满足非负且极限为 0）。
可调整为：

$$
a_{n} = \\frac{1}{n},  b_{n} = 1 - \\frac{1}{n}
$$
当$n = 1$时，$a_{1} = 1$，$b_{1} = 0$，有$a_{n} > b_{n}$。
因此 A 不一定成立。选项 B
虽然$b_{n} → 1$且$c_{n} → ∞$，但可能在某些项上$b_{n} ≥ c_{n}$。
例如：

$$
b_{n} = 2,  c_{n} = \\frac{1}{n}
$$
但$b_{n} → 1$不成立（需满足极限为 1）。
可调整为：

$$
b_{n} = 1 + \\frac{1}{n},  c_{n} = \\frac{1}{n}
$$
当$n = 1$时，$b_{1} = 2$，$c_{1} = 1$，有$b_{n} > c_{n}$。
因此 B 不一定成立。选项 C
$a_{n}c_{n}$的极限可能存在，也可能不存在。
例如：

$$
a_{n} = \\frac{1}{n},  c_{n} = n  ⇒  a_{n}c_{n} = 1 (极限为1)
$$

$$
a_{n} = \\frac{1}{n},  c_{n} = n^{2}  ⇒  a_{n}c_{n} = n (极限为∞)
$$
因此 C 不一定成立。选项 D
由于$b_{n} → 1$，存在$N_{1}$使得当$n > N_{1}$时$b_{n} > \\frac{1}{2}$。
又$c_{n} → ∞$，对任意$M > 0$，存在$N_{2}$使得当$n > N_{2}$时$c_{n} > 2M$。
因此当$n > \\max(N_{1}, N_{2})$时，

$$
b_{n}c_{n} > \\frac{1}{2} ⋅ 2M = M
$$
故$b_{n}c_{n} → ∞$，极限不存在（作为有限极限）。
因此 D 必成立。', 9, 'Mogullzr', '2026-01-29 14:12:38', 9, 'Mogullzr', '2026-01-29 14:12:38', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1554');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1554');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1554');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1555, '2003年考研数学卷1第9题', '简单', '考研数学2003年卷1真题', '已知函数$f(x, y)$在点$(0, 0)$的某个邻域内连续，
且$\\lim_{x→0,y→0} \\frac{f(x,y)-xy}{(x^{2}+y^{2})2} = 1$，则', '[''点$(0, 0)$不是$f(x, y)$的极值点．'', ''点$(0, 0)$是$f(x, y)$的极大值点．'', ''点$(0, 0)$是$f(x, y)$的极小值点．'', ''根据所给条件无法判断点$(0, 0)$是否为$f(x, y)$的极值点．'']', "['A']", '
$$
\\lim_{x→0,y→0} \\frac{f(x, y) - xy}{(x^{2} + y^{2})2} = 1 ⇒ f(x, y) - xy = (1 + α)(x^{2} + y^{2})2
$$
其中$\\lim_{x→0} α = 0$。由$f(x, y)$在点$(0, 0)$连续知$f(0, 0) = 0$。取$y = x$，$∣x∣$充分小，$x \\neq 0$，有
$$
f(x, y) = x^{2} + (1 + α)(2x^{2})2 > 0
$$
取$y = −x$，$∣x∣$充分小，$x \\neq 0$，有
$$
f(x, y) = −x^{2} + (1 + α)(2x^{2})2 < 0
$$
故点$(0, 0)$不是$f(x, y)$的极值点。', 9, 'Mogullzr', '2026-01-29 14:12:39', 9, 'Mogullzr', '2026-01-29 14:12:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1555');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1555');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1555');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1556, '2003年考研数学卷1第10题', '简单', '考研数学2003年卷1真题', '设向量组I：$α_{1}, α_{2}, ⋯  , α_{r}$可由向量组II：$β_{1}, β_{2}, ⋯  , β_{s}$线性表示，则', '[''当$r < s$时，向量组II必线性相关．'', ''当$r > s$时，向量组II必线性相关．'', ''当$r < s$时，向量组I必线性相关．'', ''当$r > s$时，向量组I必线性相关．'']', "['D']", '
已知向量组$I$可由向量组$II$线性表示，因此存在矩阵$K$使得

$$
A = BK,
$$
其中$A$和$B$分别是向量组$I$和$II$构成的矩阵。若$r > s$，则$K$为$s × r$矩阵，其列数大于行数，因此$K$的列向量线性相关。于是存在非零向量$c$使得

$$
Kc = 0,
$$
从而

$$
Ac = BKc = B0 = 0,
$$
即向量组$I$线性相关。选项 A、B、C 均不一定成立，反例容易构造。例如，当向量组$II$线性无关时，不论$r$与$s$的大小关系如何，向量组$II$不一定线性相关；当$r < s$时，向量组$I$仍可能线性无关。因此正确答案为D。', 9, 'Mogullzr', '2026-01-29 14:12:39', 9, 'Mogullzr', '2026-01-29 14:12:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1556');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1556');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1556');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1557, '2003年考研数学卷1第11题', '简单', '考研数学2003年卷1真题', '设有齐次线性方程组$Ax = 0$和$Bx = 0$，其中$A$和$B$均为$m × n$矩阵，现有$4$个命题：① 若$Ax = 0$的解均是$Bx = 0$的解，则$r(A) ≥ r(B)$；② 若$r(A) ≥ r(B)$，则$Ax = 0$的解均是$Bx = 0$的解；③ 若$Ax = 0$与$Bx = 0$同解，则$r(A) = r(B)$；④ 若$r(A) = r(B)$，则$Ax = 0$与$Bx = 0$同解．以上命题中正确的是', '[''①②．'', ''①③．'', ''②④．'', ''③④．'']', "['B']", '应选 (B)。若$Ax = 0$的解均是$Bx = 0$的解，则$Ax = 0$的解空间的维数不超过$Bx = 0$的解空间的维数，即$n - r(A) ≤ n - r(B)$，亦即$r(A) ≥ r(B)$，故①正确；同理③也正确。又由两个解空间的维数的大小关系，推不出两个齐次线性方程的解集是否有包含关系，所以②不成立；同理，④也不成立。', 9, 'Mogullzr', '2026-01-29 14:12:39', 9, 'Mogullzr', '2026-01-29 14:12:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1557');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1557');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1558, '2003年考研数学卷1第12题', '简单', '考研数学2003年卷1真题', '设随机变量$X ∼ t(n)$（$n > 1$），$Y = \\frac{1}{X^{2}}$，则', '[''$Y ∼ χ^{2}(n)$．'', ''$Y ∼ χ^{2}(n - 1)$．'', ''$Y ∼ F(n, 1)$．'', ''$Y ∼ F(1, n)$．'']', "['C']", '
已知随机变量$X ∼ t(n)$，其中$n > 1$，且$Y = \\frac{1}{X^{2}}$。根据$t$分布的定义，$X$可表示为

$$
X = \\frac{Z}{\\sqrt{U/n}},
$$
其中$Z ∼ N(0, 1)$，$U ∼ χ^{2}(n)$，且$Z$与$U$相互独立。于是有

$$
X^{2} = \\frac{Z^{2}}{U/n}.
$$
由于$Z^{2} ∼ χ^{2}(1)$，可得

$$
X^{2} = \\frac{Z^{2}/1}{U/n} ∼ F(1, n),
$$
即$X^{2}$服从第一自由度为 1、第二自由度为$n$的$F$分布。因此，$Y = \\frac{1}{X^{2}}$。由$F$分布的性质：若$F ∼ F(p, q)$，则$\\frac{1}{F} ∼ F(q, p)$，可得

$$
Y ∼ F(n, 1).
$$
✅ 故选项C正确。
❌ 选项A与B错误，因为$Y$不是卡方分布。
❌ 选项D错误，因为$Y ∼ F(n, 1)$，而非$F(1, n)$。', 9, 'Mogullzr', '2026-01-29 14:12:39', 9, 'Mogullzr', '2026-01-29 14:12:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1558');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1558');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1559, '2003年考研数学卷1第13题', '简单', '考研数学2003年卷1真题', '过坐标原点作曲线$y = \\ln x$的切线，该切线与曲线$y = \\ln x$及$x$轴围成平面图形$D$．(1) 求$D$的面积$A$；(2) 求$D$绕直线$x = e$旋转一周所得旋转体的体积$V$．', '[]', '(1)$A = \\frac{e}{2} - 1$(2)$V = \\frac{π}{6}(5e^{2} - 12e + 3)$
', '(1) 求面积$A$：
过原点作曲线$y = \\ln x$的切线，设切点为$(a, \\ln a)$，切线斜率为$\\frac{1}{a}$。切线方程过原点，代入得$− \\ln a = −1$，即$a = e$。切点为$(e, 1)$，切线方程为$y = \\frac{x}{e}$。
图形$D$由切线$y = \\frac{x}{e}$、曲线$y = \\ln x$及$x$轴围成。区域$D$在$x ∈  \\lbrack 0, 1 \\rbrack$上边界为$y = \\frac{x}{e}$，下边界为$y = 0$；在$x ∈  \\lbrack 1, e \\rbrack$上边界为$y = \\frac{x}{e}$，下边界为$y = \\ln x$。
面积$A$为：

$$
A = \\int_{0}^{1} \\frac{x}{e} dx + \\int_{1}^{e} (\\frac{x}{e} - \\ln x) dx
$$

计算得：

$$
\\int_{0}^{1} \\frac{x}{e} dx = \\frac{1}{2e},  \\int_{1}^{e} \\frac{x}{e} dx = \\frac{1}{2} (e - \\frac{1}{e}) ,  \\int_{1}^{e} \\ln x dx = 1
$$

所以：

$$
A = \\frac{1}{2e} + \\frac{1}{2} (e - \\frac{1}{e}) - 1 = \\frac{e}{2} - 1
$$

(2) 求体积$V$：$D$绕直线$x = e$旋转一周。对于$y ∈  \\lbrack 0, 1 \\rbrack$，区域$D$在$x$方向从$x = ey$到$x = e^{y}$。绕$x = e$旋转时，外半径为$e - ey$，内半径为$e - e^{y}$。
体积$V$为：

$$
V = π \\int_{0}^{1}  \\lbrack (e - ey)2 - (e - e^{y})2 \\rbrack  dy
$$

展开并积分：

$$
V = π \\int_{0}^{1}  \\lbrack e^{2}(y^{2} - 2y) + 2ee^{y} - e^{2y} \\rbrack  dy
$$

计算：

$$
\\int_{0}^{1} e^{2}(y^{2} - 2y)dy = −\\frac{2}{3}e^{2},  \\int_{0}^{1} 2ee^{y}dy = 2e^{2} - 2e,  \\int_{0}^{1} e^{2y}dy = \\frac{1}{2}(e^{2} - 1)
$$

所以：

$$
V = π  \\lbrack −\\frac{2}{3}e^{2} + 2e^{2} - 2e - \\frac{1}{2}e^{2} + \\frac{1}{2} \\rbrack  = π  \\lbrack \\frac{5}{6}e^{2} - 2e + \\frac{1}{2} \\rbrack  = \\frac{π}{6}(5e^{2} - 12e + 3)
$$

', 9, 'Mogullzr', '2026-01-29 14:12:39', 9, 'Mogullzr', '2026-01-29 14:12:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1559');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1559');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1559');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1560, '2003年考研数学卷1第14题', '简单', '考研数学2003年卷1真题', '将函数$f(x) = arctan \\frac{1-2x}{1+2x}$展开成$x$的幂级数，
并求级数$\\sum_{n=0}^{∞} \\frac{(−1)n}{2n+1}$的和．', '[]', '函数$f(x) = arctan \\frac{1-2x}{1+2x}$的幂级数展开为：

$$
f(x) = \\frac{π}{4} - \\sum_{n=0}^{∞}(−1)n\\frac{2^{2n+1}x^{2n+1}}{2n + 1},  ∣x∣ < \\frac{1}{2}.
$$

级数$\\sum_{n=0}^{∞} \\frac{(−1)n}{2n+1}$的和为$\\frac{π}{4}$.
', '首先，利用反正切函数的性质：$arctan u - arctan v = arctan \\frac{u-v}{1+uv}$（在适当范围内）。令$u = 1$，$v = 2x$，则：

$$
arctan 1 - arctan 2x = arctan \\frac{1 - 2x}{1 + 2x},
$$

所以：

$$
f(x) = arctan \\frac{1 - 2x}{1 + 2x} = \\frac{π}{4} - arctan 2x.
$$

已知$arctan y$的幂级数展开为$arctan y = \\sum_{n=0}^{∞}(−1)n\\frac{y^{2n+1}}{2n+1}$，对于$∣y∣ < 1$。代入$y = 2x$，得：

$$
arctan 2x = \\sum_{n=0}^{∞}(−1)n\\frac{(2x)2n+1}{2n + 1} = \\sum_{n=0}^{∞}(−1)n\\frac{2^{2n+1}x^{2n+1}}{2n + 1},  ∣2x∣ < 1 ∣x∣ < \\frac{1}{2}.
$$

因此：

$$
f(x) = \\frac{π}{4} - \\sum_{n=0}^{∞}(−1)n\\frac{2^{2n+1}x^{2n+1}}{2n + 1},  ∣x∣ < \\frac{1}{2}.
$$

这就是$f(x)$的幂级数展开。
接下来，求级数$\\sum_{n=0}^{∞} \\frac{(−1)n}{2n+1}$的和。考虑$f(x)$在$x = \\frac{1}{2}$处的值。当$x = \\frac{1}{2}$时：

$$
f (\\frac{1}{2}) = arctan \\frac{1 - 2 ⋅ \\frac{1}{2}}{1 + 2 ⋅ \\frac{1}{2}} = arctan 0 = 0.
$$

从幂级数展开式代入$x = \\frac{1}{2}$：

$$
f (\\frac{1}{2}) = \\frac{π}{4} - \\sum_{n=0}^{∞}(−1)n\\frac{2^{2n+1} (\\frac{1}{2})^{2n+1}}{2n + 1} = \\frac{π}{4} - \\sum_{n=0}^{∞}(−1)n\\frac{2^{2n+1}}{2n + 1} ⋅ \\frac{1}{2^{2n+1}} = \\frac{π}{4} - \\sum_{n=0}^{∞} \\frac{(−1)n}{2n + 1}.
$$

由于$f (\\frac{1}{2}) = 0$，所以：

$$
0 = \\frac{π}{4} - \\sum_{n=0}^{∞} \\frac{(−1)n}{2n + 1},
$$

即：

$$
\\sum_{n=0}^{∞} \\frac{(−1)n}{2n + 1} = \\frac{π}{4}.
$$

该级数在$x = \\frac{1}{2}$处收敛，因此求和成立。
', 9, 'Mogullzr', '2026-01-29 14:12:40', 9, 'Mogullzr', '2026-01-29 14:12:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1560');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1560');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1560');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1561, '2003年考研数学卷1第15题', '简单', '考研数学2003年卷1真题', '已知平面区域$D = \\{(x, y) ∣0 ≤ x ≤ π, 0 ≤ y ≤ π\\}$，$L$为$D$的正向边界．试证：(1)$∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx = ∮_{L} xe^{− \\sin y}dy - ye^{\\sin x}dx$；(2)$∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx ≥ 2π^{2}$．', '[]', '
(Ⅰ) 由格林公式有

$$
∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx = \\iint_{D}(e^{\\sin y} + e^{− \\sin x})dxdy,
$$



$$
∮_{L} xe^{− \\sin y}dy - ye^{\\sin x}dx = \\iint_{D}(e^{− \\sin y} + e^{\\sin x})dxdy.
$$

因为积分区域$D$关于$y = x$对称，所以交换$x$和$y$后二重积分不变：

$$
\\iint_{D}(e^{\\sin y} + e^{− \\sin x})dxdy = \\iint_{D}(e^{− \\sin y} + e^{\\sin x})dxdy,
$$

从而有

$$
∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx = ∮_{L} xe^{− \\sin y}dy - ye^{\\sin x}dx.
$$

(Ⅱ) 由格林公式及轮换对称性有

$$
\\begin{array}{cc}
∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx & = \\iint_{D}(e^{\\sin y} + e^{− \\sin x})dxdy \\\\
 & = \\iint_{D} e^{\\sin y}dxdy + \\iint_{D} e^{− \\sin x}dxdy \\\\
 & = \\iint_{D} e^{\\sin x}dxdy + \\iint_{D} e^{− \\sin x}dxdy \\\\
\\end{array}
$$

', '
(Ⅰ) 由格林公式有

$$
∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx = \\iint_{D}(e^{\\sin y} + e^{− \\sin x})dxdy,
$$



$$
∮_{L} xe^{− \\sin y}dy - ye^{\\sin x}dx = \\iint_{D}(e^{− \\sin y} + e^{\\sin x})dxdy.
$$

因为积分区域$D$关于$y = x$对称，所以交换$x$和$y$后二重积分不变：

$$
\\iint_{D}(e^{\\sin y} + e^{− \\sin x})dxdy = \\iint_{D}(e^{− \\sin y} + e^{\\sin x})dxdy,
$$

从而有

$$
∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx = ∮_{L} xe^{− \\sin y}dy - ye^{\\sin x}dx.
$$

(Ⅱ) 由格林公式及轮换对称性有

$$
\\begin{array}{cc}
∮_{L} xe^{\\sin y}dy - ye^{− \\sin x}dx & = \\iint_{D}(e^{\\sin y} + e^{− \\sin x})dxdy \\\\
 & = \\iint_{D} e^{\\sin y}dxdy + \\iint_{D} e^{− \\sin x}dxdy \\\\
 & = \\iint_{D} e^{\\sin x}dxdy + \\iint_{D} e^{− \\sin x}dxdy \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:40', 9, 'Mogullzr', '2026-01-29 14:12:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1561');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1561');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1561');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1562, '2003年考研数学卷1第16题', '简单', '考研数学2003年卷1真题', '某建筑工程打地基时，需用汽锤将桩打进土层．汽锤每次击打，都将克服土层对桩的阻力而作功．
设土层对桩的阻力的大小与桩被打进地下的深度成正比（比例系数为$k$，$k > 0$）．
汽锤第一次击打将桩打进地下$a$米．根据设计方案，
要求汽锤每次击打桩时所作的功与前一次击打时所作的功之比为常数$r$（$0 < r < 1$）．问(1) 汽锤击打桩$3$次后，可将桩打进地下多深？(2) 若击打次数不限，汽锤至多能将桩打进地下多深？', '[]', '
(1) 汽锤击打桩3次后，可将桩打进地下$a\\sqrt{1 + r + r^{2}}$米。
(2) 汽锤至多能将桩打进地下$\\frac{a}{\\sqrt{1-r}}$米。
', '
(Ⅰ) 建立坐标系，地面作为坐标原点，向下为$x$轴正向。设第$n$次击打后，桩被打进地下$x_{n}$; 第$n$次击打时，汽锤所作的功为$W_{n} (n = 1, 2, 3, ⋯ )$。由题设，当桩被打进地下的深度为$x$时，土层对桩的阻力的大小为$kx$，汽锤所作的功等于克服阻力所做的功，所以


$$
W_{1} = \\int_{0}^{x_{1}} kx dx = \\frac{k}{2}x_{1}^{2},  W_{2} = \\int_{x_{1}}^{x_{2}} kx dx = \\frac{k}{2}(x_{2}^{2} - x_{1}^{2}),
$$



$$
W_{3} = \\int_{x_{2}}^{x_{3}} kx dx = \\frac{k}{2}(x_{3}^{2} - x_{2}^{2}).
$$

又$W_{2} = rW_{1},  W_{3} = rW_{2} = r^{2}W_{1},  x_{1} = a$，所以


$$
\\frac{k}{2}x_{3}^{2} = W_{1} + W_{2} + W_{3} = (1 + r + r^{2})W_{1} = (1 + r + r^{2})\\frac{k}{2}a^{2}.
$$

于是$x_{3} = a\\sqrt{1 + r + r^{2}}$。
(Ⅱ) 和 (Ⅰ) 类似可得


$$
\\frac{k}{2}x_{n}^{2} = W_{1} + W_{2} + ⋯ + W_{n}
$$



$$
= (1 + r + ⋯ + r^{n-1})W_{1} = (1 + r + ⋯ + r^{n-1})\\frac{k}{2}a^{2}.
$$

从而求得


$$
x_{n} = a\\sqrt{1 + r + ⋯ + r^{n-1}} = a\\sqrt{\\frac{1 - r^{n}}{1 - r}}.
$$

由于$0 < r < 1$，所以$\\lim_{n→∞} x_{n} = \\frac{a}{\\sqrt{1-r}}$.
', 9, 'Mogullzr', '2026-01-29 14:12:40', 9, 'Mogullzr', '2026-01-29 14:12:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1562');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1562');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1562');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1563, '2003年考研数学卷1第17题', '简单', '考研数学2003年卷1真题', '设函数$y = y(x)$在$(−∞, +∞)$内具有二阶导数，且$y^{′} \\neq 0$，$x = x(y)$是$y = y(x)$的反函数．(1) 试将$x = x(y)$所满足的微分方程$\\frac{d^{2}x}{dy^{2}} + (y + \\sin x) (\\frac{dx}{dy})^{3} = 0$变换为$y = y(x)$满足的微分方程；(2) 求变换后的微分方程满足初始条件$y(0) = 0, y^{′}(0) = \\frac{3}{2}$的解．', '[]', '
(1) 变换后的微分方程为$y^{′′} - y = \\sin x$
(2) 满足初始条件$y(0) = 0, y^{′}(0) = \\frac{3}{2}$的解为$y = e^{x} - e^{−x} - \\frac{1}{2} \\sin x$.
', '(1) 给定反函数$x = x(y)$满足的微分方程：

$$
\\frac{d^{2}x}{dy^{2}} + (y + \\sin x) (\\frac{dx}{dy})^{3} = 0
$$

利用反函数导数关系：

$$
\\frac{dx}{dy} = \\frac{1}{\\frac{dy}{dx}} = \\frac{1}{y^{′}},  \\frac{d^{2}x}{dy^{2}} = \\frac{d}{dy} (\\frac{1}{y^{′}}) = −\\frac{y^{′′}}{(y^{′})3}
$$

代入原方程：

$$
−\\frac{y^{′′}}{(y^{′})3} + (y + \\sin x) (\\frac{1}{y^{′}})^{3} = 0
$$

两边乘以$(y^{′})3$（因$y^{′} \\neq 0$）：

$$
−y^{′′} + (y + \\sin x) = 0
$$

即得变换后的微分方程：

$$
y^{′′} - y = \\sin x
$$

(2) 求解微分方程$y^{′′} - y = \\sin x$满足$y(0) = 0, y^{′}(0) = \\frac{3}{2}$。
齐次方程$y^{′′} - y = 0$的通解为$y_{h} = C_{1}e^{x} + C_{2}e^{−x}$。
设特解形式$y_{p} = A \\cos x + B \\sin x$，代入方程：

$$
y_{p}^{′} = −A \\sin x + B \\cos x,  y_{p}^{′′} = −A \\cos x - B \\sin x
$$



$$
y_{p}^{′′} - y_{p} = (−A \\cos x - B \\sin x) - (A \\cos x + B \\sin x) = −2A \\cos x - 2B \\sin x = \\sin x
$$

比较系数：

$$
−2A = 0,  −2B = 1  ⟹  A = 0,  B = −\\frac{1}{2}
$$

特解$y_{p} = −\\frac{1}{2} \\sin x$，通解：

$$
y = y_{h} + y_{p} = C_{1}e^{x} + C_{2}e^{−x} - \\frac{1}{2} \\sin x
$$

应用初始条件：

$$
y(0) = C_{1} + C_{2} = 0,  y^{′}(0) = C_{1} - C_{2} - \\frac{1}{2} = \\frac{3}{2}
$$

解得：

$$
C_{1} = 1,  C_{2} = −1
$$

故解为：

$$
y = e^{x} - e^{−x} - \\frac{1}{2} \\sin x
$$

', 9, 'Mogullzr', '2026-01-29 14:12:40', 9, 'Mogullzr', '2026-01-29 14:12:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1563');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1563');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1563');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1564, '2003年考研数学卷1第18题', '简单', '考研数学2003年卷1真题', '设函数$f(x)$连续且恒大于零，
$$
F(t) = \\frac{\\iiint_{Ω(t)} f(x^{2} + y^{2} + z^{2})dv}{\\iint_{D(t)} f(x^{2} + y^{2})dσ},  G(t) = \\frac{\\iint_{D(t)} f(x^{2} + y^{2})dσ}{\\int_{−t}^{t} f(x^{2})dx},
$$
其中$Ω(t) = \\{(x, y, z) ​x^{2} + y^{2} + z^{2} ≤ t^{2}\\}$，$D(t) = \\{(x, y) ​x^{2} + y^{2} ≤ t^{2}\\}$．(1) 讨论$F(t)$在区间$(0, +∞)$内的单调性．(2) 证明当$t > 0$时，$F(t) > \\frac{2}{π}G(t)$．', '[]', '(1) 函数$F(t)$在区间$(0, +∞)$内严格单调递增。
(2) 当$t > 0$时，有$F(t) > \\frac{2}{π}G(t)$。
', '(1) 考虑函数


$$
F(t) = \\frac{\\iiint_{Ω(t)} f(x^{2} + y^{2} + z^{2}) dV}{\\iint_{D(t)} f(x^{2} + y^{2}) dσ}.
$$

通过球坐标变换，分子化为


$$
4π \\int_{0}^{t} f(ρ^{2})ρ^{2} dρ,
$$

分母化为


$$
2π \\int_{0}^{t} f(r^{2})r dr,
$$

因此


$$
F(t) = 2 ⋅ \\frac{\\int_{0}^{t} f(ρ^{2})ρ^{2} dρ}{\\int_{0}^{t} f(r^{2})r dr}.
$$

令$s = ρ^{2}$，$u = r^{2}$，则


$$
F(t) = 2 ⋅ \\frac{\\int_{0}^{t^{2}} f(s)s^{1/2} ds}{\\int_{0}^{t^{2}} f(u) du}.
$$

定义


$$
H(u) = 2 ⋅ \\frac{\\int_{0}^{u} f(s)s^{1/2} ds}{\\int_{0}^{u} f(s) ds},
$$

则$F(t) = H(t^{2})$。计算$H^{′}(u)$：


$$
H^{′}(u) = 2 ⋅ \\frac{f(u)u^{1/2} \\int_{0}^{u} f(s) ds - \\int_{0}^{u} f(s)s^{1/2} ds ⋅ f(u)}{ \\lbrack \\int_{0}^{u} f(s) ds \\rbrack ^{2}} = 2f(u) ⋅ \\frac{u^{1/2} \\int_{0}^{u} f(s) ds - \\int_{0}^{u} f(s)s^{1/2} ds}{ \\lbrack \\int_{0}^{u} f(s) ds \\rbrack ^{2}}.
$$

令


$$
I(u) = u^{1/2} \\int_{0}^{u} f(s) ds - \\int_{0}^{u} f(s)s^{1/2} ds = \\int_{0}^{u} f(s)(u^{1/2} - s^{1/2}) ds.
$$

由于$f(s) > 0$，且当$s ∈  \\lbrack 0, u)$时$u^{1/2} - s^{1/2} > 0$，故$I(u) > 0$，从而$H^{′}(u) > 0$，即$H(u)$在$u > 0$时严格单调递增。由于$t^{2}$随$t$递增，故$F(t)$在$(0, +∞)$内严格单调递增。

(2) 需证当$t > 0$时


$$
F(t) > \\frac{2}{π}G(t).
$$

由


$$
G(t) = \\frac{\\iint_{D(t)} f(x^{2} + y^{2}) dσ}{\\int_{−t}^{t} f(x^{2}) dx},
$$

通过极坐标变换，分子化为


$$
π \\int_{0}^{t^{2}} f(u) du,
$$

分母化为


$$
\\int_{0}^{t^{2}} f(v)v^{−1/2} dv,
$$

故


$$
G(t) = π ⋅ \\frac{\\int_{0}^{t^{2}} f(s) ds}{\\int_{0}^{t^{2}} f(s)s^{−1/2} ds}.
$$

因此


$$
\\frac{2}{π}G(t) = 2 ⋅ \\frac{\\int_{0}^{t^{2}} f(s) ds}{\\int_{0}^{t^{2}} f(s)s^{−1/2} ds}.
$$

而


$$
F(t) = 2 ⋅ \\frac{\\int_{0}^{t^{2}} f(s)s^{1/2} ds}{\\int_{0}^{t^{2}} f(s) ds},
$$

故不等式$F(t) > \\frac{2}{π}G(t)$等价于


$$
2 ⋅ \\frac{\\int_{0}^{t^{2}} f(s)s^{1/2} ds}{\\int_{0}^{t^{2}} f(s) ds} > 2 ⋅ \\frac{\\int_{0}^{t^{2}} f(s) ds}{\\int_{0}^{t^{2}} f(s)s^{−1/2} ds},
$$

即


$$
\\frac{\\int_{0}^{t^{2}} f(s)s^{1/2} ds}{\\int_{0}^{t^{2}} f(s) ds} > \\frac{\\int_{0}^{t^{2}} f(s) ds}{\\int_{0}^{t^{2}} f(s)s^{−1/2} ds}.
$$

令


$$
A = \\int_{0}^{t^{2}} f(s)s^{1/2} ds,  B = \\int_{0}^{t^{2}} f(s) ds,  C = \\int_{0}^{t^{2}} f(s)s^{−1/2} ds,
$$

则需证$A/B > B/C$，即$AC > B^{2}$。由柯西-施瓦茨不等式，


$$
(\\int_{0}^{t^{2}} f(s) ds)^{2} = (\\int_{0}^{t^{2}} \\sqrt{f(s)}s^{1/4} ⋅ \\sqrt{f(s)}s^{−1/4} ds)^{2} ≤ \\int_{0}^{t^{2}} f(s)s^{1/2} ds ⋅ \\int_{0}^{t^{2}} f(s)s^{−1/2} ds = AC.
$$

等号成立当且仅当$\\sqrt{f(s)}s^{1/4} = k\\sqrt{f(s)}s^{−1/4}$对所有$s$成立，即$s^{1/2} = k$，但$s$在$\\lbrack 0, t^{2} \\rbrack$上变化，故等号不成立。因此$B^{2} < AC$，即$AC > B^{2}$，原不等式得证。
', 9, 'Mogullzr', '2026-01-29 14:12:41', 9, 'Mogullzr', '2026-01-29 14:12:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1564');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1564');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1564');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1565, '2003年考研数学卷1第19题', '简单', '考研数学2003年卷1真题', '设矩阵$A = \\left( \\begin{array}{ccc}
3 & 2 & 2 \\\\
2 & 3 & 2 \\\\
2 & 2 & 3 \\\\
\\end{array} \\right)$，$P = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
1 & 0 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，$B = P^{−1}A^{∗}P$，求$B + 2E$的特征值与特征向量，
其中$A^{∗}$为$A$的伴随矩阵，$E$为$3$阶单位矩阵．', '[]', '
特征值为$3$和$9$（二重）。
特征向量：对于特征值$3$，特征向量为$k_{1} \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$，其中$k_{1} \\neq 0$；
对于特征值$9$，特征向量为$k_{2} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + k_{3} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$，其中$k_{2}, k_{3}$不同时为零。
', '
首先，计算矩阵$A$的行列式：


$$
∣A∣ = \\begin{vmatrix}
3 & 2 & 2\\\\
2 & 3 & 2\\\\
2 & 2 & 3
\\end{vmatrix} = 3 ⋅ (3 ⋅ 3 - 2 ⋅ 2) - 2 ⋅ (2 ⋅ 3 - 2 ⋅ 2) + 2 ⋅ (2 ⋅ 2 - 3 ⋅ 2) = 3 ⋅ 5 - 2 ⋅ 2 + 2 ⋅ (−2) = 15 - 4 - 4 = 7.
$$

由于$∣A∣ \\neq 0$，$A$可逆，伴随矩阵$A^{∗} = ∣A∣A^{−1} = 7A^{−1}$。
求$A$的特征值：
特征多项式为


$$
∣A - μI∣ = \\begin{vmatrix}
3 - μ & 2 & 2\\\\
2 & 3 - μ & 2\\\\
2 & 2 & 3 - μ
\\end{vmatrix} = −(μ - 1)2(μ - 7),
$$

特征值为$μ = 1$（二重）和$μ = 7$。
于是$A^{−1}$的特征值为$1, 1, \\frac{1}{7}$，$A^{∗} = 7A^{−1}$的特征值为$7, 7, 1$。
由于$B = P^{−1}A^{∗}P$，$B$与$A^{∗}$相似，故$B$的特征值也为$7, 7, 1$。
因此$B + 2E$的特征值为$7 + 2 = 9, 7 + 2 = 9, 1 + 2 = 3$，即$9$（二重）和$3$。
为求特征向量，注意到$B + 2E = P^{−1}(A^{∗} + 2I)P$，故$B + 2E$与$C = A^{∗} + 2I$相似。
计算$A^{∗}$：
余子式矩阵为


$$
\\left( \\begin{array}{ccc}
5 & −2 & −2 \\\\
−2 & 5 & −2 \\\\
−2 & −2 & 5 \\\\
\\end{array} \\right) ,
$$

所以$A^{∗} = \\left( \\begin{array}{ccc}
5 & −2 & −2 \\\\
−2 & 5 & −2 \\\\
−2 & −2 & 5 \\\\
\\end{array} \\right)$。
于是


$$
C = A^{∗} + 2I = \\left( \\begin{array}{ccc}
7 & −2 & −2 \\\\
−2 & 7 & −2 \\\\
−2 & −2 & 7 \\\\
\\end{array} \\right) .
$$

求$C$的特征向量：
对于特征值$3$，解$(C - 3I)v = 0$：
$C - 3I = \\left( \\begin{array}{ccc}
4 & −2 & −2 \\\\
−2 & 4 & −2 \\\\
−2 & −2 & 4 \\\\
\\end{array} \\right) → v = k_{1} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) .$对于特征值$9$，解$(C - 9I)v = 0$：
$C - 9I = \\left( \\begin{array}{ccc}
−2 & −2 & −2 \\\\
−2 & −2 & −2 \\\\
−2 & −2 & −2 \\\\
\\end{array} \\right) → v = k_{2} \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right) + k_{3} \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right) .$计算$P^{−1}$：
$P = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
1 & 0 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) ,  P^{−1} = \\left( \\begin{array}{ccc}
0 & 1 & −1 \\\\
1 & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) .$则$B + 2E$的特征向量为$P^{−1}$乘以$C$的特征向量：对于特征值$3$，$u_{1} = P^{−1} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$。对于特征值$9$，
$u_{2} = P^{−1} \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，
$u_{3} = P^{−1} \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$。
因此，$B + 2E$的特征值为$3$和$9$（二重），特征向量如上所述。
', 9, 'Mogullzr', '2026-01-29 14:12:41', 9, 'Mogullzr', '2026-01-29 14:12:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1565');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1565');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1566, '2003年考研数学卷1第20题', '简单', '考研数学2003年卷1真题', '已知平面上三条不同直线的方程分别为
$$
l_{1} : ax + 2by + 3c = 0,    l_{2} : bx + 2cy + 3a = 0,    l_{3} : cx + 2ay + 3b = 0.
$$
试证：这三条直线交于一点的充分必要条件为$a + b + c = 0$．', '[]', '充分必要条件为$a + b + c = 0$。
', '设三条直线为：

$$
l_{1} : ax + 2by + 3c = 0,  l_{2} : bx + 2cy + 3a = 0,  l_{3} : cx + 2ay + 3b = 0.
$$

先证充分性：若$a + b + c = 0$，则三条直线交于一点。
将三式相加得：

$$
(a + b + c)x + 2(a + b + c)y + 3(a + b + c) = 0,
$$

即$(a + b + c)(x + 2y + 3) = 0$。当$a + b + c = 0$时，该式恒成立，表明三个方程线性相关。因此，若其中两条直线相交（且不平行），则它们的交点必满足第三式。为验证两条直线不平行，考虑$l_{1}$与$l_{2}$的斜率（假设系数非零）：$l_{1}$的斜率为$−\\frac{a}{2b}$，$l_{2}$的斜率为$−\\frac{b}{2c}$。若它们平行，则$\\frac{a}{b} = \\frac{b}{c}$，即$ac = b^{2}$。结合$a + b + c = 0$，即$c = −a - b$，代入得$a(−a - b) = b^{2}$，即$−a^{2} - ab = b^{2}$，即$a^{2} + ab + b^{2} = 0$。对于实数$a, b$，仅有$a = b = 0$，此时$c = 0$，但此时三条直线均退化为$0 = 0$，不合题意。故当$a, b, c$不全为零时，$l_{1}$与$l_{2}$必相交，且交点满足$l_{3}$。因此三条直线交于一点。
再证必要性：若三条直线互不相同且交于一点，则$a + b + c = 0$。
设交点为$(x_{0}, y_{0})$，则：

$$
\\begin{cases} ax_{0} + 2by_{0} + 3c = 0 \\\\ bx_{0} + 2cy_{0} + 3a = 0 \\\\ cx_{0} + 2ay_{0} + 3b = 0. \\end{cases}
$$

考虑前两式作为关于$x_{0}, y_{0}$的方程组：

$$
\\begin{cases} ax_{0} + 2by_{0} = −3c \\\\ bx_{0} + 2cy_{0} = −3a. \\end{cases}
$$

解得（若系数行列式$D = 2(ac - b^{2}) \\neq 0$）：

$$
x_{0} = \\frac{6(ab - c^{2})}{2(ac - b^{2})} = \\frac{3(ab - c^{2})}{ac - b^{2}},  y_{0} = \\frac{3(bc - a^{2})}{ac - b^{2}}.
$$

代入第三式$cx_{0} + 2ay_{0} + 3b = 0$，得：

$$
\\frac{3c(ab - c^{2}) + 6a(bc - a^{2})}{ac - b^{2}} + 3b = 0.
$$

两边乘以$ac - b^{2}$：

$$
3c(ab - c^{2}) + 6a(bc - a^{2}) + 3b(ac - b^{2}) = 0.
$$

展开：

$$
3abc - 3c^{3} + 6abc - 6a^{3} + 3abc - 3b^{3} = 0,
$$

即$12abc - 6(a^{3} + b^{3} + c^{3}) = 0$，整理得：

$$
a^{3} + b^{3} + c^{3} - 3abc = 0.
$$

因$a^{3} + b^{3} + c^{3} - 3abc = (a + b + c)(a^{2} + b^{2} + c^{2} - ab - bc - ca)$，故有：

$$
(a + b + c)(a^{2} + b^{2} + c^{2} - ab - bc - ca) = 0.
$$

若$a^{2} + b^{2} + c^{2} - ab - bc - ca = 0$，则$2(a^{2} + b^{2} + c^{2} - ab - bc - ca) = (a - b)2 + (b - c)2 + (c - a)2 = 0$，即$a = b = c$。但若$a = b = c$，则三条直线方程变为：

$$
a(x + 2y + 3) = 0,  a(x + 2y + 3) = 0,  a(x + 2y + 3) = 0,
$$

即三条直线重合，与“三条不同直线”矛盾。故必有$a + b + c = 0$。
若系数行列式$D = 0$，即$ac = b^{2}$，则$l_{1}$与$l_{2}$可能平行或重合。但由三条直线互不相同且交于一点，可知$l_{1}$与$l_{2}$必相交，故$D \\neq 0$。因此上述推导成立。
综上，三条直线交于一点的充要条件为$a + b + c = 0$。
', 9, 'Mogullzr', '2026-01-29 14:12:41', 9, 'Mogullzr', '2026-01-29 14:12:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1566');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1566');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1566');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1567, '2003年考研数学卷1第21题', '简单', '考研数学2003年卷1真题', '已知甲、乙两箱中装有同种产品，其中甲箱中装有$3$件合格品和$3$件次品，乙箱中仅装有$3$件合格品．
从甲箱中任取$3$件产品放入乙箱后，求：(1) 乙箱中次品件数$X$的数学期望；(2) 从乙箱中任取一件产品是次品的概率．', '[]', '
(1)$E \\lbrack X \\rbrack  = 1.5$
(2)$0.25$
', '
(Ⅰ) 设$X_{i} = \\begin{cases} 0 & 从甲箱中取出的第i件产品是合格品， \\\\ 1 & 从甲箱中取出的第i件产品是次品 \\end{cases}$$(i = 1, 2, 3)$。则$X_{i}$的概率分布为

$$
\\begin{array}{c|cc}
X_{i} & 0 & 1 \\\\
P & \\frac{1}{2} & \\frac{1}{2} \\\\
\\end{array}
$$

因为$X = X_{1} + X_{2} + X_{3}$，所以由数学期望的线性可加性有

$$
E(X) = E(X_{1}) + E(X_{2}) + E(X_{3}) = \\frac{3}{2}.
$$


(Ⅱ) 设$A$表示事件“从乙箱中任取一件产品是次品”，由于$\\{X = 0\\}, \\{X = 1\\}, \\{X = 2\\}, \\{X = 3\\}$构成完备事件组，因此根据全概率公式有

$$
P(A) = \\sum_{k=0}^{3} P\\{X = k\\}P\\{A∣X = k\\} = \\sum_{k=0}^{3} P\\{X = k\\} ⋅ \\frac{k}{6} = \\frac{1}{6} \\sum_{k=0}^{3} k ⋅ P\\{X = k\\}
$$


$$
= \\frac{1}{6}E(X) = \\frac{1}{6} ⋅ \\frac{3}{2} = \\frac{1}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:42', 9, 'Mogullzr', '2026-01-29 14:12:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1567');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1567');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1567');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1568, '2003年考研数学卷1第22题', '简单', '考研数学2003年卷1真题', '设总体$X$的概率密度为$f(x) = \\begin{cases} 2e^{−2(x-θ)} & x > θ \\\\ 0 & x ≤ θ \\end{cases}$其中$θ > 0$是未知参数．
从总体$X$中抽取简单随机样本$X_{1}, X_{2}, ⋯  , X_{n}$，记$\\hat{θ} = \\min(X_{1}, X_{2}, ⋯  , X_{n})$．(1) 求总体$X$的分布函数$F(x)$；(2) 求统计量$\\hat{θ}$的分布函数$F_{\\hat{θ}}(x)$；(3) 如果用$\\hat{θ}$作为$θ$的估计量，讨论它是否具有无偏性．', '[]', '
(1)$F(x) = \\begin{cases} 0 & x ≤ θ \\\\ 1 - e^{−2(x-θ)} & x > θ. \\end{cases}$
(2)$F_{\\hat{θ}}(x) = \\begin{cases} 0 & x ≤ θ \\\\ 1 - e^{−2n(x-θ)} & x > θ. \\end{cases}$
(3)$\\hat{θ}$不是$θ$的无偏估计量。
', '
(1) 总体$X$的分布函数$F(x)$由概率密度函数积分得到。
当$x ≤ θ$时，$F(x) = 0$；
当$x > θ$时，


$$
F(x) = \\int_{θ}^{x} 2e^{−2(t-θ)} dt = 1 - e^{−2(x-θ)}.
$$

(2) 统计量$\\hat{θ} = \\min(X_{1}, X_{2}, … , X_{n})$的分布函数为


$$
F_{\\hat{θ}}(x) = 1 -  \\lbrack 1 - F(x) \\rbrack n.
$$

当$x ≤ θ$时，$F(x) = 0$，所以$F_{\\hat{θ}}(x) = 0$；
当$x > θ$时，$F(x) = 1 - e^{−2(x-θ)}$，因此


$$
F_{\\hat{θ}}(x) = 1 - e^{−2n(x-θ)}.
$$

(3)$\\hat{θ}$的概率密度函数为


$$
f_{\\hat{θ}}(x) = \\begin{cases} 0 & x ≤ θ \\\\ 2ne^{−2n(x-θ)} & x > θ. \\end{cases}
$$

其期望为


$$
E(\\hat{θ}) = \\int_{θ}^{∞} x ⋅ 2ne^{−2n(x-θ)} dx = θ + \\frac{1}{2n} \\neq θ,
$$

因此$\\hat{θ}$不是无偏估计量。
', 9, 'Mogullzr', '2026-01-29 14:12:42', 9, 'Mogullzr', '2026-01-29 14:12:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1568');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1568');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '1568');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1569, '2003年考研数学卷2第1题', '简单', '考研数学2003年卷2真题', '若$x → 0$时，$(1 - ax^{2})41​ - 1$与$x \\sin x$是等价无穷小，则$a =$______．', '[]', '$−4$
', '
当$x → 0$时，等价无穷小要求$\\lim_{x→0} \\frac{(1-ax^{2})41​-1}{x \\sin x} = 1$。
由于$x \\sin x ∼ x^{2}$，极限化为$\\lim_{x→0} \\frac{(1-ax^{2})41​-1}{x^{2}} = 1$。
利用等价无穷小替换，当$u → 0$时，$(1 + u)n - 1 ∼ nu$，这里$u = −ax^{2}$，$n = \\frac{1}{4}$，
所以$(1 - ax^{2})41​ - 1 ∼ \\frac{1}{4}(−ax^{2}) = −\\frac{a}{4}x^{2}$。
代入极限得$\\lim_{x→0} \\frac{−\\frac{a}{4}x^{2}}{x^{2}} = −\\frac{a}{4} = 1$，
解得$a = −4$。
', 9, 'Mogullzr', '2026-01-29 14:12:44', 9, 'Mogullzr', '2026-01-29 14:12:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1569');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1569');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1569');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1570, '2003年考研数学卷2第2题', '简单', '考研数学2003年卷2真题', '设函数$y = f(x)$由方程$xy + 2 \\ln x = y^{4}$所确定，则曲线$y = f(x)$在点(1,1)处的切线方程是 ______．', '[]', '
$y = x$
', '
给定方程$xy + 2 \\ln x = y^{4}$，点$(1, 1)$满足该方程。
对方程两边关于$x$求导，注意$y$是$x$的函数：
左边导数为$y + x\\frac{dy}{dx} + \\frac{2}{x}$，右边导数为$4y^{3}\\frac{dy}{dx}$。
于是有：


$$
y + x\\frac{dy}{dx} + \\frac{2}{x} = 4y^{3}\\frac{dy}{dx}
$$

代入点$(1, 1)$：


$$
1 + 1 ⋅ \\frac{dy}{dx} + \\frac{2}{1} = 4 ⋅ 1^{3} ⋅ \\frac{dy}{dx}
$$

简化得：


$$
\\begin{array}{c}
1 + \\frac{dy}{dx} + 2 = 4\\frac{dy}{dx} \\\\
3 + \\frac{dy}{dx} = 4\\frac{dy}{dx} \\\\
3 = 3\\frac{dy}{dx} \\\\
\\end{array}
$$

因此，在点$(1, 1)$处的切线斜率为 1。
切线方程为：


$$
y - 1 = 1 ⋅ (x - 1)
$$

即$y = x$。
', 9, 'Mogullzr', '2026-01-29 14:12:44', 9, 'Mogullzr', '2026-01-29 14:12:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1570');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1570');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1570');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1571, '2003年考研数学卷2第3题', '简单', '考研数学2003年卷2真题', '$y = 2^{x}$的麦克劳林公式中$x^{n}$项的系数是 ______．', '[]', '
$\\frac{(\\ln 2)n}{n!}$
', '
函数$y = 2^{x}$的麦克劳林公式是其在$x = 0$处的泰勒级数展开。首先，将$2^{x}$写为$e^{x \\ln 2}$，然后求其 n 阶导数。n 阶导数为$f^{(n)}(x) = (\\ln 2)n ⋅ 2^{x}$。在$x = 0$处，有$f^{(n)}(0) = (\\ln 2)n$。代入泰勒级数公式$f(x) = \\sum_{n=0}^{∞} \\frac{f^{(n)}(0)}{n!}x^{n}$，得到$2^{x} = \\sum_{n=0}^{∞} \\frac{(\\ln 2)n}{n!}x^{n}$。因此，$x^{n}$项的系数为$\\frac{(\\ln 2)n}{n!}$。
', 9, 'Mogullzr', '2026-01-29 14:12:44', 9, 'Mogullzr', '2026-01-29 14:12:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1571');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1571');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1571');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1572, '2003年考研数学卷2第4题', '简单', '考研数学2003年卷2真题', '设曲线的极坐标方程为$ρ = e^{aθ}$（$a > 0$），
则该曲线上相应于$θ$从$0$变到$2π$的一段弧与极轴所围成的图形的面积为 ______．', '[]', '

$$
\\frac{1}{4a} (e^{4aπ} - 1)
$$

', '在极坐标系中，曲线$ρ = e^{aθ}$（$a > 0$) 相应于$θ$从$0$到$2π$的一段弧与极轴所围成的图形的面积公式为：

$$
A = \\frac{1}{2} \\int_{0}^{2π} ρ^{2} dθ
$$

代入$ρ = e^{aθ}$，得：

$$
A = \\frac{1}{2} \\int_{0}^{2π} (e^{aθ})^{2}  dθ = \\frac{1}{2} \\int_{0}^{2π} e^{2aθ} dθ
$$

计算积分：

$$
∫ e^{2aθ} dθ = \\frac{1}{2a}e^{2aθ}
$$

所以：

$$
A = \\frac{1}{2}  \\lbrack \\frac{1}{2a}e^{2aθ} \\rbrack _{0}^{2π} = \\frac{1}{2} ⋅ \\frac{1}{2a} (e^{4aπ} - e^{0}) = \\frac{1}{4a} (e^{4aπ} - 1)
$$

因此，所求面积为$\\frac{1}{4a} (e^{4aπ} - 1)$。
', 9, 'Mogullzr', '2026-01-29 14:12:45', 9, 'Mogullzr', '2026-01-29 14:12:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1572');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1572');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1572');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1573, '2003年考研数学卷2第5题', '简单', '考研数学2003年卷2真题', '设$α$为$3$维列向量，$α^{T}$是$α$的转置．若$αα^{T} = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
−1 & 1 & −1 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right)$，则$α^{T}α =$______．', '[]', '3
', '已知$αα^{T} = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
−1 & 1 & −1 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right)$。由于$αα^{T}$是秩为1的矩阵，其非零特征值等于$α^{T}α$，而迹等于特征值之和。计算矩阵的迹为$1 + 1 + 1 = 3$，因此$α^{T}α = 3$。
Alternatively,设$α =  \\lbrack a, b, c \\rbrack T$，则$αα^{T} = \\left( \\begin{array}{ccc}
a^{2} & ab & ac \\\\
ab & b^{2} & bc \\\\
ac & bc & c^{2} \\\\
\\end{array} \\right)$。与给定矩阵比较，得$a^{2} = 1$，$b^{2} = 1$，$c^{2} = 1$，$ab = −1$，$ac = 1$，$bc = −1$。解得$α =  \\lbrack 1, −1, 1 \\rbrack T$或$α =  \\lbrack −1, 1, −1 \\rbrack T$。计算$α^{T}α$，均为$1 + 1 + 1 = 3$。故答案为3。
', 9, 'Mogullzr', '2026-01-29 14:12:45', 9, 'Mogullzr', '2026-01-29 14:12:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1573');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1573');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1573');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1574, '2003年考研数学卷2第6题', '简单', '考研数学2003年卷2真题', '设三阶方阵$A, B$满足$A^{2}B - A - B = E$，其中$E$为三阶单位矩阵，若$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
−2 & 0 & 1 \\\\
\\end{array} \\right)$，则$∣B∣ =$______．', '[]', '

$$
\\frac{1}{2}​
$$

', '已知三阶方阵$A$和$B$满足方程：

$$
A^{2}B - A - B = E,
$$

其中$E$为单位矩阵，且

$$
A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
−2 & 0 & 1 \\\\
\\end{array} \\right) .
$$

将方程改写为：

$$
A^{2}B - B = A + E,
$$

即：

$$
(A^{2} - I)B = A + I,
$$

其中$I$为单位矩阵。注意到$A^{2} - I = (A - I)(A + I)$，若$A + I$可逆，则上式可写为：

$$
\\begin{array}{cc}
B & = (A^{2} - I)−1(A + I) \\\\
 & =  \\lbrack (A - I)(A + I) \\rbrack −1(A + I) \\\\
 & = (A + I)−1(A - I)−1(A + I). \\\\
\\end{array}
$$

由于矩阵乘积的行列式等于行列式的乘积，且行列式乘法可交换，有：

$$
\\begin{array}{cc}
∣B∣ & = ∣(A + I)−1(A - I)−1(A + I)∣ \\\\
 & = ∣(A + I)−1∣ ⋅ ∣(A - I)−1∣ ⋅ ∣A + I∣ \\\\
 & = \\frac{1}{∣A + I∣} ⋅ \\frac{1}{∣A - I∣} ⋅ ∣A + I∣ \\\\
\\end{array}
$$

因此，只需计算$∣A - I∣$。由

$$
A - I = \\left( \\begin{array}{ccc}
1 - 1 & 0 & 1 \\\\
0 & 2 - 1 & 0 \\\\
−2 & 0 & 1 - 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
−2 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

计算其行列式：

$$
∣A - I∣ = \\begin{vmatrix}
0 & 0 & 1\\\\
0 & 1 & 0\\\\
−2 & 0 & 0
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
0 & 1\\\\
−2 & 0
\\end{vmatrix} = 1 ⋅ (0 ⋅ 0 - 1 ⋅ (−2)) = 2.
$$

故

$$
∣B∣ = \\frac{1}{∣A - I∣} = \\frac{1}{2}.
$$

因此，$∣B∣ = \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:45', 9, 'Mogullzr', '2026-01-29 14:12:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1574');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1574');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1574');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1575, '2003年考研数学卷2第7题', '', '考研数学2003年卷2真题', '/problems/other/1554', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:45', 9, 'Mogullzr', '2026-01-29 14:12:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1576, '2003年考研数学卷2第8题', '简单', '考研数学2003年卷2真题', '设$a_{n} = \\frac{3}{2} \\int_{0}^{\\frac{n}{n+1}} x^{n-1}\\sqrt{1 + x^{n}}dx$，
则极限$\\lim_{n→∞} na_{n}$等于', '[''$(1 + e)23\\u200b + 1$．'', ''$(1 + e^{−1})23\\u200b - 1$．'', ''$(1 + e^{−1})23\\u200b + 1$．'', ''$(1 + e)23\\u200b - 1$．'']', "['B']", '
给定$a_{n} = \\frac{3}{2} \\int_{0}^{\\frac{n}{n+1}} x^{n-1}\\sqrt{1 + x^{n}}dx$，需要求$\\lim_{n→∞} na_{n}$。
考虑积分$I_{n} = \\int_{0}^{\\frac{n}{n+1}} x^{n-1}\\sqrt{1 + x^{n}}dx$。
令$x = 1 - \\frac{y}{n}$，则$dx = −\\frac{dy}{n}$。
积分限变化：当$x = 0$时，$y = n$；当$x = \\frac{n}{n+1}$时，$y = \\frac{n}{n+1} ≈ 1$。
于是，

$$
\\begin{array}{cc}
I_{n} & = \\int_{y=n}^{y=\\frac{n}{n+1}} (1 - \\frac{y}{n})^{n-1} \\sqrt{1 + (1 - \\frac{y}{n})^{n}} (−\\frac{dy}{n}) \\\\
 & = \\frac{1}{n} \\int_{y=\\frac{n}{n+1}}^{y=n} (1 - \\frac{y}{n})^{n-1} \\sqrt{1 + (1 - \\frac{y}{n})^{n}} dy. \\\\
\\end{array}
$$
当$n → ∞$时，$(1 - \\frac{y}{n})^{n-1} ≈ e^{−y}$，$(1 - \\frac{y}{n})^{n} ≈ e^{−y}$，且被积函数在$y$较大时衰减，主要贡献来自$y$接近 1。
因此，

$$
I_{n} ≈ \\frac{1}{n} \\int_{1}^{∞} e^{−y}\\sqrt{1 + e^{−y}}dy.
$$
于是，

$$
nI_{n} ≈ \\int_{1}^{∞} e^{−y}\\sqrt{1 + e^{−y}}dy.
$$
令$u = e^{−y}$，则$du = −e^{−y}dy$，即$e^{−y}dy = −du$。
积分限变化：当$y = 1$时，$u = e^{−1}$；当$y = ∞$时，$u = 0$。
所以，

$$
\\begin{array}{cc}
\\int_{1}^{∞} e^{−y}\\sqrt{1 + e^{−y}} dy & = \\int_{e^{−1}}^{0} \\sqrt{1 + u} (−du) \\\\
 & = \\int_{0}^{e^{−1}} \\sqrt{1 + u} du \\\\
 & =  \\lbrack \\frac{2}{3}(1 + u)3/2 \\rbrack _{0}^{e^{−1}} \\\\
\\end{array}
$$
因此，

$$
nI_{n} ≈ \\frac{2}{3} ((1 + e^{−1})3/2 - 1) .
$$
由于$a_{n} = \\frac{3}{2}I_{n}$，有

$$
na_{n} = n ⋅ \\frac{3}{2}I_{n} = \\frac{3}{2}nI_{n} ≈ \\frac{3}{2} ⋅ \\frac{2}{3} ((1 + e^{−1})3/2 - 1) = (1 + e^{−1})3/2 - 1.
$$
故$\\lim_{n→∞} na_{n} = (1 + e^{−1})23​ - 1$，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:12:45', 9, 'Mogullzr', '2026-01-29 14:12:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1576');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1576');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1576');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1577, '2003年考研数学卷2第9题', '简单', '考研数学2003年卷2真题', '已知$y = \\frac{x}{\\ln x}$是微分方程$y^{′} = \\frac{y}{x} + ϕ (\\frac{x}{y})$的解，
则$ϕ (\\frac{x}{y})$的表达式为', '[''$−\\\\frac{y^{2}}{x^{2}}$．'', ''$\\\\frac{y^{2}}{x^{2}}$．'', ''$−\\\\frac{x^{2}}{y^{2}}$．'', ''$\\\\frac{x^{2}}{y^{2}}$．'']', "['A']", '
已知$y = \\frac{x}{\\ln x}$是微分方程

$$
y^{′} = \\frac{y}{x} + ϕ (\\frac{x}{y})
$$
的解。首先求导$y^{′}$：
由$y = \\frac{x}{\\ln x}$，使用商法则，

$$
y^{′} = \\frac{\\ln x ⋅ 1 - x ⋅ \\frac{1}{x}}{(\\ln x)2} = \\frac{\\ln x - 1}{(\\ln x)2}.
$$
代入微分方程：
左边为

$$
y^{′} = \\frac{\\ln x - 1}{(\\ln x)2},
$$
右边为

$$
\\frac{y}{x} + ϕ (\\frac{x}{y}) .
$$
计算

$$
\\frac{y}{x} = \\frac{\\frac{x}{\\ln x}}{x} = \\frac{1}{\\ln x},
$$
且

$$
\\frac{x}{y} = \\frac{x}{\\frac{x}{\\ln x}} = \\ln x.
$$
于是方程化为

$$
\\frac{\\ln x - 1}{(\\ln x)2} = \\frac{1}{\\ln x} + ϕ(\\ln x).
$$
令$t = \\ln x$，则

$$
\\frac{t - 1}{t^{2}} = \\frac{1}{t} + ϕ(t).
$$
解得

$$
ϕ(t) = \\frac{t - 1}{t^{2}} - \\frac{1}{t} = \\frac{t - 1 - t}{t^{2}} = −\\frac{1}{t^{2}}.
$$
由于$t = \\frac{x}{y}$，所以

$$
ϕ (\\frac{x}{y}) = −\\frac{1}{(\\frac{x}{y})^{2}} = −\\frac{y^{2}}{x^{2}}.
$$
因此，$ϕ (\\frac{x}{y})$的表达式为$−\\frac{y^{2}}{x^{2}}$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:12:45', 9, 'Mogullzr', '2026-01-29 14:12:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1577');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1577');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1577');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1578, '2003年考研数学卷2第10题', '', '考研数学2003年卷2真题', '/problems/other/1553', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:46', 9, 'Mogullzr', '2026-01-29 14:12:46', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1579, '2003年考研数学卷2第11题', '简单', '考研数学2003年卷2真题', '设$I_{1} = \\int_{0}^{\\frac{π}{4}} \\frac{\\tan x}{x}dx$，$I_{2} = \\int_{0}^{\\frac{π}{4}} \\frac{x}{\\tan x}dx$，
则', '[''$I_{1} > I_{2} > 1$．'', ''$1 > I_{1} > I_{2}$．'', ''$I_{2} > I_{1} > 1$．'', ''$1 > I_{2} > I_{1}$．'']', "['B']", '考虑函数$f(x) = \\frac{\\tan x}{x}$，则$I_{1} = \\int_{0}^{\\frac{π}{4}} f(x) dx$和$I_{2} = \\int_{0}^{\\frac{π}{4}} \\frac{1}{f(x)} dx$。在区间$(0, \\frac{π}{4} \\rbrack$上，由于$\\tan x > x$，有$f(x) > 1$，因此$\\frac{1}{f(x)} < 1$。于是$I_{1} > I_{2}$。
通过级数展开估算：$I_{1} ≈ 0.849 < 1$，$I_{2} ≈ 0.730 < 1$，故$1 > I_{1} > I_{2}$。
选项 B 符合这一结果。', 9, 'Mogullzr', '2026-01-29 14:12:46', 9, 'Mogullzr', '2026-01-29 14:12:46', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1579');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1579');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1579');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1580, '2003年考研数学卷2第12题', '', '考研数学2003年卷2真题', '/problems/other/1556', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:46', 9, 'Mogullzr', '2026-01-29 14:12:46', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1581, '2003年考研数学卷2第13题', '简单', '考研数学2003年卷2真题', '设函数
$$
f(x) = \\begin{cases} \\frac{\\ln(1 + ax^{3})}{x - arcsin x} & x < 0; \\\\ 6 & x = 0; \\\\ \\frac{e^{ax} + x^{2} - ax - 1}{x \\sin \\frac{x}{4}} & x > 0. \\end{cases}
$$
问$a$为何值时，$f(x)$在$x = 0$处连续；
$a$为何值时，$x = 0$是$f(x)$的可去间断点？', '[]', '
连续时$a = −1$，可去间断点时$a = −2$
', '
因为$f(0) = 6$，而单侧极限为

$$
\\begin{array}{c}
f(0^{-}) = \\lim_{x→0^{-}} f(x) = \\lim_{x→0^{-}} \\frac{\\ln(1 + ax^{3})}{x - arcsin x} = \\lim_{x→0^{-}} \\frac{ax^{3}}{x - arcsin x} \\\\
= \\lim_{x→0^{-}} \\frac{3ax^{2}}{1 - \\frac{1}{\\sqrt{1-x^{2}}}} = \\lim_{x→0^{-}} \\frac{3ax^{2}}{\\sqrt{1 - x^{2}} - 1} ⋅ \\lim_{x→0^{-}} \\sqrt{1 - x^{2}} = \\lim_{x→0^{-}} \\frac{3ax^{2}}{\\frac{1}{2}x^{2}} = −6a, \\\\
\\end{array}
$$



$$
\\begin{array}{c}
f(0^{+}) = \\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\frac{e^{ax} + x^{2} - ax - 1}{x \\sin \\frac{x}{4}} = \\lim_{x→0^{+}} \\frac{e^{ax} + x^{2} - ax - 1}{\\frac{x^{2}}{4}} \\\\
= 4 \\lim_{x→0^{+}} \\frac{e^{ax} + x^{2} - ax - 1}{x^{2}} = 4 \\lim_{x→0^{+}} \\frac{ae^{ax} + 2x - a}{2x} \\\\
\\end{array}
$$

所以，$x = 0$为$f(x)$的连续点当且仅当$−6a = 6 = 2a^{2} + 4$，即$a = −1$；
$x = 0$为$f(x)$的可去间断点当且仅当$−6a = 2a^{2} + 4 \\neq 6$，即$2a^{2} + 6a + 4 = 0$但$a \\neq −1$，即$a = −2$。
', 9, 'Mogullzr', '2026-01-29 14:12:46', 9, 'Mogullzr', '2026-01-29 14:12:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1581');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1581');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1581');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1582, '2003年考研数学卷2第14题', '简单', '考研数学2003年卷2真题', '设函数$y = y(x)$由参数方程$\\begin{cases} x = 1 + 2t^{2} \\\\ y = \\int_{1}^{1+2 \\ln t} \\frac{e^{u}}{u}du \\end{cases}$（$t > 1$）所确定，求$\\frac{d^{2}y}{dx^{2}}​_{x=9}$．', '[]', '

$$
−\\frac{e}{16(1 + 2 \\ln 2)2}
$$

', '给定参数方程：

$$
x = 1 + 2t^{2},  y = \\int_{1}^{1+2 \\ln t} \\frac{e^{u}}{u} du (t > 1)
$$

求二阶导数$\\frac{d^{2}y}{dx^{2}}​_{x=9}$.
首先，计算一阶导数$\\frac{dy}{dx}$。
由参数方程求导公式：

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}}
$$

其中：

$$
\\frac{dx}{dt} = \\frac{d}{dt}(1 + 2t^{2}) = 4t
$$



$$
\\frac{dy}{dt} = \\frac{d}{dt} (\\int_{1}^{1+2 \\ln t} \\frac{e^{u}}{u} du) = \\frac{e^{1+2 \\ln t}}{1 + 2 \\ln t} ⋅ \\frac{d}{dt}(1 + 2 \\ln t) = \\frac{e ⋅ t^{2}}{1 + 2 \\ln t} ⋅ \\frac{2}{t} = \\frac{2et}{1 + 2 \\ln t}
$$

因此：

$$
\\frac{dy}{dx} = \\frac{\\frac{2et}{1+2 \\ln t}}{4t} = \\frac{e}{2(1 + 2 \\ln t)}
$$

接下来，计算二阶导数$\\frac{d^{2}y}{dx^{2}}$：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{\\frac{d}{dt} (\\frac{dy}{dx})}{\\frac{dx}{dt}}
$$

其中：

$$
\\begin{array}{cc}
\\frac{d}{dt} (\\frac{dy}{dx}) & = \\frac{d}{dt} (\\frac{e}{2(1 + 2 \\ln t)}) \\\\
 & = \\frac{e}{2} ⋅ \\frac{d}{dt} ((1 + 2 \\ln t)−1) \\\\
 & = \\frac{e}{2} ⋅ (−\\frac{1}{(1 + 2 \\ln t)2} ⋅ \\frac{2}{t}) \\\\
\\end{array}
$$

代入：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{−\\frac{e}{t(1+2 \\ln t)2}}{4t} = −\\frac{e}{4t^{2}(1 + 2 \\ln t)2}
$$

当$x = 9$时，由$x = 1 + 2t^{2} = 9$得$2t^{2} = 8$，即$t^{2} = 4$，取$t = 2$（因$t > 1$）。
代入$t = 2$：

$$
\\frac{d^{2}y}{dx^{2}}​_{x=9} = −\\frac{e}{4 ⋅ 2^{2} ⋅ (1 + 2 \\ln 2)2} = −\\frac{e}{16(1 + 2 \\ln 2)2}
$$

故结果为：

$$
−\\frac{e}{16(1 + 2 \\ln 2)2}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:46', 9, 'Mogullzr', '2026-01-29 14:12:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1582');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1582');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1582');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1583, '2003年考研数学卷2第15题', '简单', '考研数学2003年卷2真题', '计算不定积分$∫ \\frac{xe^{arctan x}}{(1+x^{2})3/2}dx$．', '[]', '

$$
\\frac{(x - 1)e^{arctan x}}{2\\sqrt{1 + x^{2}}} + C
$$

', '考虑积分$∫ \\frac{xe^{arctan x}}{(1+x^{2})3/2}dx$。令$t = arctan x$，则$x = \\tan t$，$dx = sec^{2} tdt$，且$e^{arctan x} = e^{t}$。分母$(1 + x^{2})3/2 = (1 + \\tan^{2} t)3/2 = (sec^{2} t)3/2 = sec^{3} t$。代入得：

$$
∫ \\frac{xe^{arctan x}}{(1 + x^{2})3/2}dx = ∫ \\frac{\\tan t ⋅ e^{t}}{sec^{3} t} ⋅ sec^{2} tdt = ∫ \\frac{\\tan t ⋅ e^{t}}{sec t}dt.
$$

由于$\\tan t/ sec t = \\sin t$，积分化为：

$$
∫ \\sin t ⋅ e^{t}dt.
$$

计算$∫ \\sin t ⋅ e^{t}dt$，使用分部积分法。令$I = ∫ e^{t} \\sin tdt$，设$u = \\sin t$，$dv = e^{t}dt$，则$du = \\cos tdt$，$v = e^{t}$，得：

$$
I = e^{t} \\sin t - ∫ e^{t} \\cos tdt.
$$

对$∫ e^{t} \\cos tdt$再次分部积分，设$u = \\cos t$，$dv = e^{t}dt$，则$du = − \\sin tdt$，$v = e^{t}$，得：

$$
∫ e^{t} \\cos tdt = e^{t} \\cos t - ∫ e^{t}(− \\sin t)dt = e^{t} \\cos t + ∫ e^{t} \\sin tdt = e^{t} \\cos t + I.
$$

代入回$I$：

$$
I = e^{t} \\sin t - (e^{t} \\cos t + I) = e^{t} \\sin t - e^{t} \\cos t - I,
$$

整理得：

$$
2I = e^{t}(\\sin t - \\cos t),
$$

所以：

$$
I = \\frac{e^{t}}{2}(\\sin t - \\cos t) + C.
$$

代回$t = arctan x$，并利用$\\sin t = \\frac{x}{\\sqrt{1+x^{2}}}$，$\\cos t = \\frac{1}{\\sqrt{1+x^{2}}}$，得：

$$
∫ \\frac{xe^{arctan x}}{(1 + x^{2})3/2}dx = \\frac{e^{arctan x}}{2} (\\frac{x}{\\sqrt{1 + x^{2}}} - \\frac{1}{\\sqrt{1 + x^{2}}}) + C = \\frac{(x - 1)e^{arctan x}}{2\\sqrt{1 + x^{2}}} + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:46', 9, 'Mogullzr', '2026-01-29 14:12:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1583');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1584, '2003年考研数学卷2第16题', '', '考研数学2003年卷2真题', '/problems/other/1563', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:47', 9, 'Mogullzr', '2026-01-29 14:12:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1585, '2003年考研数学卷2第17题', '简单', '考研数学2003年卷2真题', '讨论曲线$y = 4 \\ln x + k$与$y = 4x + \\ln^{4} x$的交点个数．', '[]', '
当$k < 4$时，交点个数为 0；
当$k = 4$时，交点个数为 1；
当$k > 4$时，交点个数为 2。
', '
考虑曲线$y = 4 \\ln x + k$与$y = 4x + \\ln^{4} x$的交点，即方程$4 \\ln x + k = 4x + \\ln^{4} x$。
令$k = 4x + \\ln^{4} x - 4 \\ln x$。
设$t = \\ln x$（其中$x > 0$，故$t ∈ R$)，则函数化为$g(t) = 4e^{t} + t^{4} - 4t$。
问题转化为讨论方程$k = g(t)$的解的个数。
求导$g^{′}(t) = 4(e^{t} + t^{3} - 1)$。
令$h(t) = e^{t} + t^{3} - 1$，则$h^{′}(t) = e^{t} + 3t^{2} > 0$，故$h(t)$严格递增。
当$t = 0$时，$h(0) = 0$，即$g^{′}(0) = 0$，且$t = 0$是唯一临界点。
计算$g(0) = 4$。
当$t < 0$时，$g^{′}(t) < 0$，函数单调递减；当$t > 0$时，$g^{′}(t) > 0$，函数单调递增。
因此，$g(t)$在$t = 0$处取得最小值$4$。
当$t → −∞$时，$g(t) → +∞$；当$t → +∞$时，$g(t) → +∞$。
故$g(t)$的值域为$\\lbrack 4, +∞)$。
于是：
当$k < 4$时，方程$k = g(t)$无解，交点个数为 0；当$k = 4$时，方程有唯一解$t = 0$（即$x = 1$），交点个数为 1；当$k > 4$时，方程有两个解（一个$t < 0$，一个$t > 0$），交点个数为 2。
', 9, 'Mogullzr', '2026-01-29 14:12:47', 9, 'Mogullzr', '2026-01-29 14:12:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1585');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1585');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '1585');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1586, '2003年考研数学卷2第18题', '简单', '考研数学2003年卷2真题', '设位于第一象限的曲线$y = f(x)$过点$(\\frac{\\sqrt{2}}{2}, \\frac{1}{2})$，
其上任一点$P(x, y)$处的法线与$y$轴的交点为$Q$，且线段$PQ$被$x$轴平分．(1) 求曲线$y = f(x)$的方程；(2) 已知曲线$y = \\sin x$在$\\lbrack 0, π \\rbrack$上的弧长为$l$，试用$l$表示曲线$y = f(x)$的弧长$s$．', '[]', '(1) 曲线方程为$x^{2} + 2y^{2} = 1$（其中$x > 0, y > 0$）。
(2) 曲线$y = f(x)$的弧长$s = \\frac{l}{2\\sqrt{2}}$。
', '
(1) 曲线$y = f(x)$在点$P(x, y)$处的法线方程为


$$
Y - y = −\\frac{1}{y^{′}}(X - x).
$$

令$X = 0$，则它与$y$轴的交点为$Q (0, y + \\frac{x}{y^{′}})$。由题设，线段$PQ$被$x$轴平分，从而


$$
\\frac{1}{2}(y + y + \\frac{x}{y^{′}}) = 0  ⇒  2y dy + x dx = 0.
$$

积分得


$$
\\frac{x^{2}}{2} + y^{2} = C (C为任意常数),
$$

代入初始条件


$$
y∣_{x=\\frac{\\sqrt{2}}{2}} = \\frac{1}{2}
$$

得


$$
C = \\frac{1}{2},
$$

故曲线$y = f(x)$的方程为


$$
\\frac{x^{2}}{2} + y^{2} = \\frac{1}{2},
$$

即


$$
x^{2} + 2y^{2} = 1.
$$

(II) 曲线$y = \\sin x$在$\\lbrack 0, π \\rbrack$上的弧长为

$$
l = \\int_{0}^{π} \\sqrt{1 + y^{′2}} dx = \\int_{0}^{π} \\sqrt{1 + \\cos^{2} x} dx
$$


$$
= \\int_{0}^{π} \\sqrt{1 + \\cos^{2} t} dt = 2 \\int_{0}^{\\frac{π}{2}} \\sqrt{1 + \\cos^{2} t} dt.
$$

另一方面，曲线$y = f(x)$的参数方程为

$$
\\begin{cases} x = \\cos t \\\\ y = \\frac{\\sqrt{2}}{2} \\sin t \\end{cases}  (0 ≤ t ≤ \\frac{π}{2}) .
$$

于是该曲线的弧长为（其中换元$u = \\frac{π}{2} - t$）

$$
\\begin{array}{cc}
s & = \\int_{0}^{\\frac{π}{2}} \\sqrt{(x_{t}^{′})2 + (y_{t}^{′})2} dt \\\\
 & = \\int_{0}^{\\frac{π}{2}} \\sqrt{\\sin^{2} t + \\frac{1}{2} \\cos^{2} t} dt \\\\
 & = \\frac{1}{\\sqrt{2}} \\int_{0}^{\\frac{π}{2}} \\sqrt{1 + \\sin^{2} t} dt \\\\
 & = \\frac{1}{\\sqrt{2}} \\int_{\\frac{π}{2}}^{0} \\sqrt{1 + \\cos^{2} u} (−du) \\\\
 & = \\frac{1}{\\sqrt{2}} \\int_{0}^{\\frac{π}{2}} \\sqrt{1 + \\cos^{2} u} du. \\\\
\\end{array}
$$

所以$s = \\frac{\\sqrt{2}}{4}l$。
', 9, 'Mogullzr', '2026-01-29 14:12:47', 9, 'Mogullzr', '2026-01-29 14:12:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1586');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1586');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1586');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1587, '2003年考研数学卷2第19题', '简单', '考研数学2003年卷2真题', '有一平底容器，其内侧壁是由曲线$x = ϕ(y)$（$y ≥ 0$）绕$y$轴旋转而成的旋转曲面（如图），
容器的底面圆的半径为2$m$．根据设计要求，当以$3m^{3}/ \\min$的速率向容器内注入液体时，
液面的面积将以$πm^{2}/ \\min$的速率均匀扩大（假设注入液体前，容器内无液体）．(1) 根据$t$时刻液面的面积，写出$t$与$ϕ(y)$之间的关系式；(2) 求曲线$x = ϕ(y)$的方程．（注：$m$表示长度单位米，$\\min$表示时间单位分．）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/a0f2bad93fd34578ae934af91bd0dd52.jpg)
', '[]', '(1)$t =  \\lbrack ϕ(y) \\rbrack 2 - 4$(2)$x = 2e^{\\frac{π}{6}y}$
', '(1) 设$t$时刻液面的高度为$y$，液面的半径为$ϕ(y)$，液面的面积为


$$
A = π \\lbrack ϕ(y) \\rbrack 2.
$$

根据设计要求，液面面积以$π m^{2}/min$的速率均匀扩大，即


$$
\\frac{dA}{dt} = π.
$$

积分得


$$
A = πt + C.
$$

当$t = 0$时，容器内无液体，液面在底面，底面半径为$2 m$，所以


$$
A = π × 2^{2} = 4π.
$$

代入得$C = 4π$，因此


$$
A = πt + 4π.
$$

由$A = π \\lbrack ϕ(y) \\rbrack 2$得


$$
π \\lbrack ϕ(y) \\rbrack 2 = πt + 4π,
$$

即


$$
\\lbrack ϕ(y) \\rbrack 2 = t + 4,
$$

所以


$$
t =  \\lbrack ϕ(y) \\rbrack 2 - 4.
$$


(2) 容器内液体的体积


$$
V = π \\int_{0}^{y} \\lbrack ϕ(u) \\rbrack 2 du.
$$

注入液体的速率


$$
\\frac{dV}{dt} = 3.
$$

由


$$
\\frac{dV}{dt} = π \\lbrack ϕ(y) \\rbrack 2\\frac{dy}{dt} = 3
$$

得


$$
\\lbrack ϕ(y) \\rbrack 2\\frac{dy}{dt} = \\frac{3}{π}.
$$

又由液面面积变化率


$$
\\frac{dA}{dt} = 2πϕ(y)ϕ^{′}(y)\\frac{dy}{dt} = π
$$

得


$$
2ϕ(y)ϕ^{′}(y)\\frac{dy}{dt} = 1.
$$

将前式代入后式得


$$
2ϕ(y)ϕ^{′}(y) ⋅ \\frac{3}{π \\lbrack ϕ(y) \\rbrack 2} = 1,
$$

即


$$
\\frac{6ϕ^{′}(y)}{πϕ(y)} = 1,
$$

所以


$$
\\frac{ϕ^{′}(y)}{ϕ(y)} = \\frac{π}{6}.
$$

积分得


$$
\\ln ϕ(y) = \\frac{π}{6}y + C,
$$

即


$$
ϕ(y) = C_{1}e^{\\frac{π}{6}y}.
$$

由初始条件$ϕ(0) = 2$得$C_{1} = 2$，所以曲线方程为


$$
x = ϕ(y) = 2e^{\\frac{π}{6}y}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:48', 9, 'Mogullzr', '2026-01-29 14:12:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1587');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1587');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1587');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1588, '2003年考研数学卷2第20题', '简单', '考研数学2003年卷2真题', '设函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上连续，在开区间$(a, b)$内可导，且$f^{′}(x) > 0$．
若极限$\\lim_{x→a^{+}} \\frac{f(2x-a)}{x-a}$存在，证明：(1) 在$(a, b)$内$f(x) > 0$；(2) 在$(a, b)$内存在点$ξ$，使$\\frac{b^{2}-a^{2}}{\\int_{a}^{b} f(x)dx} = \\frac{2ξ}{f(ξ)}$；(3) 在$(a, b)$内存在与(2)中$ξ$相异的点$η$，使$f^{′}(η)(b^{2} - a^{2}) = \\frac{2ξ}{ξ-a} \\int_{a}^{b} f(x)dx​$．', '[]', '
(Ⅰ) 因为$\\lim_{x→a^{+}} \\frac{f(2x-a)}{x-a}$存在，且$\\lim_{x→a^{+}}(x - a) = 0$，故$\\lim_{x→a^{+}} f(2x - a) = 0$。又$f(x)$在$\\lbrack a, b \\rbrack$上连续，从而$\\lim_{x→a^{+}} f(2x - a) = f(a)$，则$f(a) = 0$。由于$f^{′}(x) > 0$，则$f(x)$在$(a, b)$内严格单调增加，所以$f(x)$在$x = a$处取最小值，即$f(x) > f(a) = 0$，$x ∈ (a, b)$。
(Ⅱ) 取$F(x) = x^{2}$，$g(x) = \\int_{a}^{x} f(t)dt$($a ≤ x ≤ b$)，则$g^{′}(x) = f(x) > 0$，则$F(x)$、$g(x)$满足柯西中值定理的条件，于是在$(a, b)$内存在点$ξ$，使

$$
\\frac{F(b) - F(a)}{g(b) - g(a)} = \\frac{b^{2} - a^{2}}{\\int_{a}^{b} f(t)dt - \\int_{a}^{a} f(t)dt} = \\frac{2ξ}{f(ξ)} ⇒ \\frac{b^{2} - a^{2}}{\\int_{a}^{b} f(x)dx} = \\frac{2ξ}{f(ξ)}.
$$

(Ⅲ) 在区间$\\lbrack a, ξ \\rbrack$上应用拉格朗日中值定理，得在$(a, ξ)$内存在一点$η$，使

$$
f(ξ) - f(a) = f^{′}(η)(ξ - a).
$$

因$f(a) = 0$，上式即$f(ξ) = f^{′}(η)(ξ - a)$，代入 (Ⅱ) 的结论得

$$
\\frac{b^{2} - a^{2}}{\\int_{a}^{b} f(x)dx} = \\frac{2ξ}{f^{′}(η)(ξ - a)} ⇒ f^{′}(η)(b^{2} - a^{2}) = \\frac{2ξ}{ξ - a} \\int_{a}^{b} f(x)dx.
$$

', '
(Ⅰ) 因为$\\lim_{x→a^{+}} \\frac{f(2x-a)}{x-a}$存在，且$\\lim_{x→a^{+}}(x - a) = 0$，故$\\lim_{x→a^{+}} f(2x - a) = 0$。又$f(x)$在$\\lbrack a, b \\rbrack$上连续，从而$\\lim_{x→a^{+}} f(2x - a) = f(a)$，则$f(a) = 0$。由于$f^{′}(x) > 0$，则$f(x)$在$(a, b)$内严格单调增加，所以$f(x)$在$x = a$处取最小值，即$f(x) > f(a) = 0$，$x ∈ (a, b)$。
(Ⅱ) 取$F(x) = x^{2}$，$g(x) = \\int_{a}^{x} f(t)dt$($a ≤ x ≤ b$)，则$g^{′}(x) = f(x) > 0$，则$F(x)$、$g(x)$满足柯西中值定理的条件，于是在$(a, b)$内存在点$ξ$，使

$$
\\frac{F(b) - F(a)}{g(b) - g(a)} = \\frac{b^{2} - a^{2}}{\\int_{a}^{b} f(t)dt - \\int_{a}^{a} f(t)dt} = \\frac{2ξ}{f(ξ)} ⇒ \\frac{b^{2} - a^{2}}{\\int_{a}^{b} f(x)dx} = \\frac{2ξ}{f(ξ)}.
$$

(Ⅲ) 在区间$\\lbrack a, ξ \\rbrack$上应用拉格朗日中值定理，得在$(a, ξ)$内存在一点$η$，使

$$
f(ξ) - f(a) = f^{′}(η)(ξ - a).
$$

因$f(a) = 0$，上式即$f(ξ) = f^{′}(η)(ξ - a)$，代入 (Ⅱ) 的结论得

$$
\\frac{b^{2} - a^{2}}{\\int_{a}^{b} f(x)dx} = \\frac{2ξ}{f^{′}(η)(ξ - a)} ⇒ f^{′}(η)(b^{2} - a^{2}) = \\frac{2ξ}{ξ - a} \\int_{a}^{b} f(x)dx.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:49', 9, 'Mogullzr', '2026-01-29 14:12:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1588');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1588');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1588');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1589, '2003年考研数学卷2第21题', '简单', '考研数学2003年卷2真题', '若矩阵$A = \\left( \\begin{array}{ccc}
2 & 2 & 0 \\\\
8 & 2 & a \\\\
0 & 0 & 6 \\\\
\\end{array} \\right)$相似于对角阵$Λ$，试确定常数$a$的值；并求可逆矩阵$P$使$P^{−1}AP = Λ$．', '[]', '
$a = 0$，可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
2 & 0 & −2 \\\\
0 & 1 & 0 \\\\
\\end{array} \\right)$，对角阵$Λ = \\left( \\begin{array}{ccc}
6 & 0 & 0 \\\\
0 & 6 & 0 \\\\
0 & 0 & −2 \\\\
\\end{array} \\right)$。
', '
矩阵$A$相似于对角阵的条件是代数重数等于几何重数。计算特征多项式：


$$
\\begin{array}{ccccc}
det(A - λI) & \\begin{array}{ccc}
2 - λ & 2 & 0 \\\\
8 & 2 - λ & a \\\\
0 & 0 & 6 - λ \\\\
\\end{array} &  &  &  \\\\
 & = (6 - λ)  \\lbrack (2 - λ)2 - 16 \\rbrack  &  &  &  \\\\
 &  & 2 - λ & 2 & 0 \\\\
 &  & 8 & 2 - λ & a \\\\
 & = (6 - λ)(λ^{2} - 4λ - 12) &  &  &  \\\\
 &  & 0 & 0 & 6 - λ \\\\
 & = (6 - λ)(λ - 6)(λ + 2) &  &  &  \\\\
\\end{array}
$$

特征值为$λ = 6$（代数重数2）和$λ = −2$（代数重数1）。
对于$λ = 6$，计算几何重数：


$$
A - 6I = \\left( \\begin{array}{ccc}
−4 & 2 & 0 \\\\
8 & −4 & a \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) .
$$

要求几何重数为2，则矩阵秩为1。当$a = 0$时，第二行是第一行的倍数，秩为1，故$a = 0$。
当$a = 0$时，求特征向量：
对于$λ = 6$，解$(A - 6I)x = 0$：


$$
\\left( \\begin{array}{ccc}
−4 & 2 & 0 \\\\
8 & −4 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = 0,
$$

得$x_{2} = 2x_{1}$，$x_{3}$自由，特征向量为$\\left( \\begin{array}{c}
1 \\\\
2 \\\\
0 \\\\
\\end{array} \\right)$和$\\left( \\begin{array}{c}
0 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$。
对于$λ = −2$，解$(A + 2I)x = 0$：


$$
A + 2I = \\left( \\begin{array}{ccc}
4 & 2 & 0 \\\\
8 & 4 & 0 \\\\
0 & 0 & 8 \\\\
\\end{array} \\right) ,
$$

得$x_{2} = −2x_{1}$，$x_{3} = 0$，特征向量为$\\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
\\end{array} \\right)$。
取可逆矩阵$P$由特征向量组成：


$$
P = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
2 & 0 & −2 \\\\
0 & 1 & 0 \\\\
\\end{array} \\right) ,
$$

对角阵$Λ = \\left( \\begin{array}{ccc}
6 & 0 & 0 \\\\
0 & 6 & 0 \\\\
0 & 0 & −2 \\\\
\\end{array} \\right)$，满足$P^{−1}AP = Λ$。
', 9, 'Mogullzr', '2026-01-29 14:12:49', 9, 'Mogullzr', '2026-01-29 14:12:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1589');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1589');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '1589');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1590, '2003年考研数学卷2第22题', '', '考研数学2003年卷2真题', '/problems/other/1566', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:49', 9, 'Mogullzr', '2026-01-29 14:12:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1591, '2003年考研数学卷3第1题', '简单', '考研数学2003年卷3真题', '设$f(x) = \\begin{cases} x^{λ} \\cos \\frac{1}{x} & 若x \\neq 0 \\\\ 0 & 若x = 0 \\end{cases}$其导函数在$x = 0$处连续，则$λ$的取值范围是 ______．', '[]', '$λ > 2$
', '
函数$f(x)$在$x = 0$处的导函数连续需满足两个条件：一是$f^{′}(0)$存在，二是$\\lim_{x→0} f^{′}(x) = f^{′}(0)$。
首先，求$f^{′}(0)$：


$$
f^{′}(0) = \\lim_{h→0} \\frac{f(h) - f(0)}{h} = \\lim_{h→0} \\frac{h^{λ} \\cos \\frac{1}{h}}{h} = \\lim_{h→0} h^{λ-1} \\cos \\frac{1}{h}.
$$

该极限存在当且仅当$λ - 1 > 0$，即$λ > 1$，此时$f^{′}(0) = 0$。
其次，求$f^{′}(x)$对于$x \\neq 0$：


$$
\\begin{array}{cc}
f^{′}(x) & = \\frac{d}{dx} (x^{λ} \\cos \\frac{1}{x}) \\\\
 & = λx^{λ-1} \\cos \\frac{1}{x} + x^{λ} (− \\sin \\frac{1}{x}) (−\\frac{1}{x^{2}}) \\\\
\\end{array}
$$

计算极限：


$$
\\lim_{x→0} f^{′}(x) = \\lim_{x→0} (λx^{λ-1} \\cos \\frac{1}{x} + x^{λ-2} \\sin \\frac{1}{x}) .
$$

由于$\\cos \\frac{1}{x}$和$\\sin \\frac{1}{x}$有界，第一项趋于 0 当$λ > 1$，但第二项趋于 0 仅当$λ - 2 > 0$，即$λ > 2$。若$λ ≤ 2$，则第二项极限不存在或不为 0。因此，$\\lim_{x→0} f^{′}(x) = 0$当且仅当$λ > 2$。
综上，$f^{′}(0) = 0$且$\\lim_{x→0} f^{′}(x) = 0$当$λ > 2$，故导函数在$x = 0$处连续时$λ$的取值范围为$λ > 2$。
', 9, 'Mogullzr', '2026-01-29 14:12:51', 9, 'Mogullzr', '2026-01-29 14:12:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1591');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1591');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1591');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1592, '2003年考研数学卷3第2题', '简单', '考研数学2003年卷3真题', '已知曲线$y = x^{3} - 3a^{2}x + b$与$x$轴相切，则$b^{2}$可以通过$a$表示为$b^{2} =$______．', '[]', '$4a^{6}$
', '
设曲线与$x$轴相切的切点为$(x_{0}, 0)$，则有

$$
\\begin{cases} y(x_{0}) = 0 \\\\ y^{′}(x_{0}) = 0. \\end{cases}  ⇒  \\begin{cases} x_{0}^{3} - 3a^{2}x_{0} + b = 0 \\\\ 3x_{0}^{2} - 3a^{2} = 0. \\end{cases}
$$

于是有$x_{0}^{2} = a^{2}$，$b = x_{0}(x_{0}^{2} - 3a^{2})$。所以

$$
b^{2} = x_{0}^{2}(3a^{2} - x_{0}^{2})2 = a^{2} ⋅ 4a^{4} = 4a^{6}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:51', 9, 'Mogullzr', '2026-01-29 14:12:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1592');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1593, '2003年考研数学卷3第3题', '简单', '考研数学2003年卷3真题', '设$a > 0$，$f(x) = g(x) = \\begin{cases} a & 若0 ≤ x ≤ 1 \\\\ 0 & 其他. \\end{cases}$而$D$表示全平面，则
$I = \\iint_{D} f(x)g(y - x) dx dy =$______．', '[]', '$a^{2}$
', '
给定$f(x) = g(x) = \\begin{cases} a & 0 ≤ x ≤ 1 \\\\ 0 & 其他 \\end{cases}$，且$D$为全平面，计算二重积分$I = \\iint_{D} f(x)g(y - x) dx dy$。
由于$f(x)$仅在$x ∈  \\lbrack 0, 1 \\rbrack$上非零，积分可写为：

$$
I = \\int_{0}^{1} \\int_{−∞}^{∞} f(x)g(y - x) dy dx = \\int_{0}^{1} a (\\int_{−∞}^{∞} g(y - x) dy) dx.
$$

令$u = y - x$，则内积分变为：

$$
\\int_{−∞}^{∞} g(y - x) dy = \\int_{−∞}^{∞} g(u) du = \\int_{0}^{1} a du = a.
$$

代入得：

$$
I = \\int_{0}^{1} a ⋅ a dx = \\int_{0}^{1} a^{2} dx = a^{2}.
$$

或者，通过卷积理解：


$$
I = \\int_{−∞}^{∞}(f ∗ g)(y) dy,
$$

其中

$$
(f ∗ g)(y) = \\int_{−∞}^{∞} f(x)g(y - x) dx.
$$

由于$f$和$g$均为矩形函数，卷积结果为：

$$
(f ∗ g)(y) = \\begin{cases} a^{2}y & 0 ≤ y ≤ 1 \\\\ a^{2}(2 - y) & 1 ≤ y ≤ 2 \\\\ 0 & 其他 \\end{cases}
$$

则：

$$
\\begin{array}{cc}
I & = \\int_{0}^{1} a^{2}y dy + \\int_{1}^{2} a^{2}(2 - y) dy \\\\
 & = a^{2}  \\lbrack \\frac{y^{2}}{2} \\rbrack _{0}^{1} + a^{2}  \\lbrack 2y - \\frac{y^{2}}{2} \\rbrack _{1}^{2} \\\\
 & = a^{2} ⋅ \\frac{1}{2} + a^{2} ⋅ \\frac{1}{2} \\\\
\\end{array}
$$

两种方法均得$I = a^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:52', 9, 'Mogullzr', '2026-01-29 14:12:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1593');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1593');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1593');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1594, '2003年考研数学卷3第4题', '简单', '考研数学2003年卷3真题', '设$n$维向量$α = (a, 0, ⋯  , 0, a)T, a < 0$；$E$为$n$阶单位矩阵，
矩阵$A = E - αα^{T}$，$B = E + \\frac{1}{a}αα^{T}$，其中$A$的逆矩阵为$B$，则$a =$______．', '[]', '-1
', '已知矩阵$A = E - αα^{T}$，$B = E + \\frac{1}{a}αα^{T}$，且$A$的逆矩阵为$B$，即$AB = E$。计算$AB$：

$$
AB = (E - αα^{T}) (E + \\frac{1}{a}αα^{T}) = E + \\frac{1}{a}αα^{T} - αα^{T} - \\frac{1}{a}αα^{T}αα^{T}.
$$

由于$αα^{T}αα^{T} = α(α^{T}α)α^{T}$，且$α^{T}α = a^{2} + 0 + ⋯ + 0 + a^{2} = 2a^{2}$，代入得：

$$
AB = E + (\\frac{1}{a} - 1) αα^{T} - \\frac{1}{a} ⋅ 2a^{2}αα^{T} = E + (\\frac{1}{a} - 1 - 2a) αα^{T}.
$$

为使$AB = E$，需满足：

$$
\\frac{1}{a} - 1 - 2a = 0.
$$

两边乘以$a$（注意$a < 0$，故$a \\neq 0$）：

$$
1 - a - 2a^{2} = 0  ⇒  2a^{2} + a - 1 = 0.
$$

解此二次方程：

$$
(2a - 1)(a + 1) = 0  ⇒  a = \\frac{1}{2}a = −1.
$$

由条件$a < 0$，取$a = −1$。验证：当$a = −1$时，$A = E - αα^{T}$，$B = E - αα^{T}$，则$A = B$，且$A^{2} = E$，故$AB = E$成立。因此，$a = −1$。
', 9, 'Mogullzr', '2026-01-29 14:12:52', 9, 'Mogullzr', '2026-01-29 14:12:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1594');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1594');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1594');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1595, '2003年考研数学卷3第5题', '简单', '考研数学2003年卷3真题', '设随机变量$X$和$Y$的相关系数为$0.9$，若$Z = X - 0.4$，则$Y$与$Z$的相关系数为 ______．', '[]', '0.9
', '
给定随机变量$X$和$Y$的相关系数为$ρ_{X,Y} = 0.9$，且$Z = X - 0.4$。需要求$Y$与$Z$的相关系数$ρ_{Y,Z}$。
相关系数的定义为


$$
ρ_{Y,Z} = \\frac{Cov(Y, Z)}{σ_{Y}σ_{Z}}.
$$

首先，计算协方差


$$
Cov(Y, Z) = Cov(Y, X - 0.4).
$$

由于常数与随机变量的协方差为零，因此


$$
Cov(Y, Z) = Cov(Y, X).
$$

其次，计算$Z$的标准差$σ_{Z}$。由于$Z = X - 0.4$，方差


$$
Var(Z) = Var(X),
$$

因此


$$
σ_{Z} = σ_{X}.
$$

代入相关系数公式：


$$
ρ_{Y,Z} = \\frac{Cov(Y, Z)}{σ_{Y}σ_{Z}} = \\frac{Cov(Y, X)}{σ_{Y}σ_{X}} = ρ_{X,Y} = 0.9.
$$

因此，$Y$与$Z$的相关系数为 0.9。
', 9, 'Mogullzr', '2026-01-29 14:12:52', 9, 'Mogullzr', '2026-01-29 14:12:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1595');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1595');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1595');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1596, '2003年考研数学卷3第6题', '简单', '考研数学2003年卷3真题', '设总体$X$服从参数为$2$的指数分布，$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$X$的简单随机样本，
则当$n → ∞$时，$Y_{n} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}^{2}$依概率收敛于 ______．', '[]', '$\\frac{1}{2}$
', '
总体$X$服从参数为$2$的指数分布，即速率参数$λ = 2$。其概率密度函数为


$$
f(x) = 2e^{−2x},  x ≥ 0.
$$

需要求


$$
Y_{n} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}^{2}
$$

当$n → ∞$时的概率极限。
由强大数定律，样本均值依概率收敛于期望值，即


$$
Y_{n} P​ E \\lbrack X^{2} \\rbrack .
$$

计算$E \\lbrack X^{2} \\rbrack$：对于指数分布，


$$
E \\lbrack X \\rbrack  = \\frac{1}{λ} = \\frac{1}{2},  E \\lbrack X^{2} \\rbrack  = \\frac{2}{λ^{2}} = \\frac{2}{4} = \\frac{1}{2}.
$$

因此，$Y_{n}$依概率收敛于$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:52', 9, 'Mogullzr', '2026-01-29 14:12:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1596');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1597, '2003年考研数学卷3第7题', '简单', '考研数学2003年卷3真题', '设$f(x)$为不恒等于零的奇函数，且$f^{′}(0)$存在，则函数$g(x) = \\frac{f(x)}{x}$', '[''在$x = 0$处左极限不存在．'', ''有跳跃间断点$x = 0$．'', ''在$x = 0$处右极限不存在．'', ''有可去间断点$x = 0$．'']', "['D']", '
应选 (D)。取$f(x) = x$，此时

$$
g(x) = \\frac{x}{x} = \\begin{cases} 1 & x \\neq 0; \\\\ 0 & x = 0. \\end{cases}
$$
可排除 (A)，(B)，(C) 三项。下面证明 (D) 是正确的：由$g(x) = \\frac{f(x)}{x}$，知$g(x)$在$x = 0$处没定义，故$x = 0$为$g(x)$的间断点。由$f(x)$为奇函数知$f(0) = 0$，从而

$$
\\lim_{x→0} g(x) = \\lim_{x→0} \\frac{f(x)}{x} = \\lim_{x→0} \\frac{f(x) - f(0)}{x - 0} = f^{′}(0),
$$

故$x = 0$为可去间断点。', 9, 'Mogullzr', '2026-01-29 14:12:52', 9, 'Mogullzr', '2026-01-29 14:12:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1597');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1597');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1597');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1598, '2003年考研数学卷3第8题', '简单', '考研数学2003年卷3真题', '设可微函数$f(x, y)$在点$(x_{0}, y_{0})$取得极小值，则下列结论正确的是', '[''$f(x_{0}, y)$在$y = y_{0}$处的导数等于零．'', ''$f(x_{0}, y)$在$y = y_{0}$处的导数大于零．'', ''$f(x_{0}, y)$在$y = y_{0}$处的导数小于零．'', ''$f(x_{0}, y)$在$y = y_{0}$处的导数不存在．'']', "['A']", '
由$f(x, y)$在点$(x_{0}, y_{0})$处可微，知它在点$(x_{0}, y_{0})$处的两个偏导数都存在，又由二元函数极值的必要条件即得$f(x, y)$在点$(x_{0}, y_{0})$处的两个偏导数都等于零。从而有
$$
\\frac{df(x_{0}, y)}{dy}​_{y=y_{0}} = \\frac{∂f}{∂y}​_{(x,y)=(x_{0},y_{0})} = 0.
$$
', 9, 'Mogullzr', '2026-01-29 14:12:52', 9, 'Mogullzr', '2026-01-29 14:12:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1598');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1598');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1598');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1599, '2003年考研数学卷3第9题', '简单', '考研数学2003年卷3真题', '设$p_{n} = \\frac{a_{n}+∣a_{n}∣}{2}$，$q_{n} = \\frac{a_{n}-∣a_{n}∣}{2}$，$n = 1, 2, ⋯$，
则下列命题正确的是', '[''若$\\\\sum_{n=1}^{∞} a_{n}$条件收敛，则$\\\\sum_{n=1}^{∞} p_{n}$与$\\\\sum_{n=1}^{∞} q_{n}$都收敛．'', ''若$\\\\sum_{n=1}^{∞} a_{n}$绝对收敛，则$\\\\sum_{n=1}^{∞} p_{n}$与$\\\\sum_{n=1}^{∞} q_{n}$都收敛．'', ''若$\\\\sum_{n=1}^{∞} a_{n}$条件收敛，则$\\\\sum_{n=1}^{∞} p_{n}$与$\\\\sum_{n=1}^{∞} q_{n}$敛散性都不定．'', ''若$\\\\sum_{n=1}^{∞} a_{n}$绝对收敛，则$\\\\sum_{n=1}^{∞} p_{n}$与$\\\\sum_{n=1}^{∞} q_{n}$敛散性都不定．'']', "['B']", '
给定$p_{n} = \\frac{a_{n}+∣a_{n}∣}{2}$和$q_{n} = \\frac{a_{n}-∣a_{n}∣}{2}$，则$p_{n}$表示$a_{n}$的正部（当$a_{n} ≥ 0$时$p_{n} = a_{n}$，否则$p_{n} = 0$），$q_{n}$表示$a_{n}$的负部（当$a_{n} < 0$时$q_{n} = a_{n}$，否则$q_{n} = 0$）。若$∑ a_{n}$绝对收敛，即$∑ ∣a_{n}∣$收敛，则由于$0 ≤ p_{n} ≤ ∣a_{n}∣$和$∣q_{n}∣ ≤ ∣a_{n}∣$，由比较判别法可知$∑ p_{n}$和$∑ q_{n}$均收敛，故选项 B 正确。若$∑ a_{n}$条件收敛，即$∑ a_{n}$收敛但$∑ ∣a_{n}∣$发散，则$∑ p_{n}$和$∑ q_{n}$均发散（因为若其中一个收敛，则另一个也收敛，导致$∑ ∣a_{n}∣$收敛，矛盾），故选项 A 和 C 错误。选项 D 也错误，因为绝对收敛时$∑ p_{n}$和$∑ q_{n}$均收敛。', 9, 'Mogullzr', '2026-01-29 14:12:53', 9, 'Mogullzr', '2026-01-29 14:12:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1599');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1599');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1599');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1600, '2003年考研数学卷3第10题', '简单', '考研数学2003年卷3真题', '设三阶矩阵$A = \\left( \\begin{array}{ccc}
a & b & b \\\\
b & a & b \\\\
b & b & a \\\\
\\end{array} \\right)$，若$A$的伴随矩阵的秩为$1$，则必有', '[''$a = b$或$a + 2b = 0$．'', ''$a = b$或$a + 2b \\\\neq 0$．'', ''$a \\\\neq b$且$a + 2b = 0$．'', ''$a \\\\neq b$且$a + 2b \\\\neq 0$．'']', "['C']", '
$A$与其伴随矩阵$A^{∗}$秩之间有关系
$$
r(A^{∗}) = \\begin{cases} n & r(A) = n; \\\\ 1 & r(A) = n - 1; \\\\ 0 & r(A) < n - 1. \\end{cases}
$$
因此可得$r(A) = 2$。它的秩小于它的列数或者行数，故有$∣A∣ = 0$，即
$$
∣A∣ = \\begin{vmatrix}
a & b & b\\\\
b & a & b\\\\
b & b & a
\\end{vmatrix} = (a + 2b) \\begin{vmatrix}
1 & b & b\\\\
1 & a & b\\\\
1 & b & a
\\end{vmatrix}
$$

$$
= (a + 2b) \\begin{vmatrix}
1 & b & b\\\\
0 & a - b & 0\\\\
0 & 0 & a - b
\\end{vmatrix} = (a + 2b)(a - b)2 = 0,
$$
即有$a + 2b = 0$或$a = b$。当$a = b$时，
$$
A = \\left( \\begin{array}{ccc}
b & b & b \\\\
b & b & b \\\\
b & b & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
b & b & b \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$
显然$r(A) = 1 \\neq 2$，故必有$a \\neq b$且$a + 2b = 0$。', 9, 'Mogullzr', '2026-01-29 14:12:53', 9, 'Mogullzr', '2026-01-29 14:12:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1600');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1600');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1600');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1601, '2003年考研数学卷3第11题', '简单', '考研数学2003年卷3真题', '设$α_{1}, α_{2}, ⋯  , α_{s}$均为$n$维向量，下列结论不正确的是', '[''若对于任意一组不全为零的数$k_{1}, k_{2}, ⋯  , k_{s}$， 都有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{s}α_{s} \\\\neq 0$， 则$α_{1}, α_{2}, ⋯  , α_{s}$线性无关．'', ''若$α_{1}, α_{2}, ⋯  , α_{s}$线性相关， 则对于任意一组不全为零的数$k_{1}, k_{2}, ⋯  , k_{s}$， 都有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{s}α_{s} = 0$．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$线性无关的充分必要条件是此向量组的秩为$s$．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$线性无关的必要条件是其中任意两个向量线性无关．'']', "['B']", '
选项 A 正确，因为如果对任意一组不全为零的数$k_{1}, k_{2}, … , k_{s}$，都有

$$
k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{s}α_{s} \\neq 0,
$$
则不存在不全为零的数使得线性组合为零向量，因此向量组线性无关。选项 B 错误，因为向量组线性相关仅意味着存在一组不全为零的数使得线性组合为零向量，而不是对任意一组不全为零的数都成立。
例如，取$n = 2$，$α_{1} = (1, 0)$，$α_{2} = (2, 0)$，它们线性相关，但取$k_{1} = 1, k_{2} = 1$，则

$$
k_{1}α_{1} + k_{2}α_{2} = (3, 0) \\neq 0.
$$
选项 C 正确，因为向量组线性无关当且仅当其秩等于向量个数$s$。选项 D 正确，因为如果向量组线性无关，则其中任意两个向量也线性无关，这是必要条件。', 9, 'Mogullzr', '2026-01-29 14:12:53', 9, 'Mogullzr', '2026-01-29 14:12:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1601');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1601');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1601');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1602, '2003年考研数学卷3第12题', '简单', '考研数学2003年卷3真题', '将一枚硬币独立地掷两次，引进事件：$A_{1} =${掷第一次出现正面}，$A_{2} =${掷第二次出现正面}，$A_{3} =${正、反面各出现一次}，$A_{4} =${正面出现两次}，则事件', '[''$A_{1}, A_{2}, A_{3}$相互独立．'', ''$A_{2}, A_{3}, A_{4}$相互独立．'', ''$A_{1}, A_{2}, A_{3}$两两独立．'', ''$A_{2}, A_{3}, A_{4}$两两独立．'']', "['C']", '
掷两次硬币的样本空间为$\\{HH, HT, TH, TT\\}$，每个结果的概率为$1/4$。
计算事件概率：

$$
P(A_{1}) = \\frac{1}{2},  P(A_{2}) = \\frac{1}{2},  P(A_{3}) = \\frac{1}{2},  P(A_{4}) = \\frac{1}{4}.
$$
对于选项 A，检查$A_{1}, A_{2}, A_{3}$相互独立：
虽然两两独立成立

$$
\\begin{array}{c}
P(A_{1} ∩ A_{2}) = \\frac{1}{4} = P(A_{1})P(A_{2}), \\\\
P(A_{1} ∩ A_{3}) = \\frac{1}{4} = P(A_{1})P(A_{3}), \\\\
P(A_{2} ∩ A_{3}) = \\frac{1}{4} = P(A_{2})P(A_{3}), \\\\
\\end{array}
$$
但

$$
P(A_{1} ∩ A_{2} ∩ A_{3}) = 0 \\neq P(A_{1})P(A_{2})P(A_{3}) = \\frac{1}{8},
$$
因此不相互独立。对于选项 B，检查$A_{2}, A_{3}, A_{4}$相互独立：

$$
P(A_{2} ∩ A_{4}) = \\frac{1}{4} \\neq P(A_{2})P(A_{4}) = \\frac{1}{8},
$$
故不满足两两独立，更不相互独立。对于选项 C，检查$A_{1}, A_{2}, A_{3}$两两独立：
如上所述，所有两两交集的概率等于各自概率的乘积，因此两两独立成立。对于选项 D，检查$A_{2}, A_{3}, A_{4}$两两独立：

$$
P(A_{2} ∩ A_{4}) = \\frac{1}{4} \\neq P(A_{2})P(A_{4}) = \\frac{1}{8},
$$
故不满足两两独立。因此，正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:12:53', 9, 'Mogullzr', '2026-01-29 14:12:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1602');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1602');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1603, '2003年考研数学卷3第13题', '简单', '考研数学2003年卷3真题', '设$f(x) = \\frac{1}{πx} + \\frac{1}{\\sin πx} - \\frac{1}{π(1-x)}, x ∈  \\lbrack \\frac{1}{2}, 1)$，
试补充定义$f(1)$使得$f(x)$在$\\lbrack \\frac{1}{2}, 1 \\rbrack$上连续．', '[]', '$f(1) = \\frac{1}{π}$
', '
为了使得$f(x)$在$\\lbrack \\frac{1}{2}, 1 \\rbrack$上连续，需要补充定义$f(1)$使得$f(1) = \\lim_{x→1^{-}} f(x)$. 计算该极限时，令$t = 1 - x$，则当$x → 1^{-}$时，$t → 0^{+}$. 代入函数得：

$$
f(1 - t) = \\frac{1}{π(1 - t)} + \\frac{1}{\\sin πt} - \\frac{1}{πt}.
$$

当$t → 0^{+}$，第一项$\\frac{1}{π(1-t)} → \\frac{1}{π}$. 第二项和第三项的差为：

$$
\\frac{1}{\\sin πt} - \\frac{1}{πt} = \\frac{πt - \\sin πt}{πt \\sin πt}.
$$

使用泰勒展开：$\\sin πt = πt - \\frac{(πt)3}{6} + O(t^{5})$，则分子$πt - \\sin πt = \\frac{π^{3}t^{3}}{6} + O(t^{5})$，分母$πt \\sin πt = π^{2}t^{2} - \\frac{π^{4}t^{4}}{6} + O(t^{6})$，所以：

$$
\\frac{πt - \\sin πt}{πt \\sin πt} = \\frac{\\frac{π^{3}t^{3}}{6} + O(t^{5})}{π^{2}t^{2} + O(t^{4})} = \\frac{π}{6}t + O(t^{3}) → 0.
$$

因此，$\\lim_{t→0^{+}} (\\frac{1}{\\sin πt} - \\frac{1}{πt}) = 0$，从而：

$$
\\lim_{t→0^{+}} f(1 - t) = \\frac{1}{π} + 0 = \\frac{1}{π}.
$$

故补充定义$f(1) = \\frac{1}{π}$.
', 9, 'Mogullzr', '2026-01-29 14:12:54', 9, 'Mogullzr', '2026-01-29 14:12:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1603');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1603');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1603');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1604, '2003年考研数学卷3第14题', '简单', '考研数学2003年卷3真题', '设$f(u, v)$具有二阶连续偏导数，且满足$\\frac{∂^{2}f}{∂u^{2}} + \\frac{∂^{2}f}{∂v^{2}} = 1$，又\\goodbreak$g(x, y) = f \\lbrack xy, \\frac{1}{2}(x^{2} - y^{2}) \\rbrack$，求$\\frac{∂^{2}g}{∂x^{2}} + \\frac{∂^{2}g}{∂y^{2}}$．', '[]', '$x^{2} + y^{2}$
', '
由复合函数的求导法则得

$$
\\frac{∂g}{∂x} = y\\frac{∂f}{∂u} + x\\frac{∂f}{∂v},  \\frac{∂g}{∂y} = x\\frac{∂f}{∂u} - y\\frac{∂f}{∂v}.
$$

从而

$$
\\begin{array}{cc}
\\frac{∂^{2}g}{∂x^{2}} & = y  \\lbrack \\frac{∂^{2}f}{∂u^{2}} ⋅ y + \\frac{∂^{2}f}{∂u∂v} ⋅ x \\rbrack  + \\frac{∂f}{∂v} + x  \\lbrack \\frac{∂^{2}f}{∂u∂v} ⋅ y + \\frac{∂^{2}f}{∂v^{2}} ⋅ x \\rbrack  \\\\
 & = y^{2}\\frac{∂^{2}f}{∂u^{2}} + 2xy\\frac{∂^{2}f}{∂u∂v} + x^{2}\\frac{∂^{2}f}{∂v^{2}} + \\frac{∂f}{∂v}, \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
\\frac{∂^{2}g}{∂y^{2}} & = x  \\lbrack \\frac{∂^{2}f}{∂u^{2}} ⋅ x - \\frac{∂^{2}f}{∂u∂v} ⋅ y \\rbrack  - \\frac{∂f}{∂v} - y  \\lbrack \\frac{∂^{2}f}{∂u∂v} ⋅ x - \\frac{∂^{2}f}{∂v^{2}} ⋅ y \\rbrack  \\\\
 & = x^{2}\\frac{∂^{2}f}{∂u^{2}} - 2xy\\frac{∂^{2}f}{∂u∂v} + y^{2}\\frac{∂^{2}f}{∂v^{2}} - \\frac{∂f}{∂v}. \\\\
\\end{array}
$$

所以

$$
\\frac{∂^{2}g}{∂x^{2}} + \\frac{∂^{2}g}{∂y^{2}} = (x^{2} + y^{2}) (\\frac{∂^{2}f}{∂u^{2}} + \\frac{∂^{2}f}{∂v^{2}}) = x^{2} + y^{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:54', 9, 'Mogullzr', '2026-01-29 14:12:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1604');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1605, '2003年考研数学卷3第15题', '简单', '考研数学2003年卷3真题', '计算二重积分
$$
I = \\iint_{D} e^{−(x^{2}+y^{2}-π)} \\sin(x^{2} + y^{2})dxdy,
$$
其中积分区域$D = \\{(x, y) ​x^{2} + y^{2} ≤ π\\}$．', '[]', '$\\frac{π}{2}(1 + e^{π})$
', '
作极坐标变换：设$x = r \\cos θ, y = r \\sin θ$，有

$$
\\begin{array}{cc}
I & = \\iint_{D} e^{−(x^{2}+y^{2}-π)} \\sin(x^{2} + y^{2}) dx dy \\\\
 & = e^{π} \\iint_{D} e^{−(x^{2}+y^{2})} \\sin(x^{2} + y^{2}) dx dy \\\\
 & = e^{π} \\int_{0}^{2π} dθ \\int_{0}^{\\sqrt{π}} e^{−r^{2}} \\sin r^{2} ⋅ r dr \\\\
 & = πe^{π} \\int_{0}^{π} e^{−t} \\sin t dt. \\\\
\\end{array}
$$

记$A = \\int_{0}^{π} e^{−t} \\sin t dt$，则

$$
\\begin{array}{cc}
A & = \\int_{0}^{π} e^{−t} \\sin t dt \\\\
 & = − \\int_{0}^{π} e^{−t} d(\\cos t) \\\\
 & = −  \\lbrack e^{−t} \\cos t \\rbrack _{0}^{π} - \\int_{0}^{π} e^{−t} \\cos t dt \\\\
 & = e^{−π} + 1 - \\int_{0}^{π} e^{−t} d(\\sin t) \\\\
 & = e^{−π} + 1 - A. \\\\
\\end{array}
$$

因此$A = \\frac{1}{2}(1 + e^{−π})$，$I = \\frac{πe^{π}}{2}(1 + e^{−π}) = \\frac{π}{2}(1 + e^{π})$。
', 9, 'Mogullzr', '2026-01-29 14:12:54', 9, 'Mogullzr', '2026-01-29 14:12:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1605');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1605');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1605');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1606, '2003年考研数学卷3第16题', '简单', '考研数学2003年卷3真题', '求幂级数$1 + \\sum_{n=1}^{∞}(−1)n\\frac{x^{2n}}{2n}$（$∣x∣ < 1$）的和函数$f(x)$及其极值．', '[]', '和函数为$f(x) = 1 - \\frac{1}{2} \\ln(1 + x^{2})$，其中$∣x∣ < 1$。极值为极大值$1$，在$x = 0$处取得。
', '
对和函数$f(x) = 1 + \\sum_{n=1}^{∞}(−1)n\\frac{x^{2n}}{2n}$求导，得

$$
f^{′}(x) = \\sum_{n=1}^{∞}(−1)nx^{2n-1} = −x \\sum_{n=0}^{∞}(−1)nx^{2n} = −x \\sum_{n=0}^{∞}(−x^{2})n = \\frac{−x}{1 + x^{2}}.
$$

对上式两边从$0$到$x$积分，得

$$
f(x) = f(0) - \\frac{1}{2} \\ln(1 + x^{2}) = 1 - \\frac{1}{2} \\ln(1 + x^{2}) (∣x∣ < 1).
$$

对$f(x)$求一阶导数，并令

$$
f^{′}(x) = −\\frac{1}{2} ⋅ \\frac{2x}{1 + x^{2}} = \\frac{−x}{1 + x^{2}} = 0,
$$

求得唯一驻点$x = 0$。由于

$$
f^{′′}(x) = −\\frac{1 - x^{2}}{(1 + x^{2})2},  ⇒  f^{′′}(0) = −1 < 0.
$$

由极值的第二充分条件，得$f(x)$在$x = 0$处取得极大值，且极大值为$f(0) = 1$。
', 9, 'Mogullzr', '2026-01-29 14:12:54', 9, 'Mogullzr', '2026-01-29 14:12:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1606');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1606');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1606');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1607, '2003年考研数学卷3第17题', '简单', '考研数学2003年卷3真题', '设$F(x) = f(x)g(x)$，其中函数$f(x)$，$g(x)$在$(−∞, +∞)$内满足以下条件：
$f^{′}(x) = g(x)$，$g^{′}(x) = f(x)$，且$f(0) = 0$，$f(x) + g(x) = 2e^{x}$．(1) 求$F(x)$所满足的一阶微分方程；(2) 求出$F(x)$的表达式．', '[]', '
(1)$F^{′}(x) + 2F(x) = 4e^{2x}$
(2)$F(x) = e^{2x} - e^{−2x}$
', '
(1) 由$F(x) = f(x)g(x)$，求导得


$$
F^{′}(x) = f^{′}(x)g(x) + f(x)g^{′}(x).
$$

代入$f^{′}(x) = g(x)$和$g^{′}(x) = f(x)$，有


$$
F^{′}(x) = g(x)2 + f(x)2.
$$

已知$f(x) + g(x) = 2e^{x}$，两边平方得


$$
\\lbrack f(x) + g(x) \\rbrack 2 = f(x)2 + 2f(x)g(x) + g(x)2 = 4e^{2x}.
$$

即


$$
f(x)2 + g(x)2 + 2F(x) = 4e^{2x}.
$$

代入$F^{′}(x) = f(x)2 + g(x)2$，得


$$
F^{′}(x) + 2F(x) = 4e^{2x}.
$$

此为$F(x)$所满足的一阶微分方程。
(2) 解微分方程$F^{′}(x) + 2F(x) = 4e^{2x}$。
积分因子为$e^{2x}$，两边乘以积分因子得


$$
e^{2x}F^{′}(x) + 2e^{2x}F(x) = 4e^{4x},
$$

即


$$
\\frac{d}{dx} \\lbrack e^{2x}F(x) \\rbrack  = 4e^{4x}.
$$

积分得


$$
e^{2x}F(x) = ∫ 4e^{4x} dx = e^{4x} + C,
$$

故


$$
F(x) = e^{2x} + Ce^{−2x}.
$$

由初始条件$f(0) = 0$和$f(x) + g(x) = 2e^{x}$，得


$$
f(0) + g(0) = 2,
$$

即$g(0) = 2$。
于是


$$
F(0) = f(0)g(0) = 0.
$$

代入$F(x)$表达式，有


$$
F(0) = 1 + C = 0,
$$

解得$C = −1$。
因此


$$
F(x) = e^{2x} - e^{−2x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:54', 9, 'Mogullzr', '2026-01-29 14:12:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1607');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1607');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1607');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1608, '2003年考研数学卷3第18题', '简单', '考研数学2003年卷3真题', '设函数$f(x)$在$\\lbrack 0, 3 \\rbrack$上连续，在$(0, 3)$内可导，且$f(0) + f(1) + f(2) = 3$，$f(3) = 1$．
试证：必存在$ξ ∈ (0, 3)$，使$f^{′}(ξ) = 0$．', '[]', '见解析
', '
因为$f(x)$在$\\lbrack 0, 3 \\rbrack$上连续，所以$f(x)$在$\\lbrack 0, 2 \\rbrack$上连续，则在$\\lbrack 0, 2 \\rbrack$上必有最大值$M$和最小值$m$，于是

$$
m ≤ f(0) ≤ M,  m ≤ f(1) ≤ M,  m ≤ f(2) ≤ M.
$$

三式相加可得

$$
m ≤ \\frac{f(0) + f(1) + f(2)}{3} ≤ M.
$$

由介值定理知，至少存在一点$c ∈  \\lbrack 0, 2 \\rbrack$，使得

$$
f(c) = \\frac{f(0) + f(1) + f(2)}{3} = 1.
$$

因为$f(c) = f(3) = 1$，且$f(x)$在$\\lbrack c, 3 \\rbrack$上连续，在$(c, 3)$内可导，由罗尔定理知，必存在$ξ ∈ (c, 3) ⊂ (0, 3)$，使$f^{′}(ξ) = 0$。
', 9, 'Mogullzr', '2026-01-29 14:12:55', 9, 'Mogullzr', '2026-01-29 14:12:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1608');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1609, '2003年考研数学卷3第19题', '简单', '考研数学2003年卷3真题', '已知齐次线性方程组
$$
\\begin{cases} (a_{1} + b)x_{1} + a_{2}x_{2} + a_{3}x_{3} + ⋯ + a_{n}x_{n} = 0 \\\\ a_{1}x_{1} + (a_{2} + b)x_{2} + a_{3}x_{3} + ⋯ + a_{n}x_{n} = 0 \\\\ a_{1}x_{1} + a_{2}x_{2} + (a_{3} + b)x_{3} + ⋯ + a_{n}x_{n} = 0 \\\\ ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ \\\\ a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3} + ⋯ + (a_{n} + b)x_{n} = 0 \\end{cases}
$$
其中$\\sum_{i=1}^{n} a_{i} \\neq 0$．试讨论$a_{1}, a_{2}, ⋯  , a_{n}$和$b$满足何种关系时，(1) 方程组仅有零解；(2) 方程组有非零解．在有非零解时，求此方程组的一个基础解系．', '[]', '
(1) 仅有零解
当$b \\neq 0$且$b + \\sum_{i=1}^{n} a_{i} \\neq 0$时，方程组仅有零解。
(2) 有非零解
当$b = 0$或$b = − \\sum_{i=1}^{n} a_{i}$时，方程组有非零解。

$$
α_{1} = (−\\frac{a_{2}}{a_{1}}, 1, 0, ⋯  , 0)^{T} ,  α_{2} = (−\\frac{a_{3}}{a_{1}}, 0, 1, ⋯  , 0)^{T} ,  ⋯  ,
$$

', '
方程组的系数行列式

$$
∣A∣ = \\begin{vmatrix}
a_{1} + b & a_{2} & a_{3} &  & a_{n}\\\\
 &  &  & ⋯ & \\\\
a_{1} & a_{2} + b & a_{3} &  & a_{n}\\\\
 &  &  & ⋯ & \\\\
a_{1} & a_{2} & a_{3} + b &  & a_{n}\\\\
 &  &  & ⋯ & \\\\
⋮ & ⋮ & ⋮ &  & ⋮\\\\
 &  &  & ⋱ & \\\\
a_{1} & a_{2} & a_{3} &  & a_{n} + b\\\\
 &  &  & ⋯ & 
\\end{vmatrix} = b^{n-1} (b + \\sum_{i=1}^{n} a_{i}) .
$$

(I)当$∣A∣ \\neq 0$，即$b \\neq 0$且$b + \\sum_{i=1}^{n} a_{i} \\neq 0$时，秩$r(A) = n$，方程组仅有零解。
(II)当$b = 0$时，$∣A∣ = 0$，原方程组的同解方程组为

$$
a_{1}x_{1} + a_{2}x_{2} + ⋯ + a_{n}x_{n} = 0.
$$

由$\\sum_{i=1}^{n} a_{i} \\neq 0$可知，$a_{i}(i = 1, 2, ⋯  , n)$不全为零。不妨设$a_{1} \\neq 0$，得原方程组的一个基础解系

$$
α_{1} = (−\\frac{a_{2}}{a_{1}}, 1, 0, ⋯  , 0)^{T} , α_{2} = (−\\frac{a_{3}}{a_{1}}, 0, 1, ⋯  , 0)^{T} , ⋯  ,
$$



$$
α_{n} = (−\\frac{a_{n}}{a_{1}}, 0, 0, ⋯  , 1)^{T} .
$$

当$b = − \\sum_{i=1}^{n} a_{i}$时，$∣A∣ = 0$。这时$b \\neq 0$，原方程组的系数矩阵可化为

$$
A = \\left( \\begin{array}{ccccc}
a_{1} - \\sum_{i=1}^{n} a_{i} & a_{2} & a_{3} &  & a_{n} \\\\
 &  &  & ⋯ &  \\\\
a_{1} & a_{2} - \\sum_{i=1}^{n} a_{i} & a_{3} &  & a_{n} \\\\
 &  &  & ⋯ &  \\\\
a_{1} & a_{2} & a_{3} - \\sum_{i=1}^{n} a_{i} &  & a_{n} \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{ccccc}
a_{1} - \\sum_{i=1}^{n} a_{i} & a_{2} & a_{3} &  & a_{n} \\\\
 &  &  & ⋯ &  \\\\
\\sum_{i=1}^{n} a_{i} & − \\sum_{i=1}^{n} a_{i} & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
\\sum_{i=1}^{n} a_{i} & 0 & − \\sum_{i=1}^{n} a_{i} &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{ccccc}
a_{1} - \\sum_{i=1}^{n} a_{i} & a_{2} & a_{3} &  & a_{n} \\\\
 &  &  & ⋯ &  \\\\
−1 & 1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
−1 & 0 & 1 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
0 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
−1 & 1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
−1 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right) .
$$

由此得原方程组的同解方程组为

$$
x_{2} = x_{1},  x_{3} = x_{1},  ⋯  ,  x_{n} = x_{1}.
$$

原方程组的一个基础解系为$α = (1, 1, ⋯  , 1)T$。
', 9, 'Mogullzr', '2026-01-29 14:12:55', 9, 'Mogullzr', '2026-01-29 14:12:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1609');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1609');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1610, '2003年考研数学卷3第20题', '简单', '考研数学2003年卷3真题', '设二次型$f(x_{1}, x_{2}, x_{3}) = X^{T}AX = ax_{1}^{2} + 2x_{2}^{2} - 2x_{3}^{2} + 2bx_{1}x_{3} (b > 0)$中二次型的矩阵$A$的特征值之和为$1$，特征值之积为$−12$．(1) 求$a$，$b$的值；(2) 利用正交变换将二次型$f$化为标准形，并写出所用的正交变换和对应的正交矩阵．', '[]', '
(1)$a = 1$，$b = 2$
(2) 二次型$f$的标准形为$2y_{1}^{2} + 2y_{2}^{2} - 3y_{3}^{2}$，所用的正交变换为$X = QY$，其中正交矩阵


$$
Q = \\left( \\begin{array}{ccc}
\\frac{2}{\\sqrt{5}} & 0 & \\frac{1}{\\sqrt{5}} \\\\
0 & 1 & 0 \\\\
\\frac{1}{\\sqrt{5}} & 0 & −\\frac{2}{\\sqrt{5}} \\\\
\\end{array} \\right)
$$

', '
(I) 二次型$f$的矩阵为


$$
A = \\left( \\begin{array}{ccc}
a & 0 & b \\\\
0 & 2 & 0 \\\\
b & 0 & −2 \\\\
\\end{array} \\right) .
$$

设$A$的特征值为$λ_{i}(i = 1, 2, 3)$，则有


$$
λ_{1} + λ_{2} + λ_{3} = a_{11} + a_{22} + a_{33} = a + 2 + (−2) = 1,
$$



$$
λ_{1}λ_{2}λ_{3} = ∣A∣ = \\begin{vmatrix}
a & 0 & b\\\\
0 & 2 & 0\\\\
b & 0 & −2
\\end{vmatrix} = −4a - 2b^{2} = −12.
$$

解得$a = 1,  b = −2$。
(II) 求矩阵$A$的特征值，令


$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & 0 & −2\\\\
0 & λ - 2 & 0\\\\
−2 & 0 & λ + 2
\\end{vmatrix} = (λ - 2)2(λ + 3) = 0,
$$

得矩阵$A$的特征值$λ_{1} = λ_{2} = 2,  λ_{3} = −3$。
对于$λ_{1} = λ_{2} = 2$，解齐次线性方程组$(2E - A)x = 0$，得基础解系


$$
ξ_{1} = (2, 0, 1)T,  ξ_{2} = (0, 1, 0)T.
$$

对于$λ_{3} = −3$，解齐次线性方程组$(−3E - A)x = 0$，得基础解系


$$
ξ_{3} = (1, 0, −2)T.
$$

由于$ξ_{1}, ξ_{2}, ξ_{3}$已是正交向量组，为得到规范正交向量组，只需将$ξ_{1}, ξ_{2}, ξ_{3}$单位化，由此得


$$
η_{1} = (\\frac{2}{\\sqrt{5}}, 0, \\frac{1}{\\sqrt{5}})^{T} ,  η_{2} = (0, 1, 0)T,  η_{3} = (\\frac{1}{\\sqrt{5}}, 0, −\\frac{2}{\\sqrt{5}})^{T} .
$$

令矩阵

$$
Q = \\left( \\begin{array}{ccc}
η_{1} & η_{2} & η_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
\\frac{2}{\\sqrt{5}} & 0 & \\frac{1}{\\sqrt{5}} \\\\
0 & 1 & 0 \\\\
\\frac{1}{\\sqrt{5}} & 0 & −\\frac{2}{\\sqrt{5}} \\\\
\\end{array} \\right) ,
$$

则$Q$为正交矩阵。在正交变换$x = Qy$下，有

$$
Q^{T}AQ = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & −3 \\\\
\\end{array} \\right) .
$$

且二次型的标准形为$f = 2y_{1}^{2} + 2y_{2}^{2} - 3y_{3}^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:55', 9, 'Mogullzr', '2026-01-29 14:12:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1610');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1610');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1611, '2003年考研数学卷3第21题', '简单', '考研数学2003年卷3真题', '设随机变量$X$的概率密度为
$$
f(x) = \\begin{cases} \\frac{1}{3\\sqrt{x^{2}}} & 若x ∈  \\lbrack 1, 8 \\rbrack  \\\\ 0 & 其他; \\end{cases}
$$
$F(x)$是$X$的分布函数．求随机变量$Y = F(X)$的分布函数．', '[]', '
随机变量$Y = F(X)$的分布函数为

$$
G(y) = \\begin{cases} 0 & y < 0 \\\\ y & 0 ≤ y ≤ 1 \\\\ 1 & y > 1 \\end{cases}
$$

即$Y$服从区间$\\lbrack 0, 1 \\rbrack$上的均匀分布。
', '
方法 1：当$x < 1$时，$F(x) = 0$；当$x > 8$时，$F(x) = 1$。对于$x ∈  \\lbrack 1, 8 \\rbrack$，有

$$
F(x) = \\int_{1}^{x} \\frac{1}{3\\sqrt{t^{2}}} dt = \\sqrt{x} - 1.
$$

设$G(y)$是随机变量$Y = F(X)$的分布函数。则当$y < 0$时，$G(y) = 0$；当$y ≥ 1$时，$G(y) = 1$。对于$y ∈  \\lbrack 0, 1)$，有

$$
\\begin{array}{cc}
G(y) & = P\\{Y ≤ y\\} = P\\{F(X) ≤ y\\} \\\\
 & = P\\{\\sqrt{X} - 1 ≤ y\\} = P\\{X ≤ (y + 1)3\\} = F \\lbrack (y + 1)3 \\rbrack  = y. \\\\
\\end{array}
$$

于是$Y = F(X)$的分布函数为

$$
G(y) = \\begin{cases} 0 & 若y < 0 \\\\ y & 若0 ≤ y < 1 \\\\ 1 & 若y ≥ 1. \\end{cases}
$$

方法 2：设$G(y)$是随机变量$Y = F(X)$的分布函数。则有

$$
G(y) = P\\{Y ≤ y\\} = P\\{F(X) ≤ y\\}.
$$

因为$F(x)$是$X$的分布函数，故有$0 ≤ F(x) ≤ 1$。从而当$y < 0$时$G(y) = 0$；当$y ≥ 1$时，$G(y) = 1$。当$0 ≤ y < 1$时，因为$F(x)$单调增加，所以

$$
G(y) = P\\{Y ≤ y\\} = P\\{F(X) ≤ y\\} = P\\{X ≤ F^{−1}(y)\\} = F(F^{−1}(y)) = y.
$$

于是$Y = F(X)$的分布函数为

$$
G(y) = \\begin{cases} 0 & 若y < 0 \\\\ y & 若0 ≤ y < 1 \\\\ 1 & 若y ≥ 1. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:55', 9, 'Mogullzr', '2026-01-29 14:12:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1611');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1611');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1612, '2003年考研数学卷3第22题', '简单', '考研数学2003年卷3真题', '设随机变量$X$与$Y$独立，其中$X$的概率分布为$X ∼ \\left( \\begin{array}{cc}
1 & 2 \\\\
0.3 & 0.7 \\\\
\\end{array} \\right)$，而$Y$的概率密度为$f(y)$，求随机变量$U = X + Y$的概率密度$g(u)$．', '[]', '$g(u) = 0.3f(u - 1) + 0.7f(u - 2)$
', '
设$F(y)$是$Y$的分布函数，由全概率公式，得$U = X + Y$的分布函数

$$
\\begin{array}{cc}
G(u) & = P\\{X + Y ≤ u\\} \\\\
 & = P\\{X = 1\\}P\\{X + Y ≤ u ∣ X = 1\\} + P\\{X = 2\\}P\\{X + Y ≤ u ∣ X = 2\\} \\\\
 & = 0.3P\\{X + Y ≤ u ∣ X = 1\\} + 0.7P\\{X + Y ≤ u ∣ X = 2\\} \\\\
\\end{array}
$$

由于$X$和$Y$相互独立，所以

$$
G(u) = 0.3P\\{Y ≤ u - 1\\} + 0.7P\\{Y ≤ u - 2\\} = 0.3F(u - 1) + 0.7F(u - 2).
$$

由此得$U$的概率密度

$$
g(u) = G^{′}(u) = 0.3F^{′}(u - 1) + 0.7F^{′}(u - 2) = 0.3f(u - 1) + 0.7f(u - 2).
$$

', 9, 'Mogullzr', '2026-01-29 14:12:56', 9, 'Mogullzr', '2026-01-29 14:12:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1612');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1612');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1612');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1613, '2003年考研数学卷4第1题', '简单', '考研数学2003年卷4真题', '极限$\\lim_{x→0} \\lbrack 1 + \\ln(1 + x) \\rbrack x2​ =$______．', '[]', '$e^{2}$
', '
考虑极限$\\lim_{x→0} \\lbrack 1 + \\ln(1 + x) \\rbrack x2​$。该极限形式为$1^{∞}$，可通过取自然对数转化为求指数极限。
设$y =  \\lbrack 1 + \\ln(1 + x) \\rbrack x2​$，则


$$
\\ln y = \\frac{2}{x} \\ln \\lbrack 1 + \\ln(1 + x) \\rbrack
$$

需求


$$
\\lim_{x→0} \\ln y = \\lim_{x→0} \\frac{2}{x} \\ln \\lbrack 1 + \\ln(1 + x) \\rbrack
$$

计算


$$
\\lim_{x→0} \\frac{\\ln \\lbrack 1 + \\ln(1 + x) \\rbrack }{x}
$$

该极限为$\\frac{0}{0}$型，应用洛必达法则。
令$f(x) = \\ln \\lbrack 1 + \\ln(1 + x) \\rbrack$，则


$$
f^{′}(x) = \\frac{1}{1 + \\ln(1 + x)} ⋅ \\frac{1}{1 + x}
$$

于是，


$$
\\lim_{x→0} \\frac{f(x)}{x} = \\lim_{x→0} f^{′}(x) = \\frac{1}{(1 + \\ln 1)(1 + 0)} = 1
$$

因此，


$$
\\lim_{x→0} \\ln y = 2 × 1 = 2
$$

故原极限为$e^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1613');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1613');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1613');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1614, '2003年考研数学卷4第2题', '简单', '考研数学2003年卷4真题', '$\\int_{−1}^{1}(∣x∣ + x)e^{−∣x∣}dx =$______．', '[]', '$2 - \\frac{4}{e}$
', '
由于被积函数中含有绝对值，将积分区间$\\lbrack −1, 1 \\rbrack$分为两部分：
当$x ∈  \\lbrack −1, 0 \\rbrack$时，$∣x∣ = −x$，因此$∣x∣ + x = −x + x = 0$，被积函数为$0 ⋅ e^{−∣x∣} = 0$，积分值为 0。
当$x ∈  \\lbrack 0, 1 \\rbrack$时，$∣x∣ = x$，因此$∣x∣ + x = x + x = 2x$，且$e^{−∣x∣} = e^{−x}$，被积函数为$2xe^{−x}$。
因此，原积分化为


$$
\\int_{0}^{1} 2xe^{−x} dx.
$$

计算该积分：
令$u = x$，$dv = e^{−x} dx$，则$du = dx$，$v = −e^{−x}$。
使用分部积分法：


$$
\\begin{array}{cc}
∫ 2xe^{−x} dx & = 2  \\lbrack −xe^{−x} - ∫(−e^{−x}) dx \\rbrack  \\\\
 & = 2  \\lbrack −xe^{−x} + ∫ e^{−x} dx \\rbrack  \\\\
 & = 2  \\lbrack −xe^{−x} - e^{−x} \\rbrack  + C \\\\
\\end{array}
$$

代入上下限：
在$x = 1$时，值为$−2e^{−1}(1 + 1) = −\\frac{4}{e}$。
在$x = 0$时，值为$−2e^{0}(0 + 1) = −2$。
因此，


$$
\\int_{0}^{1} 2xe^{−x} dx =  \\lbrack −2e^{−x}(x + 1) \\rbrack _{0}^{1} = −\\frac{4}{e} - (−2) = 2 - \\frac{4}{e}.
$$

故原积分的值为


$$
2 - \\frac{4}{e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1614');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1614');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1614');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1615, '2003年考研数学卷4第3题', '', '考研数学2003年卷4真题', '/problems/other/1593', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1616, '2003年考研数学卷4第4题', '简单', '考研数学2003年卷4真题', '设$A$，$B$均为三阶矩阵，$E$是三阶单位矩阵．已知$AB = 2A + B$，$B = \\left( \\begin{array}{ccc}
2 & 0 & 2 \\\\
0 & 4 & 0 \\\\
2 & 0 & 2 \\\\
\\end{array} \\right)$，则$(A - E)−1 =$______．', '[]', '

$$
\\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)
$$

', '
已知$AB = 2A + B$，移项得$AB - 2A = B$，即$A(B - 2E) = B$。令$C = A - E$，则$A = C + E$，代入方程得：

$$
(C + E)(B - 2E) = B
$$

展开得：

$$
C(B - 2E) + E(B - 2E) = B
$$

其中$E(B - 2E) = B - 2E$，所以：

$$
C(B - 2E) + B - 2E = B
$$

简化得：

$$
C(B - 2E) = 2E
$$

即：

$$
(A - E)(B - 2E) = 2E
$$

两边同时除以 2，得：

$$
(A - E) ⋅ \\frac{1}{2}(B - 2E) = E
$$

因此，$(A - E)−1 = \\frac{1}{2}(B - 2E)$。计算$B - 2E$：

$$
B = \\left( \\begin{array}{ccc}
2 & 0 & 2 \\\\
0 & 4 & 0 \\\\
2 & 0 & 2 \\\\
\\end{array} \\right) ,  2E = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)
$$



$$
B - 2E = \\left( \\begin{array}{ccc}
0 & 0 & 2 \\\\
0 & 2 & 0 \\\\
2 & 0 & 0 \\\\
\\end{array} \\right)
$$

所以：

$$
\\frac{1}{2}(B - 2E) = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)
$$

故$(A - E)−1 = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1616');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1616');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1616');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1617, '2003年考研数学卷4第5题', '', '考研数学2003年卷4真题', '/problems/other/1594', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1618, '2003年考研数学卷4第6题', '简单', '考研数学2003年卷4真题', '设随机变量$X$和$Y$的相关系数为$0.5$，$EX = EY = 0$，$EX^{2} = EY^{2} = 2$，则$E(X + Y)2 =$______．', '[]', '6
', '
已知$EX = EY = 0$，$EX^{2} = EY^{2} = 2$，则方差$Var(X) = EX^{2} - (EX)2 = 2 - 0 = 2$，同理$Var(Y) = 2$。
相关系数$ρ_{X,Y} = 0.5$，且$ρ_{X,Y} = \\frac{Cov(X,Y)}{σ_{X}σ_{Y}}$，其中$σ_{X} = \\sqrt{Var(X)} = \\sqrt{2}$，$σ_{Y} = \\sqrt{2}$。
由于$EX = EY = 0$，有$Cov(X, Y) = E(XY) - EX ⋅ EY = E(XY)$。
代入相关系数公式：


$$
0.5 = \\frac{E(XY)}{\\sqrt{2} ⋅ \\sqrt{2}} = \\frac{E(XY)}{2}
$$

解得$E(XY) = 1$。
计算$E(X + Y)2$：


$$
E(X + Y)2 = E(X^{2} + 2XY + Y^{2}) = EX^{2} + 2E(XY) + EY^{2} = 2 + 2 × 1 + 2 = 6
$$

因此，$E(X + Y)2 = 6$。
', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1618');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1618');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1618');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1619, '2003年考研数学卷4第7题', '简单', '考研数学2003年卷4真题', '曲线$y = xe^{\\frac{1}{x^{2}}}$', '[''仅有水平渐近线．'', ''仅有铅直渐近线．'', ''既有铅直又有水平渐近线．'', ''既有铅直又有斜渐近线．'']', "['D']", '
当$x → ±∞$时，极限$\\lim_{x→±∞} y$均不存在，故不存在水平渐近线。又由
$$
\\lim_{x→0} xe^{\\frac{1}{x^{2}}} = \\lim_{t→∞} \\frac{e^{t^{2}}}{t} = \\lim_{t→∞} 2te^{t^{2}} = ∞
$$
知曲线有铅直渐近线$x = 0$。再由
$$
\\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} e^{\\frac{1}{x^{2}}} = 1,  \\lim_{x→∞} (xe^{\\frac{1}{x^{2}}} - x) = \\lim_{t→0} \\frac{e^{t^{2}} - 1}{t} = \\lim_{t→0} 2te^{t^{2}} = 0,
$$
知曲线有斜渐近线$y = x$。故曲线$y = xe^{\\frac{1}{x^{2}}}$既有铅直又有斜渐近线。', 9, 'Mogullzr', '2026-01-29 14:12:58', 9, 'Mogullzr', '2026-01-29 14:12:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1619');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1620, '2003年考研数学卷4第8题', '简单', '考研数学2003年卷4真题', '设函数$f(x) = ​x^{3} - 1​ ϕ(x)$，其中$ϕ(x)$在$x = 1$处连续，
则$ϕ(1) = 0$是$f(x)$在$x = 1$处可导的', '[''充分必要条件．'', ''必要但非充分条件．'', ''充分但非必要条件．'', ''既非充分也非必要条件．'']', "['A']", '
函数$f(x) = ∣x^{3} - 1∣ϕ(x)$，其中$ϕ(x)$在$x = 1$处连续。考虑$f(x)$在$x = 1$处的可导性。计算左导数和右导数：左导数

$$
f_{-}^{′}(1) = \\lim_{h→0^{-}} \\frac{f(1 + h) - f(1)}{h} = \\lim_{h→0^{-}} \\frac{∣(1 + h)3 - 1∣ϕ(1 + h)}{h}.
$$
当$h → 0^{-}$时，$(1 + h)3 - 1 < 0$，故
$$
∣(1 + h)3 - 1∣ = − \\lbrack (1 + h)3 - 1 \\rbrack  = −(3h + 3h^{2} + h^{3}),
$$
因此
$$
\\begin{array}{cc}
f_{−}^{′}(1) & = \\lim_{h→0^{-}} \\frac{−(3h + 3h^{2} + h^{3})ϕ(1 + h)}{h} \\\\
 & = \\lim_{h→0^{-}} −(3 + 3h + h^{2})ϕ(1 + h) \\\\
 & = −3ϕ(1) \\\\
\\end{array}
$$
（因为$ϕ$连续）。右导数

$$
f_{+}^{′}(1) = \\lim_{h→0^{+}} \\frac{f(1 + h) - f(1)}{h} = \\lim_{h→0^{+}} \\frac{∣(1 + h)3 - 1∣ϕ(1 + h)}{h}.
$$
当$h → 0^{+}$时，$(1 + h)3 - 1 > 0$，故
$$
∣(1 + h)3 - 1∣ = (1 + h)3 - 1 = 3h + 3h^{2} + h^{3},
$$
因此
$$
f_{+}^{′}(1) = \\lim_{h→0^{+}} \\frac{(3h + 3h^{2} + h^{3})ϕ(1 + h)}{h} = \\lim_{h→0^{+}}(3 + 3h + h^{2})ϕ(1 + h) = 3ϕ(1)
$$
（因为$ϕ$连续）。对于可导性，需要左导数等于右导数，即
$$
−3ϕ(1) = 3ϕ(1),
$$
解得$ϕ(1) = 0$。若$ϕ(1) = 0$，则左导数和右导数均为 0，故$f(x)$在$x = 1$处可导；若$ϕ(1) \\neq 0$，则左导数与右导数不等，故不可导。因此，$ϕ(1) = 0$是$f(x)$在$x = 1$处可导的充分必要条件。', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1620');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1620');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1620');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1621, '2003年考研数学卷4第9题', '', '考研数学2003年卷4真题', '/problems/other/1598', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1622, '2003年考研数学卷4第10题', '简单', '考研数学2003年卷4真题', '设矩阵$B = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)$．已知矩阵$A$相似于$B$，则$r(A - 2E)$与$r(A - E)$之和等于', '[''$2$．'', ''$3$．'', ''$4$．'', ''$5$．'']', "['C']", '
应选 (C)。因为矩阵$A$相似于$B$，于是有矩阵$A - 2E$与矩阵$B - 2E$相似，矩阵$A - E$与矩阵$B - E$相似，且相似矩阵有相同的秩，而
$$
r(B - 2E) = \\left( \\begin{array}{ccc}
−2 & 0 & 1 \\\\
0 & −1 & 0 \\\\
1 & 0 & −2 \\\\
\\end{array} \\right) = 3,  r(B - E) = \\left( \\begin{array}{ccc}
−1 & 0 & 1 \\\\
0 & 0 & 0 \\\\
1 & 0 & −1 \\\\
\\end{array} \\right) = 1.
$$
可见有

$$
r(A - 2E) + r(A - E) = r(B - 2E) + r(B - E) = 4,
$$
', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1622');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1622');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1623, '2003年考研数学卷4第11题', '简单', '考研数学2003年卷4真题', '对于任意二事件$A$和$B$，', '[''若$AB \\\\neq ∅$，则$A$,$B$一定独立．'', ''若$AB \\\\neq ∅$，则$A$,$B$有可能独立．'', ''若$AB = ∅$，则$A$,$B$一定独立．'', ''若$AB = ∅$，则$A$,$B$一定不独立．'']', "['B']", '
事件独立性的定义为$P(A ∩ B) = P(A)P(B)$。
若$AB \\neq ∅$，即事件$A$与$B$有交集，但这并不能保证独立性。
例如，在样本空间等可能的情形下，若$A$与$B$有交集且满足$P(A ∩ B) = P(A)P(B)$，则它们独立；否则不独立。
因此，当$AB \\neq ∅$时，$A$与$B$可能独立，也可能不独立，故选项 B 正确。选项 A 错误，因为交集非空不一定独立。选项 C 错误：若$AB = ∅$且$P(A) > 0$、$P(B) > 0$，则$P(A ∩ B) = 0 \\neq P(A)P(B)$，此时不独立；但若$P(A) = 0$或$P(B) = 0$，则等式成立，此时独立。选项 D 错误，因为当$P(A) = 0$或$P(B) = 0$时，事件独立。', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1623');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1623');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1624, '2003年考研数学卷4第12题', '简单', '考研数学2003年卷4真题', '设随机变量$X$和$Y$都服从正态分布，且它们不相关，则', '[''$X$与$Y$一定独立．'', ''$(X, Y)$服从二维正态分布．'', ''$X$与$Y$未必独立．'', ''$X + Y$服从一维正态分布．'']', "['C']", '
随机变量$X$和$Y$均服从正态分布且不相关，并不能推出它们一定独立。
例如，设$X$服从标准正态分布$N(0, 1)$，$Z$是一个与$X$独立的随机变量，且满足$P(Z = 1) = P(Z = −1) = 0.5$，定义$Y = XZ$。
此时$Y$也服从标准正态分布，且$X$与$Y$不相关（因为$Cov(X, Y) = 0$），但$X$与$Y$不独立（因为$Y$的值依赖于$X$）。
此外，$(X, Y)$不服从二维正态分布（若服从二维正态分布，则不相关意味着独立，但此处不独立），且$X + Y$不服从一维正态分布（因为$X + Y$是混合分布，包含离散点质量）。
因此，选项 A、B、D 错误，选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1624');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1624');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1624');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1625, '2003年考研数学卷4第13题', '简单', '考研数学2003年卷4真题', '设$f(x) = \\frac{1}{\\sin πx} - \\frac{1}{πx} - \\frac{1}{π(1-x)}$，$x ∈ (0, \\frac{1}{2} \\rbrack$．试补充定义$f(0)$，使得$f(x)$在$\\lbrack 0, \\frac{1}{2} \\rbrack$上连续．', '[]', '$f(0) = −\\frac{1}{π}$
', '为了使得$f(x)$在$\\lbrack 0, \\frac{1}{2} \\rbrack$上连续，需要定义$f(0) = \\lim_{x→0^{+}} f(x)$。计算极限：

$$
f(x) = \\frac{1}{\\sin πx} - \\frac{1}{πx} - \\frac{1}{π(1 - x)}
$$

当$x → 0^{+}$，使用泰勒展开：$\\sin πx = πx - \\frac{(πx)3}{6} + O(x^{5})$，所以

$$
\\frac{1}{\\sin πx} = \\frac{1}{πx} (1 + \\frac{(πx)2}{6} + O(x^{4})) = \\frac{1}{πx} + \\frac{πx}{6} + O(x^{3})
$$

因此，

$$
\\frac{1}{\\sin πx} - \\frac{1}{πx} = \\frac{πx}{6} + O(x^{3})
$$

同时，

$$
\\frac{1}{π(1 - x)} = \\frac{1}{π}(1 + x + x^{2} + O(x^{3})) = \\frac{1}{π} + \\frac{x}{π} + \\frac{x^{2}}{π} + O(x^{3})
$$

所以，

$$
\\begin{array}{cc}
f(x) & = (\\frac{πx}{6} + O(x^{3})) - (\\frac{1}{π} + \\frac{x}{π} + \\frac{x^{2}}{π} + O(x^{3})) \\\\
 & = −\\frac{1}{π} + x (\\frac{π}{6} - \\frac{1}{π}) - \\frac{x^{2}}{π} + O(x^{3}) \\\\
\\end{array}
$$

当$x → 0^{+}$，有$f(x) → −\\frac{1}{π}$。因此，定义$f(0) = −\\frac{1}{π}$即可使$f(x)$在$\\lbrack 0, \\frac{1}{2} \\rbrack$上连续。
', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1625');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1625');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1625');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1626, '2003年考研数学卷4第14题', '', '考研数学2003年卷4真题', '/problems/other/1604', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1627, '2003年考研数学卷4第15题', '', '考研数学2003年卷4真题', '/problems/other/1605', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1628, '2003年考研数学卷4第16题', '简单', '考研数学2003年卷4真题', '设$a > 1$，$f(t) = a^{t} - at$在$(−∞, +∞)$内的驻点为$t(a)$．问$a$为何值时，$t(a)$最小？并求出最小值．', '[]', '$a = e^{e}$，最小值为$1 - \\frac{1}{e}$。
', '
由$f^{′}(t) = a^{t} \\ln a - a = 0$，得唯一驻点

$$
t(a) = 1 - \\frac{\\ln \\ln a}{\\ln a}.
$$

考察函数$t(a)$在$a > 1$时的最小值。令

$$
t^{′}(a) = −\\frac{\\frac{1}{a} - \\frac{1}{a} \\ln \\ln a}{(\\ln a)2} = −\\frac{1 - \\ln \\ln a}{a(\\ln a)2} = 0,
$$

得唯一驻点$a = e^{e}$。当$a > e^{e}$时，$t^{′}(a) > 0$；当$a < e^{e}$时，$t^{′}(a) < 0$。因此$t(e^{e}) = 1 - \\frac{1}{e}$为极小值，从而是最小值。
', 9, 'Mogullzr', '2026-01-29 14:12:59', 9, 'Mogullzr', '2026-01-29 14:12:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1628');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1628');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1628');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1629, '2003年考研数学卷4第17题', '简单', '考研数学2003年卷4真题', '设$y = f(x)$是第一象限内连接点$A(0, 1)$，$B(1, 0)$的一段连续曲线，$M(x, y)$为该曲线上任意一点，点$C$为$M$在$x$轴上的投影，$O$为坐标原点．
若梯形$OCMA$的面积与曲边三角形$CBM$的面积之和为$\\frac{x^{3}}{6} + \\frac{1}{3}$，求$f(x)$的表达式．', '[]', '$f(x) = (x - 1)2$
', '
根据题意有

$$
\\frac{x}{2} \\lbrack 1 + f(x) \\rbrack  + \\int_{x}^{1} f(t) dt = \\frac{x^{3}}{6} + \\frac{1}{3}
$$

两边对$x$求导得

$$
\\frac{1}{2} \\lbrack 1 + f(x) \\rbrack  + \\frac{1}{2}xf^{′}(x) - f(x) = \\frac{1}{2}x^{2}.
$$

当$x \\neq 0$时，得

$$
f^{′}(x) - \\frac{1}{x}f(x) = \\frac{x^{2} - 1}{x}.
$$

其通解为

$$
\\begin{array}{cc}
f(x) & = e^{− ∫ −\\frac{1}{x} dx} (∫ \\frac{x^{2} - 1}{x}e^{∫ −\\frac{1}{x} dx} dx + C) \\\\
 & = e^{\\ln x} (∫ \\frac{x^{2} - 1}{x}e^{− \\ln x} dx + C) \\\\
 & = x (∫ \\frac{x^{2} - 1}{x^{2}} dx + C) \\\\
\\end{array}
$$

当$x = 0$时，$f(0) = 1$。由于$x = 1$时$f(1) = 0$，故有$2 + C = 0$，从而$C = −2$。所以

$$
f(x) = x^{2} + 1 - 2x = (x - 1)2.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:00', 9, 'Mogullzr', '2026-01-29 14:13:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1629');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1629');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1629');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1630, '2003年考研数学卷4第18题', '简单', '考研数学2003年卷4真题', '设某商品从时刻$0$到时刻$t$的销售量为$x(t) = kt$，$t ∈  \\lbrack 0, T \\rbrack$，$k > 0$．
欲在$T$时将数量为$A$的该商品销售完，试求(1)$t$时刻的商品剩余量，并确定$k$的值；(2) 在时间段$\\lbrack 0, T \\rbrack$上的平均剩余量．', '[]', '
(1)$t$时刻的商品剩余量为$R(t) = A (1 - \\frac{t}{T})$，$k = \\frac{A}{T}$
(2) 在时间段$\\lbrack 0, T \\rbrack$上的平均剩余量为$\\frac{A}{2}$
', '
(1) 设$t$时刻的商品剩余量为$R(t)$，则


$$
R(t) = A - x(t) = A - kt
$$

由于在时刻$T$商品销售完，即$R(T) = 0$，所以


$$
A - kT = 0
$$

解得


$$
k = \\frac{A}{T}
$$

代入$R(t)$得


$$
R(t) = A (1 - \\frac{t}{T})
$$

(2) 平均剩余量为


$$
\\frac{1}{T} \\int_{0}^{T} R(t) dt
$$

计算积分：


$$
\\int_{0}^{T} A (1 - \\frac{t}{T}) dt = A  \\lbrack t - \\frac{t^{2}}{2T} \\rbrack _{0}^{T} = A (T - \\frac{T^{2}}{2T}) = A (T - \\frac{T}{2}) = A ⋅ \\frac{T}{2}
$$

因此，平均剩余量为


$$
\\frac{1}{T} ⋅ A ⋅ \\frac{T}{2} = \\frac{A}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:00', 9, 'Mogullzr', '2026-01-29 14:13:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1630');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1630');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1630');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1631, '2003年考研数学卷4第19题', '简单', '考研数学2003年卷4真题', '设有向量组①：$α_{1} = (1, 0, 2)T$，$α_{2} = (1, 1, 3)T$，$α_{3} = (1, −1, a + 2)T$和
向量组②：$β_{1} = (1, 2, a + 3)T$，$β_{2} = (2, 1, a + 6)T$，$β_{3} = (2, 1, a + 4)T$．
试问：当$a$为何值时，向量组①与②等价？当$a$为何值时，向量组①与②不等价？', '[]', '当$a \\neq −1$时，向量组①与②等价；当$a = −1$时，向量组①与②不等价。
', '
由初等行变换有

$$
\\begin{array}{cccccccccccccccc}
(α_{1}, α_{2}, α_{3} : β_{1}, β_{2}, β_{3}) & \\begin{array}{ccccccc}
1 & 1 & 1 & : & 1 & 2 & 2 \\\\
0 & 1 & −1 & : & 2 & 1 & 1 \\\\
2 & 3 & a + 2 & : & a + 3 & a + 6 & a + 4 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & 1 & 1 & : & 1 & 2 & 2 & 1 & 0 & 2 & : & −1 & 1 & 1 \\\\
 &  & 0 & 1 & −1 & : & 2 & 1 & 1 & 0 & 1 & −1 & : & 2 & 1 & 1 \\\\
 & \\begin{array}{ccccccc}
1 & 0 & 2 & : & −1 & 1 & 1 \\\\
0 & 1 & −1 & : & 2 & 1 & 1 \\\\
0 & 0 & a + 1 & : & a - 1 & a + 1 & a - 1 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 2 & 3 & a + 2 & : & a + 3 & a + 6 & a + 4 & 0 & 0 & a + 1 & : & a - 1 & a + 1 & a - 1 \\\\
\\end{array}
$$

(I)当$a \\neq −1$时，行列式$\\begin{vmatrix}
α_{1} & α_{2} & α_{3}
\\end{vmatrix} = a + 1 \\neq 0$，$r(α_{1}, α_{2}, α_{3}) = 3$，故线性方程组


$$
x_{1}α_{1} + x_{2}α_{2} + x_{3}α_{3} = β_{i} (i = 1, 2, 3)
$$

均有唯一解。所以$β_{1}, β_{2}, β_{3}$可由向量组①线性表示。同样，行列式$\\begin{vmatrix}
β_{1} & β_{2} & β_{3}
\\end{vmatrix} = 6 \\neq 0$，$r(β_{1}, β_{2}, β_{3}) = 3$，故$α_{1}, α_{2}, α_{3}$可由向量组②线性表示。因此向量组①与②等价。
(II)当$a = −1$时，有

$$
(α_{1}, α_{2}, α_{3} : β_{1}, β_{2}, β_{3}) → \\left( \\begin{array}{ccccccc}
1 & 0 & 2 & : & −1 & 1 & 1 \\\\
0 & 1 & −1 & : & 2 & 1 & 1 \\\\
0 & 0 & 0 & : & −2 & 0 & −2 \\\\
\\end{array} \\right) .
$$

由于$r(α_{1}, α_{2}, α_{3}) \\neq r(α_{1}, α_{2}, α_{3}, β_{1})$，线性方程组


$$
x_{1}α_{1} + x_{2}α_{2} + x_{3}α_{3} = β_{1}
$$

无解，故向量$β_{1}$不能由$α_{1}, α_{2}, α_{3}$线性表示。因此，向量组①与②不等价。
', 9, 'Mogullzr', '2026-01-29 14:13:00', 9, 'Mogullzr', '2026-01-29 14:13:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1631');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1631');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1631');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1632, '2003年考研数学卷4第20题', '简单', '考研数学2003年卷4真题', '设矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 2 & 1 \\\\
1 & 1 & a \\\\
\\end{array} \\right)$可逆，向量$α = \\left( \\begin{array}{c}
1 \\\\
b \\\\
1 \\\\
\\end{array} \\right)$是矩阵$A^{∗}$的一个特征向量，$λ$是$α$对应的特征值，
其中$A^{∗}$是矩阵$A$的伴随矩阵．试求$a$,$b$和$λ$的值．', '[]', '$a = 2$；$b = 1$时$λ = 1$或$b = −2$时$λ = 4$
', '
矩阵$A^{∗}$属于特征值$λ$的特征向量为$α$，由于矩阵$A$可逆，故$A^{∗}$可逆。于是$λ \\neq 0$，$∣A∣ \\neq 0$，且

$$
A^{∗}α = λα  ⇒  AA^{∗}α = λAα  ⇒  Aα = \\frac{∣A∣}{λ}α.
$$

即有

$$
\\left( \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 2 & 1 \\\\
1 & 1 & a \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
1 \\\\
b \\\\
1 \\\\
\\end{array} \\right) = \\frac{∣A∣}{λ} \\left( \\begin{array}{c}
1 \\\\
b \\\\
1 \\\\
\\end{array} \\right) .
$$

由此得方程组

$$
\\begin{cases} 3 + b = \\frac{∣A∣}{λ} \\\\ 2 + 2b = \\frac{∣A∣}{λ}b \\\\ a + b + 1 = \\frac{∣A∣}{λ}. \\end{cases}
$$

解得$b = 1$或$b = −2$；$a = 2$。由于

$$
∣A∣ = \\begin{vmatrix}
2 & 1 & 1\\\\
1 & 2 & 1\\\\
1 & 1 & a
\\end{vmatrix} = 3a - 2 = 4,
$$

根据方程组第一个式子知，特征向量$α$所对应的特征值

$$
λ = \\frac{∣A∣}{3 + b} = \\frac{4}{3 + b}.
$$

所以，当$b = 1$时，$λ = 1$；当$b = −2$时，$λ = 4$。
', 9, 'Mogullzr', '2026-01-29 14:13:00', 9, 'Mogullzr', '2026-01-29 14:13:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1632');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1632');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1632');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1633, '2003年考研数学卷4第21题', '', '考研数学2003年卷4真题', '/problems/other/1611', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:00', 9, 'Mogullzr', '2026-01-29 14:13:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1634, '2003年考研数学卷4第22题', '简单', '考研数学2003年卷4真题', '对于任意二事件$A$和$B$，$0 < P(A) < 1, 0 < P(B) < 1$，
$$
ρ = \\frac{P(AB) - P(A)P(B)}{\\sqrt{P(A)P(B)P(\\bar{A})P(\\bar{B})}}
$$
称做事件$A$和$B$的相关系数．(1) 证明事件$A$和$B$独立的充分必要条件是其相关系数等于零；(2) 利用随机变量相关系数的基本性质，证明$∣ρ∣ ≤ 1$．', '[]', '
(1) 事件$A$和$B$独立的充分必要条件是其相关系数$ρ = 0$。
(2)$∣ρ∣ ≤ 1$。
', '
(I) 由$ρ$的定义，可见$ρ = 0$当且仅当$P(AB) - P(A)P(B) = 0$，而这恰好是二事件$A$和$B$独立的定义，即$ρ = 0$是$A$和$B$独立的充要条件。
(II) 考虑随机变量$X$和$Y$：

$$
X = \\begin{cases} 1 & 若A出现 \\\\ 0 & 若A不出现; \\end{cases} ,  Y = \\begin{cases} 1 & 若B出现; \\\\ 0 & 若B不出现. \\end{cases}
$$

由条件知，$X$和$Y$都服从$0 - 1$分布：

$$
X ∼ \\left( \\begin{array}{cc}
0 & 1 \\\\
P(\\bar{A}) & P(A) \\\\
\\end{array} \\right) ,  Y ∼ \\left( \\begin{array}{cc}
0 & 1 \\\\
P(\\bar{B}) & P(B) \\\\
\\end{array} \\right) .
$$

易见$EX = P(A)$,$EY = P(B)$;$DX = P(A)P(\\bar{A})$,$DY = P(B)P(\\bar{B})$;

$$
Cov(X, Y) = E(XY) - EXEY = P(AB) - P(A)P(B).
$$

因此，事件$A$和$B$的相关系数就是随机变量$X$和$Y$的相关系数。于是由二维随机变量相关系数的基本性质，可见$∣ρ∣ ≤ 1$。
', 9, 'Mogullzr', '2026-01-29 14:13:00', 9, 'Mogullzr', '2026-01-29 14:13:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1634');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1634');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1634');
