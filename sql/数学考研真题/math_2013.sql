INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2352, '2013年考研数学卷1第1题', '简单', '考研数学2013年数1真题', '已知$\\lim_{x→0} \\frac{x-arctan x}{x^{k}} = c$，其中$k, c$为常数，且$c \\neq 0$，则（ ）', '[''$k = 2, c = −\\\\frac{1}{2}$'', ''$k = 2, c = \\\\frac{1}{2}$'', ''$k = 3, c = −\\\\frac{1}{3}$'', ''$k = 3, c = \\\\frac{1}{3}$'']', "['D']", '因为$c \\neq 0$，

$$
\\begin{array}{cc}
c & = \\lim_{x→0} \\frac{x - arctan x}{x^{k}} \\\\
 & =洛 \\lim_{x→0} \\frac{1 - \\frac{1}{1+x^{2}}}{kx^{k-1}} \\\\
 & = \\lim_{x→0} \\frac{x^{2}}{kx^{k-1}(1 + x^{2})} \\\\
 & = \\frac{1}{k} \\lim_{x→0} x^{3-k}. \\\\
\\end{array}
$$
所以$3 - k = 0$，$k = 3$，$c = \\frac{1}{k} = \\frac{1}{3}$，故选 D。', 9, 'Mogullzr', '2026-01-29 14:16:20', 9, 'Mogullzr', '2026-01-29 14:16:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2352');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2352');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2352');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2353, '2013年考研数学卷1第2题', '简单', '考研数学2013年数1真题', '曲面$x^{2} + \\cos(xy) + yz + x = 0$在点$(0, 1, −1)$的切平面方程为（  ）', '[''$x - y + z = −2$'', ''$x + y + z = 0$'', ''$x - 2y + z = −3$'', ''$x - y - z = 0$'']', "['A']", '曲面在点$(0, 1, −1)$处的法向量为
$$
\\begin{array}{cc}
n & = (F_{x}^{′}, F_{y}^{′}, F_{z}^{′}) ​_{(0,1,−1)} \\\\
 & = (2x - y \\sin(xy) + 1,  −x \\sin(xy) + z,  y) ​_{(0,1,−1)} \\\\
 & = (1,  −1,  1) \\\\
\\end{array}
$$
故曲面在点$(0, 1, −1)$处的切平面方程为
$$
1 ⋅ (x - 0) - (y - 1) + (z + 1) = 0
$$
即
$$
x - y + z = −2
$$
故选 A。', 9, 'Mogullzr', '2026-01-29 14:16:20', 9, 'Mogullzr', '2026-01-29 14:16:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2353');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2353');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '2353');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2354, '2013年考研数学卷1第3题', '简单', '考研数学2013年数1真题', '设$f(x) = ​x - \\frac{1}{2}​$，$b_{n} = 2 \\int_{0}^{1} f(x) \\sin nπx dx (n = 1, 2, ⋯ )$。
令$s(x) = \\sum_{n=1}^{∞} b_{n} \\sin nπx$，则$s (−\\frac{9}{4}) =$（ ）', '[''$\\\\frac{3}{4}$'', ''$\\\\frac{1}{4}$'', ''$−\\\\frac{1}{4}$'', ''$−\\\\frac{3}{4}$'']', "['C']", '
函数$f(x) = ​x - \\frac{1}{2}​$可表示为分段函数：
$$
f(x) = \\begin{cases} \\frac{1}{2} - x & x ∈  \\lbrack 0, \\frac{1}{2} \\rbrack  \\\\ x - \\frac{1}{2} & x ∈  \\lbrack \\frac{1}{2}, 1 \\rbrack  \\end{cases}
$$
将$f(x)$作奇延拓，得到周期函数$F(x)$，其周期$T = 2$。由于$F(x)$在点$x = −\\frac{9}{4}$处连续，因此有：
$$
S (−\\frac{9}{4}) = F (−\\frac{9}{4}) = F (−\\frac{1}{4}) = −F (\\frac{1}{4}) = −f (\\frac{1}{4}) = −\\frac{1}{4}
$$
故选 C。', 9, 'Mogullzr', '2026-01-29 14:16:20', 9, 'Mogullzr', '2026-01-29 14:16:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2354');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2354');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '2354');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2355, '2013年考研数学卷1第4题', '简单', '考研数学2013年数1真题', '设$L_{1} : x^{2} + y^{2} = 1$，$L_{2} : x^{2} + y^{2} = 2$，$L_{3} : x^{2} + 2y^{2} = 2$，$L_{4} : 2x^{2} + y^{2} = 2$为四条逆时针方向的平面曲线，记

$$
I_{i} = ∮_{L_{i}} (y + \\frac{y^{3}}{6}) dx + (2x - \\frac{x^{3}}{3}) dy (i = 1, 2, 3, 4)
$$
则$\\max\\{I_{1}, I_{2}, I_{3}, I_{4}\\} =$（  ）', '[''$I_{1}$'', ''$I_{2}$'', ''$I_{3}$'', ''$I_{4}$'']', "['D']", '记$P = y + \\frac{y^{3}}{6}$，$Q = 2x - \\frac{x^{3}}{3}$，则
$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = 2 - x^{2} - 1 - \\frac{y^{2}}{2} = 1 - (x^{2} + \\frac{y^{2}}{2})
$$
于是
$$
\\begin{array}{cc}
I_{i} & = ∮_{L_{i}} (y + \\frac{y^{3}}{6}) dx + (2x - \\frac{x^{3}}{3}) dy \\\\
 & = \\iint_{D_{i}} (\\frac{∂Q}{∂x} - \\frac{∂P}{∂y}) dxdy \\\\
\\end{array}
$$
用$D_{i}$表示$L_{i}$所围区域，可得
$$
I_{1} = \\frac{5}{8}π,  I_{2} = \\frac{1}{2}π,  I_{3} = \\frac{3\\sqrt{2}}{8},  I_{4} = \\frac{\\sqrt{2}}{2}π,
$$
并有$I_{4} > I_{1} > I_{3} > I_{2}$。故选 D。', 9, 'Mogullzr', '2026-01-29 14:16:20', 9, 'Mogullzr', '2026-01-29 14:16:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2355');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2355');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '2355');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2356, '2013年考研数学卷1第5题', '简单', '考研数学2013年数1真题', '设$A$,$B$,$C$均为$n$阶矩阵，若$AB = C$，且$B$可逆，则', '[''矩阵$C$的行向量组与矩阵$A$的行向量组等价'', ''矩阵$C$的列向量组与矩阵$A$的列向量组等价'', ''矩阵$C$的行向量组与矩阵$B$的行向量组等价'', ''矩阵$C$的列向量组与矩阵$B$的列向量组等价'']', "['B']", '将$A, C$按列分块，
$A = (α_{1}, … , α_{n})$，
$C = (γ_{1}, … , γ_{n})$。由于$AB = C$，故

$$
(α_{1}, … , α_{n}) \\left( \\begin{array}{ccc}
b_{11} &  & b_{1n} \\\\
 & … &  \\\\
⋮ &  & ⋮ \\\\
 & ⋱ &  \\\\
b_{n1} &  & b_{nn} \\\\
 & … &  \\\\
\\end{array} \\right) = (γ_{1}, … , γ_{n})
$$
即

$$
γ_{1} = b_{11}α_{1} + ⋯ + b_{n1}α_{n},  … ,  γ_{n} = b_{1n}α_{1} + ⋯ + b_{nn}α_{n}
$$
因此，$C$的列向量组可由$A$的列向量组线性表示。又因为$B$可逆，有$A = CB^{−1}$，所以$A$的列向量组也可由$C$的列向量组线性表示。故选B。', 9, 'Mogullzr', '2026-01-29 14:16:21', 9, 'Mogullzr', '2026-01-29 14:16:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2356');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2356');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2356');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2357, '2013年考研数学卷1第6题', '简单', '考研数学2013年数1真题', '矩阵$\\left( \\begin{array}{ccc}
1 & a & 1 \\\\
a & b & a \\\\
1 & a & 1 \\\\
\\end{array} \\right)$与$\\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & b & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$相似的充要条件为（ ）', '[''$a = 0, b = 2$'', ''$a = 0, b$为任意常数'', ''$a = 2, b = 0$'', ''$a = 2, b$为任意常数'']', "['B']", '
将题目中的两个矩阵分别记为$A$和$B$。由于$A$为实对称矩阵，可以相似对角化，从而$A$与$B$相似的充分必要条件为$A$的特征值为$2, b, 0$。又
$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & −a & −1\\\\
−a & λ - b & −a\\\\
−1 & −a & λ - 1
\\end{vmatrix} = λ \\lbrack (λ - b)(λ - 2) - 2a^{2} \\rbrack ,
$$
从而$a = 0, b$为任意常数。', 9, 'Mogullzr', '2026-01-29 14:16:21', 9, 'Mogullzr', '2026-01-29 14:16:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2357');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '2357');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2358, '2013年考研数学卷1第7题', '简单', '考研数学2013年数1真题', '设$X_{1}, X_{2}, X_{3}$是随机变量，且$X_{1} ∼ N(0, 1), X_{2} ∼ N(0, 2^{2}), X_{3} ∼ N(5, 3^{2})$，$p_{i} = P\\{−2 ≤ X_{i} ≤ 2\\} (i = 1, 2, 3)$，则（ ）', '[''$p_{1} > p_{2} > p_{3}$'', ''$p_{2} > p_{1} > p_{3}$'', ''$p_{3} > p_{1} > p_{2}$'', ''$p_{1} > p_{3} > p_{2}$'']', "['A']", '首先计算$p_{1} = P\\{−2 ≤ X_{1} ≤ 2\\}$。由于$X_{1} ∼ N(0, 1)$，有

$$
p_{1} = Φ(2) - Φ(−2) = 2Φ(2) - 1
$$
接着计算$p_{2} = P\\{−2 ≤ X_{2} ≤ 2\\}$，其中$X_{2} ∼ N(0, 4)$。标准化得

$$
p_{2} = P \\{\\frac{−2 - 0}{2} ≤ \\frac{X_{2} - 0}{2} ≤ \\frac{2 - 0}{2}\\} = Φ(1) - Φ(−1) = 2Φ(1) - 1
$$
再计算$p_{3} = P\\{−2 ≤ X_{3} ≤ 2\\}$，其中$X_{3} ∼ N(5, 9)$。标准化得

$$
p_{3} = P \\{\\frac{−2 - 5}{3} ≤ \\frac{X_{3} - 5}{3} ≤ \\frac{2 - 5}{3}\\} = Φ(−1) - Φ (−\\frac{7}{3}) = Φ (\\frac{7}{3}) - Φ(1)
$$
由下图可知，$p_{1} > p_{2} > p_{3}$，因此选 A。', 9, 'Mogullzr', '2026-01-29 14:16:21', 9, 'Mogullzr', '2026-01-29 14:16:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2358');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2358');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2359, '2013年考研数学卷1第8题', '简单', '考研数学2013年数1真题', '设随机变量$X ∼ t(n)$，$Y ∼ F(1, n)$，给定$α (0 < α < 0.5)$，常数$c$满足$P\\{X > c\\} = α$，则$P\\{Y > c^{2}\\} =$', '[''$α$'', ''$1 - α$'', ''$2α$'', ''$1 - 2α$'']', "['C']", '
设$X ∼ t(n)$，则$X^{2} ∼ F(1, n)$。于是

$$
P\\{Y > c^{2}\\} = P\\{X^{2} > c^{2}\\} = P\\{X > c\\} + P\\{X < −c\\} = 2P\\{X > c\\} = 2α
$$
，
因此选 C。', 9, 'Mogullzr', '2026-01-29 14:16:21', 9, 'Mogullzr', '2026-01-29 14:16:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2359');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2359');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2360, '2013年考研数学卷1第9题', '简单', '考研数学2013年数1真题', '（填空题）设函数$y = f(x)$由方程$y - x = e^{x(1-y)}$确定，则$\\lim_{n→∞} n \\lbrack f(\\frac{1}{n}) - 1 \\rbrack  =$', '[]', '1
', '$x = 0$时，$y = 1$
方程两边对 x 求导得$y^{′} - 1 = e^{x(1-y)}(1 - y - xy^{′})$所以$y^{′}(0) = 1$

$$
lim_{n→∞}n  \\lbrack f (\\frac{1}{n}) - 1 \\rbrack  = lim_{n→∞}\\frac{f (\\frac{1}{n}) - f(0)}{\\frac{1}{n}} = f^{′}(0) = 1
$$

', 9, 'Mogullzr', '2026-01-29 14:16:21', 9, 'Mogullzr', '2026-01-29 14:16:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2360');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2360');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2360');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2361, '2013年考研数学卷1第10题', '简单', '考研数学2013年数1真题', '（填空题）已知$y_{1} = e^{3x} - xe^{2x}$，$y_{2} = e^{x} - xe^{2x}$，$y_{3} = −xe^{2x}$是某二阶常系数非齐次线性微分方程的3个解，则该方程的通解$y =$', '[]', '$y = c1(e^{3x} - e^{x}) + c2e^{x} - xe^{2x}$
', '$y_{1} - y_{2} = e^{3x} - e^{x}$，$y_{2} - y_{3} = e^{x}$，
对应齐次微分方程的通解$y^{2} = c_{1}(e^{3x} - e^{x}) + c_{2}e^{x}$
非齐次微分方程的通解$y = c_{1}(e^{3x} - e^{x}) + c_{2}e^{x} - xe^{2x}$
', 9, 'Mogullzr', '2026-01-29 14:16:21', 9, 'Mogullzr', '2026-01-29 14:16:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2361');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2361');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '2361');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2362, '2013年考研数学卷1第11题', '简单', '考研数学2013年数1真题', '（填空题）设

$$
\\begin{cases} x = \\sin t \\\\ y = t \\sin t + \\cos t \\end{cases}
$$
（$t$为参数），求

$$
\\frac{d^{2}y}{dx^{2}}​_{t=\\frac{π}{4}} =
$$
', '[]', '$\\sqrt{2}$
', '
首先，计算一阶导数：


$$
\\frac{dy}{dx} = \\frac{dy}{dt} ⋅ \\frac{1}{\\frac{dx}{dt}} = \\frac{\\sin t + t \\cos t - \\sin t}{\\cos t} = t
$$

接着，计算二阶导数：


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d (\\frac{dy}{dx})}{dt} ⋅ \\frac{dt}{dx} = \\frac{1}{\\frac{dx}{dt}} = \\frac{1}{\\cos t}
$$

最后，代入$t = \\frac{π}{4}$得：


$$
\\frac{d^{2}y}{dx^{2}}​_{t=\\frac{π}{4}} = \\frac{1}{\\cos \\frac{π}{4}} = \\sqrt{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:22', 9, 'Mogullzr', '2026-01-29 14:16:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2362');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2362');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2362');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2363, '2013年考研数学卷1第12题', '简单', '考研数学2013年数1真题', '（填空题）

$$
\\int_{1}^{+∞} \\frac{\\ln x}{(1 + x)2} dx =
$$
', '[]', '$\\ln 2$
', '
考虑积分


$$
I = \\int_{1}^{+∞} \\frac{\\ln x}{(1 + x)2}dx
$$

采用分部积分法，令


$$
u = \\ln x,  dv = \\frac{dx}{(1 + x)2}
$$

则


$$
du = \\frac{1}{x}dx,  v = −\\frac{1}{1 + x}
$$

于是


$$
I = −\\frac{\\ln x}{1 + x}​_{1}^{+∞} + \\int_{1}^{+∞} \\frac{1}{x(1 + x)}dx
$$

第一项在$x → +∞$时趋于 0，在$x = 1$时为$−\\frac{\\ln 1}{2} = 0$，因此该部分为 0。
第二项可分解为


$$
\\frac{1}{x(1 + x)} = \\frac{1}{x} - \\frac{1}{1 + x}
$$

所以


$$
\\int_{1}^{+∞} \\frac{1}{x(1 + x)}dx = \\int_{1}^{+∞} (\\frac{1}{x} - \\frac{1}{1 + x}) dx
$$



$$
= \\ln \\frac{x}{1 + x}​_{1}^{+∞}
$$

当$x → +∞$时，$\\frac{x}{1+x} → 1$，因此$\\ln 1 = 0$；
当$x = 1$时，$\\frac{1}{1+1} = \\frac{1}{2}$，因此


$$
I = 0 - \\ln \\frac{1}{2} = \\ln 2
$$

故


$$
\\int_{1}^{+∞} \\frac{\\ln x}{(1 + x)2}dx = \\ln 2
$$

', 9, 'Mogullzr', '2026-01-29 14:16:22', 9, 'Mogullzr', '2026-01-29 14:16:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2363');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2363');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2363');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2364, '2013年考研数学卷1第13题', '简单', '考研数学2013年数1真题', '（填空题）设$A = (a_{ij})$是$3$阶非零矩阵，$∣A∣$为 A 的行列式，$A_{ij}$为$a_{ij}$的代数余子式，若$a_{ij} + A_{ij} = 0(i, j = 1, 2, 3)$，则$∣A∣ =$', '[]', '-1
', '方法一：取特殊矩阵$A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，$∣A∣ = −1$
方法二：$A^{∗} = −A^{T}$，则$∣A^{∗}∣ = ∣ - A^{T}∣$，整理得到$∣A∣^{3-1} = (−1)3∣A∣$，即$∣A∣ = −1$或者$∣A∣ = 0$

$$
∣A∣ = a_{i1}A_{i1} + a_{i2}A_{i2} + a_{i3}A_{i3} = − (a_{i1}^{2} + a_{i2}^{2} + a_{i3}^{2}) ≤ 0
$$

又因为$AO$，所以至少有一个$a_{ij}0$，所以

$$
∣A∣ = a_{i1}A_{i1} + a_{i2}A_{i2} + a_{i3}A_{i3} = − (a_{i1}^{2} + a_{i2}^{2} + a_{i3}^{2}) < 0
$$

从而$∣A∣ = −1$
', 9, 'Mogullzr', '2026-01-29 14:16:22', 9, 'Mogullzr', '2026-01-29 14:16:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2364');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2364');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2365, '2013年考研数学卷1第14题', '简单', '考研数学2013年数1真题', '（填空题）设随机变量$Y$服从参数为$1$的指数分布，$a$为常数且大于零，则

$$
P\\{Y ≤ a + 1 ∣ Y > a\\} =
$$
', '[]', '

$$
1 - \\frac{1}{e}
$$

', '
概率密度函数为


$$
f(y) = \\begin{cases} e^{−y} & y > 0 \\\\ 0 & y ≤ 0. \\end{cases}
$$

所求条件概率为


$$
P\\{Y ≤ a + 1 ∣ Y > a\\} = \\frac{P\\{Y > a, Y ≤ a + 1\\}}{P\\{Y > a\\}} = \\frac{\\int_{a}^{a+1} f(y) dy}{\\int_{a}^{+∞} f(y) dy}.
$$

代入$f(y)$得


$$
\\frac{\\int_{a}^{a+1} e^{−y} dy}{\\int_{a}^{+∞} e^{−y} dy} = \\frac{e^{−a} - e^{−(a+1)}}{e^{−a}} = 1 - \\frac{1}{e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:16:22', 9, 'Mogullzr', '2026-01-29 14:16:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2365');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2365');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2366, '2013年考研数学卷1第15题', '简单', '考研数学2013年数1真题', '（本题满分 10 分）计算
$$
\\int_{0}^{1} \\frac{f(x)}{\\sqrt{x}} dx,
$$
其中
$$
f(x) = \\int_{1}^{x} \\frac{\\ln(t + 1)}{t} dt.
$$
', '[]', '$8 - 2π - 4 \\ln 2$
', '
已知$f(x) = \\int_{1}^{x} \\frac{\\ln(t+1)}{t} dt$，则


$$
f^{′}(x) = \\frac{\\ln(x + 1)}{x},  f(1) = 0.
$$

考虑积分


$$
\\int_{0}^{1} \\frac{f(x)}{\\sqrt{x}} dx.
$$

利用分部积分法，令$u = f(x)$，$dv = \\frac{1}{\\sqrt{x}}dx$，则


$$
\\int_{0}^{1} \\frac{f(x)}{\\sqrt{x}} dx = 2 \\int_{0}^{1} f(x) d\\sqrt{x}.
$$

分部积分得


$$
2 \\int_{0}^{1} f(x) d\\sqrt{x} = 2f(x)\\sqrt{x}​_{0}^{1} - 2 \\int_{0}^{1} \\sqrt{x}f^{′}(x) dx.
$$

代入上下限及$f^{′}(x)$得


$$
= 2f(1) - 2 \\int_{0}^{1} \\frac{\\ln(x + 1)}{x} ⋅ \\sqrt{x} dx = −2 \\int_{0}^{1} \\frac{\\ln(x + 1)}{\\sqrt{x}} dx.
$$

进一步化为


$$
= −4 \\int_{0}^{1} \\ln(x + 1) d\\sqrt{x}.
$$

再次分部积分，令$u = \\ln(x + 1)$，$dv = d\\sqrt{x}$，得


$$
−4  \\lbrack \\ln(x + 1)\\sqrt{x}​_{0}^{1} - \\int_{0}^{1} \\frac{\\sqrt{x}}{1 + x} dx \\rbrack  = −4 \\ln 2 + 4 \\int_{0}^{1} \\frac{\\sqrt{x}}{1 + x} dx.
$$

下面计算


$$
\\int_{0}^{1} \\frac{\\sqrt{x}}{1 + x} dx.
$$

令$\\sqrt{x} = t$，则$x = t^{2}$，$dx = 2t dt$，代入得


$$
\\int_{0}^{1} \\frac{t}{1 + t^{2}} ⋅ 2t dt = 2 \\int_{0}^{1} \\frac{t^{2}}{1 + t^{2}} dt.
$$

拆分为


$$
2 \\int_{0}^{1} (1 - \\frac{1}{1 + t^{2}}) dt = 2 \\int_{0}^{1} dt - 2 \\int_{0}^{1} \\frac{1}{1 + t^{2}} dt.
$$

计算得


$$
= 2  \\lbrack t - arctan t \\rbrack _{0}^{1} = 2 (1 - \\frac{π}{4}) .
$$

代回原式得


$$
原式 = −4 \\ln 2 + 4 ⋅ 2 (1 - \\frac{π}{4}) = −4 \\ln 2 + 8 - 2π = 8 - 2π - 4 \\ln 2.
$$

', 9, 'Mogullzr', '2026-01-29 14:16:22', 9, 'Mogullzr', '2026-01-29 14:16:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2366');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2366');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2366');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2367, '2013年考研数学卷1第16题', '简单', '考研数学2013年数1真题', '（本题满分10分）设数列$\\{a_{n}\\}$满足条件:$a_{0} = 3$，$a_{1} = 1$，$a_{n-2} - n(n - 1)a_{n} = 0(n ≥ 2)$，$S(x)$是幂级数$\\sum_{n=0}^{∞} a_{n}x^{n}$的和函数(I) 证明:$S^{′′}(x) - S(x) = 0$(II) 求$S(x)$的表达式', '[]', '$S(x) = e^{−x} + 2e^{x}$
', '$S(x) = \\sum_{n=0}^{∞} a_{n}x^{n}$，$S^{′}(x) = \\sum_{n=1}^{∞} na_{n}x^{n-1}$，

$$
S^{′′}(x) = \\sum_{n=2}^{∞} n(n - 1)a_{n}x^{n-2} = \\sum_{n=0}^{∞}(n + 2)(n + 1)a_{n+2}x^{n}
$$


$$
S^{′′}(x) - S(x) = \\sum_{n=0}^{∞}  \\lbrack (n + 2)(n + 1)a_{n+2} - a_{n} \\rbrack  x^{n}
$$

因为$n(n - 1)a_{n} - a_{n-2} = 0$（$n ≥ 2$），所以$(n + 2)(n + 1)a_{n+2} - a_{n} = 0(n ≥ 0)$，

$$
∴ \\begin{cases} S^{′′}(x) - S(x) = 0 \\\\ S(0) = a_{0} = 3 \\\\ S^{′}(0) = a_{1} = 1. \\end{cases}
$$

(II)$λ^{2} - 1 = 0$，$λ_{1} = 1$，$λ_{2} = −1$，所以$S(x) = C_{1}e^{−x} + C_{2}e^{x}$。
又$S(0) = 3$，$S^{′}(0) = 1$，所以$C_{1} = 1$，$C_{2} = 2$，$S(x) = e^{−x} + 2e^{x}$
', 9, 'Mogullzr', '2026-01-29 14:16:23', 9, 'Mogullzr', '2026-01-29 14:16:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2367');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2367');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '2367');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2368, '2013年考研数学卷1第17题', '简单', '考研数学2013年数1真题', '（本题满分 10 分）求函数$f(x, y) = (y + \\frac{x^{3}}{3}) e^{x+y}$的极值。', '[]', '函数$f(x, y)$在点$(1, −\\frac{4}{3})$处取得极小值$−e^{−\\frac{1}{3}}$，点$(−1, −\\frac{2}{3})$不是极值点。
', '令$f_{x}^{′} = e^{x+y} (x^{2} + y + \\frac{x^{3}}{3}) = 0$，$f_{y}^{′} = e^{x+y} (1 + y + \\frac{x^{3}}{3}) = 0$。
解得


$$
\\begin{cases} x = 1 \\\\ y = −\\frac{4}{3} \\end{cases}   \\begin{cases} x = −1 \\\\ y = −\\frac{2}{3} \\end{cases}
$$

二阶偏导数为：

$$
\\begin{array}{c}
f_{xx}^{′′} = e^{x+y} (2x + 2x^{2} + y + \\frac{x^{3}}{3}) , \\\\
f_{xy}^{′′} = e^{x+y} (1 + x^{2} + y + \\frac{x^{3}}{3}) , \\\\
\\end{array}
$$

在点$(1, −\\frac{4}{3})$处：

$$
A = f_{xx}^{′′}∣^{(1,−\\frac{4}{3})} = 3e^{−\\frac{1}{3}},  B = f_{xy}^{′′}∣^{(1,−\\frac{4}{3})} = e^{−\\frac{1}{3}},  C = f_{yy}^{′′}∣^{(1,−\\frac{4}{3})} = e^{−\\frac{1}{3}}
$$

计算判别式：

$$
AC - B^{2} = 3e^{−\\frac{2}{3}} - e^{−\\frac{2}{3}} = 2e^{−\\frac{2}{3}} > 0
$$

又因为$A > 0$，所以$(1, −\\frac{4}{3})$是$f(x, y)$的极小值点，极小值为：

$$
f (1, −\\frac{4}{3}) = −e^{−\\frac{1}{3}}
$$

在点$(−1, −\\frac{2}{3})$处：

$$
A = f_{xx}^{′′}∣^{(−1,−\\frac{2}{3})} = −e^{−\\frac{5}{3}},  B = f_{xy}^{′′}∣^{(−1,−\\frac{2}{3})} = e^{−\\frac{5}{3}},  C = f_{yy}^{′′}∣^{(−1,−\\frac{2}{3})} = e^{−\\frac{5}{3}}
$$

由于$AC - B^{2} < 0$，因此$(−1, −\\frac{2}{3})$不是$f(x, y)$的极值点。
', 9, 'Mogullzr', '2026-01-29 14:16:23', 9, 'Mogullzr', '2026-01-29 14:16:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2368');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2368');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2368');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2369, '2013年考研数学卷1第18题', '简单', '考研数学2013年数1真题', '（本题满分 10 分）设奇函数$f(x)$在$\\lbrack −1, 1 \\rbrack$上具有 2 阶导数，且$f(1) = 1$。证明：(I) 存在$ξ ∈ (0, 1)$，使得$f^{′}(ξ) = 1$。(II) 存在$η ∈ (−1, 1)$，使得$f^{′′}(η) + f^{′}(η) = 1$。', '[]', '见解析
', '
(I)
由于$f(x)$在$\\lbrack −1, 1 \\rbrack$上为奇函数，故$f(−x) = −f(x)$，则$f(0) = 0$。令$F(x) = f(x) - x$，则$F(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导，且$F(1) = f(1) - 1 = 0$，$F(0) = f(0) - 0 = 0$。由罗尔定理，存在$ξ ∈ (0, 1)$，使得$F^{′}(ξ) = 0$，即$f^{′}(ξ) = 1$。
(II)
由于$f(x)$在$\\lbrack −1, 1 \\rbrack$上为奇函数，则$f^{′}(x)$在$\\lbrack −1, 1 \\rbrack$上为偶函数，所以由 (I) 得$f^{′}(−ξ) = f^{′}(ξ) = 1$。
令$G(x) = e^{x} \\lbrack f^{′}(x) - 1 \\rbrack$，则$G(x)$在$\\lbrack −1, 1 \\rbrack$上连续，在$(−1, 1)$内可导，且$G(ξ) = G(−ξ) = 0$。由罗尔定理，存在$η ∈ (−ξ, ξ) ⊂ (−1, 1)$，使得$G^{′}(η) = 0$，即$f^{′′}(η) + f^{′}(η) = 1$。
', 9, 'Mogullzr', '2026-01-29 14:16:23', 9, 'Mogullzr', '2026-01-29 14:16:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2369');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2369');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2369');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2370, '2013年考研数学卷1第19题', '简单', '考研数学2013年数1真题', '（本题满分10分）设直线$L$过$A(1, 0, 0)$，$B(0, 1, 1)$两点，将$L$绕$z$轴旋转一周得到曲面$∑$，$∑$与平面$z = 0$，$z = 2$所围成的立体为$Ω$。(I) 求曲面$∑$的方程，(II) 求$Ω$的形心坐标。', '[]', '
(I)$x^{2} + y^{2} = 2z^{2} - 2z + 1$
(II)$(0, 0, \\frac{7}{5})$
', '
(I) 已知$\\overline{AB} = (−1, 1, 1)$，因此直线$L$的方程为


$$
\\frac{x - 1}{−1} = \\frac{y}{1} = \\frac{z}{1}.
$$

设$Σ$上任意一点是由直线$L$上的某点绕$z$轴旋转一周得到的，则有


$$
\\begin{cases} x^{2} + y^{2} = x_{0}^{2} + y_{0}^{2} \\\\ z = z_{0}. \\end{cases}
$$

又因为


$$
\\frac{x_{0} - 1}{−1} = \\frac{y_{0}}{1} = \\frac{z_{0}}{1},
$$

所以$Σ$的方程为


$$
x^{2} + y^{2} = (1 - z)2 + z^{2} = 2z^{2} - 2z + 1.
$$


(II) 将方程改写为


$$
x^{2} + y^{2} - 2 (z - \\frac{1}{2})^{2} = \\frac{1}{2}.
$$

设形心坐标为$(\\bar{x}, \\bar{y}, \\bar{z})$，由于几何体关于坐标轴对称，可知


$$
\\bar{x} = \\bar{y} = 0.
$$

计算


$$
\\overline{z} = \\frac{\\iiint_{Ω} z dv}{\\iiint_{Ω} dv} = \\frac{\\int_{0}^{2} z dz ∬_{x^{2}+y^{2}≤2z^{2}-2z+1} dx dy}{\\int_{0}^{2} dz ∬_{x^{2}+y^{2}≤2z^{2}-2z+1} dx dy}.
$$

因为


$$
∬_{x^{2}+y^{2}≤2z^{2}-2z+1} dx dy = π(2z^{2} - 2z + 1),
$$

所以


$$
\\overline{z} = \\frac{π \\int_{0}^{2} z(2z^{2} - 2z + 1) dz}{π \\int_{0}^{2}(2z^{2} - 2z + 1) dz} = \\frac{\\int_{0}^{2}(2z^{3} - 2z^{2} + z) dz}{\\int_{0}^{2}(2z^{2} - 2z + 1) dz}.
$$

计算分子：


$$
\\int_{0}^{2}(2z^{3} - 2z^{2} + z) dz =  \\lbrack \\frac{z^{4}}{2} - \\frac{2z^{3}}{3} + \\frac{z^{2}}{2} \\rbrack _{0}^{2} = 8 - \\frac{16}{3} + 2 = \\frac{14}{3}.
$$

计算分母：


$$
\\int_{0}^{2}(2z^{2} - 2z + 1) dz =  \\lbrack \\frac{2z^{3}}{3} - z^{2} + z \\rbrack _{0}^{2} = \\frac{16}{3} - 4 + 2 = \\frac{10}{3}.
$$

因此


$$
\\overline{z} = \\frac{\\frac{14}{3}}{\\frac{10}{3}} = \\frac{7}{5}.
$$

', 9, 'Mogullzr', '2026-01-29 14:16:23', 9, 'Mogullzr', '2026-01-29 14:16:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2370');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2370');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '2370');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2371, '2013年考研数学卷1第20题', '简单', '考研数学2013年数1真题', '（本题满分11分）设$A = \\left( \\begin{array}{cc}
1 & a \\\\
1 & 0 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}
0 & 1 \\\\
1 & b \\\\
\\end{array} \\right)$，当$a$、$b$为何值时，存在矩阵$C$使得$AC - CA = B$，并求所有矩阵 C 。', '[]', '当$a = −1$,$b = 0$时，存在矩阵$C$，且$C = \\left( \\begin{array}{cc}
k_{1} + k_{2} + 1 & −k_{1} \\\\
k_{1} & k_{2} \\\\
\\end{array} \\right)$，其中$k_{1}, k_{2}$为任意常数。
', '设$C = \\left( \\begin{array}{cc}
x_{1} & x_{2} \\\\
x_{3} & x_{4} \\\\
\\end{array} \\right)$，由$AC - CA = B$得

$$
\\left( \\begin{array}{cc}
1 & a \\\\
1 & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
x_{1} & x_{2} \\\\
x_{3} & x_{4} \\\\
\\end{array} \\right) - \\left( \\begin{array}{cc}
x_{1} & x_{2} \\\\
x_{3} & x_{4} \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
1 & a \\\\
1 & 0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
0 & 1 \\\\
1 & b \\\\
\\end{array} \\right)
$$


$$
\\left( \\begin{array}{cc}
x_{1} + ax_{3} & x_{2} + ax_{4} \\\\
x_{1} & x_{2} \\\\
\\end{array} \\right) - \\left( \\begin{array}{cc}
x_{1} + x_{2} & ax_{1} \\\\
x_{3} + x_{4} & ax_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
0 & 1 \\\\
1 & b \\\\
\\end{array} \\right)
$$


$$

$$

由于矩阵C存在，对方程组的增广矩阵进行初等行变换

$$
\\left( \\begin{array}{cccccc}
 &  &  &  & ⋮ &  \\\\
0 & −1 & a & 0 &  & 0 \\\\
 &  &  &  & ⋮ &  \\\\
−a & 1 & 0 & a &  & 1 \\\\
 &  &  &  & ⋮ &  \\\\
1 & 0 & −1 & −1 &  & 1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccccc}
 &  &  &  & ⋮ &  \\\\
1 & 0 & −1 & −1 &  & 1 \\\\
 &  &  &  & ⋮ &  \\\\
0 & 1 & −a & 0 &  & 0 \\\\
 &  &  &  & ⋮ &  \\\\
0 & 1 & −a & 0 &  & a + 1 \\\\
\\end{array} \\right)
$$



$$
→ \\left( \\begin{array}{cccccc}
 &  &  &  & ⋮ &  \\\\
1 & 0 & −1 & −1 &  & 1 \\\\
 &  &  &  & ⋮ &  \\\\
0 & 1 & −a & 0 &  & 0 \\\\
 &  &  &  & ⋮ &  \\\\
0 & 0 & 0 & 0 &  & a + 1 \\\\
\\end{array} \\right)
$$

方程组有解，故


$$
a + 1 = 0,  b = 0,
$$

即$a = −1$，$b = 0$。
此时存在矩阵$C$使得$AC - CA = B$。
当$a = −1$，$b = 0$时，增广矩阵化为

$$
\\left( \\begin{array}{cccccc}
 &  &  &  & ⋮ &  \\\\
1 & 0 & −1 & −1 &  & 1 \\\\
 &  &  &  & ⋮ &  \\\\
0 & 1 & 1 & 0 &  & 0 \\\\
 &  &  &  & ⋮ &  \\\\
0 & 0 & 0 & 0 &  & 0 \\\\
\\end{array} \\right) .
$$

取$x_{3}$、$x_{4}$为自由变量。
令$x_{3} = 1$，$x_{4} = 0$，代入相应齐次方程组，得$x_{2} = −1$，$x_{1} = 1$；令$x_{3} = 0$，$x_{4} = 1$，代入相应齐次方程组，得$x_{2} = 0$，$x_{1} = 1$。
故


$$
ξ_{1} = (1, −1, 1, 0)T,  ξ_{2} = (1, 0, 0, 1)T.
$$

令$x_{3} = 0$，$x_{4} = 0$，得特解


$$
η = (1, 0, 0, 0)T.
$$

方程组的通解为


$$
x = k_{1}ξ_{1} + k_{2}ξ_{2} + η = (k_{1} + k_{2} + 1,  −k_{1},  k_{1},  k_{2})T.
$$

所以


$$
C = \\left( \\begin{array}{cc}
k_{1} + k_{2} + 1 & −k_{1} \\\\
k_{1} & k_{2} \\\\
\\end{array} \\right) ,  k_{1}, k_{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:16:23', 9, 'Mogullzr', '2026-01-29 14:16:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2371');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2371');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2371');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2372, '2013年考研数学卷1第21题', '简单', '考研数学2013年数1真题', '（本题满分 11 分）设二次型

$$
f(x_{1}, x_{2}, x_{3}) = (a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3})2 + (b_{1}x_{1} + b_{2}x_{2} + b_{3}x_{3})2,
$$
记

$$
α = \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right) ,  β = \\left( \\begin{array}{c}
b_{1} \\\\
b_{2} \\\\
b_{3} \\\\
\\end{array} \\right) .
$$
(I)证明二次型$f$对应的矩阵为$2αα^{T} + ββ^{T}$；(II)若$α, β$正交且为单位向量，证明$f$在正交变换下的标准形为$2y_{1}^{2} + y_{2}^{2}$。', '[]', '见解析
', '证明：
（I）$f(x_{1}, x_{2}, x_{3}) = 2(a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3})2 + (b_{1}x_{1} + b_{2}x_{2} + b_{3}x_{3})2$

$$
\\begin{array}{ccccccc}
 & \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} &  &  &  &  &  \\\\
 &  & a_{1} & x_{1} & b_{1} & x_{1} & x_{1} \\\\
 & \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} &  &  &  &  &  \\\\
 &  & a_{2} & x_{2} & b_{2} & x_{2} & x_{2} \\\\
 &  & a_{3} & x_{3} & b_{3} & x_{3} & x_{3} \\\\
\\end{array}
$$

所以二次型$f$对应的矩阵为$2αα^{T} + ββ^{T}$。
（II）由于$A = 2αα^{T} + ββ^{T}$，且$α$与$β$正交，故$α^{T}β = 0$。又$α, β$为单位向量，故$∥α∥ = \\sqrt{α^{T}α} = 1$，因此$α^{T}α = 1$，同理$β^{T}β = 1$。
计算得：

$$
Aα = (2αα^{T} + ββ^{T})α = 2αα^{T}α + ββ^{T}α = 2α,
$$

由于$α \\neq 0$，故$A$有特征值$λ_{1} = 2$。
又：

$$
Aβ = (2αα^{T} + ββ^{T})β = β,
$$

由于$β \\neq 0$，故$A$有特征值$λ_{2} = 1$。
矩阵的秩满足：

$$
\\begin{array}{cc}
r(A) & = r(2αα^{T} + ββ^{T}) \\\\
 & ≤ r(2αα^{T}) + r(ββ^{T}) \\\\
 & = r(αα^{T}) + r(ββ^{T}) \\\\
 & = 1 + 1 \\\\
\\end{array}
$$

所以$∣A∣ = 0$，故$λ_{3} = 0$。
因此，$f$在正交变换下的标准形为$2y_{1}^{2} + y_{2}^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:16:24', 9, 'Mogullzr', '2026-01-29 14:16:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2372');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2372');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2373, '2013年考研数学卷1第22题', '简单', '考研数学2013年数1真题', '（本题满分 11 分）设随机变量$X$的概率密度为
$$
f(x) = \\begin{cases} \\frac{1}{9}x^{2} & 0 < x < 3 \\\\ 0 & 其他 \\end{cases}
$$
令随机变量
$$
Y = \\begin{cases} 2 & X ≤ 1 \\\\ X & 1 < X < 2 \\\\ 1 & X ≥ 2 \\end{cases}
$$
（I）求$Y$的分布函数；（II）求概率$P\\{X ≤ Y\\}$。', '[]', '
（I）$Y$的分布函数为：


$$
F(y) = \\begin{cases} 0 & y < 1 \\\\ \\frac{1}{27}(y^{3} + 18) & 1 ≤ y < 2 \\\\ 1 & y ≥ 2 \\end{cases}
$$

（II） 见解析
', '
（I）设$y$的分布函数为$F(y)$，则


$$
\\begin{array}{cc}
F(y) & = P\\{Y ≤ y\\} \\\\
 & = P\\{Y ≤ y, X ≤ 1\\} + P\\{Y ≤ y, 1 < X < 2\\} + P\\{Y ≤ y, X ≥ 2\\} \\\\
 & = P\\{2 ≤ y, X ≤ 1\\} + P\\{X ≤ y, 1 < X < 2\\} + P\\{1 ≤ y, X ≥ 2\\} \\\\
\\end{array}
$$

（II）当$y < 1$时，$F(y) = 0$。
当$1 ≤ y < 2$时，


$$
F(y) = P\\{X ≤ y, 1 < X < 2\\} + P\\{X ≥ 2\\} = P\\{1 < X ≤ y\\} + P\\{X ≥ 2\\}
$$



$$
= \\int_{1}^{y} \\frac{1}{9}x^{2}dx + \\int_{2}^{3} \\frac{1}{9}x^{2}dx = \\frac{1}{27}(y^{3} - 1) + \\frac{1}{27}(3^{3} - 2^{3}) = \\frac{1}{27}(y^{3} + 18)
$$

当$y ≥ 2$时，


$$
F(y) = P\\{X ≤ 1\\} + P\\{1 < X < 2\\} + P\\{X ≥ 2\\} = 1
$$

', 9, 'Mogullzr', '2026-01-29 14:16:24', 9, 'Mogullzr', '2026-01-29 14:16:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2373');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2373');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2374, '2013年考研数学卷1第23题', '简单', '考研数学2013年数1真题', '（本题满分 11 分）设总体$X$的概率密度为
$$
f(x; θ) = \\begin{cases} \\frac{θ^{2}}{x^{3}}e^{−\\frac{θ}{x}} & x > 0 \\\\ 0 & x ≤ 0 \\end{cases}
$$
其中$θ > 0$为未知参数，$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$X$的简单随机样本。(I) 求$θ$的矩估计量；(II) 求$θ$的最大似然估计量。', '[]', '
(I)$\\hat{θ} = \\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$
(II)$\\hat{θ} = \\frac{2n}{\\sum_{i=1}^{n} \\frac{1}{X_{i}}}$
', '
(I)$E(X) = \\int_{−∞}^{+∞} xf(x; θ) dx = \\int_{0}^{+∞} x ⋅ \\frac{θ^{2}}{x^{3}} ⋅ e^{−\\frac{θ}{x}} dx = \\int_{0}^{+∞} \\frac{θ^{2}}{x^{2}} ⋅ e^{−\\frac{θ}{x}} dx$
令$t = \\frac{θ}{x}$，则$x = \\frac{θ}{t}$，$dx = −\\frac{θ}{t^{2}} dt$。当$x → 0^{+}$时，$t → +∞$；当$x → +∞$时，$t → 0$。

$$
E(X) = \\int_{+∞}^{0} \\frac{θ^{2}}{(\\frac{θ}{t})^{2}} ⋅ e^{−t} ⋅ (−\\frac{θ}{t^{2}})  dt = \\int_{0}^{+∞} θe^{−t} dt = θ
$$

令$E(X) = \\overline{X}$，即$θ = \\overline{X}$，故$θ$的矩估计量为$\\hat{θ} = \\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$。
(II) 似然函数为

$$
L(θ) = \\prod_{i=1}^{n} f(x_{i}; θ) = \\begin{cases} \\prod_{i=1}^{n} \\frac{θ^{2}}{x_{i}^{3}}e^{−\\frac{θ}{x_{i}}} & x_{i} > 0 (i = 1, 2, ⋯  , n) \\\\ 0 & 其他 \\end{cases}
$$

当$x_{i} > 0 (i = 1, 2, ⋯  , n)$时，取对数得

$$
\\ln L(θ) = \\sum_{i=1}^{n}  \\lbrack 2 \\ln θ - 3 \\ln x_{i} - \\frac{θ}{x_{i}} \\rbrack
$$

对$θ$求导并令其为 0：

$$
\\frac{d \\ln L(θ)}{dθ} = \\frac{2n}{θ} - \\sum_{i=1}^{n} \\frac{1}{x_{i}} = 0
$$

解得$θ = \\frac{2n}{\\sum_{i=1}^{n} \\frac{1}{x_{i}}}$，故$θ$的最大似然估计量为$\\hat{θ} = \\frac{2n}{\\sum_{i=1}^{n} \\frac{1}{X_{i}}}$。
', 9, 'Mogullzr', '2026-01-29 14:16:24', 9, 'Mogullzr', '2026-01-29 14:16:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2374');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2374');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '2374');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2375, '2013年考研数学卷2第1题', '简单', '考研数学2013年数2真题', '设$\\cos x - 1 = x \\sin α(x)$，其中$∣α(x)∣ < \\frac{π}{2}$，当$x → 0$时，$α(x)$是（）', '[''比$x$高阶的无穷小'', ''比$x$低阶的无穷小'', ''与$x$同阶但不等价的无穷小'', ''与$x$等价的无穷小'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:16:27', 9, 'Mogullzr', '2026-01-29 14:16:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2375');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2375');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2375');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2376, '2013年考研数学卷2第2题', '简单', '考研数学2013年数2真题', '设函数$y = f(x)$由方程$\\cos(xy) + \\ln y - x = 1$确定，则

$$
\\lim_{n→∞} n  \\lbrack f (\\frac{2}{n}) - 1 \\rbrack  =
$$
', '[''$2$'', ''$1$'', ''$−1$'', ''$−2$'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:16:27', 9, 'Mogullzr', '2026-01-29 14:16:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2376');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2376');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2376');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2377, '2013年考研数学卷2第3题', '简单', '考研数学2013年数2真题', '设函数$f(x) = \\begin{cases} \\sin x & 0 ≤ x < π \\\\ 2 & π ≤ x ≤ 2π \\end{cases}$，记$F(x) = \\int_{0}^{x} f(t) dt$，则（ ）', '[''$x = π$是函数$F(x)$的跳跃间断点'', ''$x = π$是函数$F(x)$的可去间断点'', ''$F(x)$在$x = π$处连续但不可导'', ''$F(x)$在$x = π$处可导'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:16:27', 9, 'Mogullzr', '2026-01-29 14:16:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2377');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2377');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2377');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2378, '2013年考研数学卷2第4题', '简单', '考研数学2013年数2真题', '设$f(x) = \\begin{cases} \\frac{1}{(x-1)α+1} & 1 < x < e \\\\ \\frac{1}{x \\ln^{α+1} x} & x ≥ e \\end{cases}$，则$\\int_{1}^{+∞} f(x) dx$收敛的充要条件是（　　）', '[''$α < −2$'', ''$α > 2$'', ''$−2 < α < 0$'', ''$0 < α < 2$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:16:27', 9, 'Mogullzr', '2026-01-29 14:16:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2378');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2378');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2378');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2379, '2013年考研数学卷2第5题', '简单', '考研数学2013年数2真题', '设$z = \\frac{y}{x}f(xy)$，其中$f$可导，则

$$
\\frac{x}{y}\\frac{∂z}{∂x} + \\frac{∂z}{∂y} =
$$
', '[''$2yf^{′}(xy)$'', ''$−2yf^{′}(xy)$'', ''$\\\\frac{2}{x}f(xy)$'', ''$−\\\\frac{2}{x}f(xy)$'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:16:27', 9, 'Mogullzr', '2026-01-29 14:16:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2379');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2379');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2380, '2013年考研数学卷2第6题', '简单', '考研数学2013年数2真题', '设$D_{k}$是区域$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 1\\}$在第$k$象限的部分，记$I_{k} = \\iint_{D_{k}}(y - x) dx dy (k = 1, 2, 3, 4)$，则（）', '[''$I_{1} > 0$'', ''$I_{2} > 0$'', ''$I_{3} > 0$'', ''$I_{4} > 0$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:16:27', 9, 'Mogullzr', '2026-01-29 14:16:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2380');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2380');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1084', '2380');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2381, '2013年考研数学卷2第7题', '简单', '考研数学2013年数2真题', '设矩阵$A, B, C$均为$n$阶矩阵，若$AB = C$，且$B$可逆，则（　　）', '[''矩阵$C$的行向量组与矩阵$A$的行向量组等价'', ''矩阵$C$的列向量组与矩阵$A$的列向量组等价'', ''矩阵$C$的行向量组与矩阵$B$的行向量组等价'', ''矩阵$C$的行向量组与矩阵$B$的列向量组等价'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:16:28', 9, 'Mogullzr', '2026-01-29 14:16:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2381');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2381');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2381');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2382, '2013年考研数学卷2第8题', '简单', '考研数学2013年数2真题', '矩阵$\\left( \\begin{array}{ccc}
1 & a & 1 \\\\
a & b & a \\\\
1 & a & 1 \\\\
\\end{array} \\right)$与$\\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & b & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$相似的充分必要条件是（ ）', '[''$a = 0, b = 2$'', ''$a = 0, b$为任意常数'', ''$a = 2, b = 0$'', ''$a = 2, b$为任意常数'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:16:28', 9, 'Mogullzr', '2026-01-29 14:16:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2382');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2382');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2383, '2013年考研数学卷2第9题', '简单', '考研数学2013年数2真题', '（填空题）

$$
\\lim_{x→0} (2 - \\frac{\\ln(1 + x)}{x})^{\\frac{1}{x}} = ______
$$
', '[]', '$e^{\\frac{1}{2}}$
', '
原式$= e^{\\lim_{x→0} \\frac{\\ln(1+\\frac{\\ln(1+x)}{x})}{x}}$。
考虑极限部分：


$$
\\lim_{x→0} \\frac{\\ln (1 + \\frac{\\ln(1+x)}{x})}{x} = \\lim_{x→0} \\frac{1 - \\frac{\\ln(1+x)}{x}}{x} = \\lim_{x→0} \\frac{1 - (1 - \\frac{1}{2}x + o(x))}{x} = \\frac{1}{2}
$$

因此答案为$e^{\\frac{1}{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:16:28', 9, 'Mogullzr', '2026-01-29 14:16:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2383');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2383');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2383');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2384, '2013年考研数学卷2第10题', '简单', '考研数学2013年数2真题', '（填空题）设函数$f(x) = \\int_{−1}^{x} \\sqrt{1 - e^{t}} dt$，则$y = f(x)$的反函数$x = f^{−1}(y)$在$y = 0$处的导数$\\frac{dx}{dy}​_{y=0} =$', '[]', '$\\frac{1}{\\sqrt{1-e^{−1}}}$
', '已知$\\frac{dy}{dx} = \\sqrt{1 - e^{x}}$，因此

$$
\\frac{dx}{dy} = \\frac{1}{\\sqrt{1 - e^{x}}}
$$

当$y = 0$时，对应的$x = −1$，代入得

$$
\\frac{dx}{dy}​_{y=0} = \\frac{1}{\\sqrt{1 - e^{x}}}​_{x=−1} = \\frac{1}{\\sqrt{1 - e^{−1}}}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:28', 9, 'Mogullzr', '2026-01-29 14:16:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2384');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2384');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2384');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2385, '2013年考研数学卷2第11题', '简单', '考研数学2013年数2真题', '（填空题）设封闭曲线的极坐标方程为$r = \\cos 3θ (−\\frac{π}{6} ≤ θ ≤ \\frac{π}{6})$，$L$所围成的平面图形的面积为', '[]', '$S = \\frac{π}{12}$
', '
所围图形的面积为：

$$
S = \\frac{1}{2} \\int_{−\\frac{π}{6}}^{\\frac{π}{6}} \\cos^{2} 3θ dθ
$$

利用对称性及倍角公式，可改写为：

$$
S = \\int_{0}^{\\frac{π}{6}} \\frac{1 + \\cos 6θ}{2} dθ
$$

计算得：

$$
S = \\frac{π}{12}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:28', 9, 'Mogullzr', '2026-01-29 14:16:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2385');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2385');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '2385');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2386, '2013年考研数学卷2第12题', '简单', '考研数学2013年数2真题', '（填空题）曲线
$$
\\begin{cases} x = arctan t \\\\ y = \\ln \\sqrt{1 + t^{2}} \\end{cases}
$$
在$t = 1$处的法线方程为', '[]', '$y + x - \\frac{π}{4} - \\ln \\sqrt{2} = 0$
', '已知$\\frac{dy}{dx} = \\frac{\\frac{t}{1+t^{2}}}{\\frac{1}{1+t^{2}}} = t$，因此$\\frac{dy}{dx}​_{t=1} = 1$。
当$t = 1$时，$x = \\frac{π}{4}$，$y = \\ln \\sqrt{2}$。
法线斜率为$−1$，故法线方程为：

$$
y - \\ln \\sqrt{2} = − (x - \\frac{π}{4})
$$

整理得：

$$
y + x - \\frac{π}{4} - \\ln \\sqrt{2} = 0
$$

', 9, 'Mogullzr', '2026-01-29 14:16:28', 9, 'Mogullzr', '2026-01-29 14:16:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2386');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2386');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '2386');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2387, '2013年考研数学卷2第13题', '简单', '考研数学2013年数2真题', '（填空题）已知$y_{1} = e^{3x} - xe^{2x}$，$y_{2} = e^{x} - xe^{2x}$，$y_{3} = −xe^{2x}$是某二阶常系数非齐次线性微分方程的 3 个解，该方程满足条件$y∣_{x=0} = 0$，$y^{′}∣_{x=0} = 1$的解为$y =   ​$。', '[]', '$y = e^{3x} - e^{x} - xe^{2x}$
', '由题意可知：$e^{3x}$与$e^{x}$是对应齐次方程的解，而$−xe^{2x}$是非齐次方程的一个特解。
因此，非齐次方程的通解为：

$$
y = C_{1}e^{3x} + C_{2}e^{x} - xe^{2x}
$$

将初始条件代入通解，解得：

$$
C_{1} = 1,  C_{2} = −1
$$

于是满足条件的特解为：

$$
y = e^{3x} - e^{x} - xe^{2x}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2387');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2387');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '2387');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2388, '2013年考研数学卷2第14题', '简单', '考研数学2013年数2真题', '（填空题）设$A = (a_{ij})$是三阶非零矩阵，$∣A∣$为$A$的行列式，$A_{ij}$为$a_{ij}$的代数余子式，若$a_{ij} + A_{ij} = 0 (i, j = 1, 2, 3)$，则$∣A∣ =$', '[]', '-1
', '由$a_{ij} + A_{ij} = 0$可知，$A^{⊤} = −A^{∗}$。

$$
\\begin{array}{cc}
∣A∣ & = a_{i1}A_{i1} + a_{i2}A_{i2} + a_{i3}A_{i3} \\\\
 & = a_{1j}A_{1j} + a_{2j}A_{2j} + a_{3j}A_{3j} \\\\
 & = − \\sum_{j=1}^{3} a_{ij}^{2} = − \\sum_{i,j=1}^{3} a_{ij}^{2} < 0 \\\\
\\end{array}
$$

从而有

$$
∣A∣ = ∣A^{⊤}∣ = ∣ - A^{∗}∣ = (−1)3∣A^{∗}∣ = −∣A∣^{2},
$$

故$∣A∣ = −1$。
', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2388');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2388');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2389, '2013年考研数学卷2第15题', '简单', '考研数学2013年数2真题', '（本题满分 10 分）当$x → 0$时，$1 - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x$与$ax^{n}$为等价无穷小，求$n$与$a$的值。', '[]', '$n = 2$,$a = 7$
', '因为当$x → 0$时，$1 - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x$与$ax^{n}$为等价无穷小，所以

$$
\\lim_{x→0} \\frac{1 - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x}{ax^{n}} = 1
$$

又因为：

$$
\\begin{array}{cc}
1 - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x & = 1 - \\cos x \\\\
 & + \\cos x - \\cos x ⋅ \\cos 2x \\\\
 & + \\cos x ⋅ \\cos 2x - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x \\\\
\\end{array}
$$

即

$$
\\begin{array}{cc}
1 - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x & = 1 - \\cos x + \\cos x(1 - \\cos 2x) + \\cos x ⋅ \\cos 2x(1 - \\cos 3x) \\\\
\\end{array}
$$

因此，

$$
\\begin{array}{cc}
 & \\lim_{x→0} \\frac{1 - \\cos x ⋅ \\cos 2x ⋅ \\cos 3x}{ax^{n}} \\\\
 & = \\lim_{x→0} \\frac{1 - \\cos x + \\cos x(1 - \\cos 2x) + \\cos x ⋅ \\cos 2x(1 - \\cos 3x)}{ax^{n}} \\\\
 & = \\lim_{x→0} (\\frac{1 - \\cos x}{ax^{n}} + \\frac{\\cos x(1 - \\cos 2x)}{ax^{n}} + \\frac{\\cos x ⋅ \\cos 2x(1 - \\cos 3x)}{ax^{n}}) \\\\
\\end{array}
$$

利用等价无穷小替换：

$$
1 - \\cos x ∼ \\frac{1}{2}x^{2},  1 - \\cos 2x ∼ \\frac{1}{2}(2x)2,  1 - \\cos 3x ∼ \\frac{1}{2}(3x)2
$$

可得：

$$
\\lim_{x→0} (\\frac{\\frac{1}{2}x^{2} + o(x^{2})}{ax^{n}} + \\frac{\\frac{1}{2}(2x)2 + o(x^{2})}{ax^{n}} + \\frac{\\frac{1}{2}(3x)2 + o(x^{2})}{ax^{n}})
$$

为使极限存在且为 1，必有$n = 2$，且

$$
\\frac{1}{2a} + \\frac{4}{2a} + \\frac{9}{2a} = 1 ⇒ \\frac{14}{2a} = 1 ⇒ a = 7
$$

', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2389');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2390, '2013年考研数学卷2第16题', '简单', '考研数学2013年数2真题', '（本题满分 10 分）设$D$是由曲线$y = x^{\\frac{1}{3}}$、直线$x = a$（$a > 0$）及$x$轴所围成的平面图形，$V_{x}$、$V_{y}$分别是$D$绕$x$轴、$y$轴旋转一周所得旋转体的体积。若$V_{y} = 10V_{x}$，求$a$的值。', '[]', '$a = 7\\sqrt{7}$
', '由题意可得：

$$
\\begin{array}{c}
V_{x} = π \\int_{0}^{a} (x^{\\frac{1}{3}})^{2} dx = \\frac{3}{5}πa^{\\frac{5}{3}} \\\\
V_{y} = 2π \\int_{0}^{a} x ⋅ x^{\\frac{1}{3}}dx = \\frac{6π}{7}a^{\\frac{7}{3}} \\\\
\\end{array}
$$

因为$V_{y} = 10V_{x}$，所以：

$$
\\frac{6π}{7}a^{\\frac{7}{3}} = 10 × \\frac{3}{5}πa^{\\frac{5}{3}}
$$

解得：

$$
a = 7\\sqrt{7}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2390');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2391, '2013年考研数学卷2第17题', '简单', '考研数学2013年数2真题', '（本题满分$10$分）设平面内区域$D$由直线$x = 3y$，$y = 3x$及$x + y = 8$围成，计算$\\iint_{D} x^{2} dx dy$。', '[]', '$\\frac{416}{3}$
', '


$$
\\begin{array}{cc}
\\iint_{D} x^{2} dx dy & = \\iint_{D_{1}} x^{2} dx dy + \\iint_{D_{2}} x^{2} dx dy \\\\
 & = \\int_{0}^{2} x^{2} dx \\int_{\\frac{x}{3}}^{3x} dy  +  \\int_{2}^{6} x^{2} dx \\int_{\\frac{x}{3}}^{8-x} dy \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2391');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2392, '2013年考研数学卷2第18题', '简单', '考研数学2013年数2真题', '（本题满分 10 分）设奇函数$f(x)$在$\\lbrack −1, 1 \\rbrack$上具有二阶导数，且$f(1) = 1$。证明：(1) 存在$ξ ∈ (0, 1)$，使得$f^{′}(ξ) = 1$；(2) 存在$η ∈ (0, 1)$，使得$f^{′′}(η) + f^{′}(η) = 1$。', '[]', '见解析
', '令$F(x) = f(x) - x$，则$F(0) = f(0) = 0$，$F(1) = f(1) - 1 = 0$。由罗尔定理知，存在$ξ ∈ (0, 1)$使得$F^{′}(ξ) = 0$，即$f^{′}(ξ) = 1$。
令$G(x) = e^{x}(f^{′}(x) - 1)$，则$G(ξ) = 0$。又由于$f(x)$为奇函数，故$f^{′}(x)$为偶函数，可知$G(−ξ) = 0$。
由罗尔定理知，存在$η ∈ (−ξ, ξ) ⊂ (0, 1)$使得$G^{′}(η) = 0$，即：

$$
e^{η} \\lbrack f^{′}(η) - 1 \\rbrack  + e^{η}f^{′′}(η) = 0
$$

整理得：

$$
f^{′′}(η) + f^{′}(η) = 1
$$

', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2392');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2392');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2392');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2393, '2013年考研数学卷2第19题', '简单', '考研数学2013年数2真题', '（本题满分 10 分）求曲线$x^{3} - xy + y^{3} = 1 (x ≥ 0,  y ≥ 0)$上的点到坐标原点的最长距离与最短距离。', '[]', '最长距离为$\\sqrt{2}$，最短距离为 1。
', '', 9, 'Mogullzr', '2026-01-29 14:16:29', 9, 'Mogullzr', '2026-01-29 14:16:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2393');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2393');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2393');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2394, '2013年考研数学卷2第20题', '简单', '考研数学2013年数2真题', '（本题满分 11 分）设函数$f(x) = \\ln x + \\frac{1}{x}$。(1) 求$f(x)$的最小值；(2) 设数列$\\{x_{n}\\}$满足$\\ln x_{n} + \\frac{1}{x_{n}} < 1$，证明$\\lim_{n→∞} x_{n}$存在，并求此极限。', '[]', '
(1)$f(x)$的最小值为 1。
(2) 见解析。
', '
(1) 首先，


$$
f^{′}(x) = \\frac{1}{x} - \\frac{1}{x^{2}} = \\frac{x - 1}{x^{2}}.
$$

当$x ∈ (0, 1)$时，$f^{′}(x) < 0$；
当$x ∈ (1, +∞)$时，$f^{′}(x) > 0$。
因此，$f(x)$在$(0, 1 \\rbrack$上单调递减，在$\\lbrack 1, +∞)$上单调递增，最小值为


$$
f(1) = 1.
$$

(2) 由$\\ln x_{n} + \\frac{1}{x_{n}} < 1$，结合 (1) 可知$x_{n} > 0$，且数列$\\{x_{n}\\}$单调递增有上界（证明过程略），故极限存在。
设$\\lim_{n→∞} x_{n} = a$，则


$$
\\ln a + \\frac{1}{a} ≤ 1.
$$

又由 (1) 知


$$
\\ln a + \\frac{1}{a} ≥ 1,
$$

故$a = 1$，即


$$
\\lim_{n→∞} x_{n} = 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:16:30', 9, 'Mogullzr', '2026-01-29 14:16:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2394');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2394');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '2394');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2395, '2013年考研数学卷2第21题', '简单', '考研数学2013年数2真题', '（本题满分 11 分）设曲线$L$的方程为$y = \\frac{1}{4}x^{2} - \\frac{1}{2} \\ln x$（$1 ≤ x ≤ e$），（1）求$L$的弧长；（2）设$D$是由曲线$L$，直线$x = 1$，$x = e$及$x$轴所围平面图形，求$D$的形心的横坐标。', '[]', '
（1）弧长为$\\frac{e^{2}+1}{4}$。
（2）形心的横坐标为$\\frac{3(e^{4}-2e^{2}-3)}{4(e^{3}-7)}$。
', '
（1）由弧长的计算公式得 L 的弧长为

$$
\\begin{array}{cc}
 & \\int_{1}^{e} \\sqrt{1 +  \\lbrack (\\frac{1}{4}x^{2} - \\frac{1}{2} \\ln x)^{′} \\rbrack ^{2}}dx = \\int_{1}^{e} \\sqrt{1 + (\\frac{x}{2} - \\frac{1}{2x})^{2}}dx \\\\
 & = \\int_{1}^{e} \\sqrt{1 + \\frac{x^{2}}{4} + \\frac{1}{4x^{2}} - \\frac{1}{2}}dx \\\\
 & = \\int_{1}^{e} \\sqrt{(\\frac{x}{2} + \\frac{1}{2x})^{2}}dx \\\\
\\end{array}
$$

（2）由形心的计算公式可得，D 的形心的横坐标为

$$
\\frac{\\int_{1}^{e} x (\\frac{1}{4}x^{2} - \\frac{1}{2} \\ln x) dx}{\\int_{1}^{e} (\\frac{1}{4}x^{2} - \\frac{1}{2} \\ln x) dx} = \\frac{3(e^{4} - 2e^{2} - 3)}{4(e^{3} - 7)}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:30', 9, 'Mogullzr', '2026-01-29 14:16:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2395');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2395');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2395');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2396, '2013年考研数学卷2第22题', '简单', '考研数学2013年数2真题', '（本题满分 11 分）设$A = \\left( \\begin{array}{cc}
1 & a \\\\
1 & 0 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}
0 & 1 \\\\
1 & b \\\\
\\end{array} \\right)$，当$a, b$为何值时，存在矩阵$C$使得$AC - CA = B$，并求所有矩阵$C$。', '[]', '当$a = −1$，$b = 0$时，存在矩阵$C$，且$C = \\left( \\begin{array}{cc}
k_{1} + k_{2} + 1 & −k_{1} \\\\
k_{1} & k_{2} \\\\
\\end{array} \\right)$，其中$k_{1}, k_{2}$为任意常数。
', '由题意可知矩阵$C$为 2 阶矩阵，故可设


$$
C = \\left( \\begin{array}{cc}
x_{1} & x_{2} \\\\
x_{3} & x_{4} \\\\
\\end{array} \\right) ,
$$

则由$AC - CA = B$可得线性方程组：


$$
\\begin{cases} −x_{2} + ax_{3} = 0 \\\\ −ax_{1} + x_{2} + ax_{4} = 1 \\\\ x_{1} - x_{3} - x_{4} = 1 \\\\ x_{2} - ax_{3} = b. \\end{cases}(1)
$$

对增广矩阵进行初等行变换：
$\\left( \\begin{array}{ccccc}
0 & −1 & a & 0 & 0 \\\\
−a & 1 & 0 & a & 1 \\\\
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & −a & 0 & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 0 & −1 & −1 & 1 \\\\
−a & 1 & 0 & a & 1 \\\\
0 & −1 & a & 0 & 0 \\\\
0 & 1 & −a & 0 & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & −a & 0 & 1 + a \\\\
0 & −1 & a & 0 & 0 \\\\
0 & 1 & −a & 0 & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & −a & 0 & 1 + a \\\\
0 & 0 & 0 & 0 & 1 + a \\\\
0 & 0 & 0 & 0 & b - 1 - a \\\\
\\end{array} \\right)$
由于方程组 (1) 有解，故


$$
1 + a = 0,  b - 1 - a = 0,
$$

即$a = −1$，$b = 0$。此时增广矩阵化为


$$
\\left( \\begin{array}{ccccc}
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & 1 & 0 & 0 \\\\
0 & 0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 & 0 \\\\
\\end{array} \\right) .
$$

解得


$$
\\begin{cases} x_{1} = k_{1} + k_{2} + 1 \\\\ x_{2} = −k_{1} \\\\ x_{3} = k_{1} \\\\ x_{4} = k_{2} \\end{cases}
$$

其中$k_{1}$、$k_{2}$为任意常数。
因此


$$
C = \\left( \\begin{array}{cc}
k_{1} + k_{2} + 1 & −k_{1} \\\\
k_{1} & k_{2} \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:16:30', 9, 'Mogullzr', '2026-01-29 14:16:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2396');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2396');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2396');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2397, '2013年考研数学卷2第23题', '简单', '考研数学2013年数2真题', '（本题满分 11 分）设$f(x_{1}, x_{2}, x_{3}) = 2(a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3})2 + (b_{1}x_{1} + b_{2}x_{2} + b_{3}x_{3})2$，其中

$$
α = \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right) ,  β = \\left( \\begin{array}{c}
b_{1} \\\\
b_{2} \\\\
b_{3} \\\\
\\end{array} \\right) .
$$
(1) 证明二次型$f$对应的矩阵为$2α^{⊤}α + β^{⊤}β$；(2) 若$α$、$β$正交且均为单位向量，证明二次型$f$在正交变换下的标准形为$2y_{1}^{2} + y_{2}^{2}$。', '[]', '见解析
', '
(1) 由题知

$$
\\begin{array}{ccccccc}
f(x_{1}, x_{2}, x_{3}) & \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} &  &  &  &  &  \\\\
 &  & a_{1} & x_{1} & b_{1} & x_{1} & x_{1} \\\\
 & \\begin{array}{c}
b_{1} \\\\
b_{2} \\\\
b_{3} \\\\
\\end{array} &  &  &  &  &  \\\\
 &  & a_{2} & x_{2} & b_{2} & x_{2} & x_{2} \\\\
 &  & a_{3} & x_{3} & b_{3} & x_{3} & x_{3} \\\\
\\end{array}
$$

又$2αα^{T} + ββ^{T}$是对称矩阵，因此二次型$f$对应的矩阵是$2αα^{T} + ββ^{T}$。
(2) 作变换


$$
y_{1} = (a_{1}, a_{2}, a_{3}) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = α^{T}X,  y_{2} = (b_{1}, b_{2}, b_{3}) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = β^{T}X.
$$

因为$α, β$为相互正交的单位向量，故该变换为正交变换且$f$对应的标准形为


$$
f = 2y_{1}^{2} + y_{2}^{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:16:30', 9, 'Mogullzr', '2026-01-29 14:16:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2397');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2397');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2398, '2013年考研数学卷3第1题', '简单', '考研数学2013年数3真题', '当$x → 0$时，用$o(x)$表示比$x$高阶的无穷小，则下列式子中错误的是', '[''$x ∘ o (x^{2}) = o (x^{3})$'', ''$o(x) ∘ (x^{2}) = o (x^{3})$'', ''$o (x^{2}) + o (x^{2}) = o (x^{2})$'', ''$o(x) + o (x^{2}) = o (x^{2})$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2398');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2398');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2398');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2399, '2013年考研数学卷3第2题', '简单', '考研数学2013年数3真题', '设$f(x) = \\frac{∣x∣^{x}-1}{x(x+1) \\ln ∣x∣}$，则$f(x)$的间断点个数为', '[''$0$'', ''$1$'', ''$2$'', ''$3$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2399');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2399');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '2399');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2400, '2013年考研数学卷3第3题', '简单', '考研数学2013年数3真题', '设$D_{k}$是区域$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 1\\}$的第$k$象限的部分，记$I_{k} = \\iint_{D_{k}}(y - x) dxdy$，则', '[''$I_{1} > 0$'', ''$I_{2} > 0$'', ''$I_{3} > 0$'', ''$I_{4} > 0$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2400');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2400');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2400');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2401, '2013年考研数学卷3第4题', '简单', '考研数学2013年数3真题', '设$\\{a_{n}\\}$为正项数列，则下列选项正确的是', '[''若$a_{n} > a_{n+1}$，则$\\\\sum_{n=1}^{∞}(−1)n−1a_{n}$收敛；'', ''若$\\\\sum_{n=1}^{∞}(−1)n−1a_{n}$收敛，则$a_{n} > a_{n+1}$；'', ''若$\\\\sum_{n=1}^{∞} a_{n}$收敛，则存在常数$p > 1$，使$\\\\lim_{n→∞} n^{p}a_{n}$存在；'', ''若存在常数$p > 1$，使$\\\\lim_{n→∞} n^{p}a_{n}$存在，则$\\\\sum_{n=1}^{∞} a_{n}$收敛。'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2401');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2401');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '2401');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2402, '2013年考研数学卷3第5题', '简单', '考研数学2013年数3真题', '设$A$,$B$,$C$均为$n$阶矩阵，若$AB = C$，且$B$可逆，则', '[''矩阵C的行向量组与矩阵A的行向量组等价；'', ''矩阵C的列向量组与矩阵A的列向量组等价；'', ''矩阵C的行向量组与矩阵B的行向量组等价；'', ''矩阵C的列向量组与矩阵B的列向量组等价。'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2402');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2402');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2402');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2403, '2013年考研数学卷3第6题', '简单', '考研数学2013年数3真题', '矩阵$A = \\left( \\begin{array}{ccc}
1 & a & 1 \\\\
a & b & a \\\\
1 & a & 1 \\\\
\\end{array} \\right)$与$B = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & b & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$相似的充分必要条件是', '[''$a = 0, b = 2$；'', ''$a = 0$，b为任意常数；'', ''$a = 2, b = 0$；'', ''$a = 2$，b为任意常数。'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2403');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2403');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2404, '2013年考研数学卷3第7题', '简单', '考研数学2013年数3真题', '设$X_{1}$、$X_{2}$、$X_{3}$是随机变量，且$X_{1} ∼ N(0, 1)$，$X_{2} ∼ N(0, 2^{2})$，$X_{3} ∼ N(5, 3^{2})$。令$P_{i} = P\\{−2 ≤ X_{i} ≤ 2\\}$，则', '[''$P_{1} > P_{2} > P_{3}$；'', ''$P_{2} > P_{1} > P_{3}$；'', ''$P_{3} > P_{2} > P_{1}$；'', ''$P_{1} > P_{3} > P_{2}$。'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:16:33', 9, 'Mogullzr', '2026-01-29 14:16:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2404');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2404');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2405, '2013年考研数学卷3第8题', '简单', '考研数学2013年数3真题', '设随机变量$X$和$Y$相互独立，且$X$和$Y$的概率分布分别为
$$
\\begin{array}{c|cccc}
x & 0 & 1 & 2 & 3 \\\\
P & \\frac{1}{2} & \\frac{1}{4} & \\frac{1}{8} & \\frac{1}{8} \\\\
\\end{array}
$$

$$
\\begin{array}{c|ccc}
Y & −1 & 0 & 1 \\\\
P & \\frac{1}{3} & \\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array}
$$
则$P(X + Y = 2) =$(', '[''$1/12$；'', ''$1/8$；'', ''$1/6$；'', ''$1/2$。'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:16:34', 9, 'Mogullzr', '2026-01-29 14:16:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2405');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2405');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2405');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2406, '2013年考研数学卷3第9题', '简单', '考研数学2013年数3真题', '（填空题）设函数$y = f(x)$和$y = x^{2} - x$在$x = 1$处相切，$\\lim_{n→∞} nf (\\frac{n}{n+2}) =$', '[]', '-2
', '由条件可知$f(1) = 0$，$f^{′}(1) = 1$。所以

$$
\\lim_{n→∞} nf (\\frac{n}{n + 2}) = \\lim_{n→∞} \\frac{f (1 + \\frac{−2}{n+2}) - f(1)}{\\frac{−2}{n+2}} ⋅ \\frac{−2n}{n + 2} = −2f^{′}(1) = −2
$$

', 9, 'Mogullzr', '2026-01-29 14:16:34', 9, 'Mogullzr', '2026-01-29 14:16:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2406');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2406');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2406');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2407, '2013年考研数学卷3第10题', '简单', '考研数学2013年数3真题', '（填空题）设函数$z = z(x, y)$是由方程$(z + y)x = xy$确定，求$\\frac{∂z}{∂x}​_{(1,2)}$', '[]', '$2 - 2 \\ln 2$
', '设函数$z = z(x, y)$是由方程$(z + y)x = xy$确定，求$\\frac{∂z}{∂x}​_{(1,2)}$
设$F(x, y, z) = (z + y)x - xy$，则

$$
F_{x}(x, y, z) = (z + y)x \\ln(z + y) - y,  F_{z}(x, y, z) = x(z + y)x−1
$$

当$x = 1$，$y = 2$时，代入方程得$(z + 2)1 = 1 × 2$，即$z = 0$，所以

$$
\\frac{∂z}{∂x}​_{(1,2)} = −\\frac{F_{x}(1, 2, 0)}{F_{z}(1, 2, 0)} = −\\frac{(0 + 2)1 \\ln(0 + 2) - 2}{1 × (0 + 2)1−1} = −\\frac{2 \\ln 2 - 2}{1} = 2 - 2 \\ln 2
$$

', 9, 'Mogullzr', '2026-01-29 14:16:34', 9, 'Mogullzr', '2026-01-29 14:16:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2407');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2407');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2407');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2408, '2013年考研数学卷3第11题', '简单', '考研数学2013年数3真题', '（填空题）
$$
\\int_{1}^{+∞} \\frac{\\ln x}{(1 + x)2} dx =
$$
', '[]', '\\(\\ln 2 \\)
', '

$$
\\int_{1}^{+∞} \\frac{\\ln x}{(1 + x)2}dx = − \\int_{1}^{+∞} \\ln x d\\frac{1}{1 + x} = − \\frac{\\ln x}{1 + x}​_{1}^{+∞} + \\int_{1}^{+∞} \\frac{1}{x(1 + x)}dx
$$

其中$− \\frac{\\ln x}{1+x}​_{1}^{+∞} = 0 - (−\\frac{\\ln 1}{2}) = 0$。
接下来计算剩余积分：

$$
\\int_{1}^{+∞} \\frac{1}{x(1 + x)}dx = \\int_{1}^{+∞} (\\frac{1}{x} - \\frac{1}{1 + x}) dx = \\ln \\frac{x}{1 + x}​_{1}^{+∞} = \\ln 1 - \\ln \\frac{1}{2} = \\ln 2
$$

综上，原积分结果为：

$$
\\ln 2
$$

', 9, 'Mogullzr', '2026-01-29 14:16:34', 9, 'Mogullzr', '2026-01-29 14:16:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2408');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2408');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2408');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2409, '2013年考研数学卷3第12题', '简单', '考研数学2013年数3真题', '（填空题）微分方程$y^{′′} - y^{′} + \\frac{1}{4}y = 0$的通解为', '[]', '

$$
y = (C_{1} + C_{2}x)e^{\\frac{1}{2}x}
$$

', '
方程的特征方程为$λ^{2} - λ + \\frac{1}{4} = 0$，即$(2λ - 1)2 = 0$。解得两个相等实根$λ_{1} = λ_{2} = \\frac{1}{2}$，因此方程的通解为

$$
y = (C_{1} + C_{2}x)e^{\\frac{1}{2}x}
$$

其中$C_{1}$和$C_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:16:34', 9, 'Mogullzr', '2026-01-29 14:16:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2409');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2409');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '2409');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2410, '2013年考研数学卷3第13题', '简单', '考研数学2013年数3真题', '（填空题）设$A = (a_{ij})$是三阶非零矩阵，$∣A∣$为其行列式，$A_{ij}$为元素$a_{ij}$的代数余子式，且满足$A_{ij} + a_{ij} = 0$$(i, j = 1, 2, 3)$，则$∣A∣ =$________', '[]', '-1
', '由条件$A_{ij} + a_{ij} = 0$（$i, j = 1, 2, 3$）可知$A^{∗T} = −A$，其中$A^{∗}$为$A$的伴随矩阵。两边取行列式得$∣A^{∗T}∣ = ∣ - A∣$，即$∣A^{∗}∣ = (−1)3∣A∣ = −∣A∣$。
又因为$∣A^{∗}∣ = ∣A∣^{n-1} = ∣A∣^{2}$（$n = 3$），所以$∣A∣^{2} = −∣A∣$，即$∣A∣(∣A∣ + 1) = 0$，解得$∣A∣ = 0$或$∣A∣ = −1$。
若$∣A∣ = 0$，则$r(A) < 3$。由$A^{∗T} = −A$可知$r(A^{∗}) = r(A)$，但$r(A) < 3$时$r(A^{∗}) ≤ 1$。而$A$为非零矩阵，若$r(A) = 1$，则$r(A^{∗}) = 1$，此时$A^{∗T} = −A$成立；若$r(A) = 0$，则$A = O$，与非零矩阵矛盾。
再考虑特征值。假设$λ$是$A$的特征值，$α$是对应的特征向量，则$Aα = λα$。两边左乘$A^{∗}$得

$$
A^{∗}Aα = λA^{∗}α
$$

即

$$
∣A∣α = λA^{∗}α
$$

由$A^{∗T} = −A$得$A^{∗} = −A^{T}$，所以

$$
∣A∣α = λ(−A^{T})α = −λ(Aα)T = −λ(λα)T = −λ^{2}α
$$

即

$$
(∣A∣ + λ^{2})α = 0
$$

因为$α \\neq 0$，所以$∣A∣ + λ^{2} = 0$。若$∣A∣ = 0$，则$λ = 0$，即$A$的特征值全为 0，那么$A^{∗} = O$，从而$A = O$，矛盾。故$∣A∣ = −1$。
', 9, 'Mogullzr', '2026-01-29 14:16:34', 9, 'Mogullzr', '2026-01-29 14:16:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2410');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2410');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1056', '2410');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2411, '2013年考研数学卷3第14题', '简单', '考研数学2013年数3真题', '（填空题）设随机变量$X$服从标准正态分布$X ∼ N(0, 1)$，则$E(Xe^{2X}) =$________。', '[]', '$2e^{2}$
', '

$$
E(Xe^{2X}) = \\int_{−∞}^{+∞} xe^{2x}\\frac{1}{\\sqrt{2π}}e^{−\\frac{x^{2}}{2}}dx = \\int_{−∞}^{+∞} \\frac{x}{\\sqrt{2π}}e^{−\\frac{x^{2}-4x}{2}}dx
$$


$$
= \\int_{−∞}^{+∞} \\frac{x}{\\sqrt{2π}}e^{−\\frac{(x-2)2}{2}+2}dx = e^{2} \\int_{−∞}^{+∞} \\frac{x}{\\sqrt{2π}}e^{−\\frac{(x-2)2}{2}}dx
$$

令$t = x - 2$，则$x = t + 2$，于是

$$
e^{2} \\int_{−∞}^{+∞} \\frac{t + 2}{\\sqrt{2π}}e^{−\\frac{t^{2}}{2}}dt = e^{2} (\\int_{−∞}^{+∞} \\frac{t}{\\sqrt{2π}}e^{−\\frac{t^{2}}{2}}dt + 2 \\int_{−∞}^{+∞} \\frac{1}{\\sqrt{2π}}e^{−\\frac{t^{2}}{2}}dt)
$$

其中第一项为$E(T) = 0$（$T ∼ N(0, 1)$），第二项为$2 × 1 = 2$，因此

$$
E(Xe^{2X}) = 2e^{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:35', 9, 'Mogullzr', '2026-01-29 14:16:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2411');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2411');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '2411');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2412, '2013年考研数学卷3第15题', '简单', '考研数学2013年数3真题', '（本题满分 10 分）当$x → 0$时，$1 - \\cos x \\cos 2x \\cos 3x$与$ax^{n}$是等价无穷小，求常数$a$和$n$。', '[]', '$a = 7, n = 2$
', '当$x → 0$时，

$$
\\cos x = 1 - \\frac{1}{2}x^{2} + o(x^{2})
$$


$$
\\cos 2x = 1 - \\frac{1}{2}(2x)2 + o(x^{2}) = 1 - 2x^{2} + o(x^{2})
$$


$$
\\cos 3x = 1 - \\frac{1}{2}(3x)2 + o(x^{2}) = 1 - \\frac{9}{2}x^{2} + o(x^{2})
$$

因此，

$$
1 - \\cos x \\cos 2x \\cos 3x
$$


$$
\\begin{array}{cc}
 & = 1 - (1 - \\frac{1}{2}x^{2} + o(x^{2})) (1 - 2x^{2} + o(x^{2})) (1 - \\frac{9}{2}x^{2} + o(x^{2})) \\\\
 & = 7x^{2} + o(x^{2}) \\\\
\\end{array}
$$

由于$1 - \\cos x \\cos 2x \\cos 3x$与$ax^{n}$是等价无穷小，所以$a = 7$，$n = 2$。
', 9, 'Mogullzr', '2026-01-29 14:16:35', 9, 'Mogullzr', '2026-01-29 14:16:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2412');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2412');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2412');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2413, '2013年考研数学卷3第16题', '简单', '考研数学2013年数3真题', '（本题满分 10 分）设$D$是由曲线$y = \\sqrt{x}$、直线$x = a$（$a > 0$）及$x$轴所围成的平面图形。$V_{x}$、$V_{y}$分别是$D$绕$x$轴和$y$轴旋转一周所形成的立体的体积。若$10V_{x} = V_{y}$，求$a$的值。', '[]', '7
', '由微元法可知

$$
V_{x} = π \\int_{0}^{a} y^{2} dx = π \\int_{0}^{a} x^{\\frac{2}{3}} dx = \\frac{3}{5}a^{\\frac{5}{3}}π
$$


$$
V_{y} = 2π \\int_{0}^{a} xf(x) dx = 2π \\int_{0}^{a} x^{\\frac{4}{3}} dx = \\frac{6}{7}a^{\\frac{7}{3}}π
$$

由条件$10V_{x} = V_{y}$，知$a = 7$。
', 9, 'Mogullzr', '2026-01-29 14:16:35', 9, 'Mogullzr', '2026-01-29 14:16:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2413');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2413');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2413');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2414, '2013年考研数学卷3第17题', '简单', '考研数学2013年数3真题', '（本题满分 10 分）设平面区域$D$是由曲线$x = 3y$、$y = 3x$、$x + y = 8$所围成，求
$$
\\iint_{D} x^{2} dx dy.
$$
', '[]', '$\\frac{416}{3}$
', '


$$
\\begin{array}{cc}
\\iint_{D} x^{2} dx dy & = \\iint_{D_{1}} x^{2} dx dy + \\iint_{D_{2}} x^{2} dx dy \\\\
 & = \\int_{0}^{2} x^{2} dx \\int_{\\frac{x}{3}}^{3x} dy + \\int_{2}^{6} x^{2} dx \\int_{\\frac{x}{3}}^{8-x} dy \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:35', 9, 'Mogullzr', '2026-01-29 14:16:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2414');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2415, '2013年考研数学卷3第18题', '简单', '考研数学2013年数3真题', '（本题满分 10 分）设生产某产品的固定成本为6000元，可变成本为20元/件，价格函数为$P = 60 - \\frac{Q}{1000}$（$P$是单价，单位：元；$Q$是销量，单位：件）。已知产销平衡，求：', '[]', '
该产品的边际利润为$y^{′} = 40 - \\frac{Q}{500}$.当$P = 50$时，边际利润为 20，经济意义：当$P = 50$时，销量每增加1件，利润增加20元。使得利润最大的定价$P$为 40.
', '
(1) 设利润为$y$，则利润函数为：


$$
y = PQ - (6000 + 20Q) = 40Q - \\frac{Q^{2}}{1000} - 6000
$$

边际利润为：


$$
y^{′} = 40 - \\frac{Q}{500}
$$

(2) 当$P = 50$时，销量为：


$$
Q = 10000
$$

此时边际利润为：


$$
y^{′} = 20
$$

经济意义：当$P = 50$时，销量每增加1件，利润增加20元。
(3) 令边际利润为零：


$$
y^{′} = 0  ⟹  Q = 20000
$$

对应的价格为：


$$
P = 60 - \\frac{20000}{1000} = 40
$$

', 9, 'Mogullzr', '2026-01-29 14:16:35', 9, 'Mogullzr', '2026-01-29 14:16:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2415');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2415');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '2415');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2416, '2013年考研数学卷3第19题', '简单', '考研数学2013年数3真题', '（本题满分 10 分）设函数$f(x)$在$\\lbrack 0, +∞)$上可导，$f(0) = 0$，且$\\lim_{x→∞} f(x) = 2$，证明：', '[]', '见解析
', '(1) 由$\\lim_{x→∞} f(x) = 2$，所以存在$X > 0$，当$x > X$时，有$\\frac{3}{2} < f(x) < \\frac{5}{2}$。又因为$f(x)$在$\\lbrack 0, +∞)$上连续，所以$f(x)$在$\\lbrack 0, X \\rbrack$上连续。
由介值定理，存在$a ∈ (0, X)$，使得$f(a) = 1$。
(2) 函数$f(x)$在$\\lbrack 0, a \\rbrack$上可导，由拉格朗日中值定理，存在$ξ ∈ (0, a)$使得

$$
f^{′}(ξ) = \\frac{f(a) - f(0)}{a} = \\frac{1}{a}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:36', 9, 'Mogullzr', '2026-01-29 14:16:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2416');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2416');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2416');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2417, '2013年考研数学卷3第20题', '简单', '考研数学2013年数3真题', '（本题满分 11 分）设矩阵

$$
A = \\left( \\begin{array}{cc}
1 & a \\\\
1 & 0 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cc}
0 & 1 \\\\
1 & b \\\\
\\end{array} \\right) ,
$$
求所有矩阵$C$，使得

$$
AC - CA = B.
$$
', '[]', '当$a = −1$且$b = 0$时，所有矩阵$C$为


$$
C = \\left( \\begin{array}{cc}
1 + C_{1} & −C_{1} \\\\
C_{1} & C_{2} \\\\
\\end{array} \\right)
$$

其中$C_{1}$、$C_{2}$为任意常数。
', '
设$C = \\left( \\begin{array}{cc}
x_{1} & x_{2} \\\\
x_{3} & x_{4} \\\\
\\end{array} \\right)$，由$AC - CA = B$可化为：

$$
\\begin{cases} −x_{2} + ax_{3} = 0 \\\\ −ax_{1} + x_{2} + ax_{4} = 1 \\\\ x_{1} - x_{3} - x_{4} = 1 \\\\ x_{2} - ax_{3} = b \\end{cases}
$$

对增广矩阵进行初等行变换：

$$
(A ∣ b) = \\left( \\begin{array}{ccccc}
0 & −1 & a & 0 & 0 \\\\
−a & 1 & 0 & a & 1 \\\\
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & −a & 0 & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & −a & 0 & 0 \\\\
0 & 0 & 0 & 0 & 1 + a \\\\
0 & 0 & 0 & 0 & b \\\\
\\end{array} \\right)
$$

当$a = −1$，$b = 0$时，线性方程组有解。此时增广矩阵进一步化简为：

$$
(A ∣ b) → \\left( \\begin{array}{ccccc}
1 & 0 & −1 & −1 & 1 \\\\
0 & 1 & 1 & 0 & 0 \\\\
0 & 0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

通解为：

$$
x = \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + C_{1} \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + C_{2} \\left( \\begin{array}{c}
0 \\\\
0 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)
$$

即矩阵$C$为：

$$
C = \\left( \\begin{array}{cc}
1 + C_{1} & −C_{1} \\\\
C_{1} & C_{2} \\\\
\\end{array} \\right)
$$

其中$C_{1}$、$C_{2}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:16:36', 9, 'Mogullzr', '2026-01-29 14:16:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2417');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2417');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2417');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2418, '2013年考研数学卷3第21题', '简单', '考研数学2013年数3真题', '（本题满分 11 分）设二次型
$$
f(x_{1}, x_{2}, x_{3}) = 2(a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3})2 + (b_{1}x_{1} + b_{2}x_{2} + b_{3}x_{3})2,
$$
记
$$
α = \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right) ,  β = \\left( \\begin{array}{c}
b_{1} \\\\
b_{2} \\\\
b_{3} \\\\
\\end{array} \\right) .
$$
', '[]', '
二次型$f$对应的矩阵为$2αα^{⊤} + ββ^{⊤}$。$f$在正交变换下的标准形为$2y_{1}^{2} + y_{2}^{2}$。
', '
(1)

$$
\\begin{array}{ccccccccc}
f (x_{1}, x_{2}, x_{3}) & = 2 (a_{1}x_{1} + a_{2}x_{2} + a_{3}x_{3})^{2} + (b_{1}x_{1} + b_{2}x_{2} + b_{3}x_{3})^{2} &  &  &  &  &  &  &  \\\\
 & \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} &  &  &  &  &  &  &  \\\\
 &  & a_{1} &  & x_{1} & b_{1} &  & x_{1} & x_{1} \\\\
 & \\begin{array}{c}
b_{1} \\\\
b_{2} \\\\
b_{3} \\\\
\\end{array} &  &  &  &  &  &  &  \\\\
 &  & a_{2} & a_{1}, a_{2}, a_{3} & x_{2} & b_{2} & b_{1}, b_{2}, b_{3} & x_{2} & x_{2} \\\\
 &  & a_{3} &  & x_{3} & b_{3} &  & x_{3} & x_{3} \\\\
\\end{array}
$$

所以二次型$f$对应的矩阵为$2αα^{⊤} + ββ^{⊤}$。
(2)
设$A = 2αα^{⊤} + ββ^{⊤}$。由于$∣α∣ = 1$，$β^{⊤}α = 0$，则：

$$
Aα = (2αα^{⊤} + ββ^{⊤})α = 2α∣α∣^{2} + β(β^{⊤}α) = 2α
$$

所以$α$为矩阵对应特征值$λ_{1} = 2$的特征向量。

$$
Aβ = (2αα^{⊤} + ββ^{⊤})β = 2α(α^{⊤}β) + β∣β∣^{2} = β
$$

所以$β$为矩阵对应特征值$λ_{2} = 1$的特征向量。
矩阵$A$的秩$r(A) ≤ r(2αα^{⊤}) + r(ββ^{⊤}) = 2$，所以$λ_{3} = 0$也是矩阵的一个特征值。
故$f$在正交变换下的标准形为$2y_{1}^{2} + y_{2}^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:16:36', 9, 'Mogullzr', '2026-01-29 14:16:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2418');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2418');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2419, '2013年考研数学卷3第22题', '简单', '考研数学2013年数3真题', '（本题满分 11 分）设$(X, Y)$为二维随机变量，$X$的概率密度为
$$
f_{X}(x) = \\begin{cases} 3x^{2} & 0 < x < 1 \\\\ 0 & 其他. \\end{cases}
$$
在给定$X = x$$(0 < x < 1)$的条件下，$Y$的条件概率密度为
$$
f_{Y∣X}(y∣x) = \\begin{cases} \\frac{3y^{2}}{x^{3}} & 0 < y < x \\\\ 0 & 其他. \\end{cases}
$$
(1) 求$(X, Y)$的联合概率密度$f(x, y)$；(2) 求$Y$的边缘概率密度$f_{Y}(y)$。', '[]', '
(1)$(X, Y)$的联合概率密度为


$$
f(x, y) = \\begin{cases} \\frac{9y^{2}}{x} & 0 < y < x < 1 \\\\ 0 & 其他 \\end{cases}
$$

(2)$Y$的边缘概率密度为


$$
f_{Y}(y) = \\begin{cases} −9y^{2} \\ln y & 0 < y < 1 \\\\ 0 & 其他 \\end{cases}
$$

', '
(1)$(X, Y)$的联合概率密度$f(x, y)$为：

$$
f(x, y) = f_{Y∣X}(y∣x) ⋅ f_{X}(x) = \\begin{cases} \\frac{9y^{2}}{x} & 0 < y < x < 1 \\\\ 0 & otherwise \\end{cases}
$$

(2)$Y$的边缘概率密度$f_{Y}(y)$为：

$$
f_{Y}(y) = \\int_{−∞}^{+∞} f(x, y) dx = \\begin{cases} \\int_{y}^{1} \\frac{9y^{2}}{x} dx = −9y^{2} \\ln y & 0 < y < 1 \\\\ 0 & otherwise \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:36', 9, 'Mogullzr', '2026-01-29 14:16:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2419');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2419');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2419');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2420, '2013年考研数学卷3第23题', '简单', '考研数学2013年数3真题', '（本题满分 11 分）设总体$X$的概率密度为
$$
f(x; θ) = \\begin{cases} \\frac{θ^{2}}{x^{3}}e^{−\\frac{θ}{x}} & x > 0 \\\\ 0 & 其他 \\end{cases}
$$
其中$θ$为未知参数，$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$X$的简单随机样本。(1) 求$θ$的矩估计量；(2) 求$θ$的极大似然估计量。', '[]', '
(1)$\\hat{θ} = \\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$
(2)$\\hat{θ} = \\frac{2n}{\\sum_{i=1}^{n} \\frac{1}{X_{i}}}$
', '
(1) 首先计算总体的数学期望$E(X)$：

$$
E(X) = \\int_{−∞}^{+∞} xf(x; θ)dx = \\int_{0}^{+∞} \\frac{θ^{2}}{x^{2}}e^{−\\frac{θ}{x}}dx = θ
$$

令$E(X) = \\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，得到$θ$的矩估计量为：

$$
\\hat{θ} = \\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}
$$

(2) 当$x_{i} > 0(i = 1, 2, ⋯  , n)$时，似然函数为：

$$
L(θ) = \\prod_{i=1}^{n} (\\frac{θ^{2}}{x_{i}^{3}}e^{−\\frac{θ}{x_{i}}}) = \\frac{θ^{2n}}{(\\prod_{i=1}^{n} x_{i})^{3}}e^{−θ(\\sum_{i=1}^{n} \\frac{1}{x_{i}})}
$$

取对数后得到：

$$
\\ln L(θ) = 2n \\ln θ - θ (\\sum_{i=1}^{n} \\frac{1}{x_{i}}) - 3 \\sum_{i=1}^{n} \\ln x_{i}
$$

令$\\frac{d \\ln L(θ)}{dθ} = 0$，得到方程：

$$
\\frac{2n}{θ} - \\sum_{i=1}^{n} \\frac{1}{x_{i}} = 0
$$

解得$θ$的极大似然估计量为：

$$
\\hat{θ} = \\frac{2n}{\\sum_{i=1}^{n} \\frac{1}{X_{i}}}
$$

', 9, 'Mogullzr', '2026-01-29 14:16:36', 9, 'Mogullzr', '2026-01-29 14:16:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2420');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2420');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '2420');
