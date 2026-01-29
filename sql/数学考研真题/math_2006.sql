INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1819, '2006年考研数学卷1第1题', '简单', '考研数学2006年卷1真题', '$\\lim_{x→0} \\frac{x \\ln(1+x)}{1-\\cos x} =$______．', '[]', '2
', '该极限为$\\frac{0}{0}$型不定式。使用等价无穷小替换：当$x → 0$时，$\\ln(1 + x) ∼ x$，$1 - \\cos x ∼ \\frac{x^{2}}{2}$。因此，分子$x \\ln(1 + x) ∼ x ⋅ x = x^{2}$，分母$1 - \\cos x ∼ \\frac{x^{2}}{2}$，原极限化为$\\lim_{x→0} \\frac{x^{2}}{\\frac{x^{2}}{2}} = 2$。
或者，使用洛必达法则：设$f(x) = x \\ln(1 + x)$，$g(x) = 1 - \\cos x$，则$f^{′}(x) = \\ln(1 + x) + \\frac{x}{1+x}$，$g^{′}(x) = \\sin x$。极限化为$\\lim_{x→0} \\frac{\\ln(1+x)+\\frac{x}{1+x}}{\\sin x}$，仍为$\\frac{0}{0}$型。再次应用洛必达法则，分子导数为$\\frac{1}{1+x} + \\frac{1}{(1+x)2} = \\frac{2+x}{(1+x)2}$，分母导数为$\\cos x$。极限化为$\\lim_{x→0} \\frac{2+x}{(1+x)2 \\cos x} = \\frac{2}{1⋅1} = 2$。
两种方法均得极限为 2。
', 9, 'Mogullzr', '2026-01-29 14:13:52', 9, 'Mogullzr', '2026-01-29 14:13:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1819');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1819');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1819');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1820, '2006年考研数学卷1第2题', '简单', '考研数学2006年卷1真题', '微分方程$y^{′} = \\frac{y(1-x)}{x}$的通解是 ______．', '[]', '
$y = Cxe^{−x}$，其中$C$为任意常数。
', '
给定微分方程$y^{′} = \\frac{y(1-x)}{x}$，这是一个可分离变量方程。
将方程写为$\\frac{dy}{dx} = \\frac{y(1-x)}{x}$，然后分离变量得$\\frac{dy}{y} = \\frac{1-x}{x} dx$。
右边化简为$\\frac{1}{x} - 1$，因此有$\\frac{dy}{y} = (\\frac{1}{x} - 1) dx$。
对两边积分：$∫ \\frac{1}{y} dy = ∫ (\\frac{1}{x} - 1) dx$，得到$\\ln ∣y∣ = \\ln ∣x∣ - x + C$，其中$C$为积分常数。
解出$y$：取指数得$∣y∣ = e^{\\ln ∣x∣-x+C} = ∣x∣e^{−x}e^{C}$，即$∣y∣ = K∣x∣e^{−x}$，其中$K = e^{C} > 0$。
因此$y = ±Kxe^{−x}$，令$C_{1} = ±K$，则$y = C_{1}xe^{−x}$。
验证$y = 0$也是解，当$C_{1} = 0$时包含此情况，故通解为$y = Cxe^{−x}$，其中$C$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:13:52', 9, 'Mogullzr', '2026-01-29 14:13:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1820');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1820');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1820');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1821, '2006年考研数学卷1第3题', '简单', '考研数学2006年卷1真题', '设$Σ$是锥面$z = \\sqrt{x^{2} + y^{2}}$（$0 ≤ z ≤ 1$）的下侧，则$\\iint_{Σ} xdydz + 2ydzdx + 3(z - 1)dxdy =$______．', '[]', '$2π$
', '考虑向量场$F = (x, 2y, 3(z - 1))$，则给定积分等价于$\\iint_{Σ} F ⋅ dS$，其中$Σ$是锥面$z = \\sqrt{x^{2} + y^{2}}$（$0 ≤ z ≤ 1$）的下侧。
应用高斯散度定理，需要封闭曲面。定义区域$V$为锥体：$0 ≤ z ≤ 1$，$x^{2} + y^{2} ≤ z^{2}$。封闭曲面$∂V$由锥面$Σ$（下侧，与外法向一致）和上盖$S_{1} : z = 1, x^{2} + y^{2} ≤ 1$（上侧）组成，下底面积为零可忽略。
高斯散度定理给出：

$$
\\iint_{∂V} F ⋅ dS = \\iiint_{V} ∇ ⋅ F dV
$$

其中：

$$
\\iint_{∂V} F ⋅ dS = \\iint_{Σ} F ⋅ dS + \\iint_{S_{1}} F ⋅ dS
$$

计算散度：

$$
∇ ⋅ F = \\frac{∂}{∂x}(x) + \\frac{∂}{∂y}(2y) + \\frac{∂}{∂z}(3(z - 1)) = 1 + 2 + 3 = 6
$$

体积分：

$$
\\iiint_{V} ∇ ⋅ F dV = 6 \\iiint_{V} dV = 6 × \\frac{π}{3} = 2π
$$

（锥体体积为$\\int_{0}^{1} πz^{2} dz = \\frac{π}{3}$）。
在上盖$S_{1}$上，法向量为$(0, 0, 1)$，故：

$$
F ⋅ dS =  \\lbrack x ⋅ 0 + 2y ⋅ 0 + 3(z - 1) ⋅ 1 \\rbrack  dA = 3(1 - 1) dA = 0
$$

所以：

$$
\\iint_{S_{1}} F ⋅ dS = 0
$$

因此：

$$
\\iint_{Σ} F ⋅ dS = 2π - 0 = 2π
$$

即所求积分为$2π$。
', 9, 'Mogullzr', '2026-01-29 14:13:52', 9, 'Mogullzr', '2026-01-29 14:13:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1821');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1821');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1822, '2006年考研数学卷1第4题', '简单', '考研数学2006年卷1真题', '点$(2, 1, 0)$到平面$3x + 4y + 5z = 0$的距离$d =$______．', '[]', '
$\\sqrt{2}$
', '
点$(2, 1, 0)$到平面$3x + 4y + 5z = 0$的距离公式为$d = \\frac{∣Ax_{0}+By_{0}+Cz_{0}+D∣}{\\sqrt{A^{2}+B^{2}+C^{2}}}$。
其中，$A = 3$，$B = 4$，$C = 5$，$D = 0$，$x_{0} = 2$，$y_{0} = 1$，$z_{0} = 0$。
代入公式：
分子为$∣3 × 2 + 4 × 1 + 5 × 0 + 0∣ = ∣6 + 4∣ = 10$，
分母为$\\sqrt{3^{2} + 4^{2} + 5^{2}} = \\sqrt{9 + 16 + 25} = \\sqrt{50} = 5\\sqrt{2}$。
因此，$d = \\frac{10}{5\\sqrt{2}} = \\frac{2}{\\sqrt{2}} = \\sqrt{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:52', 9, 'Mogullzr', '2026-01-29 14:13:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1822');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1822');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1822');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1823, '2006年考研数学卷1第5题', '简单', '考研数学2006年卷1真题', '设矩阵$A = \\left( \\begin{array}{cc}
2 & 1 \\\\
−1 & 2 \\\\
\\end{array} \\right)$，$E$为$2$阶单位矩阵，矩阵$B$满足$BA = B + 2E$，则$∣B∣ =$______．', '[]', '$2$
', '
由方程$BA = B + 2E$，可得$BA - B = 2E$，即$B(A - E) = 2E$。
计算$A - E = \\left( \\begin{array}{cc}
2 & 1 \\\\
−1 & 2 \\\\
\\end{array} \\right) - \\left( \\begin{array}{cc}
1 & 0 \\\\
0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
1 & 1 \\\\
−1 & 1 \\\\
\\end{array} \\right)$，其行列式$∣A - E∣ = \\begin{vmatrix}
1 & 1\\\\
−1 & 1
\\end{vmatrix} = 1 × 1 - 1 × (−1) = 2$。
对等式$B(A - E) = 2E$两边取行列式，得$∣B∣ ⋅ ∣A - E∣ = ∣2E∣$。
由于$E$为 2 阶单位矩阵，$∣2E∣ = 2^{2} ⋅ ∣E∣ = 4 × 1 = 4$，
代入得$∣B∣ × 2 = 4$，因此$∣B∣ = 2$。
', 9, 'Mogullzr', '2026-01-29 14:13:52', 9, 'Mogullzr', '2026-01-29 14:13:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1823');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1823');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1823');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1824, '2006年考研数学卷1第6题', '简单', '考研数学2006年卷1真题', '设随机变量$X$与$Y$相互独立，且均服从区间$\\lbrack 0, 3 \\rbrack$上的均匀分布，则$P \\{\\max\\{X,  Y\\} ≤ 1\\} =$______．', '[]', '$1/9$
', '
由于$X$和$Y$相互独立且均服从$\\lbrack 0, 3 \\rbrack$上的均匀分布，事件$\\max\\{X, Y\\} ≤ 1$等价于$X ≤ 1$且$Y ≤ 1$。因此，


$$
P\\{\\max\\{X, Y\\} ≤ 1\\} = P\\{X ≤ 1Y ≤ 1\\} = P\\{X ≤ 1\\} ⋅ P\\{Y ≤ 1\\}
$$

其中$P\\{X ≤ 1\\} = \\frac{1-0}{3-0} = \\frac{1}{3}$，同理$P\\{Y ≤ 1\\} = \\frac{1}{3}$，
故


$$
P\\{\\max\\{X, Y\\} ≤ 1\\} = \\frac{1}{3} × \\frac{1}{3} = \\frac{1}{9}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:53', 9, 'Mogullzr', '2026-01-29 14:13:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1824');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1824');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1824');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1825, '2006年考研数学卷1第7题', '简单', '考研数学2006年卷1真题', '设函数$y = f(x)$具有二阶导数，且$f^{′}(x) > 0,  f^{′′}(x) > 0$，$Δx$为自变量$x$在$x_{0}$处的增量，$Δy$与$dy$分别为$f(x)$在点$x_{0}$处对应的增量与微分，
若$Δx > 0$，则', '[''$0 < dy < Δy$．'', ''$0 < Δy < dy$．'', ''$Δy < dy < 0$．'', ''$dy < Δy < 0$．'']', "['A']", '由带拉格朗日余项的泰勒公式，得到
$$
Δy - dy = f(x_{0} + Δx) - f(x_{0}) - f^{′}(x_{0})Δx = \\frac{1}{2}f^{′′}(ξ)(Δx)2 > 0,
$$
于是$Δy > dy$。又由于$dy = f^{′}(x_{0})Δx > 0$，故有$0 < dy < Δy$。', 9, 'Mogullzr', '2026-01-29 14:13:53', 9, 'Mogullzr', '2026-01-29 14:13:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1825');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1825');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1825');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1826, '2006年考研数学卷1第8题', '简单', '考研数学2006年卷1真题', '设$f(x, y)$为连续函数，则$\\int_{0}^{\\frac{π}{4}} dθ \\int_{0}^{1} f(r \\cos θ, r \\sin θ)rdr$等于', '[''$\\\\int_{0}^{\\\\frac{\\\\sqrt{2}}{2}} dx \\\\int_{x}^{\\\\sqrt{1-x^{2}}} f(x, y)dy$'', ''$\\\\int_{0}^{\\\\frac{\\\\sqrt{2}}{2}} dx \\\\int_{0}^{\\\\sqrt{1-x^{2}}} f(x, y)dy$'', ''$\\\\int_{0}^{\\\\frac{\\\\sqrt{2}}{2}} dy \\\\int_{y}^{\\\\sqrt{1-y^{2}}} f(x, y)dx$'', ''$\\\\int_{0}^{\\\\frac{\\\\sqrt{2}}{2}} dy \\\\int_{0}^{\\\\sqrt{1-y^{2}}} f(x, y)dx$'']', "['C']", '
给定的极坐标积分

$$
\\int_{0}^{\\frac{π}{4}} dθ \\int_{0}^{1} f(r \\cos θ, r \\sin θ) r dr
$$
对应于区域$D$，其中$r$从 0 到 1，$θ$从 0 到$\\frac{π}{4}$。在直角坐标系中，该区域由以下条件定义：

$$
x^{2} + y^{2} ≤ 1,  x ≥ 0,  y ≥ 0,  y ≤ x.
$$
为了将积分转换为先对$x$积分再对$y$积分的形式，考虑固定$y$时$x$的范围：$x$从$y$到$\\sqrt{1 - y^{2}}$，$y$的范围从 0 到$\\frac{\\sqrt{2}}{2}$（因为当$y > \\frac{\\sqrt{2}}{2}$时，不存在满足$y ≤ x$且$x^{2} + y^{2} ≤ 1$的点）。因此，积分变为：

$$
\\int_{0}^{\\frac{\\sqrt{2}}{2}} dy \\int_{y}^{\\sqrt{1-y^{2}}} f(x, y) dx,
$$
对应选项C。其他选项分析：选项 A：$y$从$x$到$\\sqrt{1 - x^{2}}$，对应$y ≥ x$，与区域条件$y ≤ x$相反。选项 B：$y$从 0 到$\\sqrt{1 - x^{2}}$，覆盖$θ$从 0 到$\\frac{π}{2}$的部分区域，不满足$y ≤ x$。选项 D：$x$从 0 到$\\sqrt{1 - y^{2}}$，同样覆盖$θ$从 0 到$\\frac{π}{2}$的部分区域，未体现$y ≤ x$的限制。因此，只有选项C正确。', 9, 'Mogullzr', '2026-01-29 14:13:53', 9, 'Mogullzr', '2026-01-29 14:13:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1826');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1826');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '1826');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1827, '2006年考研数学卷1第9题', '简单', '考研数学2006年卷1真题', '若级数$\\sum_{n=1}^{∞} a_{n}$收敛，则级数', '[''$\\\\sum_{n=1}^{∞} ∣a_{n}∣$收敛'', ''$\\\\sum_{n=1}^{∞}(−1)na_{n}$收敛'', ''$\\\\sum_{n=1}^{∞} a_{n}a_{n+1}$收敛'', ''$\\\\sum_{n=1}^{∞} \\\\frac{a_{n}+a_{n+1}}{2}$收敛'']', "['D']", '若级数$\\sum_{n=1}^{∞} a_{n}$收敛，考虑选项 D：$\\sum_{n=1}^{∞} \\frac{a_{n}+a_{n+1}}{2}$。令部分和$S_{N} = \\sum_{n=1}^{N} a_{n}$，则$\\sum_{n=1}^{N} \\frac{a_{n}+a_{n+1}}{2} = \\frac{1}{2} \\sum_{n=1}^{N} a_{n} + \\frac{1}{2} \\sum_{n=1}^{N} a_{n+1} = \\frac{1}{2}S_{N} + \\frac{1}{2}(S_{N+1} - a_{1}) = \\frac{1}{2}S_{N} + \\frac{1}{2}S_{N+1} - \\frac{a_{1}}{2}$。由于$∑ a_{n}$收敛，$S_{N}$收敛于某极限$S$，故$S_{N+1}$也收敛于$S$，因此上述表达式收敛于$\\frac{1}{2}S + \\frac{1}{2}S - \\frac{a_{1}}{2} = S - \\frac{a_{1}}{2}$，即级数收敛。对于选项 A，$∑ ∣a_{n}∣$不一定收敛，例如$a_{n} = \\frac{(−1)n}{n}$，则$∑ a_{n}$收敛但$∑ ∣a_{n}∣$发散。
对于选项 B，$∑(−1)na_{n}$不一定收敛，例如$a_{n} = \\frac{(−1)n}{n}$，则$∑(−1)na_{n} = ∑ \\frac{1}{n}$发散。
对于选项 C，$∑ a_{n}a_{n+1}$不一定收敛，例如$a_{n} = \\frac{(−1)n}{\\sqrt{n}}$，则$∑ a_{n}$收敛但$∑ a_{n}a_{n+1} = ∑ −\\frac{1}{\\sqrt{n(n+1)}}$发散。
因此，只有选项 D 必然收敛。', 9, 'Mogullzr', '2026-01-29 14:13:53', 9, 'Mogullzr', '2026-01-29 14:13:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1827');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1827');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1827');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1828, '2006年考研数学卷1第10题', '简单', '考研数学2006年卷1真题', '设$f(x, y)$与$φ(x, y)$均为可微函数，且$φ_{y}^{′}(x, y) \\neq 0$．
已知$(x_{0}, y_{0})$是$f(x, y)$在约束条件$φ(x, y) = 0$下的一个极值点，
下列选项正确的是', '[''若$f_{x}^{′}(x_{0}, y_{0}) = 0$，则$f_{y}^{′}(x_{0}, y_{0}) = 0$'', ''若$f_{x}^{′}(x_{0}, y_{0}) = 0$，则$f_{y}^{′}(x_{0}, y_{0}) \\\\neq 0$'', ''若$f_{x}^{′}(x_{0}, y_{0}) \\\\neq 0$，则$f_{y}^{′}(x_{0}, y_{0}) = 0$'', ''若$f_{x}^{′}(x_{0}, y_{0}) \\\\neq 0$，则$f_{y}^{′}(x_{0}, y_{0}) \\\\neq 0$'']', "['D']", '由拉格朗日乘数法，在约束条件$φ(x, y) = 0$下，$f(x, y)$在点$(x_{0}, y_{0})$取得极值的必要条件是存在常数$λ$，使得：
$$
f_{x}^{′}(x_{0}, y_{0}) + λφ_{x}^{′}(x_{0}, y_{0}) = 0
$$

$$
f_{y}^{′}(x_{0}, y_{0}) + λφ_{y}^{′}(x_{0}, y_{0}) = 0
$$
且$φ(x_{0}, y_{0}) = 0$。由第二式及$φ_{y}^{′}(x_{0}, y_{0}) \\neq 0$，可得：
$$
λ = −\\frac{f_{y}^{′}(x_{0}, y_{0})}{φ_{y}^{′}(x_{0}, y_{0})}
$$
代入第一式得：
$$
f_{x}^{′}(x_{0}, y_{0}) = \\frac{f_{y}^{′}(x_{0}, y_{0})φ_{x}^{′}(x_{0}, y_{0})}{φ_{y}^{′}(x_{0}, y_{0})}
$$
若$f_{x}^{′}(x_{0}, y_{0}) \\neq 0$，则右边不为零，故$f_{y}^{′}(x_{0}, y_{0}) \\neq 0$（因为$φ_{y}^{′}(x_{0}, y_{0}) \\neq 0$，且$φ_{x}^{′}(x_{0}, y_{0})$不能使乘积为零）。因此选项 D 正确。
选项 A 和 B 错误，因为当$f_{x}^{′}(x_{0}, y_{0}) = 0$时，由关系式可知$f_{y}^{′}(x_{0}, y_{0})$可能为零也可能非零（取决于$φ_{x}^{′}(x_{0}, y_{0})$）。选项 C 错误，因为若$f_{x}^{′}(x_{0}, y_{0}) \\neq 0$，则$f_{y}^{′}(x_{0}, y_{0}) \\neq 0$。', 9, 'Mogullzr', '2026-01-29 14:13:53', 9, 'Mogullzr', '2026-01-29 14:13:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1828');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1828');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1828');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1829, '2006年考研数学卷1第11题', '简单', '考研数学2006年卷1真题', '设$a_{1},  a_{2},  ⋯  ,  a_{s}$均为$n$维列向量，$A$是$m × n$矩阵，下列选项正确的是', '[''若$a_{1},  a_{2},  ⋯  ,  a_{s}$线性相关，则$Aa_{1},  Aa_{2}, ⋯  ,  Aa_{s}$线性相关'', ''若$a_{1},  a_{2},  ⋯  ,  a_{s}$线性相关，则$Aa_{1},  Aa_{2}, ⋯  ,  Aa_{s}$线性无关'', ''若$a_{1},  a_{2},  ⋯  ,  a_{s}$线性无关，则$Aa_{1},  Aa_{2}, ⋯  ,  Aa_{s}$线性相关'', ''若$a_{1},  a_{2},  ⋯  ,  a_{s}$线性无关，则$Aa_{1},  Aa_{2}, ⋯  ,  Aa_{s}$线性无关'']', "['A']", '若$a_{1}, a_{2}, ⋯  , a_{s}$线性相关，则存在不全为零的标量$c_{1}, c_{2}, ⋯  , c_{s}$，使得$c_{1}a_{1} + c_{2}a_{2} + ⋯ + c_{s}a_{s} = 0$。两边左乘矩阵$A$，由线性性质得$c_{1}Aa_{1} + c_{2}Aa_{2} + ⋯ + c_{s}Aa_{s} = 0$，由于$c_{1}, c_{2}, ⋯  , c_{s}$不全为零，因此$Aa_{1}, Aa_{2}, ⋯  , Aa_{s}$线性相关。故选项A正确。选项B错误，因为线性相关组经变换后可能仍线性相关。选项C和D不一定成立，例如当$A$为零矩阵时，无论$a_{1}, a_{2}, ⋯  , a_{s}$是否线性无关，$Aa_{1}, Aa_{2}, ⋯  , Aa_{s}$都为零向量，线性相关；当$A$为单位矩阵时，若$a_{1}, a_{2}, ⋯  , a_{s}$线性无关，则$Aa_{1}, Aa_{2}, ⋯  , Aa_{s}$也线性无关。', 9, 'Mogullzr', '2026-01-29 14:13:54', 9, 'Mogullzr', '2026-01-29 14:13:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1829');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1829');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1829');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1830, '2006年考研数学卷1第12题', '简单', '考研数学2006年卷1真题', '设$A$为$3$阶矩阵，将$A$的第$2$行加到第$1$行得$B$，
再将$B$的第$1$列的$−1$倍加到第$2$列得$C$，
记$P = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，则', '[''$C = P^{−1}AP$'', ''$C = PAP^{−1}$'', ''$C = P^{T}AP$'', ''$C = PAP^{T}$'']', "['B']", '应选 (B)。由初等变换与初等矩阵的关系，可知
$$
B = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) A = PA,  C = B \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = BQ.
$$
因为
$$
PQ = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = E,
$$
所以$Q = P^{−1}$，从而$C = BQ = BP^{−1} = PAP^{−1}$。', 9, 'Mogullzr', '2026-01-29 14:13:54', 9, 'Mogullzr', '2026-01-29 14:13:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1830');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1830');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1830');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1831, '2006年考研数学卷1第13题', '简单', '考研数学2006年卷1真题', '设$A,  B$为随机事件，且$P(B) > 0,  P(A∣B) = 1$，则必有', '[''$P(A ∪ B) > P(A)$．'', ''$P(A ∪ B) > P(B)$．'', ''$P(A ∪ B) = P(A)$．'', ''$P(A ∪ B) = P(B)$．'']', "['C']", '
已知$P(B) > 0$且$P(A∣B) = 1$，由条件概率公式

$$
P(A∣B) = \\frac{P(A ∩ B)}{P(B)}
$$
可得

$$
P(A ∩ B) = P(B)
$$
代入并集的概率公式

$$
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
$$
得到

$$
P(A ∪ B) = P(A) + P(B) - P(B) = P(A)
$$
因此，$P(A ∪ B) = P(A)$必然成立，对应选项 C。其他选项不一定成立：选项 A 和 B 要求严格不等式，但$P(A ∪ B) = P(A)$可能等于$P(A)$或$P(B)$；选项 D 要求$P(A ∪ B) = P(B)$，但该等式仅在$P(A) = P(B)$时成立，不一定总是成立。', 9, 'Mogullzr', '2026-01-29 14:13:54', 9, 'Mogullzr', '2026-01-29 14:13:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1831');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1831');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1832, '2006年考研数学卷1第14题', '简单', '考研数学2006年卷1真题', '设随机变量$X$服从正态分布$N(μ_{1},  σ_{1}^{2})$，$Y$服从正态分布$N(μ_{2},  σ_{2}^{2})$，
且\\goodbreak$P\\{∣X - μ_{1}∣ < 1\\} > P\\{∣Y - μ_{2}∣ < 1\\}$，则必有', '[''$σ_{1} < σ_{2}$．'', ''$σ_{1} > σ_{2}$．'', ''$μ_{1} < μ_{2}$．'', ''$μ_{1} > μ_{2}$．'']', "['A']", '将随机变量标准化，有$\\frac{X-μ_{1}}{σ_{1}} ∼ N(0, 1)$，所以
$$
\\begin{array}{cc}
P(∣X - μ_{1}∣ < 1) & = P (​\\frac{X - μ_{1}}{σ_{1}}​ < \\frac{1}{σ_{1}}) = 2P \\{0 < \\frac{X - μ_{1}}{σ_{1}} < \\frac{1}{σ_{1}}\\} \\\\
 & = 2  \\lbrack Φ (\\frac{1}{σ_{1}}) - Φ(0) \\rbrack  = 2Φ (\\frac{1}{σ_{1}}) - 1. \\\\
\\end{array}
$$
同理可得$P(∣Y - μ_{2}∣ < 1) = 2Φ (\\frac{1}{σ_{2}}) - 1$。因为$Φ(x)$是单调递增函数，所以当
$$
P\\{∣X - μ_{1}∣ < 1\\} > P\\{∣Y - μ_{2}∣ < 1\\}
$$
时，$2Φ (\\frac{1}{σ_{1}}) - 1 > 2Φ (\\frac{1}{σ_{2}}) - 1$，即$\\frac{1}{σ_{1}} > \\frac{1}{σ_{2}}$，所以$σ_{1} < σ_{2}$。', 9, 'Mogullzr', '2026-01-29 14:13:54', 9, 'Mogullzr', '2026-01-29 14:13:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1832');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1832');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1833, '2006年考研数学卷1第15题', '简单', '考研数学2006年卷1真题', '（本题满分 10 分）设区域$D = \\{(x, y) ​x^{2} + y^{2} ≤ 1, x ≥ 0\\}$，
计算二重积分$I = \\iint_{D} \\frac{1+xy}{1+x^{2}+y^{2}}dxdy$．', '[]', '

$$
\\frac{π}{2} \\ln 2
$$

', '考虑区域$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 1, x ≥ 0\\}$，即上半圆和下半圆各一半，但$x ≥ 0$对应右半圆。使用极坐标变换：令$x = r \\cos θ$，$y = r \\sin θ$，则$dx dy = r dr dθ$，积分区域变为$r ∈  \\lbrack 0, 1 \\rbrack$，$θ ∈  \\lbrack −\\frac{π}{2}, \\frac{π}{2} \\rbrack$。被积函数化为：

$$
\\frac{1 + xy}{1 + x^{2} + y^{2}} = \\frac{1 + r^{2} \\cos θ \\sin θ}{1 + r^{2}}
$$

因此，积分变为：

$$
I = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\int_{0}^{1} \\frac{1 + r^{2} \\cos θ \\sin θ}{1 + r^{2}} ⋅ r dr dθ
$$

拆分为两部分：

$$
I = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\int_{0}^{1} \\frac{r}{1 + r^{2}} dr dθ + \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\int_{0}^{1} \\frac{r^{3} \\cos θ \\sin θ}{1 + r^{2}} dr dθ
$$

计算第一部分：

$$
\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} dθ = π,  \\int_{0}^{1} \\frac{r}{1 + r^{2}} dr = \\frac{1}{2} \\ln 2
$$

所以第一部分为$π ⋅ \\frac{1}{2} \\ln 2 = \\frac{π}{2} \\ln 2$。
计算第二部分：

$$
\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos θ \\sin θ dθ = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\frac{1}{2} \\sin 2θ dθ
$$

由于$\\sin 2θ$是奇函数，积分区间对称，该积分值为 0，因此第二部分为 0。
综上，$I = \\frac{π}{2} \\ln 2$.
', 9, 'Mogullzr', '2026-01-29 14:13:54', 9, 'Mogullzr', '2026-01-29 14:13:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1833');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1833');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1833');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1834, '2006年考研数学卷1第16题', '简单', '考研数学2006年卷1真题', '（本题满分 12 分）设数列$\\{x_{n}\\}$满足$0 < x_{1} < π$,$x_{n+1} = \\sin x_{n} (n = 1, 2, ⋯ )$．(1) 证明$\\lim_{n→∞} x_{n}$存在，并求该极限；(2) 计算$\\lim_{n→∞} (\\frac{x_{n+1}}{x_{n}})^{\\frac{1}{x_{n}^{2}}}$．', '[]', '
(1)$\\lim_{n→∞} x_{n} = 0$
(2)$\\lim_{n→∞} (\\frac{x_{n+1}}{x_{n}})^{\\frac{1}{x_{n}^{2}}} = e^{−\\frac{1}{6}}$
', '
(1) 由于$0 < x_{1} < π$，且$x_{n+1} = \\sin x_{n}$，易知对于$n ≥ 1$，有$0 < x_{n+1} = \\sin x_{n} < x_{n}$，即数列$\\{x_{n}\\}$单调递减且有下界 0。由单调有界定理，$\\lim_{n→∞} x_{n}$存在，记为$L$。在递推关系$x_{n+1} = \\sin x_{n}$中取极限，得$L = \\sin L$。当$L > 0$时，$\\sin L < L$，故只有$L = 0$。因此$\\lim_{n→∞} x_{n} = 0$。
(2) 需要计算$\\lim_{n→∞} (\\frac{x_{n+1}}{x_{n}})^{\\frac{1}{x_{n}^{2}}}$。由$x_{n+1} = \\sin x_{n}$，有$\\frac{x_{n+1}}{x_{n}} = \\frac{\\sin x_{n}}{x_{n}}$。当$x_{n} → 0$时，利用泰勒展开$\\sin x_{n} = x_{n} - \\frac{x_{n}^{3}}{6} + o(x_{n}^{3})$，故$\\frac{\\sin x_{n}}{x_{n}} = 1 - \\frac{x_{n}^{2}}{6} + o(x_{n}^{2})$。因此，

$$
(\\frac{x_{n+1}}{x_{n}})^{\\frac{1}{x_{n}^{2}}} = (1 - \\frac{x_{n}^{2}}{6} + o(x_{n}^{2}))^{\\frac{1}{x_{n}^{2}}} .
$$

令$y_{n} = \\frac{1}{x_{n}^{2}}$，则当$n → ∞$时，$y_{n} → ∞$，上式化为

$$
(1 - \\frac{1}{6y_{n}} + o (\\frac{1}{y_{n}}))^{y_{n}} .
$$

由极限理论，该极限为$e^{−\\frac{1}{6}}$。 Alternatively, 取对数：

$$
\\ln ((\\frac{x_{n+1}}{x_{n}})^{\\frac{1}{x_{n}^{2}}}) = \\frac{1}{x_{n}^{2}} \\ln (\\frac{\\sin x_{n}}{x_{n}}) .
$$

利用$\\ln (\\frac{\\sin x_{n}}{x_{n}}) = \\ln (1 - \\frac{x_{n}^{2}}{6} + o(x_{n}^{2})) = −\\frac{x_{n}^{2}}{6} + o(x_{n}^{2})$，故

$$
\\frac{1}{x_{n}^{2}} \\ln (\\frac{\\sin x_{n}}{x_{n}}) = −\\frac{1}{6} + o(1) → −\\frac{1}{6},
$$

所以原极限为$e^{−\\frac{1}{6}}$。
', 9, 'Mogullzr', '2026-01-29 14:13:55', 9, 'Mogullzr', '2026-01-29 14:13:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1834');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1834');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1072', '1834');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1835, '2006年考研数学卷1第17题', '简单', '考研数学2006年卷1真题', '（本题满分 12 分）将函数$f(x) = \\frac{x}{2+x-x^{2}}$展开成$x$的幂级数．', '[]', '
先对函数作分解再用公式即可将函数展开成幂级数：

$$
f(x) = \\frac{1}{(1 + x)(2 - x)} = \\frac{1}{3} (\\frac{1}{1 + x} + \\frac{1}{2 - x}) = \\frac{1}{3} ⋅ \\frac{1}{1 + x} + \\frac{1}{6} ⋅ \\frac{1}{1 - \\frac{x}{2}}
$$


$$
= \\frac{1}{3} \\sum_{n=0}^{∞}(−1)nx^{n} + \\frac{1}{6} \\sum_{n=0}^{∞} \\frac{x^{n}}{2^{n}} = \\frac{1}{3} \\sum_{n=0}^{∞}  \\lbrack (−1)n + \\frac{1}{2^{n+1}} \\rbrack  x^{n+1} (∣x∣ < 1).
$$

', '
先对函数作分解再用公式即可将函数展开成幂级数：

$$
f(x) = \\frac{1}{(1 + x)(2 - x)} = \\frac{1}{3} (\\frac{1}{1 + x} + \\frac{1}{2 - x}) = \\frac{1}{3} ⋅ \\frac{1}{1 + x} + \\frac{1}{6} ⋅ \\frac{1}{1 - \\frac{x}{2}}
$$


$$
= \\frac{1}{3} \\sum_{n=0}^{∞}(−1)nx^{n} + \\frac{1}{6} \\sum_{n=0}^{∞} \\frac{x^{n}}{2^{n}} = \\frac{1}{3} \\sum_{n=0}^{∞}  \\lbrack (−1)n + \\frac{1}{2^{n+1}} \\rbrack  x^{n+1} (∣x∣ < 1).
$$

', 9, 'Mogullzr', '2026-01-29 14:13:55', 9, 'Mogullzr', '2026-01-29 14:13:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1835');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1835');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1835');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1836, '2006年考研数学卷1第18题', '简单', '考研数学2006年卷1真题', '（本题满分 12 分）设函数$f(u)$在$(0, +∞)$内具有二阶导数，
且$z = f (\\sqrt{x^{2} + y^{2}})$满足等式
$$
\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}} = 0.
$$
(1) 验证$f^{′′}(u) + \\frac{f^{′}(u)}{u} = 0$．(2) 若$f(1) = 0, f^{′}(1) = 1$，求函数$f(u)$的表达式．', '[]', '
(1) 验证过程见解析。
(2)$f(u) = \\ln u$.
', '
(Ⅰ) 由$z = f(u), u = \\sqrt{x^{2} + y^{2}}$可得


$$
\\begin{array}{c}
\\frac{∂z}{∂x} = f^{′}(\\sqrt{x^{2} + y^{2}}) ⋅ \\frac{x}{\\sqrt{x^{2} + y^{2}}},  \\frac{∂z}{∂y} = f^{′}(\\sqrt{x^{2} + y^{2}}) ⋅ \\frac{y}{\\sqrt{x^{2} + y^{2}}}, \\\\
\\frac{∂^{2}z}{∂x^{2}} = f^{′′}(\\sqrt{x^{2} + y^{2}}) ⋅ \\frac{x^{2}}{x^{2} + y^{2}} + f^{′}(\\sqrt{x^{2} + y^{2}}) ⋅ \\frac{y^{2}}{(x^{2} + y^{2})3/2}, \\\\
\\end{array}
$$

代入$\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}} = 0$，得


$$
f^{′′}(\\sqrt{x^{2} + y^{2}}) + \\frac{f^{′}(\\sqrt{x^{2} + y^{2}})}{\\sqrt{x^{2} + y^{2}}} = 0,
$$

所以$f^{′′}(u) + \\frac{f^{′}(u)}{u} = 0$成立。
(Ⅱ) 令$f^{′}(u) = p$，则方程变成$\\frac{dp}{du} = −\\frac{p}{u}$，则$∫ \\frac{dp}{p} = − ∫ \\frac{du}{u}$，解得$f^{′}(u) = p = \\frac{C_{1}}{u}$。因为$f^{′}(1) = 1$，所以$C_{1} = 1$，从而$f^{′}(u) = \\frac{1}{u}$。解得$f(u) = \\ln u + C_{2}$，又因为$f(1) = 0$，所以$C_{2} = 0$，得$f(u) = \\ln u$。
', 9, 'Mogullzr', '2026-01-29 14:13:55', 9, 'Mogullzr', '2026-01-29 14:13:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1836');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1836');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1836');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1837, '2006年考研数学卷1第19题', '简单', '考研数学2006年卷1真题', '（本题满分 12 分）设在上半平面$D = \\{(x, y)​y > 0\\}$内，函数$f(x, y)$是有连续偏导数，
且对任意的$t > 0$都有$f(tx, ty) = t^{−2}f(x, y)$．
证明：对$D$内的任意分段光滑的有向简单闭曲线$L$，
都有$∮_{L} yf(x, y)dx - xf(x, y)dy = 0$．', '[]', '
对任意分段光滑的有向简单闭曲线$L$，有$∮_{L} yf(x, y) dx - xf(x, y) dy = 0$。
', '
考虑曲线积分$∮_{L} P dx + Q dy$，其中$P = yf(x, y)$，$Q = −xf(x, y)$。由于$f(x, y)$在上半平面$D$内具有连续偏导数，且$L$是分段光滑的有向简单闭曲线，可应用格林定理：


$$
∮_{L} P dx + Q dy = \\iint_{D} (\\frac{∂Q}{∂x} - \\frac{∂P}{∂y}) dx dy,
$$

其中$D$是$L$所围成的区域。
计算偏导数：


$$
\\frac{∂Q}{∂x} = \\frac{∂}{∂x} (−xf(x, y)) = − (f(x, y) + x\\frac{∂f}{∂x}) ,
$$



$$
\\frac{∂P}{∂y} = \\frac{∂}{∂y} (yf(x, y)) = f(x, y) + y\\frac{∂f}{∂y}.
$$

于是，


$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = − (f(x, y) + x\\frac{∂f}{∂x}) - (f(x, y) + y\\frac{∂f}{∂y}) = −2f(x, y) - x\\frac{∂f}{∂x} - y\\frac{∂f}{∂y}.
$$

由题设，对任意$t > 0$，有$f(tx, ty) = t^{−2}f(x, y)$，即$f$是齐次函数，阶数为$−2$。根据欧拉齐次函数定理，有


$$
x\\frac{∂f}{∂x} + y\\frac{∂f}{∂y} = −2f(x, y).
$$

代入得


$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = −2f(x, y) - (−2f(x, y)) = 0.
$$

因此，


$$
\\iint_{D} 0 dx dy = 0,
$$

即


$$
∮_{L} yf(x, y) dx - xf(x, y) dy = 0.
$$

证毕。
', 9, 'Mogullzr', '2026-01-29 14:13:55', 9, 'Mogullzr', '2026-01-29 14:13:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1837');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1838, '2006年考研数学卷1第20题', '简单', '考研数学2006年卷1真题', '（本题满分 9 分）已知非齐次线性方程组$\\begin{cases} x_{1} + x_{2} + x_{3} + x_{4} = −1 \\\\ 4x_{1} + 3x_{2} + 5x_{3} - x_{4} = −1 \\\\ ax_{1} + x_{2} + 3x_{3} + bx_{4} = 1 \\end{cases}$有$3$个线性无关的解．(1) 证明方程组系数矩阵$A$的秩$r(A) = 2$；(2) 求$a, b$的值及方程组的通解．', '[]', '
(1) 系数矩阵$A$的秩$r(A) = 2$。
(2)$a = 2$，$b = −3$，方程组的通解为


$$
x = \\left( \\begin{array}{c}
2 \\\\
−3 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + c_{1} \\left( \\begin{array}{c}
−2 \\\\
1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{c}
4 \\\\
−5 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$

其中$c_{1}, c_{2}$为任意常数。
', '
(1) 已知非齐次线性方程组有 3 个线性无关的解，设为$η_{1}, η_{2}, η_{3}$。则$η_{1} - η_{2}$和$η_{1} - η_{3}$是齐次方程组$Ax = 0$的解，且线性无关，因此齐次解空间的维数$dim(ker(A)) ≥ 2$。由秩-零化度定理，$r(A) = 4 - dim(ker(A)) ≤ 2$。另一方面，系数矩阵$A$的前两行线性独立，因为从


$$
c_{1} \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{cccc}
4 & 3 & 5 & −1 \\\\
\\end{array} \\right) = 0
$$

可得$c_{1} = c_{2} = 0$，所以$r(A) ≥ 2$。若$r(A) = 3$，则$dim(ker(A)) = 1$，解集为仿射空间，其线性无关解的最大个数为 2，与有 3 个线性无关解矛盾。因此$r(A) = 2$。
(2) 对系数矩阵$A$进行行变换：


$$
A = \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
4 & 3 & 5 & −1 \\\\
a & 1 & 3 & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
0 & −1 & 1 & −5 \\\\
0 & 1 - a & 3 - a & b - a \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
0 & 1 & −1 & 5 \\\\
0 & 0 & 4 - 2a & b + 4a - 5 \\\\
\\end{array} \\right) .
$$

为使$r(A) = 2$，需第三行为零行，即


$$
4 - 2a = 0,  b + 4a - 5 = 0.
$$

解得$a = 2$，$b = −3$。此时增广矩阵为


$$
B = \\left( \\begin{array}{ccccc}
1 & 1 & 1 & 1 & −1 \\\\
4 & 3 & 5 & −1 & −1 \\\\
2 & 1 & 3 & −3 & 1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 1 & 1 & 1 & −1 \\\\
0 & −1 & 1 & −5 & 3 \\\\
0 & 0 & 0 & 0 & 0 \\\\
\\end{array} \\right) .
$$

由第二行得$−x_{2} + x_{3} - 5x_{4} = 3$，即$x_{2} = x_{3} - 5x_{4} - 3$。代入第一行得


$$
x_{1} + (x_{3} - 5x_{4} - 3) + x_{3} + x_{4} = −1,
$$

即$x_{1} = −2x_{3} + 4x_{4} + 2$。故通解为


$$
x = \\left( \\begin{array}{c}
2 \\\\
−3 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + c_{1} \\left( \\begin{array}{c}
−2 \\\\
1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{c}
4 \\\\
−5 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$

其中$c_{1}, c_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:13:55', 9, 'Mogullzr', '2026-01-29 14:13:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1838');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1838');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1839, '2006年考研数学卷1第21题', '简单', '考研数学2006年卷1真题', '（本题满分 9 分）设$3$阶实对称矩阵$A$的各行元素之和均为$3$，
向量$α_{1} = (−1, 2, −1)^{T}$,$α_{2} = (0, −1, 1)^{T}$是线性方程组$Ax = 0$的两个解．(1) 求$A$的特征值与特征向量；(2) 求正交矩阵$Q$和对角矩阵$Λ$，使得$Q^{T}AQ = Λ$．', '[]', '
(1) 特征值与特征向量
特征值：$0$（二重），$3$（单根）特征向量：属于$0$：$k_{1}(−1, 2, −1)T + k_{2}(0, −1, 1)T$，$k_{1}, k_{2}$不全为 0属于$3$：$k_{3}(1, 1, 1)T$，$k_{3} \\neq 0$
(2) 正交矩阵$Q$与对角矩阵$Λ$


$$
Q = \\left( \\begin{array}{ccc}
−\\frac{\\sqrt{6}}{6} & −\\frac{\\sqrt{2}}{2} & \\frac{\\sqrt{3}}{3} \\\\
\\frac{\\sqrt{6}}{3} & 0 & \\frac{\\sqrt{3}}{3} \\\\
−\\frac{\\sqrt{6}}{6} & \\frac{\\sqrt{2}}{2} & \\frac{\\sqrt{3}}{3} \\\\
\\end{array} \\right) ,  Λ = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right)
$$

满足$Q^{T}AQ = Λ$。
', '
(Ⅰ) 由题设条件


$$
Aα_{1} = 0 = 0 ⋅ α_{1},  Aα_{2} = 0 = 0 ⋅ α_{2},
$$

故$α_{1}, α_{2}$是$A$的对应于特征值$λ = 0$的特征向量。
又因为$α_{1}, α_{2}$线性无关，所以$λ = 0$至少是$A$的二重特征值。
此外，由$A$的每行元素之和为 3，可得


$$
A(1, 1, 1)T = (3, 3, 3)T = 3 ⋅ (1, 1, 1)T,
$$

因此$α_{3} = (1, 1, 1)T$是$A$的对应于特征值$λ_{3} = 3$的特征向量。
结合前面结论可知，$λ = 0$恰为二重特征值。
于是$A$的特征值为$0, 0, 3$：
属于特征值$0$的特征向量为$k_{1}α_{1} + k_{2}α_{2}$，其中$k_{1}, k_{2}$不全为零；属于特征值$3$的特征向量为$k_{3}α_{3}$，其中$k_{3} \\neq 0$。
(Ⅱ) 将特征向量$α_{1}, α_{2}$正交化得

$$
β_{1} = α_{1} = (−1, 2, −1)T,  β_{2} = (−\\frac{1}{2}, 0, \\frac{1}{2}) .
$$

再将$β_{1}, β_{2}, α_{3}$单位化，得

$$
η_{1} = (−\\frac{\\sqrt{6}}{6}, \\frac{\\sqrt{6}}{3}, −\\frac{\\sqrt{6}}{6})^{T} ,  η_{2} = (−\\frac{\\sqrt{2}}{2}, 0, \\frac{\\sqrt{2}}{2})^{T} ,  η_{3} = (\\frac{\\sqrt{3}}{3}, \\frac{\\sqrt{3}}{3}, \\frac{\\sqrt{3}}{3})^{T} .
$$

令$Q = (η_{1}, η_{2}, η_{3})$，则$Q$是正交矩阵，并且$Q^{T}AQ = Q^{−1}AQ = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right) .$
', 9, 'Mogullzr', '2026-01-29 14:13:56', 9, 'Mogullzr', '2026-01-29 14:13:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1839');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1839');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1840, '2006年考研数学卷1第22题', '简单', '考研数学2006年卷1真题', '（本题满分 9 分）随机变量$X$的概率密度为
$$
f_{X}(x) = \\begin{cases} \\frac{1}{2} & −1 < x < 0; \\\\ \\frac{1}{4} & 0 ≤ x < 2; \\\\ 0 & 其他. \\end{cases}
$$
$令Y = X^{2}$，$F (x, y)$为二维随机变量$(X, Y)$的分布函数．求(1)$Y$的概率密度$f_{Y}(y)$；(2)$F (−\\frac{1}{2}, 4)$．', '[]', '(1)$Y$的概率密度为

$$
f_{Y}(y) = \\begin{cases} \\frac{3}{8}\\frac{1}{\\sqrt{y}} & 0 < y < 1 \\\\ \\frac{1}{8}\\frac{1}{\\sqrt{y}} & 1 < y < 4 \\\\ 0 & 其他 \\end{cases}
$$

(2)$F (−\\frac{1}{2}, 4) = \\frac{1}{4}$
', '(1) 求$Y$的概率密度$f_{Y}(y)$。由于$Y = X^{2}$，先求$Y$的分布函数$F_{Y}(y) = P(Y ≤ y) = P(X^{2} ≤ y)$。对于$y < 0$，$F_{Y}(y) = 0$；对于$y ≥ 0$，$P(X^{2} ≤ y) = P(−\\sqrt{y} ≤ X ≤ \\sqrt{y})$。考虑$X$的概率密度分段情况：
当$0 < y ≤ 1$时，$−\\sqrt{y} ≥ −1$，且$\\sqrt{y} ≤ 1 < 2$，因此$F_{Y}(y) = \\int_{−\\sqrt{y}}^{\\sqrt{y}} f_{X}(x) dx = \\int_{−\\sqrt{y}}^{0} \\frac{1}{2} dx + \\int_{0}^{\\sqrt{y}} \\frac{1}{4} dx = \\frac{\\sqrt{y}}{2} + \\frac{\\sqrt{y}}{4} = \\frac{3\\sqrt{y}}{4}.$当$1 < y < 4$时，$−\\sqrt{y} < −1$，因此积分下限为$−1$，$F_{Y}(y) = \\int_{−1}^{\\sqrt{y}} f_{X}(x) dx = \\int_{−1}^{0} \\frac{1}{2} dx + \\int_{0}^{\\sqrt{y}} \\frac{1}{4} dx = \\frac{1}{2} + \\frac{\\sqrt{y}}{4}.$对$F_{Y}(y)$求导得概率密度：当$0 < y < 1$时，$f_{Y}(y) = \\frac{d}{dy} (\\frac{3\\sqrt{y}}{4}) = \\frac{3}{8}\\frac{1}{\\sqrt{y}}$。当$1 < y < 4$时，$f_{Y}(y) = \\frac{d}{dy} (\\frac{1}{2} + \\frac{\\sqrt{y}}{4}) = \\frac{1}{8}\\frac{1}{\\sqrt{y}}$。
在其他区间$f_{Y}(y) = 0$。
(2) 求$F (−\\frac{1}{2}, 4) = P(X ≤ −\\frac{1}{2}, Y ≤ 4)$。由于$Y = X^{2}$，且$X$的取值范围为$(−1, 2)$，有$Y < 4$，故$Y ≤ 4$恒成立。因此，

$$
F (−\\frac{1}{2}, 4) = P (X ≤ −\\frac{1}{2}) = \\int_{−1}^{−1/2} f_{X}(x) dx = \\int_{−1}^{−1/2} \\frac{1}{2} dx = \\frac{1}{2} (−\\frac{1}{2} - (−1)) = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:13:56', 9, 'Mogullzr', '2026-01-29 14:13:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1840');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1840');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1840');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1841, '2006年考研数学卷1第23题', '简单', '考研数学2006年卷1真题', '（本题满分 9 分）设总体$X$的概率密度为
$$
f(x, θ) = \\begin{cases} θ & 0 < x < 1 \\\\ 1 - θ & 1 ≤ x < 2 \\\\ 0 & 其它 \\end{cases}
$$
其中$θ$是未知参数（$0 < θ < 1$），$X_{1}, X_{2} ⋯  , X_{n}$为来自总体$X$的简单随机样本，
记$N$为样本值$x_{1}, x_{2} ⋯  , x_{n}$中小于$1$的个数，求$θ$的最大似然估计．', '[]', '$\\hat{θ} = \\frac{N}{n}$
', '依题设，似然函数

$$
L(θ) = \\begin{cases} θ^{N}(1 - θ)n−N & 0 < x_{i_{1}}, x_{i_{2}}, ⋯ x_{i_{N}} < 1, 1 ≤ x_{i_{N+1}}, x_{i_{N+2}}, ⋯ x_{i_{n}} < 2; \\\\ 0 & 其他. \\end{cases}
$$

在$0 < x_{i_{1}}, x_{i_{2}}, ⋯ x_{i_{N}} < 1, 1 ≤ x_{i_{N+1}}, x_{i_{N+2}}, ⋯ x_{i_{n}} < 2$时，等式两边同取自然对数得

$$
\\ln L(θ) = N \\ln θ + (n - N) \\ln(1 - θ).
$$

两边对$θ$求导并令导数为零，得到

$$
\\frac{d \\ln L(θ)}{dθ} = \\frac{N}{θ} - \\frac{n - N}{1 - θ} = 0,
$$

解得$θ = \\frac{N}{n}$，所以$θ$的最大似然估计值为$\\hat{θ} = \\frac{N}{n}$.
', 9, 'Mogullzr', '2026-01-29 14:13:56', 9, 'Mogullzr', '2026-01-29 14:13:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1841');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1841');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1841');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1842, '2006年考研数学卷2第1题', '简单', '考研数学2006年卷2真题', '曲线$y = \\frac{x+4 \\sin x}{5x-2 \\cos x}$的水平渐近线方程为 ______．', '[]', '
$y = \\frac{1}{5}$
', '
要求曲线$y = \\frac{x+4 \\sin x}{5x-2 \\cos x}$的水平渐近线，需计算$\\lim_{x→∞} y$和$\\lim_{x→−∞} y$。
将分子和分母同时除以$x$，得：


$$
y = \\frac{1 + \\frac{4 \\sin x}{x}}{5 - \\frac{2 \\cos x}{x}}
$$

当$x → ∞$或$x → −∞$时，$\\frac{\\sin x}{x} → 0$和$\\frac{\\cos x}{x} → 0$，因为$\\sin x$和$\\cos x$有界，而$x$趋于无穷。
因此，


$$
\\lim_{x→∞} y = \\frac{1 + 0}{5 - 0} = \\frac{1}{5},  \\lim_{x→−∞} y = \\frac{1 + 0}{5 - 0} = \\frac{1}{5}
$$

故水平渐近线方程为$y = \\frac{1}{5}$。
', 9, 'Mogullzr', '2026-01-29 14:13:58', 9, 'Mogullzr', '2026-01-29 14:13:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1842');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1842');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1842');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1843, '2006年考研数学卷2第2题', '简单', '考研数学2006年卷2真题', '设函数$f(x) = \\begin{cases} \\frac{1}{x^{3}} \\int_{0}^{x} \\sin t^{2}dt & x \\neq 0 \\\\ a & x = 0 \\end{cases}$在$x = 0$处连续，则$a =$______．', '[]', '$\\frac{1}{3}$
', '函数在$x = 0$处连续，因此需满足$\\lim_{x→0} f(x) = f(0) = a$。即计算极限：

$$
\\lim_{x→0} \\frac{1}{x^{3}} \\int_{0}^{x} \\sin t^{2} dt
$$

该极限为$\\frac{0}{0}$型不定式，应用洛必达法则。分子导数为$\\frac{d}{dx} \\int_{0}^{x} \\sin t^{2} dt = \\sin x^{2}$，分母导数为$3x^{2}$，因此：

$$
\\lim_{x→0} \\frac{\\sin x^{2}}{3x^{2}}
$$

当$x → 0$时，$\\sin x^{2} ∼ x^{2}$，故：

$$
\\lim_{x→0} \\frac{\\sin x^{2}}{3x^{2}} = \\frac{1}{3}
$$

因此，$a = \\frac{1}{3}$。
另解：使用泰勒展开，$\\sin t^{2} = t^{2} - \\frac{t^{6}}{6} + ⋯$，积分得：

$$
\\int_{0}^{x} \\sin t^{2} dt = \\int_{0}^{x} (t^{2} - \\frac{t^{6}}{6} + ⋯ ) dt = \\frac{x^{3}}{3} - \\frac{x^{7}}{42} + ⋯
$$

于是：

$$
f(x) = \\frac{1}{x^{3}} (\\frac{x^{3}}{3} - \\frac{x^{7}}{42} + ⋯ ) = \\frac{1}{3} - \\frac{x^{4}}{42} + ⋯
$$

当$x → 0$时，$f(x) → \\frac{1}{3}$，故$a = \\frac{1}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:13:58', 9, 'Mogullzr', '2026-01-29 14:13:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1843');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1843');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1843');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1844, '2006年考研数学卷2第3题', '简单', '考研数学2006年卷2真题', '广义积分$\\int_{0}^{+∞}   \\frac{xdx}{(1+x^{2})2} =$______．', '[]', '
$\\frac{1}{2}$
', '
考虑积分$\\int_{0}^{+∞} \\frac{x}{(1+x^{2})2} dx$。令$u = 1 + x^{2}$，则$du = 2x dx$，即$x dx = \\frac{du}{2}$。当$x = 0$时，$u = 1$；当$x → +∞$时，$u → +∞$。积分变为：


$$
\\int_{1}^{+∞} \\frac{1}{u^{2}} ⋅ \\frac{du}{2} = \\frac{1}{2} \\int_{1}^{+∞} u^{−2} du
$$

计算积分：


$$
\\frac{1}{2} \\int_{1}^{+∞} u^{−2} du = \\frac{1}{2}  \\lbrack −u^{−1} \\rbrack _{1}^{+∞} = \\frac{1}{2} (\\lim_{u→+∞} (−\\frac{1}{u}) - (−\\frac{1}{1})) = \\frac{1}{2}(0 + 1) = \\frac{1}{2}
$$

因此，积分值为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1844');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1844');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1844');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1845, '2006年考研数学卷2第4题', '', '考研数学2006年卷2真题', '/problems/other/1820', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1846, '2006年考研数学卷2第5题', '简单', '考研数学2006年卷2真题', '设函数$y = y(x)$由方程$y = 1 - xe^{y}$确定，则$\\frac{dy}{dx}​_{x=0} =$______．', '[]', '
$−e$
', '
给定方程$y = 1 - xe^{y}$，当$x = 0$时，代入方程得$y = 1 - 0 ⋅ e^{y} = 1$，即$y(0) = 1$。
对方程两边关于$x$求导，注意$y$是$x$的函数：


$$
\\frac{dy}{dx} = −\\frac{d}{dx}(xe^{y}) = − (e^{y} + xe^{y}\\frac{dy}{dx})
$$

整理得：


$$
\\frac{dy}{dx} = −e^{y} - xe^{y}\\frac{dy}{dx}
$$

将含$\\frac{dy}{dx}$的项移到一边：


$$
\\frac{dy}{dx} + xe^{y}\\frac{dy}{dx} = −e^{y}
$$



$$
\\frac{dy}{dx}(1 + xe^{y}) = −e^{y}
$$

解得：


$$
\\frac{dy}{dx} = \\frac{−e^{y}}{1 + xe^{y}}
$$

代入$x = 0$和$y = 1$：


$$
\\frac{dy}{dx}​_{x=0} = \\frac{−e^{1}}{1 + 0 ⋅ e^{1}} = \\frac{−e}{1} = −e
$$

因此，$\\frac{dy}{dx}​_{x=0} = −e$。
', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1846');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1846');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1846');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1847, '2006年考研数学卷2第6题', '', '考研数学2006年卷2真题', '/problems/other/1823', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1848, '2006年考研数学卷2第7题', '', '考研数学2006年卷2真题', '/problems/other/1825', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1849, '2006年考研数学卷2第8题', '简单', '考研数学2006年卷2真题', '设$f(x)$是奇函数，除$x = 0$外处处连续，$x = 0$是其第一类间断点，则$\\int_{0}^{x} f(t)dt$是', '[''连续的奇函数．'', ''连续的偶函数．'', ''在$x = 0$间断的奇函数．'', ''在$x = 0$间断的偶函数．'']', "['B']", '设$F(x) = \\int_{0}^{x} f(t) dt$。首先，证明$F(x)$是偶函数。考虑$F(−x) = \\int_{0}^{−x} f(t) dt$，令$u = −t$，则$du = −dt$，积分限变为$t = 0$时$u = 0$，$t = −x$时$u = x$，因此$F(−x) = \\int_{0}^{−x} f(t) dt = \\int_{0}^{x} f(−u) (−du) = \\int_{0}^{x} −f(u) (−du) = \\int_{0}^{x} f(u) du = F(x)$，故$F(x)$是偶函数。其次，证明$F(x)$连续。由于$f(x)$是奇函数，除$x = 0$外处处连续，且$x = 0$是第一类间断点，故$f(x)$在任意区间上可积。积分函数$F(x)$对于可积函数是连续的，即使被积函数有跳跃间断点，也不影响积分函数的连续性。特别地，在$x = 0$处，$F(0) = \\int_{0}^{0} f(t) dt = 0$，且$\\lim_{x→0} F(x) = \\lim_{x→0} \\int_{0}^{x} f(t) dt = 0$，因此$F(x)$在$x = 0$处连续。综上，$F(x)$是连续的偶函数，故正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1849');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1849');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1849');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1850, '2006年考研数学卷2第9题', '简单', '考研数学2006年卷2真题', '设函数$g(x)$可微，$h(x) = e^{1+g(x)}$，$h^{′}(1) = 1$，$g^{′}(1) = 2$，则$g(1)$等于', '[''$\\\\ln 3 - 1$．'', ''$− \\\\ln 3 - 1$．'', ''$− \\\\ln 2 - 1$．'', ''$\\\\ln 2 - 1$．'']', "['C']", '给定$h(x) = e^{1+g(x)}$，求导得$h^{′}(x) = e^{1+g(x)} ⋅ g^{′}(x)$。代入$x = 1$，有$h^{′}(1) = e^{1+g(1)} ⋅ g^{′}(1) = 1$和$g^{′}(1) = 2$，所以$e^{1+g(1)} ⋅ 2 = 1$，即$e^{1+g(1)} = \\frac{1}{2}$。取自然对数，得$1 + g(1) = \\ln \\frac{1}{2} = − \\ln 2$，因此$g(1) = − \\ln 2 - 1$。对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1850');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1850');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1850');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1851, '2006年考研数学卷2第10题', '简单', '考研数学2006年卷2真题', '函数$y = c_{1}e^{x} + c_{2}e^{−2x} + xe^{x}$满足的一个微分方程是', '[''$y^{′′} - y^{′} - 2y = 3xe^{x}$．'', ''$y^{′′} - y^{′} - 2y = 3e^{x}$．'', ''$y^{′′} + y^{′} - 2y = 3xe^{x}$．'', ''$y^{′′} + y^{′} - 2y = 3e^{x}$．'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1851');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1851');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1851');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1852, '2006年考研数学卷2第11题', '', '考研数学2006年卷2真题', '/problems/other/1826', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1853, '2006年考研数学卷2第12题', '', '考研数学2006年卷2真题', '/problems/other/1828', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1854, '2006年考研数学卷2第13题', '', '考研数学2006年卷2真题', '/problems/other/1829', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1855, '2006年考研数学卷2第14题', '', '考研数学2006年卷2真题', '/problems/other/1830', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1856, '2006年考研数学卷2第15题', '简单', '考研数学2006年卷2真题', '（本题满分 10 分）试确定常数$A, B, C$的值，使得$e^{x}(1 + Bx + Cx^{2}) = 1 + Ax + o(x^{3})$，
其中$o(x^{3})$是当$x → 0$时比$x^{3}$高阶的无穷小．', '[]', '$A = \\frac{1}{3}$,$B = −\\frac{2}{3}$,$C = \\frac{1}{6}$
', '
将$e^{x}$展开为泰勒级数：

$$
e^{x} = 1 + x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6} + o(x^{3})
$$

左边表达式为：

$$
e^{x}(1 + Bx + Cx^{2}) = (1 + x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6} + o(x^{3})) (1 + Bx + Cx^{2})
$$

展开乘积，保留到$x^{3}$项：
常数项：$1 × 1 = 1$$x$项：$1 × Bx + x × 1 = (B + 1)x$$x^{2}$项：$1 × Cx^{2} + x × Bx + \\frac{x^{2}}{2} × 1 = (C + B + \\frac{1}{2}) x^{2}$$x^{3}$项：$x × Cx^{2} + \\frac{x^{2}}{2} × Bx + \\frac{x^{3}}{6} × 1 = (C + \\frac{B}{2} + \\frac{1}{6}) x^{3}$
因此，左边展开为：

$$
1 + (B + 1)x + (C + B + \\frac{1}{2}) x^{2} + (C + \\frac{B}{2} + \\frac{1}{6}) x^{3} + o(x^{3})
$$

右边为：

$$
1 + Ax + o(x^{3})
$$

比较系数：
$x$项系数：$B + 1 = A$$x^{2}$项系数：$C + B + \\frac{1}{2} = 0$$x^{3}$项系数：$C + \\frac{B}{2} + \\frac{1}{6} = 0$
解方程组：
由第二式和第三式：

$$
\\begin{array}{cc}
C + B & = −\\frac{1}{2} \\\\
C + \\frac{B}{2} & = −\\frac{1}{6} \\\\
\\end{array}
$$

相减得：

$$
\\frac{B}{2} = −\\frac{1}{3}  ⇒  B = −\\frac{2}{3}
$$

代入$C + B = −\\frac{1}{2}$得：

$$
C = −\\frac{1}{2} + \\frac{2}{3} = \\frac{1}{6}
$$

代入第一式得：

$$
A = −\\frac{2}{3} + 1 = \\frac{1}{3}
$$

因此，常数值为：

$$
A = \\frac{1}{3},  B = −\\frac{2}{3},  C = \\frac{1}{6}
$$

', 9, 'Mogullzr', '2026-01-29 14:13:59', 9, 'Mogullzr', '2026-01-29 14:13:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1856');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1856');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1856');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1857, '2006年考研数学卷2第16题', '简单', '考研数学2006年卷2真题', '（本题满分 10 分）
$$
∫ \\frac{arcsin e^{x}}{e^{x}}dx =
$$
', '[]', '

$$
∫ \\frac{arcsin e^{x}}{e^{x}} dx = −e^{−x} arcsin e^{x} + x - \\ln (1 + \\sqrt{1 - e^{2x}}) + C
$$

', '考虑积分$∫ \\frac{arcsin e^{x}}{e^{x}} dx$。使用分部积分法，令$u = arcsin e^{x}$，$dv = e^{−x} dx$，则$du = \\frac{e^{x}}{\\sqrt{1-e^{2x}}} dx$，$v = −e^{−x}$。代入分部积分公式：

$$
∫ u dv = uv - ∫ v du
$$

得：

$$
∫ \\frac{arcsin e^{x}}{e^{x}} dx = −e^{−x} arcsin e^{x} + ∫ \\frac{1}{\\sqrt{1 - e^{2x}}} dx
$$

接下来计算$∫ \\frac{1}{\\sqrt{1-e^{2x}}} dx$。令$e^{x} = \\sin θ$，则$x = \\ln \\sin θ$，$dx = cot θ dθ$，且$\\sqrt{1 - e^{2x}} = \\cos θ$。代入得：

$$
∫ \\frac{1}{\\sqrt{1 - e^{2x}}} dx = ∫ \\frac{1}{\\cos θ} ⋅ cot θ dθ = ∫ csc θ dθ = \\ln ∣ csc θ - cot θ∣ + C
$$

由于$e^{x} = \\sin θ$，有$csc θ = e^{−x}$，$cot θ = \\frac{\\sqrt{1-e^{2x}}}{e^{x}}$，因此：

$$
csc θ - cot θ = e^{−x} - \\frac{\\sqrt{1 - e^{2x}}}{e^{x}} = \\frac{1 - \\sqrt{1 - e^{2x}}}{e^{x}}
$$

代入得：

$$
∫ csc θ dθ = \\ln (\\frac{1 - \\sqrt{1 - e^{2x}}}{e^{x}}) + C = \\ln (1 - \\sqrt{1 - e^{2x}}) - x + C
$$

代回原积分：

$$
∫ \\frac{arcsin e^{x}}{e^{x}} dx = −e^{−x} arcsin e^{x} + \\ln (1 - \\sqrt{1 - e^{2x}}) - x + C
$$

对$\\ln (1 - \\sqrt{1 - e^{2x}})$进行有理化：

$$
1 - \\sqrt{1 - e^{2x}} = \\frac{e^{2x}}{1 + \\sqrt{1 - e^{2x}}}
$$

所以：

$$
\\ln (1 - \\sqrt{1 - e^{2x}}) = \\ln e^{2x} - \\ln (1 + \\sqrt{1 - e^{2x}}) = 2x - \\ln (1 + \\sqrt{1 - e^{2x}})
$$

代入得：

$$
\\begin{array}{cc}
∫ \\frac{arcsin e^{x}}{e^{x}} dx & = −e^{−x} arcsin e^{x} + 2x - \\ln (1 + \\sqrt{1 - e^{2x}}) - x + C \\\\
 & = −e^{−x} arcsin e^{x} + x - \\ln (1 + \\sqrt{1 - e^{2x}}) + C \\\\
\\end{array}
$$

因此，积分结果为：

$$
∫ \\frac{arcsin e^{x}}{e^{x}} dx = −e^{−x} arcsin e^{x} + x - \\ln (1 + \\sqrt{1 - e^{2x}}) + C
$$

', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1857');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1857');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1857');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1858, '2006年考研数学卷2第17题', '', '考研数学2006年卷2真题', '/problems/other/1833', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1859, '2006年考研数学卷2第18题', '', '考研数学2006年卷2真题', '/problems/other/1834', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1860, '2006年考研数学卷2第19题', '简单', '考研数学2006年卷2真题', '（本题满分 10 分）证明：当$0 < a < b < π$时，$b \\sin b + 2 \\cos b + πb > a \\sin a + 2 \\cos a + πa$．', '[]', '
证明完毕。
', '
定义函数$f(x) = x \\sin x + 2 \\cos x + πx$，则需证当$0 < a < b < π$时，$f(b) > f(a)$。
计算一阶导数


$$
f^{′}(x) = x \\cos x - \\sin x + π.
$$

再计算二阶导数


$$
f^{′′}(x) = −x \\sin x.
$$

在区间$(0, π)$上，有$x > 0$且$\\sin x > 0$，故


$$
f^{′′}(x) < 0,
$$

即$f^{′}(x)$在$(0, π)$上严格递减。
又$f^{′}(π) = 0$，因此对任意$x ∈ (0, π)$，有


$$
f^{′}(x) > f^{′}(π) = 0,
$$

故$f(x)$在$(0, π)$上严格递增。
于是当$0 < a < b < π$时，$f(b) > f(a)$，即原不等式成立。
', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1860');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1860');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1860');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1861, '2006年考研数学卷2第20题', '', '考研数学2006年卷2真题', '/problems/other/1836', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1862, '2006年考研数学卷2第21题', '简单', '考研数学2006年卷2真题', '（本题满分 12 分）已知曲线$L$的方程$\\begin{cases} x = t^{2} + 1 \\\\ y = 4t - t^{2} \\end{cases}$（$t ≥ 0$）．(1) 讨论$L$的凹凸性；(2) 过点$(−1, 0)$引$L$的切线，求切点$(x_{0}, y_{0})$，并写出切线的方程；(3) 求此切线与$L$（对应$x ≤ x_{0}$的部分）及$x$轴所围成的平面图形的面积．', '[]', '(1) 曲线$L$在$t > 0$时是凹的。
(2) 切点为$(2, 3)$，切线方程为$y = x + 1$。
(3) 所围成的平面图形的面积为$\\frac{7}{3}$。
', '
(Ⅰ) 计算该参数方程的各阶导数得

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{4 - 2t}{2t} = \\frac{2}{t} - 1,
$$


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d (\\frac{dy}{dx})}{dt} ⋅ \\frac{1}{\\frac{dx}{dt}} = (−\\frac{2}{t^{2}}) ⋅ \\frac{1}{2t} = −\\frac{1}{t^{3}}.
$$

因为$t > 0$时二阶导数小于零，所以曲线$L$在$t ≥ 0$处是凸的。
(Ⅱ) 切线方程为$y - 0 = (\\frac{2}{t} - 1) (x + 1)$，设$x_{0} = t_{0}^{2} + 1$，$y_{0} = 4t_{0} - t_{0}^{2}$，代入方程解得$t_{0} = 1$。所以切点为$(2, 3)$，切线方程为$y = x + 1$。
(Ⅲ) 设$L$的方程$x = g(y)$，则$S = \\int_{0}^{3}  \\lbrack (g(y) - (y - 1)) \\rbrack  dy$。由$y = 4t - t^{2}$解得$t = 2 ± \\sqrt{4 - y}$，从而$x = (2 ± \\sqrt{4 - y})^{2} + 1$。由于点$(2, 3)$在$L$上，可知$x = (2 - \\sqrt{4 - y})^{2} + 1 = g(y)$。所以

$$
S = \\int_{0}^{3}  \\lbrack (9 - y - 4\\sqrt{4 - y}) - (y - 1) \\rbrack  dy
$$


$$
= \\int_{0}^{3} (10 - 2y) dy - 4 \\int_{0}^{3} \\sqrt{4 - y}dy = 21 - \\frac{56}{3} = \\frac{7}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1862');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1863, '2006年考研数学卷2第22题', '', '考研数学2006年卷2真题', '/problems/other/1838', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1864, '2006年考研数学卷2第23题', '', '考研数学2006年卷2真题', '/problems/other/1839', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:00', 9, 'Mogullzr', '2026-01-29 14:14:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1865, '2006年考研数学卷3第1题', '简单', '考研数学2006年卷3真题', '$\\lim_{n→∞} (\\frac{n+1}{n})^{(−1)n} =$______．', '[]', '$1$
', '
考虑极限$\\lim_{n→∞} (\\frac{n+1}{n})^{(−1)n}$。
首先，简化底数：$\\frac{n+1}{n} = 1 + \\frac{1}{n}$，因此表达式化为$(1 + \\frac{1}{n})^{(−1)n}$。
指数$(−1)n$在$n$为偶数时取值为 1，在$n$为奇数时取值为 -1。
当$n$为偶数时，$(−1)n = 1$，表达式为$(1 + \\frac{1}{n})^{1} = 1 + \\frac{1}{n}$，当$n → ∞$时，$\\frac{1}{n} → 0$，故极限为 1。当$n$为奇数时，$(−1)n = −1$，表达式为$(1 + \\frac{1}{n})^{−1} = \\frac{1}{1+\\frac{1}{n}} = \\frac{n}{n+1}$，当$n → ∞$时，$\\frac{n}{n+1} → 1$，故极限为 1。
由于在$n$为偶数和奇数时极限均为 1，因此整体极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:14:02', 9, 'Mogullzr', '2026-01-29 14:14:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1865');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1865');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1865');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1866, '2006年考研数学卷3第2题', '简单', '考研数学2006年卷3真题', '设函数$f(x)$在$x = 2$的某邻域内可导，且$f^{′}(x) = e^{f(x)}$,$f(2) = 1$，则$f^{′′′}(2) =$______．', '[]', '$2e^{3}$
', '
已知函数$f(x)$在$x = 2$的某邻域内可导，且$f^{′}(x) = e^{f(x)}$，$f(2) = 1$。
首先，求二阶导数：


$$
f^{′′}(x) = \\frac{d}{dx} \\lbrack f^{′}(x) \\rbrack  = \\frac{d}{dx} \\lbrack e^{f(x)} \\rbrack  = e^{f(x)} ⋅ f^{′}(x) = e^{f(x)} ⋅ e^{f(x)} = e^{2f(x)}
$$

接着，求三阶导数：


$$
f^{′′′}(x) = \\frac{d}{dx} \\lbrack f^{′′}(x) \\rbrack  = \\frac{d}{dx} \\lbrack e^{2f(x)} \\rbrack  = e^{2f(x)} ⋅ 2f^{′}(x) = 2e^{2f(x)} ⋅ e^{f(x)} = 2e^{3f(x)}
$$

代入$x = 2$和$f(2) = 1$：


$$
f^{′′′}(2) = 2e^{3f(2)} = 2e^{3⋅1} = 2e^{3}
$$

因此，$f^{′′′}(2) = 2e^{3}$。
', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1866');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1866');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1866');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1867, '2006年考研数学卷3第3题', '简单', '考研数学2006年卷3真题', '设函数$f(u)$可微，且$f^{′}(0) = \\frac{1}{2}$，
则$z = f (4x^{2} - y^{2})$在点$(1, 2)$处的全微分$dz​_{(1,2)} =$______．', '[]', '$4 dx - 2 dy$
', '函数$z = f(4x^{2} - y^{2})$在点$(1, 2)$处的全微分表示为


$$
dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy.
$$

首先，计算中间变量$u = 4x^{2} - y^{2}$在点$(1, 2)$处的值：


$$
u = 4(1)2 - (2)2 = 4 - 4 = 0.
$$

已知$f^{′}(0) = \\frac{1}{2}$。
使用链式法则求偏导数：


$$
\\frac{∂z}{∂x} = f^{′}(u) ⋅ \\frac{∂u}{∂x} = f^{′}(u) ⋅ 8x,
$$

在点$(1, 2)$处，


$$
\\frac{∂z}{∂x} = f^{′}(0) ⋅ 8 ⋅ 1 = \\frac{1}{2} ⋅ 8 = 4.
$$


$$
\\frac{∂z}{∂y} = f^{′}(u) ⋅ \\frac{∂u}{∂y} = f^{′}(u) ⋅ (−2y),
$$

在点$(1, 2)$处，


$$
\\frac{∂z}{∂y} = f^{′}(0) ⋅ (−2 ⋅ 2) = \\frac{1}{2} ⋅ (−4) = −2.
$$

因此，全微分为


$$
dz = 4 dx - 2 dy.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1867');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1867');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1867');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1868, '2006年考研数学卷3第4题', '', '考研数学2006年卷3真题', '/problems/other/1823', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1869, '2006年考研数学卷3第5题', '', '考研数学2006年卷3真题', '/problems/other/1824', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1870, '2006年考研数学卷3第6题', '简单', '考研数学2006年卷3真题', '设总体$X$的概率密度为$f(x) = \\frac{1}{2}e^{−∣x∣}$（$−∞ < x < +∞$），$x_{1}, x_{2}, ⋯  , x_{n}$为总体$X$的简单随机样本，其样本方差$S^{2}$，则$ES^{2} =$______．', '[]', '2
', '
因为样本方差是总体方差的无偏估计量，所以

$$
\\begin{array}{cc}
E(S^{2}) & = D(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2 = \\int_{−∞}^{+∞} x^{2}f(x) dx -  \\lbrack \\int_{−∞}^{+∞} xf(x) dx \\rbrack ^{2} \\\\
 & = 2 \\int_{0}^{+∞} x^{2}f(x) dx - 0 = − \\int_{0}^{+∞} x^{2} d(e^{−x}) =  \\lbrack −x^{2}e^{−x} \\rbrack _{0}^{+∞} + \\int_{0}^{+∞} e^{−x} d(x^{2}) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1870');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1870');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1870');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1871, '2006年考研数学卷3第7题', '', '考研数学2006年卷3真题', '/problems/other/1825', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1872, '2006年考研数学卷3第8题', '简单', '考研数学2006年卷3真题', '设函数$f(x)$在$x = 0$处连续，且$\\lim_{h→0} \\frac{f(h^{2})}{h^{2}} = 1$，则', '[''$f(0) = 0$且$f_{-}^{′}(0)$存在．'', ''$f(0) = 1$且$f_{-}^{′}(0)$存在．'', ''$f(0) = 0$且$f_{+}^{′}(0)$存在．'', ''$f(0) = 1$且$f_{+}^{′}(0)$存在．'']', "['C']", '
令$x = h^{2}$，由题设可得
$$
\\lim_{h→0} \\frac{f(h^{2})}{h^{2}} = \\lim_{x→0^{+}} \\frac{f(x)}{x} = 1.
$$
因为函数$f(x)$在点$x = 0$处连续，所以
$$
f(0) = \\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\frac{f(x)}{x} ⋅ x = 1 ⋅ 0 = 0.
$$
由导数的定义有
$$
1 = \\lim_{x→0^{+}} \\frac{f(x)}{x} = \\lim_{x→0^{+}} \\frac{f(x) - f(0)}{x - 0} = f_{+}^{′}(0),
$$
即$f_{+}^{′}(0)$存在。', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1872');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1872');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1872');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1873, '2006年考研数学卷3第9题', '', '考研数学2006年卷3真题', '/problems/other/1827', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1874, '2006年考研数学卷3第10题', '简单', '考研数学2006年卷3真题', '设非齐次线性微分方程$y^{′} + P(x)y = Q(x)$有两个不同的解$y_{1}(x), y_{2}(x)$，$C$为任意常数，
则该方程通解是', '[''$C  \\\\lbrack y_{1}(x) - y_{2}(x) \\\\rbrack$．'', ''$y_{1}(x) + C  \\\\lbrack y_{1}(x) - y_{2}(x) \\\\rbrack$．'', ''$C  \\\\lbrack y_{1}(x) + y_{2}(x) \\\\rbrack$．'', ''$y_{1}(x) + C  \\\\lbrack y_{1}(x) + y_{2}(x) \\\\rbrack$．'']', "['B']", '
对于非齐次线性微分方程
$y^{′} + P(x)y = Q(x)$，
若$y_{1}(x)$和$y_{2}(x)$是其两个不同的解，则它们的差
$y_{1}(x) - y_{2}(x)$
是对应齐次方程
$y^{′} + P(x)y = 0$
的解。由于$y_{1}$和$y_{2}$不同，$y_{1} - y_{2}$非零，因此齐次方程的通解为
$C \\lbrack y_{1}(x) - y_{2}(x) \\rbrack$，
其中$C$为任意常数。非齐次方程的通解由齐次方程的通解加上一个特解（如$y_{1}(x)$或$y_{2}(x)$）构成。因此，通解可表示为
$y_{1}(x) + C \\lbrack y_{1}(x) - y_{2}(x) \\rbrack$，
对应选项 B。选项 A 仅为齐次通解，缺少特解；选项 C 和 D 中的$y_{1}(x) + y_{2}(x)$不是齐次方程的解，因为代入原方程得$2Q(x)$，除非$Q(x) = 0$，否则不满足齐次方程。故 B 正确。', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1874');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1874');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1874');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1875, '2006年考研数学卷3第11题', '', '考研数学2006年卷3真题', '/problems/other/1828', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1876, '2006年考研数学卷3第12题', '', '考研数学2006年卷3真题', '/problems/other/1829', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1877, '2006年考研数学卷3第13题', '', '考研数学2006年卷3真题', '/problems/other/1830', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1878, '2006年考研数学卷3第14题', '', '考研数学2006年卷3真题', '/problems/other/1832', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1879, '2006年考研数学卷3第15题', '简单', '考研数学2006年卷3真题', '（本题满分 7 分）设$f(x, y) = \\frac{y}{1+xy} - \\frac{1-y \\sin \\frac{πx}{y}}{arctan x}$,$x > 0, y > 0$，求(1)$g(x) = \\lim_{y→+∞} f (x, y)$；(2)$\\lim_{x→0^{+}} g(x)$．', '[]', '
(1)$g(x) = \\frac{1}{x} - \\frac{1-πx}{arctan x}$
(2)$\\lim_{x→0^{+}} g(x) = π$
', '
(1) 求$g(x) = \\lim_{y→+∞} f(x, y)$。
首先，计算$f(x, y) = \\frac{y}{1+xy} - \\frac{1-y \\sin \\frac{πx}{y}}{arctan x}$当$y → +∞$时的极限。
对于第一项：


$$
\\lim_{y→+∞} \\frac{y}{1 + xy} = \\lim_{y→+∞} \\frac{1}{\\frac{1}{y} + x} = \\frac{1}{x}
$$

对于第二项：
令$t = \\frac{πx}{y}$，则当$y → +∞$时，$t → 0$，有


$$
\\lim_{y→+∞} y \\sin \\frac{πx}{y} = \\lim_{t→0} \\frac{πx}{t} \\sin t = πx ⋅ \\lim_{t→0} \\frac{\\sin t}{t} = πx
$$

因此，


$$
\\lim_{y→+∞} (1 - y \\sin \\frac{πx}{y}) = 1 - πx
$$

由于$arctan x$与$y$无关，第二项的极限为


$$
\\lim_{y→+∞} (−\\frac{1 - y \\sin \\frac{πx}{y}}{arctan x}) = −\\frac{1 - πx}{arctan x}
$$

综上，


$$
g(x) = \\frac{1}{x} - \\frac{1 - πx}{arctan x}
$$

(2) 求$\\lim_{x→0^{+}} g(x)$。
由 (1) 得


$$
g(x) = \\frac{1}{x} - \\frac{1 - πx}{arctan x}
$$

当$x → 0^{+}$时，此为$∞ - ∞$型未定式。将其通分：


$$
g(x) = \\frac{arctan x - x(1 - πx)}{x arctan x} = \\frac{arctan x - x + πx^{2}}{x arctan x}
$$

当$x → 0^{+}$时，分子和分母均趋于 0，应用洛必达法则。
令$h(x) = arctan x - x + πx^{2}$，$k(x) = x arctan x$。
一阶导数：


$$
h^{′}(x) = \\frac{1}{1 + x^{2}} - 1 + 2πx
$$



$$
k^{′}(x) = arctan x + \\frac{x}{1 + x^{2}}
$$

当$x → 0^{+}$，$h^{′}(0) = 0$，$k^{′}(0) = 0$，仍需洛必达法则。
二阶导数：


$$
h^{′′}(x) = −\\frac{2x}{(1 + x^{2})2} + 2π
$$



$$
k^{′′}(x) = \\frac{1}{1 + x^{2}} + \\frac{1 - x^{2}}{(1 + x^{2})2}
$$

当$x → 0^{+}$，$h^{′′}(0) = 2π$，$k^{′′}(0) = 2$。
因此，


$$
\\lim_{x→0^{+}} g(x) = \\lim_{x→0^{+}} \\frac{h(x)}{k(x)} = \\frac{h^{′′}(0)}{k^{′′}(0)} = \\frac{2π}{2} = π
$$

故极限为$π$。
', 9, 'Mogullzr', '2026-01-29 14:14:03', 9, 'Mogullzr', '2026-01-29 14:14:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1879');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1879');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '1879');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1880, '2006年考研数学卷3第16题', '简单', '考研数学2006年卷3真题', '（本题满分 7 分）计算二重积分$\\iint_{D} \\sqrt{y^{2} - xy}dxdy$，其中$D$是由直线$y = x, y = 1, x = 0$所围成的平面区域．', '[]', '$\\frac{2}{9}$
', '计算二重积分$\\iint_{D} \\sqrt{y^{2} - xy}dxdy$，其中$D$是由直线$y = x$、$y = 1$、$x = 0$所围成的区域。
区域$D$可以表示为：$x$从$0$到$1$，$y$从$x$到$1$。
考虑先对$x$积分，则积分顺序可交换为：$y$从$0$到$1$，对于每个$y$，$x$从$0$到$y$。
于是，积分化为：


$$
\\iint_{D} \\sqrt{y^{2} - xy}dxdy = \\int_{0}^{1} \\int_{0}^{y} \\sqrt{y^{2} - xy}dxdy
$$

计算内层积分：


$$
\\int_{0}^{y} \\sqrt{y^{2} - xy}dx = \\int_{0}^{y} \\sqrt{y(y - x)}dx = \\sqrt{y} \\int_{0}^{y} \\sqrt{y - x}dx
$$

令$u = y - x$，则$du = −dx$，积分限变为：当$x = 0$时，$u = y$；当$x = y$时，$u = 0$。
于是，


$$
\\int_{0}^{y} \\sqrt{y - x}dx = \\int_{y}^{0} \\sqrt{u}(−du) = \\int_{0}^{y} u^{1/2}du =  \\lbrack \\frac{2}{3}u^{3/2} \\rbrack _{0}^{y} = \\frac{2}{3}y^{3/2}
$$

因此，


$$
\\int_{0}^{y} \\sqrt{y^{2} - xy}dx = \\sqrt{y} ⋅ \\frac{2}{3}y^{3/2} = \\frac{2}{3}y^{2}
$$

代入二重积分：


$$
\\int_{0}^{1} \\frac{2}{3}y^{2}dy = \\frac{2}{3} \\int_{0}^{1} y^{2}dy = \\frac{2}{3} ⋅  \\lbrack \\frac{1}{3}y^{3} \\rbrack _{0}^{1} = \\frac{2}{3} ⋅ \\frac{1}{3} = \\frac{2}{9}
$$

故二重积分的值为$\\frac{2}{9}$。
', 9, 'Mogullzr', '2026-01-29 14:14:04', 9, 'Mogullzr', '2026-01-29 14:14:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1880');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1880');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1880');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1881, '2006年考研数学卷3第17题', '', '考研数学2006年卷3真题', '/problems/other/1860', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:04', 9, 'Mogullzr', '2026-01-29 14:14:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1882, '2006年考研数学卷3第18题', '简单', '考研数学2006年卷3真题', '（本题满分 8 分）在$xOy$坐标平面上，连续曲线$L$过点$M (1, 0)$，
其上任意点$P (x, y)$（$x \\neq 0$）处的切线斜率与直线$OP$的斜率之差等于$ax$（常数$a > 0$）．(1) 求$L$的方程；(2) 当$L$与直线$y = ax$所围成平面图形的面积为$\\frac{8}{3}$时，确定$a$的值．', '[]', '
(1)$L$的方程为$y = ax(x - 1)$
(2)$a = 2$
', '
(I) 设所求的曲线方程为$y = y(x)$，按题意有$y^{′} - \\frac{y}{x} = ax$，而且有初始条件$y(1) = 0$。解一阶线性微分方程，得到

$$
y = e^{∫ \\frac{1}{x} dx}  \\lbrack ∫ axe^{− ∫ \\frac{1}{x} dx} dx + C \\rbrack  = x  \\lbrack ∫ a dx + C \\rbrack  = x(ax + C).
$$

再由$y(1) = 0$得$C = −a$，于是所求的曲线方程为$y = ax(x - 1)$。
(II) 直线$y = ax$与曲线$y = ax(x - 1)$的交点为$(0, 0)$与$(2, 2a)$。所以直线$y = ax$与曲线$y = ax(x - 1)$所围平面图形的面积为

$$
S(a) = \\int_{0}^{2} \\lbrack ax - ax(x - 1) \\rbrack  dx = \\int_{0}^{2} \\lbrack 2ax - ax^{2} \\rbrack  dx = \\frac{4}{3}a.
$$

于是按题意得$\\frac{4}{3}a = \\frac{8}{3}$，故$a = 2$。
', 9, 'Mogullzr', '2026-01-29 14:14:04', 9, 'Mogullzr', '2026-01-29 14:14:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1882');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1882');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1882');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1883, '2006年考研数学卷3第19题', '简单', '考研数学2006年卷3真题', '（本题满分 10 分）求幂级数$\\sum_{n=1}^{∞} \\frac{(−1)n−1x^{2n+1}}{n(2n-1)}$的收敛域及和函数$S(x)$．', '[]', '
收敛域为$\\lbrack −1, 1 \\rbrack$，和函数为$S(x) = 2x^{2} arctan x - x \\ln(1 + x^{2})$。
', '
记$u_{n} = \\frac{(−1)n−1x^{2n+1}}{n(2n-1)}$，则有$\\lim_{n→∞} ​\\frac{u_{n+1}}{u_{n}}​ = x^{2}$。所以当$x^{2} < 1$即$∣x∣ < 1$时，级数绝对收敛；当$x^{2} > 1$，即$∣x∣ > 1$时，级数发散；在$x = ±1$处$u_{n} = \\frac{±(−1)n−1}{n(2n-1)}$，级数$\\sum_{n=1}^{∞} u_{n}$绝对收敛；从而级数的收敛域为$\\lbrack −1, 1 \\rbrack$。由于

$$
\\sum_{n=1}^{∞} \\frac{(−1)n−1x^{2n+1}}{n(2n - 1)} = x \\sum_{n=1}^{∞} \\frac{(−1)n−1x^{2n}}{n(2n - 1)},
$$

令$f(x) = \\sum_{n=1}^{∞} \\frac{(−1)n−1x^{2n}}{n(2n-1)} (−1 < x < 1)$，则有

$$
f^{′}(x) = \\sum_{n=1}^{∞} \\frac{2(−1)n−1x^{2n-1}}{2n - 1},  f^{′′}(x) = 2 \\sum_{n=1}^{∞}(−1)n−1x^{2n-2} = \\frac{2}{1 + x^{2}}.
$$

从而有

$$
f^{′}(x) = f^{′}(0) + \\int_{0}^{x} f^{′′}(t) dt = 0 + \\int_{0}^{x} \\frac{2}{1 + t^{2}} dt = 2 arctan x,
$$


$$
\\begin{array}{cc}
f(x) & = f(0) + \\int_{0}^{x} f^{′}(t) dt = 0 + 2 \\int_{0}^{x} arctan t dt \\\\
 & = 2 \\lbrack t arctan t \\rbrack 0x​ - 2 \\int_{0}^{x} \\frac{dt}{1 + t^{2}} \\\\
\\end{array}
$$

于是

$$
\\sum_{n=1}^{∞} \\frac{(−1)n−1x^{2n+1}}{n(2n - 1)} = 2x^{2} arctan x - x \\ln(1 + x^{2}),  −1 < x < 1.
$$

又因为在$x = ±1$处级数收敛，右边和函数的表达式在$x = ±1$处连续，因此在$x = ±1$处上式仍成立，从而有

$$
S(x) = \\sum_{n=1}^{∞} \\frac{(−1)n−1x^{2n+1}}{n(2n - 1)} = 2x^{2} arctan x - x \\ln(1 + x^{2}),  −1 ≤ x ≤ 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:04', 9, 'Mogullzr', '2026-01-29 14:14:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1883');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1883');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '1883');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1884, '2006年考研数学卷3第20题', '简单', '考研数学2006年卷3真题', '（本题满分 13 分）设$4$维向量组$α_{1} = (1 + a, 1, 1, 1)T$,$α_{2} = (2, 2 + a, 2, 2)T$,$α_{3} = (3, 3, 3 + a, 3)T$,$α_{4} = (4, 4, 4, 4 + a)T$．
问$a$为何值时$α_{1}, α_{2}, α_{3}, α_{4}$线性相关？
当$α_{1}, α_{2}, α_{3}, α_{4}$线性相关时，
求其一个极大线性无关组，并将其余向量用该极大线性无关组线性表示．', '[]', '
当$a = 0$或$a = −10$时，向量组$α_{1}, α_{2}, α_{3}, α_{4}$线性相关。
当$a = 0$时，一个极大线性无关组为$α_{1}$，且$α_{2} = 2α_{1}$，$α_{3} = 3α_{1}$，$α_{4} = 4α_{1}$。当$a = −10$时，一个极大线性无关组为$α_{1}, α_{2}, α_{3}$，且$α_{4} = −α_{1} - α_{2} - α_{3}$。
', '
记$A = (a_{1}, a_{2}, a_{3}, a_{4})$，对$A$作初等行变换，得到

$$
A = \\left( \\begin{array}{cccc}
1 + a & 2 & 3 & 4 \\\\
1 & 2 + a & 3 & 4 \\\\
1 & 2 & 3 + a & 4 \\\\
1 & 2 & 3 & 4 + a \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 + a & 2 & 3 & 4 \\\\
−a & a & 0 & 0 \\\\
−a & 0 & a & 0 \\\\
−a & 0 & 0 & a \\\\
\\end{array} \\right) = B.
$$

当$a = 0$时，$r(A) = r(B) = 1$，因而$a_{1}, a_{2}, a_{3}, a_{4}$线性相关。此时$a_{1}$为$a_{1}, a_{2}, a_{3}, a_{4}$的一个极大线性无关组，且$a_{2} = 2a_{1}, a_{3} = 3a_{1}, a_{4} = 4a_{1}$。
当$a \\neq 0$时，再对$B$作初等行变换，得到

$$
B → \\left( \\begin{array}{cccc}
1 + a & 2 & 3 & 4 \\\\
−1 & 1 & 0 & 0 \\\\
−1 & 0 & 1 & 0 \\\\
−1 & 0 & 0 & 1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
a + 10 & 0 & 0 & 0 \\\\
1 & −1 & 0 & 0 \\\\
1 & 0 & −1 & 0 \\\\
1 & 0 & 0 & −1 \\\\
\\end{array} \\right) = C = (γ_{1}, γ_{2}, γ_{3}, γ_{4}).
$$

若$a \\neq −10$，则$C$的秩为 4，故$a_{1}, a_{2}, a_{3}, a_{4}$线性无关。
若$a = −10$，则$C$的秩为 3，故$a_{1}, a_{2}, a_{3}, a_{4}$线性相关。由于$γ_{2}, γ_{3}, γ_{4}$是$γ_{1}, γ_{2}, γ_{3}, γ_{4}$的一个极大线性无关组，且$γ_{1} = −γ_{2} - γ_{3} - γ_{4}$，于是$a_{2}, a_{3}, a_{4}$是$a_{1}, a_{2}, a_{3}, a_{4}$的一个极大线性无关组，且$a_{1} = −a_{2} - a_{3} - a_{4}$。
', 9, 'Mogullzr', '2026-01-29 14:14:04', 9, 'Mogullzr', '2026-01-29 14:14:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1884');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1884');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1884');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1885, '2006年考研数学卷3第21题', '简单', '考研数学2006年卷3真题', '（本题满分 13 分）设$3$阶实对称矩阵$A$的各行元素之和均为$3$，
向量$α_{1} = (−1, 2, −1)^{T}$,$α_{2} = (0, −1, 1)^{T}$是线性方程组$Ax = 0$的两个解．(1) 求$A$的特征值与特征向量；(2) 求正交矩阵$Q$和对角矩阵$Λ$，使得$Q^{T}AQ = Λ$；(3) 求$A$及$(A - \\frac{3}{2}E)^{6}$，其中$E$为$3$阶单位矩阵．', '[]', '
(1) 特征值与特征向量
矩阵$A$的特征值为$λ_{1} = λ_{2} = 0$（二重），$λ_{3} = 3$（一重）。
属于特征值$0$的特征向量为$k_{1}α_{1} + k_{2}α_{2}$，其中$k_{1}, k_{2}$不全为零；属于特征值$3$的特征向量为$k_{3}(1, 1, 1)T$，其中$k_{3} \\neq 0$。
(2) 正交矩阵$Q$与对角矩阵$Λ$


$$
Q = \\left( \\begin{array}{ccc}
−\\frac{\\sqrt{6}}{6} & −\\frac{\\sqrt{2}}{2} & \\frac{\\sqrt{3}}{3} \\\\
\\frac{\\sqrt{6}}{3} & 0 & \\frac{\\sqrt{3}}{3} \\\\
\\end{array} \\right) ,  Λ = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right) .
$$

满足$Q^{T}AQ = Λ$。
(3) 矩阵$A$与$(A - \\frac{3}{2}E)^{6}$


$$
A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right) ,  (A - \\frac{3}{2}E)^{6} = (\\frac{3}{2})^{6} E = \\frac{729}{64}E.
$$

', '(I) 由题设条件$Aα_{1} = 0 = 0α_{1}$,$Aα_{2} = 0 = 0α_{2}$, 故$α_{1}, α_{2}$是$A$的对应于$λ = 0$的特征向量，又因为$α_{1}, α_{2}$线性无关，故$λ = 0$至少是$A$的二重特征值。又因为$A$的每行元素之和为 3，所以有


$$
A(1, 1, 1)T = (3, 3, 3)T = 3(1, 1, 1)T,
$$


所以$α_{3} = (1, 1, 1)T$是$A$的对应于特征值$λ_{3} = 3$的特征向量，从而知$λ = 0$是二重特征值。于是$A$的特征值为$0, 0, 3$；属于 0 的特征向量是$k_{1}α_{1} + k_{2}α_{2}$，$k_{1}, k_{2}$不都为 0；属于 3 的特征向量是$k_{3}α_{3}$，$k_{3} \\neq 0$。
(II) 将特征向量$α_{1}, α_{2}$正交化得


$$
β_{1} = α_{1} = (−1, 2, −1)T,  β_{2} = (−\\frac{1}{2}, 0, \\frac{1}{2}) .
$$

再将$β_{1}, β_{2}, α_{3}$单位化，得


$$
η_{1} = (−\\frac{\\sqrt{6}}{6}, \\frac{\\sqrt{6}}{3}, −\\frac{\\sqrt{6}}{6})^{T} ,  η_{2} = (−\\frac{\\sqrt{2}}{2}, 0, \\frac{\\sqrt{2}}{2})^{T} ,  η_{3} = (\\frac{\\sqrt{3}}{3}, \\frac{\\sqrt{3}}{3}, \\frac{\\sqrt{3}}{3})^{T} .
$$

令$Q = (η_{1}, η_{2}, η_{3})$，则$Q$是正交矩阵，并且


$$
Q^{T}AQ = Q^{−1}AQ = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right) .
$$

(Ⅲ) 由$Q^{T}AQ = Λ$，其中$Q^{T} = Q^{−1}$，得到

$$
\\begin{array}{cccccccccccccc}
A = QΛQ^{T} & \\begin{array}{ccc}
\\frac{−\\sqrt{6}}{6} & \\frac{−\\sqrt{2}}{2} & \\frac{\\sqrt{3}}{3} \\\\
\\frac{\\sqrt{6}}{3} & 0 & \\frac{\\sqrt{3}}{3} \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & \\frac{−\\sqrt{6}}{6} & \\frac{−\\sqrt{2}}{2} & \\frac{\\sqrt{3}}{3} &  &  &  & \\frac{−\\sqrt{6}}{6} & \\frac{\\sqrt{6}}{3} & \\frac{−\\sqrt{6}}{6} &  &  &  \\\\
 &  &  &  &  & 0 &  &  &  &  &  & 1 & 1 & 1 \\\\
 &  & \\frac{\\sqrt{6}}{3} & 0 & \\frac{\\sqrt{3}}{3} &  &  &  & \\frac{−\\sqrt{2}}{2} & 0 & \\frac{\\sqrt{2}}{2} &  &  &  \\\\
 &  &  &  &  &  & 0 &  &  &  &  & 1 & 1 & 1 \\\\
 & \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  &  &  &  &  &  & 3 &  &  &  & 1 & 1 & 1 \\\\
\\end{array}
$$


$$
(A - \\frac{3}{2}E)^{6} = (QΛQ^{T} - \\frac{3}{2}E)^{6} = (Q (Λ - \\frac{3}{2}E) Q^{T})^{6} = Q (Λ - \\frac{3}{2}E)^{6} Q^{T}
$$


$$
= Q \\left( \\begin{array}{ccc}
−\\frac{3}{2} &  &  \\\\
 & −\\frac{3}{2} &  \\\\
 &  & \\frac{3}{2} \\\\
\\end{array} \\right) Q^{T} = (\\frac{3}{2})^{6} QEQ^{T} = (\\frac{3}{2})^{6} E.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:05', 9, 'Mogullzr', '2026-01-29 14:14:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1885');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1885');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1886, '2006年考研数学卷3第22题', '简单', '考研数学2006年卷3真题', '（本题满分 13 分）随机变量$x$的概率密度为
$$
f_{X}(x) = \\begin{cases} \\frac{1}{2} & −1 < x < 0; \\\\ \\frac{1}{4} & 0 ≤ x < 2; \\\\ 0 & 其他. \\end{cases}
$$
令$Y = X^{2}$，$F(x, y)$为二维随机变量$(X, Y)$的分布函数．求(1)$Y$的概率密度$f_{Y}(y)$；(2)$Cov(X, Y)$；(3)$F (−\\frac{1}{2}, 4)$．', '[]', '
(1)$Y$的概率密度为$f_{Y}(y) = \\begin{cases} \\frac{3}{8}y^{−1/2} & 0 ≤ y < 1 \\\\ \\frac{1}{8}y^{−1/2} & 1 ≤ y < 4 \\\\ 0 & 其他 \\end{cases}$
(2)$Cov(X, Y) = \\frac{2}{3}$
(3)$F (−\\frac{1}{2}, 4) = \\frac{1}{4}$
', '
(Ⅰ) 因为$F_{Y}(y) = P\\{Y ≤ y\\} = P\\{X^{2} ≤ y\\}$，分情况讨论：

$$
F_{Y}(y) = P(−\\sqrt{y} ≤ X ≤ \\sqrt{y}) = \\int_{−\\sqrt{y}}^{0} \\frac{1}{2} dx + \\int_{0}^{\\sqrt{y}} \\frac{1}{4} dx = \\frac{3}{4}\\sqrt{y};
$$

综上所述，有

$$
F_{Y}(y) = \\begin{cases} 0 & y < 0; \\\\ \\frac{3}{4}\\sqrt{y} & 0 ≤ y < 1; \\\\ \\frac{1}{2} + \\frac{1}{4}\\sqrt{y} & 1 ≤ y < 4; \\\\ 1 & y ≥ 4. \\end{cases}
$$

由概率密度是分布函数在对应区间上的微分，所以

$$
f_{Y}(y) = F_{Y}^{′}(y) = \\begin{cases} \\frac{3}{8\\sqrt{y}} & 0 < y < 1; \\\\ \\frac{1}{8\\sqrt{y}} & 1 ≤ y < 4; \\\\ 0 & 其他. \\end{cases}
$$

(II) 因为数学期望

$$
E(X) = \\int_{−∞}^{+∞} xf_{X}(x) dx = \\int_{−1}^{0} \\frac{x}{2} dx + \\int_{0}^{2} \\frac{x}{4} dx = \\frac{1}{4},
$$


$$
E(X^{2}) = \\int_{−∞}^{+∞} x^{2}f_{X}(x) dx = \\int_{−1}^{0} \\frac{x^{2}}{2} dx + \\int_{0}^{2} \\frac{x^{2}}{4} dx = \\frac{5}{6},
$$


$$
E(X^{3}) = \\int_{−∞}^{+∞} x^{3}f_{X}(x) dx = \\int_{−1}^{0} \\frac{x^{3}}{2} dx + \\int_{0}^{2} \\frac{x^{3}}{4} dx = \\frac{7}{8},
$$

所以协方差

$$
Cov(X, Y) = Cov(X, X^{2}) = E(X^{3}) - E(X)E(X^{2}) = \\frac{7}{8} - \\frac{1}{4} × \\frac{5}{6} = \\frac{2}{3}.
$$

(III) 根据二维随机变量的定义有

$$
F (−\\frac{1}{2}, 4) = P \\{X ⩽ −\\frac{1}{2}, Y ⩽ 4\\} = P \\{X ⩽ −\\frac{1}{2}, X^{2} ⩽ 4\\}
$$


$$
= P \\{−2 ⩽ X ⩽ −\\frac{1}{2}\\} = \\int_{−1}^{−\\frac{1}{2}} \\frac{1}{2} dx = \\frac{1}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:05', 9, 'Mogullzr', '2026-01-29 14:14:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1886');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1886');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1887, '2006年考研数学卷3第23题', '简单', '考研数学2006年卷3真题', '（本题满分 13 分）设总体$X$的概率密度为
$$
f(x, θ) = \\begin{cases} θ & 0 < x < 1 \\\\ 1 - θ & 1 ≤ x < 2 \\\\ 0 & 其它 \\end{cases}
$$
其中$θ$是未知参数（$0 < θ < 1$），$X_{1}, X_{2} ⋯  , X_{n}$为来自总体$X$的简单随机样本，
记$N$为样本值$x_{1}, x_{2} ⋯  , x_{n}$中小于$1$的个数，求：(1)$θ$的矩估计；(2)$θ$的最大似然估计．', '[]', '
(1)$θ$的矩估计为$\\hat{θ}_{M} = \\frac{3}{2} - \\bar{X}$，其中$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$。
(2)$θ$的最大似然估计为$\\hat{θ} = \\frac{N}{n}$，其中$N$为样本中小于$1$的个数。
', '
(I) 由数学期望的定义有

$$
E(X) = \\int_{−∞}^{+∞} xf(x; θ) dx = \\int_{0}^{1} θx dx + \\int_{1}^{2}(1 - θ)x dx
$$


$$
= \\frac{1}{2}θ + \\frac{3}{2}(1 - θ) = \\frac{3}{2} - θ.
$$

用样本均值估计期望有$EX = \\overline{X}$，即$\\frac{3}{2} - θ = \\overline{X}$，解得$θ = \\frac{3}{2} - \\overline{X}$。所以参数$θ$的矩估计为$\\hat{θ} = \\frac{3}{2} - \\overline{X}$，其中$\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$。
(II) 依题设，似然函数

$$
L(θ) = \\begin{cases} θ^{N}(1 - θ)n−N & 0 < x_{i_{1}}, x_{i_{2}}, … x_{i_{N}} < 1,  1 ≤ x_{i_{N+1}}, x_{i_{N+2}}, … x_{i_{n}} < 2; \\\\ 0 & 其他. \\end{cases}
$$

在$0 < x_{i_{1}}, x_{i_{2}}, … x_{i_{N}} < 1$,$1 ≤ x_{i_{N+1}}, x_{i_{N+2}}, … x_{i_{n}} < 2$时，等式两边同取对数得

$$
\\ln L(θ) = N \\ln θ + (n - N) \\ln(1 - θ).
$$

两边对$θ$求导并令导数为零，得到

$$
\\frac{d \\ln L(θ)}{dθ} = \\frac{N}{θ} - \\frac{n - N}{1 - θ} = 0,
$$

解得$θ = \\frac{N}{n}$，所以$θ$的最大似然估计值为$\\hat{θ} = \\frac{N}{n}$。
', 9, 'Mogullzr', '2026-01-29 14:14:05', 9, 'Mogullzr', '2026-01-29 14:14:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1887');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1887');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1887');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1888, '2006年考研数学卷4第1题', '', '考研数学2006年卷4真题', '/problems/other/1865', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1889, '2006年考研数学卷4第2题', '', '考研数学2006年卷4真题', '/problems/other/1866', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1890, '2006年考研数学卷4第3题', '', '考研数学2006年卷4真题', '/problems/other/1867', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1891, '2006年考研数学卷4第4题', '简单', '考研数学2006年卷4真题', '已知$a_{1}$,$a_{2}$为$2$维列向量，矩阵$A = (2a_{1} + a_{2}, a_{1} - a_{2})$，$B = (a_{1}, a_{2})$．
若行列式$∣A∣ = 6$，则$∣B∣ =$______．', '[]', '$−2$
', '
已知矩阵$A = (2a_{1} + a_{2}, a_{1} - a_{2})$，$B = (a_{1}, a_{2})$，且$∣A∣ = 6$。
设矩阵$K = \\left( \\begin{array}{cc}
2 & 1 \\\\
1 & −1 \\\\
\\end{array} \\right)$，则$A = BK$。
由行列式性质，$∣A∣ = ∣B∣ ⋅ ∣K∣$。
计算$∣K∣ = det \\left( \\begin{array}{cc}
2 & 1 \\\\
1 & −1 \\\\
\\end{array} \\right) = (2)(−1) - (1)(1) = −3$。
代入已知条件，$6 = ∣B∣ ⋅ (−3)$，解得$∣B∣ = −2$。
或者直接利用行列式的线性性质：


$$
∣A∣ = det(2a_{1} + a_{2}, a_{1} - a_{2}) = 2 det(a_{1}, a_{1} - a_{2}) + det(a_{2}, a_{1} - a_{2})
$$

其中


$$
det(a_{1}, a_{1} - a_{2}) = det(a_{1}, a_{1}) - det(a_{1}, a_{2}) = −∣B∣,
$$



$$
det(a_{2}, a_{1} - a_{2}) = det(a_{2}, a_{1}) - det(a_{2}, a_{2}) = −∣B∣,
$$

所以


$$
∣A∣ = 2(−∣B∣) + (−∣B∣) = −3∣B∣,
$$

即$6 = −3∣B∣$，解得$∣B∣ = −2$。
故答案为$−2$。
', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1891');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1891');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1891');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1892, '2006年考研数学卷4第5题', '简单', '考研数学2006年卷4真题', '设矩阵$A = \\left( \\begin{array}{cc}
2 & 1 \\\\
−1 & 2 \\\\
\\end{array} \\right)$，$E$为$2$阶单位矩阵，矩阵$B$满足$BA = B + 2E$，则$B$______．', '[]', '

$$
B = \\left( \\begin{array}{cc}
1 & −1 \\\\
1 & 1 \\\\
\\end{array} \\right)
$$

', '
由方程$BA = B + 2E$，移项得$BA - B = 2E$，即$B(A - E) = 2E$。
计算$A - E = \\left( \\begin{array}{cc}
2 & 1 \\\\
−1 & 2 \\\\
\\end{array} \\right) - \\left( \\begin{array}{cc}
1 & 0 \\\\
0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
1 & 1 \\\\
−1 & 1 \\\\
\\end{array} \\right)$。
设$C = \\left( \\begin{array}{cc}
1 & 1 \\\\
−1 & 1 \\\\
\\end{array} \\right)$，则$BC = 2E = \\left( \\begin{array}{cc}
2 & 0 \\\\
0 & 2 \\\\
\\end{array} \\right)$。
求$C$的逆矩阵：行列式为$1 × 1 - 1 × (−1) = 2$，故$C^{−1} = \\frac{1}{2} \\left( \\begin{array}{cc}
1 & −1 \\\\
1 & 1 \\\\
\\end{array} \\right)$。
因此


$$
B = 2E ⋅ C^{−1} = \\left( \\begin{array}{cc}
2 & 0 \\\\
0 & 2 \\\\
\\end{array} \\right) ⋅ \\frac{1}{2} \\left( \\begin{array}{cc}
1 & −1 \\\\
1 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
1 & −1 \\\\
1 & 1 \\\\
\\end{array} \\right) .
$$

验证：


$$
BA = \\left( \\begin{array}{cc}
1 & −1 \\\\
1 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
2 & 1 \\\\
−1 & 2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
3 & −1 \\\\
1 & 3 \\\\
\\end{array} \\right) ,
$$



$$
B + 2E = \\left( \\begin{array}{cc}
1 & −1 \\\\
1 & 1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{cc}
2 & 0 \\\\
0 & 2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
3 & −1 \\\\
1 & 3 \\\\
\\end{array} \\right) ,
$$

两者相等，故结果正确。
', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1892');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1892');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1892');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1893, '2006年考研数学卷4第6题', '', '考研数学2006年卷4真题', '/problems/other/1824', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1894, '2006年考研数学卷4第7题', '', '考研数学2006年卷4真题', '/problems/other/1825', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1895, '2006年考研数学卷4第8题', '', '考研数学2006年卷4真题', '/problems/other/1872', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1896, '2006年考研数学卷4第9题', '简单', '考研数学2006年卷4真题', '设函数$f(x)$与$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续，且$f(x) ≤ g(x)$，且对任何$C ∈ (0, 1)$，', '[''$\\\\int_{\\\\frac{1}{2}}^{c} f(t)dt ≥ \\\\int_{\\\\frac{1}{2}}^{c} g(t)dt$．'', ''$\\\\int_{\\\\frac{1}{2}}^{c} f(t)dt ≤ \\\\int_{\\\\frac{1}{2}}^{c} g(t)dt$．'', ''$\\\\int_{c}^{1} f(t)dt ≥ \\\\int_{c}^{1} g(t)dt$．'', ''$\\\\int_{c}^{1} f(t)dt ≤ \\\\int_{c}^{1} g(t)dt$．'']', "['D']", '
由于函数$f(x)$和$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续，且$f(x) ≤ g(x)$对所有$x ∈  \\lbrack 0, 1 \\rbrack$成立，根据积分的不等式性质，对于任何区间$\\lbrack a, b \\rbrack  ⊆  \\lbrack 0, 1 \\rbrack$，有

$$
\\int_{a}^{b} f(t) dt ≤ \\int_{a}^{b} g(t) dt.
$$
对于选项 C 和 D，积分区间为$\\lbrack c, 1 \\rbrack$，其中$c ∈ (0, 1)$，因此$\\lbrack c, 1 \\rbrack  ⊆  \\lbrack 0, 1 \\rbrack$，直接应用积分不等式可得

$$
\\int_{c}^{1} f(t) dt ≤ \\int_{c}^{1} g(t) dt,
$$
即选项 D 始终成立。选项 A 和 B 的积分区间为$\\lbrack \\frac{1}{2}, c \\rbrack$，其不等式方向取决于$c$与$\\frac{1}{2}$的大小关系，因此不一定对所有$c ∈ (0, 1)$成立。选项 C 与积分不等式矛盾。故正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:14:07', 9, 'Mogullzr', '2026-01-29 14:14:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1896');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1896');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '1896');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1897, '2006年考研数学卷4第10题', '', '考研数学2006年卷4真题', '/problems/other/1874', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1898, '2006年考研数学卷4第11题', '', '考研数学2006年卷4真题', '/problems/other/1828', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1899, '2006年考研数学卷4第12题', '', '考研数学2006年卷4真题', '/problems/other/1830', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1900, '2006年考研数学卷4第13题', '', '考研数学2006年卷4真题', '/problems/other/1831', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1901, '2006年考研数学卷4第14题', '', '考研数学2006年卷4真题', '/problems/other/1832', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1902, '2006年考研数学卷4第15题', '', '考研数学2006年卷4真题', '/problems/other/1879', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1903, '2006年考研数学卷4第16题', '', '考研数学2006年卷4真题', '/problems/other/1880', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1904, '2006年考研数学卷4第17题', '', '考研数学2006年卷4真题', '/problems/other/1860', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1905, '2006年考研数学卷4第18题', '', '考研数学2006年卷4真题', '/problems/other/1882', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1906, '2006年考研数学卷4第19题', '', '考研数学2006年卷4真题', '/problems/other/1856', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1907, '2006年考研数学卷4第20题', '', '考研数学2006年卷4真题', '/problems/other/1884', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1908, '2006年考研数学卷4第21题', '', '考研数学2006年卷4真题', '/problems/other/1885', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1909, '2006年考研数学卷4第22题', '简单', '考研数学2006年卷4真题', '（本题满分 13 分）设二维随机变量$(X, Y)$的概率分布为
$$
\\begin{array}{c|ccc|}
X╲Y & −1 & 0 & 1 \\\\
−1 & a & 0 & 0.2 \\\\
0 & 0.1 & b & 0.2 \\\\
1 & 0 & 0.1 & c \\\\
\\end{array}
$$
其中$a$,$b$,$c$为常数，且$X$的数学期望$EX = −0.2$，$P\\{Y ≤ 0∣X ≤ 0\\} = 0.5$，
记$Z = X + Y$，求：(1)$a, b, c$的值；(2)$Z$的概率分布；(3)$P\\{X = Z\\}$．', '[]', '
(1)$a = 0.2$,$b = 0.1$,$c = 0.1$
(2)$Z$的概率分布为：

$$
\\begin{array}{c|ccccc}
Z & −2 & −1 & 0 & 1 & 2 \\\\
P & 0.2 & 0.1 & 0.3 & 0.3 & 0.1 \\\\
\\end{array}
$$

(3)$P\\{X = Z\\} = 0.2$
', '
(1) 由概率分布的性质，所有概率之和为1，即：

$$
a + 0 + 0.2 + 0.1 + b + 0.2 + 0 + 0.1 + c = 1
$$

简化得：

$$
a + b + c = 0.4 (1)
$$

$X$的数学期望$EX = −0.2$，先求$X$的边缘分布：

$$
P(X = −1) = a + 0 + 0.2 = a + 0.2
$$



$$
P(X = 0) = 0.1 + b + 0.2 = b + 0.3
$$



$$
P(X = 1) = 0 + 0.1 + c = 0.1 + c
$$

则：

$$
\\begin{array}{cc}
EX & = (−1)(a + 0.2) + 0 ⋅ (b + 0.3) + 1 ⋅ (0.1 + c) \\\\
 & = −a - 0.2 + 0.1 + c \\\\
 & = −a + c - 0.1 \\\\
\\end{array}
$$

设等于$−0.2$：

$$
−a + c - 0.1 = −0.2
$$

即：

$$
−a + c = −0.1 (2)
$$

条件概率$P\\{Y ≤ 0 ∣ X ≤ 0\\} = 0.5$，其中：

$$
P\\{X ≤ 0\\} = P(X = −1) + P(X = 0) = (a + 0.2) + (b + 0.3) = a + b + 0.5
$$



$$
\\begin{array}{cc}
P\\{Y ≤ 0 ∣ X ≤ 0\\} & = P(X = −1, Y = −1) + P(X = −1, Y = 0) \\\\
 & + P(X = 0, Y = −1) + P(X = 0, Y = 0) \\\\
 & = a + 0 + 0.1 + b \\\\
\\end{array}
$$

所以：

$$
\\frac{a + b + 0.1}{a + b + 0.5} = 0.5
$$

令$s = a + b$，则：

$$
\\frac{s + 0.1}{s + 0.5} = 0.5
$$

解方程：

$$
s + 0.1 = 0.5(s + 0.5)
$$



$$
s = 0.3
$$

即：

$$
a + b = 0.3 (3)
$$

由 (1) 和 (3) 得：

$$
c = 0.4 - 0.3 = 0.1
$$

代入(2)：

$$
−a + 0.1 = −0.1
$$



$$
a = 0.2
$$

代入(3)：

$$
b = 0.3 - 0.2 = 0.1
$$

故$a = 0.2$，$b = 0.1$，$c = 0.1$。
(2)$Z = X + Y$，可能取值为-2、-1、0、1、2。计算各值的概率：
$P(Z = −2) = P(X = −1, Y = −1) = 0.2$$P(Z = −1) = P(X = −1, Y = 0) + P(X = 0, Y = −1) = 0 + 0.1 = 0.1$$P(Z = 0) = P(X = −1, Y = 1) + P(X = 0, Y = 0) + P(X = 1, Y = −1) = 0.2 + 0.1 + 0 = 0.3$$P(Z = 1) = P(X = 0, Y = 1) + P(X = 1, Y = 0) = 0.2 + 0.1 = 0.3$$P(Z = 2) = P(X = 1, Y = 1) = 0.1$故$Z$的概率分布如上表。
(3)$P\\{X = Z\\}$，由$Z = X + Y$，得$X = X + Y$，即$Y = 0$。所以：

$$
\\begin{array}{cc}
P\\{X = Z\\} & = P\\{Y = 0\\} \\\\
 & = P(X = −1, Y = 0) + P(X = 0, Y = 0) + P(X = 1, Y = 0) \\\\
 & = 0 + 0.1 + 0.1 \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1909');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1909');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1909');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1910, '2006年考研数学卷4第23题', '', '考研数学2006年卷4真题', '/problems/other/1886', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:08', 9, 'Mogullzr', '2026-01-29 14:14:08', 0, 4);
