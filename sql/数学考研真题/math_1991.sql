INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (428, '1991年考研数学卷1第1题', '简单', '考研数学1991年卷1真题', '设$\\begin{cases} x = 1 + t^{2} \\\\ y = \\cos t \\end{cases}$则$\\frac{d^{2}y}{dx^{2}} =$______．', '[]', '

$$
\\frac{\\sin t - t \\cos t}{4t^{3}}
$$

', '给定参数方程$x = 1 + t^{2}$，$y = \\cos t$，求二阶导数$\\frac{d^{2}y}{dx^{2}}$。
首先，求一阶导数$\\frac{dy}{dx}$：

$$
\\frac{dx}{dt} = 2t,  \\frac{dy}{dt} = − \\sin t,
$$

所以

$$
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{− \\sin t}{2t}.
$$

然后，求二阶导数$\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx})$。由于$\\frac{dy}{dx}$是$t$的函数，使用链式法则：

$$
\\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{d}{dt} (\\frac{dy}{dx}) ⋅ \\frac{dt}{dx},
$$

其中$\\frac{dt}{dx} = \\frac{1}{dx/dt} = \\frac{1}{2t}$.
计算$\\frac{d}{dt} (\\frac{dy}{dx}) = \\frac{d}{dt} (\\frac{− \\sin t}{2t})$。使用商的导数公式：
设$f = − \\sin t$，$g = 2t$，则$f^{′} = − \\cos t$，$g^{′} = 2$，所以

$$
\\frac{d}{dt} (\\frac{− \\sin t}{2t}) = \\frac{f^{′}g - fg^{′}}{g^{2}} = \\frac{(− \\cos t) ⋅ (2t) - (− \\sin t) ⋅ 2}{(2t)2} = \\frac{−2t \\cos t + 2 \\sin t}{4t^{2}} = \\frac{\\sin t - t \\cos t}{2t^{2}}.
$$

因此，

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{\\sin t - t \\cos t}{2t^{2}} ⋅ \\frac{1}{2t} = \\frac{\\sin t - t \\cos t}{4t^{3}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:38', 9, 'Mogullzr', '2026-01-29 14:07:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '428');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '428');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '428');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (429, '1991年考研数学卷1第2题', '简单', '考研数学1991年卷1真题', '由方程$xyz + \\sqrt{x^{2} + y^{2} + z^{2}} = \\sqrt{2}$所确定的函数$z = z(x, y)$在点$(1, 0, −1)$处的全微分$dz =$______．', '[]', '$dx - \\sqrt{2}dy$
', '给定方程$xyz + \\sqrt{x^{2} + y^{2} + z^{2}} = \\sqrt{2}$确定的隐函数$z = z(x, y)$，点$(1, 0, −1)$满足方程。设$F(x, y, z) = xyz + \\sqrt{x^{2} + y^{2} + z^{2}} - \\sqrt{2} = 0$，则全微分$dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy$，其中偏导数由隐函数求导公式给出：

$$
\\frac{∂z}{∂x} = −\\frac{\\frac{∂F}{∂x}}{\\frac{∂F}{∂z}},  \\frac{∂z}{∂y} = −\\frac{\\frac{∂F}{∂y}}{\\frac{∂F}{∂z}}.
$$

计算偏导数：

$$
\\frac{∂F}{∂x} = yz + \\frac{x}{\\sqrt{x^{2} + y^{2} + z^{2}}},  \\frac{∂F}{∂y} = xz + \\frac{y}{\\sqrt{x^{2} + y^{2} + z^{2}}},  \\frac{∂F}{∂z} = xy + \\frac{z}{\\sqrt{x^{2} + y^{2} + z^{2}}}.
$$

在点$(1, 0, −1)$处，$\\sqrt{x^{2} + y^{2} + z^{2}} = \\sqrt{2}$，代入得：

$$
\\frac{∂F}{∂x}​_{(1,0,−1)} = 0 ⋅ (−1) + \\frac{1}{\\sqrt{2}} = \\frac{1}{\\sqrt{2}},  \\frac{∂F}{∂y}​_{(1,0,−1)} = 1 ⋅ (−1) + \\frac{0}{\\sqrt{2}} = −1,  \\frac{∂F}{∂z}​_{(1,0,−1)} = 1 ⋅ 0 + \\frac{−1}{\\sqrt{2}} = −\\frac{1}{\\sqrt{2}}.
$$

因此，

$$
\\frac{∂z}{∂x} = −\\frac{\\frac{1}{\\sqrt{2}}}{−\\frac{1}{\\sqrt{2}}} = 1,  \\frac{∂z}{∂y} = −\\frac{−1}{−\\frac{1}{\\sqrt{2}}} = −\\sqrt{2}.
$$

全微分为：

$$
dz = 1 ⋅ dx + (−\\sqrt{2}) ⋅ dy = dx - \\sqrt{2}dy.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:38', 9, 'Mogullzr', '2026-01-29 14:07:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '429');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '429');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '429');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (430, '1991年考研数学卷1第3题', '简单', '考研数学1991年卷1真题', '已知两条直线的方程是$L_{1} : \\frac{x-1}{1} = \\frac{y-2}{0} = \\frac{z-3}{−1}$；$L_{2} : \\frac{x+2}{2} = \\frac{y-1}{1} = \\frac{z}{1}$，
则过$L_{1}$且平行于$L_{2}$的平面方程是 ______．', '[]', '
$x - 3y + z + 2 = 0$
', '
由直线$L_{1}$的方程$\\frac{x-1}{1} = \\frac{y-2}{0} = \\frac{z-3}{−1}$可得其方向向量$s1​​ = (1, 0, −1)$，且过点$P_{1}(1, 2, 3)$；由$L_{2}$的方程$\\frac{x+2}{2} = \\frac{y-1}{1} = \\frac{z}{1}$可得其方向向量$s2​​ = (2, 1, 1)$。
设所求平面的法向量为$n = (a, b, c)$。由于平面过$L_{1}$，故$n ⋅ s1​​ = 0$，即$a ⋅ 1 + b ⋅ 0 + c ⋅ (−1) = 0$，所以$a - c = 0$，即$a = c$。
又因为平面平行于$L_{2}$，故$n ⋅ s2​​ = 0$，即$2a + b + c = 0$。代入$a = c$，得$2a + b + a = 0$，即$3a + b = 0$，所以$b = −3a$。
取$a = 1$，则$c = 1$，$b = −3$，故法向量$n = (1, −3, 1)$。
平面过点$P_{1}(1, 2, 3)$，故方程为$1 ⋅ (x - 1) - 3 ⋅ (y - 2) + 1 ⋅ (z - 3) = 0$，化简得$x - 1 - 3y + 6 + z - 3 = 0$，即$x - 3y + z + 2 = 0$。
验证：点$P_{1}$在平面上，且法向量与$s2​​$垂直，满足条件。
', 9, 'Mogullzr', '2026-01-29 14:07:38', 9, 'Mogullzr', '2026-01-29 14:07:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '430');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '430');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '430');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (431, '1991年考研数学卷1第4题', '简单', '考研数学1991年卷1真题', '已知当$x → 0$时，$(1 + ax^{2})31​ - 1$与$\\cos x - 1$是等价无穷小，
则常数$a =$______．', '[]', '$−\\frac{3}{2}$
', '当$x → 0$时，等价无穷小要求：

$$
\\lim_{x→0} \\frac{(1 + ax^{2})31​ - 1}{\\cos x - 1} = 1
$$

利用常见等价无穷小替换：当$u → 0$时，$(1 + u)k - 1 ∼ ku$，这里令$u = ax^{2}$，则：

$$
(1 + ax^{2})31​ - 1 ∼ \\frac{1}{3}ax^{2}
$$

同时，$\\cos x - 1 ∼ −\\frac{1}{2}x^{2}$。代入极限：

$$
\\lim_{x→0} \\frac{\\frac{1}{3}ax^{2}}{−\\frac{1}{2}x^{2}} = \\lim_{x→0} \\frac{a}{3} ⋅ (−2) = −\\frac{2a}{3}
$$

设极限为 1：

$$
−\\frac{2a}{3} = 1
$$

解得：

$$
a = −\\frac{3}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:39', 9, 'Mogullzr', '2026-01-29 14:07:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '431');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '431');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '431');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (432, '1991年考研数学卷1第5题', '简单', '考研数学1991年卷1真题', '设$4$阶方阵$A = \\left( \\begin{array}{cccc}
5 & 2 & 0 & 0 \\\\
2 & 1 & 0 & 0 \\\\
0 & 0 & 1 & −2 \\\\
0 & 0 & 1 & 1 \\\\
\\end{array} \\right)$，则$A$的逆矩阵$A^{−1} =$______．', '[]', '

$$
A^{−1} = \\left( \\begin{array}{cccc}
1 & −2 & 0 & 0 \\\\
−2 & 5 & 0 & 0 \\\\
0 & 0 & \\frac{1}{3} & \\frac{2}{3} \\\\
0 & 0 & −\\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array} \\right)
$$

', '矩阵$A$是一个分块对角矩阵，可以表示为$A = \\left( \\begin{array}{cc}
B & 0 \\\\
0 & C \\\\
\\end{array} \\right)$，其中$B = \\left( \\begin{array}{cc}
5 & 2 \\\\
2 & 1 \\\\
\\end{array} \\right)$，$C = \\left( \\begin{array}{cc}
1 & −2 \\\\
1 & 1 \\\\
\\end{array} \\right)$。对于分块对角矩阵，其逆矩阵为$A^{−1} = \\left( \\begin{array}{cc}
B^{−1} & 0 \\\\
0 & C^{−1} \\\\
\\end{array} \\right)$。
首先，计算$B$的逆矩阵。$B$的行列式为$det(B) = 5 × 1 - 2 × 2 = 1$，因此$B^{−1} = \\frac{1}{1} \\left( \\begin{array}{cc}
1 & −2 \\\\
−2 & 5 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
1 & −2 \\\\
−2 & 5 \\\\
\\end{array} \\right)$。
其次，计算$C$的逆矩阵。$C$的行列式为$det(C) = 1 × 1 - (−2) × 1 = 3$，因此$C^{−1} = \\frac{1}{3} \\left( \\begin{array}{cc}
1 & 2 \\\\
−1 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
\\frac{1}{3} & \\frac{2}{3} \\\\
−\\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array} \\right)$。
将$B^{−1}$和$C^{−1}$组合，得到$A^{−1} = \\left( \\begin{array}{cccc}
1 & −2 & 0 & 0 \\\\
−2 & 5 & 0 & 0 \\\\
0 & 0 & \\frac{1}{3} & \\frac{2}{3} \\\\
0 & 0 & −\\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:07:39', 9, 'Mogullzr', '2026-01-29 14:07:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '432');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '432');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '432');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (433, '1991年考研数学卷1第6题', '简单', '考研数学1991年卷1真题', '曲线$y = \\frac{1+e^{−x^{2}}}{1-e^{−x^{2}}}$', '[''没有渐近线．'', ''仅有水平渐近线．'', ''仅有铅直渐近线．'', ''既有水平渐近线又有铅直渐近线．'']', "['D']", '
首先，考虑水平渐近线。计算当$x → ∞$时的极限：

$$
\\lim_{x→∞} \\frac{1 + e^{−x^{2}}}{1 - e^{−x^{2}}} = \\frac{1 + 0}{1 - 0} = 1
$$
同样，当$x → −∞$时：

$$
\\lim_{x→−∞} \\frac{1 + e^{−x^{2}}}{1 - e^{−x^{2}}} = \\frac{1 + 0}{1 - 0} = 1
$$
因此，曲线有水平渐近线$y = 1$。其次，考虑铅直渐近线。铅直渐近线出现在分母为零而分子不为零的点。令分母为零：

$$
1 - e^{−x^{2}} = 0
$$
解得$e^{−x^{2}} = 1$，即$x = 0$。在$x = 0$处，分子为$1 + e^{−0} = 2 \\neq 0$。计算当$x → 0$时的极限：

$$
\\lim_{x→0} \\frac{1 + e^{−x^{2}}}{1 - e^{−x^{2}}} = \\frac{2}{0} → ∞
$$
因此，曲线有铅直渐近线$x = 0$。综上，曲线既有水平渐近线又有铅直渐近线。', 9, 'Mogullzr', '2026-01-29 14:07:39', 9, 'Mogullzr', '2026-01-29 14:07:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '433');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '433');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '433');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (434, '1991年考研数学卷1第7题', '简单', '考研数学1991年卷1真题', '若连续函数$f(x)$满足关系式$f(x) = \\int_{0}^{2x} f (\\frac{t}{2}) dt + \\ln 2$，
则$f(x)$等于', '[''$e^{x} \\\\ln 2$．'', ''$e^{2x} \\\\ln 2$．'', ''$e^{x} + \\\\ln 2$．'', ''$e^{2x} + \\\\ln 2$．'']', "['B']", '
给定连续函数$f(x)$满足关系式
$$
f(x) = \\int_{0}^{2x} f (\\frac{t}{2}) dt + \\ln 2
$$
通过变量代换$u = t/2$，积分变为
$$
\\int_{0}^{2x} f (\\frac{t}{2}) dt = 2 \\int_{0}^{x} f(u)du
$$
原方程化为
$$
f(x) = 2 \\int_{0}^{x} f(u)du + \\ln 2
$$
令$g(x) = \\int_{0}^{x} f(u)du$，则$f(x) = g^{′}(x)$，代入得
$$
g^{′}(x) = 2g(x) + \\ln 2
$$
这是一阶线性微分方程，积分因子为$e^{−2x}$，两边乘以积分因子得
$$
(e^{−2x}g(x))′ = e^{−2x} \\ln 2
$$
积分得
$$
e^{−2x}g(x) = −\\frac{\\ln 2}{2}e^{−2x} + C
$$
即
$$
g(x) = −\\frac{\\ln 2}{2} + Ce^{2x}
$$
由$g(0) = 0$得$C = \\frac{\\ln 2}{2}$，所以
$$
g(x) = \\frac{\\ln 2}{2}(e^{2x} - 1)
$$
求导得
$$
f(x) = g^{′}(x) = \\ln 2 ⋅ e^{2x}
$$
验证满足原方程，故正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:07:39', 9, 'Mogullzr', '2026-01-29 14:07:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '434');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '434');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '434');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (435, '1991年考研数学卷1第8题', '简单', '考研数学1991年卷1真题', '已知级数$\\sum_{n=1}^{∞}(−1)n−1a_{n} = 2$，$\\sum_{n=1}^{∞} a_{2n-1} = 5$，
则级数$\\sum_{n=1}^{∞} a_{n}$等于', '[''$3$．'', ''$7$．'', ''$8$．'', ''$9$．'']', "['C']", '
已知

$$
\\sum_{n=1}^{∞}(−1)n−1a_{n} = a_{1} - a_{2} + a_{3} - a_{4} + ⋯ = 2,
$$
以及

$$
\\sum_{n=1}^{∞} a_{2n-1} = a_{1} + a_{3} + a_{5} + ⋯ = 5.
$$
设奇数项和为$O = 5$，偶数项和为$E = a_{2} + a_{4} + a_{6} + ⋯$。
则交错级数可表示为

$$
O - E = 2.
$$
代入$O = 5$得

$$
5 - E = 2,
$$
解得

$$
E = 3.
$$
级数$\\sum_{n=1}^{∞} a_{n}$为所有项之和，即

$$
S = O + E = 5 + 3 = 8.
$$
因此，答案为选项C。', 9, 'Mogullzr', '2026-01-29 14:07:39', 9, 'Mogullzr', '2026-01-29 14:07:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '435');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '435');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '435');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (436, '1991年考研数学卷1第9题', '简单', '考研数学1991年卷1真题', '设$D$是$xOy$平面上以$(1, 1)$，$(−1, 1)$和$(−1, −1)$为顶点的三角形区域，$D_{1}$是$D$在第一象限的部分，则$\\iint_{D}(xy + \\cos x \\sin y)dxdy$等于', '[''$2 \\\\iint_{D_{1}} \\\\cos x \\\\sin ydxdy$．'', ''$2 \\\\iint_{D_{1}} xydxdy$．'', ''$4 \\\\iint_{D_{1}}(xy + \\\\cos x \\\\sin y)dxdy$．'', ''$0$．'']', "['A']", '
积分

$$
\\iint_{D}(xy + \\cos x \\sin y) dx dy
$$
分为两部分：

$$
\\iint_{D} xy dx dy 和  \\iint_{D} \\cos x \\sin y dx dy
$$
1. 计算$\\iint_{D} xy dx dy$
区域$D$定义为

$$
−1 ≤ x ≤ 1,  x ≤ y ≤ 1
$$
先对$y$积分：

$$
\\int_{y=x}^{1} xy dy = x  \\lbrack \\frac{1}{2}y^{2} \\rbrack _{y=x}^{1} = \\frac{x}{2}(1 - x^{2})
$$
再对$x$积分：

$$
\\int_{x=−1}^{1} \\frac{x}{2}(1 - x^{2}) dx = \\frac{1}{2} \\int_{−1}^{1}(x - x^{3}) dx
$$
由于$x - x^{3}$是奇函数，在对称区间$\\lbrack −1, 1 \\rbrack$上积分为零，因此

$$
\\iint_{D} xy dx dy = 0
$$
2. 计算$\\iint_{D} \\cos x \\sin y dx dy$
先对$y$积分：

$$
\\int_{y=x}^{1} \\cos x \\sin y dy = \\cos x  \\lbrack − \\cos y \\rbrack _{y=x}^{1} = \\cos x(\\cos x - \\cos 1)
$$
再对$x$积分：

$$
\\int_{x=−1}^{1} \\cos x(\\cos x - \\cos 1) dx = \\int_{−1}^{1}(\\cos^{2} x - \\cos x \\cos 1) dx
$$
因为$\\cos^{2} x$和$\\cos x \\cos 1$均为偶函数，所以

$$
\\int_{−1}^{1}(\\cos^{2} x - \\cos x \\cos 1) dx = 2 \\int_{0}^{1}(\\cos^{2} x - \\cos x \\cos 1) dx
$$
3. 利用对称性简化
令$D_{1}$为$D$在第一象限的部分，即

$$
0 ≤ x ≤ 1,  x ≤ y ≤ 1
$$
则

$$
\\iint_{D_{1}} \\cos x \\sin y dx dy = \\int_{0}^{1} \\int_{y=x}^{1} \\cos x \\sin y dy dx = \\int_{0}^{1} \\cos x(\\cos x - \\cos 1) dx
$$
因此

$$
\\iint_{D} \\cos x \\sin y dx dy = 2 \\iint_{D_{1}} \\cos x \\sin y dx dy
$$
4. 合并结果

$$
\\iint_{D}(xy + \\cos x \\sin y) dx dy = 0 + 2 \\iint_{D_{1}} \\cos x \\sin y dx dy
$$
故原积分等于选项 A：

$$
2 \\iint_{D_{1}} \\cos x \\sin y dx dy
$$
', 9, 'Mogullzr', '2026-01-29 14:07:39', 9, 'Mogullzr', '2026-01-29 14:07:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '436');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '436');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '436');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (437, '1991年考研数学卷1第10题', '简单', '考研数学1991年卷1真题', '设$n$阶方阵$A$、$B$、$C$满足关系式$ABC = E$，其中$E$是$n$阶单位阵，则必有', '[''$ACB = E$．'', ''$CBA = E$．'', ''$BAC = E$．'', ''$BCA = E$．'']', "['D']", '
给定$ABC = E$，其中$A$、$B$、$C$均为$n$阶方阵，$E$为单位阵。由$ABC = E$可得

$$
det(ABC) = det(E) = 1,
$$
因此

$$
det(A) det(B) det(C) = 1,
$$
故$A$、$B$、$C$均可逆。由$ABC = E$知$A(BC) = E$，所以

$$
BC = A^{−1}.
$$
于是

$$
BCA = A^{−1}A = E,
$$
即选项D必然成立。对于选项A、B、C，可通过反例说明不一定成立。例如取$n = 2$，设

$$
A = \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & 1 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cc}
1 & 0 \\\\
1 & 1 \\\\
\\end{array} \\right) ,
$$
则

$$
AB = \\left( \\begin{array}{cc}
2 & 1 \\\\
1 & 1 \\\\
\\end{array} \\right) .
$$
取

$$
C = (AB)−1 = \\left( \\begin{array}{cc}
1 & −1 \\\\
−1 & 2 \\\\
\\end{array} \\right) ,
$$
满足$ABC = E$，但计算可得

$$
ACB = \\left( \\begin{array}{cc}
1 & 1 \\\\
1 & 2 \\\\
\\end{array} \\right) \\neq E,  CBA = \\left( \\begin{array}{cc}
0 & −1 \\\\
1 & 3 \\\\
\\end{array} \\right) \\neq E,  BAC = \\left( \\begin{array}{cc}
0 & 1 \\\\
−1 & 3 \\\\
\\end{array} \\right) \\neq E,
$$
故A、B、C不一定成立。', 9, 'Mogullzr', '2026-01-29 14:07:40', 9, 'Mogullzr', '2026-01-29 14:07:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '437');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '437');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (438, '1991年考研数学卷1第11题', '简单', '考研数学1991年卷1真题', '求$\\lim_{x→0^{+}}(\\cos \\sqrt{x})xπ​$．', '[]', '
$e^{−\\frac{π}{2}}$
', '
考虑极限$\\lim_{x→0^{+}}(\\cos \\sqrt{x})xπ​$，这是$1^{∞}$型不定式。设$L = \\lim_{x→0^{+}}(\\cos \\sqrt{x})xπ​$，取自然对数得$\\ln L = \\lim_{x→0^{+}} \\frac{π}{x} \\ln(\\cos \\sqrt{x})$。
计算$\\lim_{x→0^{+}} \\frac{π \\ln(\\cos \\sqrt{x})}{x}$。当$x → 0^{+}$时，$\\sqrt{x} → 0$，有$\\cos \\sqrt{x} - 1 ∼ −\\frac{x}{2}$，且$\\ln(\\cos \\sqrt{x}) ∼ \\cos \\sqrt{x} - 1$，因此$\\ln(\\cos \\sqrt{x}) ∼ −\\frac{x}{2}$。
代入得$\\frac{π \\ln(\\cos \\sqrt{x})}{x} ∼ \\frac{π(−\\frac{x}{2})}{x} = −\\frac{π}{2}$，故$\\lim_{x→0^{+}} \\frac{π \\ln(\\cos \\sqrt{x})}{x} = −\\frac{π}{2}$。
因此$\\ln L = −\\frac{π}{2}$，即$L = e^{−\\frac{π}{2}}$。
或者使用洛必达法则：设$f(x) = \\frac{\\ln(\\cos \\sqrt{x})}{x}$，则$\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\frac{−\\frac{1}{2}\\frac{\\tan \\sqrt{x}}{\\sqrt{x}}}{1} = −\\frac{1}{2} \\lim_{x→0^{+}} \\frac{\\tan \\sqrt{x}}{\\sqrt{x}} = −\\frac{1}{2}$，所以$\\lim_{x→0^{+}} \\frac{π \\ln(\\cos \\sqrt{x})}{x} = π × (−\\frac{1}{2}) = −\\frac{π}{2}$，同样得$L = e^{−\\frac{π}{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:07:40', 9, 'Mogullzr', '2026-01-29 14:07:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '438');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '438');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '438');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (439, '1991年考研数学卷1第12题', '简单', '考研数学1991年卷1真题', '设$n$是曲面$2x^{2} + 3y^{2} + z^{2} = 6$在点$P(1, 1, 1)$处的指向外侧的法向量，求函数$u = \\frac{\\sqrt{6x^{2}+8y^{2}}}{z}$在点$P$处沿方向$n$的方向导数．', '[]', '$\\frac{11}{7}$
', '首先，计算函数$u = \\frac{\\sqrt{6x^{2}+8y^{2}}}{z}$在点$P(1, 1, 1)$处的梯度$∇u$。
偏导数计算如下：
$\\frac{∂u}{∂x} = \\frac{6x}{z\\sqrt{6x^{2}+8y^{2}}}$，
$\\frac{∂u}{∂y} = \\frac{8y}{z\\sqrt{6x^{2}+8y^{2}}}$，
$\\frac{∂u}{∂z} = −\\frac{\\sqrt{6x^{2}+8y^{2}}}{z^{2}}$。
在点$P(1, 1, 1)$，有$\\sqrt{6x^{2} + 8y^{2}} = \\sqrt{6 ⋅ 1^{2} + 8 ⋅ 1^{2}} = \\sqrt{14}$，
代入得：
$\\frac{∂u}{∂x}​_{P} = \\frac{6⋅1}{1⋅\\sqrt{14}} = \\frac{6}{\\sqrt{14}}$，
$\\frac{∂u}{∂y}​_{P} = \\frac{8⋅1}{1⋅\\sqrt{14}} = \\frac{8}{\\sqrt{14}}$，
$\\frac{∂u}{∂z}​_{P} = −\\frac{\\sqrt{14}}{1^{2}} = −\\sqrt{14}$。
因此，梯度$∇u​_{P} = (\\frac{6}{\\sqrt{14}}, \\frac{8}{\\sqrt{14}}, −\\sqrt{14})$。
接下来，求曲面$2x^{2} + 3y^{2} + z^{2} = 6$在点$P(1, 1, 1)$处指向外侧的法向量$n$。
令$F(x, y, z) = 2x^{2} + 3y^{2} + z^{2} - 6$，则梯度$∇F = (4x, 6y, 2z)$。
在点$P$，有$∇F​_{P} = (4 ⋅ 1, 6 ⋅ 1, 2 ⋅ 1) = (4, 6, 2)$。
该梯度指向外侧，故$n = (4, 6, 2)$。
其模为$∣n∣ = \\sqrt{4^{2} + 6^{2} + 2^{2}} = \\sqrt{56} = 2\\sqrt{14}$，
单位法向量$n_{0} = \\frac{n}{∣n∣} = \\frac{(4,6,2)}{2\\sqrt{14}} = \\frac{(2,3,1)}{\\sqrt{14}} = (\\frac{2}{\\sqrt{14}}, \\frac{3}{\\sqrt{14}}, \\frac{1}{\\sqrt{14}})$。
最后，求方向导数$∇u​_{P} ⋅ n_{0}$：


$$
∇u​_{P} ⋅ n_{0} = (\\frac{6}{\\sqrt{14}} ⋅ \\frac{2}{\\sqrt{14}}) + (\\frac{8}{\\sqrt{14}} ⋅ \\frac{3}{\\sqrt{14}}) + (−\\sqrt{14} ⋅ \\frac{1}{\\sqrt{14}}) = \\frac{12}{14} + \\frac{24}{14} - 1 = \\frac{36}{14} - 1 = \\frac{18}{7} - \\frac{7}{7} = \\frac{11}{7}.
$$

因此，方向导数为$\\frac{11}{7}$。
', 9, 'Mogullzr', '2026-01-29 14:07:40', 9, 'Mogullzr', '2026-01-29 14:07:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '439');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '439');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '439');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (440, '1991年考研数学卷1第13题', '简单', '考研数学1991年卷1真题', '求$\\iiint_{Ω}(x^{2} + y^{2} + z)dV$，其中$Ω$是由曲线$\\begin{cases} y^{2} = 2z \\\\ x = 0 \\end{cases}$绕$z$轴旋转一周而成的曲面与平面$z = 4$所围成的立体．', '[]', '

$$
\\frac{256π}{3}
$$

', '积分区域$Ω$是由曲线$\\begin{cases} y^{2} = 2z \\\\ x = 0 \\end{cases}$绕$z$轴旋转一周得到的曲面$x^{2} + y^{2} = 2z$与平面$z = 4$所围成的立体。在柱坐标下，该区域表示为：$0 ≤ θ ≤ 2π$，$0 ≤ r ≤ 2\\sqrt{2}$，$\\frac{r^{2}}{2} ≤ z ≤ 4$。
积分函数为$x^{2} + y^{2} + z = r^{2} + z$，体积元素$dV = r dz dr dθ$。因此，三重积分化为：

$$
\\iiint_{Ω}(x^{2} + y^{2} + z) dV = \\int_{0}^{2π} \\int_{0}^{2\\sqrt{2}} \\int_{\\frac{r^{2}}{2}}^{4}(r^{2} + z) r dz dr dθ.
$$

先对$z$积分：

$$
\\int_{\\frac{r^{2}}{2}}^{4}(r^{2} + z) dz =  \\lbrack r^{2}z + \\frac{1}{2}z^{2} \\rbrack _{\\frac{r^{2}}{2}}^{4} = (4r^{2} + 8) - (\\frac{r^{4}}{2} + \\frac{r^{4}}{8}) = 4r^{2} + 8 - \\frac{5}{8}r^{4}.
$$

代入后积分变为：

$$
\\int_{0}^{2π} \\int_{0}^{2\\sqrt{2}} (4r^{2} + 8 - \\frac{5}{8}r^{4}) r dr dθ = \\int_{0}^{2π} \\int_{0}^{2\\sqrt{2}} (4r^{3} + 8r - \\frac{5}{8}r^{5}) dr dθ.
$$

对$r$积分：

$$
\\int_{0}^{2\\sqrt{2}} (4r^{3} + 8r - \\frac{5}{8}r^{5}) dr =  \\lbrack r^{4} + 4r^{2} - \\frac{5}{48}r^{6} \\rbrack _{0}^{2\\sqrt{2}} = (64 + 32 - \\frac{5}{48} ⋅ 512) = 96 - \\frac{160}{3} = \\frac{128}{3}.
$$

最后对$θ$积分：

$$
\\int_{0}^{2π} \\frac{128}{3} dθ = \\frac{128}{3} ⋅ 2π = \\frac{256π}{3}.
$$

因此，积分结果为$\\frac{256π}{3}$.
', 9, 'Mogullzr', '2026-01-29 14:07:40', 9, 'Mogullzr', '2026-01-29 14:07:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '440');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '440');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (441, '1991年考研数学卷1第14题', '简单', '考研数学1991年卷1真题', '在过点$O(0, 0)$和$A(π, 0)$的曲线族$y = a \\sin x(a > 0)$中，求一条曲线$L$，
使沿该曲线从$O$到$A$的积分$\\int_{L}(1 + y^{3})dx + (2x + y)dy$的值最小．', '[]', '$y = \\sin x(0 ≤ x ≤ π)$
', '
给定曲线族$y = a \\sin x$（其中$a > 0$）过点$O(0, 0)$和$A(π, 0)$，需最小化积分$\\int_{L}(1 + y^{3}) dx + (2x + y) dy$。
将积分表示为关于$x$的函数：由于$y = a \\sin x$，有$dy = a \\cos x dx$，代入积分得：


$$
\\int_{0}^{π}  \\lbrack (1 + (a \\sin x)3) + (2x + a \\sin x)(a \\cos x) \\rbrack   dx = \\int_{0}^{π}  \\lbrack 1 + a^{3} \\sin^{3} x + 2ax \\cos x + a^{2} \\sin x \\cos x \\rbrack   dx.
$$

计算积分：


$$
\\int_{0}^{π} 1 dx = π,  \\int_{0}^{π} \\sin^{3} x dx = \\frac{4}{3},  \\int_{0}^{π} x \\cos x dx = −2,  \\int_{0}^{π} \\sin x \\cos x dx = 0.
$$

因此，


$$
I(a) = π + \\frac{4}{3}a^{3} - 4a.
$$

为求最小值，对$I(a)$求导：


$$
I^{′}(a) = 4a^{2} - 4.
$$

令$I^{′}(a) = 0$，得$a^{2} = 1$，即$a = 1$（因$a > 0$）。
二阶导数$I^{′′}(a) = 8a$，当$a = 1$时$I^{′′}(1) = 8 > 0$，故为最小值。
因此，曲线为$y = \\sin x$。
', 9, 'Mogullzr', '2026-01-29 14:07:41', 9, 'Mogullzr', '2026-01-29 14:07:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '441');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '441');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '441');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (442, '1991年考研数学卷1第15题', '简单', '考研数学1991年卷1真题', '将函数$f(x) = 2 + ∣x∣$($−1 ≤ x ≤ 1$)展开成以$2$为周期的傅立叶级数，并由此求级数$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$的和．', '[]', '

$$
\\sum_{n=1}^{∞} \\frac{1}{n^{2}} = \\frac{π^{2}}{6}
$$

', '函数$f(x) = 2 + ∣x∣$在区间$\\lbrack −1, 1 \\rbrack$上展开成以$2$为周期的傅立叶级数。由于$f(x)$是偶函数，傅立叶级数只包含余弦项：

$$
f(x) ∼ \\frac{a_{0}}{2} + \\sum_{n=1}^{∞} a_{n} \\cos(nπx)
$$

其中系数计算如下：

$$
a_{0} = 2 \\int_{0}^{1}(2 + x) dx = 2  \\lbrack 2x + \\frac{x^{2}}{2} \\rbrack _{0}^{1} = 2 (2 + \\frac{1}{2}) = 5
$$



$$
a_{n} = 2 \\int_{0}^{1}(2 + x) \\cos(nπx) dx = 2  \\lbrack \\int_{0}^{1} 2 \\cos(nπx) dx + \\int_{0}^{1} x \\cos(nπx) dx \\rbrack
$$

第一项积分为零，第二项积分：

$$
\\int_{0}^{1} x \\cos(nπx) dx =  \\lbrack \\frac{x \\sin(nπx)}{nπ} + \\frac{\\cos(nπx)}{(nπ)2} \\rbrack _{0}^{1} = \\frac{\\cos(nπ) - 1}{n^{2}π^{2}} = \\frac{(−1)n - 1}{n^{2}π^{2}}
$$

所以

$$
a_{n} = \\frac{2 \\lbrack (−1)n - 1 \\rbrack }{n^{2}π^{2}}
$$

当$n$为偶数时，$a_{n} = 0$；当$n$为奇数时，$a_{n} = −\\frac{4}{n^{2}π^{2}}$。令$n = 2k - 1$，则傅立叶级数为：

$$
f(x) = \\frac{5}{2} - \\frac{4}{π^{2}} \\sum_{k=1}^{∞} \\frac{\\cos((2k - 1)πx)}{(2k - 1)2}
$$

在$x = 0$处，$f(0) = 2$，代入级数：

$$
2 = \\frac{5}{2} - \\frac{4}{π^{2}} \\sum_{k=1}^{∞} \\frac{1}{(2k - 1)2}
$$

解得：

$$
\\sum_{k=1}^{∞} \\frac{1}{(2k - 1)2} = \\frac{π^{2}}{8}
$$

设$T = \\sum_{n=1}^{∞} \\frac{1}{n^{2}}$，则：

$$
T = \\sum_{k=1}^{∞} \\frac{1}{(2k - 1)2} + \\sum_{k=1}^{∞} \\frac{1}{(2k)2} = \\frac{π^{2}}{8} + \\frac{1}{4}T
$$

解方程：

$$
T - \\frac{1}{4}T = \\frac{π^{2}}{8}  ⟹  \\frac{3}{4}T = \\frac{π^{2}}{8}  ⟹  T = \\frac{π^{2}}{6}
$$

因此，级数$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$的和为$\\frac{π^{2}}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:07:41', 9, 'Mogullzr', '2026-01-29 14:07:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '442');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '442');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '442');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (443, '1991年考研数学卷1第16题', '简单', '考研数学1991年卷1真题', '设函数$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，$(0, 1)$内可导，且$3 \\int_{\\frac{2}{3}}^{1} f(x)dx = f(0)$，
证明在$(0, 1)$内存在一点$c$，使$f^{′}(c) = 0$．', '[]', '
在$(0, 1)$内存在一点$c$，使$f^{′}(c) = 0$。
', '
由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，根据积分中值定理，存在$ξ ∈  \\lbrack \\frac{2}{3}, 1 \\rbrack$，使得


$$
\\int_{\\frac{2}{3}}^{1} f(x) dx = f(ξ) (1 - \\frac{2}{3}) = \\frac{1}{3}f(ξ).
$$

代入已知条件$3 \\int_{\\frac{2}{3}}^{1} f(x) dx = f(0)$，得


$$
3 ⋅ \\frac{1}{3}f(ξ) = f(0),
$$

即$f(ξ) = f(0)$。
考虑区间$\\lbrack 0, ξ \\rbrack$，其中$ξ ∈  \\lbrack \\frac{2}{3}, 1 \\rbrack$，故$ξ > 0$。函数$f(x)$在$\\lbrack 0, ξ \\rbrack$上连续，在$(0, ξ)$内可导，且$f(0) = f(ξ)$。根据罗尔定理，存在一点$c ∈ (0, ξ) ⊂ (0, 1)$，使得$f^{′}(c) = 0$。
证毕。
', 9, 'Mogullzr', '2026-01-29 14:07:41', 9, 'Mogullzr', '2026-01-29 14:07:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '443');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '443');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '443');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (444, '1991年考研数学卷1第17题', '简单', '考研数学1991年卷1真题', '已知$α_{1} = (1, 0, 2, 3)$，$α_{2} = (1, 1, 3, 5)$，$α_{3} = (1, −1, a + 2, 1)$，$α_{4} = (1, 2, 4, a + 8)$，及$β = (1, 1, b + 3, 5)$．(1)$a$,$b$为何值时，$β$不能表示成$α_{1}$,$α_{2}$,$α_{3}$,$α_{4}$的线性组合？(2)$a$,$b$为何值时，$β$有$α_{1}$,$α_{2}$,$α_{3}$,$α_{4}$的唯一的线性表示式？
并写出该表示式．', '[]', '
(1) 当$a = −1$且$b \\neq 0$时，$β$不能表示成$α_{1}, α_{2}, α_{3}, α_{4}$的线性组合。
(2) 当$a \\neq −1$时，$β$有唯一的线性表示式，且表示式为：


$$
β = (−\\frac{2b}{a + 1}) α_{1} + (1 + \\frac{b}{a + 1}) α_{2} + (\\frac{b}{a + 1}) α_{3} + 0 ⋅ α_{4}.
$$

', '
考虑线性方程组$x_{1}α_{1} + x_{2}α_{2} + x_{3}α_{3} + x_{4}α_{4} = β$，对应的增广矩阵为：


$$
\\left( \\begin{array}{cccc|c}
1 & 1 & 1 & 1 & 1 \\\\
0 & 1 & −1 & 2 & 1 \\\\
2 & 3 & a + 2 & 4 & b + 3 \\\\
3 & 5 & 1 & a + 8 & 5 \\\\
\\end{array} \\right)
$$

通过行变换简化增广矩阵：
$R_{3} → R_{3} - 2R_{1}$，$R_{4} → R_{4} - 3R_{1}$，得：
$\\left( \\begin{array}{cccc|c}
1 & 1 & 1 & 1 & 1 \\\\
0 & 1 & −1 & 2 & 1 \\\\
0 & 1 & a & 2 & b + 1 \\\\
0 & 2 & −2 & a + 5 & 2 \\\\
\\end{array} \\right)$$R_{1} → R_{1} - R_{2}$，$R_{3} → R_{3} - R_{2}$，$R_{4} → R_{4} - 2R_{2}$，得：
$\\left( \\begin{array}{cccc|c}
1 & 0 & 2 & −1 & 0 \\\\
0 & 1 & −1 & 2 & 1 \\\\
0 & 0 & a + 1 & 0 & b \\\\
0 & 0 & 0 & a + 1 & 0 \\\\
\\end{array} \\right)$由此可知，系数矩阵的秩取决于$a$：若$a \\neq −1$，系数矩阵秩为 4，增广矩阵秩也为 4，方程组有唯一解。若$a = −1$，系数矩阵秩为 2，增广矩阵为：
$\\left( \\begin{array}{cccc|c}
1 & 0 & 2 & −1 & 0 \\\\
0 & 1 & −1 & 2 & 1 \\\\
0 & 0 & 0 & 0 & b \\\\
0 & 0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$当$b \\neq 0$时，增广矩阵秩为 3，大于系数矩阵秩，方程组无解；当$b = 0$时，增广矩阵秩为 2，方程组有无穷多解。
因此：
(1) 当$a = −1$且$b \\neq 0$时，$β$不能表示成线性组合。
(2) 当$a \\neq −1$时，$β$有唯一线性表示式。从简化后的方程组解出：


$$
x_{4} = 0,  x_{3} = \\frac{b}{a + 1},  x_{2} = 1 + \\frac{b}{a + 1},  x_{1} = −\\frac{2b}{a + 1}
$$

代入即得表示式。
', 9, 'Mogullzr', '2026-01-29 14:07:41', 9, 'Mogullzr', '2026-01-29 14:07:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '444');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '444');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '444');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (445, '1991年考研数学卷1第18题', '简单', '考研数学1991年卷1真题', '设$A$为$n$阶正定阵，$E$是$n$阶单位阵，证明$A + E$的行列式大于$1$．', '[]', '
$det(A + E) > 1$
', '
方法1：因为$A$为$n$阶正定阵，故存在正交矩阵$Q$，使


$$
Q^{T}AQ = Q^{−1}AQ = Λ = \\left( \\begin{array}{cccc}
λ_{1} &  &  &  \\\\
 & λ_{2} &  &  \\\\
 &  & ⋱ &  \\\\
 &  &  & λ_{n} \\\\
\\end{array} \\right) ,
$$

其中$λ_{i} > 0(i = 1, 2, ⋯  , n)$，$λ_{i}$是$A$的特征值。因此


$$
Q^{T}(A + E)Q = Q^{T}AQ + Q^{T}Q = Λ + E.
$$

两端取行列式得


$$
∣A + E∣ = ∣Q^{T}∣∣A + E∣∣Q∣ = ∣Q^{T}(A + E)Q∣ = ∣Λ + E∣ = \\prod_{i=1}^{n}(λ_{i} + 1) > 1.
$$

方法2：设$A$的$n$个特征值是$λ_{1}, λ_{2}, ⋯  , λ_{n}$。由于$A$为$n$阶正定阵，故特征值全大于0。由$λ$为$A$的特征值可知，存在非零向量$α$使$Aα = λα$，两端同时加上$α$，得$(A + E)α = (λ + 1)α$。按特征值定义知$λ + 1$是$A + E$的特征值。因为$A + E$的特征值是$λ_{1} + 1, λ_{2} + 1, ⋯  , λ_{n} + 1$。它们全大于1，所以$∣A + E∣ = \\prod_{i=1}^{n}(λ_{i} + 1) > 1$。
', 9, 'Mogullzr', '2026-01-29 14:07:42', 9, 'Mogullzr', '2026-01-29 14:07:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '445');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '445');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (446, '1991年考研数学卷1第19题', '简单', '考研数学1991年卷1真题', '在上半平面求一条向上凹的曲线，其上任一点$P(x, y)$处的曲率等于此曲线在该点的法线段$PQ$长度的倒数($Q$是法线与$x$轴的交点)，且曲线在点$(1, 1)$处的切线与$x$轴平行．', '[]', '$y = \\cosh(x - 1) = y = \\frac{e^{x-1} + e^{1-x}}{2}​$
', '设曲线方程为$y = y(x)$，且曲线在上半平面，故$y > 0$。曲线在点$P(x, y)$处的曲率为$κ = \\frac{y^{′′}}{(1+(y^{′})2)3/2}$，其中$y^{′}$和$y^{′′}$分别为一阶和二阶导数。法线段$PQ$的长度为$PQ = y\\sqrt{1 + (y^{′})2}$，其中$Q$是法线与$x$轴的交点。根据条件，曲率等于法线段长度的倒数，即：

$$
\\frac{y^{′′}}{(1 + (y^{′})2)3/2} = \\frac{1}{y\\sqrt{1 + (y^{′})2}}
$$

简化得：

$$
y^{′′} = \\frac{1 + (y^{′})2}{y}
$$

令$p = y^{′}$，则$y^{′′} = p\\frac{dp}{dy}$，代入方程：

$$
p\\frac{dp}{dy} = \\frac{1 + p^{2}}{y}
$$

分离变量：

$$
\\frac{p}{1 + p^{2}}dp = \\frac{1}{y}dy
$$

积分两边：

$$
∫ \\frac{p}{1 + p^{2}}dp = ∫ \\frac{1}{y}dy
$$

左边积分得$\\frac{1}{2} \\ln(1 + p^{2})$，右边积分得$\\ln y + C$，故：

$$
\\frac{1}{2} \\ln(1 + p^{2}) = \\ln y + C
$$

即：

$$
\\ln(1 + p^{2}) = 2 \\ln y + 2C = \\ln(Ky^{2})
$$

其中$K = e^{2C}$，所以：

$$
1 + p^{2} = Ky^{2}
$$

即：

$$
(y^{′})2 = Ky^{2} - 1
$$

曲线在点$(1, 1)$处的切线与$x$轴平行，故$y^{′}(1) = 0$。代入得：

$$
0 = K ⋅ 1^{2} - 1  ⟹  K = 1
$$

因此：

$$
(y^{′})2 = y^{2} - 1
$$

由于曲线在上半平面且向上凹，取$y^{′} = \\sqrt{y^{2} - 1}$。解微分方程：

$$
\\frac{dy}{dx} = \\sqrt{y^{2} - 1}
$$

分离变量：

$$
\\frac{dy}{\\sqrt{y^{2} - 1}} = dx
$$

积分两边：

$$
∫ \\frac{dy}{\\sqrt{y^{2} - 1}} = ∫ dx
$$

左边积分得$\\cosh^{−1} y$，故：

$$
\\cosh^{−1} y = x + C
$$

代入点$(1, 1)$：

$$
\\cosh^{−1} 1 = 1 + C  ⟹  0 = 1 + C  ⟹  C = −1
$$

所以：

$$
\\cosh^{−1} y = x - 1  ⟹  y = \\cosh(x - 1)
$$

验证：在点$(1, 1)$处，$y = \\cosh(0) = 1$，且$y^{′} = \\sinh(x - 1)$，在$x = 1$时$y^{′} = 0$，切线与$x$轴平行；$y^{′′} = \\cosh(x - 1) > 0$，曲线向上凹。满足所有条件。
', 9, 'Mogullzr', '2026-01-29 14:07:42', 9, 'Mogullzr', '2026-01-29 14:07:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '446');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '446');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '446');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (447, '1991年考研数学卷1第20题', '简单', '考研数学1991年卷1真题', '若随机变量$X$服从均值为$2$，方差为$σ^{2}$的正态分布，
且$P\\{2 < X < 4\\} = 0.3$，则$P\\{X < 0\\} =$______．', '[]', '$0.2$
', '随机变量$X$服从均值为 2 的正态分布。由于正态分布关于均值对称，因此$P\\{0 < X < 2\\} = P\\{2 < X < 4\\} = 0.3$。
又因为$P\\{X < 2\\} = 0.5$，且$P\\{X < 2\\} = P\\{X < 0\\} + P\\{0 < X < 2\\}$，
所以$P\\{X < 0\\} = P\\{X < 2\\} - P\\{0 < X < 2\\} = 0.5 - 0.3 = 0.2$。
因此，$P\\{X < 0\\} = 0.2$。
', 9, 'Mogullzr', '2026-01-29 14:07:42', 9, 'Mogullzr', '2026-01-29 14:07:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '447');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '447');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (448, '1991年考研数学卷1第21题', '简单', '考研数学1991年卷1真题', '随机地向半圆$0 < y < \\sqrt{2ax - x^{2}}$（$a$为正常数）内掷一点，
点落在半圆内任何区域的概率与区域的面积成正比，
则原点和该点的连线与$x$轴的夹角小于$\\frac{π}{4}$的概率为 ______．', '[]', '$\\frac{1}{2} + \\frac{1}{π}$
', '这是一个几何概型的问题。我们可以通过计算满足条件的区域面积与总区域面积之比来得出概率。
1. 确定总区域（样本空间）的面积
题目给出的区域为半圆$0 < y < \\sqrt{2ax - x^{2}}$。
对不等式$y < \\sqrt{2ax - x^{2}}$两边平方并整理：

$$
y^{2} < 2ax - x^{2}  ⟹  x^{2} - 2ax + y^{2} < 0  ⟹  (x - a)2 + y^{2} < a^{2}
$$

这是一个圆心在$(a, 0)$，半径为$a$的圆。
结合$y > 0$，可知该区域$Ω$是上半圆。
其总面积$S_{Ω}$为：

$$
S_{Ω} = \\frac{1}{2}πa^{2}
$$

2. 确定满足条件的区域（事件）的面积
设点为$P(x, y)$，原点为$O$。题目要求$OP$与$x$轴的夹角小于$\\frac{π}{4}$。
在第一象限（因为$y > 0$）内，这意味着直线$OP$的斜率小于$\\tan(\\frac{π}{4})$，即：

$$
\\frac{y}{x} < 1  ⟹  y < x
$$

我们需要计算上半圆内满足$y < x$的区域面积$S_{A}$。
圆的方程为$(x - a)2 + y^{2} = a^{2}$。
找出直线$y = x$与圆周的交点：
代入$y = x$得$(x - a)2 + x^{2} = a^{2}  ⟹  2x^{2} - 2ax = 0  ⟹  2x(x - a) = 0$。
交点为原点$O(0, 0)$和点$P(a, a)$。
我们可以将满足条件的区域分割为两部分计算：
三角形区域：由原点$O(0, 0)$、圆心$C(a, 0)$和交点$P(a, a)$围成的三角形。
这是一个底为$a$，高为$a$的直角三角形。$S_{△} = \\frac{1}{2} × 底 × 高 = \\frac{1}{2} × a × a = \\frac{a^{2}}{2}$扇形区域：由圆心$C(a, 0)$，以及圆弧从点$P(a, a)$到点$(2a, 0)$围成的扇形。
向量$CP = (0, a)$，向量$C(2a,0)​ = (a, 0)$（即x轴方向）。
显然$CP ⊥ x轴$，圆心角为$90^{∘}$($\\frac{π}{2}$)。
该扇形面积为圆面积的$\\frac{1}{4}$：$S_{扇形} = \\frac{1}{4}πa^{2}$
所以，满足条件的区域总面积$S_{A}$为：

$$
S_{A} = S_{△} + S_{扇形} = \\frac{a^{2}}{2} + \\frac{πa^{2}}{4}
$$

(注：也可以使用极坐标积分计算。圆的极坐标方程为$r = 2a \\cos θ$。面积积分$\\int_{0}^{π/4} \\frac{1}{2}r^{2}dθ$也会得出相同结果。)
3. 计算概率

$$
P = \\frac{S_{A}}{S_{Ω}} = \\frac{\\frac{a^{2}}{2} + \\frac{πa^{2}}{4}}{\\frac{πa^{2}}{2}}
$$

分子分母同时除以$\\frac{a^{2}}{2}$：

$$
P = \\frac{1 + \\frac{π}{2}}{π} = \\frac{1}{π} + \\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:42', 9, 'Mogullzr', '2026-01-29 14:07:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '448');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '448');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '448');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (449, '1991年考研数学卷1第22题', '简单', '考研数学1991年卷1真题', '设二维随机变量$(X, Y)$的概率密度为
$$
f(x, y) = \\begin{cases} 2e^{−(x+2y)} & x > 0, y > 0; \\\\ 0 & 其他. \\end{cases}
$$
求随机变量$Z = X + 2Y$的分布函数．', '[]', '

$$
F_{Z}(z) = \\begin{cases} 0 & z ≤ 0 \\\\ 1 - e^{−z} - ze^{−z} & z > 0. \\end{cases}
$$

', '随机变量$Z = X + 2Y$的分布函数定义为$F_{Z}(z) = P(Z ≤ z) = P(X + 2Y ≤ z)$。由于概率密度函数$f(x, y)$在$x > 0$和$y > 0$时非零，且$X$和$Y$均大于 0，因此当$z ≤ 0$时，$F_{Z}(z) = 0$。
当$z > 0$时，计算二重积分：

$$
F_{Z}(z) = \\iint_{x+2y≤z} f(x, y) dx dy = \\int_{y=0}^{y=z/2} \\int_{x=0}^{x=z-2y} 2e^{−(x+2y)} dx dy.
$$

先计算内层积分：

$$
\\int_{x=0}^{x=z-2y} 2e^{−(x+2y)} dx = 2e^{−2y} \\int_{0}^{z-2y} e^{−x} dx = 2e^{−2y}  \\lbrack −e^{−x} \\rbrack _{0}^{z-2y} = 2e^{−2y} (1 - e^{−(z-2y)}) = 2e^{−2y} - 2e^{−z}.
$$

然后计算外层积分：

$$
F_{Z}(z) = \\int_{0}^{z/2} (2e^{−2y} - 2e^{−z}) dy = 2 \\int_{0}^{z/2} e^{−2y} dy - 2e^{−z} \\int_{0}^{z/2} dy.
$$

其中：

$$
\\int_{0}^{z/2} e^{−2y} dy =  \\lbrack −\\frac{1}{2}e^{−2y} \\rbrack _{0}^{z/2} = −\\frac{1}{2}e^{−z} + \\frac{1}{2},
$$

所以：

$$
2 \\int_{0}^{z/2} e^{−2y} dy = 1 - e^{−z},
$$

而：

$$
2e^{−z} \\int_{0}^{z/2} dy = 2e^{−z} ⋅ \\frac{z}{2} = ze^{−z}.
$$

因此：

$$
F_{Z}(z) = 1 - e^{−z} - ze^{−z}.
$$

综上，$Z$的分布函数为：

$$
F_{Z}(z) = \\begin{cases} 0 & z ≤ 0 \\\\ 1 - e^{−z} - ze^{−z} & z > 0. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:42', 9, 'Mogullzr', '2026-01-29 14:07:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '449');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '449');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '449');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (450, '1991年考研数学卷2第1题', '', '考研数学1991年卷2真题', '/problems/other/428', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (451, '1991年考研数学卷2第2题', '', '考研数学1991年卷2真题', '/problems/other/429', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (452, '1991年考研数学卷2第3题', '', '考研数学1991年卷2真题', '/problems/other/430', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (453, '1991年考研数学卷2第4题', '', '考研数学1991年卷2真题', '/problems/other/431', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (454, '1991年考研数学卷2第5题', '', '考研数学1991年卷2真题', '/problems/other/432', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (455, '1991年考研数学卷2第6题', '', '考研数学1991年卷2真题', '/problems/other/433', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (456, '1991年考研数学卷2第7题', '', '考研数学1991年卷2真题', '/problems/other/434', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (457, '1991年考研数学卷2第8题', '', '考研数学1991年卷2真题', '/problems/other/435', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (458, '1991年考研数学卷2第9题', '', '考研数学1991年卷2真题', '/problems/other/436', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (459, '1991年考研数学卷2第10题', '', '考研数学1991年卷2真题', '/problems/other/437', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (460, '1991年考研数学卷2第11题', '', '考研数学1991年卷2真题', '/problems/other/438', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (461, '1991年考研数学卷2第12题', '', '考研数学1991年卷2真题', '/problems/other/439', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (462, '1991年考研数学卷2第13题', '', '考研数学1991年卷2真题', '/problems/other/440', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (463, '1991年考研数学卷2第14题', '简单', '考研数学1991年卷2真题', '求$\\int_{3}^{+∞} \\frac{dx}{(x-1)4\\sqrt{x^{2}-2x}}$．', '[]', '

$$
\\frac{16 - 9\\sqrt{3}}{24}
$$

', '考虑积分$\\int_{3}^{+∞} \\frac{dx}{(x-1)4\\sqrt{x^{2}-2x}}$。首先完成平方：$x^{2} - 2x = (x - 1)2 - 1$，因此积分化为$\\int_{3}^{+∞} \\frac{dx}{(x-1)4\\sqrt{(x-1)2-1}}$。令$u = x - 1$，则当$x = 3$时$u = 2$，当$x → +∞$时$u → +∞$，积分变为$\\int_{2}^{+∞} \\frac{du}{u^{4}\\sqrt{u^{2}-1}}$。
令$u = sec θ$，则$du = sec θ \\tan θ dθ$，且$\\sqrt{u^{2} - 1} = \\tan θ$。被积函数化为：

$$
\\frac{1}{u^{4}\\sqrt{u^{2} - 1}}du = \\frac{1}{sec^{4} θ ⋅ \\tan θ} ⋅ sec θ \\tan θ dθ = \\frac{1}{sec^{3} θ} dθ = \\cos^{3} θ dθ.
$$

积分上下限对应：当$u = 2$时$sec θ = 2$，即$\\cos θ = \\frac{1}{2}$，故$θ = \\frac{π}{3}$；当$u → +∞$时$sec θ → +∞$，即$θ → \\frac{π}{2}^{-}$。因此积分化为：

$$
\\int_{π/3}^{π/2} \\cos^{3} θ dθ.
$$

计算$∫ \\cos^{3} θ dθ$：

$$
∫ \\cos^{3} θ dθ = ∫ \\cos θ(1 - \\sin^{2} θ) dθ.
$$

令$s = \\sin θ$，则$ds = \\cos θ dθ$，于是：

$$
∫(1 - s^{2}) ds = s - \\frac{s^{3}}{3} + C = \\sin θ - \\frac{\\sin^{3} θ}{3} + C.
$$

代入上下限：

$$
\\lbrack \\sin θ - \\frac{\\sin^{3} θ}{3} \\rbrack _{π/3}^{π/2} = (1 - \\frac{1}{3}) - ​\\frac{\\sqrt{3}}{2} - \\frac{1}{3} (\\frac{\\sqrt{3}}{2})^{3}​ = \\frac{2}{3} - (\\frac{\\sqrt{3}}{2} - \\frac{1}{3} ⋅ \\frac{3\\sqrt{3}}{8}) = \\frac{2}{3} - (\\frac{\\sqrt{3}}{2} - \\frac{\\sqrt{3}}{8}) = \\frac{2}{3} - \\frac{3\\sqrt{3}}{8}.
$$

通分得：

$$
\\frac{2}{3} - \\frac{3\\sqrt{3}}{8} = \\frac{16}{24} - \\frac{9\\sqrt{3}}{24} = \\frac{16 - 9\\sqrt{3}}{24}.
$$

因此，原积分的值为$\\frac{16-9\\sqrt{3}}{24}$。
', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '463');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '463');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '463');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (464, '1991年考研数学卷2第15题', '简单', '考研数学1991年卷2真题', '计算$I = \\iint_{S} −ydzdx + (z + 1)dxdy$，
其中$S$是圆柱面$x^{2} + y^{2} = 4$被平面$x + z = 2$和$z = 0$所截出部分的外侧．', '[]', '
$−8π$
', '
考虑曲面积分$I = \\iint_{S} −y dz dx + (z + 1) dx dy$，其中$S$是圆柱面$x^{2} + y^{2} = 4$被平面$x + z = 2$和$z = 0$所截部分的外侧。
令向量场$F = (0, −y, z + 1)$，则积分可写为$\\iint_{S} F ⋅ dS$。
参数化圆柱面：$x = 2 \\cos θ$,$y = 2 \\sin θ$,$z = z$，其中$θ ∈  \\lbrack 0, 2π \\rbrack$，$z$从$0$到$2 - 2 \\cos θ$。
计算切向量：
$r_{θ} = (−2 \\sin θ, 2 \\cos θ, 0)$，
$r_{z} = (0, 0, 1)$。
法向量为$r_{θ} × r_{z} = (2 \\cos θ, 2 \\sin θ, 0)$，指向外侧。
面积元素向量$dS = (2 \\cos θ, 2 \\sin θ, 0) dθ dz$。
向量场$F = (0, −2 \\sin θ, z + 1)$。
点积$F ⋅ dS = (0, −2 \\sin θ, z + 1) ⋅ (2 \\cos θ, 2 \\sin θ, 0) dθ dz = −4 \\sin^{2} θ dθ dz$。
积分变为：


$$
I = \\int_{0}^{2π} \\int_{0}^{2-2 \\cos θ} −4 \\sin^{2} θ dz dθ = \\int_{0}^{2π} −4 \\sin^{2} θ(2 - 2 \\cos θ) dθ = \\int_{0}^{2π}(−8 \\sin^{2} θ + 8 \\sin^{2} θ \\cos θ) dθ.
$$

计算积分：
令$A = \\int_{0}^{2π} −8 \\sin^{2} θ dθ$，
$B = \\int_{0}^{2π} 8 \\sin^{2} θ \\cos θ dθ$。
计算$A$:


$$
\\int_{0}^{2π} \\sin^{2} θ dθ = \\int_{0}^{2π} \\frac{1 - \\cos 2θ}{2} dθ = \\frac{1}{2}  \\lbrack θ - \\frac{\\sin 2θ}{2} \\rbrack _{0}^{2π} = \\frac{1}{2} ⋅ 2π = π,
$$

所以$A = −8π$。
计算$B$:
令$u = \\sin θ$，则$du = \\cos θ dθ$，当$θ$从$0$到$2π$，$u$从$0$到$0$，所以$B = 0$。
因此，$I = A + B = −8π$。
故答案为$−8π$。
\\boxed{-8\\pi}
', 9, 'Mogullzr', '2026-01-29 14:07:44', 9, 'Mogullzr', '2026-01-29 14:07:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '464');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '464');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '464');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (465, '1991年考研数学卷2第16题', '', '考研数学1991年卷2真题', '/problems/other/441', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:45', 9, 'Mogullzr', '2026-01-29 14:07:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (466, '1991年考研数学卷2第17题', '', '考研数学1991年卷2真题', '/problems/other/442', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:45', 9, 'Mogullzr', '2026-01-29 14:07:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (467, '1991年考研数学卷2第18题', '', '考研数学1991年卷2真题', '/problems/other/443', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:45', 9, 'Mogullzr', '2026-01-29 14:07:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (468, '1991年考研数学卷2第19题', '', '考研数学1991年卷2真题', '/problems/other/444', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:45', 9, 'Mogullzr', '2026-01-29 14:07:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (469, '1991年考研数学卷2第20题', '', '考研数学1991年卷2真题', '/problems/other/445', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:45', 9, 'Mogullzr', '2026-01-29 14:07:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (470, '1991年考研数学卷2第21题', '', '考研数学1991年卷2真题', '/problems/other/446', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:45', 9, 'Mogullzr', '2026-01-29 14:07:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (471, '1991年考研数学卷3第1题', '简单', '考研数学1991年卷3真题', '设$y = \\ln(1 + 3^{−x})$，则$dy =$______．', '[]', '
$dy = −\\frac{\\ln 3}{1 + 3^{x}} dx$
', '
给定函数$y = \\ln(1 + 3^{−x})$，求微分$dy$。
首先，求导数$\\frac{dy}{dx}$。
令$u = 1 + 3^{−x}$，则$y = \\ln u$。
由链式法则，


$$
\\frac{dy}{dx} = \\frac{1}{u} ⋅ \\frac{du}{dx}.
$$

计算$\\frac{du}{dx}$：
$u = 1 + 3^{−x}$，其中$3^{−x} = e^{−x \\ln 3}$，
故


$$
\\frac{du}{dx} = \\frac{d}{dx}(3^{−x}) = \\frac{d}{dx}e^{−x \\ln 3} = e^{−x \\ln 3} ⋅ (− \\ln 3) = − \\ln 3 ⋅ 3^{−x}.
$$

代入得：


$$
\\frac{dy}{dx} = \\frac{1}{1 + 3^{−x}} ⋅ (− \\ln 3 ⋅ 3^{−x}) = −\\frac{\\ln 3 ⋅ 3^{−x}}{1 + 3^{−x}}.
$$

简化表达式：


$$
\\frac{3^{−x}}{1 + 3^{−x}} = \\frac{1}{3^{x}} ⋅ \\frac{1}{1 + \\frac{1}{3^{x}}} = \\frac{1}{3^{x}} ⋅ \\frac{1}{\\frac{3^{x}+1}{3^{x}}} = \\frac{1}{3^{x}} ⋅ \\frac{3^{x}}{3^{x} + 1} = \\frac{1}{3^{x} + 1}.
$$

所以，


$$
\\frac{dy}{dx} = − \\ln 3 ⋅ \\frac{1}{1 + 3^{x}}.
$$

因此，微分


$$
dy = \\frac{dy}{dx} dx = −\\frac{\\ln 3}{1 + 3^{x}} dx.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:47', 9, 'Mogullzr', '2026-01-29 14:07:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '471');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '471');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '471');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (472, '1991年考研数学卷3第2题', '简单', '考研数学1991年卷3真题', '曲线$y = e^{−x^{2}}$的上凸区间是 ______．', '[]', '
$(−\\frac{\\sqrt{2}}{2}, \\frac{\\sqrt{2}}{2})$
', '
函数$y = e^{−x^{2}}$的二阶导数为$y^{′′} = e^{−x^{2}}(4x^{2} - 2)$。由于$e^{−x^{2}} > 0$恒成立，因此$y^{′′}$的符号由$4x^{2} - 2$决定。令$4x^{2} - 2 < 0$，解得$x^{2} < \\frac{1}{2}$，即$−\\frac{\\sqrt{2}}{2} < x < \\frac{\\sqrt{2}}{2}$。在此区间内，$y^{′′} < 0$，函数上凸，故上凸区间为$(−\\frac{\\sqrt{2}}{2}, \\frac{\\sqrt{2}}{2})$。
', 9, 'Mogullzr', '2026-01-29 14:07:47', 9, 'Mogullzr', '2026-01-29 14:07:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '472');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '472');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '472');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (473, '1991年考研数学卷3第3题', '简单', '考研数学1991年卷3真题', '$\\int_{1}^{+∞} \\frac{\\ln x}{x^{2}}dx =$______．', '[]', '
1
', '
计算积分$\\int_{1}^{+∞} \\frac{\\ln x}{x^{2}} dx$。使用分部积分法，令$u = \\ln x$，$dv = \\frac{1}{x^{2}} dx$，则$du = \\frac{1}{x} dx$，$v = −\\frac{1}{x}$。
代入分部积分公式：


$$
∫ u dv = uv - ∫ v du
$$

得：


$$
\\int_{1}^{+∞} \\frac{\\ln x}{x^{2}} dx =  \\lbrack −\\frac{\\ln x}{x} \\rbrack _{1}^{+∞} + \\int_{1}^{+∞} \\frac{1}{x^{2}} dx
$$

计算边界项：
当$x → +∞$时，$\\frac{\\ln x}{x} → 0$，故$−\\frac{\\ln x}{x} → 0$；
当$x = 1$时，$\\ln 1 = 0$，故$−\\frac{\\ln 1}{1} = 0$。
因此边界项为 0。
剩余积分：


$$
\\int_{1}^{+∞} \\frac{1}{x^{2}} dx =  \\lbrack −\\frac{1}{x} \\rbrack _{1}^{+∞} = \\lim_{b→+∞} (−\\frac{1}{b}) - (−\\frac{1}{1}) = 0 + 1 = 1
$$

故原积分为 1。
', 9, 'Mogullzr', '2026-01-29 14:07:47', 9, 'Mogullzr', '2026-01-29 14:07:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '473');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '473');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '473');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (474, '1991年考研数学卷3第4题', '简单', '考研数学1991年卷3真题', '质点以速度$t \\sin(t^{2})$米/秒作直线运动，则从时刻$t_{1} = \\sqrt{\\frac{π}{2}}$秒到$t_{2} = \\sqrt{π}$秒质点所经过的路程等于米 ______．', '[]', '$\\frac{1}{2}$
', '质点的速度函数为$v(t) = t \\sin(t^{2})$，需要计算从$t_{1} = \\sqrt{\\frac{π}{2}}$到$t_{2} = \\sqrt{π}$的路程。路程是速度函数的绝对值积分，即$s = \\int_{t_{1}}^{t_{2}} ∣v(t)∣ dt$。
由于$t$在区间$\\lbrack t_{1}, t_{2} \\rbrack$上为正，有$∣v(t)∣ = ∣t \\sin(t^{2})∣ = t∣ \\sin(t^{2})∣$，因此：

$$
s = \\int_{t_{1}}^{t_{2}} t∣ \\sin(t^{2})∣ dt
$$

令$u = t^{2}$，则$du = 2t dt$，即$t dt = \\frac{du}{2}$。积分限变换为：
当$t = t_{1}$时，$u = (\\sqrt{\\frac{π}{2}})^{2} = \\frac{π}{2}$当$t = t_{2}$时，$u = (\\sqrt{π})^{2} = π$
代入得：

$$
s = \\int_{\\frac{π}{2}}^{π} ∣ \\sin u∣ ⋅ \\frac{du}{2} = \\frac{1}{2} \\int_{\\frac{π}{2}}^{π} ∣ \\sin u∣ du
$$

在区间$\\lbrack \\frac{π}{2}, π \\rbrack$上，$\\sin u ≥ 0$，因此$∣ \\sin u∣ = \\sin u$，积分简化为：

$$
s = \\frac{1}{2} \\int_{\\frac{π}{2}}^{π} \\sin u du
$$

计算积分：

$$
\\int_{\\frac{π}{2}}^{π} \\sin u du =  \\lbrack − \\cos u \\rbrack _{\\frac{π}{2}}^{π} = − \\cos π - (− \\cos \\frac{π}{2}) = −(−1) - (−0) = 1
$$

所以：

$$
s = \\frac{1}{2} × 1 = \\frac{1}{2}
$$

因此，质点所经过的路程为$\\frac{1}{2}$米。
', 9, 'Mogullzr', '2026-01-29 14:07:48', 9, 'Mogullzr', '2026-01-29 14:07:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '474');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '474');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '474');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (475, '1991年考研数学卷3第5题', '简单', '考研数学1991年卷3真题', '$\\lim_{x→0^{+}} \\frac{1-e^{\\frac{1}{x}}}{x+e^{\\frac{1}{x}}} =$______．', '[]', '-1
', '考虑极限$\\lim_{x→0^{+}} \\frac{1-e^{\\frac{1}{x}}}{x+e^{\\frac{1}{x}}}$。当$x → 0^{+}$时，$e^{\\frac{1}{x}} → +∞$，分子和分母均涉及无穷大，因此将分子和分母同时除以$e^{\\frac{1}{x}}$：

$$
\\frac{1 - e^{\\frac{1}{x}}}{x + e^{\\frac{1}{x}}} = \\frac{e^{−\\frac{1}{x}} - 1}{xe^{−\\frac{1}{x}} + 1}.
$$

当$x → 0^{+}$时，$e^{−\\frac{1}{x}} → 0$，因此分子$e^{−\\frac{1}{x}} - 1 → −1$，分母$xe^{−\\frac{1}{x}} + 1 → 1$（因为$xe^{−\\frac{1}{x}} → 0$）。故极限为$−1$。
或者，令$t = \\frac{1}{x}$，则当$x → 0^{+}$时，$t → +∞$，原极限化为：

$$
\\lim_{t→+∞} \\frac{1 - e^{t}}{\\frac{1}{t} + e^{t}} = \\lim_{t→+∞} \\frac{\\frac{1}{e^{t}} - 1}{1 + \\frac{1}{te^{t}}}.
$$

当$t → +∞$时，$\\frac{1}{e^{t}} → 0$，$\\frac{1}{te^{t}} → 0$，因此分子趋近于$−1$，分母趋近于$1$，极限为$−1$。
两种方法均得极限为$−1$。
', 9, 'Mogullzr', '2026-01-29 14:07:48', 9, 'Mogullzr', '2026-01-29 14:07:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '475');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '475');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '475');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (476, '1991年考研数学卷3第6题', '简单', '考研数学1991年卷3真题', '若曲线$y = x^{2} + ax + b$和$2y = −1 + xy^{3}$在点$(1, −1)$处相切，其中$a$,$b$是常数，则', '[''$a = 0, b = −2$．'', ''$a = 1, b = −3$．'', ''$a = −3, b = 1$．'', ''$a = −1, b = −1$．'']', "['D']", '
两条曲线在点$(1, −1)$处相切，意味着它们在该点有相同的切线斜率。首先，对于曲线

$$
y = x^{2} + ax + b,
$$
求导得

$$
y^{′} = 2x + a.
$$
在点$(1, −1)$处的斜率为

$$
2(1) + a = 2 + a.
$$
对于曲线

$$
2y = −1 + xy^{3},
$$
使用隐函数求导，两边对$x$求导：左边为$2y^{′}$，右边为$y^{3} + 3xy^{2}y^{′}$，即

$$
2y^{′} = y^{3} + 3xy^{2}y^{′}.
$$
代入点$(1, −1)$，得

$$
2y^{′} = (−1)3 + 3(1)(−1)2y^{′},
$$
即

$$
2y^{′} = −1 + 3y^{′}.
$$
解得

$$
y^{′} = 1.
$$
因此，第一条曲线在点$(1, −1)$处的斜率也应为$1$，即

$$
2 + a = 1,
$$
解得

$$
a = −1.
$$
又点$(1, −1)$在第一条曲线上，代入得

$$
−1 = 1^{2} + (−1)(1) + b,
$$
即

$$
−1 = 1 - 1 + b,
$$
解得

$$
b = −1.
$$
故$a = −1,  b = −1$，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:07:48', 9, 'Mogullzr', '2026-01-29 14:07:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '476');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '476');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '476');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (477, '1991年考研数学卷3第7题', '简单', '考研数学1991年卷3真题', '设函数$f(x) = \\begin{cases} x^{2} & 0 ≤ x ≤ 1 \\\\ 2 - x & 1 < x ≤ 2. \\end{cases}$记$F(x) = \\int_{0}^{x} f(t)dt$,$0 ≤ x ≤ 2$，则', '[''$F(x) = \\\\begin{cases} \\\\frac{x^{3}}{3} & 0 ≤ x ≤ 1; \\\\\\\\ \\\\frac{1}{3} + 2x - \\\\frac{x^{2}}{3} & 1 < x ≤ 2. \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} \\\\frac{x^{3}}{3} & 0 ≤ x ≤ 1; \\\\\\\\ −\\\\frac{7}{6} + 2x - \\\\frac{x^{2}}{2} & 1 < x ≤ 2. \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} \\\\frac{x^{3}}{3} & 0 ≤ x ≤ 1; \\\\\\\\ \\\\frac{x^{2}}{3} + 2x - \\\\frac{x^{2}}{2} & 1 < x ≤ 2. \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} \\\\frac{x^{3}}{3} & 0 ≤ x ≤ 1; \\\\\\\\ 2x - \\\\frac{x^{2}}{2} & 1 < x ≤ 2. \\\\end{cases}$'']', "['B']", '
函数$f(x)$是分段函数，$F(x) = \\int_{0}^{x} f(t) dt$。
$$
F(x) = \\int_{0}^{x} t^{2} dt = \\frac{t^{3}}{3}​_{0}^{x} = \\frac{x^{3}}{3},
$$
因此，正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:07:48', 9, 'Mogullzr', '2026-01-29 14:07:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '477');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '477');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '477');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (478, '1991年考研数学卷3第8题', '简单', '考研数学1991年卷3真题', '设函数$f(x)$在$(−∞, +∞)$内有定义，$x_{0} \\neq 0$是函数$f(x)$的极大值点，则', '[''$x_{0}$必是$f(x)$的驻点'', ''$−x_{0}$必是$−f(−x)$的极小值点'', ''$−x_{0}$必是$−f(x)$的极小值点'', ''对一切$x$都有$f(x) ≤ f(x_{0})$'']', "['B']", '设函数$f(x)$在$(−∞, +∞)$内有定义，$x_{0} \\neq 0$是$f(x)$的极大值点（通常指局部极大值）。考虑选项B：令$g(x) = −f(−x)$，则$g(−x_{0}) = −f(−(−x_{0})) = −f(x_{0})$。由于$x_{0}$是$f(x)$的极大值点，存在邻域使得当$x$接近$x_{0}$时，$f(x) ≤ f(x_{0})$。对于$g(x)$在点$y = −x_{0}$，当$x$接近$y$时，$−x$接近$x_{0}$，因此$f(−x) ≤ f(x_{0})$，即$g(x) = −f(−x) ≥ −f(x_{0}) = g(y)$。故$g(x)$在$y = −x_{0}$处取得极小值，即$−x_{0}$是$−f(−x)$的极小值点。选项A错误，因为极大值点不一定可导，因此不一定是驻点。选项C错误，反例：设$f(x) = −(x - 1)2$，$x_{0} = 1$是极大值点，但$−x_{0} = −1$不是$−f(x) = (x - 1)2$的极小值点。选项D错误，因为极大值点通常是局部极大值，不一定对一切$x$都有$f(x) ≤ f(x_{0})$。因此，正确选项为B。', 9, 'Mogullzr', '2026-01-29 14:07:48', 9, 'Mogullzr', '2026-01-29 14:07:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '478');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '478');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '478');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (479, '1991年考研数学卷3第9题', '', '考研数学1991年卷3真题', '/problems/other/433', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:48', 9, 'Mogullzr', '2026-01-29 14:07:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (480, '1991年考研数学卷3第10题', '简单', '考研数学1991年卷3真题', '如图，$x$轴上有一线密度为常数$μ$，长度为$l$的细杆，
有一质量为$m$的质点到杆右端的距离为$a$，已知引力系数为$k$，
则质点和细杆之间引力的大小为
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/811bc86afafc409dae44d09b8bda4916.jpg)
', '[''$\\\\int_{−1}^{0} \\\\frac{kmμ}{(a-x)2}dx$．'', ''$\\\\int_{0}^{l} \\\\frac{kmμ}{(a-x)2}dx$'', ''$2 \\\\int_{−\\\\frac{l}{2}}^{0} \\\\frac{kmμ}{(a-x)2}dx$．'', ''$2 \\\\int_{0}^{\\\\frac{l}{2}} \\\\frac{kmμ}{(a-x)2}dx$．'']', "['A']", '
根据引力定律，细杆与质点之间的引力需通过积分计算。设细杆右端位于坐标原点，即杆从$x = −l$到$x = 0$，质点位于$x = a$处。杆上任意一点$x$的质量微元为$μ dx$，与质点的距离为$a - x$，因此引力微元为$\\frac{kmμ}{(a-x)2} dx$。总引力大小为积分从$x = −l$到$x = 0$，即
$$
\\int_{−l}^{0} \\frac{kmμ}{(a - x)2} dx.
$$
故正确答案为A。', 9, 'Mogullzr', '2026-01-29 14:07:50', 9, 'Mogullzr', '2026-01-29 14:07:50', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '480');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '480');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '480');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (481, '1991年考研数学卷3第11题', '简单', '考研数学1991年卷3真题', '设$\\begin{cases} x = t \\cos t \\\\ y = t \\sin t \\end{cases}$，求$\\frac{d^{2}y}{dx^{2}}$．', '[]', '

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{t^{2} + 2}{(\\cos t - t \\sin t)3}
$$

', '给定参数方程：

$$
x = t \\cos t,  y = t \\sin t
$$

先求一阶导数$\\frac{dy}{dx}$。计算$\\frac{dx}{dt}$和$\\frac{dy}{dt}$：

$$
\\frac{dx}{dt} = \\cos t - t \\sin t,  \\frac{dy}{dt} = t \\cos t + \\sin t
$$

则一阶导数为：

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{t \\cos t + \\sin t}{\\cos t - t \\sin t}
$$

再求二阶导数$\\frac{d^{2}y}{dx^{2}}$，公式为：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dt} (\\frac{dy}{dx}) ⋅ \\frac{1}{\\frac{dx}{dt}}
$$

令$u = \\frac{dy}{dx} = \\frac{f(t)}{g(t)}$，其中$f(t) = t \\cos t + \\sin t$，$g(t) = \\cos t - t \\sin t$。求$\\frac{du}{dt}$使用商法则：

$$
\\frac{du}{dt} = \\frac{f^{′}(t)g(t) - f(t)g^{′}(t)}{ \\lbrack g(t) \\rbrack 2}
$$

计算$f^{′}(t)$和$g^{′}(t)$：

$$
f^{′}(t) = −t \\sin t + 2 \\cos t,  g^{′}(t) = −t \\cos t - 2 \\sin t
$$

代入计算：

$$
f^{′}(t)g(t) = (−t \\sin t + 2 \\cos t)(\\cos t - t \\sin t) = t^{2} \\sin^{2} t + 2 \\cos^{2} t - 3t \\sin t \\cos t
$$



$$
f(t)g^{′}(t) = (t \\cos t + \\sin t)(−t \\cos t - 2 \\sin t) = −t^{2} \\cos^{2} t - 3t \\sin t \\cos t - 2 \\sin^{2} t
$$

则：

$$
\\begin{array}{cc}
f^{′}(t)g(t) - f(t)g^{′}(t) & = t^{2} \\sin^{2} t + 2 \\cos^{2} t - 3t \\sin t \\cos t \\\\
 & + t^{2} \\cos^{2} t + 3t \\sin t \\cos t + 2 \\sin^{2} t \\\\
 & = t^{2} + 2 \\\\
\\end{array}
$$

所以：

$$
\\frac{du}{dt} = \\frac{t^{2} + 2}{(\\cos t - t \\sin t)2}
$$

最后：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{\\frac{du}{dt}}{\\frac{dx}{dt}} = \\frac{t^{2} + 2}{(\\cos t - t \\sin t)2} ⋅ \\frac{1}{\\cos t - t \\sin t} = \\frac{t^{2} + 2}{(\\cos t - t \\sin t)3}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:50', 9, 'Mogullzr', '2026-01-29 14:07:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '481');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '481');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '481');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (482, '1991年考研数学卷3第12题', '简单', '考研数学1991年卷3真题', '计算$\\int_{1}^{4} \\frac{dx}{x(1+\\sqrt{x})}$．', '[]', '$2 \\ln \\frac{4}{3}$
', '计算积分$\\int_{1}^{4} \\frac{dx}{x(1+\\sqrt{x})}$。令$u = \\sqrt{x}$，则$x = u^{2}$，$dx = 2u du$。当$x = 1$时，$u = 1$；当$x = 4$时，$u = 2$。积分变为：

$$
\\int_{1}^{4} \\frac{dx}{x(1 + \\sqrt{x})} = \\int_{1}^{2} \\frac{2u du}{u^{2}(1 + u)} = \\int_{1}^{2} \\frac{2}{u(1 + u)} du.
$$

将$\\frac{2}{u(1+u)}$分解为部分分式：

$$
\\frac{2}{u(1 + u)} = \\frac{2}{u} - \\frac{2}{1 + u}.
$$

代入积分：

$$
\\int_{1}^{2} (\\frac{2}{u} - \\frac{2}{1 + u}) du = 2 \\int_{1}^{2} \\frac{1}{u} du - 2 \\int_{1}^{2} \\frac{1}{1 + u} du = 2  \\lbrack \\ln u \\rbrack _{1}^{2} - 2  \\lbrack \\ln(1 + u) \\rbrack _{1}^{2} .
$$

计算定积分：

$$
\\begin{array}{cc}
 & 2(\\ln 2 - \\ln 1) - 2(\\ln 3 - \\ln 2) \\\\
 & = 2 \\ln 2 - 0 - 2 \\ln 3 + 2 \\ln 2 \\\\
 & = 4 \\ln 2 - 2 \\ln 3 \\\\
 & = 2 \\ln (\\frac{4}{3}) . \\\\
\\end{array}
$$

因此，积分结果为$2 \\ln \\frac{4}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:07:50', 9, 'Mogullzr', '2026-01-29 14:07:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '482');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '482');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '482');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (483, '1991年考研数学卷3第13题', '简单', '考研数学1991年卷3真题', '求$\\lim_{x→0} \\frac{x-\\sin x}{x^{2}(e^{x}-1)}$．', '[]', '$\\frac{1}{6}$
', '考虑极限$\\lim_{x→0} \\frac{x-\\sin x}{x^{2}(e^{x}-1)}$。当$x → 0$时，分子$x - \\sin x → 0$，分母$x^{2}(e^{x} - 1) → 0$，因此为$\\frac{0}{0}$型不定式。可以使用泰勒展开求解。
分子$x - \\sin x$的泰勒展开为$x - (x - \\frac{x^{3}}{6} + \\frac{x^{5}}{120} - ⋯ ) = \\frac{x^{3}}{6} - \\frac{x^{5}}{120} + ⋯$。
分母$x^{2}(e^{x} - 1)$的泰勒展开为$x^{2} (x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6} + ⋯ ) = x^{3} + \\frac{x^{4}}{2} + \\frac{x^{5}}{6} + ⋯$。
因此，原式化为：

$$
\\frac{\\frac{x^{3}}{6} - \\frac{x^{5}}{120} + ⋯}{x^{3} + \\frac{x^{4}}{2} + \\frac{x^{5}}{6} + ⋯} = \\frac{\\frac{1}{6} - \\frac{x^{2}}{120} + ⋯}{1 + \\frac{x}{2} + \\frac{x^{2}}{6} + ⋯}
$$

当$x → 0$时，分子趋近于$\\frac{1}{6}$，分母趋近于 1，故极限为$\\frac{1}{6}$.
Alternatively, 使用洛必达法则验证。第一次应用洛必达法则：

$$
\\lim_{x→0} \\frac{1 - \\cos x}{2x(e^{x} - 1) + x^{2}e^{x}}
$$

仍为$\\frac{0}{0}$型。第二次应用洛必达法则：

$$
\\lim_{x→0} \\frac{\\sin x}{2(e^{x} - 1) + 4xe^{x} + x^{2}e^{x}}
$$

分子$\\sin x ∼ x$，分母$2(e^{x} - 1) + 4xe^{x} + x^{2}e^{x} ∼ 2x + 4x = 6x$，故极限为$\\frac{x}{6x} = \\frac{1}{6}$。结果一致。
', 9, 'Mogullzr', '2026-01-29 14:07:51', 9, 'Mogullzr', '2026-01-29 14:07:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '483');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (484, '1991年考研数学卷3第14题', '简单', '考研数学1991年卷3真题', '求$∫ x \\sin^{2} xdx$．', '[]', '

$$
\\frac{x^{2}}{4} - \\frac{x \\sin 2x}{4} - \\frac{\\cos 2x}{8} + C
$$

', '首先，利用三角恒等式$\\sin^{2} x = \\frac{1-\\cos 2x}{2}$，将积分重写为：

$$
∫ x \\sin^{2} x dx = ∫ x ⋅ \\frac{1 - \\cos 2x}{2} dx = \\frac{1}{2} ∫ x dx - \\frac{1}{2} ∫ x \\cos 2x dx
$$

计算第一个积分：$∫ x dx = \\frac{x^{2}}{2}$。
对于第二个积分$∫ x \\cos 2x dx$，使用分部积分法。设$u = x$，$dv = \\cos 2x dx$，则$du = dx$，$v = \\frac{\\sin 2x}{2}$。于是：

$$
∫ x \\cos 2x dx = x ⋅ \\frac{\\sin 2x}{2} - ∫ \\frac{\\sin 2x}{2} dx = \\frac{x \\sin 2x}{2} - \\frac{1}{2} ∫ \\sin 2x dx
$$

其中$∫ \\sin 2x dx = −\\frac{\\cos 2x}{2}$，所以：

$$
∫ x \\cos 2x dx = \\frac{x \\sin 2x}{2} + \\frac{\\cos 2x}{4}
$$

代入原积分：

$$
∫ x \\sin^{2} x dx = \\frac{1}{2} ⋅ \\frac{x^{2}}{2} - \\frac{1}{2} (\\frac{x \\sin 2x}{2} + \\frac{\\cos 2x}{4}) + C = \\frac{x^{2}}{4} - \\frac{x \\sin 2x}{4} - \\frac{\\cos 2x}{8} + C
$$

这就是最终结果。
', 9, 'Mogullzr', '2026-01-29 14:07:51', 9, 'Mogullzr', '2026-01-29 14:07:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '484');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '484');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '484');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (485, '1991年考研数学卷3第15题', '简单', '考研数学1991年卷3真题', '求微分方程$xy^{′} + y = xe^{x}$满足$y(1) = 1$的特解．', '[]', '$y = \\frac{e^{x}(x-1)+1}{x}$
', '给定微分方程$xy^{′} + y = xe^{x}$和初始条件$y(1) = 1$。
首先将方程化为标准形式


$$
y^{′} + \\frac{1}{x}y = e^{x}.
$$

积分因子为


$$
μ(x) = e^{∫ \\frac{1}{x} dx} = x.
$$

乘以积分因子后，方程变为


$$
(xy)′ = xe^{x}.
$$

两边积分得


$$
xy = ∫ xe^{x} dx.
$$

计算积分


$$
∫ xe^{x} dx = xe^{x} - e^{x} + C,
$$

所以


$$
xy = xe^{x} - e^{x} + C,
$$

即


$$
y = e^{x} - \\frac{e^{x}}{x} + \\frac{C}{x}.
$$

代入初始条件$y(1) = 1$，得


$$
1 = e^{1} - \\frac{e^{1}}{1} + \\frac{C}{1} = C,
$$

所以$C = 1$。
因此特解为


$$
y = e^{x} - \\frac{e^{x}}{x} + \\frac{1}{x} = \\frac{e^{x}(x - 1) + 1}{x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:51', 9, 'Mogullzr', '2026-01-29 14:07:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '485');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '485');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '485');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (486, '1991年考研数学卷3第16题', '简单', '考研数学1991年卷3真题', '利用导数证明：当$x > 1$时，有不等式$\\frac{\\ln(1+x)}{\\ln x} > \\frac{x}{1+x}$．', '[]', '
不等式成立。
', '
考虑函数$g(x) = (1 + x) \\ln(1 + x) - x \\ln x$。当$x > 1$时，原不等式$\\frac{\\ln(1+x)}{\\ln x} > \\frac{x}{1+x}$等价于$g(x) > 0$。计算导数得$g^{′}(x) = \\ln(1 + x) - \\ln x = \\ln (1 + \\frac{1}{x})$。由于$x > 1$，有$1 + \\frac{1}{x} > 1$，故$\\ln (1 + \\frac{1}{x}) > 0$，即$g^{′}(x) > 0$，因此$g(x)$在$x > 1$时单调递增。又$g(1) = 2 \\ln 2 > 0$，所以当$x > 1$时，$g(x) > 0$，原不等式得证。
', 9, 'Mogullzr', '2026-01-29 14:07:51', 9, 'Mogullzr', '2026-01-29 14:07:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '486');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '486');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '486');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (487, '1991年考研数学卷3第17题', '简单', '考研数学1991年卷3真题', '求微分方程$y^{′′} + y = x + \\cos x$的通解．', '[]', '

$$
y = C_{1} \\cos x + C_{2} \\sin x + x + \\frac{1}{2}x \\sin x
$$

其中$C_{1}$和$C_{2}$为任意常数。
', '微分方程$y^{′′} + y = x + \\cos x$是二阶线性非齐次方程。通解由齐次解和特解组成。
齐次方程$y^{′′} + y = 0$的特征方程为$r^{2} + 1 = 0$，解得$r = ±i$，故齐次解为：

$$
y_{h} = C_{1} \\cos x + C_{2} \\sin x
$$

非齐次项$x + \\cos x$可分解为$x$和$\\cos x$。特解由两部分组成：
对于$x$，由于齐次解中无多项式项，设特解$y_{p1} = Ax + B$。代入方程得$y^{′′} + y = 0 + (Ax + B) = x$，比较系数得$A = 1$，$B = 0$，故$y_{p1} = x$。对于$\\cos x$，由于齐次解中已含$\\cos x$，设特解$y_{p2} = x(C \\cos x + D \\sin x)$。代入方程得$y^{′′} + y = 2D \\cos x - 2C \\sin x = \\cos x$，比较系数得$D = \\frac{1}{2}$，$C = 0$，故$y_{p2} = \\frac{1}{2}x \\sin x$。
特解为$y_{p} = y_{p1} + y_{p2} = x + \\frac{1}{2}x \\sin x$。通解为齐次解与特解之和：

$$
y = y_{h} + y_{p} = C_{1} \\cos x + C_{2} \\sin x + x + \\frac{1}{2}x \\sin x
$$

', 9, 'Mogullzr', '2026-01-29 14:07:51', 9, 'Mogullzr', '2026-01-29 14:07:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '487');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '487');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '487');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (488, '1991年考研数学卷3第18题', '简单', '考研数学1991年卷3真题', '曲线$y = (x - 1)(x - 2)$和$x$轴围成一平面图形，求此平面图形绕$y$轴旋转一周所成的旋转体的体积．', '[]', '$\\frac{π}{2}$
', '曲线$y = (x - 1)(x - 2)$与$x$轴的交点为$x = 1$和$x = 2$，围成的区域在$x$轴下方。绕$y$轴旋转时，使用柱壳法，体积公式为$V = 2π \\int_{a}^{b} x∣y∣ dx$。由于在区间$\\lbrack 1, 2 \\rbrack$上$y ≤ 0$，故$∣y∣ = −y$。代入得：

$$
\\begin{array}{cc}
V & = 2π \\int_{1}^{2} x  \\lbrack −(x - 1)(x - 2) \\rbrack  dx \\\\
 & = 2π \\int_{1}^{2} x(−x^{2} + 3x - 2)dx \\\\
\\end{array}
$$

计算积分：

$$
∫(−x^{3} + 3x^{2} - 2x)dx = −\\frac{x^{4}}{4} + x^{3} - x^{2},
$$

代入上下限：

$$
\\begin{array}{cc}
 \\lbrack −\\frac{x^{4}}{4} + x^{3} - x^{2} \\rbrack _{1}^{2} & = (−\\frac{16}{4} + 8 - 4) - (−\\frac{1}{4} + 1 - 1) \\\\
 & = (−4 + 8 - 4) - (−\\frac{1}{4}) \\\\
 & = 0 + \\frac{1}{4} \\\\
\\end{array}
$$

所以，

$$
V = 2π × \\frac{1}{4} = \\frac{π}{2}.
$$

也可用圆盘法验证：解出$x = \\frac{3±\\sqrt{1+4y}}{2}$，其中$y ∈  \\lbrack −0.25, 0 \\rbrack$，则圆环面积为$π(x_{r}^{2} - x_{l}^{2}) = 3\\sqrt{1 + 4y}$，积分得：

$$
\\begin{array}{cc}
V & = π \\int_{−0.25}^{0} 3\\sqrt{1 + 4y} dy \\\\
 & = 3π \\int_{0}^{1} \\frac{u^{1/2}}{4} du \\\\
 & = \\frac{3π}{4} ⋅ \\frac{2}{3} \\\\
\\end{array}
$$

结果一致。
', 9, 'Mogullzr', '2026-01-29 14:07:51', 9, 'Mogullzr', '2026-01-29 14:07:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '488');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '488');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '488');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (489, '1991年考研数学卷3第19题', '简单', '考研数学1991年卷3真题', '如图，$A$和$D$分别是曲线$y = e^{x}$和$y = e^{−2x}$上的点，$AB$和$DC$均垂直$x$轴，
且$∣AB∣ : ∣DC∣ = 2 : 1$,$∣AB∣ < 1$，求点$B$和$C$的横坐标，使梯形$ABCD$的面积最大．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/3b8d27d4d6994d719fc00b5a0fdfc4d7.jpg)
', '[]', '
点$B$的横坐标为$\\frac{1}{3} \\ln 2 - 1$，点$C$的横坐标为$\\frac{1}{2} + \\frac{1}{3} \\ln 2$。
', '
设点$B$的横坐标为$b$，点$C$的横坐标为$c$。由于$AB$和$DC$均垂直$x$轴，且点$A$在曲线$y = e^{x}$上，点$D$在曲线$y = e^{−2x}$上，则$∣AB∣ = e^{b}$，$∣DC∣ = e^{−2c}$。
给定$∣AB∣ : ∣DC∣ = 2 : 1$，即$e^{b}/e^{−2c} = 2$，所以$e^{b+2c} = 2$，取对数得$b + 2c = \\ln 2$。
梯形$ABCD$的面积$S$为：


$$
S = \\frac{1}{2}(∣AB∣ + ∣DC∣) ⋅ (c - b) = \\frac{1}{2}(e^{b} + e^{−2c})(c - b)
$$

利用约束$b = \\ln 2 - 2c$，代入面积公式：


$$
\\begin{array}{cc}
S & = \\frac{1}{2} (e^{\\ln 2-2c} + e^{−2c}) (c - (\\ln 2 - 2c)) \\\\
 & = \\frac{1}{2} (2e^{−2c} + e^{−2c}) (3c - \\ln 2) \\\\
 & = \\frac{1}{2} ⋅ 3e^{−2c}(3c - \\ln 2) \\\\
\\end{array}
$$

令$S(c) = \\frac{3}{2}e^{−2c}(3c - \\ln 2)$，求导：


$$
S^{′}(c) = \\frac{3}{2}  \\lbrack e^{−2c} ⋅ 3 + (3c - \\ln 2) ⋅ (−2)e^{−2c} \\rbrack  = \\frac{3}{2}e^{−2c}(3 - 6c + 2 \\ln 2)
$$

设$S^{′}(c) = 0$，得$3 - 6c + 2 \\ln 2 = 0$，解得$c = \\frac{1}{2} + \\frac{\\ln 2}{3}$。
代入$b = \\ln 2 - 2c$，得$b = \\ln 2 - 2 (\\frac{1}{2} + \\frac{\\ln 2}{3}) = \\frac{1}{3} \\ln 2 - 1$。
验证$∣AB∣ = e^{b} = e^{\\frac{1}{3} \\ln 2-1} = 2^{1/3}/e < 1$，满足条件。
因此，点$B$的横坐标为$\\frac{1}{3} \\ln 2 - 1$，点$C$的横坐标为$\\frac{1}{2} + \\frac{1}{3} \\ln 2$时，梯形$ABCD$的面积最大。
', 9, 'Mogullzr', '2026-01-29 14:07:53', 9, 'Mogullzr', '2026-01-29 14:07:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '489');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '489');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '489');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (490, '1991年考研数学卷3第20题', '简单', '考研数学1991年卷3真题', '设函数$f(x)$在$(−∞, +∞)$内满足$f(x) = f(x - π) + \\sin x$，
且$f(x) = x$,$x ∈  \\lbrack 0, π)$，计算$\\int_{π}^{3π} f(x)dx$．', '[]', '$π^{2} - 2$
', '由题设，函数$f(x)$满足$f(x) = f(x - π) + \\sin x$，且在$x ∈  \\lbrack 0, π)$时$f(x) = x$。需要计算$\\int_{π}^{3π} f(x) dx$。
首先，求$f(x)$在$\\lbrack π, 3π \\rbrack$上的表达式：
当$x ∈  \\lbrack π, 2π)$时，$x - π ∈  \\lbrack 0, π)$，所以$f(x - π) = x - π$，于是$f(x) = f(x - π) + \\sin x = (x - π) + \\sin x$。当$x ∈  \\lbrack 2π, 3π \\rbrack$时，$x - π ∈  \\lbrack π, 2π)$，由上式得$f(x - π) = (x - π - π) + \\sin(x - π) = (x - 2π) - \\sin x$（因为$\\sin(x - π) = − \\sin x$），于是$f(x) = f(x - π) + \\sin x = (x - 2π) - \\sin x + \\sin x = x - 2π$.
因此，积分可拆分为两部分：

$$
\\int_{π}^{3π} f(x) dx = \\int_{π}^{2π} f(x) dx + \\int_{2π}^{3π} f(x) dx
$$

其中：
$\\int_{π}^{2π} f(x) dx = \\int_{π}^{2π} \\lbrack (x - π) + \\sin x \\rbrack  dx$$\\int_{π}^{2π}(x - π) dx =  \\lbrack \\frac{1}{2}(x - π)2 \\rbrack _{π}^{2π} = \\frac{1}{2}π^{2} - 0 = \\frac{π^{2}}{2}$$\\int_{π}^{2π} \\sin x dx =  \\lbrack − \\cos x \\rbrack _{π}^{2π} = (− \\cos 2π) - (− \\cos π) = (−1) - (1) = −2$所以$\\int_{π}^{2π} f(x) dx = \\frac{π^{2}}{2} - 2$$\\int_{2π}^{3π} f(x) dx = \\int_{2π}^{3π}(x - 2π) dx$令$u = x - 2π$，则当$x = 2π$时$u = 0$，当$x = 3π$时$u = π$，于是$\\int_{0}^{π} u du =  \\lbrack \\frac{1}{2}u^{2} \\rbrack _{0}^{π} = \\frac{1}{2}π^{2}$
因此，

$$
\\int_{π}^{3π} f(x) dx = (\\frac{π^{2}}{2} - 2) + \\frac{π^{2}}{2} = π^{2} - 2
$$

', 9, 'Mogullzr', '2026-01-29 14:07:53', 9, 'Mogullzr', '2026-01-29 14:07:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '490');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '490');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '490');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (491, '1991年考研数学卷4第1题', '简单', '考研数学1991年卷4真题', '设$z = e^{\\sin(xy)}$，则$dz =$______.', '[]', '
$dz = e^{\\sin(xy)} \\cos(xy)(y dx + x dy)$
', '
由全微分形式不变性和微分四则运算法则，有


$$
\\begin{array}{cc}
dz & = d(e^{\\sin(xy)}) \\\\
 & = e^{\\sin(xy)}d(\\sin(xy)) \\\\
 & = e^{\\sin(xy)} \\cos(xy) d(xy) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:56', 9, 'Mogullzr', '2026-01-29 14:07:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '491');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '491');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '491');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (492, '1991年考研数学卷4第2题', '简单', '考研数学1991年卷4真题', '设曲线$f(x) = x^{3} + ax$与$g(x) = bx^{2} + c$都通过点$(−1, 0)$，
且在点$(−1, 0)$有公共切线，则$a =$,$b =$,$c =$______.', '[]', '$a = −1, b = −1, c = 1$
', '
由于曲线$f(x)$与$g(x)$都通过点$(−1, 0)$，则


$$
f(−1) = −1 - a = 0,  g(−1) = b + c = 0.
$$

又曲线$f(x)$与$g(x)$在点$(−1, 0)$有公共切线，则


$$
f^{′}(−1) = g^{′}(−1),
$$

即


$$
f^{′}(−1) = (3x^{2} + a)​_{x=−1} = 3 + a = g^{′}(−1) = 2bx​_{x=−1} = −2b.
$$

解得$a = −1,  b = −1,  c = 1.$
', 9, 'Mogullzr', '2026-01-29 14:07:56', 9, 'Mogullzr', '2026-01-29 14:07:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '492');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '492');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '492');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (493, '1991年考研数学卷4第3题', '简单', '考研数学1991年卷4真题', '设$f(x) = xe^{x}$，则$f^{(n)}(x)$在点$x =$______ 处取极小值 ______ .', '[]', '
$x = −n - 1$，极小值为$−e^{−n-1}$
', '
由莱布尼茨公式

$$
(uv)(n) = \\sum_{k=0}^{n} C_{n}^{k}u^{(k)}v^{(n-k)}
$$

可知得$f^{(n)}(x) = (x + n)e^{x}$。对函数$g(x) = f^{(n)}(x)$求导，并令$g^{′}(x) = 0$，得

$$
g^{′}(x) = f^{(n+1)}(x) = (x + n + 1)e^{x} = 0.
$$

解之得驻点$x = −(n + 1)$。又由极值的第一判别法得$x = −(n + 1)$是函数$g(x) = f^{(n)}(x)$的极小值点，极小值为

$$
g(−n - 1) = f^{(n)}(−n - 1) = (−n - 1 + n)e^{−n-1} = −e^{−n-1}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:56', 9, 'Mogullzr', '2026-01-29 14:07:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '493');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '493');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '493');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (494, '1991年考研数学卷4第4题', '简单', '考研数学1991年卷4真题', '设$A$和$B$为可逆矩阵，$X = \\left( \\begin{array}{cc}
0 & A \\\\
B & 0 \\\\
\\end{array} \\right)$为分块矩阵，则$X^{−1} =$______.', '[]', '

$$
\\left( \\begin{array}{cc}
0 & B^{−1} \\\\
A^{−1} & 0 \\\\
\\end{array} \\right)
$$

', '设$X^{−1} = \\left( \\begin{array}{cc}
P & Q \\\\
R & S \\\\
\\end{array} \\right)$，其中$P, Q, R, S$为适当大小的块矩阵。根据逆矩阵定义，有$XX^{−1} = I$，即：

$$
\\left( \\begin{array}{cc}
0 & A \\\\
B & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
P & Q \\\\
R & S \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
I & 0 \\\\
0 & I \\\\
\\end{array} \\right)
$$

计算矩阵乘积：
左上块：$0 ⋅ P + A ⋅ R = AR = I$，所以$R = A^{−1}$。右上块：$0 ⋅ Q + A ⋅ S = AS = 0$，所以$S = 0$（因为$A$可逆）。左下块：$B ⋅ P + 0 ⋅ R = BP = 0$，所以$P = 0$（因为$B$可逆）。右下块：$B ⋅ Q + 0 ⋅ S = BQ = I$，所以$Q = B^{−1}$。
因此，$X^{−1} = \\left( \\begin{array}{cc}
0 & B^{−1} \\\\
A^{−1} & 0 \\\\
\\end{array} \\right)$。验证$XX^{−1} = \\left( \\begin{array}{cc}
0 & A \\\\
B & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
0 & B^{−1} \\\\
A^{−1} & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
AA^{−1} & 0 \\\\
0 & BB^{−1} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
I & 0 \\\\
0 & I \\\\
\\end{array} \\right)$，同样$X^{−1}X = I$，故结果正确。
', 9, 'Mogullzr', '2026-01-29 14:07:56', 9, 'Mogullzr', '2026-01-29 14:07:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '494');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '494');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '494');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (495, '1991年考研数学卷4第5题', '简单', '考研数学1991年卷4真题', '设随机变量$X$的分布函数为
$$
F(x) = P\\{X ≤ x\\} = \\begin{cases} 0 & x < −1 \\\\ 0.4 & −1 ≤ x < 1 \\\\ 0.8 & 1 ≤ x < 3 \\\\ 1 & x ≥ 3. \\end{cases}
$$
则$X$的概率分布为 ______.', '[]', '
$X$的概率分布为：
$P(X = −1) = 0.4$，$P(X = 1) = 0.4$，$P(X = 3) = 0.2$。
', '
随机变量$X$的分布函数$F(x)$是一个阶梯函数，在$x = −1$、$x = 1$和$x = 3$处有跳跃，表明$X$是一个离散随机变量。概率分布可通过计算分布函数在这些点处的跳跃高度得到：
在$x = −1$处，$F(x)$从$0$跳跃到$0.4$，因此$P(X = −1) = 0.4 - 0 = 0.4$在$x = 1$处，$F(x)$从$0.4$跳跃到$0.8$，因此$P(X = 1) = 0.8 - 0.4 = 0.4$在$x = 3$处，$F(x)$从$0.8$跳跃到$1$，因此$P(X = 3) = 1 - 0.8 = 0.2$
这些概率之和为$0.4 + 0.4 + 0.2 = 1$，满足概率归一性，因此$X$的概率分布如上所述。
', 9, 'Mogullzr', '2026-01-29 14:07:56', 9, 'Mogullzr', '2026-01-29 14:07:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '495');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '495');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (496, '1991年考研数学卷4第6题', '简单', '考研数学1991年卷4真题', '下列各式中正确的是', '[''$\\\\lim_{x→0^{+}} (1 + \\\\frac{1}{x})^{x} = 1$．'', ''$\\\\lim_{x→0^{+}} (1 + \\\\frac{1}{x})^{x} = e$．'', ''$\\\\lim_{x→∞} (1 - \\\\frac{1}{x})^{x} = −e$．'', ''$\\\\lim_{x→∞} (1 + \\\\frac{1}{x})^{−x} = e$．'']', "['A']", '
对于选项A，考虑极限$\\lim_{x→0^{+}} (1 + \\frac{1}{x})^{x}$，这是一个$∞^{0}$型不定式。令$y = (1 + \\frac{1}{x})^{x}$，取自然对数得$\\ln y = x \\ln (1 + \\frac{1}{x})$。当$x → 0^{+}$时，$\\ln (1 + \\frac{1}{x}) ∼ − \\ln x$，因此$\\ln y = x ⋅ (− \\ln x) = −x \\ln x$。由于$\\lim_{x→0^{+}} x \\ln x = 0$，故$\\lim_{x→0^{+}} \\ln y = 0$，即$\\lim_{x→0^{+}} y = e^{0} = 1$，因此A正确。对于选项B，同样极限为1而非e，故错误。对于选项C，$\\lim_{x→∞} (1 - \\frac{1}{x})^{x} = e^{−1} = \\frac{1}{e}$，而非$−e$，故错误。对于选项D，$\\lim_{x→∞} (1 + \\frac{1}{x})^{−x} = \\frac{1}{\\lim_{x→∞}(1+\\frac{1}{x})^{x}} = \\frac{1}{e}$，而非 e，故错误。', 9, 'Mogullzr', '2026-01-29 14:07:56', 9, 'Mogullzr', '2026-01-29 14:07:56', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '496');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '496');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '496');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (497, '1991年考研数学卷4第7题', '简单', '考研数学1991年卷4真题', '设$0 ≤ a_{n} < \\frac{1}{n}$($n = 1, 2, ⋯$)，则下列级数中肯定收敛的是', '[''$\\\\sum_{n=1}^{∞} a_{n}$．'', ''$\\\\sum_{n=1}^{∞}(−1)na_{n}$．'', ''$\\\\sum_{n=1}^{∞} \\\\sqrt{a_{n}}$．'', ''$\\\\sum_{n=1}^{∞}(−1)na_{n}^{2}$．'']', "['D']", '给定条件$0 ≤ a_{n} < \\frac{1}{n}$，分析各选项：选项A：$∑ a_{n}$，由于$a_{n} < \\frac{1}{n}$但$∑ \\frac{1}{n}$发散，无法保证$∑ a_{n}$收敛，例如取$a_{n} = \\frac{1}{2n}$时级数发散。选项B：$∑(−1)na_{n}$，虽$a_{n} → 0$，但缺乏$a_{n}$单调递减的保证，交错级数可能不收敛，例如取$a_{n} = \\frac{1}{n}$当$n$奇数、$a_{n} = \\frac{1}{2n}$当$n$偶数时级数不收敛。选项C：$∑ \\sqrt{a_{n}}$，由$a_{n} < \\frac{1}{n}$得$\\sqrt{a_{n}} < \\frac{1}{\\sqrt{n}}$，但$∑ \\frac{1}{\\sqrt{n}}$发散，例如取$a_{n} = \\frac{1}{n}$时级数发散。选项D：$∑(−1)na_{n}^{2}$，由$a_{n} < \\frac{1}{n}$得$a_{n}^{2} < \\frac{1}{n^{2}}$，而$∑ \\frac{1}{n^{2}}$收敛，故$∑ a_{n}^{2}$绝对收敛，从而$∑(−1)na_{n}^{2}$收敛。
因此，肯定收敛的级数是D。', 9, 'Mogullzr', '2026-01-29 14:07:57', 9, 'Mogullzr', '2026-01-29 14:07:57', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '497');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '497');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '497');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (498, '1991年考研数学卷4第8题', '简单', '考研数学1991年卷4真题', '设$A$为$n$阶可逆矩阵，$λ$是$A$的一个特征根，则$A$的伴随矩阵$A^{∗}$的特征根之一是', '[''$λ^{−1}∣A∣^{n}$．'', ''$λ^{−1}∣A∣$．'', ''$λ∣A∣$．'', ''$λ∣A∣^{n}$．'']', "['B']", '
设$A$为$n$阶可逆矩阵，$λ$是$A$的一个特征值，存在非零向量$v$使得

$$
Av = λv.
$$
由于$A$可逆，有$λ \\neq 0$。
伴随矩阵$A^{∗}$满足

$$
A^{∗} = ∣A∣ A^{−1}.
$$
于是

$$
A^{∗}v = ∣A∣ A^{−1}v = ∣A∣ λ^{−1}v,
$$
这表明$∣A∣ λ^{−1}$是$A^{∗}$的一个特征值。
选项 B 为$λ^{−1}∣A∣$，与上述结果一致，其余选项不符，故正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:07:57', 9, 'Mogullzr', '2026-01-29 14:07:57', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '498');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '498');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '498');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (499, '1991年考研数学卷4第9题', '简单', '考研数学1991年卷4真题', '设$A$和$B$是任意两个概率不为零的不相容事件，则下列结论中肯定正确的是', '[''$\\\\overline{A}$与$\\\\overline{B}$不相容．'', ''$\\\\overline{A}$与$\\\\overline{B}$相容．'', ''$P(AB) = P(A)P(B)$．'', ''$P(A - B) = P(A)$．'']', "['D']", '
由于$A$和$B$是不相容事件，且概率不为零，即$P(A) > 0$，$P(B) > 0$，且$P(A ∩ B) = 0$。选项 D 中，$P(A - B) = P(A ∩ \\overline{B})$。因为$A$和$B$不相容，所以$A ⊆ \\overline{B}$，因此$A ∩ \\overline{B} = A$，故$P(A - B) = P(A)$。这总是成立，与样本空间无关。选项 A 和 B 涉及$\\overline{A}$和$\\overline{B}$的相容性，但当$P(A) + P(B) = 1$时，$\\overline{A}$和$\\overline{B}$不相容；当$P(A) + P(B) < 1$时，它们相容，因此不一定正确。选项 C 中，$P(AB) = P(A ∩ B) = 0$，但$P(A)P(B) > 0$，故不相等。因此，只有 D 肯定正确。', 9, 'Mogullzr', '2026-01-29 14:07:57', 9, 'Mogullzr', '2026-01-29 14:07:57', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '499');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '499');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (500, '1991年考研数学卷4第10题', '简单', '考研数学1991年卷4真题', '对于任意两个随机变量$X$和$Y$，若$E(XY) = E(X) ⋅ E(Y)$，则', '[''$D(XY) = D(X) ⋅ D(Y)$．'', ''$D(X + Y) = D(X) + D(Y)$．'', ''$X$和$Y$独立．'', ''$X$和$Y$不独立．'']', "['B']", '
已知条件$E(XY) = E(X) ⋅ E(Y)$等价于协方差$Cov(X, Y) = E(XY) - E(X)E(Y) = 0$。对于选项 B，方差的性质有

$$
D(X + Y) = D(X) + D(Y) + 2Cov(X, Y),
$$
当$Cov(X, Y) = 0$时，有

$$
D(X + Y) = D(X) + D(Y),
$$
因此 B 正确。选项 A 错误，因为$D(XY)$一般不等于$D(X) ⋅ D(Y)$，即使协方差为零。选项 C 和 D 错误，因为$E(XY) = E(X)E(Y)$（即协方差为零）并不蕴含独立或不独立，独立需要更强的条件。', 9, 'Mogullzr', '2026-01-29 14:07:57', 9, 'Mogullzr', '2026-01-29 14:07:57', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '500');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '500');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '500');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (501, '1991年考研数学卷4第11题', '简单', '考研数学1991年卷4真题', '求极限
$$
\\lim_{x→0} (\\frac{e^{x} + e^{2x} + ⋯ + e^{nx}}{n})^{\\frac{1}{x}}
$$
，
其中$n$是给定的自然数．', '[]', '$e^{\\frac{n+1}{2}}$
', '考虑极限$L = \\lim_{x→0} (\\frac{e^{x}+e^{2x}+⋯+e^{nx}}{n})^{\\frac{1}{x}}$。
当$x → 0$时，括号内的表达式趋近于 1，而指数部分趋向无穷，因此该极限属于$1^{∞}$型不定式。
取自然对数，得到：

$$
\\ln L = \\lim_{x→0} \\frac{1}{x} \\ln (\\frac{e^{x} + e^{2x} + ⋯ + e^{nx}}{n}) = \\lim_{x→0} \\frac{\\ln (\\sum_{k=1}^{n} e^{kx}) - \\ln n}{x}.
$$

当$x → 0$时，分子和分母均趋于 0，因此可应用洛必达法则，对分子求导：

$$
\\frac{d}{dx}  \\lbrack \\ln (\\sum_{k=1}^{n} e^{kx}) - \\ln n \\rbrack  = \\frac{\\sum_{k=1}^{n} ke^{kx}}{\\sum_{k=1}^{n} e^{kx}}.
$$

代入$x = 0$得：

$$
\\lim_{x→0} \\frac{\\sum_{k=1}^{n} ke^{kx}}{\\sum_{k=1}^{n} e^{kx}} = \\frac{\\sum_{k=1}^{n} k}{\\sum_{k=1}^{n} 1} = \\frac{\\frac{n(n+1)}{2}}{n} = \\frac{n + 1}{2}.
$$

因此，$\\ln L = \\frac{n+1}{2}$，即

$$
L = e^{\\frac{n+1}{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:57', 9, 'Mogullzr', '2026-01-29 14:07:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '501');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '501');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '501');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (502, '1991年考研数学卷4第12题', '简单', '考研数学1991年卷4真题', '计算二重积分$I = \\iint_{D} ydxdy$，其中$D$是由$x$轴，$y$轴与曲线$\\sqrt{\\frac{x}{a}} + \\sqrt{\\frac{y}{b}} = 1$所围成的区域，$a > 0, b > 0$．', '[]', '

$$
\\frac{ab^{2}}{30}
$$

', '积分区域$D$由$x$轴、$y$轴和曲线$\\sqrt{\\frac{x}{a}} + \\sqrt{\\frac{y}{b}} = 1$围成。将积分写为迭代积分：

$$
I = \\int_{0}^{a} \\int_{0}^{b(1-\\sqrt{\\frac{x}{a}})^{2}} y dy dx
$$

先对$y$积分：

$$
\\int_{0}^{b(1-\\sqrt{\\frac{x}{a}})^{2}} y dy = \\frac{1}{2}  \\lbrack b (1 - \\sqrt{\\frac{x}{a}})^{2} \\rbrack ^{2} = \\frac{1}{2}b^{2} (1 - \\sqrt{\\frac{x}{a}})^{4}
$$

代入得：

$$
I = \\int_{0}^{a} \\frac{1}{2}b^{2} (1 - \\sqrt{\\frac{x}{a}})^{4}  dx
$$

令$u = \\sqrt{\\frac{x}{a}}$，则$x = au^{2}$，$dx = 2au du$，积分限变为$u = 0$到$u = 1$：

$$
I = \\frac{1}{2}b^{2} \\int_{0}^{1}(1 - u)4 ⋅ 2au du = ab^{2} \\int_{0}^{1} u(1 - u)4 du
$$

计算积分：

$$
\\int_{0}^{1} u(1 - u)4 du = \\int_{0}^{1}(u - 4u^{2} + 6u^{3} - 4u^{4} + u^{5}) du =  \\lbrack \\frac{1}{2}u^{2} - \\frac{4}{3}u^{3} + \\frac{3}{2}u^{4} - \\frac{4}{5}u^{5} + \\frac{1}{6}u^{6} \\rbrack _{0}^{1} = \\frac{1}{30}
$$

因此：

$$
I = ab^{2} ⋅ \\frac{1}{30} = \\frac{ab^{2}}{30}
$$

也可通过变量变换验证：令$u = \\sqrt{\\frac{x}{a}}$,$v = \\sqrt{\\frac{y}{b}}$，则$dx dy = 4abuv du dv$，积分变为：

$$
I = ∬ bv^{2} ⋅ 4abuv du dv = 4ab^{2} ∬ uv^{3} du dv
$$

在区域$u ≥ 0, v ≥ 0, u + v ≤ 1$上积分：

$$
I = 4ab^{2} \\int_{0}^{1} \\int_{0}^{1-u} uv^{3} dv du = 4ab^{2} \\int_{0}^{1} u ⋅ \\frac{1}{4}(1 - u)4 du = ab^{2} \\int_{0}^{1} u(1 - u)4 du = \\frac{ab^{2}}{30}
$$

结果一致。
', 9, 'Mogullzr', '2026-01-29 14:07:57', 9, 'Mogullzr', '2026-01-29 14:07:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '502');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '502');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '502');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (503, '1991年考研数学卷4第13题', '简单', '考研数学1991年卷4真题', '求微分方程$xy\\frac{dy}{dx} = x^{2} + y^{2}$满足条件$y∣_{x=e} = 2e$的特解．', '[]', '
$y = x\\sqrt{2(\\ln x + 1)}$
', '
给定微分方程$xy\\frac{dy}{dx} = x^{2} + y^{2}$，令$u = \\frac{y}{x}$，则$y = ux$，$\\frac{dy}{dx} = u + x\\frac{du}{dx}$。代入原方程得：


$$
x(ux) (u + x\\frac{du}{dx}) = x^{2} + (ux)2
$$

简化得：


$$
x^{2}u (u + x\\frac{du}{dx}) = x^{2} + u^{2}x^{2}
$$

两边除以$x^{2}$（假设$x \\neq 0$）：


$$
u^{2} + xu\\frac{du}{dx} = 1 + u^{2}
$$

即：


$$
xu\\frac{du}{dx} = 1
$$

分离变量：


$$
u du = \\frac{1}{x} dx
$$

积分两边：


$$
∫ u du = ∫ \\frac{1}{x} dx
$$



$$
\\frac{u^{2}}{2} = \\ln ∣x∣ + C
$$

其中$C$为积分常数。代回$u = \\frac{y}{x}$得：


$$
\\frac{y^{2}}{2x^{2}} = \\ln ∣x∣ + C
$$

即：


$$
y^{2} = 2x^{2}(\\ln ∣x∣ + C)
$$

利用初始条件$y∣_{x=e} = 2e$，代入得：


$$
(2e)2 = 2e^{2}(\\ln e + C)
$$



$$
4e^{2} = 2e^{2}(1 + C)
$$

解得$C = 1$。因此特解为：


$$
y^{2} = 2x^{2}(\\ln x + 1)
$$

由于初始值$y > 0$，取正根得：


$$
y = x\\sqrt{2(\\ln x + 1)}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:58', 9, 'Mogullzr', '2026-01-29 14:07:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '503');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '503');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1068', '503');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (504, '1991年考研数学卷4第14题', '简单', '考研数学1991年卷4真题', '假设曲线$L_{1}$：$y = 1 - x^{2} (0 ≤ x ≤ 1)$，$x$轴和$y$轴所围区域被曲线$L_{2}$：$y = ax^{2}$分为面积相等的两部分，其中$a$是大于零的常数，试确定$a$的值．', '[]', '3
', '
先求出曲线$L_{1}$和$L_{2}$的交点，然后利用定积分求出平面图形面积$S_{1}$和$S_{2}$，如图

由两曲线的方程，求得交点坐标为$(\\frac{1}{\\sqrt{1+a}}, \\frac{a}{1+a})$，所以


$$
S = S_{1} + S_{2} = \\int_{0}^{1} y dx = \\int_{0}^{1}(1 - x^{2}) dx =  \\lbrack x - \\frac{1}{3}x^{3} \\rbrack _{0}^{1} = \\frac{2}{3},
$$



$$
S_{1} = \\int_{0}^{\\frac{1}{\\sqrt{1+a}}}  \\lbrack (1 - x^{2}) - ax^{2} \\rbrack   dx =  \\lbrack x - \\frac{1 + a}{3}x^{3} \\rbrack _{0}^{\\frac{1}{\\sqrt{1+a}}} = \\frac{2}{3\\sqrt{1 + a}}.
$$

又因为$S = 2S_{1}$，所以$\\frac{2}{3} = 2 ⋅ \\frac{2}{3\\sqrt{1+a}}$，即$\\sqrt{1 + a} = 2$，解得$a = 3$.
', 9, 'Mogullzr', '2026-01-29 14:07:58', 9, 'Mogullzr', '2026-01-29 14:07:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '504');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '504');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '504');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (505, '1991年考研数学卷4第15题', '简单', '考研数学1991年卷4真题', '某厂家生产的一种产品同时在两个市场销售，售价分别为$p_{1}$和$p_{2}$，
销售量分别为$q_{1}$和$q_{2}$，需求函数分别为$q_{1} = 24 - 0.2p_{1}$和$q_{2} = 10 - 0.05p_{2}$，
总成本函数为$C = 35 + 40 (q_{1} + q_{2})$．
试问：厂家如何确定两个市场的售价，能使其获得的总利润最大？最大利润为多少？', '[]', '
两个市场的最优售价分别为$p_{1} = 80$和$p_{2} = 120$，最大总利润为 605。
', '
总收入函数为

$$
R = p_{1}q_{1} + p_{2}q_{2} = 24p_{1} - 0.2p_{1}^{2} + 10p_{2} - 0.05p_{2}^{2},
$$

总利润函数为

$$
\\begin{array}{cc}
L & = R - C = (p_{1}q_{1} + p_{2}q_{2}) -  \\lbrack 35 + 40(q_{1} + q_{2}) \\rbrack  \\\\
 & = 32p_{1} - 0.2p_{1}^{2} + 12p_{2} - 0.05p_{2}^{2} - 1395. \\\\
\\end{array}
$$

由极值的必要条件，得方程组

$$
\\begin{cases} \\frac{∂L}{∂p_{1}} = 32 - 0.4p_{1} = 0 \\\\ \\frac{∂L}{∂p_{2}} = 12 - 0.1p_{2} = 0. \\end{cases}
$$

解得$p_{1} = 80, p_{2} = 120$。因驻点的唯一，且由问题的实际含义可知必有最大利润。故当$p_{1} = 80, p_{2} = 120$时，厂家所获得的总利润最大，其最大总利润为

$$
L∣_{p_{1}=80,p_{2}=120} = (32p_{1} - 0.2p_{1}^{2} + 12p_{2} - 0.05p_{2}^{2} - 1395)∣_{p_{1}=80,p_{2}=120} = 605.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:58', 9, 'Mogullzr', '2026-01-29 14:07:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '505');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '505');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '505');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (506, '1991年考研数学卷4第16题', '简单', '考研数学1991年卷4真题', '试证明函数$f(x) = (1 + \\frac{1}{x})^{x}$在区间$(0, +∞)$内单调增加．', '[]', '
函数$f(x) = (1 + \\frac{1}{x})^{x}$在区间$(0, +∞)$内单调增加。
', '
对$f(x) = \\exp  \\lbrack x \\ln (1 + \\frac{1}{x}) \\rbrack$求导得

$$
f^{′}(x) = \\exp  \\lbrack x \\ln (1 + \\frac{1}{x}) \\rbrack  ⋅  \\lbrack \\ln (1 + \\frac{1}{x}) - \\frac{1}{1 + x} \\rbrack  .
$$

令$g(x) = \\ln (1 + \\frac{1}{x}) - \\frac{1}{1+x}$，则当$x > 0$时

$$
g^{′}(x) = −\\frac{1}{x(1 + x)2} < 0,
$$

所以函数$g(x)$在$(0, +∞)$上单调减少。又

$$
\\lim_{x→+∞} g(x) = \\lim_{x→+∞}  \\lbrack \\ln (1 + \\frac{1}{x}) - \\frac{1}{1 + x} \\rbrack  = 0,
$$

于是当$x > 0$时，$g(x) > 0$，从而$f^{′}(x) > 0$。所以$f(x)$在$(0, +∞)$内单调增加。
', 9, 'Mogullzr', '2026-01-29 14:07:58', 9, 'Mogullzr', '2026-01-29 14:07:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '506');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '506');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '506');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (507, '1991年考研数学卷4第17题', '简单', '考研数学1991年卷4真题', '设有三维列向量
$$
α_{1} = \\left( \\begin{array}{c}
1 + λ \\\\
1 \\\\
1 \\\\
\\end{array} \\right) , α_{2} = \\left( \\begin{array}{c}
1 \\\\
1 + λ \\\\
1 \\\\
\\end{array} \\right) , α_{3} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 + λ \\\\
\\end{array} \\right) , β = \\left( \\begin{array}{c}
0 \\\\
λ \\\\
λ^{2} \\\\
\\end{array} \\right) ,
$$
问$λ$取何值时，(1)$β$可由$α_{1}, α_{2}, α_{3}$线性表示，且表达式唯一？(2)$β$可由$α_{1}, α_{2}, α_{3}$线性表示，且表达式不唯一？(3)$β$不能由$α_{1}, α_{2}, α_{3}$线性表示？', '[]', '
(1)$λ \\neq 0$且$λ \\neq −3$
(2)$λ = 0$
(3)$λ = −3$
', '
设$x_{1}α_{1} + x_{2}α_{2} + x_{3}α_{3} = β$，代入得到方程组

$$
\\begin{cases} (1 + λ)x_{1} + x_{2} + x_{3} = 0 \\\\ x_{1} + (1 + λ)x_{2} + x_{3} = λ \\\\ x_{1} + x_{2} + (1 + λ)x_{3} = λ^{2}. \\end{cases}
$$

对方程组的增广矩阵作初等行变换，得到

$$
\\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 + λ & 1 & 1 &  & 0 \\\\
 &  &  & ⋮ &  \\\\
1 & 1 + λ & 1 &  & λ \\\\
 &  &  & ⋮ &  \\\\
1 & 1 & 1 + λ &  & λ^{2} \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 + λ & 1 & 1 &  & 0 \\\\
 &  &  & ⋮ &  \\\\
−λ & λ & 0 &  & λ \\\\
 &  &  & ⋮ &  \\\\
−λ^{2} - 3λ & 0 & 0 &  & λ^{2} + λ \\\\
\\end{array} \\right)
$$

(I)若$λ \\neq 0$且$λ^{2} + 3λ \\neq 0$，即$λ \\neq 0$且$λ \\neq −3$，则$r(A) = r(\\overline{A}) = 3$，方程组有唯一解，即$β$可由$α_{1}, α_{2}, α_{3}$线性表示且表达式唯一。
(II)若$λ = 0$，则$r(A) = r(\\overline{A}) = 1 < 3$，方程组有无穷多解，$β$可由$α_{1}, α_{2}, α_{3}$线性表示，且表达式不唯一。
(III)若$λ = −3$，则$r(A) = 2$,$r(\\overline{A}) = 3$，方程组无解，从而$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
', 9, 'Mogullzr', '2026-01-29 14:07:59', 9, 'Mogullzr', '2026-01-29 14:07:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '507');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '507');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '507');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (508, '1991年考研数学卷4第18题', '简单', '考研数学1991年卷4真题', '考虑二次型$f = x_{1}^{2} + 4x_{2}^{2} + 4x_{3}^{2} + 2λx_{1}x_{2} - 2x_{1}x_{3} + 4x_{2}x_{3}$．
问$λ$取何值时，$f$为正定二次型？', '[]', '$−2 < λ < 1$
', '二次型$f = x_{1}^{2} + 4x_{2}^{2} + 4x_{3}^{2} + 2λx_{1}x_{2} - 2x_{1}x_{3} + 4x_{2}x_{3}$的矩阵为：

$$
A = \\left( \\begin{array}{ccc}
1 & λ & −1 \\\\
λ & 4 & 2 \\\\
−1 & 2 & 4 \\\\
\\end{array} \\right)
$$

二次型正定的充要条件是矩阵$A$的所有顺序主子式大于零。
一阶主子式：$Δ_{1} = 1 > 0$恒成立。
二阶主子式：$Δ_{2} = \\begin{vmatrix}
1 & λ\\\\
λ & 4
\\end{vmatrix} = 4 - λ^{2} > 0$，解得$−2 < λ < 2$。
三阶主子式：$Δ_{3} = det(A) = \\begin{vmatrix}
1 & λ & −1\\\\
λ & 4 & 2\\\\
−1 & 2 & 4
\\end{vmatrix} = 8 - 4λ^{2} - 4λ > 0$，即$−4λ^{2} - 4λ + 8 > 0$，两边除以$−4$（不等号方向改变）得$λ^{2} + λ - 2 < 0$，解得$−2 < λ < 1$。
结合二阶和三阶主子式的条件，得$−2 < λ < 1$。
因此，当$λ$在该区间内时，二次型正定。
', 9, 'Mogullzr', '2026-01-29 14:07:59', 9, 'Mogullzr', '2026-01-29 14:07:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '508');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '508');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (509, '1991年考研数学卷4第19题', '简单', '考研数学1991年卷4真题', '试证明$n$维列向量组$α_{1}, α_{2}, ⋯  , α_{n}$线性无关的充分必要条件是
$$
D = \\begin{vmatrix}
α_{1}^{T}α_{1} & α_{1}^{T}α_{2} &  & α_{1}^{T}α_{n}\\\\
 &  & ⋯ & \\\\
α_{2}^{T}α_{1} & α_{2}^{T}α_{2} &  & α_{2}^{T}α_{n}\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  &  & \\\\
α_{n}^{T}α_{1} & α_{n}^{T}α_{2} &  & α_{n}^{T}α_{n}\\\\
 &  & ⋯ & 
\\end{vmatrix} \\neq 0,
$$
其中$α_{i}^{T}$表示列向量$α_{i}$的转置，$i = 1, 2, ⋯  , n$．', '[]', '
n维列向量组$α_{1}, α_{2}, ⋯  , α_{n}$线性无关的充分必要条件是$D \\neq 0$。
', '
记$A = (α_{1}, α_{2}, ⋯  , α_{n})$，则向量组$α_{1}, α_{2}, ⋯  , α_{n}$线性无关的充分必要条件是$∣A∣ \\neq 0$。由于

$$
A^{T}A = \\left( \\begin{array}{c}
α_{1}^{T} \\\\
α_{2}^{T} \\\\
⋮ \\\\
α_{n}^{T} \\\\
\\end{array} \\right)  \\lbrack α_{1}, α_{2}, ⋯  , α_{n} \\rbrack  = \\left( \\begin{array}{cccc}
α_{1}^{T}α_{1} & α_{1}^{T}α_{2} &  & α_{1}^{T}α_{n} \\\\
 &  & ⋯ &  \\\\
α_{2}^{T}α_{1} & α_{2}^{T}α_{2} &  & α_{2}^{T}α_{n} \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
α_{n}^{T}α_{1} & α_{n}^{T}α_{2} &  & α_{n}^{T}α_{n} \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right) ,
$$

从而取行列式，有$D = ∣A^{T}A∣ = ∣A^{T}∣∣A∣ = ∣A∣^{2}$。由此可见$α_{1}, α_{2}, ⋯  , α_{n}$线性无关的充分必要条件是$D \\neq 0$。
', 9, 'Mogullzr', '2026-01-29 14:07:59', 9, 'Mogullzr', '2026-01-29 14:07:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '509');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '509');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '509');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (510, '1991年考研数学卷4第20题', '简单', '考研数学1991年卷4真题', '一汽车沿一街道行驶，需要通过三个均设有红绿信号灯的路口，
每个信号灯为红或绿与其他信号灯为红或绿相互独立，且红绿两种信号显示的时间相等，
以$X$表示该汽车首次遇到红灯前已通过的路口的个数．求$X$的概率分布．', '[]', '$X$的概率分布为：

$$
P(X = 0) = \\frac{1}{2},  P(X = 1) = \\frac{1}{4},  P(X = 2) = \\frac{1}{8},  P(X = 3) = \\frac{1}{8}.
$$

', '
首先确定$X$的可能值是 0,1,2,3，其次计算$X$取各种可能值的概率。设事件$A_{i} =$“汽车在第$i$个路口首次遇到红灯”，$i = 1, 2, 3$，且$A_{i}$相互独立。

$$
P(A_{i}) = P(\\overline{Ai​​}) = \\frac{1}{2}.
$$

事件$A_{i}$发生表示该汽车首次遇到红灯前已通过的路口的个数为$i - 1$。所以有

$$
P\\{X = 0\\} = P(A_{1}) = 1/2,
$$


$$
P\\{X = 1\\} = P(\\overline{A1​​}A_{2}) = P(\\overline{A1​​})P(A_{2}) = 1/4,
$$


$$
P\\{X = 2\\} = P(\\overline{A1​​}A_{2}A_{3}) = P(\\overline{A1​​})P(A_{2})P(A_{3}) = 1/8,
$$

则$X$的概率分布为

$$
P\\{X = 3\\} = P(A_{1}A_{2}A_{3}) = P(\\overline{A1​​})P(A_{2})P(A_{3}) = 1/8.
$$


$$
\\begin{array}{c|cccc}
X & 0 & 1 & 2 & 3 \\\\
P(X = x) & \\frac{1}{2} & \\frac{1}{4} & \\frac{1}{8} & \\frac{1}{8} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:59', 9, 'Mogullzr', '2026-01-29 14:07:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '510');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '510');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (511, '1991年考研数学卷4第21题', '简单', '考研数学1991年卷4真题', '假设随机变量$X$和$Y$在圆域$x^{2} + y^{2} ≤ r^{2}$上服从联合均匀分布．(1) 求$X$和$Y$的相关系数$ρ$；(2) 问$X$和$Y$是否独立？', '[]', '
(1)$ρ = 0$
(2)$X$和$Y$不独立
', '
(Ⅰ) 二维均匀分布$(X, Y)$的联合密度函数为

$$
f(x, y) = \\begin{cases} \\frac{1}{S_{D}} & (x, y) ∈ D \\\\ 0 & (x, y) ∈/ D \\end{cases}
$$

$S_{D}$是区域$D$的面积，$S_{D} = πr^{2}$，所以$(X, Y)$的联合密度

$$
f(x, y) = \\begin{cases} \\frac{1}{πr^{2}} & x^{2} + y^{2} ≤ r^{2} \\\\ 0 & x^{2} + y^{2} > r^{2}. \\end{cases}
$$

由连续型随机变量边缘分布的定义，$X$和$Y$的概率密度$f_{1}(x)$和$f_{2}(y)$为

$$
f_{1}(x) = \\int_{−∞}^{+∞} f(x, y) dy = \\frac{1}{πr^{2}} \\int_{−\\sqrt{r^{2}-x^{2}}}^{\\sqrt{r^{2}-x^{2}}} dy = \\frac{2}{πr^{2}}\\sqrt{r^{2} - x^{2}} (∣x∣ ≤ r),
$$



$$
f_{2}(y) = \\int_{−∞}^{+∞} f(x, y) dx = \\frac{2}{πr^{2}}\\sqrt{r^{2} - y^{2}} (∣y∣ ≤ r).
$$

于是由定积分的奇偶对称性，得到

$$
EX = \\frac{2}{πr^{2}} \\int_{−r}^{r} x\\sqrt{r^{2} - x^{2}} dx = 0,  EY = \\frac{2}{πr^{2}} \\int_{−r}^{r} y\\sqrt{r^{2} - y^{2}} dy = 0.
$$

再由二重积分的奇偶对称性，得到

$$
Cov(X, Y) = E(XY) - EX ⋅ EY = \\iint_{x^{2}+y^{2}≤r^{2}} \\frac{xy}{πr^{2}} dx dy = 0.
$$

于是$X$和$Y$的相关系数

$$
ρ = \\frac{Cov(X, Y)}{\\sqrt{DX} ⋅ \\sqrt{DY}} = 0.
$$

(Ⅱ)
由于$f(x, y) \\neq f_{1}(x)f_{2}(y)$，可见随机变量$X$和$Y$不独立。
', 9, 'Mogullzr', '2026-01-29 14:07:59', 9, 'Mogullzr', '2026-01-29 14:07:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '511');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '511');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '511');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (512, '1991年考研数学卷4第22题', '简单', '考研数学1991年卷4真题', '设总体$X$的概率密度为
$$
p(x; λ) = \\begin{cases} λax^{a-1}e^{−λx^{a}} & x > 0 \\\\ 0 & x ≤ 0 \\end{cases}
$$
其中$λ > 0$是未知参数，$a > 0$是已知常数．
试根据来自总体$X$的简单随机样本$x_{1}, x_{2}, ⋯  , x_{n}$,
求$λ$的最大似然估计量$\\hat{λ}$．', '[]', '
$\\hat{λ} = \\frac{n}{\\sum_{i=1}^{n} X_{i}^{a}}$
', '
给定总体$X$的概率密度函数为：


$$
p(x; λ) = \\begin{cases} λax^{a-1}e^{−λx^{a}} & x > 0 \\\\ 0 & x ≤ 0 \\end{cases}
$$

其中$λ > 0$是未知参数，$a > 0$是已知常数。设$x_{1}, x_{2}, … , x_{n}$是来自总体$X$的一个简单随机样本。
似然函数为：

$$
L(λ) = \\prod_{i=1}^{n} p(x_{i}; λ) = \\prod_{i=1}^{n} λax_{i}^{a-1}e^{−λx_{i}^{a}}.
$$

对数似然函数为：


$$
l(λ) = \\ln L(λ) = \\sum_{i=1}^{n} \\ln (λax_{i}^{a-1}e^{−λx_{i}^{a}}) = \\sum_{i=1}^{n}  \\lbrack \\ln λ + \\ln a + (a - 1) \\ln x_{i} - λx_{i}^{a} \\rbrack  .
$$

整理得：


$$
l(λ) = n \\ln λ + n \\ln a + (a - 1) \\sum_{i=1}^{n} \\ln x_{i} - λ \\sum_{i=1}^{n} x_{i}^{a}.
$$

对$λ$求导并令导数为零：


$$
\\frac{dl(λ)}{dλ} = \\frac{n}{λ} - \\sum_{i=1}^{n} x_{i}^{a} = 0,
$$

解得：


$$
\\frac{n}{λ} = \\sum_{i=1}^{n} x_{i}^{a}  ⇒  λ = \\frac{n}{\\sum_{i=1}^{n} x_{i}^{a}}.
$$

因此，$λ$的最大似然估计量为


$$
\\hat{λ} = \\frac{n}{\\sum_{i=1}^{n} X_{i}^{a}},
$$

其中$X_{i}$为样本随机变量。
二阶导数检验：


$$
\\frac{d^{2}l(λ)}{dλ^{2}} = −\\frac{n}{λ^{2}} < 0,
$$

由于二阶导数为负，说明该点为极大值点，因此所得估计量是有效的。
', 9, 'Mogullzr', '2026-01-29 14:08:00', 9, 'Mogullzr', '2026-01-29 14:08:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '512');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '512');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '512');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (513, '1991年考研数学卷5第1题', '', '考研数学1991年卷5真题', '/problems/other/491', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (514, '1991年考研数学卷5第2题', '', '考研数学1991年卷5真题', '/problems/other/492', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (515, '1991年考研数学卷5第3题', '', '考研数学1991年卷5真题', '/problems/other/493', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (516, '1991年考研数学卷5第4题', '简单', '考研数学1991年卷5真题', '$n$阶行列式$\\begin{vmatrix}
a & b & 0 &  & 0 & 0\\\\
 &  &  & ⋯ &  & \\\\
0 & a & b &  & 0 & 0\\\\
 &  &  & ⋯ &  & \\\\
0 & 0 & a &  & 0 & 0\\\\
 &  &  & ⋯ &  & \\\\
⋮ & ⋮ & ⋮ &  & ⋮ & ⋮\\\\
 &  &  & ⋱ &  & \\\\
0 & 0 & 0 &  & a & b\\\\
 &  &  & ⋯ &  & \\\\
0 & 0 & 0 &  & 0 & a\\\\
 &  &  & ⋯ &  & 
\\end{vmatrix} =$______．', '[]', '$a^{n}$
', '该行列式是一个上三角矩阵，因为所有主对角线以下的元素均为零。对于上三角矩阵，其行列式等于主对角线上所有元素的乘积。在此矩阵中，主对角线上的元素均为$a$，因此行列式的值为$a × a × ⋯ × a = a^{n}$。
', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '516');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '516');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (517, '1991年考研数学卷5第5题', '简单', '考研数学1991年卷5真题', '设$A$和$B$为随机事件，$P(A) = 0.7$,$P(A - B) = 0.3$，则$P(\\overline{AB}) =$______．', '[]', '
0.6
', '
已知$P(A) = 0.7$，$P(A - B) = 0.3$，其中$A - B$表示$A ∩ \\overline{B}$，即$P(A ∩ \\overline{B}) = 0.3$。
由于$P(A) = P(A ∩ B) + P(A ∩ \\overline{B})$，代入得$0.7 = P(A ∩ B) + 0.3$，解得$P(A ∩ B) = 0.4$。
则$P(\\overline{AB}) = P(\\overline{A∩B}) = 1 - P(A ∩ B) = 1 - 0.4 = 0.6$。
', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '517');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '517');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (518, '1991年考研数学卷5第6题', '', '考研数学1991年卷5真题', '/problems/other/496', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (519, '1991年考研数学卷5第7题', '简单', '考研数学1991年卷5真题', '设数列的通项为
$$
x_{n} = \\begin{cases} \\frac{n^{2} + \\sqrt{n}}{n} & 若n为奇数; \\\\ \\frac{1}{n} & 若n为偶数. \\end{cases}
$$
则当$n → ∞$时，$x_{n}$是', '[''无穷大量．'', ''无穷小量．'', ''有界变量．'', ''无界变量．'']', "['D']", '分析数列$x_{n}$的行为：当$n$为奇数时，$x_{n} = \\frac{n^{2}+\\sqrt{n}}{n} = n + \\frac{1}{\\sqrt{n}}$，随着$n$增大，$x_{n}$趋于无穷大；当$n$为偶数时，$x_{n} = \\frac{1}{n}$，随着$n$增大，$x_{n}$趋于 0。因此，序列不趋于无穷大（因为偶子列趋于 0），也不趋于 0（因为奇子列趋于无穷大）。同时，对于任意正数$M$，总存在奇数$n$使得$x_{n} > M$，故序列无界。综上，$x_{n}$是无界变量。', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '519');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '519');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1072', '519');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (520, '1991年考研数学卷5第8题', '简单', '考研数学1991年卷5真题', '设$A$与$B$为$n$阶方阵，且$AB = O$，则必有', '[''$A = O$或$B = O$．'', ''$AB = BA$．'', ''$∣A∣ = 0$或$∣B∣ = 0$．'', ''$∣A∣ + ∣B∣ = 0$．'']', "['C']", '
由于$AB = O$，则有

$$
∣AB∣ = ∣A∣∣B∣ = ∣O∣ = 0,
$$
因此$∣A∣ = 0$或$∣B∣ = 0$，即选项 C 正确。对于选项 A，反例：设

$$
A = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right \\rbrack  ,  B = \\left \\lbrack  \\begin{array}{cc}
0 & 0 \\\\
0 & 1 \\\\
\\end{array} \\right \\rbrack  ,
$$
则$AB = O$，但$A$与$B$均非零矩阵。对于选项 B，反例：设

$$
A = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right \\rbrack  ,  B = \\left \\lbrack  \\begin{array}{cc}
0 & 0 \\\\
1 & 0 \\\\
\\end{array} \\right \\rbrack  ,
$$
则$AB = O$，但

$$
BA = \\left \\lbrack  \\begin{array}{cc}
0 & 0 \\\\
1 & 0 \\\\
\\end{array} \\right \\rbrack  \\neq O.
$$
对于选项 D，反例：若$∣A∣ = 0$，$∣B∣ = 1$，则

$$
∣A∣ + ∣B∣ = 1 \\neq 0.
$$
', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '520');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '520');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '520');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (521, '1991年考研数学卷5第9题', '简单', '考研数学1991年卷5真题', '设$A$是$m × n$矩阵，$Ax = 0$是非齐次线性方程组$Ax = b$所对应的齐次线性方程组，
则下列结论正确的是', '[''若$Ax = 0$仅有零解，则$Ax = b$有唯一解．'', ''若$Ax = 0$有非零解，则$Ax = b$有无穷多个解．'', ''若$Ax = b$有无穷多个解，则$Ax = 0$仅有零解．'', ''若$Ax = b$有无穷多个解，则$Ax = 0$有非零解．'']', "['D']", '
对于非齐次线性方程组$Ax = b$，其解的结构为：如果存在特解$x_{p}$，则通解为$x_{p} + N(A)$，其中$N(A)$是齐次方程组$Ax = 0$的解空间。若$Ax = b$有无穷多个解，则$N(A)$必须包含非零向量，即$Ax = 0$有非零解。因此选项 D 正确。选项 A 错误，因为即使$Ax = 0$仅有零解，$Ax = b$可能无解；选项 B 错误，因为即使$Ax = 0$有非零解，$Ax = b$可能无解；选项 C 错误，因为$Ax = b$有无穷多解时，$Ax = 0$必须有非零解，而不是仅有零解。', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '521');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '521');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (522, '1991年考研数学卷5第10题', '', '考研数学1991年卷5真题', '/problems/other/499', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (523, '1991年考研数学卷5第11题', '简单', '考研数学1991年卷5真题', '求极限$\\lim_{x→+∞}(x + \\sqrt{1 + x^{2}})x1​$．', '[]', '
1
', '
考虑极限$L = \\lim_{x→+∞}(x + \\sqrt{1 + x^{2}})x1​$。这是一个$1^{∞}$型不定式，取自然对数得：


$$
\\ln L = \\lim_{x→+∞} \\frac{\\ln(x + \\sqrt{1 + x^{2}})}{x}.
$$

计算该极限，当$x → +∞$时，分子和分母均趋于无穷，应用 L’Hôpital 法则。分子导数为：


$$
\\frac{d}{dx} \\ln(x + \\sqrt{1 + x^{2}}) = \\frac{1}{x + \\sqrt{1 + x^{2}}} ⋅ (1 + \\frac{x}{\\sqrt{1 + x^{2}}}) = \\frac{1}{\\sqrt{1 + x^{2}}}.
$$

分母导数为 1。因此，


$$
\\ln L = \\lim_{x→+∞} \\frac{1}{\\sqrt{1 + x^{2}}} = 0.
$$

所以$L = e^{0} = 1$。
', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '523');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '523');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '523');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (524, '1991年考研数学卷5第12题', '简单', '考研数学1991年卷5真题', '求定积分$I = \\int_{−1}^{1}(2x + ∣x∣ + 1∣)2dx$．', '[]', '$\\frac{22}{3}$
', '考虑定积分$I = \\int_{−1}^{1}(2x + ∣x∣ + 1)2 dx$。由于被积函数中包含绝对值函数$∣x∣$，将积分区间分为$\\lbrack −1, 0 \\rbrack$和$\\lbrack 0, 1 \\rbrack$两部分。
当$x ∈  \\lbrack −1, 0 \\rbrack$时，$∣x∣ = −x$，因此：

$$
2x + ∣x∣ + 1 = 2x + (−x) + 1 = x + 1
$$

所以被积函数为$(x + 1)2$。
当$x ∈  \\lbrack 0, 1 \\rbrack$时，$∣x∣ = x$，因此：

$$
2x + ∣x∣ + 1 = 2x + x + 1 = 3x + 1
$$

所以被积函数为$(3x + 1)2$。
于是，积分可写为：

$$
I = \\int_{−1}^{0}(x + 1)2 dx + \\int_{0}^{1}(3x + 1)2 dx
$$

计算第一个积分：

$$
\\int_{−1}^{0}(x + 1)2 dx = \\int_{−1}^{0}(x^{2} + 2x + 1) dx =  \\lbrack \\frac{x^{3}}{3} + x^{2} + x \\rbrack _{−1}^{0}
$$

代入上限$x = 0$得$0$，代入下限$x = −1$得：

$$
\\frac{(−1)3}{3} + (−1)2 + (−1) = −\\frac{1}{3} + 1 - 1 = −\\frac{1}{3}
$$

所以：

$$
\\int_{−1}^{0}(x + 1)2 dx = 0 - (−\\frac{1}{3}) = \\frac{1}{3}
$$

计算第二个积分：

$$
\\int_{0}^{1}(3x + 1)2 dx = \\int_{0}^{1}(9x^{2} + 6x + 1) dx =  \\lbrack 3x^{3} + 3x^{2} + x \\rbrack _{0}^{1}
$$

代入上限$x = 1$得：

$$
3(1)3 + 3(1)2 + 1 = 3 + 3 + 1 = 7
$$

代入下限$x = 0$得$0$，所以：

$$
\\int_{0}^{1}(3x + 1)2 dx = 7
$$

因此：

$$
I = \\frac{1}{3} + 7 = \\frac{1}{3} + \\frac{21}{3} = \\frac{22}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:02', 9, 'Mogullzr', '2026-01-29 14:08:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '524');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '524');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '524');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (525, '1991年考研数学卷5第13题', '简单', '考研数学1991年卷5真题', '求不定积分$I = ∫ \\frac{x^{2}}{1+x^{2}} arctan xdx$．', '[]', '

$$
I = x arctan x - \\frac{1}{2} \\ln(1 + x^{2}) - \\frac{1}{2}(arctan x)2 + C
$$

其中$C$为积分常数。
', '首先，将积分改写为：

$$
I = ∫ \\frac{x^{2}}{1 + x^{2}} arctan x dx = ∫ (1 - \\frac{1}{1 + x^{2}}) arctan x dx = ∫ arctan x dx - ∫ \\frac{arctan x}{1 + x^{2}} dx
$$

计算第一个积分$∫ arctan x dx$。使用分部积分法，设$u = arctan x$，$dv = dx$，则$du = \\frac{1}{1+x^{2}}dx$，$v = x$，得：

$$
∫ arctan x dx = x arctan x - ∫ x ⋅ \\frac{1}{1 + x^{2}} dx = x arctan x - \\frac{1}{2} ∫ \\frac{2x}{1 + x^{2}} dx = x arctan x - \\frac{1}{2} \\ln(1 + x^{2}) + C_{1}
$$

计算第二个积分$∫ \\frac{arctan x}{1+x^{2}} dx$。设$u = arctan x$，则$du = \\frac{1}{1+x^{2}}dx$，得：

$$
∫ \\frac{arctan x}{1 + x^{2}} dx = ∫ u du = \\frac{u^{2}}{2} + C_{2} = \\frac{(arctan x)2}{2} + C_{2}
$$

将两部分合并，得：

$$
I = x arctan x - \\frac{1}{2} \\ln(1 + x^{2}) - \\frac{1}{2}(arctan x)2 + C
$$

其中$C = C_{1} - C_{2}$为积分常数。验证导数后与原被积函数一致。
', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '525');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '525');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '525');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (526, '1991年考研数学卷5第14题', '简单', '考研数学1991年卷5真题', '已知$xy = xf(z) + yg(z)$，$xf^{′}(z) + yg^{′}(z) \\neq 0$，其中$z = z(x, y)$是$x$和$y$的函数．
求证：$\\lbrack x - g(z) \\rbrack \\frac{∂z}{∂x} =  \\lbrack y - f(z) \\rbrack \\frac{∂z}{∂y}.$', '[]', '等式成立。
', '
将$xy = xf(z) + yg(z)$两侧同时对$x$求偏导数，解得


$$
\\frac{∂z}{∂x} = \\frac{y - f(z)}{xf^{′}(z) + yg^{′}(z)}.
$$

将$xy = xf(z) + yg(z)$两侧同时对$y$求偏导数，解得


$$
\\frac{∂z}{∂y} = \\frac{x - g(z)}{xf^{′}(z) + yg^{′}(z)}.
$$

从而得到$\\lbrack x - g(z) \\rbrack \\frac{∂z}{∂x} =  \\lbrack y - f(z) \\rbrack \\frac{∂z}{∂y}$.
', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '526');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '526');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '526');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (527, '1991年考研数学卷5第15题', '', '考研数学1991年卷5真题', '/problems/other/504', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (528, '1991年考研数学卷5第16题', '', '考研数学1991年卷5真题', '/problems/other/505', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (529, '1991年考研数学卷5第17题', '简单', '考研数学1991年卷5真题', '证明不等式$\\ln (1 + \\frac{1}{x}) > \\frac{1}{1+x}$（$0 < x < +∞$）．', '[]', '
不等式成立。
', '
令$g(x) = \\ln (1 + \\frac{1}{x}) - \\frac{1}{1+x}$，则当$x > 0$时

$$
g^{′}(x) = −\\frac{1}{x(1 + x)2} < 0,
$$

所以函数$g(x)$在$(0, +∞)$上单调减少。又

$$
\\lim_{x→+∞} g(x) = \\lim_{x→+∞}  \\lbrack \\ln (1 + \\frac{1}{x}) - \\frac{1}{1 + x} \\rbrack  = 0,
$$

于是当$x > 0$时，$g(x) > 0$，即$\\ln (1 + \\frac{1}{x}) > \\frac{1}{1+x}$。
', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '529');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '529');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '529');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (530, '1991年考研数学卷5第18题', '简单', '考研数学1991年卷5真题', '设$n$阶矩阵$A$和$B$满足条件$A + B = AB$．(1) 证明$A - E$为可逆矩阵，其中$E$是$n$阶单位矩阵；(2) 已知$B = \\left( \\begin{array}{ccc}
1 & −3 & 0 \\\\
2 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$，求矩阵$A$．', '[]', '

$$
A = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{3} & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)
$$

', '(1) 由条件$A + B = AB$，可得$AB - A - B = 0$。注意到$(A - E)(B - E) = AB - A - B + E$，代入条件得$(A - E)(B - E) = E$，因此$A - E$可逆，且其逆矩阵为$B - E$。
(2) 已知$B = \\left( \\begin{array}{ccc}
1 & −3 & 0 \\\\
2 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$，则$B - E = \\left( \\begin{array}{ccc}
0 & −3 & 0 \\\\
2 & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$。计算其逆矩阵：左上角块$\\left( \\begin{array}{cc}
0 & −3 \\\\
2 & 0 \\\\
\\end{array} \\right)$的行列式为$0 ⋅ 0 - (−3) ⋅ 2 = 6$，逆矩阵为$\\frac{1}{6} \\left( \\begin{array}{cc}
0 & 3 \\\\
−2 & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
0 & \\frac{1}{2} \\\\
−\\frac{1}{3} & 0 \\\\
\\end{array} \\right)$，右下角块$\\lbrack 1 \\rbrack$的逆为$\\lbrack 1 \\rbrack$，因此$(B - E)−1 = \\left( \\begin{array}{ccc}
0 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{3} & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$。于是$A = E + (B - E)−1 = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{ccc}
0 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{3} & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{3} & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$。验证满足$A + B = AB$，故正确。
', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '530');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '530');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '530');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (531, '1991年考研数学卷5第19题', '', '考研数学1991年卷5真题', '/problems/other/507', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (532, '1991年考研数学卷5第20题', '简单', '考研数学1991年卷5真题', '已知向量$α = (1, k, 1)T$是矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 2 & 1 \\\\
1 & 1 & 2 \\\\
\\end{array} \\right)$的逆矩阵$A^{−1}$的特征向量，求常数$k$的值．', '[]', '$k = −2$或$k = 1$
', '已知向量$α = (1, k, 1)T$是矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 2 & 1 \\\\
1 & 1 & 2 \\\\
\\end{array} \\right)$的逆矩阵$A^{−1}$的特征向量。由于$A^{−1}$与$A$共享特征向量，且$A^{−1}$的特征值是$A$的特征值的倒数，因此$α$也是$A$的特征向量。
首先，求$A$的特征值。计算特征多项式：

$$
det(A - μI) = det \\left( \\begin{array}{ccc}
2 - μ & 1 & 1 \\\\
1 & 2 - μ & 1 \\\\
1 & 1 & 2 - μ \\\\
\\end{array} \\right) = −(μ - 1)2(μ - 4)
$$

解得特征值$μ = 1$（二重）和$μ = 4$。
接下来，求对应的特征向量：
对于$μ = 1$，解$(A - I)x = 0$，即$x_{1} + x_{2} + x_{3} = 0$。代入$α = (1, k, 1)T$，得$1 + k + 1 = 0$，即$k = −2$。对于$μ = 4$，解$(A - 4I)x = 0$，即方程组：$\\begin{cases} −2x_{1} + x_{2} + x_{3} = 0 \\\\ x_{1} - 2x_{2} + x_{3} = 0 \\\\ x_{1} + x_{2} - 2x_{3} = 0 \\end{cases}$解得$x_{1} = x_{2} = x_{3}$，因此特征向量为$(1, 1, 1)T$的倍数。代入$α = (1, k, 1)T$，得$k = 1$。
因此，常数$k$的值为$−2$或$1$。
', 9, 'Mogullzr', '2026-01-29 14:08:03', 9, 'Mogullzr', '2026-01-29 14:08:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '532');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '532');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (533, '1991年考研数学卷5第21题', '简单', '考研数学1991年卷5真题', '一汽车沿一街道行驶，需要通过三个均设有红绿信号灯的路口，
每个信号灯为红或绿与其他信号灯为红或绿相互独立，且红绿两种信号显示的时间相等，
以$X$表示该汽车首次遇到红灯前已通过的路口的个数．(1) 求$X$的概率分布．(2) 求$E (\\frac{1}{1+X})$．', '[]', '
(1)$X$的概率分布为：
$P(X = 0) = \\frac{1}{2}$，
$P(X = 1) = \\frac{1}{4}$，
$P(X = 2) = \\frac{1}{8}$，
$P(X = 3) = \\frac{1}{8}$。
(2)$E (\\frac{1}{1+X}) = \\frac{67}{96}$。
', '
(1) 设每个路口遇到红灯的概率为$\\frac{1}{2}$，遇到绿灯的概率也为$\\frac{1}{2}$，且相互独立。
$X = 0$表示第一个路口遇到红灯，概率为$\\frac{1}{2}$。$X = 1$表示第一个路口绿灯、第二个路口红灯，概率为$\\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4}$。$X = 2$表示前两个路口绿灯、第三个路口红灯，概率为$\\frac{1}{2} × \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{8}$。$X = 3$表示所有三个路口均为绿灯，概率为$\\frac{1}{2} × \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{8}$。
概率之和为$\\frac{1}{2} + \\frac{1}{4} + \\frac{1}{8} + \\frac{1}{8} = 1$，符合概率分布要求。
(2) 计算$E (\\frac{1}{1+X})$：


$$
E (\\frac{1}{1 + X}) = \\sum_{k=0}^{3} \\frac{1}{1 + k} ⋅ P(X = k)
$$

代入概率值：


$$
= \\frac{1}{1} ⋅ \\frac{1}{2} + \\frac{1}{2} ⋅ \\frac{1}{4} + \\frac{1}{3} ⋅ \\frac{1}{8} + \\frac{1}{4} ⋅ \\frac{1}{8} = \\frac{1}{2} + \\frac{1}{8} + \\frac{1}{24} + \\frac{1}{32}
$$

通分后计算（公分母为96）：


$$
= \\frac{48}{96} + \\frac{12}{96} + \\frac{4}{96} + \\frac{3}{96} = \\frac{67}{96}
$$

故$E (\\frac{1}{1+X}) = \\frac{67}{96}$。
', 9, 'Mogullzr', '2026-01-29 14:08:04', 9, 'Mogullzr', '2026-01-29 14:08:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '533');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '533');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (534, '1991年考研数学卷5第22题', '简单', '考研数学1991年卷5真题', '在电源电压不超过$200$伏、在$200 - 240$伏和超过$240$伏三种情形下，
某种电子元件损坏的概率分别为$0.1$,$0.001$和$0.2$，
假设电源电压$X$服从正态分布$N(220, 25^{2})$，试求：(1) 该电子元件损坏的概率$α$；(2) 该电子元件损坏时，电源电压在$200 - 240$伏的概率$β$．
$$
\\begin{array}{c|c|c|c|c|c|c|c|c|}
x & 0.10 & 0.20 & 0.40 & 0.60 & 0.80 & 1.00 & 1.20 & 1.40 \\\\
Φ(x) & 0.530 & 0.579 & 0.655 & 0.726 & 0.788 & 0.841 & 0.885 & 0.919 \\\\
\\end{array}
$$
（表中$Φ(x)$是标准正态分布函数）', '[]', '
(1)$α = 0.064$
(2)$β = 0.009$
', '
电源电压$X ∼ N(220, 25^{2})$，首先计算电压在不同范围内的概率：
$P(X ≤ 200) = Φ (\\frac{200-220}{25}) = Φ(−0.8) = 1 - Φ(0.8) = 1 - 0.788 = 0.212$$P(200 < X ≤ 240) = Φ (\\frac{240-220}{25}) - Φ (\\frac{200-220}{25}) = Φ(0.8) - Φ(−0.8) = 0.788 - 0.212 = 0.576$$P(X > 240) = 1 - Φ(0.8) = 1 - 0.788 = 0.212$
设$A$表示电子元件损坏的事件，根据全概率公式：


$$
\\begin{array}{cc}
P(A) & = P(A ∣ X ≤ 200)P(X ≤ 200) \\\\
 & + P(A ∣ 200 < X ≤ 240)P(200 < X ≤ 240) \\\\
 & + P(A ∣ X > 240)P(X > 240) \\\\
\\end{array}
$$

代入值：


$$
\\begin{array}{cc}
P(A) & = 0.1 × 0.212 + 0.001 × 0.576 + 0.2 × 0.212 \\\\
 & = 0.0212 + 0.000576 + 0.0424 \\\\
 & = 0.064176 \\\\
\\end{array}
$$

所以$α = 0.064$。
对于$β$，即$P(200 < X ≤ 240 ∣ A)$，使用贝叶斯公式：


$$
\\begin{array}{cc}
β & = \\frac{P(A ∣ 200 < X ≤ 240) P(200 < X ≤ 240)}{P(A)} \\\\
 & = \\frac{0.001 × 0.576}{0.064} \\\\
 & = \\frac{0.000576}{0.064} \\\\
\\end{array}
$$

所以$β = 0.009$。
其中，概率值均基于给定的正态分布函数表计算，并保留三位小数。
', 9, 'Mogullzr', '2026-01-29 14:08:04', 9, 'Mogullzr', '2026-01-29 14:08:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '534');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '534');
