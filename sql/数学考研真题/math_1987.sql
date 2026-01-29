INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1, '1987年考研数学卷1第1题', '简单', '考研数学1987年卷1真题', '与两直线$\\begin{cases} x = 1 \\\\ y = −1 + t \\\\ z = 2 + t \\end{cases}$及$\\frac{x+1}{1} = \\frac{y+2}{2} = \\frac{z-1}{1}$都平行，且过原点的平面方程为 ______．', '[]', '
$x - y + z = 0$
', '
第一条直线的参数方程为$\\begin{cases} x = 1 \\\\ y = −1 + t \\\\ z = 2 + t \\end{cases}$，其方向向量为$d1​​ = (0, 1, 1)$。
第二条直线的对称方程为$\\frac{x+1}{1} = \\frac{y+2}{2} = \\frac{z-1}{1}$，其方向向量为$d2​​ = (1, 2, 1)$。
设所求平面的法向量为$n = (a, b, c)$。由于平面与两条直线平行，法向量与两条直线的方向向量垂直，因此有：


$$
n ⋅ d1​​ = 0  ⟹  b + c = 0
$$



$$
n ⋅ d2​​ = 0  ⟹  a + 2b + c = 0
$$

由$b + c = 0$得$c = −b$，代入第二式得$a + 2b - b = a + b = 0$，即$a = −b$。
因此法向量$n = (−b, b, −b) = b(−1, 1, −1)$，取$n = (1, −1, 1)$。
平面过原点$(0, 0, 0)$，故平面方程为：


$$
1 ⋅ x + (−1) ⋅ y + 1 ⋅ z = 0  ⟹  x - y + z = 0
$$

验证：法向量与$d1​​$和$d2​​$的点积均为零，表明平面与两直线平行，且过原点，满足条件。
', 9, 'Mogullzr', '2026-01-29 14:05:59', 9, 'Mogullzr', '2026-01-29 14:05:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2, '1987年考研数学卷1第2题', '简单', '考研数学1987年卷1真题', '当$x =$时，函数$y = x2^{x}$取得极小值 ______．', '[]', '
$x = −\\frac{1}{\\ln 2}$，极小值为$−\\frac{1}{e \\ln 2}$
', '
函数$y = x2^{x}$的导数为$y^{′} = 2^{x}(1 + x \\ln 2)$。令导数为零，即$2^{x}(1 + x \\ln 2) = 0$，由于$2^{x} > 0$，解得$1 + x \\ln 2 = 0$，即$x = −\\frac{1}{\\ln 2}$。
二阶导数为$y^{′′} = 2^{x} \\ln 2(2 + x \\ln 2)$。代入$x = −\\frac{1}{\\ln 2}$，得$y^{′′} = 2^{x} \\ln 2 > 0$，因此该点为极小值点。
代入$x = −\\frac{1}{\\ln 2}$到函数，得$y = (−\\frac{1}{\\ln 2}) ⋅ 2^{−\\frac{1}{\\ln 2}} = −\\frac{1}{\\ln 2} ⋅ e^{−1} = −\\frac{1}{e \\ln 2}$。
故函数在$x = −\\frac{1}{\\ln 2}$处取得极小值$−\\frac{1}{e \\ln 2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:00', 9, 'Mogullzr', '2026-01-29 14:06:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '2');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3, '1987年考研数学卷1第3题', '简单', '考研数学1987年卷1真题', '由曲线$y = \\ln x$与两直线$y = (e + 1) - x$及$y = 0$所围成的平面图形的面积是 ______．', '[]', '
$\\frac{3}{2}​$
', '
首先，求曲线与直线的交点．曲线$y = \\ln x$与直线$y = 0$的交点为$(1, 0)$；曲线$y = \\ln x$与直线$y = (e + 1) - x$的交点为$(e, 1)$；直线$y = (e + 1) - x$与$y = 0$的交点为$(e + 1, 0)$．因此，所围成的图形由三部分边界组成：从$(1, 0)$到$(e, 1)$沿$y = \\ln x$，从$(e, 1)$到$(e + 1, 0)$沿直线$y = (e + 1) - x$，从$(e + 1, 0)$到$(1, 0)$沿$y = 0$．
该图形的面积可通过积分计算．从$x = 1$到$x = e$，上边界为$y = \\ln x$，下边界为$y = 0$；从$x = e$到$x = e + 1$，上边界为$y = (e + 1) - x$，下边界为$y = 0$．因此，面积为：

$$
A = \\int_{1}^{e} \\ln x dx + \\int_{e}^{e+1}  \\lbrack (e + 1) - x \\rbrack   dx.
$$

计算第一积分：

$$
∫ \\ln x dx = x \\ln x - x + C,
$$

所以

$$
\\int_{1}^{e} \\ln x dx =  \\lbrack x \\ln x - x \\rbrack _{1}^{e} = (e ⋅ 1 - e) - (1 ⋅ 0 - 1) = (0) - (−1) = 1.
$$

计算第二积分：

$$
\\int_{e}^{e+1}  \\lbrack (e + 1) - x \\rbrack   dx =  \\lbrack (e + 1)x - \\frac{1}{2}x^{2} \\rbrack _{e}^{e+1} .
$$

在上限$x = e + 1$处：

$$
(e + 1)(e + 1) - \\frac{1}{2}(e + 1)2 = (e + 1)2 - \\frac{1}{2}(e + 1)2 = \\frac{1}{2}(e + 1)2.
$$

在下限$x = e$处：

$$
(e + 1)e - \\frac{1}{2}e^{2} = e(e + 1) - \\frac{1}{2}e^{2}.
$$

因此，

$$
\\int_{e}^{e+1}  \\lbrack (e + 1) - x \\rbrack   dx = \\frac{1}{2}(e + 1)2 -  \\lbrack e(e + 1) - \\frac{1}{2}e^{2} \\rbrack  = \\frac{1}{2}(e^{2} + 2e + 1) - e^{2} - e + \\frac{1}{2}e^{2} = \\frac{1}{2}e^{2} + e + \\frac{1}{2} - e^{2} - e + \\frac{1}{2}e^{2} = \\frac{1}{2}.
$$

故总面积为：

$$
A = 1 + \\frac{1}{2} = \\frac{3}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:00', 9, 'Mogullzr', '2026-01-29 14:06:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (4, '1987年考研数学卷1第4题', '简单', '考研数学1987年卷1真题', '设$L$为取正向的圆周$x^{2} + y^{2} = 9$，则曲线积分$∮_{L}(2xy - 2y)dx + (x^{2} - 4x)dy$的值是 ______．', '[]', '
$−18π$
', '
给定曲线积分$∮_{L}(2xy - 2y) dx + (x^{2} - 4x) dy$，其中$L$为取正向（逆时针方向）的圆周$x^{2} + y^{2} = 9$。
应用格林公式：$∮_{L} P dx + Q dy = \\iint_{D} (\\frac{∂Q}{∂x} - \\frac{∂P}{∂y})  dA$，其中$P = 2xy - 2y$，$Q = x^{2} - 4x$，$D$为曲线$L$所围区域。
计算偏导数：
$\\frac{∂Q}{∂x} = 2x - 4$，
$\\frac{∂P}{∂y} = 2x - 2$。
则


$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = (2x - 4) - (2x - 2) = −2
$$

因此，


$$
∮_{L}(2xy - 2y) dx + (x^{2} - 4x) dy = \\iint_{D}(−2) dA = −2 \\iint_{D} dA
$$

区域$D$是半径为 3 的圆，面积$\\iint_{D} dA = π ⋅ 3^{2} = 9π$。
故曲线积分的值为$−2 × 9π = −18π$。
', 9, 'Mogullzr', '2026-01-29 14:06:00', 9, 'Mogullzr', '2026-01-29 14:06:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '4');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '4');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '4');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (5, '1987年考研数学卷1第5题', '简单', '考研数学1987年卷1真题', '已知三维线性空间的一组基底为$α_{1} = (1, 1, 0)T$,$α_{2} = (1, 0, 1)T$,$α_{3} = (0, 1, 1)T$,
则向量$β = (2, 0, 0)T$在上述基底下的坐标是 ______．', '[]', '
$(1, 1, −1)$
', '
设向量$β$在基底$α_{1}, α_{2}, α_{3}$下的坐标为$(x, y, z)$，即$β = xα_{1} + yα_{2} + zα_{3}$。
代入基底向量和$β$的分量，得到方程组：


$$
\\begin{cases} x + y = 2 \\\\ x + z = 0 \\\\ y + z = 0 \\end{cases}
$$

由第二方程$x + z = 0$得$x = −z$，由第三方程$y + z = 0$得$y = −z$。
代入第一方程：$(−z) + (−z) = 2$，即$−2z = 2$，解得$z = −1$。
于是$x = −(−1) = 1$，$y = −(−1) = 1$。
因此坐标为$(1, 1, −1)$。
验证：$1 ⋅ α_{1} + 1 ⋅ α_{2} + (−1) ⋅ α_{3} = (1, 1, 0) + (1, 0, 1) + (0, −1, −1) = (2, 0, 0) = β$，正确。
', 9, 'Mogullzr', '2026-01-29 14:06:00', 9, 'Mogullzr', '2026-01-29 14:06:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '5');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '5');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '5');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (6, '1987年考研数学卷1第6题', '简单', '考研数学1987年卷1真题', '求正的常数$a$与$b$，使等式$\\lim_{x→0} \\frac{1}{bx-\\sin x} \\int_{0}^{x} \\frac{t^{2}}{\\sqrt{a+t^{2}}}dt = 1​$成立．', '[]', '
$a = 4$，$b = 1$
', '
考虑极限


$$
\\lim_{x→0} \\frac{1}{bx - \\sin x} \\int_{0}^{x} \\frac{t^{2}}{\\sqrt{a + t^{2}}} dt = 1
$$

当$x → 0$时，分子和分母均趋于 0，故应用洛必达法则：


$$
\\lim_{x→0} \\frac{\\frac{d}{dx} \\int_{0}^{x} \\frac{t^{2}}{\\sqrt{a+t^{2}}} dt}{\\frac{d}{dx}(bx - \\sin x)} = \\lim_{x→0} \\frac{\\frac{x^{2}}{\\sqrt{a+x^{2}}}}{b - \\cos x}
$$

若$b \\neq 1$，则分母$b - \\cos x → b - 1 \\neq 0$，分子$\\frac{x^{2}}{\\sqrt{a+x^{2}}} → 0$，极限为 0，与要求不符。故需$b = 1$。
当$b = 1$时，


$$
\\lim_{x→0} \\frac{\\frac{x^{2}}{\\sqrt{a+x^{2}}}}{1 - \\cos x}
$$

利用等价无穷小，$1 - \\cos x ∼ \\frac{x^{2}}{2}$，代入得


$$
\\lim_{x→0} \\frac{\\frac{x^{2}}{\\sqrt{a+x^{2}}}}{\\frac{x^{2}}{2}} = \\lim_{x→0} \\frac{2}{\\sqrt{a + x^{2}}} = \\frac{2}{\\sqrt{a}}
$$

令$\\frac{2}{\\sqrt{a}} = 1$，解得$a = 4$。
因此，正的常数$a = 4$，$b = 1$。
', 9, 'Mogullzr', '2026-01-29 14:06:00', 9, 'Mogullzr', '2026-01-29 14:06:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '6');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '6');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '6');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (7, '1987年考研数学卷1第7题', '简单', '考研数学1987年卷1真题', '（本题满分 3 分）设$f$,$g$为连续可微函数，$u = f(x, xy)$,$v = g(x + xy)$,
求$\\frac{∂u}{∂x}$，$\\frac{∂v}{∂x}$．', '[]', '

$$
\\frac{∂u}{∂x} = f_{1}(x, xy) + yf_{2}(x, xy),  \\frac{∂v}{∂x} = (1 + y)g^{′}(x + xy)
$$

其中$f_{1}$表示$f$对第一个变量的偏导数，$f_{2}$表示$f$对第二个变量的偏导数，$g^{′}$表示$g$的导数。
', '对于$u = f(x, xy)$，设$s = x$，$t = xy$，则$u = f(s, t)$。由链式法则，

$$
\\frac{∂u}{∂x} = \\frac{∂f}{∂s} ⋅ \\frac{∂s}{∂x} + \\frac{∂f}{∂t} ⋅ \\frac{∂t}{∂x} = f_{1}(x, xy) ⋅ 1 + f_{2}(x, xy) ⋅ y = f_{1}(x, xy) + yf_{2}(x, xy).
$$

对于$v = g(x + xy)$，设$w = x + xy$，则$v = g(w)$。由链式法则，

$$
\\frac{∂v}{∂x} = \\frac{dg}{dw} ⋅ \\frac{∂w}{∂x} = g^{′}(w) ⋅ (1 + y) = (1 + y)g^{′}(x + xy).
$$

', 9, 'Mogullzr', '2026-01-29 14:06:01', 9, 'Mogullzr', '2026-01-29 14:06:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '7');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '7');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '7');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (8, '1987年考研数学卷1第8题', '简单', '考研数学1987年卷1真题', '（本题满分 4 分）设矩阵$A$和$B$满足关系式$AB = A + 2B$，其中$\\begin{array}{ccc}
3 & 0 & 1 \\\\
1 & 1 & 0 \\\\
0 & 1 & 4 \\\\
\\end{array}$，求矩阵$B$．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
5 & −2 & −2 \\\\
4 & −3 & −2 \\\\
−2 & 2 & 3 \\\\
\\end{array} \\right)
$$

', '给定矩阵方程$AB = A + 2B$，其中$A = \\left( \\begin{array}{ccc}
3 & 0 & 1 \\\\
1 & 1 & 0 \\\\
0 & 1 & 4 \\\\
\\end{array} \\right)$。将方程重写为$AB - 2B = A$，即$(A - 2I)B = A$，其中$I$是单位矩阵。计算$A - 2I$：

$$
A - 2I = \\left( \\begin{array}{ccc}
3 & 0 & 1 \\\\
1 & 1 & 0 \\\\
0 & 1 & 4 \\\\
\\end{array} \\right) - \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
1 & −1 & 0 \\\\
0 & 1 & 2 \\\\
\\end{array} \\right)
$$

求逆矩阵$(A - 2I)−1$。通过行简化增广矩阵：

$$
\\begin{vmatrix}
1 & 0 & 1 & 1 & 0 & 0\\\\
1 & −1 & 0 & 0 & 1 & 0\\\\
0 & 1 & 2 & 0 & 0 & 1
\\end{vmatrix}
$$

行操作后得：

$$
\\begin{vmatrix}
1 & 0 & 0 & 2 & −1 & −1\\\\
0 & 1 & 0 & 2 & −2 & −1\\\\
0 & 0 & 1 & −1 & 1 & 1
\\end{vmatrix}
$$

所以$(A - 2I)−1 = \\left( \\begin{array}{ccc}
2 & −1 & −1 \\\\
2 & −2 & −1 \\\\
−1 & 1 & 1 \\\\
\\end{array} \\right)$。则$B = (A - 2I)−1A$：

$$
B = \\left( \\begin{array}{ccc}
2 & −1 & −1 \\\\
2 & −2 & −1 \\\\
−1 & 1 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
3 & 0 & 1 \\\\
1 & 1 & 0 \\\\
0 & 1 & 4 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
5 & −2 & −2 \\\\
4 & −3 & −2 \\\\
−2 & 2 & 3 \\\\
\\end{array} \\right)
$$

验证：计算$AB$和$A + 2B$，两者相等，确认结果正确。
', 9, 'Mogullzr', '2026-01-29 14:06:01', 9, 'Mogullzr', '2026-01-29 14:06:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '8');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '8');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '8');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (9, '1987年考研数学卷1第9题', '简单', '考研数学1987年卷1真题', '求微分方程$y^{′′′} + 6y^{′′} + (9 + a^{2})y^{′} = 1$的通解（一般解），其中常数$a > 0$．', '[]', '

$$
y = C_{1} + e^{−3t} (C_{2} \\cos(at) + C_{3} \\sin(at)) + \\frac{t}{9 + a^{2}}
$$

其中$C_{1}, C_{2}, C_{3}$为任意常数。
', '给定微分方程$y^{′′′} + 6y^{′′} + (9 + a^{2})y^{′} = 1$是一个三阶线性非齐次微分方程。首先求解对应的齐次方程$y^{′′′} + 6y^{′′} + (9 + a^{2})y^{′} = 0$。特征方程为$r^{3} + 6r^{2} + (9 + a^{2})r = 0$，提取因子$r$得$r (r^{2} + 6r + 9 + a^{2}) = 0$。解得特征根为$r = 0$和$r = −3 ± ai$（因为$r^{2} + 6r + 9 + a^{2} = (r + 3)2 + a^{2}$）。因此齐次通解为$y_{h} = C_{1} + e^{−3t}(C_{2} \\cos(at) + C_{3} \\sin(at))$。
对于非齐次方程，右边为常数 1，设特解形式为$y_{p} = kt$，则$y_{p}^{′} = k$，$y_{p}^{′′} = 0$，$y_{p}^{′′′} = 0$。代入方程得$(9 + a^{2})k = 1$，所以$k = \\frac{1}{9+a^{2}}$，特解为$y_{p} = \\frac{t}{9+a^{2}}$。
通解为齐次解与特解之和，即$y = y_{h} + y_{p} = C_{1} + e^{−3t}(C_{2} \\cos(at) + C_{3} \\sin(at)) + \\frac{t}{9+a^{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:01', 9, 'Mogullzr', '2026-01-29 14:06:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '9');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '9');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '9');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (10, '1987年考研数学卷1第10题', '简单', '考研数学1987年卷1真题', '设常数$k > 0$，则级数$\\sum_{n=1}^{∞}(−1)n\\frac{k+n}{n^{2}}$', '[''发散．'', ''绝对收敛．'', ''条件收敛．'', ''收敛或发散与k的取值有关．'']', "['C']", '考虑级数$\\sum_{n=1}^{∞}(−1)n\\frac{k+n}{n^{2}}$，其中$k > 0$。首先，检查绝对收敛性：$\\sum_{n=1}^{∞} ​(−1)n\\frac{k+n}{n^{2}}​ = \\sum_{n=1}^{∞} \\frac{k+n}{n^{2}} = \\sum_{n=1}^{∞} (\\frac{k}{n^{2}} + \\frac{1}{n})$。由于$\\sum_{n=1}^{∞} \\frac{k}{n^{2}}$收敛（$p$-级数，$p = 2 > 1$），但$\\sum_{n=1}^{∞} \\frac{1}{n}$发散（调和级数），因此该级数发散，故不绝对收敛。其次，检查交错级数收敛性：令$a_{n} = \\frac{k+n}{n^{2}}$，则$\\lim_{n→∞} a_{n} = \\lim_{n→∞} \\frac{k+n}{n^{2}} = 0$，且$a_{n}$单调递减（因为$a_{n+1} - a_{n} = \\frac{−(n^{2}+(1+2k)n+k)}{n^{2}(n+1)2} < 0$对于$n ≥ 1$和$k > 0$）。因此，由交错级数判别法（Leibniz 判别法），该级数收敛。综上，级数收敛但不绝对收敛，故为条件收敛，且与$k$的取值无关。', 9, 'Mogullzr', '2026-01-29 14:06:01', 9, 'Mogullzr', '2026-01-29 14:06:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '10');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '10');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '10');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (11, '1987年考研数学卷1第11题', '简单', '考研数学1987年卷1真题', '设$f(x)$为已知连续函数，$I = t \\int_{0}^{s/t}   f(tx)dx$，其中$s > 0$,$t > 0$，则$I$的值', '[''依赖于$s$和$t$．'', ''依赖于$s$,$t$,$x$．'', ''依赖于$t$和$x$，不依赖于$s$．'', ''依赖于$s$，不依赖于$t$．'']', "['D']", '给定$I = t \\int_{0}^{s/t} f(tx) dx$，其中$f(x)$是连续函数，$s > 0$，$t > 0$。通过变量代换，令$u = tx$，则当$x = 0$时，$u = 0$；当$x = s/t$时，$u = s$。且$du = t dx$，即$dx = du/t$。代入积分得：

$$
I = t \\int_{0}^{s/t} f(tx) dx = t \\int_{0}^{s} f(u) ⋅ \\frac{du}{t} = \\int_{0}^{s} f(u) du
$$
结果$I = \\int_{0}^{s} f(u) du$只依赖于$s$，而不依赖于$t$。积分变量$x$是哑变量，不影响$I$的值。因此，$I$依赖于$s$，不依赖于$t$，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:06:01', 9, 'Mogullzr', '2026-01-29 14:06:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '11');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '11');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '11');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (12, '1987年考研数学卷1第12题', '简单', '考研数学1987年卷1真题', '设$\\lim_{x→a} \\frac{f(x)-f(a)}{(x-a)2} = −1$，则在点$x = a$处', '[''$f(x)$的导数存在，且$f^{′}(a) \\\\neq a$．'', ''$f(x)$取得极大值．'', ''$f(x)$取得极小值．'', ''$f(x)$的导数不存在．'']', "['B']", '给定极限$\\lim_{x→a} \\frac{f(x)-f(a)}{(x-a)2} = −1$。由于$(x - a)2 > 0$对于$x \\neq a$，极限为负表明存在邻域使得对于$x \\neq a$，有$\\frac{f(x)-f(a)}{(x-a)2} < 0$，即$f(x) - f(a) < 0$，因此$f(x) < f(a)$对于$x$在$a$附近且$x \\neq a$，故$f(x)$在$x = a$处取得极大值。此外，从极限存在可推知$f^{′}(a)$存在且为零，但选项 B 直接给出极大值，为正确答案。选项 A 不一定成立，因为若$a = 0$则$f^{′}(a) = a$；选项 C 与极大值矛盾；选项 D 错误因为导数存在。', 9, 'Mogullzr', '2026-01-29 14:06:01', 9, 'Mogullzr', '2026-01-29 14:06:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '12');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '12');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '12');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (13, '1987年考研数学卷1第13题', '简单', '考研数学1987年卷1真题', '设$A$为$n$阶方阵，且$A$的行列式$∣A∣ = a \\neq 0$，而$A^{∗}$为$A$的伴随矩阵，则$∣A^{∗}∣$等于', '[''$a$．'', ''$\\\\frac{1}{a}$．'', ''$a^{n-1}$．'', ''$a$．'']', "['C']", '根据伴随矩阵的性质，有公式$AA^{∗} = A^{∗}A = ∣A∣I$，其中$I$是单位矩阵。对等式两边取行列式，得到$∣AA^{∗}∣ = ∣∣A∣I∣$。左边行列式$∣AA^{∗}∣ = ∣A∣∣A^{∗}∣$，右边行列式$∣∣A∣I∣ = ∣A∣^{n}$，因为$∣A∣I$是标量矩阵。因此，$∣A∣∣A^{∗}∣ = ∣A∣^{n}$。由于$∣A∣ = a \\neq 0$，可除以$a$得到$∣A^{∗}∣ = a^{n-1}$。故正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:06:02', 9, 'Mogullzr', '2026-01-29 14:06:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '13');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '13');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '13');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (14, '1987年考研数学卷1第14题', '简单', '考研数学1987年卷1真题', '求幂级数$\\sum_{n=1}^{∞} \\frac{1}{n2^{n}}x^{n+1}$的收敛域，并求其和函数．', '[]', '
收敛域为$\\lbrack −2, 2)$，和函数为$f(x) = −x \\ln (1 - \\frac{x}{2})$。
', '
考虑幂级数$\\sum_{n=1}^{∞} \\frac{1}{n2^{n}}x^{n+1}$。将其写为$x \\sum_{n=1}^{∞} \\frac{1}{n2^{n}}x^{n}$，令$S(x) = \\sum_{n=1}^{∞} \\frac{1}{n2^{n}}x^{n}$。
对$S(x)$使用比值判别法：令$a_{n} = \\frac{1}{n2^{n}}$，则


$$
\\lim_{n→∞} ​\\frac{a_{n+1}}{a_{n}}​ = \\lim_{n→∞} \\frac{n}{(n + 1) ⋅ 2} = \\frac{1}{2},
$$

收敛半径$R = 2$。
当$x = 2$时，$S(2) = \\sum_{n=1}^{∞} \\frac{1}{n}$发散；
当$x = −2$时，$S(−2) = \\sum_{n=1}^{∞} \\frac{(−1)n}{n}$收敛。
故$S(x)$的收敛域为$\\lbrack −2, 2)$，原级数的收敛域也为$\\lbrack −2, 2)$。
求和的函数：当$∣x∣ < 2$时，


$$
S(x) = \\sum_{n=1}^{∞} \\frac{1}{n} (\\frac{x}{2})^{n} = − \\ln (1 - \\frac{x}{2}) ,
$$

该式在$x = −2$时也成立。
因此，原级数的和函数为


$$
f(x) = xS(x) = −x \\ln (1 - \\frac{x}{2}) ,  x ∈  \\lbrack −2, 2).
$$

', 9, 'Mogullzr', '2026-01-29 14:06:02', 9, 'Mogullzr', '2026-01-29 14:06:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '14');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '14');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '14');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (15, '1987年考研数学卷1第15题', '简单', '考研数学1987年卷1真题', '计算曲面积分
$$
I = \\iint_{Σ} x(8y + 1)dydz + 2(1 - y^{2})dzdx - 4yzdxdy,
$$
其中$Σ$是由曲线$\\begin{cases} z = \\sqrt{y - 1} \\\\ x = 0 \\end{cases}$（$1 ≤ y ≤ 3$）
绕$y$轴旋转一周所形成的曲面，它的法向量与$y$轴正向的夹角恒大于$\\frac{π}{2}.$', '[]', '$34π$
', '曲面积分$I = \\iint_{Σ} x(8y + 1) dy dz + 2(1 - y^{2}) dz dx - 4yz dx dy$，其中$Σ$是由曲线$\\begin{cases} z = \\sqrt{y - 1} \\\\ x = 0 \\end{cases}$（$1 ≤ y ≤ 3$) 绕$y$轴旋转一周形成的曲面，法向量与$y$轴正向夹角恒大于$\\frac{π}{2}$。
方法一：参数化计算
曲面参数化为：

$$
r(y, θ) = (\\sqrt{y - 1} \\cos θ,  y,  \\sqrt{y - 1} \\sin θ) ,  y ∈  \\lbrack 1, 3 \\rbrack ,  θ ∈  \\lbrack 0, 2π)
$$

计算偏导数：

$$
\\frac{∂r}{∂y} = (\\frac{\\cos θ}{2\\sqrt{y - 1}},  1,  \\frac{\\sin θ}{2\\sqrt{y - 1}}) ,  \\frac{∂r}{∂θ} = (−\\sqrt{y - 1} \\sin θ,  0,  \\sqrt{y - 1} \\cos θ)
$$

叉积：

$$
\\frac{∂r}{∂y} × \\frac{∂r}{∂θ} = (\\sqrt{y - 1} \\cos θ,  −\\frac{1}{2},  \\sqrt{y - 1} \\sin θ)
$$

法向量的$y$分量为负，符合条件。有向面积元：

$$
dS = (\\sqrt{y - 1} \\cos θ,  −\\frac{1}{2},  \\sqrt{y - 1} \\sin θ) dy dθ
$$

向量场$F = (P, Q, R) = (x(8y + 1),  2(1 - y^{2}),  −4yz)$，参数化后：

$$
F = (\\sqrt{y - 1} \\cos θ(8y + 1),  2(1 - y^{2}),  −4y\\sqrt{y - 1} \\sin θ)
$$

点积：

$$
F ⋅ dS = (y - 1) \\cos^{2} θ(8y + 1) + (y^{2} - 1) - 4y(y - 1) \\sin^{2} θ
$$

化简为：

$$
F ⋅ dS = (y - 1)  \\lbrack (12y + 1) \\cos^{2} θ + 1 - 3y \\rbrack
$$

积分：

$$
I = \\int_{0}^{2π} \\int_{1}^{3}(y - 1)  \\lbrack (12y + 1) \\cos^{2} θ + 1 - 3y \\rbrack  dy dθ
$$

先对$θ$积分：

$$
\\int_{0}^{2π} \\cos^{2} θ dθ = π,  \\int_{0}^{2π}(1 - 3y) dθ = 2π(1 - 3y)
$$

所以：

$$
I = \\int_{1}^{3}(y - 1)  \\lbrack π(12y + 1) + 2π(1 - 3y) \\rbrack  dy = π \\int_{1}^{3}(y - 1)(6y + 3) dy
$$

计算：

$$
\\int_{1}^{3}(y - 1)(6y + 3) dy = \\int_{1}^{3}(6y^{2} - 3y - 3) dy =  \\lbrack 2y^{3} - \\frac{3}{2}y^{2} - 3y \\rbrack _{1}^{3} = 34
$$

因此：

$$
I = 34π
$$

方法二：高斯散度定理
考虑封闭曲面由$Σ$和顶部圆盘$S_{top}$（$y = 3, x^{2} + z^{2} ≤ 2$）构成，法向量向外。计算散度：

$$
∇ ⋅ F = \\frac{∂}{∂x} \\lbrack x(8y + 1) \\rbrack  + \\frac{∂}{∂y} \\lbrack 2(1 - y^{2}) \\rbrack  + \\frac{∂}{∂z} \\lbrack −4yz \\rbrack  = (8y + 1) + (−4y) + (−4y) = 1
$$

体积分：

$$
\\iiint_{Ω} ∇ ⋅ F dV = \\iiint_{Ω} 1 dV = ofΩ
$$

其中$Ω$是区域$1 ≤ y ≤ 3, x^{2} + z^{2} ≤ y - 1$：

$$
V = \\int_{1}^{3} π(y - 1) dy = π  \\lbrack \\frac{1}{2}(y - 1)2 \\rbrack _{1}^{3} = 2π
$$

在$S_{top}$上，法向量为$(0, 1, 0)$，：

$$
\\iint_{S_{top}} F ⋅ dS = \\iint_{x^{2}+z^{2}≤2} 2(1 - 3^{2}) dA = −16 ⋅ π ⋅ 2 = −32π
$$

由高斯定理：

$$
\\iint_{Σ} F ⋅ dS = V - \\iint_{S_{top}} F ⋅ dS = 2π - (−32π) = 34π
$$

两种方法均得$I = 34π$。
', 9, 'Mogullzr', '2026-01-29 14:06:02', 9, 'Mogullzr', '2026-01-29 14:06:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '15');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '15');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (16, '1987年考研数学卷1第16题', '简单', '考研数学1987年卷1真题', '设函数$f(x)$在闭区间$\\lbrack 0, 1 \\rbrack$上可微，对于$\\lbrack 0, 1 \\rbrack$上的每一个$x$，
函数$f(x)$的值都在开区间$(0, 1)$内，且$f^{′}(x) \\neq 1$，
证明在$(0, 1)$内有且仅有一个$x$，使$f(x) = x$．', '[]', '
在$(0, 1)$内有且仅有一个$x$，使$f(x) = x$。
', '
考虑函数$g(x) = f(x) - x$。由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上可微，故$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续且可微。
由条件，对于 every$x ∈  \\lbrack 0, 1 \\rbrack$，有$f(x) ∈ (0, 1)$，因此：
当$x = 0$时，$g(0) = f(0) - 0 > 0$，当$x = 1$时，$g(1) = f(1) - 1 < 0$。
由中间值定理，存在$c ∈ (0, 1)$使得$g(c) = 0$，即$f(c) = c$，故存在性得证。
假设存在两个点$x_{1}, x_{2} ∈ (0, 1)$且$x_{1} \\neq x_{2}$，使得$f(x_{1}) = x_{1}$和$f(x_{2}) = x_{2}$，则$g(x_{1}) = 0$和$g(x_{2}) = 0$。
由罗尔定理，存在$ξ ∈ (x_{1}, x_{2})$使得$g^{′}(ξ) = 0$。
但$g^{′}(x) = f^{′}(x) - 1$，故$f^{′}(ξ) = 1$，与条件$f^{′}(x) \\neq 1$对于所有$x ∈  \\lbrack 0, 1 \\rbrack$矛盾。
因此，不可能有两个不动点，唯一性得证。
综上，在$(0, 1)$内有且仅有一个$x$使$f(x) = x$。
', 9, 'Mogullzr', '2026-01-29 14:06:02', 9, 'Mogullzr', '2026-01-29 14:06:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '16');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '16');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '16');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (17, '1987年考研数学卷1第17题', '简单', '考研数学1987年卷1真题', '问$a$,$b$为何值时，线性方程组$\\begin{cases} x_{1} + x_{2} + x_{3} + x_{4} = 0 \\\\ x_{2} + 2x_{3} + 2x_{4} = 1 \\\\ −x_{2} + (a - 3)x_{3} - 2x_{4} = b \\\\ 3x_{1} + 2x_{2} + x_{3} + ax_{4} = −1 \\end{cases}$有唯一解、无解、有无穷多组解？并求出有无穷多组解时的通解．', '[]', '当$a \\neq 1$时，方程组有唯一解；
当$a = 1$且$b \\neq −1$时，方程组无解；
当$a = 1$且$b = −1$时，方程组有无穷多组解，通解为


$$
\\begin{cases} x_{1} = −1 + c + d \\\\ x_{2} = 1 - 2c - 2d \\\\ x_{3} = c \\\\ x_{4} = d \\end{cases}
$$

即

$$
x = (−1, 1, 0, 0)T + c_{1}(1, −2, 1, 0)T + c_{2}(1, −2, 0, 1)T
$$

其中$c, d$为任意常数。
', '写出方程组的增广矩阵并施行行变换：

$$
\\left( \\begin{array}{cccc|c}
1 & 1 & 1 & 1 & 0 \\\\
0 & 1 & 2 & 2 & 1 \\\\
0 & −1 & a - 3 & −2 & b \\\\
3 & 2 & 1 & a & −1 \\\\
\\end{array} \\right) R4​−3R1​​ \\left( \\begin{array}{cccc|c}
1 & 1 & 1 & 1 & 0 \\\\
0 & 1 & 2 & 2 & 1 \\\\
0 & −1 & a - 3 & −2 & b \\\\
0 & −1 & −2 & a - 3 & −1 \\\\
\\end{array} \\right) R1​−R2​,R3​+R2​,R4​+R2​​ \\left( \\begin{array}{cccc|c}
1 & 0 & −1 & −1 & −1 \\\\
0 & 1 & 2 & 2 & 1 \\\\
0 & 0 & a - 1 & 0 & b + 1 \\\\
0 & 0 & 0 & a - 1 & 0 \\\\
\\end{array} \\right)
$$

简化后的增广矩阵对应的系数矩阵为上三角矩阵，其行列式为$(a - 1)2$。
当$a \\neq 1$时，系数矩阵满秩，增广矩阵的秩也为 4，故方程组有唯一解。
当$a = 1$时，增广矩阵变为：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & −1 & −1 & −1 \\\\
0 & 1 & 2 & 2 & 1 \\\\
0 & 0 & 0 & 0 & b + 1 \\\\
0 & 0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

若$b \\neq −1$，则第三行出现矛盾$0 = b + 1 \\neq 0$，故无解；
若$b = −1$，则第三行为$0 = 0$，有效方程仅为前两行：

$$
\\begin{cases} x_{1} - x_{3} - x_{4} = −1 \\\\ x_{2} + 2x_{3} + 2x_{4} = 1 \\end{cases}
$$

令$x_{3} = c$，$x_{4} = d$（$c, d$为任意常数），得通解：

$$
\\begin{cases} x_{1} = −1 + c + d \\\\ x_{2} = 1 - 2c - 2d \\\\ x_{3} = c \\\\ x_{4} = d \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:02', 9, 'Mogullzr', '2026-01-29 14:06:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '17');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '17');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (18, '1987年考研数学卷1第18题', '简单', '考研数学1987年卷1真题', '设在一次试验中事件$A$发生的概率为$p$，现进行$n$次独立试验，
则$A$至少发生一次的概率为 ______；而事件$A$至多发生一次的概率为 ______．', '[]', '
$1 - (1 - p)n$，$(1 - p)n + np(1 - p)n−1$
', '
对于事件A至少发生一次的概率，可以通过求对立事件（即A一次都不发生）的概率来计算。A一次都不发生的概率为$(1 - p)n$，因此A至少发生一次的概率为$1 - (1 - p)n$。
对于事件A至多发生一次的概率，即A发生0次或1次的概率。A发生0次的概率为$(1 - p)n$，A发生1次的概率为$(\\frac{n}{1})p(1 - p)n−1 = np(1 - p)n−1$，因此A至多发生一次的概率为$(1 - p)n + np(1 - p)n−1$。
', 9, 'Mogullzr', '2026-01-29 14:06:03', 9, 'Mogullzr', '2026-01-29 14:06:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '18');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '18');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (19, '1987年考研数学卷1第19题', '简单', '考研数学1987年卷1真题', '三个箱子，第一个箱子中有$4$个黑球$1$个白球，第二个箱子中有$3$个黑球$3$个白球，
第三个箱子中有$3$个黑球$5$个白球．现随机地取一个箱子，再从这个箱子中取出$1$个球，
这个球为白球的概率等于 ______．已知取出的球是白球，此球属于第二个箱子的概率为 ______．', '[]', '
$\\frac{53}{120}$，$\\frac{20}{53}$
', '
设事件$B_{1}$、$B_{2}$、$B_{3}$分别表示取到第一个、第二个、第三个箱子，则$P(B_{1}) = P(B_{2}) = P(B_{3}) = \\frac{1}{3}$。
设事件$W$表示取到白球。
根据全概率公式，取到白球的概率为：


$$
P(W) = P(W ∣ B_{1})P(B_{1}) + P(W ∣ B_{2})P(B_{2}) + P(W ∣ B_{3})P(B_{3})
$$

其中，
$P(W ∣ B_{1}) = \\frac{1}{5}$（第一个箱子有 1 个白球和 4 个黑球），
$P(W ∣ B_{2}) = \\frac{3}{6} = \\frac{1}{2}$（第二个箱子有 3 个白球和 3 个黑球），
$P(W ∣ B_{3}) = \\frac{5}{8}$（第三个箱子有 5 个白球和 3 个黑球）。
代入计算：


$$
P(W) = \\frac{1}{5} × \\frac{1}{3} + \\frac{1}{2} × \\frac{1}{3} + \\frac{5}{8} × \\frac{1}{3} = \\frac{1}{3} (\\frac{1}{5} + \\frac{1}{2} + \\frac{5}{8})
$$

计算括号内：


$$
\\frac{1}{5} + \\frac{1}{2} + \\frac{5}{8} = \\frac{8}{40} + \\frac{20}{40} + \\frac{25}{40} = \\frac{53}{40}
$$

所以


$$
P(W) = \\frac{1}{3} × \\frac{53}{40} = \\frac{53}{120}
$$

已知取出的球是白球，求此球属于第二个箱子的概率，即$P(B_{2} ∣ W)$。
根据贝叶斯定理：


$$
P(B_{2} ∣ W) = \\frac{P(W ∣ B_{2})P(B_{2})}{P(W)} = \\frac{\\frac{1}{2} × \\frac{1}{3}}{\\frac{53}{120}} = \\frac{\\frac{1}{6}}{\\frac{53}{120}} = \\frac{1}{6} × \\frac{120}{53} = \\frac{120}{6 × 53} = \\frac{20}{53}
$$

因此，第一个空填$\\frac{53}{120}$，第二个空填$\\frac{20}{53}$。
', 9, 'Mogullzr', '2026-01-29 14:06:03', 9, 'Mogullzr', '2026-01-29 14:06:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '19');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '19');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (20, '1987年考研数学卷1第20题', '简单', '考研数学1987年卷1真题', '已知连续随机变量$X$的概率密度为$f(x) = \\frac{1}{\\sqrt{π}}e^{−x^{2}+2x-1}$，
则$X$的数学期望为 ______；$X$的方差为 ______．', '[]', '$EX = 1, DX = \\frac{1}{2}$
', '
给定概率密度函数$f(x) = \\frac{1}{\\sqrt{π}}e^{−x^{2}+2x-1}$，通过完成平方，指数部分$−x^{2} + 2x - 1 = −(x - 1)2$，因此$f(x) = \\frac{1}{\\sqrt{π}}e^{−(x-1)2}$。
这与正态分布的概率密度函数$\\frac{1}{σ\\sqrt{2π}}e^{−\\frac{(x-μ)2}{2σ^{2}}}$比较，可得$μ = 1$，且$\\frac{1}{2σ^{2}} = 1$，即$σ^{2} = \\frac{1}{2}$。
因此，数学期望$E \\lbrack X \\rbrack  = μ = 1$，方差$Var(X) = σ^{2} = \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:03', 9, 'Mogullzr', '2026-01-29 14:06:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '20');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '20');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '20');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (21, '1987年考研数学卷1第21题', '简单', '考研数学1987年卷1真题', '设随机变量$X$,$Y$相互独立，其概率密度函数分别为
$$
f_{X}(x) = \\begin{cases} 1 & 0 ≤ x ≤ 1 \\\\ 0 & 其它 \\end{cases}  f_{Y}(y) = \\begin{cases} e^{−y} & y > 0 \\\\ 0 & y ≤ 0 \\end{cases}
$$
求随机变量$Z = 2X + Y$的概率密度函数．', '[]', '

$$
f_{Z}(z) = \\begin{cases} 0 & z ≤ 0 \\\\ \\frac{1}{2}(1 - e^{−z}) & 0 < z ≤ 2 \\\\ \\frac{1}{2}(e^{2} - 1)e^{−z} & z > 2. \\end{cases}
$$

', '由于$X$和$Y$相互独立，其联合概率密度函数为$f_{X,Y}(x, y) = f_{X}(x)f_{Y}(y) = e^{−y}$，其中$0 ≤ x ≤ 1$，$y > 0$，否则为 0。考虑$Z = 2X + Y$，令$W = 2X$，则$Z = W + Y$。先求$W$的概率密度函数：由于$X ∼ U(0, 1)$，有$f_{W}(w) = \\frac{1}{2}$，其中$0 ≤ w ≤ 2$，否则为 0。然后利用卷积公式求$Z$的概率密度函数：

$$
f_{Z}(z) = \\int_{−∞}^{∞} f_{W}(w)f_{Y}(z - w) dw.
$$

其中$f_{Y}(z - w) = e^{−(z-w)}$当$z - w > 0$，即$w < z$。结合$f_{W}(w)$的非零区域$0 ≤ w ≤ 2$，积分需满足$0 ≤ w ≤ \\min(2, z)$且$w < z$。因此，分情况讨论：
当$z ≤ 0$时，无满足条件的$w$，故$f_{Z}(z) = 0$。当$0 < z ≤ 2$时，积分上限为$z$，有$f_{Z}(z) = \\int_{0}^{z} \\frac{1}{2}e^{−(z-w)} dw = \\frac{1}{2}e^{−z} \\int_{0}^{z} e^{w} dw = \\frac{1}{2}e^{−z}(e^{z} - 1) = \\frac{1}{2}(1 - e^{−z}).$当$z > 2$时，积分上限为$2$，有$f_{Z}(z) = \\int_{0}^{2} \\frac{1}{2}e^{−(z-w)} dw = \\frac{1}{2}e^{−z} \\int_{0}^{2} e^{w} dw = \\frac{1}{2}e^{−z}(e^{2} - 1) = \\frac{1}{2}(e^{2} - 1)e^{−z}.$验证概率密度函数的积分值为 1，确认结果正确。
', 9, 'Mogullzr', '2026-01-29 14:06:03', 9, 'Mogullzr', '2026-01-29 14:06:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '21');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '21');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '21');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (22, '1987年考研数学卷2第1题', '', '考研数学1987年卷2真题', '/problems/other/1', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (23, '1987年考研数学卷2第2题', '', '考研数学1987年卷2真题', '/problems/other/2', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (24, '1987年考研数学卷2第3题', '', '考研数学1987年卷2真题', '/problems/other/3', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (25, '1987年考研数学卷2第4题', '', '考研数学1987年卷2真题', '/problems/other/4', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (26, '1987年考研数学卷2第5题', '', '考研数学1987年卷2真题', '/problems/other/5', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (27, '1987年考研数学卷2第6题', '简单', '考研数学1987年卷2真题', '（本题满分 6 分）计算定积分$\\int_{−2}^{2}(∣x∣ + x)e^{−∣x∣}dx$．', '[]', '$2 - 6e^{−2}$
', '给定积分$\\int_{−2}^{2}(∣x∣ + x)e^{−∣x∣} dx$。由于被积函数中包含绝对值，考虑分段计算。当$x ∈  \\lbrack −2, 0 \\rbrack$时，$∣x∣ = −x$，因此$∣x∣ + x = −x + x = 0$，被积函数为 0，积分值为 0。当$x ∈  \\lbrack 0, 2 \\rbrack$时，$∣x∣ = x$，因此$∣x∣ + x = x + x = 2x$，且$e^{−∣x∣} = e^{−x}$，被积函数为$2xe^{−x}$。因此，积分简化为：

$$
\\int_{−2}^{2}(∣x∣ + x)e^{−∣x∣} dx = \\int_{0}^{2} 2xe^{−x} dx
$$

计算积分$\\int_{0}^{2} 2xe^{−x} dx$。使用分部积分法，设$u = x$，$dv = e^{−x} dx$，则$du = dx$，$v = −e^{−x}$。有：

$$
∫ xe^{−x} dx = −xe^{−x} - ∫(−e^{−x}) dx = −xe^{−x} + ∫ e^{−x} dx = −xe^{−x} - e^{−x} + C = −e^{−x}(x + 1) + C
$$

代入积分上下限：

$$
\\int_{0}^{2} xe^{−x} dx =  \\lbrack −e^{−x}(x + 1) \\rbrack _{0}^{2} = (−e^{−2}(2 + 1)) - (−e^{0}(0 + 1)) = −3e^{−2} - (−1) = 1 - 3e^{−2}
$$

因此，

$$
\\int_{0}^{2} 2xe^{−x} dx = 2 (1 - 3e^{−2}) = 2 - 6e^{−2}
$$

故原积分的值为$2 - 6e^{−2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '27');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '27');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '27');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (28, '1987年考研数学卷2第7题', '', '考研数学1987年卷2真题', '/problems/other/6', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (29, '1987年考研数学卷2第8题', '简单', '考研数学1987年卷2真题', '设$z = f(u, x, z)$,$u = xey$，其中$f$具有二阶连续偏导数，求$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂^{2}f}{∂u^{2}}xe^{2y} + (\\frac{∂^{2}f}{∂u∂y} + \\frac{∂f}{∂u} + \\frac{∂^{2}f}{∂u∂x}x) e^{y} + \\frac{∂^{2}f}{∂x∂y}
$$

', '设$z = f(u, x, y)$，其中$u = xe^{y}$。首先求一阶偏导数$\\frac{∂z}{∂x}$：

$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u}\\frac{∂u}{∂x} + \\frac{∂f}{∂x} = \\frac{∂f}{∂u}e^{y} + \\frac{∂f}{∂x}.
$$

然后求混合偏导数$\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂z}{∂x})$：

$$
\\frac{∂}{∂y} (\\frac{∂z}{∂x}) = \\frac{∂}{∂y} (\\frac{∂f}{∂u}e^{y} + \\frac{∂f}{∂x}) .
$$

计算各项：

$$
\\frac{∂}{∂y} (\\frac{∂f}{∂u}e^{y}) = (\\frac{∂}{∂y}\\frac{∂f}{∂u}) e^{y} + \\frac{∂f}{∂u}e^{y},
$$

其中

$$
\\frac{∂}{∂y}\\frac{∂f}{∂u} = \\frac{∂^{2}f}{∂u^{2}}\\frac{∂u}{∂y} + \\frac{∂^{2}f}{∂u∂y} = \\frac{∂^{2}f}{∂u^{2}}xe^{y} + \\frac{∂^{2}f}{∂u∂y},
$$

所以

$$
\\frac{∂}{∂y} (\\frac{∂f}{∂u}e^{y}) = (\\frac{∂^{2}f}{∂u^{2}}xe^{y} + \\frac{∂^{2}f}{∂u∂y}) e^{y} + \\frac{∂f}{∂u}e^{y} = \\frac{∂^{2}f}{∂u^{2}}xe^{2y} + \\frac{∂^{2}f}{∂u∂y}e^{y} + \\frac{∂f}{∂u}e^{y}.
$$

另外，

$$
\\frac{∂}{∂y}\\frac{∂f}{∂x} = \\frac{∂^{2}f}{∂x∂u}\\frac{∂u}{∂y} + \\frac{∂^{2}f}{∂x∂y} = \\frac{∂^{2}f}{∂u∂x}xe^{y} + \\frac{∂^{2}f}{∂x∂y}.
$$

将以上结果合并：

$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂^{2}f}{∂u^{2}}xe^{2y} + \\frac{∂^{2}f}{∂u∂y}e^{y} + \\frac{∂f}{∂u}e^{y} + \\frac{∂^{2}f}{∂u∂x}xe^{y} + \\frac{∂^{2}f}{∂x∂y}.
$$

整理得：

$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂^{2}f}{∂u^{2}}xe^{2y} + (\\frac{∂^{2}f}{∂u∂y} + \\frac{∂f}{∂u} + \\frac{∂^{2}f}{∂u∂x}x) e^{y} + \\frac{∂^{2}f}{∂x∂y}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '29');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '29');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '29');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (30, '1987年考研数学卷2第9题', '', '考研数学1987年卷2真题', '/problems/other/9', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (31, '1987年考研数学卷2第10题', '', '考研数学1987年卷2真题', '/problems/other/10', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (32, '1987年考研数学卷2第11题', '', '考研数学1987年卷2真题', '/problems/other/11', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (33, '1987年考研数学卷2第12题', '', '考研数学1987年卷2真题', '/problems/other/12', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (34, '1987年考研数学卷2第13题', '', '考研数学1987年卷2真题', '/problems/other/13', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (35, '1987年考研数学卷2第14题', '', '考研数学1987年卷2真题', '/problems/other/14', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (36, '1987年考研数学卷2第15题', '', '考研数学1987年卷2真题', '/problems/other/15', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (37, '1987年考研数学卷2第16题', '', '考研数学1987年卷2真题', '/problems/other/16', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (38, '1987年考研数学卷2第17题', '', '考研数学1987年卷2真题', '/problems/other/17', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (39, '1987年考研数学卷2第18题', '简单', '考研数学1987年卷2真题', '设$λ_{1}$,$λ_{2}$为$n$阶方阵$A$的特征值，且$λ_{1} \\neq λ_{2}$，
而$x_{1}$,$x_{2}$分别为对应的特征向量，试证明$x_{1} + x_{2}$不是$A$的特征向量．', '[]', '
$x_{1} + x_{2}$不是$A$的特征向量。
', '
假设$x_{1} + x_{2}$是$A$的特征向量，则存在标量$λ$使得$A(x_{1} + x_{2}) = λ(x_{1} + x_{2})$。由于$x_{1}$和$x_{2}$是特征向量，有$Ax_{1} = λ_{1}x_{1}$和$Ax_{2} = λ_{2}x_{2}$，因此$A(x_{1} + x_{2}) = λ_{1}x_{1} + λ_{2}x_{2}$。代入得$λ_{1}x_{1} + λ_{2}x_{2} = λx_{1} + λx_{2}$，即$(λ_{1} - λ)x_{1} + (λ_{2} - λ)x_{2} = 0$。因为$λ_{1} \\neq λ_{2}$，所以$x_{1}$和$x_{2}$线性无关，因此$λ_{1} - λ = 0$且$λ_{2} - λ = 0$，即$λ_{1} = λ_{2}$，与已知矛盾。故假设不成立，$x_{1} + x_{2}$不是$A$的特征向量。
', 9, 'Mogullzr', '2026-01-29 14:06:05', 9, 'Mogullzr', '2026-01-29 14:06:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '39');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '39');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (40, '1987年考研数学卷3第1题', '简单', '考研数学1987年卷3真题', '设$y = \\ln(1 + ax)$，其中$a$为非零常数，则$y^{′} =$______，$y^{′′} =$______．', '[]', '
$y^{′} = \\frac{a}{1+ax}$，$y^{′′} = −\\frac{a^{2}}{(1+ax)2}$
', '
给定函数$y = \\ln(1 + ax)$，其中$a$为非零常数。
首先，求一阶导数$y^{′}$。根据链式法则，$y^{′} = \\frac{1}{1+ax} ⋅ \\frac{d}{dx}(1 + ax) = \\frac{1}{1+ax} ⋅ a = \\frac{a}{1+ax}$。
其次，求二阶导数$y^{′′}$。对$y^{′} = \\frac{a}{1+ax}$求导，将其写为$a ⋅ (1 + ax)−1$，然后应用链式法则：$y^{′′} = a ⋅ (−1 ⋅ (1 + ax)−2 ⋅ \\frac{d}{dx}(1 + ax)) = a ⋅ (−(1 + ax)−2 ⋅ a) = −a^{2}(1 + ax)−2 = −\\frac{a^{2}}{(1+ax)2}$。
因此，一阶导数为$\\frac{a}{1+ax}$，二阶导数为$−\\frac{a^{2}}{(1+ax)2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:07', 9, 'Mogullzr', '2026-01-29 14:06:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '40');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '40');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '40');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (41, '1987年考研数学卷3第2题', '简单', '考研数学1987年卷3真题', '曲线$y = arctan x$在横坐标为$1$点处的切线方程是 ______；法线方程是 ______．', '[]', '
切线方程：$y - \\frac{π}{4} = \\frac{1}{2}(x - 1)$
法线方程：$y - \\frac{π}{4} = −2(x - 1)$
', '
首先，求曲线$y = arctan x$在横坐标$x = 1$处的点。当$x = 1$时，$y = arctan 1 = \\frac{π}{4}$，所以点为$(1, \\frac{π}{4})$。
其次，求导数以得切线斜率。导数$\\frac{dy}{dx} = \\frac{1}{1+x^{2}}$，在$x = 1$时，斜率为$\\frac{1}{2}$。
切线方程使用点斜式：$y - \\frac{π}{4} = \\frac{1}{2}(x - 1)$。
法线垂直于切线，其斜率为切线斜率的负倒数，即$−2$，法线方程为$y - \\frac{π}{4} = −2(x - 1)$。
', 9, 'Mogullzr', '2026-01-29 14:06:08', 9, 'Mogullzr', '2026-01-29 14:06:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '41');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '41');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '41');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (42, '1987年考研数学卷3第3题', '简单', '考研数学1987年卷3真题', '积分中值定理的条件是 ______，结论是 ______．', '[]', '
函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上连续；存在一点$ξ ∈  \\lbrack a, b \\rbrack$，使得$\\int_{a}^{b} f(x) dx = f(ξ)(b - a)$
', '
积分中值定理是微积分基本定理之一，其标准形式为第一积分中值定理。定理要求函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上连续，这是确保定理成立的关键条件，因为连续函数在闭区间上具有介值性和可积性。结论指出，在区间$\\lbrack a, b \\rbrack$内至少存在一点$ξ$，使得函数在该点的值$f(ξ)$乘以区间长度$b - a$等于函数在区间上的定积分值。这一定理揭示了积分与函数值之间的内在联系，在理论和应用中有广泛用途。
', 9, 'Mogullzr', '2026-01-29 14:06:08', 9, 'Mogullzr', '2026-01-29 14:06:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '42');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '42');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '42');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (43, '1987年考研数学卷3第4题', '简单', '考研数学1987年卷3真题', '$\\lim_{n→∞} (\\frac{n-2}{n+1})^{n} =$______．', '[]', '
$e^{−3}$
', '
考虑极限$\\lim_{n→∞} (\\frac{n-2}{n+1})^{n}$。
将分数重写为$\\frac{n-2}{n+1} = \\frac{1-\\frac{2}{n}}{1+\\frac{1}{n}}$，则原表达式变为$(\\frac{1-\\frac{2}{n}}{1+\\frac{1}{n}})^{n} = \\frac{(1-\\frac{2}{n})^{n}}{(1+\\frac{1}{n})^{n}}$。
已知$\\lim_{n→∞} (1 + \\frac{1}{n})^{n} = e$，且$\\lim_{n→∞} (1 - \\frac{2}{n})^{n} = e^{−2}$，
因此极限为$\\frac{e^{−2}}{e} = e^{−3}$。
或者，令$y = (\\frac{n-2}{n+1})^{n}$，取自然对数得$\\ln y = n \\ln (\\frac{n-2}{n+1})$。
由于$\\frac{n-2}{n+1} = 1 - \\frac{3}{n+1}$，有$\\ln (1 - \\frac{3}{n+1}) ≈ −\\frac{3}{n+1}$，
故$\\ln y ≈ n ⋅ (−\\frac{3}{n+1}) = −\\frac{3n}{n+1}$，
取极限得$\\lim_{n→∞} \\ln y = −3$，因此$y → e^{−3}$。
两种方法均得极限为$e^{−3}$。
', 9, 'Mogullzr', '2026-01-29 14:06:08', 9, 'Mogullzr', '2026-01-29 14:06:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '43');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '43');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '43');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (44, '1987年考研数学卷3第5题', '简单', '考研数学1987年卷3真题', '$∫ f^{′}(x)dx =$______；$\\int_{a}^{b} f^{′}(2x)dx =$______．', '[]', '
$f(x) + C$；$\\frac{1}{2} \\lbrack f(2b) - f(2a) \\rbrack$
', '
对于第一个积分$∫ f^{′}(x) dx$，由于这是不定积分，根据微积分的基本定理，对导数积分得到原函数加上积分常数，因此结果为$f(x) + C$。
对于第二个积分$\\int_{a}^{b} f^{′}(2x) dx$，这是定积分，可以使用变量替换法。令$u = 2x$，则$du = 2 dx$，即$dx = \\frac{du}{2}$。积分限变为：当$x = a$时，$u = 2a$；当$x = b$时，$u = 2b$。因此，积分化为：


$$
\\int_{a}^{b} f^{′}(2x) dx = \\int_{2a}^{2b} f^{′}(u) \\frac{du}{2} = \\frac{1}{2} \\int_{2a}^{2b} f^{′}(u) du
$$

其中$\\int_{2a}^{2b} f^{′}(u) du = f(2b) - f(2a)$，所以最终结果为$\\frac{1}{2} \\lbrack f(2b) - f(2a) \\rbrack$。
Alternatively,考虑链式法则：$\\frac{d}{dx}f(2x) = 2f^{′}(2x)$，所以$f^{′}(2x) = \\frac{1}{2}\\frac{d}{dx}f(2x)$，代入积分得：


$$
\\int_{a}^{b} f^{′}(2x) dx = \\frac{1}{2} \\int_{a}^{b} \\frac{d}{dx}f(2x) dx = \\frac{1}{2}  \\lbrack f(2x) \\rbrack _{a}^{b} = \\frac{1}{2} \\lbrack f(2b) - f(2a) \\rbrack
$$

结果一致。
', 9, 'Mogullzr', '2026-01-29 14:06:08', 9, 'Mogullzr', '2026-01-29 14:06:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '44');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '44');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '44');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (45, '1987年考研数学卷3第6题', '简单', '考研数学1987年卷3真题', '求极限$\\lim_{x→0} (\\frac{1}{x} - \\frac{1}{e^{x}-1})$．', '[]', '$\\frac{1}{2}$
', '原极限为$\\lim_{x→0} (\\frac{1}{x} - \\frac{1}{e^{x}-1})$，属于“∞ - ∞”型不定式。首先将表达式合并为分式：

$$
\\frac{1}{x} - \\frac{1}{e^{x} - 1} = \\frac{e^{x} - 1 - x}{x(e^{x} - 1)}
$$

当$x → 0$时，分子和分母均趋于 0，形成“0/0”型不定式，应用洛必达法则。设分子$f(x) = e^{x} - 1 - x$，分母$g(x) = x(e^{x} - 1)$。求导：

$$
f^{′}(x) = e^{x} - 1,  g^{′}(x) = (e^{x} - 1) + xe^{x} = e^{x} - 1 + xe^{x}
$$

极限化为：

$$
\\lim_{x→0} \\frac{e^{x} - 1}{e^{x} - 1 + xe^{x}}
$$

该极限仍为“0/0”型，再次应用洛必达法则。求导：

$$
f^{′′}(x) = e^{x},  g^{′′}(x) = e^{x} + e^{x} + xe^{x} = 2e^{x} + xe^{x}
$$

极限化为：

$$
\\lim_{x→0} \\frac{e^{x}}{2e^{x} + xe^{x}} = \\lim_{x→0} \\frac{1}{2 + x} = \\frac{1}{2}
$$

因此，原极限为$\\frac{1}{2}$。
Alternatively，使用泰勒展开验证：$e^{x} = 1 + x + \\frac{x^{2}}{2} + O(x^{3})$，则$e^{x} - 1 = x + \\frac{x^{2}}{2} + O(x^{3})$。于是：

$$
\\frac{1}{e^{x} - 1} = \\frac{1}{x} ⋅ \\frac{1}{1 + \\frac{x}{2} + O(x^{2})} = \\frac{1}{x} (1 - \\frac{x}{2} + O(x^{2})) = \\frac{1}{x} - \\frac{1}{2} + O(x)
$$

代入原式：

$$
\\frac{1}{x} - (\\frac{1}{x} - \\frac{1}{2} + O(x)) = \\frac{1}{2} + O(x)
$$

当$x → 0$时，极限为$\\frac{1}{2}$，结果一致。
', 9, 'Mogullzr', '2026-01-29 14:06:08', 9, 'Mogullzr', '2026-01-29 14:06:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '45');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '45');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '45');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (46, '1987年考研数学卷3第7题', '简单', '考研数学1987年卷3真题', '设$\\begin{cases} x = 5(t - \\sin t) \\\\ y = 5(1 - \\cos t) \\end{cases}$，求$\\frac{dy}{dx}$和$\\frac{d^{2}y}{dx^{2}}$．', '[]', '

$$
\\frac{dy}{dx} = cot (\\frac{t}{2}) ,  \\frac{d^{2}y}{dx^{2}} = −\\frac{1}{20 \\sin^{4} (\\frac{t}{2})}
$$

', '给定参数方程$x = 5(t - \\sin t)$和$y = 5(1 - \\cos t)$，首先求一阶导数$\\frac{dy}{dx}$。
计算$\\frac{dx}{dt} = 5(1 - \\cos t)$，$\\frac{dy}{dt} = 5 \\sin t$。
则$\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{5 \\sin t}{5(1-\\cos t)} = \\frac{\\sin t}{1-\\cos t}$。
利用三角恒等式$\\sin t = 2 \\sin (\\frac{t}{2}) \\cos (\\frac{t}{2})$，$1 - \\cos t = 2 \\sin^{2} (\\frac{t}{2})$，
化简得$\\frac{\\sin t}{1-\\cos t} = \\frac{2 \\sin(\\frac{t}{2}) \\cos(\\frac{t}{2})}{2 \\sin^{2}(\\frac{t}{2})} = \\frac{\\cos(\\frac{t}{2})}{\\sin(\\frac{t}{2})} = cot (\\frac{t}{2})$。
因此，$\\frac{dy}{dx} = cot (\\frac{t}{2})$。
接下来求二阶导数$\\frac{d^{2}y}{dx^{2}}$。
由公式$\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{d/dt(\\frac{dy}{dx})}{dx/dt}$。
已知$\\frac{dy}{dx} = cot (\\frac{t}{2})$，
则$\\frac{d}{dt} (cot (\\frac{t}{2})) = − csc^{2} (\\frac{t}{2}) ⋅ \\frac{1}{2} = −\\frac{1}{2} csc^{2} (\\frac{t}{2})$。
又$\\frac{dx}{dt} = 5(1 - \\cos t) = 5 ⋅ 2 \\sin^{2} (\\frac{t}{2}) = 10 \\sin^{2} (\\frac{t}{2})$。
因此，$\\frac{d^{2}y}{dx^{2}} = \\frac{−\\frac{1}{2} csc^{2}(\\frac{t}{2})}{10 \\sin^{2}(\\frac{t}{2})} = −\\frac{1}{2} ⋅ \\frac{1}{\\sin^{2}(\\frac{t}{2})} ⋅ \\frac{1}{10 \\sin^{2}(\\frac{t}{2})} = −\\frac{1}{20 \\sin^{4}(\\frac{t}{2})}$。
或者使用另一种方法验证：
计算$\\frac{d^{2}x}{dt^{2}} = 5 \\sin t$，$\\frac{d^{2}y}{dt^{2}} = 5 \\cos t$，
代入公式$\\frac{d^{2}y}{dx^{2}} = \\frac{\\frac{dx}{dt}\\frac{d^{2}y}{dt^{2}}-\\frac{dy}{dt}\\frac{d^{2}x}{dt^{2}}}{(\\frac{dx}{dt})^{3}} = \\frac{5(1-\\cos t)⋅5 \\cos t-5 \\sin t⋅5 \\sin t}{ \\lbrack 5(1-\\cos t) \\rbrack 3} = \\frac{25 \\lbrack (1-\\cos t) \\cos t-\\sin^{2} t \\rbrack }{125(1-\\cos t)3}$。
分子化简：$(1 - \\cos t) \\cos t - \\sin^{2} t = \\cos t - \\cos^{2} t - \\sin^{2} t = \\cos t - 1 = −(1 - \\cos t)$，
所以$\\frac{d^{2}y}{dx^{2}} = \\frac{−25(1-\\cos t)}{125(1-\\cos t)3} = −\\frac{1}{5(1-\\cos t)2}$。
利用$1 - \\cos t = 2 \\sin^{2} (\\frac{t}{2})$，得$(1 - \\cos t)2 = 4 \\sin^{4} (\\frac{t}{2})$，
所以$\\frac{d^{2}y}{dx^{2}} = −\\frac{1}{5⋅4 \\sin^{4}(\\frac{t}{2})} = −\\frac{1}{20 \\sin^{4}(\\frac{t}{2})}$，
结果一致。
', 9, 'Mogullzr', '2026-01-29 14:06:08', 9, 'Mogullzr', '2026-01-29 14:06:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '46');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '46');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '46');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (47, '1987年考研数学卷3第8题', '简单', '考研数学1987年卷3真题', '计算定积分$\\int_{0}^{1} x arcsin xdx$．', '[]', '$\\frac{π}{8}$
', '计算定积分$\\int_{0}^{1} x arcsin x dx$。使用分部积分法，设$u = arcsin x$，$dv = x dx$，则$du = \\frac{1}{\\sqrt{1-x^{2}}}dx$，$v = \\frac{x^{2}}{2}$。代入分部积分公式：

$$
∫ x arcsin x dx = \\frac{x^{2}}{2} arcsin x - ∫ \\frac{x^{2}}{2} ⋅ \\frac{1}{\\sqrt{1 - x^{2}}} dx = \\frac{x^{2}}{2} arcsin x - \\frac{1}{2} ∫ \\frac{x^{2}}{\\sqrt{1 - x^{2}}} dx
$$

计算积分$∫ \\frac{x^{2}}{\\sqrt{1-x^{2}}} dx$，使用三角代换$x = \\sin θ$，$dx = \\cos θ dθ$，$\\sqrt{1 - x^{2}} = \\cos θ$：

$$
∫ \\frac{x^{2}}{\\sqrt{1 - x^{2}}} dx = ∫ \\frac{\\sin^{2} θ}{\\cos θ} ⋅ \\cos θ dθ = ∫ \\sin^{2} θ dθ = ∫ \\frac{1 - \\cos 2θ}{2} dθ = \\frac{1}{2} (θ - \\frac{\\sin 2θ}{2}) + C
$$

其中$\\sin 2θ = 2 \\sin θ \\cos θ$，所以：

$$
= \\frac{θ}{2} - \\frac{\\sin θ \\cos θ}{2} + C
$$

代回$x = \\sin θ$，$θ = arcsin x$，$\\cos θ = \\sqrt{1 - x^{2}}$：

$$
∫ \\frac{x^{2}}{\\sqrt{1 - x^{2}}} dx = \\frac{arcsin x}{2} - \\frac{x\\sqrt{1 - x^{2}}}{2} + C
$$

代入原积分：

$$
∫ x arcsin x dx = \\frac{x^{2}}{2} arcsin x - \\frac{1}{2} (\\frac{arcsin x}{2} - \\frac{x\\sqrt{1 - x^{2}}}{2}) + C = \\frac{x^{2}}{2} arcsin x - \\frac{arcsin x}{4} + \\frac{x\\sqrt{1 - x^{2}}}{4} + C
$$

整理得：

$$
∫ x arcsin x dx = \\frac{arcsin x}{4}(2x^{2} - 1) + \\frac{x\\sqrt{1 - x^{2}}}{4} + C
$$

计算定积分从 0 到 1：
当$x = 1$时，$arcsin 1 = \\frac{π}{2}$，$x\\sqrt{1 - x^{2}} = 0$，值为：

$$
\\frac{π/2}{4}(2 ⋅ 1^{2} - 1) + 0 = \\frac{π}{8}
$$

当$x = 0$时，$arcsin 0 = 0$，$x\\sqrt{1 - x^{2}} = 0$，值为 0。因此：

$$
\\int_{0}^{1} x arcsin x dx = \\frac{π}{8} - 0 = \\frac{π}{8}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:09', 9, 'Mogullzr', '2026-01-29 14:06:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '47');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '47');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '47');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (48, '1987年考研数学卷3第9题', '简单', '考研数学1987年卷3真题', '设$D$是曲线$y = \\sin x + 1$与三条直线$x = 0$,$x = π$,$y = 0$围成的曲边梯形．
求$D$绕$x$轴旋转一周所生成的旋转体的体积$V$．', '[]', '
$V = \\frac{3π^{2}}{2} + 4π$
', '
曲线$y = \\sin x + 1$与直线$x = 0$,$x = π$,$y = 0$围成的曲边梯形绕$x$轴旋转一周所生成的旋转体的体积公式为$V = π \\int_{0}^{π} \\lbrack f(x) \\rbrack 2 dx$，其中$f(x) = \\sin x + 1$。
计算积分：


$$
\\int_{0}^{π}(\\sin x + 1)2 dx = \\int_{0}^{π}(\\sin^{2} x + 2 \\sin x + 1) dx
$$

分别计算各项：


$$
\\begin{array}{c}
\\int_{0}^{π} \\sin^{2} x dx = \\int_{0}^{π} \\frac{1 - \\cos 2x}{2} dx = \\frac{1}{2} \\int_{0}^{π}(1 - \\cos 2x) dx = \\frac{1}{2}  \\lbrack x - \\frac{\\sin 2x}{2} \\rbrack _{0}^{π} = \\frac{1}{2} ⋅ π = \\frac{π}{2} \\\\
\\int_{0}^{π} 2 \\sin x dx = 2  \\lbrack − \\cos x \\rbrack _{0}^{π} = 2  \\lbrack −(−1) + 1 \\rbrack  = 2 ⋅ 2 = 4 \\\\
\\end{array}
$$

求和：


$$
\\int_{0}^{π}(\\sin^{2} x + 2 \\sin x + 1) dx = \\frac{π}{2} + 4 + π = \\frac{3π}{2} + 4
$$

因此，体积为：


$$
V = π (\\frac{3π}{2} + 4) = \\frac{3π^{2}}{2} + 4π
$$

', 9, 'Mogullzr', '2026-01-29 14:06:09', 9, 'Mogullzr', '2026-01-29 14:06:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '48');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '48');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '48');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (49, '1987年考研数学卷3第10题', '简单', '考研数学1987年卷3真题', '若$f(x)$在$(a, b)$内可导，且导数$f^{′}(x)$恒大于零，证明$f(x)$在$(a, b)$内单调增加．', '[]', '
$f(x)$在$(a, b)$内单调增加。
', '
取任意$x_{1}, x_{2} ∈ (a, b)$，且$x_{1} < x_{2}$。由于$f(x)$在$(a, b)$内可导，故在闭区间$\\lbrack x_{1}, x_{2} \\rbrack$上连续，在开区间$(x_{1}, x_{2})$内可导。根据拉格朗日中值定理，存在$c ∈ (x_{1}, x_{2})$，使得$f^{′}(c) = \\frac{f(x_{2})-f(x_{1})}{x_{2}-x_{1}}$。由已知条件，$f^{′}(c) > 0$，因此$\\frac{f(x_{2})-f(x_{1})}{x_{2}-x_{1}} > 0$。由于$x_{2} - x_{1} > 0$，可得$f(x_{2}) - f(x_{1}) > 0$，即$f(x_{1}) < f(x_{2})$。由$x_{1}, x_{2}$的任意性，可知$f(x)$在$(a, b)$内单调增加。
', 9, 'Mogullzr', '2026-01-29 14:06:09', 9, 'Mogullzr', '2026-01-29 14:06:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '49');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '49');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '49');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (50, '1987年考研数学卷3第11题', '简单', '考研数学1987年卷3真题', '若$g(x)$在$x = c$处二阶导数存在，且$g^{′}(c) = 0$,$g^{′′}(c) < 0$．证明$g(c)$为$g(x)$的一个极大值．', '[]', '$g(c)$是$g(x)$的一个极大值。
', '由于$g(x)$在$x = c$处二阶导数存在，且$g^{′}(c) = 0$，根据泰勒公式，有：

$$
g(x) = g(c) + g^{′}(c)(x - c) + \\frac{g^{′′}(c)}{2}(x - c)2 + o((x - c)2)
$$

代入$g^{′}(c) = 0$，得：

$$
g(x) = g(c) + \\frac{g^{′′}(c)}{2}(x - c)2 + o((x - c)2)
$$

因此，

$$
g(x) - g(c) = \\frac{g^{′′}(c)}{2}(x - c)2 + o((x - c)2)
$$

已知$g^{′′}(c) < 0$，令$k = −g^{′′}(c) > 0$，则$\\frac{g^{′′}(c)}{2} = −\\frac{k}{2}$，所以：

$$
g(x) - g(c) = −\\frac{k}{2}(x - c)2 + o((x - c)2)
$$

对于任意$ϵ > 0$，存在$δ > 0$，使得当$∣x - c∣ < δ$时，有$∣o((x - c)2)∣ < ϵ∣x - c∣^{2}$。取$ϵ = \\frac{k}{4}$，则存在$δ > 0$，当$∣x - c∣ < δ$且$x \\neq c$时，有：

$$
∣o((x - c)2)∣ < \\frac{k}{4}(x - c)2
$$

因此，

$$
g(x) - g(c) ≤ −\\frac{k}{2}(x - c)2 + ∣o((x - c)2)∣ < −\\frac{k}{2}(x - c)2 + \\frac{k}{4}(x - c)2 = −\\frac{k}{4}(x - c)2 < 0
$$

即当$∣x - c∣ < δ$且$x \\neq c$时，$g(x) < g(c)$，故$g(c)$是$g(x)$的一个极大值。
', 9, 'Mogullzr', '2026-01-29 14:06:09', 9, 'Mogullzr', '2026-01-29 14:06:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '50');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '50');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '50');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (51, '1987年考研数学卷3第12题', '简单', '考研数学1987年卷3真题', '计算不定积分$∫ \\frac{dx}{a^{2} \\sin^{2} x+b^{2} \\cos^{2} x}$（其中$a$,$b$为不全为零的非负数）．', '[]', '
令$u = \\tan x$，则原式 =$∫ \\frac{du}{a^{2}u^{2}+b^{2}}$。下面分情形讨论：
(I) 当$ab \\neq 0$时，原式 =$\\frac{1}{ab} arctan (\\frac{a}{b}x) + C$
(II) 当$a = 0, b \\neq 0$时，原式 =$\\frac{1}{b^{2}} \\tan x + C$
(III) 当$a \\neq 0, b = 0$时，原式 =$−\\frac{1}{a^{2}} cot x + C$
', '考虑积分

$$
∫ \\frac{dx}{a^{2} \\sin^{2} x + b^{2} \\cos^{2} x}.
$$

当$a$和$b$均不为零时，可通过三角代换求解。分子分母同除以$\\cos^{2} x$，得到：

$$
∫ \\frac{sec^{2} x dx}{a^{2} \\tan^{2} x + b^{2}}.
$$

令$u = \\tan x$，则$du = sec^{2} x dx$，积分化为：

$$
∫ \\frac{du}{a^{2}u^{2} + b^{2}}.
$$

这是一个标准积分，结果为：

$$
∫ \\frac{du}{a^{2}u^{2} + b^{2}} = \\frac{1}{ab} arctan (\\frac{au}{b}) + C.
$$

代回$u = \\tan x$，得：

$$
∫ \\frac{dx}{a^{2} \\sin^{2} x + b^{2} \\cos^{2} x} = \\frac{1}{ab} arctan (\\frac{a \\tan x}{b}) + C.
$$

当$a = 0$且$b \\neq 0$时，积分化为

$$
∫ \\frac{dx}{b^{2} \\cos^{2} x} = \\frac{1}{b^{2}} ∫ sec^{2} x dx = \\frac{1}{b^{2}} \\tan x + C.
$$

当$b = 0$且$a \\neq 0$时，积分化为

$$
∫ \\frac{dx}{a^{2} \\sin^{2} x} = \\frac{1}{a^{2}} ∫ csc^{2} x dx = −\\frac{1}{a^{2}} cot x + C.
$$

由于$a$和$b$不全为零，这些情况覆盖所有可能。
', 9, 'Mogullzr', '2026-01-29 14:06:10', 9, 'Mogullzr', '2026-01-29 14:06:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '51');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '51');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '51');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (52, '1987年考研数学卷3第13题', '简单', '考研数学1987年卷3真题', '（本题满分 7 分）求微分方程$x\\frac{dy}{dx} = x - y$满足条件$y​_{x=\\sqrt{2}} = 0$的解．', '[]', '
通解为$y = \\frac{1}{x} (\\frac{1}{2}x^{2} + C)$，满足初始条件的特解为$y = \\frac{x}{2} - \\frac{1}{x}$.
', '
给定微分方程$x\\frac{dy}{dx} = x - y$和初始条件$y∣_{x=\\sqrt{2}} = 0$。

步骤 1：化为标准形式
将原方程两边除以$x$（其中$x \\neq 0$），得到：

$$
\\frac{dy}{dx} = 1 - \\frac{y}{x}
$$

整理为标准一阶线性形式：

$$
\\frac{dy}{dx} + \\frac{1}{x}y = 1
$$

于是有：

$$
P(x) = \\frac{1}{x},  Q(x) = 1
$$

步骤 2：写出通解公式
一阶线性微分方程的通解为：

$$
y = e^{− ∫ P(x) dx} (∫ Q(x) e^{∫ P(x) dx} dx + C)
$$

步骤 3：计算积分

$$
∫ P(x) dx = ∫ \\frac{1}{x} dx = \\ln x (取x > 0)
$$


$$
e^{∫ P(x) dx} = e^{\\ln x} = x
$$



$$
e^{− ∫ P(x) dx} = e^{− \\ln x} = \\frac{1}{x}
$$

步骤 4：求积分部分

$$
∫ Q(x) e^{∫ P(x) dx} dx = ∫ 1 ⋅ x dx = \\frac{x^{2}}{2} + C
$$

步骤 5：写出通解

$$
y = \\frac{1}{x} (\\frac{x^{2}}{2} + C) = \\frac{x}{2} + \\frac{C}{x}
$$

步骤 6：利用初值求特解
代入$x = \\sqrt{2},  y = 0$：

$$
0 = \\frac{\\sqrt{2}}{2} + \\frac{C}{\\sqrt{2}}
$$

两边乘以$\\sqrt{2}$得：

$$
0 = 1 + C  ⇒  C = −1
$$

最终特解为：

$$
y = \\frac{x}{2} - \\frac{1}{x}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:10', 9, 'Mogullzr', '2026-01-29 14:06:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '52');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '52');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '52');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (53, '1987年考研数学卷3第14题', '简单', '考研数学1987年卷3真题', '（本题满分 8 分）求微分方程$y^{′′} + 2y^{′} + y = xe^{x}$的通解．', '[]', '
$y = (C_{1} + C_{2}x)e^{−x} + \\frac{1}{4}(x - 1)e^{x}$
', '
给定微分方程


$$
y^{′′} + 2y^{′} + y = xe^{x},
$$

首先求解对应的齐次方程


$$
y^{′′} + 2y^{′} + y = 0.
$$

其特征方程为


$$
r^{2} + 2r + 1 = 0,
$$

即


$$
(r + 1)2 = 0,
$$

特征根为$r = −1$（二重根）。
因此齐次解为


$$
y_{h} = (C_{1} + C_{2}x)e^{−x},
$$

其中$C_{1}$、$C_{2}$为常数。

对于非齐次项$xe^{x}$，设特解形式为


$$
y_{p} = (Ax + B)e^{x}.
$$

计算导数：


$$
y_{p}^{′} = (Ax + A + B)e^{x},
$$



$$
y_{p}^{′′} = (Ax + 2A + B)e^{x}.
$$

代入原方程：


$$
y_{p}^{′′} + 2y_{p}^{′} + y_{p} =  \\lbrack (Ax + 2A + B)e^{x} \\rbrack  + 2 \\lbrack (Ax + A + B)e^{x} \\rbrack  +  \\lbrack (Ax + B)e^{x} \\rbrack .
$$

合并同类项：


$$
= e^{x} \\lbrack (Ax + 2A + B) + 2(Ax + A + B) + (Ax + B) \\rbrack
$$



$$
= e^{x} \\lbrack 4Ax + (4A + 4B) \\rbrack .
$$

与右端$xe^{x}$比较，得


$$
4Ax + 4A + 4B = x.
$$

比较系数：


$$
4A = 1  ⇒  A = \\frac{1}{4},
$$



$$
4A + 4B = 0  ⇒  1 + 4B = 0  ⇒  B = −\\frac{1}{4}.
$$

于是特解为


$$
y_{p} = \\frac{1}{4}(x - 1)e^{x}.
$$

原方程的通解为齐次解与特解之和：


$$
y = y_{h} + y_{p} = (C_{1} + C_{2}x)e^{−x} + \\frac{1}{4}(x - 1)e^{x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:10', 9, 'Mogullzr', '2026-01-29 14:06:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '53');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '53');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '53');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (54, '1987年考研数学卷3第15题', '简单', '考研数学1987年卷3真题', '$f(x) = ∣x \\sin x∣e^{\\cos x}$,$−∞ < x < +∞$是', '[''有界函数．'', ''单调函数．'', ''周期函数．'', ''偶函数．'']', "['D']", '函数$f(x) = ∣x \\sin x∣e^{\\cos x}$的定义域为全体实数。考虑选项：A. 有界函数：由于$∣x \\sin x∣$随$x$增大而无界（例如当$x = \\frac{π}{2} + kπ$时，$∣x \\sin x∣ ≈ ∣x∣ → ∞$），而$e^{\\cos x}$有界，因此$f(x)$无界，A错误。B. 单调函数：函数值振荡，例如$f(0) = 0$，$f(\\frac{π}{2}) = \\frac{π}{2}$，$f(π) = 0$，不单调，B错误。C. 周期函数：假设存在周期$T > 0$，则$f(x + T) = f(x)$。但$f(x + 2π) = ∣(x + 2π) \\sin x∣e^{\\cos x}$，与$f(x) = ∣x \\sin x∣e^{\\cos x}$比较，由于$∣x + 2π∣ \\neq ∣x∣$一般成立，故不周期，C错误。D. 偶函数：计算$f(−x) = ∣(−x) \\sin(−x)∣e^{\\cos(−x)} = ∣ - x ⋅ (− \\sin x)∣e^{\\cos x} = ∣x \\sin x∣e^{\\cos x} = f(x)$，满足偶函数定义，D正确。
因此正确答案为D。', 9, 'Mogullzr', '2026-01-29 14:06:10', 9, 'Mogullzr', '2026-01-29 14:06:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '54');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '54');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '54');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (55, '1987年考研数学卷3第16题', '简单', '考研数学1987年卷3真题', '函数$f(x) = x \\sin x$', '[''当$x → ∞$时为无穷大．'', ''当$x → ∞$时有极限．'', ''在$(−∞, +∞)$内有界．'', ''在$(−∞, +∞)$内无界．'']', "['D']", '函数$f(x) = x \\sin x$在$x → ∞$时没有极限，因为当$x$取序列$x_{n} = 2nπ + \\frac{π}{2}$时，$f(x_{n}) = x_{n} → ∞$，而当$x_{n} = 2nπ$时，$f(x_{n}) = 0$，因此函数值在零和无穷大之间振荡，不收敛于任何极限，故选项A和B错误。对于选项C和D，函数在$(−∞, +∞)$内无界，因为对于任意大的$M$，总存在$x = 2nπ + \\frac{π}{2}$使得$f(x) = x > M$，因此函数无界，故选项C错误，选项D正确。', 9, 'Mogullzr', '2026-01-29 14:06:10', 9, 'Mogullzr', '2026-01-29 14:06:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '55');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '55');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '55');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (56, '1987年考研数学卷3第17题', '简单', '考研数学1987年卷3真题', '设$f(x)$在$x = a$处可导，则$\\lim_{x→0} \\frac{f(a+x)-f(a-x)}{x}$等于', '[''$f^{′}(a)$．'', ''$2f^{′}(a)$．'', ''$0$．'', ''$f^{′}(2a)$．'']', "['B']", '由于$f(x)$在$x = a$处可导，根据导数定义，有$f^{′}(a) = \\lim_{h→0} \\frac{f(a+h)-f(a)}{h}$。考虑极限$\\lim_{x→0} \\frac{f(a+x)-f(a-x)}{x}$，可以将其拆分为：
$$
\\lim_{x→0} \\frac{f(a + x) - f(a - x)}{x} = \\lim_{x→0}  \\lbrack \\frac{f(a + x) - f(a)}{x} + \\frac{f(a) - f(a - x)}{x} \\rbrack  .
$$
其中，$\\lim_{x→0} \\frac{f(a+x)-f(a)}{x} = f^{′}(a)$。对于第二项，令$u = −x$，则当$x → 0$时$u → 0$，有：
$$
\\lim_{x→0} \\frac{f(a) - f(a - x)}{x} = \\lim_{u→0} \\frac{f(a) - f(a + u)}{−u} = \\lim_{u→0} \\frac{f(a + u) - f(a)}{u} = f^{′}(a).
$$
因此，原极限为$f^{′}(a) + f^{′}(a) = 2f^{′}(a)$。 Alternatively, 使用泰勒展开：$f(a + x) = f(a) + f^{′}(a)x + o(x)$，$f(a - x) = f(a) - f^{′}(a)x + o(x)$，则$f(a + x) - f(a - x) = 2f^{′}(a)x + o(x)$，所以$\\frac{f(a+x)-f(a-x)}{x} = 2f^{′}(a) + o(1) → 2f^{′}(a)$。故答案为 B。', 9, 'Mogullzr', '2026-01-29 14:06:10', 9, 'Mogullzr', '2026-01-29 14:06:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '56');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '56');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '56');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (57, '1987年考研数学卷3第18题', '', '考研数学1987年卷3真题', '/problems/other/11', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:11', 9, 'Mogullzr', '2026-01-29 14:06:11', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (58, '1987年考研数学卷3第19题', '简单', '考研数学1987年卷3真题', '在第一象限内，求曲线$y = −x^{2} + 1$上的一点，使该点处切线与所给曲线及两坐标轴围成的面积为最小，并求此最小面积．', '[]', '
设切点的坐标为$(a, 1 - a^{2})$，则切线方程为$y = −2ax + a^{2} + 1$，所围成的面积

$$
S(a) = \\frac{1}{2}(a^{2} + 1)\\frac{a^{2} + 1}{2a} - \\int_{0}^{1}(−x^{2} + 1)dx = \\frac{a^{3}}{4} + \\frac{a}{2} + \\frac{1}{4a} - \\frac{2}{3}.
$$

令$S^{′}(a) = 0$，得驻点$a = \\frac{\\sqrt{3}}{3}$。由于$S^{′′} (\\frac{\\sqrt{3}}{3}) > 0$，故所求点的坐标为$(\\frac{\\sqrt{3}}{3}, \\frac{2}{3})$，面积的最小值为$\\frac{4}{9}\\sqrt{3} - \\frac{2}{3}$。
', '
设切点的坐标为$(a, 1 - a^{2})$，则切线方程为$y = −2ax + a^{2} + 1$，所围成的面积

$$
S(a) = \\frac{1}{2}(a^{2} + 1)\\frac{a^{2} + 1}{2a} - \\int_{0}^{1}(−x^{2} + 1)dx = \\frac{a^{3}}{4} + \\frac{a}{2} + \\frac{1}{4a} - \\frac{2}{3}.
$$

令$S^{′}(a) = 0$，得驻点$a = \\frac{\\sqrt{3}}{3}$。由于$S^{′′} (\\frac{\\sqrt{3}}{3}) > 0$，故所求点的坐标为$(\\frac{\\sqrt{3}}{3}, \\frac{2}{3})$，面积的最小值为$\\frac{4}{9}\\sqrt{3} - \\frac{2}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:06:11', 9, 'Mogullzr', '2026-01-29 14:06:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '58');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '58');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '58');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (59, '1987年考研数学卷4第1题', '简单', '考研数学1987年卷4真题', '$\\lim_{x→0} e^{\\frac{1}{x}} = ∞$．', '[]', '不正确，该极限不存在。
', '当$x → 0^{+}$时，$\\frac{1}{x} → +∞$，因此$e^{\\frac{1}{x}} → +∞$；但当$x → 0^{-}$时，$\\frac{1}{x} → −∞$，因此$e^{\\frac{1}{x}} → 0$。由于左极限和右极限不相等，所以$\\lim_{x→0} e^{\\frac{1}{x}}$不存在。
', 9, 'Mogullzr', '2026-01-29 14:06:13', 9, 'Mogullzr', '2026-01-29 14:06:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '59');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '59');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '59');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (60, '1987年考研数学卷4第2题', '简单', '考研数学1987年卷4真题', '$\\int_{−π}^{π} x^{4} \\sin xdx = 0$．', '[]', '正确
', '考虑被积函数$f(x) = x^{4} \\sin x$。由于$f(−x) = (−x)4 \\sin(−x) = x^{4}(− \\sin x) = −x^{4} \\sin x = −f(x)$，因此$f(x)$是奇函数。在对称区间$\\lbrack −π, π \\rbrack$上，奇函数的定积分为零，故$\\int_{−π}^{π} x^{4} \\sin x dx = 0$。
', 9, 'Mogullzr', '2026-01-29 14:06:13', 9, 'Mogullzr', '2026-01-29 14:06:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '60');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '60');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '60');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (61, '1987年考研数学卷4第3题', '简单', '考研数学1987年卷4真题', '若级数$\\sum_{n=1}^{∞} a_{n}$和$\\sum_{n=1}^{∞} b_{n}$均发散，
则级数$\\sum_{n=1}^{∞}(a_{n} + b_{n})$也必发散．', '[]', '不正确
', '
该命题不一定成立。例如，取$a_{n} = 1$和$b_{n} = −1$，则级数$\\sum_{n=1}^{∞} a_{n} = 1 + 1 + 1 + ⋯$发散，级数$\\sum_{n=1}^{∞} b_{n} = −1 - 1 - 1 - ⋯$也发散，但级数$\\sum_{n=1}^{∞}(a_{n} + b_{n}) = \\sum_{n=1}^{∞}(1 - 1) = \\sum_{n=1}^{∞} 0 = 0$收敛。因此，两个发散级数的和级数可能收敛，故原命题错误。
', 9, 'Mogullzr', '2026-01-29 14:06:13', 9, 'Mogullzr', '2026-01-29 14:06:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '61');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '61');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '61');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (62, '1987年考研数学卷4第4题', '简单', '考研数学1987年卷4真题', '假设$D$是矩阵$A$的$r$阶子式，且$D \\neq 0$，但含$D$的一切$r + 1$阶子式都等于$0$，
那么矩阵$A$的一切$r + 1$阶子式都等于$0$．', '[]', '正确。
', '
假设矩阵$A$有一个$r$阶子式$D \\neq 0$，且所有包含$D$的$r + 1$阶子式都等于$0$。设$D$由行集$R$和列集$C$组成，其中$∣R∣ = r$，$∣C∣ = r$。由于$D \\neq 0$，行集$R$在列集$C$上线性无关。
对于任意不在$R$中的行$i$和任意不在$C$中的列$j$，考虑子式$A \\lbrack R ∪ \\{i\\}, C ∪ \\{j\\} \\rbrack$。根据条件，该子式为$0$。该子式对应的矩阵可分块为：


$$
\\left \\lbrack  \\begin{array}{cc}
D & A_{Rj} \\\\
A_{iC} & a_{ij} \\\\
\\end{array} \\right \\rbrack
$$

其中$A_{Rj}$是行集$R$在列$j$上的列向量，$A_{iC}$是行$i$在列集$C$上的行向量，$a_{ij}$是元素$(i, j)$。计算该矩阵的行列式，由于$D$可逆，有：


$$
det = det(D) ⋅ (a_{ij} - A_{iC}D^{−1}A_{Rj}) = 0
$$

因为$det(D) \\neq 0$，所以$a_{ij} = A_{iC}D^{−1}A_{Rj}$。令$w_{i} = A_{iC}D^{−1}$，则$w_{i}$是一个行向量。对于任意列$j$，当$j ∈ C$时，行$i$在列$j$上的值$a_{ij}$是$A_{iC}$的一部分，且$A_{iC} = w_{i}D$，因此$a_{ij} = w_{i}A_{Rj}$；当$j ∈/ C$时，已有$a_{ij} = w_{i}A_{Rj}$。因此，对于所有列$j$，有$a_{ij} = w_{i}A_{Rj}$，这意味着行$i$是行集$R$的线性组合。
因此，所有行都可以由行集$R$线性表示，行秩不超过$r$。又因为$D \\neq 0$，秩至少为$r$，所以秩恰好为$r$。故所有$r + 1$阶子式都等于$0$。
', 9, 'Mogullzr', '2026-01-29 14:06:13', 9, 'Mogullzr', '2026-01-29 14:06:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '62');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '62');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '62');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (63, '1987年考研数学卷4第5题', '简单', '考研数学1987年卷4真题', '连续型随机变量取任何给定实数值的概率都等于$0$．', '[]', '正确
', '连续型随机变量的概率分布由概率密度函数描述，其概率计算基于积分。
对于任意给定实数值$x$，概率$P(X = x)$等于概率密度函数在点$x$处的积分，但由于积分区间长度为 0，根据积分的性质，该积分值必然为 0。
因此，连续型随机变量取任何给定实数值的概率都等于 0。
需要注意的是，这并不意味着该值不可能发生，而是概率测度在单个点上的值为 0，实际概率质量分布在区间上。
', 9, 'Mogullzr', '2026-01-29 14:06:13', 9, 'Mogullzr', '2026-01-29 14:06:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '63');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '63');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (64, '1987年考研数学卷4第6题', '简单', '考研数学1987年卷4真题', '函数（ ）在其定义域内连续．', '[''$f(x) = \\\\ln x + \\\\sin x$'', ''$f(x) = \\\\begin{cases} \\\\sin x & x ≤ 0 \\\\\\\\ \\\\cos x & x > 0 \\\\end{cases}$'', ''$f(x) = \\\\begin{cases} x + 1 & x < 0 \\\\\\\\ 0 & x = 0 \\\\\\\\ x - 1 & x > 0 \\\\end{cases}$'', ''$f(x) = \\\\begin{cases} \\\\frac{1}{\\\\sqrt{∣x∣}} & x \\\\neq 0 \\\\\\\\ 0 & x = 0 \\\\end{cases}$'']', "['A']", '对于选项A，函数$f(x) = \\ln x + \\sin x$的定义域为$x > 0$，即$(0, +∞)$。在该区间内，$\\ln x$和$\\sin x$均为连续函数，因此它们的和$f(x)$也在定义域内连续。对于选项B，函数在$x = 0$处左极限为$\\sin 0 = 0$，右极限为$\\cos 0 = 1$，函数值为$f(0) = \\sin 0 = 0$，左右极限不相等，因此不连续。对于选项C，函数在$x = 0$处左极限为$0 + 1 = 1$，右极限为$0 - 1 = −1$，函数值为$f(0) = 0$，左右极限不相等且与函数值不相等，因此不连续。对于选项D，函数在$x = 0$处函数值为$f(0) = 0$，但当$x → 0$时，$f(x) = \\frac{1}{\\sqrt{∣x∣}} → +∞$，极限不存在，因此不连续。因此，只有选项A在其定义域内连续。', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '64');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '64');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '64');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (65, '1987年考研数学卷4第7题', '简单', '考研数学1987年卷4真题', '若函数$f(x)$在区间$(a, b)$内可导，$x_{1}$和$x_{2}$是区间$(a, b)$内任意两点，
且$x_{1} < x_{2}$，则至少存在一点$ξ$，使', '[''$f(b) - f(a) = f^{′}(ξ)(b - a)$，其中$a < ξ < b$．'', ''$f(b) - f(x_{1}) = f^{′}(ξ)(b - x_{1})$，其中$x_{1} < ξ < b$．'', ''$f(x_{2}) - f(x_{1}) = f^{′}(ξ)(x_{2} - x_{1})$，其中$x_{1} < ξ < x_{2}$．'', ''$f(x_{2}) - f(a) = f^{′}(ξ)(x_{2} - a)$，其中$a < ξ < x_{2}$．'']', "['C']", '
根据拉格朗日中值定理，如果函数$f(x)$在闭区间$\\lbrack x_{1}, x_{2} \\rbrack$上连续，在开区间$(x_{1}, x_{2})$内可导，则存在一点$ξ ∈ (x_{1}, x_{2})$，使得

$$
f(x_{2}) - f(x_{1}) = f^{′}(ξ)(x_{2} - x_{1})
$$
本题中，函数$f(x)$在区间$(a, b)$内可导，且$x_{1}$和$x_{2}$是$(a, b)$内任意两点，且$x_{1} < x_{2}$，因此子区间$\\lbrack x_{1}, x_{2} \\rbrack  ⊂ (a, b)$，满足拉格朗日中值定理的条件，故选项C正确。选项A、B、D均涉及区间端点$a$或$b$，但函数在端点处可能不连续或不可导，因此不一定成立。', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '65');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '65');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '65');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (66, '1987年考研数学卷4第8题', '简单', '考研数学1987年卷4真题', '广义积分（ ）收敛．', '[''$\\\\int_{e}^{+∞} \\\\frac{\\\\ln x}{x}dx$．'', ''$\\\\int_{e}^{+∞} \\\\frac{dx}{x \\\\ln x}$．'', ''$\\\\int_{e}^{+∞} \\\\frac{dx}{x(\\\\ln x)2}$．'', ''$\\\\int_{e}^{+∞} \\\\frac{dx}{x\\\\sqrt{\\\\ln x}}$．'']', "['C']", '
对于选项A，令$u = \\ln x$，则积分化为$\\int_{1}^{+∞} u du$该积分发散。对于选项B，令$u = \\ln x$，则积分化为$\\int_{1}^{+∞} \\frac{1}{u} du$该积分发散。对于选项C，令$u = \\ln x$，则积分化为$\\int_{1}^{+∞} \\frac{1}{u^{2}} du$该积分收敛于$1$。对于选项D，令$u = \\ln x$，则积分化为$\\int_{1}^{+∞} \\frac{1}{\\sqrt{u}} du$该积分发散。因此，只有选项C收敛。', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '66');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '66');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '66');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (67, '1987年考研数学卷4第9题', '简单', '考研数学1987年卷4真题', '假设$A$是$n$阶方阵，其秩$r < n$，那么在$A$的$n$个行向量中', '[''必有$r$个行向量线性无关．'', ''任意$r$个行向量都线性无关．'', ''任意$r$个行向量都构成极大线性无关向量组．'', ''任意$r$个行向量都可以由其他$r$个行向量线性表示．'']', "['A']", '
矩阵的秩$r$表示行空间或列空间的维数，即存在$r$个线性无关的行向量，且无法找到更多线性无关的行向量。因此，选项 A 正确，它直接来源于秩的定义。选项 B 错误，因为虽然存在$r$个线性无关的行向量，但并非任意$r$个行向量都线性无关。例如，当矩阵包含重复行或零行时，某些$r$个行向量可能线性相关。选项 C 错误，因为任意$r$个行向量可能不是线性无关的，或者即使线性无关，也可能无法生成所有行向量，从而不构成极大线性无关组。选项 D 错误，因为当$r > n/2$时，对于某些$r$个行向量的集合，可能无法从剩余行中选出另一组$r$个行向量（因为剩余行数不足$r$），因此无法满足线性表示的条件。', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '67');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '67');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '67');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (68, '1987年考研数学卷4第10题', '简单', '考研数学1987年卷4真题', '若二事件$A$和$B$同时出现的概率$P(AB) = 0$，则', '[''$A$和$B$不相容（相斥）．'', ''$AB$是不可能事件．'', ''$AB$未必是不可能事件．'', ''$P(A) = 0$或$P(B) = 0$．'']', "['C']", '
事件$A$和$B$同时出现的概率$P(AB) = 0$，表示$A$和$B$同时发生的概率为$0$，但这并不一定意味着$AB$是不可能事件。
在概率论中，概率为$0$的事件不一定是不可能事件，例如在连续概率分布中，某个点的事件概率为$0$，但该点可能发生。
因此，$AB$未必是不可能事件，选项$C$正确。选项$A$错误，因为$P(AB) = 0$并不一定表示$A$和$B$不相容（如果不相容，则$AB$必须是不可能事件）。选项$B$错误，因为$P(AB) = 0$不一定意味着$AB$是不可能事件。选项$D$错误，因为$P(AB) = 0$并不要求$P(A) = 0$或$P(B) = 0$，例如在非独立事件中，$P(A)$和$P(B)$均大于$0$时，$P(AB)$也可能为$0$。', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '68');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '68');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (69, '1987年考研数学卷4第11题', '简单', '考研数学1987年卷4真题', '求极限$\\lim_{x→0}(1 + xe^{x})x1​$．', '[]', '
$e$
', '
求极限$L = \\lim_{x→0}(1 + xe^{x})x1​$。
对表达式取自然对数：

$$
\\ln L = \\lim_{x→0} \\frac{\\ln(1 + xe^{x})}{x}
$$

此为$\\frac{0}{0}$型不定式，应用洛必达法则：

$$
\\ln L = \\lim_{x→0} \\frac{\\frac{d}{dx} \\ln(1 + xe^{x})}{\\frac{d}{dx}x} = \\lim_{x→0} \\frac{\\frac{1}{1+xe^{x}} ⋅ (e^{x} + xe^{x})}{1} = \\lim_{x→0} \\frac{e^{x}(1 + x)}{1 + xe^{x}}
$$

代入$x = 0$：

$$
\\frac{e^{0}(1 + 0)}{1 + 0} = 1
$$

故$\\ln L = 1$，即$L = e$。
因此，所求极限为：

$$
e​
$$

', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '69');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '69');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '69');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (70, '1987年考研数学卷4第12题', '简单', '考研数学1987年卷4真题', '$y = \\ln \\frac{\\sqrt{1+x^{2}}-1}{\\sqrt{1+x^{2}}+1}$，求$y^{′}$．', '[]', '

$$
y^{′} = \\frac{2}{x\\sqrt{1 + x^{2}}}
$$

', '设$u = \\frac{\\sqrt{1+x^{2}}-1}{\\sqrt{1+x^{2}}+1}$，则$y = \\ln u$，所以$y^{′} = \\frac{u^{′}}{u}$。
首先，求$u^{′}$。令$v = \\sqrt{1 + x^{2}}$，则$u = \\frac{v-1}{v+1}$。
求导：$v^{′} = \\frac{x}{\\sqrt{1+x^{2}}}$。
用商的导数公式：


$$
u^{′} = \\frac{(v^{′})(v + 1) - (v - 1)(v^{′})}{(v + 1)2} = \\frac{v^{′} \\lbrack (v + 1) - (v - 1) \\rbrack }{(v + 1)2} = \\frac{v^{′} ⋅ 2}{(v + 1)2} = \\frac{2v^{′}}{(v + 1)2}
$$

代入$v^{′}$和$v$：


$$
u^{′} = \\frac{2 ⋅ \\frac{x}{\\sqrt{1+x^{2}}}}{(\\sqrt{1 + x^{2}} + 1)2} = \\frac{2x}{\\sqrt{1 + x^{2}}(\\sqrt{1 + x^{2}} + 1)2}
$$

现在，

$$
\\begin{array}{cc}
y^{′} & = \\frac{u^{′}}{u} = \\frac{\\frac{2x}{\\sqrt{1 + x^{2}}(\\sqrt{1 + x^{2}} + 1)2}}{\\frac{\\sqrt{1 + x^{2}} - 1}{\\sqrt{1 + x^{2}} + 1}} \\\\
 & = \\frac{2x}{\\sqrt{1 + x^{2}}(\\sqrt{1 + x^{2}} + 1)2} ⋅ \\frac{\\sqrt{1 + x^{2}} + 1}{\\sqrt{1 + x^{2}} - 1} \\\\
\\end{array}
$$

$(\\sqrt{1 + x^{2}} + 1)(\\sqrt{1 + x^{2}} - 1) = (1 + x^{2}) - 1 = x^{2}$，所以：


$$
y^{′} = \\frac{2x}{\\sqrt{1 + x^{2}} ⋅ x^{2}} = \\frac{2}{x\\sqrt{1 + x^{2}}}
$$

因此，导数为$\\frac{2}{x\\sqrt{1+x^{2}}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:14', 9, 'Mogullzr', '2026-01-29 14:06:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '70');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '70');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '70');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (71, '1987年考研数学卷4第13题', '简单', '考研数学1987年卷4真题', '$z = arctan \\frac{x+y}{x-y}$，求$dz$．', '[]', '

$$
dz = \\frac{x dy - y dx}{x^{2} + y^{2}}
$$

', '给定$z = arctan \\frac{x+y}{x-y}$，求全微分$dz$。
设$u = \\frac{x+y}{x-y}$，则$z = arctan u$。
全微分公式为$dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy$。
首先，计算$\\frac{∂z}{∂x}$和$\\frac{∂z}{∂y}$使用链式法则：


$$
\\frac{∂z}{∂x} = \\frac{1}{1 + u^{2}} ⋅ \\frac{∂u}{∂x},  \\frac{∂z}{∂y} = \\frac{1}{1 + u^{2}} ⋅ \\frac{∂u}{∂y}.
$$

计算$\\frac{∂u}{∂x}$和$\\frac{∂u}{∂y}$：


$$
\\frac{∂u}{∂x} = \\frac{(x - y) ⋅ 1 - (x + y) ⋅ 1}{(x - y)2} = \\frac{−2y}{(x - y)2},
$$



$$
\\frac{∂u}{∂y} = \\frac{(x - y) ⋅ 1 - (x + y) ⋅ (−1)}{(x - y)2} = \\frac{2x}{(x - y)2}.
$$

计算$1 + u^{2}$:


$$
\\begin{array}{cc}
u^{2} & = (\\frac{x + y}{x - y})^{2} , \\\\
1 + u^{2} & = 1 + \\frac{(x + y)2}{(x - y)2} \\\\
 & = \\frac{(x - y)2 + (x + y)2}{(x - y)2} \\\\
 & = \\frac{2(x^{2} + y^{2})}{(x - y)2}. \\\\
\\end{array}
$$

所以，


$$
\\frac{1}{1 + u^{2}} = \\frac{(x - y)2}{2(x^{2} + y^{2})}.
$$

代入偏导数：


$$
\\frac{∂z}{∂x} = \\frac{(x - y)2}{2(x^{2} + y^{2})} ⋅ \\frac{−2y}{(x - y)2} = \\frac{−y}{x^{2} + y^{2}},
$$



$$
\\frac{∂z}{∂y} = \\frac{(x - y)2}{2(x^{2} + y^{2})} ⋅ \\frac{2x}{(x - y)2} = \\frac{x}{x^{2} + y^{2}}.
$$

因此，全微分为：


$$
dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy = \\frac{−y}{x^{2} + y^{2}}dx + \\frac{x}{x^{2} + y^{2}}dy = \\frac{x dy - y dx}{x^{2} + y^{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:15', 9, 'Mogullzr', '2026-01-29 14:06:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '71');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '71');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '71');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (72, '1987年考研数学卷4第14题', '简单', '考研数学1987年卷4真题', '求不定积分$∫ e^{\\sqrt{2x-1}}dx$．', '[]', '

$$
e^{\\sqrt{2x-1}} (\\sqrt{2x - 1} - 1) + C
$$

', '令$u = \\sqrt{2x - 1}$，则$u^{2} = 2x - 1$，解得$x = \\frac{u^{2}+1}{2}$，进而$dx = u du$。
代入原积分得：


$$
∫ e^{\\sqrt{2x-1}} dx = ∫ e^{u} ⋅ u du
$$

对$∫ ue^{u} du$使用分部积分法，令$v = u$，$dw = e^{u} du$，则$dv = du$，$w = e^{u}$。
分部积分公式：


$$
∫ v dw = vw - ∫ w dv
$$

代入得：


$$
∫ ue^{u} du = ue^{u} - ∫ e^{u} du = ue^{u} - e^{u} + C = e^{u}(u - 1) + C
$$

代回$u = \\sqrt{2x - 1}$，得：


$$
∫ e^{\\sqrt{2x-1}} dx = e^{\\sqrt{2x-1}} (\\sqrt{2x - 1} - 1) + C
$$

验证：对结果求导，可得原被积函数，故积分正确。
', 9, 'Mogullzr', '2026-01-29 14:06:15', 9, 'Mogullzr', '2026-01-29 14:06:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '72');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '72');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '72');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (73, '1987年考研数学卷4第15题', '简单', '考研数学1987年卷4真题', '考虑函数$y = \\sin x$,$0 ≤ x ≤ \\frac{π}{2}$（如图），问：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/6380ec39129240c9ad6f701d9ecefbae.jpg)
(1)$t$取何值时，图中阴影部分的面积$S_{1}$与$S_{2}$之和$S = S_{1} + S_{2}$最小？(2)$t$取何值时，面积$S = S_{1} + S_{2}$最大？', '[]', '
(1)$t = \\frac{π}{4}$
(2)$t = 0$
', '
考虑函数$y = \\sin x$在区间$\\lbrack 0, \\frac{π}{2} \\rbrack$上，设$S = S_{1} + S_{2}$，其中$S_{1}$为从$x = 0$到$x = t$时直线$y = \\sin t$与曲线$y = \\sin x$之间的面积，即$S_{1} = \\int_{0}^{t}(\\sin t - \\sin x) dx$；$S_{2}$为从$x = t$到$x = \\frac{π}{2}$时曲线$y = \\sin x$与直线$y = \\sin t$之间的面积，即$S_{2} = \\int_{t}^{\\frac{π}{2}}(\\sin x - \\sin t) dx$。
计算$S$:


$$
S = \\int_{0}^{t}(\\sin t - \\sin x) dx + \\int_{t}^{\\frac{π}{2}}(\\sin x - \\sin t) dx
$$

首先，计算$\\int_{0}^{t}(\\sin t - \\sin x) dx = t \\sin t + \\cos t - 1$。
其次，计算$\\int_{t}^{\\frac{π}{2}}(\\sin x - \\sin t) dx = \\cos t - \\sin t (\\frac{π}{2} - t)$。
因此，


$$
S = t \\sin t + \\cos t - 1 + \\cos t - \\sin t (\\frac{π}{2} - t) = \\sin t (2t - \\frac{π}{2}) + 2 \\cos t - 1
$$

求导$S^{′}(t)$:


$$
\\begin{array}{cc}
S^{′}(t) & = \\frac{d}{dt}  \\lbrack \\sin t (2t - \\frac{π}{2}) + 2 \\cos t - 1 \\rbrack  \\\\
 & = \\cos t (2t - \\frac{π}{2}) + \\sin t ⋅ 2 - 2 \\sin t \\\\
 & = \\cos t (2t - \\frac{π}{2}) \\\\
\\end{array}
$$

令$S^{′}(t) = 0$，得$\\cos t (2t - \\frac{π}{2}) = 0$。在区间$\\lbrack 0, \\frac{π}{2} \\rbrack$上，$\\cos t = 0$时$t = \\frac{π}{2}$，$2t - \\frac{π}{2} = 0$时$t = \\frac{π}{4}$。
计算端点及临界点函数值：
$S(0) = \\sin 0 (2 ⋅ 0 - \\frac{π}{2}) + 2 \\cos 0 - 1 = 0 + 2 - 1 = 1$$S (\\frac{π}{4}) = \\sin \\frac{π}{4} (2 ⋅ \\frac{π}{4} - \\frac{π}{2}) + 2 \\cos \\frac{π}{4} - 1 = \\frac{\\sqrt{2}}{2} ⋅ 0 + \\sqrt{2} - 1 = \\sqrt{2} - 1 ≈ 0.414$$S (\\frac{π}{2}) = \\sin \\frac{π}{2} (2 ⋅ \\frac{π}{2} - \\frac{π}{2}) + 2 \\cos \\frac{π}{2} - 1 = 1 ⋅ \\frac{π}{2} + 0 - 1 = \\frac{π}{2} - 1 ≈ 0.570$
比较得，$S$在$t = \\frac{π}{4}$时最小，在$t = 0$时最大。
故 (1)$t = \\frac{π}{4}$，(2)$t = 0$。
', 9, 'Mogullzr', '2026-01-29 14:06:17', 9, 'Mogullzr', '2026-01-29 14:06:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '73');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '73');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '73');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (74, '1987年考研数学卷4第16题', '简单', '考研数学1987年卷4真题', '将函数$f(x) = \\frac{1}{x^{2}-3x+2}$展成$x$的幂级数，并指出其收敛区间．', '[]', '函数$f(x) = \\frac{1}{x^{2}-3x+2}$展成$x$的幂级数为：

$$
f(x) = \\sum_{n=0}^{∞} (1 - \\frac{1}{2^{n+1}}) x^{n}
$$

收敛区间为$(−1, 1)$。
', '函数$f(x) = \\frac{1}{x^{2}-3x+2}$的分母可分解为$(x - 1)(x - 2)$，通过部分分式得

$$
f(x) = \\frac{1}{1 - x} - \\frac{1}{2 - x}.
$$

已知几何级数展开

$$
\\frac{1}{1 - x} = \\sum_{n=0}^{∞} x^{n},  ∣x∣ < 1,
$$

以及

$$
\\frac{1}{2 - x} = \\frac{1}{2} ⋅ \\frac{1}{1 - \\frac{x}{2}} = \\sum_{n=0}^{∞} \\frac{x^{n}}{2^{n+1}},  ∣x∣ < 2.
$$

两式相减得

$$
f(x) = \\sum_{n=0}^{∞} x^{n} - \\sum_{n=0}^{∞} \\frac{x^{n}}{2^{n+1}} = \\sum_{n=0}^{∞} (1 - \\frac{1}{2^{n+1}}) x^{n}.
$$

该幂级数的收敛半径$R = 1$（离$x = 0$最近的奇点为$x = 1$），当$∣x∣ = 1$时通项不趋于零，级数发散，故收敛区间为

$$
(−1, 1)​.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:18', 9, 'Mogullzr', '2026-01-29 14:06:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '74');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '74');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '74');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (75, '1987年考研数学卷4第17题', '简单', '考研数学1987年卷4真题', '计算二重积分$I = \\iint_{D} e^{x^{2}}dxdy$，
其中$D$是第一象限中由直线$y = x$和$y = x^{3}$所围成的封闭区域．', '[]', '

$$
\\frac{e}{2} - 1
$$

', '积分区域$D$是第一象限中由直线$y = x$和$y = x^{3}$所围成的封闭区域。两条曲线相交于$x = 0$和$x = 1$，因此$x$的取值范围为$\\lbrack 0, 1 \\rbrack$。对于每个$x$，$y$从$y = x^{3}$到$y = x$。于是二重积分可化为：

$$
I = \\int_{0}^{1} \\int_{x^{3}}^{x} e^{x^{2}} dy dx
$$

先对$y$积分，由于$e^{x^{2}}$与$y$无关，内层积分为：

$$
\\int_{x^{3}}^{x} e^{x^{2}} dy = e^{x^{2}}  \\lbrack y \\rbrack _{x^{3}}^{x} = e^{x^{2}}(x - x^{3})
$$

因此，

$$
I = \\int_{0}^{1} e^{x^{2}}(x - x^{3}) dx = \\int_{0}^{1} e^{x^{2}}x(1 - x^{2}) dx
$$

令$t = x^{2}$，则$dt = 2x dx$，即$x dx = \\frac{dt}{2}$。当$x = 0$时，$t = 0$；当$x = 1$时，$t = 1$。代入得：

$$
I = \\int_{0}^{1} e^{t}(1 - t) ⋅ \\frac{dt}{2} = \\frac{1}{2} \\int_{0}^{1} e^{t}(1 - t) dt
$$

计算积分$\\int_{0}^{1} e^{t}(1 - t) dt$：

$$
\\int_{0}^{1} e^{t}(1 - t) dt = \\int_{0}^{1} e^{t} dt - \\int_{0}^{1} te^{t} dt
$$

其中，

$$
\\int_{0}^{1} e^{t} dt =  \\lbrack e^{t} \\rbrack _{0}^{1} = e - 1
$$

对于$\\int_{0}^{1} te^{t} dt$，使用分部积分法：令$u = t$，$dv = e^{t} dt$，则$du = dt$，$v = e^{t}$，于是：

$$
∫ te^{t} dt = te^{t} - ∫ e^{t} dt = te^{t} - e^{t} + C
$$

所以，

$$
\\int_{0}^{1} te^{t} dt =  \\lbrack te^{t} - e^{t} \\rbrack _{0}^{1} = (1 ⋅ e - e) - (0 ⋅ e^{0} - e^{0}) = (e - e) - (0 - 1) = 1
$$

因此，

$$
\\int_{0}^{1} e^{t}(1 - t) dt = (e - 1) - 1 = e - 2
$$

代入原式：

$$
I = \\frac{1}{2}(e - 2) = \\frac{e}{2} - 1
$$

故二重积分的值为$\\frac{e}{2} - 1$。
', 9, 'Mogullzr', '2026-01-29 14:06:18', 9, 'Mogullzr', '2026-01-29 14:06:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '75');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '75');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '75');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (76, '1987年考研数学卷4第18题', '简单', '考研数学1987年卷4真题', '已知某商品的需求量$x$对价格$p$的弹性为$η = −3p^{3}$，
而市场对该商品的最大需求量为$1$（万件），求需求函数．', '[]', '
$x = e^{−p^{3}}$
', '
已知需求弹性$η = \\frac{p}{x}\\frac{dx}{dp} = −3p^{3}$，整理得


$$
\\frac{1}{x}\\frac{dx}{dp} = −3p^{2}
$$

两边积分得


$$
∫ \\frac{1}{x} dx = ∫ −3p^{2} dp
$$

即


$$
\\ln ∣x∣ = −p^{3} + C
$$

其中$C$为积分常数。
取指数得


$$
x = e^{C}e^{−p^{3}}
$$

由市场最大需求量为 1（万件），即当$p = 0$时$x = 1$，代入得


$$
1 = e^{C} ⋅ e^{0}
$$

所以$e^{C} = 1$。
因此需求函数为


$$
x = e^{−p^{3}}
$$

验证弹性：


$$
\\frac{dx}{dp} = −3p^{2}e^{−p^{3}}
$$

则


$$
η = \\frac{p}{x}\\frac{dx}{dp} = \\frac{p}{e^{−p^{3}}} ⋅ (−3p^{2}e^{−p^{3}}) = −3p^{3}
$$

符合给定条件。
', 9, 'Mogullzr', '2026-01-29 14:06:18', 9, 'Mogullzr', '2026-01-29 14:06:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '76');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '76');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '76');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (77, '1987年考研数学卷4第19题', '简单', '考研数学1987年卷4真题', '解线性方程组$\\begin{cases} 2x_{1} - x_{2} + 4x_{3} - 3x_{4} = −4 \\\\ x_{1} + x_{3} - x_{4} = −3 \\\\ 3x_{1} + x_{2} + x_{3} = 1 \\\\ 7x_{1} + 7x_{3} - 3x_{4} = 3. \\end{cases}$', '[]', '$x_{1} = 3 - t,  x_{2} = −8 + 2t,  x_{3} = t,  x_{4} = 6$（其中$t$为任意常数）
', '写出方程组的增广矩阵：

$$
\\left( \\begin{array}{cccc|c}
2 & −1 & 4 & −3 & −4 \\\\
1 & 0 & 1 & −1 & −3 \\\\
3 & 1 & 1 & 0 & 1 \\\\
7 & 0 & 7 & −3 & 3 \\\\
\\end{array} \\right)
$$

首先，将第二行与第一行交换，以便第一行第一个元素为1：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 1 & −1 & −3 \\\\
2 & −1 & 4 & −3 & −4 \\\\
3 & 1 & 1 & 0 & 1 \\\\
7 & 0 & 7 & −3 & 3 \\\\
\\end{array} \\right)
$$

用第二行减去2倍第一行：$R2 - 2R1$，得新第二行$(0, −1, 2, −1, 2)$；用第三行减去3倍第一行：$R3 - 3R1$，得新第三行$(0, 1, −2, 3, 10)$；用第四行减去7倍第一行：$R4 - 7R1$，得新第四行$(0, 0, 0, 4, 24)$。矩阵变为：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 1 & −1 & −3 \\\\
0 & −1 & 2 & −1 & 2 \\\\
0 & 1 & −2 & 3 & 10 \\\\
0 & 0 & 0 & 4 & 24 \\\\
\\end{array} \\right)
$$

将第二行乘以-1：$R2 × (−1)$，得新第二行$(0, 1, −2, 1, −2)$。矩阵变为：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 1 & −1 & −3 \\\\
0 & 1 & −2 & 1 & −2 \\\\
0 & 1 & −2 & 3 & 10 \\\\
0 & 0 & 0 & 4 & 24 \\\\
\\end{array} \\right)
$$

用第三行减去第二行：$R3 - R2$，得新第三行$(0, 0, 0, 2, 12)$。矩阵变为：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 1 & −1 & −3 \\\\
0 & 1 & −2 & 1 & −2 \\\\
0 & 0 & 0 & 2 & 12 \\\\
0 & 0 & 0 & 4 & 24 \\\\
\\end{array} \\right)
$$

将第三行除以2：$R3 ÷ 2$，得新第三行$(0, 0, 0, 1, 6)$；将第四行除以4：$R4 ÷ 4$，得新第四行$(0, 0, 0, 1, 6)$。矩阵变为：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 1 & −1 & −3 \\\\
0 & 1 & −2 & 1 & −2 \\\\
0 & 0 & 0 & 1 & 6 \\\\
0 & 0 & 0 & 1 & 6 \\\\
\\end{array} \\right)
$$

第四行与第三行相同，因此第四行是冗余的，可忽略。从第三行得$x_{4} = 6$。回代到第二行：$x_{2} - 2x_{3} + x_{4} = −2$，代入$x_{4} = 6$得$x_{2} - 2x_{3} = −8$。回代到第一行：$x_{1} + x_{3} - x_{4} = −3$，代入$x_{4} = 6$得$x_{1} + x_{3} = 3$。令$x_{3} = t$（$t$为自由变量），则$x_{1} = 3 - t$，$x_{2} = −8 + 2t$，$x_{4} = 6$。验证原方程组均成立。
', 9, 'Mogullzr', '2026-01-29 14:06:18', 9, 'Mogullzr', '2026-01-29 14:06:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '77');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '77');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (78, '1987年考研数学卷4第20题', '简单', '考研数学1987年卷4真题', '假设矩阵$A$和$B$满足如下关系式$AB = A + 2B$，其中$A = \\left( \\begin{array}{ccc}
4 & 2 & 3 \\\\
1 & 1 & 0 \\\\
−1 & 2 & 3 \\\\
\\end{array} \\right)$，求矩阵$B$', '[]', '

$$
B = \\left( \\begin{array}{ccc}
3 & −8 & −6 \\\\
2 & −9 & −6 \\\\
−2 & 12 & 9 \\\\
\\end{array} \\right)
$$

', '给定关系式$AB = A + 2B$，其中

$$
A = \\left( \\begin{array}{ccc}
4 & 2 & 3 \\\\
1 & 1 & 0 \\\\
−1 & 2 & 3 \\\\
\\end{array} \\right) .
$$

将方程整理为$AB - 2B = A$，即

$$
(A - 2I)B = A,
$$

其中$I$是单位矩阵。
计算$A - 2I$：

$$
A - 2I = \\left( \\begin{array}{ccc}
4 & 2 & 3 \\\\
1 & 1 & 0 \\\\
−1 & 2 & 3 \\\\
\\end{array} \\right) - \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 2 & 3 \\\\
1 & −1 & 0 \\\\
−1 & 2 & 1 \\\\
\\end{array} \\right)
$$

然后求逆矩阵$(A - 2I)−1$。通过增广矩阵行约简：

$$
\\begin{vmatrix}
2 & 2 & 3 & 1 & 0 & 0\\\\
1 & −1 & 0 & 0 & 1 & 0\\\\
−1 & 2 & 1 & 0 & 0 & 1
\\end{vmatrix}
$$

行约简后得到：

$$
(A - 2I)−1 = \\left( \\begin{array}{ccc}
1 & −4 & −3 \\\\
1 & −5 & −3 \\\\
−1 & 6 & 4 \\\\
\\end{array} \\right)
$$

然后计算$B = (A - 2I)−1A$：

$$
B = \\left( \\begin{array}{ccc}
1 & −4 & −3 \\\\
1 & −5 & −3 \\\\
−1 & 6 & 4 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
4 & 2 & 3 \\\\
1 & 1 & 0 \\\\
−1 & 2 & 3 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
3 & −8 & −6 \\\\
2 & −9 & −6 \\\\
−2 & 12 & 9 \\\\
\\end{array} \\right)
$$

验证：计算$AB$和$A + 2B$，两者相等，确认结果正确。
', 9, 'Mogullzr', '2026-01-29 14:06:18', 9, 'Mogullzr', '2026-01-29 14:06:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '78');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '78');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '78');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (79, '1987年考研数学卷4第21题', '简单', '考研数学1987年卷4真题', '求矩阵$A = \\left( \\begin{array}{ccc}
−3 & −1 & 2 \\\\
0 & −1 & 4 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right)$的实特征值及对应的特征向量．', '[]', '
实特征值为$λ = 1$，对应的特征向量为$\\left( \\begin{array}{c}
0 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$的任意非零倍数。
', '
计算$A - λI = \\left( \\begin{array}{ccc}
−3 - λ & −1 & 2 \\\\
0 & −1 - λ & 4 \\\\
−1 & 0 & 1 - λ \\\\
\\end{array} \\right)$的行列式：


$$
\\begin{array}{cccccccc}
det(A - λI) & \\begin{array}{cc}
−1 - λ & 4 \\\\
0 & 1 - λ \\\\
\\end{array} &  &  &  &  &  &  \\\\
 & = (−3 - λ) \\lbrack (−1 - λ)(1 - λ) \\rbrack  + 1 ⋅  \\lbrack 0 ⋅ (1 - λ) - 4 ⋅ (−1) \\rbrack  + 2 ⋅  \\lbrack 0 ⋅ 0 - (−1 - λ) ⋅ (−1) \\rbrack  &  &  &  &  &  &  \\\\
 &  & −1 - λ & 4 & 0 & 4 & 0 & −1 - λ \\\\
 & = (−3 - λ)(λ^{2} - 1) + 4 + 2(−1 - λ) &  &  &  &  &  &  \\\\
 &  & 0 & 1 - λ & −1 & 1 - λ & −1 & 0 \\\\
 & = (−3 - λ)(λ^{2} - 1) + 4 - 2 - 2λ &  &  &  &  &  &  \\\\
\\end{array}
$$

展开得：


$$
= −3λ^{2} + 3 - λ^{3} + λ + 2 - 2λ
$$



$$
= −λ^{3} - 3λ^{2} - λ + 5
$$

特征方程为$−λ^{3} - 3λ^{2} - λ + 5 = 0$，即$λ^{3} + 3λ^{2} + λ - 5 = 0$。
试根得$λ = 1$满足方程，因式分解为$(λ - 1)(λ^{2} + 4λ + 5) = 0$。
二次项$λ^{2} + 4λ + 5 = 0$的判别式为$4^{2} - 4 ⋅ 1 ⋅ 5 = −4 < 0$，无实根，故唯一实特征值为$λ = 1$。
求特征向量需解$(A - I)v = 0$，即


$$
\\left( \\begin{array}{ccc}
−4 & −1 & 2 \\\\
0 & −2 & 4 \\\\
−1 & 0 & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x \\\\
y \\\\
z \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
0 \\\\
0 \\\\
0 \\\\
\\end{array} \\right)
$$

由第三行$−x = 0$得$x = 0$，由第二行$−2y + 4z = 0$得$y = 2z$，代入第一行$−4 ⋅ 0 - y + 2z = −y + 2z = 0$与第二行一致。令$z = t$，则$y = 2t$，特征向量为$\\left( \\begin{array}{c}
0 \\\\
2t \\\\
t \\\\
\\end{array} \\right) = t \\left( \\begin{array}{c}
0 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$（$t \\neq 0$）。
', 9, 'Mogullzr', '2026-01-29 14:06:19', 9, 'Mogullzr', '2026-01-29 14:06:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '79');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '79');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (80, '1987年考研数学卷4第22题', '简单', '考研数学1987年卷4真题', '已知随机变量$X$的概率分布为
$$
P\\{X = 1\\} = 0.2,  P\\{X = 2\\} = 0.3,  P\\{X = 3\\} = 0.5,
$$
试写出其分布函数$F(x)$．', '[]', '

$$
F(x) = \\begin{cases} 0 & x < 1 \\\\ 0.2 & 1 ≤ x < 2 \\\\ 0.5 & 2 ≤ x < 3 \\\\ 1 & x ≥ 3 \\end{cases}
$$

', '
随机变量$X$的分布函数$F(x)$定义为$F(x) = P\\{X ≤ x\\}$。根据给定的概率分布，$X$只能取值为 1、2、3，且概率分别为 0.2、0.3、0.5。因此，需分段计算$F(x)$：
当$x < 1$时，$X ≤ x$不可能发生，故$F(x) = 0$。当$1 ≤ x < 2$时，$X ≤ x$等价于$X = 1$，故$F(x) = P\\{X = 1\\} = 0.2$。当$2 ≤ x < 3$时，$X ≤ x$等价于$X = 1$或$X = 2$，故$F(x) = P\\{X = 1\\} + P\\{X = 2\\} = 0.2 + 0.3 = 0.5$。当$x ≥ 3$时，$X ≤ x$总是成立，故$F(x) = 1$。
综上，得到分布函数如上所示。
', 9, 'Mogullzr', '2026-01-29 14:06:19', 9, 'Mogullzr', '2026-01-29 14:06:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '80');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '80');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (81, '1987年考研数学卷4第23题', '简单', '考研数学1987年卷4真题', '已知随机变量$Y$的概率密度为$f(y) = \\begin{cases} \\frac{y}{a^{2}}e^{−\\frac{u^{2}}{a^{2}}} & y > 0 \\\\ 0 & y ≤ 0 \\end{cases}$求随机变量$Z = \\frac{1}{Y}$的数学期望$EZ$．', '[]', '

$$
EZ = \\frac{\\sqrt{π}}{2a}
$$

', '已知随机变量$Y$的概率密度函数为$f(y) = \\frac{y}{a^{2}}e^{−\\frac{y^{2}}{a^{2}}}$for$y > 0$，求$Z = \\frac{1}{Y}$的数学期望$EZ$。根据数学期望的定义，有：

$$
EZ = E  \\lbrack \\frac{1}{Y} \\rbrack  = \\int_{0}^{∞} \\frac{1}{y}f(y) dy = \\int_{0}^{∞} \\frac{1}{y} ⋅ \\frac{y}{a^{2}}e^{−\\frac{y^{2}}{a^{2}}} dy = \\frac{1}{a^{2}} \\int_{0}^{∞} e^{−\\frac{y^{2}}{a^{2}}} dy.
$$

计算积分$\\int_{0}^{∞} e^{−\\frac{y^{2}}{a^{2}}} dy$，令$u = \\frac{y}{a}$，则$dy = a du$，积分限变为$u = 0$到$u = ∞$，于是：

$$
\\int_{0}^{∞} e^{−\\frac{y^{2}}{a^{2}}} dy = \\int_{0}^{∞} e^{−u^{2}} ⋅ a du = a \\int_{0}^{∞} e^{−u^{2}} du.
$$

已知$\\int_{0}^{∞} e^{−u^{2}} du = \\frac{\\sqrt{π}}{2}$，代入得：

$$
\\int_{0}^{∞} e^{−\\frac{y^{2}}{a^{2}}} dy = a ⋅ \\frac{\\sqrt{π}}{2}.
$$

因此，

$$
EZ = \\frac{1}{a^{2}} ⋅ a ⋅ \\frac{\\sqrt{π}}{2} = \\frac{\\sqrt{π}}{2a}.
$$

故随机变量$Z$的数学期望为$\\frac{\\sqrt{π}}{2a}$。
', 9, 'Mogullzr', '2026-01-29 14:06:19', 9, 'Mogullzr', '2026-01-29 14:06:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '81');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '81');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (82, '1987年考研数学卷4第24题', '简单', '考研数学1987年卷4真题', '假设有两箱同种零件：第一箱内装$50$件，其中$10$件一等品；第二箱内装$30$件，其中$18$件一等品，
现从两箱中任意挑出一箱，然后从该箱中先后随机取出两个零件（取出的零件均不放回）．试求：(1) 先取出的零件是一等品的概率$p$；(2) 在先取出的是一等品的条件下，第二次取出的零件仍然是一等品的条件概率$q$．', '[]', '
$p = \\frac{2}{5}$,$q = \\frac{690}{1421}$
', '
(1) 设事件$A$为先取出的零件是一等品。设$H_{1}$为选中第一箱的事件，$H_{2}$为选中第二箱的事件，则$P(H_{1}) = P(H_{2}) = \\frac{1}{2}$。
给定$H_{1}$，先取出一等品的概率为$P(A ∣ H_{1}) = \\frac{10}{50} = \\frac{1}{5}$。
给定$H_{2}$，先取出一等品的概率为$P(A ∣ H_{2}) = \\frac{18}{30} = \\frac{3}{5}$。
由全概率公式：


$$
P(A) = P(A ∣ H_{1})P(H_{1}) + P(A ∣ H_{2})P(H_{2}) = \\frac{1}{5} × \\frac{1}{2} + \\frac{3}{5} × \\frac{1}{2} = \\frac{4}{5} × \\frac{1}{2} = \\frac{2}{5}.
$$

故$p = \\frac{2}{5}$。
(2) 设事件$B$为第二次取出的零件是一等品。需要求条件概率$q = P(B ∣ A)$。
由条件概率公式：


$$
P(B ∣ A) = \\frac{P(A ∩ B)}{P(A)}.
$$

首先求$P(A ∩ B)$。


$$
P(A ∩ B) = P(A ∩ B ∣ H_{1})P(H_{1}) + P(A ∩ B ∣ H_{2})P(H_{2}).
$$

给定$H_{1}$，两次均取出一等品的概率为：


$$
P(A ∩ B ∣ H_{1}) = \\frac{10}{50} × \\frac{9}{49} = \\frac{9}{245}.
$$

给定$H_{2}$，两次均取出一等品的概率为：


$$
P(A ∩ B ∣ H_{2}) = \\frac{18}{30} × \\frac{17}{29} = \\frac{51}{145}.
$$

所以：


$$
P(A ∩ B) = \\frac{9}{245} × \\frac{1}{2} + \\frac{51}{145} × \\frac{1}{2} = \\frac{1}{2} (\\frac{9}{245} + \\frac{51}{145}) .
$$

计算括号内：


$$
\\frac{9}{245} + \\frac{51}{145} = \\frac{9 × 29}{245 × 29} + \\frac{51 × 49}{145 × 49} = \\frac{261}{7105} + \\frac{2499}{7105} = \\frac{2760}{7105} = \\frac{552}{1421}.
$$

于是：


$$
P(A ∩ B) = \\frac{1}{2} × \\frac{552}{1421} = \\frac{276}{1421}.
$$

代入条件概率公式：


$$
q = P(B ∣ A) = \\frac{\\frac{276}{1421}}{\\frac{2}{5}} = \\frac{276}{1421} × \\frac{5}{2} = \\frac{1380}{2842} = \\frac{690}{1421}.
$$

故$q = \\frac{690}{1421}$。
', 9, 'Mogullzr', '2026-01-29 14:06:19', 9, 'Mogullzr', '2026-01-29 14:06:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '82');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '82');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (83, '1987年考研数学卷5第1题', '', '考研数学1987年卷5真题', '/problems/other/59', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (84, '1987年考研数学卷5第2题', '', '考研数学1987年卷5真题', '/problems/other/60', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (85, '1987年考研数学卷5第3题', '简单', '考研数学1987年卷5真题', '若函数$f(x)$在区间$(a, b)$内严格单调增加，
则对于区间$(a, b)$内的任何一点$x$有$f^{′}(x) > 0$．', '[]', '
错误
', '
函数在区间内严格单调增加，仅表明对于任意两点$x_{1} < x_{2}$，有$f(x_{1}) < f(x_{2})$，但这并不保证函数在每一点处都可导，或者导数均大于零。例如，函数$f(x) = x^{3}$在区间$(−1, 1)$内严格单调增加，但在点$x = 0$处，其导数$f^{′}(0) = 0$，而不满足$f^{′}(x) > 0$。因此，原说法错误。
', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '85');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '85');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '85');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (86, '1987年考研数学卷5第4题', '简单', '考研数学1987年卷5真题', '若$A$为$n$阶方阵，$k$为常数，
则$∣kA∣ = k∣A∣$．', '[]', '错误
对于$n$阶方阵$A$，行列式$∣kA∣$的计算公式为


$$
∣kA∣ = k^{n}∣A∣,
$$

而不是$k∣A∣$。
这是因为当矩阵$A$的每个元素都乘以常数$k$时，行列式作为多重线性函数，会因每一行都乘以$k$而整体乘以$k$的$n$次方。
例如，当$n = 2$时，取$A$为单位矩阵$I$，则


$$
∣kI∣ = k^{2},
$$

而$k∣I∣ = k$，两者不相等，除非$n = 1$。
因此，原命题不正确。
', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '86');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '86');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (87, '1987年考研数学卷5第5题', '', '考研数学1987年卷5真题', '/problems/other/63', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (88, '1987年考研数学卷5第6题', '简单', '考研数学1987年卷5真题', '函数（ ）在其定义域内连续．', '[''$f(x) = \\\\frac{1}{x}$'', ''$f(x) = \\\\begin{cases} \\\\sin x & x ≤ 0; \\\\\\\\ \\\\cos x & x > 0 \\\\end{cases}$'', ''$f(x) = \\\\begin{cases} x + 1 & x < 0; \\\\\\\\ 0 & x = 0; \\\\\\\\ x - 1 & x > 0 \\\\end{cases}$'', ''$f(x) = \\\\begin{cases} \\\\frac{1}{∣x∣} & x \\\\neq 0; \\\\\\\\ 0 & x = 0 \\\\end{cases}$'']', "['A']", '
函数在其定义域内连续，需满足定义域内每一点都连续。选项A：$f(x) = \\frac{1}{x}$，定义域为$x \\neq 0$，在定义域内$\\frac{1}{x}$是初等函数，因此连续。选项B：在$x = 0$处，左极限为$\\sin 0 = 0$，右极限为$\\cos 0 = 1$，左右极限不相等，故不连续。选项C：在$x = 0$处，左极限为$0 + 1 = 1$，右极限为$0 - 1 = −1$，函数值为0，三者不相等，故不连续。选项D：在$x = 0$处，当$x → 0$时，$\\frac{1}{∣x∣} → ∞$，极限不存在，故不连续。因此，只有选项A在其定义域内连续。', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '88');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '88');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '88');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (89, '1987年考研数学卷5第7题', '', '考研数学1987年卷5真题', '/problems/other/65', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (90, '1987年考研数学卷5第8题', '', '考研数学1987年卷5真题', '/problems/other/66', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (91, '1987年考研数学卷5第9题', '', '考研数学1987年卷5真题', '/problems/other/67', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (92, '1987年考研数学卷5第10题', '简单', '考研数学1987年卷5真题', '对于任意二事件$A$和$B$，有$P(A - B) =$', '[''$P(A) - P(B)$．'', ''$P(A) - P(B) + P(AB)$．'', ''$P(A) - P(AB)$．'', ''$P(A) + P(\\\\bar{B}) - P(A\\\\bar{B})$．'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:06:21', 9, 'Mogullzr', '2026-01-29 14:06:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '92');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '92');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (93, '1987年考研数学卷5第11题', '简单', '考研数学1987年卷5真题', '求极限
$$
\\lim_{x→+∞} \\frac{\\ln (1 + \\frac{1}{x})}{arctan x}
$$
', '[]', '
0
', '
当$x → +∞$时，分子$\\ln (1 + \\frac{1}{x}) → \\ln 1 = 0$，分母$arctan x → \\frac{π}{2} \\neq 0$，因此极限为$0$。
', 9, 'Mogullzr', '2026-01-29 14:06:22', 9, 'Mogullzr', '2026-01-29 14:06:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '93');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '93');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '93');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (94, '1987年考研数学卷5第12题', '', '考研数学1987年卷5真题', '/problems/other/70', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:22', 9, 'Mogullzr', '2026-01-29 14:06:22', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (95, '1987年考研数学卷5第13题', '', '考研数学1987年卷5真题', '/problems/other/71', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:22', 9, 'Mogullzr', '2026-01-29 14:06:22', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (96, '1987年考研数学卷5第14题', '简单', '考研数学1987年卷5真题', '计算定积分
$$
\\int_{\\frac{1}{2}}^{1} e^{\\sqrt{2x-1}}dx
$$
', '[]', '
1
', '
考虑定积分$\\int_{\\frac{1}{2}}^{1} e^{\\sqrt{2x-1}} dx$。令$t = \\sqrt{2x - 1}$，则$t^{2} = 2x - 1$，即$x = \\frac{t^{2}+1}{2}$，微分得$dx = t dt$。积分限变化：当$x = \\frac{1}{2}$时，$t = 0$；当$x = 1$时，$t = 1$。代入后积分变为$\\int_{0}^{1} te^{t} dt$。
使用分部积分法计算$∫ te^{t} dt$，令$u = t$，$dv = e^{t} dt$，则$du = dt$，$v = e^{t}$。有：


$$
∫ te^{t} dt = te^{t} - ∫ e^{t} dt = te^{t} - e^{t} + C = e^{t}(t - 1) + C
$$

代入定积分上下限：


$$
\\lbrack e^{t}(t - 1) \\rbrack _{0}^{1} = (e^{1}(1 - 1)) - (e^{0}(0 - 1)) = (e ⋅ 0) - (1 ⋅ (−1)) = 0 - (−1) = 1
$$

因此，积分结果为 1。
', 9, 'Mogullzr', '2026-01-29 14:06:22', 9, 'Mogullzr', '2026-01-29 14:06:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '96');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '96');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '96');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (97, '1987年考研数学卷5第15题', '简单', '考研数学1987年卷5真题', '求不定积分
$$
∫ \\frac{xdx}{x^{4} + 2x^{2} + 5}
$$
', '[]', '

$$
\\frac{1}{4} arctan (\\frac{x^{2} + 1}{2}) + C
$$

', '首先，分母$x^{4} + 2x^{2} + 5$可化为完全平方形式：$x^{4} + 2x^{2} + 5 = (x^{2} + 1)2 + 4$。于是积分变为：

$$
∫ \\frac{x dx}{(x^{2} + 1)2 + 4}.
$$

令$t = x^{2}$，则$dt = 2x dx$，即$x dx = \\frac{dt}{2}$。代入得：

$$
∫ \\frac{x dx}{(x^{2} + 1)2 + 4} = \\frac{1}{2} ∫ \\frac{dt}{(t + 1)2 + 4}.
$$

再令$u = t + 1$，则$du = dt$，积分变为：

$$
\\frac{1}{2} ∫ \\frac{du}{u^{2} + 4} = \\frac{1}{2} ⋅ \\frac{1}{2} arctan (\\frac{u}{2}) + C = \\frac{1}{4} arctan (\\frac{u}{2}) + C.
$$

回代$u = t + 1$和$t = x^{2}$，得：

$$
\\frac{1}{4} arctan (\\frac{x^{2} + 1}{2}) + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:22', 9, 'Mogullzr', '2026-01-29 14:06:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '97');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '97');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '97');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (98, '1987年考研数学卷5第16题', '简单', '考研数学1987年卷5真题', '考虑函数$y = x^{2}$,$0 ≤ x ≤ 1$（如图），问：
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/89b6a521b71f46b7bdcc04494ebc48eb.jpg)
(1)$t$取何值时，图中阴影部分的面积$S_{1}$与$S_{2}$之和$S = S_{1} + S_{2}$最小？(2)$t$取何值时，面积之和$S = S_{1} + S_{2}$最大？', '[]', '
(1)$t = \\frac{1}{\\sqrt{2}}$
(2)$t = 0$
', '
建立面积函数$S(t)$
从图中可以看出，水平线在$x = t$处与曲线$y = x^{2}$相交，因此该水平线的方程为$y = t^{2}$。

$$
S_{1} = \\int_{0}^{t}(t^{2} - x^{2}) dx =  \\lbrack t^{2}x - \\frac{1}{3}x^{3} \\rbrack _{0}^{t} = t^{3} - \\frac{1}{3}t^{3} = \\frac{2}{3}t^{3}
$$

求解最值
为了找到最大值和最小值，我们对$S(t)$求导：

$$
S^{′}(t) = 4t^{2} - 2t = 2t(2t - 1)
$$

令$S^{′}(t) = 0$，得到驻点：l$t = 0$或$t = \\frac{1}{2}$。
(1)何时面积$S$最小？
我们需要比较驻点和端点的函数值：
当$t = 0$时：$S(0) = \\frac{1}{3} ≈ 0.333$当$t = \\frac{1}{2}$时：$S(\\frac{1}{2}) = \\frac{4}{3}(\\frac{1}{8}) - \\frac{1}{4} + \\frac{1}{3} = \\frac{1}{6} - \\frac{1}{4} + \\frac{1}{3} = \\frac{2-3+4}{12} = \\frac{3}{12} = \\frac{1}{4} = 0.25$当$t = 1$时：$S(1) = \\frac{4}{3} - 1 + \\frac{1}{3} = \\frac{2}{3} ≈ 0.667$
结论： 当$t = \\frac{1}{2}$时，面积之和$S$最小，最小值为$\\frac{1}{4}$。
(2)何时面积$S$最大？
比较上述计算结果：
$S(0) = \\frac{1}{3}$$S(1) = \\frac{2}{3}$
结论： 当$t = 1$时，面积之和$S$最大，最大值为$\\frac{2}{3}$。
总结：
$S$最小：$t = \\frac{1}{2}$$S$最大：$t = 1$
', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '98');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '98');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '98');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (99, '1987年考研数学卷5第17题', '', '考研数学1987年卷5真题', '/problems/other/75', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (100, '1987年考研数学卷5第18题', '简单', '考研数学1987年卷5真题', '假设某产品的总成本函数为$C(x) = 400 + 3x + \\frac{1}{2}x^{2}$，
而需求函数为$p = \\frac{100}{\\sqrt{x}}$，其中$x$为产量（假定等于需求量），$p$为价格．试求：(1) 边际成本；(2) 边际效益；(3) 边际利润：(4) 收益的价格弹性．', '[]', '
(1) 边际成本：$3 + x$
(2) 边际效益：$\\frac{50}{\\sqrt{x}}$
(3) 边际利润：$\\frac{50}{\\sqrt{x}} - 3 - x$
(4) 收益的价格弹性：$−1$
', '
(1) 边际成本是成本函数对产量$x$的导数。
成本函数为


$$
C(x) = 400 + 3x + \\frac{1}{2}x^{2},
$$

求导得


$$
C^{′}(x) = 3 + x,
$$

因此边际成本为$3 + x$。
(2) 边际效益即边际收益，是收益函数对产量$x$的导数。
收益函数$R(x) = p ⋅ x$，代入需求函数


$$
p = \\frac{100}{\\sqrt{x}},
$$

得


$$
R(x) = 100\\sqrt{x}.
$$

求导得


$$
R^{′}(x) = 50x^{−1/2} = \\frac{50}{\\sqrt{x}},
$$

因此边际收益为$\\frac{50}{\\sqrt{x}}$。
(3) 边际利润是利润函数对产量$x$的导数。
利润函数


$$
π(x) = R(x) - C(x) = 100\\sqrt{x} - (400 + 3x + \\frac{1}{2}x^{2}) ,
$$

求导得


$$
π^{′}(x) = R^{′}(x) - C^{′}(x) = \\frac{50}{\\sqrt{x}} - (3 + x),
$$

因此边际利润为$\\frac{50}{\\sqrt{x}} - 3 - x$。
(4) 收益的价格弹性定义为


$$
E_{p} = \\frac{dR}{dp} ⋅ \\frac{p}{R}.
$$

首先，从需求函数


$$
p = \\frac{100}{\\sqrt{x}}
$$

解出


$$
x = \\frac{10000}{p^{2}}.
$$

收益函数


$$
R = p ⋅ x = p ⋅ \\frac{10000}{p^{2}} = \\frac{10000}{p}.
$$

求导得


$$
\\frac{dR}{dp} = −\\frac{10000}{p^{2}}.
$$

代入弹性公式：


$$
E_{p} = (−\\frac{10000}{p^{2}}) ⋅ \\frac{p}{\\frac{10000}{p}} = (−\\frac{10000}{p^{2}}) ⋅ \\frac{p^{2}}{10000} = −1,
$$

因此收益的价格弹性为$−1$。
', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '100');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '100');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '100');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (101, '1987年考研数学卷5第19题', '', '考研数学1987年卷5真题', '/problems/other/77', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (102, '1987年考研数学卷5第20题', '', '考研数学1987年卷5真题', '/problems/other/78', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (103, '1987年考研数学卷5第21题', '', '考研数学1987年卷5真题', '/problems/other/79', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (104, '1987年考研数学卷5第22题', '简单', '考研数学1987年卷5真题', '已知离散型随机变量$X$的概率分布为：
$$
P\\{X = 1\\} = 0.2,  P\\{X = 2\\} = 0.3,  P\\{X = 3\\} = 0.5.
$$
(1) 写出$X$的分布函数$F(x)$；(2) 求$X$的数学期望和方差．', '[]', '
(1)$X$的分布函数为：


$$
F(x) = \\begin{cases} 0 & x < 1 \\\\ 0.2 & 1 ≤ x < 2 \\\\ 0.5 & 2 ≤ x < 3 \\\\ 1.0 & x ≥ 3 \\end{cases}
$$

(2)$X$的数学期望为$2.3$，方差为$0.61$。
', '
(1) 分布函数$F(x) = P\\{X ≤ x\\}$。由于$X$是离散型随机变量，取值于$\\{1, 2, 3\\}$，因此：
当$x < 1$时，$P\\{X ≤ x\\} = 0$；当$1 ≤ x < 2$时，$P\\{X ≤ x\\} = P\\{X = 1\\} = 0.2$；当$2 ≤ x < 3$时，$P\\{X ≤ x\\} = P\\{X = 1\\} + P\\{X = 2\\} = 0.2 + 0.3 = 0.5$；当$x ≥ 3$时，$P\\{X ≤ x\\} = P\\{X = 1\\} + P\\{X = 2\\} + P\\{X = 3\\} = 0.2 + 0.3 + 0.5 = 1.0$。
故得分布函数如上。
(2) 数学期望


$$
E \\lbrack X \\rbrack  = ∑ x ⋅ P\\{X = x\\} = 1 × 0.2 + 2 × 0.3 + 3 × 0.5 = 0.2 + 0.6 + 1.5 = 2.3
$$

方差


$$
Var(X) = E \\lbrack X^{2} \\rbrack  - (E \\lbrack X \\rbrack )2
$$

其中


$$
\\begin{array}{cc}
E \\lbrack X^{2} \\rbrack  & = ∑ x^{2} ⋅ P\\{X = x\\} \\\\
 & = 1^{2} × 0.2 + 2^{2} × 0.3 + 3^{2} × 0.5 \\\\
 & = 1 × 0.2 + 4 × 0.3 + 9 × 0.5 \\\\
 & = 0.2 + 1.2 + 4.5 \\\\
\\end{array}
$$

故


$$
Var(X) = 5.9 - (2.3)2 = 5.9 - 5.29 = 0.61
$$

', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '104');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '104');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (105, '1987年考研数学卷5第23题', '', '考研数学1987年卷5真题', '/problems/other/82', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:24', 9, 'Mogullzr', '2026-01-29 14:06:24', 0, 4);
