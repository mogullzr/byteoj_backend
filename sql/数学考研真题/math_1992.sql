INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (535, '1992年考研数学卷1第1题', '简单', '考研数学1992年卷1真题', '设函数$y = y(x)$由方程$e^{x+y} + \\cos(xy) = 0$确定，则$\\frac{dy}{dx} =$______．', '[]', '

$$
\\frac{y \\sin(xy) - e^{x+y}}{e^{x+y} - x \\sin(xy)}
$$

', '给定方程$e^{x+y} + \\cos(xy) = 0$，其中$y$是$x$的函数。对方程两边关于$x$求导，利用链式法则：

$$
\\frac{d}{dx}  \\lbrack e^{x+y} + \\cos(xy) \\rbrack  = 0
$$

求导得：

$$
e^{x+y} ⋅ (1 + \\frac{dy}{dx}) - \\sin(xy) ⋅ (y + x\\frac{dy}{dx}) = 0
$$

展开并整理：

$$
e^{x+y} + e^{x+y}\\frac{dy}{dx} - y \\sin(xy) - x \\sin(xy)\\frac{dy}{dx} = 0
$$

将含有$\\frac{dy}{dx}$的项移到一边：

$$
e^{x+y}\\frac{dy}{dx} - x \\sin(xy)\\frac{dy}{dx} = −e^{x+y} + y \\sin(xy)
$$

提取公因式：

$$
\\frac{dy}{dx}(e^{x+y} - x \\sin(xy)) = −e^{x+y} + y \\sin(xy)
$$

解得：

$$
\\frac{dy}{dx} = \\frac{−e^{x+y} + y \\sin(xy)}{e^{x+y} - x \\sin(xy)} = \\frac{y \\sin(xy) - e^{x+y}}{e^{x+y} - x \\sin(xy)}
$$

此即所求导数。
', 9, 'Mogullzr', '2026-01-29 14:08:06', 9, 'Mogullzr', '2026-01-29 14:08:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '535');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '535');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '535');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (536, '1992年考研数学卷1第2题', '简单', '考研数学1992年卷1真题', '函数$u = \\ln(x^{2} + y^{2} + z^{2})$在点$M(1, 2, −2)$处的梯度$∇u∣_{M} =$______．', '[]', '

$$
(\\frac{2}{9}, \\frac{4}{9}, −\\frac{4}{9})
$$

', '函数$u = \\ln(x^{2} + y^{2} + z^{2})$的梯度为$∇u = (\\frac{∂u}{∂x}, \\frac{∂u}{∂y}, \\frac{∂u}{∂z})$。计算偏导数：

$$
\\frac{∂u}{∂x} = \\frac{2x}{x^{2} + y^{2} + z^{2}},  \\frac{∂u}{∂y} = \\frac{2y}{x^{2} + y^{2} + z^{2}},  \\frac{∂u}{∂z} = \\frac{2z}{x^{2} + y^{2} + z^{2}}.
$$

在点$M(1, 2, −2)$处，有$x^{2} + y^{2} + z^{2} = 1^{2} + 2^{2} + (−2)2 = 9$。代入得：

$$
\\frac{∂u}{∂x}​_{M} = \\frac{2 × 1}{9} = \\frac{2}{9},  \\frac{∂u}{∂y}​_{M} = \\frac{2 × 2}{9} = \\frac{4}{9},  \\frac{∂u}{∂z}​_{M} = \\frac{2 × (−2)}{9} = −\\frac{4}{9}.
$$

因此，梯度为$(\\frac{2}{9}, \\frac{4}{9}, −\\frac{4}{9})$.
', 9, 'Mogullzr', '2026-01-29 14:08:06', 9, 'Mogullzr', '2026-01-29 14:08:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '536');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '536');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '536');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (537, '1992年考研数学卷1第3题', '简单', '考研数学1992年卷1真题', '设$f(x) = \\begin{cases} −1 & −π < x ≤ 0 \\\\ 1 + x^{2} & 0 < x ≤ π \\end{cases}$则其以$2π$为周期的傅里叶级数在点$x = π$处收敛于 ______．', '[]', '$\\frac{π^{2}}{2}$
', '函数$f(x)$以$2π$为周期进行扩展。在点$x = π$处，计算左极限和右极限：
左极限$f(π^{-}) = \\lim_{x→π^{-}} f(x) = 1 + π^{2}$（因为当$0 < x ≤ π$时，$f(x) = 1 + x^{2}$）。右极限$f(π^{+}) = \\lim_{x→π^{+}} f(x)$。由于周期扩展，当$x > π$时，$f(x) = f(x - 2π)$。令$x = π + ε$，其中$ε → 0^{+}$，则$f(π + ε) = f(ε - π)$。当$ε - π ∈ (−π, 0 \\rbrack$时，$f(ε - π) = −1$，因此$f(π^{+}) = −1$。
傅里叶级数在间断点处收敛于左极限和右极限的平均值，即：$\\frac{f(π^{-})+f(π^{+})}{2} = \\frac{(1+π^{2})+(−1)}{2} = \\frac{π^{2}}{2}.$因此，傅里叶级数在点$x = π$处收敛于$\\frac{π^{2}}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:08:07', 9, 'Mogullzr', '2026-01-29 14:08:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '537');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '537');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '537');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (538, '1992年考研数学卷1第4题', '简单', '考研数学1992年卷1真题', '微分方程$y^{′} + y \\tan x = \\cos x$的通解为$y =$______．', '[]', '
$y = (x + C) \\cos x$
', '
给定微分方程$y^{′} + y \\tan x = \\cos x$，这是一阶线性微分方程，标准形式为$y^{′} + P(x)y = Q(x)$，其中$P(x) = \\tan x$，$Q(x) = \\cos x$。
积分因子为$μ(x) = e^{∫ P(x) dx} = e^{∫ \\tan x dx}$。计算$∫ \\tan x dx = − \\ln ∣ \\cos x∣$，所以$μ(x) = e^{− \\ln ∣ \\cos x∣} = \\frac{1}{∣ \\cos x∣}$。通常取$μ(x) = sec x$（忽略绝对值）。
将原方程乘以积分因子：


$$
sec x ⋅ y^{′} + sec x ⋅ y \\tan x = sec x ⋅ \\cos x
$$

简化得：


$$
\\frac{d}{dx}(y sec x) = 1
$$

两边积分：


$$
y sec x = x + C
$$

其中$C$为常数。
因此，通解为：


$$
y = (x + C) \\cos x
$$

', 9, 'Mogullzr', '2026-01-29 14:08:07', 9, 'Mogullzr', '2026-01-29 14:08:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '538');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '538');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '538');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (539, '1992年考研数学卷1第5题', '简单', '考研数学1992年卷1真题', '设$A = \\left( \\begin{array}{cccc}
a_{1}b_{1} & a_{1}b_{2} &  & a_{1}b_{n} \\\\
 &  & ⋯ &  \\\\
a_{2}b_{1} & a_{2}b_{2} &  & a_{2}b_{n} \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  &  &  \\\\
a_{n}b_{1} & a_{n}b_{2} &  & a_{n}b_{n} \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right)$，其中$a_{i} \\neq 0$,$b_{i} \\neq 0$($i = 1, 2 ⋯ n$)．则矩阵$A$的秩$r(A) =$______．', '[]', '$1$
', '矩阵$A$可以表示为列向量$a = (a_{1}, a_{2}, … , a_{n})T$与行向量$b^{T} = (b_{1}, b_{2}, … , b_{n})$的乘积，即$A = ab^{T}$。由于$a$和$b$的每个分量均不为零，矩阵$A$的每一行都是$b^{T}$的倍数，每一列都是$a$的倍数，因此所有行线性相关，所有列也线性相关，矩阵$A$的秩为 1。
', 9, 'Mogullzr', '2026-01-29 14:08:07', 9, 'Mogullzr', '2026-01-29 14:08:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '539');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '539');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '539');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (540, '1992年考研数学卷1第6题', '简单', '考研数学1992年卷1真题', '当$x → 1$时，函数$\\frac{x^{2}-1}{x-1}e^{\\frac{1}{x-1}}$的极限', '[''等于$2$．'', ''等于$0$．'', ''为$∞$．'', ''不存在但不为$∞$．'']', "['D']", '
考虑函数

$$
f(x) = \\frac{x^{2} - 1}{x - 1}e^{\\frac{1}{x-1}}.
$$
当$x \\neq 1$时，可简化

$$
\\frac{x^{2} - 1}{x - 1} = x + 1,
$$
因此

$$
f(x) = (x + 1)e^{\\frac{1}{x-1}}.
$$
当$x → 1$时，$x + 1 → 2$，但$e^{\\frac{1}{x-1}}$的行为取决于$x$趋近于$1$的方向：
$$
\\frac{1}{x - 1} → −∞,
$$
由于左极限与右极限不相等，整体极限不存在，且不为$∞$（因为左极限为$0$），故正确答案为D。', 9, 'Mogullzr', '2026-01-29 14:08:07', 9, 'Mogullzr', '2026-01-29 14:08:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '540');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '540');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '540');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (541, '1992年考研数学卷1第7题', '简单', '考研数学1992年卷1真题', '级数$\\sum_{n=1}^{∞}(−1)n (1 - \\cos \\frac{α}{n})$(常数$α > 0$)', '[''发散．'', ''条件收敛．'', ''绝对收敛．'', ''收敛性与$α$有关．'']', "['C']", '
考虑级数

$$
\\sum_{n=1}^{∞}(−1)n (1 - \\cos \\frac{α}{n}) ,
$$
其中$α > 0$。当$n → ∞$时，$\\frac{α}{n} → 0$，利用泰勒展开可得

$$
1 - \\cos x ∼ \\frac{x^{2}}{2} (x → 0),
$$
因此

$$
1 - \\cos \\frac{α}{n} ∼ \\frac{α^{2}}{2n^{2}}.
$$
于是级数的通项近似为

$$
(−1)n\\frac{α^{2}}{2n^{2}}.
$$
考虑绝对收敛性：

$$
\\sum_{n=1}^{∞} ​(−1)n (1 - \\cos \\frac{α}{n})​ = \\sum_{n=1}^{∞} (1 - \\cos \\frac{α}{n}) .
$$
由于

$$
1 - \\cos \\frac{α}{n} ∼ \\frac{α^{2}}{2n^{2}},
$$
而$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$收敛（$p$-级数，$p = 2 > 1$），由比较判别法可知

$$
\\sum_{n=1}^{∞} (1 - \\cos \\frac{α}{n})
$$
收敛，因此原级数绝对收敛。收敛性与$α$无关，故正确答案为C。', 9, 'Mogullzr', '2026-01-29 14:08:07', 9, 'Mogullzr', '2026-01-29 14:08:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '541');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '541');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '541');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (542, '1992年考研数学卷1第8题', '简单', '考研数学1992年卷1真题', '在曲线$x = t, y = −t^{2}, z = t^{3}$的所有切线中，与平面$x + 2y + z = 4$平行的切线', '[''只有1条．'', ''只有2条．'', ''至少有3条．'', ''不存在．'']', "['B']", '曲线参数方程为$x = t, y = −t^{2}, z = t^{3}$，切线的方向向量为$v = (1, −2t, 3t^{2})$。平面方程为$x + 2y + z = 4$，其法向量为$n = (1, 2, 1)$。切线与平面平行时，方向向量与法向量垂直，即点积为零：

$$
v ⋅ n = 1 ⋅ 1 + (−2t) ⋅ 2 + 3t^{2} ⋅ 1 = 1 - 4t + 3t^{2} = 0
$$
解二次方程$3t^{2} - 4t + 1 = 0$，判别式$D = (−4)2 - 4 ⋅ 3 ⋅ 1 = 4$，得根$t = 1$和$t = \\frac{1}{3}$。每个$t$值对应一条切线，因此有两条切线与平面平行。故正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:08:07', 9, 'Mogullzr', '2026-01-29 14:08:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '542');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '542');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '542');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (543, '1992年考研数学卷1第9题', '简单', '考研数学1992年卷1真题', '设$f(x) = 3x^{3} + x^{2}∣x∣$，则使$f^{n}(0)$存在的最高阶数$n$为', '[''$0$．'', ''$1$．'', ''$2$．'', ''$3$．'']', "['C']", '函数$f(x) = 3x^{3} + x^{2}∣x∣$可写为分段函数：
当$x ≥ 0$时，$f(x) = 4x^{3}$；
当$x < 0$时，$f(x) = 2x^{3}$。
首先，检查函数在$x = 0$处的连续性：
$f(0) = 0$，且$\\lim_{x→0^{-}} f(x) = 0$，$\\lim_{x→0^{+}} f(x) = 0$，故连续。一阶导数：当$x > 0$，$f^{′}(x) = 12x^{2}$；当$x < 0$，$f^{′}(x) = 6x^{2}$。
在$x = 0$处，右导数为$\\lim_{h→0^{+}} \\frac{f(h)-f(0)}{h} = \\lim_{h→0^{+}} \\frac{4h^{3}}{h} = 0$，左导数为$\\lim_{h→0^{-}} \\frac{f(h)-f(0)}{h} = \\lim_{h→0^{-}} \\frac{2h^{3}}{h} = 0$，相等，故一阶导数存在，$f^{′}(0) = 0$。二阶导数：当$x > 0$，$f^{′′}(x) = 24x$；当$x < 0$，$f^{′′}(x) = 12x$。
在$x = 0$处，右导数为$\\lim_{h→0^{+}} \\frac{f^{′}(h)-f^{′}(0)}{h} = \\lim_{h→0^{+}} \\frac{12h^{2}}{h} = 0$，左导数为$\\lim_{h→0^{-}} \\frac{f^{′}(h)-f^{′}(0)}{h} = \\lim_{h→0^{-}} \\frac{6h^{2}}{h} = 0$，相等，故二阶导数存在，$f^{′′}(0) = 0$。三阶导数：当$x > 0$，$f^{′′′}(x) = 24$；当$x < 0$，$f^{′′′}(x) = 12$。
在$x = 0$处，右导数为$\\lim_{h→0^{+}} \\frac{f^{′′}(h)-f^{′′}(0)}{h} = \\lim_{h→0^{+}} \\frac{24h}{h} = 24$，左导数为$\\lim_{h→0^{-}} \\frac{f^{′′}(h)-f^{′′}(0)}{h} = \\lim_{h→0^{-}} \\frac{12h}{h} = 12$，不相等，故三阶导数不存在。因此，使$f^{n}(0)$存在的最高阶数$n$为 2。', 9, 'Mogullzr', '2026-01-29 14:08:08', 9, 'Mogullzr', '2026-01-29 14:08:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '543');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '543');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '543');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (544, '1992年考研数学卷1第10题', '简单', '考研数学1992年卷1真题', '要使$ξ_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
2 \\\\
\\end{array} \\right)$,$ξ_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$都是线性方程组$Ax = 0$的解，只要系数矩阵$A$为', '[''$\\\\left( \\\\begin{array}{ccc}\\n−2 & 1 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{ccc}\\n2 & 0 & −1 \\\\\\\\\\n0 & 1 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{ccc}\\n−1 & 0 & 2 \\\\\\\\\\n0 & 1 & −1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{ccc}\\n0 & 1 & −1 \\\\\\\\\\n4 & −2 & −2 \\\\\\\\\\n0 & 1 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$．'']', "['A']", '
要使$ξ_{1}$和$ξ_{2}$都是$Ax = 0$的解，需满足

$$
Aξ_{1} = 0 和 Aξ_{2} = 0.
$$
对于选项 A，$A = \\left \\lbrack  \\begin{array}{ccc}
−2 & 1 & 1 \\\\
\\end{array} \\right \\rbrack$，
计算

$$
Aξ_{1} = (−2) × 1 + 1 × 0 + 1 × 2 = 0,
$$

$$
Aξ_{2} = (−2) × 0 + 1 × 1 + 1 × (−1) = 0,
$$
满足条件。对于选项 B，$A = \\left \\lbrack  \\begin{array}{ccc}
2 & 0 & −1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right \\rbrack$，
计算$Aξ_{1}$的第二行为

$$
0 × 1 + 1 × 0 + 1 × 2 = 2 \\neq 0.
$$
对于选项 C，$A = \\left \\lbrack  \\begin{array}{ccc}
−1 & 0 & 2 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right \\rbrack$，
计算$Aξ_{1}$的第一行为

$$
(−1) × 1 + 0 × 0 + 2 × 2 = 3 \\neq 0.
$$
对于选项 D，$A = \\begin{vmatrix}
0 & 1 & −1\\\\
4 & −2 & −2\\\\
0 & 1 & 1
\\end{vmatrix}$，
计算$Aξ_{1}$的第一行为

$$
0 × 1 + 1 × 0 + (−1) × 2 = −2 \\neq 0.
$$
因此，只有选项 A 正确。', 9, 'Mogullzr', '2026-01-29 14:08:08', 9, 'Mogullzr', '2026-01-29 14:08:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '544');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '544');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (545, '1992年考研数学卷1第11题', '简单', '考研数学1992年卷1真题', '求$\\lim_{x→0} \\frac{e^{x}-\\sin x-1}{1-\\sqrt{1-x^{2}}}$．', '[]', '$1$
', '
考虑极限$\\lim_{x→0} \\frac{e^{x}-\\sin x-1}{1-\\sqrt{1-x^{2}}}$。当$x → 0$时，分子和分母均趋于 0，因此为$\\frac{0}{0}$型不定式。使用泰勒展开求解。
分子部分：
$e^{x} = 1 + x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6} + O(x^{4})$，
$\\sin x = x - \\frac{x^{3}}{6} + O(x^{5})$，
因此$e^{x} - \\sin x - 1 = (1 + x + \\frac{x^{2}}{2} + \\frac{x^{3}}{6}) - (x - \\frac{x^{3}}{6}) - 1 + O(x^{4}) = \\frac{x^{2}}{2} + \\frac{x^{3}}{3} + O(x^{4})$。
分母部分：
$\\sqrt{1 - x^{2}} = 1 - \\frac{x^{2}}{2} - \\frac{x^{4}}{8} + O(x^{6})$，
因此$1 - \\sqrt{1 - x^{2}} = \\frac{x^{2}}{2} + \\frac{x^{4}}{8} + O(x^{6})$。
整体分式：


$$
\\frac{e^{x} - \\sin x - 1}{1 - \\sqrt{1 - x^{2}}} = \\frac{\\frac{x^{2}}{2} + \\frac{x^{3}}{3} + O(x^{4})}{\\frac{x^{2}}{2} + \\frac{x^{4}}{8} + O(x^{6})} = \\frac{\\frac{1}{2} + \\frac{x}{3} + O(x^{2})}{\\frac{1}{2} + \\frac{x^{2}}{8} + O(x^{4})}
$$

当$x → 0$时，分子趋于$\\frac{1}{2}$，分母趋于$\\frac{1}{2}$，因此极限为 1。
或者使用洛必达法则验证：
令$f(x) = e^{x} - \\sin x - 1$，$g(x) = 1 - \\sqrt{1 - x^{2}}$。
一阶导数：
$f^{′}(x) = e^{x} - \\cos x$，
$g^{′}(x) = \\frac{x}{\\sqrt{1-x^{2}}}$。
当$x → 0$时，$\\frac{f^{′}(x)}{g^{′}(x)} = \\frac{e^{x}-\\cos x}{\\frac{x}{\\sqrt{1-x^{2}}}}$仍为$\\frac{0}{0}$型。
二阶导数：
$f^{′′}(x) = e^{x} + \\sin x$，
$g^{′′}(x) = \\frac{1}{(1-x^{2})3/2}$。
于是


$$
\\lim_{x→0} \\frac{f^{′′}(x)}{g^{′′}(x)} = \\lim_{x→0} \\frac{e^{x} + \\sin x}{\\frac{1}{(1-x^{2})3/2}} = \\lim_{x→0}(e^{x} + \\sin x)(1 - x^{2})3/2 = 1 ⋅ 1 = 1
$$

两种方法均得极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:08:08', 9, 'Mogullzr', '2026-01-29 14:08:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '545');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '545');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '545');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (546, '1992年考研数学卷1第12题', '简单', '考研数学1992年卷1真题', '设$z = f(e^{x} \\sin y, x^{2} + y^{2})$，其中$f$具有二阶连续偏导数，
求$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = e^{2x} \\sin y \\cos y\\frac{∂^{2}f}{∂u^{2}} + 2e^{x}(y \\sin y + x \\cos y)\\frac{∂^{2}f}{∂u∂v} + e^{x} \\cos y\\frac{∂f}{∂u} + 4xy\\frac{∂^{2}f}{∂v^{2}}
$$

其中$u = e^{x} \\sin y$,$v = x^{2} + y^{2}$.
', '设$u = e^{x} \\sin y$,$v = x^{2} + y^{2}$，则$z = f(u, v)$.
首先求一阶偏导数$\\frac{∂z}{∂x}$:


$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u}\\frac{∂u}{∂x} + \\frac{∂f}{∂v}\\frac{∂v}{∂x} = \\frac{∂f}{∂u} ⋅ e^{x} \\sin y + \\frac{∂f}{∂v} ⋅ 2x.
$$

然后求混合偏导数$\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂z}{∂x})$:


$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (\\frac{∂f}{∂u} ⋅ e^{x} \\sin y) + \\frac{∂}{∂y} (\\frac{∂f}{∂v} ⋅ 2x) .
$$

应用乘积法则：


$$
\\frac{∂}{∂y} (\\frac{∂f}{∂u} ⋅ e^{x} \\sin y) = \\frac{∂}{∂y} (\\frac{∂f}{∂u}) ⋅ e^{x} \\sin y + \\frac{∂f}{∂u} ⋅ \\frac{∂}{∂y}(e^{x} \\sin y) = \\frac{∂}{∂y} (\\frac{∂f}{∂u}) ⋅ e^{x} \\sin y + \\frac{∂f}{∂u} ⋅ e^{x} \\cos y,
$$



$$
\\frac{∂}{∂y} (\\frac{∂f}{∂v} ⋅ 2x) = \\frac{∂}{∂y} (\\frac{∂f}{∂v}) ⋅ 2x + \\frac{∂f}{∂v} ⋅ \\frac{∂}{∂y}(2x) = \\frac{∂}{∂y} (\\frac{∂f}{∂v}) ⋅ 2x,
$$

因为$\\frac{∂}{∂y}(2x) = 0$.
现在计算$\\frac{∂}{∂y} (\\frac{∂f}{∂u})$和$\\frac{∂}{∂y} (\\frac{∂f}{∂v})$，使用链式法则：


$$
\\frac{∂}{∂y} (\\frac{∂f}{∂u}) = \\frac{∂^{2}f}{∂u^{2}}\\frac{∂u}{∂y} + \\frac{∂^{2}f}{∂u∂v}\\frac{∂v}{∂y} = \\frac{∂^{2}f}{∂u^{2}} ⋅ e^{x} \\cos y + \\frac{∂^{2}f}{∂u∂v} ⋅ 2y,
$$



$$
\\frac{∂}{∂y} (\\frac{∂f}{∂v}) = \\frac{∂^{2}f}{∂v∂u}\\frac{∂u}{∂y} + \\frac{∂^{2}f}{∂v^{2}}\\frac{∂v}{∂y} = \\frac{∂^{2}f}{∂u∂v} ⋅ e^{x} \\cos y + \\frac{∂^{2}f}{∂v^{2}} ⋅ 2y,
$$

其中$\\frac{∂^{2}f}{∂u∂v} = \\frac{∂^{2}f}{∂v∂u}$因为$f$具有二阶连续偏导数。
代入上式：


$$
\\frac{∂^{2}z}{∂x∂y} = (\\frac{∂^{2}f}{∂u^{2}} ⋅ e^{x} \\cos y + \\frac{∂^{2}f}{∂u∂v} ⋅ 2y) e^{x} \\sin y + \\frac{∂f}{∂u} ⋅ e^{x} \\cos y + (\\frac{∂^{2}f}{∂u∂v} ⋅ e^{x} \\cos y + \\frac{∂^{2}f}{∂v^{2}} ⋅ 2y) 2x.
$$

展开并整理项：


$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂^{2}f}{∂u^{2}} ⋅ e^{2x} \\sin y \\cos y + \\frac{∂^{2}f}{∂u∂v} ⋅ 2e^{x}y \\sin y + \\frac{∂f}{∂u} ⋅ e^{x} \\cos y + \\frac{∂^{2}f}{∂u∂v} ⋅ 2e^{x}x \\cos y + \\frac{∂^{2}f}{∂v^{2}} ⋅ 4xy.
$$

合并$\\frac{∂^{2}f}{∂u∂v}$项：


$$
\\frac{∂^{2}z}{∂x∂y} = e^{2x} \\sin y \\cos y\\frac{∂^{2}f}{∂u^{2}} + 2e^{x}(y \\sin y + x \\cos y)\\frac{∂^{2}f}{∂u∂v} + e^{x} \\cos y\\frac{∂f}{∂u} + 4xy\\frac{∂^{2}f}{∂v^{2}}.
$$

这就是所求的混合偏导数。
', 9, 'Mogullzr', '2026-01-29 14:08:08', 9, 'Mogullzr', '2026-01-29 14:08:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '546');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '546');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '546');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (547, '1992年考研数学卷1第13题', '简单', '考研数学1992年卷1真题', '设$f(x) = \\begin{cases} 1 + x^{2} & x ≤ 0 \\\\ e^{−x} & x > 0 \\end{cases}$求$\\int_{1}^{3} f(x - 2)dx$．', '[]', '

$$
\\frac{7}{3} - \\frac{1}{e}
$$

', '给定函数$f(x) = \\begin{cases} 1 + x^{2} & x ≤ 0 \\\\ e^{−x} & x > 0 \\end{cases}$，需要计算$\\int_{1}^{3} f(x - 2) dx$。
令$u = x - 2$，则当$x = 1$时，$u = −1$；当$x = 3$时，$u = 1$，且$dx = du$。积分变为$\\int_{−1}^{1} f(u) du$。
由于$f(u)$是分段函数，积分拆分为：


$$
\\int_{−1}^{1} f(u) du = \\int_{−1}^{0}(1 + u^{2}) du + \\int_{0}^{1} e^{−u} du
$$

计算第一积分：


$$
\\int_{−1}^{0}(1 + u^{2}) du =  \\lbrack u + \\frac{u^{3}}{3} \\rbrack _{−1}^{0} = (0 + 0) - (−1 + \\frac{(−1)3}{3}) = 0 - (−1 - \\frac{1}{3}) = \\frac{4}{3}
$$

计算第二积分：


$$
\\int_{0}^{1} e^{−u} du =  \\lbrack −e^{−u} \\rbrack _{0}^{1} = (−e^{−1}) - (−1) = 1 - \\frac{1}{e}
$$

因此，


$$
\\int_{1}^{3} f(x - 2) dx = \\frac{4}{3} + (1 - \\frac{1}{e}) = \\frac{7}{3} - \\frac{1}{e}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:09', 9, 'Mogullzr', '2026-01-29 14:08:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '547');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '547');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '547');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (548, '1992年考研数学卷1第14题', '简单', '考研数学1992年卷1真题', '求微分方程$y^{′′} + 2y^{′} - 3y = e^{−3x}$的通解．', '[]', '$y = C_{1}e^{x} + C_{2}e^{−3x} - \\frac{1}{4}xe^{−3x}$，其中$C_{1}$和$C_{2}$为任意常数。
', '给定微分方程$y^{′′} + 2y^{′} - 3y = e^{−3x}$，这是一个二阶线性非齐次微分方程。通解由齐次解和特解组成。
首先，求齐次方程$y^{′′} + 2y^{′} - 3y = 0$的解。特征方程为$r^{2} + 2r - 3 = 0$，解得$r_{1} = 1$，$r_{2} = −3$。因此齐次解为$y_{h} = C_{1}e^{x} + C_{2}e^{−3x}$。
其次，求非齐次方程的特解。由于非齐次项$e^{−3x}$是齐次解的一部分，设特解形式为$y_{p} = Axe^{−3x}$。计算导数：$y_{p}^{′} = Ae^{−3x} - 3Axe^{−3x}$，$y_{p}^{′′} = −6Ae^{−3x} + 9Axe^{−3x}$。代入原方程得：

$$
y_{p}^{′′} + 2y_{p}^{′} - 3y_{p} = (−6Ae^{−3x} + 9Axe^{−3x}) + 2(Ae^{−3x} - 3Axe^{−3x}) - 3(Axe^{−3x}) = −4Ae^{−3x}
$$

令其等于$e^{−3x}$，即$−4Ae^{−3x} = e^{−3x}$，解得$A = −\\frac{1}{4}$。因此特解为$y_{p} = −\\frac{1}{4}xe^{−3x}$.
最后，通解为齐次解与特解之和：$y = y_{h} + y_{p} = C_{1}e^{x} + C_{2}e^{−3x} - \\frac{1}{4}xe^{−3x}$.
', 9, 'Mogullzr', '2026-01-29 14:08:09', 9, 'Mogullzr', '2026-01-29 14:08:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '548');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '548');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '548');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (549, '1992年考研数学卷1第15题', '简单', '考研数学1992年卷1真题', '计算曲面积分$\\iint_{Σ}(x^{3} + az^{2})dydz + (y^{3} + ax^{2})dzdx + (z^{3} + ay^{2})dxdy$，其中$Σ$为上半球面$z = \\sqrt{a^{2} - x^{2} - y^{2}}$的上侧．', '[]', '$\\frac{29πa^{5}}{20}$
', '考虑曲面积分$\\iint_{Σ}(x^{3} + az^{2}) dy dz + (y^{3} + ax^{2}) dz dx + (z^{3} + ay^{2}) dx dy$，其中$Σ$为上半球面$z = \\sqrt{a^{2} - x^{2} - y^{2}}$的上侧。
应用高斯散度定理，需将上半球面与底面圆盘$D : x^{2} + y^{2} ≤ a^{2}, z = 0$构成封闭曲面$S = Σ ∪ D$，底面法向量向下。
设向量场$F = (P, Q, R) = (x^{3} + az^{2}, y^{3} + ax^{2}, z^{3} + ay^{2})$，则散度为：


$$
∇ ⋅ F = \\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z} = 3x^{2} + 3y^{2} + 3z^{2} = 3(x^{2} + y^{2} + z^{2})
$$

对上半球体$V : x^{2} + y^{2} + z^{2} ≤ a^{2}, z ≥ 0$计算三重积分：


$$
\\iiint_{V} ∇ ⋅ F dV = \\iiint_{V} 3(x^{2} + y^{2} + z^{2}) dV
$$

使用球坐标：$x = ρ \\sin ϕ \\cos θ$,$y = ρ \\sin ϕ \\sin θ$,$z = ρ \\cos ϕ$，其中$ρ ∈  \\lbrack 0, a \\rbrack$,$ϕ ∈  \\lbrack 0, π/2 \\rbrack$,$θ ∈  \\lbrack 0, 2π \\rbrack$，体积元素$dV = ρ^{2} \\sin ϕ dρ dϕ dθ$。
代入得：


$$
\\iiint_{V} 3ρ^{2} ⋅ ρ^{2} \\sin ϕ dρ dϕ dθ = 3 \\int_{0}^{2π} dθ \\int_{0}^{π/2} \\sin ϕ dϕ \\int_{0}^{a} ρ^{4} dρ
$$

计算：


$$
\\int_{0}^{2π} dθ = 2π,  \\int_{0}^{π/2} \\sin ϕ dϕ = 1,  \\int_{0}^{a} ρ^{4} dρ = \\frac{a^{5}}{5}
$$

所以：


$$
\\iiint_{V} ∇ ⋅ F dV = 3 × 2π × 1 × \\frac{a^{5}}{5} = \\frac{6πa^{5}}{5}
$$

即封闭曲面积分$\\iint_{S} F ⋅ dS = \\frac{6πa^{5}}{5}$。
接下来计算底面积分$\\iint_{D} F ⋅ dS$。在底面$D$上，$z = 0$，法向量向下，故$dS = (0, 0, −1) dA$，


$$
\\iint_{D} F ⋅ dS = \\iint_{D}(P, Q, R) ⋅ (0, 0, −1) dA = \\iint_{D} −R dA
$$

其中$R = z^{3} + ay^{2} = ay^{2}$，所以：


$$
\\iint_{D} −ay^{2} dA = −a \\iint_{D} y^{2} dA
$$

在圆盘$D$上使用极坐标：$x = r \\cos θ$,$y = r \\sin θ$,$dA = r dr dθ$，


$$
\\iint_{D} y^{2} dA = \\int_{0}^{2π} \\int_{0}^{a}(r \\sin θ)2 ⋅ r dr dθ = \\int_{0}^{2π} \\sin^{2} θ dθ \\int_{0}^{a} r^{3} dr
$$

计算：


$$
\\int_{0}^{2π} \\sin^{2} θ dθ = π,  \\int_{0}^{a} r^{3} dr = \\frac{a^{4}}{4}
$$

所以：


$$
\\iint_{D} y^{2} dA = π ⋅ \\frac{a^{4}}{4} = \\frac{πa^{4}}{4}
$$

因此：


$$
\\iint_{D} F ⋅ dS = −a ⋅ \\frac{πa^{4}}{4} = −\\frac{πa^{5}}{4}
$$

最终，上半球面的积分为：


$$
\\iint_{Σ} F ⋅ dS = \\iint_{S} F ⋅ dS - \\iint_{D} F ⋅ dS = \\frac{6πa^{5}}{5} - (−\\frac{πa^{5}}{4}) = \\frac{6πa^{5}}{5} + \\frac{πa^{5}}{4} = \\frac{24πa^{5}}{20} + \\frac{5πa^{5}}{20} = \\frac{29πa^{5}}{20}
$$

故曲面积分结果为$\\frac{29πa^{5}}{20}$。
', 9, 'Mogullzr', '2026-01-29 14:08:09', 9, 'Mogullzr', '2026-01-29 14:08:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '549');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '549');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '549');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (550, '1992年考研数学卷1第16题', '简单', '考研数学1992年卷1真题', '设$f^{′′}(x) < 0$,$f(0) = 0$，证明对任何$x_{1} > 0, x_{2} > 0$，有$f(x_{1} + x_{2}) < f(x_{1}) + f(x_{2})$．', '[]', '
对任何$x_{1} > 0, x_{2} > 0$，有$f(x_{1} + x_{2}) < f(x_{1}) + f(x_{2})$。
', '
已知$f^{′′}(x) < 0$，因此$f(x)$是严格凹函数，且$f(0) = 0$。
考虑点$0$和$x_{1} + x_{2}$，其中$x_{1} > 0, x_{2} > 0$。点$x_{1}$位于区间$(0, x_{1} + x_{2})$内，可表示为$x_{1} = λ ⋅ 0 + (1 - λ)(x_{1} + x_{2})$，其中$λ = \\frac{x_{2}}{x_{1}+x_{2}}$，$1 - λ = \\frac{x_{1}}{x_{1}+x_{2}}$。
由严格凹函数的性质，有：


$$
f(x_{1}) > λf(0) + (1 - λ)f(x_{1} + x_{2}) = \\frac{x_{1}}{x_{1} + x_{2}}f(x_{1} + x_{2})
$$

类似地，点$x_{2}$位于区间$(0, x_{1} + x_{2})$内，可表示为$x_{2} = μ ⋅ 0 + (1 - μ)(x_{1} + x_{2})$，其中$μ = \\frac{x_{1}}{x_{1}+x_{2}}$，$1 - μ = \\frac{x_{2}}{x_{1}+x_{2}}$。
由严格凹函数的性质，有：


$$
f(x_{2}) > μf(0) + (1 - μ)f(x_{1} + x_{2}) = \\frac{x_{2}}{x_{1} + x_{2}}f(x_{1} + x_{2})
$$

将上述两不等式相加：


$$
f(x_{1}) + f(x_{2}) > \\frac{x_{1}}{x_{1} + x_{2}}f(x_{1} + x_{2}) + \\frac{x_{2}}{x_{1} + x_{2}}f(x_{1} + x_{2}) = f(x_{1} + x_{2})
$$

即$f(x_{1} + x_{2}) < f(x_{1}) + f(x_{2})$。
因此，对任何$x_{1} > 0, x_{2} > 0$，不等式成立。
', 9, 'Mogullzr', '2026-01-29 14:08:09', 9, 'Mogullzr', '2026-01-29 14:08:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '550');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '550');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '550');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (551, '1992年考研数学卷1第17题', '简单', '考研数学1992年卷1真题', '在变力$F = yzi + zxj​ + xyk$的作用下，质点由原点沿直线运动到椭球面$\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}} + \\frac{z^{2}}{c^{2}} = 1$上第一卦限的点$M(ξ, η, ζ)$．问当$ξ, η, ζ$取何值时，力$F$所做的功$W$最大？并求出$W$的最大值．', '[]', '
当$ξ = \\frac{a}{\\sqrt{3}}$，$η = \\frac{b}{\\sqrt{3}}$，$ζ = \\frac{c}{\\sqrt{3}}$时，力$F$所做的功$W$最大，最大值为$W_{max} = \\frac{abc}{3\\sqrt{3}}$。
', '
力$F = yzi + zxj​ + xyk$所做的功$W$为线积分$W = \\int_{C} F ⋅ dr$。质点从原点沿直线运动到点$M(ξ, η, ζ)$，参数化路径为$x = tξ$，$y = tη$，$z = tζ$，其中$t ∈  \\lbrack 0, 1 \\rbrack$。
则$dr = (ξdt)i + (ηdt)j​ + (ζdt)k$，
$F = (t^{2}ηζ)i + (t^{2}ζξ)j​ + (t^{2}ξη)k$，
故$F ⋅ dr = 3t^{2}ξηζdt$。
积分得$W = \\int_{0}^{1} 3t^{2}ξηζdt = ξηζ$。
点$M$在椭球面$\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}} + \\frac{z^{2}}{c^{2}} = 1$上，即$\\frac{ξ^{2}}{a^{2}} + \\frac{η^{2}}{b^{2}} + \\frac{ζ^{2}}{c^{2}} = 1$，且$ξ, η, ζ > 0$。
问题转化为在约束条件下最大化$W = ξηζ$。使用拉格朗日乘数法，设$L = ξηζ - λ (\\frac{ξ^{2}}{a^{2}} + \\frac{η^{2}}{b^{2}} + \\frac{ζ^{2}}{c^{2}} - 1)$。
求偏导：
$\\frac{∂L}{∂ξ} = ηζ - \\frac{2λξ}{a^{2}} = 0$，
$\\frac{∂L}{∂η} = ξζ - \\frac{2λη}{b^{2}} = 0$，
$\\frac{∂L}{∂ζ} = ξη - \\frac{2λζ}{c^{2}} = 0$。
解得$\\frac{ξ^{2}}{a^{2}} = \\frac{η^{2}}{b^{2}} = \\frac{ζ^{2}}{c^{2}}$。
代入约束条件得$\\frac{ξ^{2}}{a^{2}} = \\frac{η^{2}}{b^{2}} = \\frac{ζ^{2}}{c^{2}} = \\frac{1}{3}$，
故$ξ = \\frac{a}{\\sqrt{3}}$，$η = \\frac{b}{\\sqrt{3}}$，$ζ = \\frac{c}{\\sqrt{3}}$。
此时$W = ξηζ = \\frac{abc}{3\\sqrt{3}}$。
由 AM-GM 不等式验证，此为最大值。
', 9, 'Mogullzr', '2026-01-29 14:08:10', 9, 'Mogullzr', '2026-01-29 14:08:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '551');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '551');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '551');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (552, '1992年考研数学卷1第18题', '简单', '考研数学1992年卷1真题', '设向量组$α_{1},  α_{2},  α_{3}$线性相关，
向量组$α_{2},  α_{3},  α_{4}$线性无关，问：(1)$α_{1}$能否由$α_{2},  α_{3}$线性表示？证明你的结论．(2)$α_{4}$能否由$α_{1},  α_{2},  α_{3}$线性表示？证明你的结论．', '[]', '(1)$α_{1}$能由$α_{2}, α_{3}$线性表示。
(2)$α_{4}$不能由$α_{1}, α_{2}, α_{3}$线性表示。
', '(1) 由于向量组$α_{1}, α_{2}, α_{3}$线性相关，存在不全为零的标量$c_{1}, c_{2}, c_{3}$使得$c_{1}α_{1} + c_{2}α_{2} + c_{3}α_{3} = 0$。若$c_{1} = 0$，则$c_{2}α_{2} + c_{3}α_{3} = 0$，但向量组$α_{2}, α_{3}, α_{4}$线性无关，故$α_{2}, α_{3}$线性无关，从而$c_{2} = c_{3} = 0$，与线性相关矛盾。因此$c_{1} \\neq 0$，于是$α_{1}$可由$α_{2}, α_{3}$线性表示。
(2) 假设$α_{4}$可由$α_{1}, α_{2}, α_{3}$线性表示，即存在标量$k_{1}, k_{2}, k_{3}$使得$α_{4} = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3}$。由 (1) 知$α_{1}$可由$α_{2}, α_{3}$线性表示，设$α_{1} = l_{2}α_{2} + l_{3}α_{3}$，代入得$α_{4} = (k_{1}l_{2} + k_{2})α_{2} + (k_{1}l_{3} + k_{3})α_{3}$，即$α_{4}$可由$α_{2}, α_{3}$线性表示。但向量组$α_{2}, α_{3}, α_{4}$线性无关，矛盾。故$α_{4}$不能由$α_{1}, α_{2}, α_{3}$线性表示。
', 9, 'Mogullzr', '2026-01-29 14:08:10', 9, 'Mogullzr', '2026-01-29 14:08:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '552');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '552');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '552');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (553, '1992年考研数学卷1第19题', '简单', '考研数学1992年卷1真题', '设$3$阶矩阵$A$的特征值为$λ_{1} = 1, λ_{2} = 2, λ_{3} = 3$，对应的特征向量依次为
$$
ξ_{1} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) , ξ_{2} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
4 \\\\
\\end{array} \\right) , ξ_{3} = \\left( \\begin{array}{c}
1 \\\\
3 \\\\
9 \\\\
\\end{array} \\right) ,
$$
又向量$β = \\begin{array}{c}
1 \\\\
1 \\\\
3 \\\\
\\end{array}$．(1) 将$β$用$ξ_{1}, ξ_{2}, ξ_{3}$线性表示．(2) 求$A^{n}β$（$n$为自然数）．', '[]', '
(1)$β = 2ξ_{1} - 2ξ_{2} + ξ_{3}$
(2)$A^{n}β = 2ξ_{1} - 2^{n+1}ξ_{2} + 3^{n}ξ_{3}$
', '
(1) 设$β = c_{1}ξ_{1} + c_{2}ξ_{2} + c_{3}ξ_{3}$，代入向量得方程组：


$$
\\begin{cases} c_{1} + c_{2} + c_{3} = 1 \\\\ c_{1} + 2c_{2} + 3c_{3} = 1 \\\\ c_{1} + 4c_{2} + 9c_{3} = 3 \\end{cases}
$$

解方程组：从第二式减第一式得$c_{2} + 2c_{3} = 0$，从第三式减第一式得$3c_{2} + 8c_{3} = 2$。由$c_{2} = −2c_{3}$代入得$3(−2c_{3}) + 8c_{3} = 2$，即$2c_{3} = 2$，所以$c_{3} = 1$，进而$c_{2} = −2$，代入第一式得$c_{1} = 2$。故$β = 2ξ_{1} - 2ξ_{2} + ξ_{3}$。
(2) 由于$ξ_{1}, ξ_{2}, ξ_{3}$是$A$的特征向量，对应特征值$λ_{1} = 1, λ_{2} = 2, λ_{3} = 3$，有$A^{n}ξ_{1} = 1^{n}ξ_{1} = ξ_{1}$，$A^{n}ξ_{2} = 2^{n}ξ_{2}$，$A^{n}ξ_{3} = 3^{n}ξ_{3}$。
由(1)知$β = 2ξ_{1} - 2ξ_{2} + ξ_{3}$，则


$$
A^{n}β = A^{n}(2ξ_{1} - 2ξ_{2} + ξ_{3}) = 2A^{n}ξ_{1} - 2A^{n}ξ_{2} + A^{n}ξ_{3} = 2ξ_{1} - 2 ⋅ 2^{n}ξ_{2} + 3^{n}ξ_{3} = 2ξ_{1} - 2^{n+1}ξ_{2} + 3^{n}ξ_{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:10', 9, 'Mogullzr', '2026-01-29 14:08:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '553');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '553');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (554, '1992年考研数学卷1第20题', '简单', '考研数学1992年卷1真题', '已知$P(A) = P(B) = P(C) = \\frac{1}{4}$,$P(AB) = 0$,$P(AC) = P(BC) = \\frac{1}{16}$，则事件$A$、$B$、$C$全不发生的概率为 ______．', '[]', '$\\frac{3}{8}$
', '事件$A$、$B$、$C$全不发生的概率为$P(\\bar{A} ∩ \\bar{B} ∩ \\bar{C})$。根据概率的性质，有$P(\\bar{A} ∩ \\bar{B} ∩ \\bar{C}) = 1 - P(A ∪ B ∪ C)$。
使用容斥原理计算$P(A ∪ B ∪ C)$：


$$
P(A ∪ B ∪ C) = P(A) + P(B) + P(C) - P(AB) - P(AC) - P(BC) + P(ABC)
$$

已知$P(A) = P(B) = P(C) = \\frac{1}{4}$，$P(AB) = 0$，$P(AC) = P(BC) = \\frac{1}{16}$。由于$P(AB) = 0$，事件$A$和$B$不能同时发生，因此$P(ABC) = 0$。
代入公式：


$$
P(A ∪ B ∪ C) = \\frac{1}{4} + \\frac{1}{4} + \\frac{1}{4} - 0 - \\frac{1}{16} - \\frac{1}{16} + 0 = \\frac{3}{4} - \\frac{2}{16} = \\frac{3}{4} - \\frac{1}{8} = \\frac{6}{8} - \\frac{1}{8} = \\frac{5}{8}
$$

因此，


$$
P(\\bar{A} ∩ \\bar{B} ∩ \\bar{C}) = 1 - \\frac{5}{8} = \\frac{3}{8}
$$

故事件$A$、$B$、$C$全不发生的概率为$\\frac{3}{8}$。
', 9, 'Mogullzr', '2026-01-29 14:08:10', 9, 'Mogullzr', '2026-01-29 14:08:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '554');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '554');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (555, '1992年考研数学卷1第21题', '简单', '考研数学1992年卷1真题', '设随机变量$X$服从参数为$1$的指数分布，则数学期望$E(X + e^{−2X}) =$______．', '[]', '
$\\frac{4}{3}$
', '
由于$X$服从参数为$1$的指数分布，其概率密度函数为$f(x) = e^{−x}$（$x ≥ 0$）。数学期望$E(X + e^{−2X}) = E(X) + E(e^{−2X})$。
对于指数分布，$E(X) = \\frac{1}{λ} = 1$。
计算$E(e^{−2X})$，利用矩生成函数或直接积分：
$E(e^{−2X}) = \\int_{0}^{∞} e^{−2x}e^{−x} dx = \\int_{0}^{∞} e^{−3x} dx =  \\lbrack −\\frac{1}{3}e^{−3x} \\rbrack _{0}^{∞} = \\frac{1}{3}$。
因此，$E(X + e^{−2X}) = 1 + \\frac{1}{3} = \\frac{4}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:08:11', 9, 'Mogullzr', '2026-01-29 14:08:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '555');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '555');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '555');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '555');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (556, '1992年考研数学卷1第22题', '简单', '考研数学1992年卷1真题', '设随机变量$X$与$Y$独立，$X$服从正态分布$N(μ, σ^{2})$，$Y$服从$\\lbrack −π, π \\rbrack$上的均匀分布，
试求$Z = X + Y$的概率分布密度（计算结果用标准正态分布函数$Φ(x)$表示，
其中$Φ(x) = \\frac{1}{\\sqrt{2π}} \\int_{−∞}^{x} e^{−\\frac{t^{2}}{2}}dt$）．', '[]', '

$$
f_{Z}(z) = \\frac{1}{2π}  \\lbrack Φ (\\frac{z - μ + π}{σ}) - Φ (\\frac{z - μ - π}{σ}) \\rbrack
$$

', '由于随机变量$X$与$Y$独立，$X ∼ N(μ, σ^{2})$，$Y$服从$\\lbrack −π, π \\rbrack$上的均匀分布，则$Z = X + Y$的概率密度函数为$X$和$Y$的概率密度函数的卷积。
设$f_{X}(x)$为$X$的概率密度函数，$f_{Y}(y)$为$Y$的概率密度函数，则有：


$$
f_{X}(x) = \\frac{1}{\\sqrt{2π}σ} \\exp (−\\frac{(x - μ)2}{2σ^{2}}) ,  f_{Y}(y) = \\begin{cases} \\frac{1}{2π} & y ∈  \\lbrack −π, π \\rbrack  \\\\ 0 & 其他 \\end{cases}
$$

则$Z$的概率密度函数为：


$$
f_{Z}(z) = \\int_{−∞}^{∞} f_{X}(z - y)f_{Y}(y) dy = \\frac{1}{2π} \\int_{−π}^{π} f_{X}(z - y) dy
$$

代入$f_{X}(z - y)$：


$$
f_{Z}(z) = \\frac{1}{2π} \\int_{−π}^{π} \\frac{1}{\\sqrt{2π}σ} \\exp (−\\frac{(z - y - μ)2}{2σ^{2}})  dy
$$

令$a = z - μ$，则：


$$
f_{Z}(z) = \\frac{1}{2π\\sqrt{2π}σ} \\int_{−π}^{π} \\exp (−\\frac{(a - y)2}{2σ^{2}})  dy
$$

进行变量代换$u = \\frac{a-y}{σ}$，则$dy = −σ du$，积分限变为$u = \\frac{a+π}{σ}$到$u = \\frac{a-π}{σ}$：


$$
\\int_{−π}^{π} \\exp (−\\frac{(a - y)2}{2σ^{2}})  dy = σ \\int_{\\frac{a-π}{σ}}^{\\frac{a+π}{σ}} \\exp (−\\frac{u^{2}}{2})  du
$$

代入得：


$$
f_{Z}(z) = \\frac{1}{2π\\sqrt{2π}σ} ⋅ σ \\int_{\\frac{a-π}{σ}}^{\\frac{a+π}{σ}} \\exp (−\\frac{u^{2}}{2})  du = \\frac{1}{2π\\sqrt{2π}} \\int_{\\frac{a-π}{σ}}^{\\frac{a+π}{σ}} \\exp (−\\frac{u^{2}}{2})  du
$$

利用标准正态分布函数$Φ(x) = \\frac{1}{\\sqrt{2π}} \\int_{−∞}^{x} \\exp (−\\frac{t^{2}}{2})  dt$，有：


$$
\\int_{\\frac{a-π}{σ}}^{\\frac{a+π}{σ}} \\exp (−\\frac{u^{2}}{2})  du = \\sqrt{2π}  \\lbrack Φ (\\frac{a + π}{σ}) - Φ (\\frac{a - π}{σ}) \\rbrack
$$

代入并简化：


$$
\\begin{array}{cc}
f_{Z}(z) & = \\frac{1}{2π\\sqrt{2π}} ⋅ \\sqrt{2π}  \\lbrack Φ (\\frac{a + π}{σ}) - Φ (\\frac{a - π}{σ}) \\rbrack  \\\\
 & = \\frac{1}{2π}  \\lbrack Φ (\\frac{z - μ + π}{σ}) - Φ (\\frac{z - μ - π}{σ}) \\rbrack  \\\\
\\end{array}
$$

此即为所求概率密度函数。
', 9, 'Mogullzr', '2026-01-29 14:08:11', 9, 'Mogullzr', '2026-01-29 14:08:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '556');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '556');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '556');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (557, '1992年考研数学卷2第1题', '', '考研数学1992年卷2真题', '/problems/other/535', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (558, '1992年考研数学卷2第2题', '', '考研数学1992年卷2真题', '/problems/other/536', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (559, '1992年考研数学卷2第3题', '', '考研数学1992年卷2真题', '/problems/other/537', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (560, '1992年考研数学卷2第4题', '', '考研数学1992年卷2真题', '/problems/other/538', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (561, '1992年考研数学卷2第5题', '', '考研数学1992年卷2真题', '/problems/other/539', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (562, '1992年考研数学卷2第6题', '', '考研数学1992年卷2真题', '/problems/other/540', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (563, '1992年考研数学卷2第7题', '', '考研数学1992年卷2真题', '/problems/other/541', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (564, '1992年考研数学卷2第8题', '', '考研数学1992年卷2真题', '/problems/other/542', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (565, '1992年考研数学卷2第9题', '', '考研数学1992年卷2真题', '/problems/other/543', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (566, '1992年考研数学卷2第10题', '', '考研数学1992年卷2真题', '/problems/other/544', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (567, '1992年考研数学卷2第11题', '', '考研数学1992年卷2真题', '/problems/other/545', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (568, '1992年考研数学卷2第12题', '', '考研数学1992年卷2真题', '/problems/other/546', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (569, '1992年考研数学卷2第13题', '简单', '考研数学1992年卷2真题', '设$A$,$B$为$3$阶方阵，$E$为$3$阶单位阵，满足$AB + E = A^{2} + B$，又知$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right)$，求矩阵$B$．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
2 & 0 & 1 \\\\
0 & 3 & 0 \\\\
−1 & 0 & 2 \\\\
\\end{array} \\right)
$$

', '由方程$AB + E = A^{2} + B$移项得$AB - B = A^{2} - E$，即$B(A - E) = A^{2} - E$。因$A^{2} - E = (A - E)(A + E)$，故有$B(A - E) = (A - E)(A + E)$。计算$A - E = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
−1 & 0 & 0 \\\\
\\end{array} \\right)$，其行列式为$1 \\neq 0$，故$A - E$可逆。两边右乘$(A - E)−1$得$B = A + E$。代入$A$得$B = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 0 & 1 \\\\
0 & 3 & 0 \\\\
−1 & 0 & 2 \\\\
\\end{array} \\right)$。验证：计算$AB + E$和$A^{2} + B$，两者均等于$\\left( \\begin{array}{ccc}
2 & 0 & 3 \\\\
0 & 7 & 0 \\\\
−3 & 0 & 2 \\\\
\\end{array} \\right)$，满足原方程。
', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '569');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '569');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '569');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (570, '1992年考研数学卷2第14题', '', '考研数学1992年卷2真题', '/problems/other/548', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (571, '1992年考研数学卷2第15题', '简单', '考研数学1992年卷2真题', '求$\\frac{d}{dx} \\int_{0}^{x^{2}}(x^{2} - t)f(t)dt$，其中$f(t)$为已知的连续函数．', '[]', '
$2x \\int_{0}^{x^{2}} f(t) dt$
', '
考虑莱布尼茨规则：$\\frac{d}{dx} \\int_{a(x)}^{b(x)} g(x, t) dt = g(x, b(x)) ⋅ b^{′}(x) - g(x, a(x)) ⋅ a^{′}(x) + \\int_{a(x)}^{b(x)} \\frac{∂}{∂x}g(x, t) dt$。
这里，$a(x) = 0$，$b(x) = x^{2}$，$g(x, t) = (x^{2} - t)f(t)$。
计算得$b^{′}(x) = 2x$，$a^{′}(x) = 0$，$g(x, b(x)) = (x^{2} - x^{2})f(x^{2}) = 0$，因此前两项为零。
第三项中，$\\frac{∂}{∂x}g(x, t) = 2xf(t)$，故积分为$\\int_{0}^{x^{2}} 2xf(t) dt = 2x \\int_{0}^{x^{2}} f(t) dt$。
因此，结果为$2x \\int_{0}^{x^{2}} f(t) dt$。
也可通过拆分积分验证：原积分写为$x^{2} \\int_{0}^{x^{2}} f(t) dt - \\int_{0}^{x^{2}} tf(t) dt$，求导后第一项导数为$2x \\int_{0}^{x^{2}} f(t) dt + 2x^{3}f(x^{2})$，第二项导数为$−2x^{3}f(x^{2})$，相加得$2x \\int_{0}^{x^{2}} f(t) dt$。
', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '571');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '571');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '571');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (572, '1992年考研数学卷2第16题', '简单', '考研数学1992年卷2真题', '计算$\\int_{\\frac{1}{4}}^{\\frac{1}{2}} dy \\int_{\\frac{1}{2}}^{\\sqrt{y}} e^{\\frac{y}{x}}dx + \\int_{\\frac{1}{2}}^{1} dy \\int_{y}^{\\sqrt{y}} e^{\\frac{y}{x}}dx$．', '[]', '

$$
\\frac{3e}{8} - \\frac{\\sqrt{e}}{2}
$$

', '给定的积分为：

$$
\\int_{\\frac{1}{4}}^{\\frac{1}{2}} dy \\int_{\\frac{1}{2}}^{\\sqrt{y}} e^{\\frac{y}{x}}dx + \\int_{\\frac{1}{2}}^{1} dy \\int_{y}^{\\sqrt{y}} e^{\\frac{y}{x}}dx
$$

首先，分析积分区域。在$xy$-平面上，该区域由$y$从$\\frac{1}{4}$到$1$和$x$从某种下限到$\\sqrt{y}$组成。通过改变积分顺序，发现区域可描述为$x$从$\\frac{1}{2}$到$1$，$y$从$x^{2}$到$x$。因此，积分可重写为：

$$
\\int_{\\frac{1}{2}}^{1} dx \\int_{x^{2}}^{x} e^{\\frac{y}{x}}dy
$$

现在计算内层积分。令$u = \\frac{y}{x}$，则$dy = xdu$，积分限变为：当$y = x^{2}$时$u = x$，当$y = x$时$u = 1$。于是：

$$
\\int_{x^{2}}^{x} e^{\\frac{y}{x}}dy = \\int_{x}^{1} e^{u}xdu = x \\int_{x}^{1} e^{u}du = x  \\lbrack e^{u} \\rbrack _{x}^{1} = x(e - e^{x})
$$

代入外层积分：

$$
\\int_{\\frac{1}{2}}^{1} x(e - e^{x})dx = e \\int_{\\frac{1}{2}}^{1} xdx - \\int_{\\frac{1}{2}}^{1} xe^{x}dx
$$

计算第一个积分：

$$
\\int_{\\frac{1}{2}}^{1} xdx =  \\lbrack \\frac{x^{2}}{2} \\rbrack _{\\frac{1}{2}}^{1} = \\frac{1}{2} - \\frac{1}{8} = \\frac{3}{8}
$$

所以$e × \\frac{3}{8} = \\frac{3e}{8}$。计算第二个积分：

$$
\\int_{\\frac{1}{2}}^{1} xe^{x}dx
$$

使用分部积分法，令$u = x$，$dv = e^{x}dx$，则$du = dx$，$v = e^{x}$：

$$
∫ xe^{x}dx = xe^{x} - ∫ e^{x}dx = xe^{x} - e^{x} = e^{x}(x - 1)
$$

代入积分限：

$$
\\lbrack e^{x}(x - 1) \\rbrack _{\\frac{1}{2}}^{1} = e^{1}(1 - 1) - e^{\\frac{1}{2}} (\\frac{1}{2} - 1) = 0 - e^{\\frac{1}{2}} (−\\frac{1}{2}) = \\frac{1}{2}e^{\\frac{1}{2}}
$$

因此：

$$
\\int_{\\frac{1}{2}}^{1} xe^{x}dx = \\frac{1}{2}e^{\\frac{1}{2}}
$$

最终：

$$
\\frac{3e}{8} - \\frac{1}{2}e^{\\frac{1}{2}} = \\frac{3e}{8} - \\frac{\\sqrt{e}}{2}
$$

这就是原积分的值。
\\boxed{\\dfrac{3e}{8} - \\dfrac{\\sqrt{e}}{2}}
', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '572');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '572');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '572');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (573, '1992年考研数学卷2第17题', '', '考研数学1992年卷2真题', '/problems/other/549', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (574, '1992年考研数学卷2第18题', '', '考研数学1992年卷2真题', '/problems/other/550', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (575, '1992年考研数学卷2第19题', '', '考研数学1992年卷2真题', '/problems/other/551', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (576, '1992年考研数学卷2第20题', '', '考研数学1992年卷2真题', '/problems/other/552', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (577, '1992年考研数学卷2第21题', '', '考研数学1992年卷2真题', '/problems/other/553', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:13', 9, 'Mogullzr', '2026-01-29 14:08:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (578, '1992年考研数学卷3第1题', '简单', '考研数学1992年卷3真题', '设$\\begin{cases} x = f(t) - π \\\\ y = f(e^{3t} - 1) \\end{cases}$其中$f$可导，且$f^{′}(0) \\neq 0$，则$\\frac{dy}{dx}​_{t=0} =$______．', '[]', '$3​$
', '给定参数方程：

$$
\\begin{cases} x = f(t) - π \\\\ y = f(e^{3t} - 1) \\end{cases}
$$

其中函数$f$可导，且$f^{′}(0) \\neq 0$。需要求$\\frac{dy}{dx}​_{t=0}$。
由参数方程求导公式：

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}}.
$$

计算导数：

$$
\\frac{dx}{dt} = f^{′}(t),  \\frac{dy}{dt} = f^{′}(e^{3t} - 1) ⋅ 3e^{3t}.
$$

在$t = 0$时：

$$
\\frac{dx}{dt}​_{t=0} = f^{′}(0),  \\frac{dy}{dt}​_{t=0} = f^{′}(e^{0} - 1) ⋅ 3e^{0} = f^{′}(0) ⋅ 3.
$$

因此：

$$
\\frac{dy}{dx}​_{t=0} = \\frac{3f^{′}(0)}{f^{′}(0)} = 3.
$$

故所求导数为$3$。
', 9, 'Mogullzr', '2026-01-29 14:08:15', 9, 'Mogullzr', '2026-01-29 14:08:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '578');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '578');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '578');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (579, '1992年考研数学卷3第2题', '简单', '考研数学1992年卷3真题', '函数$y = x + 2 \\cos x$在$\\lbrack 0, \\frac{π}{2} \\rbrack$上的最大值为 ______．', '[]', '
$\\frac{π}{6} + \\sqrt{3}$
', '
函数$y = x + 2 \\cos x$在区间$\\lbrack 0, \\frac{π}{2} \\rbrack$上可导。求导得$y^{′} = 1 - 2 \\sin x$。
令$y^{′} = 0$，即$1 - 2 \\sin x = 0$，解得$\\sin x = \\frac{1}{2}$，在区间内$x = \\frac{π}{6}$。
计算函数在临界点和端点处的值：
当$x = 0$时，$y = 0 + 2 \\cos 0 = 2$；当$x = \\frac{π}{6}$时，$y = \\frac{π}{6} + 2 \\cos \\frac{π}{6} = \\frac{π}{6} + \\sqrt{3}$；当$x = \\frac{π}{2}$时，$y = \\frac{π}{2} + 2 \\cos \\frac{π}{2} = \\frac{π}{2}$。
比较得，$y$在$x = \\frac{π}{6}$时取得最大值$\\frac{π}{6} + \\sqrt{3}$。
此外，导数符号分析表明：当$x < \\frac{π}{6}$时$y^{′} > 0$，函数递增；当$x > \\frac{π}{6}$时$y^{′} < 0$，函数递减，故$x = \\frac{π}{6}$为极大值点，且在该区间上为最大值点。
', 9, 'Mogullzr', '2026-01-29 14:08:15', 9, 'Mogullzr', '2026-01-29 14:08:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '579');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '579');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '579');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (580, '1992年考研数学卷3第3题', '简单', '考研数学1992年卷3真题', '$\\lim_{x→0} \\frac{1-\\sqrt{1-x^{2}}}{e^{x}-\\cos x} =$______．', '[]', '$0$
', '
该极限为$\\lim_{x→0} \\frac{1-\\sqrt{1-x^{2}}}{e^{x}-\\cos x}$。
当$x → 0$时，分子和分母均趋于 0，形成$\\frac{0}{0}$型不定式。
应用洛必达法则，对分子和分母分别求导：
分子导数为$\\frac{d}{dx} \\lbrack 1 - \\sqrt{1 - x^{2}} \\rbrack  = \\frac{x}{\\sqrt{1-x^{2}}}$；分母导数为$\\frac{d}{dx} \\lbrack e^{x} - \\cos x \\rbrack  = e^{x} + \\sin x$。
因此，极限化为


$$
\\lim_{x→0} \\frac{\\frac{x}{\\sqrt{1-x^{2}}}}{e^{x} + \\sin x} = \\lim_{x→0} \\frac{x}{\\sqrt{1 - x^{2}}(e^{x} + \\sin x)}
$$

当$x → 0$时，分子$x → 0$，分母$\\sqrt{1 - x^{2}} → 1$，$e^{x} + \\sin x → 1 + 0 = 1$，故极限为 0。
另外，也可以使用泰勒展开验证：
分子$1 - \\sqrt{1 - x^{2}} = \\frac{x^{2}}{2} - \\frac{x^{4}}{8} + O(x^{6})$；分母$e^{x} - \\cos x = x + x^{2} + \\frac{x^{3}}{6} + O(x^{5})$。
因此，分式近似为


$$
\\frac{\\frac{x^{2}}{2}}{x} = \\frac{x}{2} → 0
$$

同样确认极限为 0。
', 9, 'Mogullzr', '2026-01-29 14:08:16', 9, 'Mogullzr', '2026-01-29 14:08:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '580');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '580');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '580');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (581, '1992年考研数学卷3第4题', '简单', '考研数学1992年卷3真题', '$\\int_{1}^{+∞}   \\frac{dx}{x(x^{2}+1)} =$______．', '[]', '
$\\frac{1}{2} \\ln 2$
', '
首先，对被积函数$\\frac{1}{x(x^{2}+1)}$进行部分分式分解。设


$$
\\frac{1}{x(x^{2} + 1)} = \\frac{A}{x} + \\frac{Bx + C}{x^{2} + 1}
$$

通分后比较分子，得


$$
A(x^{2} + 1) + (Bx + C)x = 1
$$

即


$$
(A + B)x^{2} + Cx + A = 1
$$

比较系数，有


$$
A + B = 0,  C = 0,  A = 1
$$

解得$A = 1$，$B = −1$，$C = 0$。因此


$$
\\frac{1}{x(x^{2} + 1)} = \\frac{1}{x} - \\frac{x}{x^{2} + 1}
$$

积分变为


$$
\\int_{1}^{+∞} (\\frac{1}{x} - \\frac{x}{x^{2} + 1}) dx
$$

分别计算积分：


$$
∫ \\frac{1}{x}dx = \\ln ∣x∣,  ∫ \\frac{x}{x^{2} + 1}dx = \\frac{1}{2} \\ln(x^{2} + 1)
$$

所以原函数为


$$
\\ln x - \\frac{1}{2} \\ln(x^{2} + 1)
$$

计算反常积分：


$$
\\lim_{b→∞}  \\lbrack \\ln x - \\frac{1}{2} \\ln(x^{2} + 1) \\rbrack _{1}^{b} = \\lim_{b→∞}  \\lbrack \\ln b - \\frac{1}{2} \\ln(b^{2} + 1) \\rbrack  -  \\lbrack \\ln 1 - \\frac{1}{2} \\ln(1^{2} + 1) \\rbrack
$$

在$x = 1$处，


$$
\\ln 1 - \\frac{1}{2} \\ln 2 = 0 - \\frac{1}{2} \\ln 2 = −\\frac{1}{2} \\ln 2
$$

在$x = b$处，


$$
\\begin{array}{cc}
\\ln b - \\frac{1}{2} \\ln(b^{2} + 1) & = \\ln b - \\frac{1}{2} \\ln (b^{2} (1 + \\frac{1}{b^{2}})) \\\\
 & = \\ln b - \\frac{1}{2} (2 \\ln b + \\ln (1 + \\frac{1}{b^{2}})) \\\\
\\end{array}
$$

当$b → ∞$时，$\\frac{1}{b^{2}} → 0$，故


$$
\\ln (1 + \\frac{1}{b^{2}}) → \\ln 1 = 0
$$

因此极限为 0。积分值为


$$
0 - (−\\frac{1}{2} \\ln 2) = \\frac{1}{2} \\ln 2
$$

故积分为$\\frac{1}{2} \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:08:16', 9, 'Mogullzr', '2026-01-29 14:08:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '581');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '581');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '581');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (582, '1992年考研数学卷3第5题', '简单', '考研数学1992年卷3真题', '由曲线$y = xe^{x}$与直线$y = ex$所围成的图形的面积$S =$______．', '[]', '

$$
\\frac{e}{2} - 1
$$

', '首先，求曲线$y = xe^{x}$与直线$y = ex$的交点。解方程$xe^{x} = ex$，当$x = 0$时，两边均为 0；当$x \\neq 0$时，两边除以$x$得$e^{x} = e$，即$x = 1$。因此，交点为$x = 0$和$x = 1$。
在区间$\\lbrack 0, 1 \\rbrack$上，比较两函数值：取$x = 0.5$，$y = xe^{x} ≈ 0.5 × e^{0.5} ≈ 0.824$，$y = ex ≈ e × 0.5 ≈ 1.359$，故直线$y = ex$在曲线$y = xe^{x}$上方。因此，所求面积为：

$$
S = \\int_{0}^{1}(ex - xe^{x}) dx
$$

计算积分：

$$
S = \\int_{0}^{1} ex dx - \\int_{0}^{1} xe^{x} dx
$$

其中：

$$
\\int_{0}^{1} ex dx = e  \\lbrack \\frac{x^{2}}{2} \\rbrack _{0}^{1} = e ⋅ \\frac{1}{2} = \\frac{e}{2}
$$

对于$\\int_{0}^{1} xe^{x} dx$，使用分部积分法：令$u = x$，$dv = e^{x} dx$，则$du = dx$，$v = e^{x}$，有：

$$
∫ xe^{x} dx = xe^{x} - ∫ e^{x} dx = xe^{x} - e^{x} + C
$$

代入上下限：

$$
\\int_{0}^{1} xe^{x} dx =  \\lbrack xe^{x} - e^{x} \\rbrack _{0}^{1} = (1 ⋅ e^{1} - e^{1}) - (0 ⋅ e^{0} - e^{0}) = (e - e) - (0 - 1) = 1
$$

因此：

$$
S = \\frac{e}{2} - 1
$$

', 9, 'Mogullzr', '2026-01-29 14:08:16', 9, 'Mogullzr', '2026-01-29 14:08:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '582');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '582');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '582');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (583, '1992年考研数学卷3第6题', '简单', '考研数学1992年卷3真题', '当$x → 0$时，$x - \\sin x$是$x^{2}$的', '[''低阶无穷小．'', ''高阶无穷小．'', ''等价无穷小．'', ''同阶但非等价的无穷小．'']', "['B']", '
要比较$x - \\sin x$与$x^{2}$在$x → 0$时的阶数，需计算极限$\\lim_{x→0} \\frac{x-\\sin x}{x^{2}}$。该极限为$\\frac{0}{0}$型不定式，应用洛必达法则：分子导数为$1 - \\cos x$，分母导数为$2x$，得$\\lim_{x→0} \\frac{1-\\cos x}{2x}$。此极限仍为$\\frac{0}{0}$型，再次应用洛必达法则：分子导数为$\\sin x$，分母导数为$2$，得$\\lim_{x→0} \\frac{\\sin x}{2} = 0$。极限为 0，表明$x - \\sin x$是$x^{2}$的高阶无穷小。或者，由$\\sin x$的泰勒展开$\\sin x = x - \\frac{x^{3}}{6} + O(x^{5})$，得$x - \\sin x = \\frac{x^{3}}{6} + O(x^{5})$，可见$x - \\sin x$与$x^{3}$同阶，高于$x^{2}$的阶数。故选项 B 正确。', 9, 'Mogullzr', '2026-01-29 14:08:16', 9, 'Mogullzr', '2026-01-29 14:08:16', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '583');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '583');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (584, '1992年考研数学卷3第7题', '简单', '考研数学1992年卷3真题', '设$f(x) = \\begin{cases} x^{2} & x ≤ 0 \\\\ x^{2} + x & x > 0 \\end{cases}$，则', '[''$f(−x) = \\\\begin{cases} −x^{2} & x ≤ 0 \\\\\\\\ −(x^{2} + x) & x > 0. \\\\end{cases}$'', ''$f(−x) = \\\\begin{cases} −(x^{2} + x) & x < 0 \\\\\\\\ −x^{2} & x ≥ 0. \\\\end{cases}$'', ''$f(−x) = \\\\begin{cases} x^{2} & x ≤ 0 \\\\\\\\ x^{2} - x & x > 0. \\\\end{cases}$'', ''$f(−x) = \\\\begin{cases} x^{2} - x & x < 0 \\\\\\\\ x^{2} & x ≥ 0. \\\\end{cases}$'']', "['D']", '给定函数$f(x) = \\begin{cases} x^{2} & x ≤ 0 \\\\ x^{2} + x & x > 0 \\end{cases}$，求$f(−x)$。令$u = −x$，则$f(−x) = f(u)$。根据$u$的值分段计算：当$u ≤ 0$，即$−x ≤ 0$或$x ≥ 0$，则$f(u) = u^{2} = (−x)2 = x^{2}$。当$u > 0$，即$−x > 0$或$x < 0$，则$f(u) = u^{2} + u = (−x)2 + (−x) = x^{2} - x$。
因此，$f(−x) = \\begin{cases} x^{2} - x & x < 0 \\\\ x^{2} & x ≥ 0 \\end{cases}$，与选项 D 一致。', 9, 'Mogullzr', '2026-01-29 14:08:17', 9, 'Mogullzr', '2026-01-29 14:08:17', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '584');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '584');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '584');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (585, '1992年考研数学卷3第8题', '', '考研数学1992年卷3真题', '/problems/other/540', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:17', 9, 'Mogullzr', '2026-01-29 14:08:17', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (586, '1992年考研数学卷3第9题', '简单', '考研数学1992年卷3真题', '设$f(x)$连续，$F(x) = \\int_{0}^{x^{2}} f(t^{2})dt$，则$F^{′}(x)$等于', '[''$f(x^{4})$．'', ''$x^{2}f(x^{4})$．'', ''$2xf(x^{4})$．'', ''$2xf(x^{2})$．'']', "['C']", '
给定$F(x) = \\int_{0}^{x^{2}} f(t^{2}) dt$，求$F^{′}(x)$。令$u = x^{2}$，则$F(x) = \\int_{0}^{u} f(t^{2}) dt$。
设$H(u) = \\int_{0}^{u} f(s^{2}) ds$，则$F(x) = H(x^{2})$。根据微积分基本定理，$H^{′}(u) = f(u^{2})$，故$H^{′}(x^{2}) = f((x^{2})2) = f(x^{4})$。再根据链式法则，

$$
F^{′}(x) = H^{′}(x^{2}) ⋅ \\frac{d}{dx}(x^{2}) = f(x^{4}) ⋅ 2x
$$
因此，$F^{′}(x) = 2xf(x^{4})$，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:08:17', 9, 'Mogullzr', '2026-01-29 14:08:17', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '586');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '586');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '586');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (587, '1992年考研数学卷3第10题', '简单', '考研数学1992年卷3真题', '若$f(x)$的导函数是$\\sin x$，则$f(x)$有一个原函数为', '[''$1 + \\\\sin x$．'', ''$1 - \\\\sin x$．'', ''$1 + \\\\cos x$．'', ''$1 - \\\\cos x$．'']', "['B']", '
给定$f^{′}(x) = \\sin x$，则

$$
f(x) = ∫ \\sin x dx = − \\cos x + C,
$$
其中$C$为常数。设$F(x)$为$f(x)$的一个原函数，即$F^{′}(x) = f(x)$。于是

$$
F(x) = ∫ f(x) dx = ∫(− \\cos x + C) dx = − \\sin x + Cx + D,
$$
其中$D$为常数。考虑选项，当$C = 0$且$D = 1$时，

$$
F(x) = 1 - \\sin x,
$$
对应选项 B。验证：若$F(x) = 1 - \\sin x$，则

$$
f(x) = F^{′}(x) = − \\cos x,
$$
进而

$$
f^{′}(x) = \\sin x,
$$
符合题意。其他选项均不满足：若$F(x) = 1 + \\sin x$，则$f(x) = \\cos x$，$f^{′}(x) = − \\sin x \\neq \\sin x$；若$F(x) = 1 + \\cos x$，则$f(x) = − \\sin x$，$f^{′}(x) = − \\cos x \\neq \\sin x$；若$F(x) = 1 - \\cos x$，则$f(x) = \\sin x$，$f^{′}(x) = \\cos x \\neq \\sin x$。故正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:08:17', 9, 'Mogullzr', '2026-01-29 14:08:17', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '587');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '587');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '587');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (588, '1992年考研数学卷3第11题', '简单', '考研数学1992年卷3真题', '求$\\lim_{x→∞} (\\frac{3+x}{6+x})^{\\frac{x-1}{2}}$．', '[]', '$e^{−\\frac{3}{2}}$
', '考虑极限


$$
L = \\lim_{x→∞} (\\frac{3 + x}{6 + x})^{\\frac{x-1}{2}} .
$$

取自然对数，得


$$
\\ln L = \\lim_{x→∞} \\frac{x - 1}{2} \\ln (\\frac{3 + x}{6 + x}) .
$$

注意到


$$
\\frac{3 + x}{6 + x} = 1 - \\frac{3}{6 + x},
$$

因此


$$
\\ln (\\frac{3 + x}{6 + x}) = \\ln (1 - \\frac{3}{6 + x}) .
$$

当$x → ∞$时，$−\\frac{3}{6+x}$趋于 0，故


$$
\\ln (1 - \\frac{3}{6 + x}) ∼ −\\frac{3}{6 + x}.
$$

于是，


$$
\\ln L = \\lim_{x→∞} \\frac{x - 1}{2} ⋅ (−\\frac{3}{6 + x}) = −\\frac{3}{2} \\lim_{x→∞} \\frac{x - 1}{6 + x}.
$$

计算


$$
\\lim_{x→∞} \\frac{x - 1}{6 + x} = \\lim_{x→∞} \\frac{1 - 1/x}{1 + 6/x} = 1,
$$

所以


$$
\\ln L = −\\frac{3}{2},
$$

即


$$
L = e^{−\\frac{3}{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:17', 9, 'Mogullzr', '2026-01-29 14:08:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '588');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '588');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '588');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (589, '1992年考研数学卷3第12题', '简单', '考研数学1992年卷3真题', '设函数$y = y(x)$由方程$y - xe^{y} = 1$所确定，求$\\frac{d^{2}y}{dx^{2}}​_{x=0}$的值．', '[]', '
$2e^{2}$
', '
给定方程$y - xe^{y} = 1$，首先求一阶导数。对方程两边关于$x$求导：


$$
\\frac{dy}{dx} - (e^{y} + xe^{y}\\frac{dy}{dx}) = 0
$$

整理得：


$$
\\frac{dy}{dx}(1 - xe^{y}) = e^{y}
$$

因此一阶导数为：


$$
\\frac{dy}{dx} = \\frac{e^{y}}{1 - xe^{y}}
$$

当$x = 0$时，由原方程得$y = 1$，代入一阶导数公式：


$$
\\frac{dy}{dx}​_{x=0} = \\frac{e^{1}}{1 - 0 ⋅ e^{1}} = e
$$

接下来求二阶导数。对一阶导数公式两边关于$x$求导：


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{(e^{y}\\frac{dy}{dx}) (1 - xe^{y}) - e^{y} (−e^{y} - xe^{y}\\frac{dy}{dx})}{(1 - xe^{y})2}
$$

简化分子：


$$
e^{y}\\frac{dy}{dx}(1 - xe^{y}) + e^{y} (e^{y} + xe^{y}\\frac{dy}{dx}) = e^{y}\\frac{dy}{dx} + e^{2y}
$$

因此：


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{e^{y}\\frac{dy}{dx} + e^{2y}}{(1 - xe^{y})2}
$$

代入$x = 0$，$y = 1$，$\\frac{dy}{dx} = e$：
分母为$(1 - 0 ⋅ e^{1})2 = 1$，分子为$e^{1} ⋅ e + e^{2⋅1} = e^{2} + e^{2} = 2e^{2}$，故：


$$
\\frac{d^{2}y}{dx^{2}}​_{x=0} = 2e^{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:17', 9, 'Mogullzr', '2026-01-29 14:08:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '589');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '589');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '589');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (590, '1992年考研数学卷3第13题', '简单', '考研数学1992年卷3真题', '求$∫ \\frac{x^{3}}{\\sqrt{1+x^{2}}}dx$．', '[]', '

$$
\\frac{\\sqrt{1 + x^{2}}(x^{2} - 2)}{3} + C
$$

', '考虑积分$∫ \\frac{x^{3}}{\\sqrt{1+x^{2}}} dx$。令$u = 1 + x^{2}$，则$du = 2x dx$，即$x dx = \\frac{du}{2}$。同时，$x^{2} = u - 1$。代入积分得：

$$
∫ \\frac{x^{3}}{\\sqrt{1 + x^{2}}} dx = ∫ \\frac{x^{2} ⋅ x}{\\sqrt{u}} dx = ∫ \\frac{u - 1}{\\sqrt{u}} ⋅ \\frac{du}{2} = \\frac{1}{2} ∫ (u^{1/2} - u^{−1/2})  du.
$$

计算积分：

$$
\\frac{1}{2} (\\frac{2}{3}u^{3/2} - 2u^{1/2}) + C = \\frac{1}{3}u^{3/2} - u^{1/2} + C.
$$

代回$u = 1 + x^{2}$：

$$
\\begin{array}{cc}
\\frac{1}{3}(1 + x^{2})3/2 - (1 + x^{2})1/2 + C & = \\sqrt{1 + x^{2}} (\\frac{1 + x^{2}}{3} - 1) + C \\\\
 & = \\frac{\\sqrt{1 + x^{2}}(x^{2} - 2)}{3} + C. \\\\
\\end{array}
$$

因此，积分结果为$\\frac{\\sqrt{1+x^{2}}(x^{2}-2)}{3} + C$.
', 9, 'Mogullzr', '2026-01-29 14:08:18', 9, 'Mogullzr', '2026-01-29 14:08:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '590');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '590');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '590');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (591, '1992年考研数学卷3第14题', '简单', '考研数学1992年卷3真题', '求$\\int_{0}^{π} \\sqrt{1 - \\sin x}dx$．', '[]', '$4\\sqrt{2} - 4$
', '首先，利用三角恒等式简化被积函数。有$1 - \\sin x = (\\sin \\frac{x}{2} - \\cos \\frac{x}{2})2$，因此$\\sqrt{1 - \\sin x} = ∣ \\sin \\frac{x}{2} - \\cos \\frac{x}{2}∣$。原积分化为$\\int_{0}^{π} ∣ \\sin \\frac{x}{2} - \\cos \\frac{x}{2}∣ dx$。
令$u = \\frac{x}{2}$，则$dx = 2 du$，积分限变为$u$从$0$到$\\frac{π}{2}$。积分化为$2 \\int_{0}^{\\frac{π}{2}} ∣ \\sin u - \\cos u∣ du$。
在区间$\\lbrack 0, \\frac{π}{2} \\rbrack$上，$\\sin u - \\cos u$在$u = \\frac{π}{4}$处为零。当$u < \\frac{π}{4}$时，$\\sin u - \\cos u < 0$，故$∣ \\sin u - \\cos u∣ = \\cos u - \\sin u$；当$u > \\frac{π}{4}$时，$\\sin u - \\cos u > 0$，故$∣ \\sin u - \\cos u∣ = \\sin u - \\cos u$。因此，积分拆分为：

$$
2  \\lbrack \\int_{0}^{\\frac{π}{4}}(\\cos u - \\sin u) du + \\int_{\\frac{π}{4}}^{\\frac{π}{2}}(\\sin u - \\cos u) du \\rbrack
$$

计算第一积分：

$$
\\int_{0}^{\\frac{π}{4}}(\\cos u - \\sin u) du =  \\lbrack \\sin u + \\cos u \\rbrack 04π​​ = (\\frac{\\sqrt{2}}{2} + \\frac{\\sqrt{2}}{2}) - (0 + 1) = \\sqrt{2} - 1
$$

计算第二积分：

$$
\\begin{array}{cc}
\\int_{\\frac{π}{4}}^{\\frac{π}{2}}(\\sin u - \\cos u) du & =  \\lbrack − \\cos u - \\sin u \\rbrack _{\\frac{π}{4}}^{\\frac{π}{2}} \\\\
 & = (− \\cos \\frac{π}{2} - \\sin \\frac{π}{2}) - (− \\cos \\frac{π}{4} - \\sin \\frac{π}{4}) \\\\
 & = (−0 - 1) - (−\\frac{\\sqrt{2}}{2} - \\frac{\\sqrt{2}}{2}) \\\\
 & = \\sqrt{2} - 1 \\\\
\\end{array}
$$

因此，

$$
2  \\lbrack (\\sqrt{2} - 1) + (\\sqrt{2} - 1) \\rbrack  = 2(2\\sqrt{2} - 2) = 4\\sqrt{2} - 4
$$

故原积分的值为$4\\sqrt{2} - 4$。
', 9, 'Mogullzr', '2026-01-29 14:08:18', 9, 'Mogullzr', '2026-01-29 14:08:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '591');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '591');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '591');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (592, '1992年考研数学卷3第15题', '简单', '考研数学1992年卷3真题', '求微分方程$(y - x^{3})dx - 2xdy = 0$的通解．', '[]', '
$y = C\\sqrt{x} - \\frac{1}{5}x^{3}$，其中$C$为任意常数。
', '
给定微分方程$(y - x^{3}) dx - 2x dy = 0$，首先将其化为标准形式。整理得：


$$
2x\\frac{dy}{dx} = y - x^{3}
$$

即


$$
\\frac{dy}{dx} = \\frac{y}{2x} - \\frac{x^{2}}{2}
$$

进一步写成一阶线性微分方程形式：


$$
\\frac{dy}{dx} - \\frac{1}{2x}y = −\\frac{1}{2}x^{2}
$$

其中$P(x) = −\\frac{1}{2x}$，$Q(x) = −\\frac{1}{2}x^{2}$。计算积分因子：


$$
μ(x) = e^{∫ P(x) dx} = e^{∫ −\\frac{1}{2x} dx} = e^{−\\frac{1}{2} \\ln x} = x^{−1/2}
$$

将原方程乘以积分因子：


$$
x^{−1/2}\\frac{dy}{dx} - \\frac{1}{2}x^{−3/2}y = −\\frac{1}{2}x^{3/2}
$$

左边为$\\frac{d}{dx} (x^{−1/2}y)$，因此：


$$
\\frac{d}{dx} (x^{−1/2}y) = −\\frac{1}{2}x^{3/2}
$$

两边积分：


$$
x^{−1/2}y = −\\frac{1}{2} ∫ x^{3/2} dx + C = −\\frac{1}{2} ⋅ \\frac{2}{5}x^{5/2} + C = −\\frac{1}{5}x^{5/2} + C
$$

其中$C$为积分常数。解出$y$：


$$
y = x^{1/2} (−\\frac{1}{5}x^{5/2} + C) = Cx^{1/2} - \\frac{1}{5}x^{3}
$$

即通解为$y = C\\sqrt{x} - \\frac{1}{5}x^{3}$。验证可知满足原方程。
', 9, 'Mogullzr', '2026-01-29 14:08:18', 9, 'Mogullzr', '2026-01-29 14:08:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '592');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '592');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (593, '1992年考研数学卷3第16题', '', '考研数学1992年卷3真题', '/problems/other/547', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:18', 9, 'Mogullzr', '2026-01-29 14:08:18', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (594, '1992年考研数学卷3第17题', '简单', '考研数学1992年卷3真题', '求微分方程$y^{′′} - 3y^{′} + 2y = xe^{x}$的通解', '[]', '$y = C_{1}e^{x} + C_{2}e^{2x} - \\frac{1}{2}x^{2}e^{x} - xe^{x}$，其中$C_{1}$和$C_{2}$为任意常数。
', '首先，求解齐次方程$y^{′′} - 3y^{′} + 2y = 0$。特征方程为$r^{2} - 3r + 2 = 0$，解得根$r = 1$和$r = 2$，因此齐次解为$y_{h} = C_{1}e^{x} + C_{2}e^{2x}$。
其次，求非齐次方程的特解。非齐次项为$xe^{x}$，由于$e^{x}$是齐次解的一部分（对应单根$r = 1$），设特解形式为$y_{p} = x(Ax + B)e^{x} = (Ax^{2} + Bx)e^{x}$。计算一阶和二阶导数：

$$
y_{p}^{′} = e^{x} \\lbrack Ax^{2} + (2A + B)x + B \\rbrack
$$



$$
y_{p}^{′′} = e^{x} \\lbrack Ax^{2} + (4A + B)x + (2A + 2B) \\rbrack
$$

代入原方程：

$$
y_{p}^{′′} - 3y_{p}^{′} + 2y_{p} = e^{x} \\lbrack −2Ax + (2A - B) \\rbrack
$$

令其等于$xe^{x}$，比较系数：

$$
−2A = 1,  2A - B = 0
$$

解得$A = −\\frac{1}{2}$,$B = −1$，因此特解为$y_{p} = (−\\frac{1}{2}x^{2} - x) e^{x}$.
最后，通解为齐次解与特解之和：

$$
y = y_{h} + y_{p} = C_{1}e^{x} + C_{2}e^{2x} + (−\\frac{1}{2}x^{2} - x) e^{x}
$$

整理得：

$$
y = C_{1}e^{x} + C_{2}e^{2x} - \\frac{1}{2}x^{2}e^{x} - xe^{x}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:18', 9, 'Mogullzr', '2026-01-29 14:08:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '594');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '594');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '594');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (595, '1992年考研数学卷3第18题', '简单', '考研数学1992年卷3真题', '计算曲线$y = \\ln(1 - x^{2})$上相对于$0 ≤ x ≤ \\frac{1}{2}$的一段弧的长度．', '[]', '

$$
\\ln 3 - \\frac{1}{2}
$$

', '曲线弧长公式为$L = \\int_{a}^{b} \\sqrt{1 + (\\frac{dy}{dx})^{2}} dx$，其中$a = 0$，$b = \\frac{1}{2}$。
给定$y = \\ln(1 - x^{2})$，求导得$\\frac{dy}{dx} = −\\frac{2x}{1-x^{2}}$，
则$(\\frac{dy}{dx})^{2} = \\frac{4x^{2}}{(1-x^{2})2}$。
代入弧长公式：


$$
\\begin{array}{cc}
\\sqrt{1 + (\\frac{dy}{dx})^{2}} & = \\sqrt{1 + \\frac{4x^{2}}{(1 - x^{2})2}} \\\\
 & = \\sqrt{\\frac{(1 - x^{2})2 + 4x^{2}}{(1 - x^{2})2}} \\\\
 & = \\sqrt{\\frac{1 + 2x^{2} + x^{4}}{(1 - x^{2})2}} \\\\
 & = \\frac{1 + x^{2}}{1 - x^{2}} \\\\
\\end{array}
$$

（由于$0 ≤ x ≤ \\frac{1}{2}$，有$1 - x^{2} > 0$，故绝对值符号省略）。
于是弧长为：


$$
L = \\int_{0}^{\\frac{1}{2}} \\frac{1 + x^{2}}{1 - x^{2}} dx
$$

将被积函数化简：


$$
\\frac{1 + x^{2}}{1 - x^{2}} = \\frac{2}{1 - x^{2}} - 1
$$

因此积分化为：


$$
L = \\int_{0}^{\\frac{1}{2}} (\\frac{2}{1 - x^{2}} - 1) dx = 2 \\int_{0}^{\\frac{1}{2}} \\frac{1}{1 - x^{2}} dx - \\int_{0}^{\\frac{1}{2}} 1 dx
$$

计算第二积分：


$$
\\int_{0}^{\\frac{1}{2}} 1 dx =  \\lbrack x \\rbrack _{0}^{\\frac{1}{2}} = \\frac{1}{2}
$$

计算第一积分：


$$
\\begin{array}{cc}
\\int_{0}^{\\frac{1}{2}} \\frac{1}{1 - x^{2}} dx & =  \\lbrack \\frac{1}{2} \\ln (\\frac{1 + x}{1 - x}) \\rbrack _{0}^{\\frac{1}{2}} \\\\
 & = \\frac{1}{2}  \\lbrack \\ln (\\frac{1 + \\frac{1}{2}}{1 - \\frac{1}{2}}) - \\ln(1) \\rbrack  \\\\
 & = \\frac{1}{2} \\ln (\\frac{3/2}{1/2}) \\\\
\\end{array}
$$

所以：


$$
2 \\int_{0}^{\\frac{1}{2}} \\frac{1}{1 - x^{2}} dx = 2 ⋅ \\frac{1}{2} \\ln 3 = \\ln 3
$$

最终得：


$$
L = \\ln 3 - \\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:18', 9, 'Mogullzr', '2026-01-29 14:08:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '595');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '595');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '595');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (596, '1992年考研数学卷3第19题', '简单', '考研数学1992年卷3真题', '求曲线$y = \\sqrt{x}$的一条切线$l$，使该曲线与切线$l$及直线$x = 0$,$x = 2$所围成的平面图形面积最小．', '[]', '切线方程为$y = \\frac{1}{2}x + \\frac{1}{2}$
', '设切点为$(a, \\sqrt{a})$，其中$a > 0$。曲线$y = \\sqrt{x}$的导数为$y^{′} = \\frac{1}{2\\sqrt{x}}$，在切点处的切线斜率为$\\frac{1}{2\\sqrt{a}}$。切线方程为：

$$
y - \\sqrt{a} = \\frac{1}{2\\sqrt{a}}(x - a)
$$

简化得：

$$
y = \\frac{x}{2\\sqrt{a}} + \\frac{\\sqrt{a}}{2}
$$

曲线与切线及直线$x = 0$、$x = 2$所围成的平面图形面积$S$为：

$$
S = \\int_{0}^{2}  \\lbrack (\\frac{x}{2\\sqrt{a}} + \\frac{\\sqrt{a}}{2}) - \\sqrt{x} \\rbrack  dx
$$

计算积分：

$$
S = \\int_{0}^{2} (\\frac{x}{2\\sqrt{a}} + \\frac{\\sqrt{a}}{2} - \\sqrt{x}) dx =  \\lbrack \\frac{x^{2}}{4\\sqrt{a}} + \\frac{\\sqrt{a}}{2}x - \\frac{2}{3}x^{3/2} \\rbrack _{0}^{2}
$$

代入$x = 2$：

$$
\\frac{4}{4\\sqrt{a}} + \\frac{\\sqrt{a}}{2} ⋅ 2 - \\frac{2}{3} ⋅ 2^{3/2} = \\frac{1}{\\sqrt{a}} + \\sqrt{a} - \\frac{4\\sqrt{2}}{3}
$$

因此：

$$
S(a) = \\frac{1}{\\sqrt{a}} + \\sqrt{a} - \\frac{4\\sqrt{2}}{3}
$$

令$g(a) = \\frac{1}{\\sqrt{a}} + \\sqrt{a}$，则$S(a) = g(a) - \\frac{4\\sqrt{2}}{3}$。最小化$S(a)$等价于最小化$g(a)$。求导：

$$
g^{′}(a) = −\\frac{1}{2}a^{−3/2} + \\frac{1}{2}a^{−1/2} = \\frac{1}{2}a^{−3/2}(a - 1)
$$

令$g^{′}(a) = 0$，得$a = 1$。当$a < 1$时，$g^{′}(a) < 0$；当$a > 1$时，$g^{′}(a) > 0$，故$a = 1$时$g(a)$取最小值。因此，切点为$(1, 1)$，切线方程为：

$$
y = \\frac{x}{2} + \\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:19', 9, 'Mogullzr', '2026-01-29 14:08:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '596');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '596');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (597, '1992年考研数学卷3第20题', '', '考研数学1992年卷3真题', '/problems/other/550', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:19', 9, 'Mogullzr', '2026-01-29 14:08:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (598, '1992年考研数学卷4第1题', '简单', '考研数学1992年卷4真题', '设商品的需求函数为$Q = 100 - 5P$，其中$Q, P$分别表示为需求量和价格，如果商品需求弹性的绝对值大于$1$，则商品价格的取值范围是 ______．', '[]', '
$(10, 20 \\rbrack$
', '
由$Q(P) = 100 - 5P ≥ 0$得价格$P ≤ 20$。又由弹性的定义有

$$
ε = P ⋅ \\frac{Q^{′}(P)}{Q(P)} = −\\frac{5P}{100 - 5P}
$$

令$∣ε∣ > 1$，解得$P > 10$。所以商品价格的取值范围是$\\lbrack 10, 20 \\rbrack$。
', 9, 'Mogullzr', '2026-01-29 14:08:21', 9, 'Mogullzr', '2026-01-29 14:08:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '598');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '598');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '598');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (599, '1992年考研数学卷4第2题', '简单', '考研数学1992年卷4真题', '级数$\\sum_{n=1}^{∞} \\frac{(x-2)2n}{n4^{n}}$的收敛域为 ______．', '[]', '
$(0, 4)$
', '
考虑级数$\\sum_{n=1}^{∞} \\frac{(x-2)2n}{n4^{n}}$。
令$t = (x - 2)2$，则原级数化为


$$
\\sum_{n=1}^{∞} \\frac{t^{n}}{n4^{n}} = \\sum_{n=1}^{∞} \\frac{1}{n} (\\frac{t}{4})^{n} .
$$

该级数在$​\\frac{t}{4}​ < 1$时收敛，即$∣t∣ < 4$，也就是$(x - 2)2 < 4$，解得$∣x - 2∣ < 2$，即$0 < x < 4$。
当$∣x - 2∣ = 2$时，即$x = 0$或$x = 4$，级数变为


$$
\\sum_{n=1}^{∞} \\frac{1}{n},
$$

此为调和级数，发散。
当$x = 2$时，$t = 0$，级数所有项为零，显然收敛。
因此，收敛域为$x ∈ (0, 4)$。
', 9, 'Mogullzr', '2026-01-29 14:08:21', 9, 'Mogullzr', '2026-01-29 14:08:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '599');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '599');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '599');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (600, '1992年考研数学卷4第3题', '简单', '考研数学1992年卷4真题', '交换积分次序$\\int_{0}^{1} dy \\int_{\\sqrt{y}}^{\\sqrt{2-y^{2}}} f(x, y)dx =$______．', '[]', '

$$
\\int_{0}^{1} dx \\int_{0}^{x^{2}} f(x, y)dy + \\int_{1}^{\\sqrt{2}} dx \\int_{0}^{\\sqrt{2-x^{2}}} f(x, y)dy
$$

', '
原积分为$\\int_{0}^{1} dy \\int_{\\sqrt{y}}^{\\sqrt{2-y^{2}}} f(x, y)dx$，积分区域由$0 ≤ y ≤ 1$和$\\sqrt{y} ≤ x ≤ \\sqrt{2 - y^{2}}$定义。为了交换积分次序，需要确定$x$和$y$的范围。
首先，$x$的范围从$0$到$\\sqrt{2}$。当$x$从$0$到$1$时，对于固定的$x$，$y$必须满足$0 ≤ y ≤ x^{2}$（来自$x ≥ \\sqrt{y}$)。当$x$从$1$到$\\sqrt{2}$时，对于固定的$x$，$y$必须满足$0 ≤ y ≤ \\sqrt{2 - x^{2}}$（来自$x ≤ \\sqrt{2 - y^{2}}$)。
因此，交换积分次序后，积分分为两部分：
$x$从$0$到$1$，$y$从$0$到$x^{2}$。$x$从$1$到$\\sqrt{2}$，$y$从$0$到$\\sqrt{2 - x^{2}}$。
最终结果为：

$$
\\int_{0}^{1} dx \\int_{0}^{x^{2}} f(x, y)dy + \\int_{1}^{\\sqrt{2}} dx \\int_{0}^{\\sqrt{2-x^{2}}} f(x, y)dy
$$

', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '600');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '600');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '600');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (601, '1992年考研数学卷4第4题', '简单', '考研数学1992年卷4真题', '设$A$为$m$阶方阵，$B$为$n$阶方阵，且$∣A∣ = a$,$∣B∣ = b$,$C = \\left( \\begin{array}{cc}
O & A \\\\
B & O \\\\
\\end{array} \\right)$，则$∣C∣ =$______．', '[]', '
$(−1)mnab$
', '
考虑块矩阵$C = \\left( \\begin{array}{cc}
O & A \\\\
B & O \\\\
\\end{array} \\right)$，其中$A$为$m$阶方阵，$B$为$n$阶方阵。通过交换行将$C$化为块对角矩阵。具体地，将原矩阵的后$n$行（即$B$和$O$所在的行）交换到前$n$行，原前$m$行（即$O$和$A$所在的行）交换到后$m$行。这一行交换操作相当于一个置换，其符号为$(−1)mn$。交换后得到新矩阵$\\left( \\begin{array}{cc}
B & O \\\\
O & A \\\\
\\end{array} \\right)$，该矩阵为块对角矩阵，其行列式为$∣B∣ ⋅ ∣A∣ = b ⋅ a$。因此，原矩阵$C$的行列式为$(−1)mn ⋅ a ⋅ b$。
', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '601');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '601');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '601');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (602, '1992年考研数学卷4第5题', '简单', '考研数学1992年卷4真题', '将 C, C, E, E, I, N, S 这七个字母随机地排成一行，那么恰好排成英文单词~\\hbox{SCIENCE}~的概率为 ______．', '[]', '
$\\frac{1}{1260}$
', '
首先，计算总排列数。字母集合为 C, C, E, E, I, N, S，共 7 个字母，其中 C 和 E 各重复两次。总排列数为多重集合的排列数：


$$
\\frac{7!}{2! × 2!} = \\frac{5040}{4} = 1260
$$

其中，$7! = 5040$，除以$2!$（因为两个 C）和$2!$（因为两个 E），得到 1260 种不同的排列。
恰好排成单词 SCIENCE（序列为 S-C-I-E-N-C-E）只有一种排列，因为两个 C 和两个 E 相同，交换它们不会产生新的序列。
因此，概率为有利结果数除以总结果数：


$$
\\frac{1}{1260}
$$

故概率为$\\frac{1}{1260}$。
', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '602');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '602');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (603, '1992年考研数学卷4第6题', '简单', '考研数学1992年卷4真题', '设$F(x) = \\frac{x^{2}}{x-a} \\int_{a}^{x} f(t)dt$，其中$f(x)$为连续函数，则$\\lim_{x→a} F(x)$等于', '[''$a^{2}$．'', ''$a^{2}f(a)$．'', ''$0$．'', ''不存在．'']', "['B']", '由于当$x → a$时，$F(x) = \\frac{x^{2}}{x-a} \\int_{a}^{x} f(t) dt$的分子和分母均趋于零，因此可应用洛必达法则。令$g(x) = \\int_{a}^{x} f(t) dt$，则$g(a) = 0$且$g^{′}(x) = f(x)$。求导后，分子导数为$\\frac{d}{dx}  \\lbrack x^{2}g(x) \\rbrack  = 2xg(x) + x^{2}g^{′}(x)$，分母导数为 1。于是，
$$
\\lim_{x→a} F(x) = \\lim_{x→a} \\frac{2xg(x) + x^{2}g^{′}(x)}{1} = 2a ⋅ 0 + a^{2}f(a) = a^{2}f(a)
$$
。 Alternatively, 由导数的定义，$\\lim_{x→a} \\frac{g(x)}{x-a} = g^{′}(a) = f(a)$，故$\\lim_{x→a} F(x) = \\lim_{x→a} x^{2} ⋅ \\frac{g(x)}{x-a} = a^{2}f(a)$。因此，正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '603');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '603');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '603');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (604, '1992年考研数学卷4第7题', '简单', '考研数学1992年卷4真题', '当$x → 0$时，下面四个无穷小量中，哪一个是比其他三个更高阶的无穷小量？', '[''$x^{2}$．'', ''$1 - \\\\cos x$．'', ''$\\\\sqrt{1 - x^{2}} - 1$．'', ''$x - \\\\tan x$．'']', "['D']", '
当$x → 0$时，A.$x^{2}$是二阶无穷小量，B.$1 - \\cos x ∼ \\frac{x^{2}}{2}$也是二阶无穷小量，C.$\\sqrt{1 - x^{2}} - 1 ∼ −\\frac{x^{2}}{2}$同样是二阶无穷小量，D.$x - \\tan x ∼ −\\frac{x^{3}}{3}$是三阶无穷小量因此 D 是比其他三个更高阶的无穷小量。', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '604');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '604');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (605, '1992年考研数学卷4第8题', '简单', '考研数学1992年卷4真题', '设$A$为$m × n$矩阵，齐次线性方程组$Ax = 0$仅有零解的充分条件是', '[''$A$的列向量线性无关．'', ''$A$的列向量线性相关．'', ''$A$的行向量线性无关．'', ''$A$的行向量线性相关．'']', "['A']", '齐次线性方程组$Ax = 0$仅有零解当且仅当矩阵$A$的列向量线性无关。这是因为$Ax$可以表示为列向量的线性组合$x_{1}a_{1} + x_{2}a_{2} + ⋯ + x_{n}a_{n}$，其中$a_{i}$是$A$的列向量。当列向量线性无关时，该组合为零仅当所有系数$x_{i} = 0$，即仅有零解。因此，选项 A 是充分条件。选项 B 错误，因为若列向量线性相关，则存在非零解。选项 C 和 D 涉及行向量，但行向量的线性无关或相关不能保证仅有零解；例如，当行向量线性无关但列数大于行数时，列向量可能线性相关，导致非零解。', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '605');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '605');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (606, '1992年考研数学卷4第9题', '简单', '考研数学1992年卷4真题', '设当事件$A$与$B$同时发生时，事件$C$必发生，则', '[''$P(C) ≤ P(A) + P(B) - 1$．'', ''$P(C) ≥ P(A) + P(B) - 1$．'', ''$P(C) = P(AB)$．'', ''$P(C) = P(A ∪ B)$．'']', "['B']", '
由题意，事件$A$与$B$同时发生时事件$C$必发生，即$AB ⊆ C$。
根据概率的性质，若$AB ⊆ C$，则$P(AB) ≤ P(C)$。
又由概率的基本不等式，

$$
P(A ∪ B) = P(A) + P(B) - P(AB) ≤ 1,
$$
因此

$$
P(AB) ≥ P(A) + P(B) - 1.
$$
结合两者，有

$$
P(C) ≥ P(AB) ≥ P(A) + P(B) - 1,
$$
即

$$
P(C) ≥ P(A) + P(B) - 1,
$$
故选项B正确。选项A可能不成立，因为$P(A) + P(B) - 1$可能为负，而$P(C)$非负；
选项C和D不一定成立，因为$P(C)$可能大于$P(AB)$或小于$P(A ∪ B)$。', 9, 'Mogullzr', '2026-01-29 14:08:22', 9, 'Mogullzr', '2026-01-29 14:08:22', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '606');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '606');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (607, '1992年考研数学卷4第10题', '简单', '考研数学1992年卷4真题', '设$n$个随机变量$X_{1}$,$X_{2}$,$⋯$,$X_{n}$独立同分布，
$$
D(X_{1}) = σ^{2},  \\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i},  S^{2} = \\frac{1}{n - 1} \\sum_{i=1}^{n}(X_{i} - \\overline{X})2,
$$
则', '[''$S$是$σ$的无偏估计量．'', ''$S$是$σ$的最大似然估计量．'', ''$S$是$σ$的相合估计量（即一致估计量）．'', ''$S$与$\\\\overline{X}$相互独立．'']', "['C']", '选项 C 正确，因为$S^{2}$是$σ^{2}$的相合估计量（即当$n → ∞$时，$S^{2}$依概率收敛于$σ^{2}$），且函数$g(x) = \\sqrt{x}$连续，因此$S = g(S^{2})$也是$σ$的相合估计量。
选项 A 错误，因为$S$通常不是$σ$的无偏估计量，例如在正态分布下$E \\lbrack S \\rbrack  \\neq σ$。
选项 B 错误，因为$S$不一定是$σ$的最大似然估计量，例如在正态分布中$σ$的最大似然估计为$\\sqrt{\\frac{1}{n} ∑(X_{i} - \\bar{X})2}$，与$S$不同。
选项 D 错误，因为只有在总体分布为正态时，$S$与$\\bar{X}$才相互独立，但问题未指定分布，故一般不成立。', 9, 'Mogullzr', '2026-01-29 14:08:23', 9, 'Mogullzr', '2026-01-29 14:08:23', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '607');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '607');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '607');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (608, '1992年考研数学卷4第11题', '简单', '考研数学1992年卷4真题', '设函数$f(x) = \\begin{cases} \\frac{\\ln \\cos(x-1)}{1-\\sin \\frac{πx}{2}} & x \\neq 1 \\\\ 1 & x = 1. \\end{cases}$问函数$f(x)$在$x = 1$处是否连续？若不连续，修改函数在$x = 1$处的定义使之连续．', '[]', '
不连续。修改定义使$f(1) = −\\frac{4}{π^{2}}$。
', '
要判断函数$f(x)$在$x = 1$处是否连续，需计算极限$\\lim_{x→1} f(x)$并比较与$f(1) = 1$是否相等。
令$t = x - 1$，则当$x → 1$时，$t → 0$，极限化为：


$$
\\lim_{t→0} \\frac{\\ln \\cos t}{1 - \\sin \\frac{π(t+1)}{2}} = \\lim_{t→0} \\frac{\\ln \\cos t}{1 - \\cos \\frac{πt}{2}}
$$

此为$\\frac{0}{0}$型不定式。应用洛必达法则：
分子导数为$\\frac{d}{dt} \\ln \\cos t = − \\tan t$，
分母导数为$\\frac{d}{dt} (1 - \\cos \\frac{πt}{2}) = \\frac{π}{2} \\sin \\frac{πt}{2}$。
因此，


$$
\\lim_{t→0} \\frac{− \\tan t}{\\frac{π}{2} \\sin \\frac{πt}{2}} = \\lim_{t→0} \\frac{− \\tan t}{\\frac{π}{2} \\sin \\frac{πt}{2}}
$$

利用等价无穷小：当$t → 0$时，$\\tan t ∼ t$，$\\sin \\frac{πt}{2} ∼ \\frac{πt}{2}$，


$$
\\lim_{t→0} \\frac{−t}{\\frac{π}{2} ⋅ \\frac{πt}{2}} = \\lim_{t→0} \\frac{−1}{\\frac{π^{2}}{4}} = −\\frac{4}{π^{2}}
$$

故极限为$−\\frac{4}{π^{2}}$，与$f(1) = 1$不相等，因此函数在$x = 1$处不连续。
为使函数连续，应修改定义，令$f(1) = \\lim_{x→1} f(x) = −\\frac{4}{π^{2}}$。
修改后的函数为：


$$
f(x) = \\begin{cases} \\frac{\\ln \\cos(x-1)}{1-\\sin \\frac{πx}{2}} & x \\neq 1 \\\\ −\\frac{4}{π^{2}} & x = 1. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:23', 9, 'Mogullzr', '2026-01-29 14:08:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '608');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '608');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (609, '1992年考研数学卷4第12题', '简单', '考研数学1992年卷4真题', '计算$I = ∫ \\frac{arccot e^{x}}{e^{x}}dx$．', '[]', '

$$
I = −\\frac{arccot e^{x}}{e^{x}} + \\frac{1}{2} \\ln(1 + e^{−2x}) + C
$$

', '考虑积分$I = ∫ \\frac{arccot e^{x}}{e^{x}} dx$。令$u = e^{x}$，则$du = e^{x} dx$，即$dx = \\frac{du}{u}$。代入得：

$$
I = ∫ \\frac{arccot u}{u} ⋅ \\frac{du}{u} = ∫ \\frac{arccot u}{u^{2}} du
$$

使用分部积分法，令$v = arccot u$，$dv = −\\frac{1}{1+u^{2}} du$，$dw = \\frac{1}{u^{2}} du$，则$w = −\\frac{1}{u}$。于是：

$$
\\begin{array}{cc}
∫ \\frac{arccot u}{u^{2}} du & = vw - ∫ w dv \\\\
 & = −\\frac{arccot u}{u} - ∫ (−\\frac{1}{u}) (−\\frac{1}{1 + u^{2}}) du \\\\
 & = −\\frac{arccot u}{u} - ∫ \\frac{1}{u(1 + u^{2})} du \\\\
\\end{array}
$$

计算积分$∫ \\frac{1}{u(1+u^{2})} du$。使用部分分式分解：

$$
\\frac{1}{u(1 + u^{2})} = \\frac{1}{u} - \\frac{u}{1 + u^{2}}
$$

所以：

$$
∫ \\frac{1}{u(1 + u^{2})} du = ∫ \\frac{1}{u} du - ∫ \\frac{u}{1 + u^{2}} du = \\ln ∣u∣ - \\frac{1}{2} \\ln(1 + u^{2}) + C
$$

代入回原积分：

$$
I = −\\frac{arccot u}{u} - \\ln ∣u∣ + \\frac{1}{2} \\ln(1 + u^{2}) + C
$$

将$u = e^{x}$代回，得：

$$
I = −\\frac{arccot e^{x}}{e^{x}} - x + \\frac{1}{2} \\ln(1 + e^{2x}) + C
$$

简化对数项：

$$
\\frac{1}{2} \\ln(1 + e^{2x}) = \\frac{1}{2} \\ln (e^{2x}(1 + e^{−2x})) = \\frac{1}{2} (2x + \\ln(1 + e^{−2x})) = x + \\frac{1}{2} \\ln(1 + e^{−2x})
$$

代入得：

$$
I = −\\frac{arccot e^{x}}{e^{x}} - x + x + \\frac{1}{2} \\ln(1 + e^{−2x}) + C = −\\frac{arccot e^{x}}{e^{x}} + \\frac{1}{2} \\ln(1 + e^{−2x}) + C
$$

此为最终结果。
', 9, 'Mogullzr', '2026-01-29 14:08:23', 9, 'Mogullzr', '2026-01-29 14:08:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '609');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '609');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '609');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (610, '1992年考研数学卷4第13题', '简单', '考研数学1992年卷4真题', '设$z = \\sin(xy) + φ(x, \\frac{x}{y})$，求$\\frac{∂^{2}z}{∂x∂y}$，其中$φ(u, v)$有二阶偏导数．', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = \\cos(xy) - xy \\sin(xy) - \\frac{1}{y^{2}}φ_{v} - \\frac{x}{y^{2}}φ_{uv} - \\frac{x}{y^{3}}φ_{vv}
$$

其中$φ_{v} = \\frac{∂φ}{∂v}$,$φ_{uv} = \\frac{∂^{2}φ}{∂u∂v}$,$φ_{vv} = \\frac{∂^{2}φ}{∂v^{2}}$，均在点$(u, v) = (x, \\frac{x}{y})$处计算。
', '给定$z = \\sin(xy) + φ(x, \\frac{x}{y})$，首先求$\\frac{∂z}{∂y}$：

$$
\\frac{∂z}{∂y} = \\frac{∂}{∂y} \\sin(xy) + \\frac{∂}{∂y}φ(x, \\frac{x}{y}) = x \\cos(xy) - \\frac{x}{y^{2}}φ_{v}
$$

其中$φ_{v}$是$φ$对第二个变量$v$的偏导数。
接着求$\\frac{∂}{∂x} (\\frac{∂z}{∂y})$：

$$
\\frac{∂}{∂x} (x \\cos(xy)) = \\cos(xy) - xy \\sin(xy)
$$



$$
\\frac{∂}{∂x} (−\\frac{x}{y^{2}}φ_{v}) = −\\frac{1}{y^{2}}φ_{v} - \\frac{x}{y^{2}}\\frac{∂φ_{v}}{∂x}
$$

其中$\\frac{∂φ_{v}}{∂x}$需用链式法则计算：

$$
\\frac{∂φ_{v}}{∂x} = φ_{vu} ⋅ \\frac{∂u}{∂x} + φ_{vv} ⋅ \\frac{∂v}{∂x} = φ_{vu} ⋅ 1 + φ_{vv} ⋅ \\frac{1}{y} = φ_{vu} + \\frac{1}{y}φ_{vv}
$$

代入得：

$$
\\frac{∂}{∂x} (−\\frac{x}{y^{2}}φ_{v}) = −\\frac{1}{y^{2}}φ_{v} - \\frac{x}{y^{2}} (φ_{vu} + \\frac{1}{y}φ_{vv}) = −\\frac{1}{y^{2}}φ_{v} - \\frac{x}{y^{2}}φ_{vu} - \\frac{x}{y^{3}}φ_{vv}
$$

因此，

$$
\\frac{∂^{2}z}{∂x∂y} = \\cos(xy) - xy \\sin(xy) - \\frac{1}{y^{2}}φ_{v} - \\frac{x}{y^{2}}φ_{vu} - \\frac{x}{y^{3}}φ_{vv}
$$

由$φ$的二阶偏导数连续性，有$φ_{vu} = φ_{uv}$，故可写为$φ_{uv}$。
', 9, 'Mogullzr', '2026-01-29 14:08:23', 9, 'Mogullzr', '2026-01-29 14:08:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '610');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '610');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '610');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (611, '1992年考研数学卷4第14题', '简单', '考研数学1992年卷4真题', '求连续函数$f(x)$，使它满足$f(x) + 2 \\int_{0}^{x} f(t)dt = x^{2}$．', '[]', '$f(x) = x - \\frac{1}{2} + \\frac{1}{2}e^{−2x}$
', '给定积分方程$f(x) + 2 \\int_{0}^{x} f(t) dt = x^{2}$，设$g(x) = \\int_{0}^{x} f(t) dt$，则$g^{′}(x) = f(x)$，原方程化为$g^{′}(x) + 2g(x) = x^{2}$。这是一阶线性微分方程，积分因子为$e^{2x}$。两边乘积分因子得：

$$
\\frac{d}{dx} \\lbrack e^{2x}g(x) \\rbrack  = x^{2}e^{2x}
$$

积分得：

$$
e^{2x}g(x) = ∫ x^{2}e^{2x} dx + C
$$

计算积分：

$$
∫ x^{2}e^{2x} dx = \\frac{1}{2}x^{2}e^{2x} - \\frac{1}{2}xe^{2x} + \\frac{1}{4}e^{2x} + C_{1}
$$

所以：

$$
e^{2x}g(x) = \\frac{1}{2}x^{2}e^{2x} - \\frac{1}{2}xe^{2x} + \\frac{1}{4}e^{2x} + C
$$

解得：

$$
g(x) = \\frac{1}{2}x^{2} - \\frac{1}{2}x + \\frac{1}{4} + Ce^{−2x}
$$

由$g(0) = 0$得：

$$
0 = \\frac{1}{4} + C  ⟹  C = −\\frac{1}{4}
$$

所以：

$$
g(x) = \\frac{1}{2}x^{2} - \\frac{1}{2}x + \\frac{1}{4} - \\frac{1}{4}e^{−2x}
$$

求导得：

$$
f(x) = g^{′}(x) = x - \\frac{1}{2} + \\frac{1}{2}e^{−2x}
$$

验证满足原方程：

$$
f(x) + 2 \\int_{0}^{x} f(t) dt = (x - \\frac{1}{2} + \\frac{1}{2}e^{−2x}) + 2 (\\frac{1}{2}x^{2} - \\frac{1}{2}x + \\frac{1}{4} - \\frac{1}{4}e^{−2x}) = x^{2}
$$

故$f(x) = x - \\frac{1}{2} + \\frac{1}{2}e^{−2x}$为所求连续函数。
', 9, 'Mogullzr', '2026-01-29 14:08:23', 9, 'Mogullzr', '2026-01-29 14:08:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '611');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '611');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '611');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (612, '1992年考研数学卷4第15题', '简单', '考研数学1992年卷4真题', '求证：当$x ≥ 1$时，$arctan x - \\frac{1}{2} arccos \\frac{2x}{1+x^{2}} = \\frac{π}{4}$．', '[]', '
当$x ≥ 1$时，$arctan x - \\frac{1}{2} arccos \\frac{2x}{1+x^{2}} = \\frac{π}{4}$成立。
', '
设$θ = arctan x$，则$\\tan θ = x$。
由正弦倍角公式可得


$$
\\sin 2θ = \\frac{2 \\tan θ}{1 + \\tan^{2} θ} = \\frac{2x}{1 + x^{2}}.
$$

因此


$$
arccos \\frac{2x}{1 + x^{2}} = arccos(\\sin 2θ).
$$

由于


$$
\\sin 2θ = \\cos (\\frac{π}{2} - 2θ) ,
$$

且余弦函数为偶函数，有


$$
\\cos (\\frac{π}{2} - 2θ) = \\cos (2θ - \\frac{π}{2}) ,
$$

故


$$
arccos(\\sin 2θ) = arccos (\\cos (2θ - \\frac{π}{2})) .
$$

当$x ≥ 1$时，$θ = arctan x ∈  \\lbrack \\frac{π}{4}, \\frac{π}{2})$，
于是


$$
2θ ∈  \\lbrack \\frac{π}{2}, π) ,  2θ - \\frac{π}{2} ∈  \\lbrack 0, \\frac{π}{2}) ⊂  \\lbrack 0, π \\rbrack .
$$

因此


$$
arccos (\\cos (2θ - \\frac{π}{2})) = 2θ - \\frac{π}{2}.
$$

由此可得


$$
arccos \\frac{2x}{1 + x^{2}} = 2θ - \\frac{π}{2},
$$

即


$$
\\frac{1}{2} arccos \\frac{2x}{1 + x^{2}} = θ - \\frac{π}{4}.
$$

代入原式：


$$
arctan x - \\frac{1}{2} arccos \\frac{2x}{1 + x^{2}} = θ - (θ - \\frac{π}{4}) = \\frac{π}{4}.
$$

故当$x ≥ 1$时，该恒等式成立。
', 9, 'Mogullzr', '2026-01-29 14:08:24', 9, 'Mogullzr', '2026-01-29 14:08:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '612');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '612');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '612');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (613, '1992年考研数学卷4第16题', '简单', '考研数学1992年卷4真题', '设曲线方程$y = e^{−x}$（$x ≥ 0$）．(1) 把曲线$y = e^{−x}$,$x$轴，$y$轴和直线$x = ξ(ξ > 0)$所围成平面图形绕$x$轴旋转一周，
得一旋转体，求此旋转体体积$V(ξ)$；求满足$V(a) = \\frac{1}{2} \\lim_{ξ→+∞} V(ξ)$的$a$．(2) 在此曲线上找一点，使过该点的切线与两个坐标轴所夹平面图形的面积最大，并求出该面积．', '[]', '
(1)$a = \\frac{1}{2} \\ln 2$
(2) 点为$(1, \\frac{1}{e})$，最大面积为$\\frac{2}{e}$
', '
(1) 曲线$y = e^{−x}$($x ≥ 0$) 与$x$轴、$y$轴及直线$x = ξ$所围图形绕$x$轴旋转所得旋转体体积为：

$$
V(ξ) = π \\int_{0}^{ξ}(e^{−x})2 dx = π \\int_{0}^{ξ} e^{−2x} dx = π  \\lbrack −\\frac{1}{2}e^{−2x} \\rbrack _{0}^{ξ} = \\frac{π}{2}(1 - e^{−2ξ}).
$$

求极限：

$$
\\lim_{ξ→+∞} V(ξ) = \\lim_{ξ→+∞} \\frac{π}{2}(1 - e^{−2ξ}) = \\frac{π}{2}.
$$

由$V(a) = \\frac{1}{2} \\lim_{ξ→+∞} V(ξ) = \\frac{π}{4}$，代入得：

$$
\\frac{π}{2}(1 - e^{−2a}) = \\frac{π}{4},
$$

解得$1 - e^{−2a} = \\frac{1}{2}$，即$e^{−2a} = \\frac{1}{2}$，取对数得$−2a = \\ln \\frac{1}{2} = − \\ln 2$，所以$a = \\frac{1}{2} \\ln 2$.
(2) 设曲线上点为$(t, e^{−t})$，切线斜率为$y^{′} = −e^{−t}$，切线方程为：

$$
y - e^{−t} = −e^{−t}(x - t).
$$

求截距：与$y$轴交点为$x = 0$时，$y = e^{−t}(1 + t)$；与$x$轴交点为$y = 0$时，$x = t + 1$。切线与坐标轴所夹三角形面积为：

$$
A(t) = \\frac{1}{2} ⋅ (t + 1) ⋅ e^{−t}(1 + t) = \\frac{1}{2}(t + 1)2e^{−t}.
$$

求导：

$$
A^{′}(t) = \\frac{1}{2}  \\lbrack 2(t + 1)e^{−t} - (t + 1)2e^{−t} \\rbrack  = \\frac{1}{2}e^{−t}(t + 1)(1 - t).
$$

令$A^{′}(t) = 0$，得$t = 1$（因为$t ≥ 0$)。当$t < 1$时$A^{′}(t) > 0$，当$t > 1$时$A^{′}(t) < 0$，所以$t = 1$为最大值点。代入得点$(1, \\frac{1}{e})$，面积：

$$
A(1) = \\frac{1}{2}(1 + 1)2e^{−1} = \\frac{2}{e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:24', 9, 'Mogullzr', '2026-01-29 14:08:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '613');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '613');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '613');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (614, '1992年考研数学卷4第17题', '简单', '考研数学1992年卷4真题', '设矩阵$A$与$B$相似，其中
$$
A = \\left( \\begin{array}{ccc}
−2 & 0 & 0 \\\\
2 & x & 2 \\\\
3 & 1 & 1 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{ccc}
−1 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & y \\\\
\\end{array} \\right) .
$$
(1) 求$x$和$y$的值．(2) 求可逆矩阵$P$，使得$P^{−1}AP = B$．', '[]', '
(1)$x = 0$，$y = −2$
(2)$P = \\left( \\begin{array}{ccc}
0 & 0 & −1 \\\\
−2 & 1 & 0 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$
', '
(1) 由于矩阵$A$与$B$相似，它们具有相同的特征值。矩阵$B$是对角矩阵，其特征值为$−1, 2, y$。因此，矩阵$A$的特征值也应为$−1, 2, y$。
计算矩阵$A$的特征多项式：


$$
\\begin{array}{ccccc}
∣A - λI∣ & \\begin{array}{ccc}
−2 - λ & 0 & 0 \\\\
2 & x - λ & 2 \\\\
3 & 1 & 1 - λ \\\\
\\end{array} &  &  &  \\\\
 &  & −2 - λ & 0 & 0 \\\\
 & = (−2 - λ)  \\lbrack (x - λ)(1 - λ) - 2 \\rbrack  &  &  &  \\\\
 &  & 2 & x - λ & 2 \\\\
 &  & 3 & 1 & 1 - λ \\\\
 & = (−2 - λ) (λ^{2} - (x + 1)λ + (x - 2)) &  &  &  \\\\
\\end{array}
$$

将$λ = −1$代入特征多项式，令其为零：


$$
∣A + I∣ = \\begin{vmatrix}
−1 & 0 & 0\\\\
2 & x + 1 & 2\\\\
3 & 1 & 2
\\end{vmatrix} = (−1) \\begin{vmatrix}
x + 1 & 2\\\\
1 & 2
\\end{vmatrix} = (−1) \\lbrack (x + 1) ⋅ 2 - 2 ⋅ 1 \\rbrack  = −2x = 0
$$

解得$x = 0$。
将$λ = 2$代入特征多项式，验证其为零：


$$
∣A - 2I∣ = \\begin{vmatrix}
−4 & 0 & 0\\\\
2 & x - 2 & 2\\\\
3 & 1 & −1
\\end{vmatrix} = (−4) \\begin{vmatrix}
x - 2 & 2\\\\
1 & −1
\\end{vmatrix} = (−4) \\lbrack (x - 2)(−1) - 2 ⋅ 1 \\rbrack  = 4x
$$

当$x = 0$时，$∣A - 2I∣ = 0$，满足条件。
利用特征值之和等于迹的性质：


$$
tr(A) = −2 + x + 1 = −1,  tr(B) = −1 + 2 + y = 1 + y
$$

令$tr(A) = tr(B)$，得$−1 = 1 + y$，解得$y = −2$。
因此，$x = 0$，$y = −2$。
(2) 求可逆矩阵$P$，使得$P^{−1}AP = B$。矩阵$P$的列由$A$的特征向量组成，对应特征值$−1, 2, −2$。
对于特征值$λ = −1$，解$(A + I)v = 0$：


$$
A + I = \\left( \\begin{array}{ccc}
−1 & 0 & 0 \\\\
2 & 1 & 2 \\\\
3 & 1 & 2 \\\\
\\end{array} \\right) ,  v_{1} = \\left( \\begin{array}{c}
0 \\\\
−2 \\\\
1 \\\\
\\end{array} \\right)
$$

对于特征值$λ = 2$，解$(A - 2I)v = 0$：


$$
A - 2I = \\left( \\begin{array}{ccc}
−4 & 0 & 0 \\\\
2 & −2 & 2 \\\\
3 & 1 & −1 \\\\
\\end{array} \\right) ,  v_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)
$$

对于特征值$λ = −2$，解$(A + 2I)v = 0$：


$$
A + 2I = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
2 & 2 & 2 \\\\
3 & 1 & 3 \\\\
\\end{array} \\right) ,  v_{3} = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)
$$

因此，矩阵$P$为：


$$
P = \\left( \\begin{array}{ccc}
0 & 0 & −1 \\\\
−2 & 1 & 0 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)
$$

验证$P$可逆：


$$
\\begin{array}{cccccccc}
∣P∣ & \\begin{array}{cc}
1 & 0 \\\\
1 & 1 \\\\
\\end{array} &  &  &  &  &  &  \\\\
 & = (−1)((−2) ⋅ 1 - 1 ⋅ 1) &  &  &  &  &  &  \\\\
 &  & 1 & 0 & −2 & 0 & −2 & 1 \\\\
 &  & 1 & 1 & 1 & 1 & 1 & 1 \\\\
 & = (−1)(−3) &  &  &  &  &  &  \\\\
\\end{array}
$$

故$P$可逆，且满足$P^{−1}AP = B$。
', 9, 'Mogullzr', '2026-01-29 14:08:24', 9, 'Mogullzr', '2026-01-29 14:08:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '614');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '614');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (615, '1992年考研数学卷4第18题', '简单', '考研数学1992年卷4真题', '已知三阶矩阵$B \\neq 0$，且$B$的每一个列向量都是以下方程组的解:
$$
\\begin{cases} x_{1} + 2x_{2} - 2x_{3} = 0 \\\\ 2x_{1} - x_{2} + λx_{3} = 0 \\\\ 3x_{1} + x_{2} - x_{3} = 0. \\end{cases}
$$
(1) 求$λ$的值；(2) 证明$∣B∣ = 0$．', '[]', '(1)$λ = 1$(2) 证明见解析。
', '(1) 由于三阶矩阵$B \\neq 0$且每个列向量都是方程组的解，方程组有非零解，因此系数矩阵的行列式为零。系数矩阵为：

$$
A = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & −1 & λ \\\\
3 & 1 & −1 \\\\
\\end{array} \\right)
$$

计算行列式：

$$
∣A∣ = \\begin{vmatrix}
1 & 2 & −2\\\\
2 & −1 & λ\\\\
3 & 1 & −1
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
−1 & λ\\\\
1 & −1
\\end{vmatrix} - 2 ⋅ \\begin{vmatrix}
2 & λ\\\\
3 & −1
\\end{vmatrix} + (−2) ⋅ \\begin{vmatrix}
2 & −1\\\\
3 & 1
\\end{vmatrix}
$$

其中：

$$
\\begin{vmatrix}
−1 & λ\\\\
1 & −1
\\end{vmatrix} = (−1)(−1) - (λ)(1) = 1 - λ
$$



$$
\\begin{vmatrix}
2 & λ\\\\
3 & −1
\\end{vmatrix} = (2)(−1) - (λ)(3) = −2 - 3λ
$$



$$
\\begin{vmatrix}
2 & −1\\\\
3 & 1
\\end{vmatrix} = (2)(1) - (−1)(3) = 2 + 3 = 5
$$

代入得：

$$
∣A∣ = 1 ⋅ (1 - λ) - 2 ⋅ (−2 - 3λ) + (−2) ⋅ 5 = 1 - λ + 4 + 6λ - 10 = 5λ - 5
$$

设$∣A∣ = 0$，有$5λ - 5 = 0$，解得$λ = 1$。
(2) 当$λ = 1$时，系数矩阵为：

$$
A = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & −1 & 1 \\\\
3 & 1 & −1 \\\\
\\end{array} \\right)
$$

通过行变换化为行阶梯形：

$$
\\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
0 & −5 & 5 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

秩为 2，解空间维数为 1。基础解系为$(0, 1, 1)T$，因此方程组的解均为$(0, 1, 1)T$的倍数。由于$B$的每个列向量都是方程组的解，故每个列向量都是$(0, 1, 1)T$的倍数，即$B$的列向量线性相关。因此$B$的秩小于 3，行列式$∣B∣ = 0$。
', 9, 'Mogullzr', '2026-01-29 14:08:24', 9, 'Mogullzr', '2026-01-29 14:08:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '615');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '615');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (616, '1992年考研数学卷4第19题', '简单', '考研数学1992年卷4真题', '设$A$,$B$分别为$m$,$n$阶正定矩阵，试判定分块矩阵$C = \\left( \\begin{array}{cc}
A & 0 \\\\
0 & B \\\\
\\end{array} \\right)$是否是正定矩阵．', '[]', '
是
', '
(Ⅰ) 先说明对称性：$A$和$B$为正定矩阵，故为对称矩阵，即$A^{T} = A, B^{T} = B$，则

$$
C^{T} = \\left( \\begin{array}{cc}
A & 0 \\\\
0 & B \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
A^{T} & 0 \\\\
0 & B^{T} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
A & 0 \\\\
0 & B \\\\
\\end{array} \\right) = C,
$$

即$C$是对称矩阵。
(Ⅱ) 再说明正定性：设$m + n$维列向量$Z^{T} = (X^{T}, Y^{T})$，其中

$$
X^{T} = (x_{1}, x_{2}, ⋯  , x_{m}),  Y^{T} = (y_{1}, y_{2}, ⋯  , y_{n}).
$$

若$Z \\neq 0$，则$X, Y$不同时为 0，不妨设$X \\neq 0$，因为$A$是正定矩阵，所以$X^{T}AX > 0$。又因$B$是正定矩阵，故对任意的$n$维向量$Y$，恒有$Y^{T}AY ≥ 0$。于是

$$
Z^{T}CZ = (X^{T}, Y^{T}) \\left( \\begin{array}{cc}
A & 0 \\\\
0 & B \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
X \\\\
Y \\\\
\\end{array} \\right) = X^{T}AX + Y^{T}AY > 0,
$$

即$Z^{T}CZ$是正定二次型，因此$C$是正定矩阵。
(Ⅲ) 或者用特征值说明正定性：设$A$的特征值是$λ_{1}, λ_{2}, ⋯  , λ_{m}$，$B$的特征值是$μ_{1}, μ_{2}, ⋯  , μ_{n}$。由$A, B$均正定，知$λ_{i} > 0, μ_{j} > 0 (i = 1, 2, ⋯  , m, j = 1, 2, ⋯  , n)$。因为

$$
\\begin{array}{cccc}
∣λE - C∣ & \\begin{array}{cc}
λE_{m} - A & 0 \\\\
0 & λE_{n} - B \\\\
\\end{array} &  &  \\\\
 &  & λE_{m} - A & 0 \\\\
 & = ∣λE_{m} - A∣ ⋅ ∣λE_{n} - B∣ &  &  \\\\
 &  & 0 & λE_{n} - B \\\\
 & = (λ - λ_{1}) ⋯ (λ - λ_{m})(λ - μ_{1}) ⋯ (λ - μ_{m}), &  &  \\\\
\\end{array}
$$

即矩阵$C$的特征值为$λ_{1}, λ_{2}, ⋯  , λ_{m}, μ_{1}, μ_{2}, ⋯  , μ_{n}$，且全部大于 0，所以矩阵$C$正定。
', 9, 'Mogullzr', '2026-01-29 14:08:25', 9, 'Mogullzr', '2026-01-29 14:08:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '616');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '616');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (617, '1992年考研数学卷4第20题', '简单', '考研数学1992年卷4真题', '假设测量的随机误差$X ∼ N(0, 10^{2})$，试求$100$次独立重复测量中，至少有三次测量误差的绝对值大于$19.6$的概率$α$，并利用泊松分布求出$α$的近似值（要求小数点后取两位有效数字）．
$$
\\begin{array}{c|c|c|c|c|c|c|c|c|}
λ & 1 & 2 & 3 & 4 & 5 & 6 & 7 & ⋯ \\\\
e^{−λ} & 0.368 & 0.135 & 0.050 & 0.018 & 0.007 & 0.002 & 0.001 & ⋯ \\\\
\\end{array}
$$
', '[]', '$0.87$
', '
设事件$A =$“每次测量中测量误差的绝对值大于 19.6”，因为$X ∼ N(0, 10^{2})$，即


$$
EX = μ = 0, DX = σ^{2} = 10^{2}.
$$

根据正态分布的性质有


$$
\\begin{array}{cc}
p = P(A) & = P\\{∣X∣ > 19.6\\} = P \\{\\frac{∣X∣}{10} > 1.96\\} \\\\
 & = 1 - P \\{−1.96 ≤ \\frac{X}{10} ≤ 1.96\\} \\\\
 & = 1 -  \\lbrack Φ(1.96) - Φ(−1.96) \\rbrack  \\\\
\\end{array}
$$

设$Y$为 100 次独立重复测量中事件$A$出现的次数，则$Y$服从参数为$n = 100, p = 0.05$的二项分布。根据二项分布的定义，

$$
P\\{Y = k\\} = C_{n}^{k}p^{k}(1 - p)n−k (k = 0, 1, 2 … ),
$$

则至少有三次测量误差的绝对值大于 19.6 的概率$α$为：

$$
α = P\\{Y ≥ 3\\} = 1 - P\\{Y = 0\\} - P\\{Y = 1\\} - P\\{Y = 2\\}
$$


$$
= 1 - 0.95^{100} - 100 × 0.95^{99} × 0.05 - \\frac{100 × 99}{2} × 0.95^{98} × 0.05^{2}.
$$

根据泊松定理，当$n$充分大，$p$相当小时，$Y$近似服从参数为$λ = np$的泊松分布，即有

$$
P\\{Y = k\\} = C_{n}^{k}p^{k}(1 - p)n−k ≈ \\frac{(np)k}{k!}e^{−np} (k = 0, 1, 2 … ).
$$

故有

$$
\\begin{array}{cc}
α & = P\\{Y ≥ 3\\} = 1 - P\\{Y = 0\\} - P\\{Y = 1\\} - P\\{Y = 2\\} \\\\
 & ≈ 1 - \\frac{λ^{0}}{0!}e^{−λ} - \\frac{λ^{1}}{1!}e^{−λ} - \\frac{λ^{2}}{2!}e^{−λ} \\\\
 & = 1 - e^{−λ} - λe^{−λ} - \\frac{λ^{2}}{2}e^{−λ} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:25', 9, 'Mogullzr', '2026-01-29 14:08:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '617');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '617');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (618, '1992年考研数学卷4第21题', '简单', '考研数学1992年卷4真题', '一台设备由三大部分构成，在设备运转中各部件需要调整的概率相应为$0.10$,$0.20$和$0.30$．
假设各部件的状态相互独立，以$X$表示同时需要调整的部件数，试求$X$的概率分布，数学期望$EX$和方差$DX$．', '[]', '
概率分布：$P(X = 0) = 0.504$，$P(X = 1) = 0.398$，$P(X = 2) = 0.092$，$P(X = 3) = 0.006$；数学期望$EX = 0.6$；方差$DX = 0.46$。
', '
(Ⅰ) 设$A_{i} =$“第$i$个部件需要调整” ($i = 1, 2, 3$)，则$A_{1}, A_{2}, A_{3}$相互独立，于是$X$的概率分布如下：

$$
P\\{X = 0\\} = P\\{A_{1}A_{2}A_{3}\\} = 0.9 × 0.8 × 0.7 = 0.504,
$$


$$
\\begin{array}{cc}
P\\{X = 1\\} & = P\\{A_{1}A_{2}A_{3}\\} + P\\{\\overline{A1​​}A_{2}A_{3}\\} + P\\{\\overline{A1​A2​A3​​}\\} \\\\
 & = 0.1 × 0.8 × 0.7 + 0.9 × 0.2 × 0.7 + 0.9 × 0.8 × 0.3 = 0.398, \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
P\\{X = 2\\} & = P\\{A_{1}A_{2}\\overline{A3​​}\\} + P\\{A_{1}\\overline{A2​​}A_{3}\\} + P\\{\\overline{A1​​}A_{2}A_{3}\\} \\\\
 & = 0.1 × 0.2 × 0.7 + 0.1 × 0.8 × 0.3 + 0.9 × 0.2 × 0.3 = 0.092, \\\\
\\end{array}
$$


$$
P\\{X = 3\\} = P\\{A_{1}A_{2}A_{3}\\} = 0.1 × 0.2 × 0.3 = 0.006.
$$

(Ⅱ) 令$X_{i}$表示$A_{i}$出现的次数 ($i = 1, 2, 3$)，则$X_{i}$均服从$0 - 1$分布且相互独立，故由数学期望与方差的性质

$$
\\begin{array}{cc}
EX & = E(X_{1} + X_{2} + X_{3}) = EX_{1} + EX_{2} + EX_{3} \\\\
 & = 0.1 + 0.2 + 0.3 = 0.6, \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
DX & = D(X_{1} + X_{2} + X_{3}) = DX_{1} + DX_{2} + DX_{3} \\\\
 & = 0.1 × 0.9 + 0.2 × 0.8 + 0.3 × 0.7 = 0.46. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:25', 9, 'Mogullzr', '2026-01-29 14:08:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '618');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '618');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (619, '1992年考研数学卷4第22题', '简单', '考研数学1992年卷4真题', '设二维随机变量$(X, Y)$的概率密度为
$$
f(x, y) = \\begin{cases} e^{−y} & 0 < x < y \\\\ 0 & 其他 \\end{cases}
$$
(1) 求随机变量$X$的密度$f_{X}(x)$；(2) 求概率$P\\{X + Y ≤ 1\\}$．', '[]', '
(1)$f_{X}(x) = \\begin{cases} e^{−x} & x > 0 \\\\ 0 & x ≤ 0 \\end{cases}$
(2)$P\\{X + Y ≤ 1\\} = 1 - 2e^{−1/2} + e^{−1}$
', '
(Ⅰ) 由边缘密度的公式，当$x ≤ 0$时，$f_{x}(x) = \\int_{−∞}^{+∞} 0 dy = 0$；当$x > 0$时，

$$
f_{x}(x) = \\int_{−∞}^{+∞} f(x, y) dy = \\int_{−∞}^{x} 0 dy + \\int_{x}^{+∞} e^{−y} dy = −e^{−y}​_{x}^{+∞} = e^{−x}.
$$

因此$X$的密度为

$$
f_{x}(x) = \\begin{cases} e^{−x} & x > 0 \\\\ 0 & x ≤ 0. \\end{cases}
$$

(Ⅱ) 根据概率的计算公式：

$$
\\begin{array}{cc}
P\\{X + Y ≤ 1\\} & = \\iint_{x+y≤1} f(x, y) dx dy = \\int_{0}^{\\frac{1}{2}} dx \\int_{x}^{1-x} e^{−y} dy \\\\
 & = − \\int_{0}^{\\frac{1}{2}}  \\lbrack e^{−(1-x)} - e^{−x} \\rbrack  dx = − \\int_{0}^{\\frac{1}{2}} e^{x-1} dx + \\int_{0}^{\\frac{1}{2}} e^{−x} dx \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:25', 9, 'Mogullzr', '2026-01-29 14:08:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '619');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1064', '619');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (620, '1992年考研数学卷5第1题', '简单', '考研数学1992年卷5真题', '设$f(t) = \\lim_{x→∞} t (\\frac{x+t}{x-t})^{x}$，则$f^{′}(t) =$______．', '[]', '
$e^{2t}(1 + 2t)$
', '
首先，计算极限$f(t) = \\lim_{x→∞} t (\\frac{x+t}{x-t})^{x}$。
令$g(x) = (\\frac{x+t}{x-t})^{x}$，取自然对数得：


$$
\\ln g(x) = x \\ln (\\frac{x + t}{x - t}) = x \\ln (1 + \\frac{2t}{x - t})
$$

当$x → ∞$时，令$u = \\frac{1}{x}$，则$u → 0$，有：


$$
\\frac{x + t}{x - t} = \\frac{1 + tu}{1 - tu}
$$

所以，


$$
\\ln g(x) = \\frac{1}{u} \\ln (\\frac{1 + tu}{1 - tu})
$$

利用泰勒展开：


$$
\\begin{array}{cc}
\\ln (\\frac{1 + tu}{1 - tu}) & = \\ln(1 + tu) - \\ln(1 - tu) \\\\
 & ≈ (tu - \\frac{(tu)2}{2}) - (−tu - \\frac{(tu)2}{2}) \\\\
\\end{array}
$$

因此，


$$
\\ln g(x) ≈ \\frac{1}{u} ⋅ 2tu = 2t
$$

所以，$g(x) → e^{2t}$，即


$$
f(t) = t ⋅ e^{2t}
$$

接下来，求导数：


$$
f^{′}(t) = \\frac{d}{dt}(te^{2t}) = e^{2t} + t ⋅ 2e^{2t} = e^{2t}(1 + 2t)
$$

故$f^{′}(t) = e^{2t}(1 + 2t)$。
', 9, 'Mogullzr', '2026-01-29 14:08:27', 9, 'Mogullzr', '2026-01-29 14:08:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '620');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '620');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '620');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (621, '1992年考研数学卷5第2题', '', '考研数学1992年卷5真题', '/problems/other/598', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:27', 9, 'Mogullzr', '2026-01-29 14:08:27', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (622, '1992年考研数学卷5第3题', '简单', '考研数学1992年卷5真题', '设$f(x) = \\sin x$，$f \\lbrack ϕ(x) \\rbrack  = 1 - x^{2}$，则$ϕ(x) =$______；其定义域为 ______．', '[]', '
$ϕ(x) = arcsin(1 - x^{2})$，定义域为$\\lbrack −\\sqrt{2}, \\sqrt{2} \\rbrack$
', '
已知$f(x) = \\sin x$，且$f \\lbrack ϕ(x) \\rbrack  = 1 - x^{2}$，即$\\sin(ϕ(x)) = 1 - x^{2}$。
由于$\\sin(ϕ(x))$的值域为$\\lbrack −1, 1 \\rbrack$，因此$1 - x^{2}$必须满足$−1 ≤ 1 - x^{2} ≤ 1$。
解此不等式：
由$1 - x^{2} ≥ −1$得$x^{2} ≤ 2$，即$∣x∣ ≤ \\sqrt{2}$；
由$1 - x^{2} ≤ 1$得$−x^{2} ≤ 0$，该不等式恒成立。
故定义域为$x ∈  \\lbrack −\\sqrt{2}, \\sqrt{2} \\rbrack$。
对方程$\\sin(ϕ(x)) = 1 - x^{2}$取反正弦，得$ϕ(x) = arcsin(1 - x^{2})$，其中$arcsin$的值域为$\\lbrack −\\frac{π}{2}, \\frac{π}{2} \\rbrack$，且$1 - x^{2}$在定义域内的值域为$\\lbrack −1, 1 \\rbrack$，符合要求。
', 9, 'Mogullzr', '2026-01-29 14:08:27', 9, 'Mogullzr', '2026-01-29 14:08:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '622');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '622');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '622');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (623, '1992年考研数学卷5第4题', '简单', '考研数学1992年卷5真题', '矩阵$\\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
\\end{array} \\right)$的非零特征值是 ______．', '[]', '
4
', '
矩阵$A = \\left( \\begin{array}{cccc}
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
1 & 1 & 1 & 1 \\\\
\\end{array} \\right)$是一个秩为 1 的矩阵，因为所有行向量相同。对于秩为 1 的矩阵，非零特征值等于矩阵的迹。矩阵$A$的迹为$1 + 1 + 1 + 1 = 4$，因此非零特征值为 4。此外，矩阵$A$有三个零特征值，对应与向量$(1, 1, 1, 1)T$正交的特征向量。
', 9, 'Mogullzr', '2026-01-29 14:08:27', 9, 'Mogullzr', '2026-01-29 14:08:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '623');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '623');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '623');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (624, '1992年考研数学卷5第5题', '简单', '考研数学1992年卷5真题', '设对于事件$A$,$B$,$C$，有$P(A) = P(B) = P(C) = \\frac{1}{4}$，$P(AB) = P(BC) = 0$，$P(AC) = \\frac{1}{8}$，则$A$,$B$,$C$三个事件中至少出现一个的概率为 ______．', '[]', '
$\\frac{5}{8}$
', '
要求事件$A$、$B$、$C$中至少出现一个的概率，即求$P(A ∪ B ∪ C)$。根据概率的加法公式：


$$
P(A ∪ B ∪ C) = P(A) + P(B) + P(C) - P(AB) - P(AC) - P(BC) + P(ABC)
$$

已知$P(A) = P(B) = P(C) = \\frac{1}{4}$，$P(AB) = P(BC) = 0$，$P(AC) = \\frac{1}{8}$。
由于$P(AB) = 0$和$P(BC) = 0$，事件$A$与$B$不能同时发生，事件$B$与$C$也不能同时发生，因此事件$A$、$B$、$C$同时发生的概率$P(ABC) = 0$。
代入公式：


$$
P(A ∪ B ∪ C) = \\frac{1}{4} + \\frac{1}{4} + \\frac{1}{4} - 0 - \\frac{1}{8} - 0 + 0 = \\frac{3}{4} - \\frac{1}{8} = \\frac{6}{8} - \\frac{1}{8} = \\frac{5}{8}
$$

因此，事件$A$、$B$、$C$中至少出现一个的概率为$\\frac{5}{8}$。
', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '624');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '624');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (625, '1992年考研数学卷5第6题', '', '考研数学1992年卷5真题', '/problems/other/603', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (626, '1992年考研数学卷5第7题', '简单', '考研数学1992年卷5真题', '当$x → 0$时，下列四个无穷小量中，哪一个是比其它三个更高阶的无穷小量?', '[''$x^{2}$．'', ''$1 - \\\\cos x$．'', ''$\\\\sqrt{1 - x^{2}} - 1$．'', ''$x - \\\\sin x$．'']', "['D']", '当$x → 0$时，比较各无穷小量的阶数：
A.$x^{2}$是二阶无穷小；
B.$1 - \\cos x$的泰勒展开为$\\frac{x^{2}}{2} + O(x^{4})$，也是二阶无穷小；
C.$\\sqrt{1 - x^{2}} - 1$的泰勒展开为$−\\frac{x^{2}}{2} + O(x^{4})$，同样是二阶无穷小；
D.$x - \\sin x$的泰勒展开为$\\frac{x^{3}}{6} + O(x^{5})$，是三阶无穷小。
因此，D 是比其它三个更高阶的无穷小量。', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '626');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '626');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '626');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (627, '1992年考研数学卷5第8题', '简单', '考研数学1992年卷5真题', '设$A$,$B$,$A + B$,$A^{−1} + B^{−1}$均为$n$阶可逆矩阵，则$(A^{−1} + B^{−1})−1$等于', '[''$A^{−1} + B^{−1}$．'', ''$A + B$．'', ''$A(A + B)−1B$．'', ''$(A + B)−1$．'']', "['C']", '给定$A$,$B$,$A + B$,$A^{−1} + B^{−1}$均为可逆矩阵，需要求$(A^{−1} + B^{−1})−1$。考虑表达式$A(A + B)−1B$，验证其是否为$A^{−1} + B^{−1}$的逆。计算如下：
$$
\\begin{array}{cc}
(A^{−1} + B^{−1}) ⋅ A(A + B)−1B & = (A^{−1}A + B^{−1}A)(A + B)−1B \\\\
 & = (I + B^{−1}A)(A + B)−1B. \\\\
\\end{array}
$$
注意到$I + B^{−1}A = B^{−1}B + B^{−1}A = B^{−1}(A + B)$，代入得：
$$
B^{−1}(A + B)(A + B)−1B = B^{−1}IB = B^{−1}B = I.
$$
同理，可以验证从右侧乘也得到单位矩阵：
$$
\\begin{array}{cc}
A(A + B)−1B ⋅ (A^{−1} + B^{−1}) & = A(A + B)−1(BA^{−1} + I) \\\\
 & = A(A + B)−1(BA^{−1} + BB^{−1}) \\\\
 & = A(A + B)−1B(A^{−1} + B^{−1}) \\\\
\\end{array}
$$
因此，$(A^{−1} + B^{−1})−1 = A(A + B)−1B$，对应选项 C。其他选项均不成立：A 是原矩阵本身，B 和 D 与推导结果不符。', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '627');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '627');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '627');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (628, '1992年考研数学卷5第9题', '简单', '考研数学1992年卷5真题', '设$α_{1}$,$α_{2}$,$⋯$,$α_{m}$均为$n$维向量，那么下列结论正确的是', '[''若$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{m}α_{m} = 0$， 则$α_{1}$,$α_{2}$,$⋯$,$α_{m}$线性相关．'', ''若对任意一组不全为零的数$k_{1}$,$k_{2}$,$⋯$,$k_{m}$， 都有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{m}α_{m} \\\\neq 0$， 则$α_{1}$,$α_{2}$,$⋯$,$α_{m}$线性无关．'', ''若$α_{1}$,$α_{2}$,$⋯$,$α_{m}$线性相关， 则对任意一组不全为零的数$k_{1}$,$k_{2}$,$⋯$,$k_{m}$， 都有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{m}α_{m} = 0$．'', ''若$0α_{1} + 0α_{2} + ⋯ + 0α_{m} = 0$， 则$α_{1}$,$α_{2}$,$⋯$,$α_{m}$线性无关．'']', "['B']", '线性无关的定义是：向量组$α_{1}, α_{2}, ⋯  , α_{m}$线性无关当且仅当仅当$k_{1} = k_{2} = ⋯ = k_{m} = 0$时，有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{m}α_{m} = 0$。
选项 B 指出，如果对任意一组不全为零的数$k_{1}, k_{2}, ⋯  , k_{m}$，都有$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{m}α_{m} \\neq 0$，这意味着不存在不全为零的数使得线性组合为零，从而满足线性无关的定义，故 B 正确。
选项 A 错误，因为$k_{1}α_{1} + k_{2}α_{2} + ⋯ + k_{m}α_{m} = 0$可能发生在所有$k_{i}$为零时，不能推出线性相关；
选项 C 错误，因为线性相关只要求存在一组不全为零的数使线性组合为零，并非对任意不全为零的数都成立；
选项 D 错误，因为$0α_{1} + 0α_{2} + ⋯ + 0α_{m} = 0$恒成立，不能判断线性无关性。', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '628');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '628');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '628');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (629, '1992年考研数学卷5第10题', '', '考研数学1992年卷5真题', '/problems/other/606', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (630, '1992年考研数学卷5第11题', '简单', '考研数学1992年卷5真题', '求极限$\\lim_{x→1} \\frac{\\ln \\cos(x-1)}{1-\\sin \\frac{πx}{2}}$．', '[]', '$−\\frac{4}{π^{2}}$
', '令$t = x - 1$，则当$x → 1$时，$t → 0$。原极限化为：

$$
\\lim_{t→0} \\frac{\\ln \\cos t}{1 - \\sin (\\frac{π(t+1)}{2})} = \\lim_{t→0} \\frac{\\ln \\cos t}{1 - \\sin (\\frac{πt}{2} + \\frac{π}{2})}
$$

利用三角恒等式$\\sin (\\frac{πt}{2} + \\frac{π}{2}) = \\cos \\frac{πt}{2}$，分母变为$1 - \\cos \\frac{πt}{2}$。因此：

$$
\\lim_{t→0} \\frac{\\ln \\cos t}{1 - \\cos \\frac{πt}{2}}
$$

当$t → 0$时，使用等价无穷小：$\\ln \\cos t = \\ln(1 + (\\cos t - 1)) ∼ \\cos t - 1 ∼ −\\frac{t^{2}}{2}$，且$1 - \\cos \\frac{πt}{2} ∼ \\frac{1}{2} (\\frac{πt}{2})^{2} = \\frac{π^{2}t^{2}}{8}$。代入得：

$$
\\lim_{t→0} \\frac{−\\frac{t^{2}}{2}}{\\frac{π^{2}t^{2}}{8}} = \\lim_{t→0} (−\\frac{t^{2}}{2} ⋅ \\frac{8}{π^{2}t^{2}}) = −\\frac{4}{π^{2}}
$$

故极限为$−\\frac{4}{π^{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:08:28', 9, 'Mogullzr', '2026-01-29 14:08:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '630');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '630');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '630');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (631, '1992年考研数学卷5第12题', '', '考研数学1992年卷5真题', '/problems/other/609', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (632, '1992年考研数学卷5第13题', '简单', '考研数学1992年卷5真题', '求连续函数$f(x)$，使它满足$\\int_{0}^{1} f(tx)dt = f(x) + x \\sin x$．', '[]', '$f(x) = \\cos x - x \\sin x + C$，其中$C$为任意常数。
', '
令$u = tx$，则原式变成

$$
\\int_{0}^{x} f(u)du = xf(x) + x^{2} \\sin x.
$$

两端对$x$求导，得

$$
f^{′}(x) = −2 \\sin x - x \\cos x.
$$

积分得

$$
f(x) = \\cos x - x \\sin x + C,
$$

其中$C$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '632');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '632');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '632');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (633, '1992年考研数学卷5第14题', '', '考研数学1992年卷5真题', '/problems/other/610', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (634, '1992年考研数学卷5第15题', '简单', '考研数学1992年卷5真题', '设生产某产品的固定成本为$10$，而当产量为$x$时的边际成本函数为$MC = −40 - 20x + 3x^{2}$，
边际收入函数为$MR = 32 + 10x$，试求：(1) 总利润函数；(2) 使总利润最大的产量．', '[]', '
(1) 总利润函数为$π = −x^{3} + 15x^{2} + 72x - 10$
(2) 使总利润最大的产量为$x = 12$
', '
已知固定成本为$10$，边际成本函数$MC = −40 - 20x + 3x^{2}$，边际收入函数$MR = 32 + 10x$。
首先，求总收入函数$TR$。由于$MR$是$TR$的导数，积分$MR$得：


$$
TR = ∫(32 + 10x) dx = 32x + 5x^{2} + C
$$

当产量$x = 0$时，收入应为$0$，故$C = 0$，即$TR = 32x + 5x^{2}$。
其次，求总成本函数$TC$。由于$MC$是$TC$的导数，积分$MC$得可变成本，再加固定成本：


$$
∫(−40 - 20x + 3x^{2}) dx = −40x - 10x^{2} + x^{3} + K
$$

当$x = 0$时，$TC = 10$，代入得$K = 10$，故$TC = x^{3} - 10x^{2} - 40x + 10$。
总利润函数$π = TR - TC$：


$$
π = (32x + 5x^{2}) - (x^{3} - 10x^{2} - 40x + 10) = −x^{3} + 15x^{2} + 72x - 10
$$

为求最大利润，取一阶导数并令为零：


$$
π^{′} = −3x^{2} + 30x + 72 = 0
$$

解得$x^{2} - 10x - 24 = 0$，根为$x = 12$或$x = −2$（舍去负值）。
二阶导数$π^{′′} = −6x + 30$，在$x = 12$时$π^{′′} = −42 < 0$，故为最大值。
因此，使总利润最大的产量为$x = 12$。
', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '634');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '634');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '634');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (635, '1992年考研数学卷5第16题', '简单', '考研数学1992年卷5真题', '求证：方程$x + p + q \\cos x = 0$恰有一个实根，其中$p$,$q$为常数，且$0 < q < 1$．', '[]', '
方程$x + p + q \\cos x = 0$恰有一个实根。
', '
考虑函数$f(x) = x + p + q \\cos x$。其导数为$f^{′}(x) = 1 - q \\sin x$。由于$0 < q < 1$，有$∣q \\sin x∣ ≤ q < 1$，因此$f^{′}(x) ≥ 1 - q > 0$，即$f(x)$在全体实数上严格单调递增。
又因为$\\lim_{x→−∞} f(x) = −∞$，$\\lim_{x→+∞} f(x) = +∞$，且$f(x)$连续，由中间值定理可知，存在唯一的$x$使得$f(x) = 0$。
因此原方程恰有一个实根。
', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '635');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '635');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '635');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (636, '1992年考研数学卷5第17题', '简单', '考研数学1992年卷5真题', '给定曲线$y = \\frac{1}{x^{2}}$．(1) 求曲线在横坐标为$x_{0}$的点处的切线方程；(2) 求曲线的切线被两坐标轴所截线段的最短长度．', '[]', '
(1) 切线方程为$y = −\\frac{2}{x_{0}^{3}}x + \\frac{3}{x_{0}^{2}}$。
(2) 最短长度为$\\frac{3\\sqrt{3}}{2}$。
', '
(1) 曲线$y = \\frac{1}{x^{2}}$的导数为$y^{′} = −\\frac{2}{x^{3}}$。在点$x_{0}$处，斜率为$−\\frac{2}{x_{0}^{3}}$，切点为$(x_{0}, \\frac{1}{x_{0}^{2}})$。切线方程为


$$
y - \\frac{1}{x_{0}^{2}} = −\\frac{2}{x_{0}^{3}}(x - x_{0}),
$$

化简得


$$
y = −\\frac{2}{x_{0}^{3}}x + \\frac{3}{x_{0}^{2}}.
$$

(2) 切线的$x$截距可通过令$y = 0$求得，解得$x = \\frac{3}{2}x_{0}$；$y$截距可通过令$x = 0$求得，解得$y = \\frac{3}{x_{0}^{2}}$。被两坐标轴所截线段的长度为


$$
L = \\sqrt{(\\frac{3}{2}x_{0})^{2} + (\\frac{3}{x_{0}^{2}})^{2}} = \\sqrt{\\frac{9}{4}x_{0}^{2} + \\frac{9}{x_{0}^{4}}} = 3\\sqrt{\\frac{x_{0}^{2}}{4} + \\frac{1}{x_{0}^{4}}}.
$$

令


$$
f(x_{0}) = \\frac{x_{0}^{2}}{4} + \\frac{1}{x_{0}^{4}},
$$

求其最小值。对$f(x_{0})$求导得


$$
f^{′}(x_{0}) = \\frac{x_{0}}{2} - \\frac{4}{x_{0}^{5}},
$$

令导数为零，有


$$
\\frac{x_{0}}{2} = \\frac{4}{x_{0}^{5}},
$$

即$x_{0}^{6} = 8$，解得$x_{0} = \\sqrt{2}$（取$x_{0} > 0$）。代入$L$得


$$
L = 3\\sqrt{} = 3\\sqrt{\\frac{2}{4} + \\frac{1}{4}} = 3\\sqrt{\\frac{3}{4}} = \\frac{3\\sqrt{3}}{2}.
$$

故最短长度为$\\frac{3\\sqrt{3}}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '636');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '636');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '636');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (637, '1992年考研数学卷5第18题', '简单', '考研数学1992年卷5真题', '设$A$,$B$为$3$阶方阵，$E$为$3$阶单位阵，满足$AB + E = A^{2} + B$，又知$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，求矩阵$B$．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
2 & 0 & 1 \\\\
0 & 3 & 0 \\\\
1 & 0 & 2 \\\\
\\end{array} \\right)
$$

', '由方程$AB + E = A^{2} + B$，移项得$AB - B = A^{2} - E$，即$(A - E)B = A^{2} - E$。
给定$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，计算$A - E = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)$。
计算$A^{2} = \\left( \\begin{array}{ccc}
2 & 0 & 2 \\\\
0 & 4 & 0 \\\\
2 & 0 & 2 \\\\
\\end{array} \\right)$，则$A^{2} - E = \\left( \\begin{array}{ccc}
1 & 0 & 2 \\\\
0 & 3 & 0 \\\\
2 & 0 & 1 \\\\
\\end{array} \\right)$。
由于$A - E$可逆（行列式为$−1$），且$(A - E)−1 = A - E$，故$B = (A - E)−1(A^{2} - E) = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 0 & 2 \\\\
0 & 3 & 0 \\\\
2 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 0 & 1 \\\\
0 & 3 & 0 \\\\
1 & 0 & 2 \\\\
\\end{array} \\right)$。
验证：计算$AB + E$和$A^{2} + B$，两者均等于$\\left( \\begin{array}{ccc}
4 & 0 & 3 \\\\
0 & 7 & 0 \\\\
3 & 0 & 4 \\\\
\\end{array} \\right)$，符合原方程。
', 9, 'Mogullzr', '2026-01-29 14:08:29', 9, 'Mogullzr', '2026-01-29 14:08:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '637');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '637');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '637');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (638, '1992年考研数学卷5第19题', '简单', '考研数学1992年卷5真题', '设线性方程组$\\begin{cases} x_{1} + 2x_{2} - 2x_{3} = 0 \\\\ 2x_{1} - x_{2} + λx_{3} = 0 \\\\ 3x_{1} + x_{2} - x_{3} = 0 \\end{cases}$的系数矩阵为$A$，三阶矩阵$B \\neq 0$，且$AB = 0$．试求求$λ$的值．', '[]', '1
', '给定线性方程组的系数矩阵为$A = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & −1 & λ \\\\
3 & 1 & −1 \\\\
\\end{array} \\right)$，且存在三阶非零矩阵$B$满足$AB = 0$。这意味着$B$的每一列都是齐次方程组$AX = 0$的解向量。由于$B \\neq 0$，方程组存在非零解，因此$A$必须是奇异矩阵，即$det(A) = 0$。
计算行列式：

$$
det(A) = \\begin{vmatrix}
1 & 2 & −2\\\\
2 & −1 & λ\\\\
3 & 1 & −1
\\end{vmatrix} = 1 ⋅ \\begin{vmatrix}
−1 & λ\\\\
1 & −1
\\end{vmatrix} - 2 ⋅ \\begin{vmatrix}
2 & λ\\\\
3 & −1
\\end{vmatrix} + (−2) ⋅ \\begin{vmatrix}
2 & −1\\\\
3 & 1
\\end{vmatrix}
$$

其中：

$$
\\begin{vmatrix}
−1 & λ\\\\
1 & −1
\\end{vmatrix} = (−1)(−1) - (λ)(1) = 1 - λ,
$$



$$
\\begin{vmatrix}
2 & λ\\\\
3 & −1
\\end{vmatrix} = (2)(−1) - (λ)(3) = −2 - 3λ,
$$



$$
\\begin{vmatrix}
2 & −1\\\\
3 & 1
\\end{vmatrix} = (2)(1) - (−1)(3) = 2 + 3 = 5.
$$

代入得：

$$
det(A) = (1 - λ) - 2(−2 - 3λ) - 2 ⋅ 5 = 1 - λ + 4 + 6λ - 10 = −5 + 5λ.
$$

设$det(A) = 0$：

$$
−5 + 5λ = 0  ⟹  λ = 1.
$$

当$λ = 1$时，$A$奇异，方程组存在非零解，因此存在非零矩阵$B$满足$AB = 0$。故$λ$的值为 1。
', 9, 'Mogullzr', '2026-01-29 14:08:30', 9, 'Mogullzr', '2026-01-29 14:08:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '638');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '638');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (639, '1992年考研数学卷5第20题', '简单', '考研数学1992年卷5真题', '已知实矩阵$A = (a_{ij})3×3​$满足条件：(1)$A_{ij} = a_{ij}$（$i, j = 1, 2, 3$），其中$A_{ij}$是$a_{ij}$的代数余子式；(2)$a_{11} \\neq 0$．计算行列式$∣A∣$．', '[]', '$∣A∣ = 1$
', '
由条件 (1) 可知，伴随矩阵$adj(A)$满足$adj(A) = A^{T}$。
根据矩阵性质，有$A ⋅ adj(A) = ∣A∣I$，代入得$AA^{T} = ∣A∣I$。
取行列式：
左边$∣AA^{T}∣ = ∣A∣∣A^{T}∣ = ∣A∣^{2}$，
右边$∣∣A∣I∣ = ∣A∣^{3}∣I∣ = ∣A∣^{3}$。
因此，$∣A∣^{2} = ∣A∣^{3}$，即$∣A∣^{2}(∣A∣ - 1) = 0$，
解得$∣A∣ = 0$或$∣A∣ = 1$。
若$∣A∣ = 0$，则$AA^{T} = 0$。
考虑$AA^{T}$的对角线元素，例如第$i$行对角元素为$\\sum_{j} a_{ij}^{2}$，
由于$AA^{T} = 0$，所有对角线元素为零，故$\\sum_{j} a_{ij}^{2} = 0$对所有$i$成立，
这意味着所有$a_{ij} = 0$，与条件 (2)$a_{11} \\neq 0$矛盾。
因此，$∣A∣ \\neq 0$，
故$∣A∣ = 1$。
', 9, 'Mogullzr', '2026-01-29 14:08:30', 9, 'Mogullzr', '2026-01-29 14:08:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '639');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '639');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (640, '1992年考研数学卷5第21题', '', '考研数学1992年卷5真题', '/problems/other/617', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:30', 9, 'Mogullzr', '2026-01-29 14:08:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (641, '1992年考研数学卷5第22题', '', '考研数学1992年卷5真题', '/problems/other/618', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:30', 9, 'Mogullzr', '2026-01-29 14:08:30', 0, 4);
