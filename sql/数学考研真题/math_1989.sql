INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (211, '1989年考研数学卷1第1题', '简单', '考研数学1989年卷1真题', '已知$f^{′}(3) = 2$，则$\\lim_{h→0}  \\frac{f(3-h)-f(3)}{2h} =$______.', '[]', '$−1$
', '
已知$f^{′}(3) = 2$，即$f^{′}(3) = \\lim_{h→0} \\frac{f(3+h)-f(3)}{h} = 2$。
需要求极限$\\lim_{h→0} \\frac{f(3-h)-f(3)}{2h}$。
令$k = −h$，则当$h → 0$时，$k → 0$。
代入得：


$$
\\lim_{h→0} \\frac{f(3 - h) - f(3)}{2h} = \\lim_{k→0} \\frac{f(3 + k) - f(3)}{2(−k)} = \\lim_{k→0} \\frac{f(3 + k) - f(3)}{−2k} = −\\frac{1}{2} \\lim_{k→0} \\frac{f(3 + k) - f(3)}{k}
$$

其中$\\lim_{k→0} \\frac{f(3+k)-f(3)}{k} = f^{′}(3) = 2$，
所以


$$
−\\frac{1}{2} × 2 = −1
$$

因此，极限值为$−1$。
', 9, 'Mogullzr', '2026-01-29 14:06:48', 9, 'Mogullzr', '2026-01-29 14:06:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '211');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '211');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '211');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (212, '1989年考研数学卷1第2题', '简单', '考研数学1989年卷1真题', '设$f(x)$是连续函数，且$f(x) = x + 2 \\int_{0}^{1} f(t)dt$，则$f(x) =$______.', '[]', '$x - 1$
', '设$A = \\int_{0}^{1} f(t) dt$，则原方程化为$f(x) = x + 2A$。将$f(t) = t + 2A$代入积分表达式：

$$
A = \\int_{0}^{1}(t + 2A) dt = \\int_{0}^{1} t dt + \\int_{0}^{1} 2A dt = \\frac{1}{2} + 2A
$$

解方程$A = \\frac{1}{2} + 2A$，得$A = −\\frac{1}{2}$。代入$f(x) = x + 2A$，得$f(x) = x - 1$。验证：$\\int_{0}^{1}(t - 1) dt = \\frac{1}{2} - 1 = −\\frac{1}{2}$，满足原方程。
', 9, 'Mogullzr', '2026-01-29 14:06:48', 9, 'Mogullzr', '2026-01-29 14:06:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '212');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '212');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '212');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (213, '1989年考研数学卷1第3题', '简单', '考研数学1989年卷1真题', '设平面曲线$L$为下半圆周$y = −\\sqrt{1 - x^{2}}$，则曲线积分$\\int_{L}(x^{2} + y^{2})ds =$______.', '[]', '
$π$
', '
曲线$L$是下半圆周$y = −\\sqrt{1 - x^{2}}$，即单位圆的下半部分。在单位圆上，有$x^{2} + y^{2} = 1$，因此被积函数$x^{2} + y^{2} = 1$。曲线积分$\\int_{L}(x^{2} + y^{2}) ds$简化为$\\int_{L} 1 ds$，即曲线$L$的长度。单位圆的下半圆周长度为$π$，故积分值为$π$。
或者，通过参数化验证：令$x = \\cos t$，$y = \\sin t$，其中$t$从$π$到$2π$，对应下半圆周。弧长元素$ds = dt$，则积分$\\int_{π}^{2π}(\\cos^{2} t + \\sin^{2} t) dt = \\int_{π}^{2π} 1 dt = t​_{π}^{2π} = 2π - π = π$，结果一致。
', 9, 'Mogullzr', '2026-01-29 14:06:48', 9, 'Mogullzr', '2026-01-29 14:06:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '213');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '213');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '213');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (214, '1989年考研数学卷1第4题', '简单', '考研数学1989年卷1真题', '向量场$u(x, y, z) = xy^{2}i + ye^{z}j + x \\ln(1 + z^{2})k$在点$P(1, 1, 0)$处的散度$÷u =$______.', '[]', '$2$
', '
向量场$u(x, y, z) = xy^{2}i + ye^{z}j + x \\ln(1 + z^{2})k$的散度定义为$÷u = \\frac{∂u_{x}}{∂x} + \\frac{∂u_{y}}{∂y} + \\frac{∂u_{z}}{∂z}$。
计算各分量的偏导数：
$\\frac{∂u_{x}}{∂x} = \\frac{∂}{∂x}(xy^{2}) = y^{2}$，$\\frac{∂u_{y}}{∂y} = \\frac{∂}{∂y}(ye^{z}) = e^{z}$，$\\frac{∂u_{z}}{∂z} = \\frac{∂}{∂z}(x \\ln(1 + z^{2})) = x ⋅ \\frac{2z}{1+z^{2}}$。
因此，散度表达式为$÷u = y^{2} + e^{z} + \\frac{2xz}{1+z^{2}}$。
在点$P(1, 1, 0)$处代入$x = 1, y = 1, z = 0$：$y^{2} = 1^{2} = 1$，$e^{z} = e^{0} = 1$，$\\frac{2xz}{1+z^{2}} = \\frac{2⋅1⋅0}{1+0} = 0$。
散度为$1 + 1 + 0 = 2$。
', 9, 'Mogullzr', '2026-01-29 14:06:48', 9, 'Mogullzr', '2026-01-29 14:06:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '214');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '214');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1056', '214');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (215, '1989年考研数学卷1第5题', '简单', '考研数学1989年卷1真题', '设矩阵$A = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
1 & 4 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right)$,$E = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，则逆矩阵$(A - 2E)−1 =$______.', '[]', '

$$
\\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
−\\frac{1}{2} & \\frac{1}{2} & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

', '首先计算$A - 2E$：

$$
A - 2E = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
1 & 4 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right) - \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

设$B = A - 2E$，需求$B^{−1}$。注意到$B$是分块矩阵，左上角为$C = \\left( \\begin{array}{cc}
1 & 0 \\\\
1 & 2 \\\\
\\end{array} \\right)$，右下角为$D =  \\lbrack 1 \\rbrack$。逆矩阵为：

$$
B^{−1} = \\left( \\begin{array}{cc}
C^{−1} & 0 \\\\
0 & D^{−1} \\\\
\\end{array} \\right)
$$

计算$C^{−1}$，使用公式对于$2 × 2$矩阵$\\left( \\begin{array}{cc}
a & b \\\\
c & d \\\\
\\end{array} \\right)$，逆为$\\frac{1}{ad-bc} \\left( \\begin{array}{cc}
d & −b \\\\
−c & a \\\\
\\end{array} \\right)$。代入$a = 1, b = 0, c = 1, d = 2$，得：

$$
det(C) = 1 × 2 - 0 × 1 = 2,  C^{−1} = \\frac{1}{2} \\left( \\begin{array}{cc}
2 & 0 \\\\
−1 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
1 & 0 \\\\
−\\frac{1}{2} & \\frac{1}{2} \\\\
\\end{array} \\right)
$$

且$D^{−1} =  \\lbrack 1 \\rbrack$。因此：

$$
B^{−1} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
−\\frac{1}{2} & \\frac{1}{2} & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

验证：计算$BB^{−1} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
1 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
−\\frac{1}{2} & \\frac{1}{2} & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，为单位矩阵，故逆矩阵正确。
', 9, 'Mogullzr', '2026-01-29 14:06:48', 9, 'Mogullzr', '2026-01-29 14:06:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '215');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '215');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '215');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (216, '1989年考研数学卷1第6题', '简单', '考研数学1989年卷1真题', '当$x > 0$时，曲线$y = x \\sin \\frac{1}{x}$', '[''有且仅有水平渐近线．'', ''有且仅有铅直渐近线．'', ''既有水平渐近线，也有铅直渐近线．'', ''既无水平渐近线，也无铅直渐近线．'']', "['A']", '当$x > 0$时，考虑函数$y = x \\sin \\frac{1}{x}$。对于水平渐近线，计算极限$\\lim_{x→+∞} x \\sin \\frac{1}{x}$，令$t = \\frac{1}{x}$，则当$x → +∞$时$t → 0^{+}$，极限化为$\\lim_{t→0^{+}} \\frac{\\sin t}{t} = 1$，因此有水平渐近线$y = 1$。对于铅直渐近线，考虑$x → 0^{+}$时的行为，由于$∣ \\sin \\frac{1}{x}∣ ≤ 1$，有$∣x \\sin \\frac{1}{x}∣ ≤ x$，故$\\lim_{x→0^{+}} x \\sin \\frac{1}{x} = 0$，未趋于无穷大，因此没有铅直渐近线。综上，曲线有且仅有水平渐近线。', 9, 'Mogullzr', '2026-01-29 14:06:49', 9, 'Mogullzr', '2026-01-29 14:06:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '216');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '216');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '216');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (217, '1989年考研数学卷1第7题', '简单', '考研数学1989年卷1真题', '已知曲面$z = 4 - x^{2} - y^{2}$上点$P$处的切平面平行于平面$2x + 2y + z - 1 = 0$，则点$P$的坐标是', '[''$(1, −1, 2)$．'', ''$(−1, 1, 2)$．'', ''$(1, 1, 2)$．'', ''$(−1, −1, 2)$．'']', "['C']", '曲面方程为$z = 4 - x^{2} - y^{2}$，可化为$F(x, y, z) = x^{2} + y^{2} + z - 4 = 0$。点$P$处的切平面法向量为$∇F = (2x, 2y, 1)$。给定平面$2x + 2y + z - 1 = 0$的法向量为$(2, 2, 1)$。由于切平面平行于给定平面，法向量平行，即$(2x, 2y, 1) = k(2, 2, 1)$。由第三分量得$1 = k ⋅ 1$，故$k = 1$。代入前两分量得$2x = 2 ⋅ 1$，即$x = 1$；$2y = 2 ⋅ 1$，即$y = 1$。代入曲面方程得$z = 4 - 1^{2} - 1^{2} = 2$。因此点$P$坐标为$(1, 1, 2)$，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:06:49', 9, 'Mogullzr', '2026-01-29 14:06:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '217');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '217');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '217');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (218, '1989年考研数学卷1第8题', '简单', '考研数学1989年卷1真题', '设线性无关的函数$y_{1}$,$y_{2}$,$y_{3}$都是二阶非齐次线性方程$y^{′′} + p(x)y^{′} + q(x)y = f(x)$的解，$C_{1}$,$C_{2}$是任意常数，则该非齐次方程的通解是', '[''$C_{1}y_{1} + C_{2}y_{2} + y_{3}$．'', ''$C_{1}y_{1} + C_{2}y_{2} - (C_{1} + C_{2})y_{3}$．'', ''$C_{1}y_{1} + C_{2}y_{2} - (1 - C_{1} - C_{2})y_{3}$．'', ''$C_{1}y_{1} + C_{2}y_{2} + (1 - C_{1} - C_{2})y_{3}$．'']', "['D']", '对于二阶非齐次线性微分方程，通解由齐次方程的通解和一个特解组成。已知$y_{1}, y_{2}, y_{3}$线性无关且都是非齐次方程的解，则$y_{1} - y_{3}$和$y_{2} - y_{3}$是齐次方程的解，且由于$y_{1}, y_{2}, y_{3}$线性无关，$y_{1} - y_{3}$和$y_{2} - y_{3}$也线性无关。因此齐次方程的通解为$C_{1}(y_{1} - y_{3}) + C_{2}(y_{2} - y_{3})$，其中$C_{1}, C_{2}$为任意常数。取$y_{3}$作为特解，则非齐次方程的通解为：
$$
y = C_{1}(y_{1} - y_{3}) + C_{2}(y_{2} - y_{3}) + y_{3} = C_{1}y_{1} + C_{2}y_{2} + (1 - C_{1} - C_{2})y_{3}
$$
这与选项 D 一致。选项 A 缺少齐次解的适当组合，选项 B 和 C 的表达式不构成通解。', 9, 'Mogullzr', '2026-01-29 14:06:49', 9, 'Mogullzr', '2026-01-29 14:06:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '218');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '218');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1058', '218');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (219, '1989年考研数学卷1第9题', '简单', '考研数学1989年卷1真题', '设函数$f(x) = x^{2}$,$0 ≤ x < 1$，
而$S(x) = \\sum_{n=1}^{∞} b_{n} \\sin nπx$,$−∞ < x < +∞$，
其中$b_{n} = 2 \\int_{0}^{1} f(x) \\sin nπxdx$,$n = 1, 2, 3, ⋯$，
则$S (−\\frac{1}{2})$等于', '[''$−\\\\frac{1}{2}$．'', ''$−\\\\frac{1}{4}$．'', ''$\\\\frac{1}{4}$．'', ''$\\\\frac{1}{2}$．'']', "['B']", '函数$f(x) = x^{2}$定义在区间$\\lbrack 0, 1)$上，其正弦级数$S(x) = \\sum_{n=1}^{∞} b_{n} \\sin nπx$是$f(x)$的奇周期扩展，周期为 2。对于$x = −\\frac{1}{2}$，由于在区间$\\lbrack −1, 0)$上，奇扩展满足$S(x) = −f(−x)$。代入$x = −\\frac{1}{2}$，有$−x = \\frac{1}{2}$，因此$S (−\\frac{1}{2}) = −f (\\frac{1}{2}) = − (\\frac{1}{2})^{2} = −\\frac{1}{4}$。或者，考虑周期性和奇对称性，$S (−\\frac{1}{2}) = −S (\\frac{1}{2})$，而$S (\\frac{1}{2}) = f (\\frac{1}{2}) = \\frac{1}{4}$，故$S (−\\frac{1}{2}) = −\\frac{1}{4}$。因此，正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:06:49', 9, 'Mogullzr', '2026-01-29 14:06:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '219');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '219');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '219');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (220, '1989年考研数学卷1第10题', '简单', '考研数学1989年卷1真题', '设$A$是$n$阶矩阵，且$A$的行列式$∣A∣ = 0$，则$A$中', '[''必有一列元素全为$0$．'', ''必有两列元素对应成比例．'', ''必有一列向量是其余列向量的线性组合．'', ''任一列向量是其余列向量的线性组合．'']', "['C']", '由于行列式$∣A∣ = 0$，矩阵$A$的列向量线性相关。这意味着存在不全为零的标量$c_{1}, c_{2}, … , c_{n}$，使得$c_{1}v_{1} + c_{2}v_{2} + ⋯ + c_{n}v_{n} = 0$。既然标量不全为零，至少存在一个$c_{j} \\neq 0$，则第$j$列向量可以表示为其余列向量的线性组合：$v_{j} = −\\frac{c_{1}}{c_{j}}v_{1} - ⋯ - \\frac{c_{j-1}}{c_{j}}v_{j-1} - \\frac{c_{j+1}}{c_{j}}v_{j+1} - ⋯ - \\frac{c_{n}}{c_{j}}v_{n}$。因此，选项 C 正确。选项 A 错误，因为即使没有一列元素全为零，矩阵仍可能奇异，例如矩阵$\\left( \\begin{array}{cc}
1 & 2 \\\\
2 & 4 \\\\
\\end{array} \\right)$。选项 B 错误，因为即使没有两列对应成比例，矩阵仍可能奇异，例如矩阵$\\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$。选项 D 错误，因为不一定每一列都是其余列的线性组合，例如矩阵$\\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，其中第三列不能表示为前两列的线性组合（假设前两列线性相关，但第三列独立）。', 9, 'Mogullzr', '2026-01-29 14:06:49', 9, 'Mogullzr', '2026-01-29 14:06:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '220');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '220');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '220');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (221, '1989年考研数学卷1第11题', '简单', '考研数学1989年卷1真题', '设$z = f(2x - y) + g(x, xy)$，其中函数$f(t)$二阶可导，$g(u, v)$具有连续的二阶偏导数，
求$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = −2f^{′′}(2x - y) + g_{2}(x, xy) + xg_{12}(x, xy) + xyg_{22}(x, xy)
$$

其中$g_{1}$表示$g$对第一个变量$u$的偏导数，$g_{2}$表示对第二个变量$v$的偏导数，$g_{12}$表示先对$u$后对$v$的二阶偏导数，$g_{22}$表示对$v$的二阶偏导数。
', '首先，求一阶偏导数$\\frac{∂z}{∂x}$。
给定$z = f(2x - y) + g(x, xy)$，
则


$$
\\frac{∂z}{∂x} = \\frac{∂}{∂x} \\lbrack f(2x - y) \\rbrack  + \\frac{∂}{∂x} \\lbrack g(x, xy) \\rbrack .
$$

对于第一项，令$t = 2x - y$，有$\\frac{∂f}{∂x} = f^{′}(t) ⋅ \\frac{∂t}{∂x} = f^{′}(2x - y) ⋅ 2 = 2f^{′}(2x - y)$。
对于第二项，使用链式法则，设$u = x$,$v = xy$，则


$$
\\frac{∂g}{∂x} = \\frac{∂g}{∂u} ⋅ \\frac{∂u}{∂x} + \\frac{∂g}{∂v} ⋅ \\frac{∂v}{∂x} = g_{1}(x, xy) ⋅ 1 + g_{2}(x, xy) ⋅ y = g_{1}(x, xy) + yg_{2}(x, xy).
$$

因此，


$$
\\frac{∂z}{∂x} = 2f^{′}(2x - y) + g_{1}(x, xy) + yg_{2}(x, xy).
$$

接下来，求混合偏导数$\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂z}{∂x})$：


$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y}  \\lbrack 2f^{′}(2x - y) + g_{1}(x, xy) + yg_{2}(x, xy) \\rbrack  .
$$

逐项计算：
$\\frac{∂}{∂y} \\lbrack 2f^{′}(2x - y) \\rbrack$：令$t = 2x - y$，则$\\frac{∂f^{′}}{∂y} = f^{′′}(t) ⋅ \\frac{∂t}{∂y} = f^{′′}(2x - y) ⋅ (−1) = −f^{′′}(2x - y)$，所以该项为$2 ⋅ (−f^{′′}(2x - y)) = −2f^{′′}(2x - y)$。$\\frac{∂}{∂y} \\lbrack g_{1}(x, xy) \\rbrack$：使用链式法则，
$\\frac{∂g_{1}}{∂y} = \\frac{∂g_{1}}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂g_{1}}{∂v} ⋅ \\frac{∂v}{∂y} = g_{11}(x, xy) ⋅ 0 + g_{12}(x, xy) ⋅ x = xg_{12}(x, xy),$其中$g_{12}$是$g$的先对$u$后对$v$的二阶偏导数。$\\frac{∂}{∂y} \\lbrack yg_{2}(x, xy) \\rbrack$：使用乘积法则，
$\\frac{∂}{∂y} \\lbrack yg_{2}(x, xy) \\rbrack  = \\frac{∂y}{∂y} ⋅ g_{2}(x, xy) + y ⋅ \\frac{∂}{∂y} \\lbrack g_{2}(x, xy) \\rbrack .$其中$\\frac{∂}{∂y} \\lbrack g_{2}(x, xy) \\rbrack$类似地计算：
$\\frac{∂g_{2}}{∂y} = \\frac{∂g_{2}}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂g_{2}}{∂v} ⋅ \\frac{∂v}{∂y} = g_{21}(x, xy) ⋅ 0 + g_{22}(x, xy) ⋅ x = xg_{22}(x, xy),$所以该项为$g_{2}(x, xy) + y ⋅ xg_{22}(x, xy) = g_{2}(x, xy) + xyg_{22}(x, xy)$。
综合以上结果，


$$
\\frac{∂^{2}z}{∂x∂y} = −2f^{′′}(2x - y) + xg_{12}(x, xy) + g_{2}(x, xy) + xyg_{22}(x, xy).
$$

由于$g$具有连续二阶偏导数，有$g_{12} = g_{21}$，但此处仅需$g_{12}$。
最终表达式如上所示。
', 9, 'Mogullzr', '2026-01-29 14:06:50', 9, 'Mogullzr', '2026-01-29 14:06:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '221');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '221');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '221');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (222, '1989年考研数学卷1第12题', '简单', '考研数学1989年卷1真题', '设曲线积分$\\int_{C} xy^{2}dx + yφ(x)dy$与路径无关，
其中$φ(x)$具有连续的导数，且$φ(0) = 0$,
计算$\\int_{(0,0)}^{(1,1)} xy^{2}dx + yφ(x)dy$的值．', '[]', '$\\frac{1}{2}$
', '由于曲线积分与路径无关，被积函数应为恰当微分。设$M = xy^{2}$，$N = yφ(x)$，则需满足$\\frac{∂M}{∂y} = \\frac{∂N}{∂x}$。计算得$\\frac{∂M}{∂y} = 2xy$，$\\frac{∂N}{∂x} = yφ^{′}(x)$。令两者相等，得$2xy = yφ^{′}(x)$，即$φ^{′}(x) = 2x$。积分得$φ(x) = x^{2} + C$，由$φ(0) = 0$得$C = 0$，故$φ(x) = x^{2}$。
积分变为$\\int_{(0,0)}^{(1,1)} xy^{2} dx + yx^{2} dy$。由于与路径无关，选择路径从$(0, 0)$到$(1, 0)$再到$(1, 1)$。从$(0, 0)$到$(1, 0)$，$y = 0$，积分值为 0。从$(1, 0)$到$(1, 1)$，$x = 1$，积分值为$\\int_{0}^{1} y ⋅ 1^{2} dy = \\int_{0}^{1} y dy = \\frac{1}{2}$。总积分为$0 + \\frac{1}{2} = \\frac{1}{2}$。
亦可求势函数$F(x, y)$，满足$dF = xy^{2} dx + yx^{2} dy$。由$\\frac{∂F}{∂x} = xy^{2}$积分得$F = \\frac{1}{2}x^{2}y^{2} + g(y)$。由$\\frac{∂F}{∂y} = x^{2}y + g^{′}(y) = yx^{2}$得$g^{′}(y) = 0$，故$F = \\frac{1}{2}x^{2}y^{2}$。积分值为$F(1, 1) - F(0, 0) = \\frac{1}{2} - 0 = \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:50', 9, 'Mogullzr', '2026-01-29 14:06:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '222');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '222');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '222');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (223, '1989年考研数学卷1第13题', '简单', '考研数学1989年卷1真题', '计算三重积分$\\iiint_{Ω}(x + z)dV$，其中$Ω$是由曲面$z = \\sqrt{x^{2} + y^{2}}$与$z = \\sqrt{1 - x^{2} - y^{2}}$所围成的区域．', '[]', '$\\frac{π}{8}$
', '积分区域$Ω$由曲面$z = \\sqrt{x^{2} + y^{2}}$（圆锥）和$z = \\sqrt{1 - x^{2} - y^{2}}$（上半球面）围成。两曲面相交于$x^{2} + y^{2} = \\frac{1}{2}$，即$r = \\frac{\\sqrt{2}}{2}$在柱坐标下。区域$Ω$在$xy$-平面上的投影为圆盘$x^{2} + y^{2} ≤ \\frac{1}{2}$。
使用柱坐标：令$x = r \\cos θ$,$y = r \\sin θ$,$z = z$，则$dV = r dz dr dθ$。被积函数为$x + z = r \\cos θ + z$。积分界限为：$θ$从$0$到$2π$，$r$从$0$到$\\frac{\\sqrt{2}}{2}$，$z$从$r$到$\\sqrt{1 - r^{2}}$。
积分化为：

$$
\\iiint_{Ω}(x + z) dV = \\int_{0}^{2π} \\int_{0}^{\\frac{\\sqrt{2}}{2}} \\int_{r}^{\\sqrt{1-r^{2}}}(r \\cos θ + z) r dz dr dθ.
$$

拆分为两部分：

$$
I_{1} = \\int_{0}^{2π} \\int_{0}^{\\frac{\\sqrt{2}}{2}} \\int_{r}^{\\sqrt{1-r^{2}}} r^{2} \\cos θ dz dr dθ,  I_{2} = \\int_{0}^{2π} \\int_{0}^{\\frac{\\sqrt{2}}{2}} \\int_{r}^{\\sqrt{1-r^{2}}} rz dz dr dθ.
$$

对于$I_{1}$，先对$z$积分：

$$
\\int_{r}^{\\sqrt{1-r^{2}}} dz = \\sqrt{1 - r^{2}} - r,
$$

所以

$$
I_{1} = \\int_{0}^{2π} \\int_{0}^{\\frac{\\sqrt{2}}{2}} r^{2} \\cos θ(\\sqrt{1 - r^{2}} - r) dr dθ.
$$

对$θ$积分时，$\\cos θ$在$\\lbrack 0, 2π \\rbrack$上的积分为零，故$I_{1} = 0$.
对于$I_{2}$，先对$z$积分：

$$
\\int_{r}^{\\sqrt{1-r^{2}}} z dz =  \\lbrack \\frac{1}{2}z^{2} \\rbrack _{r}^{\\sqrt{1-r^{2}}} = \\frac{1}{2} ((1 - r^{2}) - r^{2}) = \\frac{1}{2}(1 - 2r^{2}).
$$

于是

$$
I_{2} = \\int_{0}^{2π} \\int_{0}^{\\frac{\\sqrt{2}}{2}} r ⋅ \\frac{1}{2}(1 - 2r^{2}) dr dθ = \\frac{1}{2} \\int_{0}^{2π} dθ \\int_{0}^{\\frac{\\sqrt{2}}{2}} r(1 - 2r^{2}) dr.
$$

其中$\\int_{0}^{2π} dθ = 2π$，所以

$$
I_{2} = \\frac{1}{2} ⋅ 2π \\int_{0}^{\\frac{\\sqrt{2}}{2}}(r - 2r^{3}) dr = π \\int_{0}^{\\frac{\\sqrt{2}}{2}}(r - 2r^{3}) dr.
$$

计算积分：

$$
\\int_{0}^{\\frac{\\sqrt{2}}{2}}(r - 2r^{3}) dr =  \\lbrack \\frac{r^{2}}{2} - \\frac{r^{4}}{2} \\rbrack _{0}^{\\frac{\\sqrt{2}}{2}} = \\frac{1}{2} ​(\\frac{\\sqrt{2}}{2})^{2} - (\\frac{\\sqrt{2}}{2})^{4}​ = \\frac{1}{2} (\\frac{1}{2} - \\frac{1}{4}) = \\frac{1}{2} ⋅ \\frac{1}{4} = \\frac{1}{8}.
$$

因此，

$$
I_{2} = π ⋅ \\frac{1}{8} = \\frac{π}{8}.
$$

故原积分为$\\frac{π}{8}$.
', 9, 'Mogullzr', '2026-01-29 14:06:50', 9, 'Mogullzr', '2026-01-29 14:06:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '223');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '223');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '223');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (224, '1989年考研数学卷1第14题', '简单', '考研数学1989年卷1真题', '将函数$f(x) = arctan \\frac{1+x}{1-x}$展为$x$的幂级数．', '[]', '

$$
f(x) = \\frac{π}{4} + \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n + 1},  ∣x∣ < 1
$$

', '考虑函数$f(x) = arctan \\frac{1+x}{1-x}$。当$∣x∣ < 1$时，有恒等式$arctan \\frac{1+x}{1-x} = \\frac{π}{4} + arctan x$。这是因为$\\tan (\\frac{π}{4} + arctan x) = \\frac{1+\\tan(arctan x)}{1-\\tan(arctan x)} = \\frac{1+x}{1-x}$，且当$∣x∣ < 1$时，$\\frac{π}{4} + arctan x$的值域在$(0, \\frac{π}{2})$内，与$arctan \\frac{1+x}{1-x}$的值域一致。
已知反正切函数的幂级数展开为$arctan x = \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n+1}$，收敛于$∣x∣ ≤ 1$。因此，代入得：

$$
f(x) = \\frac{π}{4} + arctan x = \\frac{π}{4} + \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n + 1}.
$$

该级数在$∣x∣ < 1$内收敛，因为当$x = ±1$时，原函数$f(x)$未定义（分母为零）。
因此，函数$f(x)$的幂级数展开如上所示。
', 9, 'Mogullzr', '2026-01-29 14:06:50', 9, 'Mogullzr', '2026-01-29 14:06:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '224');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '224');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '224');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (225, '1989年考研数学卷1第15题', '简单', '考研数学1989年卷1真题', '设$f(x) = \\sin x - \\int_{0}^{x}(x - t)f(t)dt$，其中$f$为连续函数，求$f(x)$．', '[]', '
$f(x) = \\frac{1}{2}(\\sin x + x \\cos x)$
', '
给定方程$f(x) = \\sin x - \\int_{0}^{x}(x - t)f(t) dt$，其中$f$为连续函数。
方法一：拉普拉斯变换法
设$F(s) = L\\{f(x)\\}$，则原方程的拉普拉斯变换为：


$$
F(s) = \\frac{1}{s^{2} + 1} - \\frac{1}{s^{2}}F(s)
$$

解此方程得：


$$
F(s) (1 + \\frac{1}{s^{2}}) = \\frac{1}{s^{2} + 1}
$$



$$
F(s) = \\frac{s^{2}}{(s^{2} + 1)2}
$$

求逆拉普拉斯变换：


$$
F(s) = \\frac{s^{2}}{(s^{2} + 1)2} = \\frac{1}{s^{2} + 1} - \\frac{1}{(s^{2} + 1)2}
$$

其中$L^{−1} \\{\\frac{1}{s^{2}+1}\\} = \\sin x$，
$L^{−1} \\{\\frac{1}{(s^{2}+1)2}\\} = \\frac{\\sin x-x \\cos x}{2}$，
所以


$$
f(x) = \\sin x - \\frac{\\sin x - x \\cos x}{2} = \\frac{\\sin x}{2} + \\frac{x \\cos x}{2} = \\frac{1}{2}(\\sin x + x \\cos x)
$$

方法二：微分方程法
令$g(x) = \\int_{0}^{x}(x - t)f(t) dt$，则原方程化为$f(x) = \\sin x - g(x)$。
计算$g(x)$的导数：


$$
g(x) = x \\int_{0}^{x} f(t) dt - \\int_{0}^{x} tf(t) dt
$$



$$
g^{′}(x) = \\int_{0}^{x} f(t) dt
$$



$$
g^{′′}(x) = f(x)
$$

代入原式得微分方程：


$$
g^{′′}(x) + g(x) = \\sin x
$$

初始条件：$g(0) = 0$，$g^{′}(0) = 0$。
解微分方程：齐次解$g_{h} = C_{1} \\cos x + C_{2} \\sin x$，
特解形式$g_{p} = Ax \\cos x + Bx \\sin x$，
代入得$A = −\\frac{1}{2}$，$B = 0$，即$g_{p} = −\\frac{1}{2}x \\cos x$。
通解$g(x) = C_{1} \\cos x + C_{2} \\sin x - \\frac{1}{2}x \\cos x$，
利用初始条件得$C_{1} = 0$，$C_{2} = \\frac{1}{2}$，
所以$g(x) = \\frac{1}{2} \\sin x - \\frac{1}{2}x \\cos x$。
代入$f(x) = \\sin x - g(x)$得：


$$
f(x) = \\sin x - (\\frac{1}{2} \\sin x - \\frac{1}{2}x \\cos x) = \\frac{1}{2} \\sin x + \\frac{1}{2}x \\cos x
$$

两种方法均得相同结果。
', 9, 'Mogullzr', '2026-01-29 14:06:51', 9, 'Mogullzr', '2026-01-29 14:06:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '225');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '225');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '225');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (226, '1989年考研数学卷1第16题', '简单', '考研数学1989年卷1真题', '证明方程$\\ln x = \\frac{x}{e} - \\int_{0}^{π}    \\sqrt{1 - \\cos 2x}dx$在区间$(0, +∞)$内有且仅有两个不同实根．', '[]', '
方程在区间$(0, +∞)$内有且仅有两个不同实根。
', '
首先，计算积分$I = \\int_{0}^{π} \\sqrt{1 - \\cos 2x} dx$。
利用三角恒等式$1 - \\cos 2x = 2 \\sin^{2} x$，可得$\\sqrt{1 - \\cos 2x} = \\sqrt{2}∣ \\sin x∣$。
在区间$\\lbrack 0, π \\rbrack$上，$\\sin x ≥ 0$，因此$∣ \\sin x∣ = \\sin x$，即$\\sqrt{1 - \\cos 2x} = \\sqrt{2} \\sin x$。
于是，


$$
I = \\int_{0}^{π} \\sqrt{2} \\sin x dx = \\sqrt{2}  \\lbrack − \\cos x \\rbrack _{0}^{π} = \\sqrt{2} (− \\cos π + \\cos 0) = \\sqrt{2}(1 + 1) = 2\\sqrt{2}.
$$

原方程化为


$$
\\ln x = \\frac{x}{e} - 2\\sqrt{2}.
$$

定义函数


$$
f(x) = \\ln x - \\frac{x}{e} + 2\\sqrt{2},
$$

则方程的根即$f(x) = 0$的解。
分析$f(x)$的行为：
当$x → 0^{+}$时，$\\ln x → −∞$，故$f(x) → −∞$。当$x → +∞$时，$\\ln x → +∞$，但$−\\frac{x}{e} → −∞$且线性项主导，故$f(x) → −∞$。
求导
$f^{′}(x) = \\frac{1}{x} - \\frac{1}{e}.$令$f^{′}(x) = 0$，得$x = e$。当$x < e$时，$f^{′}(x) > 0$，$f(x)$严格递增。当$x > e$时，$f^{′}(x) < 0$，$f(x)$严格递减。
因此，$f(x)$在$x = e$处取得最大值
$f(e) = \\ln e - \\frac{e}{e} + 2\\sqrt{2} = 1 - 1 + 2\\sqrt{2} = 2\\sqrt{2} > 0.$由于$f(x)$在$(0, e)$上严格递增，且$f(x) → −∞$当$x → 0^{+}$，$f(e) > 0$，由中间值定理，在$(0, e)$内存在唯一实根。
在$(e, +∞)$上严格递减，且$f(e) > 0$，$f(x) → −∞$当$x → +∞$，故在$(e, +∞)$内存在唯一实根。
因此，方程在$(0, +∞)$内有且仅有两个不同实根。
', 9, 'Mogullzr', '2026-01-29 14:06:51', 9, 'Mogullzr', '2026-01-29 14:06:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '226');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '226');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '226');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (227, '1989年考研数学卷1第17题', '简单', '考研数学1989年卷1真题', '问$λ$为何值时，线性方程组
$$
\\begin{cases} x_{1} + x_{3} = λ \\\\ 4x_{1} + x_{2} + 2x_{3} = λ + 2 \\\\ 6x_{1} + x_{2} + 4x_{3} = 2λ + 3 \\end{cases}
$$
有解，并求出解的一般形式．', '[]', '当$λ = 1$时，方程组有解，解的一般形式为：

$$
\\begin{cases} x_{1} = 1 - t \\\\ x_{2} = −1 + 2t \\\\ x_{3} = t. \\end{cases}
$$

其中$t$为任意实数。
', '写出方程组的增广矩阵：

$$
\\left( \\begin{array}{ccc|c}
1 & 0 & 1 & λ \\\\
4 & 1 & 2 & λ + 2 \\\\
6 & 1 & 4 & 2λ + 3 \\\\
\\end{array} \\right)
$$

进行行变换：第二行减去4倍第一行，第三行减去6倍第一行，得到：

$$
\\left( \\begin{array}{ccc|c}
1 & 0 & 1 & λ \\\\
0 & 1 & −2 & −3λ + 2 \\\\
0 & 1 & −2 & −4λ + 3 \\\\
\\end{array} \\right)
$$

为使方程组有解，第二行和第三行的常数项必须相等，即：

$$
−3λ + 2 = −4λ + 3
$$

解得$λ = 1$。代入$λ = 1$，增广矩阵变为：

$$
\\left( \\begin{array}{ccc|c}
1 & 0 & 1 & 1 \\\\
0 & 1 & −2 & −1 \\\\
0 & 1 & −2 & −1 \\\\
\\end{array} \\right)
$$

第三行与第二行相同，因此有效方程为：

$$
x_{1} + x_{3} = 1,  x_{2} - 2x_{3} = −1
$$

令$x_{3} = t$（$t$为任意实数），则：

$$
x_{1} = 1 - t,  x_{2} = −1 + 2t
$$

故解的一般形式如上。
', 9, 'Mogullzr', '2026-01-29 14:06:51', 9, 'Mogullzr', '2026-01-29 14:06:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '227');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '227');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (228, '1989年考研数学卷1第18题', '简单', '考研数学1989年卷1真题', '假设$λ$为$n$阶可逆矩阵$A$的一个特征值，证明：(1)$\\frac{1}{λ}$为$A^{−1}$的特征值；(2)$\\frac{∣A∣}{λ}$为$A$的伴随矩阵$A^{∗}$的特征值．', '[]', '
(1)$\\frac{1}{λ}$为$A^{−1}$的特征值。
(2)$\\frac{∣A∣}{λ}$为$A^{∗}$的特征值。
', '
由于$A$可逆，$λ \\neq 0$。设$v$为对应于$λ$的特征向量，即$Av = λv$。
(1) 在$Av = λv$两边左乘$A^{−1}$，得$A^{−1}Av = A^{−1}λv$，即$v = λA^{−1}v$。因此$A^{−1}v = \\frac{1}{λ}v$，故$\\frac{1}{λ}$是$A^{−1}$的特征值。
(2) 由伴随矩阵的性质，$A^{∗} = ∣A∣A^{−1}$。代入$A^{−1}v = \\frac{1}{λ}v$，得$A^{∗}v = ∣A∣A^{−1}v = ∣A∣ ⋅ \\frac{1}{λ}v = \\frac{∣A∣}{λ}v$，故$\\frac{∣A∣}{λ}$是$A^{∗}$的特征值。
', 9, 'Mogullzr', '2026-01-29 14:06:51', 9, 'Mogullzr', '2026-01-29 14:06:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '228');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '228');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (229, '1989年考研数学卷1第19题', '简单', '考研数学1989年卷1真题', '设半径为$R$的球面$Σ$的球心在定球面$x^{2} + y^{2} + z^{2} = a^{2}(a > 0)$上，
问当$R$为何值时，球面$Σ$在定球面内部的那部分的面积最大？', '[]', '

$$
R = \\frac{4a}{3}
$$

', '设定球面方程为$x^{2} + y^{2} + z^{2} = a^{2}$，球面$Σ$的球心在该定球面上。为简化问题，将球面$Σ$的球心取为$(0, 0, a)$，其方程为$x^{2} + y^{2} + (z - a)2 = R^{2}$。球面$Σ$在定球面内部的部分满足$x^{2} + y^{2} + z^{2} ≤ a^{2}$。
通过几何关系，球面$Σ$上点$P$满足$OP ≤ a$的条件等价于$z ≤ z_{0}$，其中$z_{0} = a - \\frac{R^{2}}{2a}$。这对应球面$Σ$上的一个球冠。在球面坐标系中，以球心$(0, 0, a)$为参考，点$P$的坐标表示为$z = a + R \\cos θ$，其中$θ$为与$z$-轴的夹角。条件$z ≤ z_{0}$转化为$\\cos θ ≤ −\\frac{R}{2a}$，即$θ ≥ θ_{0}$，其中$\\cos θ_{0} = −\\frac{R}{2a}$。球冠对应$θ$从$θ_{0}$到$π$的部分。
球冠的面积为：

$$
A = \\int_{θ_{0}}^{π} \\int_{0}^{2π} R^{2} \\sin θ dϕ dθ = 2πR^{2} \\int_{θ_{0}}^{π} \\sin θ dθ = 2πR^{2}  \\lbrack − \\cos θ \\rbrack _{θ_{0}}^{π} = 2πR^{2}(1 + \\cos θ_{0}) = 2πR^{2} (1 - \\frac{R}{2a}) .
$$

因此，面积函数为：

$$
A(R) = 2πR^{2} (1 - \\frac{R}{2a}) ,  0 ≤ R ≤ 2a.
$$

对于$R > 2a$，球面$Σ$完全在定球面外部，面积$A(R) = 0$。
为求最大值，考虑$A(R)$在$\\lbrack 0, 2a \\rbrack$上的极值。求导：

$$
A^{′}(R) = \\frac{d}{dR} (2πR^{2} - \\frac{πR^{3}}{a}) = 4πR - \\frac{3πR^{2}}{a} = πR (4 - \\frac{3R}{a}) .
$$

令$A^{′}(R) = 0$，得$R = 0$或$R = \\frac{4a}{3}$。其中$R = 0$对应最小值，$R = \\frac{4a}{3}$为候选点。二阶导数：

$$
A^{′′}(R) = 4π - \\frac{6πR}{a},
$$

在$R = \\frac{4a}{3}$时，$A^{′′} = 4π - \\frac{6π}{a} ⋅ \\frac{4a}{3} = −4π < 0$，故为极大值。边界值$A(0) = 0$，$A(2a) = 0$，因此$R = \\frac{4a}{3}$时面积最大。
故当$R = \\frac{4a}{3}$时，球面$Σ$在定球面内部的那部分面积最大。
', 9, 'Mogullzr', '2026-01-29 14:06:51', 9, 'Mogullzr', '2026-01-29 14:06:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '229');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '229');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '229');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (230, '1989年考研数学卷1第20题', '简单', '考研数学1989年卷1真题', '已知随机事件$A$的概率$P(A) = 0.5$，随机事件$B$的概率$P(B) = 0.6$，及条件概率$P(B∣A) = 0.8$，则和事件$A ∪ B$的概率$P(A ∪ B) =$______.', '[]', '$0.7$
', '已知$P(A) = 0.5$，$P(B) = 0.6$，$P(B∣A) = 0.8$。根据条件概率公式，$P(B∣A) = \\frac{P(A∩B)}{P(A)}$，因此$P(A ∩ B) = P(B∣A) × P(A) = 0.8 × 0.5 = 0.4$。再根据概率的加法公式，$P(A ∪ B) = P(A) + P(B) - P(A ∩ B) = 0.5 + 0.6 - 0.4 = 0.7$。
', 9, 'Mogullzr', '2026-01-29 14:06:52', 9, 'Mogullzr', '2026-01-29 14:06:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '230');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '230');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (231, '1989年考研数学卷1第21题', '简单', '考研数学1989年卷1真题', '甲、乙两人独立地对同一目标射击一次，其命中率分别为$0.6$和$0.5$．
现已知目标被命中，则它是甲射中的概率为______.', '[]', '$0.75$
', '设事件$A$为甲射中目标，事件$B$为乙射中目标。已知$P(A) = 0.6$，$P(B) = 0.5$，且$A$与$B$独立。目标被命中即事件$A ∪ B$发生。需要求条件概率$P(A ∣ A ∪ B)$。
由条件概率公式，
$P(A ∣ A ∪ B) = \\frac{P(A∩(A∪B))}{P(A∪B)}$。
由于$A ⊆ A ∪ B$，故$P(A ∩ (A ∪ B)) = P(A)$。
又
$P(A ∪ B) = P(A) + P(B) - P(A ∩ B) = 0.6 + 0.5 - 0.6 × 0.5 = 0.8$。
因此，
$P(A ∣ A ∪ B) = \\frac{P(A)}{P(A∪B)} = \\frac{0.6}{0.8} = 0.75$。
故所求概率为$0.75$。
', 9, 'Mogullzr', '2026-01-29 14:06:52', 9, 'Mogullzr', '2026-01-29 14:06:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '231');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '231');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (232, '1989年考研数学卷1第22题', '简单', '考研数学1989年卷1真题', '若随机变量$ξ$在$(1, 6)$上服从均匀分布，则方程$x^{2} + ξx + 1 = 0$有实根的概率是______.', '[]', '$4/5$
', '方程有实根的条件是判别式大于等于零，即$Δ = ξ^{2} - 4 ≥ 0$，解得$ξ ≥ 2$或$ξ ≤ −2$。由于随机变量$ξ$在区间$(1, 6)$上服从均匀分布，因此$ξ$的取值范围为$(1, 6)$，故只有$ξ ≥ 2$满足条件。$ξ$服从均匀分布，总区间长度为$6 - 1 = 5$，满足条件的区间长度为$6 - 2 = 4$，因此概率为$4/5$。
', 9, 'Mogullzr', '2026-01-29 14:06:52', 9, 'Mogullzr', '2026-01-29 14:06:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '232');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '232');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '232');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (233, '1989年考研数学卷1第23题', '简单', '考研数学1989年卷1真题', '设随机变量$X$与$Y$独立，且$X$服从均值为$1$、标准差(均方差)为$\\sqrt{2}$的正态分布，
而$Y$服从标准正态分布．试求随机变量$Z = 2X - Y + 3$的概率密度函数．', '[]', '
$Z$的概率密度函数为


$$
f_{Z}(z) = \\frac{1}{3\\sqrt{2π}}e^{−\\frac{(z-5)2}{18}}
$$

', '
由于$X$和$Y$独立，且均服从正态分布，则$Z = 2X - Y + 3$也服从正态分布。正态分布的概率密度函数由均值和方差决定。
首先，求$Z$的均值：


$$
E \\lbrack Z \\rbrack  = E \\lbrack 2X - Y + 3 \\rbrack  = 2E \\lbrack X \\rbrack  - E \\lbrack Y \\rbrack  + 3
$$

其中$E \\lbrack X \\rbrack  = 1$，$E \\lbrack Y \\rbrack  = 0$，故


$$
E \\lbrack Z \\rbrack  = 2 × 1 - 0 + 3 = 5
$$

其次，求$Z$的方差：


$$
Var(Z) = Var(2X - Y + 3) = Var(2X) + Var(−Y) + Var(3)
$$

由于常数方差为零，且$X$与$Y$独立，有


$$
Var(2X) = 4 Var(X),  Var(−Y) = Var(Y)
$$

已知$X$的标准差为$\\sqrt{2}$，故$Var(X) = (\\sqrt{2})2 = 2$；$Y$服从标准正态分布，故$Var(Y) = 1$。
因此，


$$
Var(Z) = 4 × 2 + 1 = 9
$$

所以$Z$服从均值为 5、方差为 9 的正态分布，其概率密度函数为


$$
f_{Z}(z) = \\frac{1}{\\sqrt{2π} ⋅ 3}e^{−\\frac{(z-5)2}{2×9}} = \\frac{1}{3\\sqrt{2π}}e^{−\\frac{(z-5)2}{18}}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:52', 9, 'Mogullzr', '2026-01-29 14:06:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '233');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '233');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '233');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (234, '1989年考研数学卷2第1题', '', '考研数学1989年卷2真题', '/problems/other/211', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (235, '1989年考研数学卷2第2题', '', '考研数学1989年卷2真题', '/problems/other/212', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (236, '1989年考研数学卷2第3题', '', '考研数学1989年卷2真题', '/problems/other/213', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (237, '1989年考研数学卷2第4题', '', '考研数学1989年卷2真题', '/problems/other/214', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (238, '1989年考研数学卷2第5题', '', '考研数学1989年卷2真题', '/problems/other/215', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (239, '1989年考研数学卷2第6题', '', '考研数学1989年卷2真题', '/problems/other/216', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (240, '1989年考研数学卷2第7题', '', '考研数学1989年卷2真题', '/problems/other/217', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (241, '1989年考研数学卷2第8题', '', '考研数学1989年卷2真题', '/problems/other/218', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (242, '1989年考研数学卷2第9题', '', '考研数学1989年卷2真题', '/problems/other/219', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (243, '1989年考研数学卷2第10题', '', '考研数学1989年卷2真题', '/problems/other/220', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (244, '1989年考研数学卷2第11题', '', '考研数学1989年卷2真题', '/problems/other/221', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (245, '1989年考研数学卷2第12题', '', '考研数学1989年卷2真题', '/problems/other/222', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (246, '1989年考研数学卷2第13题', '', '考研数学1989年卷2真题', '/problems/other/223', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (247, '1989年考研数学卷2第14题', '', '考研数学1989年卷2真题', '/problems/other/224', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (248, '1989年考研数学卷2第15题', '简单', '考研数学1989年卷2真题', '求八分之一球面$x^{2} + y^{2} + z^{2} = R^{2}$，$x ≥ 0, y ≥ 0, z ≥ 0$的边界曲线的重心，
设曲线的线密度$ρ = 1$．', '[]', '


$$
(\\frac{4R}{3π}, \\frac{4R}{3π}, \\frac{4R}{3π})
$$

', '
边界曲线由三条四分之一圆弧组成：
位于$xy$平面（$z = 0$），位于$yz$平面（$x = 0$），位于$zx$平面（$y = 0$）。
每条圆弧的半径为$R$，长度为$\\frac{πR}{2}$，因此总长度为


$$
L = 3 × \\frac{πR}{2} = \\frac{3πR}{2}.
$$


计算曲线积分$\\int_{C} x ds$：

$$
x = R \\cos θ,  y = R \\sin θ,  θ ∈  \\lbrack 0, \\frac{π}{2} \\rbrack ,
$$

因此


$$
\\int_{C} x ds = R^{2} + R^{2} + 0 = 2R^{2}.
$$


同理计算$\\int_{C} y ds$：
在$xy$平面弧上积分得$R^{2}$，在$yz$平面弧上积分得$R^{2}$，在$zx$平面弧上$y = 0$，积分得$0$，
故


$$
\\int_{C} y ds = 2R^{2}.
$$


计算$\\int_{C} z ds$：
在$yz$平面弧上积分得$R^{2}$，在$zx$平面弧上积分得$R^{2}$，在$xy$平面弧上$z = 0$，积分得$0$，
故


$$
\\int_{C} z ds = 2R^{2}.
$$


重心坐标：

$$
\\bar{x} = \\frac{\\int_{C} x ds}{L} = \\frac{2R^{2}}{\\frac{3πR}{2}} = \\frac{4R}{3π},
$$

同理


$$
\\bar{y} = \\frac{4R}{3π},  \\bar{z} = \\frac{4R}{3π}.
$$

因此，重心坐标为


$$
(\\frac{4R}{3π},  \\frac{4R}{3π},  \\frac{4R}{3π}) .
$$

', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '248');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '248');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1060', '248');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (249, '1989年考研数学卷2第16题', '简单', '考研数学1989年卷2真题', '设空间区域$Ω$由曲面$z = a^{2} - x^{2} - y^{2}$与平面$z = 0$围成，
其中$a$为正的常数，设$Ω$表面的外侧为$S$，$Ω$的体积为$V$，证明
$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} x^{2}yz^{2}dydz - xy^{2}z^{2}dzdx + z(1 + xyz)dxdy = V.
$$
', '[]', '等式成立。
', '考虑向量场$F = (P, Q, R)$，其中$P = x^{2}yz^{2}$，$Q = −xy^{2}z^{2}$，$R = z(1 + xyz)$。则给定曲面积分可写为：

$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} F ⋅ dS = \\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} x^{2}yz^{2} dy dz - xy^{2}z^{2} dz dx + z(1 + xyz) dx dy.
$$

由散度定理，有：

$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} F ⋅ dS = \\iiint_{Ω} ∇ ⋅ F dV.
$$

计算散度：

$$
∇ ⋅ F = \\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z} = 2xyz^{2} + (−2xyz^{2}) + (1 + 2xyz) = 1 + 2xyz.
$$

因此，

$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} F ⋅ dS = \\iiint_{Ω}(1 + 2xyz) dV = \\iiint_{Ω} 1 dV + 2 \\iiint_{Ω} xyz dV = V + 2 \\iiint_{Ω} xyz dV.
$$

需证$\\iiint_{Ω} xyz dV = 0$。区域$Ω$由$z = a^{2} - x^{2} - y^{2}$和$z = 0$围成，关于$z$轴对称。对于固定$z$，水平截面$D_{z}$为圆盘$x^{2} + y^{2} ≤ a^{2} - z$。被积函数$xyz$在$D_{z}$上关于$x$和$y$均为奇函数，故：

$$
\\iint_{D_{z}} xy dx dy = 0.
$$

于是，

$$
\\iiint_{Ω} xyz dV = \\int_{0}^{a^{2}} z (\\iint_{D_{z}} xy dx dy) dz = 0.
$$

代入前式：

$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} F ⋅ dS = V + 2 × 0 = V.
$$

故等式得证。
', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '249');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '249');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '249');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (250, '1989年考研数学卷2第17题', '', '考研数学1989年卷2真题', '/problems/other/225', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (251, '1989年考研数学卷2第18题', '', '考研数学1989年卷2真题', '/problems/other/226', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (252, '1989年考研数学卷2第19题', '', '考研数学1989年卷2真题', '/problems/other/227', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (253, '1989年考研数学卷2第20题', '', '考研数学1989年卷2真题', '/problems/other/228', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (254, '1989年考研数学卷2第21题', '', '考研数学1989年卷2真题', '/problems/other/229', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:54', 9, 'Mogullzr', '2026-01-29 14:06:54', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (255, '1989年考研数学卷3第1题', '简单', '考研数学1989年卷3真题', '$\\lim_{x→0}  x cot 2x$= ______.', '[]', '$\\frac{1}{2}$
', '考虑极限$\\lim_{x→0} x cot 2x$。由于$cot 2x = \\frac{\\cos 2x}{\\sin 2x}$，原式可写为$\\lim_{x→0} \\frac{x \\cos 2x}{\\sin 2x}$。当$x → 0$时，该式为$\\frac{0}{0}$型不定式。
方法一：使用等价无穷小。令$u = 2x$，则当$x → 0$时$u → 0$，原极限化为$\\lim_{u→0} \\frac{u}{2} ⋅ \\frac{\\cos u}{\\sin u} = \\frac{1}{2} \\lim_{u→0} \\frac{u}{\\sin u} ⋅ \\cos u$。已知$\\lim_{u→0} \\frac{u}{\\sin u} = 1$和$\\lim_{u→0} \\cos u = 1$，故极限为$\\frac{1}{2}$。
方法二：使用洛必达法则。对$\\frac{x \\cos 2x}{\\sin 2x}$分子分母分别求导：分子导数为$\\cos 2x - 2x \\sin 2x$，分母导数为$2 \\cos 2x$。代入$x = 0$，得$\\frac{1}{2}$。
两种方法均得极限为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:56', 9, 'Mogullzr', '2026-01-29 14:06:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '255');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '255');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '255');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (256, '1989年考研数学卷3第2题', '简单', '考研数学1989年卷3真题', '$\\int_{0}^{π} t \\sin tdt$=______.', '[]', '
$π$
', '
计算定积分$\\int_{0}^{π} t \\sin t dt$。使用分部积分法，设$u = t$，$dv = \\sin t dt$，则$du = dt$，$v = − \\cos t$。
代入分部积分公式：


$$
∫ t \\sin t dt = −t \\cos t + ∫ \\cos t dt = −t \\cos t + \\sin t + C
$$

现在计算定积分：


$$
\\int_{0}^{π} t \\sin t dt =  \\lbrack −t \\cos t + \\sin t \\rbrack _{0}^{π}
$$

在$t = π$时：


$$
−(π) \\cos π + \\sin π = −π ⋅ (−1) + 0 = π
$$

在$t = 0$时：


$$
−(0) \\cos 0 + \\sin 0 = 0 + 0 = 0
$$

因此，积分值为$π - 0 = π$。
', 9, 'Mogullzr', '2026-01-29 14:06:56', 9, 'Mogullzr', '2026-01-29 14:06:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '256');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '256');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '256');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (257, '1989年考研数学卷3第3题', '简单', '考研数学1989年卷3真题', '曲线$y = \\int_{0}^{x}(t - 1)(t - 2)dt$在点$(0, 0)$处的切线方程是______.', '[]', '$y = 2x$
', '
曲线由$y = \\int_{0}^{x}(t - 1)(t - 2) dt$定义。根据微积分的基本定理，导数$y^{′} = (x - 1)(x - 2)$。在点$(0, 0)$处，斜率$m = y^{′}(0) = (0 - 1)(0 - 2) = 2$。切线方程使用点斜式：$y - 0 = 2(x - 0)$，即$y = 2x$。
', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '257');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '257');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '257');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (258, '1989年考研数学卷3第4题', '简单', '考研数学1989年卷3真题', '设$f(x) = x(x + 1)(x + 2) ⋯⋯ (x + n)$，则$f^{′}(0) =$______.', '[]', '$n!$
', '
给定函数$f(x) = x(x + 1)(x + 2) ⋯ (x + n)$，求$f^{′}(0)$。
由于$f(0) = 0 ⋅ 1 ⋅ 2 ⋯ n = 0$，根据导数定义：


$$
f^{′}(0) = \\lim_{h→0} \\frac{f(h) - f(0)}{h} = \\lim_{h→0} \\frac{f(h)}{h}
$$

其中$f(h) = h(h + 1)(h + 2) ⋯ (h + n)$，因此：


$$
f^{′}(0) = \\lim_{h→0} \\frac{h(h + 1)(h + 2) ⋯ (h + n)}{h} = \\lim_{h→0}(h + 1)(h + 2) ⋯ (h + n)
$$

当$h → 0$时，上式趋近于$1 ⋅ 2 ⋯ n = n!$，故$f^{′}(0) = n!$。
Alternatively, 使用乘积法则：
设$f(x) = \\prod_{k=0}^{n}(x + k)$，则


$$
f^{′}(x) = \\sum_{j=0}^{n} \\prod_{\\begin{array}{c}
k=0 \\\\
k\\neqj \\\\
\\end{array}}^{n}(x + k)
$$

代入$x = 0$：


$$
f^{′}(0) = \\sum_{j=0}^{n} \\prod_{\\begin{array}{c}
k=0 \\\\
k\\neqj \\\\
\\end{array}}^{n} k
$$

当$j = 0$时，乘积为$\\prod_{k=1}^{n} k = n!$；当$j ≥ 1$时，乘积中包含$k = 0$，故该项为 0。因此，仅$j = 0$项贡献，即$f^{′}(0) = n!$。
', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '258');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '258');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '258');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (259, '1989年考研数学卷3第5题', '', '考研数学1989年卷3真题', '/problems/other/212', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (260, '1989年考研数学卷3第6题', '简单', '考研数学1989年卷3真题', '设$f(x) = \\begin{cases} a + bx^{2}, x ≤ 0 \\\\ \\frac{\\sin bx}{x}, x > 0 \\end{cases}$在$x = 0$处连续，则常数$a$与$b$应满足的关系是______.', '[]', '$a = b$
', '
函数$f(x)$在$x = 0$处连续，需满足左极限、右极限与函数值相等。
函数在$x = 0$处的值为$f(0) = a + b ⋅ 0^{2} = a$。
左极限为$\\lim_{x→0^{-}} f(x) = \\lim_{x→0^{-}}(a + bx^{2}) = a$。
右极限为$\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\frac{\\sin bx}{x}$。令$u = bx$，则当$x → 0^{+}$时，$u → 0$，有$\\lim_{x→0^{+}} \\frac{\\sin bx}{x} = \\lim_{x→0^{+}} b ⋅ \\frac{\\sin bx}{bx} = b ⋅ 1 = b$。
因此，连续性要求$a = b$。
', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '260');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '260');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '260');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (261, '1989年考研数学卷3第7题', '简单', '考研数学1989年卷3真题', '设$\\tan y = x + y$，则$dy =$______.', '[]', '
$dy = \\frac{1}{(x+y)2}dx$
', '
给定方程$\\tan y = x + y$，两边同时求微分：

$$
d(\\tan y) = d(x + y)
$$

左边：

$$
d(\\tan y) = sec^{2} y dy
$$

右边：

$$
d(x + y) = dx + dy
$$

因此得到：

$$
sec^{2} y dy = dx + dy
$$

移项得：

$$
sec^{2} y dy - dy = dx
$$



$$
(sec^{2} y - 1) dy = dx
$$

由于$sec^{2} y - 1 = \\tan^{2} y$，所以：

$$
\\tan^{2} y dy = dx
$$

因此：

$$
dy = \\frac{1}{\\tan^{2} y} dx
$$

又由原方程$\\tan y = x + y$，代入得：

$$
dy = \\frac{1}{(x + y)2} dx
$$

', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '261');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '261');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '261');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (262, '1989年考研数学卷3第8题', '简单', '考研数学1989年卷3真题', '已知$y = arcsin e^{−\\sqrt{x}}$，求$y^{′}$．', '[]', '$y^{′} = −\\frac{e^{−\\sqrt{x}}}{2\\sqrt{x(1-e^{−2\\sqrt{x}})}}$
', '设$y = arcsin u$，其中$u = e^{−\\sqrt{x}}$。
首先，求$\\frac{dy}{du}$。由于$\\frac{d}{du}(arcsin u) = \\frac{1}{\\sqrt{1-u^{2}}}$，所以$\\frac{dy}{du} = \\frac{1}{\\sqrt{1-u^{2}}} = \\frac{1}{\\sqrt{1-(e^{−\\sqrt{x}})2}} = \\frac{1}{\\sqrt{1-e^{−2\\sqrt{x}}}}$。
其次，求$\\frac{du}{dx}$。由于$u = e^{−\\sqrt{x}}$，令$v = −\\sqrt{x} = −x^{1/2}$，则$u = e^{v}$，所以$\\frac{du}{dv} = e^{v} = e^{−\\sqrt{x}}$，且$\\frac{dv}{dx} = −\\frac{1}{2}x^{−1/2} = −\\frac{1}{2\\sqrt{x}}$。
因此，$\\frac{du}{dx} = \\frac{du}{dv} ⋅ \\frac{dv}{dx} = e^{−\\sqrt{x}} ⋅ (−\\frac{1}{2\\sqrt{x}}) = −\\frac{e^{−\\sqrt{x}}}{2\\sqrt{x}}$。
最后，根据链式法则，$y^{′} = \\frac{dy}{dx} = \\frac{dy}{du} ⋅ \\frac{du}{dx} = \\frac{1}{\\sqrt{1-e^{−2\\sqrt{x}}}} ⋅ (−\\frac{e^{−\\sqrt{x}}}{2\\sqrt{x}}) = −\\frac{e^{−\\sqrt{x}}}{2\\sqrt{x}\\sqrt{1-e^{−2\\sqrt{x}}}}$。
简化分母，有$\\sqrt{x}\\sqrt{} = \\sqrt{}$，所以$y^{′} = −\\frac{e^{−\\sqrt{x}}}{2\\sqrt{x(1-e^{−2\\sqrt{x}})}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '262');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '262');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '262');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (263, '1989年考研数学卷3第9题', '简单', '考研数学1989年卷3真题', '求$∫ \\frac{dx}{x \\ln^{2} x}$．', '[]', '
$−\\frac{1}{\\ln x} + C$
', '
考虑积分$∫ \\frac{dx}{x \\ln^{2} x}$。令$u = \\ln x$，则$du = \\frac{1}{x}dx$，即$\\frac{1}{x}dx = du$。代入后，积分化为$∫ \\frac{1}{u^{2}}du = ∫ u^{−2}du$。计算得$∫ u^{−2}du = \\frac{u^{−1}}{−1} + C = −\\frac{1}{u} + C$。代回$u = \\ln x$，得原积分为$−\\frac{1}{\\ln x} + C$。
', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '263');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '263');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '263');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (264, '1989年考研数学卷3第10题', '简单', '考研数学1989年卷3真题', '求$\\lim_{x→0} (2 \\sin x + \\cos x)x1​$．', '[]', '
$e^{2}$
', '
设$y = (2 \\sin x + \\cos x)x1​$，则$\\ln y = \\frac{\\ln(2 \\sin x+\\cos x)}{x}$。
当$x → 0$时，分子$\\ln(2 \\sin x + \\cos x) → \\ln(1) = 0$，分母$x → 0$，因此为$\\frac{0}{0}$型未定式。
应用 L’Hôpital 法则，求分子和分母的导数：
分子导数为$\\frac{d}{dx} \\ln(2 \\sin x + \\cos x) = \\frac{2 \\cos x-\\sin x}{2 \\sin x+\\cos x}$，分母导数为 1。
于是，$\\lim_{x→0} \\ln y = \\lim_{x→0} \\frac{2 \\cos x-\\sin x}{2 \\sin x+\\cos x}$。
代入$x = 0$，得$\\frac{2⋅1-0}{2⋅0+1} = \\frac{2}{1} = 2$。
因此，$\\lim_{x→0} y = e^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:57', 9, 'Mogullzr', '2026-01-29 14:06:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '264');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '264');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '264');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (265, '1989年考研数学卷3第11题', '简单', '考研数学1989年卷3真题', '已知$\\begin{cases} x = \\ln(1 + t^{2}) \\\\ y = arctan t \\end{cases}$求$\\frac{dy}{dx}$及$\\frac{d^{2}y}{dx^{2}}$．', '[]', '$\\frac{dy}{dx} = \\frac{1}{2t}$，$\\frac{d^{2}y}{dx^{2}} = −\\frac{1+t^{2}}{4t^{3}}$
', '给定参数方程$x = \\ln(1 + t^{2})$和$y = arctan t$，先求一阶导数$\\frac{dy}{dx}$。
计算$\\frac{dx}{dt} = \\frac{2t}{1+t^{2}}$，$\\frac{dy}{dt} = \\frac{1}{1+t^{2}}$，
则$\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{\\frac{1}{1+t^{2}}}{\\frac{2t}{1+t^{2}}} = \\frac{1}{2t}$。
再求二阶导数$\\frac{d^{2}y}{dx^{2}}$，
由$\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{\\frac{d}{dt}(\\frac{dy}{dx})}{\\frac{dx}{dt}}$，
其中$\\frac{dy}{dx} = \\frac{1}{2t}$，故$\\frac{d}{dt} (\\frac{1}{2t}) = −\\frac{1}{2t^{2}}$，
代入得$\\frac{d^{2}y}{dx^{2}} = \\frac{−\\frac{1}{2t^{2}}}{\\frac{2t}{1+t^{2}}} = −\\frac{1+t^{2}}{4t^{3}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:58', 9, 'Mogullzr', '2026-01-29 14:06:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '265');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '265');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '265');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (266, '1989年考研数学卷3第12题', '简单', '考研数学1989年卷3真题', '已知$f(2) = \\frac{1}{2}$,$f^{′}(2) = 0$及$\\int_{0}^{2} f(x)dx = 1$，求$\\int_{0}^{1} x^{2}f^{′′}(2x)dx$．', '[]', '$0$
', '
已知$f(2) = \\frac{1}{2}$，$f^{′}(2) = 0$，及$\\int_{0}^{2} f(x) dx = 1$，求$\\int_{0}^{1} x^{2}f^{′′}(2x) dx$。
令$u = 2x$，则$du = 2 dx$，当$x = 0$时$u = 0$，当$x = 1$时$u = 2$。
积分变为：


$$
\\int_{0}^{1} x^{2}f^{′′}(2x) dx = \\int_{0}^{2} (\\frac{u}{2})^{2} f^{′′}(u) ⋅ \\frac{du}{2} = \\frac{1}{8} \\int_{0}^{2} u^{2}f^{′′}(u) du
$$

计算$\\int_{0}^{2} u^{2}f^{′′}(u) du$使用分部积分：
令$v = u^{2}$，$dw = f^{′′}(u) du$，则$dv = 2u du$，$w = f^{′}(u)$。


$$
\\int_{0}^{2} u^{2}f^{′′}(u) du =  \\lbrack u^{2}f^{′}(u) \\rbrack _{0}^{2} - \\int_{0}^{2} 2uf^{′}(u) du
$$

代入边界值：
在$u = 2$，$u^{2}f^{′}(u) = 4 ⋅ f^{′}(2) = 4 ⋅ 0 = 0$；
在$u = 0$，$u^{2}f^{′}(u) = 0$。
所以边界项为 0，


$$
\\int_{0}^{2} u^{2}f^{′′}(u) du = −2 \\int_{0}^{2} uf^{′}(u) du
$$

再计算$\\int_{0}^{2} uf^{′}(u) du$使用分部积分：
令$s = u$，$dt = f^{′}(u) du$，则$ds = du$，$t = f(u)$。


$$
\\int_{0}^{2} uf^{′}(u) du =  \\lbrack uf(u) \\rbrack _{0}^{2} - \\int_{0}^{2} f(u) du
$$

代入边界值：
在$u = 2$，$uf(u) = 2 ⋅ f(2) = 2 ⋅ \\frac{1}{2} = 1$；
在$u = 0$，$uf(u) = 0$。
所以边界项为 1，
且$\\int_{0}^{2} f(u) du = 1$，


$$
\\int_{0}^{2} uf^{′}(u) du = 1 - 1 = 0
$$

因此，


$$
\\int_{0}^{2} u^{2}f^{′′}(u) du = −2 × 0 = 0
$$

原积分为


$$
\\frac{1}{8} × 0 = 0
$$

故答案为 0。
', 9, 'Mogullzr', '2026-01-29 14:06:58', 9, 'Mogullzr', '2026-01-29 14:06:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '266');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '266');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '266');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (267, '1989年考研数学卷3第13题', '', '考研数学1989年卷3真题', '/problems/other/216', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:58', 9, 'Mogullzr', '2026-01-29 14:06:58', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (268, '1989年考研数学卷3第14题', '简单', '考研数学1989年卷3真题', '若$3a^{2} - 5b < 0$，则方程$x^{5} + 2ax^{3} + 3bx + 4c = 0$', '[''无实根．'', ''有唯一实根．'', ''有三个不同实根．'', ''有五个不同实根．'']', "['B']", '考虑函数$f(x) = x^{5} + 2ax^{3} + 3bx + 4c$，其导数为$f^{′}(x) = 5x^{4} + 6ax^{2} + 3b$。令$t = x^{2} ≥ 0$，则$f^{′}(x) = 5t^{2} + 6at + 3b$。该二次方程的判别式为$Δ = (6a)2 - 4 ⋅ 5 ⋅ 3b = 36a^{2} - 60b = 12(3a^{2} - 5b)$。由条件$3a^{2} - 5b < 0$，知$Δ < 0$，且二次项系数$5 > 0$，故$f^{′}(x) > 0$对于所有$x ∈ R$。因此$f(x)$严格递增。由于$f(x)$是五次多项式（奇数次），严格递增意味着有且仅有一个实根。故选项 B 正确。', 9, 'Mogullzr', '2026-01-29 14:06:58', 9, 'Mogullzr', '2026-01-29 14:06:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '268');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '268');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '268');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (269, '1989年考研数学卷3第15题', '简单', '考研数学1989年卷3真题', '曲线$y = \\cos x$（$−\\frac{π}{2} ≤ x ≤ \\frac{π}{2}$）与$x$轴所围成的图形，
绕$x$轴旋转一周所成的旋转体的体积为', '[''$\\\\frac{π}{2}$．'', ''$π$．'', ''$\\\\frac{π^{2}}{2}$．'', ''$π^{2}$．'']', "['C']", '曲线$y = \\cos x$在区间$−\\frac{π}{2} ≤ x ≤ \\frac{π}{2}$与$x$轴所围成的图形绕$x$轴旋转一周所成的旋转体的体积公式为$V = π \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\lbrack \\cos x \\rbrack 2 dx$。计算积分：$\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos^{2} x dx = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\frac{1+\\cos 2x}{2} dx = \\frac{1}{2} \\int_{−\\frac{π}{2}}^{\\frac{π}{2}}(1 + \\cos 2x) dx$。其中，$\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} 1 dx = π$，且$\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos 2x dx = 0$，因此积分值为$\\frac{1}{2} × π = \\frac{π}{2}$。体积$V = π × \\frac{π}{2} = \\frac{π^{2}}{2}$，故正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:06:58', 9, 'Mogullzr', '2026-01-29 14:06:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '269');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '269');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '269');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (270, '1989年考研数学卷3第16题', '简单', '考研数学1989年卷3真题', '设两函数$f(x)$及$g(x)$都在$x = a$处取得极大值，
则函数$F(x) = f(x)g(x)$在$x = a$处', '[''必取极大值．'', ''必取极小值．'', ''不可能取极值．'', ''是否取极值不能确定．'']', "['D']", '
函数$f(x)$和$g(x)$在$x = a$处均取得极大值，但$F(x) = f(x)g(x)$在$x = a$处的极值行为取决于$f(a)$和$g(a)$的具体值。例如：若$f(x) = −x^{2} + 1$和$g(x) = −x^{2} + 1$，在$x = 0$处均取极大值，且$f(0) = 1 > 0$，$g(0) = 1 > 0$，则$F(x) = (−x^{2} + 1)2$在$x = 0$处取极大值。若$f(x) = −x^{2}$和$g(x) = −x^{2}$，在$x = 0$处均取极大值，但$f(0) = 0$，$g(0) = 0$，则$F(x) = x^{4}$在$x = 0$处取极小值。若$f(x) = −(x - a)2 - 1$和$g(x) = −(x - a)2 - 1$，在$x = a$处均取极大值，且$f(a) = −1 < 0$，$g(a) = −1 < 0$，则$F(x) =  \\lbrack −(x - a)2 - 1 \\rbrack 2$在$x = a$处取极小值。若$f(x) = −x^{2} + 2$和$g(x) = −x^{2} - 2$，在$x = 0$处均取极大值，但$f(0) = 2 > 0$，$g(0) = −2 < 0$，则$F(x) = x^{4} - 4$在$x = 0$处取极小值。因此，$F(x)$在$x = a$处可能取极大值也可能取极小值，无法确定，故选 D。', 9, 'Mogullzr', '2026-01-29 14:06:58', 9, 'Mogullzr', '2026-01-29 14:06:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '270');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '270');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '270');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (271, '1989年考研数学卷3第17题', '简单', '考研数学1989年卷3真题', '微分方程$y^{′′} - y = e^{x} + 1$的一个特解应具有形式（式中$a, b$为常数）', '[''$ae^{x} + b$．'', ''$axe^{x} + b$．'', ''$ae^{x} + bx$．'', ''$axe^{x} + bx$．'']', "['B']", '
微分方程$y^{′′} - y = e^{x} + 1$是一个二阶线性非齐次方程。其齐次方程$y^{′′} - y = 0$的特征方程为$r^{2} - 1 = 0$，解得$r = ±1$，齐次解为$y_{h} = c_{1}e^{x} + c_{2}e^{−x}$。非齐次项为$e^{x} + 1$，其中$e^{x}$与齐次解中的$e^{x}$重合，因此特解中对应$e^{x}$的部分需乘以$x$以避免重复；对应常数$1$的部分，由于齐次解中无常数项，可直接取常数形式。因此特解形式应为$axe^{x} + b$，对应选项 B。验证：设$y_{p} = axe^{x} + b$，则$y_{p}^{′} = ae^{x}(1 + x)$，$y_{p}^{′′} = ae^{x}(2 + x)$，代入方程得$y_{p}^{′′} - y_{p} = 2ae^{x} - b$，令其等于$e^{x} + 1$，解得$a = \\frac{1}{2}$，$b = −1$，特解成立。其他选项均无法匹配非齐次项。', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '271');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '271');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '271');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (272, '1989年考研数学卷3第18题', '简单', '考研数学1989年卷3真题', '设$f(x)$在$x = a$的某个邻域内有定义，则$f(x)$在$x = a$可导的一个充分条件是', '[''$\\\\lim_{h→+∞}  h \\\\lbrack f(a + \\\\frac{1}{h}) - f(a) \\\\rbrack$存在．'', ''$\\\\lim_{h→0}  \\\\frac{f(a+h)-f(a+h)}{h}$存在．'', ''$\\\\lim_{h→0}  \\\\frac{f(a+h)-f(a-h)}{2h}$存在．'', ''$\\\\lim_{h→0}  \\\\frac{f(a)-f(a-h)}{h}$存在．'']', "['D']", '函数$f(x)$在$x = a$可导的定义是极限$\\lim_{h→0} \\frac{f(a+h)-f(a)}{h}$存在。分析各选项：选项 A：$\\lim_{h→+∞} h \\lbrack f(a + \\frac{1}{h}) - f(a) \\rbrack$等价于右导数$\\lim_{t→0^{+}} \\frac{f(a+t)-f(a)}{t}$，仅右导数存在不足以保证可导。选项 B：$\\lim_{h→0} \\frac{f(a+h)-f(a+h)}{h} = \\lim_{h→0} \\frac{0}{h} = 0$，该极限恒存在且为 0，不能保证$f(x)$在$x = a$可导。选项 C：$\\lim_{h→0} \\frac{f(a+h)-f(a-h)}{2h}$是对称导数，存在时不一定保证可导，例如$f(x) = ∣x∣$在$x = 0$处对称导数存在但不可导。选项 D：$\\lim_{h→0} \\frac{f(a)-f(a-h)}{h}$，令$t = −h$，则极限化为$\\lim_{t→0} \\frac{f(a+t)-f(a)}{t}$，这正是导数的定义，因此该极限存在是$f(x)$在$x = a$可导的充分条件。
故正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '272');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '272');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '272');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (273, '1989年考研数学卷3第19题', '简单', '考研数学1989年卷3真题', '求微分方程$xy^{′} + (1 - x)y = e^{2x}$($0 < x < +∞$)满足$y(1) = 0$的解．', '[]', '

$$
y = \\frac{e^{2x} - e^{x+1}}{x}
$$

', '给定微分方程$xy^{′} + (1 - x)y = e^{2x}$，其中$0 < x < +∞$，且初始条件$y(1) = 0$。
首先，将方程化为标准形式$y^{′} + P(x)y = Q(x)$，除以$x$得：

$$
y^{′} + \\frac{1 - x}{x}y = \\frac{e^{2x}}{x}
$$

这里$P(x) = \\frac{1-x}{x}$，$Q(x) = \\frac{e^{2x}}{x}$。
计算积分因子$μ(x) = e^{∫ P(x) dx}$。


$$
∫ P(x) dx = ∫ \\frac{1 - x}{x} dx = ∫ (\\frac{1}{x} - 1) dx = \\ln x - x
$$

所以$μ(x) = e^{\\ln x-x} = xe^{−x}$。
将原方程乘以积分因子：

$$
xe^{−x}y^{′} + xe^{−x} ⋅ \\frac{1 - x}{x}y = xe^{−x} ⋅ \\frac{e^{2x}}{x}
$$

简化得：

$$
xe^{−x}y^{′} + e^{−x}(1 - x)y = e^{x}
$$

左边为$\\frac{d}{dx} (xe^{−x}y)$，因此：

$$
\\frac{d}{dx} (xe^{−x}y) = e^{x}
$$

积分两边：

$$
xe^{−x}y = ∫ e^{x} dx = e^{x} + C
$$

其中$C$为积分常数。解出$y$：

$$
y = \\frac{e^{x} + C}{xe^{−x}} = \\frac{e^{x} + C}{x}e^{x} = \\frac{e^{2x} + Ce^{x}}{x}
$$

代入初始条件$y(1) = 0$：

$$
0 = \\frac{e^{2⋅1} + Ce^{1}}{1} = e^{2} + Ce
$$

解得$C = −e$。因此特解为：

$$
y = \\frac{e^{2x} - e ⋅ e^{x}}{x} = \\frac{e^{2x} - e^{x+1}}{x}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '273');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '273');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '273');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (274, '1989年考研数学卷3第20题', '', '考研数学1989年卷3真题', '/problems/other/225', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (275, '1989年考研数学卷3第21题', '', '考研数学1989年卷3真题', '/problems/other/226', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (276, '1989年考研数学卷3第22题', '简单', '考研数学1989年卷3真题', '对函数$y = \\frac{x+1}{x^{2}}$，填写下表：
$$
\\begin{array}{c|c|}
单调减少区间 &  \\\\
 &  \\\\
单调增加区间 &  \\\\
 &  \\\\
极值点 &  \\\\
 &  \\\\
极值 &  \\\\
 &  \\\\
凹 (⋃) 区间 &  \\\\
 &  \\\\
渐近线 &  \\\\
 &  \\\\
\\end{array}
$$
', '[]', '单调减少区间：$(−∞, −2)$，$(0, +∞)$
单调增加区间：$(−2, 0)$
极值点：$x = −2$
极值：$y = −\\frac{1}{4}$
凹区间：$(−3, 0)$，$(0, +∞)$
凸区间：$(−∞, −3)$
拐点：$(−3, −\\frac{2}{9})$
渐近线：$x = 0$，$y = 0$
', '
函数$y = \\frac{x+1}{x^{2}}$的定义域为$x \\neq 0$。
一阶导数为$y^{′} = −\\frac{x+2}{x^{3}}$。令$y^{′} = 0$，得$x = −2$。分析符号：当$x < −2$时，$y^{′} < 0$，函数单调减少；当$−2 < x < 0$时，$y^{′} > 0$，函数单调增加；当$x > 0$时，$y^{′} < 0$，函数单调减少。因此，单调减少区间为$(−∞, −2)$和$(0, +∞)$，单调增加区间为$(−2, 0)$。极值点为$x = −2$，极值为$y = −\\frac{1}{4}$。
二阶导数为$y^{′′} = \\frac{2(x+3)}{x^{4}}$。由于$x^{4} > 0$（$x \\neq 0$），$y^{′′}$的符号取决于$x + 3$。当$x < −3$时，$y^{′′} < 0$，函数凸；当$x > −3$且$x \\neq 0$时，$y^{′′} > 0$，函数凹。因此，凸区间为$(−∞, −3)$，凹区间为$(−3, 0)$和$(0, +∞)$。拐点为$(−3, −\\frac{2}{9})$。
渐近线：当$x → 0$时，$y → +∞$，故有垂直渐近线$x = 0$；当$x → ±∞$时，$y → 0$，故有水平渐近线$y = 0$。
', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '276');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '276');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '276');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (277, '1989年考研数学卷3第23题', '简单', '考研数学1989年卷3真题', '设抛物线$y = ax^{2} + bx + c$过原点，当$0 ≤ x ≤ 1$时$y ≥ 0$，
又已知该抛物线与$x$轴及直线$x = 1$所围图形的面积为$\\frac{1}{3}$，
试确定$a, b, c$使此图形绕$x$旋转一周而成的旋转体的体积$V$最小．', '[]', '
$a = −\\frac{5}{4},  b = \\frac{3}{2},  c = 0$
', '
由于抛物线过原点，代入$x = 0, y = 0$得$c = 0$，因此抛物线方程为$y = ax^{2} + bx$。
给定在$0 ≤ x ≤ 1$时$y ≥ 0$，且抛物线与$x$轴及直线$x = 1$所围图形的面积为$\\frac{1}{3}$，即


$$
\\int_{0}^{1}(ax^{2} + bx) dx = \\frac{1}{3}.
$$

计算积分：


$$
\\int_{0}^{1} ax^{2} dx = \\frac{a}{3},  \\int_{0}^{1} bx dx = \\frac{b}{2},
$$

所以


$$
\\frac{a}{3} + \\frac{b}{2} = \\frac{1}{3}.
$$

两边乘以 6 得


$$
2a + 3b = 2. (1)
$$

旋转体体积$V$为绕$x$轴旋转的体积：


$$
V = π \\int_{0}^{1} y^{2} dx = π \\int_{0}^{1}(a^{2}x^{4} + 2abx^{3} + b^{2}x^{2}) dx = π (\\frac{a^{2}}{5} + \\frac{ab}{2} + \\frac{b^{2}}{3}) .
$$

令$Q = \\frac{a^{2}}{5} + \\frac{ab}{2} + \\frac{b^{2}}{3}$，则最小化$V$等价于最小化$Q$。
由约束 (1) 解出$a = 1 - \\frac{3}{2}b$，代入$Q$：


$$
Q = \\frac{1}{5} - \\frac{b}{10} + \\frac{b^{2}}{30}.
$$

对$Q$求导：


$$
Q^{′}(b) = \\frac{1}{15}b - \\frac{1}{10},
$$

令$Q^{′}(b) = 0$得$b = \\frac{3}{2}$，代入$a = 1 - \\frac{3}{2} × \\frac{3}{2} = −\\frac{5}{4}$。
验证在$0 ≤ x ≤ 1$时$y ≥ 0$：


$$
y = −\\frac{5}{4}x^{2} + \\frac{3}{2}x = x (\\frac{3}{2} - \\frac{5}{4}x) ,
$$

根为$x = 0$和$x = \\frac{6}{5}$，在$\\lbrack 0, 1 \\rbrack$上$y ≥ 0$。
面积验证：


$$
\\int_{0}^{1} (−\\frac{5}{4}x^{2} + \\frac{3}{2}x) dx = −\\frac{5}{12} + \\frac{3}{4} = \\frac{1}{3},
$$

符合条件。因此$a = −\\frac{5}{4},  b = \\frac{3}{2},  c = 0$使体积最小。
', 9, 'Mogullzr', '2026-01-29 14:06:59', 9, 'Mogullzr', '2026-01-29 14:06:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '277');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '277');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '277');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (278, '1989年考研数学卷4第1题', '简单', '考研数学1989年卷4真题', '曲线$y = x + \\sin^{2} x$在点$(\\frac{π}{2}, 1 + \\frac{π}{2})$处的切线方程是______.', '[]', '
$y = x + 1$
', '
首先，求曲线$y = x + \\sin^{2} x$的导数以得到切线斜率。导数为


$$
y^{′} = 1 + 2 \\sin x \\cos x = 1 + \\sin 2x.
$$

在点$x = \\frac{π}{2}$处，斜率为


$$
m = y^{′} (\\frac{π}{2}) = 1 + \\sin π = 1 + 0 = 1.
$$

已知切点坐标为$(\\frac{π}{2}, 1 + \\frac{π}{2})$，使用点斜式方程：


$$
y - (1 + \\frac{π}{2}) = 1 ⋅ (x - \\frac{π}{2}) .
$$

化简得


$$
y - 1 - \\frac{π}{2} = x - \\frac{π}{2},
$$

即


$$
y = x + 1.
$$

因此，切线方程为$y = x + 1$。
', 9, 'Mogullzr', '2026-01-29 14:07:02', 9, 'Mogullzr', '2026-01-29 14:07:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '278');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '278');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '278');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (279, '1989年考研数学卷4第2题', '简单', '考研数学1989年卷4真题', '幂级数$\\sum_{n=0}^{∞} \\frac{x^{n}}{\\sqrt{n+1}}$的收敛域是______.', '[]', '
$\\lbrack −1, 1)$
', '
考虑幂级数$\\sum_{n=0}^{∞} \\frac{x^{n}}{\\sqrt{n+1}}$。使用比值判别法，计算极限：


$$
\\begin{array}{cc}
L & = \\lim_{n→∞} ​\\frac{a_{n+1}}{a_{n}}​ = \\lim_{n→∞} ​\\frac{\\frac{x^{n+1}}{\\sqrt{n+2}}}{\\frac{x^{n}}{\\sqrt{n+1}}}​ \\\\
 & = \\lim_{n→∞} ​x ⋅ \\frac{\\sqrt{n + 1}}{\\sqrt{n + 2}}​ = ∣x∣ \\lim_{n→∞} \\sqrt{\\frac{n + 1}{n + 2}} \\\\
 & = ∣x∣ ⋅ 1 \\\\
\\end{array}
$$

当$L < 1$即$∣x∣ < 1$时级数收敛，当$L > 1$即$∣x∣ > 1$时级数发散。当$∣x∣ = 1$时比值判别法不确定，需单独检查端点。当$x = 1$时，级数为$\\sum_{n=0}^{∞} \\frac{1}{\\sqrt{n+1}} = \\sum_{k=1}^{∞} \\frac{1}{\\sqrt{k}}$，是$p = \\frac{1}{2} < 1$的$p$-级数，故发散。当$x = −1$时，级数为$\\sum_{n=0}^{∞} \\frac{(−1)n}{\\sqrt{n+1}}$，是交错级数。令$b_{n} = \\frac{1}{\\sqrt{n+1}}$，则$b_{n} > 0$，$b_{n}$递减，且$\\lim_{n→∞} b_{n} = 0$，由莱布尼茨判别法知该交错级数收敛。
因此，收敛域为$\\lbrack −1, 1)$。
', 9, 'Mogullzr', '2026-01-29 14:07:02', 9, 'Mogullzr', '2026-01-29 14:07:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '279');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '279');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '279');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (280, '1989年考研数学卷4第3题', '简单', '考研数学1989年卷4真题', '齐次线性方程组$\\begin{cases} λx_{1} + x_{2} + x_{3} = 0 \\\\ x_{1} + λx_{2} + x_{3} = 0 \\\\ x_{1} + x_{2} + x_{3} = 0 \\end{cases}$只有零解，则$λ$应满足的条件是______.', '[]', '
λ ≠ 1
', '
齐次线性方程组只有零解的条件是系数矩阵的行列式不为零。系数矩阵为：


$$
A = \\left( \\begin{array}{ccc}
λ & 1 & 1 \\\\
1 & λ & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)
$$

计算行列式：


$$
\\begin{array}{cc}
det(A) & = λ ⋅ (λ ⋅ 1 - 1 ⋅ 1) - 1 ⋅ (1 ⋅ 1 - 1 ⋅ 1) + 1 ⋅ (1 ⋅ 1 - λ ⋅ 1) \\\\
 & = λ(λ - 1) - 1 ⋅ 0 + 1 ⋅ (1 - λ) \\\\
 & = λ^{2} - λ + 1 - λ \\\\
 & = λ^{2} - 2λ + 1 \\\\
\\end{array}
$$

因此，$det(A) = (λ - 1)2$。方程组只有零解当且仅当$det(A) \\neq 0$，即$(λ - 1)2 \\neq 0$，所以$λ \\neq 1$。
当$λ = 1$时，方程组化为$x_{1} + x_{2} + x_{3} = 0$，有无穷多解，不满足只有零解的条件。
故$λ$应满足的条件是$λ \\neq 1$。
', 9, 'Mogullzr', '2026-01-29 14:07:02', 9, 'Mogullzr', '2026-01-29 14:07:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '280');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '280');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (281, '1989年考研数学卷4第4题', '简单', '考研数学1989年卷4真题', '设随机变量$X$的分布函数为
$$
F(x) = \\begin{cases} 0 & x < 0 \\\\ A \\sin x & 0 ≤ x ≤ \\frac{π}{2} \\\\ 1 & x > \\frac{π}{2} \\end{cases}
$$
则$A =$，$P \\{∣X∣ < \\frac{π}{6}\\} =$．', '[]', '
1,$\\frac{1}{2}$
', '
由分布函数的性质，在$x = \\frac{π}{2}$处，$F (\\frac{π}{2}) = A \\sin \\frac{π}{2} = A$，且$F (\\frac{π}{2}) = 1$，因此$A = 1$。
对于$P \\{∣X∣ < \\frac{π}{6}\\}$，由于$X$是非负随机变量（当$x < 0$时$F(x) = 0$），有


$$
P \\{∣X∣ < \\frac{π}{6}\\} = P \\{0 ≤ X < \\frac{π}{6}\\}
$$

由于$X$是连续型随机变量，


$$
P \\{0 ≤ X < \\frac{π}{6}\\} = F (\\frac{π}{6}) - F(0)
$$

计算得


$$
F (\\frac{π}{6}) = 1 ⋅ \\sin \\frac{π}{6} = \\frac{1}{2},  F(0) = 1 ⋅ \\sin 0 = 0
$$

因此


$$
P \\{∣X∣ < \\frac{π}{6}\\} = \\frac{1}{2} - 0 = \\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:02', 9, 'Mogullzr', '2026-01-29 14:07:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '281');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '281');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (282, '1989年考研数学卷4第5题', '简单', '考研数学1989年卷4真题', '设随机变量$X$的数学期望$E(X) = μ$，方差$D(X) = σ^{2}$,
则由切比雪夫(Chebyshev)不等式，有$P\\{∣X - μ∣ ≥ 3σ\\} ≤$______．', '[]', '$\\frac{1}{9}$
', '根据切比雪夫不等式，对于任意实数$k > 0$，有


$$
P\\{∣X - μ∣ ≥ kσ\\} ≤ \\frac{1}{k^{2}}
$$

本题中$k = 3$，因此


$$
P\\{∣X - μ∣ ≥ 3σ\\} ≤ \\frac{1}{3^{2}} = \\frac{1}{9}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:02', 9, 'Mogullzr', '2026-01-29 14:07:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '282');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '282');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '282');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (283, '1989年考研数学卷4第6题', '简单', '考研数学1989年卷4真题', '设$f(x) = 2^{x} + 3^{x} - 2$，则当$x → 0$时', '[''$f(x)$与$x$是等价无穷小量．'', ''$f(x)$与$x$是同阶但非等价无穷小量．'', ''$f(x)$是比$x$较高阶的无穷小量．'', ''$f(x)$是比$x$较低阶的无穷小量．'']', "['B']", '
计算极限

$$
L = \\lim_{x→0} \\frac{f(x)}{x} = \\lim_{x→0} \\frac{2^{x} + 3^{x} - 2}{x}.
$$
当$x → 0$时，分子与分母均趋于 0，因此可应用洛必达法则。对分子和分母分别求导，分子导数为$2^{x} \\ln 2 + 3^{x} \\ln 3$，分母导数为 1。于是

$$
L = \\lim_{x→0}(2^{x} \\ln 2 + 3^{x} \\ln 3) = \\ln 2 + \\ln 3 = \\ln 6.
$$
由于$\\ln 6 \\neq 0$且$\\ln 6 \\neq 1$，因此$f(x)$与$x$是同阶但非等价无穷小量。', 9, 'Mogullzr', '2026-01-29 14:07:02', 9, 'Mogullzr', '2026-01-29 14:07:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '283');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '283');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '283');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (284, '1989年考研数学卷4第7题', '简单', '考研数学1989年卷4真题', '在下列等式中，正确的结果是', '[''$∫ f^{′}(x)dx = f(x)$．'', ''$∫ df(x) = f(x)$．'', ''$\\\\frac{d}{dx} ∫ f(x)dx = f(x)$．'', ''$d ∫ f(x)dx = f(x)$．'']', "['C']", '
根据微积分基本定理，不定积分$∫ f(x) dx$表示$f(x)$的一个原函数，即

$$
∫ f(x) dx = F(x) + C,
$$
其中$F^{′}(x) = f(x)$。
因此，对不定积分求导可得

$$
\\frac{d}{dx} ∫ f(x) dx = \\frac{d}{dx} \\lbrack F(x) + C \\rbrack  = F^{′}(x) = f(x),
$$
故选项 C 正确。选项 A 错误，因为

$$
∫ f^{′}(x) dx = f(x) + C,
$$
结果中应包含积分常数。选项 B 错误，因为

$$
∫ df(x) = ∫ f^{′}(x) dx = f(x) + C,
$$
同样缺少常数项。选项 D 错误，因为

$$
d ∫ f(x) dx = f(x) dx,
$$
而不是$f(x)$。', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '284');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '284');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '284');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (285, '1989年考研数学卷4第8题', '', '考研数学1989年卷4真题', '/problems/other/220', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (286, '1989年考研数学卷4第9题', '简单', '考研数学1989年卷4真题', '设$A$和$B$均为$n × n$矩阵，则必有', '[''$∣A + B∣ = ∣A∣ + ∣B∣$．'', ''$AB = BA$．'', ''$∣AB∣ = ∣BA∣$．'', ''$(A + B)−1 = A^{−1} + B^{−1}$．'']', "['C']", '
对于选项 A，行列式不具有可加性。例如，当$A$和$B$均为$n$阶单位矩阵时，

$$
∣A + B∣ = ∣2I∣ = 2^{n},
$$
而

$$
∣A∣ + ∣B∣ = 2,
$$
当$n > 1$时两者不相等。对于选项 B，矩阵乘法不满足交换律。例如取

$$
A = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right \\rbrack  ,  B = \\left \\lbrack  \\begin{array}{cc}
0 & 1 \\\\
0 & 0 \\\\
\\end{array} \\right \\rbrack  ,
$$
则

$$
AB = \\left \\lbrack  \\begin{array}{cc}
0 & 1 \\\\
0 & 0 \\\\
\\end{array} \\right \\rbrack  ,  BA = \\left \\lbrack  \\begin{array}{cc}
0 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right \\rbrack  ,
$$
两者不相等。对于选项 D，矩阵的逆不满足分配律。例如当$A$和$B$均为单位矩阵时，

$$
(A + B)−1 = (2I)−1 = \\frac{1}{2}I,
$$
而

$$
A^{−1} + B^{−1} = I + I = 2I,
$$
两者不相等。对于选项 C，由行列式的性质可知

$$
∣AB∣ = ∣A∣ ⋅ ∣B∣,  ∣BA∣ = ∣B∣ ⋅ ∣A∣,
$$
由于标量乘法可交换，因此

$$
∣AB∣ = ∣BA∣
$$
恒成立。', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '286');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '286');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '286');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (287, '1989年考研数学卷4第10题', '简单', '考研数学1989年卷4真题', '以$A$表示事件“甲种产品畅销，乙种产品滞销”，则其对立事件$\\overline{A}$为', '[''“甲种产品滞销，乙种产品畅销”．'', ''“甲、乙两种产品均畅销”．'', ''“甲种产品滞销”．'', ''“甲种产品滞销或乙种产品畅销”．'']', "['D']", '
事件$A$为“甲种产品畅销且乙种产品滞销”。
其对立事件$\\overline{A}$表示“非$A$”，即“并非（甲畅销且乙滞销）”。
根据德摩根定律：$¬(P ∧ Q) = ¬P ∨ ¬Q$，
其中$P$表示“甲畅销”，$Q$表示“乙滞销”，
则$¬P$为“甲滞销”，$¬Q$为“乙畅销”。
因此$\\overline{A}$等价于“甲滞销或乙畅销”。选项 D 表述为“甲种产品滞销或乙种产品畅销”，与上述推导完全一致。
其余选项未能完整覆盖$\\overline{A}$的所有情况：A 仅表示“甲滞销且乙畅销”；B 仅表示“甲、乙均畅销”；C 仅表示“甲滞销”。
这些选项均不能完整表达对立事件$\\overline{A}$的含义。', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '287');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '287');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (288, '1989年考研数学卷4第11题', '简单', '考研数学1989年卷4真题', '求极限$\\lim_{x→∞} (\\sin \\frac{1}{x} + \\cos \\frac{1}{x})^{x}$．', '[]', '
$e$
', '
令$y = \\frac{1}{x}$，则当$x → ∞$时，$y → 0^{+}$，原极限化为：


$$
\\lim_{y→0^{+}} (\\sin y + \\cos y)^{1/y}
$$

设该极限为$L$，取自然对数：


$$
\\ln L = \\lim_{y→0^{+}} \\frac{\\ln (\\sin y + \\cos y)}{y}
$$

当$y → 0^{+}$时，$\\sin y + \\cos y → 1$，故$\\ln (\\sin y + \\cos y) → 0$，该极限为$\\frac{0}{0}$型，应用洛必达法则。
令$f(y) = \\ln (\\sin y + \\cos y)$，则


$$
f^{′}(y) = \\frac{\\cos y - \\sin y}{\\sin y + \\cos y}
$$

在$y = 0$处，


$$
f^{′}(0) = \\frac{\\cos 0 - \\sin 0}{\\sin 0 + \\cos 0} = \\frac{1 - 0}{0 + 1} = 1
$$

因此，


$$
\\ln L = \\lim_{y→0^{+}} \\frac{\\ln (\\sin y + \\cos y)}{y} = f^{′}(0) = 1
$$

所以$L = e^{1} = e$，即原极限为$e$。
', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '288');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '288');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '288');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (289, '1989年考研数学卷4第12题', '简单', '考研数学1989年卷4真题', '已知$z = f(u, v), u = x + y, v = xy$，且$f(u, v)$的二阶偏导数都连续．
求$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = f_{uu} + uf_{uv} + f_{v} + vf_{vv}
$$

', '已知$z = f(u, v)$，其中$u = x + y$，$v = xy$，且$f(u, v)$的二阶偏导数连续。首先求一阶偏导数$\\frac{∂z}{∂x}$和$\\frac{∂z}{∂y}$。
由链式法则：


$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u}\\frac{∂u}{∂x} + \\frac{∂f}{∂v}\\frac{∂v}{∂x} = f_{u} ⋅ 1 + f_{v} ⋅ y = f_{u} + yf_{v}
$$



$$
\\frac{∂z}{∂y} = \\frac{∂f}{∂u}\\frac{∂u}{∂y} + \\frac{∂f}{∂v}\\frac{∂v}{∂y} = f_{u} ⋅ 1 + f_{v} ⋅ x = f_{u} + xf_{v}
$$

接下来求混合偏导数$\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂z}{∂x})$：


$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y}(f_{u} + yf_{v}) = \\frac{∂f_{u}}{∂y} + \\frac{∂}{∂y}(yf_{v})
$$

计算$\\frac{∂f_{u}}{∂y}$，再次应用链式法则：


$$
\\frac{∂f_{u}}{∂y} = \\frac{∂f_{u}}{∂u}\\frac{∂u}{∂y} + \\frac{∂f_{u}}{∂v}\\frac{∂v}{∂y} = f_{uu} ⋅ 1 + f_{uv} ⋅ x = f_{uu} + xf_{uv}
$$

计算$\\frac{∂}{∂y}(yf_{v})$：


$$
\\begin{array}{cc}
\\frac{∂}{∂y}(yf_{v}) & = \\frac{∂y}{∂y}f_{v} + y\\frac{∂f_{v}}{∂y} \\\\
 & = f_{v} + y (\\frac{∂f_{v}}{∂u}\\frac{∂u}{∂y} + \\frac{∂f_{v}}{∂v}\\frac{∂v}{∂y}) \\\\
 & = f_{v} + y(f_{vu} ⋅ 1 + f_{vv} ⋅ x) \\\\
\\end{array}
$$

由于$f$的二阶偏导数连续，有$f_{uv} = f_{vu}$，因此：


$$
\\frac{∂^{2}z}{∂x∂y} = (f_{uu} + xf_{uv}) + (f_{v} + yf_{uv} + xyf_{vv}) = f_{uu} + (x + y)f_{uv} + f_{v} + xyf_{vv}
$$

代入$u = x + y$和$v = xy$，得：


$$
\\frac{∂^{2}z}{∂x∂y} = f_{uu} + uf_{uv} + f_{v} + vf_{vv}
$$

这就是所求的结果。
', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '289');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '289');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '289');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (290, '1989年考研数学卷4第13题', '简单', '考研数学1989年卷4真题', '求微分方程$y^{′′} + 5y^{′} + 6y = 2e^{−x}$的通解．', '[]', '$y = C_{1}e^{−2x} + C_{2}e^{−3x} + e^{−x}$，其中$C_{1}$和$C_{2}$为任意常数。
', '该微分方程为二阶线性非齐次方程，其通解由齐次解和非齐次特解两部分组成。
首先，求解齐次方程$y^{′′} + 5y^{′} + 6y = 0$。对应的特征方程为$r^{2} + 5r + 6 = 0$，解得$r_{1} = −2$，$r_{2} = −3$，因此齐次解为$y_{h} = C_{1}e^{−2x} + C_{2}e^{−3x}$。
其次，求非齐次特解。非齐次项为$2e^{−x}$，由于$e^{−x}$不是齐次解的一部分，可设特解形式为$y_{p} = Ae^{−x}$。代入原方程计算：


$$
y_{p}^{′} = −Ae^{−x},  y_{p}^{′′} = Ae^{−x},
$$

代入得


$$
Ae^{−x} - 5Ae^{−x} + 6Ae^{−x} = 2Ae^{−x} = 2e^{−x},
$$

解得$A = 1$，因此特解为$y_{p} = e^{−x}$。
最终，通解为齐次解与特解之和，即


$$
y = C_{1}e^{−2x} + C_{2}e^{−3x} + e^{−x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:03', 9, 'Mogullzr', '2026-01-29 14:07:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '290');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '290');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '290');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (291, '1989年考研数学卷4第14题', '简单', '考研数学1989年卷4真题', '设某厂家打算生产一批商品投放市场．已知该商品的需求函数为
$$
P = P(x) = 10e^{−\\frac{x}{2}},
$$
且最大需求量为$6$，其中$x$表示需求量，$P$表示价格．(1) 求该商品的收益函数和边际收益函数．(2) 求使收益最大时的产量、最大收益和相应的价格．(3) 画出收益函数的图形．', '[]', '
(1) 收益函数为$R(x) = 10xe^{−\\frac{x}{2}}$，边际收益函数为$MR(x) = e^{−\\frac{x}{2}}(10 - 5x)$。
(2) 使收益最大时的产量为$x = 2$，最大收益为$\\frac{20}{e}$，相应的价格为$\\frac{10}{e}$。
(3) 收益函数的图形在$x ∈  \\lbrack 0, 6 \\rbrack$上从$(0, 0)$开始上升，在$x = 2$处达到最大值$\\frac{20}{e}$，然后下降至$(6, \\frac{60}{e^{3}})$。
', '
(I) 收益函数$R(x)$和边际收益函数$MR$如下：

$$
R(x) = xP = 10xe^{−\\frac{x}{2}},  MR = \\frac{dR}{dx} = 5(2 - x)e^{−\\frac{x}{2}},  0 ≤ x ≤ 6.
$$

(II) 由$\\frac{dR}{dx} = 5(2 - x)e^{−\\frac{x}{2}} = 0$，得$x = 2$。又

$$
\\frac{d^{2}R}{dx^{2}}​_{x=2} = \\frac{5}{2}(x - 4)e^{−\\frac{x}{2}}​_{x=2} = −\\frac{5}{e} < 0.
$$

因此$R(x)$在$x = 2$取极大值。又因为极值点唯一，故最大值就是$R(2) = \\frac{20}{e}$。于是，当生产量为 2 时，收益取最大值，收益最大值为$\\frac{20}{e}$。而相应的价格为$\\frac{10}{e}$。
(III) 由以上分析可列下表，并画出收益函数的图形。
$x$[0, 2)2(2, 4)4(4, 6)$R^{′}$+0---$R^{′′}$---0+$R$↑, 凸极大值$\\frac{20}{e}$↓, 凸拐点$(4, \\frac{40}{e^{2}})$↓, 凹

', 9, 'Mogullzr', '2026-01-29 14:07:04', 9, 'Mogullzr', '2026-01-29 14:07:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '291');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '291');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '291');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (292, '1989年考研数学卷4第15题', '简单', '考研数学1989年卷4真题', '已知函数$f(x) = \\begin{cases} x & 0 ≤ x ≤ 1 \\\\ 2 - x & 1 ≤ x ≤ 2. \\end{cases}$试计算下列各题：(1)$S_{0} = \\int_{0}^{2} f(x)e^{−x}dx$；(2)$S_{1} = \\int_{2}^{4} f(x - 2)e^{−x}dx$；(3)$S_{n} = \\int_{2n}^{2n+2} f(x - 2n)e^{−x}dx(n = 2, 3, ⋯ )$；(4)$S = \\sum_{n=0}^{∞} S_{n}$．', '[]', '
(1)$S_{0} = 1 - \\frac{2}{e} + \\frac{1}{e^{2}}$
(2)$S_{1} = \\frac{1}{e^{2}} - \\frac{2}{e^{3}} + \\frac{1}{e^{4}}$
(3)$S_{n} = S_{0}e^{−2n} = (1 - \\frac{2}{e} + \\frac{1}{e^{2}}) e^{−2n}$
(4)$S = \\frac{e-1}{e+1}$
', '(Ⅰ)$f(x)$为分段函数，由定积分的性质，

$$
S_{0} = \\int_{0}^{2} f(x)e^{−x}dx = \\int_{0}^{1} f(x)e^{−x}dx + \\int_{1}^{2} f(x)e^{−x}dx
$$


$$
= \\int_{0}^{1} xe^{−x}dx + \\int_{1}^{2}(2 - x)e^{−x}dx = (1 - 2e^{−1}) + e^{−2} = (1 - e^{−1})2.
$$

(Ⅱ) 用定积分换元法，令$x - 2 = t$，则有

$$
S_{1} = \\int_{2}^{4} f(x - 2)e^{−x}dx = \\int_{0}^{2} f(t)e^{−(t+2)}dt = e^{−2} \\int_{0}^{2} f(t)e^{−t}dt = S_{0}e^{−2}.
$$

(Ⅲ) 用定积分换元法，令$x - 2n = t$，则有

$$
S_{n} = \\int_{2n}^{2n+2} f(x - 2n)e^{−x}dx = \\int_{0}^{2} f(t)e^{−(t+2n)}dt = \\int_{0}^{2} f(t)e^{−t}dt = S_{0}e^{−2n}.
$$

(Ⅳ) 利用以上结果，有

$$
S = \\sum_{n=0}^{∞} S_{n} = \\sum_{n=0}^{∞} S_{0}e^{−2n} = S_{0} \\sum_{n=0}^{∞} (e^{−2})^{n} = \\frac{S_{0}}{1 - e^{−2}} = \\frac{e^{2}S_{0}}{e^{2} - 1} = \\frac{e - 1}{e + 1}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:04', 9, 'Mogullzr', '2026-01-29 14:07:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '292');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '292');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '292');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (293, '1989年考研数学卷4第16题', '简单', '考研数学1989年卷4真题', '假设函数$f(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$f^{′}(x) ≤ 0$，记
$$
F(x) = \\frac{1}{x - a} \\int_{a}^{x} f(t)dt,
$$
证明在$(a, b)$内，$F^{′}(x) ≤ 0$．', '[]', '见解析
', '
对$F(x) = \\frac{1}{x-a} \\int_{a}^{x} f(t)dt$求导得


$$
F^{′}(x) = − \\int_{a}^{x} \\frac{f(t)dt}{(x - a)2} + \\frac{f(x)}{x - a} = \\frac{(x - a)f(x) - \\int_{a}^{x} f(t)dt}{(x - a)2}.
$$

方法一：由积分中值定理，$∃ξ ∈ (a, x)$使得$\\int_{a}^{x} f(t)dt = f(ξ)(x - a)$，所以


$$
F^{′}(x) = \\frac{(x - a)f(x) - f(ξ)(x - a)}{(x - a)2} = \\frac{f(x) - f(ξ)}{x - a}.
$$

又因为$f^{′}(x) ≤ 0, a < ξ < x$，故有$f(x) - f(ξ) ≤ 0$，所以$F^{′}(x) ≤ 0$。
方法二：令$g(x) = (x - a)f(x) - \\int_{a}^{x} f(t)dt$，则


$$
g^{′}(x) = f(x) + (x - a)f^{′}(x) - f(x) = (x - a)f^{′}(x).
$$

因为$x > a, f^{′}(x) ≤ 0$，所以$g^{′}(x) ≤ 0$，即$g(x)$在$(a, b)$上单调递减，所以$g(x) ≤ g(a) = 0$，从而$F^{′}(x) = \\frac{g(x)}{(x-a)2} ≤ 0$。
', 9, 'Mogullzr', '2026-01-29 14:07:04', 9, 'Mogullzr', '2026-01-29 14:07:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '293');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '293');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '293');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (294, '1989年考研数学卷4第17题', '简单', '考研数学1989年卷4真题', '已知$X = AX + B$，其中$A = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
−1 & 1 & 1 \\\\
−1 & 0 & −1 \\\\
\\end{array} \\right)$,$B = \\left( \\begin{array}{cc}
1 & −1 \\\\
2 & 0 \\\\
5 & −3 \\\\
\\end{array} \\right)$，求矩阵$X$．', '[]', '

$$
X = \\left( \\begin{array}{cc}
3 & −1 \\\\
2 & 0 \\\\
1 & −1 \\\\
\\end{array} \\right)
$$

', '
方法一：由$X = AX + B$，得$(E - A)X = B$。因为

$$
(E - A)−1 = \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
1 & 0 & −1 \\\\
1 & 0 & 2 \\\\
\\end{array} \\right) = \\frac{1}{3} \\left( \\begin{array}{ccc}
0 & 2 & 1 \\\\
−3 & 2 & 1 \\\\
0 & −1 & 1 \\\\
\\end{array} \\right) ,
$$

所以

$$
X = (E - A)−1B = \\frac{1}{3} \\left( \\begin{array}{ccc}
0 & 2 & 1 \\\\
−3 & 2 & 1 \\\\
0 & −1 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
1 & −1 \\\\
2 & 0 \\\\
5 & −3 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
3 & −1 \\\\
2 & 0 \\\\
1 & −1 \\\\
\\end{array} \\right) .
$$

方法二：由$(E - A)X = B$，作初等行变换$(E - A : B) → (E : X)$，

$$
(E - A : B) = \\left( \\begin{array}{cccccc}
1 & −1 & 0 & : & 1 & −1 \\\\
1 & 0 & −1 & : & 2 & 0 \\\\
1 & 0 & 2 & : & 5 & −3 \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{cccccc}
1 & −1 & 0 & : & 1 & −1 \\\\
0 & 1 & −1 & : & 1 & 1 \\\\
0 & 0 & 3 & : & 3 & −3 \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{cccccc}
1 & 0 & 0 & : & 3 & −1 \\\\
0 & 1 & 0 & : & 2 & 0 \\\\
0 & 0 & 1 & : & 1 & −1 \\\\
\\end{array} \\right)
$$

所以$X = \\left( \\begin{array}{cc}
3 & −1 \\\\
2 & 0 \\\\
1 & −1 \\\\
\\end{array} \\right)$.
', 9, 'Mogullzr', '2026-01-29 14:07:04', 9, 'Mogullzr', '2026-01-29 14:07:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '294');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '294');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '294');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (295, '1989年考研数学卷4第18题', '简单', '考研数学1989年卷4真题', '设$α_{1} = (1, 1, 1)$,$α_{2} = (1, 2, 3)$,$α_{3} = (1, 3, t)$．(1) 问当$t$为何值时，向量组$α_{1}, α_{2}, α_{3}$线性无关？(2) 问当$t$为何值时，向量组$α_{1}, α_{2}, α_{3}$线性相关？(3) 当向量组$α_{1}, α_{2}, α_{3}$线性相关时，
将$α_{3}$表示为$α_{1}$和$α_{2}$的线性组合．', '[]', '
(1) 当$t \\neq 5$时，向量组$α_{1}, α_{2}, α_{3}$线性无关。
(2) 当$t = 5$时，向量组$α_{1}, α_{2}, α_{3}$线性相关。
(3) 当向量组线性相关时，即$t = 5$，有$α_{3} = −α_{1} + 2α_{2}$。
', '
考虑矩阵$A =  \\lbrack α_{1}, α_{2}, α_{3} \\rbrack  = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 2 & 3 \\\\
1 & 3 & t \\\\
\\end{array} \\right)$。计算行列式：


$$
det(A) = 1 ⋅ (2t - 9) - 1 ⋅ (t - 3) + 1 ⋅ (3 - 2) = 2t - 9 - t + 3 + 1 = t - 5.
$$

当$det(A) \\neq 0$即$t \\neq 5$时，向量组线性无关；当$det(A) = 0$即$t = 5$时，向量组线性相关。
当$t = 5$时，设$α_{3} = aα_{1} + bα_{2}$，即：


$$
(1, 3, 5) = a(1, 1, 1) + b(1, 2, 3),
$$

解得方程组：


$$
\\begin{cases} a + b = 1 \\\\ a + 2b = 3 \\\\ a + 3b = 5 \\end{cases}
$$

由前两个方程得$b = 2$,$a = −1$，代入第三个方程验证成立。因此$α_{3} = −α_{1} + 2α_{2}$。
', 9, 'Mogullzr', '2026-01-29 14:07:05', 9, 'Mogullzr', '2026-01-29 14:07:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '295');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '295');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '295');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (296, '1989年考研数学卷4第19题', '简单', '考研数学1989年卷4真题', '设$A = \\left( \\begin{array}{ccc}
−1 & 2 & 2 \\\\
2 & −1 & −2 \\\\
2 & −2 & −1 \\\\
\\end{array} \\right) .$(1) 试求矩阵$A$的特征值；(2) 利用(I)小题的结果，求矩阵$E + A^{−1}$的特征值，其中$E$是$3$阶单位矩阵．', '[]', '
(1) 矩阵$A$的特征值为$1$（二重）和$−5$。
(2) 矩阵$E + A^{−1}$的特征值为$2$（二重）和$\\frac{4}{5}$。
', '
(Ⅰ) 对矩阵$A$的特征行列式作若干次初等变换，得到

$$
∣λE - A∣ = \\begin{vmatrix}
λ + 1 & −2 & −2\\\\
−2 & λ + 1 & 2\\\\
−2 & 2 & λ + 1
\\end{vmatrix} = \\begin{vmatrix}
λ - 1 & −2 & −2\\\\
−λ - 1 & λ + 1 & 2\\\\
0 & 2 & λ + 1
\\end{vmatrix}
$$



$$
= \\begin{vmatrix}
λ - 1 & −2 & −2\\\\
0 & λ + 3 & 4\\\\
0 & 2 & λ + 1
\\end{vmatrix} = (λ - 1) \\begin{vmatrix}
λ + 3 & 4\\\\
2 & λ + 1
\\end{vmatrix} = (λ - 1)2(λ + 5),
$$

故矩阵$A$的特征值为$1, 1, −5$。
(Ⅱ) 设$λ$为$A$的特征值，则存在非零向量$α$使$Aα = λα$，从而

$$
(E + A^{−1})α = (1 + \\frac{1}{λ})α
$$

即$1 + \\frac{1}{λ}$是$E + A^{−1}$的特征值。由 (1) 已知$A$的特征值是$1, 1, −5$，因此$E + A^{−1}$的特征值是$2, 2, \\frac{4}{5}$。
', 9, 'Mogullzr', '2026-01-29 14:07:05', 9, 'Mogullzr', '2026-01-29 14:07:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '296');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '296');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '296');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (297, '1989年考研数学卷4第20题', '简单', '考研数学1989年卷4真题', '已知随机变量$X$和$Y$的联合密度为
$$
f(x, y) = \\begin{cases} e^{−(x+y)} & 0 < x < +∞, 0 < y < +∞ \\\\ 0 & 其他. \\end{cases}
$$
试求：(1)$P\\{X < Y\\}$；(2)$E(XY)$．', '[]', '
(1)$P\\{X < Y\\} = \\frac{1}{2}$
(2)$E(XY) = 1$
', '
(Ⅰ) 所求概率等于对应区域上的二重积分

$$
\\begin{array}{cc}
P\\{X < Y\\} & = \\iint_{x<y} f(x, y) dx dy = \\int_{0}^{+∞} e^{−y} dy \\int_{0}^{y} e^{−x} dx \\\\
 & = \\int_{0}^{+∞} e^{−y} (1 - e^{−y}) dy \\\\
\\end{array}
$$

(Ⅱ) 由二维连续型随机变量的数学期望定义得

$$
\\begin{array}{cc}
E(XY) & = \\int_{−∞}^{+∞} \\int_{−∞}^{+∞} xyf(x, y) dx dy \\\\
 & = \\int_{0}^{+∞} \\int_{0}^{+∞} xye^{−(x+y)} dx dy \\\\
\\end{array}
$$

由分部积分法有

$$
\\begin{array}{cc}
\\int_{0}^{+∞} ye^{−y}dy & = − \\int_{0}^{+∞} yd(e^{−y}) \\\\
 & =  \\lbrack −ye^{−y} \\rbrack _{0}^{+∞} + \\int_{0}^{+∞} e^{−y}dy \\\\
\\end{array}
$$

由洛必达法则，对$\\frac{∞}{∞}$型极限，有

$$
\\lim_{y→+∞} ye^{−y} = \\lim_{y→+∞} \\frac{1}{e^{y}} = 0.
$$

所以有$E(XY) = 1$.
', 9, 'Mogullzr', '2026-01-29 14:07:05', 9, 'Mogullzr', '2026-01-29 14:07:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '297');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '297');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '297');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (298, '1989年考研数学卷4第21题', '简单', '考研数学1989年卷4真题', '设随机变量$X$在$\\lbrack 2, 5 \\rbrack$上服从均匀分布，现在对$X$进行三次独立观测，
试求至少有两次观测值大于$3$的概率．', '[]', '$\\frac{20}{27}$
', '随机变量$X$在区间$\\lbrack 2, 5 \\rbrack$上服从均匀分布，其概率密度函数为$f(x) = \\frac{1}{3}$。单次观测值大于$3$的概率为


$$
P(X > 3) = \\frac{5 - 3}{5 - 2} = \\frac{2}{3}.
$$

进行三次独立观测，将每次观测视为一次伯努利试验，其中“成功”定义为观测值大于$3$，成功概率为$p = \\frac{2}{3}$。
记$Y$为成功次数，则$Y$服从二项分布$Y ∼ Binomial(n = 3, p = \\frac{2}{3})$。
所求概率为


$$
P(Y ≥ 2) = P(Y = 2) + P(Y = 3).
$$

计算如下：


$$
P(Y = 2) = (\\frac{3}{2}) (\\frac{2}{3})^{2} (\\frac{1}{3})^{1} = 3 × \\frac{4}{9} × \\frac{1}{3} = \\frac{12}{27} = \\frac{4}{9},
$$



$$
P(Y = 3) = (\\frac{3}{3}) (\\frac{2}{3})^{3} (\\frac{1}{3})^{0} = 1 × \\frac{8}{27} × 1 = \\frac{8}{27}.
$$

因此，


$$
P(Y ≥ 2) = \\frac{4}{9} + \\frac{8}{27} = \\frac{12}{27} + \\frac{8}{27} = \\frac{20}{27}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:05', 9, 'Mogullzr', '2026-01-29 14:07:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '298');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '298');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (299, '1989年考研数学卷5第1题', '', '考研数学1989年卷5真题', '/problems/other/278', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:07', 9, 'Mogullzr', '2026-01-29 14:07:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (300, '1989年考研数学卷5第2题', '简单', '考研数学1989年卷5真题', '某商品的需求量$Q$与价格$p$的函数关系为$Q = ap^{b}$，
其中$a$和$b$为常数，且$a \\neq 0$，则需求量对价格$p$的弹性是 ______.', '[]', '$b$
', '需求的价格弹性定义为$E_{p} = \\frac{dQ}{dp} ⋅ \\frac{p}{Q}$。给定函数$Q = ap^{b}$，其中$a$和$b$为常数，且$a \\neq 0$，首先求导数$\\frac{dQ}{dp} = abp^{b-1}$。代入弹性公式，得$E_{p} = (abp^{b-1}) ⋅ \\frac{p}{ap^{b}} = b ⋅ \\frac{p^{b}}{p^{b}} = b$。因此，需求量对价格$p$的弹性为常数$b$。
', 9, 'Mogullzr', '2026-01-29 14:07:07', 9, 'Mogullzr', '2026-01-29 14:07:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '300');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '300');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '300');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (301, '1989年考研数学卷5第3题', '简单', '考研数学1989年卷5真题', '行列式$\\begin{vmatrix}
1 & −1 & 1 & x - 1\\\\
1 & −1 & x + 1 & −1\\\\
1 & x - 1 & 1 & −1\\\\
x + 1 & −1 & 1 & −1
\\end{vmatrix}$= ______.', '[]', '$x^{4}$
', '
通过行变换简化行列式。首先，从第二行、第三行和第四行分别减去第一行，得到矩阵：


$$
\\left( \\begin{array}{cccc}
1 & −1 & 1 & x - 1 \\\\
0 & 0 & x & −x \\\\
0 & x & 0 & −x \\\\
x & 0 & 0 & −x \\\\
\\end{array} \\right)
$$

然后，从第四行减去$x$倍的第一行，得到：


$$
\\left( \\begin{array}{cccc}
1 & −1 & 1 & x - 1 \\\\
0 & 0 & x & −x \\\\
0 & x & 0 & −x \\\\
0 & x & −x & −x^{2} \\\\
\\end{array} \\right)
$$

沿第一列展开，行列式等于其余子式的行列式：


$$
\\begin{vmatrix}
0 & x & −x\\\\
x & 0 & −x\\\\
x & −x & −x^{2}
\\end{vmatrix}
$$

计算该三阶行列式，按第一行展开：


$$
0 ⋅ \\begin{vmatrix}
0 & −x\\\\
−x & −x^{2}
\\end{vmatrix} - x ⋅ \\begin{vmatrix}
x & −x\\\\
x & −x^{2}
\\end{vmatrix} + (−x) ⋅ \\begin{vmatrix}
x & 0\\\\
x & −x
\\end{vmatrix}
$$

其中，


$$
\\begin{vmatrix}
x & −x\\\\
x & −x^{2}
\\end{vmatrix} = x ⋅ (−x^{2}) - (−x) ⋅ x = −x^{3} + x^{2}
$$



$$
\\begin{vmatrix}
x & 0\\\\
x & −x
\\end{vmatrix} = x ⋅ (−x) - 0 ⋅ x = −x^{2}
$$

代入得：


$$
−x ⋅ (−x^{3} + x^{2}) + (−x) ⋅ (−x^{2}) = x ⋅ (x^{3} - x^{2}) + x ⋅ x^{2} = x^{4} - x^{3} + x^{3} = x^{4}
$$

因此，原行列式为$x^{4}$。
', 9, 'Mogullzr', '2026-01-29 14:07:07', 9, 'Mogullzr', '2026-01-29 14:07:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '301');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '301');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (302, '1989年考研数学卷5第4题', '简单', '考研数学1989年卷5真题', '设随机变量$X_{1}, X_{2}, X_{3}$相互独立，其中$X_{1}$在$\\lbrack 0, 6 \\rbrack$上服从均匀分布，$X_{2}$服从正态分布$N(0, 2^{2})$，$X_{3}$服从参数为$λ = 3$的泊松分布，
记$Y = X_{1} - 2X_{2} + 3X_{3}$，则$DY =$______.', '[]', '46
', '由于随机变量$X_{1}, X_{2}, X_{3}$相互独立，且$Y = X_{1} - 2X_{2} + 3X_{3}$，则方差$DY = Var(Y) = 1^{2} ⋅ Var(X_{1}) + (−2)2 ⋅ Var(X_{2}) + 3^{2} ⋅ Var(X_{3})$。
计算各变量的方差：
$X_{1}$在$\\lbrack 0, 6 \\rbrack$上服从均匀分布，方差$Var(X_{1}) = \\frac{(6-0)2}{12} = \\frac{36}{12} = 3$。$X_{2}$服从正态分布$N(0, 2^{2})$，方差$Var(X_{2}) = 2^{2} = 4$。$X_{3}$服从参数$λ = 3$的泊松分布，方差$Var(X_{3}) = 3$。
代入公式：

$$
DY = 1^{2} ⋅ 3 + (−2)2 ⋅ 4 + 3^{2} ⋅ 3 = 1 ⋅ 3 + 4 ⋅ 4 + 9 ⋅ 3 = 3 + 16 + 27 = 46.
$$

因此，$DY = 46$。
', 9, 'Mogullzr', '2026-01-29 14:07:07', 9, 'Mogullzr', '2026-01-29 14:07:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '302');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '302');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '302');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (303, '1989年考研数学卷5第5题', '', '考研数学1989年卷5真题', '/problems/other/281', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (304, '1989年考研数学卷5第6题', '', '考研数学1989年卷5真题', '/problems/other/283', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (305, '1989年考研数学卷5第7题', '', '考研数学1989年卷5真题', '/problems/other/284', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (306, '1989年考研数学卷5第8题', '', '考研数学1989年卷5真题', '/problems/other/220', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (307, '1989年考研数学卷5第9题', '简单', '考研数学1989年卷5真题', '设$n$元齐次线性方程组$AX = 0$的系数矩阵$A$的秩为$r$，则$AX = 0$有非零解的充分必要条件是', '[''$r = n$．'', ''$r < n$．'', ''$r ≥ n$．'', ''$r > n$．'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '307');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '307');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (308, '1989年考研数学卷5第10题', '', '考研数学1989年卷5真题', '/problems/other/287', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (309, '1989年考研数学卷5第11题', '简单', '考研数学1989年卷5真题', '求极限$\\lim_{x→+∞} (x + e^{x})x1​$．', '[]', '
$e$
', '
考虑极限$\\lim_{x→+∞}(x + e^{x})x1​$。
令$L = \\lim_{x→+∞}(x + e^{x})x1​$，则$\\ln L = \\lim_{x→+∞} \\frac{\\ln(x+e^{x})}{x}$。
由于$e^{x}$占主导，将$x + e^{x}$写为$e^{x} (1 + \\frac{x}{e^{x}})$，
于是$\\ln(x + e^{x}) = \\ln e^{x} + \\ln (1 + \\frac{x}{e^{x}}) = x + \\ln (1 + \\frac{x}{e^{x}})$。
因此，


$$
\\ln L = \\lim_{x→+∞} \\frac{x + \\ln (1 + \\frac{x}{e^{x}})}{x} = \\lim_{x→+∞} (1 + \\frac{\\ln (1 + \\frac{x}{e^{x}})}{x}) .
$$

当$x → +∞$时，$\\frac{x}{e^{x}} → 0$，故$\\ln (1 + \\frac{x}{e^{x}}) ∼ \\frac{x}{e^{x}}$，
所以


$$
\\frac{\\ln (1 + \\frac{x}{e^{x}})}{x} ∼ \\frac{\\frac{x}{e^{x}}}{x} = \\frac{1}{e^{x}} → 0.
$$

因此，$\\ln L = 1$，即$L = e$。
故极限为$e$。
', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '309');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '309');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '309');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (310, '1989年考研数学卷5第12题', '简单', '考研数学1989年卷5真题', '已知$z = a^{\\sqrt{x^{2}-y^{2}}}$，其中$a > 0$,$a \\neq 1$，求$dz$．', '[]', '

$$
dz = \\frac{a^{\\sqrt{x^{2}-y^{2}}} \\ln a}{\\sqrt{x^{2} - y^{2}}}(x dx - y dy)
$$

', '给定函数$z = a^{\\sqrt{x^{2}-y^{2}}}$，其中$a > 0$且$a \\neq 1$，需求全微分$dz$。全微分公式为$dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy$。
首先，令$u = \\sqrt{x^{2} - y^{2}}$，则$z = a^{u}$。对$u$求偏导：

$$
\\frac{∂u}{∂x} = \\frac{x}{\\sqrt{x^{2} - y^{2}}},  \\frac{∂u}{∂y} = −\\frac{y}{\\sqrt{x^{2} - y^{2}}}.
$$

对$z$关于$u$求导：

$$
\\frac{∂z}{∂u} = a^{u} \\ln a = a^{\\sqrt{x^{2}-y^{2}}} \\ln a.
$$

利用链式法则，求$z$关于$x$和$y$的偏导：

$$
\\frac{∂z}{∂x} = \\frac{∂z}{∂u} ⋅ \\frac{∂u}{∂x} = a^{\\sqrt{x^{2}-y^{2}}} \\ln a ⋅ \\frac{x}{\\sqrt{x^{2} - y^{2}}},
$$



$$
\\frac{∂z}{∂y} = \\frac{∂z}{∂u} ⋅ \\frac{∂u}{∂y} = a^{\\sqrt{x^{2}-y^{2}}} \\ln a ⋅ (−\\frac{y}{\\sqrt{x^{2} - y^{2}}}) = −\\frac{a^{\\sqrt{x^{2}-y^{2}}} \\ln a ⋅ y}{\\sqrt{x^{2} - y^{2}}}.
$$

代入全微分公式：

$$
dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy = \\frac{a^{\\sqrt{x^{2}-y^{2}}} \\ln a ⋅ x}{\\sqrt{x^{2} - y^{2}}}dx - \\frac{a^{\\sqrt{x^{2}-y^{2}}} \\ln a ⋅ y}{\\sqrt{x^{2} - y^{2}}}dy,
$$

整理得：

$$
dz = \\frac{a^{\\sqrt{x^{2}-y^{2}}} \\ln a}{\\sqrt{x^{2} - y^{2}}}(x dx - y dy).
$$

注意：此结果在$x^{2} - y^{2} > 0$时成立，以确保根号内为正且分母不为零。
', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '310');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '310');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '310');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (311, '1989年考研数学卷5第13题', '简单', '考研数学1989年卷5真题', '求不定积分$∫ \\frac{x+\\ln(1-x)}{x^{2}}dx$．', '[]', '

$$
−\\frac{(1 - x) \\ln(1 - x)}{x} + C
$$

', '首先，将原积分拆分为两个部分：

$$
∫ \\frac{x + \\ln(1 - x)}{x^{2}} dx = ∫ \\frac{x}{x^{2}} dx + ∫ \\frac{\\ln(1 - x)}{x^{2}} dx = ∫ \\frac{1}{x} dx + ∫ \\frac{\\ln(1 - x)}{x^{2}} dx
$$

其中，$∫ \\frac{1}{x} dx = \\ln ∣x∣ + C_{1}$，但后续常数会合并。
对于$∫ \\frac{\\ln(1-x)}{x^{2}} dx$，使用分部积分法。设$u = \\ln(1 - x)$，$dv = \\frac{1}{x^{2}} dx$，则$du = −\\frac{1}{1-x} dx$，$v = −\\frac{1}{x}$。代入分部积分公式：

$$
∫ u dv = uv - ∫ v du
$$

得到：

$$
\\begin{array}{cc}
∫ \\frac{\\ln(1 - x)}{x^{2}} dx & = \\ln(1 - x) ⋅ (−\\frac{1}{x}) - ∫ (−\\frac{1}{x}) ⋅ (−\\frac{1}{1 - x})  dx \\\\
 & = −\\frac{\\ln(1 - x)}{x} - ∫ \\frac{1}{x(1 - x)} dx \\\\
\\end{array}
$$

对$∫ \\frac{1}{x(1-x)} dx$进行部分分式分解：

$$
\\frac{1}{x(1 - x)} = \\frac{1}{x} + \\frac{1}{1 - x}
$$

所以：

$$
∫ \\frac{1}{x(1 - x)} dx = ∫ \\frac{1}{x} dx + ∫ \\frac{1}{1 - x} dx = \\ln ∣x∣ - \\ln ∣1 - x∣ + C_{2}
$$

代回分部积分结果：

$$
\\begin{array}{cc}
∫ \\frac{\\ln(1 - x)}{x^{2}} dx & = −\\frac{\\ln(1 - x)}{x} - (\\ln ∣x∣ - \\ln ∣1 - x∣) + C_{2} \\\\
 & = −\\frac{\\ln(1 - x)}{x} - \\ln ∣x∣ + \\ln ∣1 - x∣ + C_{2} \\\\
\\end{array}
$$

将两部分积分合并：

$$
\\begin{array}{cc}
∫ \\frac{x + \\ln(1 - x)}{x^{2}} dx & = \\ln ∣x∣ + (−\\frac{\\ln(1 - x)}{x} - \\ln ∣x∣ + \\ln ∣1 - x∣) + C \\\\
 & = \\ln ∣1 - x∣ - \\frac{\\ln(1 - x)}{x} + C \\\\
\\end{array}
$$

由于$\\ln(1 - x)$要求$1 - x > 0$，即$x < 1$，因此绝对值可省略，化简为：

$$
\\ln(1 - x) - \\frac{\\ln(1 - x)}{x} + C = −\\frac{(1 - x) \\ln(1 - x)}{x} + C
$$

此结果验证无误，求导后可得原被积函数。
', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '311');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '311');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '311');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (312, '1989年考研数学卷5第14题', '简单', '考研数学1989年卷5真题', '求二重积分$\\iint_{D} \\frac{1-x^{2}-y^{2}}{1+x^{2}+y^{2}}dxdy$，
其中$D$是$x^{2} + y^{2} = 1$,$x = 0$和$y = 0$所围成的区域在第Ⅰ象限部分．', '[]', '

$$
\\frac{π}{2} \\ln 2 - \\frac{π}{4}
$$

', '积分区域$D$是单位圆在第一象限的部分，即$0 ≤ θ ≤ \\frac{π}{2}$，$0 ≤ r ≤ 1$。
使用极坐标变换：令$x = r \\cos θ$，$y = r \\sin θ$，则$x^{2} + y^{2} = r^{2}$，积分元素$dxdy = rdrdθ$。
被积函数变为$\\frac{1-r^{2}}{1+r^{2}}$。
二重积分化为：


$$
\\iint_{D} \\frac{1 - x^{2} - y^{2}}{1 + x^{2} + y^{2}}dxdy = \\int_{0}^{π/2} \\int_{0}^{1} \\frac{1 - r^{2}}{1 + r^{2}} rdrdθ
$$

由于被积函数与$θ$无关，可分离变量：


$$
= \\int_{0}^{π/2} dθ ⋅ \\int_{0}^{1} \\frac{1 - r^{2}}{1 + r^{2}} rdr
$$

计算$θ$的积分：


$$
\\int_{0}^{π/2} dθ = \\frac{π}{2}
$$

计算$r$的积分：
令$I_{r} = \\int_{0}^{1} \\frac{1-r^{2}}{1+r^{2}} rdr$。
代入$u = r^{2}$，则$du = 2rdr$，即$rdr = \\frac{du}{2}$，积分限变为$u = 0$到$u = 1$：


$$
I_{r} = \\int_{0}^{1} \\frac{1 - u}{1 + u} ⋅ \\frac{du}{2} = \\frac{1}{2} \\int_{0}^{1} \\frac{1 - u}{1 + u}du
$$

简化被积函数：


$$
\\frac{1 - u}{1 + u} = −1 + \\frac{2}{1 + u}
$$

因此：


$$
\\int_{0}^{1} \\frac{1 - u}{1 + u}du = \\int_{0}^{1} (−1 + \\frac{2}{1 + u}) du =  \\lbrack −u \\rbrack _{0}^{1} + 2  \\lbrack \\ln ∣1 + u∣ \\rbrack _{0}^{1} = −1 + 2 \\ln 2
$$

于是：


$$
I_{r} = \\frac{1}{2}(−1 + 2 \\ln 2) = −\\frac{1}{2} + \\ln 2
$$

二重积分为：


$$
\\frac{π}{2} × I_{r} = \\frac{π}{2} (−\\frac{1}{2} + \\ln 2) = \\frac{π}{2} \\ln 2 - \\frac{π}{4}
$$

故所求积分为$\\frac{π}{2} \\ln 2 - \\frac{π}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:07:08', 9, 'Mogullzr', '2026-01-29 14:07:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '312');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '312');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '312');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (313, '1989年考研数学卷5第15题', '简单', '考研数学1989年卷5真题', '已知某企业的总收入函数为$R = 26x - 2x^{2} - 4x^{3}$，总成本函数为$C = 8x + x^{2}$，
其中$x$表示产品的产量，求利润函数、边际收入函数、边际成本函数、
以及企业获得最大利润时的产量和最大利润．', '[]', '
利润函数：$L = 18x - 3x^{2} - 4x^{3}$
边际收入函数：$MR = 26 - 4x - 12x^{2}$
边际成本函数：$MC = 8 + 2x$
企业获得最大利润时的产量：$x = 1$
最大利润：$L = 11$
', '
利润函数是总收入函数减去总成本函数，即


$$
L = R - C = (26x - 2x^{2} - 4x^{3}) - (8x + x^{2}) = 18x - 3x^{2} - 4x^{3}
$$

边际收入函数是总收入函数对产量$x$的导数，即


$$
MR = \\frac{dR}{dx} = 26 - 4x - 12x^{2}
$$

边际成本函数是总成本函数对产量$x$的导数，即


$$
MC = \\frac{dC}{dx} = 8 + 2x
$$

为了求最大利润时的产量，对利润函数求一阶导数并设为零：


$$
\\frac{dL}{dx} = 18 - 6x - 12x^{2} = 0
$$

简化得


$$
2x^{2} + x - 3 = 0
$$

解二次方程得$x = 1$或$x = −1.5$，由于产量不能为负，取$x = 1$。
验证二阶导数：


$$
\\frac{d^{2}L}{dx^{2}} = −6 - 24x
$$

在$x = 1$时值为$−30 < 0$，故为极大值点。
将$x = 1$代入利润函数得最大利润


$$
L = 18(1) - 3(1)2 - 4(1)3 = 11
$$

', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '313');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '313');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '313');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (314, '1989年考研数学卷5第16题', '简单', '考研数学1989年卷5真题', '已知函数$y = \\frac{2x^{2}}{(1-x)2}$，试求其单调区间、极值点、
及图形的凹凸性、拐点和渐近线，并画出函数的图形．', '[]', '
单调区间：在$(−∞, 0)$和$(1, +∞)$上单调递减，在$(0, 1)$上单调递增。极值点：局部极小值点为$(0, 0)$。凹凸性：在$(−∞, −\\frac{1}{2})$上凹向下，在$(−\\frac{1}{2}, 1)$和$(1, +∞)$上凹向上。拐点：$(−\\frac{1}{2}, \\frac{2}{9})$。渐近线：垂直渐近线为$x = 1$，水平渐近线为$y = 2$。函数图形：见解析
', '函数$y = \\frac{2x^{2}}{(1-x)2}$的定义域为$(−∞, 1) ∪ (1, +∞)$。
一阶导数为


$$
y^{′} = \\frac{4x}{(1 - x)3}.
$$

令$y^{′} = 0$，得临界点$x = 0$。分析符号：
当$x < 0$时，$y^{′} < 0$，函数单调递减；当$0 < x < 1$时，$y^{′} > 0$，函数单调递增；当$x > 1$时，$y^{′} < 0$，函数单调递减。
因此，单调区间为$(−∞, 0)$递减、$(0, 1)$递增、$(1, +∞)$递减，极值点为局部极小值点$(0, 0)$。
二阶导数为


$$
y^{′′} = \\frac{4(1 + 2x)}{(1 - x)4}.
$$

令$y^{′′} = 0$，得$x = −\\frac{1}{2}$。分析符号：
当$x < −\\frac{1}{2}$时，$y^{′′} < 0$，曲线凹向下；当$x > −\\frac{1}{2}$且$x \\neq 1$时，$y^{′′} > 0$，曲线凹向上。
因此，凹凸性为$(−∞, −\\frac{1}{2})$凹向下、$(−\\frac{1}{2}, 1)$和$(1, +∞)$凹向上，拐点为$(−\\frac{1}{2}, \\frac{2}{9})$。
渐近线：
垂直渐近线为$x = 1$，因为$\\lim_{x→1} y = +∞$；水平渐近线为$y = 2$，因为$\\lim_{x→±∞} y = 2$。
图形基于以上性质绘制：经过点$(0, 0)$和$(−\\frac{1}{2}, \\frac{2}{9})$，在$x = 1$处有垂直渐近线，在$y = 2$处有水平渐近线。
当$x → −∞$时，图形从下方趋近于$y = 2$；当$x → 1^{-}$时，图形趋于$+∞$；当$x → 1^{+}$时，图形趋于$+∞$；当$x → +∞$时，图形从上方趋近于$y = 2$。

', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '314');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '314');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '314');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (315, '1989年考研数学卷5第17题', '', '考研数学1989年卷5真题', '/problems/other/294', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (316, '1989年考研数学卷5第18题', '', '考研数学1989年卷5真题', '/problems/other/295', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (317, '1989年考研数学卷5第19题', '', '考研数学1989年卷5真题', '/problems/other/296', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (318, '1989年考研数学卷5第20题', '简单', '考研数学1989年卷5真题', '已知随机变量$X$和$Y$的联合分布为
$$
\\begin{array}{c|cccccc|}
(x, y) & (0, 0) & (0, 1) & (1, 0) & (1, 1) & (2, 0) & (2, 1) \\\\
P\\{X = x, Y = y\\} & 0.10 & 0.15 & 0.25 & 0.20 & 0.15 & 0.15 \\\\
\\end{array}
$$
试求：(1)$X$的概率分布；(2)$X + Y$的概率分布；(3)$Z = \\sin \\frac{π(X+Y)}{2}$的数学期望．', '[]', '
(1)$X$的概率分布：

$$
\\begin{array}{c|ccc}
X & 0 & 1 & 2 \\\\
P\\{X = x\\} & 0.25 & 0.45 & 0.30 \\\\
\\end{array}
$$

(2)$X + Y$的概率分布：

$$
\\begin{array}{c|cccc}
X + Y & 0 & 1 & 2 & 3 \\\\
P\\{X + Y = s\\} & 0.10 & 0.40 & 0.35 & 0.15 \\\\
\\end{array}
$$

(3)$Z = \\sin \\frac{π(X+Y)}{2}$的数学期望$EZ = 0.25$。
', '
(1) 求$X$的概率分布：通过联合分布计算$X$的边缘分布。
当$X = 0$时，$P(X = 0) = P(0, 0) + P(0, 1) = 0.10 + 0.15 = 0.25$；
当$X = 1$时，$P(X = 1) = P(1, 0) + P(1, 1) = 0.25 + 0.20 = 0.45$；
当$X = 2$时，$P(X = 2) = P(2, 0) + P(2, 1) = 0.15 + 0.15 = 0.30$。
因此，$X$的概率分布如上。
(2) 求$X + Y$的概率分布：列出$X + Y$的所有可能值及其概率。
$X + Y = 0$对应$(0, 0)$，概率为$0.10$；
$X + Y = 1$对应$(0, 1)$和$(1, 0)$，概率之和为$0.15 + 0.25 = 0.40$；
$X + Y = 2$对应$(1, 1)$和$(2, 0)$，概率之和为$0.20 + 0.15 = 0.35$；
$X + Y = 3$对应$(2, 1)$，概率为$0.15$。
因此，$X + Y$的概率分布如上。
(3) 求$Z = \\sin \\frac{π(X+Y)}{2}$的数学期望：令$S = X + Y$，则$Z = \\sin \\frac{πS}{2}$。
计算$S$取不同值时$Z$的值：
当$S = 0$时，$Z = \\sin(0) = 0$；
当$S = 1$时，$Z = \\sin(π/2) = 1$；
当$S = 2$时，$Z = \\sin(π) = 0$；
当$S = 3$时，$Z = \\sin(3π/2) = −1$。
利用$S$的概率分布求期望：
$E \\lbrack Z \\rbrack  = 0 × P(S = 0) + 1 × P(S = 1) + 0 × P(S = 2) + (−1) × P(S = 3) = 0 × 0.10 + 1 × 0.40 + 0 × 0.35 + (−1) × 0.15 = 0.40 - 0.15 = 0.25$。
因此，数学期望为$0.25$。
', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '318');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '318');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (319, '1989年考研数学卷5第21题', '简单', '考研数学1989年卷5真题', '某仪器装有三只独立工作的同型号电子元件，其寿命（单位：小时）都服从同一指数分布，分布密度为
$$
f(x) = \\begin{cases} \\frac{1}{600}e^{−x/600} & x > 0 \\\\ 0 & x ≤ 0. \\end{cases}
$$
试求：在仪器使用的最初$200$小时内，至少有一只电子元件损坏的概率$α$．', '[]', '
$α = 1 - e^{−1}$
', '
每个电子元件的寿命服从指数分布，参数$λ = \\frac{1}{600}$。单个元件在 200 小时内损坏的概率为：


$$
p = F(200) = 1 - e^{−λ⋅200} = 1 - e^{−\\frac{200}{600}} = 1 - e^{−\\frac{1}{3}}
$$

单个元件在 200 小时内存活的概率为$1 - p = e^{−\\frac{1}{3}}$。
由于三个元件独立工作，所有三个元件在 200 小时内都存活的概率为：


$$
(e^{−\\frac{1}{3}})3 = e^{−1}
$$

因此，在 200 小时内至少有一只电子元件损坏的概率为：


$$
α = 1 - e^{−1}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:09', 9, 'Mogullzr', '2026-01-29 14:07:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '319');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '319');
