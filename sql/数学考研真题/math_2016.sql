INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2559, '2016年考研数学卷1第1题', '简单', '考研数学2016年数1真题', '若反常积分$\\int_{0}^{+∞} \\frac{1}{x^{a}(1+x)b}dx$收敛，则()', '[''$a < 1$且$b > 1$'', ''$a > 1$且$b > 1$'', ''$a < 1$且$a + b > 1$'', ''$a > 1$且$a + b > 1$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:17:20', 9, 'Mogullzr', '2026-01-29 14:17:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2559');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2559');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2559');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2560, '2016年考研数学卷1第2题', '简单', '考研数学2016年数1真题', '已知函数$f(x) = \\begin{cases} 2(x - 1) & x < 1  \\ln x \\end{cases}$，则$f(x)$的一个原函数是()', '[''$F(x) = \\\\begin{cases} (x - 1)2, x < 1 x(\\\\ln x - 1), x ≥ 1 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} (x - 1)2, x < 1 x(\\\\ln x + 1) - 1, x ≥ 1 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} (x - 1)2, x < 1 x(\\\\ln x + 1) + 1, x ≥ 1 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} (x - 1)2, x < 1 x(\\\\ln x - 1) + 1, x ≥ 1 \\\\end{cases}$'']', "['D']", '我们已知原函数的导数为分段形式：
$$
f^{′}(x) = \\begin{cases} 2(x - 1) & x < 1,  \\ln x \\end{cases}
$$
要求原函数$F(x)$满足在$x = 1$处连续。1. 分段积分
$$
∫ 2(x - 1) dx = (x - 1)2 + C_{1}.
$$
2. 利用连续性确定常数在$x = 1$处，左极限：
$$
\\lim_{x→1^{-}} F(x) = (1 - 1)2 = 0.
$$
右极限：
$$
F(1) = 1 ⋅ (\\ln 1 - 1) + C_{2} = −1 + C_{2}.
$$
连续性要求：
$$
−1 + C_{2} = 0  ⇒  C_{2} = 1.
$$
3. 最终结果
$$
F(x) = \\begin{cases} (x - 1)2 & x < 1 \\\\ x(\\ln x - 1) + 1 & x ≥ 1. \\end{cases}
$$
', 9, 'Mogullzr', '2026-01-29 14:17:20', 9, 'Mogullzr', '2026-01-29 14:17:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2560');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2560');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '2560');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2561, '2016年考研数学卷1第3题', '简单', '考研数学2016年数1真题', '若$y = (1 + x^{2})2 - \\sqrt{1 + x^{2}}$和$y = (1 + x^{2})2 + \\sqrt{1 + x^{2}}$是微分方程$y^{′} + p(x)y = q(x)$的两个解，则$q(x) = ()$', '[''$3x (1 + x^{2})$'', ''$−3x (1 + x^{2})$'', ''$\\\\frac{x}{1+x^{2}}$'', ''$−\\\\frac{x}{1+x^{2}}$'']', "['A']", '我们已知原方程形式为：
$$
y^{′} + p(x)y = q(x)
$$
已知两个特解$y_{1}$和$y_{2}$，满足：
$$
y_{1} - y_{2} = −2\\sqrt{1 + x^{2}}
$$
且
$$
\\frac{y_{1} + y_{2}}{2} = (1 + x^{2})2
$$
1. 求$p(x)$两解之差$y_{1} - y_{2}$是对应齐次方程
$$
y^{′} + p(x)y = 0
$$
的解。代入$y = −2\\sqrt{1 + x^{2}}$：先求导：
$$
y^{′} = −2 ⋅ \\frac{x}{\\sqrt{1 + x^{2}}} = −\\frac{2x}{\\sqrt{1 + x^{2}}}
$$
代入齐次方程：
$$
−\\frac{2x}{\\sqrt{1 + x^{2}}} + p(x) ⋅  \\lbrack −2\\sqrt{1 + x^{2}}  \\rbrack  = 0
$$

$$
−\\frac{2x}{\\sqrt{1 + x^{2}}} - 2p(x)\\sqrt{1 + x^{2}} = 0
$$
两边乘以$−1$：
$$
\\frac{2x}{\\sqrt{1 + x^{2}}} + 2p(x)\\sqrt{1 + x^{2}} = 0
$$
除以 2：
$$
\\frac{x}{\\sqrt{1 + x^{2}}} + p(x)\\sqrt{1 + x^{2}} = 0
$$

$$
p(x)\\sqrt{1 + x^{2}} = −\\frac{x}{\\sqrt{1 + x^{2}}}
$$

$$
p(x) = −\\frac{x}{1 + x^{2}}
$$
2. 求$q(x)$将特解$\\frac{y_{1}+y_{2}}{2} = (1 + x^{2})2$代入原方程。设$Y = (1 + x^{2})2$，则
$$
Y^{′} = 2(1 + x^{2}) ⋅ 2x = 4x(1 + x^{2})
$$
原方程：
$$
Y^{′} + p(x)Y = q(x)
$$
代入：
$$
4x(1 + x^{2}) +  \\lbrack −\\frac{x}{1 + x^{2}} \\rbrack  ⋅ (1 + x^{2})2 = q(x)
$$
第二项化简：
$$
−\\frac{x}{1 + x^{2}} ⋅ (1 + x^{2})2 = −x(1 + x^{2})
$$
所以：
$$
4x(1 + x^{2}) - x(1 + x^{2}) = q(x)
$$

$$
3x(1 + x^{2}) = q(x)
$$
最终答案：
$$
p(x) = −\\frac{x}{1 + x^{2}},  q(x) = 3x(1 + x^{2})​
$$
', 9, 'Mogullzr', '2026-01-29 14:17:20', 9, 'Mogullzr', '2026-01-29 14:17:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2561');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2561');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1058', '2561');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2562, '2016年考研数学卷1第4题', '简单', '考研数学2016年数1真题', '已知函数$f(x) = \\begin{cases} x, x ≤ 0 \\\\ frac1n, \\frac{1}{n+1} < x ≤ \\frac{1}{n}, n = 1, 2, ⋯ \\end{cases}$，则（  ）', '[''$x = 0$是$f(x)$的第一类间断点'', ''$x = 0$是$f(x)$的第二类间断点'', ''$f(x)$在$x = 0$处连续但不可导'', ''$f(x)$在$x = 0$处可导'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:17:20', 9, 'Mogullzr', '2026-01-29 14:17:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2562');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2562');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '2562');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2563, '2016年考研数学卷1第5题', '简单', '考研数学2016年数1真题', '设$A$，$B$是可逆矩阵，且$A$与$B$相似，则下列结论错误的是()', '[''$A^{T}$与$B^{T}$相似'', ''$A^{−1}$与$B^{−1}$相似'', ''$A + A^{T}$与$B + B^{T}$相似'', ''$A + A^{−1}$与$B + B^{−1}$相似'']', "['C']", '由$A ∼ B$，存在可逆矩阵$P$使$P^{−1}AP = B$。(1)$(P^{−1}AP)T = B^{T} ⇒ P^{T}A^{T}(P^{T})−1 = B^{T}$，故$A^{T} ∼ B^{T}$，(A) 正确；(2)$(P^{−1}AP)−1 = B^{−1} ⇒ P^{−1}A^{−1}P = B^{−1}$，故$A^{−1} ∼ B^{−1}$，(B) 正确；(3)$P^{−1}(A + A^{−1})P = P^{−1}AP + P^{−1}A^{−1}P = B + B^{−1}$，故$A + A^{−1} ∼ B + B^{−1}$，(D) 正确；对于 (C)，$P^{−1}(A + A^{T})P = P^{−1}AP + P^{−1}A^{T}P$，而$P^{−1}A^{T}P$未必等于$B^{T}$，故 (C) 错误。', 9, 'Mogullzr', '2026-01-29 14:17:21', 9, 'Mogullzr', '2026-01-29 14:17:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2563');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '2563');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2564, '2016年考研数学卷1第6题', '简单', '考研数学2016年数1真题', '设二次型$f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + x_{2}^{2} + x_{3}^{2} + 4x_{1}x_{2} + 4x_{1}x_{3} + 4x_{2}x_{3}$，则$f(x_{1}, x_{2}, x_{3})$在空间直角坐标下表示的二次曲面为()', '[''单叶双曲面'', ''双叶双曲面'', ''椭球面'', ''柱面'']', "['B']", '二次型的矩阵为

$$
A = \\left( \\begin{array}{ccc}
1 & 2 & 2 \\\\
2 & 1 & 2 \\\\
2 & 2 & 1 \\\\
\\end{array} \\right)
$$
求特征值：由特征方程

$$
∣λE - A∣ = 0
$$
解得

$$
λ_{1} = 5,  λ_{2} = λ_{3} = −1
$$
因此，正惯性指数$p = 1$，负惯性指数$q = 2$。
二次型的规范形为

$$
f = z_{1}^{2} - z_{2}^{2} - z_{3}^{2}
$$
对应曲面方程为

$$
z_{1}^{2} - z_{2}^{2} - z_{3}^{2} = k (k为常数)
$$
当$k > 0$时，该曲面为双叶双曲面。', 9, 'Mogullzr', '2026-01-29 14:17:21', 9, 'Mogullzr', '2026-01-29 14:17:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2564');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2564');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2565, '2016年考研数学卷1第7题', '简单', '考研数学2016年数1真题', '设随机变量$X ∼ N(μ, σ^{2})(σ > 0)$，记$p = P\\{X ≤ μ + σ^{2}\\}$，则()', '[''$p$随着$μ$的增加而增加'', ''$p$随着$σ$的增加而增加'', ''$p$随着$μ$的增加而减少'', ''$p$随着$σ$的增加而减少'']', "['B']", '标准化得$p = P\\{X ≤ μ + σ^{2}\\} = P \\{\\frac{X-μ}{σ} ≤ σ\\} = Φ(σ)$，其中$Φ(x)$为标准正态分布的分布函数，单调递增，故$p$随$σ$的增加而增加。', 9, 'Mogullzr', '2026-01-29 14:17:21', 9, 'Mogullzr', '2026-01-29 14:17:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2565');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2565');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2566, '2016年考研数学卷1第8题', '简单', '考研数学2016年数1真题', '随机试验$E$有三种两两不相容的结果$A_{1}$、$A_{2}$、$A_{3}$，且三种结果发生的概率均为$\\frac{1}{3}$。将试验$E$独立重复做$2$次，$X$表示$2$次试验中结果$A_{1}$发生的次数，$Y$表示$2$次试验中结果$A_{2}$发生的次数，则$X$与$Y$的相关系数为（  ）', '[''$−\\\\frac{1}{2}$'', ''$−\\\\frac{1}{3}$'', ''$\\\\frac{1}{3}$'', ''$\\\\frac{1}{2}$'']', "['B']", '
已知$X ∼ B (2, \\frac{1}{3})$，$Y ∼ B (2, \\frac{1}{3})$，则

$$
E(X) = E(Y) = \\frac{2}{3},  D(X) = D(Y) = \\frac{4}{9}.
$$
计算$E(XY)$：

$$
E(XY) = \\sum_{k=0}^{2} \\sum_{l=0}^{2} kl ⋅ P(X = k, Y = l).
$$
仅当$k = l = 1$时非零，此时

$$
P(X = 1, Y = 1) = C_{2}^{1} ⋅ \\frac{1}{3} ⋅ \\frac{2}{3} ⋅ C_{1}^{1} ⋅ \\frac{1}{3} ⋅ \\frac{1}{3} = \\frac{2}{9},
$$
因此

$$
E(XY) = 1 × 1 × \\frac{2}{9} = \\frac{2}{9}.
$$
相关系数为

$$
ρ_{XY} = \\frac{E(XY) - E(X)E(Y)}{\\sqrt{D(X)D(Y)}} = \\frac{\\frac{2}{9} - (\\frac{2}{3})^{2}}{\\frac{4}{9}} = −\\frac{1}{2}.
$$
', 9, 'Mogullzr', '2026-01-29 14:17:21', 9, 'Mogullzr', '2026-01-29 14:17:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2566');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2566');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '2566');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2567, '2016年考研数学卷1第9题', '简单', '考研数学2016年数1真题', '（填空题）
$$
\\lim_{x→0} \\frac{\\int_{0}^{x} t \\ln(1 + t \\sin t)dt}{1 - \\cos x^{2}} =
$$
', '[]', '$\\frac{1}{2}$
', '

$$
\\lim_{x→0} \\frac{\\int_{0}^{x} t \\ln(1 + t \\sin t)dt}{1 - \\cos x^{2}} = \\lim_{x→0} \\frac{x \\ln(1 + x \\sin x)}{2x \\sin x^{2}} = \\lim_{x→0} \\frac{x \\sin x}{2x^{2}} = \\frac{1}{2} \\lim_{x→0} \\frac{\\sin x}{x} = \\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:21', 9, 'Mogullzr', '2026-01-29 14:17:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2567');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2567');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2567');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2568, '2016年考研数学卷1第10题', '简单', '考研数学2016年数1真题', '（填空题）向量场$A(x, y, z) = (x + y + z)i + xyj + zk$的旋度$rotA =$______。', '[]', '$j + (y - 1)k$
', '

$$
rotA = \\left( \\begin{array}{ccc}
i & j & k \\\\
\\frac{∂}{∂x} & \\frac{∂}{∂y} & \\frac{∂}{∂z} \\\\
x + y + z & xy & z \\\\
\\end{array} \\right) = j + (y - 1)k
$$

', 9, 'Mogullzr', '2026-01-29 14:17:22', 9, 'Mogullzr', '2026-01-29 14:17:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2568');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2568');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1056', '2568');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2569, '2016年考研数学卷1第11题', '简单', '考研数学2016年数1真题', '（填空题）设函数$f(u, v)$可微,$z = z(x, y)$由方程$(x + 1)z - y^{2} = x^{2}f(x - z, y)$确定,则$dz∣_{(0,1)} =$', '[]', '$dz∣_{(0,1)} = −dx + 2dy$
', '
已知方程


$$
(x + 1)z - y^{2} = x^{2}f(x - z, y)
$$

两边分别关于$x$、$y$求偏导：

$$
z + (x + 1)z_{x}^{′} = 2xf(x - z, y) + x^{2}f_{1}^{′}(x - z, y) ⋅ (1 - z_{x}^{′})
$$

将$x = 0$，$y = 1$，$z = 1$代入上述两式，可得


$$
dz∣_{(0,1)} = −dx + 2dy
$$

', 9, 'Mogullzr', '2026-01-29 14:17:22', 9, 'Mogullzr', '2026-01-29 14:17:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2569');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2569');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '2569');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2570, '2016年考研数学卷1第12题', '简单', '考研数学2016年数1真题', '（填空题）设函数$f(x) = arctan x - \\frac{x}{1+ax^{2}}$，且$f^{′′}(0) = 1$，则$a =$', '[]', '$a = \\frac{1}{2}$
', '', 9, 'Mogullzr', '2026-01-29 14:17:22', 9, 'Mogullzr', '2026-01-29 14:17:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2570');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2570');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2570');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2571, '2016年考研数学卷1第13题', '简单', '考研数学2016年数1真题', '（填空题）行列式

$$
\\begin{vmatrix}
λ & −1 & 0 & 0\\\\
0 & λ & −1 & 0\\\\
0 & 0 & λ & −1\\\\
4 & 3 & 2 & λ + 1
\\end{vmatrix} =
$$
', '[]', '

$$
λ^{4} + λ^{3} + 2λ^{2} + 3λ + 4
$$

', '

$$
\\begin{vmatrix}
λ & −1 & 0 & 0\\\\
0 & λ & −1 & 0\\\\
0 & 0 & λ & −1\\\\
4 & 3 & 2 & λ + 1
\\end{vmatrix} = λ \\begin{vmatrix}
λ & −1 & 0\\\\
0 & λ & −1\\\\
3 & 2 & λ + 1
\\end{vmatrix} + 4 × (−1)4+1 \\begin{vmatrix}
−1 & 0 & 0\\\\
λ & −1 & 0\\\\
0 & λ & −1
\\end{vmatrix}
$$


$$
= λ^{4} + λ^{3} + 2λ^{2} + 3λ + 4
$$

', 9, 'Mogullzr', '2026-01-29 14:17:22', 9, 'Mogullzr', '2026-01-29 14:17:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2571');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2571');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2572, '2016年考研数学卷1第14题', '简单', '考研数学2016年数1真题', '（填空题）设$x_{1}, x_{2}, … , x_{n}$为来自总体$N(μ, σ^{2})$的简单随机样本，样本均值$\\overline{x} = 9.5$，参数$μ$的置信度为$0.95$的双侧置信区间的置信上限为$10.8$，则$μ$的置信度为$0.95$的双侧置信区间为______。', '[]', '(8.2, 10.8)
', '
$P\\{−u_{0.025} < \\frac{\\overline{x}-μ}{\\frac{σ}{\\sqrt{n}}} < u_{0.025}\\} = P\\{\\overline{x} - u_{0.025}\\frac{σ}{\\sqrt{n}} < μ < \\overline{x} + u_{0.025}\\frac{σ}{\\sqrt{n}}\\} = 0.95$。
因为$\\overline{x} + u_{0.025}\\frac{σ}{\\sqrt{n}} = 10.8$，所以$u_{0.025}\\frac{σ}{\\sqrt{n}} = 1.3$。
因此，置信下限$\\overline{x} - u_{0.025}\\frac{σ}{\\sqrt{n}} = 8.2$。
', 9, 'Mogullzr', '2026-01-29 14:17:22', 9, 'Mogullzr', '2026-01-29 14:17:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2572');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2572');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1075', '2572');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2573, '2016年考研数学卷1第15题', '简单', '考研数学2016年数1真题', '（本题满分 10 分）已知平面区域$D = \\{(r, θ)​2 ≤ r ≤ 2(1 + \\cos θ), −\\frac{π}{2} ≤ θ ≤ \\frac{π}{2}\\}$，计算二重积分$\\iint_{D} x dx dy$。', '[]', '$5π + \\frac{32}{3}$
', '


$$
∬_{D} x dx dy = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} dθ \\int_{2}^{2(1+\\cos θ)} r^{2} \\cos θ dr = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos θ ⋅ \\frac{r^{3}}{3}​_{2}^{2(1+\\cos θ)} dθ
$$


$$
= \\frac{8}{3} \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} (3 \\cos^{2} θ + 3 \\cos^{3} θ + \\cos^{4} θ)  dθ
$$


$$
= 8 \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos^{2} θ dθ + 8 \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos^{3} θ dθ + \\frac{8}{3} \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos^{4} θ dθ
$$


$$
= 8 \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\frac{\\cos 2θ + 1}{2} dθ + 8 \\int_{−\\frac{π}{2}}^{\\frac{π}{2}}(1 - \\sin^{2} θ) d \\sin θ + \\frac{8}{3} \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\cos^{3} θ d \\sin θ
$$


$$
= 4 (\\frac{\\sin 2θ}{2} + θ) ​_{−\\frac{π}{2}}^{\\frac{π}{2}} + 8 (\\sin θ - \\frac{\\sin^{3} θ}{3}) ​_{−\\frac{π}{2}}^{\\frac{π}{2}} + \\frac{8}{3} \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} 3 \\sin^{2} θ \\cos^{2} θ dθ
$$


$$
= 4π + \\frac{32}{3} - 2 \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\sin^{2} 2θ dθ
$$


$$
= 5π + \\frac{32}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:22', 9, 'Mogullzr', '2026-01-29 14:17:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2573');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2573');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2573');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2574, '2016年考研数学卷1第16题', '简单', '考研数学2016年数1真题', '（本题满分10分）设函数$y(x)$满足方程$y^{′′} + 2y^{′} + ky = 0$，其中$0 < k < 1$。(Ⅰ) 证明：反常积分$\\int_{0}^{∞} y(x)dx$收敛；(Ⅱ) 若$y(0) = 1$，$y^{′}(0) = 1$，求$\\int_{0}^{∞} y(x)dx$的值。', '[]', '
(Ⅰ) 见解析
(Ⅱ) \\[\\frac{3}{k} \\]
', '
(Ⅰ) 证明反常积分


$$
\\int_{0}^{∞} y(x) dx
$$

收敛。
给定微分方程


$$
y^{′′} + 2y^{′} + ky = 0,
$$

其中$0 < k < 1$。
特征方程为


$$
r^{2} + 2r + k = 0,
$$

判别式为


$$
Δ = 4 - 4k = 4(1 - k) > 0 (因为0 < k < 1),
$$

故特征根为两个不同的实根：


$$
r = −1 ± \\sqrt{1 - k}.
$$

由于$0 < k < 1$，有$\\sqrt{1 - k} > 0$，且$\\sqrt{1 - k} < 1$，因此


$$
r_{1} = −1 + \\sqrt{1 - k} < 0,  r_{2} = −1 - \\sqrt{1 - k} < 0.
$$

微分方程的通解为


$$
y(x) = C_{1}e^{r_{1}x} + C_{2}e^{r_{2}x},
$$

其中$C_{1}$和$C_{2}$为常数。
由于$r_{1} < 0$和$r_{2} < 0$，当$x → ∞$时，$y(x) ∼ e^{rx} (r < 0)$，即$y(x)$指数衰减。
因此，反常积分


$$
\\int_{0}^{∞} y(x) dx
$$

收敛。

(Ⅱ)
方法一：直接积分法
设


$$
I = \\int_{0}^{∞} y(x) dx.
$$

由通解形式：


$$
y(x) = C_{1}e^{r_{1}x} + C_{2}e^{r_{2}x},
$$

计算积分：


$$
I = \\int_{0}^{∞} (C_{1}e^{r_{1}x} + C_{2}e^{r_{2}x}) dx = −\\frac{C_{1}}{r_{1}} - \\frac{C_{2}}{r_{2}}.
$$

利用初始条件：


$$
y(0) = C_{1} + C_{2} = 1,  y^{′}(0) = r_{1}C_{1} + r_{2}C_{2} = 1,
$$

解得：


$$
C_{1} = \\frac{1 - r_{2}}{r_{1} - r_{2}},  C_{2} = \\frac{r_{1} - 1}{r_{1} - r_{2}}.
$$

代入$I$得：


$$
I = −\\frac{1}{r_{1} - r_{2}} (\\frac{1 - r_{2}}{r_{1}} + \\frac{r_{1} - 1}{r_{2}}) .
$$

计算括号内表达式：


$$
\\frac{1 - r_{2}}{r_{1}} + \\frac{r_{1} - 1}{r_{2}} = \\frac{1}{r_{1}} - \\frac{r_{2}}{r_{1}} + \\frac{r_{1}}{r_{2}} - \\frac{1}{r_{2}} = (\\frac{1}{r_{1}} - \\frac{1}{r_{2}}) + (\\frac{r_{1}}{r_{2}} - \\frac{r_{2}}{r_{1}}) .
$$

利用根与系数关系：


$$
r_{1} + r_{2} = −2,  r_{1}r_{2} = k,
$$

进一步化简得：


$$
I = \\frac{3}{k}.
$$


方法二：积分微分方程法
对原方程两边从$0$到$∞$积分：


$$
\\int_{0}^{∞} y^{′′}(x) dx + 2 \\int_{0}^{∞} y^{′}(x) dx + k \\int_{0}^{∞} y(x) dx = 0.
$$

计算各项：


$$
\\int_{0}^{∞} y^{′}(x) dx =  \\lbrack y(x) \\rbrack _{0}^{∞} = y(∞) - y(0) = 0 - 1 = −1,
$$



$$
\\int_{0}^{∞} y^{′′}(x) dx =  \\lbrack y^{′}(x) \\rbrack _{0}^{∞} = y^{′}(∞) - y^{′}(0) = 0 - 1 = −1.
$$

设$I = \\int_{0}^{∞} y(x) dx$，代入得：


$$
−1 + 2(−1) + kI = 0  ⇒  −3 + kI = 0  ⇒  I = \\frac{3}{k}.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:23', 9, 'Mogullzr', '2026-01-29 14:17:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2574');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2574');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '2574');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2575, '2016年考研数学卷1第17题', '简单', '考研数学2016年数1真题', '（本题满分 10 分）设函数$f(x, y)$满足

$$
\\frac{∂f(x, y)}{∂x} = (2x + 1)e^{2x-y}
$$
且$f(0, y) = y + 1$，$L_{t}$是从点$(0, 0)$到点$(1, t)$的光滑曲线，计算曲线积分

$$
I(t) = \\int_{L_{t}} \\frac{∂f(x, y)}{∂x} dx + \\frac{∂f(x, y)}{∂y} dy,
$$
并求$I(t)$的最小值。', '[]', '
曲线积分$I(t) = t + e^{2-t}$，当$t = 2$时取得最小值$3$。
', '
(1) 由$\\frac{∂f(x,y)}{∂x} = (2x + 1)e^{2x-y}$可知：

$$
f(x, y) = ∫(2x + 1)e^{2x-y} dx = e^{−y}  \\lbrack ∫ 2xe^{2x} dx + ∫ e^{2x} dx \\rbrack
$$


$$
= e^{−y} ⋅ xe^{2x} + φ(y) = xe^{2x-y} + φ(y)
$$

又$f(0, y) = y + 1$，可知$φ(y) = y + 1$。
因此：

$$
f(x, y) = xe^{2x-y} + y + 1
$$


$$
\\frac{∂f(x, y)}{∂y} = −xe^{2x-y} + 1
$$


$$
I(t) = \\int_{L_{t}}(2x + 1)e^{2x-y} dx + (1 - xe^{2x-y}) dy
$$

令$P = (2x + 1)e^{2x-y}$，$Q = 1 - xe^{2x-y}$，则：

$$
\\frac{∂P}{∂y} = −(2x + 1)e^{2x-y},  \\frac{∂Q}{∂x} = −e^{2x-y} - 2xe^{2x-y}
$$

因$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，故积分与路径无关。

$$
I(t) = \\int_{L_{t}}(2x + 1)e^{2x-y} dx + (1 - xe^{2x-y}) dy
$$


$$
= \\int_{0}^{1}(2x + 1)e^{2x} dx + \\int_{0}^{t}(1 - e^{2-y}) dy
$$


$$
= e^{2} + t + e^{2-t} - e^{2} = t + e^{2-t}
$$

(2)$I(t) = t + e^{2-t}$

$$
I^{′}(t) = 1 - e^{2-t}
$$

令$I^{′}(t) = 0$，可知$t = 2$（有唯一驻点）。
又$I^{′′}(t) = e^{2-t}$，则$I^{′′}(2) = 1 > 0$。
因此$t = 2$时，$I(t)$有最小值，且：

$$
I(2) = 2 + e^{2-2} = 2 + 1 = 3
$$

', 9, 'Mogullzr', '2026-01-29 14:17:23', 9, 'Mogullzr', '2026-01-29 14:17:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2575');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2575');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '2575');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2576, '2016年考研数学卷1第18题', '简单', '考研数学2016年数1真题', '（本题满分 10 分）设有界区域$Ω$由平面$2x + y + 2z = 2$与三个坐标平面围成，$∑$为$Ω$整个表面的外侧，计算曲面积分$I = \\iint_{∑}(x^{2} + 1) dy dz - 2y dz dx + 3z dx dy$。', '[]', '$\\frac{1}{2}$
', '', 9, 'Mogullzr', '2026-01-29 14:17:23', 9, 'Mogullzr', '2026-01-29 14:17:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2576');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '2576');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2577, '2016年考研数学卷1第19题', '简单', '考研数学2016年数1真题', '（本题满分10分）已知函数$f(x)$可导，且$f(0) = 1$，$0 < f^{′}(x) < \\frac{1}{2}$，设数列$\\{x_{n}\\}$满足$x_{n+1} = f(x_{n})(n = 1, 2 ⋯ )$，证明：（I）级数$\\sum_{n=1}^{∞}(x_{n+1} - x_{n})$绝对收敛；（II）$\\lim_{n→∞} x_{n}$存在，且$0 < \\lim_{n→∞} x_{n} < 2$。', '[]', '见解析
', '【证明】(1)$x_{n+1} = f(x_{n})$

$$
\\begin{array}{cc}
∣x_{n+1} - x_{n}∣ & = ∣f(x_{n}) - f(x_{n-1})∣ \\\\
 & = ∣f^{′}(ξ)(x_{n} - x_{n-1})∣ \\\\
 & < \\frac{1}{2} ∣x_{n} - x_{n-1}∣ \\\\
\\end{array}
$$

显然，$\\sum_{n=1}^{∞} \\frac{1}{2^{n-1}} ∣x_{2} - x_{1}∣$收敛，因此，$\\sum_{n=1}^{∞}(x_{n+1} - x_{n})$绝对收敛;
(2)$\\sum_{n=1}^{∞}(x_{n+1} - x_{n})$的前$n$项和记为$S_{n}$
易知，$S_{n} = x_{n+1} - x_{1}$，由第一问可知$S_{n}$极限存在，因此$\\lim_{n→∞} x_{n} = A$存在
$x_{n+1} = f(x_{n}) = f(x_{n}) - f(0) + 1$
$= f^{′}(ξ)x_{n} + 1$（*）
i）由已知$0 < f^{′}(x) < \\frac{1}{2}$，易知$x_{n+1} = f^{′}(ξ)x_{n} + 1 < \\frac{1}{2}x_{n} = 1$
不等式两边取极限，可知$A < \\frac{1}{2}A + 1$，即$A < 2$；
ii）若$A = 0$，则（*）矛盾；
iii）若$A < 0$，则由（*）可知$(1 - f^{′}(ξ))A = 1$，而$0 < f^{′}(x) < \\frac{1}{2}$，显然矛盾
综上，$0 < A < 2$
', 9, 'Mogullzr', '2026-01-29 14:17:23', 9, 'Mogullzr', '2026-01-29 14:17:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2577');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2577');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2577');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2578, '2016年考研数学卷1第20题', '简单', '考研数学2016年数1真题', '（本题满分 11 分）设矩阵

$$
A = \\left( \\begin{array}{ccc}
1 & −1 & −1 \\\\
2 & a & 1 \\\\
−1 & 1 & a \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cc}
2 & 2 \\\\
1 & a \\\\
−a - 1 & −2 \\\\
\\end{array} \\right)
$$
当$a$为何值时，方程$AX = B$无解、有唯一解、有无穷多解？', '[]', '
当$a \\neq 1$且$a \\neq −2$时，方程有唯一解；
当$a = −2$时，方程无解；
当$a = 1$时，方程有无穷多解。
', '
', 9, 'Mogullzr', '2026-01-29 14:17:23', 9, 'Mogullzr', '2026-01-29 14:17:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2578');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '2578');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2579, '2016年考研数学卷1第21题', '简单', '考研数学2016年数1真题', '（本题满分 11 分）已知矩阵

$$
A = \\left( \\begin{array}{ccc}
0 & −1 & 1 \\\\
2 & −3 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$
（I）求$A^{99}$。（II）设 3 阶矩阵$B = (α_{1}, α_{2}, α_{3})$满足$B^{2} = BA$，记$B^{100} = (β_{1}, β_{2}, β_{3})$，将$β_{1}, β_{2}, β_{3}$分别表示为$α_{1}, α_{2}, α_{3}$的线性组合。', '[]', '
（I）


$$
A^{99} = \\left( \\begin{array}{ccc}
−2 + 2^{99} & 1 - 2^{99} & 2 - 2^{98} \\\\
−2 + 2^{100} & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

（II）


$$
\\begin{array}{cc}
β_{1} & = (−2 + 2^{99})α_{1} + (−2 + 2^{100})α_{2}, \\\\
β_{2} & = (1 - 2^{99})α_{1} + (1 - 2^{100})α_{2}, \\\\
β_{3} & = (2 - 2^{98})α_{1} + (2 - 2^{99})α_{2}. \\\\
\\end{array}
$$

', '
(1)
利用相似对角化，由特征方程$∣λE - A∣ = 0$得$A$的特征值为


$$
λ_{1} = 0,  λ_{2} = −1,  λ_{3} = −2,
$$

于是$A ∼ Λ = \\left( \\begin{array}{ccc}
0 &  &  \\\\
 & −1 &  \\\\
 &  & −2 \\\\
\\end{array} \\right)$。
当$λ_{1} = 0$时，由$(0E - A)x = 0$解得属于$λ_{1} = 0$的特征向量为


$$
γ_{1} = \\left( \\begin{array}{c}
3 \\\\
2 \\\\
2 \\\\
\\end{array} \\right) ;
$$

当$λ_{2} = −1$时，由$(−E - A)x = 0$解得属于$λ_{2} = −1$的特征向量为


$$
γ_{2} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) ;
$$

当$λ_{3} = −2$时，由$(−2E - A)x = 0$解得属于$λ_{3} = −2$的特征向量为


$$
γ_{3} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
0 \\\\
\\end{array} \\right) .
$$

取可逆矩阵


$$
P = (γ_{1}, γ_{2}, γ_{3}) = \\left( \\begin{array}{ccc}
3 & 1 & 1 \\\\
2 & 1 & 2 \\\\
2 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

则有$P^{−1}AP = Λ$，即$A = PΛP^{−1}$。于是


$$
A^{99} = PΛ^{99}P^{−1}.
$$

计算可得


$$
A^{99} = \\left( \\begin{array}{ccc}
−2 + 2^{99} & 1 - 2^{99} & 2 - 2^{98} \\\\
−2 + 2^{100} & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) .
$$


(2)
由$B^{2} = BA$可得


$$
B^{3} = B^{2}A = BA^{2},
$$

依此类推，有


$$
B^{100} = BA^{99}.
$$

已知$B = (α_{1}, α_{2}, α_{3})$，且$B^{100} = (β_{1}, β_{2}, β_{3})$，因此


$$
(β_{1}, β_{2}, β_{3}) = (α_{1}, α_{2}, α_{3})A^{99} = (α_{1}, α_{2}, α_{3}) \\left( \\begin{array}{ccc}
−2 + 2^{99} & 1 - 2^{99} & 2 - 2^{98} \\\\
−2 + 2^{100} & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) .
$$

于是可得


$$
\\begin{array}{cc}
β_{1} & = (−2 + 2^{99})α_{1} + (−2 + 2^{100})α_{2}, \\\\
β_{2} & = (1 - 2^{99})α_{1} + (1 - 2^{100})α_{2}, \\\\
β_{3} & = (2 - 2^{98})α_{1} + (2 - 2^{99})α_{2}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:24', 9, 'Mogullzr', '2026-01-29 14:17:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2579');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2579');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2579');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2580, '2016年考研数学卷1第22题', '简单', '考研数学2016年数1真题', '（本题满分 11 分）设二维随机变量$(X, Y)$在区域$D = \\{(x, y) ∣ 0 < x < 1, x^{2} < y < \\sqrt{x}\\}$上服从均匀分布，令
$$
U = \\begin{cases} 1 & X ≤ Y \\\\ 0 & X > Y \\end{cases}
$$
（Ⅰ）写出$(X, Y)$的概率密度；（Ⅱ）问$U$与$X$是否相互独立？并说明理由；（Ⅲ）求$Z = U + X$的分布函数$F(z)$。', '[]', '
（Ⅰ）$(X, Y)$的概率密度为


$$
f(x, y) = \\begin{cases} 3 & 0 < x < 1,  x^{2} < y < \\sqrt{x} \\\\ 0 & 其他. \\end{cases}
$$

（Ⅱ）$U$与$X$不相互独立。理由：


$$
P \\{U ≤ \\frac{1}{2}\\} = \\frac{1}{2},  P \\{X ≤ \\frac{1}{2}\\} = \\frac{1}{2},
$$

但


$$
P \\{U ≤ \\frac{1}{2},  X ≤ \\frac{1}{2}\\} \\neq P \\{U ≤ \\frac{1}{2}\\} P \\{X ≤ \\frac{1}{2}\\} ,
$$

因此不独立。
（Ⅲ）$Z = U + X$的分布函数为


$$
F_{Z}(z) = \\begin{cases} 0 & z < 0 \\\\ \\frac{3}{2}z^{2} - z^{3} & 0 ≤ z < 1 \\\\ \\frac{1}{2} + 2(z - 1)3/2 - \\frac{3}{2}(z - 1)2 & 1 ≤ z < 2 \\\\ 1 & z ≥ 2. \\end{cases}
$$

', '
(1)区域$D$的面积为


$$
s(D) = \\int_{0}^{1}(\\sqrt{x} - x^{2}) dx = \\frac{1}{3}.
$$

由于$(X, Y)$服从区域$D$上的均匀分布，因此


$$
f(x, y) = \\begin{cases} 3 & 0 < x < 1,  x^{2} < y < \\sqrt{x} \\\\ 0 & 其他. \\end{cases}
$$


(2)$U$与$X$不独立。理由如下：


$$
P \\{U ≤ \\frac{1}{2}\\} = \\frac{1}{2},  P \\{X ≤ \\frac{1}{2}\\} = \\frac{1}{2},
$$

但


$$
P \\{U ≤ \\frac{1}{2},  X ≤ \\frac{1}{2}\\} \\neq P \\{U ≤ \\frac{1}{2}\\} P \\{X ≤ \\frac{1}{2}\\} ,
$$

因此$U$与$X$不独立。

(3)


$$
\\begin{array}{cc}
F_{Z}(z) & = P\\{U + X ≤ z\\} \\\\
 & = P\\{U + X ≤ z ∣ U = 0\\}P\\{U = 0\\} \\\\
 & + P\\{U + X ≤ z ∣ U = 1\\}P\\{U = 1\\}. \\\\
\\end{array}
$$

即


$$
F_{Z}(z) = P\\{X ≤ z,  X > Y\\} + P\\{1 + X ≤ z,  X ≤ Y\\}.
$$

其中


$$
P\\{X ≤ z,  X > Y\\} = \\begin{cases} 0 & z < 0 \\\\ \\frac{3}{2}z^{2} - z^{3} & 0 ≤ z < 1 \\\\ \\frac{1}{2} & z ≥ 1 \\end{cases}
$$



$$
P\\{X + 1 ≤ z,  X ≤ Y\\} = \\begin{cases} 0 & z < 1 \\\\ 2(z - 1)3/2 - \\frac{3}{2}(z - 1)2 & 1 ≤ z < 2 \\\\ \\frac{1}{2} & z ≥ 2. \\end{cases}
$$

因此


$$
F_{Z}(z) = \\begin{cases} 0 & z < 0 \\\\ \\frac{3}{2}z^{2} - z^{3} & 0 ≤ z < 1 \\\\ \\frac{1}{2} + 2(z - 1)3/2 - \\frac{3}{2}(z - 1)2 & 1 ≤ z < 2 \\\\ 1 & z ≥ 2. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:24', 9, 'Mogullzr', '2026-01-29 14:17:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2580');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2580');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2580');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2581, '2016年考研数学卷1第23题', '简单', '考研数学2016年数1真题', '（本题满分 11 分）设总体$X$的概率密度为
$$
f(x, θ) = \\begin{cases} \\frac{3x^{2}}{θ^{3}} & 0 < x < θ \\\\ 0 & 其他 \\end{cases}
$$
其中$θ ∈ (0, +∞)$为未知参数，$X_{1}, X_{2}, X_{3}$为来自总体$X$的简单随机样本，令$T = \\max\\{X_{1}, X_{2}, X_{3}\\}$。(1) 求$T$的概率密度(2) 确定$a$，使得$aT$为$θ$的无偏估计', '[]', '
(1)$T$的概率密度函数为


$$
f_{T}(t) = \\begin{cases} \\frac{9t^{8}}{θ^{9}} & 0 < t < θ \\\\ 0 & 其他 \\end{cases}
$$

(2)$a = \\frac{10}{9}$
', '
（1）由题意，$X_{1}, X_{2}, X_{3}$独立同分布，$T = \\max(X_{1}, X_{2}, X_{3})$的分布函数为


$$
\\begin{array}{cc}
F_{T}(t) & = P \\{\\max(X_{1}, X_{2}, X_{3}) ≤ t\\} \\\\
 & = P\\{X_{1} ≤ t, X_{2} ≤ t, X_{3} ≤ t\\} \\\\
 & = P\\{X_{1} ≤ t\\} ⋅ P\\{X_{2} ≤ t\\} ⋅ P\\{X_{3} ≤ t\\} \\\\
\\end{array}
$$

当$t < 0$时，$F_{T}(t) = 0$；当$0 < t < θ$时，
$F_{T}(t) =  \\lbrack \\int_{0}^{t} \\frac{3x^{2}}{θ^{3}} dx \\rbrack ^{3} = (\\frac{t^{3}}{θ^{3}})^{3} = \\frac{t^{9}}{θ^{9}}$当$t ≥ θ$时，$F_{T}(t) = 1$。
对$F_{T}(t)$求导，得概率密度函数：


$$
f_{T}(t) = \\begin{cases} \\frac{9t^{8}}{θ^{9}} & 0 < t < θ \\\\ 0 & 其他 \\end{cases}
$$

（2）计算$E(aT)$：


$$
\\begin{array}{cc}
E(aT) & = aE(T) = a \\int_{0}^{θ} t ⋅ \\frac{9t^{8}}{θ^{9}} dt \\\\
 & = \\frac{9a}{θ^{9}} \\int_{0}^{θ} t^{9} dt \\\\
\\end{array}
$$

若$aT$为$θ$的无偏估计，则需满足


$$
E(aT) = θ
$$

即


$$
\\frac{9a}{10}θ = θ  ⇒  a = \\frac{10}{9}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:24', 9, 'Mogullzr', '2026-01-29 14:17:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2581');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2581');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '2581');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2582, '2016年考研数学卷2第1题', '简单', '考研数学2016年数2真题', '设$a_{1} = x(\\cos \\sqrt{x} - 1)$，$a_{2} = \\sqrt{x} \\ln(1 + \\sqrt{x})$，$a_{3} = \\sqrt{x + 1} - 1$，当$x → 0^{+}$时，以上 3 个无穷小量按照从低阶到高阶的排序是（ ）。', '[''$a_{1}, a_{2}, a_{3}$'', ''$a_{2}, a_{3}, a_{1}$'', ''$a_{2}, a_{1}, a_{3}$'', ''$a_{3}, a_{2}, a_{1}$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:17:27', 9, 'Mogullzr', '2026-01-29 14:17:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2582');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2582');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2582');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2583, '2016年考研数学卷2第2题', '简单', '考研数学2016年数2真题', '已知函数$f(x) = \\begin{cases} 2(x - 1) & x < 1 \\\\ \\ln x & x ≥ 1 \\end{cases}$，则$f(x)$的一个原函数是', '[''$F(x) = \\\\begin{cases} (x - 1)2 & x < 1 \\\\\\\\ x(\\\\ln x - 1) & x ≥ 1. \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} (x - 1)2 & x < 1 \\\\\\\\ x(\\\\ln x + 1) - 1 & x ≥ 1. \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} (x - 1)2 & x < 1 \\\\\\\\ x(\\\\ln x + 1) + 1 & x ≥ 1. \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} (x - 1)2 & x < 1 \\\\\\\\ x(\\\\ln x - 1) + 1 & x ≥ 1. \\\\end{cases}$'']', "['D']", '
设$F(x) = ∫ f(x)dx$，由题设得

$$
F(x) = \\begin{cases} (x - 1)2 & x < 1 \\\\ x \\ln x - x + C & x > 1 \\end{cases}
$$
由于$F(x)$连续，需满足

$$
F(1^{-}) = F(1^{+}).
$$
代入计算得

$$
(1 - 1)2 = 1 ⋅ \\ln 1 - 1 + C  ⇒  0 = −1 + C,
$$
因此

$$
C = 1.
$$
', 9, 'Mogullzr', '2026-01-29 14:17:27', 9, 'Mogullzr', '2026-01-29 14:17:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '2583');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2584, '2016年考研数学卷2第3题', '简单', '考研数学2016年数2真题', '反常积分 ①$\\int_{−∞}^{0} \\frac{1}{x^{2}}e^{\\frac{1}{x}} dx$，②$\\int_{0}^{+∞} \\frac{1}{x^{2}}e^{\\frac{1}{x}} dx$的敛散性为', '[''①收敛，②收敛'', ''①收敛，②发散'', ''①发散，②收敛'', ''①发散，②发散'']', "['B']", '
考虑积分$\\int_{−∞}^{0} \\frac{1}{x^{2}}e^{\\frac{1}{x}}dx$，
令$u = \\frac{1}{x}$，则$du = −\\frac{1}{x^{2}}dx$，
于是原积分化为

$$
\\int_{−∞}^{0} \\frac{1}{x^{2}}e^{\\frac{1}{x}}dx = − \\int_{−∞}^{0} e^{\\frac{1}{x}}d (\\frac{1}{x}) = −e^{\\frac{1}{x}}​_{−∞}^{0}
$$
代入上下限得

$$
− (\\lim_{x→0^{-}} e^{\\frac{1}{x}} - \\lim_{x→−∞} e^{\\frac{1}{x}}) = −(0 - 1) = 1
$$
该积分收敛。再考虑$\\int_{0}^{+∞} \\frac{1}{x^{2}}e^{\\frac{1}{x}}dx$，
类似地有

$$
\\int_{0}^{+∞} \\frac{1}{x^{2}}e^{\\frac{1}{x}}dx = − \\int_{0}^{+∞} e^{\\frac{1}{x}}d (\\frac{1}{x}) = −e^{\\frac{1}{x}}​_{0}^{+∞}
$$
代入上下限得

$$
− (\\lim_{x→+∞} e^{\\frac{1}{x}} - \\lim_{x→0^{+}} e^{\\frac{1}{x}}) = −(1 - ∞) = +∞
$$
该积分发散。因此，应选 B。', 9, 'Mogullzr', '2026-01-29 14:17:27', 9, 'Mogullzr', '2026-01-29 14:17:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2584');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2584');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2584');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2585, '2016年考研数学卷2第4题', '简单', '考研数学2016年数2真题', '设函数$f(x)$在$(−∞, +∞)$内连续，其导函数的图形如图所示，则（  ）
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/07eb9dc4927b4c91ad03b546e899c019.jpg)
', '[''函数$f(x)$有2个极值点，曲线$y = f(x)$有2个拐点.'', ''函数$f(x)$有2个极值点，曲线$y = f(x)$有3个拐点.'', ''函数$f(x)$有3个极值点，曲线$y = f(x)$有1个拐点.'', ''函数$f(x)$有3个极值点，曲线$y = f(x)$有2个拐点.'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:17:29', 9, 'Mogullzr', '2026-01-29 14:17:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2585');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2585');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '2585');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2586, '2016年考研数学卷2第5题', '简单', '考研数学2016年数2真题', '设函数$f_{i}(x) (i = 1, 2)$具有二阶连续导数，且$f_{i}^{′′}(x_{0}) < 0 (i = 1, 2)$，若两条曲线$y = f_{i}(x) (i = 1, 2)$在点$(x_{0}, y_{0})$处具有公切线$y = g(x)$，且在该点处曲线$y = f_{1}(x)$的曲率大于曲线$y = f_{2}(x)$的曲率，则在$x_{0}$的某个邻域内，有（  ）', '[''$f_{1}(x) ≤ f_{2}(x) ≤ g(x)$'', ''$f_{2}(x) ≤ f_{1}(x) ≤ g(x)$'', ''$f_{1}(x) ≤ g(x) ≤ f_{2}(x)$'', ''$f_{2}(x) ≤ g(x) ≤ f_{1}(x)$'']', "['A']", '因为$f_{i}^{′′}(x)$连续且$f_{i}^{′′}(x_{0}) < 0$，根据连续的定义与极限的保号性，在$x_{0}$的某邻域$U(x_{0})$内，有$f_{i}^{′′}(x) < 0$，因此$f_{i}(x)$在$U(x_{0})$内是凸函数。又因为在$x = x_{0}$处两曲线具有公切线$y = g(x)$，根据凸函数的几何意义，曲线与切线的位置关系为$f_{i}(x) ≤ g(x)$。在点$x_{0}$处，$y = f_{1}(x)$的曲率大于$y = f_{2}(x)$的曲率，因此$f_{1}^{′′}(x_{0}) < f_{2}^{′′}(x_{0}) < 0$。令$F(x) = f_{1}(x) - f_{2}(x)$，由于在$x = x_{0}$处具有公切线$y = g(x)$，可得$F(x_{0}) = 0$，$F^{′}(x_{0}) = 0$。又由$F^{′′}(x_{0}) < 0$可知，$F(x_{0}) = 0$是$F(x)$的极大值，因此在$x_{0}$的某邻域$U_{1}(x_{0})$内，有$F(x) ≤ 0$，即$f_{1}(x) ≤ f_{2}(x)$。综合可得$f_{1}(x) ≤ f_{2}(x) ≤ g(x)$，故选 A。', 9, 'Mogullzr', '2026-01-29 14:17:29', 9, 'Mogullzr', '2026-01-29 14:17:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2586');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2586');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '2586');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2587, '2016年考研数学卷2第6题', '简单', '考研数学2016年数2真题', '已知函数$f(x, y) = \\frac{e^{x}}{x-y}$，则', '[''$f_{x}^{′} - f_{y}^{′} = 0$'', ''$f_{x}^{′} + f_{x}^{′} = 0$'', ''$f_{x}^{′} - f_{y}^{′} = f$'', ''$f_{x}^{′} + f_{y}^{′} = f$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:17:29', 9, 'Mogullzr', '2026-01-29 14:17:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2587');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2587');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2587');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2588, '2016年考研数学卷2第7题', '简单', '考研数学2016年数2真题', '设$A$，$B$是可逆矩阵，且$A$与$B$相似，则下列结论错误的是', '[''$A^{T}$与$B^{T}$相似'', ''$A^{−1}$与$B^{−1}$相似'', ''$A + A^{T}$与$B + B^{T}$相似'', ''$A + A^{−1}$与$B + B^{−1}$相似'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:17:29', 9, 'Mogullzr', '2026-01-29 14:17:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2588');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2588');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2589, '2016年考研数学卷2第8题', '简单', '考研数学2016年数2真题', '设二次型$f(x_{1}, x_{2}, x_{3}) = a(x_{1}^{2} + x_{2}^{2} + x_{3}^{2}) + 2x_{1}x_{2} + 2x_{2}x_{3} + 2x_{1}x_{3}$的正、负惯性指数分别为$1, 2$，则（ ）', '[''$a > 1$'', ''$a < −2$'', ''$−2 < a < 1$'', ''$a = 1$与$a = −2$'']', "['C']", '二次型$f(x_{1}, x_{2}, x_{3})$对应的矩阵为
$$
A = \\left( \\begin{array}{ccc}
a & 1 & 1 \\\\
1 & a & 1 \\\\
1 & 1 & a \\\\
\\end{array} \\right) .
$$
由
$$
∣λE - A∣ = \\begin{vmatrix}
λ - a & −1 & −1\\\\
−1 & λ - a & −1\\\\
−1 & −1 & λ - a
\\end{vmatrix} = (λ - a - 2)(λ - a + 1)2 = 0
$$
可得，矩阵$A$的特征值为
$$
λ_{1} = a + 2,  λ_{2} = λ_{3} = a - 1.
$$
由于$f(x_{1}, x_{2}, x_{3})$的正惯性指数为 1，负惯性指数为 2，且正负惯性指数等于特征值中正、负数的个数，因此有
$$
a + 2 > 0 且 a - 1 < 0,
$$
即
$$
−2 < a < 1.
$$
故选 C。', 9, 'Mogullzr', '2026-01-29 14:17:29', 9, 'Mogullzr', '2026-01-29 14:17:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2589');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2589');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2590, '2016年考研数学卷2第9题', '简单', '考研数学2016年数2真题', '（填空题）曲线$y = \\frac{x^{3}}{1+x^{2}} + arctan(1 + x^{2})$的斜渐近线方程为________。', '[]', '$y = x + \\frac{π}{2}$
', '
因为


$$
\\begin{array}{c}
a = \\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\frac{1}{x} (\\frac{x^{3}}{1 + x^{2}} + arctan(1 + x^{2})) = 1, \\\\
b = \\lim_{x→∞}(y - ax) = \\lim_{x→∞} (\\frac{x^{3}}{1 + x^{2}} + arctan(1 + x^{2}) - x) = \\frac{π}{2}. \\\\
\\end{array}
$$

所以斜渐近线为


$$
y = x + \\frac{π}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:30', 9, 'Mogullzr', '2026-01-29 14:17:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2590');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2590');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '2590');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2591, '2016年考研数学卷2第10题', '简单', '考研数学2016年数2真题', '（填空题）极限$\\lim_{n→∞} \\frac{1}{n^{2}} (\\sin \\frac{1}{n} + 2 \\sin \\frac{2}{n} + ⋯ + n \\sin \\frac{n}{n}) =$______。', '[]', '$\\sin 1 - \\cos 1$
', '
因为
$\\lim_{n→∞} \\frac{1}{n^{2}} (\\sin \\frac{1}{n} + 2 \\sin \\frac{2}{n} + ⋯ + n \\sin \\frac{n}{n}) = \\lim_{n→∞} \\frac{1}{n} (\\frac{1}{n} \\sin \\frac{1}{n} + \\frac{2}{n} \\sin \\frac{2}{n} + ⋯ + \\frac{n}{n} \\sin \\frac{n}{n})$
该极限可视为定积分的定义形式，即


$$
\\int_{0}^{1} x \\sin x dx
$$

计算该积分：


$$
\\int_{0}^{1} x \\sin x dx = \\sin 1 - \\cos 1
$$

因此，原极限值为$\\sin 1 - \\cos 1$。
', 9, 'Mogullzr', '2026-01-29 14:17:30', 9, 'Mogullzr', '2026-01-29 14:17:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2591');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2591');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2591');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2592, '2016年考研数学卷2第11题', '简单', '考研数学2016年数2真题', '（填空题）以$y = x^{2} - e^{x}$和$y = x^{2}$为特解的一阶非齐次线性微分方程为______。', '[]', '$y^{′} - y = 2x - x^{2}$
', '设一阶非齐次线性微分方程为$y^{′} + p(x)y = q(x)$。
根据线性微分方程齐次与非齐次解之间的关系，可知$x^{2} - (x^{2} - e^{x}) = e^{x}$是$y^{′} + p(x)y = 0$的解，因此可得$p(x) = −1$。
又因为$y = x^{2}$是$y^{′} + p(x)y = q(x)$的解，代入可得$q(x) = 2x - x^{2}$。
故所求一阶非齐次线性微分方程为$y^{′} - y = 2x - x^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:17:30', 9, 'Mogullzr', '2026-01-29 14:17:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '2592');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2593, '2016年考研数学卷2第12题', '简单', '考研数学2016年数2真题', '（填空题）已知函数$f(x)$在$(−∞, +∞)$上连续，且

$$
f(x) = (x + 1)2 + 2 \\int_{0}^{1} f(t) dt,
$$
则当$n ≥ 2$时，$f^{(n)}(0) =$________。', '[]', '$\\frac{5}{2} × 2^{n}$
', '当$x = 0$时，$f(0) = 1$。
已知


$$
f(x) = (x + 1)2 + 2 \\int_{0}^{1} f(t) dt
$$

两边同时对$x$求导，得


$$
f^{′}(x) = 2(x + 1) + 2f(x)
$$

代入$x = 0$，有$f^{′}(0) = 4$。
对


$$
f^{′}(x) = 2(x + 1) + 2f(x)
$$

两边再次对$x$求导，得


$$
f^{′′}(x) = 2 + 2f^{′}(x)
$$

代入$x = 0$，有$f^{′′}(0) = 10$。
继续对


$$
f^{′′}(x) = 2 + 2f^{′}(x)
$$

两边对$x$求导，得


$$
f^{′′′}(x) = 2f^{′′}(x)
$$

依此类推，可得


$$
f^{(n)}(x) = 2^{n-2}f^{′′}(x)
$$

因此


$$
f^{(n)}(0) = 2^{n-2}f^{′′}(0) = 10 × 2^{n-2} = \\frac{5}{2} × 2^{n}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:30', 9, 'Mogullzr', '2026-01-29 14:17:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2593');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2593');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2593');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2594, '2016年考研数学卷2第13题', '简单', '考研数学2016年数2真题', '（填空题）已知动点$P$在曲线$y = x^{3}$上运动，记坐标原点与点$P$间的距离为$l$。若点$P$的横坐标对时间的变化率为常数$v_{0}$，则当点$P$运动到点$(1, 1)$时，$l$对时间的变化率是______。', '[]', '$2\\sqrt{2}v_{0}$
', '设$l = \\sqrt{x^{2} + y^{2}} = \\sqrt{x^{2} + x^{6}}$，对$t$求导得：

$$
\\frac{dl}{dt} = \\frac{dl}{dx} ⋅ \\frac{dx}{dt} = \\frac{2x + 6x^{5}}{2\\sqrt{x^{2} + x^{6}}} ⋅ \\frac{dx}{dt}.
$$

当$x = 1$时，已知$\\frac{dx}{dt} = v_{0}$，代入得：

$$
\\frac{dl}{dt}​_{x=1} = \\frac{2 + 6}{2\\sqrt{1 + 1}} ⋅ v_{0} = \\frac{8}{2\\sqrt{2}}v_{0} = 2\\sqrt{2}v_{0}.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:30', 9, 'Mogullzr', '2026-01-29 14:17:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2594');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2594');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2594');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2595, '2016年考研数学卷2第14题', '简单', '考研数学2016年数2真题', '（填空题）设矩阵$\\begin{vmatrix}
a & −1 & −1\\\\
−1 & a & −1\\\\
−1 & −1 & a
\\end{vmatrix}$与$\\begin{vmatrix}
1 & 1 & 0\\\\
0 & −1 & 1\\\\
1 & 0 & 1
\\end{vmatrix}$等价，则$a =$______。', '[]', '2
', '首先计算矩阵$B$的行列式：

$$
∣B∣ = \\begin{vmatrix}
1 & 1 & 0\\\\
0 & −1 & 1\\\\
1 & 0 & 1
\\end{vmatrix} = 0
$$

因此$r(B) = 2$。
接着计算矩阵$A$的行列式：

$$
∣A∣ = \\begin{vmatrix}
a & −1 & −1\\\\
−1 & a & −1\\\\
−1 & −1 & a
\\end{vmatrix} = (a + 1)2(a - 2) = 0
$$

当$a = −1$时，$r(A) = 1$；当$a = 2$时，$r(A) = 2$。因此$a = 2$。
', 9, 'Mogullzr', '2026-01-29 14:17:30', 9, 'Mogullzr', '2026-01-29 14:17:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2595');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2595');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '2595');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2596, '2016年考研数学卷2第15题', '简单', '考研数学2016年数2真题', '（本题满分 10 分）求极限
$$
\\lim_{x→0} (\\cos 2x + 2x \\sin x - 1)^{\\frac{1}{x^{4}}}
$$
', '[]', '$e^{\\frac{1}{3}}$
', '
原极限可表示为


$$
\\lim_{x→0} (\\cos 2x + 2x \\sin x - 1)^{\\frac{1}{x^{4}}} = e^{\\lim_{x→0} \\frac{1}{x^{4}}(\\cos 2x+2x \\sin x-1)}.
$$

其中，


$$
\\begin{array}{cc}
 & \\lim_{x→0} \\frac{1}{x^{4}} (\\cos 2x + 2x \\sin x - 1) \\\\
 & = \\lim_{x→0} \\frac{1 - \\frac{1}{2}(2x)2 + \\frac{1}{4!}(2x)4 + o(x^{4}) + 2x (x - \\frac{x^{3}}{3!} + o(x^{3})) - 1}{x^{4}} \\\\
 & = \\lim_{x→0} \\frac{1 - 2x^{2} + \\frac{2}{3}x^{4} + 2x^{2} - \\frac{x^{4}}{3} + o(x^{4}) - 1}{x^{4}} \\\\
 & = \\lim_{x→0} \\frac{\\frac{1}{3}x^{4} + o(x^{4})}{x^{4}} \\\\
 & = \\frac{1}{3}. \\\\
\\end{array}
$$

因此，原极限


$$
= e^{\\frac{1}{3}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:31', 9, 'Mogullzr', '2026-01-29 14:17:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2596');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2597, '2016年考研数学卷2第16题', '简单', '考研数学2016年数2真题', '（本题满分 10 分）设函数$f(x) = \\int_{0}^{1} ∣t^{2} - x^{2}∣ dt (x > 0)$，求$f^{′}(x)$并求$f(x)$的最小值。', '[]', '
$f^{′}(x) = \\begin{cases} 4x^{2} - 2x & 0 < x ≤ 1 \\\\ 2x & x > 1 \\end{cases}$
$f(x)$的最小值为$\\frac{1}{4}$。
', '
$f(x) = \\int_{0}^{1} ∣t^{2} - x^{2}∣ dt (x > 0)$
当$0 < x ≤ 1$时，


$$
\\begin{array}{cc}
f(x) & = \\int_{0}^{x}(x^{2} - t^{2}) dt + \\int_{x}^{1}(t^{2} - x^{2}) dt \\\\
 & = x^{3} - \\frac{1}{3}x^{3} + \\frac{1}{3} - \\frac{1}{3}x^{3} - x^{2}(1 - x) \\\\
 & = \\frac{4}{3}x^{3} - x^{2} + \\frac{1}{3} \\\\
\\end{array}
$$

当$x > 1$时，


$$
f(x) = \\int_{0}^{1}(x^{2} - t^{2}) dt = x^{2} \\int_{0}^{1} dt - \\int_{0}^{1} t^{2} dt = x^{2} - \\frac{1}{3}
$$

即


$$
f(x) = \\begin{cases} \\frac{4}{3}x^{3} - x^{2} + \\frac{1}{3} & 0 < x ≤ 1 \\\\ x^{2} - \\frac{1}{3} & x > 1 \\end{cases}
$$


$$
f^{′}(x) = \\begin{cases} 4x^{2} - 2x & 0 < x ≤ 1 \\\\ 2x & x > 1 \\end{cases}
$$

令$f^{′}(x) = 0$，可得当$0 < x ≤ 1$时$x = \\frac{1}{2}$为驻点且为极小值点，$f (\\frac{1}{2}) = \\frac{1}{4}$，而$f(1) = \\frac{2}{3}$。
因此，$f(x)$的最小值为$\\frac{1}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:17:31', 9, 'Mogullzr', '2026-01-29 14:17:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2597');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2597');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2597');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2598, '2016年考研数学卷2第17题', '简单', '考研数学2016年数2真题', '（本题满分 10 分）已知函数$z = z(x, y)$由方程$(x^{2} + y^{2})z + \\ln z + 2(x + y + 1) = 0$确定，求$z = z(x, y)$的极值。', '[]', '在点$(−1, −1)$处取得极大值，极大值为$z = 1$。
', '
给定方程组：

$$
\\begin{cases} 2xz + x^{2}\\frac{∂z}{∂x} + y^{2}\\frac{∂z}{∂x} + \\frac{1}{z}\\frac{∂z}{∂x} + 2 = 0 \\\\ x^{2}\\frac{∂z}{∂y} + 2yz + y^{2}\\frac{∂z}{∂y} + \\frac{1}{z}\\frac{∂z}{∂y} + 2 = 0 \\end{cases}
$$

整理可得：

$$
\\begin{cases} xz + 1 = 0 \\\\ yz + 1 = 0 \\\\ x^{2}z + y^{2}z + \\ln z + 2(x + y + 1) = 0 \\end{cases} ⇒ \\begin{cases} x = −1 \\\\ y = −1 \\\\ z = 1 \\end{cases}
$$

由第一个方程$2xz + x^{2}\\frac{∂z}{∂x} + y^{2}\\frac{∂z}{∂x} + \\frac{1}{z}\\frac{∂z}{∂x} + 2 = 0$再对$x$求导得：

$$
2z + 2x\\frac{∂z}{∂x} + (x^{2} + y^{2})\\frac{∂^{2}z}{∂x^{2}} - \\frac{1}{z^{2}} (\\frac{∂z}{∂x})^{2} + \\frac{1}{z} ⋅ \\frac{∂^{2}z}{∂x^{2}} = 0
$$

代入$\\frac{∂z}{∂x} = 0$，$x = −1$，$y = −1$，$z = 1$，得：

$$
A = \\frac{∂^{2}z}{∂x^{2}} = −\\frac{2}{3} < 0
$$

同理可得$\\frac{∂^{2}z}{∂y^{2}} < 0$。
由第一个方程对$y$求导得：

$$
2x\\frac{∂z}{∂y} + 2y\\frac{∂z}{∂x} + (x^{2} + y^{2})\\frac{∂^{2}z}{∂x∂y} - \\frac{1}{z^{2}} ⋅ \\frac{∂z}{∂x} ⋅ \\frac{∂z}{∂y} + \\frac{1}{z} ⋅ \\frac{∂^{2}z}{∂x∂y} = 0
$$

代入$\\frac{∂z}{∂x} = 0$，$\\frac{∂z}{∂y} = 0$，$x = −1$，$y = −1$，$z = 1$，得：

$$
\\frac{∂^{2}z}{∂x∂y} = 0
$$

由于$AC - B^{2} > 0$且$A < 0$，故在点$(−1, −1)$处取得极大值。
', 9, 'Mogullzr', '2026-01-29 14:17:31', 9, 'Mogullzr', '2026-01-29 14:17:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2598');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2598');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2598');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2599, '2016年考研数学卷2第18题', '简单', '考研数学2016年数2真题', '（本题满分 10 分）设$D$是由直线$y = 1$、$y = x$、$y = −x$围成的有界区域，计算二重积分

$$
∬_{D} \\frac{x^{2} - xy - y^{2}}{x^{2} + y^{2}} dx dy
$$
', '[]', '$1 - \\frac{π}{2}$
', '
', 9, 'Mogullzr', '2026-01-29 14:17:31', 9, 'Mogullzr', '2026-01-29 14:17:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2599');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2599');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2599');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2600, '2016年考研数学卷2第19题', '简单', '考研数学2016年数2真题', '（本题满分 10 分）已知$y_{1}(x) = e^{x}$，$y_{2}(x) = μ(x)e^{x}$是二阶微分方程
$$
(2x - 1)y^{′′} - (2x + 1)y^{′} + 2y = 0
$$
的两个解，若$μ(−1) = e$，$μ(0) = −1$，求$μ(x)$并写出该微分方程的通解。', '[]', '
$μ(x) = −2xe^{−x} - e^{−x}$，该微分方程的通解为$y = k_{1}e^{x} + k_{2}(−2x - 1)e^{−x}$，其中$k_{1}, k_{2}$为任意常数。
', '
已知$y_{2}(x) = μ(x)e^{x}$是二阶微分方程


$$
(2x - 1)y^{′′} - (2x + 1)y^{′} + 2y = 0
$$

的一个解。将其代入方程并整理可得


$$
(2x - 1)μ^{′′} = (3 - 2x)μ^{′},
$$

即


$$
\\frac{μ^{′′}}{μ^{′}} = \\frac{3 - 2x}{2x - 1}.
$$

两边积分得


$$
∫ \\frac{μ^{′′}}{μ^{′}}dx = ∫ \\frac{3 - 2x}{2x - 1}dx,
$$



$$
\\ln ∣μ^{′}∣ = ∫ \\frac{−2x + 3}{2x - 1}dx = −x + \\ln ∣2x - 1∣ + \\ln C_{1},
$$

因此


$$
∣μ^{′}(x)∣ = e^{−x}∣2x - 1∣C_{1},
$$

取


$$
μ^{′}(x) = C_{1}(2x - 1)e^{−x}.
$$

进一步积分得


$$
μ(x) = ∫ C_{1}(2x - 1)e^{−x}dx = C_{1}  \\lbrack −2xe^{−x} - e^{−x} + C_{2} \\rbrack  .
$$

由已知条件$μ(−1) = e$，$μ(0) = −1$，解得$C_{1} = 1$，$C_{2} = 0$，
所以


$$
μ(x) = −2xe^{−x} - e^{−x}.
$$

已知$y_{1}(x)$与$y_{2}(x)$线性无关，因此原方程的通解为


$$
y = k_{1}e^{x} + k_{2}(−2x - 1)e^{−x},
$$

其中$k_{1}, k_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:17:31', 9, 'Mogullzr', '2026-01-29 14:17:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2600');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2600');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '2600');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2601, '2016年考研数学卷2第20题', '简单', '考研数学2016年数2真题', '（本题满分 11 分）设$D$是由曲线$y = \\sqrt{1 - x^{2}} (0 ≤ x ≤ 1)$与参数方程

$$
\\begin{cases} x = \\cos^{3} t \\\\ y = \\sin^{3} t \\end{cases}  (0 ≤ t ≤ \\frac{π}{2})
$$
围成的平面区域，求$D$绕$x$轴旋转一周所得旋转体的体积和表面积。', '[]', '
体积：$\\frac{18π}{35}$，表面积：$\\frac{16π}{5}$
', '
体积部分
体积计算公式为：


$$
V = V_{1} - V_{2} = π \\int_{0}^{1}(1 - x^{2}) dx - π \\int_{0}^{\\frac{π}{2}} \\sin^{6} t ⋅ 3 \\cos^{2} t(− \\sin t) dt
$$

化简得：


$$
V = \\frac{2π}{3} - 3π \\int_{0}^{\\frac{π}{2}} \\sin^{7} t(1 - \\sin^{2} t) dt + 3π \\int_{0}^{\\frac{π}{2}} \\sin^{9} t dt
$$

计算得：


$$
V = \\frac{2π}{3} - 3π ⋅ \\frac{16}{35} ⋅ \\frac{1}{9} = \\frac{18}{35}π
$$


表面积部分
对于曲线$y = \\sqrt{1 - x^{2}} (0 ≤ x ≤ 1)$旋转所得表面积$S_{1}$：


$$
S_{1} = 2π \\int_{0}^{1} y\\sqrt{1 + y^{′2}(x)} dx = 2π \\int_{0}^{1} \\sqrt{1 - x^{2}}\\sqrt{1 + \\frac{x^{2}}{1 - x^{2}}} dx = 2π
$$

对于参数方程


$$
\\begin{cases} x = \\cos^{3} t \\\\ y = \\sin^{3} t \\end{cases}  (0 ≤ t ≤ \\frac{π}{2})
$$

旋转所得表面积$S_{2}$：


$$
\\begin{array}{cc}
S_{2} & = 2π \\int_{0}^{\\frac{π}{2}} \\sin^{3} t\\sqrt{(3 \\sin^{2} t \\cos t)2 + (3 \\cos^{2} t \\sin t)2} dt \\\\
 & = 2π \\int_{0}^{\\frac{π}{2}} \\sin^{3} t ⋅ 3 \\sin t \\cos t dt \\\\
 & = 2π \\int_{0}^{\\frac{π}{2}} 3 \\sin^{4} t \\cos t dt \\\\
 & = \\frac{6π}{5}. \\\\
\\end{array}
$$

总表面积为：


$$
S = S_{1} + S_{2} = 2π + \\frac{6π}{5} = \\frac{16π}{5}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:32', 9, 'Mogullzr', '2026-01-29 14:17:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2601');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2601');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2601');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2602, '2016年考研数学卷2第21题', '简单', '考研数学2016年数2真题', '（本题满分 11 分）已知$f(x)$在$\\lbrack 0, \\frac{3π}{2} \\rbrack$上连续，在$(0, \\frac{3π}{2})$内是函数$\\frac{\\cos x}{2x-3π}$的一个原函数，且$f(0) = 0$，（1）求$f(x)$在区间$\\lbrack 0, \\frac{3π}{2} \\rbrack$上的平均值；（2）证明$f(x)$在区间$(0, \\frac{3π}{2})$内存在唯一零点。', '[]', '
（1）$\\frac{1}{3π}$
（2）见解析
', '
（1）函数$f(x) = \\int_{0}^{x} \\frac{\\cos t}{2t-3π}dt$。根据平均值公式，$f(x)$在区间$\\lbrack 0, \\frac{3π}{2} \\rbrack$上的平均值为


$$
\\frac{\\int_{0}^{\\frac{3π}{2}} f(x)dx}{\\frac{3π}{2}}
$$

利用交换积分次序，


$$
\\int_{0}^{\\frac{3π}{2}} dx \\int_{0}^{x} \\frac{\\cos t}{2t - 3π}dt = \\int_{0}^{\\frac{3π}{2}} dt \\int_{t}^{\\frac{3π}{2}} \\frac{\\cos t}{2t - 3π}dx
$$

计算内层积分：


$$
\\int_{t}^{\\frac{3π}{2}} \\frac{\\cos t}{2t - 3π}dx = \\frac{\\cos t}{2t - 3π} ⋅ (\\frac{3π}{2} - t)
$$

因此平均值为


$$
\\frac{\\int_{0}^{\\frac{3π}{2}} \\frac{\\cos t}{2t-3π} ⋅ (\\frac{3π}{2} - t) dt}{\\frac{3π}{2}} = \\frac{− \\int_{0}^{\\frac{3π}{2}} \\frac{\\cos t}{2}dt}{\\frac{3π}{2}}
$$

计算定积分：


$$
−\\frac{1}{2} \\sin t​_{0}^{\\frac{3π}{2}} = −\\frac{1}{2}(−1 - 0) = \\frac{1}{2}
$$

故平均值为


$$
\\frac{\\frac{1}{2}}{\\frac{3π}{2}} = \\frac{1}{3π}
$$

（2）由$f(x) = \\int_{0}^{x} \\frac{\\cos t}{2t-3π}dt$，求导得


$$
f^{′}(x) = \\frac{\\cos x}{2x - 3π}
$$

令$f^{′}(x) = 0$，解得在区间$(0, \\frac{3π}{2})$上的唯一驻点为$x = \\frac{π}{2}$。
当$0 < x < \\frac{π}{2}$时，$\\cos x > 0$，$2x - 3π < 0$，故$f^{′}(x) < 0$；
当$\\frac{π}{2} < x < \\frac{3π}{2}$时，$\\cos x < 0$，$2x - 3π < 0$，故$f^{′}(x) > 0$。
因此$x = \\frac{π}{2}$为$f(x)$在区间$(0, \\frac{3π}{2})$内的极小值点，也是最小值点，即$f_{min}(x) = f (\\frac{π}{2}) < 0$。
又$f(0) = 0$，计算$f (\\frac{3π}{2}) = \\int_{0}^{\\frac{3π}{2}} \\frac{\\cos t}{2t-3π}dt$。令$u = 2t - 3π$，则$t = \\frac{u+3π}{2}$，$dt = \\frac{1}{2}du$。当$t = 0$时$u = −3π$，$t = \\frac{3π}{2}$时$u = 0$，积分变为


$$
\\frac{1}{2} \\int_{−3π}^{0} \\frac{\\cos \\frac{u+3π}{2}}{u}du = \\frac{1}{2} \\int_{−3π}^{0} \\frac{− \\sin \\frac{u}{2}}{u}du > 0
$$

（可通过积分性质判断符号）。
结合单调性：$f(x)$在区间$(0, \\frac{π}{2})$上单调递减，且$f(0) = 0$，故该区间内无零点；在区间$(\\frac{π}{2}, \\frac{3π}{2})$上单调递增，且$f (\\frac{π}{2}) < 0$，$f (\\frac{3π}{2}) > 0$，故该区间内有唯一零点。
综上所述，$f(x)$在区间$(0, \\frac{3π}{2})$内只有唯一零点。
', 9, 'Mogullzr', '2026-01-29 14:17:32', 9, 'Mogullzr', '2026-01-29 14:17:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2602');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2602');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2602');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2603, '2016年考研数学卷2第22题', '简单', '考研数学2016年数2真题', '（本题满分 11 分）设矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 - a \\\\
1 & 0 & a \\\\
a + 1 & 1 & a + 1 \\\\
\\end{array} \\right)$，$β = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
2a - 2 \\\\
\\end{array} \\right)$，且方程组$Ax = β$无解，（1）求$a$的值；（2）求方程组$A^{T}Ax = A^{T}β$的通解。', '[]', '
（1）$a = 0$
（2）$x = k \\left( \\begin{array}{c}
0 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
\\end{array} \\right) ,  k ∈ R$
', '
（1）由方程组$Ax = β$无解，可知$r(A) \\neq r(A, β)$，因此$∣A∣ = 0$。
计算行列式：


$$
∣A∣ = \\begin{vmatrix}
1 & 1 & 1 - a\\\\
1 & 0 & a\\\\
a + 1 & 1 & a + 1
\\end{vmatrix} = 0
$$

解得$a = 0$或$a = 2$。
当$a = 0$时，$r(A) \\neq r(A, β)$；当$a = 2$时，$r(A) = r(A, β)$。因此$a = 0$符合题意。
（2）当$a = 0$时，


$$
A^{T}A = \\left( \\begin{array}{ccc}
3 & 2 & 2 \\\\
2 & 2 & 2 \\\\
2 & 2 & 2 \\\\
\\end{array} \\right) ,  A^{T}β = \\left( \\begin{array}{c}
−1 \\\\
−2 \\\\
−2 \\\\
\\end{array} \\right)
$$

于是


$$
(A^{T}A, A^{T}β) = \\left( \\begin{array}{cccc}
3 & 2 & 2 & −1 \\\\
2 & 2 & 2 & −2 \\\\
2 & 2 & 2 & −2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 0 & 1 \\\\
0 & 1 & 1 & −2 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

因此，方程组$A^{T}Ax = A^{T}β$的通解为：


$$
x = k \\left( \\begin{array}{c}
0 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
\\end{array} \\right) ,  k ∈ R
$$

', 9, 'Mogullzr', '2026-01-29 14:17:32', 9, 'Mogullzr', '2026-01-29 14:17:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2603');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '2603');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2604, '2016年考研数学卷2第23题', '简单', '考研数学2016年数2真题', '（本题满分 11 分）已知矩阵

$$
A = \\left( \\begin{array}{ccc}
0 & −1 & 1 \\\\
2 & −3 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$
（1）求$A^{99}$（2）设 3 阶矩阵$B = (α_{1}, α_{2}, α_{3})$满足$B^{2} = BA$。记$B^{100} = (β_{1}, β_{2}, β_{3})$，将$β_{1}, β_{2}, β_{3}$分别表示为$α_{1}, α_{2}, α_{3}$的线性组合。', '[]', '
(1)


$$
A^{99} = \\left( \\begin{array}{ccc}
−2 + 2^{99} & 1 - 2^{99} & 2 - 2^{99} \\\\
−2 + 2^{100} & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

(2)


$$
β_{1} = (−2 + 2^{99})α_{1} + (−2 + 2^{100})α_{2}
$$



$$
β_{2} = (1 - 2^{99})α_{1} + (1 - 2^{100})α_{2}
$$



$$
β_{3} = (2 - 2^{99})α_{1} + (2 - 2^{99})α_{2}
$$

', '
(1) 由$∣λE - A∣ = λ(λ + 1)(λ + 2) = 0$，得$λ_{1} = 0, λ_{2} = −1, λ_{3} = −2$。
因此$A$可相似对角化，且$A$与


$$
\\left( \\begin{array}{ccc}
0 &  &  \\\\
 & −1 &  \\\\
 &  & −2 \\\\
\\end{array} \\right)
$$

相似。
由$(0E - A)x = 0$得$η_{1} = \\left( \\begin{array}{c}
\\frac{3}{2} \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$；
由$(−E - A)x = 0$得$η_{2} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$；
由$(−2E - A)x = 0$得$η_{3} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
0 \\\\
\\end{array} \\right)$。
令$P = \\left( \\begin{array}{ccc}
\\frac{3}{2} & 1 & 1 \\\\
1 & 1 & 2 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)$，则


$$
P^{−1}AP = \\left( \\begin{array}{ccc}
0 &  &  \\\\
 & −1 &  \\\\
 &  & −2 \\\\
\\end{array} \\right) = Λ
$$

因此$A = PΛP^{−1}$，可得


$$
A^{99} = PΛ^{99}P^{−1} = \\left( \\begin{array}{ccc}
−2 + 2^{99} & 1 - 2^{99} & 2 - 2^{99} \\\\
−2 + 2^{100} & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

(2) 由$B^{2} = BA$得


$$
B^{3} = B^{2}A = BA^{2} ⇒ B^{4} = B^{2}A^{2} = BA^{3} ⇒ ⋯ ⇒ B^{100} = BA^{99}
$$

因此


$$
(β_{1} β_{2} β_{3}) = (α_{1} α_{2} α_{3})A^{99}
$$

于是


$$
β_{1} = (−2 + 2^{99})α_{1} + (−2 + 2^{100})α_{2}
$$



$$
β_{2} = (1 - 2^{99})α_{1} + (1 - 2^{100})α_{2}
$$



$$
β_{3} = (2 - 2^{99})α_{1} + (2 - 2^{99})α_{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:32', 9, 'Mogullzr', '2026-01-29 14:17:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2604');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2605, '2016年考研数学卷3第1题', '简单', '考研数学2016年数3真题', '设函数$f(x)$在$(−∞, +∞)$内连续, 其导函数$f^{′}(x)$的图形如下所示, 则', '[''函数$f(x)$有2个极值点, 曲线$y = f(x)$有2个拐点.'', ''函数$f(x)$有2个极值点, 曲线$y = f(x)$有3个拐点.'', ''函数$f(x)$有3个极值点, 曲线$y = f(x)$有1个拐点.'', ''函数$f(x)$有3个极值点, 曲线$y = f(x)$有2个拐点.'']', "['B']", '设$f^{′}(x)$与$x$轴的交点为$x_{1}, x_{2}, x_{3}$(从左到右)。由图可知，在$x_{1}, x_{2}$左右两侧$f^{′}(x)$异号，因此$f(x)$在$x_{1}, x_{2}$处均取得极值。从图中可以看出，$f^{′}(x)$有两个转折点$x_{4}, x_{5}$(从左到右)，并且在$x_{4}, x_{5}$左右两侧$f^{′′}(x)$异号，因此$x_{4}, x_{5}$即为$f(x)$的两个拐点。值得注意的是，$x = 1$也是$f(x)$的拐点，虽然$f(x)$在$x = 1$处无定义，但当$x < 1$时，$f^{′′}(x) < 0$，当$1 < x < x_{4}$时，$f^{′′}(x) > 0$，因此$x = 1$是$f(x)$的拐点，即$f(x)$一共有3个拐点。', 9, 'Mogullzr', '2026-01-29 14:17:35', 9, 'Mogullzr', '2026-01-29 14:17:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2605');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2605');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '2605');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2606, '2016年考研数学卷3第2题', '简单', '考研数学2016年数3真题', '已知函数$f(x, y) = \\frac{e^{x}}{x-y}$，则', '[''$f_{x}^{′} - f_{y}^{′} = 0$'', ''$f_{x}^{′} + f_{y}^{′} = 0$'', ''$f_{x}^{′} - f_{y}^{′} = f$'', ''$f_{x}^{′} + f_{y}^{′} = f$'']', "['D']", '
$$
f_{x}^{′} = \\frac{e^{x}(x - y) - e^{x}}{(x - y)2}
$$

$$
f_{y}^{′} = \\frac{e^{x}}{(x - y)2}
$$
因此$f_{x}^{′} + f_{y}^{′} = f$.', 9, 'Mogullzr', '2026-01-29 14:17:35', 9, 'Mogullzr', '2026-01-29 14:17:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2606');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2606');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2606');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2607, '2016年考研数学卷3第3题', '简单', '考研数学2016年数3真题', '设$J_{i} = \\iint_{D_{i}} \\sqrt{x - y} dx dy (i = 1, 2, 3)$，其中
$$
D_{1} = \\{(x, y) ∣ 0 ≤ x ≤ 1, 0 ≤ y ≤ 1\\},
$$

$$
D_{2} = \\{(x, y) ∣ 0 ≤ x ≤ 1, 0 ≤ y ≤ \\sqrt{x}\\},
$$

$$
D_{3} = \\{(x, y) ∣ 0 ≤ x ≤ 1, x^{2} ≤ y ≤ 1\\},
$$
则', '[''$J_{1} < J_{2} < J_{3}$.'', ''$J_{3} < J_{1} < J_{2}$.'', ''$J_{2} < J_{3} < J_{1}$.'', ''$J_{2} < J_{1} < J_{3}$.'']', "['B']", '因为$D_{1}$关于$y = x$对称，所以由轮换对称性得

$$
J_{1} = \\iint_{D_{1}} \\sqrt{x - y} dx dy = \\iint_{D_{1}} \\sqrt{y - x} dx dy,
$$
故$J_{1} = 0$；令$D_{0} = \\{(x, y) ∣ 0 ≤ x ≤ 1, y^{2} ≤ y ≤ \\sqrt{x}\\}$，
因为$D_{0}$关于$y = x$对称，所以由轮换对称性得$J_{0} = 0$，则

$$
\\begin{array}{cc}
J_{2} & = \\iint_{D_{2}} \\sqrt{x - y} dx dy \\\\
 & = \\iint_{D_{0}} \\sqrt{x - y} dx dy + \\iint_{D_{2}∖D_{0}} \\sqrt{x - y} dx dy \\\\
 & = \\iint_{D_{2}∖D_{0}} \\sqrt{x - y} dx dy > 0, \\\\
J_{3} & = \\iint_{D_{3}} \\sqrt{x - y} dx dy \\\\
 & = \\iint_{D_{3}∖D_{0}} \\sqrt{x - y} dx dy < 0, \\\\
\\end{array}
$$
从而$J_{3} < J_{1} < J_{2}$。', 9, 'Mogullzr', '2026-01-29 14:17:35', 9, 'Mogullzr', '2026-01-29 14:17:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2607');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2607');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2607');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2608, '2016年考研数学卷3第4题', '简单', '考研数学2016年数3真题', '级数$\\sum_{n=1}^{∞} \\frac{\\sin(n)+C}{n}$（$C$为常数）为（ ）', '[''绝对收敛'', ''条件收敛'', ''发散'', ''收敛性与$C$有关'']', "['A']", '

$$
​(\\frac{1}{\\sqrt{n}} - \\frac{1}{\\sqrt{n + 1}}) \\sin(n + k)​ ≤ \\frac{1}{\\sqrt{n}} - \\frac{1}{\\sqrt{n + 1}},
$$
令

$$
\\begin{array}{cc}
S_{n} & = \\sum_{i=1}^{n} (\\frac{1}{\\sqrt{i}} - \\frac{1}{\\sqrt{i + 1}}) \\\\
 & = 1 - \\frac{1}{\\sqrt{2}} + \\frac{1}{\\sqrt{2}} - \\frac{1}{\\sqrt{3}} + ⋯ + \\frac{1}{\\sqrt{n}} - \\frac{1}{\\sqrt{n + 1}} \\\\
\\end{array}
$$
则

$$
\\lim_{n→∞} S_{n} = 1,
$$
故级数

$$
\\sum_{n=1}^{∞} (\\frac{1}{\\sqrt{n}} - \\frac{1}{\\sqrt{n + 1}})
$$
收敛，因此级数

$$
\\sum_{n=1}^{∞} (\\frac{1}{\\sqrt{n}} - \\frac{1}{\\sqrt{n + 1}}) \\sin(n + k)
$$
绝对收敛。', 9, 'Mogullzr', '2026-01-29 14:17:35', 9, 'Mogullzr', '2026-01-29 14:17:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '2608');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2609, '2016年考研数学卷3第5题', '简单', '考研数学2016年数3真题', '设$A, B$是可逆矩阵，且$A$与$B$相似，则下列结论错误的是：', '[''$A^{T}$与$B^{T}$相似'', ''$A^{−1}$与$B^{−1}$相似'', ''$A + A^{−1}$与$B + B^{−1}$相似'', ''$A + A^{T}$与$B + B^{T}$相似'']', "['C']", '$A$与$B$相似，则存在可逆矩阵$P$使得$P^{−1}AP = B$。两边同时取逆得$P^{−1}A^{−1}P = B^{−1}$，因此$P^{−1}(A + A^{−1})P = B + B^{−1}$,从而$A^{−1}$与$B^{−1}$相似，$A + A^{−1}$与$B + B^{−1}$相似。$P^{−1}AP = B$两边同时取转置得$P^{T}A^{T}(P^{T})−1 = B^{T}$，显然$A^{T}$与$B^{T}$相似，但$A + A^{T}$与$B + B^{T}$不相似。', 9, 'Mogullzr', '2026-01-29 14:17:35', 9, 'Mogullzr', '2026-01-29 14:17:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2609');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '2609');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2610, '2016年考研数学卷3第6题', '简单', '考研数学2016年数3真题', '设二次型$f(x_{1}, x_{2}, x_{3}) = a(x_{1}^{2} + x_{2}^{2} + x_{3}^{2}) + 2x_{1}x_{2} + 2x_{1}x_{3} + 2x_{2}x_{3}$的正、负惯性指数分别为 1, 2, 则', '[''$a > 1$.'', ''$a < −2$.'', ''$−2 < a < 1$.'', ''$a = 1$或$a = −2$.'']', "['C']", '二次型$f(x_{1}, x_{2}, x_{3})$的系数矩阵为

$$
A = \\left( \\begin{array}{ccc}
a & 1 & 1 \\\\
1 & a & 1 \\\\
1 & 1 & a \\\\
\\end{array} \\right) .
$$
矩阵$A$的特征方程为

$$
∣λE - A∣ = (λ - a - 2)(λ - a + 1)2 = 0,
$$
故其特征值为

$$
λ_{1} = λ_{2} = a - 1,  λ_{3} = a + 2.
$$
若二次型的正、负惯性指数分别为$1, 2$，则

$$
\\begin{cases} a + 2 > 0 \\\\ a - 1 < 0 \\end{cases}
$$
解得

$$
−2 < a < 1.
$$
', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2610');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2610');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2611, '2016年考研数学卷3第7题', '简单', '考研数学2016年数3真题', '设$A, B$为两个随机事件, 且$0 < P(A) < 1, 0 < P(B) < 1$. 如果$P(A ∣ B) = 1$, 则', '[''$P(\\\\overline{B} ∣ \\\\overline{A}) = 1$.'', ''$P(A ∣ \\\\overline{B}) = 0$.'', ''$P(A ∪ B) = 1$.'', ''$P(B ∣ A) = 1$.'']', "['A']", '由$P(A∣B) = 1$可知$B ⊆ A$，则$\\bar{A} ⊆ \\bar{B}$，从而$P(\\bar{B}∣\\bar{A}) = 1$。', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2611');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '2611');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2612, '2016年考研数学卷3第8题', '简单', '考研数学2016年数3真题', '设随机变量$X$与$Y$相互独立, 且$X ∼ N(1, 2), Y ∼ N(1, 4)$, 则$D(XY) =$', '[''$6$'', ''$8$'', ''$14$'', ''$15$'']', "['C']", '由题意可得$E(X) = E(Y) = 1, D(X) = 2, D(Y) = 4$.由随机变量$X$与$Y$相互独立, 得$E(XY) = E(X)E(Y) = 1$,
$$
E(X^{2}) = D(X) + E^{2}(X) = 3, E(Y^{2}) = D(Y) + E^{2}(Y) = 5,
$$
故$D(XY) = E(X^{2}Y^{2}) - E^{2}(XY) = E(X^{2})E(Y^{2}) -  \\lbrack E(X)E(Y) \\rbrack 2 = 14$.', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2612');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2612');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '2612');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2613, '2016年考研数学卷3第9题', '简单', '考研数学2016年数3真题', '（填空题）已知函数$f(x)$满足$\\lim_{x→0} \\frac{\\sqrt{1+f(x) \\sin 2x}-1}{e^{3x}-1} = 2$，则$\\lim_{x→0} f(x) =$.', '[]', '6
', '


$$
\\lim_{x→0} \\frac{\\sqrt{1 + f(x) \\sin 2x} - 1}{e^{3x} - 1} = \\lim_{x→0} \\frac{\\frac{1}{2}f(x) \\sin 2x}{3x} = \\frac{1}{3} \\lim_{x→0} f(x) = 2,
$$

则

$$
\\lim_{x→0} f(x) = 6.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2613');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2613');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '2613');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2614, '2016年考研数学卷3第10题', '简单', '考研数学2016年数3真题', '（填空题）极限$\\lim_{n→∞} \\frac{1}{n} (\\sin \\frac{1}{n} + 2 \\sin \\frac{2}{n} + ⋯ + n \\sin \\frac{n}{n}) =$.', '[]', '$\\sin 1 - \\cos 1$
', '
原式可写为


$$
\\lim_{n→∞} \\frac{1}{n} \\sum_{k=1}^{n} \\frac{k}{n} \\sin \\frac{k}{n}.
$$

由定积分定义，


$$
\\lim_{n→∞} \\frac{1}{n} \\sum_{k=1}^{n} \\frac{k}{n} \\sin \\frac{k}{n} = \\int_{0}^{1} x \\sin x dx.
$$

计算得


$$
\\int_{0}^{1} x \\sin x dx = \\sin 1 - \\cos 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2614');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2614');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '2614');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2615, '2016年考研数学卷3第11题', '简单', '考研数学2016年数3真题', '（填空题）设函数$f(u, v)$可微，$z = z(x, y)$由方程$(x + 1)z - y^{2} = x^{2}f(x - z, y)$确定，则$dz∣_{(0,1)} =$.', '[]', '$−dx + 2dy$
', '将$x = 0, y = 1$代入题中所给方程, 得$z = 1$.
方程两边同时对$x$求偏导, 得$z + (x + 1)z_{x} = 2xf(u, v) + x^{2}f_{1}^{′} ⋅ (1 - z_{x})$
将点$(0, 1, 1)$代入其中得$z_{x}∣_{(0,1)} = −1$;
方程两边同时对$y$求偏导, 得$(x + 1)z_{y} - 2y = x^{2}  \\lbrack f_{1}^{′} ⋅ (−z_{y}) + f_{2}^{′} \\rbrack$,
将点$(0, 1, 1)$代入其中得$z_{y}∣_{(0,1)} = 2$,
因此,$dz∣_{(0,1)} = −dx + 2dy$.
', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2615');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2615');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2615');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2616, '2016年考研数学卷3第12题', '简单', '考研数学2016年数3真题', '（填空题）设$D = \\{(x, y) ∣ ∣x∣ ≤ y ≤ 1, −1 ≤ x ≤ 1\\}$，则$\\iint_{D} x^{2}e^{−y^{2}} dx dy =$.', '[]', '$\\frac{1}{3} - \\frac{2}{3e}$
', '

$$
\\begin{array}{cc}
\\iint_{D} x^{2}e^{−y^{2}} dx dy & = \\int_{0}^{1} e^{−y^{2}} dy \\int_{−y}^{y} x^{2} dx \\\\
 & = \\frac{1}{3} \\int_{0}^{1} e^{−y^{2}} (x^{3}​_{−y}^{y})  dy \\\\
 & = \\frac{2}{3} \\int_{0}^{1} e^{−y^{2}}y^{3} dy \\\\
 & = \\frac{1}{3} \\int_{0}^{1} e^{−y^{2}} ⋅ y^{2} d(y^{2}) \\\\
 & = \\frac{1}{3} - \\frac{2}{3e}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:36', 9, 'Mogullzr', '2026-01-29 14:17:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2616');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2616');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2616');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2617, '2016年考研数学卷3第13题', '简单', '考研数学2016年数3真题', '（填空题）行列式
$$
\\begin{vmatrix}
λ & −1 & 0 & 0\\\\
0 & λ & −1 & 0\\\\
0 & 0 & λ & −1\\\\
4 & 3 & 2 & λ + 1
\\end{vmatrix} =
$$
', '[]', '$λ^{4} + λ^{3} + 2λ^{2} + 3λ + 4$
', '', 9, 'Mogullzr', '2026-01-29 14:17:37', 9, 'Mogullzr', '2026-01-29 14:17:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2617');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2617');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1056', '2617');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2618, '2016年考研数学卷3第14题', '简单', '考研数学2016年数3真题', '（填空题）设袋中有红、白、黑球各$1$个，从中放回地取球，每次取$1$个，直到三种颜色的球都取到时停止，则取球次数恰好为$4$的概率为', '[]', '$\\frac{2}{9}$
', '若取球次数恰好为 4, 则前三次只能取到两种颜色的球, 第四次为第三种颜色,
则$P = \\frac{C_{3}^{2}C_{3}^{1}C_{1}^{1}C_{2}^{1}}{3^{4}} = \\frac{2}{9}$.
', 9, 'Mogullzr', '2026-01-29 14:17:37', 9, 'Mogullzr', '2026-01-29 14:17:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2618');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '2618');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2619, '2016年考研数学卷3第15题', '简单', '考研数学2016年数3真题', '(本题满分 10 分)求极限$\\lim_{x→0}(\\cos 2x + 2x \\sin x)x41​$', '[]', '\\[e^{\\frac{1}{3}} \\]
', '
由泰勒展开得

$$
\\begin{array}{c}
\\cos 2x = 1 - \\frac{4x^{2}}{2!} + \\frac{16x^{4}}{4!} + ⋯  ,  −∞ < x < ∞; \\\\
\\sin x = x - \\frac{x^{3}}{3!} + ⋯  ,  −∞ < x < +∞. \\\\
\\end{array}
$$

故原式=

$$
\\begin{array}{cc}
 & \\lim_{x→0}  \\lbrack 1 - \\frac{4x^{2}}{2!} + \\frac{16x^{4}}{4!} + 2x (x - \\frac{x^{3}}{3!}) + o(x^{4}) \\rbrack ^{\\frac{1}{x^{4}}} \\\\
 & = \\lim_{x→0}  \\lbrack 1 + \\frac{1}{3}x^{4} + o(x^{4}) \\rbrack ^{\\frac{1}{x^{4}}} \\\\
 & = \\lim_{x→0} (1 + \\frac{1}{3}x^{4})^{\\frac{3}{x^{4}}⋅\\frac{1}{3}} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:37', 9, 'Mogullzr', '2026-01-29 14:17:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2619');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2620, '2016年考研数学卷3第16题', '简单', '考研数学2016年数3真题', '(本题满分 10 分)设某商品的最大需求量为 1200 件，该商品的需求函数为$Q = Q(P)$，需求弹性
$$
η = \\frac{P}{120 - P} (η > 0)
$$
$P$为单价 (万元)。(1) 求需求函数的表达式;(2) 求$P = 100$万元时的边际收益，并说明其经济意义。', '[]', '
(1) 需求函数：$Q(P) = 1200 - 10P$
(2) 边际收益：80万元，经济意义：销售第201件商品所得收益为80万元。
', '
(1)由$η = −\\frac{dQ/dP}{Q/P} = \\frac{P}{120-P}$可知


$$
\\frac{dQ}{dP} + \\frac{1}{120 - P}Q = 0,
$$

解得$Q = C(120 - P)$，由$Q(0) = 1 200$知$C = 10$，故$Q(P) = 1 200 - 10P$.
(2)收益函数

$$
R(Q) = PQ = \\frac{(1200 - Q)Q}{10}
$$

故


$$
\\frac{dR}{dQ} = \\frac{1200 - 2Q}{10}.
$$

因此当$P = 100$时，$Q = 200$，此时


$$
\\frac{dR}{dQ}​_{Q=200} = 80.
$$

其经济意义为销售第 201 件商品所得收益为 80 万元。
', 9, 'Mogullzr', '2026-01-29 14:17:37', 9, 'Mogullzr', '2026-01-29 14:17:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2620');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2620');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2620');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2621, '2016年考研数学卷3第17题', '简单', '考研数学2016年数3真题', '(本题满分 10 分)设函数$f(x) = \\int_{0}^{x} ∣t^{2} - x^{2}∣dt(x > 0)$，求$f^{′}(x)$，并求$f(x)$的最小值。', '[]', '$f^{′}(x) = \\begin{cases} 4x^{2} - 2x & 0 < x < 1 \\\\ 2x & x ≥ 1 \\end{cases}$，最小值为$\\frac{1}{4}$
', '当$x ≥ 1$时，$f(x) = \\int_{0}^{1}(x^{2} - t^{2}) dt = x^{2} - \\frac{1}{3}$；
当$0 < x < 1$时，$f(x) = \\int_{0}^{x}(x^{2} - t^{2}) dt + \\int_{x}^{1}(t^{2} - x^{2}) dt = \\frac{4}{3}x^{3} - x^{2} + \\frac{1}{3}$。
且$\\lim_{x→1^{+}} f^{′}(x) = \\lim_{x→1^{−}} f^{′}(x) = 2$，故$f(x)$在$x = 1$处可导。
所以

$$
f^{′}(x) = \\begin{cases} 4x^{2} - 2x & 0 < x < 1; \\\\ 2x & x ≥ 1. \\end{cases}
$$

故$x ∈ (0, \\frac{1}{2})$，$f^{′}(x) < 0; x ∈ (\\frac{1}{2}, +∞)$，$f^{′}(x) > 0$。因此$f(x)$的最小值为

$$
f (\\frac{1}{2}) = \\frac{4}{3} × (\\frac{1}{2})^{3} - (\\frac{1}{2})^{2} + \\frac{1}{3} = \\frac{1}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:17:37', 9, 'Mogullzr', '2026-01-29 14:17:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2621');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2621');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2621');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2622, '2016年考研数学卷3第18题', '简单', '考研数学2016年数3真题', '(本题满分 10 分)设函数$f(x)$连续，且满足$\\int_{0}^{x} f(x - t)dt = \\int_{0}^{x}(x - t)f(t)dt + e^{−x} - 1$，求$f(x)$。', '[]', '$f(x) = −\\frac{1}{2}(e^{x} + e^{−x})$
', '令$x - t = u$，则

$$
\\int_{0}^{x} f(x - t)dt = \\int_{0}^{x} f(u)du,
$$

又

$$
\\int_{0}^{x}(x - t)f(t)dt = x \\int_{0}^{x} f(t)dt - \\int_{0}^{x} tf(t)dt,
$$

故原式可化为

$$
\\int_{0}^{x} f(t)dt = x \\int_{0}^{x} f(t)dt - \\int_{0}^{x} tf(t)dt + e^{−x} - 1,
$$

上式两边同时对$x$求导得

$$
f(x) = \\int_{0}^{x} f(t)dt + xf(x) - xf(x) - e^{−x} = \\int_{0}^{x} f(t)dt - e^{−x},
$$

可得$f(0) = −1$,
上式两边再对$x$求导得

$$
f^{′}(x) = f(x) + e^{−x},
$$

即$f^{′}(x) - f(x) = e^{−x}$,
解得

$$
f(x) = (∫ e^{−x}e^{∫ −1dx}dx + C) e^{∫ −1dx} = Ce^{x} - \\frac{1}{2}e^{−x},
$$

由$f(0) = −1$，得$C = −\\frac{1}{2}$，故

$$
f(x) = −\\frac{1}{2}(e^{x} + e^{−x}).
$$

', 9, 'Mogullzr', '2026-01-29 14:17:37', 9, 'Mogullzr', '2026-01-29 14:17:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2622');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2622');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2622');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2623, '2016年考研数学卷3第19题', '简单', '考研数学2016年数3真题', '(本题满分 10 分)求幂级数
$$
\\sum_{n=0}^{∞} \\frac{x^{2n+2}}{(n + 1)(2n + 1)}
$$
的收敛域及和函数。', '[]', '收敛域为$\\lbrack −1, 1 \\rbrack$，和函数为$S(x) = \\begin{cases} (1 + x) \\ln(1 + x) - (1 - x) \\ln(1 - x) & −1 < x < 1 \\\\ 2 \\ln 2 & x = ±1. \\end{cases}$
', '由$\\lim_{n→∞} \\frac{(n+2)(2n+3)}{(n+1)(2n+1)} = 1$得收敛半径$R = 1$。
当$x = ±1$时，该级数收敛，故收敛域为$\\lbrack −1, 1 \\rbrack$。
和函数$S(x) = \\sum_{n=0}^{∞} \\frac{1}{(n+1)(2n+1)}x^{2n+2}$。
(1) 当$−1 < x < 1$时，

$$
S^{′}(x) = \\sum_{n=0}^{∞} \\frac{(2n + 2)}{(n + 1)(2n + 1)}x^{2n+1} = \\sum_{n=0}^{∞} \\frac{2}{(2n + 1)}x^{2n+1},
$$


$$
S^{′′}(x) = \\sum_{n=0}^{∞} \\frac{2(2n + 1)}{2n + 1}x^{2n} = \\frac{2}{1 - x^{2}}.
$$

积分得$S^{′}(x) = ∫ \\frac{2}{1-x^{2}}dx = ∫ (\\frac{1}{1-x} + \\frac{1}{1+x}) dx = \\ln \\frac{1+x}{1-x} + C_{1},$

$$
S(x) = ∫ (\\ln \\frac{1 + x}{1 - x} + C_{1}) dx = (1 + x) \\ln(1 + x) - (1 - x) \\ln(1 - x) + C_{1}x + C_{2}.
$$

由$S(0) = 0, S^{′}(0) = 0$知$C_{1} = C_{2} = 0,$故$S(x) = (1 + x) \\ln(1 + x) - (1 - x) \\ln(1 - x).$
(2) 当$x = ±1$时，

$$
S(x) = \\sum_{n=0}^{∞} \\frac{1}{(n + 1)(2n + 1)} = 2 \\sum_{n=0}^{∞} (\\frac{1}{2n + 1} - \\frac{1}{2n + 2}) = 2 \\sum_{n=1}^{∞} \\frac{(−1)n+1}{n} = 2 \\ln 2.
$$

故$S(x) = \\begin{cases} (1 + x) \\ln(1 + x) - (1 - x) \\ln(1 - x) & −1 < x < 1 \\\\ 2 \\ln 2 & x = ±1. \\end{cases}$
', 9, 'Mogullzr', '2026-01-29 14:17:38', 9, 'Mogullzr', '2026-01-29 14:17:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2623');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2623');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '2623');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2624, '2016年考研数学卷3第20题', '简单', '考研数学2016年数3真题', '(本题满分 11 分)设矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 - a \\\\
1 & 0 & a \\\\
a + 1 & 1 & a + 1 \\\\
\\end{array} \\right)$，$β = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
2a - 2 \\\\
\\end{array} \\right)$，且方程组$Ax = β$无解。(1) 求$a$的值；(2) 求方程组$A^{T}Ax = A^{T}β$的通解。', '[]', '
(1)$a = 0$
(2) 方程组$A^{T}Ax = A^{T}β$的通解为$x = k \\left( \\begin{array}{c}
0 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
\\end{array} \\right)$，其中$k$为任意常数。
', '
(1)$(A, β) = \\left( \\begin{array}{cccc}
1 & 1 & 1 - a & 0 \\\\
1 & 0 & a & 1 \\\\
a + 1 & 1 & a + 1 & 2a - 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & a & 1 \\\\
0 & 1 & 1 - 2a & −1 \\\\
0 & 0 & a(2 - a) & a - 2 \\\\
\\end{array} \\right)$,
因为方程组$Ax = β$无解，则$r(A) \\neq r(A, β)$，故$a = 0$。
(2) 由(1)知，

$$
A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 0 & 0 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right) ,  A^{T}A = \\left( \\begin{array}{ccc}
3 & 2 & 2 \\\\
2 & 2 & 2 \\\\
2 & 2 & 2 \\\\
\\end{array} \\right) ,  A^{T}β = \\left( \\begin{array}{c}
−1 \\\\
−2 \\\\
−2 \\\\
\\end{array} \\right) ,
$$


$$
(A^{T}A ∣ A^{T}β) = \\left( \\begin{array}{cccc}
3 & 2 & 2 & −1 \\\\
2 & 2 & 2 & −2 \\\\
2 & 2 & 2 & −2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 0 & 1 \\\\
0 & 1 & 1 & −2 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

故方程组$Ax = β$的通解为$x = k \\left( \\begin{array}{c}
0 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
\\end{array} \\right)$（$k$为任意常数）。
', 9, 'Mogullzr', '2026-01-29 14:17:38', 9, 'Mogullzr', '2026-01-29 14:17:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2624');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '2624');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2625, '2016年考研数学卷3第21题', '简单', '考研数学2016年数3真题', '（本题满分 11 分）已知矩阵$A = \\left( \\begin{array}{ccc}
0 & −1 & 1 \\\\
2 & −3 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$.(1) 求$A^{99}$;(2) 设 3 阶矩阵$B = (α_{1}, α_{2}, α_{3})$满足$B^{2} = BA$, 记$B^{100} = (β_{1}, β_{2}, β_{3})$, 将$β_{1}, β_{2}, β_{3}$分别表示为$α_{1}, α_{2}, α_{3}$的线性组合。', '[]', '
(1)


$$
A^{99} = \\left( \\begin{array}{ccc}
2^{99} - 2 & 1 - 2^{99} & 2 - 2^{98} \\\\
2^{100} - 2 & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

(2)


$$
\\begin{cases} β_{1} = (2^{99} - 2)α_{1} + (2^{100} - 2)α_{2} \\\\ β_{2} = (1 - 2^{99})α_{1} + (1 - 2^{100})α_{2} \\\\ β_{3} = (2 - 2^{98})α_{1} + (2 - 2^{99})α_{2} \\end{cases}
$$

', '
(1) 由


$$
∣λE - A∣ = \\begin{vmatrix}
λ & 1 & −1\\\\
−2 & λ + 3 & 0\\\\
0 & 0 & λ
\\end{vmatrix} = λ(λ + 2)(λ + 1) = 0
$$

可知$A$的特征值为


$$
λ_{1} = 0,  λ_{2} = −1,  λ_{3} = −2.
$$

将$A$对角化，
当$λ_{1} = 0$时，由$(OE - A)X = 0$得特征向量$X_{1} = \\left( \\begin{array}{c}
3 \\\\
2 \\\\
2 \\\\
\\end{array} \\right)$；
当$λ_{2} = −1$时，由$(−E - A)X = 0$得特征向量$X_{2} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$；
当$λ_{3} = −2$时，由$(−2E - A)X = 0$得特征向量$X_{3} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
0 \\\\
\\end{array} \\right)$。
令$P = \\left( \\begin{array}{ccc}
3 & 1 & 1 \\\\
2 & 1 & 2 \\\\
2 & 0 & 0 \\\\
\\end{array} \\right)$，则$P^{−1}AP = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & −2 \\\\
\\end{array} \\right)$，因此

$$
P^{−1}A^{99}P = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & (−1)99 & 0 \\\\
0 & 0 & (−2)99 \\\\
\\end{array} \\right)
$$

所以有

$$
A^{99} = P \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & (−1)99 & 0 \\\\
0 & 0 & (−2)99 \\\\
\\end{array} \\right) P^{−1} = \\left( \\begin{array}{ccc}
2^{99} - 2 & 1 - 2^{99} & 2 - 2^{98} \\\\
2^{100} - 2 & 1 - 2^{100} & 2 - 2^{99} \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

(2)$B^{100} = B^{98}B^{2} = B^{98}BA = ⋯ = BA^{99}$，
故$(β_{1}, β_{2}, β_{3}) = (α_{1}, α_{2}, α_{3})A^{99}$，因此有

$$
\\begin{cases} β_{1} = (2^{99} - 2)α_{1} + (2^{100} - 2)α_{2} \\\\ β_{2} = (1 - 2^{99})α_{1} + (1 - 2^{100})α_{2} \\\\ β_{3} = (2 - 2^{98})α_{1} + (2 - 2^{99})α_{2} \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:38', 9, 'Mogullzr', '2026-01-29 14:17:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2625');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2625');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2625');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2626, '2016年考研数学卷3第22题', '简单', '考研数学2016年数3真题', '（本题满分 11 分）设二维随机变量$(X, Y)$在区域$D = \\{(x, y) ∣ 0 < x < 1, x^{2} < y < \\sqrt{x}\\}$上服从均匀分布,
令$U = \\begin{cases} 1 & X ≤ Y \\\\ 0 & X > Y. \\end{cases}$(1) 写出$(X, Y)$的概率密度;(2) 问$U$与$X$是否相互独立? 并说明理由。(3) 求$Z = U + X$的分布函数$F(z)$.', '[]', '
(1)$(X, Y)$的概率密度函数为


$$
f(x, y) = \\begin{cases} 3 & (x, y) ∈ D \\\\ 0 & 其他. \\end{cases}
$$

(2)$U$与$X$不相互独立。
(3)$Z = U + X$的分布函数为


$$
F(z) = \\begin{cases} 0 & z < 0 \\\\ \\frac{3}{2}z^{2} - z^{3} & 0 ≤ z < 1 \\\\ 2(z - 1)23​ - \\frac{3}{2}(z - 1)2 + \\frac{1}{2} & 1 ≤ z < 2 \\\\ 1 & z ≥ 2. \\end{cases}
$$

', '
(1) 区域$D$的面积为


$$
S_{D} = \\int_{0}^{1}(\\sqrt{x} - x^{2}) dx = (\\frac{2}{3}x^{\\frac{3}{2}} - \\frac{1}{3}x^{3}) ​_{0}^{1} = \\frac{1}{3},
$$

故$(X, Y)$的概率密度函数为


$$
f(x, y) = \\begin{cases} 3 & (x, y) ∈ D \\\\ 0 & 其他. \\end{cases}
$$

(2) 设$U$和$X$的联合分布函数为$G(u, x)$,


$$
G(0, t) = P\\{U = 0, X ≤ t\\} = P\\{X > Y, X ≤ t\\} = \\int_{0}^{t} \\int_{x^{2}}^{x} f(x, y) dy dx = \\frac{3}{2}t^{2} - t^{3};
$$



$$
G(1, t) = P\\{U = 1, X ≤ t\\} = 2t^{\\frac{3}{2}} - \\frac{3}{2}t^{2}.
$$

由于


$$
P\\{U = 0\\} = P\\{X > Y\\} = \\int_{0}^{1} \\int_{x^{2}}^{x} f(x, y)dy dx = \\frac{1}{2} = P\\{U = 1\\},
$$

显然


$$
G(u, x) \\neq P\\{U = u\\}P\\{X ≤ x\\},
$$

故$U$与$X$不独立。
(3) 当$z < 0$时，$F(z) = 0$;
当$0 ≤ z < 1$时，$F(z) = P\\{U = 0, X ≤ z\\} = \\frac{3}{2}z^{2} - z^{3}$;
当$1 ≤ z < 2$时，$F(z) = P\\{U = 1, X ≤ z - 1\\} + P\\{U = 0, X ≤ z\\} = 2(z - 1)23​ - \\frac{3}{2}(z - 1)2 + \\frac{1}{2}$;
当$z ≥ 2$时，$F(z) = 1$。
故


$$
F(z) = \\begin{cases} 0 & z < 0 \\\\ \\frac{3}{2}z^{2} - z^{3} & 0 ≤ z < 1 \\\\ 2(z - 1)23​ - \\frac{3}{2}(z - 1)2 + \\frac{1}{2} & 1 ≤ z < 2 \\\\ 1 & z ≥ 2. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:17:38', 9, 'Mogullzr', '2026-01-29 14:17:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2626');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2626');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2626');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2627, '2016年考研数学卷3第23题', '简单', '考研数学2016年数3真题', '（本题满分 11 分）设总体$X$的概率密度为
$$
f(x; θ) = \\begin{cases} \\frac{3x^{2}}{θ^{3}} & 0 < x < θ \\\\ 0 & 其他 \\end{cases}
$$
其中$θ ∈ (0, +∞)$为未知参数,$X_{1}, X_{2}, X_{3}$为来自总体$X$的简单随机样本, 令
$$
T = \\max\\{X_{1}, X_{2}, X_{3}\\}.
$$
(1) 求$T$的概率密度;(2) 确定$a$, 使得$E(aT) = θ$。', '[]', '
(1)$g(t) = \\begin{cases} \\frac{9t^{8}}{θ^{9}} & 0 < t < θ \\\\ 0 & 其他 \\end{cases}$
(2)$a = \\frac{10}{9}$
', '
(1) 当$0 < x ≤ θ$时，$X$的分布函数为


$$
F(x) = \\int_{0}^{x} \\frac{3t^{2}}{θ^{3}}dt = \\frac{x^{3}}{θ^{3}}.
$$

故


$$
F(x) = \\begin{cases} 0 & x ≤ 0 \\\\ \\frac{x^{3}}{θ^{3}} & 0 < x ≤ θ \\\\ 1 & x > θ. \\end{cases}
$$

设$T$的分布函数为$G(t)$，则当$0 < t ≤ θ$时，


$$
\\begin{array}{cc}
G(t) & = P\\{T ≤ t\\} \\\\
 & = P\\{X_{1} ≤ t, X_{2} ≤ t, X_{3} ≤ t\\} \\\\
 & = P\\{X_{1} ≤ t\\}P\\{X_{2} ≤ t\\}P\\{X_{3} ≤ t\\} \\\\
 & = \\frac{t^{9}}{θ^{9}}, \\\\
\\end{array}
$$

故


$$
G(t) = \\begin{cases} 0 & t ≤ 0 \\\\ \\frac{t^{9}}{θ^{9}} & 0 < t ≤ θ \\\\ 1 & t > θ. \\end{cases}
$$

因此$T$的密度函数为


$$
g(t) = \\begin{cases} \\frac{9t^{8}}{θ^{9}} & 0 < t < θ \\\\ 0 & 其他. \\end{cases}
$$

(2)


$$
E(T) = \\int_{0}^{θ} \\frac{9t^{8}}{θ^{9}} dt = \\frac{9}{10}θ,
$$

由$θ = E(aT) = aE(T) = \\frac{9}{10}aθ$知$a = \\frac{10}{9}$.
', 9, 'Mogullzr', '2026-01-29 14:17:39', 9, 'Mogullzr', '2026-01-29 14:17:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2627');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2627');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '2627');
