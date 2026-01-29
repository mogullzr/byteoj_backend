INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1635, '2004年考研数学卷1第1题', '简单', '考研数学2004年卷1真题', '曲线$y = \\ln x$上与直线$x + y = 1$垂直的切线方程为 ______．', '[]', '$y = x - 1$
', '
首先，将直线$x + y = 1$化为斜截式：$y = −x + 1$，其斜率为 -1。与之垂直的直线斜率应满足乘积为 -1，即斜率为 1。曲线$y = \\ln x$的导数为$y^{′} = \\frac{1}{x}$，令导数值等于切线斜率 1，即$\\frac{1}{x} = 1$，解得$x = 1$。代入曲线方程得$y = \\ln 1 = 0$，因此切点为 (1, 0)。由点斜式得切线方程：$y - 0 = 1 ⋅ (x - 1)$，即$y = x - 1$。
', 9, 'Mogullzr', '2026-01-29 14:13:03', 9, 'Mogullzr', '2026-01-29 14:13:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1635');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1635');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1635');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1636, '2004年考研数学卷1第2题', '简单', '考研数学2004年卷1真题', '已知$f^{′}(e^{x}) = xe^{−x}$，且$f(1) = 0$，则$f(x) =$______．', '[]', '$\\frac{1}{2}(\\ln x)2$
', '
已知$f^{′}(e^{x}) = xe^{−x}$，令$u = e^{x}$，则$x = \\ln u$，代入得$f^{′}(u) = (\\ln u)e^{− \\ln u} = \\frac{\\ln u}{u}$。因此，$f^{′}(x) = \\frac{\\ln x}{x}$。
对$f^{′}(x)$积分，得$f(x) = ∫ \\frac{\\ln x}{x} dx$。令$t = \\ln x$，则$dt = \\frac{1}{x}dx$，积分化为$∫ t dt = \\frac{t^{2}}{2} + C = \\frac{(\\ln x)2}{2} + C$。
由初始条件$f(1) = 0$，代入$x = 1$，得$\\frac{(\\ln 1)2}{2} + C = 0$，即$C = 0$。故$f(x) = \\frac{1}{2}(\\ln x)2$。
', 9, 'Mogullzr', '2026-01-29 14:13:03', 9, 'Mogullzr', '2026-01-29 14:13:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1636');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1636');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1636');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1637, '2004年考研数学卷1第3题', '简单', '考研数学2004年卷1真题', '设$L$为正向圆周$x^{2} + y^{2} = 2$在第一象限中的部分，则曲线积分$\\int_{L} xdy - 2ydx$的值为 ______．', '[]', '$\\frac{3π}{2}$
', '曲线$L$是圆$x^{2} + y^{2} = 2$在第一象限的部分，正向为逆时针方向。采用参数方程：令$x = \\sqrt{2} \\cos t$，$y = \\sqrt{2} \\sin t$，其中$t$从$0$到$\\frac{π}{2}$。
计算微分：
$dx = −\\sqrt{2} \\sin t dt$，
$dy = \\sqrt{2} \\cos t dt$。
代入曲线积分：


$$
\\int_{L} x dy - 2y dx = \\int_{0}^{\\frac{π}{2}}  \\lbrack (\\sqrt{2} \\cos t)(\\sqrt{2} \\cos t dt) - 2(\\sqrt{2} \\sin t)(−\\sqrt{2} \\sin t dt) \\rbrack  = \\int_{0}^{\\frac{π}{2}}  \\lbrack 2 \\cos^{2} t + 4 \\sin^{2} t \\rbrack  dt.
$$

简化被积函数：


$$
2 \\cos^{2} t + 4 \\sin^{2} t = 2(\\cos^{2} t + 2 \\sin^{2} t) = 2(1 + \\sin^{2} t).
$$

因此，


$$
\\int_{0}^{\\frac{π}{2}} 2(1 + \\sin^{2} t) dt = 2 \\int_{0}^{\\frac{π}{2}}(1 + \\sin^{2} t) dt.
$$

计算积分：


$$
\\int_{0}^{\\frac{π}{2}} 1 dt = \\frac{π}{2},  \\int_{0}^{\\frac{π}{2}} \\sin^{2} t dt = \\int_{0}^{\\frac{π}{2}} \\frac{1 - \\cos 2t}{2}dt = \\frac{1}{2}  \\lbrack t - \\frac{\\sin 2t}{2} \\rbrack _{0}^{\\frac{π}{2}} = \\frac{π}{4}.
$$

所以，


$$
\\int_{0}^{\\frac{π}{2}}(1 + \\sin^{2} t) dt = \\frac{π}{2} + \\frac{π}{4} = \\frac{3π}{4}.
$$

最终，


$$
2 × \\frac{3π}{4} = \\frac{3π}{2}.
$$

因此，曲线积分的值为$\\frac{3π}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:03', 9, 'Mogullzr', '2026-01-29 14:13:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1637');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1637');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1637');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1638, '2004年考研数学卷1第4题', '简单', '考研数学2004年卷1真题', '欧拉方程$x^{2}\\frac{d^{2}y}{dx^{2}} + 4x\\frac{dy}{dx} + 2y = 0$（$x > 0$）的通解为 ______．', '[]', '
$y = \\frac{C_{1}}{x} + \\frac{C_{2}}{x^{2}}$
', '
给定欧拉方程


$$
x^{2}\\frac{d^{2}y}{dx^{2}} + 4x\\frac{dy}{dx} + 2y = 0 (x > 0),
$$

通过代换$x = e^{t}$（即$t = \\ln x$）将其转化为常系数线性微分方程。
计算导数

$$
\\frac{dy}{dx} = \\frac{dy}{dt} ⋅ \\frac{dt}{dx} = \\frac{dy}{dt} ⋅ \\frac{1}{x},
$$


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{d}{dx} (\\frac{dy}{dt} ⋅ \\frac{1}{x}) = \\frac{d^{2}y}{dt^{2}} ⋅ \\frac{1}{x^{2}} - \\frac{dy}{dt} ⋅ \\frac{1}{x^{2}} = \\frac{1}{x^{2}} (\\frac{d^{2}y}{dt^{2}} - \\frac{dy}{dt}) .
$$

代入原方程

$$
x^{2} ⋅ \\frac{1}{x^{2}} (\\frac{d^{2}y}{dt^{2}} - \\frac{dy}{dt}) + 4x ⋅ \\frac{1}{x}\\frac{dy}{dt} + 2y = 0,
$$

化简得：


$$
\\frac{d^{2}y}{dt^{2}} + 3\\frac{dy}{dt} + 2y = 0.
$$

求解常系数方程
该方程的特征方程为


$$
r^{2} + 3r + 2 = 0,
$$

解得根$r = −1$和$r = −2$，因此通解为


$$
y(t) = C_{1}e^{−t} + C_{2}e^{−2t}.
$$

代回$t = \\ln x$，得


$$
e^{−t} = x^{−1},  e^{−2t} = x^{−2},
$$

故原方程的通解为


$$
y(x) = C_{1}x^{−1} + C_{2}x^{−2} = \\frac{C_{1}}{x} + \\frac{C_{2}}{x^{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:03', 9, 'Mogullzr', '2026-01-29 14:13:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1638');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1638');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '1638');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1639, '2004年考研数学卷1第5题', '简单', '考研数学2004年卷1真题', '设矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
1 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，矩阵$B$满足$ABA^{∗} = 2BA^{∗} + E$，其中$A^{∗}$为$A$的伴随矩阵，$E$是单位矩阵，则$∣B∣ =$______．', '[]', '$\\frac{1}{9}$
', '给定矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
1 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，满足方程$ABA^{∗} = 2BA^{∗} + E$，其中$A^{∗}$是$A$的伴随矩阵，$E$是单位矩阵。首先计算$A$的行列式：


$$
∣A∣ = \\begin{vmatrix}
2 & 1 & 0\\\\
1 & 2 & 0\\\\
0 & 0 & 1
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
2 & 1\\\\
1 & 2
\\end{vmatrix} = 1 ⋅ (4 - 1) = 3
$$

由于$∣A∣ = 3 \\neq 0$，$A$可逆，且伴随矩阵满足$A^{∗} = ∣A∣A^{−1} = 3A^{−1}$。代入原方程：


$$
AB(3A^{−1}) = 2B(3A^{−1}) + E
$$

简化得：


$$
3ABA^{−1} = 6BA^{−1} + E
$$

右乘$A$：


$$
3ABA^{−1}A = 6BA^{−1}A + EA
$$

即：


$$
3AB = 6B + A
$$

整理得：


$$
3AB - 6B = A
$$

即：


$$
(3A - 6E)B = A
$$

计算矩阵$C = 3A - 6E$：


$$
3A = \\left( \\begin{array}{ccc}
6 & 3 & 0 \\\\
3 & 6 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right) ,  6E = \\left( \\begin{array}{ccc}
6 & 0 & 0 \\\\
0 & 6 & 0 \\\\
0 & 0 & 6 \\\\
\\end{array} \\right)
$$



$$
C = 3A - 6E = \\left( \\begin{array}{ccc}
0 & 3 & 0 \\\\
3 & 0 & 0 \\\\
0 & 0 & −3 \\\\
\\end{array} \\right)
$$

计算$∣C∣$：


$$
∣C∣ = \\begin{vmatrix}
0 & 3 & 0\\\\
3 & 0 & 0\\\\
0 & 0 & −3
\\end{vmatrix} = (−3) ⋅ \\begin{vmatrix}
0 & 3\\\\
3 & 0
\\end{vmatrix} = (−3) ⋅ (0 ⋅ 0 - 3 ⋅ 3) = (−3) ⋅ (−9) = 27
$$

由$(3A - 6E)B = A$，取行列式：


$$
∣3A - 6E∣ ⋅ ∣B∣ = ∣A∣
$$

即：


$$
27 ⋅ ∣B∣ = 3
$$

所以：


$$
∣B∣ = \\frac{3}{27} = \\frac{1}{9}
$$

因此，$∣B∣ = \\frac{1}{9}$。
', 9, 'Mogullzr', '2026-01-29 14:13:03', 9, 'Mogullzr', '2026-01-29 14:13:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1639');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1639');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1639');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1640, '2004年考研数学卷1第6题', '简单', '考研数学2004年卷1真题', '设随机变量$X$服从参数为$λ$的指数分布，则$P\\{X > \\sqrt{DX}\\} =$______．', '[]', '
$e^{−1}$
', '
随机变量$X$服从参数为$λ$的指数分布，其方差$D(X) = \\frac{1}{λ^{2}}$，因此$\\sqrt{D(X)} = \\frac{1}{λ}$。
需要计算概率$P\\{X > \\sqrt{D(X)}\\} = P\\{X > \\frac{1}{λ}\\}$。
指数分布的累积分布函数为$F(x) = 1 - e^{−λx}$，故$P\\{X > x\\} = e^{−λx}$。
代入$x = \\frac{1}{λ}$，得$P\\{X > \\frac{1}{λ}\\} = e^{−λ⋅\\frac{1}{λ}} = e^{−1}$。
因此，$P\\{X > \\sqrt{DX}\\} = e^{−1}$。
', 9, 'Mogullzr', '2026-01-29 14:13:04', 9, 'Mogullzr', '2026-01-29 14:13:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1640');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1640');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1641, '2004年考研数学卷1第7题', '简单', '考研数学2004年卷1真题', '把$x → 0^{+}$时的无穷小量$α = \\int_{0}^{x} \\cos t^{2}dt$，$β = \\int_{0}^{x^{2}} \\tan \\sqrt{t}dt$，$γ = \\int_{0}^{\\sqrt{x}} \\sin t^{3}dt$排列起来，使排在后面的是前一个的高阶无穷小，
则正确的排列次序是', '[''$α, β, γ$．'', ''$α, γ, β$．'', ''$β, α, γ$．'', ''$β, γ, α$．'']', "['B']", '当$x → 0^{+}$时，分析三个无穷小量的阶数：对于$α = \\int_{0}^{x} \\cos t^{2} dt$，由于$\\cos t^{2} ≈ 1$当$t → 0$，因此$α ∼ x$，即$α$是$x$的一阶无穷小。对于$β = \\int_{0}^{x^{2}} \\tan \\sqrt{t} dt$，令$u = \\sqrt{t}$，则$β = 2 \\int_{0}^{x} u \\tan u du$。当$u → 0$时，$\\tan u ∼ u$，所以$u \\tan u ∼ u^{2}$，因此$β ∼ 2 \\int_{0}^{x} u^{2} du = \\frac{2}{3}x^{3}$，即$β$是$x$的三阶无穷小。对于$γ = \\int_{0}^{\\sqrt{x}} \\sin t^{3} dt$，当$t → 0$时，$\\sin t^{3} ∼ t^{3}$，因此$γ ∼ \\int_{0}^{\\sqrt{x}} t^{3} dt = \\frac{1}{4}x^{2}$，即$γ$是$x$的二阶无穷小。
比较阶数：$α$为一阶，$γ$为二阶，$β$为三阶。要满足后一个是前一个的高阶无穷小，即阶数递增，排列次序应为$α$、$γ$、$β$，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:13:04', 9, 'Mogullzr', '2026-01-29 14:13:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1641');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1641');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1641');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1642, '2004年考研数学卷1第8题', '简单', '考研数学2004年卷1真题', '设函数$f(x)$连续，且$f^{′}(0) > 0$，则存在$δ > 0$，使得', '[''$f(x)$在$(0, δ)$内单调增加．'', ''$f(x)$在$(−δ, 0)$内单调减少．'', ''对任意的$x ∈ (0, δ)$有$f(x) > f(0)$．'', ''对任意的$x ∈ (−δ, 0)$有$f(x) > f(0)$．'']', "['C']", '
由导数的定义，

$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x} > 0
$$
根据极限的保号性，存在$δ > 0$，使得当$0 < ∣x∣ < δ$时，

$$
\\frac{f(x) - f(0)}{x} > 0
$$

$$
f(x) - f(0) > 0  ⇒  f(x) > f(0)
$$
对于选项A和B，虽然$f^{′}(0) > 0$，但不能保证在$(0, δ)$或$(−δ, 0)$内导数处处存在且恒正或恒负，因此A和B不一定成立。', 9, 'Mogullzr', '2026-01-29 14:13:04', 9, 'Mogullzr', '2026-01-29 14:13:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1642');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1642');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1642');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1643, '2004年考研数学卷1第9题', '简单', '考研数学2004年卷1真题', '设$\\sum_{n=1}^{∞} a_{n}$为正项级数，下列结论中正确的是', '[''若$\\\\lim_{n→∞} na_{n} = 0$，则级数$\\\\sum_{n=1}^{∞} a_{n}$收敛．'', ''若存在非零常数$λ$，使得$\\\\lim_{n→∞} na_{n} = λ$，则级数$\\\\sum_{n=1}^{∞} a_{n}$发散．'', ''若级数$\\\\sum_{n=1}^{∞} a_{n}$收敛，则$\\\\lim_{n→∞} n^{2}a_{n} = 0$．'', ''若级数$\\\\sum_{n=1}^{∞} a_{n}$发散，则存在非零常数$λ$，使得$\\\\lim_{n→∞} na_{n} = λ$．'']', "['B']", 'A：取反例$a_{n} = \\frac{1}{n \\ln n}$（$n ≥ 2$），则

$$
\\lim_{n→∞} na_{n} = \\lim_{n→∞} \\frac{1}{\\ln n} = 0,
$$
但级数$\\sum_{n=2}^{∞} \\frac{1}{n \\ln n}$发散（由积分判别法可知）。
因此 A 错误。B：若$\\lim_{n→∞} na_{n} = λ \\neq 0$，则当$n$足够大时，$a_{n} ∼ \\frac{λ}{n}$。
由于$∑ \\frac{1}{n}$发散，由极限比较法可知$∑ a_{n}$发散。
因此 B 正确。C：取反例$a_{n} = \\frac{1}{n^{2}}$，则级数$∑ \\frac{1}{n^{2}}$收敛，但

$$
\\lim_{n→∞} n^{2}a_{n} = 1 \\neq 0.
$$
因此 C 错误。D：取反例$a_{n} = \\frac{1}{n \\ln n}$（$n ≥ 2$），则级数$\\sum_{n=2}^{∞} \\frac{1}{n \\ln n}$发散，但

$$
\\lim_{n→∞} na_{n} = \\lim_{n→∞} \\frac{1}{\\ln n} = 0,
$$
不存在非零常数$λ$。
因此 D 错误。', 9, 'Mogullzr', '2026-01-29 14:13:04', 9, 'Mogullzr', '2026-01-29 14:13:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1643');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1643');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1643');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1644, '2004年考研数学卷1第10题', '简单', '考研数学2004年卷1真题', '设$f(x)$为连续函数，$F(t) = \\int_{1}^{t} dy \\int_{y}^{t} f(x)dx$，则$F^{′}(2)$等于', '[''$2f(2)$．'', ''$f(2)$．'', ''$−f(2)$．'', ''$0$．'']', "['B']", '
已知连续函数$f(x)$，以及

$$
F(t) = \\int_{1}^{t} dy \\int_{y}^{t} f(x) dx.
$$
首先交换积分次序。
积分区域为

$$
1 ≤ y ≤ t,  y ≤ x ≤ t,
$$
等价于

$$
1 ≤ x ≤ t,  1 ≤ y ≤ x.
$$
因此，

$$
F(t) = \\int_{1}^{t}  \\lbrack \\int_{1}^{x} f(x) dy \\rbrack  dx = \\int_{1}^{t} f(x)(x - 1) dx.
$$
由微积分基本定理，

$$
F^{′}(t) = f(t)(t - 1).
$$
代入$t = 2$得

$$
F^{′}(2) = f(2)(2 - 1) = f(2).
$$
故正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:13:04', 9, 'Mogullzr', '2026-01-29 14:13:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1644');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1644');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1644');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1645, '2004年考研数学卷1第11题', '简单', '考研数学2004年卷1真题', '设$A$是$3$阶方阵，将$A$的第$1$列与第$2$列交换得$B$，再把$B$的第$2$列加到第$3$列得$C$，
则满足$AQ = C$的可逆矩阵$Q$为', '[''$\\\\left( \\\\begin{array}{ccc}\\n0 & 1 & 0 \\\\\\\\\\n1 & 0 & 0 \\\\\\\\\\n1 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{ccc}\\n0 & 1 & 0 \\\\\\\\\\n1 & 0 & 1 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{ccc}\\n0 & 1 & 0 \\\\\\\\\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{ccc}\\n0 & 1 & 1 \\\\\\\\\\n1 & 0 & 0 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'']', "['D']", '
设矩阵$A$的列向量依次为$a_{1}, a_{2}, a_{3}$。交换$A$的第 1 列与第 2 列得到矩阵$B$，于是$B$的列向量为$a_{2}, a_{1}, a_{3}$。
再将$B$的第 2 列加到第 3 列得到矩阵$C$，则$C$的列向量为$a_{2}, a_{1}, a_{1} + a_{3}$。我们需要找到一个可逆矩阵$Q$，使得$AQ = C$。矩阵$Q$的每一列表示$A$的列向量的线性组合系数，因此$Q$应满足：第一列对应$C$的第一列$a_{2}$，即系数为$(0, 1, 0)T$；第二列对应$C$的第二列$a_{1}$，即系数为$(1, 0, 0)T$；第三列对应$C$的第三列$a_{1} + a_{3}$，即系数为$(1, 0, 1)T$。因此

$$
Q = \\left( \\begin{array}{ccc}
0 & 1 & 1 \\\\
1 & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) ,
$$
对应选项 D。验证：计算$AQ$：第一列为$A ⋅ (0, 1, 0)T = a_{2}$；第二列为$A ⋅ (1, 0, 0)T = a_{1}$；第三列为$A ⋅ (1, 0, 1)T = a_{1} + a_{3}$。
与矩阵$C$一致。其他选项错误原因：选项 A 的第三列给出$a_{2} + a_{3}$；选项 B 的第三列给出$a_{2} + a_{3}$；选项 C 的第二列给出$a_{1} + a_{3}$。
均与$C$的列向量不符。', 9, 'Mogullzr', '2026-01-29 14:13:04', 9, 'Mogullzr', '2026-01-29 14:13:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1645');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1645');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1645');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1646, '2004年考研数学卷1第12题', '简单', '考研数学2004年卷1真题', '设$A$,$B$为满足$AB = O$的任意两个非零矩阵，则必有', '[''$A$的列向量组线性相关，$B$的行向量组线性相关．'', ''$A$的列向量组线性相关，$B$的列向量组线性相关．'', ''$A$的行向量组线性相关，$B$的行向量组线性相关．'', ''$A$的行向量组线性相关，$B$的列向量组线性相关．'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:13:05', 9, 'Mogullzr', '2026-01-29 14:13:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1646');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1646');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1646');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1647, '2004年考研数学卷1第13题', '简单', '考研数学2004年卷1真题', '设随机变量$X$服从正态分布$N(0, 1)$，对给定的$α$（$0 < α < 1$），
数$u_{α}$满足$P\\{X > u_{α}\\} = α$，若$P\\{∣X∣ < x\\} = α$，则$x$等于', '[''$u^{\\\\frac{α}{2}}$．'', ''$u^{1-\\\\frac{α}{2}}$．'', ''$u^{\\\\frac{1-α}{2}}$．'', ''$u_{1-α}$．'']', "['C']", '给定$P\\{∣X∣ < x\\} = α$，由于$X ∼ N(0, 1)$，有$P\\{∣X∣ < x\\} = P\\{−x < X < x\\} = Φ(x) - Φ(−x) = 2Φ(x) - 1$，其中$Φ$为标准正态累积分布函数。因此，$2Φ(x) - 1 = α$，解得$Φ(x) = \\frac{1+α}{2}$。
由$u_{α}$的定义，$P\\{X > u_{α}\\} = α$，即$Φ(u_{α}) = 1 - α$，所以$u_{α} = Φ^{−1}(1 - α)$。
令$x = u_{β}$，则$Φ(x) = 1 - β$，结合$Φ(x) = \\frac{1+α}{2}$，有$1 - β = \\frac{1+α}{2}$，解得$β = \\frac{1-α}{2}$。因此，$x = u^{\\frac{1-α}{2}}$，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:13:05', 9, 'Mogullzr', '2026-01-29 14:13:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1647');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1647');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1648, '2004年考研数学卷1第14题', '简单', '考研数学2004年卷1真题', '设随机变量$X_{1}, X_{2}, ⋯  , X_{n}$（$n > 1$）独立同分布，且其方差为$σ^{2} > 0$．
令$Y = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，则', '[''$Cov(X_{1}, Y) = \\\\frac{σ^{2}}{n}$．'', ''$Cov(X_{1}, Y) = σ^{2}$．'', ''$D(X_{1} + Y) = \\\\frac{n+2}{n}σ^{2}$．'', ''$D(X_{1} - Y) = \\\\frac{n+1}{n}σ^{2}$．'']', "['A']", '由于随机变量$X_{1}, X_{2}, ⋯  , X_{n}$($n > 1$) 独立同分布，所以有
$$
Cov(X_{i}, X_{j}) = \\begin{cases} σ^{2} & i = j; \\\\ 0 & i \\neq j. \\end{cases}
$$
从而有
$$
Cov(X_{1}, Y) = Cov(X_{1}, \\frac{1}{n} \\sum_{i=1}^{n} X_{i}) = \\frac{1}{n}Cov(X_{1}, X_{1}) + \\frac{1}{n} \\sum_{i=2}^{n} Cov(X_{1}, X_{i}) = \\frac{1}{n}DX_{1} = \\frac{1}{n}σ^{2}.
$$
因为$X$与$Y$独立时，有$D(X ± Y) = D(X) + D(Y)$，所以
$$
D(X_{1} + Y) = D (\\frac{1 + n}{n}X_{1} + \\frac{1}{n}X_{2} + ⋯ + \\frac{1}{n}X_{n}) = \\frac{(1 + n)2}{n^{2}}σ^{2} + \\frac{n - 1}{n^{2}}σ^{2} = \\frac{n + 3}{n}σ^{2},
$$

$$
D(X_{1} - Y) = D (\\frac{n - 1}{n}X_{1} - \\frac{1}{n}X_{2} - ⋯ - \\frac{1}{n}X_{n}) = \\frac{(n - 1)2}{n^{2}}σ^{2} + \\frac{n - 1}{n^{2}}σ^{2} = \\frac{n - 2}{n}σ^{2}.
$$
', 9, 'Mogullzr', '2026-01-29 14:13:05', 9, 'Mogullzr', '2026-01-29 14:13:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1648');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1648');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1648');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1649, '2004年考研数学卷1第15题', '简单', '考研数学2004年卷1真题', '（本题满分 12 分）设$e < a < b < e^{2}$，证明$\\ln^{2} b - \\ln^{2} a > \\frac{4}{e^{2}}(b - a)$．', '[]', '不等式成立。
', '令$f(x) = (\\ln x)2$，则$f^{′}(x) = \\frac{2 \\ln x}{x}$。由拉格朗日中值定理，存在$c ∈ (a, b)$使得

$$
\\ln^{2} b - \\ln^{2} a = f(b) - f(a) = f^{′}(c)(b - a) = \\frac{2 \\ln c}{c}(b - a).
$$

由于$e < a < c < b < e^{2}$，故$c ∈ (e, e^{2})$。考虑函数$g(x) = \\frac{\\ln x}{x}$，则$g^{′}(x) = \\frac{1-\\ln x}{x^{2}}$。当$x > e$时，$g^{′}(x) < 0$，所以$g(x)$在$(e, +∞)$上严格递减。因此当$c ∈ (e, e^{2})$时，有

$$
\\frac{\\ln c}{c} > \\frac{\\ln e^{2}}{e^{2}} = \\frac{2}{e^{2}}.
$$

于是

$$
\\ln^{2} b - \\ln^{2} a = \\frac{2 \\ln c}{c}(b - a) > \\frac{4}{e^{2}}(b - a).
$$

故原不等式得证。
', 9, 'Mogullzr', '2026-01-29 14:13:05', 9, 'Mogullzr', '2026-01-29 14:13:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1649');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1649');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1649');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1650, '2004年考研数学卷1第16题', '简单', '考研数学2004年卷1真题', '（本题满分 11 分）某种飞机在机场降落时，为了减少滑行距离，在触地的瞬间，飞机尾部张开减速伞，以增大阻力，
使飞机迅速减速并停下．现有一质量为$9000$kg的飞机，着陆时的水平速度为$700$km/h．经测试，
减速伞打开后，飞机所受的总阻力与飞机的速度成正比（比例系数为$k = 6.0 × 10^{6}$）．
问从着陆点算起，飞机滑行的最长距离是多少？（注：kg表示千克，km/h表示千米/小时．）', '[]', '1.05 千米
', '
由题设，飞机质量$m = 9000 kg$，着陆时的水平速度$v_{0} = 700 km/h$。从飞机接触跑道开始计时，设 t 时刻飞机的滑行距离为$x(t)$，速度为$v(t)$，则$v(0) = v_{0}, x(0) = 0$。根据牛顿第二定律有$m\\frac{dv}{dt} = −kv$。又$\\frac{dv}{dt} = \\frac{dv}{dx} ⋅ \\frac{dx}{dt} = v\\frac{dv}{dx}$，故由以上两式得$dx = −\\frac{m}{k}dv$，积分得$x(t) = −\\frac{m}{k}v + C$。由初始条件$v(0) = v_{0}, x(0) = 0$，解得$C = \\frac{m}{k}v_{0}$，从而$x(t) = \\frac{m}{k}(v_{0} - v(t))$。当$v(t) → 0$时，

$$
x(t) → \\frac{mv_{0}}{k} = \\frac{9000 × 700}{6.0 × 10^{6}} = 1.05.
$$

所以，飞机滑行的最长距离为 1.05 千米。
', 9, 'Mogullzr', '2026-01-29 14:13:05', 9, 'Mogullzr', '2026-01-29 14:13:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1650');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1650');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1650');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1651, '2004年考研数学卷1第17题', '简单', '考研数学2004年卷1真题', '（本题满分 12 分）计算曲面积分
$$
I = \\iint_{Σ} 2x^{3}dydz + 2y^{3}dzdx + 3(z^{2} - 1)dxdy,
$$
其中$Σ$是曲面$z = 1 - x^{2} - y^{2}(z ≥ 0)$的上侧．', '[]', '$−π$
', '考虑曲面$Σ$:$z = 1 - x^{2} - y^{2}$($z ≥ 0$) 的上侧。为了应用散度定理，添加底面$S_{1}$:$z = 0$($x^{2} + y^{2} ≤ 1$) 的下侧，构成封闭曲面$S = Σ ∪ S_{1}$，所围区域为$Ω$。令向量场$F = (P, Q, R) = (2x^{3}, 2y^{3}, 3(z^{2} - 1))$，则原积分可写为：

$$
I = \\iint_{Σ} F ⋅ dS.
$$

由散度定理：

$$
\\iint_{S} F ⋅ dS = \\iiint_{Ω} ∇ ⋅ F dV.
$$

计算散度：

$$
∇ ⋅ F = \\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z} = 6x^{2} + 6y^{2} + 6z.
$$

在柱坐标下：$x = r \\cos θ$,$y = r \\sin θ$,$z = z$，则$dV = r dr dθ dz$，积分区域为$0 ≤ θ ≤ 2π$,$0 ≤ r ≤ 1$,$0 ≤ z ≤ 1 - r^{2}$。于是：

$$
\\iiint_{Ω} ∇ ⋅ F dV = \\int_{0}^{2π} \\int_{0}^{1} \\int_{0}^{1-r^{2}}(6r^{2} + 6z)r dz dr dθ.
$$

先对$z$积分：

$$
\\int_{0}^{1-r^{2}}(6r^{3} + 6rz) dz = 6r^{3}(1 - r^{2}) + 3r(1 - r^{2})2.
$$

然后对$r$积分：

$$
\\int_{0}^{1} 6r^{3}(1 - r^{2}) dr = 6  \\lbrack \\frac{r^{4}}{4} - \\frac{r^{6}}{6} \\rbrack _{0}^{1} = 6 (\\frac{1}{4} - \\frac{1}{6}) = \\frac{1}{2},
$$



$$
\\int_{0}^{1} 3r(1 - r^{2})2 dr = 3 \\int_{0}^{1}(r - 2r^{3} + r^{5}) dr = 3  \\lbrack \\frac{r^{2}}{2} - \\frac{r^{4}}{2} + \\frac{r^{6}}{6} \\rbrack _{0}^{1} = 3 (\\frac{1}{2} - \\frac{1}{2} + \\frac{1}{6}) = \\frac{1}{2}.
$$

所以：

$$
\\int_{0}^{1}  \\lbrack 6r^{3}(1 - r^{2}) + 3r(1 - r^{2})2 \\rbrack  dr = \\frac{1}{2} + \\frac{1}{2} = 1,
$$



$$
\\iiint_{Ω} ∇ ⋅ F dV = \\int_{0}^{2π} 1 dθ = 2π.
$$

因此：

$$
\\iint_{S} F ⋅ dS = 2π.
$$

接下来计算底面积分$\\iint_{S_{1}} F ⋅ dS$。在$S_{1}$上，$z = 0$，下侧，法向量为$n = (0, 0, −1)$。由于$S_{1}$是水平面，$dy dz$和$dz dx$的投影面积为零，只需计算$dx dy$部分。对于下侧，有$dx dy = −dA$，其中$dA = dx dy$是投影面积元。于是：

$$
\\iint_{S_{1}} F ⋅ dS = \\iint_{S_{1}} 3(z^{2} - 1) dx dy = \\iint_{x^{2}+y^{2}≤1} 3(0 - 1)(−1) dx dy = \\iint_{x^{2}+y^{2}≤1} 3 dx dy = 3 ⋅ π = 3π.
$$

所以：

$$
I = \\iint_{Σ} F ⋅ dS = \\iint_{S} F ⋅ dS - \\iint_{S_{1}} F ⋅ dS = 2π - 3π = −π.
$$

因此，曲面积分$I = −π$.
', 9, 'Mogullzr', '2026-01-29 14:13:06', 9, 'Mogullzr', '2026-01-29 14:13:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1651');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1651');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1651');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1652, '2004年考研数学卷1第18题', '简单', '考研数学2004年卷1真题', '（本题满分 11 分）设有方程$x^{n} + nx - 1 = 0$，其中$n$为正整数．证明此方程存在惟一正实根$x_{n}$，
并证明当$α > 1$时，级数$\\sum_{n=1}^{∞} x_{n}^{α}$收敛．', '[]', '方程$x^{n} + nx - 1 = 0$存在唯一正实根$x_{n} ∈ (0, 1)$，且当$α > 1$时，级数$\\sum_{n=1}^{∞} x_{n}^{α}$收敛。
', '考虑函数$f(x) = x^{n} + nx - 1$，其中$n$为正整数。
当$x = 0$时，$f(0) = −1 < 0$；当$x = 1$时，$f(1) = n > 0$。
由于$f(x)$连续，由中间值定理，存在$x_{n} ∈ (0, 1)$使得$f(x_{n}) = 0$。
又$f^{′}(x) = nx^{n-1} + n > 0$对于$x > 0$，故$f(x)$在$x > 0$上严格递增，因此正实根$x_{n}$唯一。
由方程$x_{n}^{n} + nx_{n} - 1 = 0$可得$x_{n}^{n} + nx_{n} = 1$。
由于$x_{n}^{n} > 0$，有$nx_{n} < 1$，即$x_{n} < \\frac{1}{n}$。
当$α > 1$时，有$x_{n}^{α} < (\\frac{1}{n})^{α} = \\frac{1}{n^{α}}$。
而级数$\\sum_{n=1}^{∞} \\frac{1}{n^{α}}$收敛（$α > 1$时的$p$-级数），
由比较判别法，级数$\\sum_{n=1}^{∞} x_{n}^{α}$收敛。
', 9, 'Mogullzr', '2026-01-29 14:13:06', 9, 'Mogullzr', '2026-01-29 14:13:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1652');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1652');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '1652');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1653, '2004年考研数学卷1第19题', '简单', '考研数学2004年卷1真题', '（本题满分 12 分）设$z = z(x, y)$是由$x^{2} - 6xy + 10y^{2} - 2yz - z^{2} + 18 = 0$确定的函数，求$z = z(x, y)$的极值点和极值．', '[]', '
极小值点为$(9, 3)$，极小值为$z = 3$；极大值点为$(−9, −3)$，极大值为$z = −3$。
', '
设$F(x, y, z) = x^{2} - 6xy + 10y^{2} - 2yz - z^{2} + 18$。由隐函数存在定理，函数$z = z(x, y)$的极值点需满足$F_{x} = 0$，$F_{y} = 0$，且$F(x, y, z) = 0$。
计算偏导数：


$$
F_{x} = 2x - 6y,  F_{y} = −6x + 20y - 2z.
$$

令$F_{x} = 0$，得$2x - 6y = 0$，即$x = 3y$。
令$F_{y} = 0$，代入$x = 3y$，得$−6(3y) + 20y - 2z = 0$，即$2y - 2z = 0$，故$z = y$。
代入$F(x, y, z) = 0$：


$$
(3y)2 - 6(3y)y + 10y^{2} - 2y ⋅ y - y^{2} + 18 = 0,
$$

简化得$−2y^{2} + 18 = 0$，解得$y = ±3$。
当$y = 3$时，$x = 9$，$z = 3$；当$y = −3$时，$x = −9$，$z = −3$。
因此，候选极值点为$(9, 3, 3)$和$(−9, −3, −3)$。
为判断极值类型，计算二阶偏导数。
首先，$F_{z} = −2y - 2z$。
在点$(9, 3, 3)$处，$F_{z} = −12$，


$$
z_{xx} = −\\frac{F_{xx}}{F_{z}} = −\\frac{2}{−12} = \\frac{1}{6},  z_{xy} = −\\frac{F_{xy}}{F_{z}} = −\\frac{−6}{−12} = −\\frac{1}{2},  z_{yy} = −\\frac{F_{yy}}{F_{z}} = −\\frac{20}{−12} = \\frac{5}{3}.
$$

Hessian 行列式：


$$
D = z_{xx}z_{yy} - (z_{xy})2 = \\frac{1}{6} ⋅ \\frac{5}{3} - (−\\frac{1}{2})^{2} = \\frac{5}{18} - \\frac{1}{4} = \\frac{1}{36} > 0,
$$

且$z_{xx} = \\frac{1}{6} > 0$，故为极小值点，极小值$z = 3$。
在点$(−9, −3, −3)$处，$F_{z} = 12$，


$$
z_{xx} = −\\frac{F_{xx}}{F_{z}} = −\\frac{2}{12} = −\\frac{1}{6},  z_{xy} = −\\frac{F_{xy}}{F_{z}} = −\\frac{−6}{12} = \\frac{1}{2},  z_{yy} = −\\frac{F_{yy}}{F_{z}} = −\\frac{20}{12} = −\\frac{5}{3}.
$$

Hessian 行列式：


$$
D = z_{xx}z_{yy} - (z_{xy})2 = (−\\frac{1}{6}) (−\\frac{5}{3}) - (\\frac{1}{2})^{2} = \\frac{5}{18} - \\frac{1}{4} = \\frac{1}{36} > 0,
$$

且$z_{xx} = −\\frac{1}{6} < 0$，故为极大值点，极大值$z = −3$。
因此，函数$z = z(x, y)$的极小值点为$(9, 3)$，极小值为$3$；极大值点为$(−9, −3)$，极大值为$−3$。
', 9, 'Mogullzr', '2026-01-29 14:13:06', 9, 'Mogullzr', '2026-01-29 14:13:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1653');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1653');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1653');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1654, '2004年考研数学卷1第20题', '简单', '考研数学2004年卷1真题', '（本题满分 9 分）设有齐次线性方程组
$$
\\begin{cases} (1 + a)x_{1} + x_{2} + ⋯ + x_{n} = 0 \\\\ 2x_{1} + (2 + a)x_{2} + ⋯ + 2x_{n} = 0 \\\\ ⋯⋯⋯⋯⋯⋯ \\\\ nx_{1} + nx_{2} + ⋯ + (n + a)x_{n} = 0 \\end{cases}  (n ≥ 2).
$$
试问$a$取何值时，该方程组有非零解，并求出其通解．', '[]', '
当$a = 0$或$a = −\\frac{n(n+1)}{2}$时，方程组有非零解。
当$a = 0$时，通解为$x = k_{1}(−1, 1, 0, … , 0)T + k_{2}(−1, 0, 1, … , 0)T + ⋯ + k_{n-1}(−1, 0, 0, … , 1)T$，其中$k_{1}, k_{2}, … , k_{n-1}$为任意常数。
当$a = −\\frac{n(n+1)}{2}$时，通解为$x = k(1, 2, 3, … , n)T$，其中$k$为任意常数。
', '
对方程组的系数矩阵$A$作初等行变换，有


$$
A = \\left( \\begin{array}{ccccc}
1 + a & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
2 & 2 + a & 2 &  & 2 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
n & n & n &  & n + a \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 + a & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
−2a & a & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
−na & 0 & 0 &  & a \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right) = B.
$$

当$a = 0$时，$r(A) = 1 < n$，故该方程组有非零解。其同解方程组为


$$
x_{1} + x_{2} + ⋯ + x_{n} = 0,
$$

由此得基础解系为


$$
η_{1} = (−1, 1, 0, ⋯  , 0)T,  η_{2} = (−1, 0, 1, ⋯  , 0)T,  ⋯  ,  η_{n-1} = (−1, 0, 0, ⋯  , 1)T.
$$

于是方程组的通解为$x = k_{1}η_{1} + ⋯ + k_{n-1}η_{n-1}$，其中$k_{1}, ⋯  , k_{n-1}$为任意常数。
当$a \\neq 0$时，对矩阵$B$作初等行变换，有


$$
B → \\left( \\begin{array}{ccccc}
1 + a & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
−2 & 1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
−n & 0 & 0 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
a + \\frac{n(n+1)}{2} & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
−2 & 1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
−n & 0 & 0 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right) ,
$$

可知$a = −\\frac{n(n+1)}{2}$时，$r(A) = n - 1 < n$，故此方程组也有非零解。其同解方程组为


$$
\\begin{cases} −2x_{1} + x_{2} = 0 \\\\ −3x_{1} + x_{3} = 0 \\\\ ⋮ \\\\ −nx_{1} + x_{n} = 0 \\end{cases}
$$

由此得基础解系为$η = (1, 2, ⋯  , n)T$，于是方程组的通解为$x = kη$，其中$k$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:13:06', 9, 'Mogullzr', '2026-01-29 14:13:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1654');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1654');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1655, '2004年考研数学卷1第21题', '简单', '考研数学2004年卷1真题', '（本题满分 9 分）设矩阵$A = \\left( \\begin{array}{ccc}
1 & 2 & −3 \\\\
−1 & 4 & −3 \\\\
1 & a & 5 \\\\
\\end{array} \\right)$的特征方程有一个二重根，求$a$的值，并讨论$A$是否可相似对角化．', '[]', '
$a = −2$或$a = −\\frac{2}{3}$；当$a = −2$时，$A$可相似对角化；当$a = −\\frac{2}{3}$时，$A$不可相似对角化。
', '
矩阵$A$的特征多项式为$p(λ) = det(λI - A) = λ^{3} - 10λ^{2} + (34 + 3a)λ - (36 + 6a)$。特征方程有一个二重根，设二重根为$λ_{0}$，则$p(λ_{0}) = 0$且$p^{′}(λ_{0}) = 0$。由$p^{′}(λ) = 3λ^{2} - 20λ + (34 + 3a)$，代入$λ_{0}$得：


$$
3λ_{0}^{2} - 20λ_{0} + (34 + 3a) = 0
$$

解得$a = −λ_{0}^{2} + \\frac{20}{3}λ_{0} - \\frac{34}{3}$。代入$p(λ_{0}) = 0$得：


$$
λ_{0}^{3} - 10λ_{0}^{2} + (34 + 3a)λ_{0} - (36 + 6a) = 0
$$

代入$a$并化简得$λ_{0}^{3} - 8λ_{0}^{2} + 20λ_{0} - 16 = 0$，因式分解为$(λ_{0} - 2)2(λ_{0} - 4) = 0$，故$λ_{0} = 2$或$λ_{0} = 4$。
当$λ_{0} = 2$时，$a = −2$；当$λ_{0} = 4$时，$a = −\\frac{2}{3}$。
当$a = −2$时，特征值为$λ = 2$（二重）和$λ = 6$（单根）。计算$A - 2I$的秩为 1，几何重数为 2，等于代数重数，故$A$可相似对角化。
当$a = −\\frac{2}{3}$时，特征值为$λ = 4$（二重）和$λ = 2$（单根）。计算$A - 4I$的秩为 2，几何重数为 1，小于代数重数 2，故$A$不可相似对角化。
', 9, 'Mogullzr', '2026-01-29 14:13:07', 9, 'Mogullzr', '2026-01-29 14:13:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1655');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1655');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1656, '2004年考研数学卷1第22题', '简单', '考研数学2004年卷1真题', '（本题满分 9 分）设$A$,$B$为随机事件，且$P(A) = \\frac{1}{4}$，$P(B∣A) = \\frac{1}{3}$，$P(A∣B) = \\frac{1}{2}$．令
$$
X = \\begin{cases} 1 & A 发生 \\\\ 0 & A 不发生; \\end{cases}  Y = \\begin{cases} 1 & B 发生 \\\\ 0 & B 不发生. \\end{cases}
$$
求：(1) 二维随机变量$(X, Y)$的概率分布；(2)$X$和$Y$的相关系数$ρ_{XY}$．', '[]', '(1) 二维随机变量$(X, Y)$的概率分布为：

$$
\\begin{array}{c|cc}
 & Y &  \\\\
X & 0 & 1 \\\\
0 & \\frac{2}{3} & \\frac{1}{12} \\\\
1 & \\frac{1}{6} & \\frac{1}{12} \\\\
\\end{array}
$$

(2)$X$和$Y$的相关系数$ρ_{XY} = \\frac{1}{\\sqrt{15}}$.
', '
(1) 由于$P(AB) = P(A)P(B∣A) = \\frac{1}{12}$，所以$P(B) = \\frac{P(AB)}{P(A∣B)} = \\frac{1}{6}$。利用条件概率公式和事件间简单的运算关系，有

$$
P\\{X = 1, Y = 1\\} = P(AB) = \\frac{1}{12},
$$



$$
P\\{X = 1, Y = 0\\} = P(A\\bar{B}) = P(A) - P(AB) = \\frac{1}{6}.
$$

第175页 共316页

$$
P\\{X = 0, Y = 1\\} = P(\\bar{A}B) = P(B) - P(AB) = \\frac{1}{12},
$$



$$
P\\{X = 0, Y = 0\\} = P(\\bar{A}\\bar{B}) = 1 - P(A + B) = 1 - P(A) - P(B) + P(AB) = \\frac{2}{3}.
$$

故$(X, Y)$的概率分布为

$$
\\begin{array}{c|cc}
 & Y &  \\\\
X & 0 & 1 \\\\
0 & \\frac{2}{3} & \\frac{1}{12} \\\\
1 & \\frac{1}{6} & \\frac{1}{12} \\\\
\\end{array}
$$

(II)$X, Y$的概率分布分别为

$$
P\\{X = 0\\} = P\\{X = 0, Y = 1\\} + P\\{X = 0, Y = 0\\} = \\frac{2}{3} + \\frac{1}{12} = \\frac{3}{4},
$$



$$
P\\{X = 1\\} = P\\{X = 1, Y = 1\\} + P\\{X = 1, Y = 0\\} = \\frac{1}{6} + \\frac{1}{12} = \\frac{1}{4},
$$



$$
P\\{Y = 1\\} = P\\{X = 0, Y = 1\\} + P\\{X = 1, Y = 1\\} = \\frac{1}{12} + \\frac{1}{12} = \\frac{1}{6},
$$



$$
P\\{Y = 0\\} = 1 - P\\{Y = 1\\} = \\frac{5}{6}.
$$

所以$X, Y$的概率分布为

$$
\\begin{array}{c|cc}
X & 0 & 1 \\\\
p & \\frac{3}{4} & \\frac{1}{4} \\\\
\\end{array}
$$


$$
\\begin{array}{c|cc}
Y & 0 & 1 \\\\
p & \\frac{5}{6} & \\frac{1}{6} \\\\
\\end{array}
$$

由0-1分布的数学期望和方差公式，有

$$
EX = \\frac{1}{4},  EY = \\frac{1}{6},  DX = \\frac{1}{4} × \\frac{3}{4} = \\frac{3}{16},  DY = \\frac{1}{6} × \\frac{5}{6} = \\frac{5}{36},
$$



$$
E(XY) = 0 ⋅ P\\{XY = 0\\} + 1 ⋅ P\\{XY = 1\\} = P\\{X = 1, Y = 1\\} = \\frac{1}{12}.
$$

故协方差和相关系数等于

$$
Cov(X, Y) = E(XY) - EX ⋅ EY = \\frac{1}{24},  ρ_{XY} = \\frac{Cov(X, Y)}{\\sqrt{DX} ⋅ \\sqrt{DY}} = \\frac{\\sqrt{15}}{15}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:07', 9, 'Mogullzr', '2026-01-29 14:13:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1656');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1656');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1656');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1657, '2004年考研数学卷1第23题', '简单', '考研数学2004年卷1真题', '（本题满分 9 分）设总体$X$的分布函数为
$$
F(x, β) = \\begin{cases} 1 - \\frac{1}{x^{β}} & x > 1 \\\\ 0 & x ≤ 1 \\end{cases}
$$
其中未知参数$β > 1$，$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$X$的简单随机样本，求：(1)$β$的矩估计量；(2)$β$的最大似然估计量．', '[]', '(1)$β$的矩估计量为$\\hat{β} = \\frac{\\bar{X}}{\\bar{X}-1}$，其中$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$。
(2)$β$的最大似然估计量为$\\hat{β} = \\frac{n}{\\sum_{i=1}^{n} \\ln X_{i}}$。
', '
首先，由总体分布函数$F(x, β)$求导得到概率密度函数（PDF）。
当$x > 1$时，


$$
f(x) = \\frac{d}{dx}F(x, β) = βx^{−β-1};
$$

当$x ≤ 1$时，


$$
f(x) = 0.
$$


(1) 矩估计量
计算总体均值：

$$
E \\lbrack X \\rbrack  = \\int_{1}^{∞} xf(x) dx = \\int_{1}^{∞} x ⋅ βx^{−β-1} dx = β \\int_{1}^{∞} x^{−β} dx.
$$

由于$β > 1$，积分


$$
\\int_{1}^{∞} x^{−β} dx = \\frac{1}{β - 1},
$$

因此


$$
E \\lbrack X \\rbrack  = β ⋅ \\frac{1}{β - 1} = \\frac{β}{β - 1}.
$$

设样本均值$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$等于总体均值，即


$$
\\bar{X} = \\frac{β}{β - 1}.
$$

解方程得


$$
β = \\frac{\\bar{X}}{\\bar{X} - 1},
$$

因此矩估计量为


$$
\\hat{β} = \\frac{\\bar{X}}{\\bar{X} - 1}.
$$


(2) 最大似然估计量
似然函数为


$$
L(β) = \\prod_{i=1}^{n} f(X_{i}) = β^{n} \\prod_{i=1}^{n} X_{i}^{−β-1}.
$$

取对数得


$$
l(β) = \\ln L(β) = n \\ln β - (β + 1) \\sum_{i=1}^{n} \\ln X_{i}.
$$

对$β$求导并令导数为零：

$$
\\frac{dl}{dβ} = \\frac{n}{β} - \\sum_{i=1}^{n} \\ln X_{i} = 0,
$$

解得


$$
β = \\frac{n}{\\sum_{i=1}^{n} \\ln X_{i}}.
$$

二阶导数为


$$
\\frac{d^{2}l}{dβ^{2}} = −\\frac{n}{β^{2}} < 0,
$$

故为最大值点，因此最大似然估计量为


$$
\\hat{β} = \\frac{n}{\\sum_{i=1}^{n} \\ln X_{i}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:07', 9, 'Mogullzr', '2026-01-29 14:13:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1657');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1657');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1657');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1658, '2004年考研数学卷2第1题', '简单', '考研数学2004年卷2真题', '设$f(x) = \\lim_{n→∞} \\frac{(n-1)x}{nx^{2}+1}$，则$f(x)$的间断点为$x =$______．', '[]', '
0
', '
函数$f(x) = \\lim_{n→∞} \\frac{(n-1)x}{nx^{2}+1}$的极限需要分情况讨论。
当$x \\neq 0$时，分子和分母同时除以$n$，得到：


$$
f(x) = \\lim_{n→∞} \\frac{(1 - \\frac{1}{n}) x}{x^{2} + \\frac{1}{n}} = \\frac{x}{x^{2}} = \\frac{1}{x}
$$

当$x = 0$时，直接代入得：


$$
f(0) = \\lim_{n→∞} \\frac{(n - 1) ⋅ 0}{n ⋅ 0 + 1} = 0
$$

因此，函数可表示为：


$$
f(x) = \\begin{cases} \\frac{1}{x} & x \\neq 0 \\\\ 0 & x = 0 \\end{cases}
$$

在$x = 0$处，函数值为 0，但当$x → 0$时，$\\frac{1}{x}$趋于无穷大，故$x = 0$是间断点。对于$x \\neq 0$，函数$\\frac{1}{x}$连续，故无其他间断点。
综上，间断点为$x = 0$。
', 9, 'Mogullzr', '2026-01-29 14:13:09', 9, 'Mogullzr', '2026-01-29 14:13:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1658');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1658');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1658');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1659, '2004年考研数学卷2第2题', '简单', '考研数学2004年卷2真题', '设函数$y(x)$由参数方程$\\begin{cases} x = t^{3} + 3t + 1 \\\\ y = t^{3} - 3t + 1 \\end{cases}$确定，则曲线$y = y(x)$向上凸的$x$取值范围为 ______．', '[]', '$(−∞, 1 \\rbrack$
', '由参数方程可得


$$
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{3t^{2} - 3}{3t^{2} + 3} = \\frac{t^{2} - 1}{t^{2} + 1} = 1 - \\frac{2}{t^{2} + 1},
$$



$$
\\begin{array}{cc}
\\frac{d^{2}y}{dx^{2}} & = \\frac{d}{dt} (\\frac{dy}{dx}) \\frac{dt}{dx} \\\\
 & = (1 - \\frac{2}{t^{2} + 1})^{′} ⋅ \\frac{1}{3(t^{2} + 1)} \\\\
 & = \\frac{4t}{(t^{2} + 1)2} ⋅ \\frac{1}{3(t^{2} + 1)} \\\\
\\end{array}
$$

令$\\frac{d^{2}y}{dx^{2}} < 0,  t < 0$。又$x^{′}(t) = 3t^{2} + 3 > 0$，所以$x(t)$单调增。当$t = 0$时，$x = 1$，当$t → −∞$时，$x → −∞$。从而$x ∈ (−∞, 1 \\rbrack$时，曲线是向上凸的。
', 9, 'Mogullzr', '2026-01-29 14:13:09', 9, 'Mogullzr', '2026-01-29 14:13:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1659');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1659');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1659');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1660, '2004年考研数学卷2第3题', '简单', '考研数学2004年卷2真题', '
$$
\\int_{1}^{+∞}   \\frac{dx}{x\\sqrt{x^{2} - 1}} =
$$
', '[]', '$\\frac{π}{2}$
', '考虑积分$\\int_{1}^{+∞} \\frac{dx}{x\\sqrt{x^{2}-1}}$。使用三角代换，令$x = sec θ$，则$dx = sec θ \\tan θ dθ$，且$\\sqrt{x^{2} - 1} = \\tan θ$。当$x = 1$时，$sec θ = 1$，即$θ = 0$；当$x → +∞$时，$sec θ → +∞$，即$θ → \\frac{π}{2}$。代入积分得：

$$
\\int_{1}^{+∞} \\frac{dx}{x\\sqrt{x^{2} - 1}} = \\int_{0}^{\\frac{π}{2}} \\frac{sec θ \\tan θ dθ}{sec θ ⋅ \\tan θ} = \\int_{0}^{\\frac{π}{2}} dθ = θ∣_{0}^{\\frac{π}{2}} = \\frac{π}{2}.
$$

因此，积分值为$\\frac{π}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1660');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1660');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1660');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1661, '2004年考研数学卷2第4题', '简单', '考研数学2004年卷2真题', '设函数$z = z(x, y)$由方程$z = e^{2x-3z} + 2y$确定，则$3\\frac{∂z}{∂x} + \\frac{∂z}{∂y} =$______．', '[]', '
2
', '
给定方程$z = e^{2x-3z} + 2y$，两边同时对$x$和$y$求偏导。
设$F(x, y, z) = z - e^{2x-3z} - 2y = 0$，则


$$
\\frac{∂F}{∂x} = −2e^{2x-3z},  \\frac{∂F}{∂y} = −2,  \\frac{∂F}{∂z} = 1 + 3e^{2x-3z}.
$$

由隐函数求导公式，


$$
\\frac{∂z}{∂x} = −\\frac{∂F/∂x}{∂F/∂z} = \\frac{2e^{2x-3z}}{1 + 3e^{2x-3z}},  \\frac{∂z}{∂y} = −\\frac{∂F/∂y}{∂F/∂z} = \\frac{2}{1 + 3e^{2x-3z}}.
$$

于是，


$$
3\\frac{∂z}{∂x} + \\frac{∂z}{∂y} = \\frac{6e^{2x-3z}}{1 + 3e^{2x-3z}} + \\frac{2}{1 + 3e^{2x-3z}} = \\frac{6e^{2x-3z} + 2}{1 + 3e^{2x-3z}} = \\frac{2(3e^{2x-3z} + 1)}{1 + 3e^{2x-3z}} = 2.
$$

因此，答案为 2。
', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1661');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1661');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1661');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1662, '2004年考研数学卷2第5题', '简单', '考研数学2004年卷2真题', '微分方程$(y + x^{3})dx - 2xdy = 0$满足$y∣_{x=1} = \\frac{6}{5}$的特解为 ______．', '[]', '
$y = \\frac{1}{5}x^{3} + \\sqrt{x}$
', '
原方程变形为$\\frac{dy}{dx} - \\frac{1}{2x}y = \\frac{1}{2}x^{2}$，则由一阶线性微分方程的通解公式，可得（由初始条件可设$x > 0$）

$$
\\begin{array}{c}
y = e^{∫ \\frac{1}{2x}dx}  \\lbrack ∫ \\frac{1}{2}x^{2}e^{− ∫ \\frac{1}{2x}dx}dx + C \\rbrack  = e^{\\frac{1}{2} \\ln x}  \\lbrack ∫ \\frac{1}{2}x^{2}e^{−\\frac{1}{2} \\ln x}dx + C \\rbrack  \\\\
= \\sqrt{x}  \\lbrack ∫ \\frac{1}{2}x^{2}dx + C \\rbrack  = \\sqrt{x}  \\lbrack \\frac{1}{5}x^{\\frac{5}{2}} + C \\rbrack  . \\\\
\\end{array}
$$

再由$y(1) = \\frac{6}{5}$得$C = 1$，从而特解为$y = \\frac{1}{5}x^{3} + \\sqrt{x}$。
', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1662');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1662');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1662');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1663, '2004年考研数学卷2第6题', '', '考研数学2004年卷2真题', '/problems/other/1639', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1664, '2004年考研数学卷2第7题', '', '考研数学2004年卷2真题', '/problems/other/1641', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1665, '2004年考研数学卷2第8题', '简单', '考研数学2004年卷2真题', '设$f(x) = ∣x(1 - x)∣$，则', '[''$x = 0$是$f(x)$的极值点，但$(0, 0)$不是曲线$y = f(x)$的拐点．'', ''$x = 0$不是$f(x)$的极值点，但$(0, 0)$是曲线$y = f(x)$的拐点．'', ''$x = 0$是$f(x)$的极值点，且$(0, 0)$是曲线$y = f(x)$的拐点．'', ''$x = 0$不是$f(x)$的极值点，$(0, 0)$也不是曲线$y = f(x)$的拐点．'']', "['A']", '
1. 极值点判断：函数$f(x) = ∣x(1 - x)∣$。
由于绝对值的性质，对于任意实数$x$，都有$f(x) ≥ 0$。
当$x = 0$时，$f(0) = ∣0(1 - 0)∣ = 0$。
因此，$f(0)$是函数的最小值（也是极小值）。
所以，$x = 0$是$f(x)$的极值点。2. 拐点判断：拐点（Inflection Point）通常定义为曲线上凹凸性发生改变的点，且该点处应存在切线（即函数连续且光滑，或者有垂直切线）。更重要的是，严格的极值点一定不是拐点。让我们具体看$x = 0$附近的凹凸性：当$x < 0$时，$x(1 - x) < 0$，所以$f(x) = −(x - x^{2}) = x^{2} - x$。
二阶导数$f^{′′}(x) = 2 > 0$，曲线向下凸（凹口向上）。当$0 < x < 1$时，$x(1 - x) > 0$，所以$f(x) = x - x^{2}$。
二阶导数$f^{′′}(x) = −2 < 0$，曲线向上凸（凹口向下）。虽然在$x = 0$两侧凹凸性发生了改变（从凹变凸），但是：导数不存在：$f(x)$在$x = 0$处的左导数为$−1$，右导数为$1$，导数不相等，因此在该点不可导，不存在切线。该点是一个“尖点”。极值排斥拐点：既然$x = 0$已经是严格极小值点，图像在该点附近位于切线（如果存在广义切线）的同一侧，并未“穿过”切线。几何直观上，该点是“V”字形的底部，而不是“S”字形的转折处。因此，$(0, 0)$不是曲线$y = f(x)$的拐点。综上所述，$x = 0$是极值点，但不是拐点。', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1665');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1665');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1665');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1666, '2004年考研数学卷2第9题', '简单', '考研数学2004年卷2真题', '$\\lim_{n→∞} \\ln \\sqrt{(1 + \\frac{1}{n})^{2} (1 + \\frac{2}{n})^{2} ⋯ (1 + \\frac{n}{n})^{2}}$等于', '[''$\\\\int_{1}^{2} \\\\ln^{2} xdx$．'', ''$2 \\\\int_{1}^{2} \\\\ln xdx$．'', ''$2 \\\\int_{1}^{2} \\\\ln(1 + x)dx$．'', ''$\\\\int_{1}^{2} \\\\ln^{2}(1 + x)dx$．'']', "['B']", '
由对数性质和定积分的定义可得
$$
\\lim_{n→∞} \\ln \\sqrt{(1 + \\frac{1}{n})^{2} (1 + \\frac{2}{n})^{2} ⋯ (1 + \\frac{n}{n})^{2}}
$$

$$
= \\lim_{n→∞} \\frac{2}{n}  \\lbrack \\ln (1 + \\frac{1}{n}) + \\ln (1 + \\frac{2}{n}) + ⋯ + \\ln (1 + \\frac{n}{n}) \\rbrack
$$

$$
= \\lim_{n→∞} 2 \\sum_{i=1}^{n} \\ln (1 + \\frac{i}{n}) \\frac{1}{n} = 2 \\int_{0}^{1} \\ln(1 + x) dx = 2 \\int_{1}^{2} \\ln t dt = 2 \\int_{1}^{2} \\ln x dx.
$$
', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1666');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1666');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1666');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1667, '2004年考研数学卷2第10题', '', '考研数学2004年卷2真题', '/problems/other/1642', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1668, '2004年考研数学卷2第11题', '简单', '考研数学2004年卷2真题', '微分方程$y^{′′} + y = x^{2} + 1 + \\sin x$的特解形式可设为', '[''$y^{∗} = ax^{2} + bx + c + x(A \\\\sin x + B \\\\cos x)$．'', ''$y^{∗} = x(ax^{2} + bx + c + A \\\\sin x + B \\\\cos x)$．'', ''$y^{∗} = ax^{2} + bx + c + A \\\\sin x$．'', ''$y^{∗} = ax^{2} + bx + c + A \\\\cos x$．'']', "['A']", '
微分方程$y^{′′} + y = x^{2} + 1 + \\sin x$是二阶线性非齐次方程。
齐次方程$y^{′′} + y = 0$的特征方程为$r^{2} + 1 = 0$，解得$r = ±i$，齐次解为

$$
y_{h} = C_{1} \\cos x + C_{2} \\sin x
$$
非齐次项$x^{2} + 1 + \\sin x$包含多项式部分$x^{2} + 1$和三角函数部分$\\sin x$。多项式部分$x^{2} + 1$与齐次解无重叠，特解形式设为$ax^{2} + bx + c$；三角函数部分$\\sin x$与齐次解中的$\\sin x$重叠，因此需乘以$x$，特解形式设为$x(A \\sin x + B \\cos x)$。结合两者，特解形式为

$$
y^{∗} = ax^{2} + bx + c + x(A \\sin x + B \\cos x)
$$
对应选项 A。选项 B 错误地在整个表达式上乘以$x$；选项 C 和 D 未对$\\sin x$乘以$x$且未包含完整三角函数形式。', 9, 'Mogullzr', '2026-01-29 14:13:10', 9, 'Mogullzr', '2026-01-29 14:13:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1668');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1668');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1668');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1669, '2004年考研数学卷2第12题', '简单', '考研数学2004年卷2真题', '设函数$f(u)$连续，区域$D = \\{(x, y)∣x^{2} + y^{2} ≤ 2y\\}$，则$\\iint_{D} f(xy)dxdy$等于', '[''$\\\\int_{−1}^{1} dx \\\\int_{−\\\\sqrt{1-x^{2}}}^{\\\\sqrt{1-x^{2}}} f(xy)dy$.'', ''$2 \\\\int_{0}^{2} dy \\\\int_{0}^{\\\\sqrt{2y-y^{2}}} f(xy)dx$.'', ''$\\\\int_{0}^{π} dθ \\\\int_{0}^{2 \\\\sin θ} f(r^{2} \\\\sin θ \\\\cos θ)dr$.'', ''$\\\\int_{0}^{π} dθ \\\\int_{0}^{2 \\\\sin θ} f(r^{2} \\\\sin θ \\\\cos θ)rdr$.'']', "['D']", '区域$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 2y\\}$可化为$x^{2} + (y - 1)2 ≤ 1$，表示圆心在$(0, 1)$、半径为 1 的圆。在极坐标下，令$x = r \\cos θ$，$y = r \\sin θ$，则区域条件变为$r^{2} ≤ 2r \\sin θ$，即$r ≤ 2 \\sin θ$，且$θ$的取值范围为$0 ≤ θ ≤ π$（因为$\\sin θ ≥ 0$）。二重积分在极坐标下的面积元素为$r dr dθ$，被积函数$f(xy)$变为$f(r^{2} \\sin θ \\cos θ)$。因此，积分化为：
$$
\\iint_{D} f(xy) dx dy = \\int_{0}^{π} dθ \\int_{0}^{2 \\sin θ} f(r^{2} \\sin θ \\cos θ) r dr.
$$
选项 D 与此一致。选项 A 描述的是单位圆$x^{2} + y^{2} ≤ 1$，与区域$D$不符。选项 B 在直角坐标下积分时，假设了对称性，但$f(xy)$不一定关于$x$对称，因此不正确。选项 C 在极坐标下缺少$r$，面积元素不正确。故正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1669');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1669');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '1669');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1670, '2004年考研数学卷2第13题', '', '考研数学2004年卷2真题', '/problems/other/1645', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1671, '2004年考研数学卷2第14题', '', '考研数学2004年卷2真题', '/problems/other/1646', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1672, '2004年考研数学卷2第15题', '简单', '考研数学2004年卷2真题', '（本题满分 10 分）求极限$\\lim_{x→0} \\frac{1}{x^{3}}  \\lbrack (\\frac{2+\\cos x}{3})^{x} - 1 \\rbrack$．', '[]', '

$$
−\\frac{1}{6}​
$$

', '考虑极限$\\lim_{x→0} \\frac{1}{x^{3}}  \\lbrack (\\frac{2+\\cos x}{3})^{x} - 1 \\rbrack$。
令$f(x) = (\\frac{2+\\cos x}{3})^{x} = e^{x \\ln(\\frac{2+\\cos x}{3})}$，则原极限化为：

$$
\\lim_{x→0} \\frac{e^{x \\ln(\\frac{2+\\cos x}{3})} - 1}{x^{3}}.
$$

当$x → 0$时，指数部分$x \\ln (\\frac{2+\\cos x}{3}) → 0$，因此使用泰勒展开。
首先，展开$\\cos x$：

$$
\\cos x = 1 - \\frac{x^{2}}{2!} + \\frac{x^{4}}{4!} - ⋯ = 1 - \\frac{x^{2}}{2} + \\frac{x^{4}}{24} - ⋯  ,
$$

所以：

$$
2 + \\cos x = 3 - \\frac{x^{2}}{2} + \\frac{x^{4}}{24} - ⋯  ,
$$



$$
\\frac{2 + \\cos x}{3} = 1 - \\frac{x^{2}}{6} + \\frac{x^{4}}{72} - ⋯  .
$$

令$u = −\\frac{x^{2}}{6} + \\frac{x^{4}}{72} - ⋯$，则：

$$
\\ln (\\frac{2 + \\cos x}{3}) = \\ln(1 + u) = u - \\frac{u^{2}}{2} + \\frac{u^{3}}{3} - ⋯  .
$$

计算$u$和$u^{2}$：

$$
u = −\\frac{x^{2}}{6} + \\frac{x^{4}}{72} + O(x^{6}),
$$



$$
u^{2} = (−\\frac{x^{2}}{6})^{2} + 2 ⋅ (−\\frac{x^{2}}{6}) ⋅ \\frac{x^{4}}{72} + ⋯ = \\frac{x^{4}}{36} + O(x^{6}),
$$



$$
u^{3} = O(x^{6}).
$$

代入得：

$$
\\begin{array}{cc}
\\ln(1 + u) & = (−\\frac{x^{2}}{6} + \\frac{x^{4}}{72}) - \\frac{1}{2} ⋅ \\frac{x^{4}}{36} + O(x^{6}) \\\\
 & = −\\frac{x^{2}}{6} + \\frac{x^{4}}{72} - \\frac{x^{4}}{72} + O(x^{6}) \\\\
\\end{array}
$$

因此：

$$
x \\ln (\\frac{2 + \\cos x}{3}) = x (−\\frac{x^{2}}{6} + O(x^{6})) = −\\frac{x^{3}}{6} + O(x^{7}).
$$

于是：

$$
(\\frac{2 + \\cos x}{3})^{x} - 1 = e^{x \\ln(\\frac{2+\\cos x}{3})} - 1 = e^{−\\frac{x^{3}}{6}+O(x^{7})} - 1.
$$

当$x → 0$时，令$v = −\\frac{x^{3}}{6} + O(x^{7})$，则$e^{v} - 1 = v + \\frac{v^{2}}{2} + ⋯ = −\\frac{x^{3}}{6} + O(x^{7})$（因为$v^{2} = O(x^{6})$）。
代入原极限：

$$
\\lim_{x→0} \\frac{−\\frac{x^{3}}{6} + O(x^{7})}{x^{3}} = \\lim_{x→0} (−\\frac{1}{6} + O(x^{4})) = −\\frac{1}{6}.
$$

故极限为$−\\frac{1}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1672');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1672');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1672');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1673, '2004年考研数学卷2第16题', '简单', '考研数学2004年卷2真题', '（本题满分 10 分）设函数$f(x)$在$(−∞, +∞)$上有定义，在区间$\\lbrack 0, 2 \\rbrack$上，$f(x) = x(x^{2} - 4)$，
若对任意的$x$都满足$f(x) = kf(x + 2)$，其中$k$为常数．(1) 写出$f(x)$在$\\lbrack −2, 0 \\rbrack$上的表达式；(2) 问$k$为何值时，$f(x)$在$x = 0$处可导．', '[]', '
(1)$f(x) = kx(x + 2)(x + 4)$，其中$x ∈  \\lbrack −2, 0 \\rbrack$
(2)$k = −\\frac{1}{2}$
', '
(Ⅰ) 当$−2 ≤ x < 0$，即$0 ≤ x + 2 < 2$时，

$$
f(x) = kf(x + 2) = k(x + 2) \\lbrack (x + 2)2 - 4 \\rbrack  = kx(x + 2)(x + 4).
$$

(Ⅱ) 由题设$f(0) = 0$,

$$
f_{+}^{′}(0) = \\lim_{x→0^{+}} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0^{+}} \\frac{x(x^{2} - 4) - 0}{x} = −4,
$$


$$
f^{′}(0) = \\lim_{x→0^{-}} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0^{-}} \\frac{kx(x + 2)(x + 4) - 0}{x} = 8k.
$$

令$f^{′}(0) = f_{+}^{′}(0)$，得$k = −\\frac{1}{2}$。即当$k = −\\frac{1}{2}$时，$f(x)$在$x = 0$处可导。
', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1673');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1673');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1673');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1674, '2004年考研数学卷2第17题', '简单', '考研数学2004年卷2真题', '（本题满分 11 分）设$f(x) = \\int_{x}^{x+\\frac{π}{2}} ∣ \\sin t∣dt$．(1) 证明$f(x)$是以$π$为周期的周期函数；(2) 求$f(x)$的值域．', '[]', '
(1)$f(x)$是以$π$为周期的周期函数。
(2)$f(x)$的值域为$\\lbrack 2 - \\sqrt{2}, \\sqrt{2} \\rbrack$。
', '
(Ⅰ) 令$t = u + π$。则有


$$
\\begin{array}{cc}
f(x + π) & = \\int_{x+π}^{x+\\frac{3π}{2}} ∣ \\sin t∣ dt \\\\
 & = \\int_{x}^{x+\\frac{π}{2}} ∣ \\sin(u + π)∣ d(u + π) \\\\
 & = \\int_{x}^{x+\\frac{π}{2}} ∣ \\sin u∣ du \\\\
\\end{array}
$$

故$f(x)$是以$π$为周期的周期函数。

(Ⅱ) 因为$f(x)$是以$π$为周期的周期函数，故只需在$\\lbrack 0, π \\rbrack$上讨论其值域。令


$$
f^{′}(x) = ​\\sin (x + \\frac{π}{2})​ - ∣ \\sin x∣ = ∣ \\cos x∣ - ∣ \\sin x∣ = 0,
$$

在区间$\\lbrack 0, π \\rbrack$内求得驻点$x_{1} = \\frac{π}{4}$，$x_{2} = \\frac{3π}{4}$。计算


$$
\\begin{array}{c}
f (\\frac{π}{4}) = \\int_{\\frac{π}{4}}^{\\frac{3π}{4}} ∣ \\sin t∣ dt = \\int_{\\frac{π}{4}}^{\\frac{3π}{4}} \\sin t dt = \\sqrt{2}, \\\\
f (\\frac{3π}{4}) = \\int_{\\frac{3π}{4}}^{\\frac{5π}{4}} ∣ \\sin t∣ dt = \\int_{\\frac{3π}{4}}^{π} \\sin t dt - \\int_{π}^{\\frac{5π}{4}} \\sin t dt = 2 - \\sqrt{2}, \\\\
f(0) = \\int_{0}^{\\frac{π}{2}} ∣ \\sin t∣ dt = \\int_{0}^{\\frac{π}{2}} \\sin t dt = 1, \\\\
\\end{array}
$$

因此$f(x)$的最小值是$2 - \\sqrt{2}$，最大值是$\\sqrt{2}$。故$f(x)$的值域是$\\lbrack 2 - \\sqrt{2}, \\sqrt{2} \\rbrack$。
', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1674');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1674');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1674');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1675, '2004年考研数学卷2第18题', '简单', '考研数学2004年卷2真题', '（本题满分 12 分）曲线$y = \\frac{e^{x}+e^{−x}}{2}$与直线$x = 0$,$x = t$（$t > 0$）及$y = 0$围成一曲边梯形．
该曲边梯形绕$x$轴旋转一周得一旋转体，其体积为$V(t)$，侧面积为$S(t)$，在$x = t$处的底面积为$F(t)$．(1) 求$\\frac{S(t)}{V(t)}$的值；(2) 计算极限$\\lim_{t→+∞} \\frac{S(t)}{F(t)}$．', '[]', '
(1)$\\frac{S(t)}{V(t)} = 2$
(2)$\\lim_{t→+∞} \\frac{S(t)}{F(t)} = 1$
', '
(1) 曲线$y = \\frac{e^{x}+e^{−x}}{2} = \\cosh x$。旋转体体积公式为$V(t) = π \\int_{0}^{t} \\lbrack y(x) \\rbrack 2 dx = π \\int_{0}^{t} \\cosh^{2} x dx$。侧面积公式为$S(t) = 2π \\int_{0}^{t} y(x)\\sqrt{1 +  \\lbrack y^{′}(x) \\rbrack 2} dx$。由于$y^{′} = \\sinh x$，有$\\sqrt{1 + (y^{′})2} = \\sqrt{1 + \\sinh^{2} x} = \\cosh x$，所以$S(t) = 2π \\int_{0}^{t} \\cosh x ⋅ \\cosh x dx = 2π \\int_{0}^{t} \\cosh^{2} x dx$。因此，


$$
\\frac{S(t)}{V(t)} = \\frac{2π \\int_{0}^{t} \\cosh^{2} x dx}{π \\int_{0}^{t} \\cosh^{2} x dx} = 2.
$$

(2) 底面积$F(t) = π \\lbrack y(t) \\rbrack 2 = π \\cosh^{2} t$。于是，


$$
\\frac{S(t)}{F(t)} = \\frac{2π \\int_{0}^{t} \\cosh^{2} x dx}{π \\cosh^{2} t} = \\frac{2 \\int_{0}^{t} \\cosh^{2} x dx}{\\cosh^{2} t}.
$$

考虑极限$\\lim_{t→+∞} \\frac{2 \\int_{0}^{t} \\cosh^{2} x dx}{\\cosh^{2} t}$。该极限为$\\frac{∞}{∞}$型，应用洛必达法则。令$g(t) = \\int_{0}^{t} \\cosh^{2} x dx$，则$g^{′}(t) = \\cosh^{2} t$。分母导数为$\\frac{d}{dt} \\cosh^{2} t = 2 \\cosh t \\sinh t = \\sinh 2t$。所以，


$$
\\lim_{t→+∞} \\frac{2g(t)}{\\cosh^{2} t} = \\lim_{t→+∞} \\frac{2g^{′}(t)}{\\frac{d}{dt} \\cosh^{2} t} = \\lim_{t→+∞} \\frac{2 \\cosh^{2} t}{\\sinh 2t}.
$$

由于$\\sinh 2t = 2 \\sinh t \\cosh t$，有


$$
\\frac{2 \\cosh^{2} t}{\\sinh 2t} = \\frac{2 \\cosh^{2} t}{2 \\sinh t \\cosh t} = \\frac{\\cosh t}{\\sinh t} = coth t.
$$

因此，


$$
\\lim_{t→+∞} coth t = 1.
$$

故极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:13:11', 9, 'Mogullzr', '2026-01-29 14:13:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1675');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1675');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1675');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1676, '2004年考研数学卷2第19题', '', '考研数学2004年卷2真题', '/problems/other/1649', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:12', 9, 'Mogullzr', '2026-01-29 14:13:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1677, '2004年考研数学卷2第20题', '', '考研数学2004年卷2真题', '/problems/other/1650', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:12', 9, 'Mogullzr', '2026-01-29 14:13:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1678, '2004年考研数学卷2第21题', '简单', '考研数学2004年卷2真题', '（本题满分 10 分）设$z = f(x^{2} - y^{2}, e^{xy})$，其中$f$具有连续二阶偏导数，
求$\\frac{∂z}{∂x}$，$\\frac{∂z}{∂y}$，$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂z}{∂x} = 2xf_{1} + ye^{xy}f_{2}
$$



$$
\\frac{∂z}{∂y} = −2yf_{1} + xe^{xy}f_{2}
$$



$$
\\frac{∂^{2}z}{∂x∂y} = −4xyf_{11} + 2e^{xy}(x^{2} - y^{2})f_{12} + e^{xy}(1 + xy)f_{2} + xye^{2xy}f_{22}
$$

其中$f_{1} = \\frac{∂f}{∂u}$,$f_{2} = \\frac{∂f}{∂v}$,$f_{11} = \\frac{∂^{2}f}{∂u^{2}}$,$f_{12} = \\frac{∂^{2}f}{∂u∂v}$,$f_{22} = \\frac{∂^{2}f}{∂v^{2}}$, 且$u = x^{2} - y^{2}$,$v = e^{xy}$.
', '设$u = x^{2} - y^{2}$,$v = e^{xy}$, 则$z = f(u, v)$. 由链式法则，有：

$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u} ⋅ \\frac{∂u}{∂x} + \\frac{∂f}{∂v} ⋅ \\frac{∂v}{∂x} = f_{1} ⋅ 2x + f_{2} ⋅ ye^{xy} = 2xf_{1} + ye^{xy}f_{2}.
$$



$$
\\frac{∂z}{∂y} = \\frac{∂f}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂f}{∂v} ⋅ \\frac{∂v}{∂y} = f_{1} ⋅ (−2y) + f_{2} ⋅ xe^{xy} = −2yf_{1} + xe^{xy}f_{2}.
$$

接下来求$\\frac{∂^{2}z}{∂x∂y}$. 对$\\frac{∂z}{∂x}$求关于$y$的偏导：

$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (2xf_{1} + ye^{xy}f_{2}) .
$$

分别计算两项：

$$
\\begin{array}{cc}
\\frac{∂}{∂y}(2xf_{1}) & = 2x ⋅ \\frac{∂f_{1}}{∂y} \\\\
 & = 2x (\\frac{∂f_{1}}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂f_{1}}{∂v} ⋅ \\frac{∂v}{∂y}) \\\\
 & = 2x (f_{11} ⋅ (−2y) + f_{12} ⋅ xe^{xy}) \\\\
\\end{array}
$$



$$
\\frac{∂}{∂y}(ye^{xy}f_{2}) = \\frac{∂}{∂y}(ye^{xy}) ⋅ f_{2} + ye^{xy} ⋅ \\frac{∂f_{2}}{∂y}.
$$

其中：

$$
\\frac{∂}{∂y}(ye^{xy}) = e^{xy} + y ⋅ e^{xy} ⋅ x = e^{xy}(1 + xy),
$$



$$
\\frac{∂f_{2}}{∂y} = \\frac{∂f_{2}}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂f_{2}}{∂v} ⋅ \\frac{∂v}{∂y} = f_{21} ⋅ (−2y) + f_{22} ⋅ xe^{xy}.
$$

由$f$具有连续二阶偏导数，有$f_{12} = f_{21}$，所以：

$$
\\frac{∂f_{2}}{∂y} = f_{12} ⋅ (−2y) + f_{22} ⋅ xe^{xy} = −2yf_{12} + xe^{xy}f_{22}.
$$

因此：

$$
\\begin{array}{cc}
\\frac{∂}{∂y}(ye^{xy}f_{2}) & = e^{xy}(1 + xy)f_{2} + ye^{xy} (−2yf_{12} + xe^{xy}f_{22}) \\\\
 & = e^{xy}(1 + xy)f_{2} - 2y^{2}e^{xy}f_{12} + xye^{2xy}f_{22}. \\\\
\\end{array}
$$

将两部分相加：

$$
\\frac{∂^{2}z}{∂x∂y} = (−4xyf_{11} + 2x^{2}e^{xy}f_{12}) + (e^{xy}(1 + xy)f_{2} - 2y^{2}e^{xy}f_{12} + xye^{2xy}f_{22}) .
$$

合并同类项：

$$
\\frac{∂^{2}z}{∂x∂y} = −4xyf_{11} + 2e^{xy}(x^{2} - y^{2})f_{12} + e^{xy}(1 + xy)f_{2} + xye^{2xy}f_{22}.
$$

其中$u = x^{2} - y^{2}$，故$x^{2} - y^{2} = u$，但为保持表达式一致，未代入。
', 9, 'Mogullzr', '2026-01-29 14:13:12', 9, 'Mogullzr', '2026-01-29 14:13:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1678');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1678');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1678');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1679, '2004年考研数学卷2第22题', '简单', '考研数学2004年卷2真题', '（本题满分 9 分）设有齐次线性方程组
$$
\\begin{cases} = 0 \\\\ = 0 \\\\ = 0 \\\\ = 0. \\end{cases}
$$
试问$a$取何值时，该方程组有非零解，并求出其通解．', '[]', '
当$a = 0$或$a = −10$时，方程组有非零解。
当$a = 0$时，通解为


$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = c_{1} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + c_{3} \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$

其中$c_{1}, c_{2}, c_{3}$为任意常数。
当$a = −10$时，通解为


$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
4 \\\\
\\end{array} \\right) ,
$$

其中$k$为任意常数。
', '
方程组的系数矩阵为


$$
A = \\left( \\begin{array}{cccc}
1 + a & 1 & 1 & 1 \\\\
2 & 2 + a & 2 & 2 \\\\
3 & 3 & 3 + a & 3 \\\\
4 & 4 & 4 & 4 + a \\\\
\\end{array} \\right) .
$$

齐次线性方程组有非零解当且仅当系数矩阵的行列式为零。令$∣A∣ = 0$。
矩阵$A$可写为$A = B + aI$，其中


$$
B = \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
2 & 2 & 2 & 2 \\\\
3 & 3 & 3 & 3 \\\\
4 & 4 & 4 & 4 \\\\
\\end{array} \\right) .
$$

矩阵$B$的秩为 1，其特征值为$10$（单根）和$0$（三重根），因此$A$的特征值为$10 + a$和$a$（三重根）。
行列式$∣A∣ = (10 + a) ⋅ a^{3}$。
令$∣A∣ = 0$，得$a^{3}(10 + a) = 0$，解得$a = 0$或$a = −10$。
当$a = 0$时，方程组化为


$$
x_{1} + x_{2} + x_{3} + x_{4} = 0,
$$

解空间三维，通解由自由变量$x_{2}, x_{3}, x_{4}$表示，即$x_{1} = −x_{2} - x_{3} - x_{4}$。
当$a = −10$时，方程组化为


$$
\\begin{array}{cc}
−9x_{1} + x_{2} + x_{3} + x_{4} & = 0, \\\\
2x_{1} - 8x_{2} + 2x_{3} + 2x_{4} & = 0, \\\\
3x_{1} + 3x_{2} - 7x_{3} + 3x_{4} & = 0, \\\\
\\end{array}
$$

解向量为$B$对应特征值$10$的特征向量，即$(1, 2, 3, 4)T$，通解为该向量的倍数。
', 9, 'Mogullzr', '2026-01-29 14:13:12', 9, 'Mogullzr', '2026-01-29 14:13:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1679');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1679');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1680, '2004年考研数学卷2第23题', '', '考研数学2004年卷2真题', '/problems/other/1655', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:12', 9, 'Mogullzr', '2026-01-29 14:13:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1681, '2004年考研数学卷3第1题', '简单', '考研数学2004年卷3真题', '若$\\lim_{x→0} \\frac{\\sin x}{e^{x}-a}(\\cos x - b) = 5$，则$a =$______，$b =$______．', '[]', '$a = 1$，$b = −4$
', '
给定极限$\\lim_{x→0} \\frac{\\sin x}{e^{x}-a}(\\cos x - b) = 5$。
当$x → 0$时，$\\sin x → 0$，$e^{x} → 1$，$\\cos x → 1$。
若$a \\neq 1$，则$e^{x} - a → 1 - a \\neq 0$，且$\\sin x(\\cos x - b) → 0$，因此极限为$0$，与极限值为$5$矛盾。
故$a = 1$，此时极限化为

$$
\\lim_{x→0} \\frac{\\sin x}{e^{x} - 1}(\\cos x - b)
$$

利用等价无穷小，当$x → 0$时，$\\sin x ∼ x$，$e^{x} - 1 ∼ x$，因此

$$
\\frac{\\sin x}{e^{x} - 1} ∼ 1
$$

于是极限近似为


$$
\\lim_{x→0}(\\cos x - b) = \\cos 0 - b = 1 - b
$$

设$1 - b = 5$，得$b = −4$。
验证：当$a = 1$，$b = −4$时，

$$
\\lim_{x→0} \\frac{\\sin x}{e^{x} - 1}(\\cos x + 4) → 1 × (1 + 4) = 5
$$

符合条件。
因此，$a = 1$，$b = −4$。
', 9, 'Mogullzr', '2026-01-29 14:13:14', 9, 'Mogullzr', '2026-01-29 14:13:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1681');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1681');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '1681');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1682, '2004年考研数学卷3第2题', '简单', '考研数学2004年卷3真题', '函数$f(u, v)$由关系式$f \\lbrack xg(y), y \\rbrack  = x + g(y)$确定，其中函数$g(y)$可微，
且$g(y) \\neq 0$，则$\\frac{∂^{2}f}{∂u∂v} =$______．', '[]', '$−\\frac{g^{′}(y)}{g^{2}(y)}$
', '
给定函数关系式$f \\lbrack xg(y), y \\rbrack  = x + g(y)$，其中$g(y)$可微且$g(y) \\neq 0$。
令$u = xg(y)$，$v = y$，则$x = \\frac{u}{g(v)}$。代入关系式得：


$$
f(u, v) = \\frac{u}{g(v)} + g(v)
$$

对$f(u, v)$求偏导数：
首先，对$u$求偏导：


$$
\\frac{∂f}{∂u} = \\frac{1}{g(v)}
$$

然后，对$v$求偏导：


$$
\\frac{∂^{2}f}{∂u∂v} = \\frac{∂}{∂v} (\\frac{1}{g(v)}) = −\\frac{1}{g^{2}(v)} ⋅ g^{′}(v) = −\\frac{g^{′}(v)}{g^{2}(v)}
$$

由于$v = y$，故


$$
\\frac{∂^{2}f}{∂u∂v} = −\\frac{g^{′}(y)}{g^{2}(y)}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:15', 9, 'Mogullzr', '2026-01-29 14:13:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1682');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1682');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1682');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1683, '2004年考研数学卷3第3题', '简单', '考研数学2004年卷3真题', '设$f(x) = \\begin{cases} xe^{x^{2}} & −\\frac{1}{2} ≤ x < \\frac{1}{2} \\\\ −1 & x ≥ \\frac{1}{2} \\end{cases}$，则$\\int_{ \\frac{1}{2}}^{ 2} f(x - 1)dx =$．．', '[]', '$−\\frac{1}{2}$
', '需要计算积分$\\int_{\\frac{1}{2}}^{2} f(x - 1) dx$。令$u = x - 1$，则当$x = \\frac{1}{2}$时，$u = −\\frac{1}{2}$；当$x = 2$时，$u = 1$。积分变为：

$$
\\int_{\\frac{1}{2}}^{2} f(x - 1) dx = \\int_{−\\frac{1}{2}}^{1} f(u) du
$$

函数$f(u)$定义为：

$$
f(u) = \\begin{cases} ue^{u^{2}} & −\\frac{1}{2} ≤ u < \\frac{1}{2} \\\\ −1 & u ≥ \\frac{1}{2}. \\end{cases}
$$

将积分拆分为两部分：

$$
\\int_{−\\frac{1}{2}}^{1} f(u) du = \\int_{−\\frac{1}{2}}^{\\frac{1}{2}} f(u) du + \\int_{\\frac{1}{2}}^{1} f(u) du
$$

在第一部分区间$\\lbrack −\\frac{1}{2}, \\frac{1}{2})$上，$f(u) = ue^{u^{2}}$。函数$ue^{u^{2}}$是奇函数，且在对称区间上积分，故：

$$
\\int_{−\\frac{1}{2}}^{\\frac{1}{2}} ue^{u^{2}} du = 0
$$

在第二部分区间$\\lbrack \\frac{1}{2}, 1 \\rbrack$上，$f(u) = −1$，故：

$$
\\int_{\\frac{1}{2}}^{1}(−1) du = −  \\lbrack u \\rbrack _{\\frac{1}{2}}^{1} = − (1 - \\frac{1}{2}) = −\\frac{1}{2}
$$

因此，积分结果为：

$$
0 + (−\\frac{1}{2}) = −\\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:15', 9, 'Mogullzr', '2026-01-29 14:13:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1683');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1683');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1683');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1684, '2004年考研数学卷3第4题', '简单', '考研数学2004年卷3真题', '二次型$f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{2} - x_{3})2 + (x_{3} + x_{1})2$的秩为 ______．', '[]', '$2$
', '
因为

$$
f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{2} - x_{3})2 + (x_{3} + x_{1})2
$$


$$
= 2x_{1}^{2} + 2x_{2}^{2} + 2x_{3}^{2} + 2x_{1}x_{2} + 2x_{1}x_{3} - 2x_{2}x_{3},
$$

所以二次型对应的矩阵为

$$
A = \\left( \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 2 & −1 \\\\
1 & −1 & 2 \\\\
\\end{array} \\right) .
$$

由初等变换得

$$
A → \\left( \\begin{array}{ccc}
1 & 2 & −1 \\\\
2 & 1 & 1 \\\\
1 & −1 & 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & −1 & 2 \\\\
0 & −3 & 3 \\\\
0 & −3 & 3 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & −1 & 2 \\\\
0 & −3 & 3 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

从而$r(A) = 2$，于是二次型的秩也为 2。
', 9, 'Mogullzr', '2026-01-29 14:13:15', 9, 'Mogullzr', '2026-01-29 14:13:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1684');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1684');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1685, '2004年考研数学卷3第5题', '', '考研数学2004年卷3真题', '/problems/other/1640', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:15', 9, 'Mogullzr', '2026-01-29 14:13:15', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1686, '2004年考研数学卷3第6题', '简单', '考研数学2004年卷3真题', '设总体$X$服从正态分布$N(μ_{1}, σ^{2})$，总体$Y$服从正态分布$N(μ_{2}, σ^{2})$，$X_{1}, X_{2}, ⋯ X_{n_{1}}$和$Y_{1}, Y_{2}, ⋯ Y_{n_{2}}$分别是来自总体$X$和$Y$的简单随机样本，则

$$
E  \\lbrack \\frac{\\sum_{i=1}^{n_{1}}(X_{i} - \\overline{X})2 + \\sum_{j=1}^{n_{2}}(Y_{j} - \\overline{Y})2}{n_{1} + n_{2} - 2} \\rbrack  =
$$
', '[]', '$σ^{2}$
', '


$$
E  \\lbrack \\frac{1}{n_{1} - 1} \\sum_{i=1}^{n_{1}}(X_{i} - \\overline{X})2 \\rbrack  = D(X) = σ^{2},  E  \\lbrack \\frac{1}{n_{2} - 1} \\sum_{i=1}^{n_{1}}(Y_{i} - \\overline{Y})2 \\rbrack  = D(Y) = σ^{2},
$$

所以有

$$
E  \\lbrack \\sum_{i=1}^{n_{1}}(X_{i} - \\overline{X})2 \\rbrack  = (n_{1} - 1)σ^{2},  E  \\lbrack \\sum_{i=1}^{n_{1}}(Y_{i} - \\overline{Y})2 \\rbrack  = (n_{2} - 1)σ^{2}.
$$

从而

$$
原式 = \\frac{1}{n_{1} + n_{2} - 2} \\{E  \\lbrack \\sum_{i=1}^{n_{1}}(X_{i} - \\overline{X})2 \\rbrack  + E  \\lbrack \\sum_{j=1}^{n_{2}}(Y_{j} - \\overline{Y})2 \\rbrack \\}
$$


$$
= \\frac{1}{n_{1} + n_{2} - 2}  \\lbrack (n_{1} - 1)σ^{2} + (n_{2} - 1)σ^{2} \\rbrack  = σ^{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:15', 9, 'Mogullzr', '2026-01-29 14:13:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1686');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1686');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '1686');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1687, '2004年考研数学卷3第7题', '简单', '考研数学2004年卷3真题', '函数$f(x) = \\frac{∣x∣ \\sin(x-2)}{x(x-1)(x-2)2}$在下列哪个区间内有界', '[''$(−1, 0)$．'', ''$(0, 1)$．'', ''$(1, 2)$．'', ''$(2, 3)$．'']', "['A']", '
如果$f(x)$在$(a, b)$内连续，且极限$\\lim_{x→a^{+}} f(x)$与$\\lim_{x→b^{-}} f(x)$存在，则函数$f(x)$在$(a, b)$内有界。因为
$$
\\lim_{x→−1^{+}} f(x) = \\lim_{x→−1^{+}} \\frac{−x \\sin(x - 2)}{x(x - 1)(x - 2)2} = −\\frac{\\sin 3}{18},
$$

$$
\\lim_{x→0^{-}} f(x) = \\lim_{x→0^{-}} \\frac{−x \\sin(x - 2)}{x(x - 1)(x - 2)2} = −\\frac{\\sin 2}{4},
$$

$$
\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\frac{x \\sin(x - 2)}{x(x - 1)(x - 2)2} = \\frac{\\sin 2}{4},
$$

$$
\\lim_{x→1} f(x) = \\lim_{x→1} \\frac{x \\sin(x - 2)}{x(x - 1)(x - 2)2} = ∞,
$$

$$
\\lim_{x→2} f(x) = \\lim_{x→2} \\frac{x \\sin(x - 2)}{x(x - 1)(x - 2)2} = ∞
$$
所以函数$f(x)$在$(−1, 0)$内有界，故选 (A)。', 9, 'Mogullzr', '2026-01-29 14:13:15', 9, 'Mogullzr', '2026-01-29 14:13:15', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1687');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1687');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1687');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1688, '2004年考研数学卷3第8题', '简单', '考研数学2004年卷3真题', '设$f(x)$在$(−∞, +∞)$内有定义，且$\\lim_{x→∞} f(x) = a$,$g(x) = \\begin{cases} f (\\frac{1}{x})  & x \\neq 0; \\\\ 0 & x = 0. \\end{cases}$则', '[''$x = 0$必是$g(x)$的第一类间断点．'', ''$x = 0$必是$g(x)$的第二类间断点．'', ''$x = 0$必是$g(x)$的连续点．'', ''$g(x)$在点$x = 0$处的连续性与$a$的取值有关．'']', "['D']", '
由题意可知，$\\lim_{x→∞} f(x) = a$通常是指$x → +∞$时的极限。
当$x → 0^{+}$时，$\\frac{1}{x} → +∞$，因此

$$
\\lim_{x→0^{+}} g(x) = \\lim_{x→0^{+}} f (\\frac{1}{x}) = a.
$$
当$x → 0^{-}$时，$\\frac{1}{x} → −∞$，但题目并未给出$f(x)$在$x → −∞$时的极限，所以$\\lim_{x→0^{-}} g(x)$可能不存在，也可能存在但不等于$a$。函数值$g(0) = 0$。若$a \\neq 0$，则右极限$a \\neq 0$，与$g(0) = 0$不相等，因此$g(x)$在$x = 0$处不连续。若$a = 0$，则右极限为 0，但左极限取决于$f(x)$在$−∞$处的行为，此时$g(x)$可能连续，也可能不连续。综上，$g(x)$在点$x = 0$处的连续性与$a$的取值有关。选项 A、B、C 均不一定成立，故正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1688');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1688');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1688');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1689, '2004年考研数学卷3第9题', '', '考研数学2004年卷3真题', '/problems/other/1665', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1690, '2004年考研数学卷3第10题', '简单', '考研数学2004年卷3真题', '设有下列命题：① 若$\\sum_{n=1}^{∞}(u_{2n-1} + u_{2n})$收敛，则$\\sum_{n=1}^{∞} u_{n}$收敛．② 若$\\sum_{n=1}^{∞} u_{n}$收敛，则$\\sum_{n=1}^{∞} u_{n+1000}$收敛．③ 若$\\lim_{n→∞} \\frac{u_{n+1}}{u_{n}} > 1$，则$\\sum_{n=1}^{∞} u_{n}$发散．④ 若$\\sum_{n=1}^{∞}(u_{n} + v_{n})$收敛，则$\\sum_{n=1}^{∞} u_{n}$，$\\sum_{n=1}^{∞} v_{n}$都收敛．则以下命题中正确的是', '[''①②．'', ''②③．'', ''③④．'', ''①④．'']', "['B']", '
对于命题①，考虑反例：设$u_{n} = (−1)n$，则

$$
\\sum_{n=1}^{∞}(u_{2n-1} + u_{2n}) = \\sum_{n=1}^{∞}(−1 + 1) = 0
$$
收敛，但

$$
\\sum_{n=1}^{∞} u_{n} = \\sum_{n=1}^{∞}(−1)n
$$
发散。因此命题①错误。对于命题②，若$\\sum_{n=1}^{∞} u_{n}$收敛，则去掉前 1000 项后的级数$\\sum_{n=1}^{∞} u_{n+1000}$也收敛，因为级数的收敛性取决于尾部，去掉有限项不改变收敛性。因此命题②正确。对于命题③，若

$$
\\lim_{n→∞} \\frac{u_{n+1}}{u_{n}} > 1,
$$
则当$n$足够大时，$∣u_{n}∣$不趋于零，实际上会趋于无穷，因此级数$\\sum_{n=1}^{∞} u_{n}$发散。这是比值判别法的结论，命题③正确。对于命题④，考虑反例：设$u_{n} = n$，$v_{n} = −n$，则

$$
\\sum_{n=1}^{∞}(u_{n} + v_{n}) = \\sum_{n=1}^{∞} 0 = 0
$$
收敛，但$\\sum_{n=1}^{∞} u_{n}$和$\\sum_{n=1}^{∞} v_{n}$均发散。因此命题④错误。综上，正确命题为②和③，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1690');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1690');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1690');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1691, '2004年考研数学卷3第11题', '简单', '考研数学2004年卷3真题', '设$f^{′}(x)$在$\\lbrack a, b \\rbrack$上连续，且$f^{′}(a) > 0,  f^{′}(b) < 0$，则下列结论中错误的是', '[''至少存在一点$x_{0} ∈ (a, b)$，使得$f(x_{0}) > f(a)$．'', ''至少存在一点$x_{0} ∈ (a, b)$，使得$f(x_{0}) > f(b)$．'', ''至少存在一点$x_{0} ∈ (a, b)$，使得$f^{′}(x_{0}) = 0$．'', ''至少存在一点$x_{0} ∈ (a, b)$，使得$f(x_{0}) = 0$．'']', "['D']", '
由导数的定义$f^{′}(a) = \\lim_{x→a^{+}} \\frac{f(x)-f(a)}{x-a} > 0$，根据极限的保号性，存在$x_{0} ∈ (a, b)$使得$\\frac{f(x_{0})-f(a)}{x_{0}-a} > 0$，即$f(x_{0}) > f(a)$，所以选项 (A) 正确。同理，$f^{′}(b) = \\lim_{x→b^{-}} \\frac{f(b)-f(x)}{b-x} < 0$，根据极限的保号性，存在$x_{0} ∈ (a, b)$使得$f(x_{0}) > f(b)$，所以选项 (B) 正确。由已知$f^{′}(x)$在$\\lbrack a, b \\rbrack$上连续，且$f^{′}(a) > 0$，$f^{′}(b) < 0$，则由介值定理，存在$x_{0} ∈ (a, b)$，使得$f^{′}(x_{0}) = 0$，所以选项 (C) 正确。令$f(x) = 4 - x^{2}$（$−1 ≤ x ≤ 1$），则$f^{′}(−1) = 2 > 0$，$f^{′}(1) = −2 < 0$，但在$\\lbrack −1, 1 \\rbrack$上$f(x) ≥ 3 > 0$，所以选项 (D) 是错误的。', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1691');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1691');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1691');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1692, '2004年考研数学卷3第12题', '简单', '考研数学2004年卷3真题', '设$n$阶矩阵$A$与$B$等价，则必有', '[''当$∣A∣ = a$($a \\\\neq 0$)时，$∣B∣ = a$．'', ''当$∣A∣ = a$($a \\\\neq 0$)时，$∣B∣ = −a$．'', ''当$∣A∣ \\\\neq 0$时，$∣B∣ = 0$．'', ''当$∣A∣ = 0$时，$∣B∣ = 0$．'']', "['D']", '
矩阵$A$与$B$等价意味着存在可逆矩阵$P$和$Q$，使得

$$
B = PAQ
$$
等价矩阵具有相同的秩，但行列式不一定相同。当$∣A∣ = 0$时，$A$的秩小于$n$，因此$B$的秩也小于$n$，从而$∣B∣ = 0$。选项 A 和 B 错误，因为当$∣A∣ \\neq 0$时，$∣B∣$不一定等于$∣A∣$或$−∣A∣$，可能因初等变换而改变。选项 C 错误，因为当$∣A∣ \\neq 0$时，$A$满秩，$B$也满秩，故$∣B∣ \\neq 0$。因此，正确选项是 D。', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1692');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1692');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1692');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1693, '2004年考研数学卷3第13题', '简单', '考研数学2004年卷3真题', '设$n$阶矩阵$A$的伴随矩阵$A^{∗} \\neq 0,$若$ξ_{1}, ξ_{2}, ξ_{3}, ξ_{4}$是非齐次线性方程组$Ax = b$的互不相等的解，则对应的齐次线性方程组$Ax = 0$的基础解系', '[''不存在．'', ''仅含一个非零解向量．'', ''含有两个线性无关的解向量．'', ''含有三个线性无关的解向量．'']', "['B']", '
因为
$$
r(A^{∗}) = \\begin{cases} 0 & r(A) < n - 1 \\\\ 1 & r(A) = n - 1 \\\\ n & r(A) = n \\end{cases}
$$
所以由$A^{∗} \\neq 0$，可得$r(A) = n - 1$或$r(A) = n$。由$ξ_{1}, ξ_{2}$是$Ax = b$的不同的解，得$ξ_{1} - ξ_{2} \\neq 0$是$Ax = 0$的解，从而$r(A) < n$，因此$r(A) = n - 1$。故基础解系所含向量个数为$n - (n - 1) = 1$。', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1693');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1693');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1693');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1694, '2004年考研数学卷3第14题', '', '考研数学2004年卷3真题', '/problems/other/1647', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1695, '2004年考研数学卷3第15题', '简单', '考研数学2004年卷3真题', '（本题满分 8 分）求$\\lim_{x→0} (\\frac{1}{\\sin^{2} x} - \\frac{\\cos^{2} x}{x^{2}})$．', '[]', '$\\frac{4}{3}$
', '
由等价无穷小量代换和洛必达法则，可得

$$
\\begin{array}{cc}
\\lim_{x→0} (\\frac{1}{\\sin^{2} x} - \\frac{\\cos^{2} x}{x^{2}}) & = \\lim_{x→0} \\frac{x^{2} - \\sin^{2} x \\cos^{2} x}{x^{2} \\sin^{2} x} \\\\
 & = \\lim_{x→0} \\frac{x^{2} - \\sin^{2} x \\cos^{2} x}{x^{4}} \\\\
 & = \\lim_{x→0} \\frac{x^{2} - \\frac{1}{4} \\sin^{2} 2x}{x^{4}} \\\\
 & = \\lim_{x→0} \\frac{2x - \\frac{1}{2} \\sin 4x}{4x^{3}} \\\\
 & = \\lim_{x→0} \\frac{\\frac{1}{2}(4x)2}{6x^{2}} \\\\
 & = \\frac{4}{3}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:16', 9, 'Mogullzr', '2026-01-29 14:13:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1695');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1695');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1695');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1696, '2004年考研数学卷3第16题', '简单', '考研数学2004年卷3真题', '（本题满分 8 分）求$\\iint_{D}(\\sqrt{x^{2} + y^{2}} + y)dσ$，
其中$D$是由圆$x^{2} + y^{2} = 4$和$(x + 1)2 + y^{2} = 1$所围成的平面区域（如图所示）．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/db5487c91b8a4219a1b22485eafae6c4.jpg)
', '[]', '$\\frac{16(3π - 2)}{9}$
', '
首先，积分区域$D$是由圆$x^{2} + y^{2} = 4$和$(x + 1)2 + y^{2} = 1$所围成的区域，即大圆内部且小圆外部的区域。由于区域$D$关于$x$轴对称，且被积函数中的$y$是关于$x$轴的奇函数，因此$\\iint_{D} y dσ = 0$。于是，

$$
\\iint_{D}(\\sqrt{x^{2} + y^{2}} + y) dσ = \\iint_{D} \\sqrt{x^{2} + y^{2}} dσ.
$$

在极坐标变换$x = r \\cos θ$,$y = r \\sin θ$下，有$\\sqrt{x^{2} + y^{2}} = r$，面积元素$dσ = r dr dθ$，所以

$$
\\iint_{D} \\sqrt{x^{2} + y^{2}} dσ = \\iint_{D} r ⋅ r dr dθ = \\iint_{D} r^{2} dr dθ.
$$

因此，原积分化为

$$
I = \\iint_{D} r^{2} dr dθ.
$$

由于$D$是大圆内部且小圆外部的区域，故

$$
\\iint_{D} r^{2} dr dθ = \\iint_{x^{2}+y^{2}≤4} r^{2} dr dθ - \\iint_{(x+1)2+y^{2}≤1} r^{2} dr dθ.
$$

计算第一个积分：

$$
A = \\iint_{x^{2}+y^{2}≤4} r^{2} dr dθ = \\int_{0}^{2π} \\int_{0}^{2} r^{2} dr dθ = \\int_{0}^{2π}  \\lbrack \\frac{r^{3}}{3} \\rbrack _{0}^{2} dθ = \\int_{0}^{2π} \\frac{8}{3} dθ = \\frac{16π}{3}.
$$

计算第二个积分。小圆$(x + 1)2 + y^{2} ≤ 1$在极坐标下表示为$r ≤ −2 \\cos θ$，其中$θ ∈  \\lbrack π/2, 3π/2 \\rbrack$，因此

$$
\\begin{array}{cc}
B & = \\iint_{(x+1)2+y^{2}≤1} r^{2} dr dθ \\\\
 & = \\int_{π/2}^{3π/2} \\int_{0}^{−2 \\cos θ} r^{2} dr dθ \\\\
 & = \\int_{π/2}^{3π/2}  \\lbrack \\frac{r^{3}}{3} \\rbrack _{0}^{−2 \\cos θ} dθ \\\\
\\end{array}
$$

计算$\\int_{π/2}^{3π/2} \\cos^{3} θ dθ$：

$$
∫ \\cos^{3} θ dθ = ∫ \\cos θ(1 - \\sin^{2} θ) dθ = \\sin θ - \\frac{1}{3} \\sin^{3} θ + C,
$$

所以

$$
\\int_{π/2}^{3π/2} \\cos^{3} θ dθ =  \\lbrack \\sin θ - \\frac{1}{3} \\sin^{3} θ \\rbrack _{π/2}^{3π/2} = (−1 + \\frac{1}{3}) - (1 - \\frac{1}{3}) = −\\frac{2}{3} - \\frac{2}{3} = −\\frac{4}{3}.
$$

于是，

$$
B = \\frac{−8}{3} ⋅ (−\\frac{4}{3}) = \\frac{32}{9}.
$$

因此，

$$
I = A - B = \\frac{16π}{3} - \\frac{32}{9} = \\frac{48π - 32}{9} = \\frac{16(3π - 2)}{9}.
$$

故所求积分为$\\frac{16(3π - 2)}{9}$。
', 9, 'Mogullzr', '2026-01-29 14:13:18', 9, 'Mogullzr', '2026-01-29 14:13:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1696');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1696');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1696');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1697, '2004年考研数学卷3第17题', '简单', '考研数学2004年卷3真题', '（本题满分 8 分）设$f(x)$,$g(x)$在$\\lbrack a, b \\rbrack$上连续，且满足
$$
\\int_{a}^{x} f(t)dt ≥ \\int_{a}^{x} g(t)dt,   x ∈  \\lbrack a, b),  \\int_{a}^{b} f(t)dt = \\int_{a}^{b} g(t)dt.
$$
证明：$\\int_{a}^{b} xf(x)dx ≤ \\int_{a}^{b} xg(x)dx$．', '[]', '见解析
', '
设$h(x) = f(x) - g(x)$，则由条件可得


$$
\\int_{a}^{x} h(t) dt ≥ 0,  x ∈  \\lbrack a, b),  \\int_{a}^{b} h(t) dt = 0.
$$

令$H(x) = \\int_{a}^{x} h(t) dt$，则$H(x) ≥ 0$对于$x ∈  \\lbrack a, b)$，且$H(b) = 0$。
考虑积分

$$
\\int_{a}^{b} xh(x) dx = \\int_{a}^{b} x dH(x).
$$

使用分部积分法：

$$
\\int_{a}^{b} x dH(x) =  \\lbrack xH(x) \\rbrack _{a}^{b} - \\int_{a}^{b} H(x) dx.
$$

由于$H(a) = 0$和$H(b) = 0$，故

$$
\\lbrack xH(x) \\rbrack _{a}^{b} = 0,
$$

因此

$$
\\int_{a}^{b} xh(x) dx = − \\int_{a}^{b} H(x) dx.
$$

由于$H(x) ≥ 0$在$\\lbrack a, b \\rbrack$上，且$H(x)$连续，故

$$
\\int_{a}^{b} H(x) dx ≥ 0,
$$

所以

$$
\\int_{a}^{b} xh(x) dx ≤ 0,
$$

即

$$
\\int_{a}^{b} xf(x) dx - \\int_{a}^{b} xg(x) dx ≤ 0,
$$

从而

$$
\\int_{a}^{b} xf(x) dx ≤ \\int_{a}^{b} xg(x) dx.
$$

证毕。
', 9, 'Mogullzr', '2026-01-29 14:13:18', 9, 'Mogullzr', '2026-01-29 14:13:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1697');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1697');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1697');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1698, '2004年考研数学卷3第18题', '简单', '考研数学2004年卷3真题', '（本题满分 9 分）设某商品的需求函数为$Q = 100 - 5P$，其中价格$P ∈ (0, 20)$，$Q$为需求量．(1) 求需求量对价格的弹性$E_{d}$($E_{d}$> 0)；(2) 推导$\\frac{dR}{dP} = Q(1 - E_{d})$（其中$R$为收益），
并用弹性$E_{d}$说明价格在何范围内变化时，降低价格反而使收益增加．', '[]', '
(1)$E_{d} = \\frac{P}{20-P}$
(2) 当$P ∈ (10, 20)$时，降低价格反而使收益增加。
', '
(I) 由于需求量对价格的弹性$E_{d} > 0$，所以

$$
E_{d} = ​\\frac{P}{Q}\\frac{dQ}{dP}​ = ​\\frac{P}{100 - 5P} ⋅ (−5)​ = \\frac{P}{20 - P}.
$$

(II) 由$R = PQ$，得

$$
\\frac{dR}{dP} = Q + P\\frac{dQ}{dP} = Q (1 + \\frac{P}{Q}\\frac{dQ}{dP}) = Q (1 + \\frac{−P}{20 - P}) = Q(1 - E_{d}).
$$

令$\\frac{dR}{dP} < 0$，可得$E_{d} > 1$，即$\\frac{P}{20-P} > 1$，解得$P > 10$。又已知$P ∈ (0, 20)$，所以当$10 < P < 20$时，收益随价格降低反而增加。
', 9, 'Mogullzr', '2026-01-29 14:13:19', 9, 'Mogullzr', '2026-01-29 14:13:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1698');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1698');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1698');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1699, '2004年考研数学卷3第19题', '简单', '考研数学2004年卷3真题', '（本题满分 9 分）设级数
$$
\\frac{x^{4}}{2 ⋅ 4} + \\frac{x^{6}}{2 ⋅ 4 ⋅ 6} + \\frac{x^{8}}{2 ⋅ 4 ⋅ 6 ⋅ 8} + ⋯  (−∞ < x < +∞)
$$
的和函数为$S(x)$．求：(1)$S(x)$所满足的一阶微分方程；(2)$S(x)$的表达式．', '[]', '
(1)$S(x)$所满足的一阶微分方程为：$S^{′}(x) - xS(x) = \\frac{x^{3}}{2}$
(2)$S(x)$的表达式为：$S(x) = e^{\\frac{x^{2}}{2}} - 1 - \\frac{x^{2}}{2}$
', '
(I) 易知$S(0) = 0$，且有


$$
S^{′}(x) = \\frac{x^{3}}{2} + \\frac{x^{5}}{2 ⋅ 4} + \\frac{x^{7}}{2 ⋅ 4 ⋅ 6} + ⋯
$$



$$
= x (\\frac{x^{2}}{2} + \\frac{x^{4}}{2 ⋅ 4} + \\frac{x^{6}}{2 ⋅ 4 ⋅ 6} + ⋯ ) = x  \\lbrack \\frac{x^{2}}{2} + S(x) \\rbrack  .
$$

因此$S(x)$满足一阶线性微分方程及相应的初始条件：


$$
S^{′}(x) - xS(x) = \\frac{x^{3}}{2},  S(0) = 0.
$$

(II) 由通解公式，上述微分方程的通解为


$$
\\begin{array}{cc}
S(x) & = e^{∫ x dx} (∫ \\frac{x^{3}}{2}e^{− ∫ x dx} dx + C) \\\\
 & = e^{\\frac{x^{2}}{2}} (∫ \\frac{x^{3}}{2}e^{−\\frac{x^{2}}{2}} dx + C) \\\\
 & = e^{\\frac{x^{2}}{2}} (− ∫ \\frac{x^{2}}{2} d (e^{−\\frac{x^{2}}{2}}) + C) \\\\
 & = e^{\\frac{x^{2}}{2}} (−\\frac{x^{2}}{2}e^{−\\frac{x^{2}}{2}} + ∫ e^{−\\frac{x^{2}}{2}} d (\\frac{x^{2}}{2}) + C) \\\\
 & = −\\frac{x^{2}}{2} - 1 + Ce^{\\frac{x^{2}}{2}}. \\\\
\\end{array}
$$

由初始条件$S(0) = 0$，得$C = 1$。故


$$
S(x) = −\\frac{x^{2}}{2} - 1 + e^{\\frac{x^{2}}{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:19', 9, 'Mogullzr', '2026-01-29 14:13:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1699');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1699');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1699');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1700, '2004年考研数学卷3第20题', '简单', '考研数学2004年卷3真题', '（本题满分 13 分）设$α_{1} = (1, 2, 0)T$,$α_{2} = (1, α + 2, −3α)T$,$α_{3} = (−1, −b - 2, α + 2b)T$,$β = (1, 3, −3)T$，试讨论当$a, b$为何值时，(1)$β$不能由$α_{1}, α_{2}, α_{3}$线性表示；(2)$β$可由$α_{1}, α_{2}, α_{3}$唯一地线性表示，并求出表示式；(3)$β$可由$α_{1}, α_{2}, α_{3}$线性表示，但表示式不唯一，并求出表示式．', '[]', '
(1) 当$a = 0$时，$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
(2) 当$a \\neq 0$且$a \\neq b$时，$β$可由$α_{1}, α_{2}, α_{3}$唯一地线性表示，表示式为：

$$
β = (1 - \\frac{1}{a}) α_{1} + \\frac{1}{a}α_{2}
$$

(3) 当$a \\neq 0$且$a = b$时，$β$可由$α_{1}, α_{2}, α_{3}$线性表示，但表示式不唯一，表示式为：

$$
β = (1 - \\frac{1}{a}) α_{1} + (\\frac{1}{a} + k) α_{2} + kα_{3}
$$

其中$k$为任意常数。
', '
设存在实数$x_{1}, x_{2}, x_{3}$使得方程组$α_{1}x_{1} + α_{2}x_{2} + α_{3}x_{3} = β$成立。记$A = (α_{1}, α_{2}, α_{3})$，对矩阵$(A, β)$作初等行变换得

$$
(A, β) = \\left( \\begin{array}{cccc}
1 & 1 & −1 & 1 \\\\
2 & a + 2 & −b - 2 & 3 \\\\
0 & −3a & a + 2b & −3 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & −1 & 1 \\\\
0 & a & −b & 1 \\\\
0 & 0 & a - b & 0 \\\\
\\end{array} \\right) .
$$

(I)当$a = 0$时，由

$$
(A, β) → \\left( \\begin{array}{cccc}
1 & 1 & −1 & 1 \\\\
0 & 0 & −b & 1 \\\\
0 & 0 & −b & 0 \\\\
\\end{array} \\right) .
$$

可知$r(A) \\neq r(A, β)$。故方程组无解，即$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
(II)当$a \\neq 0$且$a \\neq b$时，可知$r(A) = r(A, β) = 3$，故方程组有唯一解。由同解阶梯形方程求解得

$$
x_{1} = 1 - \\frac{1}{a},  x_{2} = \\frac{1}{a},  x_{3} = 0.
$$

此时$β$可由$α_{1}, α_{2}, α_{3}$唯一地线性表示，其表示式为

$$
β = (1 - \\frac{1}{a}) α_{1} + \\frac{1}{a}α_{2}.
$$

(III)当$a \\neq 0$且$a = b \\neq 0$时，对矩阵$(A, β)$继续作初等行变换得

$$
(A, β) → \\left( \\begin{array}{cccc}
1 & 1 & −1 & 1 \\\\
0 & a & −a & 1 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & −1 & 1 \\\\
0 & 1 & −1 & \\frac{1}{a} \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 0 & 1 - \\frac{1}{a} \\\\
0 & 1 & −1 & \\frac{1}{a} \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right) .
$$

从而$r(A) = r(A, β) = 2$。故方程组有无穷多解，其全部解为

$$
x_{1} = 1 - \\frac{1}{a},  x_{2} = \\frac{1}{a} + c,  x_{3} = c,
$$

其中$c$为任意常数。此时$β$可由$α_{1}, α_{2}, α_{3}$线性表示，但表示式不唯一，其表示式为

$$
β = (1 - \\frac{1}{a}) α_{1} + (\\frac{1}{a} + c) α_{2} + cα_{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:19', 9, 'Mogullzr', '2026-01-29 14:13:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1700');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1700');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '1700');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1701, '2004年考研数学卷3第21题', '简单', '考研数学2004年卷3真题', '（本题满分 13 分）设$n$阶矩阵$A = \\left( \\begin{array}{cccc}
1 & b &  & b \\\\
 &  & ⋯ &  \\\\
b & 1 &  & b \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  &  &  \\\\
b & b &  & 1 \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right)$．(1) 求$A$的特征值和特征向量；(2) 求可逆矩阵$P$，使得$P^{−1}AP$为对角矩阵．', '[]', '见解析
', '
(Ⅰ)当$b \\neq 0$时，

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & −b &  & −b\\\\
 &  & ⋯ & \\\\
−b & λ - 1 &  & −b\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  & ⋱ & \\\\
−b & −b &  & λ - 1\\\\
 &  & ⋯ & 
\\end{vmatrix} =  \\lbrack λ - 1 - (n - 1)b \\rbrack  \\lbrack λ - (1 - b) \\rbrack n−1.
$$

故$A$的特征值为$λ_{1} = 1 + (n - 1)b$,$λ_{2} = ⋯ = λ_{n} = 1 - b$。对$λ_{1} = 1 + (n - 1)b$，

$$
λ_{1}E - A = \\left( \\begin{array}{cccc}
(n - 1)b & −b &  & −b \\\\
 &  & ⋯ &  \\\\
−b & (n - 1)b &  & −b \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
−b & −b &  & (n - 1)b \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 0 &  & 0 & −1 \\\\
 &  & ⋯ &  &  \\\\
0 & 1 &  & 0 & −1 \\\\
 &  & ⋯ &  &  \\\\
⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 &  & ⋱ &  &  \\\\
0 & 0 &  & 1 & −1 \\\\
 &  & ⋯ &  &  \\\\
\\end{array} \\right)
$$

求得基础解系$ξ_{1} = (1, 1, 1, ⋯  , 1)T$，所以$A$的属于$λ_{1}$的全部特征向量为$kξ_{1} = k(1, 1, 1, ⋯  , 1)T$（$k$为任意不为零的常数）。
对$λ_{2} = ⋯ = λ_{n} = 1 - b$，

$$
λ_{i}E - A = \\left( \\begin{array}{cccc}
−b & −b &  & −b \\\\
 &  & ⋯ &  \\\\
−b & −b &  & −b \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
−b & −b &  & −b \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 &  & 1 \\\\
 &  & ⋯ &  \\\\
0 & 0 &  & 0 \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
0 & 0 &  & 0 \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right)
$$

求得基础解系为

$$
ξ_{2} = (1, −1, 0, ⋯  , 0)T,  ξ_{3} = (1, 0, −1, ⋯  , 0)T,  ⋯  ,  ξ_{n} = (1, 0, 0, ⋯  , −1)T.
$$

故$A$的属于$λ_{2} = ⋯ = λ_{n}$的全部特征向量为$k_{2}ξ_{2} + k_{3}ξ_{3} + ⋯ + k_{n}ξ_{n}$（$k_{2}, k_{3}, ⋯  , k_{n}$是不全为零的常数）。
当$b = 0$时，

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & 0 &  & 0\\\\
 &  & ⋯ & \\\\
0 & λ - 1 &  & 0\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  & ⋱ & \\\\
0 & 0 &  & λ - 1\\\\
 &  & ⋯ & 
\\end{vmatrix} = (λ - 1)n,
$$

特征值为$λ_{1} = ⋯ = λ_{n} = 1$，任意非零列向量均为特征向量。
(Ⅱ)当$b \\neq 0$时，$A$有$n$个线性无关的特征向量。令$P = (ξ_{1}, ξ_{2}, ⋯  , ξ_{n})$，则

$$
P^{−1}AP = \\left( \\begin{array}{cccc}
1 + (n - 1)b &  &  &  \\\\
 & 1 - b &  &  \\\\
 &  & ⋱ &  \\\\
 &  &  & 1 - b \\\\
\\end{array} \\right) .
$$

当$b = 0$时，$A = E$，对任意可逆矩阵$P$，均有$P^{−1}AP = E$。
', 9, 'Mogullzr', '2026-01-29 14:13:19', 9, 'Mogullzr', '2026-01-29 14:13:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1701');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1701');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1702, '2004年考研数学卷3第22题', '简单', '考研数学2004年卷3真题', '（本题满分 13 分）设$A$,$B$为随机事件，且$P(A) = \\frac{1}{4}$，$P(B∣A) = \\frac{1}{3}$，$P(A∣B) = \\frac{1}{2}$．令
$$
X = \\begin{cases} 1 & A 发生 \\\\ 0 & A 不发生; \\end{cases}  Y = \\begin{cases} 1 & B 发生 \\\\ 0 & B 不发生. \\end{cases}
$$
求：(1) 二维随机变量$(X, Y)$的概率分布；(2)$X$和$Y$的相关系数$ρ_{XY}$；(3)$Z = X^{2} + Y^{2}$的概率分布．', '[]', '
(1) 二维随机变量$(X, Y)$的概率分布为：

$$
\\begin{array}{c|cc}
 & Y = 0 & Y = 1 \\\\
X = 0 & \\frac{2}{3} & \\frac{1}{12} \\\\
X = 1 & \\frac{1}{6} & \\frac{1}{12} \\\\
\\end{array}
$$

(2)$X$和$Y$的相关系数$ρ_{XY} = \\frac{1}{\\sqrt{15}}$。
(3)$Z = X^{2} + Y^{2}$的概率分布为：

$$
\\begin{array}{c|ccc}
Z & 0 & 1 & 2 \\\\
P & \\frac{2}{3} & \\frac{1}{4} & \\frac{1}{12} \\\\
\\end{array}
$$

', '
(I) 由于$P(AB) = P(A)P(B∣A) = \\frac{1}{12}$，所以$P(B) = \\frac{P(AB)}{P(A∣B)} = \\frac{1}{6}$。利用条件概率公式和事件间简单的运算关系，有


$$
P\\{X = 1, Y = 1\\} = P(AB) = \\frac{1}{12},
$$



$$
P\\{X = 1, Y = 0\\} = P(A\\bar{B}) = P(A) - P(AB) = \\frac{1}{6},
$$



$$
P\\{X = 0, Y = 1\\} = P(\\bar{A}B) = P(B) - P(AB) = \\frac{1}{12},
$$



$$
P\\{X = 0, Y = 0\\} = P(\\bar{A}\\bar{B}) = 1 - P(A + B) = 1 - P(A) - P(B) + P(AB) = \\frac{2}{3}.
$$

故$(X, Y)$的概率分布为

$$
\\begin{array}{c|cc}
 & Y = 0 & Y = 1 \\\\
X = 0 & \\frac{2}{3} & \\frac{1}{12} \\\\
X = 1 & \\frac{1}{6} & \\frac{1}{12} \\\\
\\end{array}
$$

(II)$X, Y$的概率分布分别为


$$
P\\{X = 0\\} = P\\{X = 0, Y = 1\\} + P\\{X = 0, Y = 0\\} = \\frac{2}{3} + \\frac{1}{12} = \\frac{3}{4},
$$



$$
P\\{X = 1\\} = P\\{X = 1, Y = 1\\} + P\\{X = 1, Y = 0\\} = \\frac{1}{6} + \\frac{1}{12} = \\frac{1}{4},
$$



$$
P\\{Y = 0\\} = P\\{X = 0, Y = 0\\} + P\\{X = 1, Y = 0\\} = \\frac{2}{3} + \\frac{1}{6} = \\frac{5}{6},
$$



$$
P\\{Y = 1\\} = P\\{X = 0, Y = 1\\} + P\\{X = 1, Y = 1\\} = \\frac{1}{12} + \\frac{1}{12} = \\frac{1}{6}.
$$

所以$X, Y$的概率分布为

$$
\\begin{array}{c|cc}
X & 0 & 1 \\\\
P & \\frac{3}{4} & \\frac{1}{4} \\\\
\\end{array} \\begin{array}{c|cc}
Y & 0 & 1 \\\\
P & \\frac{5}{6} & \\frac{1}{6} \\\\
\\end{array}
$$

由 0-1 分布的数学期望和方差公式，有


$$
EX = \\frac{1}{4},  EY = \\frac{1}{6},  DX = \\frac{1}{4} × \\frac{3}{4} = \\frac{3}{16},  DY = \\frac{1}{6} × \\frac{5}{6} = \\frac{5}{36},
$$



$$
E(XY) = 0 ⋅ P\\{XY = 0\\} + 1 ⋅ P\\{XY = 1\\} = P\\{X = 1, Y = 1\\} = \\frac{1}{12}.
$$

故协方差和相关系数等于

$$
Cov(X, Y) = E(XY) - EX ⋅ EY = \\frac{1}{24},  ρ_{XY} = \\frac{Cov(X, Y)}{\\sqrt{DX} ⋅ \\sqrt{DY}} = \\frac{\\sqrt{15}}{15}.
$$

(III)$Z$的可能取值为 0, 1, 2. 且有

$$
P\\{Z = 0\\} = P\\{X = 0, Y = 0\\} = \\frac{2}{3},
$$



$$
P\\{Z = 1\\} = P\\{X = 1, Y = 0\\} + P\\{X = 0, Y = 1\\} = \\frac{1}{4}
$$



$$
P\\{Z = 2\\} = P\\{X = 1, Y = 1\\} = \\frac{1}{12}.
$$

即$Z$的概率分布为

$$
\\begin{array}{c|ccc}
Z & 0 & 1 & 2 \\\\
P & \\frac{2}{3} & \\frac{1}{4} & \\frac{1}{12} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:20', 9, 'Mogullzr', '2026-01-29 14:13:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1702');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1702');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1702');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1703, '2004年考研数学卷3第23题', '简单', '考研数学2004年卷3真题', '（本题满分 13 分）设随机变量$X$的分布函数为
$$
F(x; α, β) = \\begin{cases} 1 - (\\frac{α}{x})^{β}  & x > α \\\\ 0 & x ≤ α \\end{cases}
$$
其中参数$α > 0, β > 1$．设$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$X$的简单随机样本，(1) 当$α = 1$时，求未知参数$β$的矩估计量；(2) 当$α = 1$时，求未知参数$β$的最大似然估计量；(3) 当$β = 2$时，求未知参数$α$的最大似然估计量．', '[]', '
(1)$\\hat{β} = \\frac{\\bar{X}}{\\bar{X}-1}$
(2)$\\hat{β} = \\frac{n}{\\sum_{i=1}^{n} \\ln X_{i}}$
(3)$\\hat{α} = \\min\\{X_{1}, X_{2}, ⋯  , X_{n}\\}$
', '
当$a = 1$时，$X$的概率密度为


$$
f(x, β) = \\begin{cases} \\frac{β}{x^{β+1}} & x > 1; \\\\ 0 & x ≤ 1. \\end{cases}
$$

(I)由数学期望的定义：


$$
EX = \\int_{−∞}^{+∞} xf(x; β) dx = \\int_{1}^{+∞} x ⋅ \\frac{β}{x^{β+1}} dx = \\frac{β}{β - 1}.
$$

用样本均值估计期望有$EX = \\overline{X}$，即$\\frac{β}{β-1} = \\overline{X}$，解得$β = \\frac{\\overline{X}}{\\overline{X}-1}$，所以参数$β$的矩估计量为


$$
\\hat{β} = \\frac{\\overline{X}}{\\overline{X} - 1},  其中\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}.
$$

(II)设$x_{1}, x_{2}, ⋯  , x_{n}$是相应于样本$X_{1}, X_{2}, ⋯  , X_{n}$的一组观测值，则似然函数为


$$
L(β) = \\prod_{i=1}^{n} f(x_{i}; β) = \\begin{cases} \\frac{β^{n}}{(x_{1}x_{2} ⋯ x_{n})β+1} & x_{i} > 1 (i = 1, 2, ⋯  , n) \\\\ 0 & 其他. \\end{cases}
$$

当$x_{i} > 1 (i = 1, 2, ⋯  , n)$时，$L(β) > 0$，取自然对数得


$$
\\ln L(β) = n \\ln β - (β + 1) \\sum_{i=1}^{n} \\ln x_{i}.
$$

两边对$β$求导，并令导数为零得

$$
\\frac{d \\ln L(β)}{dβ} = \\frac{n}{β} - \\sum_{i=1}^{n} \\ln x_{i} = 0  ⇒  β = \\frac{n}{\\sum_{i=1}^{n} \\ln x_{i}}.
$$

从而$β$的最大似然估计量为$\\hat{β} = \\frac{n}{\\sum_{i=1}^{n} \\ln X_{i}}$。
(Ⅲ) 当$β = 2$时，$X$的概率密度为

$$
f(x, β) = \\begin{cases} \\frac{2α^{2}}{x^{3}} & x > α; \\\\ 0 & x ≤ α. \\end{cases}
$$

对于总体$X$的样本值$x_{1}, x_{2}, ⋯  , x_{n}$，似然函数为

$$
L(α) = \\prod_{i=1}^{n} f(x_{i}; α) = \\begin{cases} \\frac{2^{n}α^{2n}}{(x_{1}x_{2} ⋯ x_{n})3} & x_{i} > α (i = 1, 2, ⋯  , n) \\\\ 0 & 其他. \\end{cases}
$$

当$x_{i} > α$($i = 1, 2, ⋯  , n$) 时，$α$越大，$L(α)$越大。但是必须满足条件$α ≤ x_{i}$($i = 1, 2, ⋯  , n$)，所以$α$的最大似然估计值为$\\hat{α} = \\min\\{x_{1}, x_{2}, ⋯  , x_{n}\\}$。于是$α$的最大似然估计量为$\\hat{α} = \\min\\{X_{1}, X_{2}, ⋯  , X_{n}\\}$。
', 9, 'Mogullzr', '2026-01-29 14:13:20', 9, 'Mogullzr', '2026-01-29 14:13:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1703');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1703');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1703');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1704, '2004年考研数学卷4第1题', '', '考研数学2004年卷4真题', '/problems/other/1681', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:22', 9, 'Mogullzr', '2026-01-29 14:13:22', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1705, '2004年考研数学卷4第2题', '简单', '考研数学2004年卷4真题', '设$y = arctan e^{x} - \\ln \\sqrt{\\frac{e^{2x}}{e^{2x}+1}}$，
则$\\frac{dy}{dx}​_{x=1} =$______．', '[]', '

$$
\\frac{e - 1}{1 + e^{2}}
$$

', '首先，简化函数表达式：

$$
\\begin{array}{cc}
y & = arctan e^{x} - \\ln \\sqrt{\\frac{e^{2x}}{e^{2x} + 1}} \\\\
 & = arctan e^{x} - \\frac{1}{2} \\ln (\\frac{e^{2x}}{e^{2x} + 1}) \\\\
 & = arctan e^{x} - \\frac{1}{2}  \\lbrack 2x - \\ln(e^{2x} + 1) \\rbrack  \\\\
\\end{array}
$$

然后，对$y$求导：

$$
\\frac{dy}{dx} = \\frac{d}{dx}(arctan e^{x}) - \\frac{d}{dx}(x) + \\frac{1}{2}\\frac{d}{dx}  \\lbrack \\ln(e^{2x} + 1) \\rbrack
$$

其中：

$$
\\frac{d}{dx}(arctan e^{x}) = \\frac{e^{x}}{1 + e^{2x}},  \\frac{d}{dx}(x) = 1,  \\frac{d}{dx}  \\lbrack \\ln(e^{2x} + 1) \\rbrack  = \\frac{2e^{2x}}{e^{2x} + 1}
$$

所以：

$$
\\frac{dy}{dx} = \\frac{e^{x}}{1 + e^{2x}} - 1 + \\frac{1}{2} ⋅ \\frac{2e^{2x}}{e^{2x} + 1} = \\frac{e^{x}}{1 + e^{2x}} - 1 + \\frac{e^{2x}}{e^{2x} + 1}
$$

合并后两项：

$$
−1 + \\frac{e^{2x}}{e^{2x} + 1} = \\frac{−(e^{2x} + 1) + e^{2x}}{e^{2x} + 1} = \\frac{−1}{e^{2x} + 1}
$$

因此：

$$
\\frac{dy}{dx} = \\frac{e^{x}}{1 + e^{2x}} - \\frac{1}{1 + e^{2x}} = \\frac{e^{x} - 1}{1 + e^{2x}}
$$

代入$x = 1$：

$$
\\frac{dy}{dx}​_{x=1} = \\frac{e^{1} - 1}{1 + e^{2⋅1}} = \\frac{e - 1}{1 + e^{2}}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:22', 9, 'Mogullzr', '2026-01-29 14:13:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1705');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1705');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1705');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1706, '2004年考研数学卷4第3题', '', '考研数学2004年卷4真题', '/problems/other/1683', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:22', 9, 'Mogullzr', '2026-01-29 14:13:22', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1707, '2004年考研数学卷4第4题', '简单', '考研数学2004年卷4真题', '设$A = \\left( \\begin{array}{ccc}
0 & −1 & 0 \\\\
1 & 0 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$，$B = P^{−1}AP$，其中$P$为三阶可逆矩阵，则$B^{2004} - 2A^{2} =$______．', '[]', '

$$
\\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 3 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)
$$

', '给定矩阵$A = \\left( \\begin{array}{ccc}
0 & −1 & 0 \\\\
1 & 0 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$，且$B = P^{−1}AP$，其中$P$为三阶可逆矩阵。需要计算$B^{2004} - 2A^{2}$。
首先，计算$A^{2004}$。矩阵$A$为分块对角矩阵，可写为：

$$
A = \\left( \\begin{array}{cc}
A_{1} & 0 \\\\
0 & A_{2} \\\\
\\end{array} \\right)
$$

其中$A_{1} = \\left( \\begin{array}{cc}
0 & −1 \\\\
1 & 0 \\\\
\\end{array} \\right)$，$A_{2} = \\left( \\begin{array}{c}
−1 \\\\
\\end{array} \\right)$。则$A^{k} = \\left( \\begin{array}{cc}
A_{1}^{k} & 0 \\\\
0 & A_{2}^{k} \\\\
\\end{array} \\right)$对于任意正整数$k$。
计算$A_{1}^{2004}$：
$A_{1}^{2} = \\left( \\begin{array}{cc}
0 & −1 \\\\
1 & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
0 & −1 \\\\
1 & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
−1 & 0 \\\\
0 & −1 \\\\
\\end{array} \\right) = −I_{2}$。$A_{1}^{4} = (A_{1}^{2})2 = (−I_{2})2 = I_{2}$。由于$2004 = 4 × 501$，所以$A_{1}^{2004} = I_{2}$。
计算$A_{2}^{2004}$：
$A_{2} = −1$，所以$A_{2}^{2004} = (−1)2004 = 1$。
因此，

$$
A^{2004} = \\left( \\begin{array}{cc}
A_{1}^{2004} & 0 \\\\
0 & A_{2}^{2004} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
I_{2} & 0 \\\\
0 & 1 \\\\
\\end{array} \\right) = I_{3}
$$

接下来，计算$B^{2004}$：
由于$B = P^{−1}AP$，则$B^{2004} = P^{−1}A^{2004}P = P^{−1}I_{3}P = I_{3}$。
然后，计算$A^{2}$：

$$
A^{2} = \\left( \\begin{array}{cc}
A_{1}^{2} & 0 \\\\
0 & A_{2}^{2} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
−I_{2} & 0 \\\\
0 & A_{2}^{2} \\\\
\\end{array} \\right)
$$

其中$A_{1}^{2} = −I_{2}$，$A_{2}^{2} = (−1)2 = 1$，所以

$$
A^{2} = \\left( \\begin{array}{ccc}
−1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

最后，计算$B^{2004} - 2A^{2}$：

$$
\\begin{array}{cccccccccccccc}
B^{2004} - 2A^{2} & \\begin{array}{ccc}
−1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & −1 & 0 & 0 & 1 & 0 & 0 & −2 & 0 & 0 & 3 & 0 & 0 \\\\
 & \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 0 & −1 & 0 & 0 & 1 & 0 & 0 & −2 & 0 & 0 & 3 & 0 \\\\
 &  & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & 2 & 0 & 0 & −1 \\\\
\\end{array}
$$

故答案为$\\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 3 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:13:22', 9, 'Mogullzr', '2026-01-29 14:13:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1707');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1707');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1707');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1708, '2004年考研数学卷4第5题', '简单', '考研数学2004年卷4真题', '设$A = (a_{ij})3×3​$是实正交矩阵，且$a_{11} = 1$,$b = (1, 0, 0)T$，
则线性方程组$Ax = b$的解是 ______．', '[]', '$(1, 0, 0)T$
', '
设$A$为$3 × 3$实正交矩阵，且$a_{11} = 1$。由于正交矩阵的行向量组是标准正交组，第一行向量的模长为$1$，即


$$
a_{11}^{2} + a_{12}^{2} + a_{13}^{2} = 1
$$

代入$a_{11} = 1$，得


$$
a_{12}^{2} + a_{13}^{2} = 0
$$

因此$a_{12} = 0$，$a_{13} = 0$，即$A$的第一行为$(1, 0, 0)$。
同理，正交矩阵的列向量组也是标准正交组。第一列向量为$(a_{11}, a_{21}, a_{31})T$，其模长为$1$，且与其他列向量正交。由第一行为$(1, 0, 0)$可知，第一列向量与第一行向量点积为$1$，结合正交性，可得$a_{21} = 0$，$a_{31} = 0$，因此第一列向量为$(1, 0, 0)T$。
线性方程组$Ax = b$的解为$x = A^{−1}b$。由于$A$是正交矩阵，$A^{−1} = A^{T}$，故


$$
x = A^{T}b
$$

计算$A^{T}b$，即$A^{T}$的第一列与$b$的点积，因$b = (1, 0, 0)T$，故


$$
x = (1, 0, 0)T
$$

因此，方程组$Ax = b$的解为$(1, 0, 0)T$。
', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1708');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1708');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1709, '2004年考研数学卷4第6题', '', '考研数学2004年卷4真题', '/problems/other/1640', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1710, '2004年考研数学卷4第7题', '', '考研数学2004年卷4真题', '/problems/other/1687', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1711, '2004年考研数学卷4第8题', '', '考研数学2004年卷4真题', '/problems/other/1688', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1712, '2004年考研数学卷4第9题', '', '考研数学2004年卷4真题', '/problems/other/1665', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1713, '2004年考研数学卷4第10题', '简单', '考研数学2004年卷4真题', '设$f(x) = \\begin{cases} 1 & x > 0 \\\\ 0 & x = 0 \\\\ −1 & x < 0 \\end{cases}$$F(x) = \\int_{0}^{x} f(t)dt$，则', '[''$F(x)$在$x = 0$点不连续．'', ''$F(x)$在$(−∞, +∞)$内连续，但在$x = 0$点不可导．'', ''$F(x)$在$(−∞, +∞)$内可导，且满足$F^{′}(x) = f(x)$．'', ''$F(x)$在$(−∞, +∞)$内可导，但不一定满足$F^{′}(x) = f(x)$．'']', "['B']", '首先计算$F(x) = \\int_{0}^{x} f(t) dt$。根据$f(x)$的定义，分段计算积分：
当$x > 0$时，$F(x) = \\int_{0}^{x} 1 dt = x$；
当$x < 0$时，$F(x) = \\int_{0}^{x}(−1) dt = −x$；
当$x = 0$时，$F(0) = \\int_{0}^{0} f(t) dt = 0$。
因此，$F(x) = ∣x∣$。分析连续性：
$F(x) = ∣x∣$在$x = 0$处连续，因为$\\lim_{x→0^{-}} F(x) = \\lim_{x→0^{-}}(−x) = 0$，$\\lim_{x→0^{+}} F(x) = \\lim_{x→0^{+}} x = 0$，且$F(0) = 0$，故在$x = 0$处连续。因此选项 A 错误。分析可导性：
$F(x) = ∣x∣$在$x = 0$处不可导，因为左导数为$−1$，右导数为$1$，不相等。但在$x \\neq 0$时，$F(x)$可导，且$F^{′}(x) = f(x)$（对于$x > 0$，$F^{′}(x) = 1 = f(x)$；对于$x < 0$，$F^{′}(x) = −1 = f(x)$）。因此，$F(x)$在$(−∞, +∞)$内连续，但在$x = 0$点不可导，选项 B 正确。选项 C 和 D 声称$F(x)$在$(−∞, +∞)$内可导，但实际在$x = 0$处不可导，故均错误。', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1713');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1713');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1713');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1714, '2004年考研数学卷4第11题', '', '考研数学2004年卷4真题', '/problems/other/1691', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1715, '2004年考研数学卷4第12题', '', '考研数学2004年卷4真题', '/problems/other/1692', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1716, '2004年考研数学卷4第13题', '', '考研数学2004年卷4真题', '/problems/other/1647', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1717, '2004年考研数学卷4第14题', '', '考研数学2004年卷4真题', '/problems/other/1648', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1718, '2004年考研数学卷4第15题', '', '考研数学2004年卷4真题', '/problems/other/1695', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1719, '2004年考研数学卷4第16题', '', '考研数学2004年卷4真题', '/problems/other/1696', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1720, '2004年考研数学卷4第17题', '简单', '考研数学2004年卷4真题', '（本题满分 8 分）设$f(u, v)$具有连续偏导数，且满足$f_{u}^{′}(u, v) + f_{v}^{′}(u, v) = uv$．
求$y(x) = e^{−2x}f(x, x)$所满足的一阶微分方程，并求其通解．', '[]', '
一阶微分方程为：$y^{′} + 2y = x^{2}e^{−2x}$
通解为：$y(x) = e^{−2x} (\\frac{x^{3}}{3} + C)$，其中$C$为任意常数。
', '
给定$y(x) = e^{−2x}f(x, x)$，对$y(x)$求导：

$$
y^{′}(x) = \\frac{d}{dx} (e^{−2x}f(x, x)) = e^{−2x} ⋅ \\frac{d}{dx}f(x, x) + f(x, x) ⋅ \\frac{d}{dx}e^{−2x}
$$

其中$\\frac{d}{dx}e^{−2x} = −2e^{−2x}$，且

$$
\\frac{d}{dx}f(x, x) = f_{u}^{′}(x, x) ⋅ \\frac{du}{dx} + f_{v}^{′}(x, x) ⋅ \\frac{dv}{dx} = f_{u}^{′}(x, x) + f_{v}^{′}(x, x)
$$

由条件$f_{u}^{′}(u, v) + f_{v}^{′}(u, v) = uv$，代入$u = x$,$v = x$得：

$$
f_{u}^{′}(x, x) + f_{v}^{′}(x, x) = x ⋅ x = x^{2}
$$

因此，

$$
y^{′}(x) = e^{−2x} ⋅ x^{2} - 2e^{−2x}f(x, x) = x^{2}e^{−2x} - 2y(x)
$$

整理得一阶微分方程：

$$
y^{′} + 2y = x^{2}e^{−2x}
$$

该方程为一阶线性微分方程，标准形式为$y^{′} + P(x)y = Q(x)$，其中$P(x) = 2$,$Q(x) = x^{2}e^{−2x}$。
求解通解：

$$
y = e^{− ∫ P(x) dx} (∫ Q(x)e^{∫ P(x) dx} dx + C)
$$

计算$∫ P(x) dx = ∫ 2 dx = 2x$，所以$e^{∫ P(x) dx} = e^{2x}$，
则：

$$
∫ Q(x)e^{∫ P(x) dx} dx = ∫ x^{2}e^{−2x} ⋅ e^{2x} dx = ∫ x^{2} dx = \\frac{x^{3}}{3} + C
$$

因此，

$$
y = e^{−2x} (\\frac{x^{3}}{3} + C)
$$

即为通解。
', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1720');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1720');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1720');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1721, '2004年考研数学卷4第18题', '', '考研数学2004年卷4真题', '/problems/other/1698', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1722, '2004年考研数学卷4第19题', '简单', '考研数学2004年卷4真题', '（本题满分 9 分）设$F(x) = \\begin{cases} e^{2x} & x ≤ 0 \\\\ e^{−2x} & x > 0 \\end{cases}$$S$表示夹在$x$轴与曲线$y = F(x)$之间的面积．
对任何$t > 0$，$S_{1}(t)$表示矩形$−t ≤ x ≤ t,  0 ≤ y ≤ F(t)$的面积．求：(1)$S(t) = S - S_{1}(t)$的表达式；(2)$S(t)$的最小值．', '[]', '
(1)$S(t) = 1 - 2te^{−2t}$
(2)$S(t)$的最小值为$1 - \\frac{1}{e}$
', '
首先，计算夹在$x$轴与曲线$y = F(x)$之间的总面积$S$。由于$F(x)$是偶函数，且


$$
S = \\int_{−∞}^{∞} F(x) dx = \\int_{−∞}^{0} e^{2x} dx + \\int_{0}^{∞} e^{−2x} dx,
$$

计算得


$$
\\int_{−∞}^{0} e^{2x} dx =  \\lbrack \\frac{1}{2}e^{2x} \\rbrack _{−∞}^{0} = \\frac{1}{2},  \\int_{0}^{∞} e^{−2x} dx =  \\lbrack −\\frac{1}{2}e^{−2x} \\rbrack _{0}^{∞} = \\frac{1}{2},
$$

所以$S = \\frac{1}{2} + \\frac{1}{2} = 1$。
对于$t > 0$，矩形面积$S_{1}(t)$为


$$
S_{1}(t) = 2t ⋅ F(t) = 2t ⋅ e^{−2t},
$$

因此


$$
S(t) = S - S_{1}(t) = 1 - 2te^{−2t}.
$$

接下来，求$S(t)$的最小值。令$g(t) = 1 - 2te^{−2t}$，则求$g(t)$的最小值等价于求$h(t) = 2te^{−2t}$的最大值。对$h(t)$求导：


$$
h^{′}(t) = 2e^{−2t} - 4te^{−2t} = 2e^{−2t}(1 - 2t).
$$

令$h^{′}(t) = 0$，得$t = \\frac{1}{2}$。当$t < \\frac{1}{2}$时，$h^{′}(t) > 0$; 当$t > \\frac{1}{2}$时，$h^{′}(t) < 0$，所以$h(t)$在$t = \\frac{1}{2}$处取得最大值。最大值为


$$
h (\\frac{1}{2}) = 2 ⋅ \\frac{1}{2} ⋅ e^{−2⋅\\frac{1}{2}} = e^{−1} = \\frac{1}{e},
$$

因此$S(t)$的最小值为


$$
g (\\frac{1}{2}) = 1 - \\frac{1}{e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:23', 9, 'Mogullzr', '2026-01-29 14:13:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1722');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1722');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1722');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1723, '2004年考研数学卷4第20题', '简单', '考研数学2004年卷4真题', '（本题满分 13 分）设线性方程组
$$
\\begin{cases} x_{1} + λx_{2} + μx_{3} + x_{4} = 0 \\\\ 2x_{1} + x_{2} + x_{3} + 2x_{4} = 0 \\\\ 3x_{1} + (2 + λ)x_{2} + (4 + μ)x_{3} + 4x_{4} = 1. \\end{cases}
$$
已知$(1, −1, 1, −1)T$是该方程组的一个解，试求：(1) 方程组的全部解，并用对应的齐次线性方程组的基础解系表示全部解；(2) 该方程组满足$x_{2} = x_{3}$的全部解．', '[]', '
(1) 当$λ \\neq \\frac{1}{2}$时，方程组的全部解为：


$$
X = \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) + k \\left( \\begin{array}{c}
−2 \\\\
1 \\\\
−1 \\\\
2 \\\\
\\end{array} \\right) ,  k ∈ R
$$

当$λ = \\frac{1}{2}$时，方程组的全部解为：


$$
X = \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) + c_{1} \\left( \\begin{array}{c}
1 \\\\
−3 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{c}
−1 \\\\
−2 \\\\
0 \\\\
2 \\\\
\\end{array} \\right) ,  c_{1}, c_{2} ∈ R
$$

(2) 当$λ \\neq \\frac{1}{2}$时，满足$x_{2} = x_{3}$的全部解为：


$$
X = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)
$$

当$λ = \\frac{1}{2}$时，满足$x_{2} = x_{3}$的全部解为：


$$
X = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
1 \\\\
−3 \\\\
\\end{array} \\right) + c_{1} \\left( \\begin{array}{c}
3 \\\\
1 \\\\
1 \\\\
−4 \\\\
\\end{array} \\right) ,  c_{1} ∈ R
$$

', '
已知$(1, −1, 1, −1)T$是方程组的一个解，代入方程组得$μ = λ$。因此方程组化为：


$$
\\begin{cases} x_{1} + λx_{2} + λx_{3} + x_{4} = 0 \\\\ 2x_{1} + x_{2} + x_{3} + 2x_{4} = 0 \\\\ 3x_{1} + (2 + λ)x_{2} + (4 + λ)x_{3} + 4x_{4} = 1. \\end{cases}
$$

特解为$X_{p} = (1, −1, 1, −1)T$。
考虑齐次方程组：


$$
\\begin{cases} x_{1} + λx_{2} + λx_{3} + x_{4} = 0 \\\\ 2x_{1} + x_{2} + x_{3} + 2x_{4} = 0 \\\\ 3x_{1} + (2 + λ)x_{2} + (4 + λ)x_{3} + 4x_{4} = 0. \\end{cases}
$$

对系数矩阵进行行变换：


$$
A = \\left( \\begin{array}{cccc}
1 & λ & λ & 1 \\\\
2 & 1 & 1 & 2 \\\\
3 & 2 + λ & 4 + λ & 4 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & λ & λ & 1 \\\\
0 & 1 - 2λ & 1 - 2λ & 0 \\\\
0 & 2 - 2λ & 4 - 2λ & 1 \\\\
\\end{array} \\right)
$$

对于 (1)，分情况讨论：
当$λ \\neq \\frac{1}{2}$时，从第二行得$x_{2} + x_{3} = 0$，代入第三行得$x_{4} = 2x_{2}$，代入第一行得$x_{1} = −2x_{2}$。令$x_{2} = k$，则齐次解为$X_{h} = k(−2, 1, −1, 2)T$，基础解系含一个向量。全部解为$X = X_{p} + X_{h}$。当$λ = \\frac{1}{2}$时，系数矩阵行简化后为：$\\left( \\begin{array}{cccc}
1 & 0 & −1 & 0.5 \\\\
0 & 1 & 3 & 1 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$得$x_{1} = x_{3} - 0.5x_{4}$，$x_{2} = −3x_{3} - x_{4}$。令$x_{3} = c_{1}$，$x_{4} = 2c_{2}$，则齐次解为$X_{h} = c_{1}(1, −3, 1, 0)T + c_{2}(−1, −2, 0, 2)T$，基础解系含两个向量。全部解为$X = X_{p} + X_{h}$。
对于 (2)，要求$x_{2} = x_{3}$：
当$λ \\neq \\frac{1}{2}$时，解为$X = (1, −1, 1, −1)T + k(−2, 1, −1, 2)T$，分量满足$−1 + k = 1 - k$，得$k = 1$，代入得解。当$λ = \\frac{1}{2}$时，解为$X = (1, −1, 1, −1)T + c_{1}(1, −3, 1, 0)T + c_{2}(−1, −2, 0, 2)T$，分量满足$−1 - 3c_{1} - 2c_{2} = 1 + c_{1}$，得$c_{2} = −1 - 2c_{1}$，代入得解，其中$c_{1}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:13:24', 9, 'Mogullzr', '2026-01-29 14:13:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1723');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1723');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1724, '2004年考研数学卷4第21题', '简单', '考研数学2004年卷4真题', '（本题满分 13 分）设三阶实对称矩阵$A$的秩为$2$，$λ_{1} = λ_{2} = 6$是$A$的二重特征值．
若$α_{1} = (1, 1, 0)T$,$α_{2} = (2, 1, 1)T$,$α_{3} = (−1, 2, −3)T$都是$A$的属于特征值$6$的特征向量．(1) 求$A$的另一特征值和对应的特征向量；(2) 求矩阵$A$．', '[]', '
(1) 另一特征值为$0$，对应的特征向量为$(1, −1, −1)T$（或任何非零倍数）。
(2) 矩阵$A = \\left( \\begin{array}{ccc}
4 & 2 & 2 \\\\
2 & 4 & −2 \\\\
2 & −2 & 4 \\\\
\\end{array} \\right)$.
', '
(1) 由于$A$是实对称矩阵且秩为$2$，故行列式为$0$，因此另一特征值必为$0$。设特征值$0$对应的特征向量为$β = (x, y, z)T$，由于实对称矩阵不同特征值对应的特征向量正交，故$β$与特征值$6$的特征向量$α_{1} = (1, 1, 0)T$和$α_{2} = (2, 1, 1)T$正交，即$β ⋅ α_{1} = 0$和$β ⋅ α_{2} = 0$：

$$
x + y = 0,  2x + y + z = 0.
$$

由$x + y = 0$得$y = −x$，代入第二式得$2x - x + z = 0$，即$x + z = 0$，故$z = −x$。因此$β = (x, −x, −x)T = x(1, −1, −1)T$，取$x = 1$得特征向量$(1, −1, −1)T$.
(2) 为求矩阵$A$，采用对角化方法。取特征向量矩阵$P = \\left( \\begin{array}{ccc}
1 & 2 & 1 \\\\
1 & 1 & −1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)$，对角矩阵$D = \\left( \\begin{array}{ccc}
6 & 0 & 0 \\\\
0 & 6 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，则$A = PDP^{−1}$. 计算$P^{−1}$得：

$$
P^{−1} = \\left( \\begin{array}{ccc}
0 & 1 & −1 \\\\
\\frac{1}{3} & −\\frac{1}{3} & \\frac{2}{3} \\\\
\\frac{1}{3} & −\\frac{1}{3} & −\\frac{1}{3} \\\\
\\end{array} \\right) .
$$

先计算$DP^{−1}$：

$$
DP^{−1} = \\left( \\begin{array}{ccc}
0 & 6 & −6 \\\\
2 & −2 & 4 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) .
$$

然后计算$A = P(DP^{−1})$：

$$
A = \\left( \\begin{array}{ccc}
1 & 2 & 1 \\\\
1 & 1 & −1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
0 & 6 & −6 \\\\
2 & −2 & 4 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
4 & 2 & 2 \\\\
2 & 4 & −2 \\\\
2 & −2 & 4 \\\\
\\end{array} \\right) .
$$

验证可知$A$满足条件：秩为$2$，特征值为$6, 6, 0$，且给定向量均为特征值$6$的特征向量。
', 9, 'Mogullzr', '2026-01-29 14:13:24', 9, 'Mogullzr', '2026-01-29 14:13:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1724');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1724');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1725, '2004年考研数学卷4第22题', '', '考研数学2004年卷4真题', '/problems/other/1702', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:24', 9, 'Mogullzr', '2026-01-29 14:13:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1726, '2004年考研数学卷4第23题', '简单', '考研数学2004年卷4真题', '（本题满分 13 分）设随机变量$X$在区间$(0, 1)$上服从均匀分布，在$X = x$（$0 < x < 1$）的条件下，
随机变量$Y$在区间$(0, x)$上服从均匀分布，求：(1) 随机变量$X$和$Y$的联合概率密度；(2)$Y$的概率密度；(3) 概率$P\\{X + Y > 1\\}$．', '[]', '
(1) 随机变量$X$和$Y$的联合概率密度为：$f_{X,Y}(x, y) = \\begin{cases} \\frac{1}{x} & 0 < y < x < 1 \\\\ 0 & 其他 \\end{cases}$
(2)$Y$的概率密度为：$f_{Y}(y) = \\begin{cases} − \\ln y & 0 < y < 1 \\\\ 0 & 其他 \\end{cases}$
(3) 概率$P\\{X + Y > 1\\} = 1 - \\ln 2$
', '
(1) 由于$X$在区间$(0, 1)$上服从均匀分布，其概率密度函数为$f_{X}(x) = 1$（$0 < x < 1$）。在$X = x$的条件下，$Y$在区间$(0, x)$上服从均匀分布，其条件概率密度函数为$f_{Y∣X}(y∣x) = \\frac{1}{x}$（$0 < y < x$）。因此，联合概率密度函数为：


$$
f_{X,Y}(x, y) = f_{Y∣X}(y∣x)f_{X}(x) = \\frac{1}{x} ⋅ 1 = \\frac{1}{x},  0 < y < x < 1
$$

在其他区域，联合概率密度为 0。
(2)$Y$的概率密度函数通过对联合概率密度函数关于$x$积分得到：


$$
f_{Y}(y) = \\int_{−∞}^{∞} f_{X,Y}(x, y) dx
$$

由于$f_{X,Y}(x, y) = \\frac{1}{x}$仅在$0 < y < x < 1$时非零，因此对于固定的$y$，$x$的取值范围为$y < x < 1$。于是：


$$
f_{Y}(y) = \\int_{x=y}^{1} \\frac{1}{x} dx =  \\lbrack \\ln x \\rbrack _{x=y}^{x=1} = \\ln 1 - \\ln y = − \\ln y,  0 < y < 1
$$

在其他区域，$f_{Y}(y) = 0$。
(3) 概率$P\\{X + Y > 1\\}$通过计算联合概率密度函数在区域$x + y > 1$上的二重积分得到。积分区域受限于$0 < y < x < 1$和$x + y > 1$。分析可知，当$x ≤ \\frac{1}{2}$时，$y < x ≤ \\frac{1}{2}$，且$x + y ≤ x + x = 2x ≤ 1$，不满足$x + y > 1$。因此，$x$必须满足$\\frac{1}{2} < x < 1$，且对于每个$x$，$y$的取值范围为$1 - x < y < x$。于是：


$$
P\\{X + Y > 1\\} = \\int_{x=\\frac{1}{2}}^{1} \\int_{y=1-x}^{x} \\frac{1}{x} dy dx
$$

先计算内层积分：


$$
\\int_{y=1-x}^{x} \\frac{1}{x} dy = \\frac{1}{x}  \\lbrack y \\rbrack _{y=1-x}^{y=x} = \\frac{1}{x} (x - (1 - x)) = \\frac{1}{x}(2x - 1) = 2 - \\frac{1}{x}
$$

然后计算外层积分：


$$
\\begin{array}{cc}
\\int_{x=\\frac{1}{2}}^{1} (2 - \\frac{1}{x}) dx & =  \\lbrack 2x - \\ln x \\rbrack _{x=\\frac{1}{2}}^{x=1} \\\\
 & = (2 ⋅ 1 - \\ln 1) - (2 ⋅ \\frac{1}{2} - \\ln \\frac{1}{2}) \\\\
 & = (2 - 0) - (1 - (− \\ln 2)) \\\\
\\end{array}
$$

因此，$P\\{X + Y > 1\\} = 1 - \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:13:24', 9, 'Mogullzr', '2026-01-29 14:13:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1726');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1726');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1726');
