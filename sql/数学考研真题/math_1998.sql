INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1140, '1998年考研数学卷1第1题', '简单', '考研数学1998年卷1真题', '
$$
\\lim_{x→0} \\frac{\\sqrt{1 + x} + \\sqrt{1 - x} - 2}{x^{2}} =
$$
', '[]', '
$−\\frac{1}{4}$
', '
考虑泰勒展开：当$x → 0$时，$\\sqrt{1 + x} = 1 + \\frac{x}{2} - \\frac{x^{2}}{8} + O(x^{3})$，$\\sqrt{1 - x} = 1 - \\frac{x}{2} - \\frac{x^{2}}{8} + O(x^{3})$。
代入分子：


$$
\\sqrt{1 + x} + \\sqrt{1 - x} - 2 = (1 + \\frac{x}{2} - \\frac{x^{2}}{8}) + (1 - \\frac{x}{2} - \\frac{x^{2}}{8}) - 2 = −\\frac{x^{2}}{4} + O(x^{3})
$$

因此，


$$
\\frac{\\sqrt{1 + x} + \\sqrt{1 - x} - 2}{x^{2}} = \\frac{−\\frac{x^{2}}{4} + O(x^{3})}{x^{2}} = −\\frac{1}{4} + O(x)
$$

当$x → 0$时，$O(x) → 0$，故极限为$−\\frac{1}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:10:41', 9, 'Mogullzr', '2026-01-29 14:10:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1140');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1140');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1140');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1141, '1998年考研数学卷1第2题', '简单', '考研数学1998年卷1真题', '设$z = \\frac{1}{x}f(xy) + yφ(x + y)$，$f, φ$具有二阶连续导数，
则$\\frac{∂^{2}z}{∂x∂y} =$______．', '[]', '

$$
yf^{′′}(xy) + φ^{′}(x + y) + yφ^{′′}(x + y)
$$

', '给定$z = \\frac{1}{x}f(xy) + yφ(x + y)$，其中$f$和$φ$具有二阶连续导数。计算混合偏导数$\\frac{∂^{2}z}{∂x∂y}$。
先对$y$求偏导：

$$
\\frac{∂z}{∂y} = \\frac{∂}{∂y}  \\lbrack \\frac{1}{x}f(xy) \\rbrack  + \\frac{∂}{∂y}  \\lbrack yφ(x + y) \\rbrack  = \\frac{1}{x} ⋅ xf^{′}(xy) +  \\lbrack φ(x + y) + yφ^{′}(x + y) \\rbrack  = f^{′}(xy) + φ(x + y) + yφ^{′}(x + y).
$$

再对$x$求偏导：

$$
\\frac{∂}{∂x} (\\frac{∂z}{∂y}) = \\frac{∂}{∂x}  \\lbrack f^{′}(xy) \\rbrack  + \\frac{∂}{∂x}  \\lbrack φ(x + y) \\rbrack  + \\frac{∂}{∂x}  \\lbrack yφ^{′}(x + y) \\rbrack  = yf^{′′}(xy) + φ^{′}(x + y) + yφ^{′′}(x + y).
$$

因此，$\\frac{∂^{2}z}{∂x∂y} = yf^{′′}(xy) + φ^{′}(x + y) + yφ^{′′}(x + y)$.
', 9, 'Mogullzr', '2026-01-29 14:10:41', 9, 'Mogullzr', '2026-01-29 14:10:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1141');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1141');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1141');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1142, '1998年考研数学卷1第3题', '简单', '考研数学1998年卷1真题', '设$L$为椭圆$\\frac{x^{2}}{4} + \\frac{y^{2}}{3} = 1$，其周长记为$a$，
则$∮_{L}(2xy + 3x^{2} + 4y^{2})ds =$______．', '[]', '$12a$
', '
考虑曲线积分$∮_{L}(2xy + 3x^{2} + 4y^{2}) ds$，其中$L$是椭圆$\\frac{x^{2}}{4} + \\frac{y^{2}}{3} = 1$，周长记为$a$。
由于椭圆关于$x$轴和$y$轴对称，函数$2xy$关于$x$轴和$y$轴均为奇函数，因此$∮_{L} 2xy ds = 0$。
剩余部分为$∮_{L}(3x^{2} + 4y^{2}) ds$。
利用椭圆的参数化：$x = 2 \\cos t$,$y = \\sqrt{3} \\sin t$,$t ∈  \\lbrack 0, 2π \\rbrack$，弧长元素为$ds = \\sqrt{(\\frac{dx}{dt})^{2} + (\\frac{dy}{dt})^{2}} dt = \\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt$。
则：


$$
∮_{L} 3x^{2} ds = 3 \\int_{0}^{2π}(2 \\cos t)2\\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt = 12 \\int_{0}^{2π} \\cos^{2} t\\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt,
$$



$$
∮_{L} 4y^{2} ds = 4 \\int_{0}^{2π}(\\sqrt{3} \\sin t)2\\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt = 12 \\int_{0}^{2π} \\sin^{2} t\\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt.
$$

相加得：


$$
∮_{L}(3x^{2} + 4y^{2}) ds = 12 \\int_{0}^{2π}(\\cos^{2} t + \\sin^{2} t)\\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt = 12 \\int_{0}^{2π} \\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt.
$$

其中$\\int_{0}^{2π} \\sqrt{4 \\sin^{2} t + 3 \\cos^{2} t} dt = a$，即椭圆周长。
因此，


$$
∮_{L}(2xy + 3x^{2} + 4y^{2}) ds = 12a.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:41', 9, 'Mogullzr', '2026-01-29 14:10:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1142');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1142');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1142');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1143, '1998年考研数学卷1第4题', '简单', '考研数学1998年卷1真题', '设$A$为$n$阶矩阵，$∣A∣ \\neq 0$，$A^{∗}$为$A$的伴随矩阵，$E$为$n$阶单位矩阵．
若$A$有特征值$λ$，则$(A^{∗})2 + E$必有特征值 ______．', '[]', '


$$
\\frac{∣A∣^{2}}{λ^{2}} + 1
$$

', '
由于$∣A∣ \\neq 0$，矩阵$A$可逆，且伴随矩阵$A^{∗} = ∣A∣A^{−1}$。
若$A$有特征值$λ$，则$A^{−1}$有特征值$λ^{−1}$，因此$A^{∗}$有特征值$∣A∣λ^{−1}$。
于是，$(A^{∗})2$有特征值$(∣A∣λ^{−1})2 = ∣A∣^{2}λ^{−2}$。
进而，$(A^{∗})2 + E$有特征值$∣A∣^{2}λ^{−2} + 1$。
故$(A^{∗})2 + E$必有特征值$\\frac{∣A∣^{2}}{λ^{2}} + 1$。
', 9, 'Mogullzr', '2026-01-29 14:10:42', 9, 'Mogullzr', '2026-01-29 14:10:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1143');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1143');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1143');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1144, '1998年考研数学卷1第5题', '简单', '考研数学1998年卷1真题', '设平面区域$D$由曲线$y = \\frac{1}{x}$及直线$y = 0, x = 1, x = e^{2}$所围成，
二维随机变量$(X, Y)$在区域$D$上服从均匀分布，则$(X, Y)$关于$X$的边缘概率密度在$x = 2$处的值为 ______．', '[]', '$\\frac{1}{4}$
', '区域$D$由曲线$y = \\frac{1}{x}$及直线$y = 0, x = 1, x = e^{2}$所围成，其面积计算如下：

$$
A = \\int_{1}^{e^{2}} \\int_{0}^{\\frac{1}{x}} dy dx = \\int_{1}^{e^{2}} \\frac{1}{x} dx =  \\lbrack \\ln x \\rbrack _{1}^{e^{2}} = \\ln(e^{2}) - \\ln(1) = 2 - 0 = 2
$$

由于二维随机变量$(X, Y)$在区域$D$上服从均匀分布，联合概率密度函数为：

$$
f_{X,Y}(x, y) = \\frac{1}{A} = \\frac{1}{2},  (x, y) ∈ D
$$

关于$X$的边缘概率密度函数通过对$y$积分得到：
对于$x ∈  \\lbrack 1, e^{2} \\rbrack$，

$$
f_{X}(x) = \\int_{0}^{\\frac{1}{x}} f_{X,Y}(x, y) dy = \\int_{0}^{\\frac{1}{x}} \\frac{1}{2} dy = \\frac{1}{2} ⋅ \\frac{1}{x} = \\frac{1}{2x}
$$

对于$x = 2$，由于$2 ∈  \\lbrack 1, e^{2} \\rbrack$，代入得：

$$
f_{X}(2) = \\frac{1}{2 × 2} = \\frac{1}{4}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:42', 9, 'Mogullzr', '2026-01-29 14:10:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1144');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1144');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1064', '1144');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1145, '1998年考研数学卷1第6题', '简单', '考研数学1998年卷1真题', '设$f(x)$连续，则$\\frac{d}{dx} \\int_{0}^{x} tf(x^{2} - t^{2})dt =$', '[''$xf(x^{2})$．'', ''$−xf(x^{2})$．'', ''$2xf(x^{2})$．'', ''$−2xf(x^{2})$．'']', "['A']", '考虑积分$I(x) = \\int_{0}^{x} tf(x^{2} - t^{2}) dt$。令$u = x^{2} - t^{2}$，则当$t = 0$时，$u = x^{2}$；当$t = x$时，$u = 0$。且$du = −2t dt$，即$t dt = −\\frac{1}{2}du$。代入积分得：
$$
I(x) = \\int_{0}^{x} tf(x^{2} - t^{2}) dt = \\int_{x^{2}}^{0} f(u) ⋅ (−\\frac{1}{2}) du = \\frac{1}{2} \\int_{0}^{x^{2}} f(u) du.
$$
于是，
$$
\\frac{d}{dx}I(x) = \\frac{d}{dx}  \\lbrack \\frac{1}{2} \\int_{0}^{x^{2}} f(u) du \\rbrack  = \\frac{1}{2} ⋅ f(x^{2}) ⋅ \\frac{d}{dx}(x^{2}) = \\frac{1}{2} ⋅ f(x^{2}) ⋅ 2x = xf(x^{2}).
$$
因此，正确答案为 A.$xf(x^{2})$。', 9, 'Mogullzr', '2026-01-29 14:10:42', 9, 'Mogullzr', '2026-01-29 14:10:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1145');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1145');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1145');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1146, '1998年考研数学卷1第7题', '简单', '考研数学1998年卷1真题', '函数$f(x) = (x^{2} - x - 2) ​x^{3} - x​$不可导点的个数是', '[''$3$．'', ''$2$．'', ''$1$．'', ''$0$．'']', "['B']", '函数$f(x) = (x^{2} - x - 2)∣x^{3} - x∣$的不可导点可能出现在绝对值内部为零的点，即$x^{3} - x = 0$的解$x = −1, 0, 1$。通过计算这些点的左导数和右导数：在$x = −1$处，左导数和右导数均为 0，因此可导。在$x = 0$处，左导数为 2，右导数为 -2，因此不可导。在$x = 1$处，左导数为 4，右导数为 -4，因此不可导。
其他点（如$x = 2$) 处函数为多项式，可导。因此，不可导点的个数为 2。', 9, 'Mogullzr', '2026-01-29 14:10:42', 9, 'Mogullzr', '2026-01-29 14:10:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1146');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1146');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1146');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1147, '1998年考研数学卷1第8题', '简单', '考研数学1998年卷1真题', '已知函数$y = y(x)$在任意点$x$处的增量$Δy = \\frac{yΔx}{1+x^{2}} + α$，
且当$Δx → 0$时，$α$是$Δx$的高阶无穷小，$y(0) = π$，则$y(1)$等于', '[''$2π$．'', ''$π$．'', ''$e^{\\\\frac{π}{4}}$．'', ''$πe^{\\\\frac{π}{4}}$．'']', "['D']", '
由题意，函数$y = y(x)$在任意点$x$处的增量为

$$
Δy = \\frac{yΔx}{1 + x^{2}} + α,
$$
其中当$Δx → 0$时，$α$是$Δx$的高阶无穷小。根据导数的定义，

$$
\\frac{dy}{dx} = \\lim_{Δx→0} \\frac{Δy}{Δx} = \\frac{y}{1 + x^{2}}.
$$
由此得到微分方程

$$
\\frac{dy}{dx} = \\frac{y}{1 + x^{2}}.
$$
该方程为可分离变量型，变形为

$$
\\frac{dy}{y} = \\frac{dx}{1 + x^{2}}.
$$
两边积分得

$$
\\ln ∣y∣ = arctan x + C.
$$
由初始条件$y(0) = π$，代入得

$$
\\ln π = arctan 0 + C  ⇒  C = \\ln π.
$$
因此

$$
\\ln y = arctan x + \\ln π,
$$
整理得

$$
\\ln (\\frac{y}{π}) = arctan x  ⇒  y = πe^{arctan x}.
$$
计算

$$
y(1) = πe^{arctan 1} = πe^{\\frac{π}{4}}.
$$
因此，正确答案为D。', 9, 'Mogullzr', '2026-01-29 14:10:42', 9, 'Mogullzr', '2026-01-29 14:10:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1147');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1147');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1147');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1148, '1998年考研数学卷1第9题', '简单', '考研数学1998年卷1真题', '设矩阵$\\left( \\begin{array}{ccc}
a_{1} & b_{1} & c_{1} \\\\
a_{2} & b_{2} & c_{2} \\\\
a_{3} & b_{3} & c_{3} \\\\
\\end{array} \\right)$是满秩的，
则直线$\\frac{x-a_{3}}{a_{1}-a_{2}} = \\frac{y-b_{3}}{b_{1}-b_{2}} = \\frac{z-c_{3}}{c_{1}-c_{2}}$与直线$\\frac{x-a_{1}}{a_{2}-a_{3}} = \\frac{y-b_{1}}{b_{2}-b_{3}} = \\frac{z-c_{1}}{c_{2}-c_{3}}$\\begin{abcd*}', '[''相交于一点．'', ''重合．'', ''平行但不重合．'', ''异面．'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:10:42', 9, 'Mogullzr', '2026-01-29 14:10:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1148');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1148');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1148');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1149, '1998年考研数学卷1第10题', '简单', '考研数学1998年卷1真题', '设$A, B$是两个随机事件，且$0 < P(A) < 1, P(B) > 0, P(B∣A) = P(B∣\\overline{A})$，则必有', '[''$P(A∣B) = P(\\\\overline{A}∣B)$．'', ''$P(A∣B) \\\\neq P(\\\\overline{A}∣B)$．'', ''$P(AB) = P(A)P(B)$．'', ''$P(AB) \\\\neq P(A)P(B)$．'']', "['C']", '给定条件$P(B∣A) = P(B∣\\overline{A})$，由条件概率定义，$P(B∣A) = \\frac{P(AB)}{P(A)}$和$P(B∣\\overline{A}) = \\frac{P(B\\overline{A})}{P(\\overline{A})}$。代入条件得：
$$
\\frac{P(AB)}{P(A)} = \\frac{P(B\\overline{A})}{P(\\overline{A})}
$$
其中$P(B\\overline{A}) = P(B) - P(AB)$和$P(\\overline{A}) = 1 - P(A)$，所以：
$$
\\frac{P(AB)}{P(A)} = \\frac{P(B) - P(AB)}{1 - P(A)}
$$
解方程：
$$
P(AB)(1 - P(A)) = P(A)(P(B) - P(AB))
$$

$$
P(AB) - P(AB)P(A) = P(A)P(B) - P(A)P(AB)
$$

$$
P(AB) = P(A)P(B)
$$
因此，$P(AB) = P(A)P(B)$，即事件$A$和$B$相互独立，故选项 C 正确。选项 A 和 B 涉及$P(A∣B)$和$P(\\overline{A}∣B)$，当$A$和$B$独立时，$P(A∣B) = P(A)$和$P(\\overline{A}∣B) = P(\\overline{A})$，但$P(A)$不一定等于$P(\\overline{A})$，因此 A 和 B 不一定成立。选项 D 与推导结果矛盾。', 9, 'Mogullzr', '2026-01-29 14:10:43', 9, 'Mogullzr', '2026-01-29 14:10:43', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1149');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1149');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1150, '1998年考研数学卷1第11题', '简单', '考研数学1998年卷1真题', '求直线$L : \\frac{x-1}{1} = \\frac{y}{1} = \\frac{z-1}{−1}$在平面$Π : x - y + 2z - 1 = 0$上的投影直线$L_{0}$的方程，
并求$L_{0}$绕$y$轴旋转一周所成曲面的方程．', '[]', '
投影直线$L_{0}$的方程为$\\begin{cases} x - 2y = 0 \\\\ y + 2z = 1 \\end{cases}$．
$L_{0}$绕$y$轴旋转一周所成曲面的方程为$4x^{2} + 4z^{2} - 17y^{2} + 2y - 1 = 0$．
', '
设过$L$且垂直于平面$Π$的平面为$Π_{0}$，则平面$Π_{0}$过直线$L$上的点$(1, 0, 1)$且与不共线的向量$l = (1, 1, −1)$（直线$L$的方向向量）及$n = (1, −1, 2)$（平面$Π$的法向量）平行，于是$Π_{0}$的方程是

$$
\\begin{vmatrix}
x - 1 & y & z - 1\\\\
1 & 1 & −1\\\\
1 & −1 & 2
\\end{vmatrix} = 0 ⇒ x - 3y - 2z + 1 = 0.
$$

从而投影直线$L_{0}$的方程为

$$
\\begin{cases} x - y + 2z - 1 = 0 \\\\ x - 3y - 2z + 1 = 0. \\end{cases}
$$

将$L_{0}$写成参数$y$的方程：

$$
\\begin{cases} x = 2y \\\\ z = \\frac{1}{2}(y - 1). \\end{cases}
$$

则绕$y$轴旋转一周所成曲面$S$的参数方程为

$$
\\begin{cases} x = \\sqrt{(2y)2 + (\\frac{1}{2}(1 - y))^{2}} \\cos θ \\\\ y = y \\\\ z = \\sqrt{(2y)2 + (\\frac{1}{2}(1 - y))^{2}} \\sin θ. \\end{cases}
$$

消去$θ$得$S$的一般方程为

$$
x^{2} + z^{2} = (2y)2 +  \\lbrack −\\frac{1}{2}(y - 1) \\rbrack ^{2} ,
$$

即$4x^{2} - 17y^{2} + 4z^{2} + 2y - 1 = 0$。
', 9, 'Mogullzr', '2026-01-29 14:10:43', 9, 'Mogullzr', '2026-01-29 14:10:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1150');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1150');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1150');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1151, '1998年考研数学卷1第12题', '简单', '考研数学1998年卷1真题', '确定常数$λ$，使在右半平面$x > 0$上的向量
$$
A(x, y) = 2xy(x^{4} + y^{2})λi - x^{2}(x^{4} + y^{2})λj
$$
为某二元函数$u(x, y)$的梯度，并求$u(x, y)$．', '[]', '$λ = −1$，$u(x, y) = − arctan (\\frac{y}{x^{2}})$
', '向量场$A(x, y) = 2xy(x^{4} + y^{2})λi - x^{2}(x^{4} + y^{2})λj$是某二元函数$u(x, y)$的梯度当且仅当$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，其中$P = 2xy(x^{4} + y^{2})λ$，$Q = −x^{2}(x^{4} + y^{2})λ$。计算偏导数：

$$
\\frac{∂P}{∂y} = 2x(x^{4} + y^{2})λ + 4xy^{2}λ(x^{4} + y^{2})λ−1,
$$



$$
\\frac{∂Q}{∂x} = −2x(x^{4} + y^{2})λ - 4x^{5}λ(x^{4} + y^{2})λ−1.
$$

令两者相等：

$$
2x(x^{4} + y^{2})λ + 4xy^{2}λ(x^{4} + y^{2})λ−1 = −2x(x^{4} + y^{2})λ - 4x^{5}λ(x^{4} + y^{2})λ−1.
$$

整理得：

$$
4x(x^{4} + y^{2})λ + 4xy^{2}λ(x^{4} + y^{2})λ−1 + 4x^{5}λ(x^{4} + y^{2})λ−1 = 0.
$$

除以$4x$（因$x > 0$）：

$$
(x^{4} + y^{2})λ + y^{2}λ(x^{4} + y^{2})λ−1 + x^{4}λ(x^{4} + y^{2})λ−1 = 0.
$$

即：

$$
(1 + λ)(x^{4} + y^{2})λ = 0.
$$

由于$(x^{4} + y^{2})λ > 0$，有$1 + λ = 0$，故$λ = −1$。
代入$λ = −1$，得$A(x, y) = \\frac{2xy}{x^{4}+y^{2}}i - \\frac{x^{2}}{x^{4}+y^{2}}j$。求$u(x, y)$使得$∇u = A$。由$\\frac{∂u}{∂y} = −\\frac{x^{2}}{x^{4}+y^{2}}$，积分得：

$$
u(x, y) = ∫ −\\frac{x^{2}}{x^{4} + y^{2}} dy = −x^{2} ∫ \\frac{1}{x^{4} + y^{2}} dy = −x^{2} ⋅ \\frac{1}{x^{2}} arctan (\\frac{y}{x^{2}}) + C(x) = − arctan (\\frac{y}{x^{2}}) + C(x),
$$

其中$C(x)$为$x$的函数。由$\\frac{∂u}{∂x} = \\frac{2xy}{x^{4}+y^{2}}$，计算：

$$
\\frac{∂u}{∂x} = \\frac{∂}{∂x}  \\lbrack − arctan (\\frac{y}{x^{2}}) \\rbrack  = \\frac{2xy}{x^{4} + y^{2}} + C^{′}(x).
$$

与$P$比较得$C^{′}(x) = 0$，故$C(x)$为常数，取$C = 0$，则$u(x, y) = − arctan (\\frac{y}{x^{2}})$。验证$\\frac{∂u}{∂y} = −\\frac{x^{2}}{x^{4}+y^{2}} = Q$，符合要求。
', 9, 'Mogullzr', '2026-01-29 14:10:43', 9, 'Mogullzr', '2026-01-29 14:10:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1151');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1151');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '1151');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1152, '1998年考研数学卷1第13题', '简单', '考研数学1998年卷1真题', '从船上向海中沉放某种探测仪器，按探测要求，需确定仪器的下沉深度$y$(从海平面算起)与下沉速度$v$之间的函数关系．设仪器在重力作用下，从海平面由静止开始铅直下沉，在下沉过程中还受到阻力和浮力的作用．
设仪器的质量为$m$，体积为$B$，海水比重为$ρ$，仪器所受的阻力与下沉速度成正比，
比例系数为$k$（$k > 0$）．试建立$y$与$v$所满足的微分方程，并求出函数关系式$y = y(v)$．', '[]', '$y = −\\frac{m}{k}v + \\frac{m(mg-ρgB)}{k^{2}} \\ln (\\frac{mg-ρgB}{mg-ρgB-kv})$
', '根据牛顿第二定律，仪器在下沉过程中受到的净力为$mg - ρgB - kv$，其中$mg$为重力，$ρgB$为浮力，$kv$为阻力。由牛顿第二定律可得：

$$
m\\frac{dv}{dt} = mg - ρgB - kv
$$

利用链式法则$\\frac{dv}{dt} = v\\frac{dv}{dy}$，代入上式得：

$$
mv\\frac{dv}{dy} = mg - ρgB - kv
$$

整理得到$y$与$v$的微分方程：

$$
\\frac{dy}{dv} = \\frac{mv}{mg - ρgB - kv}
$$

对上述微分方程积分求解。令$A = mg - ρgB$，则：

$$
\\frac{dy}{dv} = \\frac{mv}{A - kv}
$$

积分得：

$$
y = ∫ \\frac{mv}{A - kv} dv = m ∫ \\frac{v}{A - kv} dv
$$

计算积分：

$$
∫ \\frac{v}{A - kv} dv = −\\frac{1}{k} ∫ \\frac{−kv}{A - kv} dv = −\\frac{1}{k} ∫ (1 - \\frac{A}{A - kv}) dv = −\\frac{1}{k}v + \\frac{A}{k} ∫ \\frac{1}{A - kv} dv
$$

其中：

$$
∫ \\frac{1}{A - kv} dv = −\\frac{1}{k} \\ln ∣A - kv∣
$$

所以：

$$
∫ \\frac{v}{A - kv} dv = −\\frac{1}{k}v - \\frac{A}{k^{2}} \\ln ∣A - kv∣
$$

代入得：

$$
y = m (−\\frac{1}{k}v - \\frac{A}{k^{2}} \\ln ∣A - kv∣) + C = −\\frac{m}{k}v - \\frac{mA}{k^{2}} \\ln ∣A - kv∣ + C
$$

其中$C$为积分常数。由初始条件$y = 0$时$v = 0$：

$$
0 = −\\frac{m}{k} ⋅ 0 - \\frac{mA}{k^{2}} \\ln ∣A∣ + C  ⟹  C = \\frac{mA}{k^{2}} \\ln A
$$

由于$A = mg - ρgB > 0$（仪器下沉），且$A - kv > 0$对于$v < \\frac{A}{k}$（终端速度），代入$C$得：

$$
y = −\\frac{m}{k}v - \\frac{mA}{k^{2}} \\ln(A - kv) + \\frac{mA}{k^{2}} \\ln A = −\\frac{m}{k}v + \\frac{mA}{k^{2}} \\ln (\\frac{A}{A - kv})
$$

将$A = mg - ρgB$代回，得函数关系式：

$$
y = −\\frac{m}{k}v + \\frac{m(mg - ρgB)}{k^{2}} \\ln (\\frac{mg - ρgB}{mg - ρgB - kv})
$$

', 9, 'Mogullzr', '2026-01-29 14:10:44', 9, 'Mogullzr', '2026-01-29 14:10:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1152');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1152');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1074', '1152');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1153, '1998年考研数学卷1第14题', '简单', '考研数学1998年卷1真题', '计算$\\iint_{Σ} \\frac{axdydz+(z+a)2dxdy}{(x^{2}+y^{2}+z^{2})21​}$，
其中$Σ$为下半球面$z = −\\sqrt{a^{2} - x^{2} - y^{2}}$的上侧，$a$为大于零的常数．', '[]', '
$−\\frac{π}{2}a^{3}$
', '
由于被积函数分母中包含$(x^{2} + y^{2} + z^{2})21​$，因此不能立即添加辅助面，需先将曲面方程代入被积表达式先化简：

$$
I = \\iint_{Σ} \\frac{axdydz + (z + a)2dxdy}{(x^{2} + y^{2} + z^{2})21​} = \\frac{1}{a} \\iint_{Σ} axdydz + (z + a)2dxdy.
$$

添加辅助面$Σ_{1}$：$\\begin{cases} x^{2} + y^{2} ≤ a^{2} \\\\ z = 0 \\end{cases}$，其侧向下，则由高斯公式有

$$
I = \\frac{1}{a} \\iint_{Σ+Σ_{1}} axdydz + (z + a)2dxdy - \\frac{1}{a} \\iint_{Σ_{1}} axdydz + (z + a)2dxdy
$$


$$
= \\frac{1}{a} (− \\iint_{Ω} (\\frac{∂(ax)}{∂x} + \\frac{∂ \\lbrack (z + a)2 \\rbrack }{∂z}) dV - (− \\iint_{D} a^{2}dxdy))
$$


$$
= \\frac{1}{a} (− \\iint_{Ω} (a + 2(z + a)) dV + \\iint_{D} a^{2}dxdy) ,
$$

其中$Ω$为$Σ$与$Σ_{1}$所围成的有界闭区域，$D = \\{(x, y)∣x^{2} + y^{2} ≤ a^{2}\\}$为$Σ_{1}$在$xOy$面上的投影。从而

$$
I = \\frac{1}{a} (−3a \\iiint_{Ω} dv - 2 \\iiint_{Ω} zdv + a^{2} \\iint_{D} dxdy)
$$


$$
= \\frac{1}{a} (−3a ⋅ \\frac{2}{3}πa^{3} - 2 \\int_{0}^{2π} dθ \\int_{0}^{a} rdr \\int_{−\\sqrt{a^{2}-r^{2}}}^{0} zdz + a^{2} ⋅ πa^{2})
$$


$$
= \\frac{1}{a} (−2πa^{4} + \\int_{0}^{2π} dθ \\int_{0}^{a}(a^{2}r - r^{3})dr) = \\frac{1}{a} (−2πa^{4} + 2π ⋅ \\frac{a^{4}}{4}) = −\\frac{π}{2}a^{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:44', 9, 'Mogullzr', '2026-01-29 14:10:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1153');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1153');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1153');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1154, '1998年考研数学卷1第15题', '简单', '考研数学1998年卷1真题', '
$$
\\lim_{n→∞} (\\frac{\\sin \\frac{π}{n}}{n + 1\\neq} + \\frac{\\sin \\frac{2π}{n}}{n + \\frac{1}{2}} + ⋯ + \\frac{\\sin π\\neq}{n + \\frac{1}{n}})
$$
', '[]', '$\\frac{2}{π}$
', '考虑和式$S_{n} = \\sum_{k=1}^{n} \\frac{\\sin \\frac{kπ}{n}}{n+\\frac{1}{k}}$。当$n → ∞$时，分母$n + \\frac{1}{k}$近似于$n$，因为$\\frac{1}{k}$有界且相对于$n$很小。定义标准黎曼和$T_{n} = \\frac{1}{n} \\sum_{k=1}^{n} \\sin \\frac{kπ}{n}$，其极限为$\\int_{0}^{1} \\sin(πx) dx = \\frac{2}{π}$。
计算$S_{n}$与$T_{n}$的差值：

$$
∣S_{n} - T_{n}∣ = ​\\sum_{k=1}^{n} \\sin \\frac{kπ}{n} (\\frac{1}{n + \\frac{1}{k}} - \\frac{1}{n})​ ≤ \\sum_{k=1}^{n} ​\\sin \\frac{kπ}{n}​ ​\\frac{1}{n + \\frac{1}{k}} - \\frac{1}{n}​ .
$$

其中，

$$
​\\frac{1}{n + \\frac{1}{k}} - \\frac{1}{n}​ = ​\\frac{−\\frac{1}{k}}{n(n + \\frac{1}{k})}​ ≤ \\frac{1}{kn^{2}},
$$

所以

$$
∣S_{n} - T_{n}∣ ≤ \\sum_{k=1}^{n} \\frac{1}{kn^{2}} = \\frac{1}{n^{2}} \\sum_{k=1}^{n} \\frac{1}{k} ∼ \\frac{\\ln n}{n^{2}} → 0 (n → ∞).
$$

因此，$S_{n} - T_{n} → 0$，故$\\lim_{n→∞} S_{n} = \\lim_{n→∞} T_{n} = \\int_{0}^{1} \\sin(πx) dx = \\frac{2}{π}$。
\\boxed{\\dfrac{2}{\\pi}}
', 9, 'Mogullzr', '2026-01-29 14:10:44', 9, 'Mogullzr', '2026-01-29 14:10:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1154');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1154');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1154');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1155, '1998年考研数学卷1第16题', '简单', '考研数学1998年卷1真题', '设正项数列$\\{a_{n}\\}$单调减少，且$\\sum_{n=1}^{∞}(−1)na_{n}$发散，
试问级数$\\sum_{n=1}^{∞} (\\frac{1}{a_{n}+1})^{n}$是否收敛？并说明理由．', '[]', '收敛
', '由于$\\{a_{n}\\}$是正项单调减少数列，故极限$\\lim_{n→∞} a_{n} = L$存在且$L ≥ 0$。若$L = 0$，则由莱布尼茨判别法，级数$\\sum_{n=1}^{∞}(−1)na_{n}$收敛，与已知条件发散矛盾，故$L > 0$。于是存在正整数$N$，使得当$n > N$时，$a_{n} > \\frac{L}{2}$。从而有

$$
(\\frac{1}{a_{n} + 1})^{n} < (\\frac{1}{1 + \\frac{L}{2}})^{n} .
$$

由于$0 < \\frac{1}{1+\\frac{L}{2}} < 1$，级数$\\sum_{n=1}^{∞} (\\frac{1}{1+\\frac{L}{2}})^{n}$收敛，由比较判别法知级数$\\sum_{n=1}^{∞} (\\frac{1}{a_{n}+1})^{n}$收敛。
', 9, 'Mogullzr', '2026-01-29 14:10:44', 9, 'Mogullzr', '2026-01-29 14:10:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1155');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1155');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1155');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1156, '1998年考研数学卷1第17题', '简单', '考研数学1998年卷1真题', '设$y = f(x)$是区间$\\lbrack 0, 1 \\rbrack$上的任一非负连续函数．(1) 试证存在$x_{0} ∈ (0, 1)$，使得在区间$\\lbrack 0, x_{0} \\rbrack$上以$f(x_{0})$为高的矩形面积，
等于在区间$\\lbrack x_{0}, 1 \\rbrack$上以$y = f(x)$为曲边的梯形面积．(2) 又设$f(x)$在区间$(0, 1)$内可导，且$f^{′}(x) > −\\frac{2f(x)}{x}$，证明(I)中的$x_{0}$是唯一的．', '[]', '
(1) 存在$x_{0} ∈ (0, 1)$使得$x_{0}f(x_{0}) = \\int_{x_{0}}^{1} f(t) dt$。
(2) 在给定条件下，这样的$x_{0}$是唯一的。
', '
(1) 定义函数$A(x) = xf(x) - \\int_{x}^{1} f(t) dt$，则需证存在$x_{0} ∈ (0, 1)$使得$A(x_{0}) = 0$。考虑函数$H(x) = \\int_{0}^{x} A(t) dt$。由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，故$A(x)$连续，$H(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导。计算得：

$$
H(0) = \\int_{0}^{0} A(t) dt = 0,
$$



$$
H(1) = \\int_{0}^{1} A(t) dt = \\int_{0}^{1}  \\lbrack tf(t) - \\int_{t}^{1} f(s) ds \\rbrack  dt.
$$

交换积分次序：

$$
\\int_{0}^{1} \\int_{t}^{1} f(s) ds dt = \\int_{0}^{1} f(s) \\int_{0}^{s} dt ds = \\int_{0}^{1} f(s)s ds = \\int_{0}^{1} tf(t) dt.
$$

因此，

$$
H(1) = \\int_{0}^{1} tf(t) dt - \\int_{0}^{1} tf(t) dt = 0.
$$

故$H(0) = H(1) = 0$。由罗尔定理，存在$x_{0} ∈ (0, 1)$使得$H^{′}(x_{0}) = 0$。而$H^{′}(x) = A(x)$，所以$A(x_{0}) = 0$，即存在$x_{0} ∈ (0, 1)$满足要求。
(2) 假设$f(x)$在$(0, 1)$内可导，且$f^{′}(x) > −\\frac{2f(x)}{x}$。需证$A(x) = 0$在$(0, 1)$内只有一个解。计算$A(x)$的导数：

$$
A^{′}(x) = \\frac{d}{dx}  \\lbrack xf(x) - \\int_{x}^{1} f(t) dt \\rbrack  = f(x) + xf^{′}(x) + f(x) = 2f(x) + xf^{′}(x).
$$

由条件$f^{′}(x) > −\\frac{2f(x)}{x}$，两边乘$x$（因$x > 0$，不等号方向不变）得：

$$
xf^{′}(x) > −2f(x),
$$

即

$$
xf^{′}(x) + 2f(x) > 0,
$$

所以$A^{′}(x) > 0$在$(0, 1)$内成立。故$A(x)$在$(0, 1)$内严格递增。由(1)知存在至少一个$x_{0}$使$A(x_{0}) = 0$，结合严格递增性，这样的$x_{0}$唯一。
\\boxed{\\text{详见解析}}
', 9, 'Mogullzr', '2026-01-29 14:10:44', 9, 'Mogullzr', '2026-01-29 14:10:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1156');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1156');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1156');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1157, '1998年考研数学卷1第18题', '简单', '考研数学1998年卷1真题', '已知二次曲面方程$x^{2} + ay^{2} + z^{2} + 2bxy + 2xz + 2yz = 4$，可以经过正交变换
$$
\\left( \\begin{array}{c}
x \\\\
y \\\\
z \\\\
\\end{array} \\right) = P \\left( \\begin{array}{c}
ξ \\\\
η \\\\
ζ \\\\
\\end{array} \\right)
$$
化为椭圆柱面方程$η^{2} + 4ζ^{2} = 4$，求$a, b$的值和正交矩阵$P$．', '[]', '
$a = 3$，$b = 1$，正交矩阵$P = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{6}} \\\\
0 & \\frac{1}{\\sqrt{3}} & \\frac{2}{\\sqrt{6}} \\\\
−\\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{6}} \\\\
\\end{array} \\right)$
', '
二次曲面方程$x^{2} + ay^{2} + z^{2} + 2bxy + 2xz + 2yz = 4$的矩阵形式为$x^{T}Ax = 4$，其中$A = \\left( \\begin{array}{ccc}
1 & b & 1 \\\\
b & a & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$。经过正交变换$x = Pξ$，化为椭圆柱面方程$η^{2} + 4ζ^{2} = 4$，对应矩阵形式$ξ^{T}Bξ = 4$，其中$B = diag(0, 1, 4)$。因此$P^{T}AP = B$，即$A$的特征值为$0, 1, 4$。
求特征多项式$det(A - λI) = 0$：

$$
A - λI = \\left( \\begin{array}{ccc}
1 - λ & b & 1 \\\\
b & a - λ & 1 \\\\
1 & 1 & 1 - λ \\\\
\\end{array} \\right)
$$

行列式为：

$$
det(A - λI) = −λ^{3} + (a + 2)λ^{2} + (−2a + b^{2} + 1)λ + (−1 - b^{2} + 2b)
$$

代入特征值：
$λ = 0$：$−1 - b^{2} + 2b = 0$，解得$b = 1$。$λ = 1$：代入$b = 1$，得$−a + 3 = 0$，解得$a = 3$。$λ = 4$：验证满足。
故$a = 3$，$b = 1$。此时$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 3 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$。
求特征向量：
$λ = 0$：解$Av = 0$，得$v_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$。$λ = 1$：解$(A - I)v = 0$，得$v_{2} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$。$λ = 4$：解$(A - 4I)v = 0$，得$v_{3} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$。
单位化：
$∥v_{1}∥ = \\sqrt{2}$，单位向量$\\frac{1}{\\sqrt{2}} \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$。$∥v_{2}∥ = \\sqrt{3}$，单位向量$\\frac{1}{\\sqrt{3}} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$。$∥v_{3}∥ = \\sqrt{6}$，单位向量$\\frac{1}{\\sqrt{6}} \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$。
正交矩阵$P$的列对应特征值$0, 1, 4$的单位特征向量：

$$
P = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{6}} \\\\
0 & \\frac{1}{\\sqrt{3}} & \\frac{2}{\\sqrt{6}} \\\\
−\\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{6}} \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:10:45', 9, 'Mogullzr', '2026-01-29 14:10:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1157');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1157');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1158, '1998年考研数学卷1第19题', '简单', '考研数学1998年卷1真题', '设$A$是$n$阶矩阵，若存在正整数$k$，使线性方程组$A^{k}x = 0$有解向量$α$，
且$A^{k-1}α \\neq 0$，证明：向量组$α, Aα, ⋯  , A^{k-1}α$是线性无关的．', '[]', '向量组$α, Aα, ⋯  , A^{k-1}α$是线性无关的。
', '
设有常数$λ_{0}, λ_{1}, ⋯  , λ_{k-1}$，使得


$$
λ_{0}α + λ_{1}Aα + ⋯ + λ_{k-1}A^{k-1}α = 0.
$$

两边左乘$A^{k-1}$，则有


$$
A^{k-1}(λ_{0}α + λ_{1}Aα + ⋯ + λ_{k-1}A^{k-1}α) = 0
$$



$$
⇒ λ_{0}A^{k-1}α + λ_{1}A^{k}α + ⋯ + λ_{k-1}A^{2(k-1)}α = 0.
$$

因$A^{k}α = 0$，从而有$λ_{0}A^{k-1}α = 0$。由题设$A^{k-1}α \\neq 0$，所以$λ_{0} = 0$。于是


$$
λ_{1}Aα + ⋯ + λ_{k-1}A^{k-1}α = 0.
$$

两边左乘$A^{k-2}$，则有


$$
A^{k-2}(λ_{1}Aα + ⋯ + λ_{k-1}A^{k-1}α) = 0
$$



$$
⇒ λ_{1}A^{k-1}α + ⋯ + λ_{k-1}A^{2k-3}α = 0.
$$

同样由$A^{k}α = 0$和$A^{k-1}α \\neq 0$得$λ_{1} = 0$。类似地可证明$λ_{2} = ⋯ = λ_{k-1} = 0$。因此向量组$α, Aα, ⋯  , A^{k-1}α$是线性无关的。
', 9, 'Mogullzr', '2026-01-29 14:10:45', 9, 'Mogullzr', '2026-01-29 14:10:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1158');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1158');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1158');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1159, '1998年考研数学卷1第20题', '简单', '考研数学1998年卷1真题', '已知线性方程组
$$
1◯  \\begin{cases} a_{11}x_{1} + a_{12}x_{2} + ⋯ + a_{1,2n}x_{2n} = 0 \\\\ a_{21}x_{1} + a_{22}x_{2} + ⋯ + a_{2,2n}x_{2n} = 0 \\\\ ⋮ \\\\ a_{n1}x_{1} + a_{n2}x_{2} + ⋯ + a_{n,2n}x_{2n} = 0 \\end{cases}
$$
的一个基础解系为$b_{1} = (b_{11}, … , b_{1,2n})T,  b_{2}, … , b_{n}$。试写出线性方程组
$$
2◯  \\begin{cases} b_{11}y_{1} + b_{12}y_{2} + ⋯ + b_{1,2n}y_{2n} = 0 \\\\ b_{21}y_{1} + b_{22}y_{2} + ⋯ + b_{2,2n}y_{2n} = 0 \\\\ ⋮ \\\\ b_{n1}y_{1} + b_{n2}y_{2} + ⋯ + b_{n,2n}y_{2n} = 0 \\end{cases}
$$
的通解，并说明理由。', '[]', '线性方程组②的通解为：

$$
y = k_{1}(a_{11}, a_{12}, … , a_{1,2n})T + k_{2}(a_{21}, a_{22}, … , a_{2,2n})T + ⋯ + k_{n}(a_{n1}, a_{n2}, … , a_{n,2n})T
$$

其中$k_{1}, k_{2}, … , k_{n}$为任意常数。
', '设线性方程组①的系数矩阵为$A = \\left( \\begin{array}{cccc}
a_{11} & a_{12} &  & a_{1,2n} \\\\
 &  & ⋯ &  \\\\
a_{21} & a_{22} &  & a_{2,2n} \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
a_{n1} & a_{n2} &  & a_{n,2n} \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right)$。由题意，方程组①的基础解系为$b_{1}, b_{2}, … , b_{n}$，且每个$b_{j}$是$2n$维列向量，满足$Ab_{j} = 0$。基础解系有$n$个向量，因此方程组①的解空间维数为$n$，且系数矩阵$A$的秩为$2n - n = n$，即$A$行满秩。
线性方程组②的系数矩阵为$B = \\left( \\begin{array}{c}
b_{1}^{T} \\\\
b_{2}^{T} \\\\
⋮ \\\\
b_{n}^{T} \\\\
\\end{array} \\right)$。由于$b_{1}, b_{2}, … , b_{n}$线性无关，$B$的行秩为$n$，故$B$行满秩，方程组②的解空间维数为$2n - n = n$。
由$Ab_{j} = 0$可知，对任意$i$和$j$，有$a_{i}b_{j} = 0$，其中$a_{i}$是$A$的第$i$行行向量。这意味着$b_{j}^{T}a_{i}^{T} = 0$，即每个$a_{i}^{T}$满足方程组②的每个方程$b_{j}^{T}y = 0$。因此，$a_{1}^{T}, a_{2}^{T}, … , a_{n}^{T}$都是方程组②的解。由于$A$行满秩，$a_{1}, a_{2}, … , a_{n}$线性无关，故$a_{1}^{T}, a_{2}^{T}, … , a_{n}^{T}$也线性无关，且个数为$n$，正好是方程组②解空间的维数。因此，它们构成方程组②的一个基础解系。
于是，方程组②的通解可表示为$a_{1}^{T}, a_{2}^{T}, … , a_{n}^{T}$的线性组合，即：

$$
y = k_{1}a_{1}^{T} + k_{2}a_{2}^{T} + ⋯ + k_{n}a_{n}^{T} = k_{1}(a_{11}, a_{12}, … , a_{1,2n})T + k_{2}(a_{21}, a_{22}, … , a_{2,2n})T + ⋯ + k_{n}(a_{n1}, a_{n2}, … , a_{n,2n})T
$$

其中$k_{1}, k_{2}, … , k_{n}$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:10:45', 9, 'Mogullzr', '2026-01-29 14:10:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1159');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1159');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1160, '1998年考研数学卷1第21题', '简单', '考研数学1998年卷1真题', '设两个随机变量$X, Y$相互独立，且都服从均值为$0$、方差为$\\frac{1}{2}$的正态分布，求随机变量$∣X - Y∣$的方差．', '[]', '$1 - \\frac{2}{π}$
', '由于$X$和$Y$相互独立，且均服从$N(0, \\frac{1}{2})$，则$X - Y$服从正态分布，其均值为


$$
E \\lbrack X - Y \\rbrack  = E \\lbrack X \\rbrack  - E \\lbrack Y \\rbrack  = 0,
$$

方差为


$$
Var(X - Y) = Var(X) + Var(Y) = \\frac{1}{2} + \\frac{1}{2} = 1,
$$

即$X - Y ∼ N(0, 1)$。
令$Z = X - Y$，则$Z ∼ N(0, 1)$，需要求$Var(∣Z∣)$。
方差公式为


$$
Var(∣Z∣) = E \\lbrack ∣Z∣^{2} \\rbrack  - (E \\lbrack ∣Z∣ \\rbrack )2.
$$

由于$∣Z∣^{2} = Z^{2}$，且$Z ∼ N(0, 1)$，有


$$
E \\lbrack Z^{2} \\rbrack  = Var(Z) = 1,
$$

故


$$
E \\lbrack ∣Z∣^{2} \\rbrack  = 1.
$$

对于标准正态分布，


$$
E \\lbrack ∣Z∣ \\rbrack  = \\sqrt{\\frac{2}{π}}.
$$

因此，


$$
Var(∣Z∣) = 1 - (\\sqrt{\\frac{2}{π}})^{2} = 1 - \\frac{2}{π}.
$$

故随机变量$∣X - Y∣$的方差为$1 - \\frac{2}{π}$。
', 9, 'Mogullzr', '2026-01-29 14:10:45', 9, 'Mogullzr', '2026-01-29 14:10:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1160');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1160');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1064', '1160');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1161, '1998年考研数学卷1第22题', '简单', '考研数学1998年卷1真题', '从正态总体$N (3.4, 6^{2})$中抽取容量为$n$的样本，
如果要求其样本均值位于区间$(1.4, 5.4)$内的概率不小于$0.95$，问样本容量$n$至少应取多大？
$$
\\begin{array}{c}
附表：标准正态分布表 \\\\
Φ(z) = \\int_{−∞}^{z} \\frac{1}{\\sqrt{2π}}e^{−\\frac{t^{2}}{2}}dt \\\\
\\end{array}
$$

$$
\\begin{array}{c|cccc|}
z & 1.28 & 1.645 & 1.96 & 2.33 \\\\
Φ(z) & 0.900 & 0.950 & 0.975 & 0.990 \\\\
\\end{array}
$$
', '[]', '$35$
', '总体服从正态分布$N(3.4, 6^{2})$，样本容量为$n$，样本均值$\\bar{X}$服从正态分布$N (3.4, \\frac{36}{n})$。要求$P(1.4 < \\bar{X} < 5.4) ≥ 0.95$。
将$\\bar{X}$标准化：令$Z = \\frac{\\bar{X}-3.4}{6/\\sqrt{n}}$，则$Z ∼ N(0, 1)$。概率化为：

$$
P(1.4 < \\bar{X} < 5.4) = P (\\frac{1.4 - 3.4}{6/\\sqrt{n}} < Z < \\frac{5.4 - 3.4}{6/\\sqrt{n}}) = P (−\\frac{\\sqrt{n}}{3} < Z < \\frac{\\sqrt{n}}{3}) = 2Φ (\\frac{\\sqrt{n}}{3}) - 1.
$$

其中$Φ$为标准正态分布函数。
由条件：

$$
2Φ (\\frac{\\sqrt{n}}{3}) - 1 ≥ 0.95,
$$

解得：

$$
Φ (\\frac{\\sqrt{n}}{3}) ≥ 0.975.
$$

查表得$Φ(1.96) = 0.975$，因此：

$$
\\frac{\\sqrt{n}}{3} ≥ 1.96,
$$



$$
\\sqrt{n} ≥ 1.96 × 3 = 5.88,
$$



$$
n ≥ (5.88)2 = 34.5744.
$$

由于$n$为整数，故$n$至少取 35。
', 9, 'Mogullzr', '2026-01-29 14:10:46', 9, 'Mogullzr', '2026-01-29 14:10:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1161');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1161');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1161');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1162, '1998年考研数学卷1第23题', '简单', '考研数学1998年卷1真题', '设某次考试的学生成绩服从正态分布，从中随机地抽取$36$位考生的成绩，
算得平均成绩为$66.5$分，标准差为$15$分．问在显著性水平$0.05$下，
是否可以认为这次考试全体考生的平均成绩为$70$分？并给出检验过程．
$$
附表：t分布表P\\{t(n) ≤ t_{p}(n)\\} = p
$$

$$
\\begin{array}{c|cc|c}
\\begin{array}{c}
n \\\\
t_{p}(n) \\\\
\\end{array} &  & p = 0.95 & p = 0.975 \\\\
 & n &  &  \\\\
35 &  & 1.6896 & 2.0301 \\\\
 & t_{p}(n) &  &  \\\\
36 &  & 1.6883 & 2.0281 \\\\
\\end{array}
$$
', '[]', '在显著性水平$0.05$下，可以认为这次考试全体考生的平均成绩为$70$分。
', '
本题采用单样本 t 检验，检验总体均值是否等于 70 分。
1. 设立假设
原假设$H_{0} : μ = 70$备择假设$H_{1} : μ \\neq 70$这是一个双尾检验。
2. 计算检验统计量
已知：
样本均值$\\bar{x} = 66.5$样本标准差$s = 15$样本容量$n = 36$
检验统计量为：


$$
t = \\frac{\\bar{x} - μ}{s/\\sqrt{n}} = \\frac{66.5 - 70}{15/\\sqrt{36}} = \\frac{−3.5}{15/6} = \\frac{−3.5}{2.5} = −1.4
$$

3. 确定临界值
显著性水平$α = 0.05$自由度$df = n - 1 = 35$查 t 分布表得：当$p = 0.975$时，$t_{0.975}(35) = 2.0301$因此双尾检验的临界值为$±2.0301$
4. 决策
检验统计量$t = −1.4$落在接受域$(−2.0301, 2.0301)$内因此不拒绝原假设$H_{0}$
5. 结论
在显著性水平$0.05$下，没有足够证据拒绝平均成绩为 70 分的假设，因此可以认为全体考生的平均成绩为 70 分。
', 9, 'Mogullzr', '2026-01-29 14:10:46', 9, 'Mogullzr', '2026-01-29 14:10:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1162');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1162');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1079', '1162');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1163, '1998年考研数学卷2第1题', '', '考研数学1998年卷2真题', '/problems/other/1140', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:48', 9, 'Mogullzr', '2026-01-29 14:10:48', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1164, '1998年考研数学卷2第2题', '简单', '考研数学1998年卷2真题', '曲线$y = −x^{3} + x^{2} + 2x$与$x$轴所围成的图形的面积$A =$______．', '[]', '$\\frac{37}{12}$
', '曲线$y = −x^{3} + x^{2} + 2x$与$x$轴的交点由方程$−x^{3} + x^{2} + 2x = 0$解得，即$x(x^{2} - x - 2) = 0$，所以交点为$x = −1, 0, 2$。
在区间$\\lbrack −1, 0 \\rbrack$上，函数值为负；在区间$\\lbrack 0, 2 \\rbrack$上，函数值为正。因此，所求面积为


$$
A = \\int_{−1}^{0} ∣y∣ dx + \\int_{0}^{2} ∣y∣ dx = \\int_{−1}^{0}(−y) dx + \\int_{0}^{2} y dx.
$$

计算第一积分：


$$
\\begin{array}{cc}
\\int_{−1}^{0} −(−x^{3} + x^{2} + 2x) dx & = \\int_{−1}^{0}(x^{3} - x^{2} - 2x) dx \\\\
 & =  \\lbrack \\frac{x^{4}}{4} - \\frac{x^{3}}{3} - x^{2} \\rbrack _{−1}^{0} \\\\
 & = 0 - (\\frac{1}{4} + \\frac{1}{3} - 1) \\\\
\\end{array}
$$

计算第二积分：


$$
\\begin{array}{cc}
\\int_{0}^{2}(−x^{3} + x^{2} + 2x) dx & =  \\lbrack −\\frac{x^{4}}{4} + \\frac{x^{3}}{3} + x^{2} \\rbrack _{0}^{2} \\\\
 & = (−\\frac{16}{4} + \\frac{8}{3} + 4) - 0 \\\\
\\end{array}
$$

总面积：


$$
A = \\frac{5}{12} + \\frac{8}{3} = \\frac{5}{12} + \\frac{32}{12} = \\frac{37}{12}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:48', 9, 'Mogullzr', '2026-01-29 14:10:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1164');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1164');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1164');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1165, '1998年考研数学卷2第3题', '简单', '考研数学1998年卷2真题', '$\\int \\frac{\\ln(\\sin x)}{\\sin^{2} x}dx =$______．', '[]', '
$− cot x(1 + \\ln(\\sin x)) - x + C$
', '
考虑积分$∫ \\frac{\\ln(\\sin x)}{\\sin^{2} x} dx$。使用分部积分法，设$u = \\ln(\\sin x)$，则$du = cot x dx$；设$dv = \\frac{dx}{\\sin^{2} x}$，则$v = − cot x$。应用分部积分公式：


$$
∫ u dv = uv - ∫ v du
$$

代入得：


$$
\\begin{array}{cc}
∫ \\frac{\\ln(\\sin x)}{\\sin^{2} x} dx & = \\ln(\\sin x) ⋅ (− cot x) - ∫(− cot x) ⋅ cot x dx \\\\
 & = − \\ln(\\sin x) cot x + ∫ cot^{2} x dx \\\\
\\end{array}
$$

计算$∫ cot^{2} x dx$，利用恒等式$cot^{2} x = csc^{2} x - 1$：


$$
∫ cot^{2} x dx = ∫(csc^{2} x - 1) dx = − cot x - x + C
$$

代入回原积分：


$$
∫ \\frac{\\ln(\\sin x)}{\\sin^{2} x} dx = − \\ln(\\sin x) cot x - cot x - x + C = − cot x(1 + \\ln(\\sin x)) - x + C
$$

其中$C$为积分常数。验证导数确认结果正确。
', 9, 'Mogullzr', '2026-01-29 14:10:48', 9, 'Mogullzr', '2026-01-29 14:10:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1165');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1165');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1165');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1166, '1998年考研数学卷2第4题', '简单', '考研数学1998年卷2真题', '设$f(x)$连续，则$\\frac{d}{dx} \\int_{0}^{x} tf(x^{2} - t^{2})dt =$______．', '[]', '
$xf(x^{2})$
', '
考虑积分$I(x) = \\int_{0}^{x} tf(x^{2} - t^{2}) dt$。令$u = x^{2} - t^{2}$，则当$t = 0$时，$u = x^{2}$；当$t = x$时，$u = 0$。且$du = −2t dt$，即$t dt = −\\frac{1}{2}du$。
代入积分得：


$$
I(x) = \\int_{x^{2}}^{0} f(u) ⋅ (−\\frac{1}{2}) du = \\frac{1}{2} \\int_{0}^{x^{2}} f(u) du
$$

于是，


$$
\\frac{d}{dx}I(x) = \\frac{d}{dx}  \\lbrack \\frac{1}{2} \\int_{0}^{x^{2}} f(u) du \\rbrack
$$

由微积分基本定理和链式法则，


$$
\\frac{d}{dx} \\int_{0}^{x^{2}} f(u) du = f(x^{2}) ⋅ 2x
$$

因此，


$$
\\frac{d}{dx}I(x) = \\frac{1}{2} ⋅ f(x^{2}) ⋅ 2x = xf(x^{2})
$$

故答案为$xf(x^{2})$。
', 9, 'Mogullzr', '2026-01-29 14:10:48', 9, 'Mogullzr', '2026-01-29 14:10:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1166');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1166');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1166');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1167, '1998年考研数学卷2第5题', '简单', '考研数学1998年卷2真题', '曲线$y = x \\ln (e + \\frac{1}{x})$（$x > 0$）的渐进线方程为 ______．', '[]', '
$y = x + \\frac{1}{e}$
', '
考虑曲线$y = x \\ln (e + \\frac{1}{x})$在$x > 0$时的渐近线。
首先，检查水平渐近线：
当$x → ∞$时，$\\frac{1}{x} → 0$，故


$$
\\ln (e + \\frac{1}{x}) → \\ln e = 1,
$$

因此$y ∼ x → ∞$，无水平渐近线。
其次，检查垂直渐近线：
当$x → 0^{+}$时，$y → 0$，无垂直渐近线。
因此，考虑斜渐近线$y = mx + b$。
计算斜率：


$$
m = \\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\ln (e + \\frac{1}{x}) = \\ln e = 1.
$$

计算截距：


$$
b = \\lim_{x→∞}(y - mx) = \\lim_{x→∞} (x \\ln (e + \\frac{1}{x}) - x) = \\lim_{x→∞} x (\\ln (e + \\frac{1}{x}) - 1) .
$$

注意到


$$
\\ln (e + \\frac{1}{x}) - 1 = \\ln (\\frac{e + \\frac{1}{x}}{e}) = \\ln (1 + \\frac{1}{ex}) ,
$$

因此


$$
b = \\lim_{x→∞} x \\ln (1 + \\frac{1}{ex}) .
$$

利用等价无穷小，当$x → ∞$时，


$$
\\ln (1 + \\frac{1}{ex}) ∼ \\frac{1}{ex},
$$

故


$$
b = \\lim_{x→∞} x ⋅ \\frac{1}{ex} = \\frac{1}{e}.
$$

因此，渐近线方程为


$$
y = x + \\frac{1}{e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1167');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1167');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1167');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1168, '1998年考研数学卷2第6题', '简单', '考研数学1998年卷2真题', '设数列$x_{n}$与$y_{n}$满足$\\lim_{x→∞} x_{n}y_{n} = 0$，则下列断言正确的是', '[''若$x_{n}$发散，则$y_{n}$必发散．'', ''若$x_{n}$无界，则$y_{n}$必有界．'', ''若$x_{n}$有界，则$y_{n}$必为无穷小．'', ''若$\\\\frac{1}{x_{n}}$为无穷小，则$y_{n}$必为无穷小．'']', "['D']", '考虑选项A：若$x_{n}$发散，则$y_{n}$必发散。反例：取$x_{n} = n$（发散），$y_{n} = \\frac{1}{n^{2}}$（收敛），则$x_{n}y_{n} = \\frac{1}{n} → 0$，但$y_{n}$收敛，故A错误。考虑选项B：若$x_{n}$无界，则$y_{n}$必有界。反例：取$x_{n} = n$当$n$为偶数、$x_{n} = 0$当$n$为奇数（无界），取$y_{n} = \\frac{1}{n^{2}}$当$n$为偶数、$y_{n} = n$当$n$为奇数（无界），则当$n$为偶数时$x_{n}y_{n} = \\frac{1}{n} → 0$，当$n$为奇数时$x_{n}y_{n} = 0$，故$x_{n}y_{n} → 0$，但$y_{n}$无界，故B错误。考虑选项C：若$x_{n}$有界，则$y_{n}$必为无穷小。反例：取$x_{n} = 0$当$n$为奇数、$x_{n} = 1$当$n$为偶数（有界），取$y_{n} = n$当$n$为奇数、$y_{n} = \\frac{1}{n}$当$n$为偶数，则当$n$为奇数时$x_{n}y_{n} = 0$，当$n$为偶数时$x_{n}y_{n} = \\frac{1}{n} → 0$，故$x_{n}y_{n} → 0$，但$y_{n}$不是无穷小，故C错误。考虑选项D：若$\\frac{1}{x_{n}}$为无穷小，则$y_{n}$必为无穷小。由$\\frac{1}{x_{n}} → 0$可知$x_{n} → ∞$，结合$x_{n}y_{n} → 0$，可得$y_{n} → 0$，即$y_{n}$为无穷小，故D正确。', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1168');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1168');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1168');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1169, '1998年考研数学卷2第7题', '', '考研数学1998年卷2真题', '/problems/other/1146', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1170, '1998年考研数学卷2第8题', '', '考研数学1998年卷2真题', '/problems/other/1147', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1171, '1998年考研数学卷2第9题', '简单', '考研数学1998年卷2真题', '设函数$f(x)$在$x = a$的某个邻域内连续，且$f(a)$为其极大值，
则存在$δ > 0$，当$x ∈ (a - δ, a + δ)$时，必有', '[''$(x - a) \\\\lbrack f(x) - f(a) \\\\rbrack  ≥ 0$．'', ''$(x - a) \\\\lbrack f(x) - f(a) \\\\rbrack  ≤ 0$．'', ''$\\\\lim_{t→a} \\\\frac{f(t)-f(x)}{(t-x)2} ≥ 0  (x \\\\neq a)$．'', ''$\\\\lim_{t→a} \\\\frac{f(t)-f(x)}{(t-x)2} ≤ 0  (x \\\\neq a)$．'']', "['C']", '
函数$f(x)$在$x = a$处取得极大值，且在$a$的某个邻域内连续，因此在该邻域内

$$
f(x) ≤ f(a).
$$
选项 A 和 B 考虑$(x - a) \\lbrack f(x) - f(a) \\rbrack$的符号：当$x < a$时，$x - a < 0$，$f(x) - f(a) ≤ 0$，故乘积$≥ 0$；当$x > a$时，$x - a > 0$，$f(x) - f(a) ≤ 0$，故乘积$≤ 0$。因此，A 和 B 均不恒成立。选项 C 和 D 涉及极限

$$
\\lim_{t→a} \\frac{f(t) - f(x)}{(t - x)2},
$$
其中$x \\neq a$。由于$f$在$a$处连续，当$t → a$时，$f(t) → f(a)$，故极限值为

$$
\\frac{f(a) - f(x)}{(a - x)2}.
$$
因$f(a) ≥ f(x)$且$(a - x)2 > 0$，该极限$≥ 0$，故 C 正确，D 错误。', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1171');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1171');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1171');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1172, '1998年考研数学卷2第10题', '简单', '考研数学1998年卷2真题', '设$A$是任一$n$（$n ≥ 3$）阶方程，$A^{∗}$是其伴随矩阵，又$k$为常数，
且$k \\neq 0, ±1$，则必有$(kA)∗ =$', '[''$kA^{∗}$．'', ''$k^{n-1}A^{∗}$．'', ''$k^{n}A^{∗}$．'', ''$k^{−1}A^{∗}$．'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1172');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1172');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1172');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1173, '1998年考研数学卷2第11题', '简单', '考研数学1998年卷2真题', '求函数$f(x) = (1 + x)^{\\frac{x}{\\tan(x-π/4)}}$．
在区间$(0, 2π)$内的间断点，并判断其类型．', '[]', '函数在区间$(0, 2π)$内的间断点为$x = \\frac{π}{4}$,$x = \\frac{3π}{4}$,$x = \\frac{5π}{4}$,$x = \\frac{7π}{4}$。其中，$x = \\frac{π}{4}$和$x = \\frac{5π}{4}$是第二类间断点（无穷间断），$x = \\frac{3π}{4}$和$x = \\frac{7π}{4}$是第一类间断点（可去间断）。
', '
函数$f(x) = (1 + x)tan(x−π/4)x​$的间断点出现在分母为零或指数未定义的点。在区间$(0, 2π)$内，底数$1 + x > 0$恒成立，因此间断点主要来自指数部分$\\frac{x}{\\tan(x-π/4)}$的未定义点。
首先，$\\tan(x - π/4)$在$x - π/4 = kπ + π/2$（即$x = kπ + 3π/4$）处未定义。在$(0, 2π)$内，对应$x = \\frac{3π}{4}$和$x = \\frac{7π}{4}$。在这些点，指数分母为无穷大，因此指数趋于零。计算极限：
当$x → \\frac{3π}{4}$，底数$1 + x → 1 + \\frac{3π}{4} > 1$，指数趋于零，故$f(x) → 1$。当$x → \\frac{7π}{4}$，底数$1 + x → 1 + \\frac{7π}{4} > 1$，指数趋于零，故$f(x) → 1$。
左右极限均存在且等于 1，因此$x = \\frac{3π}{4}$和$x = \\frac{7π}{4}$是可去间断点。
其次，$\\tan(x - π/4)$在$x - π/4 = kπ$（即$x = kπ + π/4$）处为零。在$(0, 2π)$内，对应$x = \\frac{π}{4}$和$x = \\frac{5π}{4}$。在这些点，指数分母为零而分子不为零，因此指数趋于无穷大。计算极限：
当$x → \\frac{π}{4}^{−}$，指数趋于$−∞$，故$f(x) → 0$；当$x → \\frac{π}{4}^{+}$，指数趋于$+∞$，故$f(x) → +∞$。左右极限至少一个不存在有限值，因此是第二类间断点（无穷间断）。当$x → \\frac{5π}{4}^{−}$，指数趋于$−∞$，故$f(x) → 0$；当$x → \\frac{5π}{4}^{+}$，指数趋于$+∞$，故$f(x) → +∞$。同理，是第二类间断点（无穷间断）。
综上，函数在$(0, 2π)$内有四个间断点，类型如上所述。
', 9, 'Mogullzr', '2026-01-29 14:10:49', 9, 'Mogullzr', '2026-01-29 14:10:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1173');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1173');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1173');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1174, '1998年考研数学卷2第12题', '简单', '考研数学1998年卷2真题', '确定常数$a, b, c$的值，
使$\\lim_{x→0} \\frac{ax-\\sin x}{\\int_{b}^{x} \\frac{\\ln(1+t^{3})}{t}dt} = c$（$c \\neq 0$）．', '[]', '
$a = 1$，$b = 0$，$c = \\frac{1}{2}$
', '
为了使极限$\\lim_{x→0} \\frac{ax-\\sin x}{\\int_{b}^{x} \\frac{\\ln(1+t^{3})}{t}dt} = c$（$c \\neq 0$）存在，分母必须在$x → 0$时趋于零。否则，如果分母不趋于零而分子趋于零，则极限为零，与$c \\neq 0$矛盾。因此，要求$\\lim_{x→0} \\int_{b}^{x} \\frac{\\ln(1+t^{3})}{t}dt = 0$，这等价于$\\int_{b}^{0} \\frac{\\ln(1+t^{3})}{t}dt = 0$。由于被积函数$\\frac{\\ln(1+t^{3})}{t}$在$t = 0$处连续（因为$\\ln(1 + t^{3}) ∼ t^{3}$，所以$\\frac{\\ln(1+t^{3})}{t} ∼ t^{2}$），且对于$b \\neq 0$，该积分一般不为零，因此必须取$b = 0$。
代入$b = 0$，极限变为$\\lim_{x→0} \\frac{ax-\\sin x}{\\int_{0}^{x} \\frac{\\ln(1+t^{3})}{t}dt}$。当$x → 0$时，分子和分母均趋于零，应用洛必达法则。分子导数为$a - \\cos x$，分母导数为$\\frac{\\ln(1+x^{3})}{x}$，因此极限化为：

$$
\\lim_{x→0} \\frac{a - \\cos x}{\\frac{\\ln(1+x^{3})}{x}} = \\lim_{x→0} \\frac{x(a - \\cos x)}{\\ln(1 + x^{3})}.
$$

当$x → 0$时，$\\ln(1 + x^{3}) ∼ x^{3}$，所以：

$$
\\lim_{x→0} \\frac{x(a - \\cos x)}{x^{3}} = \\lim_{x→0} \\frac{a - \\cos x}{x^{2}}.
$$

展开$\\cos x = 1 - \\frac{x^{2}}{2} + O(x^{4})$，得：

$$
\\frac{a - \\cos x}{x^{2}} = \\frac{a - 1}{x^{2}} + \\frac{1}{2} + O(x^{2}).
$$

为使极限存在，必须满足$a - 1 = 0$，即$a = 1$。代入$a = 1$，极限为：

$$
\\lim_{x→0} \\frac{1 - \\cos x}{x^{2}} = \\frac{1}{2}.
$$

因此，$c = \\frac{1}{2}$。验证原极限：当$a = 1$，$b = 0$时，分子$x - \\sin x ∼ \\frac{x^{3}}{6}$，分母$\\int_{0}^{x} \\frac{\\ln(1+t^{3})}{t}dt ∼ \\int_{0}^{x} t^{2}dt = \\frac{x^{3}}{3}$，故极限为$\\frac{1}{2}$，满足$c \\neq 0$。
', 9, 'Mogullzr', '2026-01-29 14:10:50', 9, 'Mogullzr', '2026-01-29 14:10:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1174');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1174');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '1174');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1175, '1998年考研数学卷2第13题', '简单', '考研数学1998年卷2真题', '利用代换$y = \\frac{u}{\\cos x}$将方程$y^{′′} \\cos x - 2y^{′} \\sin x + 3y \\cos x = e^{x}$化简，并求出原方程的通解．', '[]', '

$$
y = \\frac{1}{\\cos x} (A \\cos 2x + B \\sin 2x + \\frac{1}{5}e^{x})
$$

其中$A$和$B$为任意常数。
', '给定方程$y^{′′} \\cos x - 2y^{′} \\sin x + 3y \\cos x = e^{x}$，利用代换$y = \\frac{u}{\\cos x}$，即$u = y \\cos x$。
计算$u^{′}$和$u^{′′}$：


$$
u^{′} = y^{′} \\cos x - y \\sin x
$$



$$
u^{′′} = y^{′′} \\cos x - 2y^{′} \\sin x - y \\cos x
$$

将$u^{′′}$代入原方程：


$$
u^{′′} + y \\cos x + 3y \\cos x = e^{x}
$$

即


$$
u^{′′} + 4y \\cos x = e^{x}
$$

由于$y \\cos x = u$，得


$$
u^{′′} + 4u = e^{x}
$$

解此二阶线性非齐次微分方程：
齐次方程$u^{′′} + 4u = 0$的特征方程为$r^{2} + 4 = 0$，根为$r = ±2i$，齐次通解为


$$
u_{h} = A \\cos 2x + B \\sin 2x
$$

非齐次项为$e^{x}$，设特解$u_{p} = Ce^{x}$，代入方程：


$$
Ce^{x} + 4Ce^{x} = e^{x}
$$

解得$C = \\frac{1}{5}$，即$u_{p} = \\frac{1}{5}e^{x}$。
因此


$$
u = u_{h} + u_{p} = A \\cos 2x + B \\sin 2x + \\frac{1}{5}e^{x}
$$

回代$y = \\frac{u}{\\cos x}$，得原方程的通解：


$$
y = \\frac{1}{\\cos x} (A \\cos 2x + B \\sin 2x + \\frac{1}{5}e^{x})
$$

其中$A$和$B$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:10:50', 9, 'Mogullzr', '2026-01-29 14:10:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1175');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1175');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1175');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1176, '1998年考研数学卷2第14题', '简单', '考研数学1998年卷2真题', '计算积分$\\int_{\\frac{1}{2}}^{\\frac{3}{2}} \\frac{dx}{\\sqrt{∣x-x^{2}∣}}$．', '[]', '

$$
\\frac{π}{2} + \\ln(2 + \\sqrt{3})
$$

', '积分$\\int_{\\frac{1}{2}}^{\\frac{3}{2}} \\frac{dx}{\\sqrt{∣x-x^{2}∣}}$需要处理绝对值符号。由于$x - x^{2} = x(1 - x)$，在区间$\\lbrack \\frac{1}{2}, 1 \\rbrack$上$x(1 - x) ≥ 0$，故$​x - x^{2}​ = x(1 - x)$；在区间$\\lbrack 1, \\frac{3}{2} \\rbrack$上$x(1 - x) ≤ 0$，故$​x - x^{2}​ = −x(1 - x) = x(x - 1)$。因此，积分拆分为两部分：

$$
I = \\int_{\\frac{1}{2}}^{1} \\frac{dx}{\\sqrt{x(1 - x)}} + \\int_{1}^{\\frac{3}{2}} \\frac{dx}{\\sqrt{x(x - 1)}}.
$$

对于第一积分，$∫ \\frac{dx}{\\sqrt{x(1-x)}}$，利用恒等式$x(1 - x) = \\frac{1}{4} - (x - \\frac{1}{2})2$，有：

$$
∫ \\frac{dx}{\\sqrt{x(1 - x)}} = ∫ \\frac{dx}{\\sqrt{\\frac{1}{4} - (x - \\frac{1}{2})2}} = arcsin(2x - 1) + C.
$$

代入上下限：

$$
\\int_{\\frac{1}{2}}^{1} \\frac{dx}{\\sqrt{x(1 - x)}} = arcsin(2x - 1)​_{\\frac{1}{2}}^{1} = arcsin(1) - arcsin(0) = \\frac{π}{2} - 0 = \\frac{π}{2}.
$$

对于第二积分，$∫ \\frac{dx}{\\sqrt{x(x-1)}}$，利用恒等式$x(x - 1) = (x - \\frac{1}{2})2 - \\frac{1}{4}$，有：

$$
∫ \\frac{dx}{\\sqrt{x(x - 1)}} = ∫ \\frac{dx}{\\sqrt{(x - \\frac{1}{2})2 - \\frac{1}{4}}} = \\ln ​(x - \\frac{1}{2}) + \\sqrt{x(x - 1)}​ + C.
$$

在区间$\\lbrack 1, \\frac{3}{2} \\rbrack$上，表达式为正，故省略绝对值。代入上下限：

$$
\\begin{array}{cc}
\\int_{1}^{\\frac{3}{2}} \\frac{dx}{\\sqrt{x(x - 1)}} & = \\ln ((x - \\frac{1}{2}) + \\sqrt{x(x - 1)}) ​_{1}^{\\frac{3}{2}} \\\\
 & = \\ln (1 + \\frac{\\sqrt{3}}{2}) - \\ln (\\frac{1}{2}) \\\\
 & = \\ln (1 + \\frac{\\sqrt{3}}{2}) + \\ln 2 \\\\
\\end{array}
$$

因此，总积分为：

$$
I = \\frac{π}{2} + \\ln(2 + \\sqrt{3}).
$$

', 9, 'Mogullzr', '2026-01-29 14:10:50', 9, 'Mogullzr', '2026-01-29 14:10:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1176');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1176');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1176');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1177, '1998年考研数学卷2第15题', '', '考研数学1998年卷2真题', '/problems/other/1152', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:50', 9, 'Mogullzr', '2026-01-29 14:10:50', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1178, '1998年考研数学卷2第16题', '', '考研数学1998年卷2真题', '/problems/other/1156', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:10:50', 9, 'Mogullzr', '2026-01-29 14:10:50', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1179, '1998年考研数学卷2第17题', '简单', '考研数学1998年卷2真题', '设有曲线$y = \\sqrt{x - 1}$，过原点作其切线，
求由此曲线、切线及$x$轴围成的平面图形绕$x$轴旋转一周所得到的旋转体的表面积．', '[]', '

$$
\\frac{π}{6}(11\\sqrt{5} - 1)
$$

', '曲线$y = \\sqrt{x - 1}$的定义域为$x ≥ 1$。过原点作该曲线的切线，设切点为$(a, \\sqrt{a - 1})$，则切线斜率为$y^{′} = \\frac{1}{2\\sqrt{a-1}}$。切线方程为$y - \\sqrt{a - 1} = \\frac{1}{2\\sqrt{a-1}}(x - a)$。由于切线过原点$(0, 0)$，代入得：

$$
−\\sqrt{a - 1} = \\frac{1}{2\\sqrt{a - 1}}(−a)
$$

简化得：

$$
\\sqrt{a - 1} = \\frac{a}{2\\sqrt{a - 1}}
$$

两边乘以$2\\sqrt{a - 1}$：

$$
2(a - 1) = a
$$

解得$a = 2$，切点为$(2, 1)$，切线方程为$y = \\frac{1}{2}x$。
由曲线$y = \\sqrt{x - 1}$、切线$y = \\frac{1}{2}x$及$x$轴围成的平面图形如下：
对于$x ∈  \\lbrack 0, 1 \\rbrack$，区域上边界为切线，下边界为$x$轴。对于$x ∈  \\lbrack 1, 2 \\rbrack$，区域上边界为切线，下边界为曲线。
该图形绕$x$轴旋转一周所得旋转体的表面积由切线旋转形成的曲面面积和曲线旋转形成的曲面面积组成。
切线部分：$y = \\frac{1}{2}x$，$x$从$0$到$2$。
$y^{′} = \\frac{1}{2}$，$\\sqrt{1 + (y^{′})2} = \\sqrt{1 + \\frac{1}{4}} = \\frac{\\sqrt{5}}{2}$。
切线旋转面积：

$$
\\begin{array}{cc}
S_{t} & = 2π \\int_{0}^{2} y\\sqrt{1 + (y^{′})2} dx \\\\
 & = 2π \\int_{0}^{2} \\frac{1}{2}x ⋅ \\frac{\\sqrt{5}}{2} dx \\\\
 & = 2π ⋅ \\frac{\\sqrt{5}}{4} \\int_{0}^{2} x dx \\\\
 & = π\\sqrt{5} \\\\
\\end{array}
$$

曲线部分：$y = \\sqrt{x - 1}$，$x$从$1$到$2$。
$y^{′} = \\frac{1}{2\\sqrt{x-1}}$，$\\sqrt{1 + (y^{′})2} = \\sqrt{1 + \\frac{1}{4(x-1)}} = \\frac{\\sqrt{4x-3}}{2\\sqrt{x-1}}$。
曲线旋转面积：

$$
S_{c} = 2π \\int_{1}^{2} y\\sqrt{1 + (y^{′})2} dx = 2π \\int_{1}^{2} \\sqrt{x - 1} ⋅ \\frac{\\sqrt{4x - 3}}{2\\sqrt{x - 1}} dx = π \\int_{1}^{2} \\sqrt{4x - 3} dx
$$

计算积分：
令$u = 4x - 3$，则$du = 4 dx$，当$x = 1$时$u = 1$，当$x = 2$时$u = 5$：

$$
\\int_{1}^{2} \\sqrt{4x - 3} dx = \\frac{1}{4} \\int_{1}^{5} u^{1/2} du = \\frac{1}{4} ⋅ \\frac{2}{3}u^{3/2}​_{1}^{5} = \\frac{1}{6}(5^{3/2} - 1) = \\frac{1}{6}(5\\sqrt{5} - 1)
$$

所以：

$$
S_{c} = π ⋅ \\frac{1}{6}(5\\sqrt{5} - 1) = \\frac{π}{6}(5\\sqrt{5} - 1)
$$

总表面积：

$$
S = S_{t} + S_{c} = π\\sqrt{5} + \\frac{π}{6}(5\\sqrt{5} - 1) = \\frac{6π\\sqrt{5}}{6} + \\frac{5π\\sqrt{5}}{6} - \\frac{π}{6} = \\frac{π}{6}(11\\sqrt{5} - 1)
$$

因此，旋转体的表面积为$\\frac{π}{6}(11\\sqrt{5} - 1)$。
', 9, 'Mogullzr', '2026-01-29 14:10:50', 9, 'Mogullzr', '2026-01-29 14:10:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1179');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1179');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1179');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1180, '1998年考研数学卷2第18题', '简单', '考研数学1998年卷2真题', '设$y = y(x)$是一向上凸的连续曲线，其上任意一点$(x, y)$处的曲率为$\\frac{1}{\\sqrt{1+y^{′2}}}$，
且此曲线上点$(0, 1)$处的切线方程为$y = x + 1$，求该曲线的方程，并求函数$y = y(x)$的极值．', '[]', '
曲线的方程为$y = \\ln ​\\cos (x - \\frac{π}{4})​ + 1 + \\frac{1}{2} \\ln 2$，函数$y = y(x)$的极值为极大值$1 + \\frac{1}{2} \\ln 2$，在$x = \\frac{π}{4} + kπ$（$k$为整数）处取得。
', '
由题设，曲线上任意一点$(x, y)$处的曲率为$\\frac{1}{\\sqrt{1+y^{′2}}}$。标准曲率公式为$κ = \\frac{∣y^{′′}∣}{(1+y^{′2})3/2}$，故有


$$
\\frac{∣y^{′′}∣}{(1 + y^{′2})3/2} = \\frac{1}{\\sqrt{1 + y^{′2}}}.
$$

两边乘以$(1 + y^{′2})3/2$得


$$
∣y^{′′}∣ = 1 + y^{′2}.
$$

由于曲线向上凸，有$y^{′′} < 0$，故


$$
y^{′′} = −(1 + y^{′2}).
$$

令$p = y^{′}$，则$y^{′′} = p^{′}$，代入得


$$
p^{′} = −(1 + p^{2}).
$$

分离变量得


$$
\\frac{dp}{1 + p^{2}} = −dx.
$$

积分两边


$$
∫ \\frac{dp}{1 + p^{2}} = − ∫ dx,
$$

即


$$
arctan p = −x + C,
$$

所以


$$
p = \\tan(−x + C) = − \\tan(x - C).
$$

由点$(0, 1)$处的切线方程为$y = x + 1$，得在$x = 0$时$y^{′} = 1$，代入得


$$
1 = − \\tan(0 - C) = − \\tan(−C) = \\tan C,
$$

故$C = \\frac{π}{4}$（取主值）。于是


$$
y^{′} = − \\tan (x - \\frac{π}{4}) .
$$

积分得


$$
y = ∫ − \\tan (x - \\frac{π}{4}) dx = \\ln ​\\cos (x - \\frac{π}{4})​ + D.
$$

代入点$(0, 1)$：


$$
1 = \\ln ​\\cos (−\\frac{π}{4})​ + D = \\ln (\\frac{\\sqrt{2}}{2}) + D = −\\frac{1}{2} \\ln 2 + D,
$$

所以


$$
D = 1 + \\frac{1}{2} \\ln 2.
$$

故曲线方程为


$$
y = \\ln ​\\cos (x - \\frac{π}{4})​ + 1 + \\frac{1}{2} \\ln 2.
$$

求极值：令$y^{′} = 0$，即


$$
− \\tan (x - \\frac{π}{4}) = 0,
$$

解得


$$
x = \\frac{π}{4} + kπ (k ∈ Z).
$$

由于$y^{′′} = − sec^{2} (x - \\frac{π}{4}) < 0$，这些点为极大值点。代入得


$$
\\begin{array}{cc}
y & = \\ln ​\\cos (\\frac{π}{4} + kπ - \\frac{π}{4})​ + 1 + \\frac{1}{2} \\ln 2 \\\\
 & = \\ln ∣ \\cos(kπ)∣ + 1 + \\frac{1}{2} \\ln 2 \\\\
 & = \\ln 1 + 1 + \\frac{1}{2} \\ln 2 \\\\
\\end{array}
$$

故函数有极大值$1 + \\frac{1}{2} \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:10:51', 9, 'Mogullzr', '2026-01-29 14:10:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1180');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1180');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1180');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1181, '1998年考研数学卷2第19题', '简单', '考研数学1998年卷2真题', '设$x ∈ (0, 1)$，证明：(1)$(1 + x) \\ln^{2}(1 + x) < x^{2}$；(2)$\\frac{1}{\\ln 2} - 1 < \\frac{1}{\\ln(1+x)} - \\frac{1}{x} < \\frac{1}{2}$．', '[]', '
(1) 令$f(x) = x^{2} - (1 + x) \\ln^{2}(1 + x)$，需证$f(x) > 0$对于$x ∈ (0, 1)$。计算导数：

$$
f^{′}(x) = 2x -  \\lbrack \\ln^{2}(1 + x) + 2 \\ln(1 + x) \\rbrack  = 2x - 2 \\ln(1 + x) - \\ln^{2}(1 + x).
$$

令$g(x) = f^{′}(x)$，则

$$
g^{′}(x) = 2 - \\frac{2}{1 + x} - \\frac{2 \\ln(1 + x)}{1 + x} = 2 - \\frac{2 \\lbrack 1 + \\ln(1 + x) \\rbrack }{1 + x}.
$$

令$h(x) = \\frac{1 + \\ln(1 + x)}{1 + x}$，则

$$
h^{′}(x) = −\\frac{\\ln(1 + x)}{(1 + x)2} < 0 (对于x > 0),
$$

故$h(x)$严格递减。当$x = 0$时，$h(0) = 1$，所以对于$x > 0$，有$h(x) < 1$，从而

$$
g^{′}(x) = 2 - 2h(x) > 0.
$$

因此$g(x)$严格递增，且$g(0) = 0$，故对于$x > 0$，有$g(x) > 0$，即$f^{′}(x) > 0$。又$f(0) = 0$，所以$f(x) > 0$对于$x > 0$，即

$$
(1 + x) \\ln^{2}(1 + x) < x^{2} 在x ∈ (0, 1)成立.
$$


(2) 令$F(x) = \\frac{1}{\\ln(1 + x)} - \\frac{1}{x}$。
首先证$F(x) < \\frac{1}{2}$。由不等式$\\ln(1 + x) > \\frac{2x}{2 + x}$（可通过函数$ϕ(x) = \\ln(1 + x) - \\frac{2x}{2 + x}$及其导数证明），取倒数得

$$
\\frac{1}{\\ln(1 + x)} < \\frac{2 + x}{2x},
$$

故

$$
F(x) = \\frac{1}{\\ln(1 + x)} - \\frac{1}{x} < \\frac{2 + x}{2x} - \\frac{1}{x} = \\frac{1}{2}.
$$

其次证$F(x) > \\frac{1}{\\ln 2} - 1$。计算$F^{′}(x)$：

$$
F^{′}(x) = \\frac{1}{x^{2}} - \\frac{1}{(1 + x) \\ln^{2}(1 + x)}.
$$

由 (1) 知$(1 + x) \\ln^{2}(1 + x) < x^{2}$，故

$$
\\frac{1}{(1 + x) \\ln^{2}(1 + x)} > \\frac{1}{x^{2}},
$$

所以$F^{′}(x) < 0$，即$F(x)$严格递减。当$x → 0^{+}$时，$F(x) → \\frac{1}{2}$；当$x → 1^{-}$时，$F(x) → \\frac{1}{\\ln 2} - 1$。因此对于$x ∈ (0, 1)$，有

$$
F(x) > \\frac{1}{\\ln 2} - 1.
$$

综上，

$$
\\frac{1}{\\ln 2} - 1 < F(x) < \\frac{1}{2} 在x ∈ (0, 1)成立.
$$

', '
(1) 令$f(x) = x^{2} - (1 + x) \\ln^{2}(1 + x)$，需证$f(x) > 0$对于$x ∈ (0, 1)$。计算导数：

$$
f^{′}(x) = 2x -  \\lbrack \\ln^{2}(1 + x) + 2 \\ln(1 + x) \\rbrack  = 2x - 2 \\ln(1 + x) - \\ln^{2}(1 + x).
$$

令$g(x) = f^{′}(x)$，则

$$
g^{′}(x) = 2 - \\frac{2}{1 + x} - \\frac{2 \\ln(1 + x)}{1 + x} = 2 - \\frac{2 \\lbrack 1 + \\ln(1 + x) \\rbrack }{1 + x}.
$$

令$h(x) = \\frac{1 + \\ln(1 + x)}{1 + x}$，则

$$
h^{′}(x) = −\\frac{\\ln(1 + x)}{(1 + x)2} < 0 (对于x > 0),
$$

故$h(x)$严格递减。当$x = 0$时，$h(0) = 1$，所以对于$x > 0$，有$h(x) < 1$，从而

$$
g^{′}(x) = 2 - 2h(x) > 0.
$$

因此$g(x)$严格递增，且$g(0) = 0$，故对于$x > 0$，有$g(x) > 0$，即$f^{′}(x) > 0$。又$f(0) = 0$，所以$f(x) > 0$对于$x > 0$，即

$$
(1 + x) \\ln^{2}(1 + x) < x^{2} 在x ∈ (0, 1)成立.
$$


(2) 令$F(x) = \\frac{1}{\\ln(1 + x)} - \\frac{1}{x}$。
首先证$F(x) < \\frac{1}{2}$。由不等式$\\ln(1 + x) > \\frac{2x}{2 + x}$（可通过函数$ϕ(x) = \\ln(1 + x) - \\frac{2x}{2 + x}$及其导数证明），取倒数得

$$
\\frac{1}{\\ln(1 + x)} < \\frac{2 + x}{2x},
$$

故

$$
F(x) = \\frac{1}{\\ln(1 + x)} - \\frac{1}{x} < \\frac{2 + x}{2x} - \\frac{1}{x} = \\frac{1}{2}.
$$

其次证$F(x) > \\frac{1}{\\ln 2} - 1$。计算$F^{′}(x)$：

$$
F^{′}(x) = \\frac{1}{x^{2}} - \\frac{1}{(1 + x) \\ln^{2}(1 + x)}.
$$

由 (1) 知$(1 + x) \\ln^{2}(1 + x) < x^{2}$，故

$$
\\frac{1}{(1 + x) \\ln^{2}(1 + x)} > \\frac{1}{x^{2}},
$$

所以$F^{′}(x) < 0$，即$F(x)$严格递减。当$x → 0^{+}$时，$F(x) → \\frac{1}{2}$；当$x → 1^{-}$时，$F(x) → \\frac{1}{\\ln 2} - 1$。因此对于$x ∈ (0, 1)$，有

$$
F(x) > \\frac{1}{\\ln 2} - 1.
$$

综上，

$$
\\frac{1}{\\ln 2} - 1 < F(x) < \\frac{1}{2} 在x ∈ (0, 1)成立.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:51', 9, 'Mogullzr', '2026-01-29 14:10:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1181');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1181');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '1181');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1182, '1998年考研数学卷2第20题', '简单', '考研数学1998年卷2真题', '设$(2E - C^{−1}B) A^{T} = C^{−1}$，其中$E$是4阶单位矩阵，$A^{T}$是$4$阶矩阵$A$的转置矩阵，$B = \\left( \\begin{array}{cccc}
1 & 2 & −3 & −2 \\\\
0 & 1 & 2 & −3 \\\\
0 & 0 & 1 & 2 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right)$，$C = \\left( \\begin{array}{cccc}
1 & 2 & 0 & 1 \\\\
0 & 1 & 2 & 0 \\\\
0 & 0 & 1 & 2 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right)$，求$A$．', '[]', '

$$
A = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−2 & 1 & 0 & 0 \\\\
1 & −2 & 1 & 0 \\\\
0 & 1 & −2 & 1 \\\\
\\end{array} \\right)
$$

', '给定方程$(2E - C^{−1}B) A^{T} = C^{−1}$，其中$E$是 4 阶单位矩阵。通过左乘$C$，得$C (2E - C^{−1}B) A^{T} = E$，即$(2C - B)A^{T} = E$，所以$A^{T} = (2C - B)−1$。
计算$2C - B$：

$$
2C = \\left( \\begin{array}{cccc}
2 & 4 & 0 & 2 \\\\
0 & 2 & 4 & 0 \\\\
0 & 0 & 2 & 4 \\\\
0 & 0 & 0 & 2 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cccc}
1 & 2 & −3 & −2 \\\\
0 & 1 & 2 & −3 \\\\
0 & 0 & 1 & 2 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right) ,
$$



$$
2C - B = \\left( \\begin{array}{cccc}
1 & 2 & 3 & 4 \\\\
0 & 1 & 2 & 3 \\\\
0 & 0 & 1 & 2 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right) .
$$

求逆矩阵$(2C - B)−1$：
设$M = 2C - B$，解$MX = E$，得

$$
M^{−1} = \\left( \\begin{array}{cccc}
1 & −2 & 1 & 0 \\\\
0 & 1 & −2 & 1 \\\\
0 & 0 & 1 & −2 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right) .
$$

所以$A^{T} = M^{−1}$，转置得

$$
A = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−2 & 1 & 0 & 0 \\\\
1 & −2 & 1 & 0 \\\\
0 & 1 & −2 & 1 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:10:51', 9, 'Mogullzr', '2026-01-29 14:10:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1182');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1182');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1182');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1183, '1998年考研数学卷2第21题', '简单', '考研数学1998年卷2真题', '已知$α_{1} = (1, 4, 0, 2)T$,$α_{2} = (2, 7, 1, 3)T$,$α_{3} = (0, 1, −1, a)T$,$β = (3, 10, b, 4)T$．问：(1)$a$,$b$取何值时，$β$不能由$α_{1}$,$α_{2}$,$α_{3}$线性表示？(2)$a$,$b$取何值时，$β$可由$α_{1}$,$α_{2}$,$α_{3}$线性表示？并写出表达式．', '[]', '
(1) 当$b \\neq 2$时，$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
(2) 当$b = 2$时，$β$可由$α_{1}, α_{2}, α_{3}$线性表示。表达式为：
若$a \\neq 1$，则$β = −α_{1} + 2α_{2}$；若$a = 1$，则$β = −α_{1} + 2α_{2} + tα_{3}$，其中$t$为任意常数。
', '
考虑线性方程组$x_{1}α_{1} + x_{2}α_{2} + x_{3}α_{3} = β$，对应的增广矩阵为：


$$
\\left( \\begin{array}{cccc}
1 & 2 & 0 & 3 \\\\
4 & 7 & 1 & 10 \\\\
0 & 1 & −1 & b \\\\
2 & 3 & a & 4 \\\\
\\end{array} \\right)
$$

通过行变换化为行阶梯形：


$$
\\left( \\begin{array}{cccc}
1 & 0 & 2 & −1 \\\\
0 & 1 & −1 & 2 \\\\
0 & 0 & 0 & b - 2 \\\\
0 & 0 & a - 1 & 0 \\\\
\\end{array} \\right)
$$

由第三行可知，当$b \\neq 2$时，方程组无解，故$β$不能由$α_{1}, α_{2}, α_{3}$线性表示。
当$b = 2$时，方程组有解。此时：
若$a \\neq 1$，则第四行给出$x_{3} = 0$，代入前两行得$x_{1} = −1$，$x_{2} = 2$，故表达式为$β = −α_{1} + 2α_{2}$。若$a = 1$，则第四行为全零行，方程组化为$x_{1} + 2x_{3} = −1$，$x_{2} - x_{3} = 2$，令$x_{3} = t$（任意常数），得$x_{1} = −1 - 2t$，$x_{2} = 2 + t$，故表达式为$β = (−1 - 2t)α_{1} + (2 + t)α_{2} + tα_{3} = −α_{1} + 2α_{2} + t(−2α_{1} + α_{2} + α_{3})$。由于当$a = 1$时，$α_{3} = 2α_{1} - α_{2}$，故$−2α_{1} + α_{2} + α_{3} = 0$，因此表达式可写为$β = −α_{1} + 2α_{2} + tα_{3}$，其中$t$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:10:51', 9, 'Mogullzr', '2026-01-29 14:10:51', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1183');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1183');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '1183');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1184, '1998年考研数学卷3第1题', '简单', '考研数学1998年卷3真题', '设曲线$f(x) = x^{n}$在点$(1, 1)$处的切线与$x$轴的交点为$(ξ_{n}, 0)$，
则$\\lim_{n→∞} f(ξ_{n}) =$______．', '[]', '
$\\frac{1}{e}$
', '
曲线$f(x) = x^{n}$在点$(1, 1)$处的切线斜率为$f^{′}(x) = nx^{n-1}$，在$x = 1$处斜率为$n$。切线方程为$y - 1 = n(x - 1)$。
切线与$x$轴交于$(ξ_{n}, 0)$，代入得$0 - 1 = n(ξ_{n} - 1)$，解得$ξ_{n} = 1 - \\frac{1}{n}$。
则$f(ξ_{n}) = (1 - \\frac{1}{n})^{n}$。
求极限

$$
\\lim_{n→∞} f(ξ_{n}) = \\lim_{n→∞} (1 - \\frac{1}{n})^{n} = e^{−1} = \\frac{1}{e}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:54', 9, 'Mogullzr', '2026-01-29 14:10:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1184');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1184');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1184');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1185, '1998年考研数学卷3第2题', '简单', '考研数学1998年卷3真题', '$∫ \\frac{\\ln x-1}{x^{2}}dx =$______．', '[]', '
$−\\frac{\\ln x}{x} + C$
', '
考虑积分$∫ \\frac{\\ln x-1}{x^{2}} dx$。使用分部积分法，设$u = \\ln x - 1$，$dv = \\frac{1}{x^{2}} dx$，则$du = \\frac{1}{x} dx$，$v = −\\frac{1}{x}$。代入分部积分公式：


$$
\\begin{array}{cc}
∫ u dv & = uv - ∫ v du \\\\
 & = (\\ln x - 1) ⋅ (−\\frac{1}{x}) - ∫ (−\\frac{1}{x}) ⋅ \\frac{1}{x} dx \\\\
\\end{array}
$$

其中$∫ \\frac{1}{x^{2}} dx = −\\frac{1}{x} + C$，所以：


$$
−\\frac{\\ln x - 1}{x} - \\frac{1}{x} + C = −\\frac{\\ln x}{x} + C.
$$

因此，积分结果为$−\\frac{\\ln x}{x} + C$。
验证：对$−\\frac{\\ln x}{x}$求导，


$$
\\frac{d}{dx} (−\\frac{\\ln x}{x}) = −\\frac{\\frac{1}{x} ⋅ x - \\ln x ⋅ 1}{x^{2}} = −\\frac{1 - \\ln x}{x^{2}} = \\frac{\\ln x - 1}{x^{2}},
$$

与原被积函数一致。
', 9, 'Mogullzr', '2026-01-29 14:10:54', 9, 'Mogullzr', '2026-01-29 14:10:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1185');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1185');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1185');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1186, '1998年考研数学卷3第3题', '简单', '考研数学1998年卷3真题', '差分方程$2y_{t+1} + 10y_{t} - 5t = 0$的通解为 ______．', '[]', '
$y_{t} = A ⋅ (−5)t + \\frac{5}{12}t - \\frac{5}{72}$
', '
给定差分方程$2y_{t+1} + 10y_{t} - 5t = 0$，可化为标准形式


$$
y_{t+1} + 5y_{t} = \\frac{5}{2}t.
$$

齐次方程


$$
y_{t+1} + 5y_{t} = 0
$$

的解为


$$
y_{h} = A ⋅ (−5)t,
$$

其中$A$为常数。
非齐次项为$\\frac{5}{2}t$，设特解形式为


$$
y_{p} = at + b.
$$

代入方程：


$$
y_{t+1} = a(t + 1) + b = at + a + b,
$$

代入得


$$
(at + a + b) + 5(at + b) = 6at + (a + 6b) = \\frac{5}{2}t.
$$

比较系数：


$$
6a = \\frac{5}{2},  解得 a = \\frac{5}{12};
$$



$$
a + 6b = 0,  即 \\frac{5}{12} + 6b = 0,  解得 b = −\\frac{5}{72}.
$$

特解为


$$
y_{p} = \\frac{5}{12}t - \\frac{5}{72}.
$$

通解为齐次解与特解之和：


$$
y_{t} = A ⋅ (−5)t + \\frac{5}{12}t - \\frac{5}{72}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:54', 9, 'Mogullzr', '2026-01-29 14:10:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1186');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1186');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1186');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1187, '1998年考研数学卷3第4题', '简单', '考研数学1998年卷3真题', '设矩阵$A, B$满足$A^{∗}BA = 2BA - 8E$，其中$A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$,$E$为单位矩阵，$A^{∗}$为$A$的伴随矩阵，则$B =$______．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & −4 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)
$$

', '应填


$$
\\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & −4 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)
$$

由于$∣A∣ = −2 \\neq 0$，所以$A$可逆。在$A^{∗}BA = 2BA - 8E$两边左乘$A$，右乘$A^{−1}$，利用公式$AA^{∗} = ∣A∣E, AA^{−1} = E$，得到$∣A∣B = 2AB - 8E$。
$∣A∣ = −2$代入上式，整理得


$$
B = 4(E + A)−1 = 4 \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) = 4 \\left( \\begin{array}{ccc}
\\frac{1}{2} & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & \\frac{1}{2} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & −4 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:10:54', 9, 'Mogullzr', '2026-01-29 14:10:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1187');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1187');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1187');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1188, '1998年考研数学卷3第5题', '简单', '考研数学1998年卷3真题', '设$X_{1}, X_{2}, X_{3}, X_{4}$是来自正态总体$N (0, 2^{2})$的简单随机样本，
$$
X = a (X_{1} - 2X_{2})^{2} + b (3X_{3} - 4X_{4})^{2} ,
$$
则当$a =$______,$b =$______时，统计量$X$服从$χ^{2}$分布，其自由度为 ______．', '[]', '$a = \\frac{1}{20}$,$b = \\frac{1}{100}$, 自由度为 2
', '由于$X_{1}, X_{2}, X_{3}, X_{4}$相互独立，均服从$N(0, 2^{2})$，所以由数学期望和方差的性质，得

$$
E(X_{1} - 2X_{2}) = 0,  D(X_{1} - 2X_{2}) = 1 × 2^{2} + 2^{2} × 2^{2} = 20,
$$

所以$X_{1} - 2X_{2} ∼ N(0, 20)$，同理$3X_{3} - 4X_{4} ∼ N(0, 100)$。又因为$X_{1} - 2X_{2}$与$3X_{3} - 4X_{4}$相互独立，且

$$
\\frac{1}{\\sqrt{20}}(X_{1} - 2X_{2}) ∼ N(0, 1),  \\frac{1}{\\sqrt{100}}(3X_{3} - 4X_{4}) ∼ N(0, 1),
$$

由$χ^{2}$分布的定义，当$a = \\frac{1}{20}, b = \\frac{1}{100}$时，

$$
X = \\frac{1}{20}(X_{1} - 2X_{2})2 + \\frac{1}{100}(3X_{3} - 4X_{4})2 ∼ χ^{2}(2);
$$

即当$a = \\frac{1}{20}, b = \\frac{1}{100}$时，$X$服从$χ^{2}$分布，其自由度为 2。实际上，当$a = 0, b = \\frac{1}{100}$时，$X ∼ χ^{2}(1)$；当$a = \\frac{1}{20}, b = 0$时，$X ∼ χ^{2}(1)$，也是正确的。
', 9, 'Mogullzr', '2026-01-29 14:10:54', 9, 'Mogullzr', '2026-01-29 14:10:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1188');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1188');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1189, '1998年考研数学卷3第6题', '简单', '考研数学1998年卷3真题', '设周期函数$f(x)$在$(−∞, +∞)$内可导，周期为$4$．
又$\\lim_{x→0} \\frac{f(1)-f(1-x)}{2x} = −1$，
则曲线$y = f(x)$在点$(5, f(5))$处的切线的斜率为', '[''$\\\\frac{1}{2}$．'', ''$0$．'', ''$t$．'', ''$−2$．'']', "['D']", '由于$f(x)$周期为 4 且可导，因此$f^{′}(x)$也周期为 4，即$f^{′}(x + 4) = f^{′}(x)$。给定极限$\\lim_{x→0} \\frac{f(1)-f(1-x)}{2x} = −1$，令$h = −x$，则当$x → 0$时$h → 0$，有：
$$
\\frac{f(1) - f(1 - x)}{2x} = \\frac{− \\lbrack f(1 + h) - f(1) \\rbrack }{−2h} = \\frac{f(1 + h) - f(1)}{2h},
$$
所以
$$
\\lim_{h→0} \\frac{f(1 + h) - f(1)}{2h} = \\frac{1}{2}f^{′}(1) = −1,
$$
解得$f^{′}(1) = −2$。由周期性，$f^{′}(5) = f^{′}(1) = −2$，因此曲线在点$(5, f(5))$处的切线斜率为$−2$。', 9, 'Mogullzr', '2026-01-29 14:10:54', 9, 'Mogullzr', '2026-01-29 14:10:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1189');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1189');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1189');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1190, '1998年考研数学卷3第7题', '简单', '考研数学1998年卷3真题', '设函数$f(x) = \\lim_{n→∞} \\frac{1+x}{1+x^{2n}}$，
讨论函数$f(x)$的间断点，其结论为', '[''不存在间断点．'', ''存在间断点$x = 1$．'', ''存在间断点$x = 0$．'', ''存在间断点$x = −1$．'']', "['B']", '函数

$$
f(x) = \\lim_{n→∞} \\frac{1 + x}{1 + x^{2n}}
$$
的极限依赖于$x$的值。当$∣x∣ < 1$时，$x^{2n} → 0$，故$f(x) = 1 + x$；当$∣x∣ > 1$时，$x^{2n} → ∞$，故$f(x) = 0$；当$x = 1$时，$f(1) = \\lim_{n→∞} \\frac{2}{1+1} = 1$；当$x = −1$时，$f(−1) = \\lim_{n→∞} \\frac{0}{1+1} = 0$。在$x = 1$处，左极限为

$$
\\lim_{x→1^{-}} f(x) = \\lim_{x→1^{-}}(1 + x) = 2,
$$
右极限为

$$
\\lim_{x→1^{+}} f(x) = 0,
$$
函数值为$f(1) = 1$，三者不相等，故$x = 1$为间断点。在$x = −1$处，左极限、右极限和函数值均为 0，故连续。
在$x = 0$处，函数连续。因此，存在间断点$x = 1$，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:10:55', 9, 'Mogullzr', '2026-01-29 14:10:55', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1190');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1190');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1190');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1191, '1998年考研数学卷3第8题', '简单', '考研数学1998年卷3真题', '齐次线性方程组$\\begin{cases} λx_{1} + x_{2} + λ^{2}x_{3} = 0 \\\\ x_{1} + λx_{2} + x_{3} = 0 \\\\ x_{1} + x_{2} + λx_{3} = 0 \\end{cases}$的系数矩阵记为$A$．若存在三阶矩阵$B \\neq 0$使得$AB = 0$，则', '[''$λ = −2$且$∣B∣ = 0$．'', ''$λ = −2$且$∣B∣ \\\\neq 0$．'', ''$λ = 1$且$∣B∣ = 0$．'', ''$λ = 1$且$∣B∣ \\\\neq 0$．'']', "['C']", '齐次线性方程组的系数矩阵为$A = \\left( \\begin{array}{ccc}
λ & 1 & λ^{2} \\\\
1 & λ & 1 \\\\
1 & 1 & λ \\\\
\\end{array} \\right)$。存在三阶矩阵$B \\neq 0$使得$AB = 0$，这意味着$B$的列向量均为$Ax = 0$的解，因此$A$必须奇异，即$∣A∣ = 0$。计算$∣A∣$：
$$
\\begin{array}{ccccc}
∣A∣ & \\begin{array}{ccc}
λ & 1 & λ^{2} \\\\
1 & λ & 1 \\\\
1 & 1 & λ \\\\
\\end{array} &  &  &  \\\\
 & = λ(λ^{2} - 1) - 1(λ - 1) + λ^{2}(1 - λ) &  &  &  \\\\
 &  & λ & 1 & λ^{2} \\\\
 & = λ^{3} - λ - λ + 1 + λ^{2} - λ^{3} & 1 & λ & 1 \\\\
 &  & 1 & 1 & λ \\\\
 & = λ^{2} - 2λ + 1 &  &  &  \\\\
\\end{array}
$$
设$∣A∣ = 0$，得$λ = 1$。当$λ = 1$时，$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，方程组化为$x_{1} + x_{2} + x_{3} = 0$，解空间为二维。$B$的列向量均属于该二维子空间，因此三列线性相关，故$∣B∣ = 0$。选项 A 和 B 中$λ = −2$时$∣A∣ \\neq 0$，不可能存在$B \\neq 0$使$AB = 0$；选项 D 中$∣B∣ \\neq 0$不成立。因此正确选项为 C。', 9, 'Mogullzr', '2026-01-29 14:10:55', 9, 'Mogullzr', '2026-01-29 14:10:55', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1191');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1191');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1192, '1998年考研数学卷3第9题', '简单', '考研数学1998年卷3真题', '设$n (n ≥ 3)$阶矩阵$A = \\left( \\begin{array}{ccccc}
1 & a & a &  & a \\\\
 &  &  & ⋯ &  \\\\
a & 1 & a &  & a \\\\
 &  &  & ⋯ &  \\\\
a & a & 1 &  & a \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  &  &  \\\\
\\end{array} \\right)$，若矩阵$A$的秩为$n - 1$，则$a$必为', '[''$1$．'', ''$\\\\frac{1}{1-n}$．'', ''$−1$．'', ''$\\\\frac{1}{n-1}$．'']', "['B']", '
矩阵$A$的秩为$n - 1$，因此其行列式为零。矩阵$A$可表示为

$$
A = (1 - a)I + aJ
$$
其中$I$是单位矩阵，$J$是全 1 矩阵。计算行列式，特征值分别为

$$
1 + a(n - 1) 和 1 - a (重数n - 1)
$$
故

$$
det(A) =  \\lbrack 1 + a(n - 1) \\rbrack (1 - a)n−1 = 0
$$
解得

$$
a = 1 或 a = −\\frac{1}{n - 1}
$$
当$a = 1$时，矩阵所有元素均为 1，秩为 1，不满足条件。
当$a = −\\frac{1}{n-1}$时，特征值

$$
1 + a(n - 1) = 0
$$
其余特征值非零，秩为$n - 1$，符合要求。
选项 B 为$\\frac{1}{1-n} = −\\frac{1}{n-1}$，故正确。', 9, 'Mogullzr', '2026-01-29 14:10:55', 9, 'Mogullzr', '2026-01-29 14:10:55', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1192');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1192');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '1192');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1193, '1998年考研数学卷3第10题', '简单', '考研数学1998年卷3真题', '设$F_{1}(x)$与$F_{2}(x)$分别为随机变量$X_{1}$与$X_{2}$的分布函数．
为使$F(x) = aF_{1}(x) - bF_{2}(x)$是某一变量的分布函数，在下列给定的各组数值中应取', '[''$a = \\\\frac{3}{5}, b = −\\\\frac{2}{5}$．'', ''$a = \\\\frac{2}{3}, b = \\\\frac{2}{3}$．'', ''$a = −\\\\frac{1}{2}, b = \\\\frac{3}{2}$．'', ''$a = \\\\frac{1}{2}, b = −\\\\frac{3}{2}$．'']', "['A']", '
为了使$F(x) = aF_{1}(x) - bF_{2}(x)$是某一随机变量的分布函数，必须满足分布函数的条件：非递减性、右连续性，以及
$$
\\lim_{x→−∞} F(x) = 0,  \\lim_{x→∞} F(x) = 1.
$$
由于$F_{1}(x)$和$F_{2}(x)$是分布函数，它们满足这些条件，因此右连续性自动满足。首先考虑极限条件：当$x → ∞$时，$F_{1}(x) → 1$，$F_{2}(x) → 1$，所以
$$
F(x) → a ⋅ 1 - b ⋅ 1 = a - b,
$$
必须等于 1，即
$$
a - b = 1.
$$
其次考虑非递减性：对于任意$x_{1} < x_{2}$，有$F(x_{1}) ≤ F(x_{2})$，即
$$
a \\lbrack F_{1}(x_{2}) - F_{1}(x_{1}) \\rbrack  - b \\lbrack F_{2}(x_{2}) - F_{2}(x_{1}) \\rbrack  ≥ 0.
$$
由于$F_{1}$和$F_{2}$非递减，其增量$ΔF_{1} ≥ 0$和$ΔF_{2} ≥ 0$。要保证不等式恒成立，需
$$
a ≥ 0,  b ≤ 0.
$$
检查选项：A：$a = \\frac{3}{5},  b = −\\frac{2}{5}$，满足$a - b = 1$，且$a ≥ 0,  b ≤ 0$。B：$a = \\frac{2}{3},  b = \\frac{2}{3}$，不满足$a - b = 1$，且$b > 0$。C：$a = −\\frac{1}{2},  b = \\frac{3}{2}$，不满足$a - b = 1$，且$a < 0,  b > 0$。D：$a = \\frac{1}{2},  b = −\\frac{3}{2}$，满足$a ≥ 0,  b ≤ 0$，但不满足$a - b = 1$。因此，只有选项A满足所有条件。', 9, 'Mogullzr', '2026-01-29 14:10:55', 9, 'Mogullzr', '2026-01-29 14:10:55', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1193');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1193');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1194, '1998年考研数学卷3第11题', '简单', '考研数学1998年卷3真题', '设$z = (x^{2} + y^{2})e^{− arctan \\frac{y}{x}}$，求$dz$与$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
dz = e^{− arctan \\frac{y}{x}} ((2x + y)dx + (2y - x)dy)
$$



$$
\\frac{∂^{2}z}{∂x∂y} = e^{− arctan \\frac{y}{x}}\\frac{y^{2} - x^{2} - xy}{x^{2} + y^{2}}
$$

', '设$z = (x^{2} + y^{2})e^{− arctan \\frac{y}{x}}$。首先求全微分$dz$，需计算一阶偏导数$\\frac{∂z}{∂x}$和$\\frac{∂z}{∂y}$。
令$u = arctan \\frac{y}{x}$，则$z = (x^{2} + y^{2})e^{−u}$。
计算$\\frac{∂z}{∂x}$:


$$
\\frac{∂z}{∂x} = \\frac{∂}{∂x} ((x^{2} + y^{2})e^{−u}) = 2xe^{−u} + (x^{2} + y^{2})e^{−u} (−\\frac{∂u}{∂x})
$$

其中$\\frac{∂u}{∂x} = \\frac{∂}{∂x} arctan \\frac{y}{x} = \\frac{1}{1+(y/x)2} ⋅ (−\\frac{y}{x^{2}}) = −\\frac{y}{x^{2}+y^{2}}$，
代入得：


$$
\\frac{∂z}{∂x} = 2xe^{−u} + (x^{2} + y^{2})e^{−u} (\\frac{y}{x^{2} + y^{2}}) = e^{−u}(2x + y)
$$

计算$\\frac{∂z}{∂y}$:


$$
\\frac{∂z}{∂y} = \\frac{∂}{∂y} ((x^{2} + y^{2})e^{−u}) = 2ye^{−u} + (x^{2} + y^{2})e^{−u} (−\\frac{∂u}{∂y})
$$

其中$\\frac{∂u}{∂y} = \\frac{∂}{∂y} arctan \\frac{y}{x} = \\frac{1}{1+(y/x)2} ⋅ \\frac{1}{x} = \\frac{x}{x^{2}+y^{2}}$，
代入得：


$$
\\frac{∂z}{∂y} = 2ye^{−u} - (x^{2} + y^{2})e^{−u}\\frac{x}{x^{2} + y^{2}} = e^{−u}(2y - x)
$$

因此，全微分为：


$$
\\begin{array}{cc}
dz & = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy \\\\
 & = e^{−u}(2x + y)dx + e^{−u}(2y - x)dy \\\\
 & = e^{− arctan \\frac{y}{x}} ((2x + y)dx + (2y - x)dy) \\\\
\\end{array}
$$

接下来求混合偏导数$\\frac{∂^{2}z}{∂x∂y}$，即对$\\frac{∂z}{∂x}$求关于$y$的偏导：


$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂y} (e^{−u}(2x + y))
$$

应用乘积法则：


$$
\\begin{array}{cc}
\\frac{∂}{∂y} (e^{−u}(2x + y)) & = e^{−u} ⋅ (−\\frac{∂u}{∂y}) (2x + y)e^{−u} ⋅ \\frac{∂}{∂y}(2x + y) \\\\
 & = e^{−u} (−\\frac{∂u}{∂y}(2x + y) + 1) \\\\
\\end{array}
$$

代入$\\frac{∂u}{∂y} = \\frac{x}{x^{2}+y^{2}}$：


$$
\\frac{∂^{2}z}{∂x∂y} = e^{−u} (−\\frac{x}{x^{2} + y^{2}}(2x + y) + 1) = e^{−u}\\frac{−x(2x + y) + (x^{2} + y^{2})}{x^{2} + y^{2}}
$$

化简分子：


$$
−x(2x + y) + x^{2} + y^{2} = −2x^{2} - xy + x^{2} + y^{2} = −x^{2} - xy + y^{2}
$$

因此：


$$
\\frac{∂^{2}z}{∂x∂y} = e^{−u}\\frac{y^{2} - x^{2} - xy}{x^{2} + y^{2}} = e^{− arctan \\frac{y}{x}}\\frac{y^{2} - x^{2} - xy}{x^{2} + y^{2}}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:56', 9, 'Mogullzr', '2026-01-29 14:10:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1194');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1194');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1194');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1195, '1998年考研数学卷3第12题', '简单', '考研数学1998年卷3真题', '设$D = \\{(x, y) ​x^{2} + y^{2} ≤ x\\}$，求$\\iint_{D} \\sqrt{x}dxdy$．', '[]', '

$$
\\frac{8}{15}
$$

', '
积分区域$D$由$x^{2} + y^{2} ≤ x$定义，可改写为$(x - \\frac{1}{2})2 + y^{2} ≤ \\frac{1}{4}$，即圆心在$(\\frac{1}{2}, 0)$、半径为$\\frac{1}{2}$的圆盘。
由于被积函数$\\sqrt{x}$仅依赖于$x$，且区域关于$x$轴对称，积分可化为：

$$
\\iint_{D} \\sqrt{x} dx dy = \\int_{0}^{1} \\int_{−\\sqrt{x-x^{2}}}^{\\sqrt{x-x^{2}}} \\sqrt{x} dy dx
$$

内层积分对$y$进行：

$$
\\int_{−\\sqrt{x-x^{2}}}^{\\sqrt{x-x^{2}}} \\sqrt{x} dy = \\sqrt{x} ⋅ 2\\sqrt{x - x^{2}} = 2\\sqrt{x}\\sqrt{x(1 - x)} = 2x\\sqrt{1 - x}
$$

因此积分变为：

$$
2 \\int_{0}^{1} x\\sqrt{1 - x} dx
$$

令$u = 1 - x$，则$du = −dx$，积分限变为$u$从$1$到$0$：

$$
\\int_{0}^{1} x\\sqrt{1 - x} dx = \\int_{1}^{0}(1 - u)\\sqrt{u} (−du) = \\int_{0}^{1}(1 - u)u^{1/2} du = \\int_{0}^{1}(u^{1/2} - u^{3/2}) du
$$

计算积分：

$$
\\int_{0}^{1} u^{1/2} du =  \\lbrack \\frac{2}{3}u^{3/2} \\rbrack _{0}^{1} = \\frac{2}{3},  \\int_{0}^{1} u^{3/2} du =  \\lbrack \\frac{2}{5}u^{5/2} \\rbrack _{0}^{1} = \\frac{2}{5}
$$

所以：

$$
\\int_{0}^{1}(u^{1/2} - u^{3/2}) du = \\frac{2}{3} - \\frac{2}{5} = \\frac{4}{15}
$$

原积分为：

$$
2 × \\frac{4}{15} = \\frac{8}{15}
$$

故结果为$\\frac{8}{15}$。
', 9, 'Mogullzr', '2026-01-29 14:10:56', 9, 'Mogullzr', '2026-01-29 14:10:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1195');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1195');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1195');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1196, '1998年考研数学卷3第13题', '简单', '考研数学1998年卷3真题', '设某酒厂有一批新酿的好酒，如果现在（假定$t = 0$）就售出，总收入为$R_{0}(元)$．
如果窖藏起来待来日按陈酒价格出售，$t$年末总收入为$R = R_{0}e^{\\frac{2}{5}\\sqrt{t}}$．
假定银行的年利率为$r$，并以连续复利计息，
试求窖藏多少年售出可使总收入的现值最大．并求$r = 0.06$时的$t$值．', '[]', '
窖藏$t = \\frac{1}{25r^{2}}$年售出可使总收入的现值最大。当$r = 0.06$时，$t = \\frac{100}{9}$年。
', '
由连续复利公式知，这批酒在窖藏$t$年末售出总收入$R$的现值为$A(t) = Re^{−rt}$，而由题设，$t$年末的总收入$R = R_{0}e^{\\frac{2}{5}\\sqrt{t}}$，从而$A(t) = Re^{−rt} = R_{0}e^{\\frac{2}{5}\\sqrt{t}-rt}$。令


$$
\\frac{dA}{dt} = R_{0}e^{\\frac{2}{5}\\sqrt{t}-rt} (\\frac{1}{5\\sqrt{t}} - r) = 0,
$$

得惟一驻点$t = t_{0} = \\frac{1}{25r^{2}}$。又因为


$$
\\begin{array}{cc}
\\frac{d^{2}A}{dt^{2}} & = R_{0}e^{\\frac{2}{5}\\sqrt{t}-rt} (\\frac{1}{5\\sqrt{t}} - r)^{2} + R_{0}e^{\\frac{2}{5}\\sqrt{t}-rt} (−\\frac{1}{10\\sqrt{t^{3}}}) \\\\
 & = R_{0}e^{\\frac{2}{5}\\sqrt{t}-rt}  \\lbrack (\\frac{1}{5\\sqrt{t}} - r)^{2} - \\frac{1}{10\\sqrt{t^{3}}} \\rbrack  , \\\\
\\end{array}
$$

从而


$$
\\frac{d^{2}A}{dt^{2}}​_{t=t_{0}} = R_{0}e^{\\frac{1}{25r}}(−12.5r^{3}) < 0
$$

根据极值的第二充分条件知$t = t_{0}$是$A(t)$的极大值点。又因驻点惟一，所以也是最大值点。故窖藏$t = \\frac{1}{25r^{2}}$年出售，总收入的现值最大。当$r = 0.06$时，$t = \\frac{100}{9} ≈ 11$(年)。
', 9, 'Mogullzr', '2026-01-29 14:10:56', 9, 'Mogullzr', '2026-01-29 14:10:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1196');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1196');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1196');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1197, '1998年考研数学卷3第14题', '简单', '考研数学1998年卷3真题', '设函数$f(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$f^{′}(x) \\neq 0$．试证存在$ξ,  η ∈ (a, b)$，
使得$\\frac{f^{′}(ξ)}{f^{′}(η)} = \\frac{e^{b}-e^{a}}{b-a} ⋅ e^{−η}$．', '[]', '
存在ξ, η∈(a,b)使得所述等式成立。
', '
由于函数$f(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$f^{′}(x) \\neq 0$，根据拉格朗日中值定理，存在$ξ ∈ (a, b)$使得


$$
f(b) - f(a) = f^{′}(ξ)(b - a).
$$

考虑函数$g(x) = e^{x}$，它在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$g^{′}(x) = e^{x} \\neq 0$。由柯西中值定理，存在$η ∈ (a, b)$使得


$$
\\frac{f(b) - f(a)}{e^{b} - e^{a}} = \\frac{f^{′}(η)}{e^{η}}.
$$

将拉格朗日中值定理的结果代入上式，得


$$
\\frac{f^{′}(ξ)(b - a)}{e^{b} - e^{a}} = \\frac{f^{′}(η)}{e^{η}},
$$

整理得


$$
\\frac{f^{′}(ξ)}{f^{′}(η)} = \\frac{e^{b} - e^{a}}{b - a} ⋅ e^{−η}.
$$

因此，存在$ξ, η ∈ (a, b)$使得所述等式成立。
', 9, 'Mogullzr', '2026-01-29 14:10:56', 9, 'Mogullzr', '2026-01-29 14:10:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1197');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1197');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1197');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1198, '1998年考研数学卷3第15题', '简单', '考研数学1998年卷3真题', '设有两条抛物线$y = nx^{2} + \\frac{1}{n}$和$y = (n + 1)x^{2} + \\frac{1}{n+1}$，
记它们交点的横坐标的绝对值为$a_{n}$．(1) 求这两条抛物线所围成的平面图形的面积$S_{n}$；(2) 求级数$\\sum_{n=1}^{∞} \\frac{S_{n}}{a_{n}}$的和．', '[]', '$\\frac{4}{3}$
', '(Ⅰ) 由$y = nx^{2} + \\frac{1}{n}$与$y = (n + 1)x^{2} + \\frac{1}{n+1}$得$a_{n} = \\frac{1}{\\sqrt{n(n+1)}}$。因图形关于$y$轴对称，所以，所求图形的面积为

$$
\\begin{array}{cc}
S_{n} & = 2 \\int_{0}^{a_{n}}  \\lbrack nx^{2} + \\frac{1}{n} - (n + 1)x^{2} - \\frac{1}{n + 1} \\rbrack  dx \\\\
 & = 2 \\int_{0}^{a_{n}}  \\lbrack −x^{2} + \\frac{1}{n(n + 1)} \\rbrack  dx \\\\
 & = \\frac{2a_{n}}{n(n + 1)} - \\frac{2a_{n}^{3}}{3} \\\\
\\end{array}
$$

(Ⅱ) 由 (I) 的结果知

$$
\\frac{S_{n}}{a_{n}} = \\frac{4}{3}\\frac{1}{n(n + 1)} = \\frac{4}{3} (\\frac{1}{n} - \\frac{1}{n + 1})
$$

根据级数和的定义有

$$
\\sum_{n=1}^{∞} \\frac{S_{n}}{a_{n}} = \\lim_{n→∞} \\sum_{k=1}^{n} \\frac{S_{k}}{a_{k}} = \\frac{4}{3} \\lim_{n→∞} \\sum_{k=1}^{n} (\\frac{1}{k} - \\frac{1}{k + 1}) = \\frac{4}{3} \\lim_{n→∞}  \\lbrack 1 - \\frac{1}{n + 1} \\rbrack  = \\frac{4}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:56', 9, 'Mogullzr', '2026-01-29 14:10:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1198');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1198');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1198');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1199, '1998年考研数学卷3第16题', '简单', '考研数学1998年卷3真题', '设函数$f(x)$在$\\lbrack 1, +∞)$上连续．若由曲线$y = f(x)$，
直线$x = 1, x = t (t > 1)$与$x$轴所围成的平面图形绕$x$轴旋转一周所形成的旋转体体积为
$$
V(t) = \\frac{π}{3}  \\lbrack t^{2}f(t) - f(1) \\rbrack  .
$$
试求$y = f(x)$所满足的微分方程，并求该微分方程满足条件$y​_{x=2} = \\frac{2}{9}$的解．', '[]', '

$$
y = \\frac{x}{1 + x^{3}}
$$

', '
由题设及旋转体体积公式得

$$
π \\int_{1}^{t} f^{2}(x)dx = \\frac{π}{3} \\lbrack t^{2}f(t) - f(1) \\rbrack 即3 \\int_{1}^{t} f^{2}(x)dx = t^{2}f(t) - f(1).
$$

两边对$t$求导，化成微分方程

$$
3f^{2}(t) = 2tf(t) + t^{2}f^{′}(t)即\\frac{dy}{dx} = 3 (\\frac{y}{x})^{2} - 2 (\\frac{y}{x}) .
$$

这是一阶齐次微分方程。令$y = ux$，有

$$
\\frac{dy}{dx} = u + x ⋅ \\frac{du}{dx},
$$

则上式化为

$$
u + x (\\frac{du}{dx}) = 3u^{2} - 2u即x\\frac{du}{dx} = 3u(u - 1).
$$

易知当$u = 0$或$u = 1$时不满足初始条件$y∣_{x=2} = \\frac{2}{9}$，所以$u \\neq 0$且$u \\neq 1$。将上述分离并两边积分得

$$
\\frac{du}{u(u - 1)} = \\frac{3dx}{x}
$$


$$
⇒  \\frac{u - 1}{u} = Cx^{3}.
$$

从而微分方程的通解为$y - x = Cx^{3}y$（$C$为任意常数）。代入初值$y∣_{x=2} = \\frac{2}{9}$得$C = −1$，从而所求的解为$y - x = −x^{3}y$，即

$$
y = \\frac{x}{1 + x^{3}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:57', 9, 'Mogullzr', '2026-01-29 14:10:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1199');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1199');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1199');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1200, '1998年考研数学卷3第17题', '简单', '考研数学1998年卷3真题', '设向量$α = (a_{1}, a_{2}, ⋯  , a_{n})T$,$β = (b_{1}, b_{2}, ⋯  , b_{n})T$都是非零向量，
且满足条件$α^{T}β = 0$．记$n$阶矩阵$A = αβ^{T}$．求：(1)$A^{2}$；(2) 矩阵$A$的特征值和特征向量．', '[]', '
(1)$A^{2} = 0$（零矩阵）。
(2) 矩阵$A$的特征值全为 0；特征向量是所有满足$β^{T}v = 0$的非零向量$v$。
', '(Ⅰ) 对等式$α^{T}β = 0$两边取转置，有$(α^{T}β)T = β^{T}α = 0$，即$β^{T}α = 0$。从而

$$
A^{2} = (αβ^{T})2 = αβ^{T}αβ^{T} = α(β^{T}α)β^{T} = α0β^{T} = 0αβ^{T} = 0.
$$

即$A^{2}$是$n$阶零矩阵。
(Ⅱ) 设$λ$是$A$的任一特征值，$ξ$是对应的特征向量（$ξ \\neq 0$），则有

$$
Aξ = λξ  ⇒  0 = A^{2}ξ = λ^{2}ξ  ⇒  λ = 0.
$$

即矩阵的全部特征值为零。下面求$A$的特征向量：不妨设$a_{1} \\neq 0, b_{1} \\neq 0$，则对线性方程组$(0E - A)x = 0$的系数矩阵作初等行变换得

$$
(0E - A) = \\left( \\begin{array}{cccc}
−a_{1}b_{1} & −a_{1}b_{2} &  & −a_{1}b_{n} \\\\
 &  & ⋯ &  \\\\
−a_{2}b_{1} & −a_{2}b_{2} &  & −a_{2}b_{n} \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
−a_{n}b_{1} & −a_{n}b_{2} &  & −a_{n}b_{n} \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
b_{1} & b_{2} &  & b_{n} \\\\
 &  & ⋯ &  \\\\
−a_{2}b_{1} & −a_{2}b_{2} &  & −a_{2}b_{n} \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
−a_{n}b_{1} & −a_{n}b_{2} &  & −a_{n}b_{n} \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right)
$$



$$
→ \\left( \\begin{array}{cccc}
b_{1} & b_{2} &  & b_{n} \\\\
 &  & ⋯ &  \\\\
0 & 0 &  & 0 \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
0 & 0 &  & 0 \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right) .
$$

于是得方程组$(0E - A)x = 0$的基础解系为

$$
ξ_{1} = (−b_{2}, b_{1}, 0, ⋯  , 0), ξ_{2} = (−b_{3}, 0, b_{1}, ⋯  , 0), ⋯  , ξ_{n-1} = (−b_{n}, 0, 0, ⋯  , b_{1}).
$$

则$A$的属于$λ = 0$的全部特征向量为$k_{1}ξ_{1} + k_{2}ξ_{2} + ⋯ + k_{n-1}ξ_{n-1}$，其中$k_{1}, k_{2}, ⋯  , k_{n-1}$为不全为零的任意常数。
', 9, 'Mogullzr', '2026-01-29 14:10:57', 9, 'Mogullzr', '2026-01-29 14:10:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1200');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1200');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1201, '1998年考研数学卷3第18题', '简单', '考研数学1998年卷3真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，矩阵$B = (kE + A)2$，其中$k$为实数，$E$为单位矩阵．
求对角矩阵$Λ$，使$B$与$Λ$相似，并求$k$为何值时，$B$为正定矩阵．', '[]', '对角矩阵$Λ = \\left( \\begin{array}{ccc}
k^{2} & 0 & 0 \\\\
0 & (k + 2)2 & 0 \\\\
0 & 0 & (k + 2)2 \\\\
\\end{array} \\right)$，使$B$与$Λ$相似。当$k \\neq 0$且$k \\neq −2$时，$B$为正定矩阵。
', '
由于矩阵$A$的特征多项式

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & 0 & −1\\\\
0 & λ - 2 & 0\\\\
−1 & 0 & λ - 1
\\end{vmatrix} = (λ - 2) \\begin{vmatrix}
λ - 1 & −1\\\\
−1 & λ - 1
\\end{vmatrix} = λ(λ - 2)2,
$$

可得$A$的特征值是$λ_{1} = λ_{2} = 2, λ_{3} = 0$。因为$A$是实对称矩阵，故存在可逆矩阵

$$
P使P^{−1}AP = Λ = \\left( \\begin{array}{ccc}
2 &  &  \\\\
 & 2 &  \\\\
 &  & 0 \\\\
\\end{array} \\right) ,
$$

即$A = PAP^{−1}$。那么

$$
\\begin{array}{cc}
B & = (kE + A)2 = (kPP^{−1} + PAP^{−1})2 =  \\lbrack P(kE + Λ)P^{−1} \\rbrack 2 \\\\
 & = P(kE + Λ)P^{−1}P(kE + Λ)P^{−1} = P(kE + Λ)2P^{−1}. \\\\
\\end{array}
$$

即$P^{−1}BP = (kE + Λ)2$。故$B ∼ \\left( \\begin{array}{ccc}
(k + 2)2 & 0 & 0 \\\\
0 & (k + 2)2 & 0 \\\\
0 & 0 & k^{2} \\\\
\\end{array} \\right)$。当$k \\neq −2$且$k \\neq 0$时，$B$的全部特征值大于零，这时$B$为正定矩阵。
', 9, 'Mogullzr', '2026-01-29 14:10:57', 9, 'Mogullzr', '2026-01-29 14:10:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1201');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1201');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1202, '1998年考研数学卷3第19题', '简单', '考研数学1998年卷3真题', '一商店经销某种商品，每周进货的数量$X$与顾客对该种商品的需求量$Y$是相互独立的随机变量，
且都服从区间$\\lbrack 10, 20 \\rbrack$上的均匀分布．商店每售出一单位商品可得利润$1000$元；
若需求量超过了进货量，商店可从其他商店调剂供应，这时每单位商品获利润为$500$元．
试计算此商店经销该种商品每周所得利润的期望值．', '[]', '

$$
\\frac{42500}{3}
$$

', '
设$Z$表示商店每周所得的利润，当$Y ≤ X$时，卖得利润为$Z = 1000Y$（元）；当$Y > X$时，调剂了$Y - X$，总共得到利润$Z = 1000X + 500(Y - X) = 500(X + Y)$（元）。所以

$$
Z = \\begin{cases} 1000Y & Y ≤ X \\\\ 500(X + Y) & Y > X. \\end{cases}
$$

由题设$X$与$Y$都服从区间$\\lbrack 10, 20 \\rbrack$上的均匀分布，联合概率密度为

$$
f(x, y) = \\begin{cases} \\frac{1}{100} & 10 ≤ x ≤ 20,  10 ≤ y ≤ 20 \\\\ 0 & 其他. \\end{cases}
$$


由二维连续型随机变量的数学期望定义得

$$
\\begin{array}{cc}
E(Z) & = \\iint_{D_{1}} 1000y ⋅ f(x, y) dx dy + \\iint_{D_{2}} 500(x + y) ⋅ f(x, y) dx dy \\\\
 & = \\iint_{D_{1}} 1000y ⋅ \\frac{1}{100} dx dy + \\iint_{D_{2}} 500(x + y) ⋅ \\frac{1}{100} dx dy \\\\
 & = 10 \\int_{10}^{20} dy \\int_{y}^{20} y dx + 5 \\int_{10}^{20} dy \\int_{10}^{y}(x + y) dx \\\\
 & = \\frac{20000}{3} + 5 × 1500 ≈ 14166.67 (元). \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:10:57', 9, 'Mogullzr', '2026-01-29 14:10:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1202');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1202');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1202');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1203, '1998年考研数学卷3第20题', '简单', '考研数学1998年卷3真题', '设有来自三个地区的各$10$名、$15$名和$25$名考生的报名表，
其中女生的报名表分别为$3$份、$7$份和$5$份．随机地取一个地区的报名表，从中先后抽出两份．(1) 求先抽到的一份是女生表的概率$p$；(2) 已知后抽到的一份是男生表，求先抽到的一份是女生表的概率$q$．', '[]', '
(1)$p = \\frac{29}{90}$
(2)$q = \\frac{20}{61}$
', '
记事件$B_{j} =$“第$j$次抽到的报名表是女生表”$(j = 1, 2)$，$A_{i} =$“报名表是第$i$个地区的”$(i = 1, 2, 3)$。易见$A_{1}, A_{2}, A_{3}$构成一个完备事件组，且


$$
P(A_{i}) = \\frac{1}{3} (i = 1, 2, 3),
$$



$$
P(B_{1}∣A_{1}) = \\frac{3}{10},  P(B_{1}∣A_{2}) = \\frac{7}{15},  P(B_{1}∣A_{3}) = \\frac{5}{25}.
$$

(Ⅰ)应用全概率公式得


$$
p = P(B_{1}) = \\sum_{i=1}^{3} P(A_{i}) ⋅ P(B_{1}∣A_{i}) = \\frac{1}{3} (\\frac{3}{10} + \\frac{7}{15} + \\frac{5}{25}) = \\frac{29}{90}.
$$

(Ⅱ)对事件$B_{1}, B_{2}$再次用全概率公式得


$$
P(B_{1}, B_{2}) = \\sum_{i=1}^{3} P(A_{i}) ⋅ P(B_{1}, B_{2}∣A_{i}) = \\frac{1}{3} (\\frac{3}{10} ⋅ \\frac{7}{9} + \\frac{7}{15} ⋅ \\frac{8}{14} + \\frac{5}{25} ⋅ \\frac{20}{24}) = \\frac{20}{90}.
$$

由抽签原理可知


$$
P(B_{2}) = P(B_{1}) = \\frac{61}{90},
$$

从而


$$
q = P(B_{1}∣B_{2}) = \\frac{P(B_{1}, B_{2})}{P(B_{2})} = \\frac{20}{90} ⋅ \\frac{90}{61} = \\frac{20}{61}.
$$

', 9, 'Mogullzr', '2026-01-29 14:10:57', 9, 'Mogullzr', '2026-01-29 14:10:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1203');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1203');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1204, '1998年考研数学卷4第1题', '', '考研数学1998年卷4真题', '/problems/other/1184', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1205, '1998年考研数学卷4第2题', '', '考研数学1998年卷4真题', '/problems/other/1185', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1206, '1998年考研数学卷4第3题', '', '考研数学1998年卷4真题', '/problems/other/1187', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1207, '1998年考研数学卷4第4题', '简单', '考研数学1998年卷4真题', '设$A$,$B$均为$n$阶矩阵，$∣A∣ = 2$,$∣B∣ = −3$，则$​2A^{∗}B^{−1}​ =$______．', '[]', '

$$
(2A^{∗}B^{−1}) = −\\frac{2^{2n-1}}{3}
$$

', '这是一个关于方阵行列式性质的计算问题。我们可以利用行列式的运算规则逐步求解。
核心公式回顾在$n$阶矩阵的运算中，我们需要用到以下性质：
数乘性质：$∣ kA ∣= k^{n} ∣ A ∣$乘积性质：$∣ AB ∣=∣ A ∣ ⋅ ∣ B ∣$伴随矩阵性质：$∣ A^{∗} ∣=∣ A ∣n−1$逆矩阵性质：$∣ B^{−1} ∣= \\frac{1}{∣B∣}$
计算步骤根据上述性质，对式子进行化简：

$$
∣2A^{∗}B^{−1} ∣= 2^{n} ∣ A^{∗}B^{−1}∣
$$

', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1207');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1207');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1207');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1207');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1208, '1998年考研数学卷4第5题', '简单', '考研数学1998年卷4真题', '设一次试验成功的概率为$p$，进行$100$次独立重复试验，当$p =$______时，
成功次数的标准差的值最大；其最大值为 ______．', '[]', '
$p = \\frac{1}{2}$，最大值为$5$
', '
成功次数服从二项分布，试验次数$n = 100$，成功概率$p$。
二项分布的标准差为

$$
σ = \\sqrt{np(1 - p)}.
$$

由于$n$固定，最大化$σ$等价于最大化$p(1 - p)$。
设$f(p) = p(1 - p)$，这是一个二次函数，开口向下。
求导得

$$
f^{′}(p) = 1 - 2p,
$$

令导数为零，解得

$$
p = \\frac{1}{2}.
$$

此时$f(p)$取得最大值$\\frac{1}{4}$。
因此，标准差的最大值为

$$
σ = \\sqrt{100 × \\frac{1}{4}} = \\sqrt{25} = 5.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1208');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1208');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1208');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1209, '1998年考研数学卷4第6题', '', '考研数学1998年卷4真题', '/problems/other/1189', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1210, '1998年考研数学卷4第7题', '', '考研数学1998年卷4真题', '/problems/other/1190', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1211, '1998年考研数学卷4第8题', '简单', '考研数学1998年卷4真题', '若向量组$α, β, γ$线性无关；$α, β, δ$线性相关，则', '[''$α$必可由$β, γ, δ$线性表示．'', ''$β$必不可由$α, γ, δ$线性表示．'', ''$δ$必可由$α, β, γ$线性表示．'', ''$δ$必不可由$α, β, γ$线性表示．'']', "['C']", '
已知向量组$α, β, γ$线性无关，且$α, β, δ$线性相关。
由于$α, β, γ$线性无关，则$α$和$β$线性无关。
由$α, β, δ$线性相关，存在不全为零的标量$a, b, c$，使得

$$
aα + bβ + cδ = 0.
$$
若$c = 0$，则$aα + bβ = 0$，但$α$和$β$线性无关，推出$a = 0$且$b = 0$，与不全为零矛盾，故$c \\neq 0$。
因此

$$
δ = −\\frac{a}{c}α - \\frac{b}{c}β,
$$
即$δ$可由$α$和$β$线性表示。
既然$δ$可由$α$和$β$线性表示，则$δ$必可由$α, β, γ$线性表示（只需令$γ$的系数为零），故选项C正确。选项 A 错误：反例中取$α = (1, 0, 0),  β = (0, 1, 0),  γ = (0, 0, 1),  δ = β$，则$α$不能由$β, γ, δ$线性表示。选项 B 错误：反例中取$α = (1, 0, 0),  β = (0, 1, 0),  γ = (0, 0, 1),  δ = α + β$，则$β$可由$α, γ, δ$线性表示。选项 D 错误：由上述推导，$δ$必可由$α, β, γ$线性表示，故 D 不成立。', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1211');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1211');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1211');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1212, '1998年考研数学卷4第9题', '简单', '考研数学1998年卷4真题', '设$A$,$B$,$C$是三个相互独立的随机事件，且$0 < P(C) < 1$，则在下列给定的四对事件中不相互独立的是', '[''$\\\\overline{A+B\\u200b}$与$C$．'', ''$\\\\overline{AC}$与$\\\\bar{C}$．'', ''$\\\\overline{A−B\\u200b}$与$\\\\bar{C}$．'', ''$\\\\overline{AB}$与$\\\\bar{C}$．'']', "['B']", '
由于$A, B, C$相互独立，且$0 < P(C) < 1$，需检查各对事件是否相互独立。
对于选项 B，$\\overline{AC}$表示$¬(A ∩ C)$，$\\bar{C}$表示$¬C$。
由于$¬(A ∩ C) = ¬A ∪ ¬C$，显然$¬C ⊆ ¬A ∪ ¬C$，即$¬C$是$¬(A ∩ C)$的子集。
因此，当$¬C$发生时，$¬(A ∩ C)$必然发生，即

$$
P(¬(A ∩ C) ∣ ¬C) = 1
$$
但独立性要求

$$
P(¬(A ∩ C) ∣ ¬C) = P(¬(A ∩ C))
$$
而

$$
P(¬(A ∩ C)) = 1 - P(A)P(C)
$$
在$P(A) > 0$时小于 1，故一般不相等，因此不独立。
其他选项均通过计算验证独立。', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1212');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1212');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1213, '1998年考研数学卷4第10题', '', '考研数学1998年卷4真题', '/problems/other/1193', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1214, '1998年考研数学卷4第11题', '简单', '考研数学1998年卷4真题', '求$\\lim_{n→∞} (n \\tan \\frac{1}{n})^{n^{2}}$（$n$为自然数）．', '[]', '$e^{\\frac{1}{3}}$
', '
考虑极限$\\lim_{n→∞} (n \\tan \\frac{1}{n})^{n^{2}}$。这是一个$1^{∞}$型不定式，令$L = \\lim_{n→∞} (n \\tan \\frac{1}{n})^{n^{2}}$，则$\\ln L = \\lim_{n→∞} n^{2} \\ln (n \\tan \\frac{1}{n})$。
令$x = \\frac{1}{n}$，当$n → ∞$时$x → 0^{+}$，则


$$
\\ln L = \\lim_{x→0^{+}} \\frac{1}{x^{2}} \\ln (\\frac{\\tan x}{x}) .
$$

当$x → 0$时，$\\tan x ∼ x + \\frac{x^{3}}{3} + O(x^{5})$，所以$\\frac{\\tan x}{x} ∼ 1 + \\frac{x^{2}}{3} + O(x^{4})$。
因此，


$$
\\ln (\\frac{\\tan x}{x}) ∼ \\ln (1 + \\frac{x^{2}}{3} + O(x^{4})) ∼ \\frac{x^{2}}{3} + O(x^{4}),
$$

于是


$$
\\frac{1}{x^{2}} \\ln (\\frac{\\tan x}{x}) ∼ \\frac{1}{x^{2}} ⋅ \\frac{x^{2}}{3} = \\frac{1}{3}.
$$

故$\\ln L = \\frac{1}{3}$，即$L = e^{\\frac{1}{3}}$。
', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1214');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1214');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1214');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1215, '1998年考研数学卷4第12题', '', '考研数学1998年卷4真题', '/problems/other/1194', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1216, '1998年考研数学卷4第13题', '', '考研数学1998年卷4真题', '/problems/other/1195', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1217, '1998年考研数学卷4第14题', '', '考研数学1998年卷4真题', '/problems/other/1196', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1218, '1998年考研数学卷4第15题', '简单', '考研数学1998年卷4真题', '设函数$f(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$f(a) = f(b) = 1$，
试证存在$ξ,  η ∈ (a, b)$，使得$e^{η-ξ} \\lbrack f(η) + f^{′}(η) \\rbrack  = 1$．', '[]', '见解析
', '令$g(x) = e^{x}f(x)$，则$g(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，且$g(a) = e^{a}f(a) = e^{a}$，$g(b) = e^{b}f(b) = e^{b}$。由拉格朗日中值定理，存在$η ∈ (a, b)$，使得

$$
g^{′}(η) = \\frac{g(b) - g(a)}{b - a} = \\frac{e^{b} - e^{a}}{b - a}.
$$

又因为$g^{′}(x) = e^{x} \\lbrack f(x) + f^{′}(x) \\rbrack$，所以

$$
e^{η} \\lbrack f(η) + f^{′}(η) \\rbrack  = \\frac{e^{b} - e^{a}}{b - a}.
$$

考虑函数$h(x) = e^{x}$，它在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导。由拉格朗日中值定理，存在$ξ ∈ (a, b)$，使得

$$
h^{′}(ξ) = \\frac{h(b) - h(a)}{b - a} = \\frac{e^{b} - e^{a}}{b - a},
$$

即

$$
e^{ξ} = \\frac{e^{b} - e^{a}}{b - a}.
$$

因此，

$$
e^{η} \\lbrack f(η) + f^{′}(η) \\rbrack  = e^{ξ},
$$

即

$$
e^{η-ξ} \\lbrack f(η) + f^{′}(η) \\rbrack  = 1.
$$

故存在$ξ, η ∈ (a, b)$使得所述等式成立。
', 9, 'Mogullzr', '2026-01-29 14:11:00', 9, 'Mogullzr', '2026-01-29 14:11:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1218');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1218');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1218');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1219, '1998年考研数学卷4第16题', '简单', '考研数学1998年卷4真题', '设直线$y = ax$与抛物线$y = x^{2}$所围成图形的面积为$S_{1}$，
它们与直线$x = 1$所围成的图形面积为$S_{2}$，并且$a < 1$．(1) 试确定$a$的值，使$S_{1} + S_{2}$达到最小，并求出最小值；(2) 求该最小值所对应的平面图形绕$x$轴旋转一周所得旋转体的体积．', '[]', '
(1)$a = \\frac{\\sqrt{2}}{2}$，最小值为$\\frac{2-\\sqrt{2}}{6}$
(2) 旋转体的体积为$\\frac{π}{30}(1 + \\sqrt{2})$
', '
(1) 直线$y = ax$与抛物线$y = x^{2}$的交点为$x = 0$和$x = a$。当$a < 1$时，面积$S_{1}$和$S_{2}$定义为：
若$a > 0$，则
$S_{1} = \\int_{0}^{a}(ax - x^{2}) dx,  S_{2} = \\int_{a}^{1}(x^{2} - ax) dx$若$a < 0$，则
$S_{1} = \\int_{a}^{0}(ax - x^{2}) dx,  S_{2} = \\int_{0}^{1}(x^{2} - ax) dx$
计算得


$$
S_{1} + S_{2} = \\frac{1}{3}(a^{3} + 1) - \\frac{a}{2} (a ≥ 0)
$$

或


$$
S_{1} + S_{2} = \\frac{1}{3} - \\frac{a}{2} - \\frac{a^{3}}{6} (a < 0)
$$

令$f(a) = S_{1} + S_{2}$，求导得


$$
f^{′}(a) = a^{2} - \\frac{1}{2} (a > 0)
$$

或

$$
f^{′}(a) = −\\frac{1}{2}(1 + a^{2}) (a < 0)
$$

当$a < 0$时，$f^{′}(a) < 0$，函数单调递减；
当$a > 0$时，$f^{′}(a) = 0$对应$a = \\frac{\\sqrt{2}}{2}$，且
当$a < \\frac{\\sqrt{2}}{2}$时$f^{′}(a) < 0$，当$a > \\frac{\\sqrt{2}}{2}$时$f^{′}(a) > 0$，
故$a = \\frac{\\sqrt{2}}{2}$时取得最小值。
代入得最小值为


$$
\\frac{2 - \\sqrt{2}}{6}
$$


(2) 当$a = \\frac{\\sqrt{2}}{2}$时，平面图形绕$x$轴旋转所得旋转体体积为：


$$
V = π \\int_{0}^{a}  \\lbrack (ax)2 - (x^{2})2 \\rbrack  dx + π \\int_{a}^{1}  \\lbrack (x^{2})2 - (ax)2 \\rbrack  dx
$$

代入$a = \\frac{\\sqrt{2}}{2}$，$a^{2} = \\frac{1}{2}$，计算得：


$$
V = π  \\lbrack \\frac{a^{3}}{3} - \\frac{2a^{5}}{5} + \\frac{1}{30} \\rbrack  = π  \\lbrack \\frac{\\sqrt{2}}{30} + \\frac{1}{30} \\rbrack  = \\frac{π}{30}(1 + \\sqrt{2})
$$

', 9, 'Mogullzr', '2026-01-29 14:11:01', 9, 'Mogullzr', '2026-01-29 14:11:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1219');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1219');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1219');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1220, '1998年考研数学卷4第17题', '', '考研数学1998年卷4真题', '/problems/other/1200', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:01', 9, 'Mogullzr', '2026-01-29 14:11:01', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1221, '1998年考研数学卷4第18题', '简单', '考研数学1998年卷4真题', '已知下列非齐次线性方程组①和②：
$$
1◯  \\begin{cases} x_{1} + x_{2} - 2x_{4} = −6 \\\\ 4x_{1} - x_{2} - x_{3} - x_{4} = 1 \\\\ 3x_{1} - x_{2} - x_{3} = 3; \\end{cases}  2◯  \\begin{cases} x_{1} + mx_{2} - x_{3} - x_{4} = −5 \\\\ nx_{2} - x_{3} - 2x_{4} = −11 \\\\ x_{3} - 2x_{4} = −t + 1. \\end{cases}
$$
(1) 求解方程组①，用其导出组的基础解系表示通解．(2) 当方程组②中的参数$m$,$n$,$t$为何值时，方程组①与②同解？', '[]', '(1) 方程组①的通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−2 \\\\
−4 \\\\
−5 \\\\
0 \\\\
\\end{array} \\right) + k \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) ,  k ∈ R
$$

其中导出组的基础解系为$\\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$。
(2) 当$m = 2$，$n = 4$，$t = 6$时，方程组①与②同解。
', '(1) 对于方程组①，写出增广矩阵：

$$
\\left( \\begin{array}{cccc|c}
1 & 1 & 0 & −2 & −6 \\\\
4 & −1 & −1 & −1 & 1 \\\\
3 & −1 & −1 & 0 & 3 \\\\
\\end{array} \\right)
$$

通过行变换：
$R2 ← R2 - 4R1$，$R3 ← R3 - 3R1$，得：$\\left( \\begin{array}{cccc|c}
1 & 1 & 0 & −2 & −6 \\\\
0 & −5 & −1 & 7 & 25 \\\\
0 & −4 & −1 & 6 & 21 \\\\
\\end{array} \\right)$$R3 ← R3 - R2$，得：$\\left( \\begin{array}{cccc|c}
1 & 1 & 0 & −2 & −6 \\\\
0 & −5 & −1 & 7 & 25 \\\\
0 & 1 & 0 & −1 & −4 \\\\
\\end{array} \\right)$$R1 ← R1 - R3$，$R2 ← R2 + 5R3$，得：$\\left( \\begin{array}{cccc|c}
1 & 0 & 0 & −1 & −2 \\\\
0 & 0 & −1 & 2 & 5 \\\\
0 & 1 & 0 & −1 & −4 \\\\
\\end{array} \\right)$交换$R2$和$R3$，并令$R3 ← −R3$，得：$\\left( \\begin{array}{cccc|c}
1 & 0 & 0 & −1 & −2 \\\\
0 & 1 & 0 & −1 & −4 \\\\
0 & 0 & 1 & −2 & −5 \\\\
\\end{array} \\right)$对应方程组：$\\begin{cases} x_{1} - x_{4} = −2 \\\\ x_{2} - x_{4} = −4 \\\\ x_{3} - 2x_{4} = −5 \\end{cases}$解得：$x_{1} = −2 + x_{4},  x_{2} = −4 + x_{4},  x_{3} = −5 + 2x_{4}$令$x_{4} = k$（自由变量），通解为：$\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−2 \\\\
−4 \\\\
−5 \\\\
0 \\\\
\\end{array} \\right) + k \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$导出组的基础解系为$\\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$.
(2) 对于方程组②，要求与①同解。将①的通解$x_{1} = −2 + k$，$x_{2} = −4 + k$，$x_{3} = −5 + 2k$，$x_{4} = k$代入②：
代入第一方程：$x_{1} + mx_{2} - x_{3} - x_{4} = −5$
即$(−2 + k) + m(−4 + k) - (−5 + 2k) - k = −5$
化简得：$(3 - 4m) + (m - 2)k = −5$
需对任意$k$成立，故：$\\begin{cases} 3 - 4m = −5 \\\\ m - 2 = 0 \\end{cases}$解得$m = 2$.代入第二方程：$nx_{2} - x_{3} - 2x_{4} = −11$
即$n(−4 + k) - (−5 + 2k) - 2k = −11$
化简得：$(−4n + 5) + (n - 4)k = −11$
需对任意$k$成立，故：$\\begin{cases} −4n + 5 = −11 \\\\ n - 4 = 0 \\end{cases}$解得$n = 4$.代入第三方程：$x_{3} - 2x_{4} = −t + 1$
即$(−5 + 2k) - 2k = −5$
故$−5 = −t + 1$，解得$t = 6$.
当$m = 2$，$n = 4$，$t = 6$时，方程组②与①同解。
', 9, 'Mogullzr', '2026-01-29 14:11:01', 9, 'Mogullzr', '2026-01-29 14:11:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1221');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1221');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1222, '1998年考研数学卷4第19题', '简单', '考研数学1998年卷4真题', '求某种商品每周的需求量 X 是服从区间$\\lbrack 10, 30 \\rbrack$上均匀分布的随机变量，
而经销商进货数量为区间$\\lbrack 10, 30 \\rbrack$中的某一整数，商店每销售一单位商品可获利$500$元；
若供大于求则削价处理，每处理$1$单位商品亏损$100$元；若供不应求，则可从外部调剂供应，
此时每$1$单位商品仅获利$300$元，为使商品所获利润期望值不小于$9280$元，试确定最少进货量．', '[]', '
21
', '
设进货量为$a$（$a$为整数，且$10 ≤ a ≤ 30$），需求量$X$服从区间$\\lbrack 10, 30 \\rbrack$上的均匀分布，概率密度函数为$f(x) = \\frac{1}{20}$。
利润函数为：
当$X ≤ a$时，$π(X, a) = 500X - 100(a - X) = 600X - 100a$；当$X > a$时，$π(X, a) = 500a + 300(X - a) = 300X + 200a$。
期望利润为：

$$
E \\lbrack π \\rbrack  = \\frac{1}{20}  \\lbrack \\int_{10}^{a}(600x - 100a) dx + \\int_{a}^{30}(300x + 200a) dx \\rbrack  .
$$

计算积分：

$$
\\int_{10}^{a}(600x - 100a) dx =  \\lbrack 300x^{2} - 100ax \\rbrack _{10}^{a} = 200a^{2} - 30000 + 1000a,
$$


$$
\\int_{a}^{30}(300x + 200a) dx =  \\lbrack 150x^{2} + 200ax \\rbrack _{a}^{30} = 135000 + 6000a - 350a^{2}.
$$

积分和为：

$$
200a^{2} - 30000 + 1000a + 135000 + 6000a - 350a^{2} = −150a^{2} + 7000a + 105000.
$$

期望利润：

$$
E \\lbrack π \\rbrack  = \\frac{1}{20}(−150a^{2} + 7000a + 105000) = −7.5a^{2} + 350a + 5250.
$$

要求$E \\lbrack π \\rbrack  ≥ 9280$，即：

$$
−7.5a^{2} + 350a + 5250 ≥ 9280,
$$

整理得：

$$
−7.5a^{2} + 350a - 4030 ≥ 0,
$$

乘以$−1$得：

$$
7.5a^{2} - 350a + 4030 ≤ 0.
$$

为消除小数，乘以 2：

$$
15a^{2} - 700a + 8060 ≤ 0.
$$

解二次方程$15a^{2} - 700a + 8060 = 0$：
判别式$D = (−700)2 - 4 × 15 × 8060 = 490000 - 483600 = 6400$，
根为$a = \\frac{700±\\sqrt{6400}}{2×15} = \\frac{700±80}{30}$，
即$a_{1} = \\frac{620}{30} = \\frac{62}{3} ≈ 20.666$，$a_{2} = \\frac{780}{30} = 26$。
不等式解为$a ∈  \\lbrack \\frac{62}{3}, 26 \\rbrack$。由于$a$为整数，故$a = 21, 22, 23, 24, 25, 26$。
验证$a = 20$时$E \\lbrack π \\rbrack  = 9250 < 9280$，$a = 21$时$E \\lbrack π \\rbrack  = 9292.5 ≥ 9280$，因此最小进货量为 21。
', 9, 'Mogullzr', '2026-01-29 14:11:01', 9, 'Mogullzr', '2026-01-29 14:11:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1222');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1222');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1222');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1223, '1998年考研数学卷4第20题', '简单', '考研数学1998年卷4真题', '某箱装有$100$件产品，其中一、二、三等品分别为$80$件、$10$件和$10$件，
现在从中随机抽取一件，记

$$
X_{i} = \\begin{cases} 1 & 若抽到i等品 \\\\ 0 & 其他 \\end{cases}  (i = 1, 2, 3)
$$
试求：(1) 随机变量$X_{1}$与$X_{2}$的联合分布；(2) 随机变量$X_{1}$与$X_{2}$的相关系数$ρ$．', '[]', '(1) 随机变量$X_{1}$与$X_{2}$的联合分布为：

$$
\\begin{array}{c}
P(X_{1} = 0, X_{2} = 0) = 0.1,  P(X_{1} = 0, X_{2} = 1) = 0.1, \\\\
P(X_{1} = 1, X_{2} = 0) = 0.8,  P(X_{1} = 1, X_{2} = 1) = 0 \\\\
\\end{array}
$$

(2) 随机变量$X_{1}$与$X_{2}$的相关系数$ρ = −\\frac{2}{3}$.
', '
(1) 由于产品等级互斥，抽到一等品时$X_{1} = 1$、$X_{2} = 0$，概率为$80/100 = 0.8$；抽到二等品时$X_{1} = 0$、$X_{2} = 1$，概率为$10/100 = 0.1$；抽到三等品时$X_{1} = 0$、$X_{2} = 0$，概率为$10/100 = 0.1$；同时抽到一等品和二等品不可能，故$P(X_{1} = 1, X_{2} = 1) = 0$。联合分布如上所示。
(2) 计算相关系数$ρ$。
首先，

$$
E \\lbrack X_{1} \\rbrack  = 0.8,  E \\lbrack X_{2} \\rbrack  = 0.1,  E \\lbrack X_{1}X_{2} \\rbrack  = 0
$$

协方差

$$
Cov(X_{1}, X_{2}) = E \\lbrack X_{1}X_{2} \\rbrack  - E \\lbrack X_{1} \\rbrack E \\lbrack X_{2} \\rbrack  = 0 - 0.8 × 0.1 = −0.08
$$

方差

$$
Var(X_{1}) = 0.8 × 0.2 = 0.16,  Var(X_{2}) = 0.1 × 0.9 = 0.09
$$

标准差

$$
σ_{X_{1}} = \\sqrt{0.16} = 0.4,  σ_{X_{2}} = \\sqrt{0.09} = 0.3
$$

相关系数

$$
ρ = \\frac{−0.08}{0.4 × 0.3} = \\frac{−0.08}{0.12} = −\\frac{2}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:01', 9, 'Mogullzr', '2026-01-29 14:11:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1223');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1223');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1223');
