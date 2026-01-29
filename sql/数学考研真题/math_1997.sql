INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1056, '1997年考研数学卷1第1题', '简单', '考研数学1997年卷1真题', '
$$
\\lim_{x→0} \\frac{3 \\sin x + x^{2} \\cos \\frac{1}{x}}{(1 + \\cos x) \\ln(1 + x)} =
$$
', '[]', '$\\frac{3}{2}$
', '考虑极限$\\lim_{x→0} \\frac{3 \\sin x+x^{2} \\cos \\frac{1}{x}}{(1+\\cos x) \\ln(1+x)}$。
当$x → 0$时，分子中的$3 \\sin x ∼ 3x$，而$x^{2} \\cos \\frac{1}{x}$由于$∣ \\cos \\frac{1}{x}∣ ≤ 1$且$x^{2} → 0$，因此$x^{2} \\cos \\frac{1}{x} → 0$，故分子等价于$3x$。
分母中，$1 + \\cos x → 2$，$\\ln(1 + x) ∼ x$，因此分母等价于$2x$。
于是，原极限化为$\\lim_{x→0} \\frac{3x}{2x} = \\frac{3}{2}$。
Alternatively, 使用夹逼定理：由于$∣ \\cos \\frac{1}{x}∣ ≤ 1$，有


$$
\\frac{3 \\sin x - x^{2}}{(1 + \\cos x) \\ln(1 + x)} ≤ \\frac{3 \\sin x + x^{2} \\cos \\frac{1}{x}}{(1 + \\cos x) \\ln(1 + x)} ≤ \\frac{3 \\sin x + x^{2}}{(1 + \\cos x) \\ln(1 + x)}
$$

当$x → 0$时，左右两边的极限均为$\\frac{3}{2}$，故由夹逼定理，原极限为$\\frac{3}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:10:17', 9, 'Mogullzr', '2026-01-29 14:10:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1056');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1056');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1056');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1057, '1997年考研数学卷1第2题', '简单', '考研数学1997年卷1真题', '设幂级数$\\sum_{n=0}^{∞} a_{n}x^{n}$的收敛半径为$3$,
则幂级数$\\sum_{n=1}^{∞} na_{n}(x - 1)n+1$的收敛区间为 ______．', '[]', '$(−2, 4)$
', '
已知幂级数$\\sum_{n=0}^{∞} a_{n}x^{n}$的收敛半径为 3，因此其收敛区间为$(−3, 3)$（端点收敛性未知）。
考虑幂级数


$$
\\sum_{n=1}^{∞} na_{n}(x - 1)n+1.
$$

令$y = x - 1$，则原级数化为


$$
\\sum_{n=1}^{∞} na_{n}y^{n+1} = y \\sum_{n=1}^{∞} na_{n}y^{n}.
$$

由于$\\sum_{n=0}^{∞} a_{n}x^{n}$的收敛半径为 3，有


$$
limsup_{n→∞} ∣a_{n}∣^{1/n} = \\frac{1}{3}.
$$

对于级数$\\sum_{n=1}^{∞} na_{n}y^{n}$，


$$
limsup_{n→∞} ∣na_{n}∣^{1/n} = limsup_{n→∞} n^{1/n} ⋅ ∣a_{n}∣^{1/n} = 1 ⋅ \\frac{1}{3} = \\frac{1}{3},
$$

因此其收敛半径也为 3。
于是$\\sum_{n=1}^{∞} na_{n}y^{n}$在$∣y∣ < 3$时收敛，在$∣y∣ > 3$时发散。从而


$$
\\sum_{n=1}^{∞} na_{n}y^{n+1}
$$

在$∣y∣ < 3$时收敛，在$∣y∣ > 3$时发散。
代回$y = x - 1$，即当$∣x - 1∣ < 3$时级数收敛，解得$−2 < x < 4$。
当$∣x - 1∣ = 3$时，即$x = −2$或$x = 4$，级数变为


$$
\\sum_{n=1}^{∞} na_{n}(±3)n+1.
$$

由于原级数在$x = ±3$处的收敛性未知，且$∑ na_{n}(±3)n$可能发散，因此端点$x = −2$和$x = 4$处的收敛性无法确定，故收敛区间为开区间$(−2, 4)$。
综上，幂级数


$$
\\sum_{n=1}^{∞} na_{n}(x - 1)n+1
$$

的收敛区间为$(−2, 4)$。
', 9, 'Mogullzr', '2026-01-29 14:10:17', 9, 'Mogullzr', '2026-01-29 14:10:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1057');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1057');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '1057');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1058, '1997年考研数学卷1第3题', '简单', '考研数学1997年卷1真题', '对数螺线$ρ = e^{θ}$在点$(ρ, θ) = (e^{\\frac{π}{2}}, \\frac{π}{2})$处的切线的直角坐标方程为 ______．', '[]', '

$$
x + y = e^{\\frac{π}{2}}
$$

', '
给定对数螺线$ρ = e^{θ}$在点$(ρ, θ) = (e^{\\frac{π}{2}}, \\frac{π}{2})$处，首先将该点转换为直角坐标：


$$
x = ρ \\cos θ = e^{\\frac{π}{2}} \\cos \\frac{π}{2} = 0
$$



$$
y = ρ \\sin θ = e^{\\frac{π}{2}} \\sin \\frac{π}{2} = e^{\\frac{π}{2}}
$$

因此点为$(0, e^{\\frac{π}{2}})$。
求切线斜率，由极坐标关系$x = e^{θ} \\cos θ$和$y = e^{θ} \\sin θ$，对参数$θ$求导：


$$
\\frac{dx}{dθ} = e^{θ}(\\cos θ - \\sin θ)
$$



$$
\\frac{dy}{dθ} = e^{θ}(\\sin θ + \\cos θ)
$$

则


$$
\\frac{dy}{dx} = \\frac{dy/dθ}{dx/dθ} = \\frac{\\sin θ + \\cos θ}{\\cos θ - \\sin θ}
$$

在$θ = \\frac{π}{2}$处：


$$
\\frac{dy}{dx} = \\frac{\\sin \\frac{π}{2} + \\cos \\frac{π}{2}}{\\cos \\frac{π}{2} - \\sin \\frac{π}{2}} = \\frac{1 + 0}{0 - 1} = −1
$$

切线斜率为$−1$。
使用点斜式方程：


$$
y - e^{\\frac{π}{2}} = −1 ⋅ (x - 0)
$$

即


$$
x + y = e^{\\frac{π}{2}}
$$

故切线的直角坐标方程为$x + y = e^{\\frac{π}{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:10:17', 9, 'Mogullzr', '2026-01-29 14:10:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1058');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1058');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1058');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1059, '1997年考研数学卷1第4题', '简单', '考研数学1997年卷1真题', '设$A = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
4 & t & 3 \\\\
3 & −1 & 1 \\\\
\\end{array} \\right)$,$B$为三阶非零矩阵，且$AB = O$，则$t =$______．', '[]', '$−3$
', '
由于$AB = O$且$B$为非零矩阵，则$A$不可逆，故$det(A) = 0$。
计算行列式：


$$
det(A) = det \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
4 & t & 3 \\\\
3 & −1 & 1 \\\\
\\end{array} \\right) = 1 ⋅ det \\left( \\begin{array}{cc}
t & 3 \\\\
−1 & 1 \\\\
\\end{array} \\right) - 2 ⋅ det \\left( \\begin{array}{cc}
4 & 3 \\\\
3 & 1 \\\\
\\end{array} \\right) + (−2) ⋅ det \\left( \\begin{array}{cc}
4 & t \\\\
3 & −1 \\\\
\\end{array} \\right)
$$

其中：


$$
det \\left( \\begin{array}{cc}
t & 3 \\\\
−1 & 1 \\\\
\\end{array} \\right) = t ⋅ 1 - 3 ⋅ (−1) = t + 3
$$



$$
det \\left( \\begin{array}{cc}
4 & 3 \\\\
3 & 1 \\\\
\\end{array} \\right) = 4 ⋅ 1 - 3 ⋅ 3 = 4 - 9 = −5
$$



$$
det \\left( \\begin{array}{cc}
4 & t \\\\
3 & −1 \\\\
\\end{array} \\right) = 4 ⋅ (−1) - t ⋅ 3 = −4 - 3t
$$

代入得：


$$
det(A) = (t + 3) - 2 ⋅ (−5) + (−2) ⋅ (−4 - 3t) = t + 3 + 10 + 8 + 6t = 7t + 21
$$

设$det(A) = 0$，有$7t + 21 = 0$，解得$t = −3$。
当$t = −3$时，$A$奇异，存在非零矩阵$B$满足$AB = O$。
', 9, 'Mogullzr', '2026-01-29 14:10:17', 9, 'Mogullzr', '2026-01-29 14:10:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1059');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1059');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '1059');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1060, '1997年考研数学卷1第5题', '简单', '考研数学1997年卷1真题', '袋中有$50$个乒乓球，其中$20$个是黄球，$30$个是白球．
今有两人依次随机地从袋中各取一球，取后不放回，则第二个人取得黄球的概率是 ______．', '[]', '

$$
\\frac{2}{5}
$$

', '
设第二个人取到黄球为事件$B$。
根据全概率公式：

$$
P(B) = P(B ∣ A_{1}) ⋅ P(A_{1}) + P(B ∣ A_{2}) ⋅ P(A_{2})
$$

其中：
$A_{1}$：第一个人取到黄球$A_{2}$：第一个人取到白球
已知：


$$
P(A_{1}) = \\frac{20}{50} = \\frac{2}{5},  P(A_{2}) = \\frac{30}{50} = \\frac{3}{5}
$$

若第一个人取到黄球，则剩余 49 个球中有 19 个黄球：


$$
P(B ∣ A_{1}) = \\frac{19}{49}
$$

若第一个人取到白球，则剩余 49 个球中有 20 个黄球：


$$
P(B ∣ A_{2}) = \\frac{20}{49}
$$

代入全概率公式：


$$
P(B) = \\frac{19}{49} ⋅ \\frac{2}{5} + \\frac{20}{49} ⋅ \\frac{3}{5}
$$



$$
P(B) = \\frac{38}{245} + \\frac{60}{245} = \\frac{98}{245} = \\frac{2}{5}
$$

因此，第二个人取到黄球的概率为$\\frac{2}{5}$。
', 9, 'Mogullzr', '2026-01-29 14:10:18', 9, 'Mogullzr', '2026-01-29 14:10:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1060');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1060');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1061, '1997年考研数学卷1第6题', '简单', '考研数学1997年卷1真题', '二元函数$f(x, y) = \\begin{cases} \\frac{xy}{x^{2}+y^{2}} & (x, y) \\neq (0, 0) \\\\ 0 & (x, y) = (0, 0) \\end{cases}$在点$(0, 0)$处', '[''连续，偏导数存在．'', ''连续，偏导数不存在．'', ''不连续，偏导数存在．'', ''不连续，偏导数不存在．'']', "['C']", '
首先，检查连续性：
考虑沿路径$y = x$接近$(0, 0)$，有

$$
f(x, x) = \\frac{x ⋅ x}{x^{2} + x^{2}} = \\frac{x^{2}}{2x^{2}} = \\frac{1}{2},
$$
极限为$\\frac{1}{2} \\neq f(0, 0) = 0$，因此函数在$(0, 0)$处不连续。其次，检查偏导数：
由定义，

$$
f_{x}(0, 0) = \\lim_{h→0} \\frac{f(h, 0) - f(0, 0)}{h} = \\lim_{h→0} \\frac{0}{h} = 0,
$$
同理$f_{y}(0, 0) = 0$，故偏导数存在。因此，选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:10:18', 9, 'Mogullzr', '2026-01-29 14:10:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1061');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1061');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1061');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1062, '1997年考研数学卷1第7题', '简单', '考研数学1997年卷1真题', '设在区间$\\lbrack a, b \\rbrack$上$f(x) > 0$,$f^{′}(x) < 0$,$f^{′′}(x) > 0$，令
$$
S_{1} = \\int_{a}^{b} f(x)dx,  S_{2} = f(b)(b - a),  S_{3} = \\frac{1}{2} \\lbrack f(a) + f(b) \\rbrack (b - a),
$$
则', '[''$S_{1} < S_{2} < S_{3}$．'', ''$S_{2} < S_{1} < S_{3}$．'', ''$S_{3} < S_{1} < S_{2}$．'', ''$S_{2} < S_{3} < S_{1}$．'']', "['B']", '
在区间$\\lbrack a, b \\rbrack$上，$f^{′}(x) < 0$，说明函数$f(x)$严格递减。
因此，对于任意$x ∈  \\lbrack a, b \\rbrack$，有

$$
f(x) ≥ f(b),
$$
从而

$$
S_{1} = \\int_{a}^{b} f(x) dx ≥ \\int_{a}^{b} f(b) dx = f(b)(b - a) = S_{2}.
$$
由于函数严格递减，等号不成立，故

$$
S_{2} < S_{1}.
$$
又因为$f^{′′}(x) > 0$，函数$f(x)$严格凸，因此图像在连接点$(a, f(a))$与$(b, f(b))$的弦之下，即积分$S_{1}$小于梯形面积

$$
S_{3} = \\frac{1}{2}  \\lbrack f(a) + f(b) \\rbrack  (b - a),
$$
故

$$
S_{1} < S_{3}.
$$
综上，

$$
S_{2} < S_{1} < S_{3},
$$
对应选项B。', 9, 'Mogullzr', '2026-01-29 14:10:18', 9, 'Mogullzr', '2026-01-29 14:10:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1062');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1062');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1062');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1063, '1997年考研数学卷1第8题', '简单', '考研数学1997年卷1真题', '$设F(x) = \\int_{x}^{x+2π} e^{\\sin t} \\sin tdt$，则$F(x)$', '[''为正常数．'', ''为负常数．'', ''恒为零．'', ''不为常数．'']', "['A']", '给定

$$
F(x) = \\int_{x}^{x+2π} e^{\\sin t} \\sin t dt,
$$
由于被积函数$e^{\\sin t} \\sin t$是以$2π$为周期的函数，在一个完整周期上的积分与起点$x$无关，因此$F(x)$是一个常数。为确定该常数的符号，计算

$$
F(0) = \\int_{0}^{2π} e^{\\sin t} \\sin t dt.
$$
将积分拆分为两部分：

$$
\\int_{0}^{π} e^{\\sin t} \\sin t dt + \\int_{π}^{2π} e^{\\sin t} \\sin t dt.
$$
对第二部分作变量代换$u = t - π$，则

$$
\\int_{π}^{2π} e^{\\sin t} \\sin t dt = \\int_{0}^{π} e^{\\sin(u+π)} \\sin(u + π) du = \\int_{0}^{π} −e^{− \\sin u} \\sin u du.
$$
因此，

$$
F(0) = \\int_{0}^{π} (e^{\\sin t} \\sin t - e^{− \\sin t} \\sin t) dt = \\int_{0}^{π} \\sin t (e^{\\sin t} - e^{− \\sin t}) dt.
$$
利用双曲正弦函数$\\sinh z = \\frac{e^{z}-e^{−z}}{2}$，可得

$$
F(0) = 2 \\int_{0}^{π} \\sin t ⋅ \\sinh(\\sin t) dt.
$$
在区间$\\lbrack 0, π \\rbrack$上，$\\sin t ≥ 0$，且当$t ∈ (0, π)$时，$\\sinh(\\sin t) > 0$，因此被积函数恒正，积分大于零。故$F(x)$为正常数。', 9, 'Mogullzr', '2026-01-29 14:10:18', 9, 'Mogullzr', '2026-01-29 14:10:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1063');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1063');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1063');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1064, '1997年考研数学卷1第9题', '简单', '考研数学1997年卷1真题', '设$α_{1} = \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right)$,$α_{2} = \\left( \\begin{array}{c}
b_{1} \\\\
b_{2} \\\\
b_{3} \\\\
\\end{array} \\right)$,$α_{3} = \\left( \\begin{array}{c}
c_{1} \\\\
c_{2} \\\\
c_{3} \\\\
\\end{array} \\right)$，则三条直线
$$
a_{1}x + b_{1}y + c_{1} = 0,  a_{2}x + b_{2}y + c_{2} = 0,  a_{3}x + b_{3}y + c_{3} = 0
$$
（其中$a_{i}^{2} + b_{i}^{2} \\neq 0, i = 1, 2, 3$）交于一点的充要条件是', '[''$α_{1}, α_{2}, α_{3}$线性相关．'', ''$α_{1}, α_{2}, α_{3}$线性无关．'', ''秩$r(α_{1}, α_{2}, α_{3}) =$秩$r(α_{1}, α_{2})$．'', ''$α_{1}, α_{2}, α_{3}$线性相关，$α_{1}, α_{2}$线性无关．'']', "['D']", '三条直线交于一点等价于方程组有唯一解，这要求系数矩阵与增广矩阵的秩均为2。向量$α_{1}, α_{2}, α_{3}$线性相关意味着秩小于3，而$α_{1}, α_{2}$线性无关意味着秩为2，确保两条直线相交于一点，且第三条直线经过该点。因此，充要条件是$α_{1}, α_{2}, α_{3}$线性相关，且$α_{1}, α_{2}$线性无关，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:10:18', 9, 'Mogullzr', '2026-01-29 14:10:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1064');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1064');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1064');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1065, '1997年考研数学卷1第10题', '简单', '考研数学1997年卷1真题', '设两个相互独立的随机变量$X$和$Y$的方差分别为$4$和$2$，则随机变量$3X - 2Y$的方差是', '[''$8$．'', ''$16$．'', ''$28$．'', ''$44$．'']', "['D']", '
由于$X$和$Y$相互独立，随机变量$3X - 2Y$的方差为：
$$
\\begin{array}{cc}
Var(3X - 2Y) & = 3^{2} ⋅ Var(X) + (−2)2 ⋅ Var(Y) \\\\
 & = 9 × 4 + 4 × 2 \\\\
 & = 36 + 8 = 44. \\\\
\\end{array}
$$
', 9, 'Mogullzr', '2026-01-29 14:10:19', 9, 'Mogullzr', '2026-01-29 14:10:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1065');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1065');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1065');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1066, '1997年考研数学卷1第11题', '简单', '考研数学1997年卷1真题', '计算$I = \\iiint_{Ω}(x^{2} + y^{2})dV$，其中$Ω$为平面曲线$\\begin{cases} y^{2} = 2z \\\\ x = 0 \\end{cases}$绕$z$轴旋转一周形成的曲面与平面$z = 8$所围成的区域．', '[]', '$\\frac{1024π}{3}$
', '
积分区域$Ω$是由曲线


$$
\\begin{cases} y^{2} = 2z \\\\ x = 0 \\end{cases}
$$

绕$z$-轴旋转所形成的曲面与平面$z = 8$所围成。旋转曲面的方程为


$$
x^{2} + y^{2} = 2z,
$$

即


$$
r^{2} = 2z,
$$

其中$r = \\sqrt{x^{2} + y^{2}}$。该曲面与平面$z = 8$相交于圆$r = 4$。
使用柱坐标计算积分：令


$$
x = r \\cos θ,  y = r \\sin θ,  z = z,
$$

则$x^{2} + y^{2} = r^{2}$，体积元素


$$
dV = r dr dθ dz.
$$

积分变为


$$
I = \\iiint_{Ω} r^{2} ⋅ r dr dθ dz = \\int_{0}^{2π} dθ \\int_{0}^{4} dr \\int_{z=\\frac{r^{2}}{2}}^{8} r^{3} dz.
$$

先对$z$积分：


$$
\\int_{\\frac{r^{2}}{2}}^{8} dz = 8 - \\frac{r^{2}}{2},
$$

因此


$$
I = \\int_{0}^{2π} dθ \\int_{0}^{4} r^{3} (8 - \\frac{r^{2}}{2}) dr = 2π \\int_{0}^{4} (8r^{3} - \\frac{1}{2}r^{5}) dr.
$$

计算对$r$的积分：


$$
\\int_{0}^{4} (8r^{3} - \\frac{1}{2}r^{5}) dr =  \\lbrack 2r^{4} - \\frac{r^{6}}{12} \\rbrack _{0}^{4} = 2 ⋅ 256 - \\frac{4096}{12} = 512 - \\frac{1024}{3} = \\frac{512}{3}.
$$

于是


$$
I = 2π ⋅ \\frac{512}{3} = \\frac{1024π}{3}.
$$

另一种方法：交换积分次序，以$z$为外层变量：


$$
I = \\int_{0}^{2π} dθ \\int_{0}^{8} dz \\int_{0}^{\\sqrt{2z}} r^{3} dr = 2π \\int_{0}^{8}  \\lbrack \\frac{r^{4}}{4} \\rbrack _{0}^{\\sqrt{2z}} dz = 2π \\int_{0}^{8} z^{2} dz = 2π ⋅ \\frac{512}{3} = \\frac{1024π}{3},
$$

结果一致。
', 9, 'Mogullzr', '2026-01-29 14:10:19', 9, 'Mogullzr', '2026-01-29 14:10:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1066');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1066');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1066');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1067, '1997年考研数学卷1第12题', '简单', '考研数学1997年卷1真题', '计算曲线积分$∮_{C}(z - y)dx + (x - z)dy + (x - y)dz$，其中$C$是曲线$\\begin{cases} x^{2} + y^{2} = 1 \\\\ x - y + z = 2 \\end{cases}$从$z$轴正向往$z$轴负向看，$C$的方向是顺时针的．', '[]', '$−2π$
', '曲线积分$∮_{C}(z - y) dx + (x - z) dy + (x - y) dz$，其中$C$是曲线$\\begin{cases} x^{2} + y^{2} = 1 \\\\ x - y + z = 2 \\end{cases}$，从$z$轴正向往负向看方向为顺时针。
使用斯托克斯定理，将曲线积分转化为曲面积分。设$F = (z - y, x - z, x - y)$，则旋度$∇ × F = (\\frac{∂R}{∂y} - \\frac{∂Q}{∂z}, \\frac{∂P}{∂z} - \\frac{∂R}{∂x}, \\frac{∂Q}{∂x} - \\frac{∂P}{∂y}) = (0, 0, 2)$。
选取曲面$S$为平面$x - y + z = 2$上满足$x^{2} + y^{2} ≤ 1$的部分，根据曲线方向（从$z$轴正向往负向看顺时针），曲面的法向量应指向$z$轴负方向。曲面$S$的参数化为$z = 2 - x + y$，向下法向量对应的$dS = (−1, 1, −1) dx dy$。
计算通量积分：

$$
\\iint_{S}(∇ × F) ⋅ dS = \\iint_{S}(0, 0, 2) ⋅ (−1, 1, −1) dx dy = \\iint_{S} −2 dx dy.
$$

投影区域$D$为$x^{2} + y^{2} ≤ 1$，面积为$π$，因此积分值为$−2 × π = −2π$。
也可直接参数化曲线验证：令$x = \\cos t$,$y = − \\sin t$,$z = 2 - \\cos t - \\sin t$，$t ∈  \\lbrack 0, 2π \\rbrack$，代入曲线积分计算得$−2π$，结果一致。
故曲线积分为$−2π$。
', 9, 'Mogullzr', '2026-01-29 14:10:19', 9, 'Mogullzr', '2026-01-29 14:10:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1067');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1067');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1067');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1068, '1997年考研数学卷1第13题', '简单', '考研数学1997年卷1真题', '在某一人群中推广新技术是通过其中已掌握新技术的人进行的．
设该人群的总人数为$N$，在$t = 0$时刻已掌握新技术的人数为$x_{0}$，
在任意时刻$t$已掌握新技术的人数为$x(t)$（将$x(t)$视为连续可微变量），
其变化率与已掌握新技术人数和未掌握新技术人数之积成正比，比例常数$k > 0$，求$x(t)$．', '[]', '

$$
x(t) = \\frac{N}{1 + (\\frac{N-x_{0}}{x_{0}}) e^{−Nkt}}
$$

', '根据题意，已掌握新技术人数$x(t)$的变化率与已掌握人数和未掌握人数之积成正比，即：

$$
\\frac{dx}{dt} = kx(N - x)
$$

其中$k > 0$为比例常数。这是一个可分离变量的微分方程。将方程改写为：

$$
\\frac{dx}{x(N - x)} = k dt
$$

对两边积分：

$$
∫ \\frac{1}{x(N - x)} dx = ∫ k dt
$$

左边积分通过部分分式分解：

$$
\\frac{1}{x(N - x)} = \\frac{1}{N} (\\frac{1}{x} + \\frac{1}{N - x})
$$

因此：

$$
\\frac{1}{N} ∫ (\\frac{1}{x} + \\frac{1}{N - x}) dx = k ∫ dt
$$

积分得：

$$
\\frac{1}{N} (\\ln x - \\ln(N - x)) = kt + C
$$

即：

$$
\\frac{1}{N} \\ln (\\frac{x}{N - x}) = kt + C
$$

代入初始条件$t = 0$时$x = x_{0}$：

$$
\\frac{1}{N} \\ln (\\frac{x_{0}}{N - x_{0}}) = C
$$

所以：

$$
\\frac{1}{N} \\ln (\\frac{x}{N - x}) = kt + \\frac{1}{N} \\ln (\\frac{x_{0}}{N - x_{0}})
$$

两边乘以$N$：

$$
\\ln (\\frac{x}{N - x}) = Nkt + \\ln (\\frac{x_{0}}{N - x_{0}})
$$

取指数：

$$
\\frac{x}{N - x} = \\frac{x_{0}}{N - x_{0}}e^{Nkt}
$$

解出$x$：

$$
x = \\frac{N}{1 + (\\frac{N-x_{0}}{x_{0}}) e^{−Nkt}}
$$

此即$x(t)$的表达式。
', 9, 'Mogullzr', '2026-01-29 14:10:19', 9, 'Mogullzr', '2026-01-29 14:10:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1068');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1068');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1068');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1069, '1997年考研数学卷1第14题', '简单', '考研数学1997年卷1真题', '设直线$L : \\begin{cases} x + y + b = 0 \\\\ x + ay - z - 3 = 0 \\end{cases}$在平面$Π$上，且平面$Π$与曲面$z = x^{2} + y^{2}$相切于点$(1, −2, 5)$，求$a, b$之值．', '[]', '
$a = −5$，$b = −2$
', '
曲面$z = x^{2} + y^{2}$在点$(1, −2, 5)$处的切平面方程为$z - 5 = 2(x - 1) - 4(y + 2)$，即$2x - 4y - z - 5 = 0$。
直线$L$由方程$x + y + b = 0$和$x + ay - z - 3 = 0$定义，且位于切平面上。因此，切平面方程可表示为这两个方程的线性组合：


$$
λ(x + y + b) + μ(x + ay - z - 3) = 2x - 4y - z - 5
$$

比较系数：
$x$系数：$λ + μ = 2$$y$系数：$λ + aμ = −4$$z$系数：$−μ = −1$，解得$μ = 1$
代入$μ = 1$：$λ + 1 = 2$，解得$λ = 1$$1 + a ⋅ 1 = −4$，解得$a = −5$常数项：$λb - 3μ = −5$，即$1 ⋅ b - 3 ⋅ 1 = −5$，解得$b = −2$
因此，$a = −5$，$b = −2$。
', 9, 'Mogullzr', '2026-01-29 14:10:19', 9, 'Mogullzr', '2026-01-29 14:10:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1069');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1069');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1069');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1070, '1997年考研数学卷1第15题', '简单', '考研数学1997年卷1真题', '设函数$f(u)$具有二阶连续导数，而$z = f(e^{x} \\sin y)$满足方程$\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}} = e^{2x}z$，求$f(u)$．', '[]', '
$f(u) = C_{1}e^{u} + C_{2}e^{−u}$，其中$C_{1}$和$C_{2}$为任意常数。
', '
设$u = e^{x} \\sin y$，则$z = f(u)$。计算一阶偏导数：


$$
\\frac{∂z}{∂x} = f^{′}(u)\\frac{∂u}{∂x} = f^{′}(u)e^{x} \\sin y = f^{′}(u)u,
$$



$$
\\frac{∂z}{∂y} = f^{′}(u)\\frac{∂u}{∂y} = f^{′}(u)e^{x} \\cos y.
$$

计算二阶偏导数：


$$
\\frac{∂^{2}z}{∂x^{2}} = \\frac{∂}{∂x} \\lbrack f^{′}(u)e^{x} \\sin y \\rbrack  = f^{′′}(u)(e^{x} \\sin y)2 + f^{′}(u)e^{x} \\sin y = f^{′′}(u)u^{2} + f^{′}(u)u,
$$



$$
\\frac{∂^{2}z}{∂y^{2}} = \\frac{∂}{∂y} \\lbrack f^{′}(u)e^{x} \\cos y \\rbrack  = f^{′′}(u)(e^{x} \\cos y)2 - f^{′}(u)e^{x} \\sin y = f^{′′}(u)e^{2x} \\cos^{2} y - f^{′}(u)u.
$$

将二阶偏导数相加：


$$
\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}} = f^{′′}(u)u^{2} + f^{′}(u)u + f^{′′}(u)e^{2x} \\cos^{2} y - f^{′}(u)u = f^{′′}(u)(u^{2} + e^{2x} \\cos^{2} y).
$$

代入$u^{2} = e^{2x} \\sin^{2} y$，得：


$$
u^{2} + e^{2x} \\cos^{2} y = e^{2x}(\\sin^{2} y + \\cos^{2} y) = e^{2x}.
$$

所以，


$$
\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}} = f^{′′}(u)e^{2x}.
$$

由给定方程$\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}} = e^{2x}z$和$z = f(u)$，得：


$$
f^{′′}(u)e^{2x} = e^{2x}f(u).
$$

除以$e^{2x}$（因$e^{2x} \\neq 0$），得：


$$
f^{′′}(u) = f(u).
$$

解此微分方程：
特征方程为$r^{2} - 1 = 0$，根为$r = ±1$，故通解为


$$
f(u) = C_{1}e^{u} + C_{2}e^{−u},
$$

其中$C_{1}$和$C_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:10:19', 9, 'Mogullzr', '2026-01-29 14:10:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1070');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1070');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1070');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1071, '1997年考研数学卷1第16题', '简单', '考研数学1997年卷1真题', '设$f(x)$连续，$φ(x) = \\int_{0}^{1} f(xt)dt$，且$\\lim_{x→0} \\frac{f(x)}{x} = A$（$A$为常数），求$φ^{′}(x)$并讨论$φ^{′}(x)$在$x = 0$处的连续性．', '[]', '$φ^{′}(x) = \\frac{1}{x}f(x) - \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du$（当$x \\neq 0$），且$φ^{′}(0) = \\frac{A}{2}$，$φ^{′}(x)$在$x = 0$处连续。
', '由$φ(x) = \\int_{0}^{1} f(xt) dt$，当$x \\neq 0$时，通过变量代换$u = xt$，得$φ(x) = \\frac{1}{x} \\int_{0}^{x} f(u) du$。对其求导，有


$$
φ^{′}(x) = \\frac{d}{dx} (\\frac{1}{x} \\int_{0}^{x} f(u) du) = −\\frac{1}{x^{2}} \\int_{0}^{x} f(u) du + \\frac{1}{x}f(x)
$$

当$x = 0$时，由导数定义：


$$
φ^{′}(0) = \\lim_{x→0} \\frac{φ(x) - φ(0)}{x} = \\lim_{x→0} \\frac{\\int_{0}^{1} f(xt) dt}{x}
$$

由变量代换$\\int_{0}^{1} f(xt) dt = \\frac{1}{x} \\int_{0}^{x} f(u) du$，得


$$
φ^{′}(0) = \\lim_{x→0} \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du = \\lim_{x→0} \\frac{f(x)}{2x} = \\frac{A}{2}
$$

其中最后一步使用了洛必达法则。
为讨论$φ^{′}(x)$在$x = 0$处的连续性，计算


$$
\\lim_{x→0} φ^{′}(x) = \\lim_{x→0} (\\frac{1}{x}f(x) - \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du) = A - \\frac{A}{2} = \\frac{A}{2} = φ^{′}(0)
$$

因此$φ^{′}(x)$在$x = 0$处连续。
', 9, 'Mogullzr', '2026-01-29 14:10:20', 9, 'Mogullzr', '2026-01-29 14:10:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1071');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1071');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1071');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1072, '1997年考研数学卷1第17题', '简单', '考研数学1997年卷1真题', '设$a_{1} = 2, a_{n+1} = \\frac{1}{2} (a_{n} + \\frac{1}{a_{n}}) , n = 1, 2, ⋯$，证明：(1)$\\lim_{n→∞} a_{n}$存在；(2) 级数$\\sum_{n=1}^{∞} (\\frac{a_{n}}{a_{n+1}} - 1)$收敛．', '[]', '
(1)$\\lim_{n→∞} a_{n}$存在且等于 1。
(2) 级数$\\sum_{n=1}^{∞} (\\frac{a_{n}}{a_{n+1}} - 1)$收敛。
', '
(1) 首先，由$a_{1} = 2 > 0$及递推关系$a_{n+1} = \\frac{1}{2} (a_{n} + \\frac{1}{a_{n}})$，通过数学归纳法可知所有$a_{n} > 0$。进一步，由算术-几何平均不等式，有$a_{n} + \\frac{1}{a_{n}} ≥ 2$，故$a_{n+1} ≥ 1$，即序列有下界。
考虑差值$a_{n+1} - a_{n} = \\frac{1}{2} (\\frac{1}{a_{n}} - a_{n}) = \\frac{1}{2} ⋅ \\frac{1-a_{n}^{2}}{a_{n}}$。由于$a_{n} ≥ 1$，有$1 - a_{n}^{2} ≤ 0$，故$a_{n+1} - a_{n} ≤ 0$，即序列单调递减。
单调递减有下界的序列必有极限，设$\\lim_{n→∞} a_{n} = L$。对递推公式取极限得$L = \\frac{1}{2} (L + \\frac{1}{L})$，解得$L^{2} = 1$。因$a_{n} ≥ 1$，故$L = 1$。因此$\\lim_{n→∞} a_{n} = 1$。
(2) 考虑级数$\\sum_{n=1}^{∞} (\\frac{a_{n}}{a_{n+1}} - 1)$。由递推关系，


$$
\\frac{a_{n}}{a_{n+1}} = \\frac{a_{n}}{\\frac{1}{2} (a_{n} + \\frac{1}{a_{n}})} = \\frac{2a_{n}}{a_{n} + \\frac{1}{a_{n}}} = \\frac{2a_{n}^{2}}{a_{n}^{2} + 1},
$$

故


$$
\\frac{a_{n}}{a_{n+1}} - 1 = \\frac{2a_{n}^{2}}{a_{n}^{2} + 1} - 1 = \\frac{a_{n}^{2} - 1}{a_{n}^{2} + 1}.
$$

令$b_{n} = \\frac{a_{n}^{2}-1}{a_{n}^{2}+1}$，需证$∑ b_{n}$收敛。
由$a_{n} → 1$，定义$c_{n} = a_{n} - 1$，则$c_{n} > 0$且$c_{n} → 0$。由递推关系，


$$
a_{n+1} - 1 = \\frac{1}{2} (a_{n} + \\frac{1}{a_{n}}) - 1 = \\frac{1}{2} ⋅ \\frac{(a_{n} - 1)2}{a_{n}},
$$

即


$$
c_{n+1} = \\frac{1}{2} ⋅ \\frac{c_{n}^{2}}{1 + c_{n}} ≤ \\frac{1}{2}c_{n}^{2},
$$

其中利用了$1 + c_{n} ≥ 1$。
通过数学归纳法可证$c_{n} ≤ \\frac{1}{2^{2^{n-1}-1}}$对于$n ≥ 1$成立：
当$n = 1$，$c_{1} = 1 = \\frac{1}{2^{0}}$；
假设$c_{n} ≤ \\frac{1}{2^{2^{n-1}-1}}$，则


$$
c_{n+1} ≤ \\frac{1}{2}c_{n}^{2} ≤ \\frac{1}{2} (\\frac{1}{2^{2^{n-1}-1}})^{2} = \\frac{1}{2^{2^{n}-1}} = \\frac{1}{2^{2^{(n+1)-1}-1}},
$$

故成立。因此$∑ c_{n}$收敛。
现在证明$b_{n} ≤ c_{n}$。考虑函数$f(x) = \\frac{x^{2}-1}{x^{2}+1} - (x - 1)$for$x ≥ 1$。
有$f(1) = 0$，且


$$
f^{′}(x) = \\frac{4x}{(x^{2} + 1)2} - 1.
$$

对于$x > 1$，有$(x^{2} + 1)2 ≥ 4$，故$\\frac{4x}{(x^{2}+1)2} ≤ x ≤ 1$（当$x > 1$时严格小于），所以$f^{′}(x) < 0$，即$f(x) ≤ 0$，因此$b_{n} ≤ c_{n}$。
由比较判别法，$∑ b_{n}$收敛，即级数$\\sum_{n=1}^{∞} (\\frac{a_{n}}{a_{n+1}} - 1)$收敛。
', 9, 'Mogullzr', '2026-01-29 14:10:20', 9, 'Mogullzr', '2026-01-29 14:10:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1072');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1072');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '1072');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1073, '1997年考研数学卷1第18题', '简单', '考研数学1997年卷1真题', '设$B$是秩为$2$的$5 × 4$矩阵，
$$
α_{1} = (1, 1, 2, 3)T, α_{2} = (−1, 1, 4, −1)T, α_{3} = (5, −1, −8, 9)T
$$
是齐次线性方程组$Bx = 0$的解向量，求$Bx = 0$的解空间的一个标准正交基．', '[]', '解空间的一个标准正交基为：

$$
e_{1} = \\frac{1}{\\sqrt{15}} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) ,  e_{2} = \\frac{1}{\\sqrt{39}} \\left( \\begin{array}{c}
−2 \\\\
1 \\\\
5 \\\\
−3 \\\\
\\end{array} \\right)
$$

', '已知$B$是秩为$2$的$5 × 4$矩阵，根据秩-零化度定理，解空间（零空间）的维数为$4 - 2 = 2$。给定解向量$α_{1}, α_{2}, α_{3}$，通过线性相关性检验发现$α_{3} = 2α_{1} - 3α_{2}$，因此$α_{1}$和$α_{2}$线性无关，构成解空间的一组基。
使用 Gram-Schmidt 正交化过程：
令$v_{1} = α_{1} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right)$。计算$⟨α_{2}, v_{1}⟩ = 5$和$⟨v_{1}, v_{1}⟩ = 15$，则$v_{2} = α_{2} - \\frac{5}{15}v_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
4 \\\\
−1 \\\\
\\end{array} \\right) - \\frac{1}{3} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−\\frac{4}{3} \\\\
\\frac{2}{3} \\\\
\\frac{10}{3} \\\\
−2 \\\\
\\end{array} \\right)$。
单位化：
$∥v_{1}∥ = \\sqrt{15}$，所以$e_{1} = \\frac{v_{1}}{∥v_{1}∥} = \\frac{1}{\\sqrt{15}} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right)$。$∥v_{2}∥ = \\sqrt{\\frac{52}{3}} = \\frac{2\\sqrt{39}}{3}$，所以$e_{2} = \\frac{v_{2}}{∥v_{2}∥} = \\frac{1}{\\sqrt{39}} \\left( \\begin{array}{c}
−2 \\\\
1 \\\\
5 \\\\
−3 \\\\
\\end{array} \\right)$.
验证内积$⟨e_{1}, e_{2}⟩ = 0$，故$e_{1}$和$e_{2}$标准正交。
', 9, 'Mogullzr', '2026-01-29 14:10:20', 9, 'Mogullzr', '2026-01-29 14:10:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1073');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1073');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1074, '1997年考研数学卷1第19题', '简单', '考研数学1997年卷1真题', '已知$ξ = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$是矩阵$A = \\left( \\begin{array}{ccc}
2 & −1 & 2 \\\\
5 & a & 3 \\\\
−1 & b & −2 \\\\
\\end{array} \\right)$的一个特征向量．(1) 试确定参数$a, b$及特征向量$ξ$所对应的特征值；(2) 问$A$能否相似于对角阵？说明理由．', '[]', '(1)$a = −3$，$b = 0$，特征值$λ = −1$。
(2)$A$不能相似于对角阵，因为特征值$λ = −1$的代数重数为 3，但几何重数为 1，几何重数小于代数重数。
', '(1) 由于$ξ$是$A$的特征向量，满足$Aξ = λξ$。计算$Aξ$：

$$
Aξ = \\left( \\begin{array}{ccc}
2 & −1 & 2 \\\\
5 & a & 3 \\\\
−1 & b & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
2 ⋅ 1 + (−1) ⋅ 1 + 2 ⋅ (−1) \\\\
5 ⋅ 1 + a ⋅ 1 + 3 ⋅ (−1) \\\\
−1 ⋅ 1 + b ⋅ 1 + (−2) ⋅ (−1) \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−1 \\\\
2 + a \\\\
1 + b \\\\
\\end{array} \\right)
$$

令其等于$λξ = λ \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
λ \\\\
λ \\\\
−λ \\\\
\\end{array} \\right)$，得方程组：

$$
\\begin{cases} −1 = λ \\\\ 2 + a = λ \\\\ 1 + b = −λ \\end{cases}
$$

解得$λ = −1$，代入第二式得$2 + a = −1$，即$a = −3$；代入第三式得$1 + b = 1$，即$b = 0$。
(2) 代入$a = −3$和$b = 0$，得矩阵：

$$
A = \\left( \\begin{array}{ccc}
2 & −1 & 2 \\\\
5 & −3 & 3 \\\\
−1 & 0 & −2 \\\\
\\end{array} \\right)
$$

求特征多项式：

$$
det(A - λI) = det \\left( \\begin{array}{ccc}
2 - λ & −1 & 2 \\\\
5 & −3 - λ & 3 \\\\
−1 & 0 & −2 - λ \\\\
\\end{array} \\right)
$$

计算得$det(A - λI) = −λ^{3} - 3λ^{2} - 3λ - 1 = −(λ + 1)3$，所以特征值为$λ = −1$（三重根），代数重数为 3。
计算几何重数，即解空间维数 of$A - (−1)I = A + I$：

$$
A + I = \\left( \\begin{array}{ccc}
3 & −1 & 2 \\\\
5 & −2 & 3 \\\\
−1 & 0 & −1 \\\\
\\end{array} \\right)
$$

行化简增广矩阵：

$$
\\left( \\begin{array}{cccc}
3 & −1 & 2 & 0 \\\\
5 & −2 & 3 & 0 \\\\
−1 & 0 & −1 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 1 & 0 \\\\
0 & 1 & 1 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

得方程$x_{1} + x_{3} = 0$，$x_{2} + x_{3} = 0$，解向量为$x_{3} \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，几何重数为 1。
由于几何重数小于代数重数，$A$不能相似于对角阵。
', 9, 'Mogullzr', '2026-01-29 14:10:20', 9, 'Mogullzr', '2026-01-29 14:10:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1074');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1074');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1075, '1997年考研数学卷1第20题', '简单', '考研数学1997年卷1真题', '设$A$是$n$阶可逆方阵，将$A$的第$i$行和第$j$行对换后得到的矩阵记为$B$．(1) 证明$B$可逆；(2) 求$AB^{−1}$．', '[]', '
(1)$B$可逆。
(2)$AB^{−1} = E$，其中$E$是对换第$i$行和第$j$行的初等矩阵。
', '
(1) 由于$A$可逆，且$B$是通过对换$A$的第$i$行和第$j$行得到的矩阵，这一操作等价于左乘一个对换两行的初等矩阵$E$，即$B = EA$。初等矩阵$E$可逆，且$E^{−1} = E$。因此$B$是可逆矩阵的乘积，故$B$可逆。
(2) 由$B = EA$可得$B^{−1} = A^{−1}E^{−1} = A^{−1}E$。于是$AB^{−1} = A(A^{−1}E) = (AA^{−1})E = IE = E$，即$AB^{−1}$等于对换第$i$行和第$j$行的初等矩阵$E$。
', 9, 'Mogullzr', '2026-01-29 14:10:21', 9, 'Mogullzr', '2026-01-29 14:10:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1075');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1075');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1075');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1076, '1997年考研数学卷1第21题', '简单', '考研数学1997年卷1真题', '从学校乘汽车到火车站的途中有$3$个交通岗，假设在各个交通岗遇到红灯的事件是相互独立的，
并且概率都是$\\frac{2}{5}$．设$X$为途中遇到红灯的次数，求随机变量$X$的分布律、分布函数和数学期望．', '[]', '
随机变量$X$的分布律为：


$$
P(X = 0) = \\frac{27}{125},  P(X = 1) = \\frac{54}{125},  P(X = 2) = \\frac{36}{125},  P(X = 3) = \\frac{8}{125}
$$

分布函数为：


$$
F(x) = \\begin{cases} 0 & x < 0 \\\\ \\frac{27}{125} & 0 ≤ x < 1 \\\\ \\frac{81}{125} & 1 ≤ x < 2 \\\\ \\frac{117}{125} & 2 ≤ x < 3 \\\\ 1 & x ≥ 3 \\end{cases}
$$

数学期望为：


$$
E \\lbrack X \\rbrack  = \\frac{6}{5}
$$

', '
由于有 3 个交通岗，每个交通岗遇到红灯的事件相互独立，且概率均为$\\frac{2}{5}$，因此$X$服从二项分布$B(3, \\frac{2}{5})$。
分布律由二项分布公式$P(X = k) = (\\frac{3}{k}) (\\frac{2}{5})^{k} (\\frac{3}{5})^{3-k}$计算可得：
$P(X = 0) = (\\frac{3}{0}) (\\frac{2}{5})^{0} (\\frac{3}{5})^{3} = \\frac{27}{125}$$P(X = 1) = (\\frac{3}{1}) (\\frac{2}{5})^{1} (\\frac{3}{5})^{2} = \\frac{54}{125}$$P(X = 2) = (\\frac{3}{2}) (\\frac{2}{5})^{2} (\\frac{3}{5})^{1} = \\frac{36}{125}$$P(X = 3) = (\\frac{3}{3}) (\\frac{2}{5})^{3} (\\frac{3}{5})^{0} = \\frac{8}{125}$
分布函数$F(x) = P(X ≤ x)$是累积概率，根据$x$的取值范围分段定义：当$x < 0$时，$F(x) = 0$当$0 ≤ x < 1$时，$F(x) = P(X = 0) = \\frac{27}{125}$当$1 ≤ x < 2$时，$F(x) = P(X = 0) + P(X = 1) = \\frac{81}{125}$当$2 ≤ x < 3$时，$F(x) = P(X = 0) + P(X = 1) + P(X = 2) = \\frac{117}{125}$当$x ≥ 3$时，$F(x) = 1$
数学期望对于二项分布有$E \\lbrack X \\rbrack  = np = 3 × \\frac{2}{5} = \\frac{6}{5}$，也可直接计算：
$E \\lbrack X \\rbrack  = \\sum_{k=0}^{3} kP(X = k) = 0 × \\frac{27}{125} + 1 × \\frac{54}{125} + 2 × \\frac{36}{125} + 3 × \\frac{8}{125} = \\frac{54}{125} + \\frac{72}{125} + \\frac{24}{125} = \\frac{150}{125} = \\frac{6}{5}$
', 9, 'Mogullzr', '2026-01-29 14:10:21', 9, 'Mogullzr', '2026-01-29 14:10:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1076');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1076');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1077, '1997年考研数学卷1第22题', '简单', '考研数学1997年卷1真题', '设总体$X$的概率密度为
$$
f(x) = \\begin{cases} (θ + 1)x^{θ} & 0 < x < 1 \\\\ 0 & 其它 \\end{cases}
$$
其中$θ > −1$是未知参数．$x_{1}, x_{2}, ⋯  , x_{n}$是来自总体$X$的一个容量为$n$的简单随机样本，
分别用矩估计法和最大似然估计法求$θ$的估计量．', '[]', '矩估计法得到的估计量为：

$$
\\hat{θ}_{M} = \\frac{2\\bar{x} - 1}{1 - \\bar{x}}
$$

其中$\\bar{x} = \\frac{1}{n} \\sum_{i=1}^{n} x_{i}$。
最大似然估计法得到的估计量为：

$$
\\hat{θ}_{MLE} = −1 - \\frac{n}{\\sum_{i=1}^{n} \\ln x_{i}}
$$

', '对于矩估计法，首先计算总体均值$E \\lbrack X \\rbrack$。由于概率密度函数为$f(x) = (θ + 1)x^{θ}$在区间$(0, 1)$上，有：

$$
E \\lbrack X \\rbrack  = \\int_{0}^{1} x ⋅ (θ + 1)x^{θ} dx = (θ + 1) \\int_{0}^{1} x^{θ+1} dx = (θ + 1)  \\lbrack \\frac{x^{θ+2}}{θ + 2} \\rbrack _{0}^{1} = \\frac{θ + 1}{θ + 2}
$$

设总体均值等于样本均值$\\bar{x}$，即：

$$
\\frac{θ + 1}{θ + 2} = \\bar{x}
$$

解此方程求$θ$：

$$
θ + 1 = \\bar{x}(θ + 2)
$$



$$
θ + 1 = \\bar{x}θ + 2\\bar{x}
$$



$$
θ - \\bar{x}θ = 2\\bar{x} - 1
$$



$$
θ(1 - \\bar{x}) = 2\\bar{x} - 1
$$



$$
θ = \\frac{2\\bar{x} - 1}{1 - \\bar{x}}
$$

因此，矩估计量为$\\hat{θ}_{M} = \\frac{2\\bar{x}-1}{1-\\bar{x}}$。
对于最大似然估计法，似然函数为：

$$
L(θ) = \\prod_{i=1}^{n} f(x_{i}) = \\prod_{i=1}^{n}(θ + 1)x_{i}^{θ} = (θ + 1)n \\prod_{i=1}^{n} x_{i}^{θ}
$$

取对数似然函数：

$$
l(θ) = \\ln L(θ) = n \\ln(θ + 1) + θ \\sum_{i=1}^{n} \\ln x_{i}
$$

对$θ$求导并令导数为零：

$$
\\frac{∂l}{∂θ} = \\frac{n}{θ + 1} + \\sum_{i=1}^{n} \\ln x_{i} = 0
$$

解得：

$$
\\frac{n}{θ + 1} = − \\sum_{i=1}^{n} \\ln x_{i}
$$



$$
θ + 1 = −\\frac{n}{\\sum_{i=1}^{n} \\ln x_{i}}
$$



$$
θ = −1 - \\frac{n}{\\sum_{i=1}^{n} \\ln x_{i}}
$$

二阶导数为$\\frac{∂^{2}l}{∂θ^{2}} = −\\frac{n}{(θ+1)2} < 0$，故为最大值。因此，最大似然估计量为$\\hat{θ}_{MLE} = −1 - \\frac{n}{\\sum_{i=1}^{n} \\ln x_{i}}$。
', 9, 'Mogullzr', '2026-01-29 14:10:21', 9, 'Mogullzr', '2026-01-29 14:10:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1077');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1077');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1077');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1078, '1997年考研数学卷2第1题', '简单', '考研数学1997年卷2真题', '已知$f(x) = \\begin{cases} (\\cos x)x−2 & x \\neq 0 \\\\ a & x = 0 \\end{cases}$在$x = 0$处连续，则$a =$______．', '[]', '
$e^{−\\frac{1}{2}}$
', '
函数在$x = 0$处连续，因此需要满足$\\lim_{x→0} f(x) = f(0) = a$。
计算极限$\\lim_{x→0}(\\cos x)x−2$。
这是一个$1^{∞}$型不定式，取自然对数：
设$L = \\lim_{x→0}(\\cos x)x−2$，则


$$
\\ln L = \\lim_{x→0} \\ln ((\\cos x)x−2) = \\lim_{x→0} \\frac{\\ln(\\cos x)}{x^{2}}
$$

当$x → 0$时，该极限为$\\frac{0}{0}$型，应用洛必达法则：
分子导数为$\\frac{1}{\\cos x} ⋅ (− \\sin x) = − \\tan x$，分母导数为$2x$，
因此


$$
\\lim_{x→0} \\frac{\\ln(\\cos x)}{x^{2}} = \\lim_{x→0} \\frac{− \\tan x}{2x} = \\lim_{x→0} \\frac{− \\sin x}{2x \\cos x}
$$

利用$\\lim_{x→0} \\frac{\\sin x}{x} = 1$和$\\cos x → 1$，得


$$
\\lim_{x→0} \\frac{− \\sin x}{2x \\cos x} = \\frac{−1}{2}
$$

所以$\\ln L = −\\frac{1}{2}$，即$L = e^{−\\frac{1}{2}}$。
因此，$a = e^{−\\frac{1}{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:10:23', 9, 'Mogullzr', '2026-01-29 14:10:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1078');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1078');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1078');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1079, '1997年考研数学卷2第2题', '简单', '考研数学1997年卷2真题', '设$y = \\ln \\sqrt{\\frac{1-x}{1+x^{2}}}$，则$y^{′′}​_{x=0} =$______．', '[]', '$−\\frac{3}{2}$
', '给定函数$y = \\ln \\sqrt{\\frac{1-x}{1+x^{2}}}$，首先化简为：

$$
y = \\frac{1}{2}  \\lbrack \\ln(1 - x) - \\ln(1 + x^{2}) \\rbrack
$$

求一阶导数：

$$
y^{′} = \\frac{1}{2}  \\lbrack \\frac{−1}{1 - x} - \\frac{2x}{1 + x^{2}} \\rbrack  = \\frac{1}{2} (−\\frac{1}{1 - x} - \\frac{2x}{1 + x^{2}})
$$

求二阶导数：

$$
y^{′′} = \\frac{1}{2}\\frac{d}{dx} (−\\frac{1}{1 - x} - \\frac{2x}{1 + x^{2}})
$$

计算各部分导数：

$$
\\frac{d}{dx} (−\\frac{1}{1 - x}) = −\\frac{1}{(1 - x)2},  \\frac{d}{dx} (−\\frac{2x}{1 + x^{2}}) = \\frac{2(x^{2} - 1)}{(1 + x^{2})2}
$$

所以：

$$
y^{′′} = \\frac{1}{2}  \\lbrack −\\frac{1}{(1 - x)2} + \\frac{2(x^{2} - 1)}{(1 + x^{2})2} \\rbrack
$$

代入$x = 0$：

$$
y^{′′}(0) = \\frac{1}{2}  \\lbrack −\\frac{1}{(1 - 0)2} + \\frac{2(0 - 1)}{(1 + 0)2} \\rbrack  = \\frac{1}{2}  \\lbrack −1 + (−2) \\rbrack  = \\frac{1}{2} × (−3) = −\\frac{3}{2}
$$

因此，$y^{′′}∣_{x=0} = −\\frac{3}{2}$.
', 9, 'Mogullzr', '2026-01-29 14:10:24', 9, 'Mogullzr', '2026-01-29 14:10:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1079');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1079');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1079');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1080, '1997年考研数学卷2第3题', '简单', '考研数学1997年卷2真题', '$\\int \\frac{dx}{\\sqrt{x(4-x)}} =$______．', '[]', '
$arcsin (\\frac{x-2}{2}) + C$
', '
首先，将分母中的表达式进行变换：
$x(4 - x) = 4x - x^{2} = −(x^{2} - 4x) = − \\lbrack (x - 2)2 - 4 \\rbrack  = 4 - (x - 2)2$。
因此，积分变为：


$$
∫ \\frac{dx}{\\sqrt{x(4 - x)}} = ∫ \\frac{dx}{\\sqrt{4 - (x - 2)2}}
$$

令$u = x - 2$，则$du = dx$，积分化为：


$$
∫ \\frac{du}{\\sqrt{4 - u^{2}}} = arcsin (\\frac{u}{2}) + C = arcsin (\\frac{x - 2}{2}) + C
$$

这里利用了标准积分公式$∫ \\frac{du}{\\sqrt{a^{2}-u^{2}}} = arcsin (\\frac{u}{a}) + C$，其中$a = 2$。
', 9, 'Mogullzr', '2026-01-29 14:10:24', 9, 'Mogullzr', '2026-01-29 14:10:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1080');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1080');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1080');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1081, '1997年考研数学卷2第4题', '简单', '考研数学1997年卷2真题', '$\\int_{0}^{+∞} \\frac{dx}{x^{2}+4x+8} =$______．', '[]', '
$\\frac{π}{8}$
', '
首先，对分母完成平方：
$x^{2} + 4x + 8 = (x^{2} + 4x + 4) + 4 = (x + 2)2 + 4$。
于是积分化为：


$$
\\int_{0}^{+∞} \\frac{dx}{(x + 2)2 + 4}
$$

利用积分公式$∫ \\frac{dx}{a^{2}+u^{2}} = \\frac{1}{a} arctan (\\frac{u}{a}) + C$，其中$u = x + 2$，$a = 2$，得：


$$
∫ \\frac{dx}{(x + 2)2 + 4} = \\frac{1}{2} arctan (\\frac{x + 2}{2}) + C
$$

计算定积分：


$$
\\lim_{b→∞}  \\lbrack \\frac{1}{2} arctan (\\frac{b + 2}{2}) - \\frac{1}{2} arctan (\\frac{0 + 2}{2}) \\rbrack
$$

当$b → ∞$，$\\frac{b+2}{2} → ∞$，$arctan (\\frac{b+2}{2}) → \\frac{π}{2}$，故第一项为$\\frac{1}{2} ⋅ \\frac{π}{2} = \\frac{π}{4}$。
第二项：$\\frac{1}{2} arctan(1) = \\frac{1}{2} ⋅ \\frac{π}{4} = \\frac{π}{8}$。
因此，积分值为：


$$
\\frac{π}{4} - \\frac{π}{8} = \\frac{π}{8}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:24', 9, 'Mogullzr', '2026-01-29 14:10:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1081');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1081');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1081');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1082, '1997年考研数学卷2第5题', '简单', '考研数学1997年卷2真题', '已知向量组$α_{1} = (1, 2, −1, 1)$,$α_{,2} = (2, 0, t, 0)$,$α_{3} = (0, −4, 5, −2)$的秩为$2$，则$t =$______．', '[]', '
3
', '
已知向量组$α_{1} = (1, 2, −1, 1)$,$α_{2} = (2, 0, t, 0)$,$α_{3} = (0, −4, 5, −2)$的秩为 2。构造矩阵$A = \\left( \\begin{array}{cccc}
1 & 2 & −1 & 1 \\\\
2 & 0 & t & 0 \\\\
0 & −4 & 5 & −2 \\\\
\\end{array} \\right)$并进行行化简：
首先，第二行减去 2 倍第一行：$R2 ← R2 - 2R1$，得到$\\left( \\begin{array}{cccc}
1 & 2 & −1 & 1 \\\\
0 & −4 & t + 2 & −2 \\\\
0 & −4 & 5 & −2 \\\\
\\end{array} \\right)$。
然后，第三行减去第二行：$R3 ← R3 - R2$，得到$\\left( \\begin{array}{cccc}
1 & 2 & −1 & 1 \\\\
0 & −4 & t + 2 & −2 \\\\
0 & 0 & 3 - t & 0 \\\\
\\end{array} \\right)$。
该矩阵为行阶梯形，秩由非零行数决定。当$3 - t = 0$时，第三行为零行，秩为 2；否则秩为 3。给定秩为 2，因此$3 - t = 0$，即$t = 3$。
验证：当$t = 3$时，$α_{3} = −2α_{1} + α_{2}$，向量组线性相关，秩为 2，符合条件。
', 9, 'Mogullzr', '2026-01-29 14:10:24', 9, 'Mogullzr', '2026-01-29 14:10:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1082');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1082');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1082');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1083, '1997年考研数学卷2第6题', '简单', '考研数学1997年卷2真题', '设$x → 0$时，$e^{\\tan x} - e^{x}$与$x^{n}$是同阶无穷小，则$n$为', '[''$1$．'', ''$2$．'', ''$3$．'', ''$4$．'']', "['C']", '
当$x → 0$时，$e^{\\tan x} - e^{x}$与$x^{n}$是同阶无穷小。通过泰勒展开分析：
首先，
$$
e^{\\tan x} - e^{x} = e^{x}(e^{\\tan x-x} - 1).
$$
由于$e^{x} → 1$，只需考虑$e^{\\tan x-x} - 1$。
已知
$$
\\tan x - x = \\frac{x^{3}}{3} + O(x^{5}),
$$
因此
$$
e^{\\tan x-x} - 1 = \\frac{x^{3}}{3} + O(x^{5}).
$$
于是
$$
e^{\\tan x} - e^{x} ∼ \\frac{x^{3}}{3},
$$
即与$x^{3}$同阶，故$n = 3$。或者使用拉格朗日中值定理：
设$f(u) = e^{u}$，则
$$
e^{\\tan x} - e^{x} = f^{′}(ξ)(\\tan x - x),
$$
其中$ξ$介于$x$与$\\tan x$之间。
当$x → 0$时，$f^{′}(ξ) = e^{ξ} → 1$，且$\\tan x - x ∼ \\frac{x^{3}}{3}$，
因此同样得到$n = 3$。', 9, 'Mogullzr', '2026-01-29 14:10:24', 9, 'Mogullzr', '2026-01-29 14:10:24', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1083');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1083');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1083');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1084, '1997年考研数学卷2第7题', '', '考研数学1997年卷2真题', '/problems/other/1062', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:24', 9, 'Mogullzr', '2026-01-29 14:10:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1085, '1997年考研数学卷2第8题', '简单', '考研数学1997年卷2真题', '已知函数$y = f(x)$对一切$x$满足$xf^{′′}(x) + 3x \\lbrack f^{′}(x) \\rbrack 2 = 1 - e^{−x}$，
若$f^{′}(x_{0}) = 0$（$x_{0} \\neq 0$），则', '[''$f(x_{0})$是$f(x)$的极大值．'', ''$f(x_{0})$是$f(x)$的极小值．'', ''$(x_{0}, f(x_{0}))$是曲线$y = f(x)$的拐点．'', ''$f(x_{0})$不是$f(x)$的极小值，$(x_{0}, f(x_{0}))$也不是曲线$y = f(x)$的拐点．'']', "['B']", '
已知在$x_{0} \\neq 0$处$f^{′}(x_{0}) = 0$，代入微分方程

$$
xf^{′′}(x) + 3x \\lbrack f^{′}(x) \\rbrack 2 = 1 - e^{−x},
$$
得

$$
x_{0}f^{′′}(x_{0}) = 1 - e^{−x_{0}}.
$$
因此

$$
f^{′′}(x_{0}) = \\frac{1 - e^{−x_{0}}}{x_{0}}.
$$
分析该表达式：当$x_{0} > 0$时，$1 - e^{−x_{0}} > 0$，故$f^{′′}(x_{0}) > 0$；当$x_{0} < 0$时，$1 - e^{−x_{0}} < 0$，但分母$x_{0} < 0$，故$f^{′′}(x_{0}) > 0$。因此，对于任意$x_{0} \\neq 0$，有$f^{′′}(x_{0}) > 0$，即$f(x_{0})$是极小值。
选项 A、C、D 均不正确。', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1085');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1085');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1085');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1086, '1997年考研数学卷2第9题', '', '考研数学1997年卷2真题', '/problems/other/1063', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1087, '1997年考研数学卷2第10题', '简单', '考研数学1997年卷2真题', '设$g(x) = \\begin{cases} 2 - x & x ≤ 0 \\\\ x + 2 & x > 0 \\end{cases}$,$f(x) = \\begin{cases} x^{2} & x < 0 \\\\ −x & x ≥ 0 \\end{cases}$，则$g \\lbrack f(x) \\rbrack$为', '[''$\\\\begin{cases} 2 + x^{2} & x < 0 \\\\\\\\ 2 - x & x ≥ 0. \\\\end{cases}$'', ''$\\\\begin{cases} 2 - x^{2} & x < 0 \\\\\\\\ 2 + x & x ≥ 0. \\\\end{cases}$'', ''$\\\\begin{cases} 2 - x^{2} & x < 0 \\\\\\\\ 2 - x & x ≥ 0. \\\\end{cases}$'', ''$\\\\begin{cases} 2 + x^{2} & x < 0 \\\\\\\\ 2 + x & x ≥ 0. \\\\end{cases}$'']', "['D']", '
为了求$g \\lbrack f(x) \\rbrack$，需要根据$f(x)$的值代入$g(x)$的分段表达式。
$$
g \\lbrack f(x) \\rbrack  = g(x^{2}) = x^{2} + 2 = 2 + x^{2}
$$
因此，
$$
g \\lbrack f(x) \\rbrack  = \\begin{cases} 2 + x^{2} & x < 0 \\\\ 2 + x & x ≥ 0 \\end{cases}
$$
对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1087');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1087');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1087');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1088, '1997年考研数学卷2第11题', '简单', '考研数学1997年卷2真题', '求极限$\\lim_{x→−∞} \\frac{\\sqrt{4x^{2}+x-1}+x+1}{\\sqrt{x^{2}+\\sin x}}$．', '[]', '1
', '考虑极限$\\lim_{x→−∞} \\frac{\\sqrt{4x^{2}+x-1}+x+1}{\\sqrt{x^{2}+\\sin x}}$。
当$x → −∞$时，对分子和分母进行渐近分析。
分子中，$\\sqrt{4x^{2} + x - 1} ∼ \\sqrt{4x^{2}} = 2∣x∣ = −2x$（因为$x < 0$），所以分子$∼ −2x + x + 1 = −x + 1 ∼ −x$。
分母中，$\\sqrt{x^{2} + \\sin x} ∼ \\sqrt{x^{2}} = ∣x∣ = −x$。
因此，原式$∼ \\frac{−x}{−x} = 1$，故极限为 1。
或者，通过变量代换$t = −x$，则当$x → −∞$时$t → +∞$，原式化为


$$
\\lim_{t→+∞} \\frac{\\sqrt{4t^{2} - t - 1} - t + 1}{\\sqrt{t^{2} - \\sin t}}
$$

分子除以$t$得$\\frac{\\sqrt{4t^{2}-t-1}}{t} - 1 + \\frac{1}{t} = \\sqrt{4 - \\frac{1}{t} - \\frac{1}{t^{2}}} - 1 + \\frac{1}{t} → 2 - 1 + 0 = 1$，
分母除以$t$得$\\frac{\\sqrt{t^{2}-\\sin t}}{t} = \\sqrt{1 - \\frac{\\sin t}{t^{2}}} → 1$，
因此比值为 1。
两种方法均得极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1088');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1088');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1088');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1089, '1997年考研数学卷2第12题', '简单', '考研数学1997年卷2真题', '设$y = y(x)$由$\\begin{cases} x = arctan t \\\\ 2y - ty^{2} + e^{t} = 5 \\end{cases}$所确定，求$\\frac{dy}{dx}$．', '[]', '

$$
\\frac{dy}{dx} = \\frac{(1 + t^{2})(y^{2} - e^{t})}{2(1 - ty)}
$$

', '给定参数方程$x = arctan t$和隐式方程$2y - ty^{2} + e^{t} = 5$，其中$y$是$x$的函数。
首先，求$\\frac{dx}{dt}$:


$$
x = arctan t  ⟹  \\frac{dx}{dt} = \\frac{1}{1 + t^{2}}
$$

其次，求$\\frac{dy}{dt}$。对隐式方程$2y - ty^{2} + e^{t} = 5$两边关于$t$求导：


$$
2\\frac{dy}{dt} - (y^{2} + 2ty\\frac{dy}{dt}) + e^{t} = 0
$$

整理得：


$$
2\\frac{dy}{dt} - 2ty\\frac{dy}{dt} = y^{2} - e^{t}
$$



$$
\\frac{dy}{dt}(2 - 2ty) = y^{2} - e^{t}
$$



$$
\\frac{dy}{dt} = \\frac{y^{2} - e^{t}}{2(1 - ty)}
$$

然后，利用参数求导公式：


$$
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{\\frac{y^{2}-e^{t}}{2(1-ty)}}{\\frac{1}{1+t^{2}}} = \\frac{(1 + t^{2})(y^{2} - e^{t})}{2(1 - ty)}
$$

因此，得到最终结果。
', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1089');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1089');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1089');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1090, '1997年考研数学卷2第13题', '简单', '考研数学1997年卷2真题', '计算$∫ e^{2x}(\\tan x + 1)2dx$．', '[]', '

$$
e^{2x} \\tan x + C
$$

', '首先，展开被积函数：$(\\tan x + 1)2 = \\tan^{2} x + 2 \\tan x + 1$。于是积分变为：

$$
∫ e^{2x}(\\tan^{2} x + 2 \\tan x + 1) dx
$$

利用恒等式$\\tan^{2} x = sec^{2} x - 1$，代入得：

$$
∫ e^{2x}((sec^{2} x - 1) + 2 \\tan x + 1) dx = ∫ e^{2x}(sec^{2} x + 2 \\tan x) dx
$$

现在，考虑函数$e^{2x} \\tan x$，对其求导：

$$
\\frac{d}{dx}(e^{2x} \\tan x) = e^{2x} sec^{2} x + \\tan x ⋅ 2e^{2x} = e^{2x}(sec^{2} x + 2 \\tan x)
$$

这正是被积函数。因此，

$$
∫ e^{2x}(sec^{2} x + 2 \\tan x) dx = e^{2x} \\tan x + C
$$

其中$C$为积分常数。故原积分为：

$$
∫ e^{2x}(\\tan x + 1)2 dx = e^{2x} \\tan x + C
$$

', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1090');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1090');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1090');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1091, '1997年考研数学卷2第14题', '简单', '考研数学1997年卷2真题', '求微分方程$(3x^{2} + 2xy - y^{2}) dx + (x^{2} - 2xy) dy = 0$的通解．', '[]', '
$x^{3} + x^{2}y - xy^{2} = C​$
', '
给定微分方程


$$
(3x^{2} + 2xy - y^{2}) dx + (x^{2} - 2xy) dy = 0,
$$

设$M = 3x^{2} + 2xy - y^{2}$，$N = x^{2} - 2xy$。
计算偏导数：


$$
\\frac{∂M}{∂y} = 2x - 2y,  \\frac{∂N}{∂x} = 2x - 2y,
$$

由于$\\frac{∂M}{∂y} = \\frac{∂N}{∂x}$，该方程为恰当微分方程。
存在函数$F(x, y)$满足


$$
\\frac{∂F}{∂x} = M,  \\frac{∂F}{∂y} = N.
$$

对$M$关于$x$积分：


$$
F(x, y) = ∫(3x^{2} + 2xy - y^{2}) dx = x^{3} + x^{2}y - xy^{2} + g(y),
$$

其中$g(y)$为仅与$y$有关的函数。
再对$F$关于$y$求偏导：


$$
\\frac{∂F}{∂y} = x^{2} - 2xy + g^{′}(y).
$$

令其等于$N = x^{2} - 2xy$，得


$$
x^{2} - 2xy + g^{′}(y) = x^{2} - 2xy  ⇒  g^{′}(y) = 0,
$$

所以$g(y) = C_{1}$（常数）。
因此，


$$
F(x, y) = x^{3} + x^{2}y - xy^{2} + C_{1}.
$$

原方程的通解为$F(x, y) = C_{2}$，即


$$
x^{3} + x^{2}y - xy^{2} = C,
$$

其中$C = C_{2} - C_{1}$为任意常数。
故通解为


$$
x^{3} + x^{2}y - xy^{2} = C.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:25', 9, 'Mogullzr', '2026-01-29 14:10:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1091');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1091');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1091');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1092, '1997年考研数学卷2第15题', '简单', '考研数学1997年卷2真题', '已知$y_{1} = xe^{x} + e^{2x}$,$y_{2} = xe^{x} + e^{−x}$,$y_{3} = xe^{x} + e^{2x} - e^{−x}$是某二阶线性非齐次微分方程的三个解，求此微分方程．', '[]', '$y^{′′} - y^{′} - 2y = e^{x}(1 - 2x)$
', '给定三个解$y_{1} = xe^{x} + e^{2x}$,$y_{2} = xe^{x} + e^{−x}$,$y_{3} = xe^{x} + e^{2x} - e^{−x}$，它们都是某二阶线性非齐次微分方程的解。由于线性非齐次微分方程的解的差是对应齐次方程的解，计算可得：
$y_{1} - y_{2} = e^{2x} - e^{−x}$是齐次解，$y_{1} - y_{3} = e^{−x}$是齐次解，$y_{3} - y_{2} = e^{2x}$是齐次解。
因此，齐次方程的通解包含$e^{2x}$和$e^{−x}$，对应特征根$r = 2$和$r = −1$，特征方程为$r^{2} - r - 2 = 0$，故齐次方程为$y^{′′} - y^{′} - 2y = 0$。
非齐次方程的特解为$y_{p} = xe^{x}$，代入齐次方程验证：计算$y_{p}^{′} = e^{x}(1 + x)$,$y_{p}^{′′} = e^{x}(2 + x)$，代入左边得$y_{p}^{′′} - y_{p}^{′} - 2y_{p} = e^{x}(2 + x) - e^{x}(1 + x) - 2xe^{x} = e^{x}(1 - 2x)$，因此非齐次项为$f(x) = e^{x}(1 - 2x)$。
故所求微分方程为$y^{′′} - y^{′} - 2y = e^{x}(1 - 2x)$。
', 9, 'Mogullzr', '2026-01-29 14:10:26', 9, 'Mogullzr', '2026-01-29 14:10:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1092');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1092');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1092');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1093, '1997年考研数学卷2第16题', '简单', '考研数学1997年卷2真题', '已知$A = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$，且$A^{2} - AB = E$，其中$E$是三阶单位矩阵，求矩阵$B$．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
0 & 2 & 1 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

', '已知$A = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$且$A^{2} - AB = E$，其中$E$是三阶单位矩阵。
由$A^{2} - AB = E$可得$A(A - B) = E$，因此$A - B = A^{−1}$，即$B = A - A^{−1}$。
计算$A$的逆矩阵$A^{−1}$：
通过行变换求逆，增广矩阵为


$$
\\left( \\begin{array}{ccc|ccc}
1 & 1 & −1 & 1 & 0 & 0 \\\\
0 & 1 & 1 & 0 & 1 & 0 \\\\
0 & 0 & −1 & 0 & 0 & 1 \\\\
\\end{array} \\right)
$$

将第三行乘以$−1$得


$$
\\left( \\begin{array}{ccc|ccc}
1 & 1 & −1 & 1 & 0 & 0 \\\\
0 & 1 & 1 & 0 & 1 & 0 \\\\
0 & 0 & 1 & 0 & 0 & −1 \\\\
\\end{array} \\right)
$$

第二行减去第三行得


$$
\\left( \\begin{array}{ccc|ccc}
1 & 1 & −1 & 1 & 0 & 0 \\\\
0 & 1 & 0 & 0 & 1 & 1 \\\\
0 & 0 & 1 & 0 & 0 & −1 \\\\
\\end{array} \\right)
$$

第一行加上第三行得


$$
\\left( \\begin{array}{ccc|ccc}
1 & 1 & 0 & 1 & 0 & −1 \\\\
0 & 1 & 0 & 0 & 1 & 1 \\\\
0 & 0 & 1 & 0 & 0 & −1 \\\\
\\end{array} \\right)
$$

第一行减去第二行得


$$
\\left( \\begin{array}{ccc|ccc}
1 & 0 & 0 & 1 & −1 & −2 \\\\
0 & 1 & 0 & 0 & 1 & 1 \\\\
0 & 0 & 1 & 0 & 0 & −1 \\\\
\\end{array} \\right)
$$

所以$A^{−1} = \\left( \\begin{array}{ccc}
1 & −1 & −2 \\\\
0 & 1 & 1 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$。
则$B = A - A^{−1} = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right) - \\left( \\begin{array}{ccc}
1 & −1 & −2 \\\\
0 & 1 & 1 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
0 & 2 & 1 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$。
验证：计算$A^{2} = \\left( \\begin{array}{ccc}
1 & 2 & 1 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，$AB = \\left( \\begin{array}{ccc}
0 & 2 & 1 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，则$A^{2} - AB = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = E$，满足原方程。
', 9, 'Mogullzr', '2026-01-29 14:10:26', 9, 'Mogullzr', '2026-01-29 14:10:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1093');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1093');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1093');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1094, '1997年考研数学卷2第17题', '简单', '考研数学1997年卷2真题', '$λ$取何值时，方程组$\\begin{cases} 2x_{1} + λx_{2} - x_{3} = 1 \\\\ λx_{1} - x_{2} + x_{3} = 2 \\\\ 4x_{1} + 5x_{2} - 5x_{3} = −1 \\end{cases}$无解，有唯一解或由无穷多解？并在有无穷多解时写出方程组的通解．', '[]', '
当$λ \\neq 1$且$λ \\neq −\\frac{4}{5}$时，方程组有唯一解；
当$λ = 1$时，方程组有无穷多解，通解为$x_{1} = 1,  x_{2} = t - 1,  x_{3} = t$（$t$为任意实数）；
当$λ = −\\frac{4}{5}$时，方程组无解。
', '
方程组的系数矩阵$A$和增广矩阵$B$分别为：

$$
A = \\left( \\begin{array}{ccc}
2 & λ & −1 \\\\
λ & −1 & 1 \\\\
4 & 5 & −5 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cccc}
2 & λ & −1 & 1 \\\\
λ & −1 & 1 & 2 \\\\
4 & 5 & −5 & −1 \\\\
\\end{array} \\right)
$$

计算系数矩阵$A$的行列式：

$$
det(A) = det \\left( \\begin{array}{ccc}
2 & λ & −1 \\\\
λ & −1 & 1 \\\\
4 & 5 & −5 \\\\
\\end{array} \\right) = 5λ^{2} - λ - 4
$$

令$det(A) = 0$，解得$λ = 1$或$λ = −\\frac{4}{5}$。
当$λ \\neq 1$且$λ \\neq −\\frac{4}{5}$时，$det(A) \\neq 0$，系数矩阵满秩，方程组有唯一解。当$λ = 1$时，方程组变为：

$$
\\begin{cases} 2x_{1} + x_{2} - x_{3} = 1 \\\\ x_{1} - x_{2} + x_{3} = 2 \\\\ 4x_{1} + 5x_{2} - 5x_{3} = −1 \\end{cases}
$$

增广矩阵行化简后为：

$$
\\left( \\begin{array}{cccc}
1 & −1 & 1 & 2 \\\\
0 & 1 & −1 & −1 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

系数矩阵秩为 2，增广矩阵秩为 2，且小于变量个数 3，故有无穷多解。通解为$x_{1} = 1,  x_{2} = t - 1,  x_{3} = t$（$t$为任意实数）。
当$λ = −\\frac{4}{5}$时，方程组变为：

$$
\\begin{cases} 2x_{1} - \\frac{4}{5}x_{2} - x_{3} = 1 \\\\ −\\frac{4}{5}x_{1} - x_{2} + x_{3} = 2 \\\\ 4x_{1} + 5x_{2} - 5x_{3} = −1 \\end{cases}
$$

增广矩阵行化简后出现矛盾方程$0 = 9$，故系数矩阵秩为 2，增广矩阵秩为 3，两者不等，方程组无解。
', 9, 'Mogullzr', '2026-01-29 14:10:26', 9, 'Mogullzr', '2026-01-29 14:10:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1094');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1094');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1095, '1997年考研数学卷2第18题', '简单', '考研数学1997年卷2真题', '设曲线$L$的极坐标方程为$r = r(θ)$，$M(r, θ)$为$L$上的任一点，$M_{0}(2, 0)$为$L$上一定点，若极径$OM_{0}$,$OM$与曲线$L$所围成的曲边扇形面积值等于$L$上$M_{0}$,$M$两点间弧长值的一半，求曲线$L$的方程．', '[]', '$r \\cos (θ - \\frac{π}{3}) = 1$或$r \\cos (θ + \\frac{π}{3}) = 1$
', '设曲线$L$的极坐标方程为$r = r(θ)$，点$M_{0}(2, 0)$对应$θ = 0$，点$M(r, θ)$为曲线上任意一点。极径$OM_{0}$和$OM$与曲线$L$所围成的曲边扇形面积为$A = \\frac{1}{2} \\int_{0}^{θ} r^{2} dθ$，曲线$L$上$M_{0}$到$M$的弧长为$s = \\int_{0}^{θ} \\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}} dθ$。根据条件，面积值等于弧长值的一半，即：

$$
\\frac{1}{2} \\int_{0}^{θ} r^{2} dθ = \\frac{1}{2} \\int_{0}^{θ} \\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}} dθ
$$

简化得：

$$
\\int_{0}^{θ} r^{2} dθ = \\int_{0}^{θ} \\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}} dθ
$$

对两边关于$θ$求导：

$$
r^{2} = \\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}}
$$

两边平方：

$$
r^{4} = r^{2} + (\\frac{dr}{dθ})^{2}
$$

整理得：

$$
(\\frac{dr}{dθ})^{2} = r^{4} - r^{2} = r^{2}(r^{2} - 1)
$$

于是：

$$
\\frac{dr}{dθ} = ±r\\sqrt{r^{2} - 1}
$$

这是一个可分离变量的微分方程。当$r ≥ 1$时，分离变量：

$$
\\frac{dr}{r\\sqrt{r^{2} - 1}} = ±dθ
$$

积分左边：

$$
∫ \\frac{dr}{r\\sqrt{r^{2} - 1}} = arcsec r + C
$$

所以：

$$
arcsec r = ±θ + C
$$

代入初始条件$r(0) = 2$：

$$
arcsec 2 = ±0 + C  ⟹  C = \\frac{π}{3}
$$

因此：

$$
arcsec r = ±θ + \\frac{π}{3}
$$

取正割：

$$
r = sec (±θ + \\frac{π}{3})
$$

由于正割函数是偶函数，即$sec(−x) = sec(x)$，上述方程可写为：

$$
r = sec (θ + \\frac{π}{3})  或 r = sec (\\frac{π}{3} - θ)
$$

即：

$$
r \\cos (θ + \\frac{π}{3}) = 1 或 r \\cos (θ - \\frac{π}{3}) = 1
$$

这就是曲线$L$的方程。验证可知，这两条直线均满足初始条件$r(0) = 2$，且满足面积与弧长的关系。
', 9, 'Mogullzr', '2026-01-29 14:10:26', 9, 'Mogullzr', '2026-01-29 14:10:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1095');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1095');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1060', '1095');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1096, '1997年考研数学卷2第19题', '简单', '考研数学1997年卷2真题', '设函数$f(x)$在闭区间$\\lbrack 0, 1 \\rbrack$上连续，在开区间$(0, 1)$内大于零，
并满足$xf^{′}(x) = f(x) + \\frac{3a}{2}x^{2}$（$a$为常数），
又曲线$y = f(x)$与$x = 1, y = 0$所围成的图形$S$的面积值为$2$，
求函数$y = f(x)$，并问$a$为何值时，图形$S$绕$x$轴旋转一周所得的旋转体的体积最小．', '[]', '函数$f(x) = \\frac{3a}{2}x + C$，当$a = −5$时，图形$S$绕$x$轴旋转一周所得的旋转体的体积最小。
', '由微分方程$xf^{′}(x) = f(x) + \\frac{3a}{2}x^{2}$可得：

$$
f^{′}(x) - \\frac{1}{x}f(x) = \\frac{3a}{2}x
$$

这是一阶线性微分方程，积分因子为$μ(x) = e^{∫ −\\frac{1}{x}dx} = \\frac{1}{x}$。两边乘以积分因子：

$$
(\\frac{f(x)}{x})^{′} = \\frac{3a}{2}
$$

积分得：

$$
\\frac{f(x)}{x} = \\frac{3a}{2}x + C
$$

即：

$$
f(x) = Cx + \\frac{3a}{2}x^{2}
$$

其中$C$为积分常数。
由曲线$y = f(x)$与$x = 1, y = 0$所围图形$S$的面积为$2$，考虑到$f(0) = 0$，图形$S$为从$x = 0$到$x = 1$的区域，故：

$$
\\int_{0}^{1} f(x) dx = 2
$$

代入$f(x)$：

$$
\\int_{0}^{1} (Cx + \\frac{3a}{2}x^{2}) dx =  \\lbrack \\frac{C}{2}x^{2} + \\frac{a}{2}x^{3} \\rbrack _{0}^{1} = \\frac{C}{2} + \\frac{a}{2} = 2
$$

解得：

$$
C + a = 4
$$

即$C = 4 - a$，所以：

$$
f(x) = (4 - a)x + \\frac{3a}{2}x^{2}
$$

图形$S$绕$x$轴旋转一周所得的旋转体体积为：

$$
V = π \\int_{0}^{1} \\lbrack f(x) \\rbrack 2 dx = π \\int_{0}^{1}  \\lbrack (4 - a)x + \\frac{3a}{2}x^{2} \\rbrack ^{2} dx
$$

展开被积函数：

$$
\\lbrack (4 - a)x + \\frac{3a}{2}x^{2} \\rbrack 2 = (4 - a)2x^{2} + 3a(4 - a)x^{3} + \\frac{9a^{2}}{4}x^{4}
$$

积分：

$$
\\int_{0}^{1} x^{2}dx = \\frac{1}{3},  \\int_{0}^{1} x^{3}dx = \\frac{1}{4},  \\int_{0}^{1} x^{4}dx = \\frac{1}{5}
$$

所以：

$$
V = π  \\lbrack \\frac{(4 - a)2}{3} + \\frac{3a(4 - a)}{4} + \\frac{9a^{2}}{20} \\rbrack
$$

化简：

$$
\\begin{array}{cc}
V & = π  \\lbrack \\frac{16 - 8a + a^{2}}{3} + \\frac{12a - 3a^{2}}{4} + \\frac{9a^{2}}{20} \\rbrack  \\\\
 & = π  \\lbrack \\frac{16}{3} - \\frac{8}{3}a + \\frac{1}{3}a^{2} + 3a - \\frac{3}{4}a^{2} + \\frac{9}{20}a^{2} \\rbrack  \\\\
\\end{array}
$$

合并同类项：
常数项：$\\frac{16}{3}$$a$项：$−\\frac{8}{3}a + 3a = \\frac{1}{3}a$$a^{2}$项：$\\frac{1}{3}a^{2} - \\frac{3}{4}a^{2} + \\frac{9}{20}a^{2} = \\frac{1}{30}a^{2}$
因此：

$$
V(a) = π (\\frac{1}{30}a^{2} + \\frac{1}{3}a + \\frac{16}{3})
$$

为求$V(a)$的最小值，令其导数为零：

$$
V^{′}(a) = π (\\frac{1}{15}a + \\frac{1}{3}) = 0
$$

解得：

$$
a = −5
$$

此时：

$$
f(x) = (4 - (−5))x + \\frac{3(−5)}{2}x^{2} = 9x - \\frac{15}{2}x^{2}
$$

且在区间$(0, 1)$内$f(x) > 0$，满足条件。
故当$a = −5$时，函数

$$
f(x) = 9x - \\frac{15}{2}x^{2}
$$

对应的旋转体体积最小。
', 9, 'Mogullzr', '2026-01-29 14:10:27', 9, 'Mogullzr', '2026-01-29 14:10:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1096');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1096');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1096');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1097, '1997年考研数学卷2第20题', '简单', '考研数学1997年卷2真题', '已知函数$f(x)$连续，且$\\lim_{x→0} \\frac{f(x)}{x} = 2$，
设$φ(x) = \\int_{0}^{1} f(xt)dt$，求$φ^{′}(x)$并讨论$φ^{′}(x)$在$x = 0$处的连续性．', '[]', '

$$
φ^{′}(x) = \\begin{cases} \\frac{xf(x)-\\int_{0}^{x} f(u) du}{x^{2}} & x \\neq 0 \\\\ 1 & x = 0 \\end{cases}
$$

且$φ^{′}(x)$在$x = 0$处连续。
', '已知函数$f(x)$连续，且$\\lim_{x→0} \\frac{f(x)}{x} = 2$，定义$φ(x) = \\int_{0}^{1} f(xt) dt$。
首先，求$φ^{′}(x)$。对于$x \\neq 0$，通过变量代换$u = xt$，有：

$$
φ(x) = \\int_{0}^{1} f(xt) dt = \\frac{1}{x} \\int_{0}^{x} f(u) du.
$$

令$F(x) = \\int_{0}^{x} f(u) du$，则$φ(x) = \\frac{F(x)}{x}$。求导得：

$$
φ^{′}(x) = \\frac{xF^{′}(x) - F(x)}{x^{2}} = \\frac{xf(x) - \\int_{0}^{x} f(u) du}{x^{2}}.
$$

对于$x = 0$，由定义求导：

$$
φ^{′}(0) = \\lim_{h→0} \\frac{φ(h) - φ(0)}{h}.
$$

由$φ(0) = \\int_{0}^{1} f(0) dt$，且由$\\lim_{x→0} \\frac{f(x)}{x} = 2$可知$f(0) = 0$，故$φ(0) = 0$。于是：

$$
φ^{′}(0) = \\lim_{h→0} \\frac{φ(h)}{h} = \\lim_{h→0} \\frac{1}{h} \\int_{0}^{1} f(ht) dt.
$$

代换$u = ht$，得：

$$
\\int_{0}^{1} f(ht) dt = \\frac{1}{h} \\int_{0}^{h} f(u) du,
$$

所以：

$$
φ^{′}(0) = \\lim_{h→0} \\frac{1}{h^{2}} \\int_{0}^{h} f(u) du.
$$

由洛必达法则或等价无穷小，因$\\lim_{u→0} \\frac{f(u)}{u} = 2$，有：

$$
\\lim_{h→0} \\frac{1}{h^{2}} \\int_{0}^{h} f(u) du = \\lim_{h→0} \\frac{f(h)}{2h} = \\frac{1}{2} ⋅ 2 = 1,
$$

故$φ^{′}(0) = 1$.
其次，讨论$φ^{′}(x)$在$x = 0$处的连续性。需证$\\lim_{x→0} φ^{′}(x) = φ^{′}(0) = 1$。对于$x \\neq 0$，有：

$$
φ^{′}(x) = \\frac{xf(x) - \\int_{0}^{x} f(u) du}{x^{2}}.
$$

令$f(x) = 2x + g(x)$，其中$\\lim_{x→0} \\frac{g(x)}{x} = 0$，则：

$$
xf(x) = x(2x + g(x)) = 2x^{2} + xg(x),
$$



$$
\\int_{0}^{x} f(u) du = \\int_{0}^{x}(2u + g(u)) du = x^{2} + \\int_{0}^{x} g(u) du.
$$

由$\\lim_{u→0} \\frac{g(u)}{u} = 0$，知$\\int_{0}^{x} g(u) du = o(x^{2})$，故：

$$
xf(x) - \\int_{0}^{x} f(u) du = (2x^{2} + xg(x)) - (x^{2} + o(x^{2})) = x^{2} + o(x^{2}),
$$

所以：

$$
φ^{′}(x) = \\frac{x^{2} + o(x^{2})}{x^{2}} = 1 + o(1) → 1 (x → 0).
$$

因此，$\\lim_{x→0} φ^{′}(x) = 1 = φ^{′}(0)$，即$φ^{′}(x)$在$x = 0$处连续。
', 9, 'Mogullzr', '2026-01-29 14:10:27', 9, 'Mogullzr', '2026-01-29 14:10:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1097');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1097');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1097');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1098, '1997年考研数学卷2第21题', '简单', '考研数学1997年卷2真题', '就$k$的不同取值情况，确定方程$x - \\frac{π}{2} \\sin x = k$在开区间$(0, \\frac{π}{2})$内根的个数，并证明你的结论．', '[]', '
设$f(x) = x - \\frac{π}{2} \\sin x$，$x ∈ (0, \\frac{π}{2})$。
当$k < f(x_{0})$时，方程无根；当$k = f(x_{0})$时，方程有唯一根$x = x_{0}$；当$f(x_{0}) < k < 0$时，方程有两个根，分别位于$(0, x_{0})$和$(x_{0}, \\frac{π}{2})$；当$k ≥ 0$时，方程无根。
其中$x_{0} = arccos \\frac{2}{π}$，$f(x_{0}) = x_{0} - \\frac{\\sqrt{π^{2}-4}}{2}$。
', '
考虑函数$f(x) = x - \\frac{π}{2} \\sin x$在开区间$(0, \\frac{π}{2})$上的性质。
计算导数$f^{′}(x) = 1 - \\frac{π}{2} \\cos x$。令$f^{′}(x) = 0$，得$\\cos x = \\frac{2}{π}$。
由于$x ∈ (0, \\frac{π}{2})$，存在唯一的$x_{0} = arccos \\frac{2}{π}$使得$f^{′}(x_{0}) = 0$。
当$x ∈ (0, x_{0})$时，$f^{′}(x) < 0$，函数$f(x)$单调递减；
当$x ∈ (x_{0}, \\frac{π}{2})$时，$f^{′}(x) > 0$，函数$f(x)$单调递增。
因此，$x_{0}$是函数$f(x)$的极小值点。
计算区间端点的极限：
当$x → 0^{+}$时，$f(x) → 0^{-}$；
当$x → \\frac{π}{2}^{-}$时，$f(x) → 0^{-}$。
计算极小值$f(x_{0}) = x_{0} - \\frac{π}{2} \\sin x_{0}$。
由于$\\cos x_{0} = \\frac{2}{π}$，有$\\sin x_{0} = \\frac{\\sqrt{π^{2}-4}}{π}$，所以


$$
f(x_{0}) = x_{0} - \\frac{\\sqrt{π^{2} - 4}}{2}.
$$

证明$f(x_{0}) < 0$：
令$t = \\frac{2}{π}$，则$x_{0} = arccos t$。需证$t arccos t < \\sqrt{1 - t^{2}}$。
考虑函数$ϕ(t) = t arccos t - \\sqrt{1 - t^{2}}$，有


$$
ϕ(0) = −1 < 0,  ϕ(1) = 0,
$$

且$ϕ^{′}(t) = arccos t > 0$对于$t ∈ (0, 1)$，
故$ϕ(t) < 0$对于$t ∈ (0, 1)$，即$t arccos t < \\sqrt{1 - t^{2}}$，从而$f(x_{0}) < 0$。
因此，函数$f(x)$在$(0, \\frac{π}{2})$上的值域为$\\lbrack f(x_{0}), 0)$。
对于方程$f(x) = k$：
若$k < f(x_{0})$，则$k$不在值域内，无根；若$k = f(x_{0})$，则恰有唯一根$x = x_{0}$；若$f(x_{0}) < k < 0$，则在$(0, x_{0})$和$(x_{0}, \\frac{π}{2})$上各存在唯一根，共两个根；若$k ≥ 0$，则$k$不在值域内，无根。
', 9, 'Mogullzr', '2026-01-29 14:10:27', 9, 'Mogullzr', '2026-01-29 14:10:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1098');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1098');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '1098');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1099, '1997年考研数学卷3第1题', '简单', '考研数学1997年卷3真题', '设$y = f(\\ln x)e^{f(x)}$，其中$f$可微，则$dy =$______．', '[]', '

$$
dy = e^{f(x)}  \\lbrack f(\\ln x)f^{′}(x) + \\frac{1}{x}f^{′}(\\ln x) \\rbrack  dx
$$

', '给定$y = f(\\ln x) ⋅ e^{f(x)}$，其中$f$可微。
设


$$
u = f(\\ln x),  v = e^{f(x)},
$$

则


$$
y = u ⋅ v.
$$

由乘积法则，


$$
\\frac{dy}{dx} = u\\frac{dv}{dx} + v\\frac{du}{dx}.
$$

计算$\\frac{du}{dx}$：


$$
\\frac{du}{dx} = f^{′}(\\ln x) ⋅ \\frac{d}{dx}(\\ln x) = f^{′}(\\ln x) ⋅ \\frac{1}{x}.
$$

计算$\\frac{dv}{dx}$：


$$
\\frac{dv}{dx} = e^{f(x)} ⋅ f^{′}(x).
$$

代入乘积法则：


$$
\\frac{dy}{dx} = f(\\ln x) ⋅ e^{f(x)}f^{′}(x) + e^{f(x)} ⋅ (f^{′}(\\ln x) ⋅ \\frac{1}{x}) = e^{f(x)}  \\lbrack f(\\ln x)f^{′}(x) + \\frac{1}{x}f^{′}(\\ln x) \\rbrack  .
$$

因此，


$$
dy = \\frac{dy}{dx} dx = e^{f(x)}  \\lbrack f(\\ln x)f^{′}(x) + \\frac{1}{x}f^{′}(\\ln x) \\rbrack  dx.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:30', 9, 'Mogullzr', '2026-01-29 14:10:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1099');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1099');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1099');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1100, '1997年考研数学卷3第2题', '简单', '考研数学1997年卷3真题', '若$f(x) = \\frac{1}{1+x^{2}} + \\sqrt{1 - x^{2}} \\int_{0}^{1} f(x)dx$，则$\\int_{0}^{1} f(x)dx =$______．', '[]', '
$\\frac{π}{4-π}$
', '
设$I = \\int_{0}^{1} f(x) dx$，则原方程化为：


$$
f(x) = \\frac{1}{1 + x^{2}} + \\sqrt{1 - x^{2}} ⋅ I
$$

对两边从 0 到 1 积分：


$$
I = \\int_{0}^{1} \\frac{1}{1 + x^{2}} dx + I \\int_{0}^{1} \\sqrt{1 - x^{2}} dx
$$

计算第一个积分：


$$
\\int_{0}^{1} \\frac{1}{1 + x^{2}} dx = arctan x​_{0}^{1} = \\frac{π}{4}
$$

计算第二个积分：


$$
\\int_{0}^{1} \\sqrt{1 - x^{2}} dx = \\frac{π}{4}
$$

代入得：


$$
I = \\frac{π}{4} + I ⋅ \\frac{π}{4}
$$

整理方程：


$$
I - \\frac{π}{4}I = \\frac{π}{4}
$$



$$
I (1 - \\frac{π}{4}) = \\frac{π}{4}
$$

解得：


$$
I = \\frac{\\frac{π}{4}}{1 - \\frac{π}{4}} = \\frac{π}{4} ⋅ \\frac{4}{4 - π} = \\frac{π}{4 - π}
$$

因此，$\\int_{0}^{1} f(x) dx = \\frac{π}{4-π}$。
', 9, 'Mogullzr', '2026-01-29 14:10:30', 9, 'Mogullzr', '2026-01-29 14:10:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1100');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1100');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1100');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1101, '1997年考研数学卷3第3题', '简单', '考研数学1997年卷3真题', '差分方程$y_{t+1} - y_{t} = t2^{t}$的通解为 ______．', '[]', '
$y_{t} = C + (t - 2)2^{t}$
', '
给定差分方程$y_{t+1} - y_{t} = t2^{t}$，首先求解齐次方程$y_{t+1} - y_{t} = 0$。
齐次方程的特征方程为$r - 1 = 0$，解得$r = 1$，因此齐次解为$y_{h} = C$，其中$C$为常数。
接下来，求非齐次方程的特解。非齐次项为$t2^{t}$，假设特解形式为$y_{p} = (At + B)2^{t}$。代入原方程：

$$
y_{p,t+1} = (A(t + 1) + B)2^{t+1} = 2(At + A + B)2^{t},
$$

则

$$
y_{p,t+1} - y_{p} = 2(At + A + B)2^{t} - (At + B)2^{t} =  \\lbrack At + (2A + B) \\rbrack 2^{t}.
$$

令其等于$t2^{t}$，得

$$
At + (2A + B) = t.
$$

比较系数：
$A = 1$，$2A + B = 0$。
解得$B = −2$。
因此特解为$y_{p} = (t - 2)2^{t}$。
通解为齐次解与特解之和：

$$
y_{t} = y_{h} + y_{p} = C + (t - 2)2^{t}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:30', 9, 'Mogullzr', '2026-01-29 14:10:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1101');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1101');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1101');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1102, '1997年考研数学卷3第4题', '简单', '考研数学1997年卷3真题', '若二次型$f(x_{1}, x_{2}, x_{3}) = 2x_{1}^{2} + x_{2}^{2} + x_{3}^{2} + 2x_{1}x_{2} + tx_{2}x_{3}$是正定的，则$t$的取值范围是 ______．', '[]', '$−\\sqrt{2} < t < \\sqrt{2}$
', '二次型$f(x_{1}, x_{2}, x_{3}) = 2x_{1}^{2} + x_{2}^{2} + x_{3}^{2} + 2x_{1}x_{2} + tx_{2}x_{3}$的矩阵为：

$$
A = \\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
1 & 1 & \\frac{t}{2} \\\\
0 & \\frac{t}{2} & 1 \\\\
\\end{array} \\right)
$$

二次型正定的充要条件是矩阵$A$的所有顺序主子式大于零。
一阶主子式：$2 > 0$。
二阶主子式：$\\begin{vmatrix}
2 & 1\\\\
1 & 1
\\end{vmatrix} = 2 × 1 - 1 × 1 = 1 > 0$。
三阶主子式：$\\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
1 & 1 & \\frac{t}{2} \\\\
0 & \\frac{t}{2} & 1 \\\\
\\end{array} \\right) = 2 × \\left( \\begin{array}{cc}
1 & \\frac{t}{2} \\\\
\\frac{t}{2} & 1 \\\\
\\end{array} \\right) - 1 × \\left( \\begin{array}{cc}
1 & \\frac{t}{2} \\\\
0 & 1 \\\\
\\end{array} \\right) = 2 (1 - \\frac{t^{2}}{4}) - 1 = 1 - \\frac{t^{2}}{2}$。
要求$1 - \\frac{t^{2}}{2} > 0$，即$t^{2} < 2$，所以$−\\sqrt{2} < t < \\sqrt{2}$。
因此，$t$的取值范围是$−\\sqrt{2} < t < \\sqrt{2}$。
', 9, 'Mogullzr', '2026-01-29 14:10:30', 9, 'Mogullzr', '2026-01-29 14:10:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1102');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1102');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1103, '1997年考研数学卷3第5题', '简单', '考研数学1997年卷3真题', '设随机变量$X$和$Y$相互独立且都服从正态分布$N(0, 3^{2})$，
而$X_{1}, ⋯  , X_{9}$和$Y_{1}, ⋯  , Y_{9}$分别是来自总体$X$和$Y$的简单随机样本，
则统计量$U = \\frac{X_{1}+⋯+X_{9}}{\\sqrt{Y_{1}^{2}+⋯+Y_{9}^{2}}}$服从分布______，参数为 ______．', '[]', 't分布；9
', '由于$X$和$Y$相互独立且均服从$N(0, 3^{2})$，则$X_{i} ∼ N(0, 9)$，$Y_{i} ∼ N(0, 9)$。
分子$S_{X} = \\sum_{i=1}^{9} X_{i}$服从正态分布，$S_{X} ∼ N(0, 9 × 9) = N(0, 81)$，标准化后$\\frac{S_{X}}{9} ∼ N(0, 1)$。
分母涉及$Y_{i}$的平方和：令$Z_{i} = \\frac{Y_{i}}{3} ∼ N(0, 1)$，则

$$
\\sum_{i=1}^{9} Z_{i}^{2} = \\sum_{i=1}^{9} (\\frac{Y_{i}}{3})^{2} = \\frac{1}{9} \\sum_{i=1}^{9} Y_{i}^{2},
$$

故

$$
\\sum_{i=1}^{9} Y_{i}^{2} = 9 \\sum_{i=1}^{9} Z_{i}^{2} ∼ 9χ^{2}(9),
$$

因此

$$
\\sqrt{\\sum_{i=1}^{9} Y_{i}^{2}} = 3\\sqrt{χ^{2}(9)}.
$$

统计量

$$
U = \\frac{S_{X}}{\\sqrt{∑ Y_{i}^{2}}} = \\frac{9 ⋅ N(0, 1)}{3\\sqrt{χ^{2}(9)}} = 3 ⋅ \\frac{N(0, 1)}{\\sqrt{χ^{2}(9)}} = 3 ⋅ \\frac{N(0, 1)}{3\\sqrt{\\frac{χ^{2}(9)}{9}}} = \\frac{N(0, 1)}{\\sqrt{\\frac{χ^{2}(9)}{9}}}.
$$

由于分子$\\frac{S_{X}}{9} ∼ N(0, 1)$与分母中的$χ^{2}(9)$相互独立，故$U ∼ t(9)$，即服从自由度为 9 的 t 分布。
', 9, 'Mogullzr', '2026-01-29 14:10:30', 9, 'Mogullzr', '2026-01-29 14:10:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1103');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1103');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1079', '1103');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1104, '1997年考研数学卷3第6题', '简单', '考研数学1997年卷3真题', '设$f(x) = \\int_{0}^{1-\\cos x} \\sin t^{2}dt$,$g(x) = \\frac{x^{5}}{5} + \\frac{x^{6}}{6}$，
则当$x → 0$时，$f(x)$是$g(x)$的', '[''低阶无穷小．'', ''高阶无穷小．'', ''等价无穷小．'', ''同阶但不等价的无穷小．'']', "['B']", '当$x → 0$时，分析$f(x)$和$g(x)$的阶数。首先，$g(x) = \\frac{x^{5}}{5} + \\frac{x^{6}}{6} ∼ \\frac{x^{5}}{5}$，因为$x^{6}$项是高阶无穷小。对于

$$
f(x) = \\int_{0}^{1-\\cos x} \\sin t^{2} dt,
$$
令$u = 1 - \\cos x$。当$x → 0$时，$u ∼ \\frac{x^{2}}{2}$。被积函数$\\sin t^{2}$在$t → 0$时满足$\\sin t^{2} ∼ t^{2}$，因此

$$
f(x) ∼ \\int_{0}^{u} t^{2} dt = \\frac{u^{3}}{3} ∼ \\frac{1}{3} (\\frac{x^{2}}{2})^{3} = \\frac{x^{6}}{24}.
$$
比较$f(x) ∼ \\frac{x^{6}}{24}$和$g(x) ∼ \\frac{x^{5}}{5}$，有

$$
\\frac{f(x)}{g(x)} ∼ \\frac{\\frac{x^{6}}{24}}{\\frac{x^{5}}{5}} = \\frac{5x}{24} → 0,
$$
故$f(x)$是$g(x)$的高阶无穷小。', 9, 'Mogullzr', '2026-01-29 14:10:30', 9, 'Mogullzr', '2026-01-29 14:10:30', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1104');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1104');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1104');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1105, '1997年考研数学卷3第7题', '简单', '考研数学1997年卷3真题', '若$f(−x) = f(x)$（$−∞ < x < +∞$），在$(−∞, 0)$内$f^{′}(x) > 0$，且$f^{′′}(x) < 0$，则在$(0, +∞)$内有', '[''$f^{′}(x) > 0$,$f^{′′}(x) < 0$．'', ''$f^{′}(x) > 0$,$f^{′′}(x) > 0$．'', ''$f^{′}(x) < 0$,$f^{′′}(x) < 0$．'', ''$f^{′}(x) < 0$,$f^{′′}(x) > 0$．'']', "['C']", '
由条件$f(−x) = f(x)$可知函数$f(x)$是偶函数。
对于偶函数，一阶导数$f^{′}(x)$是奇函数，即

$$
f^{′}(−x) = −f^{′}(x)
$$
在$(−∞, 0)$内$f^{′}(x) > 0$，则对于$x > 0$，有$f^{′}(−x) > 0$，即

$$
−f^{′}(x) > 0
$$
所以

$$
f^{′}(x) < 0
$$
二阶导数$f^{′′}(x)$是偶函数，即

$$
f^{′′}(−x) = f^{′′}(x)
$$
在$(−∞, 0)$内$f^{′′}(x) < 0$，则对于$x > 0$，有

$$
f^{′′}(x) = f^{′′}(−x) < 0
$$
因此在$(0, +∞)$内

$$
f^{′}(x) < 0 且 f^{′′}(x) < 0
$$
对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:10:31', 9, 'Mogullzr', '2026-01-29 14:10:31', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1105');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1105');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1105');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1106, '1997年考研数学卷3第8题', '简单', '考研数学1997年卷3真题', '设向量组$α_{1}$,$α_{2}$,$α_{3}$线性无关，则下列向量组中，线性无关的是', '[''$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} - α_{1}$．'', ''$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{1} + 2α_{2} + α_{3}$．'', ''$α_{1} + 2α_{2}$,$2α_{2} + 3α_{3}$,$3α_{3} + α_{1}$．'', ''$α_{1} + α_{2} + α_{3}$,$2α_{1} - 3α_{2} + 22α_{3}$,$3α_{1} + 5α_{2} - 5α_{3}$．'']', "['C']", '
由于向量组$α_{1}, α_{2}, α_{3}$线性无关，要判断各选项向量组的线性相关性，需设其线性组合为零，并解系数方程组。对于选项 C，设

$$
c_{1}(α_{1} + 2α_{2}) + c_{2}(2α_{2} + 3α_{3}) + c_{3}(3α_{3} + α_{1}) = 0,
$$
整理得

$$
(c_{1} + c_{3})α_{1} + (2c_{1} + 2c_{2})α_{2} + (3c_{2} + 3c_{3})α_{3} = 0.
$$
由$α_{1}, α_{2}, α_{3}$线性无关，得方程组：

$$
c_{1} + c_{3} = 0,  2c_{1} + 2c_{2} = 0,  3c_{2} + 3c_{3} = 0.
$$
解得$c_{1} = 0,  c_{2} = 0,  c_{3} = 0$，故线性无关。对于选项 A，方程组有非零解，如$c_{1} = 1,  c_{2} = −1,  c_{3} = 1$；
选项 B 有非零解，如$c_{1} = 1,  c_{2} = 1,  c_{3} = −1$；
选项 D 有非零解，如$c_{1} = −19,  c_{2} = 2,  c_{3} = 5$，
故这些选项线性相关。', 9, 'Mogullzr', '2026-01-29 14:10:31', 9, 'Mogullzr', '2026-01-29 14:10:31', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1106');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1106');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1106');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1107, '1997年考研数学卷3第9题', '简单', '考研数学1997年卷3真题', '设$A, B$为同阶可逆矩阵，则', '[''$AB = BA$．'', ''存在可逆矩阵$P$，使$P^{−1}AP = B$．'', ''存在可逆矩阵$C$，使$C^{T}AC = B$．'', ''存在可逆矩阵$P$和$Q$，使$PAQ = B$．'']', "['D']", '
对于选项 A，矩阵乘法不满足交换律，因此$AB = BA$不一定成立，例如取

$$
A = \\left \\lbrack  \\begin{array}{cc}
1 & 1 \\\\
0 & 1 \\\\
\\end{array} \\right \\rbrack  ,  B = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
1 & 1 \\\\
\\end{array} \\right \\rbrack  ,
$$
则$AB \\neq BA$。对于选项 B，$A$与$B$相似要求它们有相同的特征值，但$A$和$B$可能特征值不同，例如

$$
A = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & 2 \\\\
\\end{array} \\right \\rbrack  ,  B = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & 3 \\\\
\\end{array} \\right \\rbrack
$$
不相似。对于选项 C，存在可逆矩阵$C$使$C^{T}AC = B$要求$A$与$B$合同，但$A$和$B$可能不合同，例如在实数域中

$$
A = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & 1 \\\\
\\end{array} \\right \\rbrack  ,  B = \\left \\lbrack  \\begin{array}{cc}
1 & 0 \\\\
0 & −1 \\\\
\\end{array} \\right \\rbrack  ,
$$
由于$C^{T}AC$总是正定或半正定，而$B$是负定，不可能相等。对于选项 D，由于$A$和$B$都是同阶可逆矩阵，它们有相同的秩（满秩），因此存在可逆矩阵$P$和$Q$使得$PAQ = B$，即$A$与$B$等价，例如取$P = BA^{−1}$和$Q = I$，则$PAQ = B$。', 9, 'Mogullzr', '2026-01-29 14:10:31', 9, 'Mogullzr', '2026-01-29 14:10:31', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1107');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1107');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1107');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1108, '1997年考研数学卷3第10题', '简单', '考研数学1997年卷3真题', '设两个随机变量$X$与$Y$相互独立且同分布：
$$
P\\{X = −1\\} = P\\{Y = −1\\} = \\frac{1}{2},  P\\{X = 1\\} = P\\{Y = 1\\} = \\frac{1}{2},
$$
则下列各式中成立的是', '[''$P\\\\{X = Y\\\\} = \\\\frac{1}{2}$．'', ''$P\\\\{X = Y\\\\} = 1$．'', ''$P \\\\{X + Y = 0\\\\} = \\\\frac{1}{4}$．'', ''$P\\\\{XY = 1\\\\} = \\\\frac{1}{4}$．'']', "['A']", '
由于随机变量$X$与$Y$相互独立且同分布，且

$$
P\\{X = −1\\} = P\\{Y = −1\\} = \\frac{1}{2},  P\\{X = 1\\} = P\\{Y = 1\\} = \\frac{1}{2},
$$
可计算各选项概率。对于选项 A：$P\\{X = Y\\}$表示$X$与$Y$取值相同，即$X = −1$且$Y = −1$或$X = 1$且$Y = 1$。由于独立，

$$
P\\{X = −1, Y = −1\\} = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4},  P\\{X = 1, Y = 1\\} = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4},
$$
因此

$$
P\\{X = Y\\} = \\frac{1}{4} + \\frac{1}{4} = \\frac{1}{2},
$$
选项 A 正确。对于选项 B：$P\\{X = Y\\} = 1$显然错误，因为存在$X \\neq Y$的情况。对于选项 C：$P\\{X + Y = 0\\}$表示$X$与$Y$取值相反，即$X = −1$且$Y = 1$或$X = 1$且$Y = −1$。

$$
P\\{X = −1, Y = 1\\} = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4},  P\\{X = 1, Y = −1\\} = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4},
$$
因此

$$
P\\{X + Y = 0\\} = \\frac{1}{4} + \\frac{1}{4} = \\frac{1}{2} \\neq \\frac{1}{4},
$$
选项 C 错误。对于选项 D：$P\\{XY = 1\\}$表示$X$与$Y$同号，即$X = −1$且$Y = −1$或$X = 1$且$Y = 1$。与选项 A 相同，

$$
P\\{XY = 1\\} = \\frac{1}{4} + \\frac{1}{4} = \\frac{1}{2} \\neq \\frac{1}{4},
$$
选项 D 错误。因此，唯一成立的选项是 A。', 9, 'Mogullzr', '2026-01-29 14:10:31', 9, 'Mogullzr', '2026-01-29 14:10:31', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1108');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1108');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1108');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1109, '1997年考研数学卷3第11题', '简单', '考研数学1997年卷3真题', '在经济学中，称函数$Q(x) = A \\lbrack δK^{−x} + (1 - δ)L^{−x} \\rbrack −x1​$为固定替代弹性生产函数，
而称函数$\\overline{Q​} = AK^{δ}L^{1-δ}$为 Cobb-Douglas 生产函数（简称 C-D 生产函数）。
试证明：当$x → 0$时，固定替代弹性生产函数变为 C-D 生产函数，即有$\\lim_{x→0} Q(x) = \\overline{Q​}$．', '[]', '见解析
', '
因为$\\ln Q(x) = \\ln A - \\frac{1}{x} \\ln \\lbrack δK^{−x} + (1 - δ)L^{−x} \\rbrack$，而且


$$
\\begin{array}{cc}
\\lim_{x→0} \\frac{\\ln \\lbrack δK^{−x} + (1 - δ)L^{−x} \\rbrack }{x} & = \\lim_{x→0} \\frac{−δK^{−x} \\ln K - (1 - δ)L^{−x} \\ln L}{δK^{−x} + (1 - δ)L^{−x}} \\\\
 & = −δ \\ln K - (1 - δ) \\ln L \\\\
 & = − \\ln(K^{δ}L^{1-δ}), \\\\
\\end{array}
$$

所以


$$
\\lim_{x→0} \\ln Q(x) = \\ln A + \\ln(K^{δ}L^{1-δ}) = \\ln(AK^{δ}L^{1-δ})  ⟹  \\lim_{x→0} Q(x) = AK^{δ}L^{1-δ} = \\overline{Q​}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:31', 9, 'Mogullzr', '2026-01-29 14:10:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1109');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1109');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1109');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1110, '1997年考研数学卷3第12题', '简单', '考研数学1997年卷3真题', '设$u = f(x, y, z)$有连续偏导数，$y = y(x)$和$z = z(x)$分别由方程$e^{xy} - y = 0$和$e^{x} - xz = 0$所确定，求$\\frac{du}{dx}$．', '[]', '

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y} ⋅ \\frac{y^{2}}{1 - xy} + \\frac{∂f}{∂z} ⋅ \\frac{z(x - 1)}{x}
$$

', '
由于$u = f(x, y, z)$且$y = y(x)$和$z = z(x)$是由方程$e^{xy} - y = 0$和$e^{x} - xz = 0$所确定的函数，根据链式法则，有：

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y}\\frac{dy}{dx} + \\frac{∂f}{∂z}\\frac{dz}{dx}
$$

需要求$\\frac{dy}{dx}$和$\\frac{dz}{dx}$。
对于方程$e^{xy} - y = 0$，定义$F(x, y) = e^{xy} - y$，利用隐函数求导法则：

$$
\\frac{dy}{dx} = −\\frac{\\frac{∂F}{∂x}}{\\frac{∂F}{∂y}}
$$

计算偏导数：

$$
\\frac{∂F}{∂x} = ye^{xy},  \\frac{∂F}{∂y} = xe^{xy} - 1
$$

代入得：

$$
\\frac{dy}{dx} = −\\frac{ye^{xy}}{xe^{xy} - 1} = \\frac{ye^{xy}}{1 - xe^{xy}}
$$

由方程$e^{xy} - y = 0$得$e^{xy} = y$，代入上式：

$$
\\frac{dy}{dx} = \\frac{y ⋅ y}{1 - xy} = \\frac{y^{2}}{1 - xy}
$$

对于方程$e^{x} - xz = 0$，定义$G(x, z) = e^{x} - xz$，利用隐函数求导法则：

$$
\\frac{dz}{dx} = −\\frac{\\frac{∂G}{∂x}}{\\frac{∂G}{∂z}}
$$

计算偏导数：

$$
\\frac{∂G}{∂x} = e^{x} - z,  \\frac{∂G}{∂z} = −x
$$

代入得：

$$
\\frac{dz}{dx} = −\\frac{e^{x} - z}{−x} = \\frac{e^{x} - z}{x}
$$

由方程$e^{x} - xz = 0$得$e^{x} = xz$，代入上式：

$$
\\frac{dz}{dx} = \\frac{xz - z}{x} = \\frac{z(x - 1)}{x}
$$

将$\\frac{dy}{dx}$和$\\frac{dz}{dx}$代入链式法则公式，即得所求。
', 9, 'Mogullzr', '2026-01-29 14:10:32', 9, 'Mogullzr', '2026-01-29 14:10:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1110');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1110');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1110');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1111, '1997年考研数学卷3第13题', '简单', '考研数学1997年卷3真题', '一商家销售某种商品的价格满足关系$p = 7 - 0.2x$(万元/吨),$x$为销售量(单位：吨)，商品的成本函数$C = 3x + 1$(万元).(1) 若每销售一吨商品，政府要征税$t$(万元)，求该商家获最大利润时的销售量；(2)$t$为何值时，政府税收总额最大．', '[]', '
(1) 销售量$x = 10 - \\frac{5}{2}t$
(2)$t = 2$
', '
(1) 商家的利润函数为$π = (7 - 0.2x)x - (3x + 1) - tx$。简化得


$$
π = −0.2x^{2} + (4 - t)x - 1.
$$

这是一个二次函数，开口向下，最大值在顶点处。顶点坐标$x = −\\frac{b}{2a}$，其中$a = −0.2$,$b = 4 - t$，计算得


$$
x = \\frac{4 - t}{0.4} = 10 - \\frac{5}{2}t.
$$

因此，商家获最大利润时的销售量为$x = 10 - \\frac{5}{2}t$。
(2) 政府税收总额$T = t × x = t (10 - \\frac{5}{2}t) = 10t - \\frac{5}{2}t^{2}$。这是一个关于$t$的二次函数，开口向下，最大值在顶点处。顶点坐标$t = −\\frac{b}{2a}$，其中$a = −\\frac{5}{2}$,$b = 10$，计算得


$$
t = \\frac{10}{5} = 2.
$$

因此，当$t = 2$时，政府税收总额最大。
', 9, 'Mogullzr', '2026-01-29 14:10:32', 9, 'Mogullzr', '2026-01-29 14:10:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1111');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1111');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1111');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1112, '1997年考研数学卷3第14题', '简单', '考研数学1997年卷3真题', '设函数$f(x)$在$\\lbrack 0, +∞)$上连续、单调不减且$f(0) ≥ 0$，试证函数
$$
F(x) = \\begin{cases} \\frac{1}{x} \\int_{0}^{x} t^{n}f(t)dt & 若x > 0 \\\\ 0 & 若x = 0 \\end{cases}
$$
在$\\lbrack 0, +∞)$上连续且单调不减(其中$n > 0$).', '[]', '见解析
', '
显然$x > 0$时，$F(x)$连续，又由洛必达法则知

$$
\\lim_{x→0^{+}} F(x) = \\lim_{x→0^{+}} \\frac{\\int_{0}^{x} t^{n}f(t)dt}{x} = \\lim_{x→0^{+}} x^{n}f(x) = 0 = F(0),
$$

所以$F(x)$在$\\lbrack 0, +∞)$上连续。当$x ∈ (0, +∞)$时，由于

$$
\\begin{array}{cc}
F^{′}(x) & = \\frac{x^{n+1}f(x) - \\int_{0}^{x} t^{n}f(t)dt}{x^{2}} \\\\
 & = \\frac{\\int_{0}^{x} x^{n}f(x)dt - \\int_{0}^{x} t^{n}f(t)dt}{x^{2}} \\\\
\\end{array}
$$

可见$F(x)$在$\\lbrack 0, +∞)$上单调不减。
', 9, 'Mogullzr', '2026-01-29 14:10:32', 9, 'Mogullzr', '2026-01-29 14:10:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1112');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1112');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1112');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1113, '1997年考研数学卷3第15题', '简单', '考研数学1997年卷3真题', '从点$P_{1}(1, 0)$作$x$轴的垂线，交抛物线$y = x^{2}$于点$Q_{1}(1, 1)$；
再从$Q_{1}$作这条抛物线的切线与$x$轴交于$P_{2}$，然后又从$P_{2}$作$x$轴的垂线，交抛物线于点$Q_{2}$,
依次重复上述过程得到一系列的点$P_{1}, Q_{1}; P_{2}, Q_{2}; ⋯  ; P_{n}, Q_{n}; ⋯$．(1) 求$\\overline{OPn​​}$；(2) 求级数$\\overline{Q1​P1​​} + \\overline{Q2​P2​​} + ⋯ + \\overline{Qn​Pn​​} + ⋯$的和．其中$n(n ≥ 1)$为自然数，而$\\overline{M1​M2​​}$表示点$M_{1}$与$M_{2}$之间的距离．', '[]', '
(1)$\\overline{OPn​​} = \\frac{1}{2^{n-1}}$
(2) 级数$\\overline{Q1​P1​​} + \\overline{Q2​P2​​} + ⋯ + \\overline{Qn​Pn​​} + ⋯$的和为$\\frac{4}{3}$
', '
先作草图如下：

由$y = x^{2}$，得$y^{′} = 2x$。对于任意$a$（$0 < a ≤ 1$），抛物线$y = x^{2}$在点$(a, a^{2})$处的切线方程为$y - a^{2} = 2a(x - a)$。且该切线与$x$轴的交点为$(\\frac{a}{2}, 0)$，故由$\\overline{OP1​​} = 1$可见

$$
\\overline{OP2​​} = \\frac{1}{2}\\overline{OP1​​} = \\frac{1}{2},
$$



$$
\\overline{OP3​​} = \\frac{1}{2}\\overline{OP2​​} = \\frac{1}{2} ⋅ \\frac{1}{2} = \\frac{1}{2^{2}},
$$



$$
⋯
$$



$$
\\overline{OPn​​} = \\frac{1}{2^{n-1}}.
$$

(II) 由于

$$
\\overline{Qn​Pn​​} = (\\overline{OPn​​})^{2} = (\\frac{1}{2})^{2n-2} = \\frac{1}{4^{n-1}}  ⇒  \\sum_{n=1}^{∞} \\overline{Qn​Pn​​} = \\sum_{n=1}^{∞} \\frac{1}{4^{n-1}} = \\sum_{m=0}^{∞} (\\frac{1}{4})^{m} ,
$$

利用几何级数求和公式即得

$$
\\sum_{n=1}^{∞} \\overline{Qn​Pn​​} = \\sum_{m=0}^{∞} (\\frac{1}{4})^{m} = \\frac{1}{1 - \\frac{1}{4}} = \\frac{4}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:32', 9, 'Mogullzr', '2026-01-29 14:10:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1113');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1113');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1113');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1114, '1997年考研数学卷3第16题', '简单', '考研数学1997年卷3真题', '设函数$f(t)$在$\\lbrack 0, +∞)$上连续，且满足方程
$$
f(t) = e^{4πt^{2}} + \\iint_{x^{2}+y^{2}≤4t^{2}} f (\\frac{1}{2}\\sqrt{x^{2} + y^{2}}) dxdy,
$$
求$f(t)$．', '[]', '

$$
f(t) = e^{4πt^{2}}(1 + 4πt^{2})
$$

', '给定函数$f(t)$在$\\lbrack 0, +∞)$上连续，且满足方程：

$$
f(t) = e^{4πt^{2}} + \\iint_{x^{2}+y^{2}≤4t^{2}} f (\\frac{1}{2}\\sqrt{x^{2} + y^{2}}) dxdy
$$

首先，将积分转换为极坐标。令$x = r \\cos θ$，$y = r \\sin θ$，则$dxdy = rdrdθ$，积分区域为$r ≤ 2t$，$θ ∈  \\lbrack 0, 2π \\rbrack$。被积函数为$f (\\frac{r}{2})$，因此：

$$
\\iint_{x^{2}+y^{2}≤4t^{2}} f (\\frac{1}{2}\\sqrt{x^{2} + y^{2}}) dxdy = \\int_{0}^{2π} \\int_{0}^{2t} f (\\frac{r}{2}) rdrdθ = 2π \\int_{0}^{2t} f (\\frac{r}{2}) rdr
$$

令$u = \\frac{r}{2}$，则$r = 2u$，$dr = 2du$，积分限变为$u ∈  \\lbrack 0, t \\rbrack$：

$$
2π \\int_{0}^{2t} f (\\frac{r}{2}) rdr = 2π \\int_{0}^{t} f(u) ⋅ 2u ⋅ 2du = 8π \\int_{0}^{t} f(u)udu
$$

原方程化为：

$$
f(t) = e^{4πt^{2}} + 8π \\int_{0}^{t} f(u)udu
$$

令$F(t) = \\int_{0}^{t} f(u)udu$，则$F^{′}(t) = f(t)t$。对原方程两边求导：

$$
f^{′}(t) = \\frac{d}{dt}e^{4πt^{2}} + 8πF^{′}(t) = 8πte^{4πt^{2}} + 8πtf(t)
$$

整理得一阶线性微分方程：

$$
f^{′}(t) - 8πtf(t) = 8πte^{4πt^{2}}
$$

积分因子为$μ(t) = e^{∫ −8πtdt} = e^{−4πt^{2}}$。两边乘以积分因子：

$$
e^{−4πt^{2}}f^{′}(t) - 8πte^{−4πt^{2}}f(t) = 8πt
$$

左边为$\\frac{d}{dt} (f(t)e^{−4πt^{2}})$，故：

$$
\\frac{d}{dt} (f(t)e^{−4πt^{2}}) = 8πt
$$

积分得：

$$
f(t)e^{−4πt^{2}} = ∫ 8πtdt = 4πt^{2} + C
$$

即：

$$
f(t) = e^{4πt^{2}}(4πt^{2} + C)
$$

由初始条件$f(0) = 1$，代入得：

$$
f(0) = e^{0}(0 + C) = C = 1
$$

所以$C = 1$，因此：

$$
f(t) = e^{4πt^{2}}(1 + 4πt^{2})
$$

验证可知满足原方程。
', 9, 'Mogullzr', '2026-01-29 14:10:32', 9, 'Mogullzr', '2026-01-29 14:10:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1114');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1114');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1114');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1115, '1997年考研数学卷3第17题', '简单', '考研数学1997年卷3真题', '设$A$为$n$阶非奇异矩阵，$α$为$n$维列向量，$b$为常数．记分块矩阵
$$
P = \\left( \\begin{array}{cc}
E & 0 \\\\
−α^{T}A^{∗} & ∣A∣ \\\\
\\end{array} \\right) ,  Q = \\left( \\begin{array}{cc}
A & α \\\\
α^{T} & b \\\\
\\end{array} \\right) ,
$$
其中$A^{∗}$是矩阵$A$的伴随矩阵，$E$为$n$阶单位矩阵．(1) 计算并化简$PQ$；(2) 证明：矩阵$Q$可逆的充分必要条件是$α^{T}A^{−1}α \\neq b$．', '[]', '(1)

$$
PQ = \\left( \\begin{array}{cc}
A & α \\\\
0 & ∣A∣(b - α^{T}A^{−1}α) \\\\
\\end{array} \\right)
$$

(2) 矩阵$Q$可逆的充分必要条件是$α^{T}A^{−1}α \\neq b$。
', '(1) 计算$PQ$：
设


$$
P = \\left( \\begin{array}{cc}
E & 0 \\\\
−α^{T}A^{∗} & ∣A∣ \\\\
\\end{array} \\right) ,  Q = \\left( \\begin{array}{cc}
A & α \\\\
α^{T} & b \\\\
\\end{array} \\right) .
$$

则


$$
\\begin{array}{cccccc}
PQ & \\begin{array}{cc}
E ⋅ A + 0 ⋅ α^{T} & E ⋅ α + 0 ⋅ b \\\\
(−α^{T}A^{∗})A + ∣A∣α^{T} & (−α^{T}A^{∗})α + ∣A∣b \\\\
\\end{array} &  &  &  &  \\\\
 &  &  &  & A & α \\\\
 &  & E ⋅ A + 0 ⋅ α^{T} & E ⋅ α + 0 ⋅ b &  &  \\\\
 &  &  &  & −α^{T}A^{∗}A + ∣A∣α^{T} & −α^{T}A^{∗}α + ∣A∣b \\\\
 &  & (−α^{T}A^{∗})A + ∣A∣α^{T} & (−α^{T}A^{∗})α + ∣A∣b &  &  \\\\
 & \\begin{array}{cc}
A & α \\\\
−α^{T}A^{∗}A + ∣A∣α^{T} & −α^{T}A^{∗}α + ∣A∣b \\\\
\\end{array} &  &  &  &  \\\\
\\end{array}
$$

由于$A$非奇异，有$A^{∗}A = ∣A∣E$，代入得


$$
−α^{T}A^{∗}A + ∣A∣α^{T} = −α^{T}∣A∣E + ∣A∣α^{T} = −∣A∣α^{T} + ∣A∣α^{T} = 0.
$$

又$A^{∗} = ∣A∣A^{−1}$，所以


$$
−α^{T}A^{∗}α + ∣A∣b = −α^{T}∣A∣A^{−1}α + ∣A∣b = ∣A∣(−α^{T}A^{−1}α + b) = ∣A∣(b - α^{T}A^{−1}α).
$$

因此，


$$
PQ = \\left( \\begin{array}{cc}
A & α \\\\
0 & ∣A∣(b - α^{T}A^{−1}α) \\\\
\\end{array} \\right) .
$$

(2) 证明$Q$可逆的充分必要条件是$α^{T}A^{−1}α \\neq b$：
首先，$P$可逆，因为$P$是分块下三角矩阵，其行列式$∣P∣ = ∣E∣ ⋅ ∣A∣ = ∣A∣ \\neq 0$。由于$P$可逆，$Q$可逆当且仅当$PQ$可逆。
由 (1) 知


$$
PQ = \\left( \\begin{array}{cc}
A & α \\\\
0 & d \\\\
\\end{array} \\right) ,  d = ∣A∣(b - α^{T}A^{−1}α).
$$

$PQ$是分块上三角矩阵，其行列式


$$
∣PQ∣ = ∣A∣ ⋅ d = ∣A∣ ⋅ ∣A∣(b - α^{T}A^{−1}α) = ∣A∣^{2}(b - α^{T}A^{−1}α).
$$

由于$∣A∣ \\neq 0$，$∣PQ∣ \\neq 0$当且仅当$b - α^{T}A^{−1}α \\neq 0$，即$α^{T}A^{−1}α \\neq b$。
因此，$Q$可逆当且仅当$α^{T}A^{−1}α \\neq b$。
', 9, 'Mogullzr', '2026-01-29 14:10:33', 9, 'Mogullzr', '2026-01-29 14:10:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1115');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1115');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1115');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1116, '1997年考研数学卷3第18题', '简单', '考研数学1997年卷3真题', '设三阶实对称矩阵$A$的特征值是$1$,$2$,$3$；矩阵$A$的属于特征值$1$,$2$的特征向量分别是$α_{1} = (−1, −1, 1)T, α_{2} = (1, −2, −1)T$．(1) 求$A$的属于特征值$3$的特征向量；(2) 求矩阵$A$．', '[]', '
(1)$A$的属于特征值$3$的特征向量为$(1, 0, 1)T$。
(2) 矩阵$A$为$\\left( \\begin{array}{ccc}
\\frac{13}{6} & −\\frac{1}{3} & \\frac{5}{6} \\\\
−\\frac{1}{3} & \\frac{5}{3} & \\frac{1}{3} \\\\
\\frac{5}{6} & \\frac{1}{3} & \\frac{13}{6} \\\\
\\end{array} \\right)$。
', '
(1) 由于$A$是实对称矩阵，属于不同特征值的特征向量相互正交。设属于特征值$3$的特征向量为$α_{3} = (x, y, z)T$，则$α_{3}$与$α_{1} = (−1, −1, 1)T$和$α_{2} = (1, −2, −1)T$正交，即


$$
α_{3} ⋅ α_{1} = −x - y + z = 0,  α_{3} ⋅ α_{2} = x - 2y - z = 0.
$$

解方程组得$y = 0$，$z = x$，因此$α_{3} = (1, 0, 1)T$（取非零标量倍）。
(2) 已知特征值$λ_{1} = 1$，$λ_{2} = 2$，$λ_{3} = 3$对应的单位特征向量为


$$
u_{1} = \\frac{α_{1}}{∥α_{1}∥} = (−\\frac{1}{\\sqrt{3}}, −\\frac{1}{\\sqrt{3}}, \\frac{1}{\\sqrt{3}})^{T}
$$



$$
u_{2} = \\frac{α_{2}}{∥α_{2}∥} = (\\frac{1}{\\sqrt{6}}, −\\frac{2}{\\sqrt{6}}, −\\frac{1}{\\sqrt{6}})^{T}
$$



$$
u_{3} = \\frac{α_{3}}{∥α_{3}∥} = (\\frac{1}{\\sqrt{2}}, 0, \\frac{1}{\\sqrt{2}})^{T}
$$

利用谱分解$A = λ_{1}u_{1}u_{1}^{T} + λ_{2}u_{2}u_{2}^{T} + λ_{3}u_{3}u_{3}^{T}$，计算外积


$$
u_{1}u_{1}^{T} = \\left( \\begin{array}{ccc}
\\frac{1}{3} & \\frac{1}{3} & −\\frac{1}{3} \\\\
\\frac{1}{3} & \\frac{1}{3} & −\\frac{1}{3} \\\\
−\\frac{1}{3} & −\\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array} \\right) ,  u_{2}u_{2}^{T} = \\left( \\begin{array}{ccc}
\\frac{1}{6} & −\\frac{1}{3} & −\\frac{1}{6} \\\\
−\\frac{1}{3} & \\frac{2}{3} & \\frac{1}{3} \\\\
−\\frac{1}{6} & \\frac{1}{3} & \\frac{1}{6} \\\\
\\end{array} \\right) ,  u_{3}u_{3}^{T} = \\left( \\begin{array}{ccc}
\\frac{1}{2} & 0 & \\frac{1}{2} \\\\
0 & 0 & 0 \\\\
\\frac{1}{2} & 0 & \\frac{1}{2} \\\\
\\end{array} \\right) .
$$

乘以特征值后求和


$$
A = 1 ⋅ u_{1}u_{1}^{T} + 2 ⋅ u_{2}u_{2}^{T} + 3 ⋅ u_{3}u_{3}^{T} = \\left( \\begin{array}{ccc}
\\frac{13}{6} & −\\frac{1}{3} & \\frac{5}{6} \\\\
−\\frac{1}{3} & \\frac{5}{3} & \\frac{1}{3} \\\\
\\frac{5}{6} & \\frac{1}{3} & \\frac{13}{6} \\\\
\\end{array} \\right) .
$$

验证：$Aα_{1} = α_{1}$，$Aα_{2} = 2α_{2}$，$Aα_{3} = 3α_{3}$，符合要求。
', 9, 'Mogullzr', '2026-01-29 14:10:33', 9, 'Mogullzr', '2026-01-29 14:10:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1116');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1116');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1117, '1997年考研数学卷3第19题', '简单', '考研数学1997年卷3真题', '假设随机变量$X$的绝对值不大于$1$；$P\\{X = −1\\} = \\frac{1}{8}, P\\{X = 1\\} = \\frac{1}{4}$；
在事件$\\{−1 < X < 1\\}$出现的条件下，$X$在$(−1, 1)$内的任一子区间上取值的条件概率与该子区间长度成正比．
试求$X$的分布函数$F(x) = P\\{X ≤ x\\}$．', '[]', '

$$
F(x) = \\begin{cases} 0 & x < −1 \\\\ \\frac{5x + 7}{16} & - 1 ≤ x < 1 \\\\ 1 & x ≥ 1 \\end{cases}
$$

', '由$X$的绝对值不大于 1，可得：当$x < −1$时，$F(x) = P\\{X ≤ x\\} = 0$；当$x ≥ 1$时，$F(x) = P\\{X ≤ x\\} = 1$。又$P\\{X = −1\\} = \\frac{1}{8}$，$P\\{X = 1\\} = \\frac{1}{4}$，则


$$
P\\{−1 < x < 1\\} = 1 - P\\{X = −1\\} - P\\{X = 1\\} = 1 - \\frac{1}{8} - \\frac{1}{4} = \\frac{5}{8}
$$

由题意$X$在$(−1, 1)$内的任一子区间上取值的条件概率与该子区间长度成正比，那么当$X$的值属于$(−1, 1)$的条件下，事件$\\{−1 < X ≤ x\\}$的条件概率为：


$$
P\\{−1 < X ≤ x∣ - 1 < X < 1\\} = k\\frac{x - (−1)}{1 - (−1)} = k\\frac{x + 1}{2},
$$


其中$k$为比例正常数。又$P\\{−1 < X < 1∣ - 1 < X < 1\\} = 1$，而


$$
P\\{−1 < X < 1∣ - 1 < X < 1\\} = k\\frac{1 + 1}{2} = k
$$

所以$k = 1$，故


$$
P\\{−1 < X ≤ x∣ - 1 < X < 1\\} = \\frac{x + 1}{2}
$$

当$−1 < x < 1$时，


$$
\\{−1 < X ≤ x\\} = \\{−1 < X ≤ x\\} ∩ \\{−1 < X < 1\\}
$$

所以


$$
P\\{−1 < X ≤ x\\} = P\\{−1 < X ≤ x, −1 < X < 1\\}
$$

由条件概率公式，有


$$
\\begin{array}{cc}
P\\{−1 < X ≤ x\\} & = P\\{−1 < X ≤ x,  −1 < X < 1\\} \\\\
 & = P\\{−1 < X ≤ x ∣ −1 < X < 1\\} P\\{−1 < X < 1\\} \\\\
 & = \\frac{x + 1}{2} × \\frac{5}{8} = \\frac{5x + 5}{16}, \\\\
\\end{array}
$$



$$
F(x) = P\\{X ≤ x\\} = P\\{X ≤ −1\\} + P\\{−1 < X ≤ x\\}, 而
$$



$$
P\\{X ≤ −1\\} = P\\{X = −1\\} + P\\{X < −1\\} = \\frac{1}{8} + 0 = \\frac{1}{8}
$$

所以

$$
F(x) = P\\{X ≤ x\\} = P\\{X ≤ −1\\} + P\\{−1 < X ≤ x\\} = \\frac{1}{8} + \\frac{5x + 5}{16} = \\frac{5x + 7}{16},
$$

故所求的$X$的分布函数为

$$
F(x) = \\begin{cases} 0 & x < −1; \\\\ \\frac{5x + 7}{16} & −1 ≤ x < 1; \\\\ 1 & x ≥ 1. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:33', 9, 'Mogullzr', '2026-01-29 14:10:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1117');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1117');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1118, '1997年考研数学卷3第20题', '简单', '考研数学1997年卷3真题', '游客乘电梯从底层到电视塔顶层观光；电梯于每个整点的第$5$分钟、$25$分钟和$55$分钟从底层起行．
假设一游客在早晨八点的第$X$分钟到达底层候梯处，且$X$在$\\lbrack 0, 60 \\rbrack$上均匀分布，求该游客等候时间的数学期望．', '[]', '

$$
\\frac{35}{3}
$$

', '
已知$X$在$\\lbrack 0, 60 \\rbrack$上均匀分布，则其密度函数为：

$$
f(x) = \\begin{cases} \\frac{1}{60} & 0 ≤ x ≤ 60 \\\\ 0 & 其他. \\end{cases}
$$

设$Y$表示游客等候电梯的时间（单位：分钟），则

$$
Y = g(X) = \\begin{cases} 5 - X & 0 ≤ X ≤ 5 \\\\ 25 - X & 5 < X ≤ 25 \\\\ 55 - X & 25 < X ≤ 55 \\\\ 65 - X & 55 < X ≤ 60. \\end{cases}
$$

由随机变量函数期望的定义，有

$$
\\begin{array}{cc}
EY & = \\int_{−∞}^{+∞} g(x)f(x) dx = \\frac{1}{60} \\int_{0}^{60} g(x) dx \\\\
 & = \\frac{1}{60}  \\lbrack \\int_{0}^{5}(5 - x) dx + \\int_{5}^{25}(25 - x) dx + \\int_{25}^{55}(55 - x) dx + \\int_{55}^{60}(65 - x) dx \\rbrack  \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:34', 9, 'Mogullzr', '2026-01-29 14:10:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1118');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1118');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1118');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1119, '1997年考研数学卷3第21题', '简单', '考研数学1997年卷3真题', '两台同样自动记录仪，每台无故障工作的时间服从参数为$5$的指数分布；
首先开动其中一台，当其发生故障时停用而另一台自行开动．
试求两台记录仪无故障工作的总时间$T$的概率密度$f(t)$、数学期望和方差．', '[]', '
概率密度函数：$f(t) = 25te^{−5t},  t ≥ 0$
数学期望：$E \\lbrack T \\rbrack  = \\frac{2}{5}$
方差：$Var(T) = \\frac{2}{25}$
', '
设$X_{1}$和$X_{2}$表示先后开动的记录仪无故障工作的时间，则两台记录仪无故障工作的总时间为$T = X_{1} + X_{2}$。由于每台无故障工作的时间都服从参数为 5 的指数分布，则$X_{1}$和$X_{2}$的概率密度函数为

$$
f(x) = \\begin{cases} 5e^{−5x} & x > 0; \\\\ 0 & x ≤ 0. \\end{cases}
$$

因为两台仪器是独立的，则其无故障工作的时间显然也是相互独立的，即$X_{1}$和$X_{2}$独立，由卷积公式：当$t > 0$时，$T$的概率密度为

$$
f(t) = \\int_{−∞}^{+∞} f_{1}(x)f_{2}(t - x)dx = 25 \\int_{0}^{t} e^{−5x}e^{−5(t-x)}dx = 25te^{−5t};
$$

当$t ≤ 0$时，$f(t) = 0$，即

$$
f(t) = \\begin{cases} 25te^{−5t} & t > 0; \\\\ 0 & t ≤ 0. \\end{cases}
$$

由指数分布的期望和方差的结论，有

$$
EX_{1} = EX_{2} = \\frac{1}{λ} = \\frac{1}{5},  DX_{1} = DX_{2} = \\frac{1}{λ^{2}} = \\frac{1}{25}.
$$

由期望的性质有

$$
ET = E(X_{1} + X_{2}) = EX_{1} + EX_{2} = \\frac{1}{5} + \\frac{1}{5} = \\frac{2}{5}.
$$

由独立随机变量方差的性质有

$$
DT = D(X_{1} + X_{2}) = DX_{1} + DX_{2} = \\frac{1}{25} + \\frac{1}{25} = \\frac{2}{25}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:34', 9, 'Mogullzr', '2026-01-29 14:10:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1119');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1119');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1120, '1997年考研数学卷4第1题', '', '考研数学1997年卷4真题', '/problems/other/1099', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1121, '1997年考研数学卷4第2题', '简单', '考研数学1997年卷4真题', '设$f(x) = \\frac{1}{1+x^{2}} + x^{3} \\int_{0}^{1} f(x)dx$，则$\\int_{0}^{1} f(x)dx =$______．', '[]', '$\\frac{π}{3}$
', '
设$A = \\int_{0}^{1} f(x) dx$。由题设方程


$$
f(x) = \\frac{1}{1 + x^{2}} + x^{3} \\int_{0}^{1} f(x) dx = \\frac{1}{1 + x^{2}} + Ax^{3},
$$

两边在区间$\\lbrack 0, 1 \\rbrack$上积分得


$$
A = \\int_{0}^{1} f(x) dx = \\int_{0}^{1} \\frac{1}{1 + x^{2}} dx + A \\int_{0}^{1} x^{3} dx.
$$

计算积分：


$$
\\int_{0}^{1} \\frac{1}{1 + x^{2}} dx = arctan x​_{0}^{1} = \\frac{π}{4},  \\int_{0}^{1} x^{3} dx = \\frac{1}{4}.
$$

代入得


$$
A = \\frac{π}{4} + \\frac{A}{4}.
$$

解方程：


$$
A - \\frac{A}{4} = \\frac{π}{4},  \\frac{3A}{4} = \\frac{π}{4},  A = \\frac{π}{3}.
$$

因此，


$$
\\int_{0}^{1} f(x) dx = \\frac{π}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1121');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1121');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1121');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1122, '1997年考研数学卷4第3题', '简单', '考研数学1997年卷4真题', '设$n$阶矩阵$A = \\left( \\begin{array}{cccccc}
0 & 1 & 1 &  & 1 & 1 \\\\
 &  &  & ⋯ &  &  \\\\
1 & 0 & 1 &  & 1 & 1 \\\\
 &  &  & ⋯ &  &  \\\\
1 & 1 & 0 &  & 1 & 1 \\\\
 &  &  & ⋯ &  &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 &  &  & ⋱ &  &  \\\\
1 & 1 & 1 &  & 0 & 1 \\\\
 &  &  & ⋯ &  &  \\\\
\\end{array} \\right)$，则$∣A∣ =$______．', '[]', '$(−1)n−1(n - 1)$
', '设$J$为$n$阶全 1 矩阵，则$A = J - I$，其中$I$是单位矩阵。
矩阵$J$的特征值为$n$（单重）和$0$（$n - 1$重），因此$A$的特征值为$n - 1$和$−1$（$n - 1$重）。
行列式为特征值的乘积，故

$$
∣A∣ = (n - 1) ⋅ (−1)n−1.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1122');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '1122');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1123, '1997年考研数学卷4第4题', '简单', '考研数学1997年卷4真题', '设$A$,$B$是任意两个随机事件，则$P\\{(\\bar{A} + B)(A + B)(\\bar{A} + \\bar{B})(A + \\bar{B})\\} =$______．', '[]', '0
', '
考虑事件$E = (\\bar{A} ∪ B) ∩ (A ∪ B) ∩ (\\bar{A} ∪ \\bar{B}) ∩ (A ∪ \\bar{B})$。
首先，简化$(\\bar{A} ∪ B) ∩ (A ∪ B)$。通过集合运算，有


$$
(\\bar{A} ∪ B) ∩ (A ∪ B) = B
$$

类似地，简化$(\\bar{A} ∪ \\bar{B}) ∩ (A ∪ \\bar{B})$，得


$$
(\\bar{A} ∪ \\bar{B}) ∩ (A ∪ \\bar{B}) = \\bar{B}
$$

因此，


$$
E = B ∩ \\bar{B} = ∅
$$

即$E$是不可能事件。
故$P(E) = 0$。
', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1123');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1123');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1124, '1997年考研数学卷4第5题', '简单', '考研数学1997年卷4真题', '设随机变量$X$服从参数为$(2, p)$的二项分布，随机变量$Y$服从参数为$(3, p)$的二项分布．
若$P\\{X ≥ 1\\} = \\frac{5}{9}$，则$P\\{Y ≥ 1\\} =$______．', '[]', '$\\frac{19}{27}$
', '
由$X ∼ B(2, p)$和$P\\{X ≥ 1\\} = \\frac{5}{9}$，得


$$
P\\{X = 0\\} = 1 - \\frac{5}{9} = \\frac{4}{9}.
$$

由于$P\\{X = 0\\} = (1 - p)2$，所以


$$
(1 - p)2 = \\frac{4}{9},
$$

解得$1 - p = \\frac{2}{3}$（取正值），故


$$
p = \\frac{1}{3}.
$$

对于$Y ∼ B(3, p)$，有


$$
P\\{Y ≥ 1\\} = 1 - P\\{Y = 0\\},
$$

其中


$$
P\\{Y = 0\\} = (1 - p)3 = (\\frac{2}{3})^{3} = \\frac{8}{27}.
$$

因此，


$$
P\\{Y ≥ 1\\} = 1 - \\frac{8}{27} = \\frac{19}{27}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1124');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1124');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1125, '1997年考研数学卷4第6题', '简单', '考研数学1997年卷4真题', '设$f(x)$,$ϕ(x)$在点$x = 0$的某邻域内连续，且当$x → 0$时，$f(x)$是$ϕ(x)$的高阶无穷小，
则当$x → 0$时，$\\int_{0}^{x} f(t) \\sin tdt$是$\\int_{0}^{x} tϕ(t)dt$的', '[''低阶无穷小．'', ''高阶无穷小．'', ''同阶但不等价的无穷小．'', ''等价无穷小．'']', "['B']", '给定当$x → 0$时，$f(x)$是$ϕ(x)$的高阶无穷小，即$\\lim_{x→0} \\frac{f(x)}{ϕ(x)} = 0$。需要比较$\\int_{0}^{x} f(t) \\sin t dt$和$\\int_{0}^{x} tϕ(t) dt$的阶数。考虑极限：
$$
\\lim_{x→0} \\frac{\\int_{0}^{x} f(t) \\sin t dt}{\\int_{0}^{x} tϕ(t) dt}
$$
由于分子和分母在$x → 0$时均趋于 0，且被积函数连续，应用洛必达法则：
$$
\\lim_{x→0} \\frac{\\frac{d}{dx} \\int_{0}^{x} f(t) \\sin t dt}{\\frac{d}{dx} \\int_{0}^{x} tϕ(t) dt} = \\lim_{x→0} \\frac{f(x) \\sin x}{xϕ(x)}
$$
其中，$\\frac{\\sin x}{x} → 1$当$x → 0$，因此：
$$
\\lim_{x→0} \\frac{f(x) \\sin x}{xϕ(x)} = \\lim_{x→0} \\frac{f(x)}{ϕ(x)} ⋅ \\frac{\\sin x}{x} = \\lim_{x→0} \\frac{f(x)}{ϕ(x)} ⋅ 1 = 0
$$
故$\\int_{0}^{x} f(t) \\sin t dt$是$\\int_{0}^{x} tϕ(t) dt$的高阶无穷小。', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1125');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1125');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1125');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1126, '1997年考研数学卷4第7题', '', '考研数学1997年卷4真题', '/problems/other/1105', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1127, '1997年考研数学卷4第8题', '', '考研数学1997年卷4真题', '/problems/other/1106', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1128, '1997年考研数学卷4第9题', '简单', '考研数学1997年卷4真题', '非齐次线性方程组$AX = b$中未知量个数为$n$，方程个数为$m$，系数矩阵$A$的秩为$r$，则', '[''$r = m$时，方程组$AX = b$有解．'', ''$r = n$时，方程组$AX = b$有唯一解．'', ''$m = n$时，方程组$AX = b$有唯一解．'', ''$r < n$时，方程组$AX = b$有无穷多解．'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:10:36', 9, 'Mogullzr', '2026-01-29 14:10:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1128');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1128');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1129, '1997年考研数学卷4第10题', '简单', '考研数学1997年卷4真题', '设$X$是一随机变量，$EX = μ$,$DX = σ^{2}$（$μ$,$σ > 0$是常数），则对任意常数$c$，必有', '[''$E(X - c)2 = E(X^{2}) - c^{2}$．'', ''$E(X - c)2 = E(X - μ)2$．'', ''$E(X - c)2 < E(X - μ)2$．'', ''$E(X - c)2 ≥ E(X - μ)2$．'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:10:37', 9, 'Mogullzr', '2026-01-29 14:10:37', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1129');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1129');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1129');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1130, '1997年考研数学卷4第11题', '简单', '考研数学1997年卷4真题', '求极限$\\lim_{x→0}  \\lbrack \\frac{a}{x} - (\\frac{1}{x^{2}} - a^{2}) \\ln(1 + ax) \\rbrack$（$a \\neq 0$）．', '[]', '$\\frac{a^{2}}{2}$
', '考虑极限$L = \\lim_{x→0}  \\lbrack \\frac{a}{x} - (\\frac{1}{x^{2}} - a^{2}) \\ln(1 + ax) \\rbrack$，其中$a \\neq 0$。
使用泰勒展开$\\ln(1 + ax) = ax - \\frac{(ax)2}{2} + \\frac{(ax)3}{3} - \\frac{(ax)4}{4} + ⋯$，代入表达式：


$$
(\\frac{1}{x^{2}} - a^{2}) \\ln(1 + ax) = (\\frac{1}{x^{2}} - a^{2}) (ax - \\frac{a^{2}x^{2}}{2} + \\frac{a^{3}x^{3}}{3} - \\frac{a^{4}x^{4}}{4} + ⋯ )
$$

展开后：


$$
= \\frac{a}{x} - a^{3}x - \\frac{a^{2}}{2} + \\frac{a^{4}x^{2}}{2} + \\frac{a^{3}x}{3} - \\frac{a^{5}x^{3}}{3} - \\frac{a^{4}x^{2}}{4} + \\frac{a^{6}x^{4}}{4} + ⋯
$$

原表达式为：


$$
\\frac{a}{x} -  \\lbrack \\frac{a}{x} - a^{3}x - \\frac{a^{2}}{2} + \\frac{a^{4}x^{2}}{2} + \\frac{a^{3}x}{3} - \\frac{a^{5}x^{3}}{3} - \\frac{a^{4}x^{2}}{4} + \\frac{a^{6}x^{4}}{4} + ⋯  \\rbrack
$$

简化后：


$$
a^{3}x + \\frac{a^{2}}{2} - \\frac{a^{4}x^{2}}{2} - \\frac{a^{3}x}{3} + \\frac{a^{5}x^{3}}{3} + \\frac{a^{4}x^{2}}{4} - \\frac{a^{6}x^{4}}{4} + ⋯
$$

当$x → 0$时，所有含$x$的项趋近于零，仅剩常数项$\\frac{a^{2}}{2}$。因此极限为$\\frac{a^{2}}{2}$。
或者，令$t = ax$，则当$x → 0$时$t → 0$，原式化为：


$$
L = a^{2} \\lim_{t→0}  \\lbrack \\frac{1}{t} - (\\frac{1}{t^{2}} - 1) \\ln(1 + t) \\rbrack
$$

计算内极限：


$$
\\lim_{t→0}  \\lbrack \\frac{1}{t} - \\frac{1}{t^{2}} \\ln(1 + t) + \\ln(1 + t) \\rbrack
$$

利用$\\ln(1 + t) = t - \\frac{t^{2}}{2} + \\frac{t^{3}}{3} - ⋯$，有：


$$
\\frac{1}{t^{2}} \\ln(1 + t) = \\frac{1}{t} - \\frac{1}{2} + \\frac{t}{3} - ⋯
$$

所以：


$$
\\frac{1}{t} - \\frac{1}{t^{2}} \\ln(1 + t) = \\frac{1}{2} - \\frac{t}{3} + ⋯
$$

加上$\\ln(1 + t) = t - \\frac{t^{2}}{2} + ⋯$，得：


$$
(\\frac{1}{2} - \\frac{t}{3} + ⋯ ) + (t - \\frac{t^{2}}{2} + ⋯ ) = \\frac{1}{2} + \\frac{2}{3}t + ⋯
$$

当$t → 0$时，内极限为$\\frac{1}{2}$，故$L = a^{2} ⋅ \\frac{1}{2} = \\frac{a^{2}}{2}$。
两种方法均得极限为$\\frac{a^{2}}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:10:37', 9, 'Mogullzr', '2026-01-29 14:10:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1130');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1130');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1130');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1131, '1997年考研数学卷4第12题', '', '考研数学1997年卷4真题', '/problems/other/1110', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:37', 9, 'Mogullzr', '2026-01-29 14:10:37', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1132, '1997年考研数学卷4第13题', '简单', '考研数学1997年卷4真题', '假设某种商品的需求量$Q$是单价$p$（单位:元）的函数：$Q = 12000 - 80p$；
商品的总成本$C$是需求量$Q$的函数：$C = 25000 + 50Q$；
每单位商品需要纳税$2$元．试求使销售利润最大的商品单价和最大利润额．', '[]', '
商品单价为101元，最大利润额为167080元。
', '
利润函数为$L = pQ - C - 2Q$，其中$Q = 12000 - 80p$，$C = 25000 + 50Q$。
代入得：


$$
L = p(12000 - 80p) - (25000 + 50Q) - 2(12000 - 80p)
$$

简化后：


$$
L = −80p^{2} + 16160p - 649000
$$

这是一个二次函数，开口向下，最大值在顶点处。顶点坐标为$p = −\\frac{b}{2a} = −\\frac{16160}{2×(−80)} = 101$。
代入$p = 101$得最大利润：


$$
L = −80 × 101^{2} + 16160 × 101 - 649000 = 167080
$$

因此，商品单价为101元时，利润最大，最大利润额为167080元。
', 9, 'Mogullzr', '2026-01-29 14:10:37', 9, 'Mogullzr', '2026-01-29 14:10:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1132');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1132');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1132');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1133, '1997年考研数学卷4第14题', '简单', '考研数学1997年卷4真题', '求曲线$y = x^{2} - 2x$,$y = 0$,$x = 1$,$x = 3$所围成的平面图形的面积$S$，
并求该平面图形绕$y$轴旋转一周所得旋转体的体积$V$．', '[]', '
面积$S = 2$，体积$V = 9π$。
', '
求面积$S$：曲线$y = x^{2} - 2x$与$y = 0$（即$x$轴）以及直线$x = 1$、$x = 3$所围成的图形在区间$\\lbrack 1, 3 \\rbrack$上部分位于$x$轴下方。因此，面积需取绝对值积分：


$$
S = \\int_{1}^{3} ∣x^{2} - 2x∣ dx
$$

在区间$\\lbrack 1, 2 \\rbrack$上，$x^{2} - 2x < 0$，故$∣x^{2} - 2x∣ = 2x - x^{2}$；在区间$\\lbrack 2, 3 \\rbrack$上，$x^{2} - 2x > 0$，故$∣x^{2} - 2x∣ = x^{2} - 2x$。
于是：


$$
S = \\int_{1}^{2}(2x - x^{2}) dx + \\int_{2}^{3}(x^{2} - 2x) dx
$$

计算第一积分：


$$
\\int_{1}^{2}(2x - x^{2}) dx =  \\lbrack x^{2} - \\frac{x^{3}}{3} \\rbrack _{1}^{2} = (4 - \\frac{8}{3}) - (1 - \\frac{1}{3}) = \\frac{4}{3} - \\frac{2}{3} = \\frac{2}{3}
$$

计算第二积分：


$$
\\int_{2}^{3}(x^{2} - 2x) dx =  \\lbrack \\frac{x^{3}}{3} - x^{2} \\rbrack _{2}^{3} = (9 - 9) - (\\frac{8}{3} - 4) = 0 - (−\\frac{4}{3}) = \\frac{4}{3}
$$

所以：


$$
S = \\frac{2}{3} + \\frac{4}{3} = 2
$$

求体积$V$：该平面图形绕$y$轴旋转一周，使用柱壳法，体积公式为：


$$
V = 2π \\int_{1}^{3} x ⋅ ∣x^{2} - 2x∣ dx
$$

同样分段计算：


$$
V = 2π  \\lbrack \\int_{1}^{2} x(2x - x^{2}) dx + \\int_{2}^{3} x(x^{2} - 2x) dx \\rbrack
$$

计算第一积分：


$$
\\begin{array}{cc}
\\int_{1}^{2} x(2x - x^{2}) dx & = \\int_{1}^{2}(2x^{2} - x^{3}) dx \\\\
 & =  \\lbrack \\frac{2}{3}x^{3} - \\frac{1}{4}x^{4} \\rbrack _{1}^{2} \\\\
 & = (\\frac{16}{3} - 4) - (\\frac{2}{3} - \\frac{1}{4}) \\\\
 & = \\frac{11}{12} \\\\
\\end{array}
$$

计算第二积分：


$$
\\begin{array}{cc}
\\int_{2}^{3} x(x^{2} - 2x) dx & = \\int_{2}^{3}(x^{3} - 2x^{2}) dx \\\\
 & =  \\lbrack \\frac{1}{4}x^{4} - \\frac{2}{3}x^{3} \\rbrack _{2}^{3} \\\\
 & = (\\frac{81}{4} - 18) - (4 - \\frac{16}{3}) \\\\
 & = \\frac{9}{4} - (−\\frac{4}{3}) \\\\
 & = \\frac{43}{12} \\\\
\\end{array}
$$

所以：


$$
V = 2π (\\frac{11}{12} + \\frac{43}{12}) = 2π ⋅ \\frac{54}{12} = 2π ⋅ \\frac{9}{2} = 9π
$$

', 9, 'Mogullzr', '2026-01-29 14:10:37', 9, 'Mogullzr', '2026-01-29 14:10:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1133');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1133');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1133');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1134, '1997年考研数学卷4第15题', '简单', '考研数学1997年卷4真题', '设函数$f(x)$在$(−∞, +∞)$内连续，且$F(x) = \\int_{0}^{x}(x - 2t)f(t)dt$．试证：(1) 若$f(x)$为偶函数，则$F(x)$也是偶函数；(2) 若$f(x)$单调不增，则$F(x)$单调不减．', '[]', '见解析
', '
(Ⅰ) 令$t = −u$，有


$$
F(−x) = \\int_{0}^{−x}(−x - 2t)f(t)dt = − \\int_{0}^{x}(−x + 2u)f(−u)du
$$


即$F(x)$为偶函数。
(Ⅱ) 由积分中值定理，存在$ξ$介于 0 和$x$之间，使得


$$
F^{′}(x) = \\int_{0}^{x} f(t)dt - xf(x) = x \\lbrack f(ξ) - f(x) \\rbrack .
$$

由已知$f(x)$单调不减，可见
当$x > 0$时，$f(ξ) - f(x) ≥ 0$，故$F^{′}(x) ≥ 0$;
当$x = 0$时，显然$F^{′}(x) = 0$;
当$x < 0$时，$f(ξ) - f(x) ≤ 0$，故$F^{′}(x) ≥ 0$。
总之，当$x ∈ (−∞, +∞)$时，总有$F^{′}(x) ≥ 0$，从而$F(x)$单调不减。
', 9, 'Mogullzr', '2026-01-29 14:10:38', 9, 'Mogullzr', '2026-01-29 14:10:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1134');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1134');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1134');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1135, '1997年考研数学卷4第16题', '简单', '考研数学1997年卷4真题', '设$D$是以点$O(0, 0)$,$A(1, 2)$和$B(2, 1)$为顶点的三角形区域，求$\\iint_{D} xdxdy$．', '[]', '$\\frac{3}{2}$
', '三角形区域$D$的顶点为$O(0, 0)$、$A(1, 2)$、$B(2, 1)$，其边界由直线$OA : y = 2x$、$OB : y = \\frac{x}{2}$和$AB : y = −x + 3$围成。将积分区域按$x$方向分为两部分：
当$0 ≤ x ≤ 1$时，$y$的范围为$\\frac{x}{2} ≤ y ≤ 2x$；当$1 ≤ x ≤ 2$时，$y$的范围为$\\frac{x}{2} ≤ y ≤ −x + 3$。
则二重积分可表示为：

$$
\\iint_{D} x dx dy = \\int_{0}^{1} \\int_{x/2}^{2x} x dy dx + \\int_{1}^{2} \\int_{x/2}^{−x+3} x dy dx.
$$

分别计算两个积分：

$$
\\begin{array}{cc}
\\int_{0}^{1} \\int_{x/2}^{2x} x dy dx & = \\int_{0}^{1} x (2x - \\frac{x}{2}) dx = \\int_{0}^{1} \\frac{3x^{2}}{2}dx = \\frac{1}{2}, \\\\
\\int_{1}^{2} \\int_{x/2}^{−x+3} x dy dx & = \\int_{1}^{2} x (−x + 3 - \\frac{x}{2}) dx = \\int_{1}^{2} (−\\frac{3x^{2}}{2} + 3x) dx = 1. \\\\
\\end{array}
$$

因此，

$$
\\iint_{D} x dx dy = \\frac{1}{2} + 1 = \\frac{3}{2}.
$$

也可用质心坐标验证：三角形面积$\\frac{3}{2}$，质心横坐标$\\bar{x} = 1$，故积分值为$1 × \\frac{3}{2} = \\frac{3}{2}$。
最终结果为：

$$
\\frac{3}{2}​
$$

', 9, 'Mogullzr', '2026-01-29 14:10:38', 9, 'Mogullzr', '2026-01-29 14:10:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1135');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1135');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1135');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1136, '1997年考研数学卷4第17题', '', '考研数学1997年卷4真题', '/problems/other/1115', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:38', 9, 'Mogullzr', '2026-01-29 14:10:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1137, '1997年考研数学卷4第18题', '简单', '考研数学1997年卷4真题', '设矩阵$A$和$B$相似，且$A = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
2 & 4 & −2 \\\\
−3 & −3 & a \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & b \\\\
\\end{array} \\right)$，(1) 求$a$,$b$的值；(2) 求可逆矩阵$P$，使$P^{−1}AP = B$．', '[]', '
(1)$a = 5$,$b = 6$
(2) 可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 1 & 2 \\\\
1 & 1 & −3 \\\\
\\end{array} \\right)$。（$P$的取法不唯一，只要列向量是对应特征值的线性无关特征向量即可）
', '
矩阵$A$与$B$相似，则它们有相同的特征多项式。
(1) 求$a$,$b$的值
计算$A$的特征多项式：

$$
det(λI - A) = \\begin{vmatrix}
λ - 1 & 1 & −1\\\\
−2 & λ - 4 & 2\\\\
3 & 3 & λ - a
\\end{vmatrix} = λ^{3} - (a + 5)λ^{2} + (5a + 3)λ + (−6a + 6).
$$

$B$的特征多项式为：

$$
det(λI - B) = (λ - 2)2(λ - b) = λ^{3} - (b + 4)λ^{2} + (4b + 4)λ - 4b.
$$

比较系数得：

$$
\\begin{cases} a + 5 = b + 4 \\\\ 5a + 3 = 4b + 4 \\\\ −6a + 6 = −4b. \\end{cases}
$$

解得$a = 5$，$b = 6$。
因此，$a = 5​$，$b = 6​$。
(2) 求可逆矩阵$P$
当$a = 5$，$b = 6$时，

$$
A = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
2 & 4 & −2 \\\\
−3 & −3 & 5 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 6 \\\\
\\end{array} \\right) .
$$

求$A$的特征值与特征向量：
特征值$λ_{1} = 2$（二重），解$(A - 2I)x = 0$：

$$
A - 2I = \\left( \\begin{array}{ccc}
−1 & −1 & 1 \\\\
2 & 2 & −2 \\\\
−3 & −3 & 3 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

得基础解系：

$$
ξ_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) .
$$

特征值$λ_{2} = 6$，解$(A - 6I)x = 0$：

$$
A - 6I = \\left( \\begin{array}{ccc}
−5 & −1 & 1 \\\\
2 & −2 & −2 \\\\
−3 & −3 & −1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 0 & \\frac{1}{2} \\\\
0 & 1 & \\frac{3}{2} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

得基础解系：

$$
ξ_{3} = \\left( \\begin{array}{c}
−1 \\\\
2 \\\\
−3 \\\\
\\end{array} \\right) .
$$

取

$$
P = (ξ_{1}, ξ_{2}, ξ_{3}) = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 1 & 2 \\\\
1 & 1 & −3 \\\\
\\end{array} \\right) ,
$$

则$P$可逆，且满足$P^{−1}AP = B$。
因此，可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 1 & 2 \\\\
1 & 1 & −3 \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:10:38', 9, 'Mogullzr', '2026-01-29 14:10:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1137');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '1137');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1138, '1997年考研数学卷4第19题', '简单', '考研数学1997年卷4真题', '假设随机变量$X$的绝对值不大于$1$；$P\\{X = −1\\} = \\frac{1}{8}, P\\{X = 1\\} = \\frac{1}{4}$；
在事件$\\{−1 < X < 1\\}$出现的条件下，$X$在$(−1, 1)$内的任一子区间上取值的条件概率与该子区间长度成正比．
试求：(1)$X$的分布函数$F(x) = P\\{X ≤ x\\}$；(2)$X$取负值的概率$p$．', '[]', '
(1)$X$的分布函数为：


$$
F(x) = \\begin{cases} 0 & x < −1 \\\\ \\frac{5x+7}{16} & - 1 ≤ x < 1 \\\\ 1 & x ≥ 1 \\end{cases}
$$

(2)$X$取负值的概率$p = \\frac{7}{16}$。
', '
(1) 由$X$的绝对值不大于 1，可得：当$x < −1$时，$F(x) = P\\{X ≤ x\\} = 0$; 当$x ≥ 1$时，$F(x) = P\\{X ≤ x\\} = 1$。又$P\\{X = −1\\} = \\frac{1}{8}, P\\{X = 1\\} = \\frac{1}{4}$，则

$$
P\\{−1 < x < 1\\} = 1 - P\\{X = −1\\} - P\\{X = 1\\} = 1 - \\frac{1}{8} - \\frac{1}{4} = \\frac{5}{8}.
$$

由题意$X$在$(−1, 1)$内的任一子区间上取值的条件概率与该子区间长度成正比，那么当$X$的值属于$(−1, 1)$的条件下，事件$\\{−1 < X ≤ x\\}$的条件概率为：

$$
P\\{−1 < X ≤ x∣ - 1 < X < 1\\} = k\\frac{x - (−1)}{1 - (−1)} = k\\frac{x + 1}{2},
$$

其中$k$为比例正常数。又$P\\{−1 < X < 1∣ - 1 < X < 1\\} = 1$，而

$$
P\\{−1 < X < 1∣ - 1 < X < 1\\} = k\\frac{1 + 1}{2} = k,
$$

所以$k = 1$，故

$$
P\\{−1 < X ≤ x∣ - 1 < X < 1\\} = \\frac{x + 1}{2}.
$$

当$−1 < x < 1$时，$\\{−1 < X ≤ x\\} = \\{−1 < X ≤ x\\} ∩ \\{−1 < X < 1\\}$，所以

$$
P\\{−1 < X ≤ x\\} = P\\{−1 < X ≤ x, −1 < X < 1\\}.
$$

由条件概率公式，有

$$
P\\{−1 < X ≤ x\\} = P\\{−1 < X ≤ x, −1 < X < 1\\}
$$



$$
= P\\{−1 < X ≤ x∣ - 1 < X < 1\\}P\\{−1 < X < 1\\}
$$



$$
= \\frac{x + 1}{2} × \\frac{5}{8} = \\frac{5x + 5}{16},
$$



$$
F(x) = P\\{X ≤ x\\} = P\\{X ≤ −1\\} + P\\{−1 < X ≤ x\\},
$$

而

$$
P\\{X ≤ −1\\} = P\\{X = −1\\} + P\\{X < −1\\} = \\frac{1}{8} + 0 = \\frac{1}{8},
$$

所以

$$
F(x) = P\\{X ≤ x\\} = P\\{X ≤ −1\\} + P\\{−1 < X ≤ x\\} = \\frac{1}{8} + \\frac{5x + 5}{16} = \\frac{5x + 7}{16},
$$

故所求的$X$的分布函数为

$$
F(x) = \\begin{cases} 0 & x < −1; \\\\ \\frac{5x+7}{16} & −1 ≤ x < 1; \\\\ 1 & x ≥ 1. \\end{cases}
$$

(II)$X$取负值的概率$p = P\\{X < 0\\} = F(0) - P\\{X = 0\\} = F(0) = \\frac{7}{16}$.
', 9, 'Mogullzr', '2026-01-29 14:10:38', 9, 'Mogullzr', '2026-01-29 14:10:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1138');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1138');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1139, '1997年考研数学卷4第20题', '简单', '考研数学1997年卷4真题', '假设随机变量$Y$服从参数为$λ = 1$的指数分布，随机变量$X_{k} = \\begin{cases} 0 & Y ≤ k \\\\ 1 & Y > k \\end{cases}$（$k = 1, 2$），求：(1)$X_{1}$和$X_{2}$的联合概率分布；(2)$E(X_{1} + X_{2})$．', '[]', '
(1)$X_{1}$和$X_{2}$的联合概率分布为：
$P(X_{1} = 0, X_{2} = 0) = 1 - \\frac{1}{e}$，
$P(X_{1} = 0, X_{2} = 1) = 0$，
$P(X_{1} = 1, X_{2} = 0) = \\frac{1}{e} - \\frac{1}{e^{2}}$，
$P(X_{1} = 1, X_{2} = 1) = \\frac{1}{e^{2}}$。
(2)$E(X_{1} + X_{2}) = \\frac{1}{e} + \\frac{1}{e^{2}}$。
', '
随机变量$Y$服从参数$λ = 1$的指数分布，其概率密度函数为$f_{Y}(y) = e^{−y}$，$y ≥ 0$。
$X_{k}$的定义为：当$Y ≤ k$时$X_{k} = 0$，当$Y > k$时$X_{k} = 1$（$k = 1, 2$）。
(1) 联合概率分布的计算基于$Y$的取值范围：
$P(X_{1} = 0, X_{2} = 0) = P(Y ≤ 1) = \\int_{0}^{1} e^{−y} dy = 1 - e^{−1} = 1 - \\frac{1}{e}$。$P(X_{1} = 0, X_{2} = 1) = P(Y ≤ 1且Y > 2) = 0$，因为事件不可能发生。$P(X_{1} = 1, X_{2} = 0) = P(1 < Y ≤ 2) = \\int_{1}^{2} e^{−y} dy = e^{−1} - e^{−2} = \\frac{1}{e} - \\frac{1}{e^{2}}$。$P(X_{1} = 1, X_{2} = 1) = P(Y > 2) = \\int_{2}^{∞} e^{−y} dy = e^{−2} = \\frac{1}{e^{2}}$。
验证概率之和为 1：

$$
(1 - \\frac{1}{e}) + 0 + (\\frac{1}{e} - \\frac{1}{e^{2}}) + \\frac{1}{e^{2}} = 1
$$

(2) 计算$E(X_{1} + X_{2})$：
由于期望的线性性质，$E(X_{1} + X_{2}) = E(X_{1}) + E(X_{2})$。
$X_{1}$和$X_{2}$均为伯努利随机变量：
$E(X_{1}) = P(X_{1} = 1) = P(Y > 1) = e^{−1} = \\frac{1}{e}$。$E(X_{2}) = P(X_{2} = 1) = P(Y > 2) = e^{−2} = \\frac{1}{e^{2}}$。
因此，

$$
E(X_{1} + X_{2}) = \\frac{1}{e} + \\frac{1}{e^{2}}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:39', 9, 'Mogullzr', '2026-01-29 14:10:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1139');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1139');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1139');
