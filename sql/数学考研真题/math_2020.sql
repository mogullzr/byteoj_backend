INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2835, '2020年考研数学卷1第1题', '简单', '考研数学2020年数1真题', '当$x → 0^{+}$时,下列无穷小量中最高阶的是( ).', '[''$\\\\int_{0}^{x}(e^{t^{2}} - 1)dt$'', ''$\\\\int_{0}^{x} \\\\ln(1 + \\\\sqrt{t^{3}})dt$'', ''$\\\\int_{0}^{\\\\sin x} \\\\sin t^{2}dt$'', ''$\\\\int_{0}^{1-\\\\cos x} \\\\sqrt{\\\\sin t^{3}}dt$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:18:44', 9, 'Mogullzr', '2026-01-29 14:18:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2835');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2835');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '2835');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2836, '2020年考研数学卷1第2题', '简单', '考研数学2020年数1真题', '设函数$f(x)$在区间$(−1, 1)$内有定义,且$\\lim_{x→0} f(x) = 0$,则', '[''当$\\\\lim_{x→0} \\\\frac{f(x)}{\\\\sqrt{∣x∣}} = 0$时，$f(x)$在$x = 0$处可导'', ''当$\\\\lim_{x→0} \\\\frac{f(x)}{x^{2}} = 0$时，$f(x)$在$x = 0$处可导'', ''当$f(x)$在$x = 0$处可导时，$\\\\lim_{x→0} \\\\frac{f(x)}{\\\\sqrt{∣x∣}} = 0$'', ''当$f(x)$在$x = 0$处可导时，$\\\\lim_{x→0} \\\\frac{f(x)}{x^{2}} = 0$'']', "['C']", '当$f(x)$在$x = 0$处可导,则$f(x)$在$x = 0$处连续,$f(0) = \\lim_{x→0} f(x) = 0$,
$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0} \\frac{f(x)}{x}, 可得 \\lim_{x→0} \\frac{f(x)}{\\sqrt{∣x∣}} = \\lim_{x→0} \\frac{f(x)}{x} ⋅ \\frac{x}{\\sqrt{∣x∣}}
$$

$$
\\lim_{x→0^{+}} \\frac{f(x)}{x} ⋅ \\frac{x}{\\sqrt{∣x∣}} = \\lim_{x→0^{+}} \\frac{f(x)}{x} ⋅ \\frac{x}{\\sqrt{x}} = \\lim_{x→0^{+}} \\frac{f(x)}{x} ⋅ \\sqrt{x} = f^{′}(0) ⋅ 0 = 0,
$$

$$
\\lim_{x→0^{−}} \\frac{f(x)}{x} ⋅ \\frac{x}{\\sqrt{∣x∣}} = \\lim_{x→0^{−}} \\frac{f(x)}{x} ⋅ \\frac{x}{\\sqrt{−x}} = \\lim_{x→0^{−}} \\frac{f(x)}{x} ⋅ (−\\sqrt{−x}) = f^{′}(0) ⋅ 0 = 0,
$$
即$\\lim_{x→0} \\frac{f(x)}{\\sqrt{∣x∣}} = 0$,故选(C)', 9, 'Mogullzr', '2026-01-29 14:18:44', 9, 'Mogullzr', '2026-01-29 14:18:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2836');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2836');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '2836');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2837, '2020年考研数学卷1第3题', '简单', '考研数学2020年数1真题', '设函数$f(x)$在点$(0, 0)$处可微，$f(0, 0) = 0$，$n = (\\frac{∂f}{∂x}, \\frac{∂f}{∂y}, −1)​_{(0,0)}$且非零向量$d$与$n$垂直，则', '[''$\\\\lim_{(x,y)→(0,0)} \\\\frac{∣n⋅(x,y,f(x,y))∣}{\\\\sqrt{x^{2}+y^{2}}} = 0$存在'', ''$\\\\lim_{(x,y)→(0,0)} \\\\frac{∣n×(x,y,f(x,y))∣}{\\\\sqrt{x^{2}+y^{2}}} = 0$存在'', ''$\\\\lim_{(x,y)→(0,0)} \\\\frac{∣d⋅(x,y,f(x,y))∣}{\\\\sqrt{x^{2}+y^{2}}} = 0$存在'', ''$\\\\lim_{(x,y)→(0,0)} \\\\frac{∣d×(x,y,f(x,y))∣}{\\\\sqrt{x^{2}+y^{2}}} = 0$存在'']', "['A']", '因为$f(x, y)$在$(0, 0)$处可微，$f(0, 0) = 0$，所以$\\lim_{\\begin{array}{c}
x→0 \\\\
y→0 \\\\
\\end{array}} \\frac{f(x,y)-f(0,0)-f_{x}^{′}(0,0)⋅x-f_{y}^{′}(0,0)⋅y}{\\sqrt{x^{2}+y^{2}}} = 0$即$\\lim_{\\begin{array}{c}
x→0 \\\\
y→0 \\\\
\\end{array}} \\frac{f(x,y)-f_{x}^{′}(0,0)⋅x-f_{y}^{′}(0,0)⋅y}{\\sqrt{x^{2}+y^{2}}} = 0$因为$n ⋅ (x, y, f(x, y)) = f_{x}^{′}(0, 0)x + f_{y}^{′}(0, 0)y - f(x, y)$，所以$\\lim_{(x,y)→(0,0)} \\frac{∣n⋅(x,y,f(x,y))∣}{\\sqrt{x^{2}+y^{2}}} = 0$存在，故选$(A)$。', 9, 'Mogullzr', '2026-01-29 14:18:44', 9, 'Mogullzr', '2026-01-29 14:18:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '2837');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2838, '2020年考研数学卷1第4题', '简单', '考研数学2020年数1真题', '设$R$为幂级数$\\sum_{n=1}^{∞} a_{n}x^{n}$的收敛半径。$r$是实数,则', '[''$\\\\sum_{n=1}^{∞} a_{2n}r^{2n}$发散时,$∣r∣ ≥ R$'', ''$\\\\sum_{n=1}^{∞} a_{2n}r^{2n}$收敛时,$∣r∣ ≤ R$'', ''$∣r∣ ≥ R$时,$\\\\sum_{n=1}^{∞} a_{2n}r^{2n}$发散'', ''$∣r∣ ≤ R$时,$\\\\sum_{n=1}^{∞} a_{2n}r^{2n}$收敛'']', "['A']", '由题知当$∣r∣ < R$时，幂级数$\\sum_{n=1}^{∞} a_{n}x^{n}$收敛，所以当$∣r∣ < R$时，$\\sum_{n=1}^{∞} a_{n}r^{2n}$收敛，因其逆否命题也成立，所以若当$\\sum_{n=1}^{∞} a_{n}r^{2n}$发散时，$∣r∣ ≥ R$，故选 (A) 。', 9, 'Mogullzr', '2026-01-29 14:18:44', 9, 'Mogullzr', '2026-01-29 14:18:44', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2838');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2838');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '2838');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2839, '2020年考研数学卷1第5题', '简单', '考研数学2020年数1真题', '若矩阵$A$经初等列变换化成$B$,则', '[''存在矩阵$P$,使得$PA = B$'', ''存在矩阵$P$,使得$BP = A$'', ''存在矩阵$P$,使得$PB = A$'', ''方程组$Ax = 0$与$Bx = 0$同解'']', "['B']", '$A$经初等列变换化成$B$，所以存在可逆矩阵$P_{1}$使得$AP_{1} = B$，所以$A = BP_{1}^{−1}$。令$P = P_{1}^{−1}$，所以$A = BP$。故选(B)。', 9, 'Mogullzr', '2026-01-29 14:18:45', 9, 'Mogullzr', '2026-01-29 14:18:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2839');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2839');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2839');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2840, '2020年考研数学卷1第6题', '简单', '考研数学2020年数1真题', '已知直线$L_{1}$:$\\frac{x-a_{2}}{a_{1}} = \\frac{y-b_{2}}{b_{1}} = \\frac{z-c_{2}}{c_{1}}$与直线$L_{2}$:$\\frac{x-a_{3}}{a_{2}} = \\frac{y-b_{3}}{b_{2}} = \\frac{z-c_{3}}{c_{2}}$相交于一点，向量$α_{i} = (a_{i}, b_{i}, c_{i})^{T}$,$i = 1, 2, 3$,则', '[''$α_{1}$可由$α_{2}$,$α_{3}$线性表示'', ''$α_{2}$可由$α_{1}$,$α_{3}$线性表示'', ''$α_{3}$可由$α_{1}$,$α_{2}$线性表示'', ''$α_{1}$,$α_{2}$,$α_{3}$线性无关'']', "['C']", '令$L_{1}$的方程$\\frac{x-a_{2}}{a_{1}} = \\frac{y-b_{2}}{b_{1}} = \\frac{z-c_{2}}{c_{1}} = t$,即有$\\left( \\begin{array}{c}
x \\\\
y \\\\
z \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
a_{2} \\\\
b_{2} \\\\
c_{2} \\\\
\\end{array} \\right) + t \\left( \\begin{array}{c}
a_{1} \\\\
b_{1} \\\\
c_{1} \\\\
\\end{array} \\right) = α_{2} + tα_{1}$$L_{2}$方程为$\\left( \\begin{array}{c}
x \\\\
y \\\\
z \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
a_{3} \\\\
b_{3} \\\\
c_{3} \\\\
\\end{array} \\right) + t \\left( \\begin{array}{c}
a_{2} \\\\
b_{2} \\\\
c_{2} \\\\
\\end{array} \\right) = α_{3} + tα_{2}$，由直线$L_{1}$与$L_{2}$相交得存在$t$使$α_{2} + tα_{1} = α_{3} + tα_{2}$，即$α_{3} = tα_{1} + (1 - t)α_{2}$,故$α_{3}$可由$α_{1}$,$α_{2}$线性表示,故应选(C).', 9, 'Mogullzr', '2026-01-29 14:18:45', 9, 'Mogullzr', '2026-01-29 14:18:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2840');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '2840');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '2840');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2841, '2020年考研数学卷1第7题', '简单', '考研数学2020年数1真题', '设$A$、$B$、$C$为三个随机事件，且$P(A) = P(B) = P(C) = \\frac{1}{4}$，$P(AB) = 0$，$P(AC) = P(BC) = \\frac{1}{12}$，则$A$、$B$、$C$中恰有一个事件发生的概率为', '[''$\\\\frac{3}{4}$'', ''$\\\\frac{2}{3}$'', ''$\\\\frac{1}{2}$'', ''$\\\\frac{5}{12}$'']', "['D']", '$P(A\\overline{BC}) = P(A\\overline{B∪C}) = P(A) - P \\lbrack A(B ∪ C) \\rbrack$$= P(A) - P(AB + AC)$$= P(A) + P(AB) - P(AC) + P(ABC)$$= \\frac{1}{4} - 0 - \\frac{1}{12} + 0 = \\frac{1}{6}$，$P(C\\overline{BA}) = P(C\\overline{B∪A}) = P(C) - P \\lbrack C ∪ (B ∪ A) \\rbrack$$= P(C) + P(CB) - P(CA) + P(ABC)$$= \\frac{1}{4} - \\frac{1}{12} - \\frac{1}{12} + 0 = \\frac{1}{12}$，$P(A\\overline{BC} + \\overline{A}BC + \\overline{A}\\overline{B}C) = P(A\\overline{BC}) + P(\\overline{A}BC) + P(\\overline{A}\\overline{B}C)$$= \\frac{1}{6} + \\frac{1}{6} + \\frac{1}{12} = \\frac{5}{12}$。故选 (D)。', 9, 'Mogullzr', '2026-01-29 14:18:45', 9, 'Mogullzr', '2026-01-29 14:18:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2841');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '2841');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2842, '2020年考研数学卷1第8题', '简单', '考研数学2020年数1真题', '设$X_{1}, X_{2}, ⋯  , X_{100}$为来自总体$X$的简单随机样本,其中$P(X = 0) = P(X = 1) = \\frac{1}{2}$,$Φ(x)$表示标准正态分布函数,则用中心极限定理可得$P(\\sum_{i=1}^{100} X_{i} ≤ 55)$的近似值为', '[''$1 - Φ(1)$'', ''$Φ(1)$'', ''$1 - Φ(2)$'', ''$Φ(2)$'']', "['B']", '由题意$EX = \\frac{1}{2}$，$DX = \\frac{1}{4}$，$E (\\sum_{i=1}^{100} X_{i}) = 100EX = 50$，$D (\\sum_{i=1}^{100} X_{i}) = 100DX = 25$。由中心极限定理$\\sum_{i=1}^{100} X_{i} ∼ N(50, 25)$，所以$P \\{\\sum_{i=1}^{100} X_{i} ≤ 55\\} = P \\{\\frac{\\sum_{i=1}^{100} X_{i}-55}{5} ≤ \\frac{55-50}{5}\\} = Φ(1)$。故选$(B)$。', 9, 'Mogullzr', '2026-01-29 14:18:45', 9, 'Mogullzr', '2026-01-29 14:18:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2842');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1081', '2842');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2843, '2020年考研数学卷1第9题', '简单', '考研数学2020年数1真题', '（填空题）$\\lim_{x→0}  \\lbrack \\frac{1}{e^{x}-1} - \\frac{1}{\\ln(1+x)} \\rbrack  =$____.', '[]', '-1
', '

$$
\\begin{array}{cc}
 & \\lim_{x→0}  \\lbrack \\frac{1}{e^{x} - 1} - \\frac{1}{\\ln(1 + x)} \\rbrack  \\\\
 & = \\lim_{x→0} \\frac{\\ln(1 + x) - e^{x} + 1}{(e^{x} - 1) \\ln(1 + x)} \\\\
 & = \\lim_{x→0} \\frac{\\ln(1 + x) - e^{x} + 1}{x^{2}} \\\\
 & = −1 \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:45', 9, 'Mogullzr', '2026-01-29 14:18:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2843');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2843');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2843');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2844, '2020年考研数学卷1第10题', '简单', '考研数学2020年数1真题', '（填空题）若$\\begin{cases} x = \\sqrt{t^{2} + 1} \\\\ y = \\ln (t + \\sqrt{t^{2} + 1})  \\end{cases}$则$\\frac{d^{2}y}{dx^{2}}​_{t=1} =$', '[]', '$−\\sqrt{2}$
', '由参数方程求导公式，一阶导数为：

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{\\frac{1}{t+\\sqrt{t^{2}+1}} (1 + \\frac{t}{\\sqrt{t^{2}+1}})}{\\frac{t}{\\sqrt{t^{2}+1}}} = \\frac{1}{t}.
$$

二阶导数为：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d (\\frac{dy}{dx})}{dx} = \\frac{\\frac{d(\\frac{dy}{dx})}{dt}}{\\frac{dx}{dt}} = \\frac{−\\frac{1}{t^{2}}}{\\frac{t}{\\sqrt{t^{2}+1}}} = −\\frac{\\sqrt{t^{2} + 1}}{t^{3}}.
$$

代入$t = 1$，得：

$$
\\frac{d^{2}y}{dx^{2}}​_{t=1} = −\\sqrt{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:18:46', 9, 'Mogullzr', '2026-01-29 14:18:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2844');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2844');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2844');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2845, '2020年考研数学卷1第11题', '简单', '考研数学2020年数1真题', '（填空题）若函数$f(x)$满足$f^{′′}(x) + af^{′}(x) + f(x) = 0(a > 0)$，且$f(0) = m$，$f^{′}(0) = n$，则$\\int_{0}^{+∞} f(x)dx =$', '[]', '$n + am$
', '特征方程为$λ^{2} + aλ + 1 = 0$，特征根为$λ_{1}$，$λ_{2}$，则$λ_{1} + λ_{2} = −a$，$λ_{1} ⋅ λ_{2} = 1$，特征根$λ_{1} < 0$，$λ_{2} < 0$。

$$
\\begin{array}{cc}
\\int_{0}^{+∞} f(x) dx & = − \\int_{0}^{+∞}  \\lbrack f^{′′}(x) + af^{′}(x) \\rbrack  dx \\\\
 & = −  \\lbrack f^{′}(x) + af(x) \\rbrack _{0}^{+∞} \\\\
 & = n + am \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:46', 9, 'Mogullzr', '2026-01-29 14:18:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2845');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2845');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '2845');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2846, '2020年考研数学卷1第12题', '简单', '考研数学2020年数1真题', '（填空题）设函数$f(x, y) = \\int_{0}^{xy} e^{xt^{2}} dt$，则$\\frac{∂^{2}f}{∂x∂y}​_{(1,1)} =$', '[]', '4e
', '


$$
\\begin{array}{cc}
\\frac{∂f}{∂y} & = e^{x(xy)2} ⋅ x = xe^{x^{3}y^{2}}, \\\\
\\frac{∂^{2}f}{∂x∂y} & = \\frac{∂ (\\frac{∂f}{∂y})}{∂x} = e^{x^{3}y^{2}} + 3x^{3}y^{2}e^{x^{3}y^{2}}, \\\\
\\frac{∂^{2}f}{∂x∂y}​_{(1,1)} & = e + 3e = 4e. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:46', 9, 'Mogullzr', '2026-01-29 14:18:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2846');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2846');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2846');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2847, '2020年考研数学卷1第13题', '简单', '考研数学2020年数1真题', '（填空题）行列式$\\begin{vmatrix}
a & 0 & −1 & 1\\\\
0 & a & 1 & −1\\\\
−1 & 1 & a & 0\\\\
1 & −1 & 0 & a
\\end{vmatrix} =$', '[]', '$a^{4} - 4a^{2}$
', '

$$
\\begin{array}{cccccccccccccccccccc}
 & \\begin{array}{cccc}
a & 0 & −1 & 1 \\\\
0 & a & 1 & −1 \\\\
−1 & 1 & a & 0 \\\\
1 & −1 & 0 & a \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & a & 0 & −1 & 1 & a & 0 & −1 & 1 & 0 & a & −1 + a^{2} & 1 &  &  &  &  &  &  \\\\
 &  &  &  &  &  &  &  &  &  &  &  &  &  & a & −1 + a^{2} & 1 & a & a^{2} - 2 & 1 \\\\
 & \\begin{array}{cccc}
0 & a & −1 + a^{2} & 1 \\\\
0 & a & 1 & −1 \\\\
−1 & 1 & a & 0 \\\\
1 & 0 & a & a \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 0 & a & 1 & −1 & 0 & a & 1 & −1 & 0 & a & 1 & −1 &  &  &  &  &  &  \\\\
 &  &  &  &  &  &  &  &  &  &  &  &  &  & a & 1 & −1 & a & 2 & −1 \\\\
 &  & −1 & 1 & a & 0 & −1 & 1 & a & 0 & −1 & 1 & a & 0 &  &  &  &  &  &  \\\\
 &  &  &  &  &  &  &  &  &  &  &  &  &  & 0 & a & a & 0 & 0 & a \\\\
 &  & 1 & −1 & 0 & a & 0 & 0 & a & a & 1 & 0 & a & a &  &  &  &  &  &  \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:46', 9, 'Mogullzr', '2026-01-29 14:18:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2847');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2847');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2848, '2020年考研数学卷1第14题', '简单', '考研数学2020年数1真题', '（填空题）设$X$服从区间$(−\\frac{π}{2}, \\frac{π}{2})$上的均匀分布，$Y = \\sin X$，则$Cov(X, Y) =$', '[]', '$\\frac{2}{π}$
', '概率密度函数为：

$$
f(x) = \\begin{cases} \\frac{1}{π} & −\\frac{π}{2} < x < \\frac{π}{2} \\\\ 0 & 其他. \\end{cases}
$$

协方差的计算公式为：

$$
cov(X, Y) = E \\lbrack XY \\rbrack  - E \\lbrack X \\rbrack E \\lbrack Y \\rbrack
$$

代入 Y = \\sin X，得：

$$
cov(X, Y) = E \\lbrack X \\sin X \\rbrack  - E \\lbrack X \\rbrack E \\lbrack \\sin X \\rbrack
$$

计算各项期望：

$$
\\begin{array}{c}
E \\lbrack X \\sin X \\rbrack  = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} x \\sin x ⋅ \\frac{1}{π}dx \\\\
E \\lbrack X \\rbrack  = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\frac{1}{π}xdx \\\\
\\end{array}
$$

由于 x 和 \\sin x 在对称区间上分别为奇函数和偶函数，有：

$$
E \\lbrack X \\rbrack  = 0,  E \\lbrack \\sin X \\rbrack  = 0
$$

因此：

$$
cov(X, Y) = E \\lbrack X \\sin X \\rbrack  = \\frac{1}{π} \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} x \\sin xdx
$$

利用奇偶性化简：

$$
\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} x \\sin xdx = 2 \\int_{0}^{\\frac{π}{2}} x \\sin xdx
$$

所以：

$$
cov(X, Y) = \\frac{2}{π} \\int_{0}^{\\frac{π}{2}} x \\sin xdx
$$

使用分部积分法，令：

$$
u = x,  dv = \\sin xdx
$$

则：

$$
du = dx,  v = − \\cos x
$$

于是：

$$
\\int_{0}^{\\frac{π}{2}} x \\sin xdx = −x \\cos x∣_{0}^{\\frac{π}{2}} + \\int_{0}^{\\frac{π}{2}} \\cos xdx
$$

计算得：

$$
−x \\cos x∣_{0}^{\\frac{π}{2}} = 0
$$


$$
\\int_{0}^{\\frac{π}{2}} \\cos xdx = \\sin x∣_{0}^{\\frac{π}{2}} = 1
$$

因此：

$$
\\int_{0}^{\\frac{π}{2}} x \\sin xdx = 1
$$

最终协方差为：

$$
cov(X, Y) = \\frac{2}{π} ⋅ 1 = \\frac{2}{π}
$$


$$
\\frac{2}{π}​
$$

', 9, 'Mogullzr', '2026-01-29 14:18:46', 9, 'Mogullzr', '2026-01-29 14:18:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2848');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2848');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '2848');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2849, '2020年考研数学卷1第15题', '简单', '考研数学2020年数1真题', '（本题满分 10 分）求函数$f(x, y) = x^{3} + 8y^{3} - xy$的极值。', '[]', '极小值为$−\\frac{1}{216}$
', '首先，求一阶偏导数：

$$
\\frac{∂f}{∂x} = 3x^{2} - y,  \\frac{∂f}{∂y} = 24y^{2} - x.
$$

令偏导数为零，解方程组：

$$
\\begin{cases} \\frac{∂f}{∂x} = 0 \\\\ \\frac{∂f}{∂y} = 0 \\end{cases}
$$

得到：

$$
\\begin{cases} x = \\frac{1}{6} \\\\ y = \\frac{1}{12} \\end{cases}
$$

接着，求二阶偏导数：

$$
\\frac{∂^{2}f}{∂x^{2}} = 6x,  \\frac{∂^{2}f}{∂x∂y} = −1,  \\frac{∂^{2}f}{∂y^{2}} = 48y.
$$

当$x = 0$，$y = 0$时，计算：

$$
A = 0,  B = −1,  C = 0,  AC - B^{2} = −1 < 0,
$$

因此该点不是极值点。
当$x = \\frac{1}{6}$，$y = \\frac{1}{12}$时，计算：

$$
A = 1,  B = −1,  C = 4,  AC - B^{2} = 3 > 0,  A = 1 > 0,
$$

因此点$(\\frac{1}{6}, \\frac{1}{12})$是极小值点。
极小值为：

$$
f (\\frac{1}{6}, \\frac{1}{12}) = (\\frac{1}{6})^{3} + 8 (\\frac{1}{12})^{3} - \\frac{1}{6} × \\frac{1}{12} = −\\frac{1}{216}.
$$

', 9, 'Mogullzr', '2026-01-29 14:18:46', 9, 'Mogullzr', '2026-01-29 14:18:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2849');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2849');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2849');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2850, '2020年考研数学卷1第16题', '简单', '考研数学2020年数1真题', '（本题满分 10 分）计算曲线积分

$$
I = \\int_{L} \\frac{4x - y}{4x^{2} + y^{2}} dx + \\frac{x + y}{4x^{2} + y^{2}} dy,
$$
其中$L$是$x^{2} + y^{2} = 2$，方向为逆时针方向。', '[]', '$π$
', '设$P = \\frac{4x-y}{4x^{2}+y^{2}}$，$Q = \\frac{x+y}{4x^{2}+y^{2}}$，则


$$
\\frac{∂Q}{∂x} = \\frac{∂P}{∂y} = \\frac{−4x^{2} + y^{2} - 8xy}{(4x^{2} + y^{2})2}.
$$

取路径$L_{ε} : 4x^{2} + y^{2} = ε^{2}$，方向为顺时针方向，则


$$
\\begin{array}{cc}
\\int_{L} \\frac{4x - y}{4x^{2} + y^{2}} dx + \\frac{x + y}{4x^{2} + y^{2}} dy & = \\int_{L+L_{ε}} \\frac{4x - y}{4x^{2} + y^{2}} dx + \\frac{x + y}{4x^{2} + y^{2}} dy \\\\
 & - \\int_{L_{ε}} \\frac{4x - y}{4x^{2} + y^{2}} dx + \\frac{x + y}{4x^{2} + y^{2}} dy. \\\\
\\end{array}
$$

进一步计算得


$$
\\begin{array}{cc}
 & = \\iint_{D} (\\frac{∂Q}{∂x} - \\frac{∂P}{∂y})  dx dy + \\frac{1}{ε^{2}} \\int_{L_{ε}}(4x - y) dx + (x + y) dy \\\\
 & = 0 + \\frac{1}{ε^{2}} ⋅ 2 ⋅ \\frac{πε^{2}}{2} \\\\
 & = π. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:47', 9, 'Mogullzr', '2026-01-29 14:18:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2850');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2850');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '2850');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2851, '2020年考研数学卷1第17题', '简单', '考研数学2020年数1真题', '（本题满分10分）设数列$\\{a_{n}\\}$满足$a_{1} = 1$，$(n + 1)a_{n+1} = (n + \\frac{1}{2})a_{n}$，证明：当$∣x∣ < 1$时，幂级数$\\sum_{n=1}^{∞} a_{n}x^{n}$收敛，并求其和函数。', '[]', '$S(x) = \\frac{2}{\\sqrt{1-x}} - 2$
', '
$R = \\lim_{n→∞} ​\\frac{a_{n}}{a_{n+1}}​ = \\lim_{n→∞} ​\\frac{n+1}{n+2}​ = 1$，故$∣x∣ < R = 1$时，$\\sum_{n=1}^{∞} a_{n}x^{n}$收敛。
令$S(x) = \\sum_{n=1}^{∞} a_{n}x^{n}$，
则$S^{′}(x) = \\sum_{n=1}^{∞} na_{n}x^{n-1} = \\sum_{n=0}^{∞}(n + 1)a_{n+1}x^{n} = a_{1} + \\sum_{n=1}^{∞} (n + \\frac{1}{2}) a_{n}x^{n}$
$= 1 + \\sum_{n=1}^{∞} na_{n}x^{n} + \\frac{1}{2} \\sum_{n=1}^{∞} a_{n}x^{n} = 1 + xS^{′}(x) + \\frac{1}{2}S(x)$，
则$S^{′}(x) - \\frac{1}{2(1-x)}S(x) = \\frac{1}{1-x}$，故$S(x) = e^{∫ \\frac{1}{2(1-x)}dx}  \\lbrack ∫ e^{∫ \\frac{−1}{2(1-x)}dx}\\frac{1}{1-x}dx + C \\rbrack  = \\frac{C}{\\sqrt{1-x}} - 2$，
由$S(0) = C - 2 = 0$，故$C = 2$，则$S(x) = \\frac{2}{\\sqrt{1-x}} - 2$。
', 9, 'Mogullzr', '2026-01-29 14:18:47', 9, 'Mogullzr', '2026-01-29 14:18:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2851');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2851');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '2851');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2852, '2020年考研数学卷1第18题', '简单', '考研数学2020年数1真题', '（本题满分 10 分）设$∑$为曲面$z = \\sqrt{x^{2} + y^{2}} (1 ≤ x^{2} + y^{2} ≤ 4)$的下侧，$f(x)$是连续函数，计算

$$
I = \\iint_{∑}  \\lbrack xf(xy) + 2x - y \\rbrack  dy dz +  \\lbrack yf(xy) + 2y + x \\rbrack  dz dx +  \\lbrack zf(xy) + z \\rbrack  dx dy.
$$
', '[]', '$\\frac{14}{3}π$
', '由题意，


$$
F(x, y, z) = z - \\sqrt{x^{2} + y^{2}}
$$

则


$$
\\begin{array}{c}
F_{x}^{′} = −\\frac{x}{\\sqrt{x^{2} + y^{2}}}, \\\\
F_{y}^{′} = −\\frac{y}{\\sqrt{x^{2} + y^{2}}}, \\\\
\\end{array}
$$

因此


$$
\\begin{array}{cc}
I & = \\iint_{Σ} ( \\lbrack xf(xy) + 2x - y \\rbrack \\frac{F_{x}^{′}}{F_{z}^{′}} +  \\lbrack yf(xy) + 2y + x \\rbrack \\frac{F_{y}^{′}}{F_{z}^{′}} + zf(xy) + z) dxdy \\\\
 & = \\iint_{Σ} ( \\lbrack xf(xy) + 2x - y \\rbrack  (−\\frac{x}{\\sqrt{x^{2} + y^{2}}}) +  \\lbrack yf(xy) + 2y + x \\rbrack  (−\\frac{y}{\\sqrt{x^{2} + y^{2}}}) + zf(xy) + z) dxdy \\\\
 & = − \\iint_{Σ} \\sqrt{x^{2} + y^{2}} dxdy \\\\
 & = \\iint_{D_{xy}} \\sqrt{x^{2} + y^{2}} dxdy \\\\
 & = \\frac{14}{3}π \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:47', 9, 'Mogullzr', '2026-01-29 14:18:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2852');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '2852');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2853, '2020年考研数学卷1第19题', '简单', '考研数学2020年数1真题', '（本题满分10分）设函数$f(x)$在区间$\\lbrack 0, 2 \\rbrack$上具有连续导数，已知$f(0) = f(2) = 0$，$M = \\max_{x∈ \\lbrack 0,2 \\rbrack } ∣f(x)∣$，证明：(I) 存在$ξ ∈ (0, 2)$，使得$∣f^{′}(ξ)∣ ≥ M$；(II) 若对任意的$x ∈ (0, 2)$，$∣f^{′}(x)∣ ≤ M$，则$M = 0$。', '[]', '见解析
', '(I)
设$x = x_{0}$时$∣f(x_{0})∣ = M$，由拉格朗日定理得：

$$
∃, ξ_{1} ∈ (0, x_{0})∣f^{′}(ξ_{1})∣ = ​\\frac{f(x_{0}) - f(0)}{x_{0} - 0}​ = \\frac{∣f(x_{0})∣}{x_{0}} = \\frac{M}{x_{0}};
$$


$$
∃, ξ_{2} ∈ (x_{0}, 2)∣f^{′}(ξ_{2})∣ = ​\\frac{f(x_{0}) - f(2)}{x_{0} - 2}​ = \\frac{∣f(x_{0})∣}{2 - x_{0}} = \\frac{M}{2 - x_{0}}.
$$

若$x_{0} ∈ (0, 1 \\rbrack$，取$ξ = ξ_{1}$，有

$$
∣f^{′}(ξ)∣ = \\frac{M}{x_{0}} ≥ M;
$$

若$x_{0} ∈ (1, 2)$，取$ξ = ξ_{2}$，有

$$
∣f^{′}(ξ)∣ = \\frac{M}{2 - x_{0}} ≥ M.
$$

(II)

$$
\\begin{array}{cc}
M & = ∣f(x_{0})∣ = ∣f(x_{0}) - f(0)∣ = ​\\int_{0}^{x_{0}} f^{′}(x) dx​ \\\\
 & ≤ \\int_{0}^{x_{0}} ∣f^{′}(x)∣ dx ≤ \\int_{0}^{x_{0}} M dx \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
M & = ∣f(x_{0})∣ = ∣f(2) - f(x_{0})∣ = ​\\int_{x_{0}}^{2} f^{′}(x) dx​ \\\\
 & ≤ \\int_{x_{0}}^{2} ∣f^{′}(x)∣ dx ≤ \\int_{x_{0}}^{2} M dx \\\\
\\end{array}
$$

故

$$
\\begin{cases} M(1 - x_{0}) ≤ 0,  M(1 - x_{0}) ≥ 0 \\end{cases}
$$

同时成立。
若$x_{0} \\neq 1$，显然$M = 0$；
若$x_{0} = 1$，则

$$
M ≤ \\int_{0}^{1} ∣f^{′}(x)∣, dx ≤ M,  M ≤ \\int_{1}^{2} ∣f^{′}(x)∣, dx ≤ M.
$$

当且仅当区间$(0, 1)$和$(1, 2)$上$∣f^{′}(x)∣ ≡ M$。
若$M \\neq 0$，则$f^{′}(x) ≡ ±M$与$f(0) = f(2) = 0$矛盾，
或$f^{′}(x)$在$x = 1$处不可导，与已知矛盾。
故$M = 0$。
', 9, 'Mogullzr', '2026-01-29 14:18:47', 9, 'Mogullzr', '2026-01-29 14:18:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2853');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2853');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2853');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2854, '2020年考研数学卷1第20题', '简单', '考研数学2020年数1真题', '（本题满分 11 分）设二次型$f(x_{1}, x_{2}) = x_{1}^{2} - 4x_{1}x_{2} + 4x_{2}^{2}$经正交变换$\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
\\end{array} \\right) = Q \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
\\end{array} \\right)$化为二次型$g(y_{1}, y_{2}) = ay_{1}^{2} + 4y_{1}y_{2} + by_{2}^{2}$，其中$a ≥ b$。(I) 求$a$，$b$的值；(II) 求正交矩阵$Q$。', '[]', '
(I)$a = 4$,$b = 1$
(II)$Q = \\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right)$
', '
(I) 记$A = \\left( \\begin{array}{cc}
1 & −2 \\\\
−2 & 4 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}
a & 2 \\\\
2 & b \\\\
\\end{array} \\right)$，则$Q^{T}AQ = B$，且$A$与$B$相似，具有相同特征值。
计算特征多项式$∣λE - A∣ = λ^{2} - 5λ = 0$，解得特征值$λ_{1} = 0$，$λ_{2} = 5$。
同理，$∣λE - B∣ = λ^{2} - (a + b)λ + ab - 4 = 0$。由于特征值相同，比较系数得：

$$
a + b = 5,  ab = 4.
$$

又$a ≥ b$，解得$a = 4$，$b = 1$。

(II) 当$λ_{1} = 0$时，求解$(0E - A)x = 0$，得基础解系$α_{1} = (2, 1)T$。
当$λ_{2} = 5$时，求解$(5E - A)x = 0$，得基础解系$α_{2} = (1, −2)T$。
对于矩阵$B$，当$λ_{1} = 0$时，$(0E - B)x = 0$的基础解系为$β_{1} = (1, −2)T$。
当$λ_{2} = 5$时，$(5E - B)x = 0$的基础解系为$β_{2} = (2, 1)T$。
令$P_{1} = \\left( \\begin{array}{cc}
2 & 1 \\\\
1 & −2 \\\\
\\end{array} \\right)$，$P_{2} = \\left( \\begin{array}{cc}
1 & 2 \\\\
−2 & 1 \\\\
\\end{array} \\right)$，则有：

$$
P_{1}^{−1}AP_{1} = P_{2}^{−1}BP_{2} = \\left( \\begin{array}{cc}
0 & 0 \\\\
0 & 5 \\\\
\\end{array} \\right) .
$$

因此，

$$
B = P_{2}P_{1}^{−1}AP_{1}P_{2}^{−1}.
$$

计算得：

$$
P_{1}P_{2}^{−1} = \\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right) .
$$

故正交矩阵为：

$$
Q = \\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:18:47', 9, 'Mogullzr', '2026-01-29 14:18:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2854');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2854');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2855, '2020年考研数学卷1第21题', '简单', '考研数学2020年数1真题', '（本题满分 11 分）设$A$为二阶矩阵，$P = (α, Aα)$，其中$α$是非零向量且不是$A$的特征向量。(I) 证明$P$是可逆矩阵；(II) 若$A^{2}α + Aα - 6α = 0$，求$P^{−1}AP$，并判断$A$是否相似于对角矩阵。', '[]', '
(I) 见解析
(II)$P^{−1}AP = \\left( \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right)$，且$A$相似于对角矩阵。
', '
（I）法一：假设$P$不可逆，则$α$与$Aα$线性相关，存在不全为零的实数$k_{1}$、$k_{2}$，使得$k_{1}α + k_{2}Aα = 0$。若$k_{2} = 0$，则$k_{1} = 0$，矛盾，故$k_{2} \\neq 0$，从而$Aα = −\\frac{k_{1}}{k_{2}}α$，与$α$不是特征向量矛盾，所以$P$可逆。
法二：设$Aα = β$，则$β \\neq kα$，即$α$、$β$线性无关，故$P = (α, β)$可逆。
（II）由$A^{2}α + Aα - 6α = 0$，得


$$
\\begin{array}{cccccc}
AP & = A(α, Aα) = (Aα, A^{2}α) = (Aα, 6α - Aα) &  &  &  &  \\\\
 & \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} &  &  &  &  \\\\
 &  & 0 & 6 & 0 & 6 \\\\
 &  & 1 & −1 & 1 & −1 \\\\
 & \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} &  &  &  &  \\\\
\\end{array}
$$

故


$$
P^{−1}AP = \\left( \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right) .
$$

令$B = \\left( \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right)$，则


$$
∣λE - B∣ = λ^{2} + λ - 6 = 0,
$$

特征值为$λ_{1} = 2$、$λ_{2} = −3$。由于$A$与$B$相似，故$A$的特征值为$2$和$−3$，且可相似对角化。
', 9, 'Mogullzr', '2026-01-29 14:18:48', 9, 'Mogullzr', '2026-01-29 14:18:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2855');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2855');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2855');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2856, '2020年考研数学卷1第22题', '简单', '考研数学2020年数1真题', '（本题满分 11 分）设随机变量$X_{1}$，$X_{2}$，$X_{3}$相互独立，其中$X_{1}$与$X_{2}$均服从标准正态分布，$X_{3}$的概率分布为$P\\{X_{3} = 0\\} = P\\{X_{3} = 1\\} = \\frac{1}{2}$，已知$Y = X_{3}X_{1} + (1 - X_{3})X_{2}$。(I) 求二维随机变量$(X_{1}, Y)$的分布函数，结果用标准正态分布函数$Φ(x)$表示；(II) 证明随机变量$Y$服从标准正态分布。', '[]', '
(I) 二维随机变量$(X_{1}, Y)$的分布函数为：


$$
F(x, y) = \\begin{cases} \\frac{1}{2}Φ(x)Φ(y) + \\frac{1}{2}Φ(x) & x ≤ y \\\\ \\frac{1}{2}Φ(x)Φ(y) + \\frac{1}{2}Φ(y) & x > y \\end{cases}
$$

(II) 见解析。
', '
设随机变量$X_{1}$，$X_{2}$，$X_{3}$相互独立，其中$X_{1}$与$X_{2}$均服从标准正态分布，$X_{3}$的概率分布为$P\\{X_{3} = 0\\} = P\\{X_{3} = 1\\} = \\frac{1}{2}$，已知$Y = X_{3}X_{1} + (1 - X_{3})X_{2}$。
(I)$(X_{1}, Y)$的分布函数为：


$$
\\begin{array}{cc}
F(x, y) & = P \\{X_{1} ≤ x, Y ≤ y\\} \\\\
 & = P \\{X_{3} = 0, X_{1} ≤ x, Y ≤ y\\} + P \\{X_{3} = 1, X_{1} ≤ x, Y ≤ y\\} \\\\
 & = P \\{X_{3} = 0, X_{1} ≤ x, X_{2} ≤ y\\} + P \\{X_{3} = 1, X_{1} ≤ x, X_{1} ≤ y\\} \\\\
 & = \\frac{1}{2}P \\{X_{1} ≤ x\\} P \\{X_{2} ≤ y\\} + \\frac{1}{2}P \\{X_{1} ≤ x, X_{1} ≤ y\\} \\\\
\\end{array}
$$

(1) 当$x ≤ y$时，


$$
F(x, y) = \\frac{1}{2}P \\{X_{1} ≤ x\\} P \\{X_{2} ≤ y\\} + \\frac{1}{2}P \\{X_{1} ≤ x\\} = \\frac{1}{2}Φ(x)Φ(y) + \\frac{1}{2}Φ(x)
$$

(2) 当$x > y$时，


$$
F(x, y) = \\frac{1}{2}P \\{X_{1} ≤ x\\} P \\{X_{2} ≤ y\\} + \\frac{1}{2}P \\{X_{1} ≤ y\\} = \\frac{1}{2}Φ(x)Φ(y) + \\frac{1}{2}Φ(y)
$$

综上所述：


$$
F(x, y) = \\begin{cases} \\frac{1}{2}Φ(x)Φ(y) + \\frac{1}{2}Φ(x) & x ≤ y \\\\ \\frac{1}{2}Φ(x)Φ(y) + \\frac{1}{2}Φ(y) & x > y \\end{cases}
$$

(II)


$$
\\begin{array}{cc}
F_{Y}(y) & = P\\{Y ≤ y\\} \\\\
 & = P \\{X_{3} = 0, Y ≤ y\\} + P \\{X_{3} = 1, Y ≤ y\\} \\\\
 & = P \\{X_{3} = 0, X_{3}X_{1} + (1 - X_{3})X_{2} ≤ y\\} + P \\{X_{3} = 1, X_{3}X_{1} + (1 - X_{3})X_{2} ≤ y\\} \\\\
 & = P \\{X_{3} = 0, X_{2} ≤ y\\} + P \\{X_{3} = 1, X_{1} ≤ y\\} \\\\
\\end{array}
$$

因此$Y ∼ N(0, 1)$。
', 9, 'Mogullzr', '2026-01-29 14:18:48', 9, 'Mogullzr', '2026-01-29 14:18:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2856');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2856');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2856');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2857, '2020年考研数学卷1第23题', '简单', '考研数学2020年数1真题', '（本题满分 11 分）设$T$的分布函数为

$$
F(t) = \\begin{cases} 1 - e^{−(\\frac{t}{θ})^{m}} & t ≥ 0 \\\\ 0 & t < 0 \\end{cases}
$$
其中$θ$、$m$为参数且大于零。(I) 求概率$P\\{T > t\\}$与$P\\{T > s + t ∣ T > s\\}$，其中$s > 0$，$t > 0$；(II) 任取$n$个这种元件做寿命试验，测得它们的寿命分别为$t_{1}, t_{2}, … , t_{n}$，若$m$已知，求$θ$的最大似然估计值$\\hat{θ}$。', '[]', '
(I)


$$
P\\{T > t\\} = e^{−(\\frac{t}{θ})^{m}}
$$



$$
P\\{T > s + t ∣ T > s\\} = e^{\\frac{s^{m}-(s+t)m}{θ^{m}}}
$$

(II)


$$
\\hat{θ} = \\sqrt{\\frac{1}{n} \\sum_{i=1}^{n} t_{i}^{m}}
$$

', '
（I）$P\\{T > t\\} = 1 - P\\{T ≤ t\\} = 1 - F(t) = e^{−(\\frac{t}{θ})^{m}}$。

$$
\\begin{array}{cc}
P\\{T > s + t ∣ T > s\\} & = \\frac{P\\{T > s + t,  T > s\\}}{P\\{T > s\\}} \\\\
 & = \\frac{P\\{T > s + t\\}}{P\\{T > s\\}} \\\\
 & = \\frac{e^{−(\\frac{s+t}{θ})^{m}}}{e^{−(\\frac{s}{θ})^{m}}} \\\\
\\end{array}
$$

（II）概率密度函数为

$$
f(t) = F^{′}(t) = \\begin{cases} e^{−(\\frac{t}{θ})^{m}}\\frac{mt^{m-1}}{θ^{m}} & t > 0 \\\\ 0 & 其他. \\end{cases}
$$

似然函数为

$$
L(θ) = \\prod_{i=1}^{n} e^{−(\\frac{t_{i}}{θ})^{m}}\\frac{mt_{i}^{m-1}}{θ^{m}} = e^{−\\frac{1}{θ^{m}} \\sum_{i=1}^{n} t_{i}^{m}}m^{n} (\\prod_{i=1}^{n} t_{i}^{m-1}) θ^{−nm},
$$

其中$t_{i} > 0,  i = 1, 2, … , n$。
取对数得

$$
\\begin{array}{cc}
\\ln L(θ) & = −\\frac{1}{θ^{m}} \\sum_{i=1}^{n} t_{i}^{m} + \\ln m^{n} \\\\
 & + \\ln (\\prod_{i=1}^{n} t_{i}^{m-1}) - nm \\ln θ. \\\\
\\end{array}
$$

对$θ$求导并令导数为零：

$$
\\begin{array}{cc}
\\frac{d \\ln L(θ)}{dθ} & = \\frac{m}{θ^{m+1}} \\sum_{i=1}^{n} t_{i}^{m} - \\frac{nm}{θ} = 0 \\\\
 & ⇒ θ = \\sqrt{\\frac{1}{n} \\sum_{i=1}^{n} t_{i}^{m}}. \\\\
\\end{array}
$$

因此，$θ$的最大似然估计值为

$$
\\hat{θ} = \\sqrt{\\frac{1}{n} \\sum_{i=1}^{n} t_{i}^{m}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:18:48', 9, 'Mogullzr', '2026-01-29 14:18:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2857');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2857');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '2857');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2858, '2020年考研数学卷2第1题', '简单', '考研数学2020年数2真题', '当$x → 0^{+}$时，下列无穷小量中最高阶的是：', '[''$\\\\int_{0}^{x} (e^{t^{2}} - 1) dt$'', ''$\\\\int_{0}^{x} \\\\ln (1 + \\\\sqrt{t^{3}}) dt$'', ''$\\\\int_{0}^{\\\\sin x} \\\\sin t^{2}dt$'', ''$\\\\int_{0}^{1-\\\\cos x} \\\\sqrt{\\\\sin^{3} t}dt$'']', "['D']", '
A.$\\int_{0}^{x} (e^{t^{2}} - 1) dt ∼ \\int_{0}^{x} t^{2}dt = \\frac{x^{3}}{3}$；B.$\\int_{0}^{x} \\ln (1 + \\sqrt{t^{3}}) dt ∼ \\int_{0}^{x} t^{\\frac{3}{2}}dt = \\frac{2}{5}x^{\\frac{5}{2}}$；C.$\\int_{0}^{\\sin x} \\sin t^{2}dt ∼ \\int_{0}^{x} t^{2}dt = \\frac{1}{3}x^{3}$；D.$\\int_{0}^{1-\\cos x} \\sqrt{\\sin^{3} t}dt ∼ \\int_{0}^{\\frac{1}{2}x^{2}} t^{\\frac{3}{2}}dt = \\frac{2}{5}t^{\\frac{5}{2}}​_{0}^{\\frac{1}{2}x^{2}} = \\frac{2}{5} ⋅ (\\frac{1}{2})^{\\frac{5}{2}} ⋅ x^{5}$。', 9, 'Mogullzr', '2026-01-29 14:18:51', 9, 'Mogullzr', '2026-01-29 14:18:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2858');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2858');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2858');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2859, '2020年考研数学卷2第2题', '简单', '考研数学2020年数2真题', '函数$f(x) = \\frac{e^{\\frac{1}{x-1}} \\ln ∣1+x∣}{(e^{x}-1)(x-2)}$的第一类间断点的个数为', '[''1个'', ''2个'', ''3个'', ''4个'']', "['C']", '首先，计算当$x → 0$时的极限：
$$
\\lim_{x→0} f(x) = \\lim_{x→0} \\frac{e^{\\frac{1}{e^{x}-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = \\lim_{x→0} \\frac{e^{\\frac{1}{x}}x}{x(−2)} = −\\frac{1}{2e}.
$$
接下来，计算当$x → 1^{+}$时的极限：
$$
\\lim_{x→1^{+}} f(x) = \\lim_{x→1^{+}} \\frac{e^{\\frac{1}{e^{x}-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = \\lim_{x→1^{+}} \\frac{e^{\\frac{1}{e^{x}-1}} \\ln ∣1 + 1∣}{(e^{x} - 1)(1 - 2)} = ∞.
$$
然后，计算当$x → 2$时的极限：
$$
\\lim_{x→2} f(x) = \\lim_{x→2} \\frac{e^{\\frac{1}{e^{x}-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = \\lim_{x→2} \\frac{e^{\\frac{1}{e^{2}-1}} \\ln ∣1 + 2∣}{(e^{2} - 1)(x - 2)} = ∞.
$$
最后，计算当$x → −1$时的极限：
$$
\\lim_{x→−1} f(x) = \\lim_{x→−1} \\frac{e^{\\frac{1}{e^{x}-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = ∞.
$$
综上，共有 3 个极限为无穷大，因此选 (C)。', 9, 'Mogullzr', '2026-01-29 14:18:51', 9, 'Mogullzr', '2026-01-29 14:18:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2859');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2859');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '2859');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2860, '2020年考研数学卷2第3题', '简单', '考研数学2020年数2真题', '
$$
\\int_{0}^{1} \\frac{arcsin \\sqrt{x}}{\\sqrt{x(1 - x)}} dx =
$$
', '[''$\\\\frac{π^{2}}{4}$'', ''$\\\\frac{π^{2}}{8}$'', ''$\\\\frac{π}{4}$'', ''$\\\\frac{π}{8}$'']', "['A']", '令$\\sqrt{x} = \\sin t$，则$x = \\sin^{2} t$，$dx = 2 \\sin t \\cos t dt$。于是有：
$$
\\int_{0}^{1} \\frac{arcsin \\sqrt{x}}{\\sqrt{x(1 - x)}} dx = \\int_{0}^{\\frac{π}{2}} \\frac{t}{\\sin t \\cos t} ⋅ 2 \\sin t \\cos t dt = \\int_{0}^{\\frac{π}{2}} 2t dt
$$
计算该积分：
$$
\\int_{0}^{\\frac{π}{2}} 2t dt = t^{2}​_{0}^{\\frac{π}{2}} = (\\frac{π}{2})^{2} - 0 = \\frac{π^{2}}{4}
$$
因此，原积分值为$\\frac{π^{2}}{4}$。', 9, 'Mogullzr', '2026-01-29 14:18:51', 9, 'Mogullzr', '2026-01-29 14:18:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2860');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2860');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '2860');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2861, '2020年考研数学卷2第4题', '简单', '考研数学2020年数2真题', '已知函数$f(x) = x^{2} \\ln(1 - x)$，当$n ≥ 3$时，$f^{(n)}(0) =$', '[''$−\\\\frac{n!}{n-2}$'', ''$\\\\frac{n!}{n-2}$'', ''$−\\\\frac{(n-2)!}{n}$'', ''$\\\\frac{(n-2)!}{n}$'']', "['A']", '
由展开式

$$
\\ln(1 - x) = − \\sum_{n=1}^{∞} \\frac{x^{n}}{n},
$$
则

$$
x^{2} \\ln(1 - x) = − \\sum_{n=1}^{∞} \\frac{x^{n+2}}{n} = − \\sum_{n=3}^{∞} \\frac{x^{n}}{n - 2}.
$$
故

$$
f^{(n)}(0) = −\\frac{n!}{n - 2}.
$$
', 9, 'Mogullzr', '2026-01-29 14:18:51', 9, 'Mogullzr', '2026-01-29 14:18:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2861');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2861');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '2861');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2862, '2020年考研数学卷2第5题', '简单', '考研数学2020年数2真题', '设函数$f(x, y) = \\begin{cases} xy & xy \\neq 0 \\\\ x & y = 0 \\\\ y & x = 0 \\end{cases}$，判断以下结论：$(1)$$\\frac{∂f}{∂x}​_{(0,0)} = 1$
$(2)$$\\frac{∂^{2}f}{∂x∂y}​_{(0,0)} = 1$
$(3)$$\\lim_{(x,y)→(0,0)} f(x, y) = 0$
$(4)$$\\lim_{y→0} \\lim_{x→0} f(x, y) = 0$正确的个数是', '[''4'', ''3'', ''2'', ''1'']', "['B']", '
$\\frac{∂f}{∂x}​_{(0,0)} = \\lim_{x→0} \\frac{f(x,0)-f(0,0)}{x-0} = \\lim_{x→0} \\frac{x-0}{x-0} = 1$，
因此（1）正确。$\\frac{∂^{2}f}{∂x∂y}​_{(0,0)} = \\lim_{y→0} \\frac{\\frac{∂f}{∂x}∣_{(0,y)}-\\frac{∂f}{∂x}∣_{(0,0)}}{y-0} = \\lim_{y→0} \\frac{\\frac{∂f}{∂x}∣_{(0,y)}-1}{y}$，
其中$\\frac{∂f}{∂x}​_{(0,y)} = \\lim_{x→0} \\frac{f(x,y)-f(0,y)}{x-0} = \\lim_{x→0} \\frac{xy-y}{x} = \\lim_{x→0} \\frac{y(x-1)}{x}$不存在，
因此（2）错误。由$∣f(x, y)∣ ≤ ∣x∣ + ∣y∣$，当$(x, y) → (0, 0)$时，$\\lim_{(x,y)→(0,0)} f(x, y) = 0$，
所以（3）正确。$\\lim_{x→0} f(x, y) = \\begin{cases} 0 & y \\neq 0 \\\\ y & y = 0 \\end{cases}$，
从而$\\lim_{y→0} \\lim_{x→0} f(x, y) = 0$，
（4）正确。', 9, 'Mogullzr', '2026-01-29 14:18:51', 9, 'Mogullzr', '2026-01-29 14:18:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '2862');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2863, '2020年考研数学卷2第6题', '简单', '考研数学2020年数2真题', '设函数$f(x)$在区间$\\lbrack −2, 2 \\rbrack$上可导，且$f^{′}(x) > f(x) > 0$，则', '[''$\\\\frac{f(−2)}{f(−1)} > 1$'', ''$\\\\frac{f(0)}{f(−1)} > e$'', ''$\\\\frac{f(1)}{f(−1)} < e^{2}$'', ''$\\\\frac{f(2)}{f(−1)} < e^{3}$'']', "['B']", '
令$F(x) = \\frac{f(x)}{e^{x}}$，则

$$
F^{′}(x) = \\frac{f^{′}(x)e^{x} - f(x)e^{x}}{e^{2x}} = \\frac{f^{′}(x) - f(x)}{e^{x}}.
$$
由题意知$F^{′}(x) > 0$，从而$F(x) = \\frac{f(x)}{e^{x}}$单调递增。因此，$F(0) > F(−1)$，即

$$
\\frac{f(0)}{e^{0}} > \\frac{f(−1)}{e^{−1}}.
$$
又$f(x) > 0$，故

$$
\\frac{f(0)}{f(−1)} > e.
$$
', 9, 'Mogullzr', '2026-01-29 14:18:52', 9, 'Mogullzr', '2026-01-29 14:18:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2863');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2863');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2863');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2864, '2020年考研数学卷2第7题', '简单', '考研数学2020年数2真题', '设$4$阶矩阵$A = (a_{ij})$不可逆，$a_{12}$代数余子式$A_{12} \\neq 0$，$α_{1}, α_{2}, α_{3}, α_{4}$为矩阵$A$的列向量组，$A^{∗}$为$A$的伴随矩阵，则方程组$A^{∗}x = 0$通解为', '[''$x = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3}$，其中$k_{1}, k_{2}, k_{3}$为任意常数'', ''$x = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{4}$，其中$k_{1}, k_{2}, k_{3}$为任意常数'', ''$x = k_{1}α_{1} + k_{2}α_{3} + k_{3}α_{4}$，其中$k_{1}, k_{2}, k_{3}$为任意常数'', ''$x = k_{1}α_{2} + k_{2}α_{3} + k_{3}α_{4}$，其中$k_{1}, k_{2}, k_{3}$为任意常数'']', "['C']", '
已知$∣A∣ = 0$，$r(A) = 3$，故$r(A^{∗}) = 1$，因此$A^{∗}x = 0$的基础解系中解向量的个数为$3$。由$A_{12} \\neq 0$得$α_{1}$、$α_{3}$、$α_{4}$线性无关，则通解为

$$
x = k_{1}α_{1} + k_{2}α_{3} + k_{3}α_{4},
$$
其中$k_{1}$、$k_{2}$、$k_{3}$为任意常数，故选择 (C)。', 9, 'Mogullzr', '2026-01-29 14:18:52', 9, 'Mogullzr', '2026-01-29 14:18:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2864');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2864');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2864');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2865, '2020年考研数学卷2第8题', '简单', '考研数学2020年数2真题', '设$A$为$3$阶矩阵，$α_{1}$、$α_{2}$为$A$属于特征值为$1$的线性无关的特征向量，$α_{3}$为$A$属于特征值为$−1$的特征向量，若$P^{−1}AP = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，则$P$可为', '[''$(α_{1} + α_{3}, α_{2}, −α_{3})$'', ''$(α_{1} + α_{2}, α_{2}, −α_{3})$'', ''$(α_{1} + α_{3}, −α_{3}, α_{2})$'', ''$(α_{1} + α_{2}, −α_{3}, α_{2})$'']', "['D']", '$A(α_{1} + α_{2}) = 1 ⋅ (α_{1} + α_{2})$，
$A(−α_{3}) = −1 ⋅ (−α_{3})$，
$Aα_{2} = 1 ⋅ α_{2}$，
且$α_{1} + α_{2}$、$−α_{3}$、$α_{2}$线性无关。又由特征值$1$、$−1$、$1$的顺序知，$P$可为$(α_{1} + α_{2}, −α_{3}, α_{2})$，
故选（D）。', 9, 'Mogullzr', '2026-01-29 14:18:52', 9, 'Mogullzr', '2026-01-29 14:18:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2865');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2865');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2866, '2020年考研数学卷2第9题', '简单', '考研数学2020年数2真题', '（填空题）若
$$
\\begin{cases} x = \\sqrt{t^{2} + 1} \\\\ y = \\ln (t + \\sqrt{t^{2} + 1})  \\end{cases}
$$
则$\\frac{d^{2}y}{dx^{2}}​_{t=1} =$', '[]', '$−\\sqrt{2}$
', '首先，求一阶导数：

$$
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{1 + \\frac{t}{\\sqrt{t^{2}+1}}}{t + \\sqrt{t^{2} + 1}} ⋅ \\frac{\\sqrt{t^{2} + 1}}{t} = \\frac{1}{t}
$$

接着，求二阶导数：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d (\\frac{1}{t})}{dt} ⋅ \\frac{dt}{dx} = −\\frac{1}{t^{2}} ⋅ \\frac{\\sqrt{t^{2} + 1}}{t} = −\\frac{\\sqrt{t^{2} + 1}}{t^{3}}
$$

最后，代入$t = 1$得：

$$
\\frac{d^{2}y}{dx^{2}}​_{t=1} = −\\sqrt{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:52', 9, 'Mogullzr', '2026-01-29 14:18:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2866');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2866');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2866');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2867, '2020年考研数学卷2第10题', '简单', '考研数学2020年数2真题', '（填空题）$\\int_{0}^{1} dy \\int_{\\sqrt{y}}^{1} \\sqrt{x^{3} + 1} dx =$', '[]', '$\\frac{2}{9}(2\\sqrt{2} - 1)$
', '


$$
\\begin{array}{cc}
\\int_{0}^{1} dy \\int_{\\sqrt{y}}^{1} \\sqrt{x^{3} + 1}dx & = \\int_{0}^{1} dx \\int_{0}^{x^{2}} \\sqrt{x^{3} + 1}dy = \\int_{0}^{1} x^{2}\\sqrt{x^{3} + 1}dx \\\\
 & = \\frac{1}{3} \\int_{0}^{1} \\sqrt{x^{3} + 1}d (x^{3} + 1) = \\frac{2}{9} (x^{3} + 1)^{\\frac{3}{2}}​_{0}^{1} = \\frac{2}{9}(2\\sqrt{2} - 1) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:52', 9, 'Mogullzr', '2026-01-29 14:18:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2867');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2867');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '2867');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2868, '2020年考研数学卷2第11题', '简单', '考研数学2020年数2真题', '（填空题）设$z = arctan \\lbrack xy + \\sin(x + y) \\rbrack$，则$dz∣_{(0,π)} =$', '[]', '$dz​_{(0,π)} = (π - 1)dx - dy$
', '
全微分公式为


$$
dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy
$$

其中，


$$
\\frac{∂z}{∂x} = \\frac{y + \\cos(x + y)}{1 +  \\lbrack xy + \\sin(x + y) \\rbrack 2}
$$

将点$(0, π)$代入，得


$$
\\frac{∂z}{∂x} = π - 1,  \\frac{∂z}{∂y} = −1
$$

因此，


$$
dz​_{(0,π)} = (π - 1)dx - dy
$$

', 9, 'Mogullzr', '2026-01-29 14:18:53', 9, 'Mogullzr', '2026-01-29 14:18:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2868');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2868');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '2868');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2869, '2020年考研数学卷2第12题', '简单', '考研数学2020年数2真题', '（填空题）斜边长为$2a$的等腰直角三角形平板铅直地沉没在水中，且斜边与水面相齐，设重力加速度为$g$，水密度为$ρ$，则该平板一侧所受的水压力为', '[]', '

$$
\\frac{1}{3}ρga^{3}
$$

', '以水平面向右为$x$轴，以垂直于三角板斜边向上为$y$轴建立直角坐标系。此时，三角板右斜边所在的直线方程为$y = x - a$。
取微元$dy$，则微元受力为：

$$
dF = −y ⋅ 2xρg dy = −2ρgy(y + a) dy
$$

因此，一侧的压力为：

$$
F = \\int_{−a}^{0} −2ρgy(y + a) dy = ρg (−\\frac{2}{3}y^{3} - ay^{2})​_{−a}^{0} = \\frac{1}{3}ρga^{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:53', 9, 'Mogullzr', '2026-01-29 14:18:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2869');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2869');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2869');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2870, '2020年考研数学卷2第13题', '简单', '考研数学2020年数2真题', '（填空题）设$y = y(x)$满足$y^{′′} + 2y^{′} + y = 0$，且$y(0) = 0$，$y^{′}(0) = 1$，则$\\int_{0}^{+∞} y(x) dx =$', '[]', '1
', '由方程可得特征方程为$λ^{2} + 2λ + 1 = 0$，则特征方程的根为$λ_{1} = −1$，$λ_{2} = −1$。
于是微分方程的通解为$y = c_{1}e^{−x} + c_{2}xe^{−x}$。
由$y(0) = 0$，$y^{′}(0) = 1$可得$c_{1} = 0$，$c_{2} = 1$，因此$y(x) = xe^{−x}$。
接下来计算积分：

$$
\\begin{array}{cc}
\\int_{0}^{+∞} y(x) dx & = \\int_{0}^{+∞} xe^{−x} dx \\\\
 & = − \\int_{0}^{+∞} x d(e^{−x}) \\\\
 & = − (xe^{−x}​_{0}^{+∞} - \\int_{0}^{+∞} e^{−x} dx) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:53', 9, 'Mogullzr', '2026-01-29 14:18:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2870');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2870');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '2870');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2871, '2020年考研数学卷2第14题', '简单', '考研数学2020年数2真题', '（填空题）行列式

$$
\\begin{vmatrix}
a & 0 & −1 & 1\\\\
0 & a & 1 & −1\\\\
−1 & 1 & a & 0\\\\
1 & −1 & 0 & a
\\end{vmatrix} =
$$
', '[]', '$a^{4} - 4a^{2}$
', '
原行列式为：

$$
\\begin{vmatrix}
a & 0 & −1 & 1\\\\
0 & a & 1 & −1\\\\
−1 & 1 & a & 0\\\\
1 & −1 & 0 & a
\\end{vmatrix}
$$

首先，将第一列加到第二、三、四列，得到：

$$
\\begin{vmatrix}
a & a & a & a\\\\
0 & a & 1 & −1\\\\
−1 & 1 & a & 0\\\\
1 & −1 & 0 & a
\\end{vmatrix}
$$

提取公因子$a$，得到：

$$
a \\begin{vmatrix}
1 & 1 & 1 & 1\\\\
0 & a & 1 & −1\\\\
−1 & 1 & a & 0\\\\
1 & −1 & 0 & a
\\end{vmatrix}
$$

接下来，将第一行加到第三行和第四行，得到：

$$
a \\begin{vmatrix}
1 & 1 & 1 & 1\\\\
0 & a & 1 & −1\\\\
0 & 2 & a + 1 & 1\\\\
0 & −2 & −1 & a - 1
\\end{vmatrix}
$$

按第一列展开，得到：

$$
a \\begin{vmatrix}
a & 1 & −1\\\\
2 & a + 1 & 1\\\\
−2 & −1 & a - 1
\\end{vmatrix}
$$

进一步化简，得到最终结果：

$$
a^{4} - 4a^{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:53', 9, 'Mogullzr', '2026-01-29 14:18:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2871');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2871');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2872, '2020年考研数学卷2第15题', '简单', '考研数学2020年数2真题', '（本题满分$10$分）求曲线$y = \\frac{x^{1+x}}{(1 + x)x} (x > 0)$的斜渐近线方程。', '[]', '$y = \\frac{1}{e}x + \\frac{1}{2e}$
', '
由


$$
\\begin{array}{cc}
k & = \\lim_{x→+∞} \\frac{y}{x} = \\lim_{x→+∞} \\frac{x^{1+x}}{x(1 + x)x} \\\\
 & = \\lim_{x→+∞} \\frac{x^{x}}{(1 + x)x} = \\lim_{x→+∞} \\frac{1}{(1 + \\frac{1}{x})^{x}} \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
b & = \\lim_{x→+∞}(y - kx) = \\lim_{x→+∞} (\\frac{x^{1+x}}{(1 + x)x} - \\frac{1}{e}x) \\\\
 & = \\lim_{x→+∞} x (e^{x \\ln \\frac{x}{1+x}} - \\frac{1}{e}) \\\\
 & = e^{−1} \\lim_{x→+∞} x (e^{x \\ln \\frac{x}{1+x}+1} - 1) \\\\
 & = e^{−1} \\lim_{x→+∞} x (x \\ln \\frac{x}{1 + x} + 1) \\\\
 & x1​=t e^{−1} \\lim_{t→0^{+}} \\frac{\\ln \\frac{1}{1+t} + t}{t^{2}} \\\\
 & 洛必达法则 e^{−1} \\lim_{t→0^{+}} \\frac{−\\frac{1}{1+t} + 1}{2t} \\\\
 & = e^{−1} \\lim_{t→0^{+}} \\frac{1}{2(1 + t)} = \\frac{1}{2e}. \\\\
\\end{array}
$$

故所求斜渐近线为


$$
y = \\frac{1}{e}x + \\frac{1}{2e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:18:53', 9, 'Mogullzr', '2026-01-29 14:18:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2872');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2872');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '2872');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2873, '2020年考研数学卷2第16题', '简单', '考研数学2020年数2真题', '（本题满分 10 分）已知函数$f(x)$连续且$\\lim_{x→0} \\frac{f(x)}{x} = 1$，$g(x) = \\int_{0}^{1} f(xt) dt$，求$g^{′}(x)$并证明$g^{′}(x)$在$x = 0$处连续。', '[]', '


$$
g^{′}(x) = \\begin{cases} \\frac{1}{2} & x = 0 \\\\ \\frac{f(x)}{x} - \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du & x \\neq 0. \\end{cases}
$$

并且$g^{′}(x)$在$x = 0$处连续。
', '
已知$\\lim_{x→0} \\frac{f(x)}{x} = 1$且$f(x)$连续，可得$f(0) = 0$。
定义函数

$$
g(x) = \\int_{0}^{1} f(xt) dt xt=u​ \\frac{1}{x} \\int_{0}^{x} f(u) du,
$$

当$x = 0$时，有$g(0) = 0$，因此

$$
g(x) = \\begin{cases} 0 & x = 0 \\\\ \\frac{1}{x} \\int_{0}^{x} f(u) du & x \\neq 0. \\end{cases}
$$

计算$g^{′}(0)$：

$$
g^{′}(0) = \\lim_{x→0} \\frac{g(x) - g(0)}{x - 0} = \\lim_{x→0} \\frac{\\frac{1}{x} \\int_{0}^{x} f(u) du - 0}{x} = \\lim_{x→0} \\frac{\\int_{0}^{x} f(u) du}{x^{2}}.
$$

应用洛必达法则：

$$
\\lim_{x→0} \\frac{\\int_{0}^{x} f(u) du}{x^{2}} 分子分母分别求导​ \\lim_{x→0} \\frac{f(x)}{2x} = \\frac{1}{2}.
$$

因此$g^{′}(0) = \\frac{1}{2}$。
对于$x \\neq 0$，有

$$
g^{′}(x) = \\frac{f(x)}{x} - \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du.
$$

综上，

$$
g^{′}(x) = \\begin{cases} \\frac{1}{2} & x = 0 \\\\ \\frac{f(x)}{x} - \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du & x \\neq 0. \\end{cases}
$$

考虑$g^{′}(x)$在$x = 0$处的连续性：

$$
\\lim_{x→0} g^{′}(x) = \\lim_{x→0}  \\lbrack \\frac{f(x)}{x} - \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du \\rbrack  = \\lim_{x→0} \\frac{f(x)}{x} - \\lim_{x→0} \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du.
$$

由已知$\\lim_{x→0} \\frac{f(x)}{x} = 1$，且$\\lim_{x→0} \\frac{1}{x^{2}} \\int_{0}^{x} f(u) du = \\frac{1}{2}$，故

$$
\\lim_{x→0} g^{′}(x) = 1 - \\frac{1}{2} = \\frac{1}{2} = g^{′}(0).
$$

因此，$g^{′}(x)$在$x = 0$处连续。
', 9, 'Mogullzr', '2026-01-29 14:18:53', 9, 'Mogullzr', '2026-01-29 14:18:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2873');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2873');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2873');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2874, '2020年考研数学卷2第17题', '简单', '考研数学2020年数2真题', '（本题满分 10 分）求函数$f(x, y) = x^{3} + 8y^{3} - xy$的极值。', '[]', '函数在点$(\\frac{1}{6}, \\frac{1}{12})$处取得极小值$−\\frac{1}{216}$。
', '由$f_{x}^{′}(x, y) = 3x^{2} - y = 0$和$f_{y}^{′}(x, y) = 24y^{2} - x = 0$，得

$$
\\begin{cases} x = 0 \\\\ y = 0 \\end{cases}
$$

或

$$
\\begin{cases} x = \\frac{1}{6} \\\\ y = \\frac{1}{12} \\end{cases} .
$$

在$(0, 0)$处，

$$
\\begin{cases} A = f_{xx}^{′′}(0, 0) = 0 \\\\ B = f_{xy}^{′′}(0, 0) = −1 \\\\ C = f_{yy}^{′′}(0, 0) = 0 \\end{cases} ,
$$

因$AC - B^{2} < 0$，故$(0, 0)$不是极值点。
在$(\\frac{1}{6}, \\frac{1}{12})$处，

$$
\\begin{cases} A = f_{xx}^{′′} (\\frac{1}{6}, \\frac{1}{12}) = 1 \\\\ B = f_{xy}^{′′} (\\frac{1}{6}, \\frac{1}{12}) = −1 \\\\ C = f_{yy}^{′′} (\\frac{1}{6}, \\frac{1}{12}) = 0 \\end{cases} .
$$

因$AC - B^{2} = 1 × 0 - (−1)2 = −1 < 0$（此处真题解析可能存在笔误，实际应为计算错误，正确应为$A = 3 × 2x = 1$（当$x = \\frac{1}{6}$时），$C = 24 × 2y = 4$（当$y = \\frac{1}{12}$时），则$AC - B^{2} = 1 × 4 - (−1)2 = 3 > 0$且$A > 0$），故$f (\\frac{1}{6}, \\frac{1}{12}) = −\\frac{1}{216}$为极小值。
', 9, 'Mogullzr', '2026-01-29 14:18:54', 9, 'Mogullzr', '2026-01-29 14:18:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2874');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2874');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2874');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2875, '2020年考研数学卷2第18题', '简单', '考研数学2020年数2真题', '（本题满分 10 分）设函数$f(x)$的定义域为$(0, +∞)$且满足

$$
2f(x) + x^{2}f (\\frac{1}{x}) = \\frac{x^{2} + 2x}{\\sqrt{1 + x^{2}}},
$$
求$f(x)$并求由曲线$y = f(x)$、$y = \\frac{1}{2}$、$y = \\frac{\\sqrt{3}}{2}$及$y$轴所围图形绕$x$轴旋转所成旋转体的体积。', '[]', '
函数$f(x) = \\frac{x}{\\sqrt{1 + x^{2}}}$，旋转体的体积为$\\frac{π^{2}}{6}$。
', '


$$
\\begin{cases} 2f(x) + x^{2}f (\\frac{1}{x}) = \\frac{x^{2} + 2x}{\\sqrt{1 + x^{2}}} \\\\ 2f (\\frac{1}{x}) + \\frac{1}{x^{2}}f(x) = \\frac{\\frac{1}{x^{2}} + 2}{\\sqrt{1 + \\frac{1}{x^{2}}}} \\end{cases}
$$

解得$f(x) = \\frac{x}{\\sqrt{1 + x^{2}}}$。
体积$V_{x} = \\int_{\\frac{1}{2}}^{\\frac{\\sqrt{3}}{2}} 2πyxdy = \\int_{\\frac{1}{2}}^{\\frac{\\sqrt{3}}{2}} 2π\\frac{y^{2}}{\\sqrt{1 - y^{2}}}dy$，令$y = \\sin t$，则

$$
= \\int_{\\frac{π}{6}}^{\\frac{π}{3}} 2π\\frac{\\sin^{2} t}{\\cos t} \\cos tdt = 2π \\int_{\\frac{π}{6}}^{\\frac{π}{3}} \\frac{1 - \\cos 2t}{2}dt
$$


$$
= π \\int_{\\frac{π}{6}}^{\\frac{π}{3}}(1 - \\cos 2t)dt = π (t - \\frac{1}{2} \\sin 2t) ​_{\\frac{π}{6}}^{\\frac{π}{3}}
$$


$$
= π (\\frac{π}{3} - \\frac{1}{2} ⋅ \\frac{\\sqrt{3}}{2}) - π (\\frac{π}{6} - \\frac{1}{2} ⋅ \\frac{\\sqrt{3}}{2}) = \\frac{π^{2}}{6}.
$$

', 9, 'Mogullzr', '2026-01-29 14:18:54', 9, 'Mogullzr', '2026-01-29 14:18:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2875');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2875');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2875');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2876, '2020年考研数学卷2第19题', '简单', '考研数学2020年数2真题', '（本题满分$10$分）设区域$D$由直线$x = 1$、$x = 2$、$y = x$及$x$轴围成，计算$\\iint_{D} \\frac{\\sqrt{x^{2}+y^{2}}}{x} dx dy$。', '[]', '$\\frac{3}{4}\\sqrt{2} + \\frac{3}{4} \\ln(\\sqrt{2} + 1)$
', '

$$
\\begin{array}{cc}
 & \\iint_{D} \\frac{\\sqrt{x^{2} + y^{2}}}{x} dx dy = \\int_{0}^{\\frac{π}{4}} dθ \\int_{sec θ}^{2 sec θ} \\frac{r}{r \\cos θ} ⋅ r dr = \\int_{0}^{\\frac{π}{4}} \\frac{1}{\\cos θ} ⋅ \\frac{1}{2} ⋅ 3 sec^{2} θ dθ \\\\
 & = \\frac{3}{2} \\int_{0}^{\\frac{π}{4}} sec^{3} θ dθ = \\frac{3}{2} \\int_{0}^{\\frac{π}{4}} sec θ d \\tan θ \\\\
 & = \\frac{3}{2} sec θ \\tan θ​_{0}^{\\frac{π}{4}} - \\frac{3}{2} \\int_{0}^{\\frac{π}{4}} \\tan θ ⋅ sec θ \\tan θ dθ \\\\
 & = \\frac{3}{2}\\sqrt{2} - \\frac{3}{2} \\int_{0}^{\\frac{π}{4}}(sec^{3} θ - sec θ) dθ \\\\
 & = \\frac{3}{4}\\sqrt{2} + \\frac{3}{4} \\ln(\\sqrt{2} + 1) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:18:54', 9, 'Mogullzr', '2026-01-29 14:18:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2876');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2876');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2876');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2877, '2020年考研数学卷2第20题', '简单', '考研数学2020年数2真题', '（本题满分 11 分）设函数$f(x) = \\int_{1}^{x} e^{t^{2}} dt$。(I) 证明：存在$ξ ∈ (1, 2)$，使得$f(ξ) = (2 - ξ)e^{ξ^{2}}$；(II) 证明：存在$η ∈ (1, 2)$，使得$f(2) = \\ln 2 ⋅ ηe^{η^{2}}$。', '[]', '见解析
', '
（I）
法 1：令


$$
F(x) = f(x) + (x - 2)e^{x^{2}},
$$

则


$$
\\begin{array}{c}
F(1) = f(1) + (1 - 2)e^{1^{2}} = 0 - e = −e < 0, \\\\
F(2) = f(2) + (2 - 2)e^{2^{2}} = \\int_{1}^{2} e^{t^{2}}dt > 0. \\\\
\\end{array}
$$

由零点定理知，存在$ξ ∈ (1, 2)$，使得$F(ξ) = 0$，即


$$
f(ξ) = (2 - ξ)e^{ξ^{2}}.
$$

法 2：因$f^{′}(x) = e^{x^{2}}$，则


$$
f(ξ) = (2 - ξ)e^{ξ^{2}} 满足 f(ξ) = (2 - ξ)f^{′}(ξ).
$$

令


$$
F(x) = (x - 2)f(x) = (x - 2) \\int_{1}^{x} e^{t^{2}}dt,
$$

则


$$
F(1) = 0,  F(2) = 0.
$$

由罗尔定理知，存在$ξ ∈ (1, 2)$，使得$F^{′}(ξ) = 0$。
又


$$
F^{′}(x) = \\int_{1}^{x} e^{t^{2}}dt + (x - 2)e^{x^{2}},
$$

即


$$
f(ξ) = (2 - ξ)e^{ξ^{2}}.
$$

（II）
令$g(x) = \\ln x$，则$g^{′}(x) = \\frac{1}{x} \\neq 0$。
由柯西中值定理，存在$η ∈ (1, 2)$，使得


$$
\\frac{f(2) - f(1)}{g(2) - g(1)} = \\frac{f^{′}(η)}{g^{′}(η)}.
$$

而$f(1) = 0$，故


$$
\\frac{f(2)}{\\ln 2} = \\frac{e^{η^{2}}}{\\frac{1}{η}},
$$

即


$$
f(2) = \\ln 2 ⋅ ηe^{η^{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:18:54', 9, 'Mogullzr', '2026-01-29 14:18:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2877');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2877');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2877');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2878, '2020年考研数学卷2第21题', '简单', '考研数学2020年数2真题', '（本题满分 11 分）设函数$f(x)$可导，且$f^{′}(x) > 0 (x ≥ 0)$，过原点$O$，其上任意一点$M$处的切线与$x$轴交于$T$，$MP ⊥ x$轴于点$P$，已知由曲线$y = f(x)$、直线$MP$以及$x$轴所围图形的面积与$△MTP$的面积之比恒为$3 : 2$，求满足条件的曲线方程。', '[]', '$y = Cx^{3}$其中$C > 0$
', '设切点$M(x, y)$，则切线方程为$Y - y = y^{′}(X - x)$。令$Y = 0$，得$T (x - \\frac{y}{y^{′}}, 0)$。
所围图形面积为


$$
S_{1} = \\int_{0}^{x} y(t) dt,
$$

三角形$MTP$的面积为


$$
S_{2} = \\frac{1}{2}y  \\lbrack x - (x - \\frac{y}{y^{′}}) \\rbrack  = \\frac{y^{2}}{2y^{′}}.
$$

由$\\frac{S_{1}}{S_{2}} = \\frac{3}{2}$，得


$$
\\int_{0}^{x} y(t) dt = \\frac{3}{4}\\frac{y^{2}}{y^{′}} (1).
$$

对 (1) 两边求导，得


$$
y = \\frac{3}{4}\\frac{2y(y^{′})2 - y^{2}y^{′′}}{(y^{′})2},
$$

化简得


$$
3yy^{′′} = 2(y^{′})2 (2).
$$

令$y^{′} = p$，则$y^{′′} = p\\frac{dp}{dy}$，代入 (2) 得


$$
3yp\\frac{dp}{dy} = 2p^{2}.
$$

解得


$$
p = C_{1}y^{\\frac{2}{3}},
$$

即


$$
\\frac{dy}{dx} = C_{1}y^{\\frac{2}{3}}.
$$

积分得


$$
3y^{\\frac{1}{3}} = C_{1}x + C_{2}.
$$

因曲线过原点，$f(0) = 0$，故$C_{2} = 0$，即


$$
y = Cx^{3} (C > 0).
$$

', 9, 'Mogullzr', '2026-01-29 14:18:54', 9, 'Mogullzr', '2026-01-29 14:18:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2878');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2878');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '2878');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2879, '2020年考研数学卷2第22题', '简单', '考研数学2020年数2真题', '（本题满分 11 分）设二次型
$$
f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + x_{2}^{2} + x_{3}^{2} + 2ax_{1}x_{2} + 2ax_{1}x_{3} + 2ax_{2}x_{3}
$$
经可逆线性变换
$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = P \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
y_{3} \\\\
\\end{array} \\right)
$$
化为
$$
g(y_{1}, y_{2}, y_{3}) = y_{1}^{2} + y_{2}^{2} + 4y_{3}^{2} + 2y_{1}y_{2}
$$
(I) 求$a$的值；(II) 求可逆矩阵$P$。', '[]', '
(I)$a = −\\frac{1}{2}$
(II)$P = \\left( \\begin{array}{ccc}
1 & 2 & \\frac{2}{\\sqrt{3}} \\\\
0 & 1 & \\frac{4}{\\sqrt{3}} \\\\
0 & 1 & 0 \\\\
\\end{array} \\right)$
', '
令$A = \\left( \\begin{array}{ccc}
1 & a & a \\\\
a & 1 & a \\\\
a & a & 1 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
1 & 1 & 0 \\\\
0 & 0 & 4 \\\\
\\end{array} \\right)$，则$f(x_{1}, x_{2}, x_{3}) = x^{T}Ax$，$g(y_{1}, y_{2}, y_{3}) = y^{T}By$。
（1）由题可知，$A$与$B$合同，即$P^{T}AP = B$。所以$A$与$B$的正负惯性指数相同。
由正负惯性指数性质得：$A$与$B$的正负特征值个数对应相等。
因为$∣B - λE∣ = 0$，所以$B$的特征值为$λ_{1} = 0$，$λ_{2} = 2$，$λ_{3} = 4$。
所以$∣A - λE∣ = \\begin{vmatrix}
1 - λ & a & a\\\\
a & 1 - λ & a\\\\
a & a & 1 - λ
\\end{vmatrix} = (1 + 2a - λ)(1 - a - λ)2 = 0$，
所以$λ_{1} = 1 + 2a = 0$，$λ_{2,3} = 1 - a > 0$，故$a = −\\frac{1}{2}$。
（2）配方法：
$f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + x_{2}^{2} + x_{3}^{2} - x_{1}x_{2} - x_{1}x_{3} - x_{2}x_{3} = (x_{1} - \\frac{1}{2}x_{2} - \\frac{1}{2}x_{3})^{2} + \\frac{3}{4}(x_{2} - x_{3})2$。
令$\\left( \\begin{array}{c}
z_{1} \\\\
z_{2} \\\\
z_{3} \\\\
\\end{array} \\right) = P_{1} \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right)$，其中$P_{1} = \\left( \\begin{array}{ccc}
1 & −\\frac{1}{2} & −\\frac{1}{2} \\\\
0 & \\frac{\\sqrt{3}}{2} & −\\frac{\\sqrt{3}}{2} \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$。
$g(y_{1}, y_{2}, y_{3}) = y_{1}^{2} + y_{2}^{2} + 4y_{3}^{2} + 2y_{1}y_{2} = (y_{1} + y_{2})2 + 4y_{3}^{2}$。
令$\\left( \\begin{array}{c}
z_{1} \\\\
z_{2} \\\\
z_{3} \\\\
\\end{array} \\right) = P_{2} \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
y_{3} \\\\
\\end{array} \\right)$，其中$P_{2} = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 0 & 2 \\\\
0 & 1 & 0 \\\\
\\end{array} \\right)$。
故$P = P_{1}^{−1}P_{2} = \\left( \\begin{array}{ccc}
1 & 2 & \\frac{2}{\\sqrt{3}} \\\\
0 & 1 & \\frac{4}{\\sqrt{3}} \\\\
0 & 1 & 0 \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:18:55', 9, 'Mogullzr', '2026-01-29 14:18:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2879');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2879');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2880, '2020年考研数学卷2第23题', '简单', '考研数学2020年数2真题', '（本题满分 11 分）设$A$为二阶矩阵，$P = (α, Aα)$，其中$α$是非零向量且不是$A$的特征向量：(I) 证明$P$为可逆矩阵；(II) 若$A^{2}α + Aα - 6α = 0$，求$P^{−1}AP$，并判断$A$是否相似于对角矩阵。', '[]', '
（I）见解析
（II）$P^{−1}AP = \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack$，且$A$相似于对角矩阵
', '
（I）
解法一
假设$P$不是可逆矩阵，则$α$与$Aα$线性相关。
根据线性相关的定义，存在不全为零的实数$k_{1}$、$k_{2}$，使得


$$
k_{1}α + k_{2}Aα = 0
$$

若$k_{2} = 0$，则$k_{1}α = 0$。
由于$α$是非零向量，必有$k_{1} = 0$，与$k_{1}$、$k_{2}$不全为零矛盾，因此$k_{2} \\neq 0$。
于是有


$$
Aα = −\\frac{k_{1}}{k_{2}}α
$$

这与$α$不是$A$的特征向量矛盾。
所以假设不成立，故$P$是可逆矩阵。
解法二
设$Aα = β$，则$β \\neq kα$，即$α$、$β$线性无关。
因此$P = (α, β) = (α, Aα)$为可逆矩阵。
（II）
由$A^{2}α + Aα - 6α = 0$，可得


$$
AP = A(α, Aα) = (Aα, A^{2}α) = (Aα, 6α - Aα) = (α, Aα) \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack
$$

又因为$P$可逆，所以


$$
P^{−1}AP = \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack
$$

记$B = \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack$，计算特征多项式：


$$
∣λE - B∣ = \\begin{vmatrix}
λ & −6\\\\
−1 & λ + 1
\\end{vmatrix} = λ^{2} + λ - 6 = 0
$$

解得$B$的特征值为$λ_{1} = 2$、$λ_{2} = −3$。
由于$A$与$B$相似，故$A$的特征值也为$λ_{1} = 2$、$λ_{2} = −3$，从而$A$可相似对角化。
', 9, 'Mogullzr', '2026-01-29 14:18:55', 9, 'Mogullzr', '2026-01-29 14:18:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2880');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2880');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2880');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2881, '2020年考研数学卷3第1题', '简单', '考研数学2020年数3真题', '设$\\lim_{x→∞} \\frac{f(x)-a}{x-a} = b$，则$\\lim_{x→∞} \\frac{\\sin f(x)-\\sin a}{x-a}$', '[''$b \\\\sin a$'', ''$b \\\\cos a$'', ''$b \\\\sin f(a)$'', ''$b \\\\cos f(a)$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:18:59', 9, 'Mogullzr', '2026-01-29 14:18:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2881');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2881');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2881');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2882, '2020年考研数学卷3第2题', '简单', '考研数学2020年数3真题', '函数$f(x) = \\frac{e^{\\frac{1}{x-1}} \\ln ∣1+x∣}{(e^{x}-1)(x-2)}$的第二类间断点的个数为', '[''1'', ''2'', ''3'', ''4'']', "['C']", '题目中$f(x) = \\frac{e^{\\frac{1}{x-1}} \\ln ∣1+x∣}{(e^{x}-1)(x-2)}$的极限分析如下：当$x → 0$时：
$$
\\lim_{x→0} f(x) = \\lim_{x→0} \\frac{e^{\\frac{1}{x-1}} \\ln(1 + x)}{(e^{x} - 1)(x - 2)} = \\frac{e^{−1}}{−2} \\lim_{x→0} \\frac{x}{x} = \\frac{1}{−2e},
$$
当$x → 1^{+}$时：
$$
\\lim_{x→1^{+}} f(x) = \\lim_{x→1^{+}} \\frac{e^{\\frac{1}{x-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = \\lim_{x→1^{−}} \\frac{e^{\\frac{1}{x-1}} \\ln ∣1 + 1∣}{(e - 1)(1 - 2)} = ∞,
$$
当$x → 2$时：
$$
\\lim_{x→2} f(x) = \\lim_{x→2} \\frac{e^{\\frac{1}{x-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = \\lim_{x→2} \\frac{e^{\\frac{1}{2-1}} \\ln ∣1 + 2∣}{(e^{2} - 1)(x - 2)} = ∞,
$$
当$x → −1$时：
$$
\\lim_{x→−1} f(x) = \\lim_{x→−1} \\frac{e^{\\frac{1}{x-1}} \\ln ∣1 + x∣}{(e^{x} - 1)(x - 2)} = ∞.
$$
综上，正确答案为 (C)。', 9, 'Mogullzr', '2026-01-29 14:18:59', 9, 'Mogullzr', '2026-01-29 14:18:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2882');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2882');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '2882');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2883, '2020年考研数学卷3第3题', '简单', '考研数学2020年数3真题', '设奇函数$f(x)$在$(−∞, +∞)$上具有连续导数，则', '[''$\\\\int_{0}^{x} \\\\lbrack \\\\cos f(t) + f^{′}(t) \\\\rbrack dt$是奇函数'', ''$\\\\int_{0}^{x} \\\\lbrack \\\\cos f(t) + f^{′}(t) \\\\rbrack dt$是偶函数'', ''$\\\\int_{0}^{x} \\\\lbrack \\\\cos f^{′}(t) + f(t) \\\\rbrack dt$是奇函数'', ''$\\\\int_{0}^{x} \\\\lbrack \\\\cos f^{′}(t) + f(t) \\\\rbrack dt$是偶函数'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:18:59', 9, 'Mogullzr', '2026-01-29 14:18:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2883');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2883');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2883');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2884, '2020年考研数学卷3第4题', '简单', '考研数学2020年数3真题', '设幂级数$\\sum_{n=1}^{∞} na_{n}(x - 2)n$的收敛区间为$(−2, 6)$，则$\\sum_{n=1}^{∞} a_{n}(x + 1)2n$的收敛区间为', '[''(-2,6)'', ''(-3,1)'', ''(-5,3)'', ''(-17,15)'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:18:59', 9, 'Mogullzr', '2026-01-29 14:18:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2884');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2884');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '2884');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2885, '2020年考研数学卷3第5题', '简单', '考研数学2020年数3真题', '设4阶矩阵$A = (a_{ij})$不可逆，$a_{12}$的代数余子式$A_{12} \\neq 0$，$α_{1}$,$α_{2}$,$α_{3}$,$α_{4}$为矩阵$A$的列向量组，$A^{∗}$为$A$的伴随矩阵，则方程组$A^{∗}x = 0$的通解为', '[''$x = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3}$,其中$k_{1}$,$k_{2}$,$k_{3}$为任意常数'', ''$x = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{4}$,其中$k_{1}$,$k_{2}$,$k_{3}$为任意常数'', ''$x = k_{1}α_{1} + k_{2}α_{3} + k_{3}α_{4}$,其中$k_{1}$,$k_{2}$,$k_{3}$为任意常数'', ''$x = k_{1}α_{2} + k_{2}α_{3} + k_{3}α_{4}$,其中$k_{1}$,$k_{2}$,$k_{3}$为任意常数'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:18:59', 9, 'Mogullzr', '2026-01-29 14:18:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2885');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2885');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2885');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2886, '2020年考研数学卷3第6题', '简单', '考研数学2020年数3真题', '设$A$为 3 阶矩阵，$α_{1}, α_{2}$为$A$属于特征值为 1 的线性无关的特征向量，$α_{3}$为$A$的属于特征值$−1$的特征向量，则满足
$$
P^{−1}AP = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$
的可逆矩阵$P$为', '[''$(α_{1} + α_{3}, α_{2}, −α_{3})$'', ''$(α_{1} + α_{2}, α_{2}, −α_{3})$'', ''$(α_{1} + α_{3}, −α_{3}, α_{2})$'', ''$(α_{1} + α_{2}, −α_{3}, α_{2})$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:00', 9, 'Mogullzr', '2026-01-29 14:19:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2886');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2886');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2887, '2020年考研数学卷3第7题', '简单', '考研数学2020年数3真题', '设$A$、$B$、$C$为三个随机事件，且$P(A) = P(B) = P(C) = \\frac{1}{4}$，$P(AB) = 0$，$P(AC) = P(BC) = \\frac{1}{12}$。则$A$、$B$、$C$中恰有一个事件发生的概率为', '[''$\\\\frac{3}{4}$'', ''$\\\\frac{2}{3}$'', ''$\\\\frac{1}{2}$'', ''$\\\\frac{5}{12}$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:00', 9, 'Mogullzr', '2026-01-29 14:19:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2887');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '2887');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2888, '2020年考研数学卷3第8题', '简单', '考研数学2020年数3真题', '设随机变量$(X, Y)$服从二维正态分布$N(0, 0; 1, 4; −\\frac{1}{2})$，则下列随机变量中服从标准正态分布且与$X$独立的是', '[''$\\\\frac{\\\\sqrt{5}}{5}(X + Y)$'', ''$\\\\frac{\\\\sqrt{5}}{5}(X - Y)$'', ''$\\\\frac{\\\\sqrt{3}}{3}(X + Y)$'', ''$\\\\frac{\\\\sqrt{3}}{3}(X - Y)$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:00', 9, 'Mogullzr', '2026-01-29 14:19:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2888');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2888');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2888');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2889, '2020年考研数学卷3第9题', '简单', '考研数学2020年数3真题', '（填空题）设$z = arctan \\lbrack xy + \\sin(x + y) \\rbrack$，则$dz∣_{(0,π)} =$', '[]', '$dz∣_{(0,π)} = (π - 1)dx - dy$
', '计算$z$在点$(0, π)$处关于$x$的偏导数：

$$
\\frac{∂z}{∂x}​_{(0,π)} = \\frac{y + \\cos(x + y)}{1 +  \\lbrack xy + \\sin(x + y) \\rbrack 2}​_{(0,π)} = \\frac{π + \\cos π}{1 + \\sin^{2} π} = π - 1
$$

计算$z$在点$(0, π)$处关于$y$的偏导数：

$$
\\frac{∂z}{∂y}​_{(0,π)} = \\frac{x + \\cos(x + y)}{1 +  \\lbrack xy + \\sin(x + y) \\rbrack 2}​_{(0,π)} = \\frac{\\cos π}{1 + \\sin^{2} π} = −1
$$

因此，$z$在点$(0, π)$处的全微分为：

$$
dz∣_{(0,π)} = (π - 1)dx - dy
$$

', 9, 'Mogullzr', '2026-01-29 14:19:00', 9, 'Mogullzr', '2026-01-29 14:19:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2889');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2889');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '2889');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2890, '2020年考研数学卷3第10题', '简单', '考研数学2020年数3真题', '（填空题）曲线$x + y + e^{2xy} = 0$在点$(0, −1)$处的切线方程为', '[]', '$y = x - 1$
', '方程两边对$x$求导得：

$$
1 + y^{′} + e^{2xy}(2y + 2xy^{′}) = 0
$$

代入$x = 0$，$y = −1$，得到：

$$
y^{′} = 1
$$

因此，切线方程为：

$$
y = x - 1
$$

', 9, 'Mogullzr', '2026-01-29 14:19:00', 9, 'Mogullzr', '2026-01-29 14:19:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2890');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2890');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '2890');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2891, '2020年考研数学卷3第11题', '简单', '考研数学2020年数3真题', '（填空题）设$Q$表示产量，成本$C(Q) = 100 + 13Q$，单价$p$，需求量$q(p) = \\frac{800}{p+3} - 2$，则工厂取得利润最大时的产量为。', '[]', '8
', '
由需求函数$Q(P) = \\frac{800}{p+3} - 2$，可得反需求函数：

$$
P = \\frac{800}{Q + 2} - 3
$$

利润函数为：

$$
L(Q) = PQ - C(Q) = (\\frac{800}{Q + 2} - 3) Q - (100 + 13Q)
$$

化简后得到：

$$
L(Q) = −\\frac{1600}{Q + 2} - 16Q + 700
$$

求导并令导数为零：

$$
L^{′}(Q) = \\frac{1600}{(Q + 2)2} - 16 = 0
$$

解得最优产量：

$$
Q = 8
$$

验证二阶导数：

$$
L^{′′}(Q) = \\frac{−3200}{(Q + 2)3}​_{Q=8} = −\\frac{16}{5} < 0
$$

因此，当$Q = 8$时，利润$L(Q)$达到最大值。
', 9, 'Mogullzr', '2026-01-29 14:19:00', 9, 'Mogullzr', '2026-01-29 14:19:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2891');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2891');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '2891');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2892, '2020年考研数学卷3第12题', '简单', '考研数学2020年数3真题', '（填空题）设平面区域$D = \\{(x, y) ∣ \\frac{x}{2} ≤ y ≤ \\frac{1}{1+x^{2}}, 0 ≤ x ≤ 1\\}$，则$D$绕$y$轴旋转所成旋转体的体积为$​$。', '[]', '$V_{y} = π \\ln 2 - \\frac{π}{3}$
', '
旋转体体积计算如下：


$$
\\begin{array}{cc}
V_{y} & = \\int_{0}^{1} 2πx (\\frac{1}{1 + x^{2}} - \\frac{x}{2}) dx \\\\
 & = 2π \\int_{0}^{1} \\frac{x}{1 + x^{2}}dx - π \\int_{0}^{1} x^{2}dx \\\\
 & = π \\ln(1 + x^{2})​_{0}^{1} - \\frac{π}{3}x^{3}​_{0}^{1} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:01', 9, 'Mogullzr', '2026-01-29 14:19:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2892');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2892');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '2892');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2893, '2020年考研数学卷3第13题', '简单', '考研数学2020年数3真题', '（填空题）行列式
$$
\\begin{vmatrix}
a & 0 & −1 & 1\\\\
0 & a & 1 & −1\\\\
−1 & 1 & a & 0\\\\
1 & −1 & 0 & a
\\end{vmatrix} =  ​
$$
', '[]', '$a^{4} - 4a^{2}$
', '


$$
\\begin{array}{cccccccccccccccc}
 & \\begin{array}{cccc}
a & 0 & −1 & 1 \\\\
0 & a & 1 & −1 \\\\
−1 & 1 & a & 0 \\\\
1 & −1 & 0 & a \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & a & 0 & −1 & 1 &  &  &  &  &  &  &  &  &  &  \\\\
 &  &  &  &  &  & a & 1 & 0 & 0 & a & 0 &  &  &  &  \\\\
 & \\begin{array}{cc}
1 & a^{2} \\\\
a & 2a \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 0 & a & 1 & −1 &  &  &  &  &  &  & 1 & a^{2} & 0 & a \\\\
 &  &  &  &  &  & 1 & a & a & −1 & 1 & a &  &  &  &  \\\\
 &  & −1 & 1 & a & 0 &  &  &  &  &  &  & a & 2a & −1 & 1 \\\\
 &  &  &  &  &  & −1 & 0 & a & 1 & −1 & a &  &  &  &  \\\\
 & = −a(2a - a^{3}) - 2a^{2} &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & −1 & 0 & a &  &  &  &  &  &  &  &  &  &  \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:01', 9, 'Mogullzr', '2026-01-29 14:19:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2893');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2893');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2894, '2020年考研数学卷3第14题', '简单', '考研数学2020年数3真题', '（填空题）随机变量$X$的概率分布为

$$
P\\{X = k\\} = \\frac{1}{2^{k}},  k = 1, 2, 3, ⋯
$$
$Y$表示$X$被$3$除的余数，则

$$
E(Y) =
$$
', '[]', '$\\frac{8}{7}$
', '随机变量$X$的概率分布为


$$
P\\{X = k\\} = \\frac{1}{2^{k}},  k = 1, 2, 3, ⋯
$$

$Y$表示$X$被$3$除的余数，则


$$
E(Y) =
$$

计算各概率如下：

$$
P\\{Y = 0\\} = \\sum_{k=1}^{∞} P\\{X = 3k\\} = \\sum_{k=1}^{∞} \\frac{1}{2^{3k}} = \\frac{\\frac{1}{8}}{1 - \\frac{1}{8}} = \\frac{1}{7}
$$


$$
P\\{Y = 1\\} = \\sum_{k=0}^{∞} P\\{X = 3k + 1\\} = \\sum_{k=0}^{∞} \\frac{1}{2^{3k+1}} = \\frac{\\frac{1}{2}}{1 - \\frac{1}{8}} = \\frac{4}{7}
$$


$$
P\\{Y = 2\\} = \\sum_{k=0}^{∞} P\\{X = 3k + 2\\} = \\sum_{k=0}^{∞} \\frac{1}{2^{3k+2}} = \\frac{\\frac{1}{4}}{1 - \\frac{1}{8}} = \\frac{2}{7}
$$

期望值为：

$$
E(Y) = 0 × \\frac{1}{7} + 1 × \\frac{4}{7} + 2 × \\frac{2}{7} = \\frac{8}{7}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:01', 9, 'Mogullzr', '2026-01-29 14:19:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2894');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2894');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '2894');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2895, '2020年考研数学卷3第15题', '简单', '考研数学2020年数3真题', '（本题满分 10 分）已知$a, b$为常数，$(1 + \\frac{1}{n})^{n} - e$与$\\frac{b}{n^{a}}$，当$n → ∞$时是等价无穷小，求$a, b$。', '[]', '$a = 1$,$b = −\\frac{1}{2}e$
', '由等价无穷小的定义可知

$$
\\begin{array}{cc}
\\lim_{n→∞} \\frac{(1 + \\frac{1}{n})^{n} - e}{\\frac{b}{n^{a}}} & = \\lim_{n→∞} \\frac{e^{n \\ln(1+\\frac{1}{n})} - e}{\\frac{b}{n^{a}}} \\\\
 & = \\lim_{n→∞} \\frac{e (e^{n \\ln(1+\\frac{1}{n})-1} - 1)}{\\frac{b}{n^{a}}} \\\\
 & = \\lim_{n→∞} \\frac{e (n \\ln (1 + \\frac{1}{n}) - 1)}{\\frac{b}{n^{a}}} \\\\
\\end{array}
$$

进一步推导可得

$$
\\begin{array}{cc}
 & \\lim_{t→0^{+}} \\frac{e (\\frac{\\ln(1+t)}{t} - 1)}{bt^{a}} = \\lim_{t→0^{+}} \\frac{e(\\ln(1 + t) - t)}{bt^{a+1}} = \\lim_{t→0^{+}} \\frac{e (−\\frac{1}{2}t^{2})}{bt^{a+1}} = 1 \\\\
\\end{array}
$$

则若使该极限存在必有$a + 1 = 2$，即$a = 1$。可得$b = −\\frac{1}{2}e$。
', 9, 'Mogullzr', '2026-01-29 14:19:01', 9, 'Mogullzr', '2026-01-29 14:19:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2895');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2895');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2895');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2896, '2020年考研数学卷3第16题', '简单', '考研数学2020年数3真题', '（本题满分 10 分）求函数$f(x, y) = x^{3} + 8y^{3} - xy$的极值。', '[]', '函数在点$(\\frac{1}{6}, \\frac{1}{12})$处取得极小值$−\\frac{1}{216}$。
', '
由方程组

$$
\\begin{cases} \\frac{∂f}{∂x} = 3x^{2} - y = 0 \\\\ \\frac{∂f}{∂y} = 24y^{2} - x = 0 \\end{cases}
$$

计算可得两组解：

$$
\\begin{cases} x = 0 \\\\ y = 0 \\end{cases}  或  \\begin{cases} x = \\frac{1}{6} \\\\ y = \\frac{1}{12} \\end{cases}
$$

进一步计算二阶偏导数：

$$
\\frac{∂^{2}f}{∂x^{2}} = 6x,  \\frac{∂^{2}f}{∂x∂y} = −1,  \\frac{∂^{2}f}{∂y^{2}} = 48y
$$

1. 在点$(0, 0)$处

$$
A = 0,  B = −1,  C = 0
$$

判别式：

$$
AC - B^{2} = −1 < 0
$$

因此，$(0, 0)$不是极值点。
2. 在点$(\\frac{1}{6}, \\frac{1}{12})$处

$$
A = 1,  B = −1,  C = 4
$$

判别式：

$$
AC - B^{2} = 3 > 0 解得 A > 0
$$

因此，$(\\frac{1}{6}, \\frac{1}{12})$是极小值点，极小值为：

$$
f (\\frac{1}{6}, \\frac{1}{12}) = −\\frac{1}{216}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:01', 9, 'Mogullzr', '2026-01-29 14:19:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2896');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2896');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2896');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2897, '2020年考研数学卷3第17题', '简单', '考研数学2020年数3真题', '（本题满分 10 分），设函数$y = f(x)$满足$y^{′′} + 2y^{′} + 5y = 0$，且$f(0) = 1$，$f^{′}(0) = −1$。（I）求$f(x)$的表达式；（II）设$a_{n} = \\int_{nπ}^{+∞} f(x) dx$，求$\\sum_{n=1}^{∞} a_{n}$。', '[]', '
（I）$f(x) = e^{−x} \\cos 2x$
（II）$\\sum_{n=1}^{∞} a_{n} = \\frac{1}{5(e^{π}-1)}$
', '
（I）微分方程


$$
y^{′′} + 2y^{′} + 5y = 0
$$

的特征方程为


$$
r^{2} + 2r + 5 = 0
$$

解得


$$
r_{1} = −1 + 2i,  r_{2} = −1 - 2i
$$

通解为


$$
y = e^{−x}(C_{1} \\cos 2x + C_{2} \\sin 2x)
$$

由初始条件$f(0) = 1$和$f^{′}(0) = −1$，得


$$
C_{1} = 1,  C_{2} = 0
$$

故特解为


$$
f(x) = e^{−x} \\cos 2x
$$


（II）定义


$$
a_{n} = \\int_{nπ}^{+∞} e^{−x} \\cos 2x dx = \\frac{1}{5e^{nπ}}
$$

设


$$
I = \\int_{nπ}^{+∞} e^{−x} \\cos 2x dx
$$

利用分部积分：


$$
I = \\frac{1}{2} \\int_{nπ}^{+∞} e^{−x} d(\\sin 2x) = \\frac{1}{2}  \\lbrack e^{−x} \\sin 2x​_{nπ}^{+∞} - \\int_{nπ}^{+∞} \\sin 2x d(e^{−x}) \\rbrack
$$

由于$e^{−x} \\sin 2x → 0$（当$x → +∞$），且$\\sin 2nπ = 0$，第一项为 0，于是


$$
I = −\\frac{1}{2} \\int_{nπ}^{+∞} \\sin 2x ⋅ (−e^{−x}) dx = \\frac{1}{2} \\int_{nπ}^{+∞} e^{−x} \\sin 2x dx
$$

再次分部积分：


$$
I = −\\frac{1}{4} \\int_{nπ}^{+∞} e^{−x} d(\\cos 2x) = −\\frac{1}{4}  \\lbrack e^{−x} \\cos 2x​_{nπ}^{+∞} + \\int_{nπ}^{+∞} \\cos 2x ⋅ (−e^{−x}) dx \\rbrack
$$

第一项在$x → +∞$时为 0，在$x = nπ$处为$−e^{−nπ} \\cos 2nπ = −e^{−nπ}$，所以


$$
I = −\\frac{1}{4}  \\lbrack −e^{−nπ} - I \\rbrack  = \\frac{1}{4}e^{−nπ} + \\frac{1}{4}I
$$

移项得


$$
I - \\frac{1}{4}I = \\frac{1}{4}e^{−nπ}  ⇒  \\frac{5}{4}I = \\frac{1}{4}e^{−nπ}
$$

因此


$$
I = \\frac{1}{5e^{nπ}}
$$

最终


$$
\\sum_{n=1}^{∞} a_{n} = \\frac{1}{5} \\sum_{n=1}^{∞} e^{−nπ} = \\frac{1}{5} \\sum_{n=1}^{∞}(e^{−π})n = \\frac{1}{5(e^{π} - 1)}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:01', 9, 'Mogullzr', '2026-01-29 14:19:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2897');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2897');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '2897');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2898, '2020年考研数学卷3第18题', '简单', '考研数学2020年数3真题', '（本题满分 10 分），设$D = \\{(x, y) ∣ x^{2} + y^{2} ≤ 1,  y ≥ 0\\}$，连续函数$f(x, y)$满足
$$
f(x, y) = y\\sqrt{1 - x^{2}} + x \\iint_{D} f(x, y) dxdy
$$
求$\\iint_{D} xf(x, y) dxdy$。', '[]', '$\\frac{3π^{2}}{128}$
', '令$\\iint_{D} f(x, y)dxdy = A$，则


$$
f(x, y) = y\\sqrt{1 - x^{2}} + Ax
$$

于是


$$
\\iint_{D} f(x, y)dxdy = \\iint_{D} (y\\sqrt{1 - x^{2}} + Ax) dxdy = \\iint_{D} y\\sqrt{1 - x^{2}}dxdy
$$

计算得


$$
2 \\int_{0}^{1} \\sqrt{1 - x^{2}}dx \\int_{0}^{\\sqrt{1-x^{2}}} ydy = \\int_{0}^{1}(1 - x^{2})23​dx = \\frac{3π}{16}
$$

故


$$
A = \\frac{3π}{16}
$$

接下来计算


$$
\\iint_{D} xf(x, y)dxdy = \\iint_{D} (xy\\sqrt{1 - x^{2}} + Ax^{2}) dxdy = A \\iint_{D} x^{2}dxdy
$$

转换为极坐标


$$
A \\int_{0}^{π} \\cos^{2} θdθ \\int_{0}^{1} r^{3}dr = \\frac{A}{2} \\int_{0}^{\\frac{π}{2}} \\cos^{2} θdθ = \\frac{A}{2} ⋅ \\frac{1}{2} ⋅ \\frac{π}{2} = \\frac{3π^{2}}{128}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:02', 9, 'Mogullzr', '2026-01-29 14:19:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2898');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2898');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2898');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2899, '2020年考研数学卷3第19题', '简单', '考研数学2020年数3真题', '（本题满分 10 分），设函数$f(x)$在区间$\\lbrack 0, 2 \\rbrack$上具有连续导数，已知$f(0) = f(2) = 0$，$M = \\max_{x∈ \\lbrack 0,2 \\rbrack }\\{∣f(x)∣\\}$。证明：（I）存在$ξ ∈ (0, 2)$，使得$∣f^{′}(ξ)∣ ≥ M$；（II）若对任意的$x ∈ (0, 2)$，$∣f^{′}(x)∣ ≤ M$，则$M = 0$。', '[]', '见解析
', '
(I) 设$x = x_{0}$时$∣f(x_{0})∣ = M$，由拉格朗日定理：

$$
∃ξ_{1} ∈ (0, x_{0})∣f^{′}(ξ_{1})∣ = ​\\frac{f(x_{0}) - f(0)}{x_{0} - 0}​ = \\frac{∣f(x_{0})∣}{x_{0}} = \\frac{M}{x_{0}}
$$


$$
∃ξ_{2} ∈ (x_{0}, 2)∣f^{′}(ξ_{2})∣ = ​\\frac{f(x_{0}) - f(2)}{x_{0} - 2}​ = \\frac{∣f(x_{0})∣}{2 - x_{0}} = \\frac{M}{2 - x_{0}}
$$

若$x_{0} ∈ (0, 1 \\rbrack$，取$ξ = ξ_{1}$，有：

$$
∣f^{′}(ξ)∣ = ∣f^{′}(ξ_{1})∣ = \\frac{M}{x_{0}} ≥ M
$$

若$x_{0} ∈ (1, 2)$，取$ξ = ξ_{2}$，有：

$$
∣f^{′}(ξ)∣ = ∣f^{′}(ξ_{2})∣ = \\frac{M}{2 - x_{0}} ≥ M
$$

(II) 由积分性质可得：

$$
M = ∣f(x_{0})∣ = ∣f(x_{0}) - f(0)∣ = ​\\int_{0}^{x_{0}} f^{′}(x)dx​ ≤ \\int_{0}^{x_{0}} ∣f^{′}(x)∣dx ≤ \\int_{0}^{x_{0}} Mdx ≤ Mx_{0}
$$


$$
M = ∣f(x_{0})∣ = ∣f(2) - f(x_{0})∣ = ​\\int_{x_{0}}^{2} f^{′}(x)dx​ ≤ \\int_{x_{0}}^{2} ∣f^{′}(x)∣dx ≤ \\int_{x_{0}}^{2} Mdx ≤ M(2 - x_{0})
$$

因此，不等式组：

$$
\\begin{cases} M(1 - x_{0}) ≤ 0 \\\\ M(1 - x_{0}) ≥ 0 \\end{cases}
$$

同时成立。
若$x_{0} \\neq 1$，显然$M = 0$；若$x_{0} = 1$，则：

$$
M ≤ \\int_{0}^{1} ∣f^{′}(x)∣dx ≤ \\int_{0}^{1} Mdx = M
$$


$$
M ≤ \\int_{1}^{2} ∣f^{′}(x)∣dx ≤ \\int_{1}^{2} Mdx ≤ M
$$

当且仅当在区间$(0, 1)$和$(1, 2)$上$∣f^{′}(x)∣ = M$成立。假设$M \\neq 0$：
若$f^{′}(x) ≡ ±M$，与$f(0) = f(2) = 0$矛盾；若$f^{′}(x) = \\begin{cases} ±M & 0 < x < 1 \\\\ ∓M & 1 < x < 2 \\end{cases}$，则$f(x)$在$x = 1$处不可导，与已知矛盾。
故$M = 0$。
', 9, 'Mogullzr', '2026-01-29 14:19:02', 9, 'Mogullzr', '2026-01-29 14:19:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2899');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2899');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '2899');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2900, '2020年考研数学卷3第20题', '简单', '考研数学2020年数3真题', '（本题满分11分）设二次型$f(x_{1}, x_{2}) = x_{1}^{2} - 4x_{1}x_{2} + 4x_{2}^{2}$经正交变换$\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
\\end{array} \\right) = Q \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
\\end{array} \\right)$化为二次型$g(y_{1}, y_{2}) = ay_{1}^{2} + 4y_{1}y_{2} + by_{2}^{2}$，其中$a ≥ b$。（I）求$a, b$的值；（II）求正交矩阵$Q$。', '[]', '
(I)$a = 4$，$b = 1$
(II)$Q = \\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right)$
', '
(I) 记

$$
A = \\left( \\begin{array}{cc}
1 & −2 \\\\
−2 & 4 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cc}
a & 2 \\\\
2 & b \\\\
\\end{array} \\right)
$$

其中$Q$是正交矩阵，满足$Q^{T}AQ = B$。由于$A$与$B$相似，它们有相同的特征值。
计算$A$的特征多项式：

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & 2\\\\
2 & λ - 4
\\end{vmatrix} = λ^{2} - 5λ = 0
$$

得到特征值为$λ_{1} = 0$和$λ_{2} = 5$。
计算$B$的特征多项式：

$$
∣λE - B∣ = \\begin{vmatrix}
λ - a & −2\\\\
−2 & λ - b
\\end{vmatrix} = λ^{2} - (a + b)λ + ab - 4 = 0
$$

由于$B$的特征值也为$λ_{1} = 0$和$λ_{2} = 5$，可得方程组：

$$
ab = 4,  a + b = 5
$$

结合条件$a ≥ b$，解得$a = 4$，$b = 1$。
(II) 对于矩阵$A$：
当$λ_{1} = 0$时，$(0E - A)x = 0$的基础解系为$α_{1} = (2, 1)T$。当$λ_{2} = 5$时，$(5E - A)x = 0$的基础解系为$α_{2} = (1, −2)T$。
对于矩阵$B$：
当$λ_{1} = 0$时，$(0E - B)x = 0$的基础解系为$β_{1} = (1, −2)T$。当$λ_{2} = 5$时，$(5E - B)x = 0$的基础解系为$β_{2} = (2, 1)T$。
令

$$
P_{1} = \\left( \\begin{array}{cc}
2 & 1 \\\\
1 & −2 \\\\
\\end{array} \\right) ,  P_{2} = \\left( \\begin{array}{cc}
1 & 2 \\\\
−2 & 1 \\\\
\\end{array} \\right)
$$

则有

$$
P_{1}^{−1}AP_{1} = \\left( \\begin{array}{cc}
0 & 0 \\\\
0 & 5 \\\\
\\end{array} \\right) ,  P_{2}^{−1}BP_{2} = \\left( \\begin{array}{cc}
0 & 0 \\\\
0 & 5 \\\\
\\end{array} \\right)
$$

因此

$$
P_{1}^{−1}AP_{1} = P_{2}^{−1}BP_{2}  ⟹  B = P_{2}P_{1}^{−1}AP_{1}P_{2}^{−1}
$$

计算$P_{1}P_{2}^{−1}$：

$$
P_{1}P_{2}^{−1} = \\left( \\begin{array}{cc}
2 & 1 \\\\
1 & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
1 & 2 \\\\
−2 & 1 \\\\
\\end{array} \\right) = \\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right)
$$

由于$\\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right)$是正交矩阵，故

$$
Q = \\frac{1}{5} \\left( \\begin{array}{cc}
4 & −3 \\\\
−3 & −4 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:19:02', 9, 'Mogullzr', '2026-01-29 14:19:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2900');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2900');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2901, '2020年考研数学卷3第21题', '简单', '考研数学2020年数3真题', '（本题满分11分）设$A$为2阶矩阵，$P = (α, Aα)$，其中$α$是非零向量且不是$A$的特征向量。（Ⅰ）证明：$P$为可逆矩阵；（Ⅱ）若$A^{2}α + Aα - 6α = 0$，求$P^{−1}AP$，并判断$A$是否相似于对角矩阵。', '[]', '
(I) 见解析
(II)$P^{−1}AP = \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack$，且$A$相似于对角矩阵。
', '
(I)解法一
证明：假设$P$不是可逆矩阵，则$α$与$Aα$线性相关。根据线性相关的定义，存在不全为 0 的实数$k_{1}, k_{2}$，使得成立


$$
k_{1}α + k_{2}Aα = 0.
$$

若$k_{2} = 0$，则有$k_{1}α = 0$。由于$α$是非零向量，则$k_{1} = 0$，与$k_{1}, k_{2}$不全为 0 矛盾。因此，$k_{2} \\neq 0$，于是


$$
Aα = −\\frac{k_{1}}{k_{2}}α.
$$

这与$α$不是$A$的特征向量矛盾，故假设不成立，所以$P$是可逆矩阵。
解法二
设$Aα = β$，则$β \\neq kα$，即$α, β$线性无关。因此，


$$
P = (α, β) = (α, Aα)
$$

是可逆矩阵。
(II)
因为$A^{2}α + Aα - 6α = 0$，所以


$$
AP = A(α, Aα) = (Aα, A^{2}α) = (Aα, 6α - Aα) = (α, Aα) \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack  .
$$

由于$P$是可逆矩阵，故


$$
P^{−1}AP = \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack  .
$$

记$B = \\left \\lbrack  \\begin{array}{cc}
0 & 6 \\\\
1 & −1 \\\\
\\end{array} \\right \\rbrack$，计算其特征多项式：


$$
∣λE - B∣ = \\begin{vmatrix}
λ & −6\\\\
−1 & λ + 1
\\end{vmatrix} = λ^{2} + λ - 6 = 0.
$$

解得$B$的特征值为$λ_{1} = 2$，$λ_{2} = −3$。由于$A$与$B$相似，故$A$的特征值也为$λ_{1} = 2$，$λ_{2} = −3$，因此$A$可相似对角化。
', 9, 'Mogullzr', '2026-01-29 14:19:03', 9, 'Mogullzr', '2026-01-29 14:19:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2901');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2901');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2901');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2902, '2020年考研数学卷3第22题', '简单', '考研数学2020年数3真题', '（本题满分 11 分）设二维随机变量$(X, Y)$在区域$D = \\{(x, y) ∣ 0 < y < \\sqrt{1 - x^{2}}\\}$上服从均匀分布，令
$$
Z_{1} = \\begin{cases} 1 & X - Y > 0 \\\\ 0 & X - Y ≤ 0 \\end{cases}  Z_{2} = \\begin{cases} 1 & X + Y > 0 \\\\ 0 & X + Y ≤ 0 \\end{cases}
$$
（Ⅰ）求二维随机变量$(Z_{1}, Z_{2})$的概率分布；（Ⅱ）求$Z_{1}$与$Z_{2}$的相关系数。', '[]', '
（Ⅰ）二维随机变量$(Z_{1}, Z_{2})$的概率分布为：


$$
\\begin{array}{c|cc|c}
 & 0 & 1 &  \\\\
0 & \\frac{1}{4} & \\frac{1}{2} & \\frac{3}{4} \\\\
1 & 0 & \\frac{1}{4} & \\frac{1}{4} \\\\
 & \\frac{1}{4} & \\frac{3}{4} &  \\\\
\\end{array}
$$

（Ⅱ）$Z_{1}$与$Z_{2}$的相关系数为$\\frac{1}{3}$。
', '


$$
P \\{Z_{1} = 1\\} = P\\{X - Y > 0\\} = \\iint_{x>y} f(x, y) dxdy = \\frac{\\frac{1}{8}π × 1^{2}}{\\frac{1}{2}π × 1^{2}} = \\frac{1}{4}
$$


$$
P \\{Z_{1} = 0\\} = 1 - \\frac{1}{4} = \\frac{3}{4}
$$


$$
P \\{Z_{2} = 0\\} = P\\{X + Y ≤ 0\\} = \\iint_{y≤−x} f(x, y) dxdy = \\frac{\\frac{1}{8}π × 1^{2}}{\\frac{1}{2}π × 1^{2}} = \\frac{1}{4}
$$


$$
P \\{Z_{2} = 1\\} = 1 - \\frac{1}{4} = \\frac{3}{4}
$$


$$
P \\{Z_{1} = 1, Z_{2} = 0\\} = 0
$$

联合概率分布：

$$
\\begin{array}{c|cc|c}
 & 0 & 1 &  \\\\
0 & \\frac{1}{4} & \\frac{1}{2} & \\frac{3}{4} \\\\
1 & 0 & \\frac{1}{4} & \\frac{1}{4} \\\\
 & \\frac{1}{4} & \\frac{3}{4} &  \\\\
\\end{array}
$$


$$
E (Z_{1}) = \\frac{1}{4},  E (Z_{2}) = \\frac{3}{4},  E (Z_{1}^{2}) = \\frac{1}{4},  E (Z_{2}^{2}) = \\frac{3}{4},  E (Z_{1}Z_{2}) = \\frac{1}{4}
$$


$$
D (Z_{1}) = E (Z_{1}^{2}) - E^{2} (Z_{1}) = \\frac{1}{4} - (\\frac{1}{4})^{2} = \\frac{3}{16}
$$


$$
D (Z_{2}) = E (Z_{2}^{2}) - E^{2} (Z_{2}) = \\frac{3}{4} - (\\frac{3}{4})^{2} = \\frac{3}{16}
$$


$$
Cov (Z_{1}, Z_{2}) = E (Z_{1}Z_{2}) - E (Z_{1}) E (Z_{2}) = \\frac{1}{16}
$$


$$
ρ_{Z_{1}Z_{2}} = \\frac{Cov (Z_{1}, Z_{2})}{\\sqrt{D (Z_{1})}\\sqrt{D (Z_{2})}} = \\frac{\\frac{1}{16}}{\\frac{3}{16}} = \\frac{1}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:03', 9, 'Mogullzr', '2026-01-29 14:19:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2902');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2902');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2902');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2903, '2020年考研数学卷3第23题', '简单', '考研数学2020年数3真题', '（本题满分 11 分）给定分布函数

$$
F(t) = \\begin{cases} 1 - e^{−(\\frac{t}{θ})^{m}} & t ≥ 0 \\\\ 0 & 其他 \\end{cases}
$$
其中$θ$和$m$为参数且大于零。(I)求概率$P\\{T > t\\}$与$P\\{T > s ∣ T > S\\}$，其中$S > 0$，$t > 0$；(II)任取$n$个这种元件做寿命试验，测得它们的寿命分别为$t_{1}, t_{2}, ⋯  , t_{n}$。若$m$已知，求$θ$的最大似然估计值$\\hat{θ}$。', '[]', '
(I)$P\\{T > t\\} = e^{−(\\frac{t}{θ})^{m}}$，$P\\{T > s + t ∣ T > s\\} = e^{\\frac{s^{m}-(s+t)m}{θ^{m}}}$
(II)$\\hat{θ} = \\sqrt{\\frac{1}{n} \\sum_{i=1}^{n} t_{i}^{m}}$
', '
(I)$P\\{T > t\\} = 1 - P\\{T ≤ t\\} = 1 - F(t) = e^{−(\\frac{t}{θ})^{m}}$

$$
\\begin{array}{cc}
P\\{T > s + t ∣ T > s\\} & = \\frac{P\\{T > s + t, T > s\\}}{P\\{T > s\\}} \\\\
 & = \\frac{P\\{T > s + t\\}}{P\\{T > s\\}} \\\\
 & = \\frac{e^{−(\\frac{s+t}{θ})^{m}}}{e^{−(\\frac{s}{θ})^{m}}} \\\\
\\end{array}
$$

(II) 概率密度函数：

$$
f(t) = F^{′}(t) = \\begin{cases} e^{−(\\frac{t}{θ})^{m}}\\frac{mt^{m-1}}{θ^{m}} & t > 0 \\\\ 0 & 其他 \\end{cases}
$$

似然函数：

$$
\\begin{array}{cc}
L(θ) & = \\prod_{i=1}^{n} e^{−(\\frac{t_{i}}{θ})^{m}}\\frac{mt_{i}^{m-1}}{θ^{m}} \\\\
 & = e^{−\\frac{1}{θ^{m}} \\sum_{i=1}^{n} t_{i}^{m}}m^{n} (\\prod_{i=1}^{n} t_{i}^{m-1}) θ^{−nm},  (t_{i} > 0, i = 1, 2, … , n) \\\\
\\end{array}
$$

对数似然函数：

$$
\\begin{array}{cc}
\\ln L(θ) & = −\\frac{1}{θ^{m}} \\sum_{i=1}^{n} t_{i}^{m} + \\ln m^{n} \\\\
 & + \\ln (\\prod_{i=1}^{n} t_{i}^{m-1}) - nm \\ln θ \\\\
\\end{array}
$$

求导并令导数为零：

$$
\\begin{array}{cc}
\\frac{d \\ln L(θ)}{dθ} & = \\frac{m}{θ^{m+1}} \\sum_{i=1}^{n} t_{i}^{m} - \\frac{nm}{θ} = 0 \\\\
 & ⇒ θ = \\sqrt{\\frac{1}{n} \\sum_{i=1}^{n} t_{i}^{m}} \\\\
\\end{array}
$$

因此，$θ$的最大似然估计为：

$$
θ = \\sqrt{\\frac{1}{n} \\sum_{i=1}^{n} t_{i}^{m}}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:03', 9, 'Mogullzr', '2026-01-29 14:19:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2903');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2903');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '2903');
