INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (951, '1996年考研数学卷1第1题', '简单', '考研数学1996年卷1真题', '设$\\lim_{x→∞} (\\frac{x+2a}{x-a})^{x} = 8$，则$a =$______．', '[]', '$\\ln 2$
', '考虑极限$\\lim_{x→∞} (\\frac{x+2a}{x-a})^{x}$。将分式改写为$\\frac{x+2a}{x-a} = 1 + \\frac{3a}{x-a}$，则原极限化为$\\lim_{x→∞} (1 + \\frac{3a}{x-a})^{x}$。令$y = x - a$，当$x → ∞$时$y → ∞$，有$x = y + a$，因此极限变为$\\lim_{y→∞} (1 + \\frac{3a}{y})^{y+a} = \\lim_{y→∞} (1 + \\frac{3a}{y})^{y} ⋅ (1 + \\frac{3a}{y})^{a}$。其中$(1 + \\frac{3a}{y})^{y} → e^{3a}$，且$(1 + \\frac{3a}{y})^{a} → 1$，故极限值为$e^{3a}$。由已知$e^{3a} = 8$，得$3a = \\ln 8$，即$a = \\frac{\\ln 8}{3} = \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:09:49', 9, 'Mogullzr', '2026-01-29 14:09:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '951');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '951');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '951');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (952, '1996年考研数学卷1第2题', '简单', '考研数学1996年卷1真题', '设一平面经过原点及点$(6, −3, 2)$，且与平面$4x - y + 2z = 8$垂直，则此平面方程为 ______．', '[]', '
$2x + 2y - 3z = 0$
', '
设所求平面的法向量为$n = (A, B, C)$。由于该平面经过原点$(0, 0, 0)$和点$(6, −3, 2)$，则向量$v = (6, −3, 2)$在平面内，故$n ⋅ v = 0$，即：


$$
6A - 3B + 2C = 0
$$

又因为该平面与已知平面$4x - y + 2z = 8$垂直，已知平面的法向量为$(4, −1, 2)$，故$n$与该法向量垂直，即：


$$
4A - B + 2C = 0
$$

解方程组：


$$
\\begin{cases} 6A - 3B + 2C = 0 \\\\ 4A - B + 2C = 0 \\end{cases}
$$

两式相减得：


$$
(6A - 3B + 2C) - (4A - B + 2C) = 0  ⟹  2A - 2B = 0  ⟹  A = B
$$

代入第二式：


$$
4A - A + 2C = 0  ⟹  3A + 2C = 0  ⟹  C = −\\frac{3}{2}A
$$

取$A = 2$，则$B = 2$，$C = −3$，法向量为$(2, 2, −3)$。
平面过原点，方程为：


$$
2x + 2y - 3z = 0
$$

验证：过点$(6, −3, 2)$时，$2 × 6 + 2 × (−3) - 3 × 2 = 12 - 6 - 6 = 0$，满足；与已知平面法向量点积为$2 × 4 + 2 × (−1) + (−3) × 2 = 8 - 2 - 6 = 0$，垂直条件满足。
', 9, 'Mogullzr', '2026-01-29 14:09:49', 9, 'Mogullzr', '2026-01-29 14:09:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '952');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '952');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '952');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (953, '1996年考研数学卷1第3题', '简单', '考研数学1996年卷1真题', '微分方程$y^{′′} - 2y^{′} + 2y = e^{x}$的通解为 ______．', '[]', '
$y = e^{x}(C_{1} \\cos x + C_{2} \\sin x) + e^{x}$
', '
给定微分方程$y^{′′} - 2y^{′} + 2y = e^{x}$，首先求解齐次方程$y^{′′} - 2y^{′} + 2y = 0$。特征方程为$r^{2} - 2r + 2 = 0$，解得特征根$r = 1 ± i$，因此齐次通解为$y_{h} = e^{x}(C_{1} \\cos x + C_{2} \\sin x)$。
其次，求非齐次方程的特解。非齐次项为$e^{x}$，由于$e^{x}$不是齐次解，设特解形式为$y_{p} = Ae^{x}$。代入原方程：$y_{p}^{′} = Ae^{x}$，$y_{p}^{′′} = Ae^{x}$，得$Ae^{x} - 2Ae^{x} + 2Ae^{x} = Ae^{x} = e^{x}$，解得$A = 1$，故特解为$y_{p} = e^{x}$。
因此，原方程的通解为齐次通解与特解之和：$y = y_{h} + y_{p} = e^{x}(C_{1} \\cos x + C_{2} \\sin x) + e^{x}$。
', 9, 'Mogullzr', '2026-01-29 14:09:49', 9, 'Mogullzr', '2026-01-29 14:09:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '953');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '953');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '953');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (954, '1996年考研数学卷1第4题', '简单', '考研数学1996年卷1真题', '函数$u = \\ln(x + \\sqrt{y^{2} + z^{2}})$在$A(1, 0, 1)$点处沿$A$点指向$B(3, −2, 2)$点方向的方向导数为 ______．', '[]', '$\\frac{1}{2}$
', '函数$u = \\ln(x + \\sqrt{y^{2} + z^{2}})$在点$A(1, 0, 1)$处沿方向$l$（从$A$指向$B(3, −2, 2)$）的方向导数计算公式为$D_{l}u = ∇u ⋅ l^{0}$，其中$∇u$是函数在点$A$的梯度，$l^{0}$是方向单位向量。
首先，计算梯度$∇u = (\\frac{∂u}{∂x}, \\frac{∂u}{∂y}, \\frac{∂u}{∂z})$。
令$r = \\sqrt{y^{2} + z^{2}}$，则$u = \\ln(x + r)$。
偏导数为：


$$
\\frac{∂u}{∂x} = \\frac{1}{x + r},  \\frac{∂u}{∂y} = \\frac{y}{r(x + r)},  \\frac{∂u}{∂z} = \\frac{z}{r(x + r)}
$$

在点$A(1, 0, 1)$处，$r = \\sqrt{0^{2} + 1^{2}} = 1$，代入得：


$$
\\frac{∂u}{∂x} = \\frac{1}{1 + 1} = \\frac{1}{2},  \\frac{∂u}{∂y} = \\frac{0}{1 ⋅ (1 + 1)} = 0,  \\frac{∂u}{∂z} = \\frac{1}{1 ⋅ (1 + 1)} = \\frac{1}{2}
$$

所以，梯度$∇u = (\\frac{1}{2}, 0, \\frac{1}{2})$。
其次，计算方向单位向量$l^{0}$。
向量$AB = B - A = (3 - 1, −2 - 0, 2 - 1) = (2, −2, 1)$，模长为$∣AB∣ = \\sqrt{2^{2} + (−2)2 + 1^{2}} = 3$。
单位向量$l^{0} = \\frac{AB}{∣AB∣} = (\\frac{2}{3}, −\\frac{2}{3}, \\frac{1}{3})$.
最后，方向导数为：


$$
D_{l}u = (\\frac{1}{2}, 0, \\frac{1}{2}) ⋅ (\\frac{2}{3}, −\\frac{2}{3}, \\frac{1}{3}) = \\frac{1}{2} ⋅ \\frac{2}{3} + 0 ⋅ (−\\frac{2}{3}) + \\frac{1}{2} ⋅ \\frac{1}{3} = \\frac{1}{3} + \\frac{1}{6} = \\frac{1}{2}
$$

因此，方向导数为$\\frac{1}{2}$.
', 9, 'Mogullzr', '2026-01-29 14:09:49', 9, 'Mogullzr', '2026-01-29 14:09:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '954');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (955, '1996年考研数学卷1第5题', '简单', '考研数学1996年卷1真题', '设$A$是$4 × 3$矩阵，且$A$的秩$r(A) = 2$，而$B = \\left( \\begin{array}{ccc}
1 & 0 & 2 \\\\
0 & 2 & 0 \\\\
−1 & 0 & 3 \\\\
\\end{array} \\right)$，则$r(AB) =$______．', '[]', '$2$
', '
已知$A$是$4 × 3$矩阵，且$r(A) = 2$。
矩阵$B = \\left( \\begin{array}{ccc}
1 & 0 & 2 \\\\
0 & 2 & 0 \\\\
−1 & 0 & 3 \\\\
\\end{array} \\right)$是$3 × 3$矩阵，计算其行列式：


$$
det(B) = 1 ⋅ (2 ⋅ 3 - 0 ⋅ 0) - 0 ⋅ (0 ⋅ 3 - 0 ⋅ (−1)) + 2 ⋅ (0 ⋅ 0 - 2 ⋅ (−1)) = 6 + 4 = 10 \\neq 0
$$

因此$B$可逆，且$r(B) = 3$。
由于$B$可逆，矩阵乘法$AB$不改变$A$的秩，故$r(AB) = r(A) = 2$。
因此，$r(AB) = 2$。
', 9, 'Mogullzr', '2026-01-29 14:09:49', 9, 'Mogullzr', '2026-01-29 14:09:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '955');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '955');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '955');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (956, '1996年考研数学卷1第6题', '简单', '考研数学1996年卷1真题', '已知$\\frac{(x+ay)dx+ydy}{(x+y)2}$为某函数的全微分，则$a$等于', '[''-1．'', ''0．'', ''1．'', ''2．'']', "['D']", '给定微分形式$\\frac{(x+ay)dx+ydy}{(x+y)2}$为某函数的全微分，即存在函数$u(x, y)$使得该形式为其全微分。设$P(x, y) = \\frac{x+ay}{(x+y)2}$，$Q(x, y) = \\frac{y}{(x+y)2}$。全微分的必要条件为$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$。计算$\\frac{∂P}{∂y}$：
$$
\\frac{∂P}{∂y} = \\frac{a(x + y)2 - (x + ay) ⋅ 2(x + y)}{(x + y)4} = \\frac{(a - 2)x - ay}{(x + y)3}.
$$
计算$\\frac{∂Q}{∂x}$：
$$
\\frac{∂Q}{∂x} = \\frac{−2y(x + y)}{(x + y)4} = \\frac{−2y}{(x + y)3}.
$$
令两者相等：
$$
\\frac{(a - 2)x - ay}{(x + y)3} = \\frac{−2y}{(x + y)3}.
$$
消去分母得：
$$
(a - 2)x - ay = −2y.
$$
整理为：
$$
(a - 2)x + (−a + 2)y = 0.
$$
该式对任意$x, y$成立，因此系数必须为零：
$$
a - 2 = 0 且  - a + 2 = 0,
$$
解得$a = 2$。验证：当$a = 2$时，微分形式为$\\frac{(x+2y)dx+ydy}{(x+y)2}$，可求得原函数$u(x, y) = \\ln ∣x + y∣ - \\frac{y}{x+y} + C$，满足全微分条件。故$a = 2$正确。', 9, 'Mogullzr', '2026-01-29 14:09:49', 9, 'Mogullzr', '2026-01-29 14:09:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '956');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '956');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '956');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (957, '1996年考研数学卷1第7题', '简单', '考研数学1996年卷1真题', '设$f(x)$有二阶连续导数，且$f^{′}(0) = 0$,$\\lim_{x→0} = \\frac{f^{′′}(x)}{∣x∣} = 1$，则', '[''$f(0)$是$f(x)$的极大值．'', ''$f(0)$是$f(x)$的极小值．'', ''$(0, f(0))$是曲线$y = f(x)$的拐点．'', ''$f(0)$不是$f(x)$的极值，$(0, f(0))$也不是曲线$y = f(x)$的拐点．'']', "['B']", '由条件$\\lim_{x→0} \\frac{f^{′′}(x)}{∣x∣} = 1$可知，当$x → 0$时，$f^{′′}(x) ∼ ∣x∣$。若$f^{′′}(0) \\neq 0$，则$\\frac{f^{′′}(x)}{∣x∣} → ∞$，与极限为 1 矛盾，故$f^{′′}(0) = 0$。对于$x \\neq 0$，有$\\frac{f^{′′}(x)}{∣x∣} > 0$在足够小的邻域内成立，因此$f^{′′}(x) > 0$对于$x \\neq 0$。这表明在$x = 0$附近，$f^{′′}(x) ≥ 0$且不变号，故$(0, f(0))$不是拐点。又$f^{′}(0) = 0$，且$f^{′′}(x) > 0$对于$x \\neq 0$，意味着$f^{′}(x)$在$x = 0$处递增，即当$x < 0$时$f^{′}(x) < 0$，当$x > 0$时$f^{′}(x) > 0$，因此$f(0)$是极小值。故正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:09:50', 9, 'Mogullzr', '2026-01-29 14:09:50', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '957');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '957');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '957');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (958, '1996年考研数学卷1第8题', '简单', '考研数学1996年卷1真题', '设$a_{n} > 0$（$n = 1, 2, ⋯$），且$\\sum_{n=1}^{∞} a_{n}$收敛，
常数$λ ∈ (0, \\frac{π}{2})$，
则级数$\\sum_{n=1}^{∞}(−1)n (n \\tan \\frac{λ}{n}) a_{2n}$', '[''绝对收敛．'', ''条件收敛．'', ''发散．'', ''收敛性与$λ$有关．'']', "['A']", '
由于$a_{n} > 0$且$\\sum_{n=1}^{∞} a_{n}$收敛，可知$\\sum_{n=1}^{∞} a_{2n}$也收敛。这是因为部分和满足

$$
\\sum_{n=1}^{N} a_{2n} ≤ \\sum_{n=1}^{2N} a_{n},
$$
而后者收敛。考虑级数

$$
\\sum_{n=1}^{∞}(−1)n (n \\tan \\frac{λ}{n}) a_{2n}.
$$
其绝对值构成的级数为

$$
\\sum_{n=1}^{∞} ​n \\tan \\frac{λ}{n}​ a_{2n}.
$$
当$n → ∞$时，$\\frac{λ}{n} → 0$，此时

$$
\\tan \\frac{λ}{n} ∼ \\frac{λ}{n},
$$
因此

$$
n \\tan \\frac{λ}{n} ∼ λ.
$$
由于$λ ∈ (0, \\frac{π}{2})$，存在常数$M > 0$，使得对于充分大的$n$，有

$$
​n \\tan \\frac{λ}{n}​ ≤ M.
$$
于是

$$
​n \\tan \\frac{λ}{n}​ a_{2n} ≤ Ma_{2n}.
$$
由比较判别法可知，$\\sum_{n=1}^{∞} ​n \\tan \\frac{λ}{n}​ a_{2n}$收敛，因此原级数绝对收敛。收敛性与$λ$无关。', 9, 'Mogullzr', '2026-01-29 14:09:50', 9, 'Mogullzr', '2026-01-29 14:09:50', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '958');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '958');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '958');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (959, '1996年考研数学卷1第9题', '简单', '考研数学1996年卷1真题', '设$f(x)$有连续的导数，$f(0) = 0$,$f^{′}(0) \\neq 0$,$F(x) = \\int_{0}^{x}(x^{2} - t^{2})f(t)dt$，且当$x → 0$时，$F^{′}(x)$与$x^{k}$是同阶无穷小，则$k$等于', '[''$1$．'', ''$2$．'', ''$3$．'', ''$4$．'']', "['C']", '
给定

$$
F(x) = \\int_{0}^{x}(x^{2} - t^{2})f(t) dt,
$$
其中$f(x)$具有连续导数，且$f(0) = 0$，$f^{′}(0) \\neq 0$。首先，利用莱布尼茨法则求$F^{′}(x)$：

$$
F^{′}(x) = \\frac{d}{dx} \\int_{0}^{x}(x^{2} - t^{2})f(t) dt.
$$
由莱布尼茨法则，

$$
\\frac{d}{dx} \\int_{0}^{x} g(x, t) dt = g(x, x) ⋅ 1 - g(x, 0) ⋅ 0 + \\int_{0}^{x} \\frac{∂}{∂x}g(x, t) dt,
$$
代入$g(x, t) = (x^{2} - t^{2})f(t)$，得

$$
F^{′}(x) =  \\lbrack (x^{2} - x^{2})f(x) \\rbrack  -  \\lbrack (x^{2} - 0^{2})f(0) \\rbrack  ⋅ 0 + \\int_{0}^{x} \\frac{∂}{∂x} \\lbrack (x^{2} - t^{2})f(t) \\rbrack  dt.
$$
由于$f(0) = 0$，前两项均为 0。而

$$
\\frac{∂}{∂x} \\lbrack (x^{2} - t^{2})f(t) \\rbrack  = 2xf(t),
$$
因此

$$
F^{′}(x) = \\int_{0}^{x} 2xf(t) dt = 2x \\int_{0}^{x} f(t) dt.
$$
接下来分析当$x → 0$时$\\int_{0}^{x} f(t) dt$的行为。
由$f(0) = 0$和$f^{′}(0) \\neq 0$，可得

$$
f(t) = f^{′}(0)t + o(t).
$$
于是

$$
\\int_{0}^{x} f(t) dt = \\int_{0}^{x}  \\lbrack f^{′}(0)t + o(t) \\rbrack  dt = f^{′}(0) ⋅ \\frac{x^{2}}{2} + o(x^{2}).
$$
代入$F^{′}(x)$得

$$
F^{′}(x) = 2x  \\lbrack f^{′}(0) ⋅ \\frac{x^{2}}{2} + o(x^{2}) \\rbrack  = f^{′}(0)x^{3} + o(x^{3}).
$$
由于$f^{′}(0) \\neq 0$，$F^{′}(x)$与$x^{3}$同阶无穷小，故

$$
k = 3.
$$
', 9, 'Mogullzr', '2026-01-29 14:09:50', 9, 'Mogullzr', '2026-01-29 14:09:50', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '959');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '959');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '959');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (960, '1996年考研数学卷1第10题', '简单', '考研数学1996年卷1真题', '四阶行列式$\\begin{vmatrix}
a_{1} & 0 & 0 & b_{1}\\\\
0 & a_{2} & b_{2} & 0\\\\
0 & b_{3} & a_{3} & 0\\\\
b_{4} & 0 & 0 & a_{4}
\\end{vmatrix}$的值等于', '[''$a_{1}a_{2}a_{3}a_{4} - b_{1}b_{2}b_{3}b_{4}$．'', ''$a_{1}a_{2}a_{3}a_{4} + b_{1}b_{2}b_{3}b_{4}$．'', ''$(a_{1}a_{2} - b_{1}b_{2})(a_{3}a_{4} - b_{3}b_{4})$．'', ''$(a_{2}a_{3} - b_{2}b_{3})(a_{1}a_{4} - b_{1}b_{4})$．'']', "['D']", '计算四阶行列式$\\begin{vmatrix}
a_{1} & 0 & 0 & b_{1}\\\\
0 & a_{2} & b_{2} & 0\\\\
0 & b_{3} & a_{3} & 0\\\\
b_{4} & 0 & 0 & a_{4}
\\end{vmatrix}$的值。沿第一行展开，行列式$D = a_{1} ⋅ C_{11} + b_{1} ⋅ C_{14}$，其中$C_{11}$和$C_{14}$是代数余子式。
计算$C_{11} = \\begin{vmatrix}
a_{2} & b_{2} & 0\\\\
b_{3} & a_{3} & 0\\\\
0 & 0 & a_{4}
\\end{vmatrix} = a_{4}(a_{2}a_{3} - b_{2}b_{3})$。
计算$C_{14} = − \\begin{vmatrix}
0 & a_{2} & b_{2}\\\\
0 & b_{3} & a_{3}\\\\
b_{4} & 0 & 0
\\end{vmatrix} = −b_{4}(a_{2}a_{3} - b_{2}b_{3})$。
代入得$D = a_{1} ⋅ a_{4}(a_{2}a_{3} - b_{2}b_{3}) + b_{1} ⋅  \\lbrack −b_{4}(a_{2}a_{3} - b_{2}b_{3}) \\rbrack  = (a_{2}a_{3} - b_{2}b_{3})(a_{1}a_{4} - b_{1}b_{4})$。
这与选项 D 一致。', 9, 'Mogullzr', '2026-01-29 14:09:50', 9, 'Mogullzr', '2026-01-29 14:09:50', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '960');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '960');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (961, '1996年考研数学卷1第11题', '简单', '考研数学1996年卷1真题', '求心形线$r = a(1 + \\cos θ)$的全长，其中$a > 0$是常数．', '[]', '$8a$
', '
首先，利用极坐标下的弧长公式：


$$
L = ∫ \\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}} dθ
$$

其中$r = a(1 + \\cos θ)$，则$\\frac{dr}{dθ} = −a \\sin θ$。
计算：


$$
r^{2} + (\\frac{dr}{dθ})^{2} = a^{2}(1 + \\cos θ)2 + a^{2} \\sin^{2} θ = a^{2} \\lbrack (1 + \\cos θ)2 + \\sin^{2} θ \\rbrack
$$

展开并简化：


$$
(1 + \\cos θ)2 + \\sin^{2} θ = 1 + 2 \\cos θ + \\cos^{2} θ + \\sin^{2} θ = 2 + 2 \\cos θ
$$

所以，


$$
r^{2} + (\\frac{dr}{dθ})^{2} = 2a^{2}(1 + \\cos θ)
$$

于是，


$$
\\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}} = \\sqrt{2a^{2}(1 + \\cos θ)} = a\\sqrt{2}\\sqrt{1 + \\cos θ}
$$

利用三角恒等式$1 + \\cos θ = 2 \\cos^{2} \\frac{θ}{2}$，有


$$
\\sqrt{1 + \\cos θ} = \\sqrt{2} ​\\cos \\frac{θ}{2}​
$$

因此，


$$
\\sqrt{r^{2} + (\\frac{dr}{dθ})^{2}} = a\\sqrt{2} ⋅ \\sqrt{2} ​\\cos \\frac{θ}{2}​ = 2a ​\\cos \\frac{θ}{2}​
$$

弧长积分为：


$$
L = \\int_{0}^{2π} 2a ​\\cos \\frac{θ}{2}​  dθ
$$

令$u = \\frac{θ}{2}$，则$dθ = 2du$，积分限变为$u = 0$到$u = π$：


$$
L = 2a \\int_{0}^{2π} ​\\cos \\frac{θ}{2}​  dθ = 2a \\int_{0}^{π} ∣\\cos u∣ ⋅ 2du = 4a \\int_{0}^{π} ∣\\cos u∣  du
$$

计算$\\int_{0}^{π} ∣\\cos u∣  du$：
在区间$\\lbrack 0, \\frac{π}{2} \\rbrack$上，$\\cos u ≥ 0$，故$∣\\cos u∣ = \\cos u$；
在区间$\\lbrack \\frac{π}{2}, π \\rbrack$上，$\\cos u ≤ 0$，故$∣\\cos u∣ = − \\cos u$。
所以，


$$
\\int_{0}^{π} ∣\\cos u∣  du = \\int_{0}^{π/2} \\cos u du + \\int_{π/2}^{π}(− \\cos u) du =  \\lbrack \\sin u \\rbrack 0π/2​ +  \\lbrack − \\sin u \\rbrack π/2π​ = (1 - 0) + (−(0 - 1)) = 1 + 1 = 2
$$

因此，


$$
L = 4a × 2 = 8a
$$

故心形线的全长为$8a$。
', 9, 'Mogullzr', '2026-01-29 14:09:50', 9, 'Mogullzr', '2026-01-29 14:09:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '961');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '961');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '961');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (962, '1996年考研数学卷1第12题', '简单', '考研数学1996年卷1真题', '设$x_{1} = 10$，$x_{n+1} = \\sqrt{6 + x_{n}}$（$n = 1, 2, ⋯$），
试证数列$\\{x_{n}\\}$极限存在，并求此极限．', '[]', '极限为$3$。
', '给定$x_{1} = 10$，$x_{n+1} = \\sqrt{6 + x_{n}}$。首先证明数列有下界：假设$x_{n} > 3$，则$x_{n+1} = \\sqrt{6 + x_{n}} > \\sqrt{6 + 3} = 3$。由于$x_{1} = 10 > 3$，由数学归纳法知所有$x_{n} > 3$，故数列有下界$3$。
其次证明数列单调递减：考虑函数$f(x) = \\sqrt{6 + x} - x$，其导数为$f^{′}(x) = \\frac{1}{2\\sqrt{6+x}} - 1$。当$x > 3$时，$\\sqrt{6 + x} > 3$，故$f^{′}(x) < 0$，即$f(x)$单调递减。又$f(3) = 0$，所以当$x > 3$时，$f(x) < 0$，即$\\sqrt{6 + x} - x < 0$，因此$x_{n+1} < x_{n}$，数列单调递减。
由单调有界定理，数列收敛。设极限为$L$，则$L = \\sqrt{6 + L}$，即$L^{2} - L - 6 = 0$，解得$L = 3$或$L = −2$。由于$x_{n} > 3$，故$L = 3$。
', 9, 'Mogullzr', '2026-01-29 14:09:51', 9, 'Mogullzr', '2026-01-29 14:09:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '962');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '962');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1072', '962');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (963, '1996年考研数学卷1第13题', '简单', '考研数学1996年卷1真题', '计算曲面积分$\\iint_{S}(2x + z)dydz + zdxdy,$其中$S$为有向曲面$z = x^{2} + y^{2}$（$0 ≤ z ≤ 1$），其法向量与$z$轴正向的夹角为锐角．', '[]', '$−\\frac{π}{2}$
', '
方法一：投影到平面$xOy$上计算，则有


$$
I = \\iint_{S}(2x + z)dydz + zdxdy = \\iint_{D_{xy}}  \\lbrack (2x + z) (−\\frac{∂z}{∂x}) + (x^{2} + y^{2}) \\rbrack  dxdy,
$$

其中$z = x^{2} + y^{2},  D_{xy} : x^{2} + y^{2} ≤ 1$。把$\\frac{∂z}{∂x} = 2x$代入得


$$
I = \\iint_{D_{xy}} −4x^{2}dxdy - \\iint_{D_{xy}} 2x(x^{2} + y^{2})dxdy + \\iint_{D_{xy}}(x^{2} + y^{2})dxdy.
$$

由对称性得


$$
\\iint_{D_{xy}} 2x(x^{2} + y^{2})dxdy = 0,  \\iint_{D_{xy}} 4x^{2}dxdy = 2 \\iint_{D_{xy}}(x^{2} + y^{2})dxdy.
$$

所以由极坐标变换有


$$
I = − \\iint_{D_{xy}}(x^{2} + y^{2})dxdy = − \\int_{0}^{2π} dθ \\int_{0}^{1} r^{3}dr = −2π  \\lbrack \\frac{1}{4}r^{4} \\rbrack _{0}^{1} = −\\frac{π}{2}.
$$


方法二：添加辅助面$S_{i} : z = 1 (x^{2} + y^{2} ≤ 1)$，法方向朝下，则


$$
\\iint_{S_{i}}(2x + z)dydz + zdxdy = \\iint_{S_{i}} dxdy = − \\iint_{D} 1dxdy = −π,
$$

其中$D$是$S_{i}$在平面$xy$的投影区域：$x^{2} + y^{2} ≤ 1$。由高斯公式有


$$
\\iint_{S∪S_{i}}(2x + z)dydz + zdxdy = −3 \\iint_{Ω} dV = −3 \\int_{0}^{1} dz \\iint_{D(z)} dxdy = −3 \\int_{0}^{1} πzdz = −\\frac{3π}{2}.
$$

其中$D(z)$是圆域：$x^{2} + y^{2} ≤ z$，面积为$πz$。因此


$$
I = −\\frac{3}{2}π - \\iint_{S_{i}}(2x + z)dydz + zdxdy = −\\frac{3}{2}π - (−π) = −\\frac{π}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:51', 9, 'Mogullzr', '2026-01-29 14:09:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '963');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '963');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '963');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (964, '1996年考研数学卷1第14题', '简单', '考研数学1996年卷1真题', '设变换$\\begin{cases} u = x - 2y \\\\ v = x + ay \\end{cases}$可把方程
$$
6\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂x∂y} - \\frac{∂^{2}z}{∂y^{2}} = 0
$$
化简为$\\frac{∂^{2}z}{∂u∂v} = 0$,
求常数$a$，其中$z = z(x, y)$有二阶连续的偏导数．', '[]', '$3$
', '给定变换$u = x - 2y$，$v = x + ay$，将偏微分方程$6\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂x∂y} - \\frac{∂^{2}z}{∂y^{2}} = 0$化简为$\\frac{∂^{2}z}{∂u∂v} = 0$。
首先，计算一阶偏导数：

$$
\\frac{∂z}{∂x} = \\frac{∂z}{∂u}\\frac{∂u}{∂x} + \\frac{∂z}{∂v}\\frac{∂v}{∂x} = \\frac{∂z}{∂u} + \\frac{∂z}{∂v},
$$



$$
\\frac{∂z}{∂y} = \\frac{∂z}{∂u}\\frac{∂u}{∂y} + \\frac{∂z}{∂v}\\frac{∂v}{∂y} = −2\\frac{∂z}{∂u} + a\\frac{∂z}{∂v}.
$$

接着，计算二阶偏导数：

$$
\\frac{∂^{2}z}{∂x^{2}} = \\frac{∂}{∂x} (\\frac{∂z}{∂u} + \\frac{∂z}{∂v}) = \\frac{∂^{2}z}{∂u^{2}} + 2\\frac{∂^{2}z}{∂u∂v} + \\frac{∂^{2}z}{∂v^{2}},
$$



$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂z}{∂u} + \\frac{∂z}{∂v}) = −2\\frac{∂^{2}z}{∂u^{2}} + (a - 2)\\frac{∂^{2}z}{∂u∂v} + a\\frac{∂^{2}z}{∂v^{2}},
$$



$$
\\frac{∂^{2}z}{∂y^{2}} = \\frac{∂}{∂y} (−2\\frac{∂z}{∂u} + a\\frac{∂z}{∂v}) = 4\\frac{∂^{2}z}{∂u^{2}} - 4a\\frac{∂^{2}z}{∂u∂v} + a^{2}\\frac{∂^{2}z}{∂v^{2}}.
$$

将上述二阶偏导数代入原方程：

$$
6 (\\frac{∂^{2}z}{∂u^{2}} + 2\\frac{∂^{2}z}{∂u∂v} + \\frac{∂^{2}z}{∂v^{2}}) + (−2\\frac{∂^{2}z}{∂u^{2}} + (a - 2)\\frac{∂^{2}z}{∂u∂v} + a\\frac{∂^{2}z}{∂v^{2}}) - (4\\frac{∂^{2}z}{∂u^{2}} - 4a\\frac{∂^{2}z}{∂u∂v} + a^{2}\\frac{∂^{2}z}{∂v^{2}}) = 0.
$$

合并同类项：
$\\frac{∂^{2}z}{∂u^{2}}$的系数：$6 - 2 - 4 = 0$，$\\frac{∂^{2}z}{∂u∂v}$的系数：$6 × 2 + (a - 2) + 4a = 12 + a - 2 + 4a = 10 + 5a$，$\\frac{∂^{2}z}{∂v^{2}}$的系数：$6 + a - a^{2}$。
方程化为：

$$
(10 + 5a)\\frac{∂^{2}z}{∂u∂v} + (6 + a - a^{2})\\frac{∂^{2}z}{∂v^{2}} = 0.
$$

要求化简为$\\frac{∂^{2}z}{∂u∂v} = 0$，则需$\\frac{∂^{2}z}{∂v^{2}}$的系数为零且$\\frac{∂^{2}z}{∂u∂v}$的系数不为零：

$$
6 + a - a^{2} = 0,
$$

即$a^{2} - a - 6 = 0$，解得$a = 3$或$a = −2$。
当$a = −2$时，$\\frac{∂^{2}z}{∂u∂v}$的系数$10 + 5 × (−2) = 0$，方程恒成立，但变换退化（$u = v$），不满足化简要求。当$a = 3$时，系数$10 + 5 × 3 = 25 \\neq 0$，方程化为$25\\frac{∂^{2}z}{∂u∂v} = 0$，即$\\frac{∂^{2}z}{∂u∂v} = 0$，符合要求。
故常数$a = 3$。
', 9, 'Mogullzr', '2026-01-29 14:09:51', 9, 'Mogullzr', '2026-01-29 14:09:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '964');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '964');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '964');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (965, '1996年考研数学卷1第15题', '简单', '考研数学1996年卷1真题', '求级数$\\sum_{n=2}^{∞} \\frac{1}{(n^{2}-1)2^{n}}$的和．', '[]', '

$$
\\frac{5}{8} - \\frac{3}{4} \\ln 2
$$

', '考虑级数$\\sum_{n=2}^{∞} \\frac{1}{(n^{2}-1)2^{n}}$。首先，对分母进行分解：$n^{2} - 1 = (n - 1)(n + 1)$，因此有：

$$
\\frac{1}{(n^{2} - 1)2^{n}} = \\frac{1}{(n - 1)(n + 1)2^{n}}
$$

使用部分分式分解：

$$
\\frac{1}{(n - 1)(n + 1)} = \\frac{1}{2} (\\frac{1}{n - 1} - \\frac{1}{n + 1})
$$

代入级数得：

$$
\\sum_{n=2}^{∞} \\frac{1}{(n^{2} - 1)2^{n}} = \\frac{1}{2} \\sum_{n=2}^{∞} (\\frac{1}{n - 1} - \\frac{1}{n + 1}) \\frac{1}{2^{n}}
$$

分别处理两个求和部分。对于$\\sum_{n=2}^{∞} \\frac{1}{n-1} ⋅ \\frac{1}{2^{n}}$，令$k = n - 1$，则：

$$
\\sum_{n=2}^{∞} \\frac{1}{n - 1} ⋅ \\frac{1}{2^{n}} = \\sum_{k=1}^{∞} \\frac{1}{k} ⋅ \\frac{1}{2^{k+1}} = \\frac{1}{2} \\sum_{k=1}^{∞} \\frac{1}{k} ⋅ \\frac{1}{2^{k}}
$$

对于$\\sum_{n=2}^{∞} \\frac{1}{n+1} ⋅ \\frac{1}{2^{n}}$，令$m = n + 1$，则：

$$
\\sum_{n=2}^{∞} \\frac{1}{n + 1} ⋅ \\frac{1}{2^{n}} = \\sum_{m=3}^{∞} \\frac{1}{m} ⋅ \\frac{1}{2^{m-1}} = 2 \\sum_{m=3}^{∞} \\frac{1}{m} ⋅ \\frac{1}{2^{m}}
$$

代入级数：

$$
S = \\frac{1}{2}  \\lbrack \\frac{1}{2} \\sum_{k=1}^{∞} \\frac{1}{k} ⋅ \\frac{1}{2^{k}} - 2 \\sum_{m=3}^{∞} \\frac{1}{m} ⋅ \\frac{1}{2^{m}} \\rbrack
$$

利用已知级数$\\sum_{n=1}^{∞} \\frac{x^{n}}{n} = − \\ln(1 - x)$对于$∣x∣ < 1$，取$x = \\frac{1}{2}$，有：

$$
\\sum_{n=1}^{∞} \\frac{1}{n} ⋅ \\frac{1}{2^{n}} = − \\ln (1 - \\frac{1}{2}) = \\ln 2
$$

因此，

$$
\\sum_{m=3}^{∞} \\frac{1}{m} ⋅ \\frac{1}{2^{m}} = \\sum_{n=1}^{∞} \\frac{1}{n} ⋅ \\frac{1}{2^{n}} - \\frac{1}{1} ⋅ \\frac{1}{2^{1}} - \\frac{1}{2} ⋅ \\frac{1}{2^{2}} = \\ln 2 - \\frac{1}{2} - \\frac{1}{8}
$$

代入$S$：

$$
S = \\frac{1}{2}  \\lbrack \\frac{1}{2} \\ln 2 - 2 (\\ln 2 - \\frac{1}{2} - \\frac{1}{8}) \\rbrack  = \\frac{1}{2}  \\lbrack \\frac{1}{2} \\ln 2 - 2 \\ln 2 + 1 + \\frac{1}{4} \\rbrack  = \\frac{1}{2}  \\lbrack −\\frac{3}{2} \\ln 2 + \\frac{5}{4} \\rbrack  = −\\frac{3}{4} \\ln 2 + \\frac{5}{8}
$$

故级数的和为$\\frac{5}{8} - \\frac{3}{4} \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:09:51', 9, 'Mogullzr', '2026-01-29 14:09:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '965');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '965');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '965');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (966, '1996年考研数学卷1第16题', '简单', '考研数学1996年卷1真题', '设对任意$x > 0$，曲线$y = f(x)$上点$(x, f(x))$处的切线在$y$轴上的截距等于$\\frac{1}{x} \\int_{0}^{x} f(t)dt$，求$f(x)$的一般表达式．', '[]', '
$f(x) = C_{1} + C_{2} \\ln x$，其中$C_{1}$和$C_{2}$为任意常数。
', '
设曲线$y = f(x)$在点$(x, f(x))$处的切线斜率为$f^{′}(x)$，则切线方程为$y - f(x) = f^{′}(x)(X - x)$。令$X = 0$，得切线在$y$轴上的截距为$f(x) - xf^{′}(x)$。
根据题意，该截距等于$\\frac{1}{x} \\int_{0}^{x} f(t) dt$，即：


$$
f(x) - xf^{′}(x) = \\frac{1}{x} \\int_{0}^{x} f(t) dt
$$

两边乘以$x$：


$$
xf(x) - x^{2}f^{′}(x) = \\int_{0}^{x} f(t) dt
$$

令$g(x) = \\int_{0}^{x} f(t) dt$，则$g^{′}(x) = f(x)$，$g^{′′}(x) = f^{′}(x)$。代入上式：


$$
xg^{′}(x) - x^{2}g^{′′}(x) = g(x)
$$

整理得：


$$
x^{2}g^{′′}(x) - xg^{′}(x) + g(x) = 0
$$

该方程为欧拉方程。假设$g(x) = x^{r}$，代入得特征方程：


$$
r(r - 1) - r + 1 = 0
$$

即$r^{2} - 2r + 1 = 0$，解得$r = 1$（重根）。
因此，通解为$g(x) = C_{1}x + C_{2}x \\ln x$，其中$C_{1}, C_{2}$为常数。
由$f(x) = g^{′}(x)$，求导得：


$$
f(x) = C_{1} + C_{2}(1 + \\ln x) = (C_{1} + C_{2}) + C_{2} \\ln x
$$

令$C_{1} + C_{2} = A$，$C_{2} = B$，则$f(x) = A + B \\ln x$。
验证：代入原方程，左右两边相等，故$f(x) = A + B \\ln x$为一般表达式，其中$A, B$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:09:52', 9, 'Mogullzr', '2026-01-29 14:09:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '966');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '966');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '966');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (967, '1996年考研数学卷1第17题', '简单', '考研数学1996年卷1真题', '设$f(x)$在$\\lbrack 0, 1 \\rbrack$上具有二阶导数，且满足条件$∣f(x)∣ ≤ a$,$∣f^{′′}(x)∣ ≤ b$，其中$a, b$都是非负常数，$c$是$(0, 1)$内任一点，证明$∣f^{′}(c)∣ ≤ 2a + \\frac{b}{2}$．', '[]', '
$∣f^{′}(c)∣ ≤ 2a + \\frac{b}{2}$
', '
考虑在点$c$处对$f(0)$和$f(1)$进行泰勒展开：


$$
f(0) = f(c) + f^{′}(c)(0 - c) + \\frac{f^{′′}(ξ_{1})}{2}(0 - c)2,  ξ_{1} ∈ (0, c)
$$



$$
f(1) = f(c) + f^{′}(c)(1 - c) + \\frac{f^{′′}(ξ_{2})}{2}(1 - c)2,  ξ_{2} ∈ (c, 1)
$$

将两式相减：


$$
f(1) - f(0) = f^{′}(c) + \\frac{1}{2}  \\lbrack f^{′′}(ξ_{2})(1 - c)2 - f^{′′}(ξ_{1})c^{2} \\rbrack
$$

解得：


$$
f^{′}(c) = f(1) - f(0) - \\frac{1}{2}  \\lbrack f^{′′}(ξ_{2})(1 - c)2 - f^{′′}(ξ_{1})c^{2} \\rbrack
$$

取绝对值：


$$
∣f^{′}(c)∣ ≤ ∣f(1) - f(0)∣ + \\frac{1}{2} ​f^{′′}(ξ_{2})(1 - c)2 - f^{′′}(ξ_{1})c^{2}​
$$

由条件$∣f(x)∣ ≤ a$，有$∣f(1) - f(0)∣ ≤ ∣f(1)∣ + ∣f(0)∣ ≤ 2a$。
又由$∣f^{′′}(x)∣ ≤ b$，有：


$$
​f^{′′}(ξ_{2})(1 - c)2 - f^{′′}(ξ_{1})c^{2}​ ≤ ∣f^{′′}(ξ_{2})∣(1 - c)2 + ∣f^{′′}(ξ_{1})∣c^{2} ≤ b(1 - c)2 + bc^{2} = b  \\lbrack (1 - c)2 + c^{2} \\rbrack
$$

对于$c ∈ (0, 1)$，有$(1 - c)2 + c^{2} ≤ 1$（因为当$c = 0$或$c = 1$时值为 1，在$c = 1/2$时值为$1/2$，最大值為 1）。
因此：


$$
∣f^{′}(c)∣ ≤ 2a + \\frac{1}{2}b ⋅ 1 = 2a + \\frac{b}{2}
$$

证毕。
', 9, 'Mogullzr', '2026-01-29 14:09:52', 9, 'Mogullzr', '2026-01-29 14:09:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '967');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '967');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '967');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (968, '1996年考研数学卷1第18题', '简单', '考研数学1996年卷1真题', '设$A = E - ξξ^{T}$，其中$E$是$n$阶单位矩阵，$ξ$是$n$维非零列向量，$ξ^{T}$是$ξ$的转置，证明：(1)$A^{2} = A$的充要条件是$ξ^{T}ξ = 1$；(2) 当$ξ^{T}ξ = 1$时，$A$是不可逆矩阵．', '[]', '
(1) 因为$A = E - ξξ^{T}, ξ^{T}ξ$为数，$ξξ^{T}$为$n$阶矩阵，所以

$$
A^{2} = (E - ξξ^{T})(E - ξξ^{T}) = E - 2ξξ^{T} + ξ(ξ^{T}ξ)ξ^{T} = E - (2 - ξ^{T}ξ)ξξ^{T}.
$$

因此

$$
A^{2} = A ⇔ E - (2 - ξ^{T}ξ)ξξ^{T} = E - ξξ^{T} ⇔ (ξ^{T}ξ - 1)ξξ^{T} = 0.
$$

因为$ξ$是非零列向量，所以$ξξ^{T} \\neq 0$, 故$A^{2} = A ⇔ ξξ^{T} - 1 = 0$，即$ξξ^{T} = 1$.
(II) 反证法. 当$ξξ^{T} = 1$时，由 (1) 知$A^{2} = A$, 若$A$可逆，则$A = A^{−1}A^{2} = A^{−1}A = E$. 与已知$A = E - ξξ^{T} \\neq E$矛盾，故$A$是不可逆矩阵.
', '
(1) 因为$A = E - ξξ^{T}, ξ^{T}ξ$为数，$ξξ^{T}$为$n$阶矩阵，所以

$$
A^{2} = (E - ξξ^{T})(E - ξξ^{T}) = E - 2ξξ^{T} + ξ(ξ^{T}ξ)ξ^{T} = E - (2 - ξ^{T}ξ)ξξ^{T}.
$$

因此

$$
A^{2} = A ⇔ E - (2 - ξ^{T}ξ)ξξ^{T} = E - ξξ^{T} ⇔ (ξ^{T}ξ - 1)ξξ^{T} = 0.
$$

因为$ξ$是非零列向量，所以$ξξ^{T} \\neq 0$, 故$A^{2} = A ⇔ ξξ^{T} - 1 = 0$，即$ξξ^{T} = 1$.
(II) 反证法. 当$ξξ^{T} = 1$时，由 (1) 知$A^{2} = A$, 若$A$可逆，则$A = A^{−1}A^{2} = A^{−1}A = E$. 与已知$A = E - ξξ^{T} \\neq E$矛盾，故$A$是不可逆矩阵.
', 9, 'Mogullzr', '2026-01-29 14:09:52', 9, 'Mogullzr', '2026-01-29 14:09:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '968');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '968');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '968');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (969, '1996年考研数学卷1第19题', '简单', '考研数学1996年卷1真题', '已知二次型$f(x_{1}, x_{2}, x_{3}) = 5x_{1}^{2} + 5x_{2}^{2} + cx_{3}^{2} - 2x_{1}x_{2} + 6x_{1}x_{3} - 6x_{2}x_{3}$的秩为$2$．(1) 求参数$c$及此二次型对应矩阵的特征值；(2) 指出方程$f(x_{1}, x_{2}, x_{3}) = 1$表示何种二次曲面．', '[]', '
(1)$c = 3$，特征值为$0, 4, 9$
(2) 方程表示椭圆柱面
', '
(1) 二次型$f(x_{1}, x_{2}, x_{3})$对应的矩阵为$A = \\left( \\begin{array}{ccc}
5 & −1 & 3 \\\\
−1 & 5 & −3 \\\\
3 & −3 & c \\\\
\\end{array} \\right)$。由于秩为 2，矩阵$A$的行列式为零。计算行列式：


$$
det(A) = det \\left( \\begin{array}{ccc}
5 & −1 & 3 \\\\
−1 & 5 & −3 \\\\
3 & −3 & c \\\\
\\end{array} \\right) = 5 ⋅ det \\left( \\begin{array}{cc}
5 & −3 \\\\
−3 & c \\\\
\\end{array} \\right) - (−1) ⋅ det \\left( \\begin{array}{cc}
−1 & −3 \\\\
3 & c \\\\
\\end{array} \\right) + 3 ⋅ det \\left( \\begin{array}{cc}
−1 & 5 \\\\
3 & −3 \\\\
\\end{array} \\right)
$$

其中


$$
det \\left( \\begin{array}{cc}
5 & −3 \\\\
−3 & c \\\\
\\end{array} \\right) = 5c - 9,  det \\left( \\begin{array}{cc}
−1 & −3 \\\\
3 & c \\\\
\\end{array} \\right) = −c + 9,  det \\left( \\begin{array}{cc}
−1 & 5 \\\\
3 & −3 \\\\
\\end{array} \\right) = −12
$$

代入得


$$
det(A) = 5(5c - 9) + (−c + 9) + 3(−12) = 25c - 45 - c + 9 - 36 = 24c - 72
$$

设$24c - 72 = 0$，解得$c = 3$。
求特征值，解特征方程$det(A - λI) = 0$，其中


$$
A - λI = \\left( \\begin{array}{ccc}
5 - λ & −1 & 3 \\\\
−1 & 5 - λ & −3 \\\\
3 & −3 & 3 - λ \\\\
\\end{array} \\right)
$$

计算行列式：


$$
det(A - λI) = (5 - λ) det \\left( \\begin{array}{cc}
5 - λ & −3 \\\\
−3 & 3 - λ \\\\
\\end{array} \\right) - (−1) det \\left( \\begin{array}{cc}
−1 & −3 \\\\
3 & 3 - λ \\\\
\\end{array} \\right) + 3 det \\left( \\begin{array}{cc}
−1 & 5 - λ \\\\
3 & −3 \\\\
\\end{array} \\right)
$$

其中


$$
det \\left( \\begin{array}{cc}
5 - λ & −3 \\\\
−3 & 3 - λ \\\\
\\end{array} \\right) = (5 - λ)(3 - λ) - 9 = λ^{2} - 8λ + 6
$$



$$
det \\left( \\begin{array}{cc}
−1 & −3 \\\\
3 & 3 - λ \\\\
\\end{array} \\right) = −1 ⋅ (3 - λ) - (−3) ⋅ 3 = λ + 6
$$



$$
det \\left( \\begin{array}{cc}
−1 & 5 - λ \\\\
3 & −3 \\\\
\\end{array} \\right) = (−1) ⋅ (−3) - (5 - λ) ⋅ 3 = 3λ - 12
$$

代入得


$$
det(A - λI) = (5 - λ)(λ^{2} - 8λ + 6) + (λ + 6) + 3(3λ - 12) = −λ^{3} + 13λ^{2} - 36λ
$$

设$−λ^{3} + 13λ^{2} - 36λ = 0$，即$λ^{3} - 13λ^{2} + 36λ = 0$，因式分解得$λ(λ - 4)(λ - 9) = 0$，所以特征值为$0, 4, 9$。
(2) 二次型矩阵的特征值为$0, 4, 9$，通过正交变换可化为标准形$4y_{1}^{2} + 9y_{2}^{2} = 1$，其中$y_{3}$为自由变量，因此方程表示椭圆柱面。
', 9, 'Mogullzr', '2026-01-29 14:09:52', 9, 'Mogullzr', '2026-01-29 14:09:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '969');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '969');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (970, '1996年考研数学卷1第20题', '简单', '考研数学1996年卷1真题', '设工厂$A$和工厂$B$的产品的次品率分别为$1%$和$2%$，现从由$A$和$B$的产品分别占$60%$和$40%$的一批产品中随机抽取一件，发现是次品，则该次品属$A$生产的概率是', '[]', '
$\\frac{3}{7}$
', '
设事件$A$为产品来自工厂$A$，事件$B$为产品来自工厂$B$，事件$D$为产品是次品。
已知：
$P(A) = 0.6$，
$P(B) = 0.4$，
$P(D∣A) = 0.01$，
$P(D∣B) = 0.02$。
需要求$P(A∣D)$，即给定次品来自$A$的概率。
根据贝叶斯定理：


$$
P(A∣D) = \\frac{P(D∣A)P(A)}{P(D)}
$$

其中$P(D)$为总次品概率，使用全概率公式：


$$
P(D) = P(D∣A)P(A) + P(D∣B)P(B) = 0.01 × 0.6 + 0.02 × 0.4 = 0.006 + 0.008 = 0.014
$$

代入计算：


$$
P(A∣D) = \\frac{0.01 × 0.6}{0.014} = \\frac{0.006}{0.014} = \\frac{6}{14} = \\frac{3}{7}
$$

因此，该次品属$A$生产的概率为$\\frac{3}{7}$。
', 9, 'Mogullzr', '2026-01-29 14:09:53', 9, 'Mogullzr', '2026-01-29 14:09:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '970');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '970');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (971, '1996年考研数学卷1第21题', '简单', '考研数学1996年卷1真题', '设$ξ$,$η$是两个相互独立且均服从正态分布$N (0, (\\frac{1}{\\sqrt{2}})^{2})$的随机变量，
则随机变量$∣ξ - η∣$的数学期望$E(∣ξ - η∣) =$______．', '[]', '

$$
\\sqrt{\\frac{2}{π}}​
$$

', '由于$ξ$和$η$相互独立，且均服从正态分布$N (0, (\\frac{1}{\\sqrt{2}})^{2})$，即方差为$\\frac{1}{2}$，则随机变量$ξ - η$服从正态分布$N (0, \\frac{1}{2} + \\frac{1}{2}) = N(0, 1)$。因此，$∣ξ - η∣$是标准正态分布的绝对值。
设$Z ∼ N(0, 1)$，则$E(∣ξ - η∣) = E(∣Z∣)$。计算如下：

$$
E(∣Z∣) = \\int_{−∞}^{∞} ∣z∣ ⋅ \\frac{1}{\\sqrt{2π}}e^{−\\frac{z^{2}}{2}} dz = 2 \\int_{0}^{∞} z ⋅ \\frac{1}{\\sqrt{2π}}e^{−\\frac{z^{2}}{2}} dz.
$$

令$t = \\frac{z^{2}}{2}$，则$dt = z dz$，当$z = 0$时$t = 0$，当$z → ∞$时$t → ∞$，于是

$$
E(∣Z∣) = \\frac{2}{\\sqrt{2π}} \\int_{0}^{∞} e^{−t} dt = \\frac{2}{\\sqrt{2π}} ⋅ 1 = \\sqrt{\\frac{2}{π}}.
$$

故$E(∣ξ - η∣) = \\sqrt{\\frac{2}{π}}$。
', 9, 'Mogullzr', '2026-01-29 14:09:53', 9, 'Mogullzr', '2026-01-29 14:09:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '971');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '971');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '971');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (972, '1996年考研数学卷1第22题', '简单', '考研数学1996年卷1真题', '设$ξ$,$η$是相互独立且服从同一分布的两个随机变量，已知$ξ$的分布律为
$$
P \\{ξ = i\\} = \\frac{1}{3},  i = 1, 2, 3.
$$
又设$X = \\max(ξ, η)$,$Y = \\min(ξ, η)$．(1) 写出二维随机变量$(X, Y)$的分布律：
$$
\\begin{array}{c|c|c|c|}
X &  &  &  \\\\
Y & 1 & 2 & 3 \\\\
1 &  &  &  \\\\
2 &  &  &  \\\\
\\end{array}
$$
(2) 求随机变量$X$的数学期望$E(X)$．', '[]', '
(1) 二维随机变量$(X, Y)$的分布律为：


$$
\\begin{array}{c|c|c|c|}
X\\Y & 1 & 2 & 3 \\\\
1 & \\frac{1}{9} & 0 & 0 \\\\
2 & \\frac{2}{9} & \\frac{1}{9} & 0 \\\\
3 & \\frac{2}{9} & \\frac{2}{9} & \\frac{1}{9} \\\\
\\end{array}
$$

(2) 随机变量$X$的数学期望$E(X) = \\frac{22}{9}$．
', '
由于$ξ$和$η$相互独立且服从同一分布，分布律为$P\\{ξ = i\\} = \\frac{1}{3}$（$i = 1, 2, 3$），因此对于任意$i, j$，有$P\\{ξ = i, η = j\\} = \\frac{1}{3} × \\frac{1}{3} = \\frac{1}{9}$．
定义$X = \\max(ξ, η)$，$Y = \\min(ξ, η)$，则$(X, Y)$的取值需满足$Y ≤ X$．
通过枚举所有可能的$(ξ, η)$组合，计算联合概率：
当$X = 1, Y = 1$时，对应$ξ = 1, η = 1$，概率为$\\frac{1}{9}$．当$X = 2, Y = 1$时，对应$ξ = 1, η = 2$或$ξ = 2, η = 1$，概率为$\\frac{2}{9}$．当$X = 2, Y = 2$时，对应$ξ = 2, η = 2$，概率为$\\frac{1}{9}$．当$X = 3, Y = 1$时，对应$ξ = 1, η = 3$或$ξ = 3, η = 1$，概率为$\\frac{2}{9}$．当$X = 3, Y = 2$时，对应$ξ = 2, η = 3$或$ξ = 3, η = 2$，概率为$\\frac{2}{9}$．当$X = 3, Y = 3$时，对应$ξ = 3, η = 3$，概率为$\\frac{1}{9}$．
其他情况概率为0，得到分布律如上表．
对于$E(X)$，先求$X$的边际分布：$P(X = 1) = P(X = 1, Y = 1) = \\frac{1}{9}$，$P(X = 2) = P(X = 2, Y = 1) + P(X = 2, Y = 2) = \\frac{2}{9} + \\frac{1}{9} = \\frac{3}{9} = \\frac{1}{3}$，$P(X = 3) = P(X = 3, Y = 1) + P(X = 3, Y = 2) + P(X = 3, Y = 3) = \\frac{2}{9} + \\frac{2}{9} + \\frac{1}{9} = \\frac{5}{9}$．
则$E(X) = 1 × \\frac{1}{9} + 2 × \\frac{1}{3} + 3 × \\frac{5}{9} = \\frac{1}{9} + \\frac{6}{9} + \\frac{15}{9} = \\frac{22}{9}$．
或者直接枚举所有9种等可能情况，$X = 1$出现1次，$X = 2$出现3次，$X = 3$出现5次，同样可得$E(X) = \\frac{22}{9}$．
', 9, 'Mogullzr', '2026-01-29 14:09:53', 9, 'Mogullzr', '2026-01-29 14:09:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '972');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '972');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '972');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (973, '1996年考研数学卷2第1题', '', '考研数学1996年卷2真题', '/problems/other/951', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (974, '1996年考研数学卷2第2题', '', '考研数学1996年卷2真题', '/problems/other/952', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (975, '1996年考研数学卷2第3题', '', '考研数学1996年卷2真题', '/problems/other/953', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (976, '1996年考研数学卷2第4题', '', '考研数学1996年卷2真题', '/problems/other/954', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (977, '1996年考研数学卷2第5题', '', '考研数学1996年卷2真题', '/problems/other/955', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (978, '1996年考研数学卷2第6题', '', '考研数学1996年卷2真题', '/problems/other/956', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (979, '1996年考研数学卷2第7题', '', '考研数学1996年卷2真题', '/problems/other/957', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (980, '1996年考研数学卷2第8题', '', '考研数学1996年卷2真题', '/problems/other/958', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (981, '1996年考研数学卷2第9题', '', '考研数学1996年卷2真题', '/problems/other/959', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (982, '1996年考研数学卷2第10题', '', '考研数学1996年卷2真题', '/problems/other/960', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (983, '1996年考研数学卷2第11题', '简单', '考研数学1996年卷2真题', '计算积分$\\iint_{D} \\sqrt{x^{2} + y^{2}}dxdy$，
其中$D = \\{(x, y) ∣ 0 ≤ y ≤ x, x^{2} + y^{2} ≤ 2x\\}$．', '[]', '

$$
\\frac{10\\sqrt{2}}{9}
$$

', '积分区域$D$由$0 ≤ y ≤ x$和$x^{2} + y^{2} ≤ 2x$定义。将圆方程$x^{2} + y^{2} ≤ 2x$化为标准形式：$(x - 1)2 + y^{2} ≤ 1$，这是一个圆心在$(1, 0)$、半径为 1 的圆。由于被积函数$\\sqrt{x^{2} + y^{2}}$和区域特性，使用极坐标变换：令$x = r \\cos θ$，$y = r \\sin θ$，则$\\sqrt{x^{2} + y^{2}} = r$，面积元素为$r dr dθ$。
区域$D$在极坐标下的条件：由$0 ≤ y ≤ x$得$0 ≤ θ ≤ π/4$，由圆方程得$r ≤ 2 \\cos θ$。因此，积分变为：

$$
\\iint_{D} \\sqrt{x^{2} + y^{2}} dx dy = \\int_{0}^{π/4} \\int_{0}^{2 \\cos θ} r ⋅ r dr dθ = \\int_{0}^{π/4} \\int_{0}^{2 \\cos θ} r^{2} dr dθ.
$$

先计算内积分：

$$
\\int_{0}^{2 \\cos θ} r^{2} dr =  \\lbrack \\frac{r^{3}}{3} \\rbrack _{0}^{2 \\cos θ} = \\frac{8 \\cos^{3} θ}{3}.
$$

代入外积分：

$$
\\int_{0}^{π/4} \\frac{8 \\cos^{3} θ}{3} dθ = \\frac{8}{3} \\int_{0}^{π/4} \\cos^{3} θ dθ.
$$

计算$\\int_{0}^{π/4} \\cos^{3} θ dθ$：

$$
∫ \\cos^{3} θ dθ = ∫ \\cos θ(1 - \\sin^{2} θ) dθ.
$$

令$u = \\sin θ$，则$du = \\cos θ dθ$，有：

$$
∫(1 - u^{2}) du = u - \\frac{u^{3}}{3} + C = \\sin θ - \\frac{\\sin^{3} θ}{3} + C.
$$

代入上下限：

$$
\\lbrack \\sin θ - \\frac{\\sin^{3} θ}{3} \\rbrack _{0}^{π/4} = ​\\frac{\\sqrt{2}}{2} - \\frac{1}{3} (\\frac{\\sqrt{2}}{2})^{3}​ - (0 - 0) = \\frac{\\sqrt{2}}{2} - \\frac{1}{3} ⋅ \\frac{\\sqrt{2}}{4} = \\frac{\\sqrt{2}}{2} - \\frac{\\sqrt{2}}{12} = \\frac{6\\sqrt{2}}{12} - \\frac{\\sqrt{2}}{12} = \\frac{5\\sqrt{2}}{12}.
$$

因此，

$$
\\frac{8}{3} ⋅ \\frac{5\\sqrt{2}}{12} = \\frac{40\\sqrt{2}}{36} = \\frac{10\\sqrt{2}}{9}.
$$

故积分为$\\frac{10\\sqrt{2}}{9}$。
', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '983');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '983');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '983');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (984, '1996年考研数学卷2第12题', '', '考研数学1996年卷2真题', '/problems/other/961', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (985, '1996年考研数学卷2第13题', '', '考研数学1996年卷2真题', '/problems/other/962', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (986, '1996年考研数学卷2第14题', '', '考研数学1996年卷2真题', '/problems/other/963', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (987, '1996年考研数学卷2第15题', '', '考研数学1996年卷2真题', '/problems/other/964', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (988, '1996年考研数学卷2第16题', '', '考研数学1996年卷2真题', '/problems/other/965', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (989, '1996年考研数学卷2第17题', '', '考研数学1996年卷2真题', '/problems/other/966', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (990, '1996年考研数学卷2第18题', '', '考研数学1996年卷2真题', '/problems/other/967', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (991, '1996年考研数学卷2第19题', '简单', '考研数学1996年卷2真题', '求齐次线性方程组$\\begin{cases} x_{1} + x_{2} + x_{5} = 0 \\\\ x_{1} + x_{2} - x_{3} = 0 \\\\ x_{3} + x_{4} + x_{5} = 0 \\end{cases}$的基础解系．', '[]', '基础解系为：

$$
ξ_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right)
$$

', '给定齐次线性方程组：

$$
\\begin{cases} x_{1} + x_{2} + x_{5} = 0 \\\\ x_{1} + x_{2} - x_{3} = 0 \\\\ x_{3} + x_{4} + x_{5} = 0 \\end{cases}
$$

写出系数矩阵：

$$
A = \\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & 1 \\\\
1 & 1 & −1 & 0 & 0 \\\\
0 & 0 & 1 & 1 & 1 \\\\
\\end{array} \\right)
$$

对矩阵进行行化简：
第二行减去第一行：$R_{2} ← R_{2} - R_{1}$，得：$\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & 1 \\\\
0 & 0 & −1 & 0 & −1 \\\\
0 & 0 & 1 & 1 & 1 \\\\
\\end{array} \\right)$第二行乘以 -1：$R_{2} ← −R_{2}$，得：$\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & 1 \\\\
0 & 0 & 1 & 0 & 1 \\\\
0 & 0 & 1 & 1 & 1 \\\\
\\end{array} \\right)$第三行减去第二行：$R_{3} ← R_{3} - R_{2}$，得：$\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & 1 \\\\
0 & 0 & 1 & 0 & 1 \\\\
0 & 0 & 0 & 1 & 0 \\\\
\\end{array} \\right)$得到行阶梯形矩阵。秩为 3，变量个数为 5，故解空间维数为 2。从行阶梯形矩阵得方程：$\\begin{cases} x_{1} + x_{2} + x_{5} = 0 \\\\ x_{3} + x_{5} = 0 \\\\ x_{4} = 0 \\end{cases}$令自由变量$x_{2} = a$,$x_{5} = b$（$a, b$为任意实数），则：$x_{1} = −a - b,  x_{3} = −b,  x_{4} = 0$解向量为：$\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = a \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + b \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right)$因此，基础解系为：$ξ_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right)$验证可知，这两个向量线性无关且满足原方程组。
', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '991');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '991');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (992, '1996年考研数学卷2第20题', '', '考研数学1996年卷2真题', '/problems/other/968', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (993, '1996年考研数学卷2第21题', '', '考研数学1996年卷2真题', '/problems/other/969', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:55', 9, 'Mogullzr', '2026-01-29 14:09:55', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (994, '1996年考研数学卷3第1题', '简单', '考研数学1996年卷3真题', '设$y = (x + e^{−\\frac{x}{2}})32​$，则$y^{′}∣_{x=0} =$______．', '[]', '$\\frac{1}{3}$
', '给定函数$y = (x + e^{−\\frac{x}{2}})32​$，求$y^{′}∣_{x=0}$。
设$u = x + e^{−\\frac{x}{2}}$，则$y = u^{\\frac{2}{3}}$。
应用链式法则：

$$
\\frac{dy}{dx} = \\frac{dy}{du} ⋅ \\frac{du}{dx} = \\frac{2}{3}u^{−\\frac{1}{3}} ⋅ \\frac{du}{dx}.
$$

计算$\\frac{du}{dx}$：

$$
\\frac{du}{dx} = \\frac{d}{dx}(x) + \\frac{d}{dx}(e^{−\\frac{x}{2}}) = 1 + e^{−\\frac{x}{2}} ⋅ (−\\frac{1}{2}) = 1 - \\frac{1}{2}e^{−\\frac{x}{2}}.
$$

因此，

$$
y^{′} = \\frac{2}{3}(x + e^{−\\frac{x}{2}})−31​ ⋅ (1 - \\frac{1}{2}e^{−\\frac{x}{2}}) .
$$

代入$x = 0$：

$$
u∣_{x=0} = 0 + e^{0} = 1,
$$



$$
y^{′}∣_{x=0} = \\frac{2}{3} ⋅ 1^{−\\frac{1}{3}} ⋅ (1 - \\frac{1}{2} ⋅ 1) = \\frac{2}{3} ⋅ 1 ⋅ (1 - \\frac{1}{2}) = \\frac{2}{3} ⋅ \\frac{1}{2} = \\frac{1}{3}.
$$

故$y^{′}∣_{x=0} = \\frac{1}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:09:57', 9, 'Mogullzr', '2026-01-29 14:09:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '994');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '994');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '994');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (995, '1996年考研数学卷3第2题', '简单', '考研数学1996年卷3真题', '$\\int_{−1}^{1} (x + \\sqrt{1 - x^{2}})^{2} dx =$______．', '[]', '$2$
', '
首先，展开被积函数：


$$
(x + \\sqrt{1 - x^{2}})^{2} = x^{2} + 2x\\sqrt{1 - x^{2}} + (1 - x^{2}) = 1 + 2x\\sqrt{1 - x^{2}}
$$

因此，积分变为：


$$
\\int_{−1}^{1} (1 + 2x\\sqrt{1 - x^{2}}) dx = \\int_{−1}^{1} 1dx + 2 \\int_{−1}^{1} x\\sqrt{1 - x^{2}}dx
$$

计算第一个积分：


$$
\\int_{−1}^{1} 1dx = x​_{−1}^{1} = 1 - (−1) = 2
$$

计算第二个积分：
由于$x\\sqrt{1 - x^{2}}$是奇函数（因为$x$是奇函数，$\\sqrt{1 - x^{2}}$是偶函数，乘积为奇函数），且在对称区间$\\lbrack −1, 1 \\rbrack$上，奇函数的积分为零，因此：


$$
\\int_{−1}^{1} x\\sqrt{1 - x^{2}}dx = 0
$$

所以，原积分为：


$$
2 + 2 × 0 = 2
$$

因此，答案为 2。
', 9, 'Mogullzr', '2026-01-29 14:09:58', 9, 'Mogullzr', '2026-01-29 14:09:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '995');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '995');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '995');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (996, '1996年考研数学卷3第3题', '简单', '考研数学1996年卷3真题', '微分方程的$y^{′′} + 2y^{′} + 5y = 0$通解为 ______．', '[]', '
$y = e^{−x}(C_{1} \\cos 2x + C_{2} \\sin 2x)$，其中$C_{1}$和$C_{2}$为任意常数。
', '
给定微分方程$y^{′′} + 2y^{′} + 5y = 0$，这是一个二阶常系数线性齐次微分方程。
假设解的形式为$y = e^{rx}$，代入方程得到特征方程$r^{2} + 2r + 5 = 0$。
解特征方程：


$$
r = \\frac{−2 ± \\sqrt{4 - 20}}{2} = \\frac{−2 ± \\sqrt{−16}}{2} = \\frac{−2 ± 4i}{2} = −1 ± 2i
$$

特征根为共轭复数$r_{1} = −1 + 2i$和$r_{2} = −1 - 2i$，因此通解为


$$
y = e^{−x}(C_{1} \\cos 2x + C_{2} \\sin 2x)
$$

其中$C_{1}$和$C_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:09:58', 9, 'Mogullzr', '2026-01-29 14:09:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '996');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '996');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '996');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (997, '1996年考研数学卷3第4题', '简单', '考研数学1996年卷3真题', '
$$
\\lim_{x→∞} x  \\lbrack \\sin \\ln (1 + \\frac{3}{x}) - \\sin \\ln (1 + \\frac{1}{x}) \\rbrack  =
$$
', '[]', '
2
', '
考虑极限$\\lim_{x→∞} x  \\lbrack \\sin \\ln (1 + \\frac{3}{x}) - \\sin \\ln (1 + \\frac{1}{x}) \\rbrack$。令$t = \\frac{1}{x}$，则当$x → ∞$时，$t → 0^{+}$，极限化为：


$$
\\lim_{t→0^{+}} \\frac{\\sin \\ln(1 + 3t) - \\sin \\ln(1 + t)}{t}
$$

该极限等价于函数$f(t) = \\sin \\ln(1 + 3t) - \\sin \\ln(1 + t)$在$t = 0$处的导数。计算$f^{′}(t)$：


$$
f^{′}(t) = \\cos \\ln(1 + 3t) ⋅ \\frac{3}{1 + 3t} - \\cos \\ln(1 + t) ⋅ \\frac{1}{1 + t}
$$

代入$t = 0$：


$$
f^{′}(0) = \\cos \\ln 1 ⋅ \\frac{3}{1} - \\cos \\ln 1 ⋅ \\frac{1}{1} = \\cos 0 ⋅ 3 - \\cos 0 ⋅ 1 = 1 ⋅ 3 - 1 ⋅ 1 = 2
$$

因此，原极限为 2。
', 9, 'Mogullzr', '2026-01-29 14:09:58', 9, 'Mogullzr', '2026-01-29 14:09:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '997');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '997');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '997');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (998, '1996年考研数学卷3第5题', '简单', '考研数学1996年卷3真题', '由曲线$y = x + \\frac{1}{x}$,$x = 2$及$y = 2$所围图形的面积$S =$______．', '[]', '
$\\ln 2 - \\frac{1}{2}$
', '
曲线$y = x + \\frac{1}{x}$与直线$y = 2$相交时，解方程$x + \\frac{1}{x} = 2$，得$x^{2} - 2x + 1 = 0$，即$(x - 1)2 = 0$，所以交点为$x = 1$。
直线$x = 2$与曲线相交于$y = 2 + \\frac{1}{2} = \\frac{5}{2}$，即点$(2, \\frac{5}{2})$。
直线$x = 2$与$y = 2$相交于点$(2, 2)$。
因此，所围图形位于$x = 1$到$x = 2$之间，且曲线$y = x + \\frac{1}{x}$在$y = 2$之上。
面积$S$为曲线与直线$y = 2$之间的差在区间$\\lbrack 1, 2 \\rbrack$上的积分：


$$
S = \\int_{1}^{2} (x + \\frac{1}{x} - 2) dx
$$

计算积分：


$$
∫ (x + \\frac{1}{x} - 2) dx = \\frac{x^{2}}{2} + \\ln ∣x∣ - 2x
$$

代入上下限：


$$
\\begin{array}{cc}
 \\lbrack \\frac{x^{2}}{2} + \\ln x - 2x \\rbrack _{1}^{2} & = (\\frac{4}{2} + \\ln 2 - 4) - (\\frac{1}{2} + \\ln 1 - 2) \\\\
 & = (2 + \\ln 2 - 4) - (0.5 - 2) \\\\
 & = (\\ln 2 - 2) - (−1.5) \\\\
 & = \\ln 2 - 2 + 1.5 \\\\
\\end{array}
$$

所以，面积$S = \\ln 2 - \\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:58', 9, 'Mogullzr', '2026-01-29 14:09:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '998');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '998');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '998');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (999, '1996年考研数学卷3第6题', '简单', '考研数学1996年卷3真题', '设$x → 0$时$e^{x} - (ax^{2} + bx + 1)$是比$x^{2}$高阶的无穷小，则', '[''$a = \\\\frac{1}{2}, b = 1$．'', ''$a = 1, b = 1$．'', ''$a = −\\\\frac{1}{2}, b = −1$．'', ''$a = −1, b = 1$．'']', "['A']", '
当$x → 0$时，$e^{x} - (ax^{2} + bx + 1)$是比$x^{2}$高阶的无穷小，即
$$
\\lim_{x→0} \\frac{e^{x} - (ax^{2} + bx + 1)}{x^{2}} = 0
$$
将$e^{x}$泰勒展开为
$$
e^{x} = 1 + x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6} + ⋯
$$
代入得
$$
\\begin{array}{cc}
e^{x} - (ax^{2} + bx + 1) & = (1 + x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6} + ⋯ ) - (ax^{2} + bx + 1) \\\\
 & = (1 - b)x + (\\frac{1}{2} - a) x^{2} + \\frac{x^{3}}{6} + ⋯ \\\\
\\end{array}
$$
除以$x^{2}$后：
$$
\\frac{e^{x} - (ax^{2} + bx + 1)}{x^{2}} = \\frac{1 - b}{x} + (\\frac{1}{2} - a) + \\frac{x}{6} + ⋯
$$
为使极限为 0，必须满足
$$
1 - b = 0 和 \\frac{1}{2} - a = 0
$$
即
$$
b = 1,  a = \\frac{1}{2}
$$
因此，选项 A 正确。', 9, 'Mogullzr', '2026-01-29 14:09:58', 9, 'Mogullzr', '2026-01-29 14:09:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '999');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '999');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '999');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1000, '1996年考研数学卷3第7题', '简单', '考研数学1996年卷3真题', '设函数$f(x)$在区间$(−δ, δ)$内有定义，
若当$x ∈ (−δ, δ)$时，恒有$∣f(x)∣ ≤ x^{2}$，
则$x = 0$必是$f(x)$的', '[''间断点．'', ''连续而不可导的点．'', ''可导的点，且$f^{′}(0) = 0$．'', ''可导的点，且$f^{′}(0) \\\\neq 0$．'']', "['C']", '
由条件可知，当$x ∈ (−δ, δ)$时，恒有$∣f(x)∣ ≤ x^{2}$。取$x = 0$，则$∣f(0)∣ ≤ 0$，故$f(0) = 0$。为检验连续性，考虑极限$\\lim_{x→0} f(x)$。由于

$$
∣f(x)∣ ≤ x^{2} 且  \\lim_{x→0} x^{2} = 0
$$
由夹逼定理，$\\lim_{x→0} ∣f(x)∣ = 0$，因此

$$
\\lim_{x→0} f(x) = 0 = f(0),
$$
故$f(x)$在$x = 0$处连续。为检验可导性，考虑导数定义：

$$
f^{′}(0) = \\lim_{h→0} \\frac{f(0 + h) - f(0)}{h} = \\lim_{h→0} \\frac{f(h)}{h}.
$$
由$∣f(h)∣ ≤ h^{2}$，得

$$
​\\frac{f(h)}{h}​ ≤ ∣h∣ (h \\neq 0).
$$
由于$\\lim_{h→0} ∣h∣ = 0$，由夹逼定理，

$$
\\lim_{h→0} ​\\frac{f(h)}{h}​ = 0,
$$
故

$$
\\lim_{h→0} \\frac{f(h)}{h} = 0,
$$
即$f^{′}(0) = 0$。因此，$f(x)$在$x = 0$处可导且导数为零。选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:09:58', 9, 'Mogullzr', '2026-01-29 14:09:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1000');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1000');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1000');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1001, '1996年考研数学卷3第8题', '简单', '考研数学1996年卷3真题', '设$f(x)$处处可导，则', '[''当$\\\\lim_{x→−∞} f(x) = −∞$时， 必有$\\\\lim_{x→−∞} f^{′}(x) = −∞$．'', ''当$\\\\lim_{x→−∞} f^{′}(x) = −∞$时， 必有$\\\\lim_{x→−∞} f(x) = −∞$．'', ''当$\\\\lim_{x→+∞} f(x) = +∞$时， 必有$\\\\lim_{x→+∞} f^{′}(x) = +∞$．'', ''当$\\\\lim_{x→+∞} f^{′}(x) = +∞$时， 必有$\\\\lim_{x→+∞} f(x) = +∞$．'']', "['D']", '考虑选项A：当$\\lim_{x→−∞} f(x) = −∞$时，必有$\\lim_{x→−∞} f^{′}(x) = −∞$。反例：$f(x) = x$，则$\\lim_{x→−∞} f(x) = −∞$，但$f^{′}(x) = 1$，$\\lim_{x→−∞} f^{′}(x) = 1 \\neq −∞$，故A错误。考虑选项B：当$\\lim_{x→−∞} f^{′}(x) = −∞$时，必有$\\lim_{x→−∞} f(x) = −∞$。反例：$f(x) = x^{2}$，则$\\lim_{x→−∞} f^{′}(x) = \\lim_{x→−∞} 2x = −∞$，但$\\lim_{x→−∞} f(x) = \\lim_{x→−∞} x^{2} = +∞ \\neq −∞$，故B错误。考虑选项C：当$\\lim_{x→+∞} f(x) = +∞$时，必有$\\lim_{x→+∞} f^{′}(x) = +∞$。反例：$f(x) = x$，则$\\lim_{x→+∞} f(x) = +∞$，但$f^{′}(x) = 1$，$\\lim_{x→+∞} f^{′}(x) = 1 \\neq +∞$，故C错误。考虑选项D：当$\\lim_{x→+∞} f^{′}(x) = +∞$时，必有$\\lim_{x→+∞} f(x) = +∞$。证明：由于$\\lim_{x→+∞} f^{′}(x) = +∞$，存在$N$，当$x > N$时，$f^{′}(x) > 1$。则对于$x > N$，有$f(x) - f(N) = \\int_{N}^{x} f^{′}(t) dt > \\int_{N}^{x} 1 dt = x - N$。因此$f(x) > f(N) + x - N$。当$x → +∞$时，$x - N → +∞$，故$f(x) → +∞$。因此D正确。', 9, 'Mogullzr', '2026-01-29 14:09:59', 9, 'Mogullzr', '2026-01-29 14:09:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1001');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1001');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1001');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1002, '1996年考研数学卷3第9题', '简单', '考研数学1996年卷3真题', '在区间$(−∞, +∞)$内，
方程$∣x∣^{\\frac{1}{4}} + ∣x∣^{\\frac{1}{2}} - \\cos x = 0$', '[''无实根．'', ''有且仅有一个实根．'', ''有且仅有两个实根．'', ''有无穷多个实根．'']', "['C']", '
考虑函数

$$
f(x) = ∣x∣^{\\frac{1}{4}} + ∣x∣^{\\frac{1}{2}} - \\cos x,
$$
由于$f(−x) = f(x)$，函数为偶函数，只需分析$x ≥ 0$的情况。令

$$
g(x) = x^{\\frac{1}{4}} + x^{\\frac{1}{2}} - \\cos x.
$$
在$x = 0$处，$g(0) = −1 < 0$。设$h(x) = x^{\\frac{1}{4}} + x^{\\frac{1}{2}}$，解方程$h(x) = 1$。
令$t = x^{\\frac{1}{4}}$，则

$$
t^{2} + t - 1 = 0,
$$
解得

$$
t = \\frac{\\sqrt{5} - 1}{2} ≈ 0.618,
$$
对应

$$
x_{0} = t^{4} ≈ 0.146.
$$
此时

$$
g(x_{0}) = 1 - \\cos x_{0} > 0.
$$
由中间值定理，在$(0, x_{0})$内至少有一个实根。对于$x > x_{0}$，有$h(x) > 1$，故

$$
g(x) = h(x) - \\cos x ≥ h(x) - 1 > 0,
$$
因此无实根。同时，在$(0, x_{0})$上，导数

$$
g^{′}(x) = \\frac{1}{4}x^{−\\frac{3}{4}} + \\frac{1}{2}x^{−\\frac{1}{2}} + \\sin x > 0,
$$
函数严格递增，因此仅有一个实根。由偶函数性质，在$x < 0$时有一个对称实根。综上，方程在$(−∞, +∞)$内有且仅有两个实根。', 9, 'Mogullzr', '2026-01-29 14:09:59', 9, 'Mogullzr', '2026-01-29 14:09:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1002');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1002');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '1002');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1003, '1996年考研数学卷3第10题', '简单', '考研数学1996年卷3真题', '设$f(x)$,$g(x)$在区间$\\lbrack a, b \\rbrack$上连续，$g(x) < f(x) < m$（$m$为常数），
由曲线$y = g(x)$,$y = f(x)$,$x = a$及$x = b$所围平面图形绕直线$y = m$旋转而成的旋转体体积为', '[''$\\\\int_{a}^{b} π \\\\lbrack 2m - f(x) + g(x) \\\\rbrack  \\\\lbrack f(x) - g(x) \\\\rbrack dx$．'', ''$\\\\int_{a}^{b} π \\\\lbrack 2m - f(x) - g(x) \\\\rbrack  \\\\lbrack f(x) - g(x) \\\\rbrack dx$．'', ''$\\\\int_{a}^{b} π \\\\lbrack m - f(x) + g(x) \\\\rbrack  \\\\lbrack f(x) - g(x) \\\\rbrack dx$．'', ''$\\\\int_{a}^{b} π \\\\lbrack m - f(x) - g(x) \\\\rbrack  \\\\lbrack f(x) - g(x) \\\\rbrack dx$．'']', "['B']", '由曲线$y = g(x)$,$y = f(x)$,$x = a$及$x = b$所围平面图形绕直线$y = m$旋转时，对于任意$x ∈  \\lbrack a, b \\rbrack$，由于$g(x) < f(x) < m$，点$(x, g(x))$到直线$y = m$的距离为$m - g(x)$，点$(x, f(x))$到直线$y = m$的距离为$m - f(x)$。旋转后形成圆环，外半径为$m - g(x)$，内半径为$m - f(x)$。圆环的面积为$π \\lbrack (m - g(x))2 - (m - f(x))2 \\rbrack$。因此旋转体体积为：
$$
V = \\int_{a}^{b} π \\lbrack (m - g(x))2 - (m - f(x))2 \\rbrack  dx
$$
简化被积表达式：
$$
\\begin{array}{cc}
 \\lbrack (m - g(x))2 - (m - f(x))2 \\rbrack  & =  \\lbrack m^{2} - 2mg(x) + g(x)2 - (m^{2} - 2mf(x) + f(x)2) \\rbrack  \\\\
 & = 2m \\lbrack f(x) - g(x) \\rbrack  +  \\lbrack g(x)2 - f(x)2 \\rbrack  \\\\
\\end{array}
$$
其中$g(x)2 - f(x)2 = − \\lbrack f(x) - g(x) \\rbrack  \\lbrack f(x) + g(x) \\rbrack$，所以：
$$
\\begin{array}{cc}
 & 2m \\lbrack f(x) - g(x) \\rbrack  -  \\lbrack f(x) - g(x) \\rbrack  \\lbrack f(x) + g(x) \\rbrack  \\\\
 &  \\\\
 & =  \\lbrack f(x) - g(x) \\rbrack  \\lbrack 2m - f(x) - g(x) \\rbrack  \\\\
 &  \\\\
\\end{array}
$$
因此：
$$
V = \\int_{a}^{b} π \\lbrack f(x) - g(x) \\rbrack  \\lbrack 2m - f(x) - g(x) \\rbrack  dx
$$
这与选项 B 一致。', 9, 'Mogullzr', '2026-01-29 14:09:59', 9, 'Mogullzr', '2026-01-29 14:09:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1003');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1003');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1003');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1004, '1996年考研数学卷3第11题', '简单', '考研数学1996年卷3真题', '计算$\\int_{0}^{\\ln 2} \\sqrt{1 - e^{−2x}}dx$．', '[]', '

$$
\\ln(2 + \\sqrt{3}) - \\frac{\\sqrt{3}}{2}
$$

', '考虑积分$I = \\int_{0}^{\\ln 2} \\sqrt{1 - e^{−2x}} dx$。令$u = e^{−x}$，则$du = −e^{−x} dx = −u dx$，所以$dx = −\\frac{du}{u}$。当$x = 0$时，$u = 1$；当$x = \\ln 2$时，$u = e^{− \\ln 2} = \\frac{1}{2}$。积分变为：

$$
I = \\int_{1}^{1/2} \\sqrt{1 - u^{2}} ⋅ (−\\frac{du}{u}) = \\int_{1/2}^{1} \\frac{\\sqrt{1 - u^{2}}}{u} du.
$$

计算$J = ∫ \\frac{\\sqrt{1-u^{2}}}{u} du$。令$u = \\sin θ$，则$du = \\cos θ dθ$，且$\\sqrt{1 - u^{2}} = \\cos θ$（因为$θ ∈  \\lbrack 0, π/2 \\rbrack$）。于是：

$$
\\begin{array}{cc}
J & = ∫ \\frac{\\cos θ}{\\sin θ} ⋅ \\cos θ dθ \\\\
 & = ∫ \\frac{\\cos^{2} θ}{\\sin θ} dθ \\\\
 & = ∫(csc θ - \\sin θ) dθ \\\\
\\end{array}
$$

回代$u = \\sin θ$，有$csc θ = \\frac{1}{u}$，$cot θ = \\frac{\\sqrt{1-u^{2}}}{u}$，$\\cos θ = \\sqrt{1 - u^{2}}$，所以：

$$
J = \\ln ​\\frac{1 - \\sqrt{1 - u^{2}}}{u}​ + \\sqrt{1 - u^{2}} + C.
$$

因此：

$$
I =  \\lbrack \\ln ​\\frac{1 - \\sqrt{1 - u^{2}}}{u}​ + \\sqrt{1 - u^{2}} \\rbrack _{u=1/2}^{u=1} .
$$

在$u = 1$时：

$$
\\sqrt{1 - 1^{2}} = 0,  \\ln ​\\frac{1 - 0}{1}​ = \\ln 1 = 0,
$$

值为 0。在$u = 1/2$时：

$$
\\sqrt{1 - (1/2)2} = \\sqrt{3/4} = \\frac{\\sqrt{3}}{2},  \\ln ​\\frac{1 - \\sqrt{3}/2}{1/2}​ = \\ln ∣2 - \\sqrt{3}∣ = \\ln(2 - \\sqrt{3}),
$$

值为$\\ln(2 - \\sqrt{3}) + \\frac{\\sqrt{3}}{2}$。所以：

$$
I = 0 - (\\ln(2 - \\sqrt{3}) + \\frac{\\sqrt{3}}{2}) = − \\ln(2 - \\sqrt{3}) - \\frac{\\sqrt{3}}{2}.
$$

注意到$2 - \\sqrt{3} = \\frac{1}{2+\\sqrt{3}}$，所以$− \\ln(2 - \\sqrt{3}) = \\ln(2 + \\sqrt{3})$。因此：

$$
I = \\ln(2 + \\sqrt{3}) - \\frac{\\sqrt{3}}{2}.
$$

此即所求积分值。
', 9, 'Mogullzr', '2026-01-29 14:09:59', 9, 'Mogullzr', '2026-01-29 14:09:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1004');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1004');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1004');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1005, '1996年考研数学卷3第12题', '简单', '考研数学1996年卷3真题', '
$$
∫ \\frac{dx}{1 + \\sin x} =
$$
', '[]', '

$$
\\tan x - sec x + C
$$

', '为了求解积分$∫ \\frac{dx}{1+\\sin x}$，首先分子分母同时乘以$1 - \\sin x$，得到：

$$
∫ \\frac{dx}{1 + \\sin x} = ∫ \\frac{1 - \\sin x}{(1 + \\sin x)(1 - \\sin x)}dx = ∫ \\frac{1 - \\sin x}{1 - \\sin^{2} x}dx.
$$

利用三角恒等式$1 - \\sin^{2} x = \\cos^{2} x$，积分化为：

$$
∫ \\frac{1 - \\sin x}{\\cos^{2} x}dx = ∫ (\\frac{1}{\\cos^{2} x} - \\frac{\\sin x}{\\cos^{2} x}) dx.
$$

分别计算两个积分：

$$
∫ \\frac{1}{\\cos^{2} x}dx = ∫ sec^{2} x dx = \\tan x,
$$

和

$$
∫ \\frac{\\sin x}{\\cos^{2} x}dx.
$$

令$u = \\cos x$，则$du = − \\sin x dx$，即$dx = −\\frac{du}{\\sin x}$，代入得：

$$
∫ \\frac{\\sin x}{\\cos^{2} x}dx = ∫ \\frac{\\sin x}{u^{2}} (−\\frac{du}{\\sin x}) = − ∫ u^{−2}du = − (−u^{−1}) = \\frac{1}{u} = sec x.
$$

因此，原积分为：

$$
\\tan x - sec x + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:00', 9, 'Mogullzr', '2026-01-29 14:10:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1005');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1005');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1005');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1006, '1996年考研数学卷3第13题', '简单', '考研数学1996年卷3真题', '设$\\begin{cases} x = \\int_{0}^{t} f(u^{2})du \\\\ y =  \\lbrack f(t^{2}) \\rbrack 2 \\end{cases}$其中$f(u)$具有二阶导数，且$f(u) \\neq 0$，求$\\frac{d^{2}y}{dx^{2}}.$', '[]', '

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{4}{f(t^{2})}  \\lbrack f^{′}(t^{2}) + 2t^{2}f^{′′}(t^{2}) \\rbrack
$$

', '给定参数方程：

$$
x = \\int_{0}^{t} f(u^{2}) du,  y =  \\lbrack f(t^{2}) \\rbrack 2
$$

其中$f(u)$具有二阶导数且$f(u) \\neq 0$。
首先，求$\\frac{dx}{dt}$和$\\frac{dy}{dt}$：

$$
\\frac{dx}{dt} = f(t^{2})
$$



$$
\\frac{dy}{dt} = 2 \\lbrack f(t^{2}) \\rbrack  ⋅ f^{′}(t^{2}) ⋅ 2t = 4tf(t^{2})f^{′}(t^{2})
$$

然后，求一阶导数$\\frac{dy}{dx}$：

$$
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{4tf(t^{2})f^{′}(t^{2})}{f(t^{2})} = 4tf^{′}(t^{2})
$$

接着，求二阶导数$\\frac{d^{2}y}{dx^{2}}$：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{\\frac{d}{dt} (\\frac{dy}{dx})}{\\frac{dx}{dt}}
$$

计算$\\frac{d}{dt} (\\frac{dy}{dx})$：

$$
\\begin{array}{cc}
\\frac{d}{dt} (4tf^{′}(t^{2})) & = 4  \\lbrack f^{′}(t^{2}) + t ⋅ \\frac{d}{dt} \\lbrack f^{′}(t^{2}) \\rbrack  \\rbrack  \\\\
 & = 4  \\lbrack f^{′}(t^{2}) + t ⋅ f^{′′}(t^{2}) ⋅ 2t \\rbrack  \\\\
 & = 4  \\lbrack f^{′}(t^{2}) + 2t^{2}f^{′′}(t^{2}) \\rbrack  \\\\
\\end{array}
$$

代入：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{4  \\lbrack f^{′}(t^{2}) + 2t^{2}f^{′′}(t^{2}) \\rbrack }{f(t^{2})}
$$

因此，得到最终结果。
', 9, 'Mogullzr', '2026-01-29 14:10:00', 9, 'Mogullzr', '2026-01-29 14:10:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1006');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1006');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1006');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1007, '1996年考研数学卷3第14题', '简单', '考研数学1996年卷3真题', '求函数$f(x) = \\frac{1-x}{1+x}$在$x = 0$点处带拉格朗日型余项的$n$阶泰勒展开式．', '[]', '函数$f(x) = \\frac{1-x}{1+x}$在$x = 0$处带拉格朗日型余项的$n$阶泰勒展开式为：

$$
f(x) = 1 + 2 \\sum_{k=1}^{n}(−1)kx^{k} + \\frac{(−1)n+12}{(1 + ξ)n+2}x^{n+1}
$$

其中$ξ$在$0$与$x$之间。
', '首先，计算函数在$x = 0$处的值：$f(0) = \\frac{1-0}{1+0} = 1$。
求各阶导数并计算在$x = 0$处的值。通过求导发现规律：对于$k ≥ 1$，有$f^{(k)}(0) = (−1)k ⋅ 2 ⋅ k!$。
因此，泰勒展开的主部为：

$$
f(x) = f(0) + \\sum_{k=1}^{n} \\frac{f^{(k)}(0)}{k!}x^{k} = 1 + \\sum_{k=1}^{n}(−1)k ⋅ 2 ⋅ x^{k}
$$

即：

$$
f(x) = 1 + 2 \\sum_{k=1}^{n}(−1)kx^{k}
$$

拉格朗日型余项为：

$$
R_{n}(x) = \\frac{f^{(n+1)}(ξ)}{(n + 1)!}x^{n+1}
$$

其中$f^{(n+1)}(x) = (−1)n+1 ⋅ 2 ⋅ (n + 1)! ⋅ (1 + x)−(n+2)$，代入得：

$$
R_{n}(x) = \\frac{(−1)n+1 ⋅ 2 ⋅ (n + 1)! ⋅ (1 + ξ)−(n+2)}{(n + 1)!}x^{n+1} = (−1)n+1 ⋅ 2 ⋅ (1 + ξ)−(n+2)x^{n+1}
$$

因此，完整展开式如上所述。
此外，函数可写为$f(x) = \\frac{2}{1+x} - 1$，其几何级数展开与上述结果一致。
', 9, 'Mogullzr', '2026-01-29 14:10:00', 9, 'Mogullzr', '2026-01-29 14:10:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1007');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1007');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1007');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1008, '1996年考研数学卷3第15题', '简单', '考研数学1996年卷3真题', '求微分方程$y^{′′} + y^{′} = x^{2}$的通解．', '[]', '$y = C_{1} + C_{2}e^{−x} + \\frac{1}{3}x^{3} - x^{2} + 2x$，其中$C_{1}$和$C_{2}$为任意常数。
', '给定微分方程$y^{′′} + y^{′} = x^{2}$，首先求解齐次方程$y^{′′} + y^{′} = 0$。特征方程为$r^{2} + r = 0$，解得$r = 0$和$r = −$，因此齐次解为$y_{h} = C_{1} + C_{2}e^{−x}$。
接下来求非齐次方程的特解。由于非齐次项$x^{2}$是二次多项式，且特征根$r = 0$是单根，特解形式应设为$y_{p} = x(Ax^{2} + Bx + C) = Ax^{3} + Bx^{2} + Cx$。求导得$y_{p}^{′} = 3Ax^{2} + 2Bx + C$，$y_{p}^{′′} = 6Ax + 2B$。代入原方程：

$$
y_{p}^{′′} + y_{p}^{′} = (6Ax + 2B) + (3Ax^{2} + 2Bx + C) = 3Ax^{2} + (6A + 2B)x + (2B + C)
$$

令其等于$x^{2}$：

$$
3A = 1,  6A + 2B = 0,  2B + C = 0
$$

解得$A = \\frac{1}{3}$,$B = −1$,$C = 2$。因此特解为$y_{p} = \\frac{1}{3}x^{3} - x^{2} + 2x$。
通解为齐次解与特解之和：

$$
y = y_{h} + y_{p} = C_{1} + C_{2}e^{−x} + \\frac{1}{3}x^{3} - x^{2} + 2x
$$

', 9, 'Mogullzr', '2026-01-29 14:10:00', 9, 'Mogullzr', '2026-01-29 14:10:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1008');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1008');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1008');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1009, '1996年考研数学卷3第16题', '简单', '考研数学1996年卷3真题', '设有一正椭圆柱体，其底面的长、短轴分别为$2a$,$2b$，
用过此柱体底面的短轴与底面成$α$角（$0 < α < \\frac{π}{2}$）的平面截此柱体，
得一锲形体（如图），求此锲形体的体积$V$．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/98c44594013d484887129265f64d7817.jpg)
', '[]', '


$$
V = \\frac{2}{3}a^{2}b \\tan α
$$

', '
考虑正椭圆柱体，其底面椭圆方程为$\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}} = 1$，长轴为$2a$，短轴为$2b$。截面平面通过短轴（即$y$轴）且与底面成$α$角，其方程为$z = x \\tan α$。楔形体为柱体在$x ≥ 0$部分介于底面$z = 0$和平面$z = x \\tan α$之间的区域。
体积$V$可通过二重积分计算：

$$
V = \\iint_{D} x \\tan α dx dy
$$

其中$D$为半椭圆区域$\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}} ≤ 1$且$x ≥ 0$。提取常数$\\tan α$，得：

$$
V = \\tan α \\iint_{D} x dx dy
$$

计算积分$I = \\iint_{D} x dx dy$。对于固定$x$，$y$的范围为$−b\\sqrt{1 - \\frac{x^{2}}{a^{2}}}$至$b\\sqrt{1 - \\frac{x^{2}}{a^{2}}}$，因此：

$$
I = \\int_{0}^{a} \\int_{−b\\sqrt{1-\\frac{x^{2}}{a^{2}}}}^{b\\sqrt{1-\\frac{x^{2}}{a^{2}}}} x dy dx = \\int_{0}^{a} x ⋅ 2b\\sqrt{1 - \\frac{x^{2}}{a^{2}}} dx = 2b \\int_{0}^{a} x\\sqrt{1 - \\frac{x^{2}}{a^{2}}} dx
$$

令$t = \\frac{x}{a}$，则$x = at$，$dx = a dt$，积分限变为$t = 0$至$t = 1$：

$$
I = 2b \\int_{0}^{1} at ⋅ \\sqrt{1 - t^{2}} ⋅ a dt = 2a^{2}b \\int_{0}^{1} t\\sqrt{1 - t^{2}} dt
$$

计算积分$\\int_{0}^{1} t\\sqrt{1 - t^{2}} dt$。令$u = 1 - t^{2}$，则$du = −2t dt$，即$t dt = −\\frac{1}{2}du$。当$t = 0$时$u = 1$，当$t = 1$时$u = 0$：

$$
\\int_{0}^{1} t\\sqrt{1 - t^{2}} dt = \\int_{1}^{0} \\sqrt{u} ⋅ (−\\frac{1}{2}) du = \\frac{1}{2} \\int_{0}^{1} u^{1/2} du = \\frac{1}{2} ⋅ \\frac{2}{3}u^{3/2}​_{0}^{1} = \\frac{1}{3}
$$

因此：

$$
I = 2a^{2}b ⋅ \\frac{1}{3} = \\frac{2}{3}a^{2}b
$$



$$
V = \\tan α ⋅ \\frac{2}{3}a^{2}b = \\frac{2}{3}a^{2}b \\tan α
$$

此即楔形体的体积。
', 9, 'Mogullzr', '2026-01-29 14:10:02', 9, 'Mogullzr', '2026-01-29 14:10:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1009');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1009');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '1009');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1010, '1996年考研数学卷3第17题', '简单', '考研数学1996年卷3真题', '计算不定积分$∫ \\frac{arctan x}{x^{2}(1+x^{2})}dx$．', '[]', '

$$
∫ \\frac{arctan x}{x^{2}(1 + x^{2})} dx = −\\frac{arctan x}{x} - \\frac{1}{2}(arctan x)2 + \\ln ∣x∣ - \\frac{1}{2} \\ln(1 + x^{2}) + C
$$

', '考虑使用分部积分法，设$u = arctan x$，则$du = \\frac{1}{1+x^{2}} dx$，而$dv = \\frac{1}{x^{2}(1+x^{2})} dx$。首先计算$v = ∫ \\frac{1}{x^{2}(1+x^{2})} dx$。通过部分分式分解，有：

$$
\\frac{1}{x^{2}(1 + x^{2})} = \\frac{1}{x^{2}} - \\frac{1}{1 + x^{2}}
$$

所以：

$$
v = ∫ (\\frac{1}{x^{2}} - \\frac{1}{1 + x^{2}}) dx = −\\frac{1}{x} - arctan x
$$

应用分部积分公式：

$$
\\begin{array}{cc}
∫ \\frac{arctan x}{x^{2}(1 + x^{2})} dx & = uv - ∫ v du \\\\
 & = arctan x ⋅ (−\\frac{1}{x} - arctan x) - ∫ (−\\frac{1}{x} - arctan x) ⋅ \\frac{1}{1 + x^{2}} dx \\\\
\\end{array}
$$

简化得：

$$
= −\\frac{arctan x}{x} - (arctan x)2 + ∫ (\\frac{1}{x(1 + x^{2})} + \\frac{arctan x}{1 + x^{2}}) dx
$$

计算积分$∫ \\frac{1}{x(1+x^{2})} dx$。通过部分分式分解：

$$
\\frac{1}{x(1 + x^{2})} = \\frac{1}{x} - \\frac{x}{1 + x^{2}}
$$

所以：

$$
∫ \\frac{1}{x(1 + x^{2})} dx = ∫ (\\frac{1}{x} - \\frac{x}{1 + x^{2}}) dx = \\ln ∣x∣ - \\frac{1}{2} \\ln(1 + x^{2})
$$

再计算积分$∫ \\frac{arctan x}{1+x^{2}} dx$。令$t = arctan x$，则$dt = \\frac{1}{1+x^{2}} dx$，所以：

$$
∫ \\frac{arctan x}{1 + x^{2}} dx = ∫ t dt = \\frac{1}{2}t^{2} = \\frac{1}{2}(arctan x)2
$$

将结果代回：

$$
\\begin{array}{cc}
∫ \\frac{arctan x}{x^{2}(1 + x^{2})} dx & = −\\frac{arctan x}{x} - (arctan x)2 + \\ln ∣x∣ \\\\
 & - \\frac{1}{2} \\ln(1 + x^{2}) + \\frac{1}{2}(arctan x)2 + C \\\\
\\end{array}
$$

合并同类项：

$$
= −\\frac{arctan x}{x} - \\frac{1}{2}(arctan x)2 + \\ln ∣x∣ - \\frac{1}{2} \\ln(1 + x^{2}) + C
$$

此结果已验证正确。
', 9, 'Mogullzr', '2026-01-29 14:10:02', 9, 'Mogullzr', '2026-01-29 14:10:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1010');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1010');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1010');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1011, '1996年考研数学卷3第18题', '简单', '考研数学1996年卷3真题', '设函数$f(x) = \\begin{cases} 1 - 2x^{2} & x < −1 \\\\ x^{3} & −1 ≤ x ≤ 2 \\\\ 12x - 16 & x > 2. \\end{cases}$(1) 写出$f(x)$的反函数$g(x)$的表达式；(2)$g(x)$是否有间断点、不可导点，若有，指出这些点．', '[]', '
(1)$g(x) = \\begin{cases} −\\sqrt{\\frac{1-x}{2}} & x < −1 \\\\ \\sqrt{x} & −1 ≤ x ≤ 8 \\\\ \\frac{x+16}{12} & x > 8. \\end{cases}$
(2)$g(x)$有不可导点，在$x = −1$和$x = 0$处不可导；没有间断点。
', '
对于(1)，求反函数$g(x)$。原函数$f(x)$是单调的，反函数存在。根据$f(x)$的分段定义，反函数$g(x)$也分段定义：
当$x < −1$时，$f(x) = 1 - 2x^{2}$，解得$x = −\\sqrt{\\frac{1-f(x)}{2}}$，所以$g(x) = −\\sqrt{\\frac{1-x}{2}}$；当$−1 ≤ x ≤ 2$时，$f(x) = x^{3}$，解得$x = \\sqrt{f(x)}$，所以$g(x) = \\sqrt{x}$；当$x > 2$时，$f(x) = 12x - 16$，解得$x = \\frac{f(x)+16}{12}$，所以$g(x) = \\frac{x+16}{12}$。
值域对应：当$x < −1$时，$f(x) < −1$；当$−1 ≤ x ≤ 2$时，$f(x) ∈  \\lbrack −1, 8 \\rbrack$；当$x > 2$时，$f(x) > 8$。因此$g(x)$的定义域为全体实数，分段如答案所示。
对于(2)，检查$g(x)$的连续性和可导性。
连续性：在$x = −1$处，

$$
\\begin{array}{cc}
\\lim_{x→−1^{−}} g(x) & = −\\sqrt{\\frac{1 - (−1)}{2}} = −1, \\\\
\\lim_{x→−1^{+}} g(x) & = \\sqrt{−1} = −1, \\\\
\\end{array}
$$

且$g(−1) = −1$，故连续；在$x = 8$处，

$$
\\begin{array}{cc}
\\lim_{x→8^{−}} g(x) & = \\sqrt{8} = 2, \\\\
\\lim_{x→8^{+}} g(x) & = \\frac{8 + 16}{12} = 2, \\\\
\\end{array}
$$

且$g(8) = 2$，故连续；其他点在各段内连续。因此$g(x)$无间断点。
可导性：在$x < −1$时，$g^{′}(x) = \\frac{\\sqrt{2}}{4\\sqrt{1-x}}$；在$−1 < x < 8$时，$g^{′}(x) = \\frac{1}{3}x^{−2/3}$；在$x > 8$时，$g^{′}(x) = \\frac{1}{12}$。
在$x = −1$处，

$$
\\begin{array}{cc}
g_{−}^{′}(−1) & = \\frac{\\sqrt{2}}{4\\sqrt{1 - (−1)}} = \\frac{1}{4}, \\\\
g_{+}^{′}(−1) & = \\frac{1}{3}(−1)−2/3 = \\frac{1}{3}, \\\\
\\end{array}
$$

左右导数不相等，故不可导；
在$x = 0$处，$g^{′}(x) = \\frac{1}{3}x^{−2/3}$在$x = 0$处不存在，故不可导；
在$x = 8$处，

$$
\\begin{array}{cc}
g_{−}^{′}(8) & = \\frac{1}{3} ⋅ 8^{−2/3} = \\frac{1}{12}, \\\\
g_{+}^{′}(8) & = \\frac{1}{12}, \\\\
\\end{array}
$$

相等，故可导。
因此，不可导点为$x = −1$和$x = 0$。
', 9, 'Mogullzr', '2026-01-29 14:10:02', 9, 'Mogullzr', '2026-01-29 14:10:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1011');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1011');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1011');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1012, '1996年考研数学卷3第19题', '简单', '考研数学1996年卷3真题', '设函数$y = y(x)$由方程$2y^{3} - 2y^{2} + 2xy - x^{2} = 1$所确定，试求$y = y(x)$的驻点，并判别它是否为极值点．', '[]', '驻点为$x = 1$，且是极小值点。
', '由方程$2y^{3} - 2y^{2} + 2xy - x^{2} = 1$所确定的函数$y = y(x)$，通过隐函数求导，得到一阶导数：

$$
y^{′} = \\frac{x - y}{3y^{2} - 2y + x}.
$$

令$y^{′} = 0$，得$x - y = 0$，即$x = y$。代入原方程：

$$
2y^{3} - 2y^{2} + 2y ⋅ y - y^{2} = 2y^{3} - y^{2} = 1,
$$

即$2y^{3} - y^{2} - 1 = 0$。解得$y = 1$（因为$y = 1$是根，且二次因子$2y^{2} + y + 1$无实根），所以$x = 1$。因此，驻点为$(1, 1)$，即$x = 1$。
为判断极值点，求二阶导数。由$y^{′} = \\frac{x-y}{3y^{2}-2y+x}$，求导得：

$$
y^{′′} = \\frac{(1 - y^{′})(3y^{2} - 2y + x) - (x - y)(6yy^{′} - 2y^{′} + 1)}{(3y^{2} - 2y + x)2}.
$$

在点$(1, 1)$处，$y^{′} = 0$，代入得：

$$
\\begin{array}{cc}
y^{′′} & = \\frac{(1 - 0)(3 ⋅ 1^{2} - 2 ⋅ 1 + 1) - (1 - 1)(6 ⋅ 1 ⋅ 0 - 2 ⋅ 0 + 1)}{(3 ⋅ 1^{2} - 2 ⋅ 1 + 1)2} \\\\
 & = \\frac{1 ⋅ (3 - 2 + 1) - 0}{2^{2}} \\\\
 & = \\frac{2}{4} \\\\
\\end{array}
$$

由于$y^{′′} > 0$，因此驻点$x = 1$是极小值点。
', 9, 'Mogullzr', '2026-01-29 14:10:03', 9, 'Mogullzr', '2026-01-29 14:10:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1012');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1012');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1012');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1013, '1996年考研数学卷3第20题', '简单', '考研数学1996年卷3真题', '设$f(x)$在区间$\\lbrack a, b \\rbrack$上具有二阶导数，且$f(a) = f(b) = 0$,$f^{′}(a)f^{′}(b) > 0$．
试证明：存在$ξ ∈ (a, b)$,$η ∈ (a, b)$，使$f(ξ) = 0$及$f^{′′}(η) = 0$．', '[]', '
首先，证明存在$ξ ∈ (a, b)$使$f(ξ) = 0$。
由条件$f^{′}(a)f^{′}(b) > 0$，可知$f^{′}(a)$与$f^{′}(b)$同号。
若$f^{′}(a) > 0$且$f^{′}(b) > 0$，则由于$f(a) = 0$，在$a$附近有$f(x) > 0$；由于$f(b) = 0$，在$b$附近有$f(x) < 0$。若$f^{′}(a) < 0$且$f^{′}(b) < 0$，则由于$f(a) = 0$，在$a$附近有$f(x) < 0$；由于$f(b) = 0$，在$b$附近有$f(x) > 0$。
在两种情况下，函数在$a$和$b$附近符号相反，且$f(x)$在$\\lbrack a, b \\rbrack$上连续，由中间值定理可知，存在$ξ ∈ (a, b)$使$f(ξ) = 0$。
其次，证明存在$η ∈ (a, b)$使$f^{′′}(η) = 0$。
由上可知，存在$ξ ∈ (a, b)$使$f(ξ) = 0$，因此$f(x)$在$\\lbrack a, b \\rbrack$上有三个零点：$a$、$ξ$、$b$。
对$f(x)$在区间$\\lbrack a, ξ \\rbrack$和$\\lbrack ξ, b \\rbrack$上分别应用罗尔定理：
存在$c_{1} ∈ (a, ξ)$使$f^{′}(c_{1}) = 0$，存在$c_{2} ∈ (ξ, b)$使$f^{′}(c_{2}) = 0$。
再对$f^{′}(x)$在区间$\\lbrack c_{1}, c_{2} \\rbrack$上应用罗尔定理：
由于$f^{′}(c_{1}) = f^{′}(c_{2}) = 0$，且$f^{′}(x)$在$\\lbrack c_{1}, c_{2} \\rbrack$上可导，存在$η ∈ (c_{1}, c_{2}) ⊂ (a, b)$使$f^{′′}(η) = 0$。
综上，结论得证。
', '
首先，证明存在$ξ ∈ (a, b)$使$f(ξ) = 0$。
由条件$f^{′}(a)f^{′}(b) > 0$，可知$f^{′}(a)$与$f^{′}(b)$同号。
若$f^{′}(a) > 0$且$f^{′}(b) > 0$，则由于$f(a) = 0$，在$a$附近有$f(x) > 0$；由于$f(b) = 0$，在$b$附近有$f(x) < 0$。若$f^{′}(a) < 0$且$f^{′}(b) < 0$，则由于$f(a) = 0$，在$a$附近有$f(x) < 0$；由于$f(b) = 0$，在$b$附近有$f(x) > 0$。
在两种情况下，函数在$a$和$b$附近符号相反，且$f(x)$在$\\lbrack a, b \\rbrack$上连续，由中间值定理可知，存在$ξ ∈ (a, b)$使$f(ξ) = 0$。
其次，证明存在$η ∈ (a, b)$使$f^{′′}(η) = 0$。
由上可知，存在$ξ ∈ (a, b)$使$f(ξ) = 0$，因此$f(x)$在$\\lbrack a, b \\rbrack$上有三个零点：$a$、$ξ$、$b$。
对$f(x)$在区间$\\lbrack a, ξ \\rbrack$和$\\lbrack ξ, b \\rbrack$上分别应用罗尔定理：
存在$c_{1} ∈ (a, ξ)$使$f^{′}(c_{1}) = 0$，存在$c_{2} ∈ (ξ, b)$使$f^{′}(c_{2}) = 0$。
再对$f^{′}(x)$在区间$\\lbrack c_{1}, c_{2} \\rbrack$上应用罗尔定理：
由于$f^{′}(c_{1}) = f^{′}(c_{2}) = 0$，且$f^{′}(x)$在$\\lbrack c_{1}, c_{2} \\rbrack$上可导，存在$η ∈ (c_{1}, c_{2}) ⊂ (a, b)$使$f^{′′}(η) = 0$。
综上，结论得证。
', 9, 'Mogullzr', '2026-01-29 14:10:03', 9, 'Mogullzr', '2026-01-29 14:10:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1013');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1013');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1013');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1014, '1996年考研数学卷3第21题', '简单', '考研数学1996年卷3真题', '设$f(x)$为连续函数，(1) 求初值问题$\\begin{cases} y^{′} + ay = f(x) \\\\ y∣_{x=0} = 0 \\end{cases}$的解$y(x)$，其中$a$是正常数．(2) 若$∣f(x)∣ ≤ k$（$k$为常数），
证明：当$x ≥ 0$时，有$∣y(x)∣ ≤ \\frac{k}{a}(1 - e^{−ax})$．', '[]', '
(1)$y(x) = e^{−ax} \\int_{0}^{x} e^{as}f(s) ds$
(2) 证明见解析。
', '
(1) 对于初值问题$y^{′} + ay = f(x)$,$y(0) = 0$，使用积分因子法。积分因子为$e^{ax}$。将原方程乘以积分因子得：


$$
e^{ax}y^{′} + ae^{ax}y = e^{ax}f(x)
$$

即


$$
\\frac{d}{dx}(e^{ax}y) = e^{ax}f(x)
$$

两边积分从 0 到$x$：


$$
e^{ax}y(x) - e^{a⋅0}y(0) = \\int_{0}^{x} e^{as}f(s) ds
$$

代入$y(0) = 0$得：


$$
e^{ax}y(x) = \\int_{0}^{x} e^{as}f(s) ds
$$

因此


$$
y(x) = e^{−ax} \\int_{0}^{x} e^{as}f(s) ds
$$

(2) 已知$∣f(x)∣ ≤ k$，需证$∣y(x)∣ ≤ \\frac{k}{a}(1 - e^{−ax})$对于$x ≥ 0$。由解的形式：


$$
∣y(x)∣ = ​e^{−ax} \\int_{0}^{x} e^{as}f(s) ds​ = e^{−ax} ​\\int_{0}^{x} e^{as}f(s) ds​
$$

利用积分不等式：


$$
​\\int_{0}^{x} e^{as}f(s) ds​ ≤ \\int_{0}^{x} e^{as}∣f(s)∣ ds ≤ \\int_{0}^{x} e^{as}k ds = k \\int_{0}^{x} e^{as} ds
$$

计算积分：


$$
\\int_{0}^{x} e^{as} ds = \\frac{1}{a}  \\lbrack e^{as} \\rbrack _{0}^{x} = \\frac{1}{a}(e^{ax} - 1)
$$

因此


$$
​\\int_{0}^{x} e^{as}f(s) ds​ ≤ \\frac{k}{a}(e^{ax} - 1)
$$

代入得：


$$
∣y(x)∣ ≤ e^{−ax} ⋅ \\frac{k}{a}(e^{ax} - 1) = \\frac{k}{a}(1 - e^{−ax})
$$

证毕。
', 9, 'Mogullzr', '2026-01-29 14:10:03', 9, 'Mogullzr', '2026-01-29 14:10:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1014');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1014');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1014');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1015, '1996年考研数学卷4第1题', '简单', '考研数学1996年卷4真题', '设方程$x = y^{y}$确定$y$是$x$的函数，则$dy =$______．', '[]', '

$$
dy = \\frac{dx}{x(1 + \\ln y)}
$$

', '给定方程$x = y^{y}$，其中$y$是$x$的函数。
步骤如下：

$$
\\ln x = y \\ln y
$$

', 9, 'Mogullzr', '2026-01-29 14:10:05', 9, 'Mogullzr', '2026-01-29 14:10:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1015');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1015');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1015');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1016, '1996年考研数学卷4第2题', '简单', '考研数学1996年卷4真题', '设$∫ xf(x)dx = arcsin x + C$，则$∫ \\frac{1}{f(x)}dx =$______．', '[]', '

$$
−\\frac{1}{3}(1 - x^{2})3/2 + C
$$

', '已知$∫ xf(x) dx = arcsin x + C$，对两边求导可得：

$$
xf(x) = \\frac{d}{dx}(arcsin x) = \\frac{1}{\\sqrt{1 - x^{2}}}
$$

解得：

$$
f(x) = \\frac{1}{x\\sqrt{1 - x^{2}}}
$$

因此，

$$
\\frac{1}{f(x)} = x\\sqrt{1 - x^{2}}
$$

需求积分：

$$
∫ \\frac{1}{f(x)} dx = ∫ x\\sqrt{1 - x^{2}} dx
$$

令$u = 1 - x^{2}$，则$du = −2x dx$，即$x dx = −\\frac{1}{2}du$，代入得：

$$
∫ x\\sqrt{1 - x^{2}} dx = ∫ \\sqrt{u} ⋅ (−\\frac{1}{2}) du = −\\frac{1}{2} ∫ u^{1/2} du = −\\frac{1}{2} ⋅ \\frac{2}{3}u^{3/2} + C = −\\frac{1}{3}u^{3/2} + C
$$

代回$u = 1 - x^{2}$：

$$
∫ \\frac{1}{f(x)} dx = −\\frac{1}{3}(1 - x^{2})3/2 + C
$$

', 9, 'Mogullzr', '2026-01-29 14:10:06', 9, 'Mogullzr', '2026-01-29 14:10:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1016');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1016');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1016');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1017, '1996年考研数学卷4第3题', '简单', '考研数学1996年卷4真题', '设$(x_{0}, y_{0})$是抛物线$y = ax^{2} + bx + c$上的一点，若在该点的切线过原点，则系数应满足的关系是 ______．', '[]', '
$ac ≥ 0$
', '
设点$(x_{0}, y_{0})$在抛物线$y = ax^{2} + bx + c$上，则$y_{0} = ax_{0}^{2} + bx_{0} + c$。在该点的切线斜率为$y^{′} = 2ax_{0} + b$，切线方程为$y - y_{0} = (2ax_{0} + b)(x - x_{0})$。
由于切线过原点$(0, 0)$，代入切线方程得：


$$
0 - y_{0} = (2ax_{0} + b)(0 - x_{0})
$$

简化得：


$$
−y_{0} = −x_{0}(2ax_{0} + b)
$$

即


$$
y_{0} = x_{0}(2ax_{0} + b)
$$

又因为$y_{0} = ax_{0}^{2} + bx_{0} + c$，所以：


$$
ax_{0}^{2} + bx_{0} + c = x_{0}(2ax_{0} + b)
$$

展开右边：


$$
ax_{0}^{2} + bx_{0} + c = 2ax_{0}^{2} + bx_{0}
$$

两边消去$bx_{0}$并整理得：


$$
c = ax_{0}^{2}
$$

因此，对于存在这样的点$(x_{0}, y_{0})$，必须存在实数$x_{0}$满足$c = ax_{0}^{2}$。这意味着$c$与$a$必须同号或$c = 0$，即$ac ≥ 0$。
注意：当$a = 0$时，抛物线退化为直线，但问题中为抛物线，故$a \\neq 0$，因此$ac ≥ 0$即为系数应满足的关系。
', 9, 'Mogullzr', '2026-01-29 14:10:06', 9, 'Mogullzr', '2026-01-29 14:10:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1017');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1017');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1017');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1018, '1996年考研数学卷4第4题', '简单', '考研数学1996年卷4真题', '设
$$
A = \\left( \\begin{array}{ccccc}
1 & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
a_{1} & a_{2} & a_{3} &  & a_{n} \\\\
 &  &  & ⋯ &  \\\\
a_{1}^{2} & a_{2}^{2} & a_{3}^{2} &  & a_{n}^{2} \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  &  &  \\\\
\\end{array} \\right) ,  X = \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
⋮ \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
⋮ \\\\
\\end{array} \\right) ,
$$
其中$a_{i} \\neq a_{j}$（$i \\neq j; i, j = 1, 2, ⋯  , n$）．则线性方程组$A^{T}X = B$的解是 ______．', '[]', '

$$
X = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
0 \\\\
⋮ \\\\
\\end{array} \\right)
$$

', '
因为$∣A∣$是范德蒙行列式，由$a_{i} \\neq a_{j}$知


$$
D = ∣A∣ = \\prod_{i<j}(a_{i} - a_{j}) \\neq 0,
$$

所以方程组$A^{T}X = B$有唯一解。根据克莱姆法则，对于

$$
\\left( \\begin{array}{ccccc}
1 & a_{1} & a_{1}^{2} &  & a_{1}^{n-1} \\\\
 &  &  & ⋯ &  \\\\
1 & a_{2} & a_{2}^{2} &  & a_{2}^{n-1} \\\\
 &  &  & ⋯ &  \\\\
1 & a_{3} & a_{3}^{2} &  & a_{3}^{n-1} \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
⋮ \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
⋮ \\\\
\\end{array} \\right) ,
$$

易见$D_{1} = ∣A∣, D_{2} = D_{3} = ⋯ = D_{n} = 0$，所以$A^{T}X = B$的解为


$$
x_{1} = 1, x_{2} = x_{3} = ⋯ = x_{n} = 0,
$$

即$(1, 0, 0, ⋯  , 0)T$。
', 9, 'Mogullzr', '2026-01-29 14:10:06', 9, 'Mogullzr', '2026-01-29 14:10:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1018');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1018');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1018');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1019, '1996年考研数学卷4第5题', '简单', '考研数学1996年卷4真题', '设由来自正态总体$X ∼ N(μ, 0.9^{2})$容量为9的简单随机样本，得样本均值$\\overline{X} = 5$，
则未知参数$μ$的置信度为0.95的置信区间为 ______．', '[]', '$(4.412, 5.588)$
', '
已知总体$X ∼ N(μ, 0.9^{2})$，样本容量$n = 9$，样本均值$\\overline{X} = 5$，置信度$1 - α = 0.95$，则$α = 0.05$。由于总体方差已知，使用标准正态分布构造置信区间。置信区间公式为：


$$
\\overline{X} ± z_{α/2}\\frac{σ}{\\sqrt{n}}
$$

其中$σ = 0.9$，$n = 9$，$\\overline{X} = 5$，$z_{α/2} = z_{0.025} = 1.96$。
计算标准误差：


$$
\\frac{σ}{\\sqrt{n}} = \\frac{0.9}{\\sqrt{9}} = \\frac{0.9}{3} = 0.3
$$

边际误差：


$$
1.96 × 0.3 = 0.588
$$

因此置信区间为：


$$
5 ± 0.588 = (4.412, 5.588)
$$

故未知参数$μ$的置信度为 0.95 的置信区间为$(4.412, 5.588)$。
', 9, 'Mogullzr', '2026-01-29 14:10:06', 9, 'Mogullzr', '2026-01-29 14:10:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1019');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1019');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1075', '1019');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1020, '1996年考研数学卷4第6题', '简单', '考研数学1996年卷4真题', '累次积分$\\int_{0}^{\\frac{π}{2}} dθ \\int_{0}^{\\cos θ} f(r \\cos θ, r \\sin θ)rdr$可以写成', '[''$\\\\int_{0}^{1} dy \\\\int_{0}^{\\\\sqrt{y-y^{2}}} f(x, y)dx$．'', ''$\\\\int_{0}^{1} dy \\\\int_{0}^{\\\\sqrt{1-y^{2}}} f(x, y)dx$．'', ''$\\\\int_{0}^{1} dx \\\\int_{0}^{1} f(x, y)dy$．'', ''$\\\\int_{0}^{1} dx \\\\int_{0}^{\\\\sqrt{x-x^{2}}} f(x, y)dy$．'']', "['D']", '
应选 (D)。由题设知，积分区域在极坐标系$x = r \\cos θ, y = r \\sin θ$中是

$$
D = \\{(r, θ)∣0 ≤ θ ≤ \\frac{π}{2}, 0 ≤ r ≤ \\cos θ\\}
$$
即是由

$$
(x - \\frac{1}{2})^{2} + y^{2} = \\frac{1}{4}
$$
与$x$轴在第一象限所围成的平面图形，如图：
D 的直角坐标表示是

$$
D = \\{(x, y) ∣ 0 < x < L,  0 < y < \\sqrt{x - x^{2}}\\}.
$$
', 9, 'Mogullzr', '2026-01-29 14:10:06', 9, 'Mogullzr', '2026-01-29 14:10:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1020');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1020');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '1020');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1021, '1996年考研数学卷4第7题', '简单', '考研数学1996年卷4真题', '下述各选项正确的是', '[''若$\\\\sum_{n=1}^{∞} u_{n}^{2}$和$\\\\sum_{n=1}^{∞} v_{n}^{2}$都收敛， 则$\\\\sum_{n=1}^{∞}(u_{n} + v_{n})2$收敛．'', ''$\\\\sum_{n=1}^{∞} ∣u_{n}v_{n}∣$收敛， 则$\\\\sum_{n=1}^{∞} u_{n}^{2}$与$\\\\sum_{n=1}^{∞} v_{n}^{2}$都收敛．'', ''若正项级数$\\\\sum_{n=1}^{∞} u_{n}$发散，则$u_{n} ≥ \\\\frac{1}{n}$．'', ''若级数$\\\\sum_{n=1}^{∞} u_{n}$收敛，且$u_{n} ≥ v_{n}$（$n = 1, 2, ⋯$）， 则级数$\\\\sum_{n=1}^{∞} v_{n}$也收敛．'']', "['A']", '
对于选项 A，已知$∑ u_{n}^{2}$和$∑ v_{n}^{2}$收敛。由柯西-施瓦茨不等式可得：
$$
∑ ∣u_{n}v_{n}∣ ≤ \\sqrt{∑ u_{n}^{2}}\\sqrt{∑ v_{n}^{2}} < ∞,
$$
因此$∑ u_{n}v_{n}$绝对收敛。于是：
$$
∑(u_{n} + v_{n})2 = ∑ u_{n}^{2} + 2 ∑ u_{n}v_{n} + ∑ v_{n}^{2}
$$
收敛，A 正确。对于选项 B，取$u_{n} = \\frac{1}{\\sqrt{n}}$，$v_{n} = \\frac{1}{n^{3/4}}$，则$∑ ∣u_{n}v_{n}∣ = ∑ \\frac{1}{n^{5/4}}$收敛，但$∑ u_{n}^{2} = ∑ \\frac{1}{n}$发散，B 错误。对于选项 C，取正项级数$∑ \\frac{1}{n \\ln n}$，该级数发散，虽然$\\frac{1}{n \\ln n} < \\frac{1}{n}$对大的$n$成立，但无法推出收敛，C 错误。对于选项 D，取$u_{n} = \\frac{1}{n^{2}}$（收敛），$v_{n} = −n$，满足$u_{n} ≥ v_{n}$，但$∑ v_{n}$发散，D 错误。因此，唯一正确的是 A。', 9, 'Mogullzr', '2026-01-29 14:10:07', 9, 'Mogullzr', '2026-01-29 14:10:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1021');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1021');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1021');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1022, '1996年考研数学卷4第8题', '简单', '考研数学1996年卷4真题', '设$n$阶矩阵$A$非奇异（$n ≥ 2$），$A^{∗}$是矩阵$A$的伴随矩阵，则', '[''$(A^{∗})∗ = ∣A∣^{n-1}A$．'', ''$(A^{∗})∗ = ∣A∣^{n+1}A$．'', ''$(A^{∗})∗ = ∣A∣^{n-2}A$．'', ''$(A^{∗})∗ = ∣A∣^{n+2}A$．'']', "['C']", '
设$A$为$n$阶非奇异矩阵（$n ≥ 2$），$A^{∗}$为$A$的伴随矩阵。
由伴随矩阵的性质可得：
$$
A^{∗} = ∣A∣A^{−1},  ∣A^{∗}∣ = ∣A∣^{n-1}.
$$
于是有：
$$
(A^{∗})∗ = ∣A^{∗}∣(A^{∗})−1.
$$
代入已知关系：
$$
(A^{∗})∗ = ∣A∣^{n-1}(A^{∗})−1.
$$
又由$A^{∗} = ∣A∣A^{−1}$可得：
$$
(A^{∗})−1 = \\frac{A}{∣A∣}.
$$
代入得：
$$
(A^{∗})∗ = ∣A∣^{n-1} ⋅ \\frac{A}{∣A∣} = ∣A∣^{n-2}A.
$$
因此选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:10:07', 9, 'Mogullzr', '2026-01-29 14:10:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1022');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1022');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1022');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1023, '1996年考研数学卷4第9题', '简单', '考研数学1996年卷4真题', '设有任意两个$n$维向量组$α_{1}, … , α_{m}$和$β_{1}, … , β_{m}$，
若存在两组不全为零的数$λ_{1}, … , λ_{m}$和$k_{1}, … , k_{m}$，使
$$
(λ_{1} + k_{1})α_{1} + ⋯ + (λ_{m} + k_{m})α_{m} + (λ_{1} - k_{1})β_{1} + ⋯ + (λ_{m} - k_{m})β_{m} = 0,
$$
则', '[''$α_{1}, ⋯  , α_{m}$和$β_{1}, ⋯  , β_{m}$都线性相关．'', ''$α_{1}, ⋯  , α_{m}$和$β_{1}, ⋯  , β_{m}$都线性无关．'', ''$α_{1} + β_{1}, ⋯  , α_{m} + β_{m}, α_{1} - β_{1}, ⋯  , α_{m} - β_{m}$线性无关．'', ''$α_{1} + β_{1}, ⋯  , α_{m} + β_{m}, α_{1} - β_{1}, ⋯  , α_{m} - β_{m}$线性相关．'']', "['D']", '
应选 (D)。既然$λ_{1}, ⋯  , λ_{m}$与$k_{1}, ⋯  , k_{m}$不全为零，由此推不出某向量组线性无关，故应排除 (B)、(C)。一般情况下，由
$$
k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{s}α_{s} + l_{1}β_{1} + ⋯ + l_{s}β_{s} = 0,
$$
不能保证必有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{s}α_{s} = 0$，及$l_{1}β_{1} + ⋯ + l_{s}β_{s} = 0$，故 (A) 不正确。由已知条件，有
$$
λ_{1}(α_{1} + β_{1}) + ⋯ + λ_{m}(α_{m} + β_{m}) + k_{1}(α_{1} - β_{1}) + ⋯ + k_{m}(α_{m} - β_{m}) = 0.
$$
又$λ_{1}, ⋯  , λ_{m}$与$k_{1}, ⋯  , k_{m}$不全为零，故$α_{1} + β_{1}, ⋯  , α_{m} + β_{m}, α_{1} - β_{1}, ⋯  , α_{m} - β_{m}$线性相关。故选 (D)。', 9, 'Mogullzr', '2026-01-29 14:10:07', 9, 'Mogullzr', '2026-01-29 14:10:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1023');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1023');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1023');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1024, '1996年考研数学卷4第10题', '简单', '考研数学1996年卷4真题', '已知$0 < P(B) < 1$且$P \\lbrack (A_{1} + A_{2})∣B \\rbrack  = P(A_{1}∣B) + P(A_{2}∣B)$，则下列选项成立的是', '[''$P \\\\lbrack (A_{1} + A_{2})∣\\\\overline{B} \\\\rbrack  = P(A_{1}∣\\\\overline{B}) + P(A_{2}∣\\\\overline{B})$．'', ''$P(A_{1}B + A_{2}B) = P(A_{1}B) + P(A_{2}B)$．'', ''$P(A_{1} + A_{2}) = P(A_{1}∣B) + P(A_{2}∣B)$．'', ''$P(B) = P(A_{1})P(B∣A_{1}) + P(A_{2})P(B∣A_{2})$．'']', "['B']", '
应选 (B)。依题意
$$
\\frac{P \\lbrack (A_{1} + A_{2})B \\rbrack }{P(B)} = \\frac{P(A_{1}B)}{P(B)} + \\frac{P(A_{2}B)}{P(B)},
$$

$$
\\frac{P(A_{1}B + A_{2}B)}{P(B)} = \\frac{P(A_{1}B) + P(A_{2}B)}{P(B)}.
$$
因$P(B) > 0$，故有$P(A_{1}B + A_{2}B) = P(A_{1}B) + P(A_{2}B)$。因此应选 (B)。注意不能选 (D)，因为全概率公式中要求事件$A_{1}, A_{2}$应满足$P(A_{1}) > 0, P(A_{2}) > 0$，且$A_{1}, A_{2}$是对立事件。', 9, 'Mogullzr', '2026-01-29 14:10:07', 9, 'Mogullzr', '2026-01-29 14:10:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1024');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1024');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1025, '1996年考研数学卷4第11题', '简单', '考研数学1996年卷4真题', '设$f(x) = \\begin{cases} \\frac{g(x)-e^{−x}}{x} & x \\neq 0 \\\\ 0 & x = 0 \\end{cases}$其中$g(x)$有二阶连续导数，且$g(0) = 1, g^{′}(0) = −1$．(1) 求$f^{′}(x)$；(2) 讨论$f^{′}(x)$在$(−∞, +∞)$上的连续性．', '[]', '

$$
f^{′}(x) = \\begin{cases} \\frac{xg^{′}(x) - g(x) + e^{−x}(x + 1)}{x^{2}} & x \\neq 0 \\\\ \\frac{g^{′′}(0) - 1}{2} & x = 0 \\end{cases}
$$

且$f^{′}(x)$在$(−∞, +∞)$上连续。
', '
(Ⅰ) 当$x \\neq 0$时，

$$
f^{′}(x) = \\frac{x \\lbrack g^{′}(x) + e^{−x} \\rbrack  - g(x) + e^{−x}}{x^{2}} = \\frac{xg^{′}(x) - g(x) + (x + 1)e^{−x}}{x^{2}}
$$

当$x = 0$时，由导数定义及洛必达法则，有

$$
f^{′}(0) = \\lim_{x→0} \\frac{g(x) - e^{−x}}{x^{2}} = \\lim_{x→0} \\frac{g^{′}(x) + e^{−x}}{2x} = \\lim_{x→0} \\frac{g^{′′}(x) - e^{−x}}{2} = \\frac{g^{′′}(0) - 1}{2}
$$

所以得到

$$
f^{′}(x) = \\begin{cases} \\frac{xg^{′}(x)-g(x)+(x+1)e^{−x}}{x^{2}} & x \\neq 0 \\\\ \\frac{g^{′′}(0)-1}{2} & x = 0. \\end{cases}
$$

(II) 由于$g(x)$有二阶连续导数，当$x \\neq 0$时$f(x)$也具有二阶连续导数，且$f^{′}(x)$连续。在$x = 0$处有

$$
\\begin{array}{cc}
\\lim_{x→0} f^{′}(x) & = \\lim_{x→0} \\frac{xg^{′}(x) - g(x) + (x + 1)e^{−x}}{x^{2}} \\\\
 & = \\lim_{x→0} \\frac{g^{′}(x) + xg^{′′}(x) - g^{′}(x) + e^{−x} - (x + 1)e^{−x}}{2x} \\\\
 & = \\lim_{x→0} \\frac{g^{′′}(x) - e^{−x}}{2} = \\frac{g^{′′}(0) - 1}{2} = f^{′}(0), \\\\
\\end{array}
$$

即$f^{′}(x)$在$x \\neq 0$处连续，所以$f^{′}(x)$在$(−∞, +∞)$上为连续函数。
', 9, 'Mogullzr', '2026-01-29 14:10:08', 9, 'Mogullzr', '2026-01-29 14:10:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1025');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1025');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1025');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1026, '1996年考研数学卷4第12题', '简单', '考研数学1996年卷4真题', '设函数$z = f(u)$，方程$u = φ(u) + \\int_{y}^{x} p(t)dt$确定$u$是$x, y$的函数，
其中$f(u), φ(u)$可微；$p(t)$,$φ^{′}(u)$连续，且$φ^{′}(u) \\neq 1$．
求$p(y)\\frac{∂z}{∂x} + p(x)\\frac{∂z}{∂y}$．', '[]', '0
', '给定$z = f(u)$，且$u$由方程$u = φ(u) + \\int_{y}^{x} p(t)dt$确定。
核心步骤：

$$
\\frac{∂z}{∂x} = f^{′}(u)\\frac{∂u}{∂x},  \\frac{∂z}{∂y} = f^{′}(u)\\frac{∂u}{∂y}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:08', 9, 'Mogullzr', '2026-01-29 14:10:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1026');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1026');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1026');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1027, '1996年考研数学卷4第13题', '简单', '考研数学1996年卷4真题', '计算
$$
\\int_{0}^{+∞} \\frac{xe^{−x}}{(1 + e^{−x})2}dx
$$
', '[]', '$\\ln 2$
', '
方法1：用分部积分法得到


$$
\\begin{array}{cc}
∫ \\frac{xe^{−x}}{(1 + e^{−x})2}dx & = ∫ x d (\\frac{1}{1 + e^{−x}}) \\\\
 & = \\frac{x}{1 + e^{−x}} - ∫ \\frac{dx}{1 + e^{−x}} \\\\
 & = \\frac{x}{1 + e^{−x}} - ∫ \\frac{1}{1 + e^{x}} d(1 + e^{x}) \\\\
\\end{array}
$$

所以


$$
\\int_{0}^{+∞} \\frac{xe^{−x}}{(1 + e^{−x})2}dx = \\lim_{x→+∞}  \\lbrack \\frac{xe^{x}}{1 + e^{x}} - \\ln(1 + e^{x}) \\rbrack  + \\ln 2.
$$

而极限


$$
\\begin{array}{cc}
\\lim_{x→+∞}  \\lbrack \\frac{xe^{x}}{1 + e^{x}} - \\ln(1 + e^{x}) \\rbrack  & = \\lim_{x→+∞}  \\lbrack \\frac{xe^{x}}{1 + e^{x}} - x + x - \\ln(1 + e^{x}) \\rbrack  \\\\
 & = \\lim_{x→+∞}  \\lbrack \\frac{e^{x}}{1 + e^{x}} + \\ln \\frac{e^{x}}{1 + e^{x}} \\rbrack  \\\\
\\end{array}
$$

故原式=$\\ln 2$。

方法2：直接计算反常积分得


$$
\\begin{array}{cc}
\\int_{0}^{+∞} \\frac{xe^{−x}}{(1 + e^{−x})2}dx & = \\int_{0}^{+∞} \\frac{xe^{x}}{(1 + e^{x})2}dx = − \\int_{0}^{+∞} x d\\frac{1}{1 + e^{x}} \\\\
 & = −\\frac{x}{1 + e^{x}}​_{0}^{+∞} + \\int_{0}^{+∞} \\frac{dx}{1 + e^{x}} = \\int_{0}^{+∞} \\frac{dx}{1 + e^{x}} \\\\
 & = \\int_{0}^{+∞} \\frac{e^{−x}}{1 + e^{−x}}dx = − \\int_{0}^{+∞} \\frac{1}{1 + e^{−x}} d(1 + e^{−x}) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:08', 9, 'Mogullzr', '2026-01-29 14:10:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1027');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1027');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1027');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1028, '1996年考研数学卷4第14题', '简单', '考研数学1996年卷4真题', '设$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上可微，且满足条件$f(1) = 2 \\int_{0}^{\\frac{1}{2}} xf(x)dx$．
试证：存在$ξ ∈ (0, 1)$使$f(ξ) + ξf^{′}(ξ) = 0$．', '[]', '见解析
', '考虑函数$g(x) = xf(x)$，则$g(x)$在$\\lbrack 0, 1 \\rbrack$上可微，且


$$
g^{′}(x) = f(x) + xf^{′}(x).
$$

由条件$f(1) = 2 \\int_{0}^{1/2} xf(x)dx$，即


$$
g(1) = 2 \\int_{0}^{1/2} g(x)dx,
$$

所以


$$
\\int_{0}^{1/2} g(x)dx = \\frac{g(1)}{2}.
$$

根据积分中值定理，存在$c ∈  \\lbrack 0, 1/2 \\rbrack$使得


$$
g(c) ⋅ \\frac{1}{2} = \\int_{0}^{1/2} g(x)dx,
$$

即$g(c) = g(1)$。
若$c ∈ (0, 1/2)$，在$\\lbrack c, 1 \\rbrack$上应用罗尔定理，存在$ξ ∈ (c, 1) ⊂ (0, 1)$使得$g^{′}(ξ) = 0$，即
$f(ξ) + ξf^{′}(ξ) = 0.$若$c = 0$或$c = 1/2$，则$g(0) = g(1)$或$g(1/2) = g(1)$，在$\\lbrack 0, 1 \\rbrack$或$\\lbrack 1/2, 1 \\rbrack$上应用罗尔定理，同样存在$ξ ∈ (0, 1)$使得$g^{′}(ξ) = 0$。
因此，总存在$ξ ∈ (0, 1)$使


$$
f(ξ) + ξf^{′}(ξ) = 0.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:08', 9, 'Mogullzr', '2026-01-29 14:10:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1028');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1028');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1028');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1029, '1996年考研数学卷4第15题', '简单', '考研数学1996年卷4真题', '设某种商品的单价为$p$时，售出的商品数量$Q$可以表示成$Q = \\frac{a}{p+b} - c$,
其中$a$,$b$,$c$均为正数，且$a > bc$．(1) 求$p$在何范围变化时，使相应销售额增加或减少．(2) 要使销售额最大，商品单价$p$应取何值？最大销售额是多少？', '[]', '(1) 当$0 ≤ p < \\sqrt{\\frac{ab}{c}} - b$时，销售额增加；当$p > \\sqrt{\\frac{ab}{c}} - b$时，销售额减少。
(2) 要使销售额最大，商品单价应取$p = \\sqrt{\\frac{ab}{c}} - b$，最大销售额为$(\\sqrt{a} - \\sqrt{bc})^{2}$.
', '
(1) 销售额函数为$R(p) = p (\\frac{a}{p+b} - c)$。求导得$R^{′}(p) = \\frac{ab}{(p+b)2} - c$。令$R^{′}(p) > 0$，得$\\frac{ab}{(p+b)2} > c$，即$(p + b)2 < \\frac{ab}{c}$，所以$p < \\sqrt{\\frac{ab}{c}} - b$，此时销售额增加。令$R^{′}(p) < 0$，得$(p + b)2 > \\frac{ab}{c}$，即$p > \\sqrt{\\frac{ab}{c}} - b$，此时销售额减少。由于$a > bc$，有$\\sqrt{\\frac{ab}{c}} - b > 0$，且$p$需满足$Q ≥ 0$即$p ≤ \\frac{a}{c} - b$，但$\\frac{a}{c} - b > \\sqrt{\\frac{ab}{c}} - b$，故上述范围有效。
(2) 销售额最大时，$R^{′}(p) = 0$，即$p = \\sqrt{\\frac{ab}{c}} - b$。代入$R(p)$得最大销售额$R = (\\sqrt{\\frac{ab}{c}} - b) (\\frac{a}{\\sqrt{\\frac{ab}{c}}} - c) = a - 2\\sqrt{abc} + bc = (\\sqrt{a} - \\sqrt{bc})^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:10:08', 9, 'Mogullzr', '2026-01-29 14:10:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1029');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1029');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1029');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1030, '1996年考研数学卷4第16题', '简单', '考研数学1996年卷4真题', '求微分方程
$$
\\frac{dy}{dx} = \\frac{y - \\sqrt{x^{2} + y^{2}}}{x}
$$
的通解．', '[]', '$y + \\sqrt{x^{2} + y^{2}} = C$，其中$C$为正常数。
', '
令$z = \\frac{y}{x}$，则$\\frac{dy}{dx} = z + x\\frac{dz}{dx}$。当$x > 0$时，原方程化为

$$
z + x\\frac{dz}{dx} = z - \\sqrt{1 + z^{2}} ⇒ \\frac{dz}{\\sqrt{1 + z^{2}}} = −\\frac{dx}{x}
$$

其通解为$\\ln(z + \\sqrt{1 + z^{2}}) = − \\ln x + C_{1}$或$z + \\sqrt{1 + z^{2}} = \\frac{C}{x}$。代回原变量，得通解$y + \\sqrt{x^{2} + y^{2}} = C(x > 0)$。
当$x < 0$时，原方程的解与$x > 0$时相同，理由如下：令$t = −x$，则$t > 0$，而且

$$
\\frac{dy}{dt} = \\frac{dy}{dx} ⋅ \\frac{dx}{dt} = −\\frac{dy}{dx} = \\frac{−y - \\sqrt{x^{2} + y^{2}}}{x} = \\frac{y - \\sqrt{x^{2} + y^{2}}}{−x} = \\frac{y - \\sqrt{t^{2} + y^{2}}}{t}
$$

从而有通解$y + \\sqrt{t^{2} + y^{2}} = C(t > 0)$，即$y + \\sqrt{x^{2} + y^{2}} = C(x < 0)$。综上所得，方程的通解为$y + \\sqrt{x^{2} + y^{2}} = C$。
', 9, 'Mogullzr', '2026-01-29 14:10:08', 9, 'Mogullzr', '2026-01-29 14:10:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1030');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1030');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1068', '1030');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1031, '1996年考研数学卷4第17题', '简单', '考研数学1996年卷4真题', '设矩阵$A = \\left( \\begin{array}{cccc}
0 & 1 & 0 & 0 \\\\
1 & 0 & 0 & 0 \\\\
0 & 0 & y & 1 \\\\
0 & 0 & 1 & 2 \\\\
\\end{array} \\right)$．(1) 已知$A$的一个特征值为$3$，试求$y$；(2) 求矩阵$P$，使$(AP)T(AP)$为对角矩阵．', '[]', '
(1)$y = 2$
(2)$P = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 1 & −\\frac{4}{5} \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right)$
', '
(Ⅰ) 因为$λ = 3$是$A$的特征值，故

$$
∣3E - A∣ = \\begin{vmatrix}
3 & −1 & 0 & 0\\\\
−1 & 3 & 0 & 0\\\\
0 & 0 & 3 - y & −1\\\\
0 & 0 & −1 & 1
\\end{vmatrix} = \\begin{vmatrix}
3 & −1 & 3 - y & −1\\\\
−1 & 3 & −1 & 1\\\\
0 & 0 & 0 & 1
\\end{vmatrix} = 8(2 - y) = 0,
$$

所以$y = 2$.
(Ⅱ) 由于$A^{T} = A$, 要$(AP)T(AP) = P^{T}A^{2}P = Λ$, 而

$$
A^{2} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 5 & 4 \\\\
0 & 0 & 4 & 5 \\\\
\\end{array} \\right)
$$

是对称矩阵，故可构造二次型$x^{T}A^{2}x$, 将其化为标准形$y^{T}Λy$. 由于

$$
x^{T}A^{2}x = x_{1}^{2} + x_{2}^{2} + 5x_{3}^{2} + 5x_{4}^{2} + 8x_{3}x_{4}
$$



$$
= x_{1}^{2} + x_{2}^{2} + 5 (x_{3}^{2} + \\frac{8}{5}x_{3}x_{4} + \\frac{16}{25}x_{4}^{2}) + 5x_{4}^{2} - \\frac{16}{5}x_{4}^{2}
$$



$$
= x_{1}^{2} + x_{2}^{2} + 5 (x_{3} + \\frac{4}{5}x_{4})^{2} + \\frac{9}{5}x_{4}^{2},
$$

那么，令$y_{1} = x_{1}, y_{2} = x_{2}, y_{3} = x_{3} + \\frac{4}{5}x_{4}, y_{4} = x_{4}$, 即经坐标变换

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 1 & −\\frac{4}{5} \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
y_{3} \\\\
y_{4} \\\\
\\end{array} \\right) ,
$$

有$x^{T}A^{2}x = y_{1}^{2} + y_{2}^{2} + 5y_{3}^{2} + \\frac{9}{5}y_{4}^{2}$. 所以取

$$
P = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 1 & −\\frac{4}{5} \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right) ,
$$

则有

$$
(AP)T(AP) = P^{T}A^{2}P = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 5 & 0 \\\\
0 & 0 & 0 & \\frac{9}{5} \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:10:09', 9, 'Mogullzr', '2026-01-29 14:10:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1031');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1031');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1031');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1032, '1996年考研数学卷4第18题', '简单', '考研数学1996年卷4真题', '设向量$α_{1}, α_{2}, ⋯  , α_{t}$是齐次线性方程组$AX = 0$的一个基础解系，
向量$β$不是方程组$AX = 0$的解，即$Aβ \\neq 0$．
试证明：向量组$β, β + α_{1}, β + α_{2}, ⋯  , β + α_{t}$线性无关．', '[]', '见解析
', '
考虑线性组合：


$$
k_{0}β + k_{1}(β + α_{1}) + k_{2}(β + α_{2}) + ⋯ + k_{t}(β + α_{t}) = 0
$$

整理得：


$$
(k_{0} + k_{1} + k_{2} + ⋯ + k_{t})β + k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{t}α_{t} = 0
$$

令$s = k_{0} + k_{1} + k_{2} + ⋯ + k_{t}$，则：


$$
sβ + k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{t}α_{t} = 0
$$

对上述等式施加矩阵$A$，利用$Aα_{i} = 0$（因为$α_{i}$是$AX = 0$的解）和$Aβ \\neq 0$：


$$
A(sβ + k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{t}α_{t}) = sAβ = 0
$$

由于$Aβ \\neq 0$，必有$s = 0$。代入原式得：


$$
k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{t}α_{t} = 0
$$

因为$α_{1}, α_{2}, ⋯  , α_{t}$是基础解系，故线性无关，所以$k_{1} = k_{2} = ⋯ = k_{t} = 0$。又由$s = k_{0} + k_{1} + ⋯ + k_{t} = 0$得$k_{0} = 0$。因此所有系数均为零，向量组线性无关。
', 9, 'Mogullzr', '2026-01-29 14:10:09', 9, 'Mogullzr', '2026-01-29 14:10:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1032');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1032');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1032');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1033, '1996年考研数学卷4第19题', '简单', '考研数学1996年卷4真题', '假设一部机器在一天内发生故障的概率为$0.2$，机器发生故障时全天停止工作，
若一周$5$个工作日里无故障，可获利润$10$万元；
发生一次故障仍可获得利润$5$万元；发生两次故障所获利润$0$元；发生三次或三次以上故障就要亏损$2$万元．
求一周内期望利润是多少?', '[]', '5.21 万元
', '
设一周 5 个工作日内发生故障的天数为$X$，则$X$服从二项分布即$B(5, 0.2)$。由二项分布的概率计算公式，有


$$
\\begin{array}{c}
P\\{X = 0\\} = 0.8^{5} = 0.328, \\\\
P\\{X = 1\\} = C_{5}^{1}0.8^{4} ⋅ 0.2 = 0.410, \\\\
P\\{X = 2\\} = C_{5}^{2}0.8^{3} ⋅ 0.2^{2} = 0.205, \\\\
\\end{array}
$$

设一周内所获利润$Y$（万元），则$Y$是$X$的函数，且


$$
Y = f(X) = \\begin{cases} 10 & 若X = 0 \\\\ 5 & 若X = 1 \\\\ 0 & 若X = 2 \\\\ −2 & 若X ≥ 3. \\end{cases}
$$


所以$EY = 10 × 0.328 + 5 × 0.410 - 2 × 0.057 = 5.216$（万元）。
', 9, 'Mogullzr', '2026-01-29 14:10:09', 9, 'Mogullzr', '2026-01-29 14:10:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1033');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1033');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1034, '1996年考研数学卷4第20题', '简单', '考研数学1996年卷4真题', '考虑一元二次方程$x^{2} + Bx + C = 0$，其中$B, C$分别是将一枚色子(骰子)接连掷两次先后出现的点数．
求该方程有实根的概率$p$和有重根的概率$q$．', '[]', '
$p = \\frac{19}{36}$,$q = \\frac{1}{18}$
', '
一枚色子（骰子）接连掷两次，其样本空间中样本点总数为 36。设事件$A_{1} =$“方程有实根”，$A_{2} =$“方程有重根”，则

$$
A_{1} = \\{B^{2} - 4C ≥ 0\\} = \\{C ≤ \\frac{B^{2}}{4}\\}
$$

用列举法求有利于$A_{i}$的样本点个数（$i = 1, 2$），如下表：

$$
\\begin{array}{c|cccccc}
B & 1 & 2 & 3 & 4 & 5 & 6 \\\\
有利于A_{1}的样本点数 & 0 & 1 & 2 & 4 & 6 & 6 \\\\
有利于A_{2}的样本点数 & 0 & 1 & 0 & 1 & 0 & 0 \\\\
\\end{array}
$$

由古典型概率计算公式得到

$$
p = P(A_{1}) = \\frac{1 + 2 + 4 + 6 + 6}{36} = \\frac{19}{36},  q = P(A_{2}) = \\frac{1 + 1}{36} = \\frac{1}{18}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:09', 9, 'Mogullzr', '2026-01-29 14:10:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1034');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1034');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1035, '1996年考研数学卷4第21题', '简单', '考研数学1996年卷4真题', '假设$X_{1}, X_{2}, ⋯  , X_{n}$是来自总体X的简单随机样本；已知$EX^{k} = a_{k}(k = 1, 2, 3, 4)$．
证明：当$n$充分大时，随机变量$Z_{n} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}^{2}$近似服从正态分布，并指出其分布参数．', '[]', '当$n$充分大时，$Z_{n}$近似服从正态分布，其均值为$a_{2}$，方差为$\\frac{a_{4}-a_{2}^{2}}{n}$。
', '令$Y_{i} = X_{i}^{2}$，则$Y_{1}, Y_{2}, ⋯  , Y_{n}$是独立同分布的随机变量。
由已知条件，$EY_{i} = EX_{i}^{2} = a_{2}$，且$EY_{i}^{2} = EX_{i}^{4} = a_{4}$，故

$$
Var(Y_{i}) = EY_{i}^{2} - (EY_{i})2 = a_{4} - a_{2}^{2}.
$$

由中心极限定理，当$n$充分大时，

$$
Z_{n} = \\frac{1}{n} \\sum_{i=1}^{n} Y_{i}
$$

近似服从正态分布，其均值为$EY_{i} = a_{2}$，方差为

$$
\\frac{Var(Y_{i})}{n} = \\frac{a_{4} - a_{2}^{2}}{n}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:10', 9, 'Mogullzr', '2026-01-29 14:10:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1035');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1081', '1035');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1036, '1996年考研数学卷5第1题', '', '考研数学1996年卷5真题', '/problems/other/1015', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:11', 9, 'Mogullzr', '2026-01-29 14:10:11', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1037, '1996年考研数学卷5第2题', '', '考研数学1996年卷5真题', '/problems/other/1016', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:11', 9, 'Mogullzr', '2026-01-29 14:10:11', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1038, '1996年考研数学卷5第3题', '简单', '考研数学1996年卷5真题', '$y = \\ln(x + \\sqrt{1 + x^{2}})$，则$y^{′′}∣_{x=\\sqrt{3}} =$______．', '[]', '
$−\\frac{\\sqrt{3}}{8}$
', '
给定函数$y = \\ln(x + \\sqrt{1 + x^{2}})$，首先求一阶导数$y^{′}$。
设$u = x + \\sqrt{1 + x^{2}}$，则$y = \\ln u$，于是


$$
y^{′} = \\frac{1}{u} ⋅ u^{′}.
$$

计算$u^{′}$：


$$
u^{′} = 1 + \\frac{1}{2}(1 + x^{2})−1/2 ⋅ 2x = 1 + \\frac{x}{\\sqrt{1 + x^{2}}}.
$$

代入得：


$$
y^{′} = \\frac{1}{x + \\sqrt{1 + x^{2}}} (1 + \\frac{x}{\\sqrt{1 + x^{2}}}) = \\frac{1}{x + \\sqrt{1 + x^{2}}} ⋅ \\frac{\\sqrt{1 + x^{2}} + x}{\\sqrt{1 + x^{2}}} = \\frac{1}{\\sqrt{1 + x^{2}}}.
$$

因此，


$$
y^{′} = (1 + x^{2})−1/2.
$$

接下来求二阶导数$y^{′′}$：


$$
y^{′′} = −\\frac{1}{2}(1 + x^{2})−3/2 ⋅ 2x = −x(1 + x^{2})−3/2 = −\\frac{x}{(1 + x^{2})3/2}.
$$

在$x = \\sqrt{3}$处，


$$
1 + x^{2} = 1 + 3 = 4,
$$



$$
(1 + x^{2})3/2 = 4^{3/2} = 8,
$$

所以


$$
y^{′′} = −\\frac{\\sqrt{3}}{8}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:11', 9, 'Mogullzr', '2026-01-29 14:10:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1038');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1038');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1038');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1039, '1996年考研数学卷5第4题', '简单', '考研数学1996年卷5真题', '$5$阶行列式$\\begin{vmatrix}
1 - a & a & 0 & 0 & 0\\\\
−1 & 1 - a & a & 0 & 0\\\\
0 & −1 & 1 - a & a & 0\\\\
0 & 0 & −1 & 1 - a & a\\\\
0 & 0 & 0 & −1 & 1 - a
\\end{vmatrix} =$______．', '[]', '
$1 - a + a^{2} - a^{3} + a^{4} - a^{5}$
', '
考虑行列式$D_{n}$的递推关系。通过按第一行展开，得到


$$
D_{n} = (1 - a)D_{n-1} + aD_{n-2},
$$

其中$D_{0} = 1$，$D_{1} = 1 - a$。
解特征方程


$$
r^{2} - (1 - a)r - a = 0,
$$

得根$r = 1$和$r = −a$，因此通解为


$$
D_{n} = A + B(−a)n.
$$

代入初始条件：
当$n = 0$时，$A + B = 1$；当$n = 1$时，$A - aB = 1 - a$。
解得


$$
A = \\frac{1}{1 + a},  B = \\frac{a}{1 + a},
$$

所以


$$
D_{n} = \\frac{1 + (−1)na^{n+1}}{1 + a}.
$$

对于$n = 5$，有


$$
D_{5} = \\frac{1 - a^{6}}{1 + a} = 1 - a + a^{2} - a^{3} + a^{4} - a^{5}.
$$

因此，该 5 阶行列式的值为


$$
1 - a + a^{2} - a^{3} + a^{4} - a^{5}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1039');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '1039');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1040, '1996年考研数学卷5第5题', '简单', '考研数学1996年卷5真题', '一实习生用同一台机器接连独立地制造$3$个同种零件，
第$i$个零件是不合格品的概率$P_{i} = \\frac{1}{i+1}$（$i = 1, 2, 3$），
以$X$表示$3$个零件中合格品的个数，则$P\\{X = 2\\} =$______．', '[]', '$\\frac{11}{24}$
', '每个零件的不合格概率为$P_{i} = \\frac{1}{i+1}$，因此合格概率为$1 - P_{i} = \\frac{i}{i+1}$。具体地：
零件1合格概率：$\\frac{1}{2}$零件2合格概率：$\\frac{2}{3}$零件3合格概率：$\\frac{3}{4}$
$X$表示合格品个数，求$P\\{X = 2\\}$，即恰好两个零件合格。考虑所有可能情况：
零件1和2合格，零件3不合格：概率为$\\frac{1}{2} × \\frac{2}{3} × \\frac{1}{4} = \\frac{1}{12}$零件1和3合格，零件2不合格：概率为$\\frac{1}{2} × \\frac{1}{3} × \\frac{3}{4} = \\frac{1}{8}$零件2和3合格，零件1不合格：概率为$\\frac{1}{2} × \\frac{2}{3} × \\frac{3}{4} = \\frac{1}{4}$
将以上概率相加：$\\frac{1}{12} + \\frac{1}{8} + \\frac{1}{4} = \\frac{2}{24} + \\frac{3}{24} + \\frac{6}{24} = \\frac{11}{24}$。因此，$P\\{X = 2\\} = \\frac{11}{24}$。
', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1040');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1040');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1041, '1996年考研数学卷5第6题', '简单', '考研数学1996年卷5真题', '设$f^{′}(x_{0}) = f^{′′}(x_{0}) = 0$，$f^{′′′}(x_{0}) > 0$，则下列选项正确的是', '[''$f^{′}(x_{0})$是$f^{′}(x)$的极大值．'', ''$f(x_{0})$是$f(x)$的极大值．'', ''$f(x_{0})$是$f(x)$的极小值．'', ''$(x_{0}, f(x_{0}))$是曲线$y = f(x)$的拐点．'']', "['D']", '
给定条件$f^{′}(x_{0}) = f^{′′}(x_{0}) = 0$且$f^{′′′}(x_{0}) > 0$。
由于$f^{′′′}(x_{0}) > 0$，表明二阶导数$f^{′′}(x)$在$x_{0}$处单调递增，且$f^{′′}(x_{0}) = 0$，因此存在邻域使得：当$x < x_{0}$时，$f^{′′}(x) < 0$；当$x > x_{0}$时，$f^{′′}(x) > 0$。即二阶导数在$x_{0}$处变号，故$(x_{0}, f(x_{0}))$为曲线$y = f(x)$的拐点。对于选项 A，考虑$g(x) = f^{′}(x)$，则

$$
g^{′}(x_{0}) = f^{′′}(x_{0}) = 0,  g^{′′}(x_{0}) = f^{′′′}(x_{0}) > 0,
$$
故$g(x_{0})$为$g(x)$的极小值，即$f^{′}(x_{0})$是$f^{′}(x)$的极小值而非极大值，A 错误。对于选项 B 和 C，由泰勒展开

$$
f(x) ≈ f(x_{0}) + \\frac{f^{′′′}(x_{0})}{6}(x - x_{0})3
$$
可知：当$x < x_{0}$时，$f(x) < f(x_{0})$；当$x > x_{0}$时，$f(x) > f(x_{0})$。故$f(x_{0})$不是极值点，B 和 C 错误。因此正确选项为 D。', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1041');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1041');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1041');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1042, '1996年考研数学卷5第7题', '', '考研数学1996年卷5真题', '/problems/other/1001', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1043, '1996年考研数学卷5第8题', '', '考研数学1996年卷5真题', '/problems/other/1022', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1044, '1996年考研数学卷5第9题', '', '考研数学1996年卷5真题', '/problems/other/1023', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1045, '1996年考研数学卷5第10题', '简单', '考研数学1996年卷5真题', '设$A$,$B$为任意两个事件，且$A ⊂ B$，$P(B) > 0$，则下列选项必然成立的是', '[''$P(A) < P(A∣B)$．'', ''$P(A) ≤ P(A∣B)$．'', ''$P(A) > P(A∣B)$．'', ''$P(A) ≥ P(A∣B)$．'']', "['B']", '
由于$A ⊂ B$且$P(B) > 0$，则条件概率
$$
P(A∣B) = \\frac{P(A ∩ B)}{P(B)} = \\frac{P(A)}{P(B)}
$$
因为$P(B) ≤ 1$，所以
$$
\\frac{P(A)}{P(B)} ≥ P(A),
$$
即$P(A∣B) ≥ P(A)$。当$P(B) < 1$时，$P(A∣B) > P(A)$；
当$P(B) = 1$时，$P(A∣B) = P(A)$。因此，必然成立的是$P(A) ≤ P(A∣B)$，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1045');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1045');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1046, '1996年考研数学卷5第11题', '', '考研数学1996年卷5真题', '/problems/other/1025', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1047, '1996年考研数学卷5第12题', '简单', '考研数学1996年卷5真题', '设$f(x, y) = \\int_{0}^{xy} e^{−t^{2}} dt$，
求

$$
\\frac{x}{y}\\frac{∂^{2}f}{∂x^{2}} - 2\\frac{∂^{2}f}{∂x∂y} + \\frac{y}{x}\\frac{∂^{2}f}{∂y^{2}}.
$$
', '[]', '

$$
−2e^{−x^{2}y^{2}}
$$

', '给定函数$f(x, y) = \\int_{0}^{xy} e^{−t^{2}} dt$，首先计算一阶偏导数：

$$
\\frac{∂f}{∂x} = e^{−(xy)2} ⋅ \\frac{∂}{∂x}(xy) = ye^{−x^{2}y^{2}},  \\frac{∂f}{∂y} = e^{−(xy)2} ⋅ \\frac{∂}{∂y}(xy) = xe^{−x^{2}y^{2}}.
$$

接着计算二阶偏导数：

$$
\\frac{∂^{2}f}{∂x^{2}} = \\frac{∂}{∂x} (ye^{−x^{2}y^{2}}) = y ⋅ e^{−x^{2}y^{2}} ⋅ (−2xy^{2}) = −2xy^{3}e^{−x^{2}y^{2}},
$$



$$
\\frac{∂^{2}f}{∂y^{2}} = \\frac{∂}{∂y} (xe^{−x^{2}y^{2}}) = x ⋅ e^{−x^{2}y^{2}} ⋅ (−2x^{2}y) = −2x^{3}ye^{−x^{2}y^{2}},
$$



$$
\\frac{∂^{2}f}{∂x∂y} = \\frac{∂}{∂y} (ye^{−x^{2}y^{2}}) = e^{−x^{2}y^{2}} + y ⋅ e^{−x^{2}y^{2}} ⋅ (−2x^{2}y) = e^{−x^{2}y^{2}}(1 - 2x^{2}y^{2}).
$$

代入表达式：

$$
E = \\frac{x}{y}\\frac{∂^{2}f}{∂x^{2}} - 2\\frac{∂^{2}f}{∂x∂y} + \\frac{y}{x}\\frac{∂^{2}f}{∂y^{2}},
$$

计算各项：

$$
\\frac{x}{y}\\frac{∂^{2}f}{∂x^{2}} = \\frac{x}{y} ⋅ (−2xy^{3}e^{−x^{2}y^{2}}) = −2x^{2}y^{2}e^{−x^{2}y^{2}},
$$



$$
−2\\frac{∂^{2}f}{∂x∂y} = −2 ⋅ e^{−x^{2}y^{2}}(1 - 2x^{2}y^{2}) = −2e^{−x^{2}y^{2}} + 4x^{2}y^{2}e^{−x^{2}y^{2}},
$$



$$
\\frac{y}{x}\\frac{∂^{2}f}{∂y^{2}} = \\frac{y}{x} ⋅ (−2x^{3}ye^{−x^{2}y^{2}}) = −2x^{2}y^{2}e^{−x^{2}y^{2}}.
$$

合并得：

$$
E = (−2x^{2}y^{2}e^{−x^{2}y^{2}}) + (−2e^{−x^{2}y^{2}} + 4x^{2}y^{2}e^{−x^{2}y^{2}}) + (−2x^{2}y^{2}e^{−x^{2}y^{2}}) = −2e^{−x^{2}y^{2}}.
$$

因此，结果为$−2e^{−x^{2}y^{2}}$.
', 9, 'Mogullzr', '2026-01-29 14:10:12', 9, 'Mogullzr', '2026-01-29 14:10:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1047');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1047');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1047');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1048, '1996年考研数学卷5第13题', '', '考研数学1996年卷5真题', '/problems/other/1027', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:13', 9, 'Mogullzr', '2026-01-29 14:10:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1049, '1996年考研数学卷5第14题', '', '考研数学1996年卷5真题', '/problems/other/1029', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:13', 9, 'Mogullzr', '2026-01-29 14:10:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1050, '1996年考研数学卷5第15题', '简单', '考研数学1996年卷5真题', '已知一抛物线通过$x$轴上的两点$A(1, 0)$，$B(3, 0)$．(1) 求证：两坐标轴与该抛物线所围图形的面积等于$x$轴与该抛物线所围图形的面积；(2) 计算上述两个平面图形绕$x$轴旋转一周所产生的两个旋转体体积之比．', '[]', '
(1) 证明略（见解析）；
(2) 体积之比为$\\frac{19}{8}$。
', '
(1) 设抛物线方程为$y = a(x - 1)(x - 3)$，其中$a \\neq 0$。两坐标轴与该抛物线所围图形的面积记为$S_{1}$，即由$x$轴、$y$轴和抛物线从$x = 0$到$x = 1$所围成的区域面积。$x$轴与该抛物线所围图形的面积记为$S_{2}$，即由$x$轴和抛物线从$x = 1$到$x = 3$所围成的区域面积。
计算$S_{1}$和$S_{2}$：


$$
S_{1} = − \\int_{0}^{1} a(x - 1)(x - 3) dx = −a \\int_{0}^{1}(x^{2} - 4x + 3) dx
$$



$$
\\int_{0}^{1}(x^{2} - 4x + 3) dx =  \\lbrack \\frac{1}{3}x^{3} - 2x^{2} + 3x \\rbrack _{0}^{1} = \\frac{1}{3} - 2 + 3 = \\frac{4}{3}
$$

所以$S_{1} = −a ⋅ \\frac{4}{3}$。


$$
S_{2} = \\int_{1}^{3} a(x - 1)(x - 3) dx = a \\int_{1}^{3}(x^{2} - 4x + 3) dx
$$



$$
\\begin{array}{cc}
\\int_{1}^{3}(x^{2} - 4x + 3) dx & =  \\lbrack \\frac{1}{3}x^{3} - 2x^{2} + 3x \\rbrack _{1}^{3} \\\\
 & = (9 - 18 + 9) - (\\frac{1}{3} - 2 + 3) \\\\
 & = 0 - \\frac{4}{3} \\\\
\\end{array}
$$

所以$S_{2} = a ⋅ (−\\frac{4}{3}) = −a ⋅ \\frac{4}{3}$。
因此$S_{1} = S_{2}$，即两坐标轴与该抛物线所围图形的面积等于$x$轴与该抛物线所围图形的面积。
(2) 两个平面图形绕$x$轴旋转一周所产生的旋转体体积分别记为$V_{1}$和$V_{2}$：


$$
V_{1} = π \\int_{0}^{1} \\lbrack y(x) \\rbrack 2 dx = πa^{2} \\int_{0}^{1}(x^{2} - 4x + 3)2 dx
$$



$$
V_{2} = π \\int_{1}^{3} \\lbrack y(x) \\rbrack 2 dx = πa^{2} \\int_{1}^{3}(x^{2} - 4x + 3)2 dx
$$

计算积分：


$$
\\begin{array}{cc}
∫(x^{2} - 4x + 3)2 dx & = ∫(x^{4} - 8x^{3} + 22x^{2} - 24x + 9) dx \\\\
 & = \\frac{1}{5}x^{5} - 2x^{4} + \\frac{22}{3}x^{3} - 12x^{2} + 9x \\\\
\\end{array}
$$

对于$I_{1} = \\int_{0}^{1}(x^{2} - 4x + 3)2 dx$：


$$
I_{1} =  \\lbrack \\frac{1}{5}x^{5} - 2x^{4} + \\frac{22}{3}x^{3} - 12x^{2} + 9x \\rbrack _{0}^{1} = \\frac{1}{5} - 2 + \\frac{22}{3} - 12 + 9 = \\frac{38}{15}
$$

对于$I_{2} = \\int_{1}^{3}(x^{2} - 4x + 3)2 dx$：
在$x = 3$时：


$$
\\frac{1}{5}(243) - 2(81) + \\frac{22}{3}(27) - 12(9) + 9(3) = \\frac{243}{5} - 162 + 198 - 108 + 27 = \\frac{18}{5}
$$

在$x = 1$时：


$$
\\frac{1}{5} - 2 + \\frac{22}{3} - 12 + 9 = \\frac{38}{15}
$$

所以$I_{2} = \\frac{18}{5} - \\frac{38}{15} = \\frac{54}{15} - \\frac{38}{15} = \\frac{16}{15}$。
因此，


$$
\\frac{V_{1}}{V_{2}} = \\frac{I_{1}}{I_{2}} = \\frac{38/15}{16/15} = \\frac{38}{16} = \\frac{19}{8}
$$

故两个旋转体体积之比为$\\frac{19}{8}$。
', 9, 'Mogullzr', '2026-01-29 14:10:13', 9, 'Mogullzr', '2026-01-29 14:10:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1050');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1050');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1050');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1051, '1996年考研数学卷5第16题', '简单', '考研数学1996年卷5真题', '设$f(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$\\frac{1}{b-a} \\int_{a}^{b} f(x)dx = f(b)$．
求证：在$(a, b)$内至少存在一点$ξ$，使$f^{′}(ξ) = 0$．', '[]', '见解析
', '因为$f(x)$在$\\lbrack a, b \\rbrack$上连续，由积分中值定理可知，在$(a, b)$内存在一点$c$，使得


$$
f(c) = \\frac{1}{b - a} \\int_{a}^{b} f(x) dx = f(b)
$$

因为$f(x)$在$\\lbrack c, b \\rbrack$上连续，在$(c, b)$内可导，故由罗尔定理，至少存在一点$ξ ∈ (c, b) ⊂ (a, b)$，使$f^{′}(ξ) = 0$。
', 9, 'Mogullzr', '2026-01-29 14:10:13', 9, 'Mogullzr', '2026-01-29 14:10:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1051');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1051');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1051');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1052, '1996年考研数学卷5第17题', '简单', '考研数学1996年卷5真题', '已知线性方程组$\\begin{cases} x_{1} + x_{2} - 2x_{3} + 3x_{4} = 0 \\\\ 2x_{1} + x_{2} - 6x_{3} + 4x_{4} = −1 \\\\ 3x_{1} + 2x_{2} + px_{3} + 7x_{4} = −1 \\\\ x_{1} - x_{2} - 6x_{3} - x_{4} = t. \\end{cases}$讨论参数$p$,$t$取何值时，方程组有解？无解？
当有解时，试用其导出组的基础解系表示通解．', '[]', '当$t \\neq −2$时，方程组无解；当$t = −2$时，方程组有解。
当$t = −2$时，若$p \\neq −8$，则通解为


$$
x = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + k \\left( \\begin{array}{c}
−1 \\\\
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  k ∈ R;
$$

若$p = −8$，则通解为


$$
x = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + k_{1} \\left( \\begin{array}{c}
4 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + k_{2} \\left( \\begin{array}{c}
−1 \\\\
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  k_{1}, k_{2} ∈ R.
$$

', '写出增广矩阵：

$$
\\left( \\begin{array}{cccc|c}
1 & 1 & −2 & 3 & 0 \\\\
2 & 1 & −6 & 4 & −1 \\\\
3 & 2 & p & 7 & −1 \\\\
1 & −1 & −6 & −1 & t \\\\
\\end{array} \\right)
$$

进行行变换：
$R_{2} ← R_{2} - 2R_{1}$$R_{3} ← R_{3} - 3R_{1}$$R_{4} ← R_{4} - R_{1}$
得：$\\left( \\begin{array}{cccc|c}
1 & 1 & −2 & 3 & 0 \\\\
0 & −1 & −2 & −2 & −1 \\\\
0 & −1 & p + 6 & −2 & −1 \\\\
0 & −2 & −4 & −4 & t \\\\
\\end{array} \\right)$$R_{2} ← −R_{2}$
得：$\\left( \\begin{array}{cccc|c}
1 & 1 & −2 & 3 & 0 \\\\
0 & 1 & 2 & 2 & 1 \\\\
0 & −1 & p + 6 & −2 & −1 \\\\
0 & −2 & −4 & −4 & t \\\\
\\end{array} \\right)$$R_{1} ← R_{1} - R_{2}$$R_{3} ← R_{3} + R_{2}$$R_{4} ← R_{4} + 2R_{2}$
得：$\\left( \\begin{array}{cccc|c}
1 & 0 & −4 & 1 & −1 \\\\
0 & 1 & 2 & 2 & 1 \\\\
0 & 0 & p + 8 & 0 & 0 \\\\
0 & 0 & 0 & 0 & t + 2 \\\\
\\end{array} \\right)$由最后一行，当$t + 2 \\neq 0$即$t \\neq −2$时，方程组无解。当$t = −2$时，方程组有解。
当$t = −2$时，由第三行：若$p \\neq −8$，则$x_{3} = 0$，代入前两行得$x_{1} = −1 - x_{4}$，$x_{2} = 1 - 2x_{4}$，通解由特解和导出组的基础解系线性组合表示。若$p = −8$，则$x_{3}$自由，代入前两行得$x_{1} = −1 + 4x_{3} - x_{4}$，$x_{2} = 1 - 2x_{3} - 2x_{4}$，通解由特解和导出组的基础解系线性组合表示。
导出组的基础解系由行化简后的齐次方程组解得。
', 9, 'Mogullzr', '2026-01-29 14:10:13', 9, 'Mogullzr', '2026-01-29 14:10:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1052');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1052');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1053, '1996年考研数学卷5第18题', '简单', '考研数学1996年卷5真题', '设有$4$阶方阵$A$满足条件$∣3E + A∣ = 0$，$AA^{T} = 2E$，$∣A∣ < 0$，
其中$E$是$4$阶单位阵，求方阵$A$的伴随矩阵$A^{∗}$的一个特征值．', '[]', '$\\frac{4}{3}$
', '由条件$∣3E + A∣ = 0$可知，矩阵$3E + A$奇异，因此存在非零向量$x$使得$(3E + A)x = 0$，即$Ax = −3x$，所以$−3$是$A$的一个特征值。
由条件$AA^{T} = 2E$且$A$为$4$阶方阵，取行列式得$∣A∣∣A^{T}∣ = ∣2E∣$，即$∣A∣^{2} = 2^{4} = 16$，所以$∣A∣ = ±4$。又由$∣A∣ < 0$，故$∣A∣ = −4$。
伴随矩阵$A^{∗}$与逆矩阵$A^{−1}$满足$A^{∗} = ∣A∣A^{−1}$。因此，若$λ$是$A$的特征值，则$A^{∗}$的特征值为$∣A∣/λ$。代入$λ = −3$和$∣A∣ = −4$，得$A^{∗}$的特征值为$−4/(−3) = \\frac{4}{3}$。
因此，方阵$A$的伴随矩阵$A^{∗}$的一个特征值为$\\frac{4}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:10:13', 9, 'Mogullzr', '2026-01-29 14:10:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1053');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1053');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1053');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1054, '1996年考研数学卷5第19题', '', '考研数学1996年卷5真题', '/problems/other/1033', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:14', 9, 'Mogullzr', '2026-01-29 14:10:14', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1055, '1996年考研数学卷5第20题', '简单', '考研数学1996年卷5真题', '某电路装有三个同种电气元件，其工作状态相互独立，且无故障工作时间都服从参数为$λ > 0$的指数分布．
当三个元件都无故障时，电路正常工作，否则整个电路不能正常工作，试求电路正常工作的时间$T$的概率分布．', '[]', '
电路正常工作的时间$T$服从参数为$3λ$的指数分布，即$T ∼ Exp(3λ)$。
', '
设三个元件的无故障工作时间分别为$X_{1}, X_{2}, X_{3}$，且相互独立，均服从参数为$λ$的指数分布，即$X_{i} ∼ Exp(λ)$。
电路正常工作的时间$T$为三个元件寿命的最小值，即$T = \\min(X_{1}, X_{2}, X_{3})$。
求$T$的累积分布函数$F_{T}(t) = P(T ≤ t)$。

$$
P(T ≤ t) = 1 - P(T > t),
$$

其中$P(T > t)$表示所有元件在时间$t$都无故障的概率，即$P(X_{1} > t, X_{2} > t, X_{3} > t)$。
由于元件相互独立，

$$
P(X_{1} > t, X_{2} > t, X_{3} > t) = P(X_{1} > t)P(X_{2} > t)P(X_{3} > t).
$$

对于指数分布，$P(X_{i} > t) = e^{−λt}$，因此

$$
P(T > t) = e^{−λt} ⋅ e^{−λt} ⋅ e^{−λt} = e^{−3λt}.
$$

于是，

$$
F_{T}(t) = 1 - e^{−3λt}.
$$

这正好是参数为$3λ$的指数分布的累积分布函数，因此$T$服从参数为$3λ$的指数分布。
', 9, 'Mogullzr', '2026-01-29 14:10:14', 9, 'Mogullzr', '2026-01-29 14:10:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1055');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1055');
