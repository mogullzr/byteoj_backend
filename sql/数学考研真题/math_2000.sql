INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1305, '2000年考研数学卷1第1题', '简单', '考研数学2000年卷1真题', '$\\int_{0}^{1} \\sqrt{2x - x^{2}}dx =$______．', '[]', '$\\frac{π}{4}$
', '考虑积分$\\int_{0}^{1} \\sqrt{2x - x^{2}}dx$。首先完成平方：$2x - x^{2} = 1 - (x - 1)2$，因此积分化为$\\int_{0}^{1} \\sqrt{1 - (x - 1)2}dx$。这表示圆心在$(1, 0)$、半径为 1 的上半圆从$x = 0$到$x = 1$的曲线下的面积。
使用三角代换，令$x - 1 = \\sin t$，则$dx = \\cos tdt$。当$x = 0$时，$t = −π/2$；当$x = 1$时，$t = 0$。被积函数变为$\\sqrt{1 - \\sin^{2} t} = \\sqrt{\\cos^{2} t} = ∣ \\cos t∣$，在区间$t ∈  \\lbrack −π/2, 0 \\rbrack$上，$\\cos t ≥ 0$，故$∣ \\cos t∣ = \\cos t$。积分变为：

$$
\\int_{−π/2}^{0} \\cos t ⋅ \\cos tdt = \\int_{−π/2}^{0} \\cos^{2} tdt.
$$

利用恒等式$\\cos^{2} t = \\frac{1+\\cos 2t}{2}$，得：

$$
\\int_{−π/2}^{0} \\cos^{2} tdt = \\int_{−π/2}^{0} \\frac{1 + \\cos 2t}{2}dt = \\frac{1}{2} \\int_{−π/2}^{0} 1dt + \\frac{1}{2} \\int_{−π/2}^{0} \\cos 2tdt.
$$

计算得：

$$
\\frac{1}{2}  \\lbrack t \\rbrack _{−π/2}^{0} + \\frac{1}{2}  \\lbrack \\frac{\\sin 2t}{2} \\rbrack _{−π/2}^{0} = \\frac{1}{2}(0 - (−π/2)) + \\frac{1}{4}(\\sin 0 - \\sin(−π)) = \\frac{π}{4} + 0 = \\frac{π}{4}.
$$

因此，积分值为$\\frac{π}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:11:27', 9, 'Mogullzr', '2026-01-29 14:11:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1305');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1305');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1305');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1306, '2000年考研数学卷1第2题', '简单', '考研数学2000年卷1真题', '曲面$x^{2} + 2y^{2} + 3z^{2} = 21$在点$(1, -2, 2)$的法线方程为 ______．', '[]', '

$$
\\frac{x - 1}{1} = \\frac{y + 2}{−4} = \\frac{z - 2}{6}
$$

', '
曲面方程为


$$
x^{2} + 2y^{2} + 3z^{2} = 21
$$

令


$$
F(x, y, z) = x^{2} + 2y^{2} + 3z^{2} - 21
$$

曲面的法向量为梯度


$$
∇F = (\\frac{∂F}{∂x}, \\frac{∂F}{∂y}, \\frac{∂F}{∂z})
$$

计算偏导数：


$$
\\frac{∂F}{∂x} = 2x,  \\frac{∂F}{∂y} = 4y,  \\frac{∂F}{∂z} = 6z
$$

在点$(1, −2, 2)$处，法向量为


$$
(2 × 1,  4 × (−2),  6 × 2) = (2, −8, 12)
$$

简化后得


$$
(1, −4, 6)
$$

法线方程：
过点$(1, −2, 2)$，方向向量为$(1, −4, 6)$，方程为


$$
\\frac{x - 1}{1} = \\frac{y + 2}{−4} = \\frac{z - 2}{6}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:27', 9, 'Mogullzr', '2026-01-29 14:11:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1306');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1306');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1306');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1307, '2000年考研数学卷1第3题', '简单', '考研数学2000年卷1真题', '微分方程$xy^{′′} + 3y^{′} = 0$的通解为 ______．', '[]', '
$y = \\frac{C_{1}}{x^{2}} + C_{2}$，其中$C_{1}$和$C_{2}$为任意常数。
', '
给定微分方程$xy^{′′} + 3y^{′} = 0$，令$p = y^{′}$，则$y^{′′} = p^{′}$，代入方程得$xp^{′} + 3p = 0$。分离变量得$\\frac{dp}{p} = −3\\frac{dx}{x}$，积分得$\\ln ∣p∣ = −3 \\ln ∣x∣ + C$，即$p = C_{1}x^{−3}$，其中$C_{1} = e^{C}$。由于$p = y^{′}$，有$y^{′} = C_{1}x^{−3}$，再积分得$y = C_{1} ∫ x^{−3}dx = C_{1} (−\\frac{1}{2}x^{−2}) + C_{2} = −\\frac{C_{1}}{2}x^{−2} + C_{2}$。令$C_{1}^{′} = −\\frac{C_{1}}{2}$，则通解为$y = \\frac{C_{1}^{′}}{x^{2}} + C_{2}$，重命名常数得$y = \\frac{C_{1}}{x^{2}} + C_{2}$。
', 9, 'Mogullzr', '2026-01-29 14:11:28', 9, 'Mogullzr', '2026-01-29 14:11:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1307');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1307');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1307');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1308, '2000年考研数学卷1第4题', '简单', '考研数学2000年卷1真题', '已知方程组$\\left( \\begin{array}{ccc}
1 & 2 & 1 \\\\
2 & 3 & a + 2 \\\\
1 & a & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
1 \\\\
3 \\\\
0 \\\\
\\end{array} \\right)$无解，则$a =$______．', '[]', '$−1$
', '给定线性方程组$Ax = b$，其中$A = \\left( \\begin{array}{ccc}
1 & 2 & 1 \\\\
2 & 3 & a + 2 \\\\
1 & a & −2 \\\\
\\end{array} \\right)$，$b = \\left( \\begin{array}{c}
1 \\\\
3 \\\\
0 \\\\
\\end{array} \\right)$。方程组无解时，系数矩阵$A$的秩小于增广矩阵$\\lbrack A∣b \\rbrack$的秩。
对增广矩阵进行行化简：

$$
\\left( \\begin{array}{ccc|c}
1 & 2 & 1 & 1 \\\\
2 & 3 & a + 2 & 3 \\\\
1 & a & −2 & 0 \\\\
\\end{array} \\right)
$$

首先，执行行操作$R2 ← R2 - 2R1$和$R3 ← R3 - R1$：

$$
\\left( \\begin{array}{ccc|c}
1 & 2 & 1 & 1 \\\\
0 & −1 & a & 1 \\\\
0 & a - 2 & −3 & −1 \\\\
\\end{array} \\right)
$$

然后，将第二行乘以$−1$：

$$
\\left( \\begin{array}{ccc|c}
1 & 2 & 1 & 1 \\\\
0 & 1 & −a & −1 \\\\
0 & a - 2 & −3 & −1 \\\\
\\end{array} \\right)
$$

接着，使用第二行消去第一行和第三行的第二列元素：
$R1 ← R1 - 2R2$：第一行变为$(1, 0, 1 + 2a, 3)$$R3 ← R3 - (a - 2)R2$：第三行变为$(0, 0, a^{2} - 2a - 3, a - 3)$
化简后的增广矩阵为：

$$
\\left( \\begin{array}{ccc|c}
1 & 0 & 1 + 2a & 3 \\\\
0 & 1 & −a & −1 \\\\
0 & 0 & a^{2} - 2a - 3 & a - 3 \\\\
\\end{array} \\right)
$$

方程组无解的条件是系数矩阵的秩小于增广矩阵的秩。这要求第三行中系数部分为零而常数部分非零，即：

$$
a^{2} - 2a - 3 = 0 且 a - 3 \\neq 0
$$

解方程$a^{2} - 2a - 3 = 0$得$a = 3$或$a = −1$。当$a = 3$时，$a - 3 = 0$，方程组有无穷多解；当$a = −1$时，$a - 3 = −4 \\neq 0$，方程组无解。
因此，$a = −1$。
', 9, 'Mogullzr', '2026-01-29 14:11:28', 9, 'Mogullzr', '2026-01-29 14:11:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1308');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1308');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1309, '2000年考研数学卷1第5题', '简单', '考研数学2000年卷1真题', '设两个相互独立的事件$A$和$B$都不发生的概率为$\\frac{1}{9}$,$A$发生$B$不发生的概率与$B$发生$A$不发生的概率相等，
则$P(A)$= ______．', '[]', '$\\frac{2}{3}$
', '设$P(A) = p$，$P(B) = q$。
由于事件$A$和$B$相互独立，有


$$
P(A ∩ B) = pq.
$$

已知$A$和$B$都不发生的概率为


$$
P(\\overline{A} ∩ \\overline{B}) = (1 - p)(1 - q) = \\frac{1}{9}.
$$

同时，已知$A$发生$B$不发生的概率等于$B$发生$A$不发生的概率，即


$$
P(A ∩ \\overline{B}) = P(B ∩ \\overline{A}).
$$

由独立性可得


$$
P(A ∩ \\overline{B}) = p(1 - q),  P(B ∩ \\overline{A}) = q(1 - p),
$$

因此


$$
p(1 - q) = q(1 - p).
$$

化简该方程：


$$
p - pq = q - pq,
$$



$$
p = q.
$$

即$P(A) = P(B)$。
代入$(1 - p)(1 - q) = \\frac{1}{9}$，得


$$
(1 - p)2 = \\frac{1}{9}.
$$

解得


$$
1 - p = \\frac{1}{3} (取正值，因为概率非负),
$$



$$
p = \\frac{2}{3}.
$$

因此，


$$
P(A) = \\frac{2}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:28', 9, 'Mogullzr', '2026-01-29 14:11:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1309');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1309');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1310, '2000年考研数学卷1第6题', '简单', '考研数学2000年卷1真题', '设$f(x), g(x)$是恒大于零的可导函数，且$f^{′}(x)g(x) - f(x)g^{′}(x) < 0$，则当$a < x < b$时，有', '[''$f(x)g(b) > f(b)g(x)$．'', ''$f(x)g(a) > f(a)g(x)$．'', ''$f(x)g(x) > f(b)g(b)$．'', ''$f(x)g(x) > f(a)g(a)$．'']', "['A']", '
已知$f^{′}(x)g(x) - f(x)g^{′}(x) < 0$，考虑函数

$$
h(x) = \\frac{f(x)}{g(x)}.
$$
由于$g(x) > 0$，函数$h(x)$可导，且导数为

$$
h^{′}(x) = \\frac{f^{′}(x)g(x) - f(x)g^{′}(x)}{ \\lbrack g(x) \\rbrack 2}.
$$
分母恒正，分子小于零，因此$h^{′}(x) < 0$，即$h(x)$严格递减。当$a < x < b$时，由$h(x)$递减可得

$$
h(x) > h(b),
$$
即

$$
\\frac{f(x)}{g(x)} > \\frac{f(b)}{g(b)}.
$$
两边同乘$g(x)g(b)$（正数），得

$$
f(x)g(b) > f(b)g(x),
$$
即选项 A 成立。选项 B：

$$
f(x)g(a) > f(a)g(x)  ⇔  h(x) > h(a).
$$
但由$h(x)$递减及$a < x$，得$h(a) > h(x)$，因此 B 不成立。选项 C 和 D 涉及乘积$f(x)g(x)$的单调性，无法由题设条件确定。
例如：取$f(x) = e^{−x}, g(x) = 1$，则$f(x)g(x) = e^{−x}$递减，C 成立但 D 不成立。取$f(x) = x, g(x) = x^{2}$（$x > 0$），则$f(x)g(x) = x^{3}$递增，D 成立但 C 不成立。因此，只有选项 A 恒成立。', 9, 'Mogullzr', '2026-01-29 14:11:28', 9, 'Mogullzr', '2026-01-29 14:11:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1310');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1310');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1310');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1311, '2000年考研数学卷1第7题', '简单', '考研数学2000年卷1真题', '设$S : x^{2} + y^{2} + z^{2} = a^{2} (z ≥ 0)$，$S_{1}$为$S$在第一卦限中的部分，则有', '[''$\\\\iint_{S} xdS = 4 \\\\iint_{S_{1}} xdS$．'', ''$\\\\iint_{S} ydS = 4 \\\\iint_{S_{1}} xdS$．'', ''$\\\\iint_{S} zdS = 4 \\\\iint_{S_{1}} xdS$．'', ''$\\\\iint_{S} xyzdS = 4 \\\\iint_{S_{1}} xyzdS$．'']', "['C']", '
对于上半球面$S : x^{2} + y^{2} + z^{2} = a^{2} (z ≥ 0)$及其在第一卦限的部分$S_{1}$，采用球坐标计算曲面积分。取参数化表示：
$$
x = a \\sin ϕ \\cos θ,  y = a \\sin ϕ \\sin θ,  z = a \\cos ϕ,
$$
其中$ϕ ∈  \\lbrack 0, π/2 \\rbrack$，而对于整个上半球面$S$，$θ ∈  \\lbrack 0, 2π \\rbrack$；对于$S_{1}$，$θ ∈  \\lbrack 0, π/2 \\rbrack$。曲面积元为：
$$
dS = a^{2} \\sin ϕ dϕ dθ.
$$
1. 计算$\\iint_{S_{1}} x dS$：
$$
\\begin{array}{cc}
\\iint_{S_{1}} x dS & = \\int_{0}^{π/2} \\int_{0}^{π/2}(a \\sin ϕ \\cos θ) ⋅ a^{2} \\sin ϕ dϕ dθ \\\\
 & = a^{3} \\int_{0}^{π/2} \\cos θ dθ \\int_{0}^{π/2} \\sin^{2} ϕ dϕ. \\\\
\\end{array}
$$
其中：
$$
\\int_{0}^{π/2} \\cos θ dθ = 1,  \\int_{0}^{π/2} \\sin^{2} ϕ dϕ = \\frac{π}{4},
$$
所以：
$$
\\iint_{S_{1}} x dS = a^{3} ⋅ 1 ⋅ \\frac{π}{4} = \\frac{a^{3}π}{4}.
$$
2. 计算$\\iint_{S} z dS$：
$$
\\begin{array}{cc}
\\iint_{S} z dS & = \\int_{0}^{2π} \\int_{0}^{π/2}(a \\cos ϕ) ⋅ a^{2} \\sin ϕ dϕ dθ \\\\
 & = a^{3} \\int_{0}^{2π} dθ \\int_{0}^{π/2} \\cos ϕ \\sin ϕ dϕ. \\\\
\\end{array}
$$
其中：
$$
\\int_{0}^{2π} dθ = 2π,  \\int_{0}^{π/2} \\cos ϕ \\sin ϕ dϕ = \\frac{1}{2},
$$
所以：
$$
\\iint_{S} z dS = a^{3} ⋅ 2π ⋅ \\frac{1}{2} = a^{3}π.
$$
3. 比较选项：由以上结果得：
$$
\\iint_{S} z dS = a^{3}π = 4 ⋅ \\frac{a^{3}π}{4} = 4 \\iint_{S_{1}} x dS,
$$
因此选项C正确。4. 分析其他选项：选项 A：$\\iint_{S} x dS = 0$（因为$\\int_{0}^{2π} \\cos θ dθ = 0$），但$4 \\iint_{S_{1}} x dS = a^{3}π \\neq 0$，不相等。选项 B：$\\iint_{S} y dS = 0$（因为$\\int_{0}^{2π} \\sin θ dθ = 0$），不相等。选项 D：$\\iint_{S} xyz dS = 0$（因为$\\int_{0}^{2π} \\cos θ \\sin θ dθ = 0$），而$4 \\iint_{S_{1}} xyz dS \\neq 0$，不相等。结论：正确选项为C。', 9, 'Mogullzr', '2026-01-29 14:11:28', 9, 'Mogullzr', '2026-01-29 14:11:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1311');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1311');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1078', '1311');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1312, '2000年考研数学卷1第8题', '简单', '考研数学2000年卷1真题', '设级数$\\sum_{n=1}^{∞} u_{n}$收敛，则必收敛的级数为', '[''$\\\\sum_{n=1}^{∞}(−1)n\\\\frac{u_{n}}{n}$．'', ''$\\\\sum_{n=1}^{∞} u_{n}^{2}$．'', ''$\\\\sum_{n=1}^{∞}(u_{2n-1} - u_{2n})$．'', ''$\\\\sum_{n=1}^{∞}(u_{n} + u_{n+1})$．'']', "['D']", '设级数$\\sum_{n=1}^{∞} u_{n}$收敛，其部分和序列$S_{N} = \\sum_{n=1}^{N} u_{n}$收敛于$S$。考虑选项 D：$\\sum_{n=1}^{∞}(u_{n} + u_{n+1})$，其部分和为$V_{N} = \\sum_{n=1}^{N}(u_{n} + u_{n+1}) = \\sum_{n=1}^{N} u_{n} + \\sum_{n=1}^{N} u_{n+1} = S_{N} + (S_{N+1} - u_{1})$。由于$S_{N}$和$S_{N+1}$均收敛于$S$，故$V_{N} → S + S - u_{1} = 2S - u_{1}$，因此级数 D 收敛。对于选项 A、B、C，均存在反例表明不一定收敛：A：取$u_{n} = \\frac{(−1)n}{\\ln n}$（$n ≥ 2$），则$∑ u_{n}$收敛（交错级数测试），但$∑(−1)n\\frac{u_{n}}{n} = ∑ \\frac{1}{n \\ln n}$发散（积分测试）。B：取$u_{n} = \\frac{(−1)n}{\\sqrt{n}}$，则$∑ u_{n}$收敛，但$∑ u_{n}^{2} = ∑ \\frac{1}{n}$发散。C：取$u_{n} = \\frac{(−1)n}{n}$，则$∑ u_{n}$收敛，但$∑(u_{2n-1} - u_{2n}) = ∑ (−\\frac{1}{2n-1} - \\frac{1}{2n})$发散。因此，仅选项 D 必收敛。', 9, 'Mogullzr', '2026-01-29 14:11:29', 9, 'Mogullzr', '2026-01-29 14:11:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1312');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1312');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1312');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1313, '2000年考研数学卷1第9题', '简单', '考研数学2000年卷1真题', '设$n$维列向量组$α_{1}, ⋅ ⋅ ⋅, α_{m}(m < n)$线性无关，则$n$维列向量组$β_{1}, ⋅ ⋅ ⋅, β_{m}$线性无关的充分必要条件为', '[''向量组$α_{1}, ⋅ ⋅ ⋅, α_{m}$可由向量组$β_{1}, ⋅ ⋅ ⋅, β_{m}$线性表示．'', ''向量组$β_{1}, ⋅ ⋅ ⋅, β_{m}$可由向量组$α_{1}, ⋅ ⋅ ⋅, α_{m}$线性表示．'', ''向量组$α_{1}, ⋅ ⋅ ⋅, α_{m}$与向量组$β_{1}, ⋅ ⋅ ⋅, β_{m}$等价．'', ''矩阵$A = (α_{1}, ⋅ ⋅ ⋅, α_{m})$与矩阵$B = (β_{1}, ⋅ ⋅ ⋅, β_{m})$等价．'']', "['D']", '
已知$α_{1}, … , α_{m}$线性无关，且$m < n$，因此矩阵$A = (α_{1}, … , α_{m})$的秩为$m$。向量组$β_{1}, … , β_{m}$线性无关的充要条件是矩阵$B = (β_{1}, … , β_{m})$的秩为$m$。
矩阵等价的定义是存在可逆矩阵$P$和$Q$，使得$PAQ = B$，而两个矩阵等价的充要条件是它们具有相同的秩。由于$A$的秩为$m$，因此$B$的秩为$m$当且仅当$A$与$B$等价。故选项 D 是充分必要条件。选项 A
若$α$组可由$β$组线性表示，则存在矩阵$C$，使得$A = BC$。由于$α$组线性无关，$A$的秩为$m$，因此$BC$的秩为$m$，故$B$的秩至少为$m$。又因为$B$只有$m$列，所以$B$的秩为$m$，即$β$组线性无关。
但反之不成立：当$β$组线性无关时，$α$组不一定可由$β$组线性表示。因此 A 不是必要条件。选项 B
若$β$组可由$α$组线性表示，则存在矩阵$D$，使得$B = AD$。但$β$组可能线性相关，例如当$β$组落在$α$组张成的子空间中但自身线性相关时；反之，当$β$组线性无关时，不一定可由$α$组线性表示。因此 B 既不是充分也不是必要条件。选项 C
若$α$组与$β$组等价，则它们可以互相线性表示。由于$α$组线性无关，$β$组也必须线性无关。
但反之不成立：当$β$组线性无关时，$α$组与$β$组可能张成不同的子空间，因此不一定等价。故 C 不是必要条件。因此，正确选项为D。', 9, 'Mogullzr', '2026-01-29 14:11:29', 9, 'Mogullzr', '2026-01-29 14:11:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1313');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1313');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1313');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1314, '2000年考研数学卷1第10题', '简单', '考研数学2000年卷1真题', '设二维随机变量$(X, Y)$服从二维正态分布，则随机变量$ξ = X + Y$与$η = X - Y$不相关的充分必要条件为', '[''$E(X) = E(Y).$'', ''$E(X^{2}) -  \\\\lbrack E(X) \\\\rbrack ^{2} = E(Y^{2}) -  \\\\lbrack E(Y) \\\\rbrack ^{2} .$'', ''$E(X^{2}) = E(Y^{2}).$'', ''$E(X^{2}) +  \\\\lbrack E(X) \\\\rbrack ^{2} = E(Y^{2}) +  \\\\lbrack E(Y) \\\\rbrack ^{2} .$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:11:29', 9, 'Mogullzr', '2026-01-29 14:11:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1314');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1314');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1314');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1315, '2000年考研数学卷1第11题', '简单', '考研数学2000年卷1真题', '
$$
\\lim_{x→0} (\\frac{2 + e^{\\frac{1}{x}}}{1 + e^{\\frac{4}{x}}} + \\frac{\\sin x}{∣x∣}) =
$$
', '[]', '
1
', '
考虑极限$\\lim_{x→0} (\\frac{2+e^{\\frac{1}{x}}}{1+e^{\\frac{4}{x}}} + \\frac{\\sin x}{∣x∣})$。需要分别讨论$x → 0^{+}$和$x → 0^{-}$的情况。
首先，分析第一部分$\\frac{2+e^{\\frac{1}{x}}}{1+e^{\\frac{4}{x}}}$：
当$x → 0^{+}$时，$\\frac{1}{x} → +∞$，$e^{\\frac{1}{x}} → +∞$，$e^{\\frac{4}{x}} → +∞$。分子分母同时除以$e^{\\frac{4}{x}}$，得
$\\frac{2e^{−\\frac{4}{x}}+e^{\\frac{1}{x}-\\frac{4}{x}}}{e^{−\\frac{4}{x}}+1} = \\frac{2e^{−\\frac{4}{x}}+e^{−\\frac{3}{x}}}{e^{−\\frac{4}{x}}+1} → \\frac{0+0}{0+1} = 0.$当$x → 0^{-}$时，$\\frac{1}{x} → −∞$，$e^{\\frac{1}{x}} → 0$，$e^{\\frac{4}{x}} → 0$，因此
$\\frac{2+e^{\\frac{1}{x}}}{1+e^{\\frac{4}{x}}} → \\frac{2+0}{1+0} = 2.$
其次，分析第二部分$\\frac{\\sin x}{∣x∣}$：
当$x → 0^{+}$时，$∣x∣ = x$，故$\\frac{\\sin x}{∣x∣} = \\frac{\\sin x}{x} → 1$。当$x → 0^{-}$时，$∣x∣ = −x$，故$\\frac{\\sin x}{∣x∣} = \\frac{\\sin x}{−x} = −\\frac{\\sin x}{x} → −1$。
现在结合两部分：
当$x → 0^{+}$时，第一部分趋于 0，第二部分趋于 1，总和趋于$0 + 1 = 1$。当$x → 0^{-}$时，第一部分趋于 2，第二部分趋于 -1，总和趋于$2 + (−1) = 1$。
由于左极限和右极限均等于 1，故原极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:11:29', 9, 'Mogullzr', '2026-01-29 14:11:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1315');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1315');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1315');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1316, '2000年考研数学卷1第12题', '简单', '考研数学2000年卷1真题', '设$z = f (xy, \\frac{x}{y}) + g (\\frac{x}{y})$，
其中$f$具有二阶连续偏导数，$g$具有二阶连续导数，求$\\frac{∂^{2}z}{∂x∂y}.$', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = f_{u} + xyf_{uu} - \\frac{1}{y^{2}}f_{v} - \\frac{x}{y^{3}}f_{vv} - \\frac{1}{y^{2}}g^{′} - \\frac{x}{y^{3}}g^{′′}
$$

其中$u = xy$,$v = \\frac{x}{y}$,$f_{u} = \\frac{∂f}{∂u}$,$f_{v} = \\frac{∂f}{∂v}$,$f_{uu} = \\frac{∂^{2}f}{∂u^{2}}$,$f_{vv} = \\frac{∂^{2}f}{∂v^{2}}$,$g^{′} = \\frac{dg}{dv}$,$g^{′′} = \\frac{d^{2}g}{dv^{2}}$，所有函数值在点$(u, v)$处计算。
', '设$u = xy$,$v = \\frac{x}{y}$，则$z = f(u, v) + g(v)$。
先求一阶偏导数$\\frac{∂z}{∂x}$：


$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u} ⋅ \\frac{∂u}{∂x} + \\frac{∂f}{∂v} ⋅ \\frac{∂v}{∂x} + \\frac{dg}{dv} ⋅ \\frac{∂v}{∂x} = f_{u} ⋅ y + f_{v} ⋅ \\frac{1}{y} + g^{′} ⋅ \\frac{1}{y} = yf_{u} + \\frac{1}{y}f_{v} + \\frac{1}{y}g^{′}
$$

然后求混合偏导数$\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂z}{∂x})$：


$$
\\frac{∂}{∂y} (yf_{u} + \\frac{1}{y}f_{v} + \\frac{1}{y}g^{′}) = \\frac{∂}{∂y}(yf_{u}) + \\frac{∂}{∂y} (\\frac{1}{y}f_{v}) + \\frac{∂}{∂y} (\\frac{1}{y}g^{′})
$$

分别计算各项：
第一项：
$\\frac{∂}{∂y}(yf_{u}) = f_{u} + y\\frac{∂f_{u}}{∂y} = f_{u} + y (\\frac{∂f_{u}}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂f_{u}}{∂v} ⋅ \\frac{∂v}{∂y}) = f_{u} + y (f_{uu} ⋅ x + f_{uv} ⋅ (−\\frac{x}{y^{2}})) = f_{u} + xyf_{uu} - \\frac{x}{y}f_{uv}$第二项：
$\\frac{∂}{∂y} (\\frac{1}{y}f_{v}) = −\\frac{1}{y^{2}}f_{v} + \\frac{1}{y}\\frac{∂f_{v}}{∂y} = −\\frac{1}{y^{2}}f_{v} + \\frac{1}{y} (\\frac{∂f_{v}}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂f_{v}}{∂v} ⋅ \\frac{∂v}{∂y}) = −\\frac{1}{y^{2}}f_{v} + \\frac{1}{y} (f_{uv} ⋅ x + f_{vv} ⋅ (−\\frac{x}{y^{2}})) = −\\frac{1}{y^{2}}f_{v} + \\frac{x}{y}f_{uv} - \\frac{x}{y^{3}}f_{vv}$第三项：
$\\frac{∂}{∂y} (\\frac{1}{y}g^{′}) = −\\frac{1}{y^{2}}g^{′} + \\frac{1}{y}\\frac{∂g^{′}}{∂y} = −\\frac{1}{y^{2}}g^{′} + \\frac{1}{y} (g^{′′} ⋅ \\frac{∂v}{∂y}) = −\\frac{1}{y^{2}}g^{′} + \\frac{1}{y} (g^{′′} ⋅ (−\\frac{x}{y^{2}})) = −\\frac{1}{y^{2}}g^{′} - \\frac{x}{y^{3}}g^{′′}$将三项相加：
$\\frac{∂^{2}z}{∂x∂y} = (f_{u} + xyf_{uu} - \\frac{x}{y}f_{uv}) + (−\\frac{1}{y^{2}}f_{v} + \\frac{x}{y}f_{uv} - \\frac{x}{y^{3}}f_{vv}) + (−\\frac{1}{y^{2}}g^{′} - \\frac{x}{y^{3}}g^{′′})$其中$−\\frac{x}{y}f_{uv}$和$\\frac{x}{y}f_{uv}$相互抵消，得到：
$\\frac{∂^{2}z}{∂x∂y} = f_{u} + xyf_{uu} - \\frac{1}{y^{2}}f_{v} - \\frac{x}{y^{3}}f_{vv} - \\frac{1}{y^{2}}g^{′} - \\frac{x}{y^{3}}g^{′′}$这就是所求结果。
', 9, 'Mogullzr', '2026-01-29 14:11:29', 9, 'Mogullzr', '2026-01-29 14:11:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1316');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1316');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1316');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1317, '2000年考研数学卷1第13题', '简单', '考研数学2000年卷1真题', '计算曲线积分$I = ∮_{L} \\frac{xdy-ydx}{4x^{2}+y^{2}}$，
其中$L$是以点$(1, 0)$为中心，$R$为半径的圆周$(R > 1)$，取逆时针方向．', '[]', '$π$
', '曲线积分$I = ∮_{L} \\frac{x dy-y dx}{4x^{2}+y^{2}}$中，被积函数在原点$(0, 0)$处不连续，因为分母$4x^{2} + y^{2} = 0$。积分路径$L$是以点$(1, 0)$为中心、半径为$R$（$R > 1$) 的圆周，取逆时针方向，该路径包围了原点。
考虑一个小椭圆$C$：$4x^{2} + y^{2} = ϵ^{2}$（$ϵ > 0$很小），参数化为$x = \\frac{ϵ}{2} \\cos θ$，$y = ϵ \\sin θ$，$θ$从$0$到$2π$，取逆时针方向。计算在$C$上的积分：

$$
I_{C} = ∮_{C} \\frac{x dy - y dx}{4x^{2} + y^{2}} = ∮_{C} \\frac{x dy - y dx}{ϵ^{2}}.
$$

代入参数化：

$$
x dy - y dx = (\\frac{ϵ}{2} \\cos θ ⋅ ϵ \\cos θ dθ) - (ϵ \\sin θ ⋅ (−\\frac{ϵ}{2} \\sin θ dθ)) = \\frac{ϵ^{2}}{2}(\\cos^{2} θ + \\sin^{2} θ) dθ = \\frac{ϵ^{2}}{2} dθ,
$$

所以

$$
I_{C} = ∮_{C} \\frac{\\frac{ϵ^{2}}{2} dθ}{ϵ^{2}} = \\frac{1}{2} \\int_{0}^{2π} dθ = π.
$$

现在，考虑区域$D$介于$L$（逆时针）和$C$（顺时针）之间。在$D$内，被积函数光滑，且之前计算偏导数：
设$P = −\\frac{y}{4x^{2}+y^{2}}$，$Q = \\frac{x}{4x^{2}+y^{2}}$，则

$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = 0.
$$

由格林公式，在区域$D$的边界上：

$$
∮_{L} P dx + Q dy + ∮_{C_{clockwise}} P dx + Q dy = 0.
$$

其中$∮_{C_{clockwise}} P dx + Q dy = − ∮_{C_{anticlockwise}} P dx + Q dy = −I_{C} = −π$。
代入得：

$$
∮_{L} P dx + Q dy - π = 0,
$$

所以

$$
∮_{L} P dx + Q dy = π.
$$

即$I = π$。
因此，曲线积分的值为$π$。
', 9, 'Mogullzr', '2026-01-29 14:11:30', 9, 'Mogullzr', '2026-01-29 14:11:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1317');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1317');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1317');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1318, '2000年考研数学卷1第14题', '简单', '考研数学2000年卷1真题', '设对于半空间$x > 0$内任意的光滑有向封闭曲面$S$，都有
$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} xf(x)dydz - xyf(x)dzdx - e^{2x}zdxdy = 0,
$$
其中函数$f(x)$在$(0, +∞)$内具有连续的一阶导数，且$\\lim_{x→0^{+}} f(x) = 1$，求$f(x)$．', '[]', '

$$
f(x) = \\frac{e^{2x} - e^{x}}{x}
$$

', '由题设，对于半空间$x > 0$内任意光滑有向封闭曲面$S$，曲面积分

$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} xf(x) dy dz - xyf(x) dz dx - e^{2x}z dx dy = 0
$$

成立。根据散度定理，该积分等于向量场$F = (P, Q, R) = (xf(x), −xyf(x), −e^{2x}z)$在曲面$S$所围体积$V$内的散度积分，即

$$
\\iiint_{V} ∇ ⋅ F dV = 0.
$$

由于$V$是任意的，必有$∇ ⋅ F = 0$在$x > 0$内成立。
计算散度：

$$
∇ ⋅ F = \\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z} = \\frac{∂}{∂x}(xf(x)) + \\frac{∂}{∂y}(−xyf(x)) + \\frac{∂}{∂z}(−e^{2x}z).
$$

其中：

$$
\\frac{∂}{∂x}(xf(x)) = f(x) + xf^{′}(x),  \\frac{∂}{∂y}(−xyf(x)) = −xf(x),  \\frac{∂}{∂z}(−e^{2x}z) = −e^{2x}.
$$

所以：

$$
∇ ⋅ F = f(x) + xf^{′}(x) - xf(x) - e^{2x} = xf^{′}(x) + (1 - x)f(x) - e^{2x} = 0.
$$

得到微分方程：

$$
xf^{′}(x) + (1 - x)f(x) = e^{2x}.
$$

整理为标准形式：

$$
f^{′}(x) + (\\frac{1}{x} - 1) f(x) = \\frac{e^{2x}}{x}.
$$

积分因子为：

$$
μ(x) = \\exp (∫ (\\frac{1}{x} - 1) dx) = \\exp (\\ln x - x) = xe^{−x}.
$$

乘以积分因子：

$$
\\frac{d}{dx} (xe^{−x}f(x)) = e^{x}.
$$

积分得：

$$
xe^{−x}f(x) = ∫ e^{x} dx = e^{x} + C,
$$

即：

$$
f(x) = \\frac{e^{x} + C}{xe^{−x}} = \\frac{e^{2x} + Ce^{x}}{x}.
$$

由条件$\\lim_{x→0^{+}} f(x) = 1$，考虑$x → 0^{+}$时的渐近行为：

$$
f(x) = \\frac{e^{2x} + Ce^{x}}{x} = \\frac{(1 + 2x + ⋯ ) + C(1 + x + ⋯ )}{x} = \\frac{1 + C}{x} + (2 + C) + ⋯  .
$$

为使极限存在，需$1 + C = 0$，即$C = −1$。代入得：

$$
f(x) = \\frac{e^{2x} - e^{x}}{x}.
$$

验证：当$x → 0^{+}$，$f(x) → 1$，满足条件。因此所求函数为$f(x) = \\frac{e^{2x}-e^{x}}{x}$。
', 9, 'Mogullzr', '2026-01-29 14:11:30', 9, 'Mogullzr', '2026-01-29 14:11:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1318');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1318');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1318');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1319, '2000年考研数学卷1第15题', '简单', '考研数学2000年卷1真题', '求幂级数$\\sum_{n=1}^{∞} \\frac{1}{3^{n}+(−2)n}\\frac{x^{n}}{n}$的收敛区域，并讨论该区间端点处的收敛性．', '[]', '收敛区域为$\\lbrack −3, 3)$，即在$x = −3$处收敛，在$x = 3$处发散。
', '考虑幂级数$\\sum_{n=1}^{∞} \\frac{1}{3^{n}+(−2)n}\\frac{x^{n}}{n}$。令$a_{n} = \\frac{1}{n(3^{n}+(−2)n)}$，使用比值判别法求收敛半径：

$$
​\\frac{a_{n+1}}{a_{n}}​ = \\frac{n}{n + 1} ⋅ ​\\frac{3^{n} + (−2)n}{3^{n+1} + (−2)n+1}​ .
$$

当$n → ∞$时，$\\frac{n}{n+1} → 1$，且

$$
​\\frac{3^{n} + (−2)n}{3^{n+1} + (−2)n+1}​ = ​\\frac{1 + (\\frac{−2}{3})^{n}}{3 - 2 (\\frac{−2}{3})^{n}}​ → \\frac{1}{3},
$$

因为$​\\frac{−2}{3}​ = \\frac{2}{3} < 1$，故$(\\frac{−2}{3})^{n} → 0$。因此，$​\\frac{a_{n+1}}{a_{n}}​ → \\frac{1}{3}$，收敛半径$R = 3$。级数在$∣x∣ < 3$时收敛，在$∣x∣ > 3$时发散。
在端点$x = 3$处，级数为$\\sum_{n=1}^{∞} \\frac{1}{n} ⋅ \\frac{3^{n}}{3^{n}+(−2)n}$。由于$\\frac{3^{n}}{3^{n}+(−2)n} → 1$，存在$N$使得当$n > N$时，$\\frac{3^{n}}{3^{n}+(−2)n} > \\frac{1}{2}$，故通项大于$\\frac{1}{2n}$。而$∑ \\frac{1}{2n}$发散，由比较判别法，级数在$x = 3$处发散。
在端点$x = −3$处，级数为$\\sum_{n=1}^{∞} \\frac{(−1)n}{n} ⋅ \\frac{3^{n}}{3^{n}+(−2)n} = \\sum_{n=1}^{∞} \\frac{(−1)n}{n} ⋅ c_{n}$，其中$c_{n} = \\frac{1}{1+(\\frac{−2}{3})^{n}}$。由于$c_{n} → 1$，令$d_{n} = \\frac{c_{n}}{n}$，则级数可写为$∑(−1)nd_{n}$。考虑$∑(−1)n\\frac{1}{n}$收敛（交错调和级数），且$∑(−1)n\\frac{c_{n}-1}{n}$绝对收敛，因为$∣c_{n} - 1∣ = ​\\frac{(\\frac{−2}{3})^{n}}{1+(\\frac{−2}{3})^{n}}​ ≤ 2 (\\frac{2}{3})^{n}$，故$​\\frac{c_{n}-1}{n}​ ≤ \\frac{2(2/3)n}{n}$，而$∑ \\frac{2(2/3)n}{n}$收敛。因此，级数在$x = −3$处收敛。
综上，收敛区域为$\\lbrack −3, 3)$。
', 9, 'Mogullzr', '2026-01-29 14:11:30', 9, 'Mogullzr', '2026-01-29 14:11:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1319');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1319');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '1319');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1320, '2000年考研数学卷1第16题', '简单', '考研数学2000年卷1真题', '设有一半径为$R$的球体，$P_{0}$是此球的表面上的一个定点，
球体上任一点的密度与该点到$P_{0}$距离的平方成正比(比例常数$k > 0$)，求球体的重心位置．', '[]', '$(−\\frac{R}{4}, 0, 0)$
', '
记所考虑的球体为$Ω$，以$Ω$的球心为坐标原点$O$，射线$OP_{0}$为正$x$轴建立直角坐标系，则球面方程为：$x^{2} + y^{2} + z^{2} = R^{2}$，点$P_{0}$的坐标为$(R, 0, 0)$，设$Ω$的重心位置为$(\\overline{x}, \\overline{y​}, \\overline{z})$，由对称性，得$\\overline{y​} = 0, \\overline{z} = 0$，设$μ$为$Ω$上点$(x, y, z)$处的密度，按题设$μ = k \\lbrack (x - R)2 + y^{2} + z^{2} \\rbrack$，则

$$
\\overline{x} = \\frac{\\iiint_{Ω} xμ dv}{\\iiint_{Ω} μ dv} = \\frac{\\iiint_{Ω} x ⋅ k \\lbrack (x - R)2 + y^{2} + z^{2} \\rbrack  dv}{\\iiint_{Ω} k \\lbrack (x - R)2 + y^{2} + z^{2} \\rbrack  dv}
$$

分别计算分子和分母的两个积分得

$$
\\begin{array}{cc}
\\iiint_{Ω} k \\lbrack (x - R)2 + y^{2} + z^{2} \\rbrack  dv & = \\iiint_{Ω} k(x^{2} + y^{2} + z^{2} + R^{2}) dv - 2kR \\iiint_{Ω} x dv \\\\
 & = k \\iiint_{Ω}(x^{2} + y^{2} + z^{2}) dv + k \\iiint_{Ω} R^{2} dv - 0 \\\\
 & = 8k \\int_{0}^{π/2} dθ \\int_{0}^{π/2} dφ \\int_{0}^{R} r^{2} ⋅ r^{2} \\sin φ dr + \\frac{4k}{3}πR^{5} \\\\
 & = \\frac{4kπR^{5}}{5} + \\frac{4k}{3}πR^{5} = \\frac{32}{15}kπR^{5}, \\\\
 & = 0 - \\frac{2kR}{3} \\iiint_{Ω}(x^{2} + y^{2} + z^{2}) dv \\\\
\\end{array}
$$

故

$$
= −\\frac{2kR}{3} ⋅ \\frac{4}{5}πR^{5} = −\\frac{8}{15}kπR^{6}.
$$



$$
\\overline{x} = −\\frac{R}{4}.
$$

因此球体$Ω$的重心位置为$(−\\frac{R}{4}, 0, 0)$。
', 9, 'Mogullzr', '2026-01-29 14:11:30', 9, 'Mogullzr', '2026-01-29 14:11:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1320');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1320');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '1320');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1321, '2000年考研数学卷1第17题', '简单', '考研数学2000年卷1真题', '设函数$f(x)$在$\\lbrack 0, π \\rbrack$上连续，且$\\int_{0}^{π} f(x)dx = 0$，$\\int_{0}^{π} f(x) \\cos xdx = 0$．
试证：在$(0, π)$内至少存在两个不同的点$ξ_{1}, ξ_{2}$，使$f(ξ_{1}) = f(ξ_{2}) = 0$．', '[]', '
令$F(x) = \\int_{0}^{x} f(t)dt, 0 ≤ x ≤ π$，则有$F(0) = 0$和$F(π) = 0$。又由题设，用分部积分有


$$
0 = \\int_{0}^{π} f(x) \\cos x dx = \\int_{0}^{π} \\cos xdF(x)
$$



$$
= F(x) \\cos x​_{0}^{π} + \\int_{0}^{π} F(x) \\sin x dx = \\int_{0}^{π} F(x) \\sin x dx
$$

由积分中值定理知，存在$ξ ∈ (0, π)$使


$$
0 = \\int_{0}^{π} F(x) \\sin x dx = F(ξ) \\sin ξ ⋅ (π - 0)
$$

因为$ξ ∈ (0, π), \\sin ξ \\neq 0$，所以推知存在$ξ ∈ (0, π)$，使得$F(ξ) = 0$。再在区间$\\lbrack 0, ξ \\rbrack$与$\\lbrack ξ, π \\rbrack$上对$F(x)$用罗尔定理，推知存在$ξ_{1} ∈ (0, ξ), ξ_{2} ∈ (ξ, π)$使得$F^{′}(ξ_{1}) = 0, F^{′}(ξ_{2}) = 0$，即$f(ξ_{1}) = 0, f(ξ_{2}) = 0$。
', '
令$F(x) = \\int_{0}^{x} f(t)dt, 0 ≤ x ≤ π$，则有$F(0) = 0$和$F(π) = 0$。又由题设，用分部积分有


$$
0 = \\int_{0}^{π} f(x) \\cos x dx = \\int_{0}^{π} \\cos xdF(x)
$$



$$
= F(x) \\cos x​_{0}^{π} + \\int_{0}^{π} F(x) \\sin x dx = \\int_{0}^{π} F(x) \\sin x dx
$$

由积分中值定理知，存在$ξ ∈ (0, π)$使


$$
0 = \\int_{0}^{π} F(x) \\sin x dx = F(ξ) \\sin ξ ⋅ (π - 0)
$$

因为$ξ ∈ (0, π), \\sin ξ \\neq 0$，所以推知存在$ξ ∈ (0, π)$，使得$F(ξ) = 0$。再在区间$\\lbrack 0, ξ \\rbrack$与$\\lbrack ξ, π \\rbrack$上对$F(x)$用罗尔定理，推知存在$ξ_{1} ∈ (0, ξ), ξ_{2} ∈ (ξ, π)$使得$F^{′}(ξ_{1}) = 0, F^{′}(ξ_{2}) = 0$，即$f(ξ_{1}) = 0, f(ξ_{2}) = 0$。
', 9, 'Mogullzr', '2026-01-29 14:11:31', 9, 'Mogullzr', '2026-01-29 14:11:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1321');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1321');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1321');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1322, '2000年考研数学卷1第18题', '简单', '考研数学2000年卷1真题', '设矩阵$A$的伴随矩阵$A^{∗} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
1 & 0 & 1 & 0 \\\\
0 & −3 & 0 & 8 \\\\
\\end{array} \\right)$，且$ABA^{−1} = BA^{−1} + 3E$，其中$E$为$4$阶单位矩阵，求矩阵$B$．', '[]', '

$$
B = \\left( \\begin{array}{cccc}
6 & 0 & 0 & 0 \\\\
0 & 6 & 0 & 0 \\\\
6 & 0 & 6 & 0 \\\\
0 & 3 & 0 & −1 \\\\
\\end{array} \\right)
$$

', '给定伴随矩阵$A^{∗} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
1 & 0 & 1 & 0 \\\\
0 & −3 & 0 & 8 \\\\
\\end{array} \\right)$，且$ABA^{−1} = BA^{−1} + 3E$，其中$E$为 4 阶单位矩阵。
首先，由伴随矩阵的性质$AA^{∗} = ∣A∣E$，计算$∣A^{∗}∣$：

$$
∣A^{∗}∣ = \\begin{vmatrix}
1 & 0 & 0 & 0\\\\
0 & 1 & 0 & 0\\\\
1 & 0 & 1 & 0\\\\
0 & −3 & 0 & 8
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
1 & 0 & 0\\\\
0 & 1 & 0\\\\
−3 & 0 & 8
\\end{vmatrix} = 1 ⋅ (1 ⋅ \\begin{vmatrix}
1 & 0\\\\
0 & 8
\\end{vmatrix}) = 1 ⋅ (1 ⋅ 8) = 8.
$$

又$∣A^{∗}∣ = ∣A∣^{3}$，所以$∣A∣^{3} = 8$，得$∣A∣ = 2$。
由$AA^{∗} = 2E$，得$A = 2(A^{∗})−1$。计算$(A^{∗})−1$：
通过行简化求逆：

$$
\\lbrack A^{∗}∣I \\rbrack  = \\left( \\begin{array}{ccccccccc}
1 & 0 & 0 & 0 & ∣ & 1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 & ∣ & 0 & 1 & 0 & 0 \\\\
1 & 0 & 1 & 0 & ∣ & 0 & 0 & 1 & 0 \\\\
0 & −3 & 0 & 8 & ∣ & 0 & 0 & 0 & 1 \\\\
\\end{array} \\right)
$$

行变换后得：

$$
(A^{∗})−1 = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
−1 & 0 & 1 & 0 \\\\
0 & \\frac{3}{8} & 0 & \\frac{1}{8} \\\\
\\end{array} \\right) .
$$

于是，

$$
A = 2(A^{∗})−1 = \\left( \\begin{array}{cccc}
2 & 0 & 0 & 0 \\\\
0 & 2 & 0 & 0 \\\\
−2 & 0 & 2 & 0 \\\\
0 & \\frac{3}{4} & 0 & \\frac{1}{4} \\\\
\\end{array} \\right) .
$$

由方程$ABA^{−1} = BA^{−1} + 3E$，右乘$A$得：

$$
AB = B + 3A.
$$

整理得：

$$
AB - B = 3A  ⟹  (A - E)B = 3A.
$$

其中$E$为单位矩阵，故

$$
A - E = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
−2 & 0 & 1 & 0 \\\\
0 & \\frac{3}{4} & 0 & −\\frac{3}{4} \\\\
\\end{array} \\right) .
$$

求$(A - E)−1$：
通过行简化求逆：

$$
\\lbrack A - E∣I \\rbrack  = \\left( \\begin{array}{ccccccccc}
1 & 0 & 0 & 0 & ∣ & 1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 & ∣ & 0 & 1 & 0 & 0 \\\\
−2 & 0 & 1 & 0 & ∣ & 0 & 0 & 1 & 0 \\\\
0 & \\frac{3}{4} & 0 & −\\frac{3}{4} & ∣ & 0 & 0 & 0 & 1 \\\\
\\end{array} \\right)
$$

行变换后得：

$$
(A - E)−1 = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
2 & 0 & 1 & 0 \\\\
0 & 1 & 0 & −\\frac{4}{3} \\\\
\\end{array} \\right) .
$$

计算$(A - E)−1A$：

$$
(A - E)−1A = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
2 & 0 & 1 & 0 \\\\
0 & 1 & 0 & −\\frac{4}{3} \\\\
\\end{array} \\right) \\left( \\begin{array}{cccc}
2 & 0 & 0 & 0 \\\\
0 & 2 & 0 & 0 \\\\
−2 & 0 & 2 & 0 \\\\
0 & \\frac{3}{4} & 0 & \\frac{1}{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
2 & 0 & 0 & 0 \\\\
0 & 2 & 0 & 0 \\\\
2 & 0 & 2 & 0 \\\\
0 & 1 & 0 & −\\frac{1}{3} \\\\
\\end{array} \\right) .
$$

于是，

$$
B = 3(A - E)−1A = 3 \\left( \\begin{array}{cccc}
2 & 0 & 0 & 0 \\\\
0 & 2 & 0 & 0 \\\\
2 & 0 & 2 & 0 \\\\
0 & 1 & 0 & −\\frac{1}{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
6 & 0 & 0 & 0 \\\\
0 & 6 & 0 & 0 \\\\
6 & 0 & 6 & 0 \\\\
0 & 3 & 0 & −1 \\\\
\\end{array} \\right) .
$$

因此，矩阵$B$为：

$$
B = \\left( \\begin{array}{cccc}
6 & 0 & 0 & 0 \\\\
0 & 6 & 0 & 0 \\\\
6 & 0 & 6 & 0 \\\\
0 & 3 & 0 & −1 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:11:31', 9, 'Mogullzr', '2026-01-29 14:11:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1322');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1322');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1322');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1323, '2000年考研数学卷1第19题', '简单', '考研数学2000年卷1真题', '某试验性生产线每年一月份进行熟练工与非熟练工的人数统计，
然后将$\\frac{1}{6}$熟练工支援其他生产部门，其缺额由招收新的非熟练工补齐，
新、老非熟练工经过培训及实践至年终考核有$\\frac{2}{5}$成为熟练工．
设第$n$年一月份统计的熟练工和非熟练工所占百分比分别为$x_{n},$$y_{n}$记成向量$\\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
\\end{array} \\right)$．(1) 求$\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right)$与$\\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
\\end{array} \\right)$的关系式并写成矩阵形式：$\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right) = A \\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
\\end{array} \\right) ;$(2) 验证$η_{1} = \\left( \\begin{array}{c}
4 \\\\
1 \\\\
\\end{array} \\right) , η_{2} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
\\end{array} \\right)$是$A$的两个线性无关的特征向量，并求出相应的特征值；(3) 当$\\left( \\begin{array}{c}
x_{1} \\\\
y_{1} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
\\frac{1}{2} \\\\
\\frac{1}{2} \\\\
\\end{array} \\right)$时，求$\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right) .$', '[]', '(1)

$$
\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
\\frac{9}{10} & \\frac{2}{5} \\\\
\\frac{1}{10} & \\frac{3}{5} \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
\\end{array} \\right)
$$

即

$$
A = \\left( \\begin{array}{cc}
\\frac{9}{10} & \\frac{2}{5} \\\\
\\frac{1}{10} & \\frac{3}{5} \\\\
\\end{array} \\right)
$$

(2)$η_{1} = \\left( \\begin{array}{c}
4 \\\\
1 \\\\
\\end{array} \\right)$是特征向量，特征值为$1$；$η_{2} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
\\end{array} \\right)$是特征向量，特征值为$\\frac{1}{2}$。两者线性无关。
(3)

$$
\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
\\frac{4}{5} - \\frac{3}{10} (\\frac{1}{2})^{n} \\\\
\\frac{1}{5} + \\frac{3}{10} (\\frac{1}{2})^{n} \\\\
\\end{array} \\right)
$$

', '(1) 设第$n$年一月份熟练工和非熟练工的比例分别为$x_{n}$和$y_{n}$，且$x_{n} + y_{n} = 1$。支援后熟练工变为$\\frac{5}{6}x_{n}$，非熟练工变为$y_{n} + \\frac{1}{6}x_{n}$。经过培训，有$\\frac{2}{5}$的非熟练工成为熟练工，因此：

$$
x_{n+1} = \\frac{5}{6}x_{n} + \\frac{2}{5} (y_{n} + \\frac{1}{6}x_{n}) = \\frac{9}{10}x_{n} + \\frac{2}{5}y_{n}
$$



$$
y_{n+1} = \\frac{3}{5} (y_{n} + \\frac{1}{6}x_{n}) = \\frac{1}{10}x_{n} + \\frac{3}{5}y_{n}
$$

写成矩阵形式：

$$
\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
\\frac{9}{10} & \\frac{2}{5} \\\\
\\frac{1}{10} & \\frac{3}{5} \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
\\end{array} \\right)
$$

所以$A = \\left( \\begin{array}{cc}
\\frac{9}{10} & \\frac{2}{5} \\\\
\\frac{1}{10} & \\frac{3}{5} \\\\
\\end{array} \\right)$.
(2) 计算$Aη_{1}$：

$$
Aη_{1} = \\left( \\begin{array}{cc}
\\frac{9}{10} & \\frac{2}{5} \\\\
\\frac{1}{10} & \\frac{3}{5} \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
4 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
\\frac{9}{10} × 4 + \\frac{2}{5} × 1 \\\\
\\frac{1}{10} × 4 + \\frac{3}{5} × 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
4 \\\\
1 \\\\
\\end{array} \\right) = 1 ⋅ η_{1}
$$

所以$η_{1}$的特征值为$1$。计算$Aη_{2}$：

$$
Aη_{2} = \\left( \\begin{array}{cc}
\\frac{9}{10} & \\frac{2}{5} \\\\
\\frac{1}{10} & \\frac{3}{5} \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−\\frac{9}{10} + \\frac{2}{5} \\\\
−\\frac{1}{10} + \\frac{3}{5} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−\\frac{1}{2} \\\\
\\frac{1}{2} \\\\
\\end{array} \\right) = \\frac{1}{2} ⋅ η_{2}
$$

所以$η_{2}$的特征值为$\\frac{1}{2}$。$η_{1}$和$η_{2}$线性无关，因为它们不成比例。
(3) 初始向量$\\left( \\begin{array}{c}
x_{1} \\\\
y_{1} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
\\frac{1}{2} \\\\
\\frac{1}{2} \\\\
\\end{array} \\right)$。将其表示为特征向量的线性组合：

$$
\\left( \\begin{array}{c}
\\frac{1}{2} \\\\
\\frac{1}{2} \\\\
\\end{array} \\right) = c_{1} \\left( \\begin{array}{c}
4 \\\\
1 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
\\end{array} \\right)
$$

解得：

$$
4c_{1} - c_{2} = \\frac{1}{2},  c_{1} + c_{2} = \\frac{1}{2}
$$

求解得$c_{1} = \\frac{1}{5}$,$c_{2} = \\frac{3}{10}$。因此：

$$
\\left( \\begin{array}{c}
x_{n+1} \\\\
y_{n+1} \\\\
\\end{array} \\right) = A^{n} \\left( \\begin{array}{c}
x_{1} \\\\
y_{1} \\\\
\\end{array} \\right) = A^{n} (\\frac{1}{5}η_{1} + \\frac{3}{10}η_{2}) = \\frac{1}{5}A^{n}η_{1} + \\frac{3}{10}A^{n}η_{2} = \\frac{1}{5}η_{1} + \\frac{3}{10} (\\frac{1}{2})^{n} η_{2}
$$

代入$η_{1}$和$η_{2}$：

$$
= \\frac{1}{5} \\left( \\begin{array}{c}
4 \\\\
1 \\\\
\\end{array} \\right) + \\frac{3}{10} (\\frac{1}{2})^{n} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
\\frac{4}{5} - \\frac{3}{10} (\\frac{1}{2})^{n} \\\\
\\frac{1}{5} + \\frac{3}{10} (\\frac{1}{2})^{n} \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:11:31', 9, 'Mogullzr', '2026-01-29 14:11:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1323');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1323');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1323');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1324, '2000年考研数学卷1第20题', '简单', '考研数学2000年卷1真题', '某流水生产线上每个产品不合格的概率为$p$（$0 < p < 1$），各产品合格与否相互独立，
当出现一个不合格产品时即停机检修．设开机后第一次停机时已生产了产品的个数为$X$，求$X$的数学期望$E(X)$和方差$D(X)$．', '[]', '


$$
E(X) = \\frac{1}{p}
$$


$$
D(X) = \\frac{1 - p}{p^{2}}
$$

', '
记$q = 1 - p$，$X$的概率分布为$P\\{X = k\\} = q^{k-1}p, (k = 1, 2, ⋯ )$。由离散型随机变量的数学期望定义得，$X$的数学期望为


$$
E(X) = \\sum_{k=1}^{∞} kP\\{X = k\\} = \\sum_{k=1}^{∞} kq^{k-1}p = p \\sum_{k=1}^{∞}(q^{k})′
$$



$$
= p (\\sum_{k=1}^{∞} q^{k})^{′} = p (\\frac{q}{1 - q})^{′} = \\frac{1}{p}
$$

因为


$$
E(X^{2}) = \\sum_{k=1}^{∞} k^{2}P\\{X = k\\} = \\sum_{k=1}^{∞} k^{2}q^{k-1}p = p  \\lbrack q (\\sum_{k=1}^{∞} q^{k})^{′} \\rbrack
$$



$$
= p (\\frac{q}{(1 - q)2})^{′} = \\frac{2 - p}{p^{2}}
$$

故$X$的方差为


$$
D(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2 = \\frac{2 - p}{p^{2}} - \\frac{1}{p^{2}} = \\frac{1 - p}{p^{2}}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:32', 9, 'Mogullzr', '2026-01-29 14:11:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1324');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1324');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1325, '2000年考研数学卷1第21题', '简单', '考研数学2000年卷1真题', '设某种元件的使用寿命$X$的概率密度为$f(x; θ) = \\begin{cases} 2e^{−2(x-θ)}, x ≥ θ \\\\ 0, x < θ \\end{cases}$其中$θ > 0$为未知参数，又设$x_{1}, x_{2}, ⋅ ⋅ ⋅, x_{n}$是$X$的一组样本观测值，
求参数$θ$的最大似然估计值．', '[]', '

$$
\\hat{θ} = \\min\\{x_{1}, x_{2}, … , x_{n}\\}
$$

', '似然函数为$L(θ) = \\prod_{i=1}^{n} f(x_{i}; θ)$。由于当$x < θ$时$f(x; θ) = 0$，因此为了使似然函数非零，必须满足$θ ≤ x_{i}$对于所有$i$，即$θ ≤ \\min\\{x_{1}, x_{2}, … , x_{n}\\}$。记$x_{(1)} = \\min\\{x_{1}, x_{2}, … , x_{n}\\}$，则当$θ ≤ x_{(1)}$时，似然函数为：

$$
L(θ) = \\prod_{i=1}^{n} 2e^{−2(x_{i}-θ)} = 2^{n}e^{−2 \\sum_{i=1}^{n}(x_{i}-θ)} = 2^{n}e^{−2 ∑ x_{i}}e^{2nθ}.
$$

取对数似然函数：

$$
l(θ) = \\ln L(θ) = n \\ln 2 - 2 ∑ x_{i} + 2nθ.
$$

由于$l(θ)$是$θ$的线性递增函数（因为$2n > 0$），且在约束$θ ≤ x_{(1)}$下，因此$l(θ)$在$θ = x_{(1)}$处取得最大值。故参数$θ$的最大似然估计值为$\\hat{θ} = x_{(1)}$。
', 9, 'Mogullzr', '2026-01-29 14:11:32', 9, 'Mogullzr', '2026-01-29 14:11:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1325');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1325');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1325');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1326, '2000年考研数学卷2第1题', '简单', '考研数学2000年卷2真题', '$\\lim_{x→0} \\frac{arctan x-x}{\\ln(1+2x^{3})} =$______．', '[]', '$−\\frac{1}{6}$
', '当$x → 0$时，分子$arctan x - x$和分母$\\ln(1 + 2x^{3})$均趋于 0，因此该极限为$\\frac{0}{0}$型不定式。使用泰勒展开求解：$arctan x = x - \\frac{x^{3}}{3} + O(x^{5})$，所以$arctan x - x = −\\frac{x^{3}}{3} + O(x^{5})$；分母$\\ln(1 + 2x^{3}) = 2x^{3} - \\frac{(2x^{3})2}{2} + O(x^{6}) = 2x^{3} + O(x^{6})$。因此，原极限化为：

$$
\\lim_{x→0} \\frac{−\\frac{x^{3}}{3} + O(x^{5})}{2x^{3} + O(x^{6})} = \\lim_{x→0} \\frac{−\\frac{1}{3} + O(x^{2})}{2 + O(x^{3})} = −\\frac{1}{6}.
$$

也可使用洛必达法则验证：令$f(x) = arctan x - x$，$g(x) = \\ln(1 + 2x^{3})$，则$f^{′}(x) = \\frac{1}{1+x^{2}} - 1 = \\frac{−x^{2}}{1+x^{2}}$，$g^{′}(x) = \\frac{6x^{2}}{1+2x^{3}}$。当$x → 0$时，$\\frac{f^{′}(x)}{g^{′}(x)} = \\frac{−x^{2}/(1+x^{2})}{6x^{2}/(1+2x^{3})} ∼ \\frac{−x^{2}}{6x^{2}} = −\\frac{1}{6}$。故极限为$−\\frac{1}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:11:34', 9, 'Mogullzr', '2026-01-29 14:11:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1326');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1326');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1326');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1327, '2000年考研数学卷2第2题', '简单', '考研数学2000年卷2真题', '设函数$y = y(x)$由方程$2^{xy} = x + y$所确定，则$dy​_{x=0} =$______．', '[]', '
$\\ln 2 - 1$
', '
函数$y = y(x)$由方程$2^{xy} = x + y$所确定。
当$x = 0$时，代入方程得$2^{0} = 0 + y$，即$y = 1$。
对方程两边关于$x$求微分：
左边微分：$d(2^{xy}) = 2^{xy} \\ln 2 ⋅ d(xy) = 2^{xy} \\ln 2 ⋅ (y dx + x dy)$
右边微分：$d(x + y) = dx + dy$
因此得：


$$
2^{xy} \\ln 2 ⋅ (y dx + x dy) = dx + dy
$$

代入$x = 0$,$y = 1$, 且$2^{xy} = 2^{0} = 1$：


$$
\\ln 2 ⋅ (1 ⋅ dx + 0 ⋅ dy) = dx + dy
$$

即：


$$
\\ln 2 dx = dx + dy
$$

整理得：


$$
dy = (\\ln 2 - 1) dx
$$

故$dy​_{x=0} = (\\ln 2 - 1) dx$。
通常，$dy​_{x=0}$表示微分，但在此上下文中，常理解为导数$\\frac{dy}{dx}​_{x=0}$，因此


$$
\\frac{dy}{dx}​_{x=0} = \\ln 2 - 1
$$

所以，答案为$\\ln 2 - 1$。
', 9, 'Mogullzr', '2026-01-29 14:11:34', 9, 'Mogullzr', '2026-01-29 14:11:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1327');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1327');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1327');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1328, '2000年考研数学卷2第3题', '简单', '考研数学2000年卷2真题', '
$$
\\int_{2}^{+∞} \\frac{dx}{(x + 7)\\sqrt{x - 2}} =
$$
', '[]', '
$\\frac{π}{3}$
', '
考虑积分$\\int_{2}^{+∞} \\frac{dx}{(x+7)\\sqrt{x-2}}$。令$t = \\sqrt{x - 2}$，则$t^{2} = x - 2$，即$x = t^{2} + 2$，且$dx = 2t dt$。当$x = 2$时，$t = 0$；当$x → +∞$时，$t → +∞$。代入得：


$$
\\int_{2}^{+∞} \\frac{dx}{(x + 7)\\sqrt{x - 2}} = \\int_{0}^{+∞} \\frac{2t dt}{(t^{2} + 2 + 7)t} = \\int_{0}^{+∞} \\frac{2 dt}{t^{2} + 9}.
$$

计算积分$\\int_{0}^{+∞} \\frac{2 dt}{t^{2}+9}$。利用公式$∫ \\frac{dt}{t^{2}+a^{2}} = \\frac{1}{a} arctan \\frac{t}{a} + C$，其中$a = 3$，得：


$$
∫ \\frac{2 dt}{t^{2} + 9} = 2 ⋅ \\frac{1}{3} arctan \\frac{t}{3} + C = \\frac{2}{3} arctan \\frac{t}{3} + C.
$$

代入上下限：


$$
\\lbrack \\frac{2}{3} arctan \\frac{t}{3} \\rbrack _{0}^{+∞} = \\frac{2}{3} (\\lim_{t→∞} arctan \\frac{t}{3} - arctan 0) = \\frac{2}{3} (\\frac{π}{2} - 0) = \\frac{2}{3} ⋅ \\frac{π}{2} = \\frac{π}{3}.
$$

因此，积分值为$\\frac{π}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1328');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1328');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1328');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1329, '2000年考研数学卷2第4题', '简单', '考研数学2000年卷2真题', '曲线$y = (2x - 1)e^{1/x}$的斜渐近线方程为 ______．', '[]', '
$y = 2x + 1$
', '
为了求曲线$y = (2x - 1)e^{1/x}$的斜渐近线，考虑$x → ∞$的情况。斜渐近线的形式为$y = mx + b$，其中$m = \\lim_{x→∞} \\frac{y}{x}$，$b = \\lim_{x→∞}(y - mx)$。
首先，计算$m$：


$$
m = \\lim_{x→∞} \\frac{(2x - 1)e^{1/x}}{x} = \\lim_{x→∞} (2 - \\frac{1}{x}) e^{1/x} = 2 ⋅ 1 = 2.
$$

然后，计算$b$：


$$
b = \\lim_{x→∞} ((2x - 1)e^{1/x} - 2x) .
$$

令$t = 1/x$，则当$x → ∞$时，$t → 0^{+}$，有


$$
b = \\lim_{t→0}  \\lbrack (\\frac{2}{t} - 1) e^{t} - \\frac{2}{t} \\rbrack  = \\lim_{t→0}  \\lbrack \\frac{2}{t}(e^{t} - 1) - e^{t} \\rbrack  .
$$

利用泰勒展开$e^{t} = 1 + t + \\frac{t^{2}}{2} + o(t^{2})$，得


$$
\\frac{2}{t}(e^{t} - 1) = \\frac{2}{t} (t + \\frac{t^{2}}{2} + o(t^{2})) = 2 + t + o(t),
$$

所以


$$
b = \\lim_{t→0}  \\lbrack 2 + t + o(t) - (1 + t + o(t)) \\rbrack  = \\lim_{t→0}(1 + o(t)) = 1.
$$

因此，斜渐近线方程为$y = 2x + 1$。
对于$x → −∞$，类似计算可得相同结果。
', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1329');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1329');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1329');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1330, '2000年考研数学卷2第5题', '简单', '考研数学2000年卷2真题', '设$A = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−2 & 3 & 0 & 0 \\\\
0 & −4 & 5 & 0 \\\\
0 & 0 & −6 & 7 \\\\
\\end{array} \\right)$，$E$为$4$阶单位矩阵，而且$B = (E + A)−1(E - A)$，则$(E + B)−1 =$______．', '[]', '


$$
\\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−1 & 2 & 0 & 0 \\\\
0 & −2 & 3 & 0 \\\\
0 & 0 & −3 & 4 \\\\
\\end{array} \\right)
$$

', '
由于$B = (E + A)−1(E - A)$，所以

$$
(E + B)−1 =  \\lbrack E + (E + A)−1(E - A) \\rbrack −1
$$


$$
=  \\lbrack (E + A)−1(E + A) + (E + A)−1(E - A) \\rbrack −1
$$


$$
=  \\lbrack 2(E + A)−1 \\rbrack −1 = \\frac{1}{2}(E + A)
$$


$$
= \\frac{1}{2} \\left( \\begin{array}{cccc}
2 & 0 & 0 & 0 \\\\
−2 & 4 & 0 & 0 \\\\
0 & −4 & 6 & 0 \\\\
0 & 0 & −6 & 8 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−1 & 2 & 0 & 0 \\\\
0 & −2 & 3 & 0 \\\\
0 & 0 & −3 & 4 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1330');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1330');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1330');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1331, '2000年考研数学卷2第6题', '简单', '考研数学2000年卷2真题', '设函数$f(x) = \\frac{x}{a+e^{bx}}$在$(−∞, +∞)$内连续，且$\\lim_{x→−∞} f(x) = 0$，则常数$a, b$满足', '[''$a < 0, b < 0$．'', ''$a > 0, b > 0$．'', ''$a ≤ 0, b > 0$．'', ''$a ≥ 0, b < 0$．'']', "['D']", '函数$f(x) = \\frac{x}{a+e^{bx}}$在$(−∞, +∞)$内连续，要求分母$a + e^{bx} \\neq 0$对于所有$x$。同时，给定$\\lim_{x→−∞} f(x) = 0$。考虑$b$的符号：若$b > 0$，当$x → −∞$时，$e^{bx} → 0$，分母$a + e^{bx} → a$。若$a \\neq 0$，则$f(x) ∼ \\frac{x}{a} → −∞$；若$a = 0$，则$f(x) = \\frac{x}{e^{bx}} → −∞$。均不满足极限为 0。若$b = 0$，则$f(x) = \\frac{x}{a+1}$，当$x → −∞$时，$f(x) → −∞$，不满足极限为 0。若$b < 0$，当$x → −∞$时，$e^{bx} → +∞$，分母$a + e^{bx} → +∞$，分子$x → −∞$，但分母增长更快，故$f(x) → 0$。为保证连续性，分母需恒不为零。由于$e^{bx} > 0$，若$a ≥ 0$，则$a + e^{bx} > 0$，函数连续；若$a < 0$，则存在$x$使得$a + e^{bx} = 0$，函数不连续。因此，常数$a, b$需满足$a ≥ 0$且$b < 0$，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1331');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1331');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '1331');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1332, '2000年考研数学卷2第7题', '简单', '考研数学2000年卷2真题', '设函数$f(x)$满足关系式$f^{′′}(x) +  \\lbrack f^{′}(x) \\rbrack 2 = x$，且$f^{′}(0) = 0$，则', '[''$f(0)$是$f(x)$的极大值．'', ''$f(0)$是$f(x)$的极小值．'', ''点$(0, f(0))$是曲线$y = f(x)$的拐点．'', ''$f(0)$不是$f(x)$的极值，点$(0, f(0))$也不是曲线$y = f(x)$的拐点．'']', "['C']", '
已知函数$f(x)$满足关系式$f^{′′}(x) +  \\lbrack f^{′}(x) \\rbrack 2 = x$，且$f^{′}(0) = 0$。
在$x = 0$处，代入方程得：

$$
f^{′′}(0) +  \\lbrack f^{′}(0) \\rbrack 2 = 0 ⇒ f^{′′}(0) + 0 = 0 ⇒ f^{′′}(0) = 0.
$$
因此，二阶导数检验无法判定极值。
对方程两边求导：

$$
f^{′′′}(x) + 2f^{′}(x)f^{′′}(x) = 1.
$$
在$x = 0$处代入：

$$
f^{′′′}(0) + 2f^{′}(0)f^{′′}(0) = 1 ⇒ f^{′′′}(0) + 0 = 1 ⇒ f^{′′′}(0) = 1 \\neq 0.
$$
由于$f^{′′}(0) = 0$且$f^{′′′}(0) = 1 > 0$，说明$f^{′′}(x)$在$x = 0$处由负变正，即点$(0, f(0))$是曲线$y = f(x)$的拐点。
同时，$f^{′}(0) = 0$但$f^{′′}(0) = 0$且$f^{′′′}(0) \\neq 0$，表明$f(0)$不是极值点。
因此，正确选项为 C。\\boxed{\\text{C}}', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1332');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1332');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1332');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1333, '2000年考研数学卷2第8题', '', '考研数学2000年卷2真题', '/problems/other/1310', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1334, '2000年考研数学卷2第9题', '简单', '考研数学2000年卷2真题', '若$\\lim_{x→0} (\\frac{\\sin 6x+xf(x)}{x^{3}}) = 0$，则$\\lim_{x→0} \\frac{6+f(x)}{x^{2}}$为', '[''$0$．'', ''$6$．'', ''$36$．'', ''$∞$．'']', "['C']", '
已知

$$
\\lim_{x→0} \\frac{\\sin 6x + xf(x)}{x^{3}} = 0
$$
将$\\sin 6x$展开为泰勒级数：

$$
\\sin 6x = 6x - 36x^{3} + O(x^{5})
$$
代入分子得：

$$
\\sin 6x + xf(x) = 6x - 36x^{3} + xf(x) + O(x^{5})
$$
除以$x^{3}$得：

$$
\\frac{\\sin 6x + xf(x)}{x^{3}} = \\frac{6x}{x^{3}} - \\frac{36x^{3}}{x^{3}} + \\frac{xf(x)}{x^{3}} + \\frac{O(x^{5})}{x^{3}} = \\frac{6}{x^{2}} - 36 + \\frac{f(x)}{x^{2}} + O(x^{2})
$$
即

$$
\\frac{\\sin 6x + xf(x)}{x^{3}} = \\frac{6 + f(x)}{x^{2}} - 36 + O(x^{2})
$$
由于极限为$0$，且$O(x^{2}) → 0$，有

$$
\\lim_{x→0} (\\frac{6 + f(x)}{x^{2}} - 36) = 0
$$
因此

$$
\\lim_{x→0} \\frac{6 + f(x)}{x^{2}} = 36
$$
', 9, 'Mogullzr', '2026-01-29 14:11:35', 9, 'Mogullzr', '2026-01-29 14:11:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1334');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1334');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '1334');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1335, '2000年考研数学卷2第10题', '简单', '考研数学2000年卷2真题', '具有特解$y_{1} = e^{−x}, y_{2} = 2xe^{−x}, y_{3} = 3e^{x}$的3阶常系数齐次线性微分方程是', '[''$y^{′′′} - y^{′′} - y^{′} + y = 0$．'', ''$y^{′′′} + y^{′′} - y^{′} - y = 0$．'', ''$y^{′′′} - 6y^{′′} + 11y^{′} - 6y = 0$．'', ''$y^{′′′} - 2y^{′′} - y^{′} + 2y = 0$．'']', "['B']", '
已知特解$y_{1} = e^{−x}$，$y_{2} = 2xe^{−x}$，$y_{3} = 3e^{x}$，对应的特征根分别为
$r = −1$（二重根）与$r = 1$（单根）。于是特征方程为

$$
(r + 1)2(r - 1) = 0
$$
展开得

$$
r^{3} + r^{2} - r - 1 = 0
$$
对应的微分方程为

$$
y^{′′′} + y^{′′} - y^{′} - y = 0
$$
即选项B。验证其余选项：A的特征根为$r = 1$（二重根）与$r = −1$（单根），其通解不含$xe^{−x}$形式的解；C的特征根为$r = 1, 2, 3$，通解不含$e^{−x}$或$xe^{−x}$；D的特征根为$r = 1, −1, 2$，通解同样不含$xe^{−x}$。因此正确选项为B。', 9, 'Mogullzr', '2026-01-29 14:11:36', 9, 'Mogullzr', '2026-01-29 14:11:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1335');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1335');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '1335');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1336, '2000年考研数学卷2第11题', '简单', '考研数学2000年卷2真题', '设$f(\\ln x) = \\frac{\\ln(1+x)}{x}$，计算$∫ f(x)dx$．', '[]', '

$$
∫ f(x) dx = x - \\ln(1 + e^{x}) - e^{−x} \\ln(1 + e^{x}) + C
$$

其中$C$为积分常数。
', '给定$f(\\ln x) = \\frac{\\ln(1+x)}{x}$，令$u = \\ln x$，则$x = e^{u}$，代入得：

$$
f(u) = \\frac{\\ln(1 + e^{u})}{e^{u}}
$$

即$f(x) = e^{−x} \\ln(1 + e^{x})$。需要计算$∫ f(x) dx = ∫ e^{−x} \\ln(1 + e^{x}) dx$.
令$t = e^{x}$，则$dt = e^{x} dx$，即$dx = \\frac{dt}{t}$。代入积分：

$$
∫ e^{−x} \\ln(1 + e^{x}) dx = ∫ \\frac{1}{t} \\ln(1 + t) ⋅ \\frac{dt}{t} = ∫ \\frac{\\ln(1 + t)}{t^{2}} dt
$$

对$∫ \\frac{\\ln(1+t)}{t^{2}} dt$使用分部积分法：令$u = \\ln(1 + t)$,$dv = \\frac{1}{t^{2}} dt$，则$du = \\frac{1}{1+t} dt$,$v = −\\frac{1}{t}$。于是：

$$
∫ \\frac{\\ln(1 + t)}{t^{2}} dt = −\\frac{\\ln(1 + t)}{t} - ∫ (−\\frac{1}{t}) ⋅ \\frac{1}{1 + t} dt = −\\frac{\\ln(1 + t)}{t} + ∫ \\frac{1}{t(1 + t)} dt
$$

对$∫ \\frac{1}{t(1+t)} dt$进行部分分式分解：

$$
\\frac{1}{t(1 + t)} = \\frac{1}{t} - \\frac{1}{1 + t}
$$

所以：

$$
∫ \\frac{1}{t(1 + t)} dt = ∫ (\\frac{1}{t} - \\frac{1}{1 + t}) dt = \\ln ∣t∣ - \\ln ∣1 + t∣ + C_{1} = \\ln ​\\frac{t}{1 + t}​ + C_{1}
$$

由于$t = e^{x} > 0$，有：

$$
∫ \\frac{1}{t(1 + t)} dt = \\ln (\\frac{t}{1 + t}) + C_{1}
$$

代回：

$$
∫ \\frac{\\ln(1 + t)}{t^{2}} dt = −\\frac{\\ln(1 + t)}{t} + \\ln (\\frac{t}{1 + t}) + C_{1}
$$

将$t = e^{x}$代回：

$$
∫ f(x) dx = −\\frac{\\ln(1 + e^{x})}{e^{x}} + \\ln (\\frac{e^{x}}{1 + e^{x}}) + C_{1}
$$

简化：

$$
\\ln (\\frac{e^{x}}{1 + e^{x}}) = \\ln e^{x} - \\ln(1 + e^{x}) = x - \\ln(1 + e^{x})
$$

所以：

$$
\\begin{array}{cc}
∫ f(x) dx & = −e^{−x} \\ln(1 + e^{x}) + x - \\ln(1 + e^{x}) + C_{1} \\\\
 & = x - \\ln(1 + e^{x}) - e^{−x} \\ln(1 + e^{x}) + C \\\\
\\end{array}
$$

其中$C = C_{1}$为积分常数。
', 9, 'Mogullzr', '2026-01-29 14:11:36', 9, 'Mogullzr', '2026-01-29 14:11:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1336');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1336');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1336');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1337, '2000年考研数学卷2第12题', '简单', '考研数学2000年卷2真题', '设$xOy$平面上有正方形$D = \\{(x, y) ∣0 ≤ x ≤ 1, 0 ≤ y ≤ 1\\}$及直线$l : x + y = t$（$t ≥ 0$）．若$S(t)$表示正方形$D$位于直线$l$左下方部分的面积，
试求$\\int_{0}^{x} S(t)dt$（$x ≥ 0$）．', '[]', '

$$
\\int_{0}^{x} S(t) dt = \\begin{cases} \\frac{x^{3}}{6} & 0 ≤ x ≤ 1 \\\\ x - 1 + \\frac{1}{6}(2 - x)3 & 1 ≤ x ≤ 2 \\\\ x - 1 & x ≥ 2 \\end{cases}
$$

', '
先写出面积$S(t)$的分段表达式。当$0 < t < 1$时，图形为三角形，利用三角形的面积公式：$S(t) = \\frac{1}{2}t^{2}$; 当$1 < t < 2$时，图形面积可由正方形面积减去小三角形面积：

$$
S(t) = 1 - \\frac{1}{2}(2 - t)2 = 1 - \\frac{1}{2}(t^{2} - 4t + 4) = −\\frac{1}{2}t^{2} + 2t - 1;
$$

当$t > 2$时，图形面积就是正方形的面积：$S(t) = 1$，则有

$$
S(t) = \\begin{cases} \\frac{1}{2}t^{2} & 0 ≤ t ≤ 1 \\\\ 1 - \\frac{1}{2}(2 - t)2 & 1 < t ≤ 2 \\\\ 1 & 2 < t. \\end{cases}
$$

所以，当$0 ≤ x ≤ 1$时，

$$
\\int_{0}^{x} S(t)dt = \\int_{0}^{x} \\frac{1}{2}t^{2}dt = (\\frac{1}{2} ⋅ \\frac{t^{3}}{3})_{0}^{x} = \\frac{x^{3}}{6};
$$

当$1 < x ≤ 2$时，

$$
\\int_{0}^{x} S(t)dt = \\int_{0}^{1} S(t)dt + \\int_{1}^{x} S(t)dt = \\int_{0}^{1} \\frac{1}{2}t^{2}dt + \\int_{1}^{x} \\lbrack 1 - \\frac{1}{2}(t - 2)2 \\rbrack dt
$$


$$
= \\frac{1}{6} + (x - 1) - \\frac{1}{6}(x - 2)3 - \\frac{1}{6} = −\\frac{x^{3}}{6} + x^{2} - x + \\frac{1}{3}.
$$

当$x > 2$时，

$$
\\int_{0}^{x} S(t)dt = \\int_{0}^{2} S(t)dt + \\int_{2}^{x} S(t)dt = 1 + \\int_{2}^{x} 1dt = x - 1.
$$

因此

$$
\\int_{0}^{x} S(t)dt = \\begin{cases} \\frac{1}{6}x^{3} & 0 ≤ x ≤ 1 \\\\ −\\frac{1}{6}x^{3} + x^{2} - x + \\frac{1}{3} & 1 < x ≤ 2 \\\\ x - 1 & x > 2 \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:36', 9, 'Mogullzr', '2026-01-29 14:11:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1337');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1337');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1337');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1338, '2000年考研数学卷2第13题', '简单', '考研数学2000年卷2真题', '求函数$f(x) = x^{2} \\ln(1 + x)$在$x = 0$处的$n$阶导数$f^{n}(0)$（$n ≥ 3$）．', '[]', '

$$
f^{(n)}(0) = \\frac{n!(−1)n+1}{n - 2}
$$

', '考虑函数$f(x) = x^{2} \\ln(1 + x)$。利用$\\ln(1 + x)$的泰勒级数展开：

$$
\\ln(1 + x) = \\sum_{m=1}^{∞} \\frac{(−1)m−1x^{m}}{m},  ∣x∣ < 1
$$

代入$f(x)$得：

$$
f(x) = x^{2} \\sum_{m=1}^{∞} \\frac{(−1)m−1x^{m}}{m} = \\sum_{m=1}^{∞} \\frac{(−1)m−1x^{m+2}}{m}
$$

令$n = m + 2$，则$m = n - 2$，且当$m ≥ 1$时$n ≥ 3$，所以：

$$
f(x) = \\sum_{n=3}^{∞} \\frac{(−1)n−3x^{n}}{n - 2}
$$

函数$f(x)$在$x = 0$处的泰勒级数为：

$$
f(x) = \\sum_{n=0}^{∞} \\frac{f^{(n)}(0)}{n!}x^{n}
$$

比较系数，对于$n ≥ 3$，有：

$$
\\frac{f^{(n)}(0)}{n!} = \\frac{(−1)n−3}{n - 2}
$$

因此：

$$
f^{(n)}(0) = n! ⋅ \\frac{(−1)n−3}{n - 2}
$$

简化$(−1)n−3 = (−1)n+1$，得：

$$
f^{(n)}(0) = \\frac{n!(−1)n+1}{n - 2}
$$

此公式对$n ≥ 3$成立。
', 9, 'Mogullzr', '2026-01-29 14:11:36', 9, 'Mogullzr', '2026-01-29 14:11:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1338');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1338');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1338');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1339, '2000年考研数学卷2第14题', '简单', '考研数学2000年卷2真题', '设函数$S(x) = \\int_{0}^{x} ∣ \\cos t∣dt$，(1) 当$n$为正整数，且$nπ ≤ x ≤ (n + 1)π$时，证明$2n ≤ S(x) < 2(n + 1)$；(2) 求$\\lim_{x→+∞} \\frac{S(x)}{x}$．', '[]', '
(1) 证明见解析。
(2)$\\lim_{x→+∞} \\frac{S(x)}{x} = \\frac{2}{π}$
', '
(Ⅰ) 因为$∣ \\cos x∣ ≥ 0$，且$nπ ≤ x < (n + 1)π$，所以


$$
\\int_{0}^{nπ} ∣ \\cos x∣dx ≤ \\int_{0}^{x} ∣ \\cos x∣dx < \\int_{0}^{(n+1)π} ∣ \\cos x∣dx.
$$

又因为$∣ \\cos x∣$具有周期$π$，在长度为$π$的积分区间上的积分均相等，所以


$$
\\int_{0}^{nπ} ∣ \\cos x∣dx = n \\int_{0}^{π} ∣ \\cos x∣dx = 2n,  \\int_{0}^{(n+1)π} ∣ \\cos x∣dx = 2(n + 1).
$$

所以当$nπ ≤ x < (n + 1)π$时$2n ≤ \\int_{0}^{x} ∣ \\cos x∣dx < 2(n + 1)$，即$2n ≤ S(x) < 2(n + 1)$。
(Ⅱ) 由 (1) 有，当$nπ ≤ x ≤ (n + 1)π$时，


$$
\\frac{2n}{(n + 1)π} < \\frac{S(x)}{x} < \\frac{2(n + 1)}{nπ}.
$$

而


$$
\\lim_{n→∞} \\frac{2n}{(n + 1)π} = \\lim_{n→∞} \\frac{2}{(1 + \\frac{1}{n})π} = \\frac{2}{π},  \\lim_{n→∞} \\frac{2(n + 1)}{nπ} = \\lim_{n→∞} \\frac{2(1 + \\frac{1}{n})}{π} = \\frac{2}{π},
$$

由极限存在准则 1，得到


$$
\\lim_{x→∞} \\frac{S(x)}{x} = \\frac{2}{π}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:36', 9, 'Mogullzr', '2026-01-29 14:11:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1339');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1339');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1339');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1340, '2000年考研数学卷2第15题', '简单', '考研数学2000年卷2真题', '某湖泊的水量为$V$，每年排入湖泊内含污染物$A$的污水量为$\\frac{V}{6}$，流入湖泊内不含$A$的水量为$\\frac{V}{6}$，
流出湖泊的水量为$\\frac{V}{3}$，已知1999年底湖中$A$的含量为$5m_{0}$，超过国家规定指标．
为了治理污染，从2000年初起，限定排入湖泊中含$A$污水的浓度不超过$\\frac{m_{0}}{V}$．问至多需要经过多少年，
湖泊中污染物$A$的含量降至$m_{0}$以内？（注：设湖水中$A$的浓度是均匀的．）', '[]', '$6 \\ln 3$
', '
设从 2000 年初（相应$t = 0$）开始，第$t$年湖泊中污染物$A$的总量为$m$，浓度为$\\frac{m}{V}$，则在时间间隔$\\lbrack t, t + dt \\rbrack$内，排入湖泊中$A$的量为


$$
\\frac{m_{0}}{V} ⋅ \\frac{V}{6}(t + dt - dt) = \\frac{m_{0}}{6}dt,
$$

流出湖泊的水中$A$的量为


$$
\\frac{m}{V} ⋅ \\frac{V}{3}dt = \\frac{m}{3}dt.
$$

因而时间从$t$到$t + dt$相应地湖泊中污染物$A$的改变量为


$$
dm = (\\frac{m_{0}}{6} - \\frac{m}{3}) dt.
$$

由分离变量法，可解得$m = \\frac{m_{0}}{2} - C ⋅ e^{−\\frac{t}{3}}$。代入初始条件$m(0) = 5m_{0}$，得$C = −\\frac{9}{2}m_{0}$。
于是$m = \\frac{m_{0}}{2}(1 + 9e^{−\\frac{t}{3}})$。令$m = m_{0}$，得$t = 6 \\ln 3$。即至多需经过$6 \\ln 3$年，湖泊中$A$的含量将降至$m_{0}$以内。
', 9, 'Mogullzr', '2026-01-29 14:11:37', 9, 'Mogullzr', '2026-01-29 14:11:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1340');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1340');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1340');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1341, '2000年考研数学卷2第16题', '', '考研数学2000年卷2真题', '/problems/other/1321', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:37', 9, 'Mogullzr', '2026-01-29 14:11:37', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1342, '2000年考研数学卷2第17题', '简单', '考研数学2000年卷2真题', '已知$f(x)$是周期为$5$的连续函数，它在$x = 0$的某个邻域内满足关系式
$$
f(1 + \\sin x) - 3f(1 - \\sin x) = 8x + α(x),
$$
其中$α(x)$是当$x → 0$时比$x$高阶的无穷小，且$f(x)$在$x = 1$处可导，求曲线$y = f(x)$在点$(6, f(6))$处的切线方程．', '[]', '
曲线在点$(6, f(6))$处的切线方程为$y = 2x - 12$。
', '
将$f(1 + \\sin x) - 3f(1 - \\sin x) = 8x + a(x)$两边令$x → 0$取极限，由$f$的连续性得


$$
f(1) - 3f(1) = \\lim_{x→0}(8x + a(x)) = 0  ⇒  f(6) = f(1) = 0.
$$

又由原设$f(x)$在$x = 1$处可导，两边同除$\\sin x$，

$$
\\lim_{x→0} \\frac{f(1 + \\sin x) - f(1)}{\\sin x} + 3 \\lim_{x→0} \\frac{f(1 - \\sin x) - f(1)}{− \\sin x} = \\lim_{x→0} \\frac{8x}{\\sin x} + \\lim_{x→0} \\frac{a(x)}{\\sin x}.
$$

根据导数的定义，得

$$
f^{′}(1) + 3f^{′}(1) = \\lim_{x→0} \\frac{8x}{x} ⋅ \\frac{x}{\\sin x} + \\lim_{x→0} \\frac{a(x)}{x} ⋅ \\frac{x}{\\sin x} = 8  ⇒  f^{′}(1) = 2.
$$

所以$f^{′}(6) = f^{′}(1) = 2$，从而切线方程为

$$
(y - f(6)) = f^{′}(6)(x - 6)  ⇒  2x - y - 12 = 0.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:37', 9, 'Mogullzr', '2026-01-29 14:11:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1342');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1342');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1342');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1343, '2000年考研数学卷2第18题', '简单', '考研数学2000年卷2真题', '设曲线$y = ax^{2}$（$a > 0$,$x ≥ 0$）与$y = 1 - x^{2}$交于点$A$，
过坐标原点$O$和点$A$的直线与曲线$y = ax^{2}$围成一平面图形．
问$a$为何值时，该图形绕$x$轴旋转一周所得的旋转体体积最大？最大体积是多少？', '[]', '
$a = 4$，最大体积为$\\frac{32π\\sqrt{5}}{1875}$
', '
曲线$y = ax^{2}$与$y = 1 - x^{2}$交于点$A$，通过解方程$ax^{2} = 1 - x^{2}$得$x_{A} = \\frac{1}{\\sqrt{a + 1}}$，$y_{A} = \\frac{a}{a + 1}$。
过原点$O$和点$A$的直线方程为$y = \\frac{a}{\\sqrt{a + 1}}x$。
该直线与曲线$y = ax^{2}$在区间$\\lbrack 0, x_{A} \\rbrack$上围成的平面图形绕$x$轴旋转一周的体积为：


$$
V = π \\int_{0}^{x_{A}}  \\lbrack (\\frac{a}{\\sqrt{a + 1}}x)^{2} - (ax^{2})2 \\rbrack  dx = πa^{2} \\int_{0}^{x_{A}}  \\lbrack \\frac{1}{a + 1}x^{2} - x^{4} \\rbrack  dx
$$

计算积分：


$$
\\int_{0}^{x_{A}} (\\frac{1}{a + 1}x^{2} - x^{4}) dx =  \\lbrack \\frac{x^{3}}{3(a + 1)} - \\frac{x^{5}}{5} \\rbrack _{0}^{x_{A}} = \\frac{x_{A}^{3}}{3(a + 1)} - \\frac{x_{A}^{5}}{5}
$$

代入$x_{A} = \\frac{1}{\\sqrt{a + 1}}$，得$x_{A}^{3} = \\frac{1}{(a + 1)3/2}$，$x_{A}^{5} = \\frac{1}{(a + 1)5/2}$，所以


$$
\\int_{0}^{x_{A}} (\\frac{1}{a + 1}x^{2} - x^{4}) dx = \\frac{1}{3(a + 1)5/2} - \\frac{1}{5(a + 1)5/2} = \\frac{2}{15(a + 1)5/2}
$$

因此，


$$
V = πa^{2} ⋅ \\frac{2}{15(a + 1)5/2} = \\frac{2π}{15} ⋅ \\frac{a^{2}}{(a + 1)5/2}
$$

令$f(a) = \\frac{a^{2}}{(a + 1)5/2}$，取对数得$\\ln f(a) = 2 \\ln a - \\frac{5}{2} \\ln(a + 1)$，求导：


$$
\\frac{d}{da} \\ln f(a) = \\frac{2}{a} - \\frac{5}{2(a + 1)}
$$

设导数为零：


$$
\\frac{2}{a} = \\frac{5}{2(a + 1)}
$$

解得$a = 4$。
当$a < 4$时导数大于零，当$a > 4$时导数小于零，故$a = 4$时体积最大。
代入$a = 4$得：


$$
V = \\frac{2π}{15} ⋅ \\frac{4^{2}}{(4 + 1)5/2} = \\frac{2π}{15} ⋅ \\frac{16}{25\\sqrt{5}} = \\frac{32π}{375\\sqrt{5}} = \\frac{32π\\sqrt{5}}{1875}
$$

故最大体积为$\\frac{32π\\sqrt{5}}{1875}$。
', 9, 'Mogullzr', '2026-01-29 14:11:37', 9, 'Mogullzr', '2026-01-29 14:11:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1343');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1343');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1343');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1344, '2000年考研数学卷2第19题', '简单', '考研数学2000年卷2真题', '函数$f(x)$在$\\lbrack 0, +∞)$上可导，$f(0) = 1$且满足等式
$$
f^{′}(x) + f(x) - \\frac{1}{x + 1} \\int_{0}^{x} f(t)dt = 0,
$$
(1) 求导数$f^{′}(x)$；(2) 证明：当$x ≥ 0$时，不等式$e^{−x} ≤ f(x) ≤ 1$成立．', '[]', '
(1)$f^{′}(x) = −\\frac{e^{−x}}{x+1}$
(2) 证明见解析。
', '
(1)在已知等式两边同乘$(x + 1)$，得到

$$
(x + 1)f^{′}(x) + (x + 1)f(x) - \\int_{0}^{x} f(t)dt = 0,
$$

两边对$x$求导，整理得

$$
(x + 1)f^{′′}(x) + (x + 2)f^{′}(x) = 0
$$

令$u = f^{′}(x)$，化为$(x + 1)u^{′} + (x + 2)u = 0$，即

$$
\\frac{du}{u} = \\frac{(x + 2)}{(x + 1)}dx.
$$

两边求积分，解得$f^{′}(x) = u = \\frac{Ce^{−x}}{x+1}$。已知$f(0) = 1$，再以$x = 0$代入原方程得$f^{′}(0) = −1$。于是$C = −1$，$f^{′}(x) = −\\frac{e^{−x}}{x+1}$。
(2)因$f(0) = 1, f^{′}(x) < 0$，即$f(x)$单调递减，所以当$x ≥ 0$时$f(x) ≤ 1$。令$φ(x) = f(x) - e^{−x}$，则$φ(0) = 1 - 1 = 0$，且$x ≥ 0$时

$$
φ^{′}(x) = f^{′}(x) + e^{−x} ≥ f^{′}(x) + \\frac{e^{−x}}{x + 1} = 0.
$$

所以，当$x ≥ 0$时$φ(x) ≥ 0$，即$f(x) ≥ e^{−x}$。结合两个不等式可得，当$x ≥ 0$时$e^{−x} ≤ f(x) ≤ 1$。
', 9, 'Mogullzr', '2026-01-29 14:11:37', 9, 'Mogullzr', '2026-01-29 14:11:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1344');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1344');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1344');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1345, '2000年考研数学卷2第20题', '简单', '考研数学2000年卷2真题', '设$α = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) , β = \\left( \\begin{array}{c}
1 \\\\
\\frac{1}{2} \\\\
0 \\\\
\\end{array} \\right) , γ = \\left( \\begin{array}{c}
0 \\\\
0 \\\\
8 \\\\
\\end{array} \\right)$，$A = αβ^{T}, B = β^{T}α$．其中$β^{T}$是$β$的转置，
求解方程$2B^{2}A^{2}x = A^{4}x + B^{4}x + γ$．', '[]', '$k \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
0 \\\\
0 \\\\
−\\frac{1}{2} \\\\
\\end{array} \\right) ,  (k为任意常数)$
', '由题设得

$$
A = αβ^{T} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
2 & 1 & 0 \\\\
1 & \\frac{1}{2} & 0 \\\\
\\end{array} \\right) ,  B = β^{T}α = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) = 2.
$$

所以


$$
A^{2} = αβ^{T}αβ^{T} = α(β^{T}α)β^{T} = 2A,  A^{4} = 8A;  B^{2} = 4,  B^{4} = 16.
$$

代入原方程得


$$
16Ax = 8Ax + 16x + γ,
$$

即


$$
8(A - 2E)x = γ,
$$

其中$E$是三阶单位矩阵. 令$x = (x_{1}, x_{2}, x_{3})T$, 代入上式, 得线性非齐次方程组

$$
\\begin{cases} −x_{1} + \\frac{1}{2}x_{2} = 0 \\\\ 2x_{1} - x_{2} = 0 \\\\ x_{1} + \\frac{1}{2}x_{2} - 2x_{3} = 1 \\end{cases}
$$

方程组通解为

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
k \\\\
2k \\\\
k - \\frac{1}{2} \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
0 \\\\
0 \\\\
−\\frac{1}{2} \\\\
\\end{array} \\right) ,  (k为任意常数).
$$

', 9, 'Mogullzr', '2026-01-29 14:11:38', 9, 'Mogullzr', '2026-01-29 14:11:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1345');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1345');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1345');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1346, '2000年考研数学卷2第21题', '简单', '考研数学2000年卷2真题', '已知向量组$β_{1} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$,$β_{2} = \\left( \\begin{array}{c}
a \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$,$β_{3} = \\left( \\begin{array}{c}
b \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$与向量组$α_{1} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
−3 \\\\
\\end{array} \\right)$,$α_{2} = \\left( \\begin{array}{c}
3 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$,$α_{3} = \\left( \\begin{array}{c}
9 \\\\
6 \\\\
−7 \\\\
\\end{array} \\right)$具有相同的秩，且$β_{3}$可由$α_{1}, α_{2}, α_{3}$线性表示，求$a, b$的值．', '[]', '$a = 15$,$b = 5$
', '首先，由$β_{3}$可由$α_{1}, α_{2}, α_{3}$线性表示，设$β_{3} = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3}$，代入向量得方程组：

$$
\\begin{cases} k_{1} + 3k_{2} + 9k_{3} = b \\\\ 2k_{1} + 6k_{3} = 1 \\\\ −3k_{1} + k_{2} - 7k_{3} = 0 \\end{cases}
$$

由第二方程得$k_{1} = \\frac{1}{2} - 3k_{3}$，代入第三方程得$k_{2} = \\frac{3}{2} - 2k_{3}$，再代入第一方程得：

$$
(\\frac{1}{2} - 3k_{3}) + 3 (\\frac{3}{2} - 2k_{3}) + 9k_{3} = b
$$

简化得$5 = b$，即$b = 5$.
接下来，求向量组$α_{1}, α_{2}, α_{3}$的秩。构造矩阵：

$$
A = \\left( \\begin{array}{ccc}
1 & 3 & 9 \\\\
2 & 0 & 6 \\\\
−3 & 1 & −7 \\\\
\\end{array} \\right)
$$

行变换得：

$$
\\left( \\begin{array}{ccc}
1 & 3 & 9 \\\\
0 & 1 & 2 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

秩为2。由题设，向量组$β_{1}, β_{2}, β_{3}$的秩也为2。构造矩阵：

$$
B = \\left( \\begin{array}{ccc}
0 & a & 5 \\\\
1 & 2 & 1 \\\\
−1 & 1 & 0 \\\\
\\end{array} \\right)
$$

计算行列式：

$$
\\begin{array}{cccccccc}
det(B) & \\begin{array}{cc}
2 & 1 \\\\
1 & 0 \\\\
\\end{array} &  &  &  &  &  &  \\\\
 & = −a ⋅ (1 ⋅ 0 - 1 ⋅ (−1)) + 5 ⋅ (1 ⋅ 1 - 2 ⋅ (−1)) &  &  &  &  &  &  \\\\
 &  & 2 & 1 & 1 & 1 & 1 & 2 \\\\
 &  & 1 & 0 & −1 & 0 & −1 & 1 \\\\
 & = −a ⋅ 1 + 5 ⋅ 3 &  &  &  &  &  &  \\\\
\\end{array}
$$

秩为2，故$det(B) = 0$，即$15 - a = 0$，得$a = 15$.
验证：当$a = 15, b = 5$时，矩阵$B$行变换后秩为2，且$β_{3}$可由$α_{1}, α_{2}, α_{3}$线性表示，满足条件。
', 9, 'Mogullzr', '2026-01-29 14:11:38', 9, 'Mogullzr', '2026-01-29 14:11:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1346');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1346');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '1346');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1347, '2000年考研数学卷3第1题', '简单', '考研数学2000年卷3真题', '设$z = f (xy, \\frac{x}{y}) + g (\\frac{x}{y})$，其中$f, g$均可微，则$\\frac{∂z}{∂x} =$______．', '[]', '

$$
\\frac{∂z}{∂x} = y\\frac{∂f}{∂u} + \\frac{1}{y}\\frac{∂f}{∂v} + \\frac{1}{y}\\frac{∂g}{∂v}
$$

其中$u = xy$,$v = \\frac{x}{y}$. 或者使用偏导数记号：

$$
\\frac{∂z}{∂x} = yf_{1} + \\frac{1}{y}f_{2} + \\frac{1}{y}g^{′}
$$

其中$f_{1}$表示$f$对第一个变量的偏导数，$f_{2}$表示$f$对第二个变量的偏导数，$g^{′}$表示$g$对它的变量的导数。
', '
设$u = xy$,$v = \\frac{x}{y}$，则$z = f(u, v) + g(v)$。
求偏导数$\\frac{∂z}{∂x}$，使用链式法则：


$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u} ⋅ \\frac{∂u}{∂x} + \\frac{∂f}{∂v} ⋅ \\frac{∂v}{∂x} + \\frac{∂g}{∂v} ⋅ \\frac{∂v}{∂x}
$$

计算$\\frac{∂u}{∂x} = y$,$\\frac{∂v}{∂x} = \\frac{1}{y}$，代入得：


$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u} ⋅ y + \\frac{∂f}{∂v} ⋅ \\frac{1}{y} + \\frac{∂g}{∂v} ⋅ \\frac{1}{y} = y\\frac{∂f}{∂u} + \\frac{1}{y} (\\frac{∂f}{∂v} + \\frac{∂g}{∂v})
$$

因此，结果为$y\\frac{∂f}{∂u} + \\frac{1}{y}\\frac{∂f}{∂v} + \\frac{1}{y}\\frac{∂g}{∂v}$。
', 9, 'Mogullzr', '2026-01-29 14:11:40', 9, 'Mogullzr', '2026-01-29 14:11:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1347');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1347');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1347');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1348, '2000年考研数学卷3第2题', '简单', '考研数学2000年卷3真题', '
$$
\\int_{1}^{+∞} \\frac{dx}{e^{x} + e^{2-x}} =
$$
', '[]', '$\\frac{π}{4e}$
', '
考虑积分$I = \\int_{1}^{+∞} \\frac{dx}{e^{x}+e^{2-x}}$。
分母可写为$e^{x} + e^{2}e^{−x}$，分子分母同时乘以$e^{x}$，得：


$$
I = \\int_{1}^{+∞} \\frac{e^{x}}{e^{2x} + e^{2}}dx
$$

令$t = e^{x}$，则$dt = e^{x}dx$，积分限变为：当$x = 1$时$t = e$，当$x → +∞$时$t → +∞$。
于是：


$$
I = \\int_{e}^{+∞} \\frac{dt}{t^{2} + e^{2}}
$$

该积分是标准形式，有：


$$
∫ \\frac{dt}{t^{2} + a^{2}} = \\frac{1}{a} arctan \\frac{t}{a} + C
$$

其中$a = e$，所以：


$$
I =  \\lbrack \\frac{1}{e} arctan \\frac{t}{e} \\rbrack _{e}^{+∞} = \\frac{1}{e} (arctan(+∞) - arctan(1)) = \\frac{1}{e} (\\frac{π}{2} - \\frac{π}{4}) = \\frac{1}{e} ⋅ \\frac{π}{4} = \\frac{π}{4e}
$$

因此，积分值为$\\frac{π}{4e}$。
', 9, 'Mogullzr', '2026-01-29 14:11:40', 9, 'Mogullzr', '2026-01-29 14:11:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1348');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1348');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1348');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1349, '2000年考研数学卷3第3题', '简单', '考研数学2000年卷3真题', '若四阶矩阵$A$与$B$相似，矩阵$A$的特征值为$\\frac{1}{2}, \\frac{1}{3}, \\frac{1}{4}, \\frac{1}{5}$，
则行列式$​B^{−1} - E​ =$______．', '[]', '$24$
', '由于矩阵$A$与$B$相似，它们具有相同的特征值，即$\\frac{1}{2}, \\frac{1}{3}, \\frac{1}{4}, \\frac{1}{5}$。
设$λ$为$B$的特征值，则$B^{−1}$的特征值为$λ^{−1}$，进而$B^{−1} - E$的特征值为$λ^{−1} - 1 = \\frac{1-λ}{λ}$。
因此，行列式


$$
∣B^{−1} - E∣ = ∏ (\\frac{1 - λ}{λ}) = \\frac{∏(1 - λ)}{∏ λ}.
$$

计算乘积：


$$
∏ λ = \\frac{1}{2} ⋅ \\frac{1}{3} ⋅ \\frac{1}{4} ⋅ \\frac{1}{5} = \\frac{1}{120},
$$



$$
∏(1 - λ) = (1 - \\frac{1}{2}) (1 - \\frac{1}{3}) (1 - \\frac{1}{4}) (1 - \\frac{1}{5}) = \\frac{1}{2} ⋅ \\frac{2}{3} ⋅ \\frac{3}{4} ⋅ \\frac{4}{5} = \\frac{1}{5}.
$$

于是，


$$
∣B^{−1} - E∣ = \\frac{1/5}{1/120} = \\frac{120}{5} = 24.
$$

故答案为 24。
', 9, 'Mogullzr', '2026-01-29 14:11:40', 9, 'Mogullzr', '2026-01-29 14:11:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1349');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1349');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '1349');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1350, '2000年考研数学卷3第4题', '简单', '考研数学2000年卷3真题', '设随机变量$X$的概率密度为$f(x) = \\begin{cases} 1/3 & x ∈  \\lbrack 0, 1 \\rbrack ; \\\\ 2/9 & x ∈  \\lbrack 3, 6 \\rbrack ; \\\\ 0 & 其他. \\end{cases}$若$k$使得$P\\{X ≥ k\\} = \\frac{2}{3}$，则$k$的取值范围是 ______．', '[]', '$\\lbrack 1, 3 \\rbrack$
', '
随机变量$X$的概率密度函数$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上为$1/3$，在区间$\\lbrack 3, 6 \\rbrack$上为$2/9$，其余区间为 0。需要求$k$使得$P\\{X ≥ k\\} = \\frac{2}{3}$。
计算$P\\{X ≥ k\\}$需考虑$k$的不同取值范围：
当$k ≤ 0$时，$P\\{X ≥ k\\} = 1 > \\frac{2}{3}$，不满足。当$k > 6$时，$P\\{X ≥ k\\} = 0 < \\frac{2}{3}$，不满足。当$k ∈  \\lbrack 0, 1 \\rbrack$时，$P\\{X ≥ k\\} = \\int_{k}^{1} \\frac{1}{3} dx + \\int_{3}^{6} \\frac{2}{9} dx = \\frac{1}{3}(1 - k) + \\frac{2}{3}.$令其等于$\\frac{2}{3}$，得$\\frac{1}{3}(1 - k) = 0$，即$k = 1$。当$k ∈ (1, 3)$时，$P\\{X ≥ k\\} = \\int_{3}^{6} \\frac{2}{9} dx = \\frac{2}{3},$恒满足。当$k ∈  \\lbrack 3, 6 \\rbrack$时，$P\\{X ≥ k\\} = \\int_{k}^{6} \\frac{2}{9} dx = \\frac{2}{9}(6 - k).$令其等于$\\frac{2}{3}$，得$\\frac{2}{9}(6 - k) = \\frac{2}{3}$，解得$k = 3$。
综上，当$k ∈  \\lbrack 1, 3 \\rbrack$时，$P\\{X ≥ k\\} = \\frac{2}{3}$。因此，$k$的取值范围是$\\lbrack 1, 3 \\rbrack$。
', 9, 'Mogullzr', '2026-01-29 14:11:41', 9, 'Mogullzr', '2026-01-29 14:11:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1350');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1350');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1351, '2000年考研数学卷3第5题', '简单', '考研数学2000年卷3真题', '假设随机变量$X$在区间$\\lbrack −1, 2 \\rbrack$上服从均匀分布，随机变量$Y = \\begin{cases} 1 & 若 X > 0; \\\\ 0 & 若 X = 0; \\\\ −1 & 若 X < 0. \\end{cases}$则方差$D(Y) =$______．', '[]', '
$\\frac{8}{9}$
', '
随机变量$X$在区间$\\lbrack −1, 2 \\rbrack$上服从均匀分布，其概率密度函数为$f_{X}(x) = \\frac{1}{3}$，其中$x ∈  \\lbrack −1, 2 \\rbrack$。
随机变量$Y$的定义为：


$$
Y = \\begin{cases} 1 & X > 0; \\\\ 0 & X = 0; \\\\ −1 & X < 0. \\end{cases}
$$

由于$X$是连续随机变量，有$P(X = 0) = 0$，因此$P(Y = 0) = 0$。
计算$Y$的概率分布：
$P(Y = 1) = P(X > 0) = \\int_{0}^{2} \\frac{1}{3} dx = \\frac{2}{3}$，$P(Y = −1) = P(X < 0) = \\int_{−1}^{0} \\frac{1}{3} dx = \\frac{1}{3}$。
于是，$Y$的期望为：
$E \\lbrack Y \\rbrack  = 1 ⋅ \\frac{2}{3} + (−1) ⋅ \\frac{1}{3} = \\frac{2}{3} - \\frac{1}{3} = \\frac{1}{3}.$$Y^{2}$的期望为：
$E \\lbrack Y^{2} \\rbrack  = 1^{2} ⋅ \\frac{2}{3} + (−1)2 ⋅ \\frac{1}{3} = \\frac{2}{3} + \\frac{1}{3} = 1.$方差为：
$D(Y) = E \\lbrack Y^{2} \\rbrack  - (E \\lbrack Y \\rbrack )2 = 1 - (\\frac{1}{3})^{2} = 1 - \\frac{1}{9} = \\frac{8}{9}.$因此，方差$D(Y) = \\frac{8}{9}$。
', 9, 'Mogullzr', '2026-01-29 14:11:41', 9, 'Mogullzr', '2026-01-29 14:11:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1351');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1351');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1352, '2000年考研数学卷3第6题', '简单', '考研数学2000年卷3真题', '设对任意的$x$，总有$φ(x) ≤ f(x) ≤ g(x)$，且$\\lim_{x→∞}  \\lbrack g(x) - φ(x) \\rbrack  = 0$，
则$\\lim_{x→∞} f(x)$', '[''存在且一定等于零．'', ''存在但不一定等于零．'', ''一定不存在．'', ''不一定存在．'']', "['D']", '
用排除法。首先设

$$
\\frac{x^{2}}{x^{2} + 2} ≤ f(x) ≤ \\frac{x^{2} + 1}{x^{2} + 2},
$$
满足条件

$$
\\lim_{x→∞}  \\lbrack \\frac{x^{2} + 1}{x^{2} + 2} - \\frac{x^{2}}{x^{2} + 2} \\rbrack  = \\lim_{x→∞} \\frac{1}{x^{2} + 2} = 0,  \\lim_{x→∞} \\frac{x^{2} + 1}{x^{2} + 2} = 1,  \\frac{x^{2}}{x^{2} + 2} = 1.
$$
由夹逼准则知，

$$
\\lim_{x→∞} f(x) = 1,
$$
则选项 (A) 和 (C) 错误。其次设

$$
\\frac{x^{6} + x^{2}}{x^{4} + 1} ≤ f(x) ≤ \\frac{x^{6} + 2x^{2}}{x^{4} + 1},
$$
满足条件

$$
\\lim_{x→∞}  \\lbrack \\frac{x^{6} + 2x^{2}}{x^{4} + 1} - \\frac{x^{6} + x^{2}}{x^{4} + 1} \\rbrack  = \\lim_{x→∞} \\frac{x^{2}}{x^{4} + 1} = 0.
$$
但是由于

$$
f(x) ≥ \\frac{x^{6} + x^{2}}{x^{4} + 1} = x^{2},
$$
有

$$
\\lim_{x→∞} f(x) = +∞,
$$
极限不存在，故选项 (B) 也是错误的。', 9, 'Mogullzr', '2026-01-29 14:11:41', 9, 'Mogullzr', '2026-01-29 14:11:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1352');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1352');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1352');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1353, '2000年考研数学卷3第7题', '简单', '考研数学2000年卷3真题', '设函数$f(x)$在点$x = a$处可导，则函数$∣f(x)∣$在点$x = a$处不可导的充分条件是', '[''$f(a) = 0$且$f^{′}(a) = 0$．'', ''$f(a) = 0$且$f^{′}(a) \\\\neq 0$．'', ''$f(a) > 0$且$f^{′}(a) > 0$．'', ''$f(a) < 0$且$f^{′}(a) < 0$．'']', "['B']", '
应选 (B)。这是因为由 (B) 的条件$f(a) = 0$，则有
$$
\\lim_{x→a} \\frac{∣f(x)∣ - ∣f(a)∣}{x - a} = \\lim_{x→a} \\frac{∣f(x)∣}{x - a} = \\lim_{x→a} \\frac{∣f(x) - f(a)∣}{x - a},
$$
所以
$$
\\lim_{x→a^{+}} \\frac{∣f(x) - f(a)∣}{x - a} = \\lim_{x→a^{+}} ​\\frac{f(x) - f(a)}{x - a}​ = ∣f^{′}(a)∣,
$$

$$
\\lim_{x→a^{-}} \\frac{∣f(x) - f(a)∣}{x - a} = \\lim_{x→a^{-}} (− ​\\frac{f(x) - f(a)}{x - a}​) = −∣f^{′}(a)∣.
$$
', 9, 'Mogullzr', '2026-01-29 14:11:41', 9, 'Mogullzr', '2026-01-29 14:11:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1353');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1353');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1353');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1354, '2000年考研数学卷3第8题', '简单', '考研数学2000年卷3真题', '设$α_{1}, α_{2}, α_{3}$是四元非齐次线性方程组$AX = b$的三个解向量，
且秩$r(A) = 3$，$α_{1} = (1, 2, 3, 4)^{T}$，$α_{2} + α_{3} = (0, 1, 2, 3)^{T}$，$c$表示任意常数，则线性方程组$AX = b$的通解$X =$', '[''$\\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n2 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) + c \\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n1 \\\\\\\\\\n1 \\\\\\\\\\n1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n2 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) + c \\\\left( \\\\begin{array}{c}\\n0 \\\\\\\\\\n1 \\\\\\\\\\n2 \\\\\\\\\\n3 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n2 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) + c \\\\left( \\\\begin{array}{c}\\n2 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n5 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n2 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) + c \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n4 \\\\\\\\\\n5 \\\\\\\\\\n6 \\\\\\\\\\n\\\\end{array} \\\\right)$．'']', "['C']", '
已知线性方程组$AX = b$是四元方程组，且秩$r(A) = 3$，因此齐次方程组$AX = 0$的解空间维数为$4 - 3 = 1$，即基础解系只含一个线性无关的解向量。给定$α_{1} = (1, 2, 3, 4)T$是特解，通解形式为$X = α_{1} + cη$，其中$η$是齐次方程组的基础解系。由$α_{2}$和$α_{3}$都是解，设$α_{2} = α_{1} + c_{2}η$，$α_{3} = α_{1} + c_{3}η$，则$α_{2} + α_{3} = 2α_{1} + (c_{2} + c_{3})η$。代入已知$α_{2} + α_{3} = (0, 1, 2, 3)T$和$α_{1} = (1, 2, 3, 4)T$，得：
$$
2α_{1} + kη = (0, 1, 2, 3)T
$$
其中$k = c_{2} + c_{3}$。计算：
$$
2α_{1} = (2, 4, 6, 8)T
$$

$$
kη = (0, 1, 2, 3)T - (2, 4, 6, 8)T = (−2, −3, −4, −5)T
$$
因此$η$与$(−2, −3, −4, −5)T$成比例。取$η = (2, 3, 4, 5)T$（忽略常数倍，因$c$为任意常数），通解为：
$$
X = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
4 \\\\
\\end{array} \\right) + c \\left( \\begin{array}{c}
2 \\\\
3 \\\\
4 \\\\
5 \\\\
\\end{array} \\right)
$$
对应选项 C。其他选项的$η$不满足条件。', 9, 'Mogullzr', '2026-01-29 14:11:42', 9, 'Mogullzr', '2026-01-29 14:11:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1354');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1354');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1355, '2000年考研数学卷3第9题', '简单', '考研数学2000年卷3真题', '设$A$为$n$阶实矩阵，$A^{T}$是$A$的转置矩阵，则对于线性方程组(Ⅰ)：$AX = 0$和(Ⅱ)：$A^{T}AX = 0$，必有', '[''(Ⅱ)的解是(Ⅰ)的解，(Ⅰ)的解也是(Ⅱ)的解．'', ''(Ⅱ)的解是(Ⅰ)的解，但(Ⅰ)的解不是(Ⅱ)的解．．'', ''(Ⅰ)的解不是(Ⅱ)的解，(Ⅱ)的解也不是(Ⅰ)的解．．'', ''(Ⅰ)的解是(Ⅱ)的解，但(Ⅱ)的解不是(Ⅰ)的解．'']', "['A']", '
应选 (A). 若$α$是方程组 (I):$AX = 0$的解，即$Aα = 0$，两边左乘$A^{T}$，得$A^{T}Aα = 0$，即$α$也是方程组 (II):$A^{T}AX = 0$的解，即 (I) 的解也是 (II) 的解。若$β$是方程组 (II):$A^{T}AX = 0$的解，即$A^{T}Aβ = 0$，两边左乘$β^{T}$得

$$
β^{T}A^{T}Aβ = (Aβ)TAβ = 0.
$$
$Aβ$是一个向量，设$Aβ =  \\lbrack b_{1}, b_{2}, ⋯  , b_{n} \\rbrack T$，则

$$
(Aβ)TAβ = \\sum_{i=1}^{n} b_{i}^{2} = 0.
$$
故有$b_{i} = 0,  i = 1, 2, ⋯  , n$。从而有$Aβ = 0$，即$β$也是方程组 (I):$AX = 0$的解。', 9, 'Mogullzr', '2026-01-29 14:11:42', 9, 'Mogullzr', '2026-01-29 14:11:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1355');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1355');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1356, '2000年考研数学卷3第10题', '简单', '考研数学2000年卷3真题', '在电炉上安装了$4$个温控器，其显示温度的误差是随机的．
在使用过程中，只要有两个温控器显示的温度不低于临界温度$t_{0}$，电炉就断电．
以$E$表示事件“电炉断电”，而$T_{(1)} ≤ T_{(2)} ≤ T_{(3)} ≤ T_{(4)}$为$4$个温控器显示的按递增顺序排列的温度值，
则事件$E$等于事件', '[''$\\\\{T_{(1)} ≥ t_{0}\\\\}$．'', ''$\\\\{T_{(2)} ≥ t_{0}\\\\}$．'', ''$\\\\{T_{(3)} ≥ t_{0}\\\\}$．'', ''$\\\\{T_{(4)} ≥ t_{0}\\\\}$．'']', "['C']", '事件$E$表示电炉断电，其条件是至少有两个温控器显示的温度不低于临界温度$t_{0}$。由于温度值按递增顺序排列为$T_{(1)} ≤ T_{(2)} ≤ T_{(3)} ≤ T_{(4)}$，分析如下：如果$T_{(3)} ≥ t_{0}$，则$T_{(3)}$和$T_{(4)}$均不低于$t_{0}$，满足至少两个温控器显示温度不低于$t_{0}$的条件，即事件$E$发生。反之，如果事件$E$发生，即至少有两个温控器显示温度不低于$t_{0}$，则$T_{(3)}$必须不低于$t_{0}$。因为如果$T_{(3)} < t_{0}$，则$T_{(1)} ≤ T_{(2)} ≤ T_{(3)} < t_{0}$，最多只有$T_{(4)}$可能不低于$t_{0}$，即最多只有一个温控器显示温度不低于$t_{0}$，与事件$E$矛盾。
因此，事件$E$等价于$\\{T_{(3)} ≥ t_{0}\\}$。对于其他选项：A.$\\{T_{(1)} ≥ t_{0}\\}$表示所有温控器显示温度均不低于$t_{0}$，条件过强，不必要。B.$\\{T_{(2)} ≥ t_{0}\\}$表示至少三个温控器显示温度不低于$t_{0}$，条件过强，不必要（例如当$T_{(2)} < t_{0}$但$T_{(3)} ≥ t_{0}$时，事件$E$仍发生）。D.$\\{T_{(4)} ≥ t_{0}\\}$表示至少一个温控器显示温度不低于$t_{0}$，条件过弱，可能只有一个温控器满足条件，事件$E$不发生。故正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:11:42', 9, 'Mogullzr', '2026-01-29 14:11:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1356');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1356');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1357, '2000年考研数学卷3第11题', '简单', '考研数学2000年卷3真题', '求微分方程$y^{′′} - 2y^{′} - e^{2x} = 0$满足条件$y(0) = 0, y^{′}(0) = 1$．', '[]', '$y = \\frac{1}{4}(e^{2x} - 1) + \\frac{1}{2}xe^{2x}$
', '
给定微分方程$y^{′′} - 2y^{′} - e^{2x} = 0$满足条件$y(0) = 0$，$y^{′}(0) = 1$。
首先求解齐次方程$y^{′′} - 2y^{′} = 0$。特征方程为$r^{2} - 2r = 0$，解得$r = 0$和$r = 2$，齐次解为$y_{h} = C_{1} + C_{2}e^{2x}$。
非齐次项为$e^{2x}$，由于$e^{2x}$是齐次解的一部分，设特解$y_{p} = Axe^{2x}$。计算导数：

$$
y_{p}^{′} = Ae^{2x}(1 + 2x),
$$



$$
y_{p}^{′′} = 4Ae^{2x}(1 + x).
$$

代入原方程：

$$
y_{p}^{′′} - 2y_{p}^{′} - e^{2x} = 4Ae^{2x}(1 + x) - 2Ae^{2x}(1 + 2x) - e^{2x} = e^{2x}(2A - 1) = 0,
$$

解得$A = \\frac{1}{2}$，特解为$y_{p} = \\frac{1}{2}xe^{2x}$。
通解为$y = y_{h} + y_{p} = C_{1} + C_{2}e^{2x} + \\frac{1}{2}xe^{2x}$。
应用初始条件：
由$y(0) = 0$得$C_{1} + C_{2} = 0$。
计算导数$y^{′} = 2C_{2}e^{2x} + \\frac{1}{2}e^{2x} + xe^{2x}$，由$y^{′}(0) = 1$得$2C_{2} + \\frac{1}{2} = 1$，解得$C_{2} = \\frac{1}{4}$，代入得$C_{1} = −\\frac{1}{4}$。
因此解为

$$
y = −\\frac{1}{4} + \\frac{1}{4}e^{2x} + \\frac{1}{2}xe^{2x} = \\frac{1}{4}(e^{2x} - 1) + \\frac{1}{2}xe^{2x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:42', 9, 'Mogullzr', '2026-01-29 14:11:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1357');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1357');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1357');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1358, '2000年考研数学卷3第12题', '简单', '考研数学2000年卷3真题', '计算二重积分$\\iint_{D} \\frac{\\sqrt{x^{2}+y^{2}}}{\\sqrt{4a^{2}-x^{2}-y^{2}}}dσ$，
其中$D$是由曲线$y = −a + \\sqrt{a^{2} - x^{2}}(a > 0)$和直线$y = −x$围成的区域．', '[]', '$a^{2} (\\frac{π^{2}}{16} - \\frac{1}{2})$
', '
画出积分区域D如下图，采用极坐标更为方便：

在极坐标系下区域$D = \\{(ρ, θ) ∣ −\\frac{π}{4} ≤ θ ≤ 0,  0 ≤ ρ ≤ −2a \\sin θ\\}$，则有

$$
I = \\iint_{D} \\frac{\\sqrt{x^{2} + y^{2}}}{\\sqrt{4a^{2} - x^{2} - y^{2}}} dσ = \\int_{−\\frac{π}{4}}^{0} dθ \\int_{0}^{−2a \\sin θ} \\frac{ρ^{2}}{\\sqrt{4a^{2} - ρ^{2}}} dρ.
$$

令$ρ = 2a \\sin t$，则有

$$
\\begin{array}{cc}
I & = \\int_{−\\frac{π}{4}}^{0} dθ \\int_{0}^{−θ} 4a^{2} \\sin^{2} t dt \\\\
 & = \\int_{−\\frac{π}{4}}^{0} dθ \\int_{0}^{−θ} 2a^{2}(1 - \\cos 2t) dt \\\\
 & = 2a^{2} \\int_{−\\frac{π}{4}}^{0} (−θ + \\frac{1}{2} \\sin 2θ) dθ \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:42', 9, 'Mogullzr', '2026-01-29 14:11:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1358');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1358');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1358');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1359, '2000年考研数学卷3第13题', '简单', '考研数学2000年卷3真题', '假设某企业在两个相互分割的市场上出售同一种产品，两个市场的需求函数分别是
$$
P_{1} = 18 - Q_{1}, P_{2} = 12 - Q_{2},
$$
其中$P_{1}$和$P_{2}$分别表示该产品在两个市场的价格(单位：万元/吨)，$Q_{1}$和$Q_{2}$分别表示该产品在两个市场的销售量(即需求量，单位：吨)，
并且该企业生产这种产品的总成本函数是$C = 2Q + 5$，其中$Q$表示该产品在两个市场的销售总量，即$Q = Q_{1} + Q_{2}$．(1) 如果该企业实行价格差别策略，试确定两个市场上该产品的销售量和价格，使该企业获得最大利润；(2) 如果该企业实行价格无差别策略，试确定两个市场上该产品的销售量及其统一的价格，
使该企业的总利润最大化；并比较两种价格策略下的总利润大小．', '[]', '
(1)$Q_{1} = 4,  P_{1} = 10;  Q_{2} = 5,  P_{2} = 7;  利润 = 52$万元
(2)$Q_{1} = 5,  Q_{2} = 4;  利润 = 49$万元；差别定价利润更高。
', '(I) 记总利润函数为$L$，总收益函数为$R$，则总利润

$$
L = R - C = P_{1}Q_{1} + P_{2}Q_{2} - (2Q + 5) = −2Q_{1}^{2} - Q_{2}^{2} + 16Q_{1} + 10Q_{2} - 5.
$$

其中，$Q_{1} > 0, Q_{2} > 0$。令

$$
\\frac{∂L}{∂Q_{1}} = −4Q_{1} + 16 = 0,  \\frac{∂L}{∂Q_{2}} = −2Q_{2} + 10 = 0,
$$

解得$Q_{1} = 4, Q_{2} = 5$；相应地$P_{1} = 10, P_{2} = 7$。在$Q_{1} > 0, Q_{2} > 0$的范围内驻点唯一，且实际问题在$Q_{1} > 0, Q_{2} > 0$范围内必有最大值，故在$Q_{1} = 4, Q_{2} = 5$处有最大利润

$$
L = −2 × 4^{2} - 5^{2} + 16 × 4 + 10 × 5 - 5 = 52（万元）.
$$

(II) 若两地的销售单价无差别，即$P_{1} = P_{2}$，于是得$2Q_{1} - Q_{2} = 6$，在此约束条件下求$L$的最值。构造拉格朗日函数

$$
F(Q_{1}, Q_{2}, λ) = −2Q_{1}^{2} - Q_{2}^{2} + 16Q_{1} + 10Q_{2} - 5 + λ(2Q_{1} - Q_{2} - 6),
$$

令

$$
\\begin{cases} \\frac{∂F}{∂Q_{1}} = −4Q_{1} + 16 + 2λ = 0 \\\\ \\frac{∂F}{∂Q_{2}} = −2Q_{2} + 10 - λ = 0 \\\\ \\frac{∂F}{∂λ} = 2Q_{1} - Q_{2} - 6 = 0 \\end{cases}
$$

解得$Q_{1} = 5, Q_{2} = 4$，在$Q_{1} > 0, Q_{2} > 0$的范围内驻点唯一，且实际问题在$Q_{1} > 0, Q_{2} > 0$范围内必有最大值，故在$Q_{1} = 5, Q_{2} = 4$处有最大利润

$$
L = −2 × 5^{2} - 4^{2} + 16 × 5 + 10 × 4 - 5 = 49（万元）.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:42', 9, 'Mogullzr', '2026-01-29 14:11:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1359');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1359');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1359');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1360, '2000年考研数学卷3第14题', '简单', '考研数学2000年卷3真题', '求函数$y = (x - 1)e^{\\frac{π}{2}+arctan x}$的单调区间和极值，并求该函数图形的渐近线．', '[]', '见解析
', '
对$x$求导得$y^{′} = \\frac{x^{2}+x}{x^{2}+1}e^{\\frac{π}{2}+arctan x}$。令$y^{′} = 0$，得驻点$x_{1} = 0, x_{2} = −1$。列表

$$
\\begin{array}{c|ccc|cc}
x & (−∞, −1) & −1 & (−1, 0) & 0 & (0, +∞) \\\\
y^{′} & + & 0 & − & 0 & + \\\\
y & ↗ & −2e^{\\frac{π}{4}} & ↘ & −e^{\\frac{π}{2}} & ↗ \\\\
\\end{array}
$$

由此可见，严格单调增区间为$(−∞, −1)$与$(0, +∞)$；严格单调减区间为$(−1, 0)$。$f(0) = −e^{\\frac{π}{2}}$为极小值，$f(−1) = −2e^{\\frac{π}{4}}$为极大值。以下求渐近线：

$$
\\lim_{x→∞} f(x) = \\lim_{x→∞}(x - 1)e^{\\frac{π}{2}+arctan x} = e^{π} \\lim_{x→∞}(x - 1) = ∞
$$

所以此函数无水平渐近线；同理，也没有铅直渐近线。令

$$
a_{1} = \\lim_{x→+∞} \\frac{f(x)}{x} = e^{π},  b_{1} = \\lim_{x→+∞} \\lbrack f(x) - a_{1}x \\rbrack  = −2e^{π};
$$


$$
a_{2} = \\lim_{x→−∞} \\frac{f(x)}{x} = 1,  b_{2} = \\lim_{x→−∞} \\lbrack f(x) - a_{2}x \\rbrack  = −2.
$$

所以，渐近线为$y = a_{1}x + b_{1} = e^{π}(x - 2)$及$y = a_{2}x + b_{2} = x - 2$，共两条。
', 9, 'Mogullzr', '2026-01-29 14:11:43', 9, 'Mogullzr', '2026-01-29 14:11:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1360');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1360');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1360');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1361, '2000年考研数学卷3第15题', '简单', '考研数学2000年卷3真题', '设$I_{n} = \\int_{0}^{\\frac{π}{4}} \\sin^{n} xcosxdx, n = 0, 1, 2, ⋯$，求$\\sum_{n=0}^{∞} I_{n}$．', '[]', '

$$
\\ln(2 + \\sqrt{2})
$$

', '
首先，计算$I_{n} = \\int_{0}^{\\frac{π}{4}} \\sin^{n} x \\cos x dx$。令$u = \\sin x$，则$du = \\cos x dx$，积分限变为$u = 0$到$u = \\frac{\\sqrt{2}}{2}$。于是，

$$
I_{n} = \\int_{0}^{\\frac{\\sqrt{2}}{2}} u^{n} du =  \\lbrack \\frac{u^{n+1}}{n + 1} \\rbrack _{0}^{\\frac{\\sqrt{2}}{2}} = \\frac{1}{n + 1} (\\frac{\\sqrt{2}}{2})^{n+1} .
$$

接下来，求级数：

$$
\\sum_{n=0}^{∞} I_{n} = \\sum_{n=0}^{∞} \\frac{1}{n + 1} (\\frac{\\sqrt{2}}{2})^{n+1} .
$$

令$k = n + 1$，则

$$
\\sum_{n=0}^{∞} I_{n} = \\sum_{k=1}^{∞} \\frac{1}{k} (\\frac{\\sqrt{2}}{2})^{k} = \\sum_{k=1}^{∞} \\frac{1}{k} (\\frac{1}{\\sqrt{2}})^{k} .
$$

该级数为$\\sum_{k=1}^{∞} \\frac{x^{k}}{k}$在$x = \\frac{1}{\\sqrt{2}}$处的值，其中$∣x∣ < 1$，且已知$\\sum_{k=1}^{∞} \\frac{x^{k}}{k} = − \\ln(1 - x)$。因此，

$$
\\sum_{n=0}^{∞} I_{n} = − \\ln (1 - \\frac{1}{\\sqrt{2}}) .
$$

简化表达式：

$$
1 - \\frac{1}{\\sqrt{2}} = \\frac{\\sqrt{2} - 1}{\\sqrt{2}},
$$

所以

$$
− \\ln (\\frac{\\sqrt{2} - 1}{\\sqrt{2}}) = −  \\lbrack \\ln(\\sqrt{2} - 1) - \\ln \\sqrt{2} \\rbrack  = \\ln \\sqrt{2} - \\ln(\\sqrt{2} - 1).
$$

由于$\\ln \\sqrt{2} = \\frac{1}{2} \\ln 2$和$\\sqrt{2} - 1 = \\frac{1}{\\sqrt{2}+1}$，有

$$
\\ln(\\sqrt{2} - 1) = \\ln (\\frac{1}{\\sqrt{2} + 1}) = − \\ln(\\sqrt{2} + 1),
$$

因此

$$
\\sum_{n=0}^{∞} I_{n} = \\frac{1}{2} \\ln 2 + \\ln(\\sqrt{2} + 1) = \\ln (\\sqrt{2}(\\sqrt{2} + 1)) = \\ln(2 + \\sqrt{2}).
$$

故答案为$\\ln(2 + \\sqrt{2})$.
', 9, 'Mogullzr', '2026-01-29 14:11:43', 9, 'Mogullzr', '2026-01-29 14:11:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1361');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1361');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1361');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1362, '2000年考研数学卷3第16题', '', '考研数学2000年卷3真题', '/problems/other/1321', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:43', 9, 'Mogullzr', '2026-01-29 14:11:43', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1363, '2000年考研数学卷3第17题', '简单', '考研数学2000年卷3真题', '设向量组$α_{1} = (a, 2, 10)T$,$α_{2} = (−2, 1, 5)T$,$α_{3} = (−1, 1, 4)T, β = (1, b, c)T$．
试问$a, b, c$满足什么条件时，(1)$β$可由$α_{1}, α_{2}, α_{3}$线性表示，且表示唯一？(2)$β$不能由$α_{1}, α_{2}, α_{3}$线性表示？(3)$β$可由$α_{1}, α_{2}, α_{3}$线性表示，但表示不唯一？并求出一般表达式．', '[]', '
(1) 当$a \\neq −4$时，$β$可由$α_{1}, α_{2}, α_{3}$唯一线性表示，且$b, c$任意。
(2) 当$a = −4$且$c \\neq 3b - 1$时，$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
(3) 当$a = −4$且$c = 3b - 1$时，$β$可由$α_{1}, α_{2}, α_{3}$线性表示但表示不唯一，且一般表达式为$β = kα_{1} + (−b - 1 - 2k)α_{2} + (2b + 1)α_{3}$，其中$k$为任意常数。
', '
设方程组$a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3} = β$。该方程组的系数行列式

$$
∣A∣ = ∣α_{1}, α_{2}, α_{3}∣ = \\left( \\begin{array}{ccc}
a & −2 & −1 \\\\
2 & 1 & 1 \\\\
10 & 5 & 4 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
a & −2 & −1 \\\\
2 & 1 & 1 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right) = −a - 4.
$$

(I)当$a \\neq −4$时，$∣A∣ \\neq 0$，方程组有唯一解，$β$可由$α_{1}, α_{2}, α_{3}$线性表示，且表示唯一。
(II)当$a = −4$时，对增广矩阵作初等行变换，得

$$
(α_{1}, α_{2}, α_{3}, β) = \\left( \\begin{array}{cccc}
−4 & −2 & 1 & 1 \\\\
2 & 1 & 1 & b \\\\
10 & 5 & 4 & c \\\\
\\end{array} \\right) ⟶ \\left( \\begin{array}{cccc}
2 & 1 & 0 & −b - 1 \\\\
0 & 0 & 1 & 2b + 1 \\\\
0 & 0 & 0 & c - 3b + 1 \\\\
\\end{array} \\right)
$$

因此当$a = −4$且$c - 3b + 1 \\neq 0$时，$r(α_{1}, α_{2}, α_{3}) = 2 \\neq r(α_{1}, α_{2}, α_{3}, β) = 3$，方程组无解，$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
(III)当$a = −4$且$c - 3b + 1 = 0$时，$r(α_{1}, α_{2}, α_{3}) = r(α_{1}, α_{2}, α_{3}, β) = 2$，方程组有无穷多解，其通解为

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
0 \\\\
−(b + 1) \\\\
2b + 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
k \\\\
−2k - b - 1 \\\\
2b + 1 \\\\
\\end{array} \\right) ,
$$

其中$k$是任意常数。从而

$$
β = kα_{1} + (−2k - b - 1)α_{2} + (2b + 1)α_{3},
$$

$k$是任意常数。
', 9, 'Mogullzr', '2026-01-29 14:11:43', 9, 'Mogullzr', '2026-01-29 14:11:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1363');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1363');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1363');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1364, '2000年考研数学卷3第18题', '简单', '考研数学2000年卷3真题', '设有$n$元实二次型
$$
f(x_{1}, x_{2}, ⋯  , x_{n}) = (x_{1} + a_{1}x_{2})2 + (x_{2} + a_{2}x_{3})2 + ⋯ + (x_{n-1} + a_{n-1}x_{n})2 + (x_{n} + a_{n}x_{1})2,
$$
其中$a_{i} = (i = 1, 2, ⋯  , n)$为实数．试问：当$a_{1}, a_{2}, ⋯  , a_{n}$满足何种条件时，
二次型$f(x_{1}, x_{2}, ⋯  , x_{n})$为正定二次型？', '[]', '当且仅当$a_{1}a_{2} ⋯ a_{n} \\neq (−1)n$时，二次型$f(x_{1}, x_{2}, ⋯  , x_{n})$为正定二次型。
', '
由题设条件知，对于任意的$x_{1}, x_{2}, ⋯  , x_{n}$均有$f(x_{1}, x_{2}, ⋯  , x_{n}) ≥ 0$，其中等号成立当且仅当

$$
\\begin{cases} x_{1} + a_{1}x_{2} = 0 \\\\ x_{2} + a_{2}x_{3} = 0 \\\\ ⋯⋯⋯⋯ \\\\ x_{n-1} + a_{n-1}x_{n} = 0 \\\\ x_{n} + a_{n}x_{1} = 0. \\end{cases}
$$

此方程组仅有零解的充分必要条件是其系数行列式

$$
B = \\begin{vmatrix}
1 & a_{1} & 0 &  & 0 & 0\\\\
 &  &  & ⋯ &  & \\\\
0 & 1 & a_{2} &  & 0 & 0\\\\
 &  &  & ⋯ &  & \\\\
0 & 0 & 1 &  & 0 & 0\\\\
 &  &  & ⋯ &  & \\\\
⋮ & ⋮ & ⋮ &  & ⋮ & ⋮\\\\
 &  &  & ⋱ &  & \\\\
0 & 0 & 0 &  & 1 & a_{n-1}\\\\
 &  &  & ⋯ &  & \\\\
a_{n} & 0 & 0 &  & 0 & 1\\\\
 &  &  & ⋯ &  & 
\\end{vmatrix} = 1 + (−1)n+1a_{1}a_{2} ⋯ a_{n} \\neq 0.
$$

所以当$a_{1} ⋅ a_{2} ⋯ a_{n} \\neq (−1)n$时，对任意的非零向量$X = (x_{1}, x_{2}, ⋯  , x_{n}) \\neq 0$，方程组中总有一个方程不为零，则有

$$
\\begin{array}{cc}
f(x_{1}, x_{2}, ⋯  , x_{n}) & = (x_{1} + a_{1}x_{2})2 + (x_{2} + a_{2}x_{3})2 + ⋯ \\\\
 & + (x_{n-1} + a_{n-1}x_{n})2 + (x_{n} + a_{n}x_{1})2 > 0 \\\\
\\end{array}
$$

此时二次型$f(x_{1}, x_{2}, ⋯  , x_{n})$是正定二次型。
', 9, 'Mogullzr', '2026-01-29 14:11:43', 9, 'Mogullzr', '2026-01-29 14:11:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1364');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1364');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1365, '2000年考研数学卷3第19题', '简单', '考研数学2000年卷3真题', '假设0.50，1.25，0.80，2.00是来自总体$X$的简单随机样本值．已知$Y = \\ln X$服从正态分布$N(μ, 1)$．(1) 求$X$的数学期望$EX$(记$EX$为$b$)；(2) 求$μ$的置信度为0.95的置信区间；(3) 利用上述结果求$b$的置信度为0.95的置信区间．', '[]', '
(1)$b = e^{μ+\\frac{1}{2}}$
(2)$μ$的置信度为 0.95 的置信区间为$\\lbrack −0.98, 0.98 \\rbrack$
(3)$b$的置信度为 0.95 的置信区间为$\\lbrack e^{−0.48}, e^{1.48} \\rbrack  ≈  \\lbrack 0.6188, 4.3930 \\rbrack$
', '
(I) 由正态分布密度函数的定义知，$Y$的概率密度为

$$
f(y) = \\frac{1}{\\sqrt{2π}}e^{−\\frac{(y-μ)2}{2}},  −∞ < y < +∞,
$$

于是数学期望

$$
\\begin{array}{cc}
b = E(X) & = E(e^{Y}) = \\frac{1}{\\sqrt{2π}} \\int_{−∞}^{+∞} e^{y} ⋅ e^{−\\frac{(y-μ)2}{2}} dy \\\\
 & = \\frac{1}{\\sqrt{2π}} \\int_{−∞}^{+∞} e^{t+μ} ⋅ e^{−\\frac{1}{2}t^{2}} dt \\\\
 & = e^{μ+\\frac{1}{2}} \\int_{−∞}^{+∞} \\frac{1}{\\sqrt{2π}} ⋅ e^{−\\frac{1}{2}(t-1)2} dt \\\\
\\end{array}
$$

(Ⅱ) 当置信度$1 - α = 0.95$时，$α = 0.05$。查表可知标准正态分布的双侧分位数等于$1.96$。故由$\\overline{Y} ∼ N (μ, \\frac{1}{4})$，其中$\\overline{Y}$表示总体$Y$的样本均值，

$$
\\overline{Y} = \\frac{1}{4}(\\ln 0.50 + \\ln 0.80 + \\ln 1.25 + \\ln 2.00) = \\frac{1}{4} \\ln 1 = 0.
$$

所以参数$μ$的置信度为$0.95$的置信区间为

$$
(\\overline{Y} - 1.96 × \\frac{1}{\\sqrt{4}},  \\overline{Y} + 1.96 × \\frac{1}{\\sqrt{4}}) = (−0.98,  0.98).
$$

(Ⅲ) 由指数函数$e^{x}$的严格单调递增性，有

$$
\\begin{array}{cc}
P \\{−0.98 < μ < 0.98\\} & = P \\{−0.48 < μ + \\frac{1}{2} < 1.48\\} \\\\
 & = P \\{e^{−0.48} < e^{μ+\\frac{1}{2}} < e^{1.48}\\} \\\\
 & = P \\{e^{−0.48} < b < e^{1.48}\\} = 0.95. \\\\
\\end{array}
$$

因此$b$的置信度为$0.95$的置信区间为$(e^{−0.48},  e^{1.48})$。
', 9, 'Mogullzr', '2026-01-29 14:11:44', 9, 'Mogullzr', '2026-01-29 14:11:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1365');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1365');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1365');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1366, '2000年考研数学卷3第20题', '简单', '考研数学2000年卷3真题', '设$A, B$是二随机事件；随机变量
$$
X = \\begin{cases} 1 & 若A出现 \\\\ −1 & 若A不出现 \\end{cases}  Y = \\begin{cases} 1 & 若B出现 \\\\ −1 & 若B不出现 \\end{cases}
$$
试证明随机变量$X$和$Y$不相关的充分必要条件是$A$与$B$相互独立．', '[]', '
随机变量$X$和$Y$不相关的充分必要条件是事件$A$与$B$相互独立。
', '


$$
E(X) = 1 ⋅ P\\{A\\} + (−1) ⋅ P \\{\\bar{A}\\} = 2P\\{A\\} - 1,
$$

同理可得$E(Y) = 2P\\{B\\} - 1$。现在求$E(XY)$，由于$XY$只有两个可能值$1$和$−1$，所以

$$
E(XY) = 1 ⋅ P\\{XY = 1\\} + (−1) ⋅ P\\{XY = −1\\},
$$

其中

$$
\\begin{array}{cc}
P\\{XY = 1\\} & = P\\{X = 1, Y = 1\\} + P\\{X = −1, Y = −1\\} \\\\
 & = P\\{AB\\} + P \\{\\overline{AB}\\} = 2P\\{AB\\} - P\\{A\\} - P\\{B\\} + 1, \\\\
\\end{array}
$$



$$
\\begin{array}{cc}
P\\{XY = −1\\} & = P\\{X = 1, Y = −1\\} + P\\{X = −1, Y = 1\\} \\\\
 & = P \\{A\\bar{B}\\} + P \\{\\bar{A}B\\} = P\\{A\\} + P\\{B\\} - 2P\\{AB\\}. \\\\
\\end{array}
$$

所以

$$
E(XY) = P\\{XY = 1\\} - P\\{XY = −1\\} = 4P\\{AB\\} - 2P\\{A\\} - 2P\\{B\\} + 1.
$$

由协方差公式，

$$
\\begin{array}{cc}
Cov(XY) & = E(XY) - E(X)E(Y) \\\\
 & = 4P\\{AB\\} - 2P\\{A\\} - 2P\\{B\\} + 1 -  \\lbrack 2P\\{A\\} - 1 \\rbrack  ⋅  \\lbrack 2P\\{B\\} - 1 \\rbrack  \\\\
 & = 4 \\lbrack P\\{AB\\} - P\\{A\\}P\\{B\\} \\rbrack . \\\\
\\end{array}
$$

因此，$Cov(XY) = 0$当且仅当$P\\{AB\\} = P\\{A\\}P\\{B\\}$，即$X$和$Y$不相关的充分必要条件是$A$与$B$相互独立。
', 9, 'Mogullzr', '2026-01-29 14:11:44', 9, 'Mogullzr', '2026-01-29 14:11:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1366');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1366');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1366');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1367, '2000年考研数学卷4第1题', '简单', '考研数学2000年卷4真题', '$∫ \\frac{arcsin \\sqrt{x}}{\\sqrt{x}}dx =$______．', '[]', '$2\\sqrt{x} arcsin \\sqrt{x} + 2\\sqrt{1 - x} + C$
', '令$u = \\sqrt{x}$，则$x = u^{2}$，$dx = 2u du$。代入积分得：

$$
∫ \\frac{arcsin \\sqrt{x}}{\\sqrt{x}} dx = ∫ \\frac{arcsin u}{u} ⋅ 2u du = 2 ∫ arcsin u du.
$$

计算$∫ arcsin u du$，使用分部积分法或已知公式：

$$
∫ arcsin u du = u arcsin u + \\sqrt{1 - u^{2}} + C.
$$

因此，

$$
2 ∫ arcsin u du = 2 (u arcsin u + \\sqrt{1 - u^{2}}) + C.
$$

代回$u = \\sqrt{x}$，得：

$$
2 (\\sqrt{x} arcsin \\sqrt{x} + \\sqrt{1 - x}) + C = 2\\sqrt{x} arcsin \\sqrt{x} + 2\\sqrt{1 - x} + C.
$$

故积分为$2\\sqrt{x} arcsin \\sqrt{x} + 2\\sqrt{1 - x} + C$.
', 9, 'Mogullzr', '2026-01-29 14:11:46', 9, 'Mogullzr', '2026-01-29 14:11:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1367');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1367');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1367');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1368, '2000年考研数学卷4第2题', '简单', '考研数学2000年卷4真题', '若$a > 0$,$b > 0$均为常数，则$\\lim_{x→0} (\\frac{a^{x}+b^{x}}{2})^{\\frac{3}{x}} =$______．', '[]', '$(ab)23​$
', '
该极限为$1^{∞}$型不定式。令$L = \\lim_{x→0} (\\frac{a^{x}+b^{x}}{2})^{\\frac{3}{x}}$，取自然对数得：


$$
\\ln L = \\lim_{x→0} \\frac{3}{x} \\ln (\\frac{a^{x} + b^{x}}{2})
$$

当$x → 0$时，$a^{x} ≈ 1 + x \\ln a$，$b^{x} ≈ 1 + x \\ln b$，因此：


$$
\\frac{a^{x} + b^{x}}{2} ≈ 1 + \\frac{x}{2}(\\ln a + \\ln b)
$$

于是：


$$
\\ln (\\frac{a^{x} + b^{x}}{2}) ≈ \\ln (1 + \\frac{x}{2}(\\ln a + \\ln b)) ≈ \\frac{x}{2}(\\ln a + \\ln b)
$$

代入得：


$$
\\ln L = \\lim_{x→0} \\frac{3}{x} ⋅ \\frac{x}{2}(\\ln a + \\ln b) = \\frac{3}{2}(\\ln a + \\ln b) = \\frac{3}{2} \\ln(ab) = \\ln ((ab)23​)
$$

因此，$L = (ab)23​$。
', 9, 'Mogullzr', '2026-01-29 14:11:46', 9, 'Mogullzr', '2026-01-29 14:11:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1368');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1368');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1368');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1369, '2000年考研数学卷4第3题', '简单', '考研数学2000年卷4真题', '设$α = (1, 0, −1)T$，矩阵$A = αα^{T}$，$n$为正整数，则$∣kE - A^{n}∣ =$______．', '[]', '$k^{2}(k - 2^{n})$
', '
给定向量$α = (1, 0, −1)T$，矩阵$A = αα^{T}$。
计算可得


$$
A = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 0 & 0 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right) .
$$

由于$A$是秩一矩阵，有


$$
A^{n} = 2^{n-1}A,
$$

其中$n$为正整数。
矩阵$A$的特征值为$0$（二重）和$2$，因此$A^{n}$的特征值为$0$（二重）和$2^{n}$。
矩阵$kE - A^{n}$的特征值为$k$（二重）和$k - 2^{n}$，故行列式


$$
∣kE - A^{n}∣ = k ⋅ k ⋅ (k - 2^{n}) = k^{2}(k - 2^{n}).
$$

', 9, 'Mogullzr', '2026-01-29 14:11:46', 9, 'Mogullzr', '2026-01-29 14:11:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1369');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1369');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1369');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1370, '2000年考研数学卷4第4题', '简单', '考研数学2000年卷4真题', '已知$4$阶矩阵$A$相似于$B$，$A$的特征值为$2, 3, 4, 5$，$E$为$4$阶单位矩阵，则行列式$∣B - E∣ =$______．', '[]', '24
', '
由于矩阵$A$相似于$B$，且$A$的特征值为$2, 3, 4, 5$，因此$B$的特征值也为$2, 3, 4, 5$。
行列式$∣B - E∣$即为$B$的特征多项式在$λ = 1$处的值，即


$$
p(1) = ∣B - E∣,
$$

其中


$$
p(λ) = (λ - 2)(λ - 3)(λ - 4)(λ - 5).
$$

计算


$$
p(1) = (1 - 2)(1 - 3)(1 - 4)(1 - 5) = (−1) × (−2) × (−3) × (−4) = 24.
$$

故


$$
∣B - E∣ = 24.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:46', 9, 'Mogullzr', '2026-01-29 14:11:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1370');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1370');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1371, '2000年考研数学卷4第5题', '', '考研数学2000年卷4真题', '/problems/other/1351', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1372, '2000年考研数学卷4第6题', '', '考研数学2000年卷4真题', '/problems/other/1352', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1373, '2000年考研数学卷4第7题', '', '考研数学2000年卷4真题', '/problems/other/1353', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1374, '2000年考研数学卷4第8题', '', '考研数学2000年卷4真题', '/problems/other/1354', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1375, '2000年考研数学卷4第9题', '简单', '考研数学2000年卷4真题', '设$A$,$B$,$C$三个事件两两独立，则$A$,$B$,$C$相互独立的充分必要条件是', '[''$A$与$BC$独立．'', ''$AB$与$A ∪ C$独立．'', ''$AB$与$AC$独立．'', ''$A ∪ B$与$A ∪ C$独立．'']', "['A']", '
由于事件$A$、$B$、$C$两两独立，即满足

$$
\\begin{array}{c}
P(A ∩ B) = P(A)P(B), \\\\
P(A ∩ C) = P(A)P(C), \\\\
P(B ∩ C) = P(B)P(C), \\\\
\\end{array}
$$
则$A$、$B$、$C$相互独立的充分必要条件是

$$
P(A ∩ B ∩ C) = P(A)P(B)P(C).
$$

$$
P(A ∩ (B ∩ C)) = P(A)P(B ∩ C).
$$
因此，只有选项 A 是充分必要条件。', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1375');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1375');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1376, '2000年考研数学卷4第10题', '', '考研数学2000年卷4真题', '/problems/other/1356', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1377, '2000年考研数学卷4第11题', '简单', '考研数学2000年卷4真题', '已知$z = u^{v}$,$u = \\ln \\sqrt{x^{2} + y^{2}}$,$v = arctan \\frac{y}{x}$，求$dz$．', '[]', '

$$
dz = \\frac{u^{v}}{x^{2} + y^{2}}  \\lbrack \\frac{v}{u}(x dx + y dy) + \\ln u (−y dx + x dy) \\rbrack
$$

其中$u = \\ln \\sqrt{x^{2} + y^{2}}$,$v = arctan \\frac{y}{x}$.
', '已知$z = u^{v}$,$u = \\ln \\sqrt{x^{2} + y^{2}}$,$v = arctan \\frac{y}{x}$.
首先，求全微分$dz$. 由于$z$是$u$和$v$的函数，而$u$和$v$又是$x$和$y$的函数，使用链式法则：


$$
dz = \\frac{∂z}{∂u}du + \\frac{∂z}{∂v}dv
$$

其中$\\frac{∂z}{∂u} = vu^{v-1}$,$\\frac{∂z}{∂v} = u^{v} \\ln u$.
所以，


$$
dz = vu^{v-1}du + u^{v} \\ln u dv
$$

即


$$
dz = u^{v} (\\frac{v}{u}du + \\ln u dv)
$$

现在求$du$和$dv$.
由$u = \\ln \\sqrt{x^{2} + y^{2}} = \\frac{1}{2} \\ln(x^{2} + y^{2})$，得


$$
du = \\frac{∂u}{∂x}dx + \\frac{∂u}{∂y}dy = \\frac{x}{x^{2} + y^{2}}dx + \\frac{y}{x^{2} + y^{2}}dy
$$

由$v = arctan \\frac{y}{x}$，得


$$
dv = \\frac{∂v}{∂x}dx + \\frac{∂v}{∂y}dy = −\\frac{y}{x^{2} + y^{2}}dx + \\frac{x}{x^{2} + y^{2}}dy
$$

将$du$和$dv$代入$dz$:


$$
dz = u^{v}  \\lbrack \\frac{v}{u} (\\frac{x}{x^{2} + y^{2}}dx + \\frac{y}{x^{2} + y^{2}}dy) + \\ln u (−\\frac{y}{x^{2} + y^{2}}dx + \\frac{x}{x^{2} + y^{2}}dy) \\rbrack
$$

提取公因子$\\frac{1}{x^{2}+y^{2}}$:


$$
dz = \\frac{u^{v}}{x^{2} + y^{2}}  \\lbrack \\frac{v}{u}(x dx + y dy) + \\ln u (−y dx + x dy) \\rbrack
$$

这就是所求的全微分。
', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1377');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1377');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1377');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1378, '2000年考研数学卷4第12题', '简单', '考研数学2000年卷4真题', '计算$I = \\int_{1}^{+∞} \\frac{dx}{e^{1+x}+e^{3-x}}$．', '[]', '

$$
\\frac{π}{4e^{2}}
$$

', '考虑积分$I = \\int_{1}^{+∞} \\frac{dx}{e^{1+x}+e^{3-x}}$。首先，简化分母：

$$
e^{1+x} + e^{3-x} = e^{2}(e^{x-1} + e^{1-x}),
$$

所以

$$
I = \\int_{1}^{+∞} \\frac{dx}{e^{2}(e^{x-1} + e^{1-x})} = \\frac{1}{e^{2}} \\int_{1}^{+∞} \\frac{dx}{e^{x-1} + e^{1-x}}.
$$

令$u = x - 1$，则当$x = 1$时$u = 0$，当$x → +∞$时$u → +∞$，且$dx = du$，于是

$$
I = \\frac{1}{e^{2}} \\int_{0}^{+∞} \\frac{du}{e^{u} + e^{−u}} = \\frac{1}{e^{2}} \\int_{0}^{+∞} \\frac{du}{2 \\cosh u} = \\frac{1}{2e^{2}} \\int_{0}^{+∞} \\frac{du}{\\cosh u}.
$$

计算积分$\\int_{0}^{+∞} \\frac{du}{\\cosh u}$。由于$\\cosh u = \\frac{e^{u}+e^{−u}}{2}$，有

$$
\\int_{0}^{+∞} \\frac{du}{\\cosh u} = \\int_{0}^{+∞} \\frac{2}{e^{u} + e^{−u}} du.
$$

令$v = e^{u}$，则$dv = e^{u} du$，当$u = 0$时$v = 1$，当$u → +∞$时$v → +∞$，所以

$$
\\begin{array}{cc}
\\int_{0}^{+∞} \\frac{2}{e^{u} + e^{−u}} du & = \\int_{1}^{+∞} \\frac{2}{v + \\frac{1}{v}} ⋅ \\frac{dv}{v} \\\\
 & = \\int_{1}^{+∞} \\frac{2}{v^{2} + 1} dv \\\\
 & = 2  \\lbrack arctan v \\rbrack _{1}^{+∞} \\\\
 & = 2 (\\frac{π}{2} - \\frac{π}{4}) \\\\
\\end{array}
$$

因此，

$$
I = \\frac{1}{2e^{2}} ⋅ \\frac{π}{2} = \\frac{π}{4e^{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1378');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1378');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1378');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1379, '2000年考研数学卷4第13题', '', '考研数学2000年卷4真题', '/problems/other/1359', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1380, '2000年考研数学卷4第14题', '', '考研数学2000年卷4真题', '/problems/other/1360', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1381, '2000年考研数学卷4第15题', '简单', '考研数学2000年卷4真题', '设$f(x, y) = \\begin{cases} x^{2}y & 1 ≤ x ≤ 2, 0 ≤ y ≤ x; \\\\ 0 & 其他. \\end{cases}$求$\\iint_{D} f(x, y)dxdy$，其中$D = \\{(x, y)∣x^{2} + y^{2} ≥ 2x\\}$', '[]', '$\\frac{49}{20}$
', '
给定函数$f(x, y)$在区域$1 ≤ x ≤ 2, 0 ≤ y ≤ x$上为$x^{2}y$，否则为 0。积分区域$D$由$x^{2} + y^{2} ≥ 2x$定义，即$(x - 1)2 + y^{2} ≥ 1$，表示圆心在$(1, 0)$、半径为 1 的圆的外部。由于$f(x, y)$仅在$1 ≤ x ≤ 2, 0 ≤ y ≤ x$上非零，实际积分区域为$E = D ∩ \\{(x, y) ∣ 1 ≤ x ≤ 2, 0 ≤ y ≤ x\\}$。

对于$x ∈  \\lbrack 1, 2 \\rbrack$，$y$需满足$y ≥ \\sqrt{1 - (x - 1)2}$且$y ≤ x$。因此，二重积分化为：

$$
\\iint_{D} f(x, y) dx dy = \\int_{x=1}^{2} \\int_{y=\\sqrt{1-(x-1)2}}^{x} x^{2}y dy dx
$$

先计算内层积分：

$$
\\begin{array}{cc}
\\int_{y=\\sqrt{1-(x-1)2}}^{x} x^{2}y dy & = x^{2} ⋅ \\frac{1}{2}y^{2}​_{y=\\sqrt{1-(x-1)2}}^{y=x} \\\\
 & = \\frac{1}{2}x^{2}  \\lbrack x^{2} - (\\sqrt{1 - (x - 1)2})^{2} \\rbrack  \\\\
\\end{array}
$$

简化括号内表达式：

$$
x^{2} - 1 + (x - 1)2 = x^{2} - 1 + x^{2} - 2x + 1 = 2x^{2} - 2x
$$

所以内层积分为：

$$
\\frac{1}{2}x^{2}(2x^{2} - 2x) = x^{2}(x^{2} - x) = x^{4} - x^{3}
$$

代入外层积分：

$$
\\int_{x=1}^{2}(x^{4} - x^{3}) dx =  \\lbrack \\frac{1}{5}x^{5} - \\frac{1}{4}x^{4} \\rbrack _{1}^{2}
$$

计算上下限：
在$x = 2$：$\\frac{1}{5} ⋅ 32 - \\frac{1}{4} ⋅ 16 = \\frac{32}{5} - 4 = \\frac{32}{5} - \\frac{20}{5} = \\frac{12}{5}$在$x = 1$：$\\frac{1}{5} ⋅ 1 - \\frac{1}{4} ⋅ 1 = \\frac{1}{5} - \\frac{1}{4} = \\frac{4}{20} - \\frac{5}{20} = −\\frac{1}{20}$积分值为：

$$
\\frac{12}{5} - (−\\frac{1}{20}) = \\frac{12}{5} + \\frac{1}{20} = \\frac{48}{20} + \\frac{1}{20} = \\frac{49}{20}
$$

因此，二重积分的值为$\\frac{49}{20}$。
', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1381');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1381');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1381');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1382, '2000年考研数学卷4第16题', '', '考研数学2000年卷4真题', '/problems/other/1321', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1383, '2000年考研数学卷4第17题', '', '考研数学2000年卷4真题', '/problems/other/1363', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1384, '2000年考研数学卷4第18题', '简单', '考研数学2000年卷4真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
x & 4 & y \\\\
−3 & −3 & 5 \\\\
\\end{array} \\right)$，已知$A$有三个线性无关的特征向量，$λ = 2$是$A$的二重特征值．
试求可逆矩阵$P$，使得$P^{−1}AP$为对角形矩阵．', '[]', '

$$
P = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 1 & 2 \\\\
1 & 1 & −3 \\\\
\\end{array} \\right)
$$

', '已知矩阵$A$有三个线性无关的特征向量，且$λ = 2$是二重特征值。首先，利用$λ = 2$是二重特征值且几何重数等于代数重数的条件，求参数$x$和$y$。
计算$A - 2I$：

$$
A - 2I = \\left( \\begin{array}{ccc}
−1 & −1 & 1 \\\\
x & 2 & y \\\\
−3 & −3 & 3 \\\\
\\end{array} \\right)
$$

由于$λ = 2$是二重特征值且几何重数为 2，矩阵$A - 2I$的秩为 1。观察第一行和第三行成比例，因此第二行也需与第一行成比例。设第二行 =$k$× 第一行，则有：

$$
x = k ⋅ (−1) = −k,  2 = k ⋅ (−1) = −k,  y = k ⋅ 1 = k
$$

由$2 = −k$得$k = −2$，代入得$x = 2$，$y = −2$。因此：

$$
A = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
2 & 4 & −2 \\\\
−3 & −3 & 5 \\\\
\\end{array} \\right)
$$

接下来求特征值。矩阵$A$的迹为$1 + 4 + 5 = 10$，特征值之和等于迹，已知$λ = 2$是二重特征值，故第三个特征值$λ_{3} = 10 - 2 - 2 = 6$。
求特征向量：
对于$λ = 2$，解$(A - 2I)v = 0$：$A - 2I = \\left( \\begin{array}{ccc}
−1 & −1 & 1 \\\\
2 & 2 & −2 \\\\
−3 & −3 & 3 \\\\
\\end{array} \\right)$等价于方程$−v_{1} - v_{2} + v_{3} = 0$，即$v_{3} = v_{1} + v_{2}$。令$v_{1} = s$，$v_{2} = t$，则特征向量为：$v = s \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) + t \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$取线性无关的特征向量$v_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$，$v_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$。对于$λ = 6$，解$(A - 6I)v = 0$：$A - 6I = \\left( \\begin{array}{ccc}
−5 & −1 & 1 \\\\
2 & −2 & −2 \\\\
−3 & −3 & −1 \\\\
\\end{array} \\right)$由第二方程$2v_{1} - 2v_{2} - 2v_{3} = 0$得$v_{1} = v_{2} + v_{3}$，代入第一方程$−5(v_{2} + v_{3}) - v_{2} + v_{3} = 0$得$−6v_{2} - 4v_{3} = 0$，即$3v_{2} + 2v_{3} = 0$，故$v_{3} = −\\frac{3}{2}v_{2}$。代入$v_{1} = v_{2} + v_{3}$得$v_{1} = −\\frac{1}{2}v_{2}$。令$v_{2} = 2t$，则$v_{1} = −t$，$v_{3} = −3t$，特征向量为：$v_{3} = \\left( \\begin{array}{c}
−1 \\\\
2 \\\\
−3 \\\\
\\end{array} \\right)$
三个线性无关的特征向量为：

$$
v_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  v_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) ,  v_{3} = \\left( \\begin{array}{c}
−1 \\\\
2 \\\\
−3 \\\\
\\end{array} \\right)
$$

构造可逆矩阵$P$：

$$
P = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 1 & 2 \\\\
1 & 1 & −3 \\\\
\\end{array} \\right)
$$

计算$det(P) = −4 \\neq 0$，故$P$可逆。此时$P^{−1}AP = diag(2, 2, 6)$。
', 9, 'Mogullzr', '2026-01-29 14:11:47', 9, 'Mogullzr', '2026-01-29 14:11:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1384');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1384');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1385, '2000年考研数学卷4第19题', '简单', '考研数学2000年卷4真题', '设二维随机变量$(X, Y)$的密度函数为$f(x, y) = \\frac{1}{2}  \\lbrack ϕ_{1}(x, y) + ϕ_{2}(x, y) \\rbrack$，
其中$ϕ_{1}(x, y)$和$ϕ_{2}(x, y)$都是二维正态密度函数，
且它们对应的二维随机变量的相关系数分别为$\\frac{1}{3}$和$−\\frac{1}{3}$，
它们的边缘密度对应的随机变量的数学期望都是$0$，方差都是$1$．(1) 求随机变量$X$和$Y$的密度函数$f_{1}(x)$和$f_{2}(x)$．(2) 求$X$和$Y$的相关系数$ρ$．(3) 问$X$和$Y$是否独立？为什么？', '[]', '
(1)$f_{1}(x) = \\frac{1}{\\sqrt{2π}}e^{−x^{2}/2}$,$f_{2}(y) = \\frac{1}{\\sqrt{2π}}e^{−y^{2}/2}$
(2)$ρ = 0$
(3)$X$和$Y$不独立。
', '
(1) 由于$ϕ_{1}(x, y)$和$ϕ_{2}(x, y)$都是二维正态密度函数，且它们的边缘密度对应的数学期望为$0$、方差为$1$，因此边缘密度函数均为标准正态密度函数，即


$$
\\int_{−∞}^{∞} ϕ_{1}(x, y) dy = \\frac{1}{\\sqrt{2π}}e^{−x^{2}/2},
$$

同理


$$
\\int_{−∞}^{∞} ϕ_{2}(x, y) dy = \\frac{1}{\\sqrt{2π}}e^{−x^{2}/2}.
$$

于是，$X$的边缘密度函数为


$$
\\begin{array}{cc}
f_{1}(x) & = \\int_{−∞}^{∞} f(x, y) dy \\\\
 & = \\frac{1}{2}  \\lbrack \\int_{−∞}^{∞} ϕ_{1}(x, y) dy + \\int_{−∞}^{∞} ϕ_{2}(x, y) dy \\rbrack  \\\\
 & = \\frac{1}{2}  \\lbrack \\frac{1}{\\sqrt{2π}}e^{−x^{2}/2} + \\frac{1}{\\sqrt{2π}}e^{−x^{2}/2} \\rbrack  \\\\
\\end{array}
$$

同理，$Y$的边缘密度函数为


$$
\\begin{array}{cc}
f_{2}(y) & = \\int_{−∞}^{∞} f(x, y) dx \\\\
 & = \\frac{1}{2}  \\lbrack \\int_{−∞}^{∞} ϕ_{1}(x, y) dx + \\int_{−∞}^{∞} ϕ_{2}(x, y) dx \\rbrack  \\\\
 & = \\frac{1}{2}  \\lbrack \\frac{1}{\\sqrt{2π}}e^{−y^{2}/2} + \\frac{1}{\\sqrt{2π}}e^{−y^{2}/2} \\rbrack  \\\\
\\end{array}
$$

(2)$X$和$Y$的相关系数$ρ = \\frac{Cov(X,Y)}{σ_{X}σ_{Y}}$。由于$σ_{X} = σ_{Y} = 1$，有$ρ = Cov(X, Y) = E \\lbrack XY \\rbrack  - E \\lbrack X \\rbrack E \\lbrack Y \\rbrack$。又因为$E \\lbrack X \\rbrack  = E \\lbrack Y \\rbrack  = 0$，所以$ρ = E \\lbrack XY \\rbrack$。计算$E \\lbrack XY \\rbrack$：


$$
\\begin{array}{cc}
E \\lbrack XY \\rbrack  & = \\iint_{−∞}^{∞} xy f(x, y) dx dy \\\\
 & = \\frac{1}{2}  \\lbrack \\iint_{−∞}^{∞} xy ϕ_{1}(x, y) dx dy + \\iint_{−∞}^{∞} xy ϕ_{2}(x, y) dx dy \\rbrack  . \\\\
\\end{array}
$$

对于二维正态密度函数$ϕ_{1}(x, y)$，其相关系数为$\\frac{1}{3}$，故


$$
\\iint_{−∞}^{∞} xyϕ_{1}(x, y) dx dy = \\frac{1}{3};
$$

同理，对于$ϕ_{2}(x, y)$，其相关系数为$−\\frac{1}{3}$，故


$$
\\iint_{−∞}^{∞} xyϕ_{2}(x, y) dx dy = −\\frac{1}{3}.
$$

因此


$$
E \\lbrack XY \\rbrack  = \\frac{1}{2}  \\lbrack \\frac{1}{3} + (−\\frac{1}{3}) \\rbrack  = 0,
$$

所以$ρ = 0$。
(3)$X$和$Y$不独立。因为若$X$和$Y$独立，则联合密度函数应满足$f(x, y) = f_{1}(x)f_{2}(y)$。由 (1) 知


$$
f_{1}(x)f_{2}(y) = \\frac{1}{2π}e^{−(x^{2}+y^{2})/2},
$$

但实际联合密度函数为


$$
f(x, y) = \\frac{1}{2} \\lbrack ϕ_{1}(x, y) + ϕ_{2}(x, y) \\rbrack ,
$$

其中$ϕ_{1}(x, y)$和$ϕ_{2}(x, y)$均为二维正态密度函数且相关系数非零，故$f(x, y) \\neq f_{1}(x)f_{2}(y)$。因此，$X$和$Y$不独立。
', 9, 'Mogullzr', '2026-01-29 14:11:48', 9, 'Mogullzr', '2026-01-29 14:11:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1385');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1385');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1385');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1386, '2000年考研数学卷4第20题', '', '考研数学2000年卷4真题', '/problems/other/1366', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:48', 9, 'Mogullzr', '2026-01-29 14:11:48', 0, 4);
