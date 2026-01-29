INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1727, '2005年考研数学卷1第1题', '简单', '考研数学2005年卷1真题', '曲线$y = \\frac{x^{2}}{2x+1}$的斜渐近线方程为 ______．', '[]', '
$y = \\frac{1}{2}x - \\frac{1}{4}$
', '
曲线$y = \\frac{x^{2}}{2x+1}$的斜渐近线形式为$y = mx + b$。
首先求斜率$m$：


$$
m = \\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\frac{\\frac{x^{2}}{2x+1}}{x} = \\lim_{x→∞} \\frac{x}{2x + 1} = \\lim_{x→∞} \\frac{1}{2 + \\frac{1}{x}} = \\frac{1}{2}
$$

然后求截距$b$：


$$
b = \\lim_{x→∞}(y - mx) = \\lim_{x→∞} (\\frac{x^{2}}{2x + 1} - \\frac{1}{2}x) = \\lim_{x→∞} \\frac{2x^{2} - x(2x + 1)}{2(2x + 1)} = \\lim_{x→∞} \\frac{−x}{4x + 2} = \\lim_{x→∞} \\frac{−1}{4 + \\frac{2}{x}} = −\\frac{1}{4}
$$

因此，斜渐近线方程为$y = \\frac{1}{2}x - \\frac{1}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:13:27', 9, 'Mogullzr', '2026-01-29 14:13:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1727');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1727');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1727');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1728, '2005年考研数学卷1第2题', '简单', '考研数学2005年卷1真题', '微分方程$xy^{′} + 2y = x \\ln x$满足$y(1) = −\\frac{1}{9}$的解为 ______．', '[]', '
$y = \\frac{x}{3} \\ln x - \\frac{x}{9}$
', '
给定微分方程$xy^{′} + 2y = x \\ln x$和初始条件$y(1) = −\\frac{1}{9}$。
首先，将方程化为标准形式$y^{′} + P(x)y = Q(x)$，即


$$
y^{′} + \\frac{2}{x}y = \\ln x
$$

其中$P(x) = \\frac{2}{x}$，$Q(x) = \\ln x$。
计算积分因子$μ(x) = e^{∫ P(x) dx} = e^{∫ \\frac{2}{x} dx} = e^{2 \\ln x} = x^{2}$。
将原方程乘以积分因子：


$$
x^{2}y^{′} + 2xy = x^{2} \\ln x
$$

左边可写为$\\frac{d}{dx}(x^{2}y)$，因此


$$
\\frac{d}{dx}(x^{2}y) = x^{2} \\ln x
$$

两边积分：


$$
x^{2}y = ∫ x^{2} \\ln x dx
$$

计算积分：
设$u = \\ln x$，$dv = x^{2} dx$，则$du = \\frac{1}{x}dx$，$v = \\frac{x^{3}}{3}$，


$$
∫ x^{2} \\ln x dx = \\frac{x^{3}}{3} \\ln x - ∫ \\frac{x^{3}}{3} ⋅ \\frac{1}{x}dx = \\frac{x^{3}}{3} \\ln x - \\frac{1}{3} ∫ x^{2} dx = \\frac{x^{3}}{3} \\ln x - \\frac{1}{3} ⋅ \\frac{x^{3}}{3} = \\frac{x^{3}}{3} \\ln x - \\frac{x^{3}}{9}
$$

所以


$$
x^{2}y = \\frac{x^{3}}{3} \\ln x - \\frac{x^{3}}{9} + C
$$

解得


$$
y = \\frac{x}{3} \\ln x - \\frac{x}{9} + \\frac{C}{x^{2}}
$$

代入初始条件$y(1) = −\\frac{1}{9}$：


$$
−\\frac{1}{9} = \\frac{1}{3} \\ln 1 - \\frac{1}{9} + C
$$

由于$\\ln 1 = 0$，有


$$
−\\frac{1}{9} = 0 - \\frac{1}{9} + C
$$

解得$C = 0$。
因此，解为


$$
y = \\frac{x}{3} \\ln x - \\frac{x}{9}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:27', 9, 'Mogullzr', '2026-01-29 14:13:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1728');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1728');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1728');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1729, '2005年考研数学卷1第3题', '简单', '考研数学2005年卷1真题', '设函数$u(x, y, z) = 1 + \\frac{x^{2}}{6} + \\frac{y^{2}}{12} + \\frac{z^{2}}{18}$，
单位向量$n = \\frac{1}{\\sqrt{3}}\\{1, 1, 1\\}$，则$\\frac{∂u}{∂n}​_{(1,2,3)} =$______．', '[]', '$\\frac{1}{\\sqrt{3}}$
', '函数$u(x, y, z) = 1 + \\frac{x^{2}}{6} + \\frac{y^{2}}{12} + \\frac{z^{2}}{18}$在点$(1, 2, 3)$处沿单位向量$n = \\frac{1}{\\sqrt{3}}(1, 1, 1)$的方向导数$\\frac{∂u}{∂n}$由梯度$∇u$与$n$的点积给出。
首先计算梯度$∇u$：

$$
\\frac{∂u}{∂x} = \\frac{x}{3},  \\frac{∂u}{∂y} = \\frac{y}{6},  \\frac{∂u}{∂z} = \\frac{z}{9}
$$

因此，

$$
∇u = (\\frac{x}{3}, \\frac{y}{6}, \\frac{z}{9})
$$

在点$(1, 2, 3)$处，

$$
∇u∣_{(1,2,3)} = (\\frac{1}{3}, \\frac{2}{6}, \\frac{3}{9}) = (\\frac{1}{3}, \\frac{1}{3}, \\frac{1}{3})
$$

然后计算点积：

$$
\\frac{∂u}{∂n} = ∇u ⋅ n = (\\frac{1}{3}, \\frac{1}{3}, \\frac{1}{3}) ⋅ \\frac{1}{\\sqrt{3}}(1, 1, 1) = \\frac{1}{3} ⋅ \\frac{1}{\\sqrt{3}} + \\frac{1}{3} ⋅ \\frac{1}{\\sqrt{3}} + \\frac{1}{3} ⋅ \\frac{1}{\\sqrt{3}} = 3 ⋅ \\frac{1}{3} ⋅ \\frac{1}{\\sqrt{3}} = \\frac{1}{\\sqrt{3}}
$$

故方向导数为$\\frac{1}{\\sqrt{3}}$。
', 9, 'Mogullzr', '2026-01-29 14:13:27', 9, 'Mogullzr', '2026-01-29 14:13:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1729');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1729');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '1729');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1730, '2005年考研数学卷1第4题', '简单', '考研数学2005年卷1真题', '设$Ω$是由锥面$z = \\sqrt{x^{2} + y^{2}}$与半球面$z = \\sqrt{R^{2} - x^{2} - y^{2}}$围成的空间区域，$Σ$是$Ω$的整个边界的外侧，则$\\iint_{Σ} xdydz + ydzdx + zdxdy =$______．', '[]', '$πR^{3}(2 - \\sqrt{2})$
', '根据高斯公式，将曲面积分转化为体积分：

$$
\\iint_{Σ} x dy dz + y dz dx + z dx dy = \\iiint_{Ω} (\\frac{∂x}{∂x} + \\frac{∂y}{∂y} + \\frac{∂z}{∂z}) dV = \\iiint_{Ω} 3 dV = 3 \\iiint_{Ω} dV.
$$

其中，$Ω$是由锥面$z = \\sqrt{x^{2} + y^{2}}$与半球面$z = \\sqrt{R^{2} - x^{2} - y^{2}}$围成的区域。计算区域$Ω$的体积，使用柱坐标变换：

$$
x = r \\cos θ,  y = r \\sin θ,  z = z,  dV = r dr dθ dz.
$$

锥面与半球面相交于$x^{2} + y^{2} = \\frac{R^{2}}{2}$，即$r = \\frac{R}{\\sqrt{2}}$。对于$r ∈  \\lbrack 0, \\frac{R}{\\sqrt{2}} \\rbrack$，$z$从锥面$z = r$到半球面$z = \\sqrt{R^{2} - r^{2}}$。体积分为：

$$
\\iiint_{Ω} dV = \\int_{0}^{2π} dθ \\int_{0}^{\\frac{R}{\\sqrt{2}}} r dr \\int_{r}^{\\sqrt{R^{2}-r^{2}}} dz = \\int_{0}^{2π} dθ \\int_{0}^{\\frac{R}{\\sqrt{2}}} r (\\sqrt{R^{2} - r^{2}} - r) dr.
$$

计算径向积分：

$$
\\int_{0}^{\\frac{R}{\\sqrt{2}}} r\\sqrt{R^{2} - r^{2}} dr = \\frac{R^{3}}{3} (1 - \\frac{1}{2^{3/2}}) ,  \\int_{0}^{\\frac{R}{\\sqrt{2}}} r^{2} dr = \\frac{R^{3}}{3 ⋅ 2^{3/2}}.
$$

所以，

$$
\\int_{0}^{\\frac{R}{\\sqrt{2}}} r (\\sqrt{R^{2} - r^{2}} - r) dr = \\frac{R^{3}}{3} (1 - \\frac{1}{2^{3/2}} - \\frac{1}{2^{3/2}}) = \\frac{R^{3}}{3} (1 - \\frac{1}{\\sqrt{2}}) .
$$

因此，

$$
\\iiint_{Ω} dV = 2π ⋅ \\frac{R^{3}}{3} (1 - \\frac{1}{\\sqrt{2}}) = \\frac{2πR^{3}}{3} (1 - \\frac{1}{\\sqrt{2}}) .
$$

曲面积分为：

$$
3 ⋅ \\frac{2πR^{3}}{3} (1 - \\frac{1}{\\sqrt{2}}) = 2πR^{3} (1 - \\frac{1}{\\sqrt{2}}) = πR^{3}(2 - \\sqrt{2}).
$$

故答案为$πR^{3}(2 - \\sqrt{2})$。
', 9, 'Mogullzr', '2026-01-29 14:13:27', 9, 'Mogullzr', '2026-01-29 14:13:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1730');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1730');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1730');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1731, '2005年考研数学卷1第5题', '简单', '考研数学2005年卷1真题', '设$α_{1}, α_{2}, α_{3}$均为3维列向量，记矩阵
$$
A = (α_{1}, α_{2}, α_{3}),  B = (α_{1} + α_{2} + α_{3}, α_{1} + 2α_{2} + 4α_{3}, α_{1} + 3α_{2} + 9α_{3}),
$$
如果$∣A∣ = 1$，那么$∣B∣ =$______．', '[]', '2
', '已知矩阵$A = (α_{1}, α_{2}, α_{3})$且$∣A∣ = 1$，矩阵$B = (α_{1} + α_{2} + α_{3}, α_{1} + 2α_{2} + 4α_{3}, α_{1} + 3α_{2} + 9α_{3})$。
将$B$表示为$B = AC$，其中$C$是一个系数矩阵。
通过分析$B$的列向量：
第一列$α_{1} + α_{2} + α_{3} = A \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$，第二列$α_{1} + 2α_{2} + 4α_{3} = A \\left( \\begin{array}{c}
1 \\\\
2 \\\\
4 \\\\
\\end{array} \\right)$，第三列$α_{1} + 3α_{2} + 9α_{3} = A \\left( \\begin{array}{c}
1 \\\\
3 \\\\
9 \\\\
\\end{array} \\right)$，
因此$C = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 2 & 3 \\\\
1 & 4 & 9 \\\\
\\end{array} \\right)$。
于是$∣B∣ = ∣A∣ ⋅ ∣C∣ = 1 ⋅ ∣C∣$。
计算$∣C∣$：
$∣C∣ = \\begin{vmatrix}
1 & 1 & 1\\\\
1 & 2 & 3\\\\
1 & 4 & 9
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
2 & 3\\\\
4 & 9
\\end{vmatrix} - 1 ⋅ \\begin{vmatrix}
1 & 3\\\\
1 & 9
\\end{vmatrix} + 1 ⋅ \\begin{vmatrix}
1 & 2\\\\
1 & 4
\\end{vmatrix} = 1 ⋅ (18 - 12) - 1 ⋅ (9 - 3) + 1 ⋅ (4 - 2) = 6 - 6 + 2 = 2.$或者，$C$是范德蒙德矩阵，节点为$1, 2, 3$，其行列式为$(2 - 1)(3 - 1)(3 - 2) = 1 × 2 × 1 = 2$。
故$∣B∣ = 2$。
', 9, 'Mogullzr', '2026-01-29 14:13:28', 9, 'Mogullzr', '2026-01-29 14:13:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1731');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1731');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1731');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1732, '2005年考研数学卷1第6题', '简单', '考研数学2005年卷1真题', '从数$1$,$2$,$3$,$4$中任取一个数，记为$X$，再从$1, 2, ⋯  , X$中任取一个数，记为$Y$，
则$P\\{Y = 2\\} =$______．', '[]', '$\\frac{13}{48}$
', '首先，$X$从集合$\\{1, 2, 3, 4\\}$中等概率取值的概率为$P\\{X = i\\} = \\frac{1}{4}$，其中$i = 1, 2, 3, 4$。
然后，在给定$X$的条件下，$Y$从集合$\\{1, 2, ⋯  , X\\}$中等概率取值。
因此，$P\\{Y = 2 ∣ X = i\\}$取决于$i$：
当$X = 1$时，$Y$只能取 1，故$P\\{Y = 2 ∣ X = 1\\} = 0$；当$X = 2$时，$Y$从$\\{1, 2\\}$中取，故$P\\{Y = 2 ∣ X = 2\\} = \\frac{1}{2}$；当$X = 3$时，$Y$从$\\{1, 2, 3\\}$中取，故$P\\{Y = 2 ∣ X = 3\\} = \\frac{1}{3}$；当$X = 4$时，$Y$从$\\{1, 2, 3, 4\\}$中取，故$P\\{Y = 2 ∣ X = 4\\} = \\frac{1}{4}$。
由全概率公式：
$P\\{Y = 2\\} = \\sum_{i=1}^{4} P\\{X = i\\} ⋅ P\\{Y = 2 ∣ X = i\\}$代入计算：
$P\\{Y = 2\\} = \\frac{1}{4} × 0 + \\frac{1}{4} × \\frac{1}{2} + \\frac{1}{4} × \\frac{1}{3} + \\frac{1}{4} × \\frac{1}{4} = \\frac{1}{4} (0 + \\frac{1}{2} + \\frac{1}{3} + \\frac{1}{4})$计算括号内和：
$\\frac{1}{2} + \\frac{1}{3} + \\frac{1}{4} = \\frac{6}{12} + \\frac{4}{12} + \\frac{3}{12} = \\frac{13}{12}$所以：
$P\\{Y = 2\\} = \\frac{1}{4} × \\frac{13}{12} = \\frac{13}{48}$因此，答案为$\\frac{13}{48}$。
', 9, 'Mogullzr', '2026-01-29 14:13:28', 9, 'Mogullzr', '2026-01-29 14:13:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1732');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1732');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1733, '2005年考研数学卷1第7题', '简单', '考研数学2005年卷1真题', '设函数$f(x) = \\lim_{n→∞} \\sqrt{1 + ∣x∣^{3n}}$，则$f(x)$在$(−∞, +∞)$内', '[''处处可导．'', ''恰有一个不可导点．'', ''恰有两个不可导点．'', ''至少有三个不可导点．'']', "['C']", '
函数$f(x) = \\lim_{n→∞} \\sqrt{1 + ∣x∣^{3n}}$的极限计算如下：当$∣x∣ < 1$时，$∣x∣^{3n} → 0$，故$f(x) = 1$。当$∣x∣ = 1$时，$1 + ∣x∣^{3n} = 2$，故$f(x) = \\lim_{n→∞} \\sqrt{2} = 1$。当$∣x∣ > 1$时，$∣x∣^{3n} → ∞$，故$f(x) = ∣x∣^{3}$。
因此，$f(x) = \\begin{cases} 1 & if∣x∣ ≤ 1 \\\\ ∣x∣^{3} & if∣x∣ > 1 \\end{cases}$。由于$f(x)$是偶函数，只需考虑$x ≥ 0$时的可导性。在$x = 0$处，$f(x) = 1$常数，可导，导数为 0。在$x = 1$处，左导数为 0，右导数为 3，不可导。
由偶函数对称性，在$x = −1$处同样不可导。在$∣x∣ < 1$且$x \\neq 0$时，$f(x) = 1$可导；在$∣x∣ > 1$时，$f(x) = ∣x∣^{3}$可导。
因此，不可导点恰为$x = 1$和$x = −1$，共两个不可导点。', 9, 'Mogullzr', '2026-01-29 14:13:28', 9, 'Mogullzr', '2026-01-29 14:13:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1733');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1733');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1733');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1734, '2005年考研数学卷1第8题', '简单', '考研数学2005年卷1真题', '设$F(x)$是连续函数$f(x)$的一个原函数，表示“$M$的充分必要条件是$N$”，则必有', '[''$F(x)$是偶函数$⇔$$f(x)$是奇函数．'', ''$F(x)$是奇函数$⇔$$f(x)$是偶函数．'', ''$F(x)$是周期函数$⇔$$f(x)$是周期函数．'', ''$F(x)$是单调函数$⇔$$f(x)$是单调函数．'']', "['A']", '设$F(x)$是$f(x)$的一个原函数，即$F^{′}(x) = f(x)$。对于选项 A：若$F(x)$是偶函数，即$F(−x) = F(x)$，求导得$−F^{′}(−x) = F^{′}(x)$，即$f(−x) = −f(x)$，所以$f(x)$是奇函数；反之，若$f(x)$是奇函数，考虑原函数$F(x) = \\int_{0}^{x} f(t) dt$，则$F(−x) = \\int_{0}^{−x} f(t) dt$，令$u = −t$，得$F(−x) = \\int_{0}^{x} f(−u) (−du) = \\int_{0}^{x} −f(u) (−du) = \\int_{0}^{x} f(u) du = F(x)$，所以$F(x)$是偶函数，且任意原函数$F(x) + C$也是偶函数。因此$F(x)$是偶函数$⇔$$f(x)$是奇函数，选项 A 正确。对于选项 B：若$F(x)$是奇函数，则$F(−x) = −F(x)$，求导得$−F^{′}(−x) = −F^{′}(x)$，即$f(−x) = f(x)$，所以$f(x)$是偶函数；但若$f(x)$是偶函数，原函数$F(x) = \\int_{0}^{x} f(t) dt$是奇函数，但其他原函数$F(x) + C$可能不是奇函数（当$C \\neq 0$），因此$⇔$不成立。对于选项 C：若$F(x)$是周期函数，则$F(x + T) = F(x)$，求导得$f(x + T) = f(x)$，所以$f(x)$是周期函数；但若$f(x)$是周期函数，原函数$F(x) = \\int_{0}^{x} f(t) dt$满足$F(x + T) = F(x) + \\int_{0}^{T} f(t) dt$，当$\\int_{0}^{T} f(t) dt \\neq 0$时$F(x)$不是周期函数，因此$⇔$不成立。对于选项 D：若$F(x)$是单调函数，则$f(x) = F^{′}(x) ≥ 0$（或$≤ 0$)，但$f(x)$不一定单调；反之，若$f(x)$是单调函数，原函数$F(x)$不一定单调，例如$f(x) = x$单调递增，但原函数$F(x) = \\frac{x^{2}}{2}$在$(−∞, 0)$递减，在$(0, ∞)$递增，不是单调函数，因此$⇔$不成立。
故正确答案为 A。', 9, 'Mogullzr', '2026-01-29 14:13:28', 9, 'Mogullzr', '2026-01-29 14:13:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1734');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1734');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '1734');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1735, '2005年考研数学卷1第9题', '简单', '考研数学2005年卷1真题', '设函数$u(x, y) = ϕ(x + y) + ϕ(x - y) + \\int_{x-y}^{x+y} ψ(t)dt$，
其中函数$ϕ$具有二阶导数，$ψ$具有一阶导数，则必有', '[''$\\\\frac{∂^{2}u}{∂x^{2}} = −\\\\frac{∂^{2}u}{∂y^{2}}$．'', ''$\\\\frac{∂^{2}u}{∂x^{2}} = \\\\frac{∂^{2}u}{∂y^{2}}$．'', ''$\\\\frac{∂^{2}u}{∂x∂y} = \\\\frac{∂^{2}u}{∂y^{2}}$．'', ''$\\\\frac{∂^{2}u}{∂x∂y} = \\\\frac{∂^{2}u}{∂x^{2}}$．'']', "['B']", '给定函数$u(x, y) = ϕ(x + y) + ϕ(x - y) + \\int_{x-y}^{x+y} ψ(t) dt$，其中$ϕ$具有二阶导数，$ψ$具有一阶导数。计算一阶偏导数：
$$
\\frac{∂u}{∂x} = ϕ^{′}(x + y) + ϕ^{′}(x - y) + ψ(x + y) - ψ(x - y)
$$

$$
\\frac{∂u}{∂y} = ϕ^{′}(x + y) - ϕ^{′}(x - y) + ψ(x + y) + ψ(x - y)
$$
接着计算二阶偏导数：
$$
\\frac{∂^{2}u}{∂x^{2}} = ϕ^{′′}(x + y) + ϕ^{′′}(x - y) + ψ^{′}(x + y) - ψ^{′}(x - y)
$$

$$
\\frac{∂^{2}u}{∂y^{2}} = ϕ^{′′}(x + y) + ϕ^{′′}(x - y) + ψ^{′}(x + y) - ψ^{′}(x - y)
$$
比较得$\\frac{∂^{2}u}{∂x^{2}} = \\frac{∂^{2}u}{∂y^{2}}$，故选项 B 正确。其他选项不成立，例如混合偏导数$\\frac{∂^{2}u}{∂x∂y} = ϕ^{′′}(x + y) - ϕ^{′′}(x - y) + ψ^{′}(x + y) + ψ^{′}(x - y)$与$\\frac{∂^{2}u}{∂x^{2}}$或$\\frac{∂^{2}u}{∂y^{2}}$均不相等。', 9, 'Mogullzr', '2026-01-29 14:13:28', 9, 'Mogullzr', '2026-01-29 14:13:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1735');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1735');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1735');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1736, '2005年考研数学卷1第10题', '简单', '考研数学2005年卷1真题', '设有三元方程$xy - z \\ln y + e^{xz} = 1$，根据隐函数存在定理，
存在点$(0, 1, 1)$的一个邻域，在此邻域内该方程', '[''只能确定一个具有连续偏导数的隐函数$z = z(x, y)$．'', ''可确定两个具有连续偏导数的隐函数和$y = y(x, z)$和$z = z(x, y)$．'', ''可确定两个具有连续偏导数的隐函数$x = x(y, z)$和$z = z(x, y)$．'', ''可确定两个具有连续偏导数的隐函数$x = x(y, z)$和$y = y(x, z)$．'']', "['D']", '定义函数$F(x, y, z) = xy - z \\ln y + e^{xz} - 1$，在点$(0, 1, 1)$处，$F(0, 1, 1) = 0 ⋅ 1 - 1 ⋅ \\ln 1 + e^{0⋅1} - 1 = 0 - 0 + 1 - 1 = 0$，满足隐函数存在定理的条件。计算偏导数：$\\frac{∂F}{∂x} = y + ze^{xz}$，在$(0, 1, 1)$处值为$1 + 1 ⋅ e^{0} = 2 \\neq 0$；$\\frac{∂F}{∂y} = x - \\frac{z}{y}$，在$(0, 1, 1)$处值为$0 - \\frac{1}{1} = −1 \\neq 0$；$\\frac{∂F}{∂z} = − \\ln y + xe^{xz}$，在$(0, 1, 1)$处值为$− \\ln 1 + 0 ⋅ e^{0} = 0$。由于$\\frac{∂F}{∂z} = 0$，不能确定隐函数$z = z(x, y)$；但$\\frac{∂F}{∂x} \\neq 0$和$\\frac{∂F}{∂y} \\neq 0$，因此可以确定隐函数$x = x(y, z)$和$y = y(x, z)$，且它们具有连续偏导数。故选项 D 正确。', 9, 'Mogullzr', '2026-01-29 14:13:29', 9, 'Mogullzr', '2026-01-29 14:13:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1736');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1736');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1736');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1737, '2005年考研数学卷1第11题', '简单', '考研数学2005年卷1真题', '设$λ_{1}, λ_{2}$是矩阵$A$的两个不同的特征值，对应的特征向量分别为$α_{1}, α_{2}$，
则$α_{1}$，$A(α_{1} + α_{2})$线性无关的充分必要条件是', '[''$λ_{1} \\\\neq 0$．'', ''$λ_{2} \\\\neq 0$．'', ''$λ_{1} = 0$．'', ''$λ_{2} = 0$．'']', "['B']", '
设向量组为$α_{1}$与$A(α_{1} + α_{2})$。
已知

$$
Aα_{1} = λ_{1}α_{1},  Aα_{2} = λ_{2}α_{2},
$$
所以

$$
A(α_{1} + α_{2}) = λ_{1}α_{1} + λ_{2}α_{2}.
$$
考虑线性组合

$$
c_{1}α_{1} + c_{2}(λ_{1}α_{1} + λ_{2}α_{2}) = 0,
$$
整理得

$$
(c_{1} + c_{2}λ_{1})α_{1} + c_{2}λ_{2}α_{2} = 0.
$$
由于$α_{1}$与$α_{2}$属于不同特征值，它们线性无关，因此系数必须全为零：

$$
\\begin{cases} c_{1} + c_{2}λ_{1} = 0 \\\\ c_{2}λ_{2} = 0. \\end{cases}
$$
若$λ_{2} \\neq 0$，则$c_{2} = 0$，代入第一式得$c_{1} = 0$，向量组线性无关。若$λ_{2} = 0$，则$c_{2}$可取任意非零值，如取$c_{2} = 1$，则$c_{1} = −λ_{1}$，存在非零解，向量组线性相关。因此，向量组线性无关的充要条件是$λ_{2} \\neq 0$，对应选项B。', 9, 'Mogullzr', '2026-01-29 14:13:29', 9, 'Mogullzr', '2026-01-29 14:13:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1737');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1737');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1738, '2005年考研数学卷1第12题', '简单', '考研数学2005年卷1真题', '设$A$为$n$($n ≥ 2$)阶可逆矩阵，交换$A$的第$1$行与第$2$行得矩阵$B$，$A^{∗}, B^{∗}$分别为$A$,$B$的伴随矩阵，则', '[''交换$A^{∗}$的第$1$列与第$2$列得$B^{∗}$．'', ''交换$A^{∗}$的第$1$行与第$2$行得$B^{∗}$．'', ''交换$A^{∗}$的第$1$列与第$2$列得$−B^{∗}$．'', ''交换$A^{∗}$的第$1$行与第$2$行得$−B^{∗}$．'']', "['C']", '设$A$为$n$阶可逆矩阵，交换$A$的第$1$行与第$2$行得矩阵$B$，即$B = E_{12}A$，其中$E_{12}$为交换两行的初等矩阵。由伴随矩阵的性质，$A^{∗} = ∣A∣A^{−1}$，$B^{∗} = ∣B∣B^{−1}$。由于交换两行改变行列式的符号，有$∣B∣ = −∣A∣$。同时，$B^{−1} = A^{−1}E_{12}^{−1} = A^{−1}E_{12}$（因为$E_{12}^{−1} = E_{12}$)。代入得$B^{∗} = (−∣A∣)A^{−1}E_{12} = −(∣A∣A^{−1})E_{12} = −A^{∗}E_{12}$。右乘$E_{12}$表示交换矩阵的列，因此$A^{∗}E_{12}$是交换$A^{∗}$的第$1$列与第$2$列后的矩阵。故$B^{∗} = −(A^{∗}12)$，即交换$A^{∗}$的第$1$列与第$2$列得$−B^{∗}$。选项 C 正确。通过$n = 2$的例子验证：设$A = \\left( \\begin{array}{cc}
a & b \\\\
c & d \\\\
\\end{array} \\right)$，则$A^{∗} = \\left( \\begin{array}{cc}
d & −b \\\\
−c & a \\\\
\\end{array} \\right)$。交换行得$B = \\left( \\begin{array}{cc}
c & d \\\\
a & b \\\\
\\end{array} \\right)$，则$B^{∗} = \\left( \\begin{array}{cc}
b & −d \\\\
−a & c \\\\
\\end{array} \\right)$。交换$A^{∗}$的第$1$列与第$2$列得$\\left( \\begin{array}{cc}
−b & d \\\\
a & −c \\\\
\\end{array} \\right) = −B^{∗}$，符合结论。其他选项不成立。', 9, 'Mogullzr', '2026-01-29 14:13:29', 9, 'Mogullzr', '2026-01-29 14:13:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1738');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1738');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1738');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1739, '2005年考研数学卷1第13题', '简单', '考研数学2005年卷1真题', '设二维随机变量$(X, Y)$的概率分布为
$$
\\begin{array}{c|cc|}
X\\Y & 0 & 1 \\\\
0 & 0.4 & a \\\\
1 & b & 0.1 \\\\
\\end{array}
$$
已知随机事件$\\{X = 0\\}$与$\\{X + Y = 1\\}$相互独立，则', '[''$a = 0.2, b = 0.3$．'', ''$a = 0.4, b = 0.1$．'', ''$a = 0.3, b = 0.2$．'', ''$a = 0.1, b = 0.4$．'']', "['B']", '
由概率分布的性质，所有概率之和为 1，即

$$
0.4 + a + b + 0.1 = 1,
$$
解得

$$
a + b = 0.5.
$$
事件$\\{X = 0\\}$与$\\{X + Y = 1\\}$相互独立，因此

$$
P(\\{X = 0\\} ∩ \\{X + Y = 1\\}) = P(\\{X = 0\\}) ⋅ P(\\{X + Y = 1\\}).
$$
其中，

$$
\\begin{array}{c}
P(\\{X = 0\\}) = P(X = 0, Y = 0) + P(X = 0, Y = 1) = 0.4 + a, \\\\
P(\\{X + Y = 1\\}) = P(X = 0, Y = 1) + P(X = 1, Y = 0) = a + b, \\\\
P(\\{X = 0\\} ∩ \\{X + Y = 1\\}) = P(X = 0, Y = 1) = a. \\\\
\\end{array}
$$
代入独立条件得：

$$
a = (0.4 + a)(a + b).
$$
由$a + b = 0.5$，代入得：

$$
a = (0.4 + a) × 0.5,
$$
解得

$$
a = 0.4,
$$
进而

$$
b = 0.1.
$$
验证：

$$
P(\\{X = 0\\}) = 0.8,  P(\\{X + Y = 1\\}) = 0.5,  P(交集) = 0.4,
$$
乘积为$0.8 × 0.5 = 0.4$，满足独立条件。因此，选项 B 正确。', 9, 'Mogullzr', '2026-01-29 14:13:29', 9, 'Mogullzr', '2026-01-29 14:13:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1739');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1739');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1739');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1740, '2005年考研数学卷1第14题', '简单', '考研数学2005年卷1真题', '设$X_{1}, X_{2}, ⋯  , X_{n}(n ≥ 2)$为来自总体$N(0, 1)$的简单随机样本，$\\overline{X}$为样本均值，$S^{2}$为样本方差，则', '[''$n\\\\overline{X} ∼ N(0, 1)$．'', ''$nS^{2} ∼ χ^{2}(n)$．'', ''$\\\\frac{(n-1)\\\\overline{X}}{S} ∼ t(n - 1)$．'', ''$\\\\frac{(n-1)X_{1}^{2}}{\\\\sum_{i=2}^{n} X_{i}^{2}} ∼ F(1, n - 1)$．'']', "['D']", '应选 (D)。因$X_{1}, X_{2}, ⋯  , X_{n}(n ≥ 2)$为来自总体$N(0, 1)$的简单随机样本，故有

$$
\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i} ∼ N(0, \\frac{1}{n})
$$
根据正态总体抽样分布理论有

$$
\\begin{array}{c}
\\frac{\\overline{X} - 0}{1/\\sqrt{n}} = \\sqrt{n}\\overline{X} ∼ N(0, 1), \\\\
\\frac{(n - 1)S^{2}}{σ^{2}} = \\frac{(n - 1)S^{2}}{1^{2}} = (n - 1)S^{2} ∼ χ^{2}(n - 1), \\\\
\\frac{\\overline{X} - 0}{S/\\sqrt{n}} = \\frac{\\sqrt{n}\\overline{X}}{S} ∼ t(n - 1); \\\\
\\end{array}
$$
故排除选项 (A)、(B)、(C)。又

$$
X_{1}^{2} ∼ χ^{2}(1),  \\sum_{i=2}^{n} X_{i}^{2} ∼ χ^{2}(n - 1),
$$
且$X_{1}^{2}$与$\\sum_{i=2}^{n} X_{i}^{2}$相互独立，于是

$$
\\frac{X_{1}^{2}/1}{\\sum_{i=2}^{n} X_{i}^{2}/(n - 1)} = \\frac{(n - 1)X_{1}^{2}}{\\sum_{i=2}^{n} X_{i}^{2}} ∼ F(1, n - 1).
$$
故应选 (D)。', 9, 'Mogullzr', '2026-01-29 14:13:29', 9, 'Mogullzr', '2026-01-29 14:13:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1740');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1076', '1740');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1741, '2005年考研数学卷1第15题', '简单', '考研数学2005年卷1真题', '（本题满分 11 分）设$D = \\{(x, y) ​x^{2} + y^{2} ≤ \\sqrt{2}, x ≥ 0, y ≥ 0\\}$，$\\lbrack 1 + x^{2} + y^{2} \\rbrack$表示不超过$1 + x^{2} + y^{2}$的最大整数．
计算二重积分$\\iint_{D} xy \\lbrack 1 + x^{2} + y^{2} \\rbrack dxdy.$', '[]', '$\\frac{3}{8}$
', '区域$D$是四分之一圆盘$x^{2} + y^{2} ≤ \\sqrt{2}$,$x ≥ 0$,$y ≥ 0$。引入极坐标变换$x = r \\cos θ$,$y = r \\sin θ$，则$D$对应于$0 ≤ θ ≤ π/2$,$0 ≤ r ≤ \\sqrt{} = 2^{1/4}$。积分变为：

$$
\\iint_{D} xy \\lbrack 1 + x^{2} + y^{2} \\rbrack  dx dy = \\int_{0}^{π/2} \\int_{0}^{2^{1/4}} r^{2} \\cos θ \\sin θ \\lbrack 1 + r^{2} \\rbrack  ⋅ r dr dθ = \\frac{1}{2} \\int_{0}^{π/2} \\sin 2θ dθ \\int_{0}^{2^{1/4}} r^{3} \\lbrack 1 + r^{2} \\rbrack  dr.
$$

由于$1 + r^{2} ∈  \\lbrack 1, 1 + \\sqrt{2} \\rbrack$，且$\\sqrt{2} ≈ 1.414$，故$1 + r^{2} ∈  \\lbrack 1, 2.414)$，取整函数$\\lbrack 1 + r^{2} \\rbrack$在$r^{2} < 1$时取值为 1，在$r^{2} ≥ 1$时取值为 2。因此将$r$的积分分段：

$$
\\int_{0}^{2^{1/4}} r^{3} \\lbrack 1 + r^{2} \\rbrack  dr = \\int_{0}^{1} r^{3} ⋅ 1 dr + \\int_{1}^{2^{1/4}} r^{3} ⋅ 2 dr =  \\lbrack \\frac{r^{4}}{4} \\rbrack _{0}^{1} + 2  \\lbrack \\frac{r^{4}}{4} \\rbrack _{1}^{2^{1/4}} = \\frac{1}{4} + \\frac{1}{2} ((2^{1/4})4 - 1) = \\frac{1}{4} + \\frac{1}{2}(2 - 1) = \\frac{3}{4}.
$$

又，

$$
\\int_{0}^{π/2} \\sin 2θ dθ =  \\lbrack −\\frac{1}{2} \\cos 2θ \\rbrack _{0}^{π/2} = −\\frac{1}{2}(−1 - 1) = 1.
$$

因此，

$$
\\iint_{D} xy \\lbrack 1 + x^{2} + y^{2} \\rbrack  dx dy = \\frac{1}{2} ⋅ 1 ⋅ \\frac{3}{4} = \\frac{3}{8}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:30', 9, 'Mogullzr', '2026-01-29 14:13:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1741');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1741');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1741');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1742, '2005年考研数学卷1第16题', '简单', '考研数学2005年卷1真题', '（本题满分 12 分）求幂级数$\\sum_{n=1}^{∞}(−1)n−1 (1 + \\frac{1}{n(2n-1)}) x^{2n}$的收敛区间与和函数$f(x)$．', '[]', '
收敛区间为$(−1, 1)$，和函数为


$$
f(x) = \\frac{x^{2}}{1 + x^{2}} - \\ln(1 + x^{2}) + 2x arctan x.
$$

', '
考虑幂级数$\\sum_{n=1}^{∞}(−1)n−1 (1 + \\frac{1}{n(2n-1)}) x^{2n}$。令$y = x^{2}$，则级数化为$\\sum_{n=1}^{∞} c_{n}y^{n}$，其中$c_{n} = (−1)n−1 (1 + \\frac{1}{n(2n-1)})$。
使用比值判别法：


$$
\\lim_{n→∞} ​\\frac{c_{n+1}}{c_{n}}​ = \\lim_{n→∞} ​\\frac{1 + \\frac{1}{(n+1)(2n+1)}}{1 + \\frac{1}{n(2n-1)}}​ = 1,
$$

故收敛半径$R = 1$，即当$∣y∣ < 1$时收敛，$∣y∣ > 1$时发散。由于$y = x^{2}$，有$∣x∣ < 1$时收敛，$∣x∣ > 1$时发散。
当$∣x∣ = 1$时，级数为$\\sum_{n=1}^{∞}(−1)n−1 (1 + \\frac{1}{n(2n-1)})$。将其拆分为$\\sum_{n=1}^{∞}(−1)n−1$和$\\sum_{n=1}^{∞}(−1)n−1\\frac{1}{n(2n-1)}$。前者通项不趋于零，发散；后者绝对收敛。故整体在$∣x∣ = 1$时发散。收敛区间为$(−1, 1)$。
求和函数$f(x)$：


$$
f(x) = \\sum_{n=1}^{∞}(−1)n−1 (1 + \\frac{1}{n(2n - 1)}) x^{2n} = \\sum_{n=1}^{∞}(−1)n−1x^{2n} + \\sum_{n=1}^{∞}(−1)n−1\\frac{1}{n(2n - 1)}x^{2n} = S_{1}(x) + S_{2}(x).
$$

其中


$$
S_{1}(x) = \\sum_{n=1}^{∞}(−1)n−1x^{2n} = \\frac{x^{2}}{1 + x^{2}},  ∣x∣ < 1.
$$

对于$S_{2}(x)$：


$$
S_{2}(x) = \\sum_{n=1}^{∞}(−1)n−1\\frac{1}{n(2n - 1)}x^{2n}.
$$

分解$\\frac{1}{n(2n-1)} = −\\frac{1}{n} + \\frac{2}{2n-1}$，


$$
S_{2}(x) = − \\sum_{n=1}^{∞}(−1)n−1\\frac{1}{n}x^{2n} + 2 \\sum_{n=1}^{∞}(−1)n−1\\frac{1}{2n - 1}x^{2n} = −A(x) + 2B(x).
$$

其中


$$
A(x) = \\sum_{n=1}^{∞}(−1)n−1\\frac{1}{n}x^{2n} = \\ln(1 + x^{2}),  ∣x∣ < 1,
$$



$$
B(x) = \\sum_{n=1}^{∞}(−1)n−1\\frac{1}{2n - 1}x^{2n} = x^{2} \\sum_{m=0}^{∞}(−1)m\\frac{x^{2m}}{2m + 1} = x arctan x,  ∣x∣ < 1.
$$

故


$$
S_{2}(x) = − \\ln(1 + x^{2}) + 2x arctan x.
$$

因此，


$$
f(x) = S_{1}(x) + S_{2}(x) = \\frac{x^{2}}{1 + x^{2}} - \\ln(1 + x^{2}) + 2x arctan x,  ∣x∣ < 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:30', 9, 'Mogullzr', '2026-01-29 14:13:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1742');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1742');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '1742');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1743, '2005年考研数学卷1第17题', '简单', '考研数学2005年卷1真题', '（本题满分 11 分）如图，曲线$C$的方程为$y = f(x)$，点$(3, 2)$是它的一个拐点，
直线$l_{1}$与$l_{2}$分别是曲线$C$在点$(0, 0)$与$(3, 2)$处的切线，
其交点为$(2, 4)$． 设函数$f(x)$具有三阶连续导数，
计算定积分$\\int_{0}^{3}(x^{2} + x)f^{′′′}(x)dx$．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/9013a05d133a47008d37e8186cae1f40.jpg)
', '[]', '$20$
', '
由直线$l_{1}$过$(0, 0)$和$(2, 4)$两点知直线$l_{1}$的斜率为$2$。由直线$l_{1}$是曲线$C$在点$(0, 0)$的切线，由导数的几何意义知$f^{′}(0) = 2$。同理可得$f^{′}(3) = −2$。另外由点$(3, 2)$是曲线$C$的一个拐点知$f^{′′}(3) = 0$。由分部积分公式，

$$
\\begin{array}{cc}
\\int_{0}^{3}(x^{2} + x)f^{′′′}(x)dx & = \\int_{0}^{3}(x^{2} + x)d(f^{′′}(x)) \\\\
 & =  \\lbrack (x^{2} + x)f^{′′}(x) \\rbrack 03​ - \\int_{0}^{3} f^{′′}(x)(2x + 1)dx \\\\
 & = − \\int_{0}^{3}(2x + 1)d(f^{′}(x)) \\\\
 & = 16 + 2 \\lbrack f(3) - f(0) \\rbrack  = 20. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:32', 9, 'Mogullzr', '2026-01-29 14:13:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1743');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1743');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1743');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1744, '2005年考研数学卷1第18题', '简单', '考研数学2005年卷1真题', '（本题满分 12 分）已知函数$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导，且$f(0) = 0, f(1) = 1$． 证明：(1) 存在$ξ ∈ (0, 1),$使得$f(ξ) = 1 - ξ$；(2) 存在两个不同的点$η, ζ ∈ (0, 1)$，使得$f^{′}(η)f^{′}(ζ) = 1$．', '[]', '
(1) 令$g(x) = f(x) + x - 1$。由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，故$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续。计算得$g(0) = f(0) + 0 - 1 = −1 < 0$，$g(1) = f(1) + 1 - 1 = 1 > 0$。由介值定理，存在$ξ ∈ (0, 1)$使得$g(ξ) = 0$，即$f(ξ) + ξ - 1 = 0$，所以$f(ξ) = 1 - ξ$。
(2) 由 (1) 知存在$ξ ∈ (0, 1)$满足$f(ξ) = 1 - ξ$。在区间$\\lbrack 0, ξ \\rbrack$上应用拉格朗日中值定理，存在$η ∈ (0, ξ)$使得


$$
f^{′}(η) = \\frac{f(ξ) - f(0)}{ξ - 0} = \\frac{1 - ξ}{ξ}.
$$

在区间$\\lbrack ξ, 1 \\rbrack$上应用拉格朗日中值定理，存在$ζ ∈ (ξ, 1)$使得


$$
f^{′}(ζ) = \\frac{f(1) - f(ξ)}{1 - ξ} = \\frac{1 - (1 - ξ)}{1 - ξ} = \\frac{ξ}{1 - ξ}.
$$

于是，


$$
f^{′}(η)f^{′}(ζ) = \\frac{1 - ξ}{ξ} ⋅ \\frac{ξ}{1 - ξ} = 1.
$$

由于$η ∈ (0, ξ)$和$ζ ∈ (ξ, 1)$，故$η$和$ζ$是两个不同的点。
', '
(1) 令$g(x) = f(x) + x - 1$。由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，故$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续。计算得$g(0) = f(0) + 0 - 1 = −1 < 0$，$g(1) = f(1) + 1 - 1 = 1 > 0$。由介值定理，存在$ξ ∈ (0, 1)$使得$g(ξ) = 0$，即$f(ξ) + ξ - 1 = 0$，所以$f(ξ) = 1 - ξ$。
(2) 由 (1) 知存在$ξ ∈ (0, 1)$满足$f(ξ) = 1 - ξ$。在区间$\\lbrack 0, ξ \\rbrack$上应用拉格朗日中值定理，存在$η ∈ (0, ξ)$使得


$$
f^{′}(η) = \\frac{f(ξ) - f(0)}{ξ - 0} = \\frac{1 - ξ}{ξ}.
$$

在区间$\\lbrack ξ, 1 \\rbrack$上应用拉格朗日中值定理，存在$ζ ∈ (ξ, 1)$使得


$$
f^{′}(ζ) = \\frac{f(1) - f(ξ)}{1 - ξ} = \\frac{1 - (1 - ξ)}{1 - ξ} = \\frac{ξ}{1 - ξ}.
$$

于是，


$$
f^{′}(η)f^{′}(ζ) = \\frac{1 - ξ}{ξ} ⋅ \\frac{ξ}{1 - ξ} = 1.
$$

由于$η ∈ (0, ξ)$和$ζ ∈ (ξ, 1)$，故$η$和$ζ$是两个不同的点。
', 9, 'Mogullzr', '2026-01-29 14:13:32', 9, 'Mogullzr', '2026-01-29 14:13:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1744');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1744');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1744');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1745, '2005年考研数学卷1第19题', '简单', '考研数学2005年卷1真题', '（本题满分 12 分）设函数$ϕ(y)$具有连续导数，在围绕原点的任意分段光滑简单闭曲线$L$上，
曲线积分$∮_{L} \\frac{ϕ(y)dx+2xydy}{2x^{2}+y^{4}}$的值恒为同一常数．(1) 证明：对右半平面$x > 0$内的任意分段光滑简单闭曲线$C$，有
$$
∮_{C} \\frac{ϕ(y)dx + 2xydy}{2x^{2} + y^{4}} = 0.
$$
(2) 求函数$ϕ(y)$的表达式．', '[]', '
(1) 对于右半平面$x > 0$内的任意分段光滑简单闭曲线$C$，有$∮_{C} \\frac{ϕ(y)dx+2xydy}{2x^{2}+y^{4}} = 0$。
(2)$ϕ(y) = −y^{2}$。
', '
(1) 由于在围绕原点的任意分段光滑简单闭曲线$L$上，曲线积分$∮_{L} \\frac{ϕ(y)dx+2xydy}{2x^{2}+y^{4}}$的值恒为同一常数，考虑右半平面$x > 0$内的任意分段光滑简单闭曲线$C$。因为$C$不包含原点，且被积函数在$x > 0$内具有连续偏导数（分母$2x^{2} + y^{4} > 0$），所以$C$可以在$x > 0$内连续收缩为一点。在收缩过程中，曲线积分值保持不变，当收缩为一点时，曲线积分为零，因此沿$C$的曲线积分为零。
(2) 由条件知，曲线积分在围绕原点的闭曲线上为常数，这意味着被积函数在原点外满足$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，其中$P = \\frac{ϕ(y)}{2x^{2}+y^{4}}$，$Q = \\frac{2xy}{2x^{2}+y^{4}}$。
计算偏导数：


$$
\\frac{∂Q}{∂x} = \\frac{∂}{∂x} (\\frac{2xy}{2x^{2} + y^{4}}) = \\frac{2y(2x^{2} + y^{4}) - 2xy ⋅ 4x}{(2x^{2} + y^{4})2} = \\frac{4x^{2}y + 2y^{5} - 8x^{2}y}{(2x^{2} + y^{4})2} = \\frac{2y^{5} - 4x^{2}y}{(2x^{2} + y^{4})2},
$$



$$
\\frac{∂P}{∂y} = \\frac{∂}{∂y} (\\frac{ϕ(y)}{2x^{2} + y^{4}}) = \\frac{ϕ^{′}(y)(2x^{2} + y^{4}) - ϕ(y) ⋅ 4y^{3}}{(2x^{2} + y^{4})2}.
$$

令两者相等：


$$
\\frac{ϕ^{′}(y)(2x^{2} + y^{4}) - 4y^{3}ϕ(y)}{(2x^{2} + y^{4})2} = \\frac{2y^{5} - 4x^{2}y}{(2x^{2} + y^{4})2},
$$

即


$$
ϕ^{′}(y)(2x^{2} + y^{4}) - 4y^{3}ϕ(y) = 2y^{5} - 4x^{2}y.
$$

整理得：


$$
2x^{2}ϕ^{′}(y) + ϕ^{′}(y)y^{4} - 4y^{3}ϕ(y) = −4x^{2}y + 2y^{5}.
$$

比较$x^{2}$的系数：


$$
2ϕ^{′}(y) = −4y  ⇒  ϕ^{′}(y) = −2y.
$$

代入上式：


$$
(−2y) ⋅ y^{4} - 4y^{3}ϕ(y) = 2y^{5}  ⇒  −2y^{5} - 4y^{3}ϕ(y) = 2y^{5}  ⇒  −4y^{3}ϕ(y) = 4y^{5}  ⇒  ϕ(y) = −y^{2}.
$$

因此，函数$ϕ(y) = −y^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:32', 9, 'Mogullzr', '2026-01-29 14:13:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1745');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1745');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1745');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1746, '2005年考研数学卷1第20题', '简单', '考研数学2005年卷1真题', '（本题满分 9 分）已知二次型$f(x_{1}, x_{2}, x_{3}) = (1 - a)x_{1}^{2} + (1 - a)x_{2}^{2} + 2x_{3}^{2} + 2(1 + a)x_{1}x_{2}$的秩为$2$．(1) 求$a$的值；(2) 求正交变换$x = Qy$，把$f(x_{1}, x_{2}, x_{3})$化成标准形；(3) 求方程$f(x_{1}, x_{2}, x_{3}) = 0$的解．', '[]', '
(1)$a = 0$
(2) 正交变换$x = Qy$中，$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{2}} & 0 \\\\
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{2}} & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，标准形为$f = 2y_{2}^{2} + 2y_{3}^{2}$
(3) 方程$f(x_{1}, x_{2}, x_{3}) = 0$的解为$x_{1} = t, x_{2} = −t, x_{3} = 0$，其中$t$为任意实数。
', '(1) 二次型$f(x_{1}, x_{2}, x_{3})$的矩阵为$A = \\left( \\begin{array}{ccc}
1 - a & 1 + a & 0 \\\\
1 + a & 1 - a & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$。秩为 2 意味着$det(A) = 0$。计算行列式：


$$
det(A) = det \\left( \\begin{array}{cc}
1 - a & 1 + a \\\\
1 + a & 1 - a \\\\
\\end{array} \\right) × 2 =  \\lbrack (1 - a)2 - (1 + a)2 \\rbrack  × 2 =  \\lbrack −4a \\rbrack  × 2 = −8a
$$

设$−8a = 0$，得$a = 0$。当$a = 0$时，矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
1 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$，秩为 2，符合条件。
(2) 当$a = 0$时，二次型为$f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + x_{2}^{2} + 2x_{3}^{2} + 2x_{1}x_{2}$，矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
1 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$。求特征值和特征向量：
特征多项式为$det(A - λI) = det \\left( \\begin{array}{ccc}
1 - λ & 1 & 0 \\\\
1 & 1 - λ & 0 \\\\
0 & 0 & 2 - λ \\\\
\\end{array} \\right) = (λ^{2} - 2λ)(2 - λ) = −λ(λ - 2)2$，特征值为$λ = 0$（单根）和$λ = 2$（二重根）。
对于$λ = 0$，解$(A - 0I)v = 0$得特征向量$(1, −1, 0)T$，单位化得$u_{1} = (\\frac{1}{\\sqrt{2}}, −\\frac{1}{\\sqrt{2}}, 0)^{T}$。
对于$λ = 2$，解$(A - 2I)v = 0$得特征向量$(1, 1, 0)T$和$(0, 0, 1)T$，单位化得$u_{2} = (\\frac{1}{\\sqrt{2}}, \\frac{1}{\\sqrt{2}}, 0)^{T}$和$u_{3} = (0, 0, 1)T$。
正交矩阵$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{2}} & 0 \\\\
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{2}} & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，标准形为$f = 0 ⋅ y_{1}^{2} + 2 ⋅ y_{2}^{2} + 2 ⋅ y_{3}^{2} = 2y_{2}^{2} + 2y_{3}^{2}$。
(3) 由标准形$f = 2y_{2}^{2} + 2y_{3}^{2} = 0$得$y_{2} = 0$，$y_{3} = 0$，$y_{1}$任意。代入正交变换$x = Qy$：


$$
x = Q \\left( \\begin{array}{c}
y_{1} \\\\
0 \\\\
0 \\\\
\\end{array} \\right) = y_{1} \\left( \\begin{array}{c}
\\frac{1}{\\sqrt{2}} \\\\
−\\frac{1}{\\sqrt{2}} \\\\
0 \\\\
\\end{array} \\right)
$$

令$t = \\frac{y_{1}}{\\sqrt{2}}$，则解为$x_{1} = t$，$x_{2} = −t$，$x_{3} = 0$，其中$t$为任意实数。
', 9, 'Mogullzr', '2026-01-29 14:13:32', 9, 'Mogullzr', '2026-01-29 14:13:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1746');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1746');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1747, '2005年考研数学卷1第21题', '简单', '考研数学2005年卷1真题', '（本题满分 9 分）已知$3$阶矩阵$A$的第一行是$(a, b, c)$，$a, b, c$不全为零，矩阵$B = \\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
2 & 4 & 6 \\\\
3 & 6 & k \\\\
\\end{array} \\right)$（$k$为常数），且$AB = 0$，求线性方程组$Ax = 0$的通解．', '[]', '
由$AB = 0$知，$B$的每一列均为$Ax = 0$的解，且$r(A) + r(B) ≤ 3$。
(Ⅰ)若$k \\neq 9$，则$r(B) = 2$，于是$r(A) = 1$。记$B = (β_{1}, β_{2}, β_{3})$，则$β_{1}, β_{3}$是方程组的解且线性无关，可作为其基础解系，故$Ax = 0$的通解为：

$$
x = k_{1} \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) + k_{2} \\left( \\begin{array}{c}
3 \\\\
6 \\\\
k \\\\
\\end{array} \\right) ,  k_{1}, k_{2}为任意常数。
$$

(Ⅱ)若$k = 9$，则$r(B) = 1$，于是$r(A) = 1$或$r(A) = 2$。
(i)若$r(A) = 2$，则方程组的基础解系由一个线性无关的解组成，$β_{1}$是方程组$Ax = 0$的基础解系，则$Ax = 0$的通解为：

$$
x = k_{1} \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) ,  k_{1}为任意常数。
$$

(ii)若$r(A) = 1$，则$A$的三个行向量成比例，因第 1 行元素$(a, b, c)$不全为零，不妨设$a \\neq 0$，则$Ax = 0$的同解方程组为：$ax_{1} + bx_{2} + cx_{3} = 0$，系数矩阵的秩为 1，故基础解系由 2 个线性无关解向量组成，选$x_{2}, x_{3}$为自由未知量，分别取$x_{2} = 1, x_{3} = 0$或$x_{2} = 0, x_{3} = 1$，方程组的基础解系为

$$
ξ_{1} = \\left( \\begin{array}{c}
−\\frac{b}{a} \\\\
1 \\\\
0 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
−\\frac{c}{a} \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$

则其通解为$x = k_{1}ξ_{1} + k_{2}ξ_{2}$，$k_{1}, k_{2}$为任意常数。
', '
由$AB = 0$知，$B$的每一列均为$Ax = 0$的解，且$r(A) + r(B) ≤ 3$。
(Ⅰ)若$k \\neq 9$，则$r(B) = 2$，于是$r(A) = 1$。记$B = (β_{1}, β_{2}, β_{3})$，则$β_{1}, β_{3}$是方程组的解且线性无关，可作为其基础解系，故$Ax = 0$的通解为：

$$
x = k_{1} \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) + k_{2} \\left( \\begin{array}{c}
3 \\\\
6 \\\\
k \\\\
\\end{array} \\right) ,  k_{1}, k_{2}为任意常数。
$$

(Ⅱ)若$k = 9$，则$r(B) = 1$，于是$r(A) = 1$或$r(A) = 2$。
(i)若$r(A) = 2$，则方程组的基础解系由一个线性无关的解组成，$β_{1}$是方程组$Ax = 0$的基础解系，则$Ax = 0$的通解为：

$$
x = k_{1} \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) ,  k_{1}为任意常数。
$$

(ii)若$r(A) = 1$，则$A$的三个行向量成比例，因第 1 行元素$(a, b, c)$不全为零，不妨设$a \\neq 0$，则$Ax = 0$的同解方程组为：$ax_{1} + bx_{2} + cx_{3} = 0$，系数矩阵的秩为 1，故基础解系由 2 个线性无关解向量组成，选$x_{2}, x_{3}$为自由未知量，分别取$x_{2} = 1, x_{3} = 0$或$x_{2} = 0, x_{3} = 1$，方程组的基础解系为

$$
ξ_{1} = \\left( \\begin{array}{c}
−\\frac{b}{a} \\\\
1 \\\\
0 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
−\\frac{c}{a} \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$

则其通解为$x = k_{1}ξ_{1} + k_{2}ξ_{2}$，$k_{1}, k_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:13:33', 9, 'Mogullzr', '2026-01-29 14:13:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1747');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1747');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1748, '2005年考研数学卷1第22题', '简单', '考研数学2005年卷1真题', '（本题满分 9 分）设二维随机变量$(X, Y)$的概率密度为$f(x, y) = \\begin{cases} 1 & 0 < x < 1, 0 < y < 2x \\\\ 0 & 其他. \\end{cases}$求：(1)$(X, Y)$的边缘概率密度$f_{X}(x), f_{Y}(y)$；(2)$Z = 2X - Y$的概率密度$f_{Z}(z)$．', '[]', '
(1)$f_{X}(x) = \\begin{cases} 2x & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}$
$f_{Y}(y) = \\begin{cases} 1 - \\frac{y}{2} & 0 < y < 2 \\\\ 0 & 其他 \\end{cases}$
(2)$f_{Z}(z) = \\begin{cases} 1 - \\frac{z}{2} & 0 < z < 2 \\\\ 0 & 其他 \\end{cases}$
', '
(1) 边缘概率密度计算

$$
f_{X}(x) = \\int_{−∞}^{∞} f(x, y) dy.
$$

(2)$Z = 2X - Y$的概率密度计算
采用累积分布函数（CDF）方法。首先计算


$$
F_{Z}(z) = P(Z ≤ z) = P(2X - Y ≤ z).
$$

由于$f(x, y)$在区域$0 < x < 1,  0 < y < 2x$上为 1，其余为 0，可得：
当$z < 0$时，$F_{Z}(z) = 0$；当$z > 2$时，$F_{Z}(z) = 1$。
对于$0 < z < 2$，计算概率$P(2X - Y ≤ z)$在区域


$$
0 < x < 1,  0 < y < 2x,  y ≥ 2x - z
$$

上的积分。将$x$分为两个区间：

$$
\\int_{0}^{z/2} \\int_{0}^{2x} 1 dy dx = \\int_{0}^{z/2} 2x dx = \\frac{z^{2}}{4}.
$$

因此，


$$
F_{Z}(z) = \\frac{z^{2}}{4} + (z - \\frac{z^{2}}{2}) = z - \\frac{z^{2}}{4}.
$$

对$F_{Z}(z)$求导，得到


$$
f_{Z}(z) = \\frac{d}{dz} (z - \\frac{z^{2}}{4}) = 1 - \\frac{z}{2},  0 < z < 2,
$$

其他情况下$f_{Z}(z) = 0$。
验证：


$$
\\int_{0}^{2} (1 - \\frac{z}{2}) dz = 1,
$$

满足概率密度函数的性质。
', 9, 'Mogullzr', '2026-01-29 14:13:33', 9, 'Mogullzr', '2026-01-29 14:13:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1748');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1748');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1064', '1748');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1749, '2005年考研数学卷1第23题', '简单', '考研数学2005年卷1真题', '（本题满分 9 分）设$X_{1}, X_{2}, ⋯  , X_{n}(n > 2)$为来自总体$N(0, 1)$的简单随机样本，$\\overline{X}$为样本均值，
记$Y_{i} = X_{i} - \\overline{X}$，$i = 1, 2, ⋯  , n$．求：(1)$Y_{i}$的方差$DY_{i}$，$i = 1, 2, ⋯  , n$；(2)$Y_{1}$与$Y_{n}$的协方差$Cov(Y_{1}, Y_{n})$．', '[]', '
(1)$DY_{i} = 1 - \\frac{1}{n}$
(2)$Cov(Y_{1}, Y_{n}) = −\\frac{1}{n}$
', '
(1) 由于$X_{1}, X_{2}, ⋯  , X_{n}$独立同分布于$N(0, 1)$，有$EX_{i} = 0$，$DX_{i} = 1$。样本均值$\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，则$E\\overline{X} = 0$，$D\\overline{X} = \\frac{1}{n}$。
计算$Y_{i} = X_{i} - \\overline{X}$的方差：


$$
DY_{i} = D(X_{i} - \\overline{X}) = DX_{i} + D\\overline{X} - 2 Cov(X_{i}, \\overline{X})
$$

其中$Cov(X_{i}, \\overline{X}) = Cov (X_{i}, \\frac{1}{n} \\sum_{j=1}^{n} X_{j}) = \\frac{1}{n} \\sum_{j=1}^{n} Cov(X_{i}, X_{j})$。
由于$X_{i}$独立，当$i = j$时$Cov(X_{i}, X_{j}) = DX_{i} = 1$，当$i \\neq j$时$Cov(X_{i}, X_{j}) = 0$，故$Cov(X_{i}, \\overline{X}) = \\frac{1}{n}$。
代入得：


$$
DY_{i} = 1 + \\frac{1}{n} - 2 ⋅ \\frac{1}{n} = 1 - \\frac{1}{n}
$$

因此，$DY_{i} = 1 - \\frac{1}{n}$。
(2) 计算$Y_{1}$与$Y_{n}$的协方差：


$$
Y_{1} = X_{1} - \\overline{X},  Y_{n} = X_{n} - \\overline{X}
$$



$$
Cov(Y_{1}, Y_{n}) = Cov(X_{1} - \\overline{X}, X_{n} - \\overline{X}) = Cov(X_{1}, X_{n}) - Cov(X_{1}, \\overline{X}) - Cov(\\overline{X}, X_{n}) + Cov(\\overline{X}, \\overline{X})
$$

由于$X_{1}$与$X_{n}$独立，$Cov(X_{1}, X_{n}) = 0$。
已知$Cov(X_{1}, \\overline{X}) = \\frac{1}{n}$，$Cov(\\overline{X}, X_{n}) = \\frac{1}{n}$，$Cov(\\overline{X}, \\overline{X}) = D\\overline{X} = \\frac{1}{n}$。
代入得：


$$
Cov(Y_{1}, Y_{n}) = 0 - \\frac{1}{n} - \\frac{1}{n} + \\frac{1}{n} = −\\frac{1}{n}
$$

因此，$Cov(Y_{1}, Y_{n}) = −\\frac{1}{n}$。
', 9, 'Mogullzr', '2026-01-29 14:13:33', 9, 'Mogullzr', '2026-01-29 14:13:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1749');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1749');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1749');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1750, '2005年考研数学卷2第1题', '简单', '考研数学2005年卷2真题', '设$y = (1 + \\sin x)x$，则$dy​_{x=π} =$______．', '[]', '
$−π dx$
', '
两边取对数得$\\ln y = x \\ln(1 + \\sin x)$。对$x$求导得

$$
\\frac{1}{y} ⋅ y^{′} = \\ln(1 + \\sin x) + \\frac{x \\cos x}{1 + \\sin x},
$$

于是导函数

$$
y^{′} = (1 + \\sin x)x ⋅  \\lbrack \\ln(1 + \\sin x) + x ⋅ \\frac{\\cos x}{1 + \\sin x} \\rbrack  .
$$

故$dy∣_{x=π} = y^{′}(π)dx = −πdx$。
', 9, 'Mogullzr', '2026-01-29 14:13:35', 9, 'Mogullzr', '2026-01-29 14:13:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1750');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1750');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1750');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1751, '2005年考研数学卷2第2题', '简单', '考研数学2005年卷2真题', '曲线$y = \\frac{(1+x)3/2}{\\sqrt{x}}$的斜渐近线方程为 ______．', '[]', '
$y = x + \\frac{3}{2}$
', '
为了求曲线$y = \\frac{(1+x)3/2}{\\sqrt{x}}$的斜渐近线，考虑$x → ∞$时的行为。斜渐近线的一般形式为$y = mx + b$，其中$m = \\lim_{x→∞} \\frac{y}{x}$，$b = \\lim_{x→∞}(y - mx)$。
首先，计算$m$：


$$
\\begin{array}{cc}
m & = \\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\frac{\\frac{(1+x)3/2}{\\sqrt{x}}}{x} \\\\
 & = \\lim_{x→∞} \\frac{(1 + x)3/2}{x^{3/2}} = \\lim_{x→∞} (\\frac{1 + x}{x})^{3/2} \\\\
 & = \\lim_{x→∞} (1 + \\frac{1}{x})^{3/2} = 1 \\\\
\\end{array}
$$

然后，计算$b$：


$$
b = \\lim_{x→∞}(y - mx) = \\lim_{x→∞} (\\frac{(1 + x)3/2}{\\sqrt{x}} - x)
$$

将$y$改写为$y = x (1 + \\frac{1}{x})^{3/2}$，则


$$
b = \\lim_{x→∞} x ((1 + \\frac{1}{x})^{3/2} - 1)
$$

令$u = \\frac{1}{x}$，当$x → ∞$时$u → 0^{+}$，则


$$
b = \\lim_{u→0} \\frac{(1 + u)3/2 - 1}{u}
$$

该极限是函数$f(u) = (1 + u)3/2$在$u = 0$处的导数，即


$$
f^{′}(u) = \\frac{3}{2}(1 + u)1/2,  f^{′}(0) = \\frac{3}{2}
$$

因此，$b = \\frac{3}{2}$。
故斜渐近线方程为$y = x + \\frac{3}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:35', 9, 'Mogullzr', '2026-01-29 14:13:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1751');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1751');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1751');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1752, '2005年考研数学卷2第3题', '简单', '考研数学2005年卷2真题', '
$$
\\int_{0}^{1} \\frac{xdx}{(2 - x^{2})\\sqrt{1 - x^{2}}} =
$$
', '[]', '$\\frac{π}{4}$
', '令$x = \\sin θ$，则$dx = \\cos θ dθ$，且当$x = 0$时$θ = 0$，当$x = 1$时$θ = \\frac{π}{2}$。代入积分得：

$$
\\int_{0}^{1} \\frac{x dx}{(2 - x^{2})\\sqrt{1 - x^{2}}} = \\int_{0}^{π/2} \\frac{\\sin θ ⋅ \\cos θ dθ}{(2 - \\sin^{2} θ) ⋅ \\cos θ} = \\int_{0}^{π/2} \\frac{\\sin θ dθ}{2 - \\sin^{2} θ}.
$$

再令$u = \\cos θ$，则$du = − \\sin θ dθ$，即$\\sin θ dθ = −du$，且当$θ = 0$时$u = 1$，当$θ = \\frac{π}{2}$时$u = 0$。代入得：

$$
\\int_{0}^{π/2} \\frac{\\sin θ dθ}{2 - \\sin^{2} θ} = \\int_{1}^{0} \\frac{−du}{2 - (1 - u^{2})} = \\int_{1}^{0} \\frac{−du}{1 + u^{2}} = \\int_{0}^{1} \\frac{du}{1 + u^{2}}.
$$

计算该积分：

$$
\\int_{0}^{1} \\frac{du}{1 + u^{2}} = arctan u​_{0}^{1} = arctan 1 - arctan 0 = \\frac{π}{4} - 0 = \\frac{π}{4}.
$$

因此，原积分的值为$\\frac{π}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:13:35', 9, 'Mogullzr', '2026-01-29 14:13:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1752');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1752');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1752');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1753, '2005年考研数学卷2第4题', '', '考研数学2005年卷2真题', '/problems/other/1728', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1754, '2005年考研数学卷2第5题', '简单', '考研数学2005年卷2真题', '当$x → 0$时，$α(x) = kx^{2}$与$β(x) = \\sqrt{1 + x arcsin x} - \\sqrt{\\cos x}$是等价无穷小，
则$k =$______．', '[]', '$\\frac{3}{4}$
', '由于$α(x) = kx^{2}$与$β(x) = \\sqrt{1 + x arcsin x} - \\sqrt{\\cos x}$是等价无穷小，当$x → 0$时，有：

$$
\\lim_{x→0} \\frac{β(x)}{α(x)} = 1
$$

即：

$$
\\lim_{x→0} \\frac{\\sqrt{1 + x arcsin x} - \\sqrt{\\cos x}}{kx^{2}} = 1
$$

令：

$$
L = \\lim_{x→0} \\frac{\\sqrt{1 + x arcsin x} - \\sqrt{\\cos x}}{x^{2}}
$$

则$k = L$。为计算$L$，对分子有理化：

$$
\\sqrt{1 + x arcsin x} - \\sqrt{\\cos x} = \\frac{(1 + x arcsin x) - \\cos x}{\\sqrt{1 + x arcsin x} + \\sqrt{\\cos x}}
$$

代入极限：

$$
L = \\lim_{x→0} \\frac{1 + x arcsin x - \\cos x}{x^{2} (\\sqrt{1 + x arcsin x} + \\sqrt{\\cos x})}
$$

当$x → 0$时，分母中$\\sqrt{1 + x arcsin x} + \\sqrt{\\cos x} → 2$，因此：

$$
L = \\frac{1}{2} \\lim_{x→0} \\frac{1 + x arcsin x - \\cos x}{x^{2}}
$$

令：

$$
M = \\lim_{x→0} \\frac{1 + x arcsin x - \\cos x}{x^{2}}
$$

使用泰勒展开计算$M$。当$x → 0$时：

$$
arcsin x = x + \\frac{x^{3}}{6} + O(x^{5}),  \\cos x = 1 - \\frac{x^{2}}{2} + \\frac{x^{4}}{24} + O(x^{6})
$$

于是：

$$
x arcsin x = x^{2} + \\frac{x^{4}}{6} + O(x^{6})
$$

代入分子：

$$
\\begin{array}{cc}
1 + x arcsin x - \\cos x & = 1 + (x^{2} + \\frac{x^{4}}{6}) - (1 - \\frac{x^{2}}{2} + \\frac{x^{4}}{24}) + O(x^{6}) \\\\
 & = \\frac{3}{2}x^{2} + \\frac{1}{8}x^{4} + O(x^{6}) \\\\
\\end{array}
$$

因此：

$$
\\frac{1 + x arcsin x - \\cos x}{x^{2}} = \\frac{3}{2} + \\frac{1}{8}x^{2} + O(x^{4}) → \\frac{3}{2} (x → 0)
$$

所以$M = \\frac{3}{2}$，代入得：

$$
L = \\frac{1}{2} × \\frac{3}{2} = \\frac{3}{4}
$$

故$k = \\frac{3}{4}$。
验证：使用洛必达法则计算$M$，结果同样为$\\frac{3}{2}$，确认无误。
', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1754');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1754');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1754');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1755, '2005年考研数学卷2第6题', '', '考研数学2005年卷2真题', '/problems/other/1731', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1756, '2005年考研数学卷2第7题', '', '考研数学2005年卷2真题', '/problems/other/1733', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1757, '2005年考研数学卷2第8题', '', '考研数学2005年卷2真题', '/problems/other/1734', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1758, '2005年考研数学卷2第9题', '简单', '考研数学2005年卷2真题', '设函数$y = y(x)$由参数方程$\\begin{cases} x = t^{2} + 2t \\\\ y = \\ln(1 + t) \\end{cases}$确定，则曲线$y = y(x)$在$x = 3$处的法线与$x$轴交点的横坐标是', '[''$\\\\frac{1}{8} \\\\ln 2 + 3$．'', ''$−\\\\frac{1}{8} \\\\ln 2 + 3$．'', ''$−8 \\\\ln 2 + 3$．'', ''$8 \\\\ln 2 + 3$．'']', "['A']", '首先，由参数方程$x = t^{2} + 2t$和$y = \\ln(1 + t)$确定曲线。当$x = 3$时，解方程$t^{2} + 2t = 3$，得$t^{2} + 2t - 3 = 0$，解得$t = 1$或$t = −3$。但$t = −3$时$y = \\ln(1 - 3) = \\ln(−2)$无意义，故取$t = 1$，对应点$(3, \\ln 2)$。求导数$\\frac{dy}{dx}$：
$\\frac{dy}{dt} = \\frac{1}{1+t}$，$\\frac{dx}{dt} = 2t + 2$，
所以$\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{1/(1+t)}{2t+2} = \\frac{1}{2(1+t)2}$。
在$t = 1$时，$\\frac{dy}{dx} = \\frac{1}{2(1+1)2} = \\frac{1}{8}$，即切线斜率为$\\frac{1}{8}$，故法线斜率为$−8$。法线方程为$y - \\ln 2 = −8(x - 3)$。
求与$x$轴交点，令$y = 0$：
$0 - \\ln 2 = −8(x - 3)$，
即$− \\ln 2 = −8(x - 3)$，
解得$x - 3 = \\frac{\\ln 2}{8}$，
所以$x = 3 + \\frac{1}{8} \\ln 2$，
对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1758');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1758');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1758');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1759, '2005年考研数学卷2第10题', '简单', '考研数学2005年卷2真题', '设区域$D = \\{(x, y)​x^{2} + y^{2} ≤ 4, x ≥ 0, y ≥ 0\\}$，$f(x)$为$D$上的正值连续函数，$a, b$为常数，则$\\iint_{D} \\frac{a\\sqrt{f(x)}+b\\sqrt{f(y)}}{\\sqrt{f(x)}+\\sqrt{f(y)}}dσ =$', '[''$abπ$．'', ''$\\\\frac{ab}{2}π$．'', ''$(a + b)π$．'', ''$\\\\frac{a+b}{2}π$．'']', "['D']", '
考虑积分$I = \\iint_{D} \\frac{a\\sqrt{f(x)}+b\\sqrt{f(y)}}{\\sqrt{f(x)}+\\sqrt{f(y)}}dσ$。由于区域$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 4, x ≥ 0, y ≥ 0\\}$关于直线$y = x$对称，且$f$为正值连续函数，交换$x$和$y$得

$$
J = \\iint_{D} \\frac{b\\sqrt{f(x)} + a\\sqrt{f(y)}}{\\sqrt{f(x)} + \\sqrt{f(y)}}dσ = I.
$$
计算$I + J$:

$$
\\begin{array}{cc}
I + J & = \\iint_{D} \\frac{a\\sqrt{f(x)} + b\\sqrt{f(y)} + b\\sqrt{f(x)} + a\\sqrt{f(y)}}{\\sqrt{f(x)} + \\sqrt{f(y)}} dσ \\\\
 & = \\iint_{D} \\frac{(a + b)(\\sqrt{f(x)} + \\sqrt{f(y)})}{\\sqrt{f(x)} + \\sqrt{f(y)}} dσ \\\\
\\end{array}
$$
区域$D$是半径为 2 的四分之一圆，面积为$π$，故

$$
I + J = (a + b)π.
$$
由于$I = J$，有$2I = (a + b)π$，所以

$$
I = \\frac{a + b}{2}π.
$$
因此，正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:13:36', 9, 'Mogullzr', '2026-01-29 14:13:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1759');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1759');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1760, '2005年考研数学卷2第11题', '', '考研数学2005年卷2真题', '/problems/other/1735', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:37', 9, 'Mogullzr', '2026-01-29 14:13:37', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1761, '2005年考研数学卷2第12题', '简单', '考研数学2005年卷2真题', '设函数$f(x) = \\frac{1}{e^{\\frac{x}{x-1}}-1}$，则', '[''$x = 0$,$x = 1$都是$f(x)$的第一类间断点．'', ''$x = 0$,$x = 1$都是$f(x)$的第二类间断点．'', ''$x = 0$是$f(x)$的第一类间断点，$x = 1$是$f(x)$的第二类间断点．'', ''$x = 0$是$f(x)$的第二类间断点，$x = 1$是$f(x)$的第一类间断点．'']', "['D']", '
函数

$$
f(x) = \\frac{1}{e^{\\frac{x}{x-1}} - 1}
$$
在$x = 0$和$x = 1$处无定义，因此这两点为间断点。对于$x = 1$，计算左右极限：当$x → 1^{+}$时，$\\frac{x}{x-1} → +∞$，$e^{\\frac{x}{x-1}} → +∞$，故$f(x) → 0$；当$x → 1^{-}$时，$\\frac{x}{x-1} → −∞$，$e^{\\frac{x}{x-1}} → 0$，故$f(x) → −1$。左右极限均存在但不相等，因此$x = 1$为第一类间断点。对于$x = 0$，计算左右极限：当$x → 0^{+}$时，$\\frac{x}{x-1} → 0^{-}$，$e^{\\frac{x}{x-1}} → 1^{-}$，故$f(x) → −∞$；当$x → 0^{-}$时，$\\frac{x}{x-1} → 0^{+}$，$e^{\\frac{x}{x-1}} → 1^{+}$，故$f(x) → +∞$。左右极限均不存在（趋于无穷），因此$x = 0$为第二类间断点。综上，选项 D 正确。', 9, 'Mogullzr', '2026-01-29 14:13:37', 9, 'Mogullzr', '2026-01-29 14:13:37', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1761');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1761');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1761');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1762, '2005年考研数学卷2第13题', '', '考研数学2005年卷2真题', '/problems/other/1737', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:37', 9, 'Mogullzr', '2026-01-29 14:13:37', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1763, '2005年考研数学卷2第14题', '', '考研数学2005年卷2真题', '/problems/other/1738', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:37', 9, 'Mogullzr', '2026-01-29 14:13:37', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1764, '2005年考研数学卷2第15题', '简单', '考研数学2005年卷2真题', '（本题满分 11 分）设函数$f(x)$连续，且$f(0) \\neq 0$，
求极限
$$
\\lim_{x→0} \\frac{\\int_{0}^{x}(x - t)f(t)dt}{x \\int_{0}^{x} f(x - t)dt}
$$
', '[]', '$\\frac{1}{2}$
', '给定极限$\\lim_{x→0} \\frac{\\int_{0}^{x}(x-t)f(t)dt}{x \\int_{0}^{x} f(x-t)dt}$，其中$f(x)$连续且$f(0) \\neq 0$。
首先，简化分母中的积分：令$u = x - t$，则当$t = 0$时$u = x$，当$t = x$时$u = 0$，且$dt = −du$，因此

$$
\\int_{0}^{x} f(x - t)dt = \\int_{x}^{0} f(u)(−du) = \\int_{0}^{x} f(u)du.
$$

所以分母变为$x \\int_{0}^{x} f(u)du$.
分子为$\\int_{0}^{x}(x - t)f(t)dt$，可写为

$$
\\int_{0}^{x}(x - t)f(t)dt = x \\int_{0}^{x} f(t)dt - \\int_{0}^{x} tf(t)dt.
$$

因此极限化为

$$
\\lim_{x→0} \\frac{x \\int_{0}^{x} f(t)dt - \\int_{0}^{x} tf(t)dt}{x \\int_{0}^{x} f(t)dt} = \\lim_{x→0} (1 - \\frac{\\int_{0}^{x} tf(t)dt}{x \\int_{0}^{x} f(t)dt}) .
$$

令$L = \\lim_{x→0} \\frac{\\int_{0}^{x} tf(t)dt}{x \\int_{0}^{x} f(t)dt}$，该极限为$\\frac{0}{0}$型，应用洛必达法则。令$F(x) = \\int_{0}^{x} tf(t)dt$，则$F^{′}(x) = xf(x)$；令$G(x) = x \\int_{0}^{x} f(t)dt$，则$G^{′}(x) = \\int_{0}^{x} f(t)dt + xf(x)$。于是

$$
L = \\lim_{x→0} \\frac{F^{′}(x)}{G^{′}(x)} = \\lim_{x→0} \\frac{xf(x)}{\\int_{0}^{x} f(t)dt + xf(x)}.
$$

由于$f$连续且$f(0) \\neq 0$，有$\\int_{0}^{x} f(t)dt = f(0)x + o(x)$和$xf(x) = f(0)x + o(x)$，代入得

$$
L = \\lim_{x→0} \\frac{f(0)x + o(x)}{2f(0)x + o(x)} = \\frac{f(0)}{2f(0)} = \\frac{1}{2}.
$$

因此原极限为

$$
1 - L = 1 - \\frac{1}{2} = \\frac{1}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:37', 9, 'Mogullzr', '2026-01-29 14:13:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1764');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1764');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1764');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1765, '2005年考研数学卷2第16题', '简单', '考研数学2005年卷2真题', '（本题满分 11 分）如图，$C_{1}$和$C_{2}$分别是$y = \\frac{1}{2}(1 + e^{x})$和$y = e^{x}$的图象，
过点(0,1)的曲线$C_{3}$是一单调增函数的图象．
过$C_{2}$上任一点$M(x, y)$分别作垂直于$x$轴和$y$轴的直线$l_{x}$和$l_{y}$．
记$C_{1}$,$C_{2}$与$l_{x}$所围图形的面积为$S_{1}(x)$；$C_{2}$,$C_{3}$与$l_{y}$所围图形的面积为$S_{2}(y)$．
如果总有$S_{1}(x) = S_{2}(y)$，求曲线$C_{3}$的方程$x = ϕ(y)$．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/37ff908b4bcf49b9b350344b9d97578c.jpg)
', '[]', '


$$
x = \\ln y + \\frac{1}{2} - \\frac{1}{2y}
$$

', '
由题意，曲线$C_{1}$的方程为$y = \\frac{1}{2}(1 + e^{x})$，曲线$C_{2}$的方程为$y = e^{x}$。过点$M(x, y)$在$C_{2}$上作垂直于$x$轴的直线$l_{x}$和垂直于$y$轴的直线$l_{y}$。
面积$S_{1}(x)$是$C_{1}$、$C_{2}$与$l_{x}$所围图形的面积，即从$x = 0$到$x$的$C_{2}$与$C_{1}$之间的区域面积：


$$
S_{1}(x) = \\int_{0}^{x}  \\lbrack e^{t} - \\frac{1}{2}(1 + e^{t}) \\rbrack  dt = \\int_{0}^{x} \\frac{1}{2}(e^{t} - 1)dt = \\frac{1}{2}  \\lbrack e^{t} - t \\rbrack _{0}^{x} = \\frac{1}{2}(e^{x} - x - 1)
$$

面积$S_{2}(y)$是$C_{2}$、$C_{3}$与$l_{y}$所围图形的面积，即从$y = 1$到$y$的$C_{3}$与$C_{2}$之间的区域面积。设$C_{3}$的方程为$x = ϕ(y)$，则：


$$
S_{2}(y) = \\int_{1}^{y}  \\lbrack ϕ(u) - \\ln u \\rbrack  du
$$

由条件$S_{1}(x) = S_{2}(y)$且$y = e^{x}$，代入得：


$$
\\frac{1}{2}(e^{x} - x - 1) = \\int_{1}^{e^{x}}  \\lbrack ϕ(u) - \\ln u \\rbrack  du
$$

令$t = e^{x}$，则$x = \\ln t$，对于$t > 1$：


$$
\\frac{1}{2}(t - \\ln t - 1) = \\int_{1}^{t}  \\lbrack ϕ(u) - \\ln u \\rbrack  du
$$

两边对$t$求导：


$$
\\frac{d}{dt}  \\lbrack \\frac{1}{2}(t - \\ln t - 1) \\rbrack  = \\frac{1}{2} (1 - \\frac{1}{t})
$$



$$
\\frac{d}{dt} \\int_{1}^{t}  \\lbrack ϕ(u) - \\ln u \\rbrack  du = ϕ(t) - \\ln t
$$

所以：


$$
ϕ(t) - \\ln t = \\frac{1}{2} (1 - \\frac{1}{t})
$$

解得：


$$
ϕ(t) = \\ln t + \\frac{1}{2} - \\frac{1}{2t}
$$

因此，曲线$C_{3}$的方程为$x = ϕ(y) = \\ln y + \\frac{1}{2} - \\frac{1}{2y}$。
验证：当$y = 1$时，$x = \\ln 1 + \\frac{1}{2} - \\frac{1}{2} = 0$，过点$(0, 1)$，且$ϕ^{′}(y) = \\frac{1}{y} + \\frac{1}{2y^{2}} > 0$，为单调增函数，符合题意。
', 9, 'Mogullzr', '2026-01-29 14:13:38', 9, 'Mogullzr', '2026-01-29 14:13:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1765');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1765');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1765');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1766, '2005年考研数学卷2第17题', '', '考研数学2005年卷2真题', '/problems/other/1743', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:39', 9, 'Mogullzr', '2026-01-29 14:13:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1767, '2005年考研数学卷2第18题', '简单', '考研数学2005年卷2真题', '（本题满分 12 分）用变量代换$x = \\cos t$（$0 < t < π$）化简微分方程$(1 - x^{2})y^{′′} - xy^{′} + y = 0$，
并求其满足$y​_{x=0} = 1$,$y^{′}​_{x=0} = 2$的特解．', '[]', '
$y(x) = 2x + \\sqrt{1 - x^{2}}$
', '
给定微分方程$(1 - x^{2})y^{′′} - xy^{′} + y = 0$，使用变量代换$x = \\cos t$（其中$0 < t < π$）。
首先，计算$y^{′}$和$y^{′′}$关于$t$的表达式。
由$x = \\cos t$，得$\\frac{dx}{dt} = − \\sin t$。
于是，


$$
y^{′} = \\frac{dy}{dx} = \\frac{dy}{dt} ⋅ \\frac{dt}{dx} = −\\frac{1}{\\sin t}\\frac{dy}{dt}
$$

令$y˙​ = \\frac{dy}{dt}$，则$y^{′} = −\\frac{1}{\\sin t}y˙​$。
进一步求$y^{′′}$：


$$
\\begin{array}{cc}
y^{′′} & = \\frac{d}{dx} (y^{′}) \\\\
 & = \\frac{d}{dt} (−\\frac{1}{\\sin t}y˙​) ⋅ \\frac{dt}{dx} \\\\
 & = (\\frac{\\cos t}{\\sin^{2} t}y˙​ - \\frac{1}{\\sin t}y¨​) ⋅ (−\\frac{1}{\\sin t}) \\\\
\\end{array}
$$

其中$y¨​ = \\frac{d^{2}y}{dt^{2}}$。
代入原方程：


$$
\\begin{array}{cc}
(1 - x^{2})y^{′′} - xy^{′} + y & = \\sin^{2} t ⋅ (\\frac{1}{\\sin^{2} t}y¨​ - \\frac{\\cos t}{\\sin^{3} t}y˙​) - \\cos t ⋅ (−\\frac{1}{\\sin t}y˙​) + y \\\\
 & = y¨​ - \\frac{\\cos t}{\\sin t}y˙​ + \\frac{\\cos t}{\\sin t}y˙​ + y \\\\
 & = y¨​ + y \\\\
\\end{array}
$$

因此，化简后的微分方程为$y¨​ + y = 0$。
该方程的通解为$y(t) = A \\cos t + B \\sin t$，其中$A$和$B$为常数。
由初始条件$y∣_{x=0} = 1$和$y^{′}∣_{x=0} = 2$，且$x = \\cos t$，当$x = 0$时$t = \\frac{π}{2}$。
在$t = \\frac{π}{2}$处：


$$
y(t) = A \\cos \\frac{π}{2} + B \\sin \\frac{π}{2} = B = 1
$$

所以$B = 1$。
接下来，求$y^{′}$关于$x$的表达式：


$$
y^{′} = −\\frac{1}{\\sin t}y˙​ = −\\frac{1}{\\sin t}(−A \\sin t + B \\cos t) = A - B cot t
$$

在$t = \\frac{π}{2}$处，$cot \\frac{π}{2} = 0$，故


$$
y^{′}∣_{x=0} = A = 2
$$

所以$A = 2$。
因此，特解为$y(t) = 2 \\cos t + \\sin t$。
代回$x = \\cos t$，且$\\sin t = \\sqrt{1 - \\cos^{2} t} = \\sqrt{1 - x^{2}}$（因为$0 < t < π$，$\\sin t > 0$），得


$$
y(x) = 2x + \\sqrt{1 - x^{2}}
$$

这就是满足初始条件的特解。
', 9, 'Mogullzr', '2026-01-29 14:13:39', 9, 'Mogullzr', '2026-01-29 14:13:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1767');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1767');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1767');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1768, '2005年考研数学卷2第19题', '', '考研数学2005年卷2真题', '/problems/other/1744', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:39', 9, 'Mogullzr', '2026-01-29 14:13:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1769, '2005年考研数学卷2第20题', '简单', '考研数学2005年卷2真题', '（本题满分 10 分）已知函数$z = f(x, y)$的全微分$dz = 2xdx - 2ydy$，并且$f(1, 1) = 2$．
求$f(x, y)$在椭圆域$D = \\{(x, y)​x^{2} + \\frac{y^{2}}{4} ≤ 1\\}$上的最大值和最小值．', '[]', '
最大值：3，最小值：-2
', '
由全微分$dz = 2x dx - 2y dy$可得偏导数$\\frac{∂f}{∂x} = 2x$，$\\frac{∂f}{∂y} = −2y$。积分得$f(x, y) = x^{2} + g(y)$，代入偏导数有$g^{′}(y) = −2y$，积分得$g(y) = −y^{2} + C$，故$f(x, y) = x^{2} - y^{2} + C$。利用条件$f(1, 1) = 2$得$C = 2$，因此$f(x, y) = x^{2} - y^{2} + 2$。
在椭圆域$D = \\{(x, y)​x^{2} + \\frac{y^{2}}{4} ≤ 1\\}$上求最值。先求内部驻点：令$f_{x} = 2x = 0$，$f_{y} = −2y = 0$，得驻点$(0, 0)$，函数值$f(0, 0) = 2$。再考虑边界$x^{2} + \\frac{y^{2}}{4} = 1$，使用拉格朗日乘数法，设$L(x, y, λ) = x^{2} - y^{2} + 2 - λ (x^{2} + \\frac{y^{2}}{4} - 1)$。令偏导为零：


$$
\\frac{∂L}{∂x} = 2x - 2λx = 0,  \\frac{∂L}{∂y} = −2y - \\frac{λy}{2} = 0,  \\frac{∂L}{∂λ} = x^{2} + \\frac{y^{2}}{4} - 1 = 0.
$$

由第一式得$x = 0$或$λ = 1$。若$x = 0$，代入约束得$y = ±2$，点$(0, 2)$、$(0, −2)$，函数值$f = −2$。若$λ = 1$，代入第二式得$y = 0$，代入约束得$x = ±1$，点$(1, 0)$、$(−1, 0)$，函数值$f = 3$。
比较所有候选点函数值：$f(0, 0) = 2$，$f(0, ±2) = −2$，$f(±1, 0) = 3$。故在椭圆域$D$上，最大值为 3，最小值为 -2。
', 9, 'Mogullzr', '2026-01-29 14:13:39', 9, 'Mogullzr', '2026-01-29 14:13:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1769');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1769');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1769');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1770, '2005年考研数学卷2第21题', '简单', '考研数学2005年卷2真题', '（本题满分 9 分）计算二重积分$\\iint_{D} ​x^{2} + y^{2} - 1​ dσ$，
其中$D = \\{(x, y)∣0 ≤ x ≤ 1, 0 ≤ y ≤ 1\\}$', '[]', '$\\frac{π}{4} - \\frac{1}{3}$
', '计算二重积分$\\iint_{D} ​x^{2} + y^{2} - 1​  dσ$，其中$D =  \\lbrack 0, 1 \\rbrack  ×  \\lbrack 0, 1 \\rbrack$。由于被积函数有绝对值，需将区域$D$分为两部分：$D_{1} = \\{(x, y) ∈ D ∣ x^{2} + y^{2} ≤ 1\\}$（四分之一单位圆盘）和$D_{2} = \\{(x, y) ∈ D ∣ x^{2} + y^{2} ≥ 1\\}$（正方形减去四分之一圆盘）。在$D_{1}$上，$x^{2} + y^{2} - 1 ≤ 0$，故$​x^{2} + y^{2} - 1​ = 1 - x^{2} - y^{2}$；在$D_{2}$上，$x^{2} + y^{2} - 1 ≥ 0$，故$​x^{2} + y^{2} - 1​ = x^{2} + y^{2} - 1$。积分化为：

$$
\\iint_{D} ​x^{2} + y^{2} - 1​  dσ = \\iint_{D_{1}}(1 - x^{2} - y^{2}) dσ + \\iint_{D_{2}}(x^{2} + y^{2} - 1) dσ.
$$

首先计算$\\iint_{D_{1}}(1 - x^{2} - y^{2}) dσ$。使用极坐标变换，令$x = r \\cos θ$,$y = r \\sin θ$，则$dσ = r dr dθ$，积分区域为$r ∈  \\lbrack 0, 1 \\rbrack$,$θ ∈  \\lbrack 0, π/2 \\rbrack$。被积函数为$1 - r^{2}$，故：

$$
\\iint_{D_{1}}(1 - x^{2} - y^{2}) dσ = \\int_{0}^{π/2} \\int_{0}^{1}(1 - r^{2})r dr dθ.
$$

先对$r$积分：

$$
\\int_{0}^{1}(1 - r^{2})r dr = \\int_{0}^{1}(r - r^{3}) dr =  \\lbrack \\frac{r^{2}}{2} - \\frac{r^{4}}{4} \\rbrack _{0}^{1} = \\frac{1}{2} - \\frac{1}{4} = \\frac{1}{4}.
$$

再对$θ$积分：

$$
\\int_{0}^{π/2} \\frac{1}{4} dθ = \\frac{1}{4} ⋅ \\frac{π}{2} = \\frac{π}{8}.
$$

所以，$\\iint_{D_{1}}(1 - x^{2} - y^{2}) dσ = \\frac{π}{8}$.
其次计算$\\iint_{D_{2}}(x^{2} + y^{2} - 1) dσ$。利用积分可加性：

$$
\\iint_{D_{2}}(x^{2} + y^{2} - 1) dσ = \\iint_{D}(x^{2} + y^{2} - 1) dσ - \\iint_{D_{1}}(x^{2} + y^{2} - 1) dσ.
$$

计算$\\iint_{D}(x^{2} + y^{2} - 1) dσ$：

$$
\\iint_{D} x^{2} dσ = \\int_{0}^{1} \\int_{0}^{1} x^{2} dy dx = \\int_{0}^{1} x^{2} dx ⋅ \\int_{0}^{1} dy = \\frac{1}{3} ⋅ 1 = \\frac{1}{3},
$$



$$
\\iint_{D} y^{2} dσ = \\int_{0}^{1} \\int_{0}^{1} y^{2} dx dy = \\int_{0}^{1} y^{2} dy ⋅ \\int_{0}^{1} dx = \\frac{1}{3} ⋅ 1 = \\frac{1}{3},
$$



$$
\\iint_{D} 1 dσ = 1,
$$

故：

$$
\\iint_{D}(x^{2} + y^{2} - 1) dσ = \\frac{1}{3} + \\frac{1}{3} - 1 = −\\frac{1}{3}.
$$

计算$\\iint_{D_{1}}(x^{2} + y^{2} - 1) dσ$，使用极坐标：

$$
\\iint_{D_{1}}(x^{2} + y^{2} - 1) dσ = \\int_{0}^{π/2} \\int_{0}^{1}(r^{2} - 1)r dr dθ.
$$

先对$r$积分：

$$
\\int_{0}^{1}(r^{2} - 1)r dr = \\int_{0}^{1}(r^{3} - r) dr =  \\lbrack \\frac{r^{4}}{4} - \\frac{r^{2}}{2} \\rbrack _{0}^{1} = \\frac{1}{4} - \\frac{1}{2} = −\\frac{1}{4}.
$$

再对$θ$积分：

$$
\\int_{0}^{π/2} −\\frac{1}{4} dθ = −\\frac{1}{4} ⋅ \\frac{π}{2} = −\\frac{π}{8}.
$$

所以，$\\iint_{D_{1}}(x^{2} + y^{2} - 1) dσ = −\\frac{π}{8}$。代入得：

$$
\\iint_{D_{2}}(x^{2} + y^{2} - 1) dσ = −\\frac{1}{3} - (−\\frac{π}{8}) = −\\frac{1}{3} + \\frac{π}{8}.
$$

综上，原积分为：

$$
\\iint_{D} ​x^{2} + y^{2} - 1​  dσ = \\frac{π}{8} + (−\\frac{1}{3} + \\frac{π}{8}) = \\frac{π}{4} - \\frac{1}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:39', 9, 'Mogullzr', '2026-01-29 14:13:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1770');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1770');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1770');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1771, '2005年考研数学卷2第22题', '简单', '考研数学2005年卷2真题', '（本题满分 9 分）确定常数$a$，使向量组$α_{1} = (1, 1, a)T$,$α_{2} = (1, a, 1)T$,$α_{3} = (a, 1, 1)T$可由向量组$β_{1} = (1, 1, a)T$,$β_{2} = (−2, a, 4)T$,$β_{3} = (−2, a, a)T$线性表示，
但向量组$β_{1}$,$β_{2}$,$β_{3}$不能由向量组$α_{1}$,$α_{2}$,$α_{3}$线性表示．', '[]', '$a = 1$
', '记$A = (α_{1}, α_{2}, α_{3}), B = (β_{1}, β_{2}, β_{3})$。由于$β_{1}, β_{2}, β_{3}$不能由$α_{1}, α_{2}, α_{3}$线性表示，故$r(A) < 3$（若$r(A) = 3$，则任何三维向量都可以由$α_{1}, α_{2}, α_{3}$线性表示）。从而

$$
∣A∣ = \\begin{vmatrix}
1 & 1 & a\\\\
1 & a & 1\\\\
a & 1 & 1
\\end{vmatrix} = −(2 + a)(a - 1)2 = 0,
$$

从而得$a = 1$或$a = −2$。
当$a = 1$时，$α_{1} = α_{2} = α_{3} = β_{1} = (1, 1, 1)T$，则$α_{1} = α_{2} = α_{3} = β_{1} + 0 ⋅ β_{2} + 0 ⋅ β_{3}$，故$α_{1}, α_{2}, α_{3}$可由$β_{1}, β_{2}, β_{3}$线性表示，但$β_{2} = (−2, 1, 4)T$不能由$α_{1}, α_{2}, α_{3}$线性表示，故$a = 1$符合题意。
当$a = −2$时，作初等行变换

$$
(B : A) = \\left( \\begin{array}{ccccccc}
1 & −2 & −2 & : & 1 & 1 & −2 \\\\
1 & −2 & −2 & : & 1 & −2 & 1 \\\\
−2 & 4 & −2 & : & −2 & 1 & 1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccccc}
1 & −2 & −2 & : & 1 & 1 & −2 \\\\
0 & 0 & −6 & : & 0 & 3 & −3 \\\\
0 & 0 & 0 & : & 0 & −3 & 3 \\\\
\\end{array} \\right)
$$

因$r(B) = 2 \\neq r(B : α_{2}) = 3$，系数矩阵的秩和增广矩阵的秩不相等，故方程组$BX = α_{2}$无解，即$α_{2}$不能由$β_{1}, β_{2}, β_{3}$线性表示，与题设矛盾。所以$a = −2$不合题意。
', 9, 'Mogullzr', '2026-01-29 14:13:40', 9, 'Mogullzr', '2026-01-29 14:13:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1771');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1771');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '1771');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1772, '2005年考研数学卷2第23题', '', '考研数学2005年卷2真题', '/problems/other/1747', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:40', 9, 'Mogullzr', '2026-01-29 14:13:40', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1773, '2005年考研数学卷3第1题', '简单', '考研数学2005年卷3真题', '极限$\\lim_{x→∞} x \\sin \\frac{2x}{x^{2}+1} =$______．', '[]', '$2$
', '
考虑极限$\\lim_{x→∞} x \\sin \\frac{2x}{x^{2}+1}$。
当$x → ∞$时，$\\frac{2x}{x^{2}+1} → 0$，因此可利用等价无穷小替换$\\sin u ∼ u$（当$u → 0$），即$\\sin \\frac{2x}{x^{2}+1} ∼ \\frac{2x}{x^{2}+1}$。
于是原极限化为


$$
\\lim_{x→∞} x ⋅ \\frac{2x}{x^{2} + 1} = \\lim_{x→∞} \\frac{2x^{2}}{x^{2} + 1}.
$$

分子分母同除以$x^{2}$，得


$$
\\lim_{x→∞} \\frac{2}{1 + \\frac{1}{x^{2}}} = \\frac{2}{1 + 0} = 2.
$$

因此，极限值为$2$。
', 9, 'Mogullzr', '2026-01-29 14:13:42', 9, 'Mogullzr', '2026-01-29 14:13:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1773');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1773');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1773');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1774, '2005年考研数学卷3第2题', '简单', '考研数学2005年卷3真题', '微分方程$xy^{′} + y = 0$满足初始条件$y(1) = 2$的特解为 ______．', '[]', '$y = \\frac{2}{x}$
', '
给定微分方程$xy^{′} + y = 0$，可以写为$x\\frac{dy}{dx} + y = 0$。
通过分离变量法，将方程整理为$\\frac{dy}{y} = −\\frac{dx}{x}$。
两边积分得$\\ln ∣y∣ = − \\ln ∣x∣ + C$，其中$C$为积分常数。
简化得$\\ln ∣y∣ = \\ln ​\\frac{1}{x}​ + C$，即$∣y∣ = e^{C} ​\\frac{1}{x}​$。
令$K = e^{C}$，则通解为$y = \\frac{K}{x}$。
代入初始条件$y(1) = 2$，得$2 = \\frac{K}{1}$，因此$K = 2$。
故特解为$y = \\frac{2}{x}$。
', 9, 'Mogullzr', '2026-01-29 14:13:42', 9, 'Mogullzr', '2026-01-29 14:13:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1774');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1774');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1774');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1775, '2005年考研数学卷3第3题', '简单', '考研数学2005年卷3真题', '设二元函数$z = xe^{x+y} + (x + 1) \\ln(1 + y)$，则$dz​_{(1,0)} =$______．', '[]', '$2e dx + (e + 2) dy$
', '
求偏导数得

$$
\\frac{∂z}{∂x} = e^{x+y} + xe^{x+y} + \\ln(1 + y),  \\frac{∂z}{∂y} = xe^{x+y} + \\frac{x + 1}{1 + y}.
$$

于是$z$的全微分为

$$
dz = \\frac{∂z}{∂x} dx + \\frac{∂z}{∂y} dy = (e^{x+y} + xe^{x+y} + \\ln(1 + y)) dx + (xe^{x+y} + \\frac{x + 1}{y + 1}) dy.
$$

所以$dz∣_{(1,0)} = 2e dx + (e + 2) dy$。
', 9, 'Mogullzr', '2026-01-29 14:13:42', 9, 'Mogullzr', '2026-01-29 14:13:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1775');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1775');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1775');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1776, '2005年考研数学卷3第4题', '简单', '考研数学2005年卷3真题', '设行向量组$(2, 1, 1, 1)$，$(2, 1, a, a)$，$(3, 2, 1, a)$，$(4, 3, 2, 1)$线性相关，且$a \\neq 1$，则$a =$______．', '[]', '$\\frac{1}{2}$
', '给定行向量组：

$$
α_{1} = (2, 1, 1, 1),  α_{2} = (2, 1, a, a),  α_{3} = (3, 2, 1, a),  α_{4} = (4, 3, 2, 1)
$$

线性相关，且$a \\neq 1$。由于向量个数等于维数，线性相关等价于由这些向量作为行构成的矩阵的行列式为零。
构造矩阵：

$$
A = \\left( \\begin{array}{cccc}
2 & 1 & 1 & 1 \\\\
2 & 1 & a & a \\\\
3 & 2 & 1 & a \\\\
4 & 3 & 2 & 1 \\\\
\\end{array} \\right)
$$

计算行列式$det(A)$。
首先进行行变换：
$R_{2} ← R_{2} - R_{1}$，得：$\\left( \\begin{array}{cccc}
2 & 1 & 1 & 1 \\\\
0 & 0 & a - 1 & a - 1 \\\\
3 & 2 & 1 & a \\\\
4 & 3 & 2 & 1 \\\\
\\end{array} \\right)$由于$a \\neq 1$，可从第二行提取公因子$a - 1$：$det(A) = (a - 1) ⋅ det \\left( \\begin{array}{cccc}
2 & 1 & 1 & 1 \\\\
0 & 0 & 1 & 1 \\\\
3 & 2 & 1 & a \\\\
4 & 3 & 2 & 1 \\\\
\\end{array} \\right)$记上述矩阵为$A^{′}$，计算$det(A^{′})$。
继续行变换：
$R_{3} ← R_{3} - R_{1}$，得：$\\left( \\begin{array}{cccc}
2 & 1 & 1 & 1 \\\\
0 & 0 & 1 & 1 \\\\
1 & 1 & 0 & a - 1 \\\\
4 & 3 & 2 & 1 \\\\
\\end{array} \\right)$$R_{4} ← R_{4} - 2R_{1}$，得：$\\left( \\begin{array}{cccc}
2 & 1 & 1 & 1 \\\\
0 & 0 & 1 & 1 \\\\
1 & 1 & 0 & a - 1 \\\\
0 & 1 & 0 & −1 \\\\
\\end{array} \\right)$按第三列展开行列式。第三列元素为：$a_{13} = 1$，余子式$C_{13}$；$a_{23} = 1$，余子式$C_{23}$；$a_{33} = 0$，$a_{43} = 0$。
计算$C_{13}$（删除第一行、第三列）：

$$
C_{13} = det \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
1 & 1 & a - 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right) = 1 ⋅ det \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & 1 \\\\
\\end{array} \\right) = 1 ⋅ (1 ⋅ 1 - 1 ⋅ 0) = 1
$$

计算$C_{23}$（删除第二行、第三列）：

$$
\\begin{array}{ccccc}
C_{23} & \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 1 & a - 1 \\\\
0 & 1 & −1 \\\\
\\end{array} &  &  &  \\\\
 & = −1 ⋅  \\lbrack 2 ⋅ (1 ⋅ (−1) - (a - 1) ⋅ 1) - 1 ⋅ (1 ⋅ (−1) - (a - 1) ⋅ 0) + 1 ⋅ (1 ⋅ 1 - 1 ⋅ 0) \\rbrack  &  &  &  \\\\
 &  & 2 & 1 & 1 \\\\
 & = −1 ⋅  \\lbrack 2 (−1 - (a - 1)) - 1 (−1) + 1 (1) \\rbrack  &  &  &  \\\\
 &  & 1 & 1 & a - 1 \\\\
 & = −1 ⋅  \\lbrack 2(−a) + 1 + 1 \\rbrack  &  &  &  \\\\
 &  & 0 & 1 & −1 \\\\
\\end{array}
$$

所以：

$$
det(A^{′}) = 1 ⋅ C_{13} + 1 ⋅ C_{23} = 1 + (2a - 2) = 2a - 1
$$

于是：

$$
det(A) = (a - 1)(2a - 1)
$$

令$det(A) = 0$，得$(a - 1)(2a - 1) = 0$。由$a \\neq 1$，得$a = \\frac{1}{2}$。
因此，答案为$\\frac{1}{2}​$。
', 9, 'Mogullzr', '2026-01-29 14:13:42', 9, 'Mogullzr', '2026-01-29 14:13:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1776');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1776');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1776');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1777, '2005年考研数学卷3第5题', '', '考研数学2005年卷3真题', '/problems/other/1732', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:43', 9, 'Mogullzr', '2026-01-29 14:13:43', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1778, '2005年考研数学卷3第6题', '简单', '考研数学2005年卷3真题', '设二维随机变量$(X, Y)$的概率分布为
$$
\\begin{array}{c|cc|}
X ∖ Y & 0 & 1 \\\\
0 & 0.4 & a \\\\
1 & b & 0.1 \\\\
\\end{array}
$$
已知随机事件$\\{X = 0\\}$与$\\{X + Y = 1\\}$相互独立，则$a =$______，$b =$______．', '[]', '$0.4, 0.1$
', '
由概率分布的性质，所有概率之和为1，即：

$$
0.4 + a + b + 0.1 = 1
$$

解得：

$$
a + b = 0.5
$$

事件$\\{X = 0\\}$的概率为：

$$
P(X = 0) = P(X = 0, Y = 0) + P(X = 0, Y = 1) = 0.4 + a
$$

事件$\\{X + Y = 1\\}$的概率为：

$$
P(X + Y = 1) = P(X = 0, Y = 1) + P(X = 1, Y = 0) = a + b
$$

事件$\\{X = 0\\}$与$\\{X + Y = 1\\}$的交集为$\\{X = 0, Y = 1\\}$，其概率为$a$。由独立性条件：

$$
P(\\{X = 0\\} ∩ \\{X + Y = 1\\}) = P(X = 0) ⋅ P(X + Y = 1)
$$

即：

$$
a = (0.4 + a)(a + b)
$$

代入$a + b = 0.5$：

$$
a = (0.4 + a) × 0.5
$$

解得：

$$
a = 0.2 + 0.5a
$$



$$
a = 0.4
$$

代入$a + b = 0.5$：

$$
b = 0.1
$$

验证：$P(X = 0) = 0.4 + 0.4 = 0.8$，$P(X + Y = 1) = 0.4 + 0.1 = 0.5$，$P(\\{X = 0\\} ∩ \\{X + Y = 1\\}) = 0.4$，且$0.8 × 0.5 = 0.4$，满足独立性条件。
', 9, 'Mogullzr', '2026-01-29 14:13:43', 9, 'Mogullzr', '2026-01-29 14:13:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1778');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1778');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1778');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1779, '2005年考研数学卷3第7题', '简单', '考研数学2005年卷3真题', '当$a$取下列哪个值时，函数$f(x) = 2x^{3} - 9x^{2} + 12x - a$恰好有两个不同的零点', '[''$2$．'', ''$4$．'', ''$6$．'', ''$8$．'']', "['B']", '因为$f^{′}(x) = 6x^{2} - 18x + 12 = 6(x - 1)(x - 2)$，知可能极值点为$x = 1$和$x = 2$。从而可将函数划分为 3 个严格单调区间：
$$
\\begin{array}{c|ccc}
x & (−∞, 1) & (1, 2) & (2, +∞) \\\\
f^{′}(x) & + & − & + \\\\
\\end{array}
$$
并且$\\lim_{x→−∞} f(x) = −∞$，$\\lim_{x→+∞} f(x) = +∞$。若$f(x)$恰好有两个零点，则必有$f(1) = 0$或$f(2) = 0$（否则有一个或三个零点），解之得$a = 5$或$a = 4$。故选 (B)。', 9, 'Mogullzr', '2026-01-29 14:13:43', 9, 'Mogullzr', '2026-01-29 14:13:43', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1779');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1779');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '1779');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1780, '2005年考研数学卷3第8题', '简单', '考研数学2005年卷3真题', '设$I_{1} = \\iint_{D} \\cos \\sqrt{x^{2} + y^{2}}dσ$,$I_{2} = \\iint_{D} \\cos(x^{2} + y^{2})dσ$,$I_{3} = \\iint_{D} \\cos(x^{2} + y^{2})2dσ$，其中$D = \\{(x, y)​x^{2} + y^{2} ≤ 1\\}$，则', '[''$I_{3} > I_{2} > I_{1}$．'', ''$I_{1} > I_{2} > I_{3}$．'', ''$I_{2} > I_{1} > I_{3}$．'', ''$I_{3} > I_{1} > I_{2}$．'']', "['A']", '在区域$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 1\\}$上，除原点$x^{2} + y^{2} = 0$及边界$x^{2} + y^{2} = 1$外，总有
$$
\\sqrt{x^{2} + y^{2}} > x^{2} + y^{2} > (x^{2} + y^{2})2.
$$
而在$0 ≤ u ≤ 1$内，$\\cos u$是严格单调减函数，于是
$$
\\cos(x^{2} + y^{2})2 > \\cos(x^{2} + y^{2}) > \\cos \\sqrt{x^{2} + y^{2}}.
$$
因此二重积分
$$
\\iint_{D} \\cos(x^{2} + y^{2})2 dσ > \\iint_{D} \\cos(x^{2} + y^{2}) dσ > \\iint_{D} \\cos \\sqrt{x^{2} + y^{2}} dσ,
$$
即$I_{3} > I_{2} > I_{1}$.', 9, 'Mogullzr', '2026-01-29 14:13:43', 9, 'Mogullzr', '2026-01-29 14:13:43', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1780');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1780');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1780');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1781, '2005年考研数学卷3第9题', '简单', '考研数学2005年卷3真题', '设$a_{n} > 0$,$n = 1, 2, ⋯$，若$\\sum_{n=1}^{∞} a_{n}$发散，$\\sum_{n=1}^{∞}(−1)n−1a_{n}$收敛，则下列结论正确的是', '[''$\\\\sum_{n=1}^{∞} a_{2n-1}$收敛，$\\\\sum_{n=1}^{∞} a_{2n}$发散．'', ''$\\\\sum_{n=1}^{∞} a_{2n}$收敛，$\\\\sum_{n=1}^{∞} a_{2n-1}$发散．'', ''$\\\\sum_{n=1}^{∞}(a_{2n-1} + a_{2n})$收敛．'', ''$\\\\sum_{n=1}^{∞}(a_{2n-1} - a_{2n})$收敛．'']', "['D']", '给定$a_{n} > 0$，$\\sum_{n=1}^{∞} a_{n}$发散，但$\\sum_{n=1}^{∞}(−1)n−1a_{n}$收敛。由交错级数收敛可知$a_{n} → 0$。考虑选项 D：$\\sum_{n=1}^{∞}(a_{2n-1} - a_{2n})$。交错级数的部分和

$$
S_{2N} = \\sum_{n=1}^{N}(a_{2n-1} - a_{2n}),
$$
由于交错级数收敛，$S_{2N}$收敛，因此$\\sum_{n=1}^{∞}(a_{2n-1} - a_{2n})$收敛。选项 A 和 B 不一定成立，例如取$a_{n} = \\frac{1}{n}$时，$∑ a_{2n-1}$和$∑ a_{2n}$均发散。
选项 C 中$∑(a_{2n-1} + a_{2n}) = ∑ a_{n}$，发散。故 D 正确。', 9, 'Mogullzr', '2026-01-29 14:13:43', 9, 'Mogullzr', '2026-01-29 14:13:43', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1781');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1781');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1781');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1782, '2005年考研数学卷3第10题', '简单', '考研数学2005年卷3真题', '设$f(x) = x \\sin x + \\cos x$，下列命题中正确的是', '[''$f(0)$是极大值，$f(\\\\frac{π}{2})$是极小值．'', ''$f(0)$是极小值，$f(\\\\frac{π}{2})$是极大值．'', ''$f(0)$是极大值，$f(\\\\frac{π}{2})$也是极大值．'', ''$f(0)$是极小值，$f(\\\\frac{π}{2})$也是极小值．'']', "['B']", '首先，求函数$f(x) = x \\sin x + \\cos x$的导数：

$$
f^{′}(x) = \\frac{d}{dx}(x \\sin x) + \\frac{d}{dx}(\\cos x) = \\sin x + x \\cos x - \\sin x = x \\cos x
$$
令$f^{′}(x) = 0$，得$x \\cos x = 0$，解得临界点$x = 0$或$x = \\frac{π}{2} + kπ$（$k$为整数）。本题关注$x = 0$和$x = \\frac{π}{2}$。为判断极值类型，求二阶导数：

$$
f^{′′}(x) = \\frac{d}{dx}(x \\cos x) = \\cos x - x \\sin x
$$
在$x = 0$处，

$$
f^{′′}(0) = \\cos 0 - 0 ⋅ \\sin 0 = 1 > 0
$$
故$x = 0$为极小值点。在$x = \\frac{π}{2}$处，

$$
f^{′′} (\\frac{π}{2}) = \\cos \\frac{π}{2} - \\frac{π}{2} \\sin \\frac{π}{2} = 0 - \\frac{π}{2} ⋅ 1 = −\\frac{π}{2} < 0
$$
故$x = \\frac{π}{2}$为极大值点。因此，$f(0)$是极小值，$f (\\frac{π}{2})$是极大值，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:13:43', 9, 'Mogullzr', '2026-01-29 14:13:43', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1782');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1782');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1782');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1783, '2005年考研数学卷3第11题', '简单', '考研数学2005年卷3真题', '以下四个命题中，正确的是', '[''若$f^{′}(x)$在$(0, 1)$内连续，则$f(x)$在$(0, 1)$内有界．'', ''若$f(x)$在$(0, 1)$内连续，则$f(x)$在$(0, 1)$内有界．'', ''若$f^{′}(x)$在$(0, 1)$内有界，则$f(x)$在$(0, 1)$内有界．'', ''若$f(x)$在$(0, 1)$内有界，则$f^{′}(x)$在$(0, 1)$内有界．'']', "['C']", '设$f(x) = \\frac{1}{x}$，则$f(x)$及$f^{′}(x) = −\\frac{1}{x^{2}}$均在$(0, 1)$内连续，但$f(x)$在$(0, 1)$内无界，故排除 (A) 和 (B)。又$f(x) = \\sqrt{x}$在$(0, 1)$内有界，但$f^{′}(x) = \\frac{1}{2\\sqrt{x}}$在$(0, 1)$内无界，故排除 (D)。如果$f^{′}(x)$在区间$(0, 1)$内有界，则对于正数$M$，使$(0, 1)$内的一切$x$，有$∣f^{′}(x)∣ ≤ M$。在$(0, 1)$内取定点$x_{0}$，则对于任意$x ∈ (0, 1)$有
$$
f(x) - f(x_{0}) = f^{′}(ξ)(x - x_{0}),  ξ ∈ (0, 1).
$$
于是
$$
∣f(x)∣ ≤ ∣f(x_{0})∣ + ∣f^{′}(ξ)∣∣x - x_{0}∣ ≤ ∣f(x_{0})∣ + M,
$$
所以$f(x)$在$(0, 1)$内有界。', 9, 'Mogullzr', '2026-01-29 14:13:44', 9, 'Mogullzr', '2026-01-29 14:13:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1783');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1783');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1783');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1784, '2005年考研数学卷3第12题', '简单', '考研数学2005年卷3真题', '设矩阵$A$=$(a_{ij})3×3​$满足$A^{∗} = A^{T}$，其中$A^{∗}$是$A$的伴随矩阵，$A^{T}$为$A$的转置矩阵．
若$a_{11}, a_{12}, a_{13}$为三个相等的正数，则$a_{11}$为', '[''$\\\\frac{\\\\sqrt{3}}{3}$．'', ''$3$．'', ''$\\\\frac{1}{3}$．'', ''$\\\\sqrt{3}$．'']', "['A']", '由已知条件
$$
A^{∗} = \\left( \\begin{array}{ccc}
A_{11} & A_{21} & A_{31} \\\\
A_{12} & A_{22} & A_{32} \\\\
A_{13} & A_{23} & A_{33} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
a_{11} & a_{21} & a_{31} \\\\
a_{12} & a_{22} & a_{32} \\\\
a_{13} & a_{23} & a_{33} \\\\
\\end{array} \\right) = A^{T},
$$
则有$a_{ij} = A_{ij}$,$i, j = 1, 2, 3$，其中$A_{ij}$为$a_{ij}$的代数余子式。又由$A^{∗} = A^{T}$和$AA^{∗} = ∣A∣E$得$AA^{T} = ∣A∣E$，两边取行列式，得到$∣A∣^{2} = ∣A∣^{3}$，于是有$∣A∣ = 0$或$∣A∣ = 1$。而
$$
∣A∣ = a_{11}A_{11} + a_{12}A_{12} + a_{13}A_{13} = a_{11}^{2} + a_{12}^{2} + a_{13}^{2} = 3a_{11}^{2} \\neq 0,
$$
于是$∣A∣ = 1$，即$3a_{11}^{2} = 1$，故$a_{11} = \\frac{\\sqrt{3}}{3}$。故正确选项为 (A)。', 9, 'Mogullzr', '2026-01-29 14:13:44', 9, 'Mogullzr', '2026-01-29 14:13:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1784');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1784');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1784');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1785, '2005年考研数学卷3第13题', '', '考研数学2005年卷3真题', '/problems/other/1737', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:44', 9, 'Mogullzr', '2026-01-29 14:13:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1786, '2005年考研数学卷3第14题', '简单', '考研数学2005年卷3真题', '设一批零件的长度服从正态分布$N(μ, σ^{2})$，其中$μ, σ^{2}$均未知．
现从中随机抽取$16$个零件，测得样本均值$\\overline{x} = 20(cm)$，样本标准差$s = 1(cm)$，
则$μ$的置信度为$0.90$的置信区间是', '[''$(20 - \\\\frac{1}{4}t_{0.05}(16), 20 + \\\\frac{1}{4}t_{0.05}(16))$．'', ''$(20 - \\\\frac{1}{4}t_{0.1}(16), 20 + \\\\frac{1}{4}t_{0.1}(16))$．'', ''$(20 - \\\\frac{1}{4}t_{0.05}(15), 20 + \\\\frac{1}{4}t_{0.05}(15))$．'', ''$(20 - \\\\frac{1}{4}t_{0.1}(15), 20 + \\\\frac{1}{4}t_{0.1}(15))$．'']', "['C']", '由于总体方差未知，样本量较小（$n = 16$），需使用$t$分布构建置信区间。置信度为$0.90$，则显著性水平$α = 0.10$，$α/2 = 0.05$。自由度为$n - 1 = 15$。置信区间公式为：
$$
\\overline{x} ± t_{α/2,df} ⋅ \\frac{s}{\\sqrt{n}}
$$
代入数据得：
$$
20 ± t_{0.05}(15) ⋅ \\frac{1}{\\sqrt{16}} = 20 ± \\frac{1}{4}t_{0.05}(15)
$$
因此，置信区间为
$$
(20 - \\frac{1}{4}t_{0.05}(15),  20 + \\frac{1}{4}t_{0.05}(15))
$$
对应选项 C。选项 A 和 B 自由度错误，选项 D 分位数错误。', 9, 'Mogullzr', '2026-01-29 14:13:44', 9, 'Mogullzr', '2026-01-29 14:13:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1786');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1786');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1075', '1786');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1787, '2005年考研数学卷3第15题', '简单', '考研数学2005年卷3真题', '（本题满分 8 分）
$$
\\lim_{x→0} (\\frac{1 + x}{1 - e^{−x}} - \\frac{1}{x}) =
$$
', '[]', '$\\frac{3}{2}$
', '考虑极限$\\lim_{x→0} (\\frac{1+x}{1-e^{−x}} - \\frac{1}{x})$。直接代入$x = 0$会得到未定式，因此采用洛必达法则或泰勒展开求解。
方法一：泰勒展开
首先，将$e^{−x}$展开为泰勒级数：$e^{−x} = 1 - x + \\frac{x^{2}}{2!} - \\frac{x^{3}}{3!} + O(x^{4})$，则$1 - e^{−x} = x - \\frac{x^{2}}{2} + \\frac{x^{3}}{6} - O(x^{4})$。
于是，


$$
\\frac{1 + x}{1 - e^{−x}} = \\frac{1 + x}{x - \\frac{x^{2}}{2} + \\frac{x^{3}}{6} - O(x^{4})} = (\\frac{1}{x} + 1) ⋅ \\frac{1}{1 - \\frac{x}{2} + \\frac{x^{2}}{6} - O(x^{3})}.
$$

令$g(x) = \\frac{1}{1-\\frac{x}{2}+\\frac{x^{2}}{6}-O(x^{3})}$，其泰勒展开为：


$$
g(x) = 1 + \\frac{x}{2} + \\frac{x^{2}}{12} + O(x^{3}).
$$

因此，


$$
\\frac{1 + x}{1 - e^{−x}} = (\\frac{1}{x} + 1) (1 + \\frac{x}{2} + \\frac{x^{2}}{12} + O(x^{3})) = \\frac{1}{x} + \\frac{3}{2} + \\frac{7}{12}x + O(x^{2}).
$$

原表达式为：


$$
(\\frac{1}{x} + \\frac{3}{2} + \\frac{7}{12}x + O(x^{2})) - \\frac{1}{x} = \\frac{3}{2} + \\frac{7}{12}x + O(x^{2}).
$$

当$x → 0$时，极限为$\\frac{3}{2}$.
方法二：洛必达法则
将表达式通分：

$$
\\lim_{x→0} \\frac{x(1 + x) - (1 - e^{−x})}{x(1 - e^{−x})} = \\lim_{x→0} \\frac{e^{−x} + x + x^{2} - 1}{x(1 - e^{−x})}.
$$

当$x → 0$时，分子和分母均趋于 0，应用洛必达法则。
分子导数：$−e^{−x} + 1 + 2x$，分母导数：$1 - e^{−x} + xe^{−x}$。
在$x = 0$处，分子导数为 0，分母导数为 0，仍需洛必达法则。
二阶分子导数：$e^{−x} + 2$，二阶分母导数：$2e^{−x} - xe^{−x}$。
在$x = 0$处，二阶分子导数为 3，二阶分母导数为 2，因此极限为$\\frac{3}{2}$。
两种方法均得极限为$\\frac{3}{2}$.
', 9, 'Mogullzr', '2026-01-29 14:13:44', 9, 'Mogullzr', '2026-01-29 14:13:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1787');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1787');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1787');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1788, '2005年考研数学卷3第16题', '简单', '考研数学2005年卷3真题', '（本题满分 8 分）设$f(u)$具有二阶连续导数，且$g(x, y) = f (\\frac{y}{x}) + yf (\\frac{x}{y})$，
求$x^{2}\\frac{∂^{2}g}{∂x^{2}} - y^{2}\\frac{∂^{2}g}{∂y^{2}}$．', '[]', '

$$
\\frac{2y}{x}f^{′} (\\frac{y}{x})
$$

', '设$g(x, y) = f (\\frac{y}{x}) + yf (\\frac{x}{y})$，其中$f(u)$具有二阶连续导数。
首先，求一阶偏导数：

$$
\\frac{∂g}{∂x} = −\\frac{y}{x^{2}}f^{′} (\\frac{y}{x}) + f^{′} (\\frac{x}{y})
$$



$$
\\frac{∂g}{∂y} = \\frac{1}{x}f^{′} (\\frac{y}{x}) + f (\\frac{x}{y}) - \\frac{x}{y}f^{′} (\\frac{x}{y})
$$

然后，求二阶偏导数：

$$
\\frac{∂^{2}g}{∂x^{2}} = \\frac{2y}{x^{3}}f^{′} (\\frac{y}{x}) + \\frac{y^{2}}{x^{4}}f^{′′} (\\frac{y}{x}) + \\frac{1}{y}f^{′′} (\\frac{x}{y})
$$

所以，

$$
x^{2}\\frac{∂^{2}g}{∂x^{2}} = \\frac{2y}{x}f^{′} (\\frac{y}{x}) + \\frac{y^{2}}{x^{2}}f^{′′} (\\frac{y}{x}) + \\frac{x^{2}}{y}f^{′′} (\\frac{x}{y})
$$


$$
\\frac{∂^{2}g}{∂y^{2}} = \\frac{1}{x^{2}}f^{′′} (\\frac{y}{x}) + \\frac{x^{2}}{y^{3}}f^{′′} (\\frac{x}{y})
$$

所以，

$$
y^{2}\\frac{∂^{2}g}{∂y^{2}} = \\frac{y^{2}}{x^{2}}f^{′′} (\\frac{y}{x}) + \\frac{x^{2}}{y}f^{′′} (\\frac{x}{y})
$$

因此，

$$
\\begin{array}{cc}
x^{2}\\frac{∂^{2}g}{∂x^{2}} - y^{2}\\frac{∂^{2}g}{∂y^{2}} & = (\\frac{2y}{x}f^{′} (\\frac{y}{x}) + \\frac{y^{2}}{x^{2}}f^{′′} (\\frac{y}{x}) + \\frac{x^{2}}{y}f^{′′} (\\frac{x}{y})) \\\\
 & - (\\frac{y^{2}}{x^{2}}f^{′′} (\\frac{y}{x}) + \\frac{x^{2}}{y}f^{′′} (\\frac{x}{y})) \\\\
\\end{array}
$$

故结果为$\\frac{2y}{x}f^{′} (\\frac{y}{x})$.
', 9, 'Mogullzr', '2026-01-29 14:13:44', 9, 'Mogullzr', '2026-01-29 14:13:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1788');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1788');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1788');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1789, '2005年考研数学卷3第17题', '', '考研数学2005年卷3真题', '/problems/other/1770', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:45', 9, 'Mogullzr', '2026-01-29 14:13:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1790, '2005年考研数学卷3第18题', '简单', '考研数学2005年卷3真题', '（本题满分 9 分）求幂级数$\\sum_{n=1}^{∞} (\\frac{1}{2n+1} - 1) x^{2n}$在区间$(−1, 1)$内的和函数$S(x)$．', '[]', '

$$
S(x) = \\begin{cases} −1 + \\frac{1}{2x} \\ln \\frac{1 + x}{1 - x} - \\frac{1}{1 - x^{2}} & ∣x∣ < 1, x \\neq 0; \\\\ 0 & x = 0. \\end{cases}
$$

', '
将幂级数分为两部分：

$$
S(x) = \\sum_{n=1}^{∞} (\\frac{1}{2n + 1} - 1) x^{2n} = \\sum_{n=1}^{∞} \\frac{1}{2n + 1}x^{2n} - \\sum_{n=1}^{∞} x^{2n} = S_{1}(x) - S_{2}(x).
$$

先求级数$S_{2}(x)$：

$$
S_{2}(x) = \\sum_{n=1}^{∞} x^{2n} = x^{2} \\sum_{n=0}^{∞} x^{n} = \\frac{x^{2}}{1 - x^{2}}.
$$

再求级数$S_{1}(x)$：由于

$$
(xS_{1}(x))′ = (\\sum_{n=1}^{∞} \\frac{x^{2n+1}}{2n + 1})^{′} = \\sum_{n=1}^{∞} (\\frac{x^{2n+1}}{2n + 1})^{′} = \\sum_{n=1}^{∞} x^{2n} = \\frac{x^{2}}{1 - x^{2}},
$$

因此由微积分基本公式得

$$
xS_{1}(x) = 0 × S_{1}(0) + \\int_{0}^{x} \\frac{t^{2}}{1 - t^{2}} dt = −x + \\frac{1}{2} \\ln \\frac{1 + x}{1 - x}.
$$

又由于$S_{1}(0) = 0$，故

$$
S_{1}(x) = \\begin{cases} −1 + \\frac{1}{2x} \\ln \\frac{1 + x}{1 - x} & ∣x∣ < 1 \\\\ 0 & x = 0. \\end{cases}
$$

所以原幂级数的和函数

$$
S(x) = S_{1}(x) - S_{2}(x) = \\begin{cases} −1 + \\frac{1}{2x} \\ln \\frac{1 + x}{1 - x} - \\frac{1}{1 - x^{2}} & ∣x∣ < 1, x \\neq 0; \\\\ 0 & x = 0. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:45', 9, 'Mogullzr', '2026-01-29 14:13:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1790');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1790');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1790');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1791, '2005年考研数学卷3第19题', '简单', '考研数学2005年卷3真题', '（本题满分 8 分）设$f(x), g(x)$在$\\lbrack 0, 1 \\rbrack$上的导数连续，且$f(0) = 0$,$f^{′}(x) ≥ 0$,$g^{′}(x) ≥ 0$．
证明：对任何$a ∈  \\lbrack 0, 1 \\rbrack$，有$\\int_{0}^{a} g(x)f^{′}(x)dx + \\int_{0}^{1} f(x)g^{′}(x)dx ≥ f(a)g(1).$', '[]', '证明见解析。
', '
将$a$看成变限，设

$$
F(x) = \\int_{0}^{x} g(t)f^{′}(t) dt + \\int_{0}^{1} f(t)g^{′}(t) dt - f(x)g(1),
$$

则$F(x)$在$\\lbrack 0, 1 \\rbrack$上的导数连续，并且

$$
F^{′}(x) = g(x)f^{′}(x) - f^{′}(x)g(1) = f^{′}(x) \\lbrack g(x) - g(1) \\rbrack .
$$

由$x ∈  \\lbrack 0, 1 \\rbrack$时，$g^{′}(x) ≥ 0$知$g(x)$是单调递增的，所以$g(x) - g(1) ≤ 0$；又$f^{′}(x) ≥ 0$，因此$F^{′}(x) ≤ 0$，即$F(x)$在$\\lbrack 0, 1 \\rbrack$上单调递减。另一方面，

$$
F(1) = \\int_{0}^{1} g(t)f^{′}(t) dt + \\int_{0}^{1} f(t)g^{′}(t) dt - f(1)g(1).
$$

由分部积分公式

$$
\\begin{array}{cc}
\\int_{0}^{1} g(t)f^{′}(t) dt & = \\int_{0}^{1} g(t) d \\lbrack f(t) \\rbrack  \\\\
 & =  \\lbrack g(t)f(t) \\rbrack _{0}^{1} - \\int_{0}^{1} f(t)g^{′}(t) dt \\\\
\\end{array}
$$

故$F(1) = 0$。因此当$x ∈  \\lbrack 0, 1 \\rbrack$时$F(x) ≥ F(1) = 0$。由此对任何$a ∈  \\lbrack 0, 1 \\rbrack$有

$$
\\int_{0}^{a} g(x)f^{′}(x) dx + \\int_{0}^{1} f(x)g^{′}(x) dx ≥ f(a)g(1).
$$

', 9, 'Mogullzr', '2026-01-29 14:13:45', 9, 'Mogullzr', '2026-01-29 14:13:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1791');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1791');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1791');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1792, '2005年考研数学卷3第20题', '简单', '考研数学2005年卷3真题', '（本题满分 13 分）已知齐次线性方程组
(I)$\\begin{cases} x_{1} + 2x_{2} + 3x_{3} = 0 \\\\ 2x_{1} + 3x_{2} + 5x_{3} = 0 \\\\ x_{1} + x_{2} + ax_{3} = 0 \\end{cases}$和(II)$\\begin{cases} x_{1} + bx_{2} + cx_{3} = 0 \\\\ 2x_{1} + b^{2}x_{2} + (c + 1)x_{3} = 0 \\end{cases}$同解，求$a, b, c$的值．', '[]', '$a = 2$，$b = 1$，$c = 2$
', '首先，考虑齐次线性方程组（I）的系数矩阵：

$$
A = \\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
2 & 3 & 5 \\\\
1 & 1 & a \\\\
\\end{array} \\right)
$$

对其进行行化简：

$$
\\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
0 & −1 & −1 \\\\
0 & 0 & a - 2 \\\\
\\end{array} \\right)
$$

当$a \\neq 2$时，秩为3，方程组（I）只有零解。但方程组（II）有两个方程、三个变量，不可能只有零解（系数矩阵秩最大为2），故$a \\neq 2$不成立。因此$a = 2$。
当$a = 2$时，方程组（I）的系数矩阵行化简为：

$$
\\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
0 & −1 & −1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

解为：

$$
x_{1} = −x_{3},  x_{2} = −x_{3}
$$

即解空间由向量$v = (−1, −1, 1)$张成。
由于方程组（I）和（II）同解，$v$必须满足方程组（II）：

$$
\\begin{cases} −1 + b(−1) + c(1) = 0 \\\\ 2(−1) + b^{2}(−1) + (c + 1)(1) = 0 \\end{cases}
$$

化简得：

$$
\\begin{cases} c - b = 1 \\\\ c - b^{2} = 1 \\end{cases}
$$

相减得$b^{2} - b = 0$，即$b(b - 1) = 0$，解得$b = 0$或$b = 1$。
若$b = 0$，则$c = 1$。方程组（II）为：

$$
\\begin{cases} x_{1} + x_{3} = 0 \\\\ 2x_{1} + 2x_{3} = 0 \\end{cases}
$$

方程相互依赖，解空间维数为2（$x_{1} = −x_{3}$，$x_{2}$自由），与方程组（I）解空间维数1不同，故不成立。
若$b = 1$，则$c = 2$。方程组（II）为：

$$
\\begin{cases} x_{1} + x_{2} + 2x_{3} = 0 \\\\ 2x_{1} + x_{2} + 3x_{3} = 0 \\end{cases}
$$

系数矩阵为：

$$
\\left( \\begin{array}{ccc}
1 & 1 & 2 \\\\
2 & 1 & 3 \\\\
\\end{array} \\right)
$$

行化简后秩为2，解空间维数为1，解为$x_{1} = −x_{3}$，$x_{2} = −x_{3}$，即与方程组（I）解空间相同。
因此，$a = 2$，$b = 1$，$c = 2$。
', 9, 'Mogullzr', '2026-01-29 14:13:45', 9, 'Mogullzr', '2026-01-29 14:13:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1792');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1792');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1793, '2005年考研数学卷3第21题', '简单', '考研数学2005年卷3真题', '（本题满分 13 分）设$D = \\left( \\begin{array}{cc}
A & C \\\\
C^{T} & B \\\\
\\end{array} \\right)$为正定矩阵，其中$A, B$分别为$m$阶，$n$阶对称矩阵，$C$为$m × n$矩阵．(1) 计算$P^{T}DP$，其中$P = \\left( \\begin{array}{cc}
E_{m} & −A^{−1}C \\\\
O & E_{n} \\\\
\\end{array} \\right)$；(2) 利用(I)的结果判断矩阵$B - C^{T}A^{−1}C$是否为正定矩阵，并证明你的结论．', '[]', '
(1)$P^{T}DP = \\left( \\begin{array}{cc}
A & O \\\\
O & B - C^{T}A^{−1}C \\\\
\\end{array} \\right)$
(2) 矩阵$B - C^{T}A^{−1}C$是正定矩阵。
', '
(I) 因为$P = \\left( \\begin{array}{cc}
E_{m} & −A^{−1}C \\\\
O & E_{n} \\\\
\\end{array} \\right)$，所以
$P^{T} = \\left( \\begin{array}{cc}
E_{m} & O \\\\
−C^{T}(A^{−1})T & E_{n} \\\\
\\end{array} \\right)$。
因为$A$为对称矩阵，故$A^{T} = A$，左右两边取逆，$(A^{T})−1 = A^{−1}$。
根据可逆矩阵的性质，又有$(A^{T})−1 = (A^{−1})T$，故$(A^{−1})T = A^{−1}$，
所以


$$
P^{T} = \\left( \\begin{array}{cc}
E_{m} & O \\\\
−C^{T}A^{−1} & E_{n} \\\\
\\end{array} \\right)
$$

因此，

$$
P^{T}DP = \\left( \\begin{array}{cc}
E_{m} & O \\\\
−C^{T}A^{−1} & E_{n} \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
A & C \\\\
C^{T} & B \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
E_{m} & −A^{−1}C \\\\
O & E_{n} \\\\
\\end{array} \\right)
$$


$$
= \\left( \\begin{array}{cc}
A & C \\\\
O & B - C^{T}A^{−1}C \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
E_{m} & −A^{−1}C \\\\
O & E_{n} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
A & O \\\\
O & B - C^{T}A^{−1}C \\\\
\\end{array} \\right) .
$$

(II) 矩阵$B - C^{T}A^{−1}C$是正定矩阵。事实上，因为$P$可逆，所以由$D$是正定矩阵知$P^{T}DP$也是正定的。
根据正定的定义，对任意的$\\left( \\begin{array}{c}
O \\\\
Y \\\\
\\end{array} \\right) \\neq O$，恒有

$$
(O, Y^{T})P^{T}DP \\left( \\begin{array}{c}
O \\\\
Y \\\\
\\end{array} \\right) = (O, Y^{T}) \\left( \\begin{array}{cc}
A & O \\\\
O & B - C^{T}A^{−1}C \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
O \\\\
Y \\\\
\\end{array} \\right) > 0.
$$

计算分块矩阵乘积得：

$$
(O, Y^{T}) \\left( \\begin{array}{cc}
A & O \\\\
O & B - C^{T}A^{−1}C \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
O \\\\
Y \\\\
\\end{array} \\right) = (O, Y^{T})(B - C^{T}A^{−1}C) \\left( \\begin{array}{c}
O \\\\
Y \\\\
\\end{array} \\right)
$$


$$
= Y^{T}(B - C^{T}A^{−1}C)Y.
$$

故对任意$Y \\neq O$，有$Y^{T}(B - C^{T}A^{−1}C)Y > 0$，从而$B - C^{T}A^{−1}C$为正定矩阵。
', 9, 'Mogullzr', '2026-01-29 14:13:45', 9, 'Mogullzr', '2026-01-29 14:13:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1793');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1793');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1793');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1794, '2005年考研数学卷3第22题', '简单', '考研数学2005年卷3真题', '（本题满分 13 分）设二维随机变量$(X, Y)$的概率密度为$f(x, y) = \\begin{cases} 1 & 0 < x < 1, 0 < y < 2x \\\\ 0 & 其他. \\end{cases}$求：(1)$(X, Y)$的边缘概率密度$f_{X}(x), f_{Y}(y)$；(2)$Z = 2X - Y$的概率密度$f_{Z}(z)$；(3)$P \\{Y ≤ \\frac{1}{2}​X ≤ \\frac{1}{2}\\}$．', '[]', '
(1)$f_{X}(x) = \\begin{cases} 2x & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}$，$f_{Y}(y) = \\begin{cases} 1 - \\frac{y}{2} & 0 < y < 2 \\\\ 0 & 其他 \\end{cases}$
(2)$f_{Z}(z) = \\begin{cases} 1 - \\frac{z}{2} & 0 < z < 2 \\\\ 0 & 其他 \\end{cases}$
(3)$\\frac{3}{4}$
', '
(I) 由边缘密度函数的定义，关于$X$的边缘概率密度为：

$$
f_{X}(x) = \\int_{−∞}^{+∞} f(x, y) dy = \\begin{cases} \\int_{0}^{2x} dy & 0 < x < 1 \\\\ 0 & 其他. \\end{cases} = \\begin{cases} 2x & 0 < x < 1 \\\\ 0 & 其他. \\end{cases}
$$

关于$Y$的边缘概率密度：

$$
f_{Y}(y) = \\int_{−∞}^{+∞} f(x, y) dx = \\begin{cases} \\int_{\\frac{y}{2}}^{1} dx & 0 < y < 2 \\\\ 0 & 其他. \\end{cases} = \\begin{cases} 1 - \\frac{y}{2} & 0 < y < 2 \\\\ 0 & 其他. \\end{cases}
$$

(II) 由分布函数的定义：$F_{Z}(z) = P\\{Z ≤ z\\} = P\\{2X - Y ≤ z\\}$。当$z < 0$时，$F_{Z}(z) = P\\{2X - Y ≤ z\\} = 0$。当$z ≥ 2$时，$F_{Z}(z) = P\\{2X - Y ≤ z\\} = 1$。当$0 ≤ z < 2$时，如图转换成阴影部分的二重积分。


$$
F_{Z}(z) = P\\{2X - Y ≤ z\\} = \\iint_{2x-y≤z} f(x, y) dx dy
$$


$$
= 1 - \\iint_{2x-y>z} f(x, y) dx dy = 1 - \\int_{\\frac{z}{2}}^{1} dx \\int_{0}^{2x-z} dy = z - \\frac{1}{4}z^{2}.
$$

所以分布函数为

$$
F_{Z}(z) = \\begin{cases} 0 & z < 0 \\\\ z - \\frac{1}{4}z^{2} & 0 ≤ z < 2 \\\\ 1 & z ≥ 2. \\end{cases}
$$

由密度函数与分布函数的关系，所求的概率密度为

$$
f_{Z}(z) = \\begin{cases} 1 - \\frac{1}{2}z & 0 < z < 2 \\\\ 0 & 其他. \\end{cases}
$$

(Ⅲ) 因为

$$
P \\{X ⩽ \\frac{1}{2}, Y ⩽ \\frac{1}{2}\\} = \\iint_{x⩽\\frac{1}{2},y⩽\\frac{1}{2}} f(x, y) dx dy = \\int_{0}^{\\frac{1}{2}} dy \\int_{\\frac{y}{2}}^{\\frac{1}{2}} dx = \\frac{3}{16},
$$


$$
P \\{X ⩽ \\frac{1}{2}\\} = \\int_{0}^{\\frac{1}{2}} f_{X}(x) dx = \\int_{0}^{\\frac{1}{2}} 2x dx = \\frac{1}{4},
$$

所以由条件概率公式得

$$
P \\{Y ⩽ \\frac{1}{2} ​ X ⩽ \\frac{1}{2}\\} = \\frac{P \\{X ⩽ \\frac{1}{2}, Y ⩽ \\frac{1}{2}\\}}{P \\{X ⩽ \\frac{1}{2}\\}} = \\frac{\\frac{3}{16}}{\\frac{1}{4}} = \\frac{3}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:46', 9, 'Mogullzr', '2026-01-29 14:13:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1794');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1794');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1794');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1795, '2005年考研数学卷3第23题', '简单', '考研数学2005年卷3真题', '（本题满分 13 分）设$X_{1}, X_{2}, ⋯  , X_{n}(n > 2)$为来自总体$N(0, σ^{2})$的简单随机样本，
其样本均值为$\\overline{X}$，记$Y_{i} = X_{i} - \\overline{X}$，$i = 1, 2, ⋯  , n$．(1) 求$Y_{i}$的方差$DY_{i}$，$i = 1, 2, ⋯  , n$；(2) 求$Y_{1}$与$Y_{n}$的协方差$Cov(Y_{1}, Y_{n})$；(3) 若$c(Y_{1} + Y_{n})2$是$σ^{2}$的无偏估计量，求常数$c$．', '[]', '
(1)$DY_{i} = \\frac{n-1}{n}σ^{2}$
(2)$Cov(Y_{1}, Y_{n}) = −\\frac{σ^{2}}{n}$
(3)$c = \\frac{n}{2(n-2)}$
', '
由题设知$X_{1}, X_{2}, ⋯  , X_{n}(n > 2)$相互独立，且$EX_{i} = 0, DX_{i} = σ^{2}(i = 1, 2, ⋯  , n)$，

$$
E\\overline{X} = E (\\frac{1}{n} \\sum_{i=1}^{n} X_{i}) = \\frac{1}{n} \\sum_{i=1}^{n} EX_{i} = 0,
$$


$$
D\\overline{X} = D (\\frac{1}{n} \\sum_{i=1}^{n} X_{i}) = \\frac{1}{n^{2}} \\sum_{i=1}^{n} DX_{i} = \\frac{σ^{2}}{n}.
$$

(I)因为$Y_{i} = X_{i} - \\overline{X}$，所以对$i = 1, 2, ⋯  , n$，有$EY_{i} = 0$，

$$
DY_{i} = D(X_{i} - \\overline{X}) = D ​(1 - \\frac{1}{n}) X_{i} - \\frac{1}{n} \\sum_{j\\neqi} X_{j}​
$$


$$
= \\frac{(n - 1)2}{n^{2}}σ^{2} + \\frac{1}{n^{2}} ⋅ (n - 1)σ^{2} = \\frac{n - 1}{n}σ^{2}.
$$

(II)由协方差的定义：

$$
Cov(Y_{1}, Y_{n}) = E(Y_{1}Y_{n}) - EY_{1}EY_{n} = E(Y_{1}Y_{n})
$$


$$
= E \\lbrack (X_{1} - \\overline{X})(X_{n} - \\overline{X}) \\rbrack  = E(X_{1}X_{n} - X_{1}\\overline{X} - X_{n}\\overline{X} + \\overline{X}^{2})
$$


$$
= E(X_{1}X_{n}) - E(X_{1}\\overline{X}) - E(X_{n}\\overline{X}) + E(\\overline{X}^{2}).
$$

因为$X_{1}, X_{n}$独立，有

$$
E(X_{1}X_{n}) = EX_{1}EX_{n} = 0 × 0 = 0.
$$

由方差的公式，有

$$
E(\\overline{X}^{2}) = D\\overline{X} + (E\\overline{X})2 = \\frac{σ^{2}}{n} + 0 = \\frac{σ^{2}}{n}.
$$

由期望的性质和方差的公式有

$$
\\begin{array}{cc}
E(X_{1}\\overline{X}) & = E (\\frac{1}{n} \\sum_{j=1}^{n} X_{1}X_{j}) = E (\\frac{1}{n}X_{1}^{2} + \\frac{1}{n} \\sum_{j=2}^{n} X_{1}X_{j}) \\\\
 & = \\frac{1}{n}E(X_{1}^{2}) + \\frac{1}{n} \\sum_{j=2}^{n} EX_{1}EX_{j} = \\frac{1}{n}  \\lbrack DX_{1} + (EX_{1})2 \\rbrack  + 0 \\\\
\\end{array}
$$

同理$E(X_{n}\\overline{X}) = \\frac{σ^{2}}{n}$。所以

$$
\\begin{array}{cc}
Cov(Y_{1}, Y_{n}) & = E(X_{1}X_{n}) - E(X_{1}\\overline{X}) - E(X_{n}\\overline{X}) + E(\\overline{X}^{2}) \\\\
 & = 0 - \\frac{σ^{2}}{n} - \\frac{σ^{2}}{n} + \\frac{σ^{2}}{n} = −\\frac{σ^{2}}{n}. \\\\
\\end{array}
$$

(Ⅲ)由$c(Y_{1} + Y_{n})2$是$σ^{2}$的无偏估计量，则$E \\lbrack c(Y_{1} + Y_{n})2 \\rbrack  = σ^{2}$。而

$$
E \\lbrack c(Y_{1} + Y_{n})2 \\rbrack  = cE \\lbrack (Y_{1} + Y_{n})2 \\rbrack  = c  \\lbrack D(Y_{1} + Y_{n}) +  \\lbrack E(Y_{1} + Y_{n}) \\rbrack 2 \\rbrack
$$

又$E(Y_{1} + Y_{n}) = EY_{1} + EY_{n} = 0$，

$$
\\begin{array}{cc}
D(Y_{1} + Y_{n}) & = DY_{1} + DY_{2} + 2Cov(Y_{1}, Y_{n}) \\\\
 & = \\frac{n - 1}{n}σ^{2} + \\frac{n - 1}{n}σ^{2} + 2 (−\\frac{σ^{2}}{n}) = \\frac{2(n - 2)}{n}σ^{2}, \\\\
\\end{array}
$$

所以得到

$$
E \\lbrack c(Y_{1} + Y_{n})2 \\rbrack  = c  \\lbrack D(Y_{1} + Y_{n}) +  \\lbrack E(Y_{1} + Y_{n}) \\rbrack 2 \\rbrack  = \\frac{2(n - 2)}{n}cσ^{2}.
$$

由$E \\lbrack c(Y_{1} + Y_{n})2 \\rbrack  = σ^{2}$，得$\\frac{2(n - 2)}{n}cσ^{2} = σ^{2}$，解得$c = \\frac{n}{2(n - 2)}$。
', 9, 'Mogullzr', '2026-01-29 14:13:46', 9, 'Mogullzr', '2026-01-29 14:13:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1795');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1795');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1795');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1796, '2005年考研数学卷4第1题', '', '考研数学2005年卷4真题', '/problems/other/1773', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1797, '2005年考研数学卷4第2题', '', '考研数学2005年卷4真题', '/problems/other/1774', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1798, '2005年考研数学卷4第3题', '', '考研数学2005年卷4真题', '/problems/other/1775', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1799, '2005年考研数学卷4第4题', '', '考研数学2005年卷4真题', '/problems/other/1776', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1800, '2005年考研数学卷4第5题', '', '考研数学2005年卷4真题', '/problems/other/1731', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1801, '2005年考研数学卷4第6题', '', '考研数学2005年卷4真题', '/problems/other/1732', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1802, '2005年考研数学卷4第7题', '', '考研数学2005年卷4真题', '/problems/other/1779', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1803, '2005年考研数学卷4第8题', '', '考研数学2005年卷4真题', '/problems/other/1780', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1804, '2005年考研数学卷4第9题', '简单', '考研数学2005年卷4真题', '下列结论中正确的是', '[''$\\\\int_{1}^{+∞} \\\\frac{dx}{x(x+1)}$与$\\\\int_{0}^{1} \\\\frac{dx}{x(x+1)}$都收敛．'', ''$\\\\int_{1}^{+∞} \\\\frac{dx}{x(x+1)}$与$\\\\int_{0}^{1} \\\\frac{dx}{x(x+1)}$都发散．'', ''$\\\\int_{1}^{+∞} \\\\frac{dx}{x(x+1)}$发散，$\\\\int_{0}^{1} \\\\frac{dx}{x(x+1)}$收敛．'', ''$\\\\int_{1}^{+∞} \\\\frac{dx}{x(x+1)}$收敛，$\\\\int_{0}^{1} \\\\frac{dx}{x(x+1)}$发散．'']', "['D']", '
对于积分$\\int_{1}^{+∞} \\frac{dx}{x(x+1)}$，通过部分分式分解为$\\frac{1}{x} - \\frac{1}{x+1}$，计算得

$$
\\int_{1}^{M} (\\frac{1}{x} - \\frac{1}{x + 1}) dx = \\ln \\frac{M}{M + 1} + \\ln 2,
$$
当$M → +∞$时，$\\ln \\frac{M}{M+1} → 0$，因此积分收敛于$\\ln 2$。对于积分$\\int_{0}^{1} \\frac{dx}{x(x+1)}$，同样分解为$\\frac{1}{x} - \\frac{1}{x+1}$，在$x = 0$处为瑕点，计算

$$
\\int_{ϵ}^{1} (\\frac{1}{x} - \\frac{1}{x + 1}) dx = − \\ln 2 - \\ln ϵ + \\ln(ϵ + 1),
$$
当$ϵ → 0^{+}$时，$\\ln ϵ → −∞$，导致积分发散。因此，第一个积分收敛，第二个积分发散，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1804');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1804');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1804');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1805, '2005年考研数学卷4第10题', '', '考研数学2005年卷4真题', '/problems/other/1782', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1806, '2005年考研数学卷4第11题', '', '考研数学2005年卷4真题', '/problems/other/1783', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1807, '2005年考研数学卷4第12题', '简单', '考研数学2005年卷4真题', '设$A$,$B$,$C$均为$n$阶矩阵，$E$为$n$阶单位矩阵，若$B = E + AB$,$C = A + CA$，则$B - C$为', '[''$E$．'', ''$−E$．'', ''$A$．'', ''$−A$．'']', "['A']", '
由$B = E + AB$可得$B - AB = E$，即$(E - A)B = E$，因此$E - A$可逆，且$B = (E - A)−1$。
由$C = A + CA$可得$C - CA = A$，即$C(E - A) = A$，因此$C = A(E - A)−1$。
于是

$$
B - C = (E - A)−1 - A(E - A)−1 = (E - A)(E - A)−1 = E
$$
故$B - C = E$。', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1807');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1807');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1807');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1808, '2005年考研数学卷4第13题', '', '考研数学2005年卷4真题', '/problems/other/1739', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1809, '2005年考研数学卷4第14题', '简单', '考研数学2005年卷4真题', '设$X_{1}, X_{2}, ⋯  , X_{n}$为独立同分布的随机变量列，且均服从参数为$λ(λ > 1)$的指数分布，
记$Φ(x)$为标准正态分布函数，则', '[''$\\\\lim_{n→∞} P{\\\\frac{\\\\sum_{i=1}^{n} X_{i}-nλ}{λ\\\\sqrt{n}} ≤ x} = Φ(x)$．'', ''$\\\\lim_{n→∞} P{\\\\frac{\\\\sum_{i=1}^{n} X_{i}-nλ}{\\\\sqrt{nλ}} ≤ x} = Φ(x)$．'', ''$\\\\lim_{n→∞} P{\\\\frac{λ \\\\sum_{i=1}^{n} X_{i}-n}{\\\\sqrt{n}} ≤ x} = Φ(x)$．'', ''$\\\\lim_{n→∞} P{\\\\frac{\\\\sum_{i=1}^{n} X_{i}-λ}{\\\\sqrt{nλ}} ≤ x} = Φ(x)$．'']', "['C']", '
设随机变量$X_{i}$服从参数为$λ$的指数分布，则

$$
E \\lbrack X_{i} \\rbrack  = \\frac{1}{λ},  Var(X_{i}) = \\frac{1}{λ^{2}}.
$$
考虑选项 C：令$Y_{i} = λX_{i}$，则

$$
E \\lbrack Y_{i} \\rbrack  = 1,  Var(Y_{i}) = 1.
$$
那么

$$
\\sum_{i=1}^{n} Y_{i} = λ \\sum_{i=1}^{n} X_{i},
$$
且

$$
E  \\lbrack \\sum_{i=1}^{n} Y_{i} \\rbrack  = n,  Var (\\sum_{i=1}^{n} Y_{i}) = n.
$$
由中心极限定理，

$$
\\frac{\\sum_{i=1}^{n} Y_{i} - n}{\\sqrt{n}} = \\frac{λ \\sum_{i=1}^{n} X_{i} - n}{\\sqrt{n}}
$$
依分布收敛于标准正态分布，即极限概率为$Φ(x)$。其他选项的标准化形式均不正确：选项 A 和 B 中减去的项为$nλ$，但均值为$n/λ$；选项 D 中减去的项为$λ$，但均值为$n/λ$，当$n → ∞$时不再适用。', 9, 'Mogullzr', '2026-01-29 14:13:48', 9, 'Mogullzr', '2026-01-29 14:13:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1809');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1081', '1809');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1810, '2005年考研数学卷4第15题', '', '考研数学2005年卷4真题', '/problems/other/1787', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1811, '2005年考研数学卷4第16题', '', '考研数学2005年卷4真题', '/problems/other/1788', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1812, '2005年考研数学卷4第17题', '', '考研数学2005年卷4真题', '/problems/other/1770', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1813, '2005年考研数学卷4第18题', '简单', '考研数学2005年卷4真题', '（本题满分 9 分）求$f(x, y) = x^{2} - y^{2} + 2$在椭圆域$D = \\{(x, y)​x^{2} + \\frac{y^{2}}{4} ≤ 1\\}$上的最大值和最小值．', '[]', '最大值为 3，最小值为 -2。
', '
函数$f(x, y) = x^{2} - y^{2} + 2$在椭圆域$D = \\{(x, y)​x^{2} + \\frac{y^{2}}{4} ≤ 1\\}$上连续，且$D$是紧集，因此最大值和最小值存在。
首先，求内部临界点。计算梯度$∇f = (2x, −2y)$，令其为零得$x = 0, y = 0$，点$(0, 0)$在椭圆内部，$f(0, 0) = 2$。
其次，求边界$x^{2} + \\frac{y^{2}}{4} = 1$上的极值。使用拉格朗日乘数法，设$g(x, y) = x^{2} + \\frac{y^{2}}{4} - 1 = 0$，拉格朗日函数$L(x, y, λ) = x^{2} - y^{2} + 2 - λ (x^{2} + \\frac{y^{2}}{4} - 1)$。
求偏导数：


$$
\\frac{∂L}{∂x} = 2x(1 - λ) = 0,
$$



$$
\\frac{∂L}{∂y} = −2y (1 + \\frac{λ}{4}) = 0,
$$



$$
\\frac{∂L}{∂λ} = − (x^{2} + \\frac{y^{2}}{4} - 1) = 0.
$$

由$\\frac{∂L}{∂x} = 0$，得$x = 0$或$λ = 1$；由$\\frac{∂L}{∂y} = 0$，得$y = 0$或$λ = −4$。
若$x = 0$，代入约束得$\\frac{y^{2}}{4} = 1$，即$y = ±2$，对应点$(0, 2)$和$(0, −2)$，$f(0, 2) = f(0, −2) = −2$。若$y = 0$，代入约束得$x^{2} = 1$，即$x = ±1$，对应点$(1, 0)$和$(−1, 0)$，$f(1, 0) = f(−1, 0) = 3$。若$λ = 1$，则$\\frac{∂L}{∂y} = −2y (1 + \\frac{1}{4}) = 0$，得$y = 0$，已包含在$y = 0$的情况中。若$λ = −4$，则$\\frac{∂L}{∂x} = 2x(1 - (−4)) = 0$，得$x = 0$，已包含在$x = 0$的情况中。
比较所有候选点的函数值：内部点$(0, 0)$值为 2，边界点$(0, 2)$和$(0, −2)$值为 -2，边界点$(1, 0)$和$(−1, 0)$值为 3。因此，最大值为 3，最小值为 -2。
也可通过参数化边界验证：设$x = \\cos θ, y = 2 \\sin θ$，则


$$
f = \\cos^{2} θ - 4 \\sin^{2} θ + 2 = 3 - 5 \\sin^{2} θ,
$$

由$\\sin^{2} θ ∈  \\lbrack 0, 1 \\rbrack$得$f ∈  \\lbrack −2, 3 \\rbrack$，结论一致。
', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1813');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1813');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1814, '2005年考研数学卷4第19题', '', '考研数学2005年卷4真题', '/problems/other/1791', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1815, '2005年考研数学卷4第20题', '', '考研数学2005年卷4真题', '/problems/other/1792', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1816, '2005年考研数学卷4第21题', '简单', '考研数学2005年卷4真题', '（本题满分 13 分）设$A$为三阶矩阵，$α_{1}, α_{2}, α_{3}$是线性无关的三维列向量，且满足
$$
Aα_{1} = α_{1} + α_{2} + α_{3},  Aα_{2} = 2α_{2} + α_{3},  Aα_{3} = 2α_{2} + 3α_{3}.
$$
(1) 求矩阵$B$，使得$A(α_{1}, α_{2}, α_{3}) = (α_{1}, α_{2}, α_{3})B$；(2) 求矩阵$A$的特征值；(3) 求可逆矩阵$P$，使得$P^{−1}AP$为对角矩阵．', '[]', '
(1)$B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 2 & 2 \\\\
1 & 1 & 3 \\\\
\\end{array} \\right)$
(2) 矩阵$A$的特征值为$1$（二重）和$4$
(3)$P = \\left( \\begin{array}{ccc}
−α_{1} + α_{2} & −2α_{1} + α_{3} & α_{2} + α_{3} \\\\
\\end{array} \\right)$
', '
(1)由条件$Aα_{1} = α_{1} + α_{2} + α_{3}$，$Aα_{2} = 2α_{2} + α_{3}$，$Aα_{3} = 2α_{2} + 3α_{3}$，可知


$$
A(α_{1}, α_{2}, α_{3}) = (α_{1}, α_{2}, α_{3})B,
$$

其中$B$的列向量分别为$Aα_{1}, Aα_{2}, Aα_{3}$在基$α_{1}, α_{2}, α_{3}$下的坐标。
因此，$Aα_{1}$的坐标为$(1, 1, 1)T$，$Aα_{2}$的坐标为$(0, 2, 1)T$，$Aα_{3}$的坐标为$(0, 2, 3)T$，故


$$
B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 2 & 2 \\\\
1 & 1 & 3 \\\\
\\end{array} \\right) .
$$

(2)由于$α_{1}, α_{2}, α_{3}$线性无关，矩阵$B$是$A$在基$α_{1}, α_{2}, α_{3}$下的表示，即$A$与$B$相似，故特征值相同。计算$B$的特征值，解特征方程$∣B - λI∣ = 0$：

$$
\\begin{array}{ccccccc}
∣B - λI∣ & \\begin{array}{ccc}
1 - λ & 0 & 0 \\\\
1 & 2 - λ & 2 \\\\
1 & 1 & 3 - λ \\\\
\\end{array} &  &  &  &  &  \\\\
 & \\begin{array}{cc}
2 - λ & 2 \\\\
1 & 3 - λ \\\\
\\end{array} &  &  &  &  &  \\\\
 &  & 1 - λ & 0 & 0 &  &  \\\\
 &  &  &  &  & 2 - λ & 2 \\\\
 & = (1 - λ) \\lbrack (2 - λ)(3 - λ) - 2 \\rbrack  &  &  &  &  &  \\\\
 &  & 1 & 2 - λ & 2 &  &  \\\\
 &  &  &  &  & 1 & 3 - λ \\\\
 &  & 1 & 1 & 3 - λ &  &  \\\\
 & = (1 - λ)(λ^{2} - 5λ + 4) &  &  &  &  &  \\\\
 & = −(λ - 1)2(λ - 4). &  &  &  &  &  \\\\
\\end{array}
$$

令其为零，得特征值$λ = 1$（二重）和$λ = 4$，故$A$的特征值为$1$和$4$.
(3)求可逆矩阵$P$使得$P^{−1}AP$为对角矩阵，即求$A$的特征向量。由于$A$与$B$相似，先求$B$的特征向量。对于$λ = 1$，解$(B - I)v = 0$：

$$
B - I = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
1 & 1 & 2 \\\\
1 & 1 & 2 \\\\
\\end{array} \\right) ,  x_{1} + x_{2} + 2x_{3} = 0,
$$

特征向量为$v_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$,$v_{2} = \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$. 对于$λ = 4$，解$(B - 4I)v = 0$：

$$
B - 4I = \\left( \\begin{array}{ccc}
−3 & 0 & 0 \\\\
1 & −2 & 2 \\\\
1 & 1 & −1 \\\\
\\end{array} \\right) ,  x_{1} = 0, x_{2} = x_{3},
$$

特征向量为$v_{3} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$. 令$Q = \\left( \\begin{array}{ccc}
−1 & −2 & 0 \\\\
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)$，则$P = (α_{1}, α_{2}, α_{3})Q = \\left( \\begin{array}{ccc}
−α_{1} + α_{2} & −2α_{1} + α_{3} & α_{2} + α_{3} \\\\
\\end{array} \\right)$，使得$P^{−1}AP$为对角矩阵$diag(1, 1, 4)$.
', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1816');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1816');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1816');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1817, '2005年考研数学卷4第22题', '', '考研数学2005年卷4真题', '/problems/other/1794', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1818, '2005年考研数学卷4第23题', '简单', '考研数学2005年卷4真题', '（本题满分 13 分）设$X_{1}, X_{2}, ⋯  , X_{n}(n > 2)$为来自总体$N(0, σ^{2})$的简单随机样本，
其样本均值为$\\overline{X}$，记$Y_{i} = X_{i} - \\overline{X}$，$i = 1, 2, ⋯  , n$．求：(1)$Y_{i}$的方差$DY_{i}$，$i = 1, 2, ⋯  , n$；(2)$Y_{1}$与$Y_{n}$的协方差$Cov(Y_{1}, Y_{n})$；(3)$P\\{Y_{1} + Y_{n} ≤ 0\\}$．', '[]', '
(1)$DY_{i} = σ^{2} (1 - \\frac{1}{n})$
(2)$Cov(Y_{1}, Y_{n}) = −\\frac{σ^{2}}{n}$
(3)$P\\{Y_{1} + Y_{n} ≤ 0\\} = \\frac{1}{2}$
', '
由题设知$X_{1}, X_{2}, ⋯  , X_{n}$($n > 2$) 相互独立，且$EX_{i} = 0$,$DX_{i} = σ^{2}$($i = 1, 2, ⋯  , n$),

$$
E\\overline{X} = E (\\frac{1}{n} \\sum_{i=1}^{n} X_{i}) = \\frac{1}{n} \\sum_{i=1}^{n} EX_{i} = 0,
$$


$$
D\\overline{X} = D (\\frac{1}{n} \\sum_{i=1}^{n} X_{i}) = \\frac{1}{n^{2}} \\sum_{i=1}^{n} DX_{i} = \\frac{σ^{2}}{n}.
$$

(I)因为$Y_{i} = X_{i} - \\overline{X}$，所以对$i = 1, 2, ⋯  , n$，有$EY_{i} = 0$，

$$
\\begin{array}{cc}
DY_{i} & = D(X_{i} - \\overline{X}) = D ​(1 - \\frac{1}{n}) X_{i} - \\frac{1}{n} \\sum_{j\\neqi} X_{j}​ \\\\
 & = \\frac{(n - 1)2}{n^{2}}σ^{2} + \\frac{1}{n^{2}} ⋅ (n - 1)σ^{2} \\\\
\\end{array}
$$

(II)由协方差的定义：

$$
\\begin{array}{cc}
Cov(Y_{1}, Y_{n}) & = E(Y_{1}Y_{n}) - EY_{1}EY_{n} = E(Y_{1}Y_{n}) \\\\
 & = E \\lbrack (X_{1} - \\overline{X})(X_{n} - \\overline{X}) \\rbrack  \\\\
 & = E(X_{1}X_{n} - X_{1}\\overline{X} - X_{n}\\overline{X} + \\overline{X}^{2}) \\\\
\\end{array}
$$

因为$X_{1}, X_{n}$独立，有

$$
E(X_{1}X_{n}) = EX_{1}EX_{n} = 0 × 0 = 0.
$$

由方差的公式，有

$$
E(\\overline{X}^{2}) = D\\overline{X} + (E\\overline{X})2 = \\frac{σ^{2}}{n} + 0 = \\frac{σ^{2}}{n}.
$$

由期望的性质和方差的公式有

$$
\\begin{array}{cc}
E(X_{1}\\overline{X}) & = E (\\frac{1}{n} \\sum_{j=1}^{n} X_{1}X_{j}) \\\\
 & = E (\\frac{1}{n}X_{1}^{2} + \\frac{1}{n} \\sum_{j=2}^{n} X_{1}X_{j}) \\\\
 & = \\frac{1}{n}E(X_{1}^{2}) + \\frac{1}{n} \\sum_{j=2}^{n} E(X_{1})E(X_{j}) \\\\
 & = \\frac{1}{n}  \\lbrack DX_{1} + (EX_{1})2 \\rbrack  + 0 \\\\
 & = \\frac{1}{n}(σ^{2} + 0) \\\\
 & = \\frac{σ^{2}}{n}. \\\\
\\end{array}
$$

同理$E(X_{n}\\overline{X}) = \\frac{σ^{2}}{n}$。所以

$$
\\begin{array}{cc}
Cov(Y_{1}, Y_{n}) & = E(X_{1}X_{n}) - E(X_{1}\\overline{X}) - E(X_{n}\\overline{X}) + E(\\overline{X}^{2}) \\\\
 & = 0 - \\frac{σ^{2}}{n} - \\frac{σ^{2}}{n} + \\frac{σ^{2}}{n} \\\\
 & = −\\frac{σ^{2}}{n}. \\\\
\\end{array}
$$

(Ⅲ)因为$Y_{1} + Y_{n}$是相互独立的正态随机变量的线性组合：

$$
Y_{1} + Y_{n} = X_{1} - \\overline{X} + X_{n} - \\overline{X} = \\frac{n - 2}{n}X_{1} - \\frac{2}{n} \\sum_{i=2}^{n-1} X_{i} + \\frac{n - 2}{n}X_{n},
$$

所以$Y_{1} + Y_{n}$服从正态分布。由于$E(Y_{1} + Y_{n}) = 0$，故$P\\{Y_{1} + Y_{n} ⩽ 0\\} = \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:49', 9, 'Mogullzr', '2026-01-29 14:13:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1818');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1818');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1818');
