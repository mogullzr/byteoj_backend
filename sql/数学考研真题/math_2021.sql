INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2904, '2021年考研数学卷1第1题', '简单', '考研数学2021年数1真题', '设函数$f(x) = \\begin{cases} \\frac{e^{x}-1}{x} & x \\neq 0 \\\\ 1 & x = 0 \\end{cases}$，则$f(x)$在$x = 0$处（ ）', '[''连续且取极大值'', ''连续且取极小值'', ''可导且导数为 0'', ''可导且导数不为 0'']', "['D']", '$\\lim_{x→0} f(x) = \\lim_{x→0} \\frac{e^{x}-1}{x} = \\lim_{x→0} \\frac{x}{x} = 1 = f(0)$，故$f(x)$在$x = 0$处连续。又$f^{′}(0) = \\lim_{x→0} \\frac{f(x)-f(0)}{x} = \\lim_{x→0} \\frac{\\frac{e^{x}-1}{x}-1}{x} = \\lim_{x→0} \\frac{e^{x}-1-x}{x^{2}} = \\lim_{x→0} \\frac{1+x+\\frac{1}{2}x^{2}+o(x^{2})-1-x}{x^{2}} = \\frac{1}{2}$，故应选(D)。', 9, 'Mogullzr', '2026-01-29 14:19:06', 9, 'Mogullzr', '2026-01-29 14:19:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2904');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2904');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '2904');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2905, '2021年考研数学卷1第2题', '简单', '考研数学2021年数1真题', '设函数$f(x, y)$可微，且$f(x + 1, e^{x}) = x(x + 1)2$，$f(x, x^{2}) = 2x^{2} \\ln x$，则$df(1, 1) =$（ ）', '[''$dx + dy$'', ''$dx - dy$'', ''$dy$'', ''$−dy$'']', "['C']", '
$$
f_{x}^{′}(x, y) = 2x \\ln y, f_{y}^{′}(x, y) = \\frac{x^{2}}{y},
$$
则$f_{x}^{′}(1, 1) = 0$，$f_{y}^{′}(1, 1) = 1$，得$df(1, 1) = dy$，故应选(C)。', 9, 'Mogullzr', '2026-01-29 14:19:06', 9, 'Mogullzr', '2026-01-29 14:19:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2905');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2905');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '2905');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2906, '2021年考研数学卷1第3题', '简单', '考研数学2021年数1真题', '设函数$f(x) = \\frac{\\sin x}{1+x^{2}}$在$x = 0$处的3次泰勒多项式为$ax + bx^{2} + cx^{3}$，则（ ）', '[''$a = 1, b = 0, c = −\\\\frac{7}{6}$'', ''$a = 1, b = 0, c = \\\\frac{7}{6}$'', ''$a = −1, b = −1, c = −\\\\frac{7}{6}$'', ''$a = −1, b = −1, c = \\\\frac{7}{6}$'']', "['A']", '由题意知，$f(x) = \\frac{\\sin x}{1+x^{2}} = ax + bx^{2} + cx^{3} + o(x^{3})$，故
$$
\\begin{array}{cc}
\\sin x & = (1 + x^{2}) (ax + bx^{2} + cx^{3} + o (x^{3})) \\\\
 & = ax + bx^{2} + (a + c)x^{3} + o (x^{3}) , \\\\
\\end{array}
$$
又$\\sin x = x - \\frac{1}{6}x^{3} + o(x^{3})$，由泰勒展开的唯一性，比较系数，有
$$
\\begin{cases} a = 1 \\\\ b = 0 \\\\ a + c = −\\frac{1}{6} \\end{cases}
$$
解得
$$
\\begin{cases} a = 1 \\\\ b = 0 \\\\ c = −\\frac{7}{6} \\end{cases}
$$
故应选(A)。', 9, 'Mogullzr', '2026-01-29 14:19:06', 9, 'Mogullzr', '2026-01-29 14:19:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2906');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2906');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '2906');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2907, '2021年考研数学卷1第4题', '简单', '考研数学2021年数1真题', '设函数$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上连续，则$\\int_{0}^{1} f(x)dx =$（ ）', '[''$\\\\lim_{n→∞} \\\\sum_{k=1}^{n} f (\\\\frac{2k-1}{2n}) \\\\frac{1}{2n}$'', ''$\\\\lim_{n→∞} \\\\sum_{k=1}^{n} f (\\\\frac{2k-1}{2n}) \\\\frac{1}{n}$'', ''$\\\\lim_{n→∞} \\\\sum_{k=1}^{2n} f (\\\\frac{k-1}{2n}) \\\\frac{1}{n}$'', ''$\\\\lim_{n→∞} \\\\sum_{k=1}^{2n} f (\\\\frac{k}{2n}) \\\\frac{2}{n}$'']', "['B']", '将区间$\\lbrack 0, 1 \\rbrack$上均分成$n$份，取$ξ_{k}$为第$k$个小区间的中点，则$ξ_{k} = \\frac{\\frac{k-1}{n}+\\frac{k}{n}}{2} = \\frac{2k-1}{2n}$，
$$
\\int_{0}^{1} f(x)dx = \\lim_{n→∞} \\sum_{k=1}^{n} f (\\frac{2k - 1}{2n}) ⋅ \\frac{1}{n},
$$
故应选(B)。', 9, 'Mogullzr', '2026-01-29 14:19:06', 9, 'Mogullzr', '2026-01-29 14:19:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2907');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2907');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '2907');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2908, '2021年考研数学卷1第5题', '简单', '考研数学2021年数1真题', '二次型$f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{2} + x_{3})2 - (x_{3} - x_{1})2$的正惯性指数与负惯性指数依次为（ ）', '[''$2$，$0$'', ''$1$，$1$'', ''$2$，$1$'', ''$1$，$2$'']', "['B']", '
$$
f = (x_{1} + x_{2})^{2} + (x_{2} + x_{3})^{2} - (x_{3} - x_{1})^{2} = 2x_{2}^{2} + 2x_{1}x_{2} + 2x_{1}x_{3} + 2x_{2}x_{3},
$$
对应的矩阵$A = \\left( \\begin{array}{ccc}
0 & 1 & 1 \\\\
1 & 2 & 1 \\\\
1 & 1 & 0 \\\\
\\end{array} \\right)$，
$$
∣λE - A∣ = \\begin{vmatrix}
λ & −1 & −1\\\\
−1 & λ - 2 & −1\\\\
−1 & −1 & λ
\\end{vmatrix} = λ(λ - 3)(λ + 1),
$$
$A$的特征值为$3$，$−1$，$0$，故$f$的正、负惯性指数都是$1$，故应选(B)。', 9, 'Mogullzr', '2026-01-29 14:19:06', 9, 'Mogullzr', '2026-01-29 14:19:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2908');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2908');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2909, '2021年考研数学卷1第6题', '简单', '考研数学2021年数1真题', '设$α_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$，$α_{2} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right)$，$α_{3} = \\left( \\begin{array}{c}
3 \\\\
1 \\\\
2 \\\\
\\end{array} \\right)$，$β_{1} = α_{1}$，$β_{2} = α_{2} - kβ_{1}$，$β_{3} = α_{3} - l_{1}β_{1} - l_{2}β_{2}$，若$β_{1}$，$β_{2}$，$β_{3}$两两正交，则$l_{1}$，$l_{2}$依次为（ ）', '[''$\\\\frac{5}{2}$，$\\\\frac{1}{2}$'', ''$\\\\frac{5}{2}$，$−\\\\frac{1}{2}$'', ''$−\\\\frac{5}{2}$，$\\\\frac{1}{2}$'', ''$−\\\\frac{5}{2}$，$−\\\\frac{1}{2}$'']', "['A']", '由已知，有
$$
β_{1} = α_{1},
$$

$$
β_{2} = α_{2} - kβ_{1} = α_{2} - kα_{1},
$$

$$
β_{3} = α_{3} - l_{1}β_{1} - l_{2}β_{2} = α_{3} - l_{1}α_{1} - l_{2} (α_{2} - kα_{1}) ,
$$
又$β_{1}$，$β_{2}$，$β_{3}$两两正交，故$(β_{1}, β_{2}) = 0$，即
$$
(α_{1}, α_{2} - kα_{1}) = (α_{1}, α_{2}) - k (α_{1}, α_{1}) = 2 - 2k = 0,
$$
得$k = 1$，此时$β_{3} = α_{3} - (l_{1} - l_{2})α_{1} - l_{2}α_{2}$。又
$$
\\begin{array}{cc}
(β_{1}, β_{3}) & = (α_{1}, α_{3} - (l_{1} - l_{2}) α_{1} - l_{2}α_{2}) \\\\
 & = (α_{1}, α_{3}) - (l_{1} - l_{2}) (α_{1}, α_{1}) - l_{2} (α_{1}, α_{2}) \\\\
 & = 5 - (l_{1} - l_{2}) ⋅ 2 - 2l_{2} = 5 - 2l_{1} = 0, \\\\
\\end{array}
$$
得$l_{1} = \\frac{5}{2}$。$β_{2} = α_{2} - α_{1} = \\left( \\begin{array}{c}
0 \\\\
2 \\\\
0 \\\\
\\end{array} \\right)$，又
$$
\\begin{array}{cc}
(β_{2}, β_{3}) & = (β_{2}, α_{3} - (l_{1} - l_{2}) α_{1} - l_{2}α_{2}) \\\\
 & = (β_{2}, α_{3}) - (l_{1} - l_{2}) (β_{2}, α_{1}) - l_{2} (β_{2}, α_{2}) \\\\
 & = 2 - (l_{1} - l_{2}) ⋅ 0 - l_{2} ⋅ 4 = 2 - 4l_{2} = 0, \\\\
\\end{array}
$$
得$l_{2} = \\frac{1}{2}$，故应选(A)。', 9, 'Mogullzr', '2026-01-29 14:19:06', 9, 'Mogullzr', '2026-01-29 14:19:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2909');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '2909');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1077', '2909');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2910, '2021年考研数学卷1第7题', '简单', '考研数学2021年数1真题', '设$A$，$B$为$n$阶实矩阵，下列不成立的是（ ）', '[''$r \\\\left( \\\\begin{array}{cc}\\nA & O \\\\\\\\\\nO & A^{T}A \\\\\\\\\\n\\\\end{array} \\\\right) = 2r$'', ''$r \\\\left( \\\\begin{array}{cc}\\nA & AB \\\\\\\\\\nO & A^{T} \\\\\\\\\\n\\\\end{array} \\\\right) = 2r$'', ''$r \\\\left( \\\\begin{array}{cc}\\nA & BA \\\\\\\\\\nO & AA^{T} \\\\\\\\\\n\\\\end{array} \\\\right) = 2r$'', ''$r \\\\left( \\\\begin{array}{cc}\\nA & O \\\\\\\\\\nBA & A^{T} \\\\\\\\\\n\\\\end{array} \\\\right) = 2r$'']', "['C']", '对于(A)：$r \\left( \\begin{array}{cc}
A & O \\\\
O & A^{T}A \\\\
\\end{array} \\right) = r(A) + r(A^{T}A) = r(A) + r(A) = 2r(A)$；对于(B)：$r \\left( \\begin{array}{cc}
A & AB \\\\
O & A^{T} \\\\
\\end{array} \\right) = r \\left( \\begin{array}{c}
A \\\\
A^{T} \\\\
\\end{array} \\right) + r(AB)$，因$\\left( \\begin{array}{cc}
E & B \\\\
\\end{array} \\right)$行满秩，所以$r \\left( \\begin{array}{cc}
A & AB \\\\
\\end{array} \\right) = r(A)$，于是$r \\left( \\begin{array}{cc}
A & AB \\\\
O & A^{T} \\\\
\\end{array} \\right) = r(A) + r(A^{T}) = 2r(A)$；对于(D)：$r \\left( \\begin{array}{cc}
A & O \\\\
BA & A^{T} \\\\
\\end{array} \\right) = r(A) + r(A^{T}) = 2r(A)$；对于(C)：取$A = \\left( \\begin{array}{cc}
1 & 0 \\\\
1 & 0 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}
1 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right)$，则$\\left( \\begin{array}{cc}
A & BA \\\\
O & AA^{T} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
1 & 0 & 1 & 0 \\\\
1 & 0 & 0 & 0 \\\\
0 & 0 & 1 & 1 \\\\
0 & 0 & 1 & 1 \\\\
\\end{array} \\right)$，$r \\left( \\begin{array}{cc}
A & BA \\\\
O & AA^{T} \\\\
\\end{array} \\right) = 3 \\neq 2r(A) = 2$，故应选 (C)。', 9, 'Mogullzr', '2026-01-29 14:19:07', 9, 'Mogullzr', '2026-01-29 14:19:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2910');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2910');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '2910');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2911, '2021年考研数学卷1第8题', '简单', '考研数学2021年数1真题', '设$A, B$为随机事件，且$0 < P(B) < 1$，下列命题中为假命题的是( ).', '[''若$P(A∣B) = P$，则$P(A∣\\\\overline{B}) = P$'', ''若$P(A∣B) > P$，则$P(\\\\overline{A}∣\\\\overline{B}) > P(\\\\overline{A})$'', ''若$P(A∣B) > P(A∣\\\\overline{B})$，则$P(A∣B) > P(B)$'', ''若$P(A∣A ∪ B) > P(\\\\overline{A}∣A ∪ B)$，则$P(A) > P(B)$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:07', 9, 'Mogullzr', '2026-01-29 14:19:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2911');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '2911');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2912, '2021年考研数学卷1第9题', '简单', '考研数学2021年数1真题', '设$(X_{1}, Y_{1}), (X_{2}, Y_{2}), ⋯  , (X_{n}, Y_{n})$为来自总体$N(μ_{1}, μ_{2}; σ_{1}^{2}, σ_{2}^{2}; ρ)$的简单随机样本，令$θ = μ_{1} - μ_{2}$，$\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，$\\overline{Y} = \\frac{1}{n} \\sum_{i=1}^{n} Y_{i}$，$\\hat{θ} = \\overline{X} - \\overline{Y}$，则（）', '[''$\\\\hat{θ}$是$θ$的无偏估计，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}}{n}$'', ''$\\\\hat{θ}$不是$θ$的无偏估计，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}}{n}$'', ''$\\\\hat{θ}$是$θ$的无偏估计，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}-2ρσ_{1}σ_{2}}{n}$'', ''$\\\\hat{θ}$不是$θ$的无偏估计，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}-2ρσ_{1}σ_{2}}{n}$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:07', 9, 'Mogullzr', '2026-01-29 14:19:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2912');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2912');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '2912');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2913, '2021年考研数学卷1第10题', '简单', '考研数学2021年数1真题', '设$X_{1}, X_{2}, ⋯  , X_{16}$是来自总体$N(μ, 4)$的简单随机样本，考虑假设检验问题：$H_{0} : μ ≤ 10$，$H_{1} : μ > 10$，$Φ(x)$表示标准正态分布函数，若该检验问题的拒绝域为$W = \\{\\overline{X} ≥ 11\\}$，其中$\\overline{X} = \\frac{1}{16} \\sum_{i=1}^{16} X_{i}$，则$μ = 11.5$时，该检验犯第二类错误的概率为（）。', '[''$1 - Φ(0.5)$'', ''$1 - Φ(1)$'', ''$1 - Φ(1.5)$'', ''$1 - Φ(2)$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:07', 9, 'Mogullzr', '2026-01-29 14:19:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2913');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2913');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1079', '2913');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2914, '2021年考研数学卷1第11题', '简单', '考研数学2021年数1真题', '（填空题）
$$
\\int_{0}^{+∞} \\frac{1}{x^{2} + 2x + 2}dx =
$$
', '[]', '$\\frac{π}{4}$
', '

$$
\\begin{array}{cc}
\\int_{0}^{+∞} \\frac{1}{x^{2} + 2x + 2}dx & = \\int_{0}^{+∞} \\frac{1}{(x + 1)2 + 1}dx = arctan(x + 1)∣_{0}^{+∞} \\\\
 & = lim_{x→+∞}arctan(x + 1) - arctan(1) \\\\
 & = \\frac{π}{2} - \\frac{π}{4} = \\frac{π}{4}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:08', 9, 'Mogullzr', '2026-01-29 14:19:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2914');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2914');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2914');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2915, '2021年考研数学卷1第12题', '简单', '考研数学2021年数1真题', '（填空题）设函数$y = y(x)$由参数方程$\\begin{cases} x = 2e^{t} + t + 1 \\\\ y = 4(t - 1)e^{t} + t^{2} \\end{cases}$所确定，则$\\frac{d^{2}y}{dx^{2}}​_{t=0} =$______。', '[]', '$\\frac{2}{3}$
', '


$$
\\begin{array}{c}
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{4te^{t} + 2t}{2e^{t} + 1} = 2t \\\\
\\frac{d^{2}y}{dx^{2}} = \\frac{d(2t)/dt}{dx/dt} = \\frac{2}{2e^{t} + 1} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:08', 9, 'Mogullzr', '2026-01-29 14:19:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2915');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2915');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2915');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2916, '2021年考研数学卷1第13题', '简单', '考研数学2021年数1真题', '（填空题）欧拉方程$x^{2}y^{′′} + xy^{′} - 4y = 0$满足条件$y(1) = 1$，$y^{′}(1) = 2$的解为$y =$______。', '[]', '$x^{2}$
', '令$x = e^{t}$，$D = \\frac{d}{dt}$，则
$xy^{′} = Dy$，$x^{2}y^{′′} = D(D - 1)y$，
代入欧拉方程得
$\\frac{d^{2}y}{dt^{2}} - 4y = 0$，
特征方程为$λ^{2} - 4 = 0$，特征根为$λ_{1} = −2$，$λ_{2} = 2$，
$\\frac{d^{2}y}{dt^{2}} - 4y = 0$的通解为$y = C_{1}e^{−2t} + C_{2}e^{2t}$，原方程的通解为
$y = \\frac{C_{1}}{x^{2}} + C_{2}x^{2}$，
由$y(1) = 1$，$y^{′}(1) = 2$得$C_{1} + C_{2} = 1$，$−2C_{1} + 2C_{2} = 2$，解得$C_{1} = 0$，$C_{2} = 1$，
故$y = x^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:19:08', 9, 'Mogullzr', '2026-01-29 14:19:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2916');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2916');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '2916');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2917, '2021年考研数学卷1第14题', '简单', '考研数学2021年数1真题', '（填空题）设Σ为空间区域$\\{(x, y, z) ∣ x^{2} + 4y^{2} ≤ 4, 0 ≤ z ≤ 2\\}$表面的外侧，则曲面积分$\\iint_{Σ} x^{2}dydz + y^{2}dzdx + zdxdy =$______．', '[]', '4π
', '设Σ所围成的几何体为$Ω$，由高斯公式得
$I = \\iint_{Σ} x^{2}dydz + y^{2}dzdx + zdxdy = \\iiint_{Ω}(2x + 2y + 1)dv$，
由积分的奇偶性得
$I = \\iiint_{Ω} 1dv = 2 \\iint_{D_{xy}} dxdy = 2 ⋅ π ⋅ 1 ⋅ 2 = 4π$．
', 9, 'Mogullzr', '2026-01-29 14:19:08', 9, 'Mogullzr', '2026-01-29 14:19:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2917');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2917');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '2917');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2918, '2021年考研数学卷1第15题', '简单', '考研数学2021年数1真题', '（填空题）设$A = a_{(ij)}$为3阶矩阵，$A_{ij}$为代数余子式，若 A 的每行元素之和均为2，且$∣A∣ = 3$， 则$A_{11} + A_{21} + A_{31} =$', '[]', '$\\frac{3}{2}$
', '【分析】求$A_{11} + A_{21} + A_{31}$，相当于求$A^{∗}$的第1行元素之和 已知 A 的每行元素之和均为2，故

$$
A \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
2 \\\\
2 \\\\
2 \\\\
\\end{array} \\right) = 2 \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)
$$

又$A^{∗}A = ∣A∣E = 3E$，故

$$
A^{∗} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) = \\frac{3}{2} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) ,
$$

故$A_{11} + A_{21} + A_{31} = \\frac{3}{2}$
', 9, 'Mogullzr', '2026-01-29 14:19:08', 9, 'Mogullzr', '2026-01-29 14:19:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2918');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2918');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2918');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2919, '2021年考研数学卷1第16题', '简单', '考研数学2021年数1真题', '（填空题）甲，乙两个盒子中各装有$2$个红球和$2$个白球，先从甲盒中任取一球，观察颜色后放入乙盒中，再从乙盒中任取一球。令$X$，$Y$分别表示从甲盒和乙盒中取到的红球个数，则$X$与$Y$的相关系数为', '[]', '$\\frac{1}{5}$
', '由题意有

$$
P\\{X = 0\\} = P\\{X = 1\\} = \\frac{1}{2},
$$


$$
\\begin{array}{cc}
P\\{Y = 0\\} & = P\\{Y = 0∣X = 0\\}P\\{X = 0\\} + P\\{Y = 0∣X = 1\\}P\\{X = 1\\} \\\\
 & = \\frac{3}{5} ⋅ \\frac{1}{2} + \\frac{2}{5} ⋅ \\frac{1}{2} = \\frac{1}{2}, \\\\
\\end{array}
$$


$$
P\\{Y = 1\\} = 1 - P\\{Y = 0\\} = \\frac{1}{2},
$$


$$
\\begin{array}{cc}
P\\{X = 0, Y = 0\\} & = P\\{Y = 0∣X = 0\\}P\\{X = 0\\} \\\\
 & = \\frac{3}{5} ⋅ \\frac{1}{2} = \\frac{3}{10}, \\\\
\\end{array}
$$

故$(X, Y)$的概率分布为

$$
\\begin{array}{c|cc}
 & X = 0 & X = 1 \\\\
Y = 0 & \\frac{3}{10} & \\frac{2}{10} \\\\
Y = 1 & \\frac{2}{10} & \\frac{3}{10} \\\\
\\end{array}
$$

从而

$$
ρ_{XY} = \\frac{cov(X, Y)}{\\sqrt{DX} ⋅ \\sqrt{DY}} = \\frac{E(XY) - E(X)E(Y)}{\\sqrt{DX} ⋅ \\sqrt{DY}} = \\frac{\\frac{3}{10} - \\frac{1}{2}\\frac{1}{2}}{\\frac{1}{2}\\frac{1}{2}} = \\frac{1}{5}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:08', 9, 'Mogullzr', '2026-01-29 14:19:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2919');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2919');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '2919');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2920, '2021年考研数学卷1第17题', '简单', '考研数学2021年数1真题', '（本题满分10分）求极限$\\lim_{x→0} (\\frac{1+\\int_{0}^{x} e^{t^{2}}dt}{e^{x}-1} - \\frac{1}{\\sin x})$。', '[]', '1/2
', '方法一

$$
\\begin{array}{cc}
 & \\lim_{x→0} (\\frac{1 + \\int_{0}^{x} e^{t^{2}}dt}{e^{x} - 1} - \\frac{1}{\\sin x}) = \\lim_{x→0} \\frac{(1 + \\int_{0}^{x} e^{t^{2}}dt) \\sin x - e^{x} + 1}{(e^{x} - 1) \\sin x} \\\\
 & = \\lim_{x→0} \\frac{(1 + \\int_{0}^{x} e^{t^{2}}dt) \\sin x - e^{x} + 1}{x^{2}} \\\\
 & = \\lim_{x→0} (\\frac{\\sin x - x}{x^{2}} + \\frac{\\int_{0}^{x} e^{t^{2}}dt ⋅ \\sin x - e^{x} + 1 + x}{x^{2}}) \\\\
 & = \\lim_{x→0} \\frac{\\int_{0}^{x} e^{t^{2}}dt ⋅ \\sin x - e^{x} + 1 + x}{x^{2}} \\\\
 & = \\lim_{x→0} \\frac{\\sin x}{x} ⋅ \\frac{\\int_{0}^{x} e^{t^{2}}dt}{x} - \\lim_{x→0} \\frac{e^{x} - 1 - x}{x^{2}} \\\\
 & = \\lim_{x→0} e^{x^{2}} - \\lim_{x→0} \\frac{e^{x} - 1}{2x} = 1 - \\frac{1}{2} = \\frac{1}{2}. \\\\
\\end{array}
$$

方法二

$$
\\lim_{x→0} (\\frac{1 + \\int_{0}^{x} e^{t^{2}}dt}{e^{x} - 1} - \\frac{1}{\\sin x}) = \\lim_{x→0} (\\frac{\\int_{0}^{x} e^{t^{2}}dt}{e^{x} - 1} + \\frac{1}{e^{x} - 1} - \\frac{1}{\\sin x}) ,
$$

由

$$
\\lim_{x→0} \\frac{\\int_{0}^{x} e^{t^{2}}dt}{e^{x} - 1} = \\lim_{x→0} \\frac{e^{x^{2}}}{e^{x}} = 1,
$$


$$
\\begin{array}{cc}
\\lim_{x→0} (\\frac{1}{e^{x} - 1} - \\frac{1}{\\sin x}) & = \\lim_{x→0} \\frac{\\sin x - e^{x} + 1}{(e^{x} - 1) \\sin x} \\\\
 & = \\lim_{x→0} \\frac{\\sin x - e^{x} + 1}{x^{2}} \\\\
 & = \\frac{1}{2} \\lim_{x→0} \\frac{\\cos x - e^{x}}{x} \\\\
 & = −\\frac{1}{2}. \\\\
\\end{array}
$$

得

$$
\\lim_{x→0} (\\frac{1 + \\int_{0}^{x} e^{t^{2}}dt}{e^{x} - 1} - \\frac{1}{\\sin x}) = 1 - \\frac{1}{2} = \\frac{1}{2}.
$$

方法三
由泰勒公式得$e^{t^{2}} = 1 + t^{2} + o(t^{2})$,
从而

$$
\\int_{0}^{x} e^{t^{2}}dt = x + \\frac{x^{3}}{3} + o(x^{3}),
$$

于是有

$$
\\begin{array}{cc}
 & \\lim_{x→0} (\\frac{1 + \\int_{0}^{x} e^{t^{2}}dt}{e^{x} - 1} - \\frac{1}{\\sin x}) \\\\
 & = \\lim_{x→0}  \\lbrack \\frac{1 + x + \\frac{x^{3}}{3} + o(x^{3})}{e^{x} - 1} - \\frac{1}{\\sin x} \\rbrack  \\\\
 & = \\lim_{x→0} (\\frac{1 + x}{e^{x} - 1} - \\frac{1}{\\sin x}) \\\\
 & = \\lim_{x→0} \\frac{x}{e^{x} - 1} + \\lim_{x→0} (\\frac{1}{e^{x} - 1} - \\frac{1}{\\sin x}) \\\\
 & = 1 + \\lim_{x→0} \\frac{\\sin x - e^{x} + 1}{(e^{x} - 1) \\sin x} \\\\
 & = 1 + \\lim_{x→0} \\frac{\\cos x - e^{x}}{2x} \\\\
 & = 1 + \\lim_{x→0} \\frac{− \\sin x - e^{x}}{2} \\\\
 & = \\frac{1}{2}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:09', 9, 'Mogullzr', '2026-01-29 14:19:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2920');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2920');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2920');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2921, '2021年考研数学卷1第18题', '简单', '考研数学2021年数1真题', '(本题满分12分)设$u_{n}(x) = e^{−nx} + \\frac{x^{n+1}}{n(n + 1)}(n = 1, 2, ⋯ )$，求级数$\\sum_{n=1}^{∞} u_{n}(x)$的收敛域及和函数.', '[]', '
收敛域为$(0, 1 \\rbrack$，和函数为


$$
S(x) = \\begin{cases} \\frac{1}{e^{x} - 1} + (1 - x) \\ln(1 - x) + x & 0 < x < 1 \\\\ \\frac{e}{e - 1} & x = 1. \\end{cases}
$$

', '
$\\sum_{n=1}^{∞} u_{n}(x) = \\sum_{n=1}^{∞} e^{−nx} + \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n(n + 1)}$。
当$\\lim_{n→∞} \\frac{e^{−(n+1)x}}{e^{−nx}} = e^{−x} < 1$，即$x > 0$时，$\\sum_{n=1}^{∞} e^{−nx}$收敛。
再由$\\lim_{n→∞} \\frac{\\frac{1}{(n + 1)(n + 2)}}{\\frac{1}{n(n + 1)}} = 1$得，$\\sum_{n=1}^{∞} \\frac{x^{n+1}}{n(n + 1)}$的收敛半径为$R = 1$。
当$x = ±1$时，


$$
\\sum_{n=1}^{∞} \\frac{(±1)n+1}{n(n + 1)} = \\sum_{n=1}^{∞} \\frac{1}{n(n + 1)} = 1,
$$

故$\\sum_{n=1}^{∞} \\frac{x^{n+1}}{n(n + 1)}$的收敛域为$\\lbrack −1, 1 \\rbrack$。
因此级数$\\sum_{n=1}^{∞} u_{n}(x)$的收敛域为$(0, 1 \\rbrack$。
令


$$
S(x) = \\sum_{n=1}^{∞} u_{n}(x) = \\sum_{n=1}^{∞} e^{−nx} + \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n(n + 1)} = S_{1}(x) + S_{2}(x),
$$

其中


$$
S_{1}(x) = \\sum_{n=1}^{∞} e^{−nx} = \\frac{e^{−x}}{1 - e^{−x}} = \\frac{1}{e^{x} - 1},
$$



$$
\\begin{array}{cc}
S_{2}(x) & = \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n(n + 1)} \\\\
 & = \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n} - \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n + 1} \\\\
 & = x \\sum_{n=1}^{∞} \\frac{x^{n}}{n} - \\sum_{n=1}^{∞} \\frac{x^{n}}{n} + x \\\\
 & = (1 - x) \\ln(1 - x) + x (0 < x < 1). \\\\
\\end{array}
$$

当$x = 1$时，由$S_{1}(1) = \\frac{1}{e - 1}$，$S_{2}(1) = 1$得


$$
S(1) = \\frac{1}{e - 1} + 1 = \\frac{e}{e - 1}.
$$

故


$$
S(x) = \\begin{cases} \\frac{1}{e^{x} - 1} + (1 - x) \\ln(1 - x) + x & 0 < x < 1 \\\\ \\frac{e}{e - 1} & x = 1. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:09', 9, 'Mogullzr', '2026-01-29 14:19:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2921');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '2921');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '2921');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2922, '2021年考研数学卷1第19题', '简单', '考研数学2021年数1真题', '(本题满分12分)已知曲线$C : \\begin{cases} x^{2} + 2y^{2} - z = 6 \\\\ 4x + 2y + z = 30 \\end{cases}$求$C$上的点到$xOy$坐标面距离的最大值.', '[]', '$66$
', '设$M(x, y, z) ∈ C$，点$M$到$xOy$坐标面的距离$d = ∣z∣$，
令$F = z^{2} + λ(x^{2} + 2y^{2} - z - 6) + μ(4x + 2y + z - 30)$，
由$\\begin{cases} F_{x}^{′} = 2λx + 4μ = 0 \\\\ F_{y}^{′} = 4λy + 2μ = 0 \\\\ F_{z}^{′} = 2z - λ + μ = 0 \\\\ F_{λ}^{′} = x^{2} + 2y^{2} - z - 6 = 0 \\\\ F_{μ}^{′} = 4x + 2y + z - 30 = 0 \\end{cases}$得$\\begin{cases} x = 4 \\\\ y = 1 \\\\ z = 12 \\end{cases}$或$\\begin{cases} x = −8 \\\\ y = −2 \\\\ z = 66 \\end{cases}$
故$C$上的点$(−8, −2, 66)$到$xOy$面的距离最大为$66$.
', 9, 'Mogullzr', '2026-01-29 14:19:09', 9, 'Mogullzr', '2026-01-29 14:19:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2922');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2922');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2922');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2923, '2021年考研数学卷1第20题', '简单', '考研数学2021年数1真题', '（本题满分12分）设$D ⊂ R^{2}$是有界单连通闭区域，$I(D) = \\iint_{D}(4 - x^{2} - y^{2}) dxdy$取得最大值的积分区域为$D_{1}$。（Ⅰ）求$I(D_{1})$的值；（Ⅱ）计算$\\int_{∂D_{1}} \\frac{(xe^{x^{2}+4y^{2}}+y)dx+(4ye^{x^{2}+4y^{2}}-x)dy}{x^{2}+4y^{2}}$，其中$∂D_{1}$是$D_{1}$的正向边界。', '[]', '（Ⅰ）$I(D_{1}) = 8π$；（Ⅱ）$−π$
', '
（Ⅰ）显然$I(D) = \\iint_{D}(4 - x^{2} - y^{2}) dxdy$取最大值的区域为$4 - x^{2} - y^{2} ≥ 0$，
即$D_{1} = \\{(x, y) ∣ x^{2} + y^{2} ≤ 4\\}$，则

$$
\\begin{array}{cc}
I(D_{1}) & = \\iint_{D_{1}}(4 - x^{2} - y^{2}) dxdy \\\\
 & = 2π \\int_{0}^{2} r(4 - r^{2}) dr \\\\
 & = 2π \\int_{0}^{2}(4r - r^{3}) dr \\\\
 & = 8π \\\\
\\end{array}
$$

（Ⅱ）令$L_{0} : x^{2} + 4y^{2} = r^{2} (r > 0,  L_{0}在L内，取逆时针)$，设$∂D_{1}$与$L_{0}^{-}$所围成的区域为$D_{0}$，
$L_{0}$围成的区域为$D_{2}$，则

$$
\\begin{array}{cc}
 & \\int_{∂D_{1}} \\frac{(xe^{x^{2}+4y^{2}} + y) dx + (4ye^{x^{2}+4y^{2}} - x) dy}{x^{2} + 4y^{2}} \\\\
 & = ∮_{∂D_{1}+L_{0}^{-}} \\frac{(xe^{x^{2}+4y^{2}} + y) dx + (4ye^{x^{2}+4y^{2}} - x) dy}{x^{2} + 4y^{2}} \\\\
\\end{array}
$$

而

$$
∮_{∂D_{1}+L_{0}^{-}} \\frac{(xe^{x^{2}+4y^{2}} + y) dx + (4ye^{x^{2}+4y^{2}} - x) dy}{x^{2} + 4y^{2}} = \\iint_{D_{0}} (\\frac{∂Q}{∂x} - \\frac{∂P}{∂y}) dxdy = 0
$$



$$
\\begin{array}{cc}
 & \\int_{L_{0}} \\frac{(xe^{x^{2}+4y^{2}} + y) dx + (4ye^{x^{2}+4y^{2}} - x) dy}{x^{2} + 4y^{2}} \\\\
 & = \\frac{1}{r^{2}} \\int_{L_{0}}(xe^{x^{2}+4y^{2}} + y) dx + (4ye^{x^{2}+4y^{2}} - x) dy \\\\
 & = \\frac{1}{r^{2}} \\iint_{D_{2}}(8xye^{x^{2}+4y^{2}} - 1 - 8xye^{x^{2}+4y^{2}} - 1)dxdy \\\\
\\end{array}
$$

故

$$
\\int_{∂D_{1}} \\frac{(xe^{x^{2}+4y^{2}} + y) dx + (4ye^{x^{2}+4y^{2}} - x) dy}{x^{2} + 4y^{2}} = −π.
$$

', 9, 'Mogullzr', '2026-01-29 14:19:09', 9, 'Mogullzr', '2026-01-29 14:19:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2923');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2923');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '2923');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2924, '2021年考研数学卷1第21题', '简单', '考研数学2021年数1真题', '(本题满分12分)已知$A = \\left( \\begin{array}{ccc}
a & 1 & −1 \\\\
1 & a & −1 \\\\
−1 & −1 & a \\\\
\\end{array} \\right)$。(Ⅰ)求正交矩阵$P$，使得$P^{T}AP$为对角矩阵；(Ⅱ)求正定矩阵$C$，使得$C^{2} = (a + 3)E - A$。', '[]', '
(Ⅰ) 正交矩阵$P = \\left( \\begin{array}{ccc}
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
0 & \\frac{2}{\\sqrt{6}} & \\frac{1}{\\sqrt{3}} \\\\
\\end{array} \\right)$
(Ⅱ) 正定矩阵$C = \\frac{1}{3} \\left( \\begin{array}{ccc}
5 & −1 & 1 \\\\
−1 & 5 & 1 \\\\
1 & 1 & 5 \\\\
\\end{array} \\right)$
', '
(Ⅰ)由
$∣λE - A∣ = \\begin{vmatrix}
λ - a & −1 & 1\\\\
−1 & λ - a & 1\\\\
1 & 1 & λ - a
\\end{vmatrix} = \\left( \\begin{array}{ccc}
λ - a + 1 & −(λ - a + 1) & 0 \\\\
−1 & λ - a & 1 \\\\
1 & 1 & λ - a \\\\
\\end{array} \\right)$
$= (λ - a + 1) \\begin{vmatrix}
1 & −1 & 0\\\\
−1 & λ - a & 1\\\\
1 & 1 & λ - a
\\end{vmatrix}$
$= (λ - a + 1) \\begin{vmatrix}
1 & 0 & 0\\\\
−1 & λ - a - 1 & 1\\\\
1 & 2 & λ - a
\\end{vmatrix}$
$= (λ - a + 1)2(λ - a - 2) = 0$，
得$λ_{1} = λ_{2} = a - 1$，$λ_{3} = a + 2$，
由$(a - 1)E - A = \\left( \\begin{array}{ccc}
−1 & −1 & 1 \\\\
−1 & −1 & 1 \\\\
1 & 1 & −1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$得$λ_{1} = λ_{2} = a - 1$对应的线性无关的特征向量为$α_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，$α_{2} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$；
由$(a + 2)E - A = \\left( \\begin{array}{ccc}
2 & −1 & 1 \\\\
−1 & 2 & 1 \\\\
1 & 1 & 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & −2 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$得$λ_{3} = a + 2$对应的特征向量为$α_{3} = \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，
令$β_{1} = α_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，$β_{2} = α_{2} - \\frac{(α_{2},β_{1})}{(β_{1},β_{1})}β_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) + \\frac{1}{2} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) = \\frac{1}{2} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
\\end{array} \\right)$，$β_{3} = α_{3} = \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，
再令$γ_{1} = \\frac{1}{\\sqrt{2}} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，$γ_{2} = \\frac{1}{\\sqrt{6}} \\left( \\begin{array}{c}
1 \\\\
1 \\\\
2 \\\\
\\end{array} \\right)$，$γ_{3} = \\frac{1}{\\sqrt{3}} \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，
得正交矩阵$P = \\left( \\begin{array}{ccc}
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
0 & \\frac{2}{\\sqrt{6}} & \\frac{1}{\\sqrt{3}} \\\\
\\end{array} \\right)$，
使得$P^{T}AP = \\left( \\begin{array}{ccc}
a - 1 & 0 & 0 \\\\
0 & a - 1 & 0 \\\\
0 & 0 & a + 2 \\\\
\\end{array} \\right)$。
(Ⅱ)由$P^{T} \\lbrack (a + 3)E - A \\rbrack P = \\left( \\begin{array}{ccc}
4 & 0 & 0 \\\\
0 & 4 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$得
$(a + 3)E - A = P \\left( \\begin{array}{ccc}
4 & 0 & 0 \\\\
0 & 4 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) P^{T} = P \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) P^{T} ⋅ P \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) P^{T}$，
令$C = P \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) P^{T}$，
$= \\left( \\begin{array}{ccc}
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
0 & \\frac{2}{\\sqrt{6}} & \\frac{1}{\\sqrt{3}} \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{2}} & 0 \\\\
\\frac{1}{\\sqrt{6}} & \\frac{1}{\\sqrt{6}} & −\\frac{1}{\\sqrt{3}} \\\\
−\\frac{1}{\\sqrt{3}} & −\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{3}} \\\\
\\end{array} \\right)$
$= \\frac{1}{3} \\left( \\begin{array}{ccc}
5 & −1 & 1 \\\\
−1 & 5 & 1 \\\\
1 & 1 & 5 \\\\
\\end{array} \\right)$。
则$C^{2} = (a + 3)E - A$。
', 9, 'Mogullzr', '2026-01-29 14:19:10', 9, 'Mogullzr', '2026-01-29 14:19:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2924');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2924');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2925, '2021年考研数学卷1第22题', '简单', '考研数学2021年数1真题', '（本题满分12分）在区间$(0, 2)$上随机取一点，将该区间分成两段，较短一段的长度为$X$，较长一段的长度为$Y$，令$Z = \\frac{Y}{X}$.(Ⅰ)求$X$的概率密度；(Ⅱ)求$Z$的概率密度；(Ⅲ)求$E (\\frac{X}{Y})$.', '[]', '
(Ⅰ)$X$的概率密度为


$$
f_{X}(x) = \\begin{cases} 1 & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}
$$

(Ⅱ)$Z$的概率密度为


$$
f_{Z}(z) = \\begin{cases} 0 & z ≤ 1 \\\\ \\frac{2}{(z+1)2} & z > 1. \\end{cases}
$$

(Ⅲ)$E (\\frac{X}{Y}) = 2 \\ln 2 - 1$
', '
(Ⅰ) X的密度函数为

$$
f_{X}(x) = \\begin{cases} 1 & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}
$$

(Ⅱ) 由$Y = 2 - X$得$Z = \\frac{2-X}{X}$,
$F_{Z}(z) = P\\{Z ≤ z\\} = P \\{\\frac{2}{X} - 1 ≤ z\\}$,
当$z < 1$时,$F_{Z}(z) = 0$;
当$z ≥ 1$时,$F_{Z}(z) = P \\{X ≥ \\frac{2}{z+1}\\} = \\int_{\\frac{2}{z+1}}^{1} 1dx = 1 - \\frac{2}{z+1} = \\frac{z-1}{z+1}$,
即

$$
F_{Z}(z) = \\begin{cases} 0 & z < 1 \\\\ \\frac{z-1}{z+1} & z ≥ 1 \\end{cases}
$$

故Z的密度函数为

$$
f_{Z}(z) = \\begin{cases} 0 & z ≤ 1 \\\\ \\frac{2}{(z+1)2} & z > 1. \\end{cases}
$$

(Ⅲ)$E (\\frac{X}{Y}) = E (\\frac{X}{2-X}) = \\int_{0}^{1} \\frac{x}{2-x}dx = 2 \\ln 2 - 1$.
', 9, 'Mogullzr', '2026-01-29 14:19:10', 9, 'Mogullzr', '2026-01-29 14:19:10', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2925');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2925');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2926, '2021年考研数学卷2第1题', '简单', '考研数学2021年数2真题', '当$x → 0$时，$\\int_{0}^{x^{2}} (e^{t^{3}} - 1)  dt$是$x^{7}$的', '[''低阶无穷小.'', ''等价无穷小.'', ''高阶无穷小.'', ''同阶但非等价无穷小.'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:13', 9, 'Mogullzr', '2026-01-29 14:19:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2926');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2926');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '2926');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2927, '2021年考研数学卷2第2题', '简单', '考研数学2021年数2真题', '设$f(x) = \\begin{cases} \\frac{e^{x}-1}{x} & x \\neq 0 \\\\ 1 & x = 0 \\end{cases}$，则$f(x)$在$x = 0$处', '[''连续且取极大值'', ''连续且取极小值'', ''不连续但可导'', ''可导且导数不为$0$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:13', 9, 'Mogullzr', '2026-01-29 14:19:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2927');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2927');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '2927');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2928, '2021年考研数学卷2第3题', '简单', '考研数学2021年数2真题', '有一圆柱底面半径与高随时间变化的速率分别为$2 cm/s$，$−3 cm/s$。当底面半径为$10 cm$，高为$5 cm$时，圆柱体的体积与表面积随时间变化的速率分别为？', '[''$125πcm^{3}/s, 40πcm^{2}/s$.'', ''$125πcm^{3}/s, −40πcm^{2}/s$'', ''$−100πcm^{3}/s, 40πcm^{2}/s$.'', ''$−100πcm^{3}/s, −40πcm^{2}/s$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:13', 9, 'Mogullzr', '2026-01-29 14:19:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2928');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2928');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2928');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2929, '2021年考研数学卷2第4题', '简单', '考研数学2021年数2真题', '设函数$f(x) = ax - b \\ln x$（$a > 0$）有两个零点，则$b$的取值范围是', '[''$(e, +∞)$.'', ''$(0, e)$.'', ''$(0, 1)$.'', ''$(\\\\frac{1}{e}, +∞)$.'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:19:13', 9, 'Mogullzr', '2026-01-29 14:19:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2929');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2929');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '2929');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2930, '2021年考研数学卷2第5题', '简单', '考研数学2021年数2真题', '设函数$f(x) = sec x$在$x = 0$处的 2 次泰勒多项式为$1 + ax + bx^{2}$，则', '[''$a = 1, b = −\\\\frac{1}{2}$.'', ''$a = 1, b = \\\\frac{1}{2}$.'', ''$a = 0, b = −\\\\frac{1}{2}$.'', ''$a = 0, b = \\\\frac{1}{2}$.'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:13', 9, 'Mogullzr', '2026-01-29 14:19:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2930');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2930');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '2930');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2931, '2021年考研数学卷2第6题', '简单', '考研数学2021年数2真题', '设函数$f(x, y)$可微，且$f(x + 1, e^{x}) = x(x + 1)2$，$f(x, x^{2}) = 2x^{2} \\ln x$，则$df(1, 1) =$', '[''$dx + dy$.'', ''$dx - dy$.'', ''$dy$.'', ''$−dy$.'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:13', 9, 'Mogullzr', '2026-01-29 14:19:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2931');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2931');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '2931');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2932, '2021年考研数学卷2第7题', '简单', '考研数学2021年数2真题', '设函数$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上连续，则$\\int_{0}^{1} f(x) dx =$', '[''$lim_{n→∞} \\\\sum_{k=1}^{n} f (\\\\frac{2k-1}{2n}) \\\\frac{1}{2n}$.'', ''$lim_{n→∞} \\\\sum_{k=1}^{n} f (\\\\frac{2k-1}{2n}) \\\\frac{1}{n}$.'', ''$lim_{n→∞} \\\\sum_{k=1}^{2n} f (\\\\frac{k-1}{2n}) \\\\frac{1}{n}$.'', ''$lim_{n→∞} \\\\sum_{k=1}^{2n} f (\\\\frac{k}{2n}) \\\\frac{2}{n}$.'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:14', 9, 'Mogullzr', '2026-01-29 14:19:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2932');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2932');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '2932');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2933, '2021年考研数学卷2第8题', '简单', '考研数学2021年数2真题', '二次型$f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{2} + x_{3})2 - (x_{3} - x_{1})2$的正惯性指数与负惯性指数依次为', '[''$2$，$0$'', ''$2$，$1$'', ''$1$，$1$'', ''$1$，$2$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:14', 9, 'Mogullzr', '2026-01-29 14:19:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2933');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2933');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2934, '2021年考研数学卷2第9题', '简单', '考研数学2021年数2真题', '设$3$阶矩阵$A = (α_{1}, α_{2}, α_{3})$，$B = (β_{1}, β_{2}, β_{3})$，若向量组$α_{1}$，$α_{2}$，$α_{3}$可以由向量组$β_{1}$，$β_{2}$线性表出，则', '[''$Ax = 0$的解均为$Bx = 0$的解.'', ''$A^{T}x = 0$的解均为$B^{T}x = 0$的解.'', ''$Bx = 0$的解均为$Ax = 0$的解.'', ''$B^{T}x = 0$的解均为$A^{T}x = 0$的解.'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:14', 9, 'Mogullzr', '2026-01-29 14:19:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2934');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '2934');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '2934');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2935, '2021年考研数学卷2第10题', '简单', '考研数学2021年数2真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
2 & −1 & 1 \\\\
−1 & 2 & −5 \\\\
\\end{array} \\right)$，若存在可逆矩阵$P$、$Q$使$PAQ$为对角矩阵，则$P$、$Q$可以分别为', '[''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 0 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right) ; \\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 1 \\\\\\\\\\n0 & 1 & 3 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n2 & −1 & 0 \\\\\\\\\\n−3 & 2 & 1 \\\\\\\\\\n\\\\end{array} \\\\right) ; \\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 0 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n2 & −1 & 0 \\\\\\\\\\n−3 & 2 & 1 \\\\\\\\\\n\\\\end{array} \\\\right) ; \\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 1 \\\\\\\\\\n0 & 1 & 3 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 0 \\\\\\\\\\n1 & 3 & 1 \\\\\\\\\\n\\\\end{array} \\\\right) ; \\\\left( \\\\begin{array}{ccc}\\n1 & 2 & −3 \\\\\\\\\\n0 & −1 & 2 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:14', 9, 'Mogullzr', '2026-01-29 14:19:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2935');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2935');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '2935');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2936, '2021年考研数学卷2第11题', '简单', '考研数学2021年数2真题', '（填空题）$\\int_{−∞}^{+∞} ∣x∣ ⋅ 3^{−x^{2}} dx =$', '[]', '$\\frac{1}{\\ln 3}$
', '由于被积函数$∣x∣3^{−x^{2}}$是偶函数，因此有：

$$
\\begin{array}{cc}
\\int_{−∞}^{+∞} ∣x∣3^{−x^{2}} dx & = 2 \\int_{0}^{+∞} x3^{−x^{2}} dx \\\\
 & = \\int_{0}^{+∞} 3^{−x^{2}} d (x^{2}) \\\\
\\end{array}
$$

令$t = x^{2}$，则：

$$
= − \\frac{3^{−t}}{\\ln 3}​_{0}^{+∞} = −\\frac{1}{\\ln 3} (\\lim_{t→∞} 3^{−t} - 1) = \\frac{1}{\\ln 3}
$$

因此，原积分值为$\\frac{1}{\\ln 3}$。
', 9, 'Mogullzr', '2026-01-29 14:19:14', 9, 'Mogullzr', '2026-01-29 14:19:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2936');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2936');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '2936');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2937, '2021年考研数学卷2第12题', '简单', '考研数学2021年数2真题', '（填空题）已知参数方程
$$
\\begin{cases} x = 2e^{t} + t + 1 \\\\ y = 4(t - 1)e^{t} + t^{2} \\end{cases}
$$
，求$\\frac{d^{2}y}{dx^{2}}​_{t=0} =$', '[]', '$\\frac{2}{3}$
', '首先，求一阶导数：

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{4  \\lbrack e^{t} + (t - 1)e^{t} \\rbrack  + 2t}{2e^{t} + 1} = \\frac{4te^{t} + 2t}{2e^{t} + 1} = 2t.
$$

接着，求二阶导数：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{d}{dx}(2t) = 2 ⋅ \\frac{1}{2e^{t} + 1}.
$$

最后，代入$t = 0$：

$$
\\frac{d^{2}y}{dx^{2}}​_{t=0} = \\frac{2}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:19:15', 9, 'Mogullzr', '2026-01-29 14:19:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2937');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2937');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2937');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2938, '2021年考研数学卷2第13题', '简单', '考研数学2021年数2真题', '（填空题）设函数$z = z(x, y)$由方程$(x + 1)z + y \\ln z - arctan(2xy) = 1$确定，求$\\frac{∂z}{∂x}​_{(0,2)} =$', '[]', '1
', '在等式$(x + 1)z + y \\ln z - arctan(2xy) = 1$两边对$x$求偏导，有：

$$
z + (x + 1) ⋅ \\frac{∂z}{∂x} + y ⋅ \\frac{1}{z} ⋅ \\frac{∂z}{∂x} - \\frac{2y}{1 + (2xy)2} = 0
$$

将$x = 0$，$y = 2$代入原方程，得$z + 2 \\ln z = 1$，易知$z = 1$。
再将$x = 0$、$y = 2$、$z = 1$代入偏导方程，解得：

$$
\\frac{∂z}{∂x}​_{(0,2)} = 1
$$

', 9, 'Mogullzr', '2026-01-29 14:19:15', 9, 'Mogullzr', '2026-01-29 14:19:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2938');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2938');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1086', '2938');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2939, '2021年考研数学卷2第14题', '简单', '考研数学2021年数2真题', '（填空题）设$f(t) = \\int_{1}^{t^{2}} dx \\int_{−∞}^{t} \\sin \\frac{x}{y} dy$，求$f^{′} (\\frac{π}{2}) =$', '[]', '$\\frac{π}{2} \\cos \\frac{2}{π}$
', '首先，函数定义为：

$$
f(t) = \\int_{1}^{t^{2}} dx \\int_{−∞}^{t} \\sin \\frac{x}{y}dy
$$

通过计算内层积分，得到：

$$
f(t) = \\int_{1}^{t}  \\lbrack − y \\cos \\frac{x}{y}​_{1}^{y^{2}} \\rbrack  dy
$$

进一步化简为：

$$
f(t) = \\int_{1}^{t} (−t \\cos t + t \\cos \\frac{1}{t}) dy
$$

对$f(t)$求导，得到：

$$
f^{′}(t) = −t \\cos t + t \\cos \\frac{1}{t}
$$

代入$t = \\frac{π}{2}$，得：

$$
f^{′} (\\frac{π}{2}) = \\frac{π}{2} \\cos \\frac{2}{π}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:15', 9, 'Mogullzr', '2026-01-29 14:19:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2939');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2939');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2939');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2940, '2021年考研数学卷2第15题', '简单', '考研数学2021年数2真题', '（填空题）求微分方程$y^{′′′} - y = 0$的通解$y =$', '[]', '


$$
y = C_{1}e^{x} + e^{−\\frac{1}{2}x} (C_{2} \\cos  (\\frac{\\sqrt{3}}{2}x) + C_{3} \\sin  (\\frac{\\sqrt{3}}{2}x)) ,  C_{1}, C_{2}, C_{3} ∈ R.
$$

', '
由特征方程$λ^{3} - 1 = 0$得


$$
λ_{1} = 1,  λ_{2,3} = −\\frac{1}{2} ± \\frac{\\sqrt{3}}{2}i
$$

故方程通解为

$$
y = C_{1}e^{x} + e^{−\\frac{1}{2}x} (C_{2} \\cos  (\\frac{\\sqrt{3}}{2}x) + C_{3} \\sin  (\\frac{\\sqrt{3}}{2}x)) ,  C_{1}, C_{2}, C_{3} ∈ R.
$$

', 9, 'Mogullzr', '2026-01-29 14:19:15', 9, 'Mogullzr', '2026-01-29 14:19:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2940');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2940');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '2940');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2941, '2021年考研数学卷2第16题', '简单', '考研数学2021年数2真题', '（填空题）设$f(x) = \\begin{vmatrix}
x & x & 1 & 2x\\\\
1 & x & 2 & −1\\\\
2 & 1 & x & 1\\\\
2 & −1 & 1 & x
\\end{vmatrix}$，求$x^{3}$项的系数。', '[]', '-5
', '
四阶行列式中含$x^{3}$的项为：

$$
(−1)τ(2134)a_{12}a_{21}a_{33}a_{44} = −x^{3}
$$

以及

$$
(−1)τ(4231)a_{14}a_{22}a_{33}a_{41} = −4x^{3}
$$

因此，$x^{3}$的系数为$−1 - 4 = −5$。
', 9, 'Mogullzr', '2026-01-29 14:19:15', 9, 'Mogullzr', '2026-01-29 14:19:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2941');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '2941');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2942, '2021年考研数学卷2第17题', '简单', '考研数学2021年数2真题', '（本题满分 10 分）求极限
$$
\\lim_{x→0} (\\frac{1 + \\int_{0}^{x} e^{t^{2}} dt}{e^{x} - 1} - \\frac{1}{\\sin x})
$$
', '[]', '$\\frac{1}{2}$
', '首先，将原极限表达式改写为通分形式：

$$
\\begin{array}{cc}
\\lim_{x→0} (\\frac{1 + \\int_{0}^{x} e^{t^{2}} dt}{e^{x} - 1} - \\frac{1}{\\sin x}) & = \\lim_{x→0} \\frac{\\sin x + \\sin x ⋅ \\int_{0}^{x} e^{t^{2}} dt - e^{x} + 1}{(e^{x} - 1) \\sin x} \\\\
\\end{array}
$$

接下来，将极限拆分为两部分：

$$
\\begin{array}{cc}
 & = \\lim_{x→0} \\frac{\\sin x - e^{x} + 1}{x^{2}} + \\lim_{x→0} \\frac{\\sin x ⋅ \\int_{0}^{x} e^{t^{2}} dt}{x^{2}} \\\\
\\end{array}
$$

利用泰勒展开计算第一部分：

$$
\\begin{array}{cc}
\\lim_{x→0} \\frac{\\sin x - e^{x} + 1}{x^{2}} & = \\lim_{x→0} \\frac{x + o(x^{2}) - (1 + x + \\frac{1}{2}x^{2} + o(x^{2})) + 1}{x^{2}} \\\\
 & = \\lim_{x→0} \\frac{−\\frac{1}{2}x^{2} + o(x^{2})}{x^{2}} = −\\frac{1}{2} \\\\
\\end{array}
$$

计算第二部分：

$$
\\begin{array}{cc}
\\lim_{x→0} \\frac{\\sin x ⋅ \\int_{0}^{x} e^{t^{2}} dt}{x^{2}} & = \\lim_{x→0} \\frac{\\int_{0}^{x} e^{t^{2}} dt}{x} \\\\
\\end{array}
$$

应用洛必达法则：

$$
\\begin{array}{cc}
\\lim_{x→0} \\frac{\\int_{0}^{x} e^{t^{2}} dt}{x} & = \\lim_{x→0} e^{x^{2}} = 1 \\\\
\\end{array}
$$

将两部分结果相加：

$$
\\begin{array}{c}
−\\frac{1}{2} + 1 = \\frac{1}{2} \\\\
\\end{array}
$$

因此，原极限值为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:19:15', 9, 'Mogullzr', '2026-01-29 14:19:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2942');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2942');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '2942');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2943, '2021年考研数学卷2第18题', '简单', '考研数学2021年数2真题', '（本题满分 12 分）已知函数$f(x) = \\frac{x∣x∣}{1+x}$，求曲线$y = f(x)$的凹凸区间及渐近线。', '[]', '
曲线$y = f(x)$的凹区间为$(−∞, −1)$和$(0, +∞)$，凸区间为$(−1, 0)$。渐近线为$x = −1$（铅垂渐近线），$y = x - 1$（当$x → +∞$时），和$y = −x + 1$（当$x → −∞$时）。
', '
因为


$$
f(x) = \\frac{x∣x∣}{1 + x} = \\begin{cases} \\frac{x^{2}}{1+x} & x > 0 \\\\ 0 & x = 0 \\\\ −\\frac{x^{2}}{1+x} & −1 < x < 0 \\\\ 不存在 & x = −1 \\\\ −\\frac{x^{2}}{1+x} & x < −1. \\end{cases}
$$

$f(x)$在$x = 0$连续。又


$$
f^{′}(x) = \\begin{cases} \\frac{2x+x^{2}}{(1+x)2} & x > 0 \\\\ −\\frac{2x+x^{2}}{(1+x)2} & −1 < x < 0 \\\\ −\\frac{2x+x^{2}}{(1+x)2} & x < −1. \\end{cases}
$$

因为$\\lim_{x→0^{+}} f^{′}(x) = \\lim_{x→0^{-}} f^{′}(x) = 0$，故$f_{+}^{′}(0) = f_{-}^{′}(0) = 0$，即$f^{′}(0) = 0$，从而


$$
f^{′}(x) = \\begin{cases} \\frac{2x+x^{2}}{(1+x)2} & x ≥ 0 \\\\ −\\frac{2x+x^{2}}{(1+x)2} & −1 < x < 0 \\\\ −\\frac{2x+x^{2}}{(1+x)2} & x < −1. \\end{cases}
$$

$f^{′}(x)$在$x = 0$处连续。又


$$
f^{′′}(x) = \\begin{cases} \\frac{(2+2x)(1+x)2-(2x+x^{2})⋅2(1+x)}{(1+x)4} = \\frac{2}{1+x} - \\frac{4x+2x^{2}}{(1+x)3} = \\frac{2}{(1+x)3} & x > 0 \\\\ −\\frac{2}{(1+x)3} & x < 0x \\neq −1. \\end{cases}
$$

因为$\\lim_{x→0^{+}} f^{′′}(x) = 2$，$\\lim_{x→0^{-}} f^{′′}(x) = −2$，故$f_{+}^{′′}(0) \\neq f_{-}^{′′}(0)$，从而$f^{′′}(0)$不存在，故


$$
f^{′′}(x) = \\begin{cases} \\frac{2}{(1+x)3} & x > 0 \\\\ −\\frac{2}{(1+x)3} & x < 0x \\neq −1. \\end{cases}
$$

当$x > 0$时，$f^{′′}(x) > 0$；当$−1 < x < 0$时，$f^{′′}(x) < 0$；当$x < −1$时，$f^{′′}(x) > 0$。
从而曲线$y = f(x)$的凹区间为$(−∞, −1)$和$(0, +∞)$，凸区间为$(−1, 0)$。
因$\\lim_{x→−1} f(x) = ∞$，故$x = −1$为曲线$y = f(x)$的一条铅垂渐近线。
因$\\lim_{x→∞} f(x) = \\lim_{x→∞} \\frac{x}{1+x}∣x∣ = +∞$，从而曲线$y = f(x)$无水平渐近线。
因


$$
k_{1} = \\lim_{x→+∞} \\frac{f(x)}{x} = \\lim_{x→+∞} \\frac{x^{2}}{(1 + x)x} = \\lim_{x→+∞} \\frac{x}{1 + x} = 1,
$$



$$
b_{1} = \\lim_{x→+∞} \\lbrack f(x) - x \\rbrack  = \\lim_{x→+∞} (\\frac{x^{2}}{1 + x} - x) = \\lim_{x→+∞} \\frac{x^{2} - x - x^{2}}{1 + x} = −1,
$$

故$y = x - 1$为$x → +∞$时曲线$y = f(x)$的一条斜渐近线。
因


$$
k_{2} = \\lim_{x→−∞} \\frac{f(x)}{x} = \\lim_{x→−∞} \\frac{−x^{2}}{(1 + x)x} = − \\lim_{x→−∞} \\frac{x}{1 + x} = −1,
$$



$$
b_{2} = \\lim_{x→−∞}(f(x) + x) = \\lim_{x→−∞} (−\\frac{x^{2}}{1 + x} + x) = \\lim_{x→−∞} \\frac{x + x^{2} - x^{2}}{1 + x} = 1,
$$

故$y = −x + 1$为$x → −∞$时曲线$y = f(x)$的一条斜渐近线。
', 9, 'Mogullzr', '2026-01-29 14:19:16', 9, 'Mogullzr', '2026-01-29 14:19:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2943');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2943');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '2943');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2944, '2021年考研数学卷2第19题', '简单', '考研数学2021年数2真题', '（本题满分$12$分）设函数$f(x)$满足$∫ \\frac{f(x)}{\\sqrt{x}} dx = \\frac{1}{6}x^{2} - x + C$，$L$为曲线$y = f(x)$（$4 ≤ x ≤ 9$），记$L$的长度为$S$，$L$绕$x$轴旋转曲面面积为$A$，求$S$和$A$。', '[]', '$S = \\frac{22}{3}$,$A = \\frac{425}{9}π$
', '在等式$∫ \\frac{f(x)}{\\sqrt{x}} dx = \\frac{1}{6}x^{2} - x + C$的两端对$x$求导，有


$$
\\frac{f(x)}{\\sqrt{x}} = \\frac{1}{3}x - 1,
$$

故


$$
f(x) = \\frac{1}{3}x\\sqrt{x} - \\sqrt{x}.
$$

进一步求导得


$$
f^{′}(x) = \\frac{1}{2}\\sqrt{x} - \\frac{1}{2\\sqrt{x}} = \\frac{1}{2} (\\sqrt{x} - \\frac{1}{\\sqrt{x}}) = \\frac{1}{2} ⋅ \\frac{x - 1}{\\sqrt{x}}.
$$

则弧长


$$
S = \\int_{4}^{9} \\sqrt{1 +  \\lbrack f^{′}(x) \\rbrack 2} dx = \\int_{4}^{9} \\frac{x + 1}{2\\sqrt{x}} dx = \\int_{4}^{9}(x + 1) d(\\sqrt{x}).
$$

换元后


$$
S = \\int_{2}^{3}(x^{2} + 1) dx = \\frac{1}{3}x^{3}​_{2}^{3} + 1 = \\frac{1}{3}(27 - 8) + 1 = \\frac{22}{3}.
$$

旋转体表面积


$$
A = 2π \\int_{4}^{9} f(x)\\sqrt{1 +  \\lbrack f^{′}(x) \\rbrack 2} dx = 2π \\int_{4}^{9} (\\frac{1}{3}x\\sqrt{x} - \\sqrt{x}) ⋅ \\frac{x + 1}{2\\sqrt{x}} dx.
$$

化简得


$$
A = 2π \\int_{4}^{9} (\\frac{1}{6}x^{2} - \\frac{1}{3}x - \\frac{1}{2}) dx = 2π ⋅ \\frac{425}{18} = \\frac{425}{9}π.
$$

', 9, 'Mogullzr', '2026-01-29 14:19:16', 9, 'Mogullzr', '2026-01-29 14:19:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2944');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2944');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2944');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2945, '2021年考研数学卷2第20题', '简单', '考研数学2021年数2真题', '（本题满分 12 分）设$y = y(x) (x > 0)$是微分方程$xy^{′} - 6y = −6$满足条件$y(\\sqrt{3}) = 10$的解，（Ⅰ）求$y(x)$；（Ⅱ）设$P$为曲线$y = y(x)$上一点，$I_{p}$为曲线$y = y(x)$上$P$点法线到$y$轴的截距，当$I_{p}$最小时，求$P$坐标。', '[]', '
（Ⅰ）$y(x) = 1 + \\frac{1}{3}x^{6}$
（Ⅱ）点$P$的坐标为$(1, \\frac{4}{3})$
', '
（Ⅰ）由$xy^{′} - 6y = −6$，可得$y^{′} - \\frac{6}{x}y = −\\frac{6}{x}$，于是

$$
\\begin{array}{cc}
y & = e^{∫ \\frac{6}{x} dx} (∫ −\\frac{6}{x} ⋅ \\frac{1}{x^{6}} dx + C) \\\\
 & = x^{6} (x^{−6} + C) = 1 + Cx^{6} \\\\
\\end{array}
$$

又$y(\\sqrt{3}) = 10$，代入得$C = \\frac{1}{3}$，因此$y(x) = 1 + \\frac{1}{3}x^{6}$。
（Ⅱ）曲线$y = y(x)$在点$P$的法线方程为

$$
Y - (1 + \\frac{1}{3}x^{6}) = −\\frac{1}{2x^{5}}(X - x)
$$

令$X = 0$，得

$$
Y = 1 + \\frac{1}{3}x^{6} + \\frac{1}{2x^{4}}
$$

设$g(x) = 1 + \\frac{1}{3}x^{6} + \\frac{1}{2x^{4}}$，其中$x > 0$，则

$$
\\begin{array}{cc}
g^{′}(x) & = 2x^{5} + \\frac{1}{2} ⋅ (−4)x^{−5} \\\\
 & = 2(x^{5} - x^{−5}) = 2 ⋅ \\frac{x^{10} - 1}{x^{5}} \\\\
\\end{array}
$$

令$g^{′}(x) = 0$，解得$x = 1$。
当$x > 1$时，$g^{′}(x) > 0$；当$0 < x < 1$时，$g^{′}(x) < 0$，故$x = 1$为唯一的极小值点，且为最小值点。
此时点$P$的坐标为$(1, \\frac{4}{3})$。
', 9, 'Mogullzr', '2026-01-29 14:19:16', 9, 'Mogullzr', '2026-01-29 14:19:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2945');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2945');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '2945');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2946, '2021年考研数学卷2第21题', '简单', '考研数学2021年数2真题', '（本题满分$12$分）设平面区域$D$由曲线$(x^{2} + y^{2})2 = x^{2} - y^{2} (x ≥ 0,  y ≥ 0)$与$x$轴围成，计算二重积分$\\iint_{D} xy dx dy$。', '[]', '

$$
\\frac{1}{48}
$$

', '
首先，将积分区域$D$用极坐标表示，并计算二重积分：

$$
\\iint_{D} xy dx dy = \\int_{0}^{\\frac{π}{4}} dθ \\int_{0}^{\\sqrt{\\cos 2θ}} r \\cos θ ⋅ r \\sin θ ⋅ r dr
$$

化简被积函数：

$$
= \\int_{0}^{\\frac{π}{4}} \\cos θ \\sin θ \\int_{0}^{\\sqrt{\\cos 2θ}} r^{3} dr
$$

计算内层积分：

$$
\\int_{0}^{\\sqrt{\\cos 2θ}} r^{3} dr = \\frac{1}{4}r^{4}​_{0}^{\\sqrt{\\cos 2θ}} = \\frac{1}{4} \\cos^{2} 2θ
$$

代入外层积分：

$$
= \\int_{0}^{\\frac{π}{4}} \\sin θ \\cos θ ⋅ \\frac{1}{4} \\cos^{2} 2θ dθ
$$

利用三角恒等式$\\sin θ \\cos θ = \\frac{1}{2} \\sin 2θ$：

$$
= \\frac{1}{4} \\int_{0}^{\\frac{π}{4}} \\frac{1}{2} \\sin 2θ ⋅ \\cos^{2} 2θ dθ = \\frac{1}{8} \\int_{0}^{\\frac{π}{4}} \\sin 2θ \\cos^{2} 2θ dθ
$$

注意到$\\sin 2θ dθ = −\\frac{1}{2}d(\\cos 2θ)$，因此：

$$
= −\\frac{1}{16} \\int_{0}^{\\frac{π}{4}} \\cos^{2} 2θ d(\\cos 2θ)
$$

计算积分：

$$
= −\\frac{1}{16} ⋅ \\frac{1}{3} \\cos^{3} 2θ​_{0}^{\\frac{π}{4}} = −\\frac{1}{48} (\\cos^{3} \\frac{π}{2} - \\cos^{3} 0)
$$

代入上下限：

$$
\\cos \\frac{π}{2} = 0,  \\cos 0 = 1
$$



$$
= −\\frac{1}{48}(0 - 1) = \\frac{1}{48}
$$

最终结果为：

$$
\\iint_{D} xy dx dy = \\frac{1}{48}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:16', 9, 'Mogullzr', '2026-01-29 14:19:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2946');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2946');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '2946');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2947, '2021年考研数学卷2第22题', '简单', '考研数学2021年数2真题', '（本题满分 12 分）设矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
1 & 2 & 0 \\\\
1 & a & b \\\\
\\end{array} \\right)$仅有两个不同特征值，若$A$相似于对角矩阵，求$a, b$的值，并求可逆矩阵$P$，使$P^{−1}AP$为对角矩阵。', '[]', '
矩阵$A$仅有两个不同特征值且相似于对角矩阵时，参数$a, b$有两种情况：
当$b = 1$时，$a = 1$，可逆矩阵$P = \\left( \\begin{array}{ccc}
−1 & 0 & 1 \\\\
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)$，使得$P^{−1}AP = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right)$。当$b = 3$时，$a = −1$，可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)$，使得$P^{−1}AP = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 3 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$。
', '
首先计算特征多项式：

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 2 & −1 & 0\\\\
−1 & λ - 2 & 0\\\\
−1 & −a & λ - b
\\end{vmatrix} = (λ - b)  \\lbrack (λ - 2)2 - 1 \\rbrack
$$



$$
= (λ - b)(λ^{2} - 4λ + 3) = (λ - b)(λ - 1)(λ - 3)
$$

因此，矩阵$A$的特征值为$λ_{1} = b$，$λ_{2} = 1$，$λ_{3} = 3$。

情况①：若$b = 1$
此时$λ_{1} = λ_{2} = 1$是$A$的二重特征值，$λ_{3} = 3$。由于$A$可相似对角化，故$r(E - A) = 1$。
计算：

$$
E - A = \\left( \\begin{array}{ccc}
−1 & −1 & 0 \\\\
−1 & −1 & 0 \\\\
−1 & −a & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 1 - a & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

由秩为 1 可得$a = 1$。
求解属于特征值$1$的特征向量：

$$
(E - A)x = 0
$$

得到两个线性无关的特征向量：

$$
α_{1} = (−1, 1, 0)T,  α_{2} = (0, 0, 1)T
$$

再求解属于特征值$3$的特征向量：

$$
3E - A = \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
−1 & 1 & 0 \\\\
−1 & −1 & 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
0 & 1 & −1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

得到线性无关的特征向量：

$$
α_{3} = (1, 1, 1)T
$$

取$P = (α_{1}, α_{2}, α_{3})$，则$P$可逆，且满足：

$$
P^{−1}AP = \\left( \\begin{array}{ccc}
1 &  &  \\\\
 & 1 &  \\\\
 &  & 3 \\\\
\\end{array} \\right)
$$


情况②：若$b = 3$
此时$λ_{1} = λ_{3} = 3$是$A$的二重特征值，$λ_{2} = 1$。由于$A$可相似对角化，故$r(3E - A) = 1$。
计算：

$$
3E - A = \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
−1 & 1 & 0 \\\\
−1 & −a & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
0 & a + 1 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

由秩为 1 可得$a = −1$。
求解属于特征值$3$的特征向量：

$$
(3E - A)x = 0
$$

得到两个线性无关的特征向量：

$$
β_{1} = (1, 1, 0)T,  β_{2} = (0, 0, 1)T
$$

再求解属于特征值$1$的特征向量：

$$
E - A = \\left( \\begin{array}{ccc}
−1 & −1 & 0 \\\\
−1 & −1 & 0 \\\\
−1 & 1 & −2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 1 & −1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

得到线性无关的特征向量：

$$
β_{3} = (−1, 1, 1)T
$$

取$P = (β_{1}, β_{2}, β_{3})$，则$P$可逆，且满足：

$$
P^{−1}AP = \\left( \\begin{array}{ccc}
3 &  &  \\\\
 & 3 &  \\\\
 &  & 1 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:19:17', 9, 'Mogullzr', '2026-01-29 14:19:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2947');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2947');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2948, '2021年考研数学卷3第1题', '简单', '考研数学2021年数3真题', '当$x → 0$时，$\\int_{0}^{x^{2}}(e^{t^{3}} - 1) dt$是$x^{7}$的', '[''低阶无穷小.'', ''等价无穷小.'', ''高阶无穷小.'', ''同阶但非等价无穷小.'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:19', 9, 'Mogullzr', '2026-01-29 14:19:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2948');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2948');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2948');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2949, '2021年考研数学卷3第2题', '简单', '考研数学2021年数3真题', '设函数
$$
f(x) = \\begin{cases} \\frac{e^{x}-1}{x} & x0 \\\\ 1 & x = 0 \\end{cases}
$$
在$x = 0$处', '[''连续且取极大值.'', ''连续且取极小值.'', ''可导且导数为0.'', ''可导且导数不为0.'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:19', 9, 'Mogullzr', '2026-01-29 14:19:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2949');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2949');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '2949');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2950, '2021年考研数学卷3第3题', '简单', '考研数学2021年数3真题', '设函数$f(x) = ax + b \\ln x$（$a > 0$）有两个零点，则$\\frac{b}{a}$的取值范围是', '[''$(e, +∞)$.'', ''$(−∞, e)$.'', ''$(0, \\\\frac{1}{e})$.'', ''$(\\\\frac{1}{e}, +∞)$.'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:19:19', 9, 'Mogullzr', '2026-01-29 14:19:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2950');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2950');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '2950');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2951, '2021年考研数学卷3第4题', '简单', '考研数学2021年数3真题', '设函数$f(x, y)$可微，$f(x + 1, e^{x}) = x(x + 1)2$，$f(x, x^{2}) = 2x^{2} \\ln x$，则$df(1, 1) =$', '[''$dx + dy$.'', ''$dx - dy$.'', ''$dy$.'', ''$−dy$.'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:19', 9, 'Mogullzr', '2026-01-29 14:19:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2951');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2951');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '2951');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2952, '2021年考研数学卷3第5题', '简单', '考研数学2021年数3真题', '二次型$f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{2} + x_{3})2 - (x_{3} - x_{1})2$的正惯性指数与负惯性指数依次为', '[''2,0.'', ''1,1.'', ''2,1.'', ''1,2.'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:20', 9, 'Mogullzr', '2026-01-29 14:19:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2952');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '2952');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2953, '2021年考研数学卷3第6题', '简单', '考研数学2021年数3真题', '设$A = (α_{1}, α_{2}, α_{3}, α_{4})$为 4 阶正交矩阵，若矩阵$B = \\left( \\begin{array}{c}
α_{1}^{T} \\\\
α_{2}^{T} \\\\
α_{3}^{T} \\\\
\\end{array} \\right)$，$β = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$，$k$表示任意常数，则线性方程组$Bx = β$的通解$x =$（  ）', '[''$α_{2} + α_{3} + α_{4} + kα_{1}$'', ''$α_{1} + α_{3} + α_{4} + kα_{2}$'', ''$α_{1} + α_{2} + α_{4} + kα_{3}$'', ''$α_{1} + α_{2} + α_{3} + kα_{4}$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:20', 9, 'Mogullzr', '2026-01-29 14:19:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2953');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '2953');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2954, '2021年考研数学卷3第7题', '简单', '考研数学2021年数3真题', '设$A = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
2 & −1 & 1 \\\\
−1 & 2 & −5 \\\\
\\end{array} \\right)$，$P$为三阶可逆矩阵，$Q$为三阶矩阵，使$PAQ$为对角矩阵，则$P$，$Q$可以分别取', '[''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 0 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$，$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 1 \\\\\\\\\\n0 & 1 & 3 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$。'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n2 & −1 & 0 \\\\\\\\\\n−3 & 2 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$，$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 0 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$。'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n2 & −1 & 0 \\\\\\\\\\n−3 & 2 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$，$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 1 \\\\\\\\\\n0 & 1 & 3 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$。'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 0 & 0 \\\\\\\\\\n0 & 1 & 0 \\\\\\\\\\n1 & 3 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$，$\\\\left( \\\\begin{array}{ccc}\\n1 & 2 & −3 \\\\\\\\\\n0 & −1 & 2 \\\\\\\\\\n0 & 0 & 1 \\\\\\\\\\n\\\\end{array} \\\\right)$。'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:20', 9, 'Mogullzr', '2026-01-29 14:19:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '2954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '2954');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2955, '2021年考研数学卷3第8题', '简单', '考研数学2021年数3真题', '设随机事件$A$、$B$，下列不成立的是', '[''若$P(A∣B) = P$，则$P(\\\\overline{A}∣\\\\overline{B}) = P(\\\\overline{A})$。'', ''若$P(A∣B) > P$，则$P(\\\\overline{A}∣\\\\overline{B}) > P(\\\\overline{A})$。'', ''若$P(A∣B) > P(\\\\overline{A}∣\\\\overline{B})$，则$P(A∣B) > P$。'', ''若$P(A∣A ∪ B) > P(\\\\overline{A}∣A ∪ B)$，则$P > P$。'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:20', 9, 'Mogullzr', '2026-01-29 14:19:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2955');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '2955');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2956, '2021年考研数学卷3第9题', '简单', '考研数学2021年数3真题', '设$(X_{1}, Y_{1})$，$(X_{2}, Y_{2})$，…，$(X_{n}, Y_{n})$为来自总体$N(μ_{1}, μ_{2}; σ_{1}^{2}, σ_{2}^{2}; ρ)$的简单随机样本，$θ = μ_{1} - μ_{2}$，$\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，$\\overline{Y} = \\frac{1}{n} \\sum_{i=1}^{n} Y_{i}$，$\\hat{θ} = \\overline{X} - \\overline{Y}$，则', '[''$E(\\\\hat{θ}) = θ$，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}}{n}$。'', ''$E(\\\\hat{θ}) = θ$，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}-2ρσ_{1}σ_{2}}{n}$。'', ''$E(\\\\hat{θ}) \\\\neq θ$，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}}{n}$。'', ''$E(\\\\hat{θ}) \\\\neq θ$，$D(\\\\hat{θ}) = \\\\frac{σ_{1}^{2}+σ_{2}^{2}-2ρσ_{1}σ_{2}}{n}$。'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:21', 9, 'Mogullzr', '2026-01-29 14:19:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2956');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2956');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '2956');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2957, '2021年考研数学卷3第10题', '简单', '考研数学2021年数3真题', '设总体$X$的概率分布为

$$
P\\{X = 1\\} = \\frac{1 - θ}{2},  P\\{X = 2\\} = P\\{X = 3\\} = \\frac{1 + θ}{4}
$$
利用来自总体的样本值$1, 3, 2, 2, 1, 3, 1, 2$，可得$θ$的最大似然估计值为', '[''$\\\\frac{1}{4}$。'', ''$\\\\frac{3}{8}$。'', ''$\\\\frac{1}{2}$。'', ''$\\\\frac{5}{2}$。'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:19:21', 9, 'Mogullzr', '2026-01-29 14:19:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2957');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '2957');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '2957');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2958, '2021年考研数学卷3第11题', '简单', '考研数学2021年数3真题', '（填空题）若$y = \\cos (e^{−\\sqrt{x}})$，求$\\frac{dy}{dx}$在$x = 1$处的值。', '[]', '\\[\\frac{\\sin \\frac{1}{e}}{2 e} \\]
', '
给定导数表达式：
\\[\\frac{d y}{d x} = -\\sin e^{-\\sqrt{x}} \\left( e^{-\\sqrt{x}} \\cdot \\frac{1}{-2 \\sqrt{x}} \\right) \\]
在$x = 1$处的导数值为：
\\[\\left. \\frac{d y}{d x} \\right|_{x=1} = \\frac{\\sin \\frac{1}{e}}{2 e} \\]
', 9, 'Mogullzr', '2026-01-29 14:19:21', 9, 'Mogullzr', '2026-01-29 14:19:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2958');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2958');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2958');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2959, '2021年考研数学卷3第12题', '简单', '考研数学2021年数3真题', '（填空题）计算$\\int_{\\sqrt{5}}^{5} \\frac{x}{\\sqrt{∣x^{2}-9∣}} dx$', '[]', '6
', '
计算以下积分：

$$
\\int_{\\sqrt{5}}^{3} \\frac{x}{\\sqrt{9 - x^{2}}} dx + \\int_{3}^{5} \\frac{x}{\\sqrt{x^{2} - 9}} dx
$$

第一步：简化第一个积分
令$u = 9 - x^{2}$，则$du = −2x dx$，即$x dx = −\\frac{1}{2}du$。积分限变为：
当$x = \\sqrt{5}$，$u = 9 - 5 = 4$当$x = 3$，$u = 9 - 9 = 0$
因此，第一个积分可表示为：

$$
\\int_{\\sqrt{5}}^{3} \\frac{x}{\\sqrt{9 - x^{2}}} dx = −\\frac{1}{2} \\int_{4}^{0} \\frac{du}{\\sqrt{u}} = \\frac{1}{2} \\int_{0}^{4} u^{−1/2} du
$$

第二步：简化第二个积分
令$v = x^{2} - 9$，则$dv = 2x dx$，即$x dx = \\frac{1}{2}dv$。积分限变为：
当$x = 3$，$v = 9 - 9 = 0$当$x = 5$，$v = 25 - 9 = 16$
因此，第二个积分可表示为：

$$
\\int_{3}^{5} \\frac{x}{\\sqrt{x^{2} - 9}} dx = \\frac{1}{2} \\int_{0}^{16} v^{−1/2} dv
$$

第三步：计算积分
计算第一个积分：

$$
\\frac{1}{2} \\int_{0}^{4} u^{−1/2} du = \\frac{1}{2}  \\lbrack 2u^{1/2} \\rbrack _{0}^{4} = \\sqrt{4} - \\sqrt{0} = 2
$$

计算第二个积分：

$$
\\frac{1}{2} \\int_{0}^{16} v^{−1/2} dv = \\frac{1}{2}  \\lbrack 2v^{1/2} \\rbrack _{0}^{16} = \\sqrt{16} - \\sqrt{0} = 4
$$

第四步：求和
将两个积分结果相加：

$$
2 + 4 = 6
$$

因此，最终结果为：

$$
6
$$

', 9, 'Mogullzr', '2026-01-29 14:19:21', 9, 'Mogullzr', '2026-01-29 14:19:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2959');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2959');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '2959');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2960, '2021年考研数学卷3第13题', '简单', '考研数学2021年数3真题', '（填空题）设平面区域$D$由曲线$y = \\sqrt{x} ⋅ \\sin πx$（$0 ≤ x ≤ 1$）与$x$轴围成，求$D$绕$x$轴旋转所成旋转体的体积$​$。', '[]', '$\\frac{π}{4}$
', '
首先，我们计算体积$V$：

$$
V = π \\int_{0}^{1}(\\sqrt{x} \\sin πx)2dx = π \\int_{0}^{1} x \\sin^{2} πx dx
$$

进行变量替换，设$πx = t$，则$dx = \\frac{dt}{π}$，积分限变为$0$到$π$：

$$
V = \\frac{1}{π} \\int_{0}^{π} t \\sin^{2} t dt
$$

利用三角恒等式$\\sin^{2} t = \\frac{1-\\cos 2t}{2}$，积分变为：

$$
V = \\frac{1}{2π} \\int_{0}^{π} t(1 - \\cos 2t) dt
$$

拆分为两部分：

$$
V = \\frac{1}{2π} (\\int_{0}^{π} t dt - \\int_{0}^{π} t \\cos 2t dt)
$$

计算第一部分：

$$
\\int_{0}^{π} t dt = \\frac{π^{2}}{2}
$$

计算第二部分，利用分部积分：

$$
\\int_{0}^{π} t \\cos 2t dt = \\frac{t \\sin 2t}{2}​_{0}^{π} - \\frac{1}{2} \\int_{0}^{π} \\sin 2t dt = 0 - \\frac{1}{2} (−\\frac{\\cos 2t}{2}) ​_{0}^{π} = 0
$$

因此，体积为：

$$
V = \\frac{1}{2π} (\\frac{π^{2}}{2} - 0) = \\frac{π}{4}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:21', 9, 'Mogullzr', '2026-01-29 14:19:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2960');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2960');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '2960');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2961, '2021年考研数学卷3第14题', '简单', '考研数学2021年数3真题', '（填空题）求差分方程$Δy_{t} = t$的通解', '[]', '

$$
y = \\frac{1}{2}t^{2} - \\frac{1}{2}t + C
$$

', '
齐次解为$y = C$。设特解形式为：

$$
y^{∗} = \\frac{1}{2}(at + b)
$$

将特解代入原方程：

$$
(t + 1)(a(t + 1) + b) - t(at + b) = t
$$

展开并整理方程：

$$
2at + a + b = t
$$

比较系数解得：

$$
a = \\frac{1}{2},  b = −\\frac{1}{2}
$$

因此，通解为：

$$
y = y^{∗} + \\bar{y} = \\frac{1}{2}t^{2} - \\frac{1}{2}t + C
$$

其中$C$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:19:22', 9, 'Mogullzr', '2026-01-29 14:19:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2961');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2961');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '2961');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2962, '2021年考研数学卷3第15题', '简单', '考研数学2021年数3真题', '（填空题）设
$$
f(x) = \\begin{vmatrix}
x & x & 1 & 2x\\\\
1 & x & 2 & −1\\\\
2 & 1 & x & 1\\\\
2 & −1 & 1 & x
\\end{vmatrix} ,
$$
求展开式中$x^{3}$项的系数。', '[]', '-5
', '
设行列式

$$
f(x) = \\begin{vmatrix}
x & x & 1 & 2x\\\\
1 & x & 2 & −1\\\\
2 & 1 & x & 1\\\\
2 & −1 & 1 & x
\\end{vmatrix}
$$

将其按第一行展开，并计算各子式：

$$
\\begin{array}{cccccccccccccc}
f(x) & \\begin{array}{ccc}
x & 2 & −1 \\\\
1 & x & 1 \\\\
−1 & 1 & x \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & x & 2 & −1 & 1 & 2 & −1 & 1 & x & −1 & 1 & x & 2 \\\\
 &  & 1 & x & 1 & 2 & x & 1 & 2 & 1 & 1 & 2 & 1 & x \\\\
 & = xA - xB + C - 2xD &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & −1 & 1 & x & 2 & 1 & x & 2 & −1 & x & 2 & −1 & 1 \\\\
\\end{array}
$$

计算得

$$
A = x^{3} - 4x - 3,  B = x^{2} - 2x + 1,  C = −2x^{2} + 3x + 5,  D = 2x^{2} - x - 7
$$

代入得

$$
f(x) = x^{4} - 5x^{3} - 2x^{2} + 13x + 5
$$

故 x^3 项的系数为 -5.

$$
−5​
$$

', 9, 'Mogullzr', '2026-01-29 14:19:22', 9, 'Mogullzr', '2026-01-29 14:19:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2962');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '2962');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '2962');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2963, '2021年考研数学卷3第16题', '简单', '考研数学2021年数3真题', '（填空题）甲乙两个盒子中各装有 \\(2\\) 个红球和 \\(2\\) 个白球，先从甲盒中任取一球，观察颜色后放入乙盒中，再从乙盒中任取一球，令 \\(X\\) 和 \\(Y\\) 分别表示从甲盒和乙盒中取到的红球个数，求 \\(X\\) 与 \\(Y\\) 的相关系数', '[]', '$\\frac{1}{5}$
', '详解
随机变量$X$和$Y$的分布分别为：

$$
X ∼ \\left( \\begin{array}{cc}
0 & 1 \\\\
\\frac{1}{2} & \\frac{1}{2} \\\\
\\end{array} \\right) ,  Y ∼ \\left( \\begin{array}{cc}
0 & 1 \\\\
\\frac{1}{2} & \\frac{1}{2} \\\\
\\end{array} \\right)
$$

计算得到协方差和方差：

$$
cov(X, Y) = \\frac{1}{20},  DX = \\frac{1}{4},  DY = \\frac{1}{4}
$$

因此，相关系数为：

$$
ρ_{XY} = \\frac{cov(X, Y)}{\\sqrt{DX ⋅ DY}} = \\frac{\\frac{1}{20}}{\\sqrt{\\frac{1}{4} ⋅ \\frac{1}{4}}} = \\frac{1}{5}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:22', 9, 'Mogullzr', '2026-01-29 14:19:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2963');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '2963');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '2963');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2964, '2021年考研数学卷3第17题', '简单', '考研数学2021年数3真题', '（本题满分 10 分）已知$\\lim_{x→0}  \\lbrack α arctan \\frac{1}{x} + (1 + ∣x∣)x1​ \\rbrack$存在，求$α$的值。', '[]', '$α = \\frac{1}{π} (\\frac{1}{e} - e)$
', '
要使极限存在，必须保证左右极限相等。
考虑$x → 0^{+}$时的极限：

$$
\\lim_{x→0^{+}}  \\lbrack α arctan \\frac{1}{x} + (1 + ∣x∣)x1​ \\rbrack  = \\frac{π}{2}α + e
$$

再考虑$x → 0^{−}$时的极限：

$$
\\lim_{x→0^{−}}  \\lbrack α arctan \\frac{1}{x} + (1 + ∣x∣)x1​ \\rbrack  = −\\frac{π}{2}α + \\frac{1}{e}
$$

令左右极限相等，得到方程：

$$
\\frac{π}{2}α + e = −\\frac{π}{2}α + \\frac{1}{e}
$$

解得：

$$
α = \\frac{1}{π} (\\frac{1}{e} - e)
$$

', 9, 'Mogullzr', '2026-01-29 14:19:22', 9, 'Mogullzr', '2026-01-29 14:19:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2964');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '2964');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '2964');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2965, '2021年考研数学卷3第18题', '简单', '考研数学2021年数3真题', '（本题满分12分）求函数

$$
f(x, y) = 2 \\ln ∣x∣ + \\frac{(x - 1)2 + y^{2}}{2x^{2}}
$$
的极值。', '[]', '
函数在点$(1, 0)$处取极小值$2$，在点$(\\frac{1}{2}, 0)$处取极小值$\\frac{1}{2} - 2 \\ln 2$。
', '
(1) 求驻点：

$$
\\begin{cases} f_{x}^{′} = \\frac{2x^{2}+x-1-y^{2}}{x^{3}} = 0 \\\\ f_{y}^{′} = \\frac{y}{x^{2}} = 0 \\end{cases}
$$

即：

$$

$$

解得驻点$(1, 0)$和$(\\frac{1}{2}, 0)$。
(2) 计算二阶偏导数：

$$
\\begin{cases} f_{xx}^{∗} = \\frac{(4x+1)x-3(2x^{2}+x-1-y^{2})}{x^{4}} \\\\ f_{xy}^{∗} = \\frac{−2y}{x^{3}} \\\\ f_{yy}^{∗} = \\frac{1}{x^{2}} \\end{cases}
$$

(3) 极值判定：
在驻点$(1, 0)$处（注：原解析中$(−1, 0)$应为$(1, 0)$）：

$$
A = 3,  B = 0,  C = 1
$$


$$
AC - B^{2} = 3 > 0,  A > 0
$$

故$f(x, y)$在$(1, 0)$处取极小值 2。
在驻点$(\\frac{1}{2}, 0)$处：

$$
A = 24,  B = 0,  C = 4
$$


$$
AC - B^{2} = 96 > 0
$$

故$f(x, y)$在$(\\frac{1}{2}, 0)$处取极小值$\\frac{1}{2} - 2 \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:19:22', 9, 'Mogullzr', '2026-01-29 14:19:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2965');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '2965');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '2965');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2966, '2021年考研数学卷3第19题', '简单', '考研数学2021年数3真题', '（本题满分12分）设有界区域$D$是$x^{2} + y^{2} = 1$和直线$y = x$以及$x$轴在第一象限围成的部分，计算二重积分
$$
\\iint_{D} e^{(x+y)2}(x^{2} - y^{2}) dx dy.
$$
', '[]', '$\\frac{1}{8}e^{2} - \\frac{1}{4}e + \\frac{1}{8}$
', '
设有界区域$D$为单位圆在第一象限中由$x$轴和直线$y = x$所截的扇形区域，其极坐标表示为$0 ≤ r ≤ 1$，$0 ≤ θ ≤ \\frac{π}{4}$。计算二重积分

$$
I = \\iint_{D} e^{(x+y)2}(x^{2} - y^{2}) dx dy.
$$

作变量代换$u = x + y$，$v = x - y$，则雅可比行列式为$\\frac{1}{2}$，且$x^{2} - y^{2} = uv$，$(x + y)2 = u^{2}$。积分变为

$$
I = \\frac{1}{2} \\iint_{D^{′}} e^{u^{2}}uv du dv,
$$

其中$D^{′}$为$D$在$uv$平面上的对应区域，由$v = 0$，$v = u$及圆$u^{2} + v^{2} = 2$围成。
将$D^{′}$按$u$的范围分为两部分：
当$0 ≤ u ≤ 1$时，$0 ≤ v ≤ u$；当$1 ≤ u ≤ \\sqrt{2}$时，$0 ≤ v ≤ \\sqrt{2 - u^{2}}$。
则

$$
\\iint_{D^{′}} e^{u^{2}}uv du dv = \\int_{0}^{1} \\int_{0}^{u} e^{u^{2}}uv dv du + \\int_{1}^{\\sqrt{2}} \\int_{0}^{\\sqrt{2-u^{2}}} e^{u^{2}}uv dv du.
$$

计算内层积分：

$$
\\int_{0}^{u} v dv = \\frac{u^{2}}{2},  \\int_{0}^{\\sqrt{2-u^{2}}} v dv = \\frac{2 - u^{2}}{2}.
$$

代入得

$$
\\iint_{D^{′}} e^{u^{2}}uv du dv = \\frac{1}{2} \\int_{0}^{1} e^{u^{2}}u^{3} du + \\int_{1}^{\\sqrt{2}} e^{u^{2}}u (1 - \\frac{u^{2}}{2}) du.
$$

计算各定积分：

$$
\\int_{0}^{1} e^{u^{2}}u^{3} du =  \\lbrack \\frac{1}{2}e^{u^{2}}(u^{2} - 1) \\rbrack _{0}^{1} = \\frac{1}{2},
$$



$$
\\int_{1}^{\\sqrt{2}} e^{u^{2}}u du =  \\lbrack \\frac{1}{2}e^{u^{2}} \\rbrack _{1}^{\\sqrt{2}} = \\frac{1}{2}(e^{2} - e),
$$



$$
\\int_{1}^{\\sqrt{2}} e^{u^{2}}u^{3} du =  \\lbrack \\frac{1}{2}e^{u^{2}}(u^{2} - 1) \\rbrack _{1}^{\\sqrt{2}} = \\frac{1}{2}e^{2}.
$$

因此，

$$
\\iint_{D^{′}} e^{u^{2}}uv du dv = \\frac{1}{2} ⋅ \\frac{1}{2} + \\frac{1}{2}(e^{2} - e) - \\frac{1}{2} ⋅ \\frac{1}{2}e^{2} = \\frac{1}{4} + \\frac{1}{2}e^{2} - \\frac{1}{2}e - \\frac{1}{4}e^{2} = \\frac{1}{4} + \\frac{1}{4}e^{2} - \\frac{1}{2}e.
$$

于是

$$
I = \\frac{1}{2} (\\frac{1}{4} + \\frac{1}{4}e^{2} - \\frac{1}{2}e) = \\frac{1}{8} + \\frac{1}{8}e^{2} - \\frac{1}{4}e = \\frac{1}{8}(1 + e^{2} - 2e) = \\frac{1}{8}(e - 1)2.
$$

故原积分的值为

$$
\\frac{(e - 1)2}{8}​.
$$

', 9, 'Mogullzr', '2026-01-29 14:19:22', 9, 'Mogullzr', '2026-01-29 14:19:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2966');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '2966');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '2966');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2967, '2021年考研数学卷3第20题', '简单', '考研数学2021年数3真题', '（本题满分 12 分）设$n$为正整数，$y = y_{n}(x)$是微分方程

$$
xy^{′} - (n + 1)y = 0
$$
满足条件$y_{n}(1) = \\frac{1}{n(n+1)}$的解。', '[]', '
$y_{n}(x) = \\frac{1}{n(n+1)}x^{n+1}$收敛域为$\\lbrack −1, 1 \\rbrack$，和函数为$S(x) = \\begin{cases} (1 - x) \\ln(1 - x) + x & x ∈  \\lbrack −1, 1) \\\\ 1 & x = 1 \\end{cases}$
', '
(1) 微分方程$y^{′} - \\frac{n+1}{x}y = 0$的通解为：

$$
y = Ce^{∫ \\frac{n+1}{x}dx} = Cx^{n+1}
$$

代入初始条件$y_{n}(1) = \\frac{1}{n(n+1)}$得：

$$
C = \\frac{1}{n(n + 1)}
$$

因此特解为：

$$
y_{n}(x) = \\frac{1}{n(n + 1)}x^{n+1}
$$


(2) 级数$\\sum_{n=1}^{∞} \\frac{1}{n(n+1)}x^{n+1}$的收敛半径为 1。在$x = −1$处收敛，在$x = 1$处需单独判断。
设和函数为：

$$
S(x) = \\sum_{n=1}^{∞} \\frac{1}{n(n + 1)}x^{n+1} = \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n} - \\sum_{n=1}^{∞} \\frac{x^{n+1}}{n + 1}
$$

通过逐项求导和积分可得：

$$
S(x) = (1 - x) \\ln(1 - x) + x,  x ∈ (−1, 1)
$$

由于$S(x)$在$\\lbrack −1, 1 \\rbrack$上连续，且$S(1) = \\lim_{x→1^{−}} S(x) = 1$，故和函数为：

$$
S(x) = \\begin{cases} (1 - x) \\ln(1 - x) + x & x ∈  \\lbrack −1, 1) \\\\ 1 & x = 1 \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:23', 9, 'Mogullzr', '2026-01-29 14:19:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2967');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '2967');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '2967');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2968, '2021年考研数学卷3第21题', '简单', '考研数学2021年数3真题', '(本题满分 12 分)设矩阵$A = \\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
1 & 2 & 0 \\\\
1 & a & b \\\\
\\end{array} \\right)$仅有两个不同的特征值。若$A$相似于对角矩阵，求$a$，$b$的值，并求可逆矩阵$P$，使$P^{−1}AP$为对角矩阵。', '[]', '
当$a = −1$，$b = 3$时，可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)$，使得$P^{−1}AP$为对角矩阵。
当$a = 1$，$b = 1$时，可逆矩阵$P = \\left( \\begin{array}{ccc}
−1 & 0 & 1 \\\\
1 & 0 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)$，使得$P^{−1}AP$为对角矩阵。
', '
由行列式计算得到特征方程：

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 2 & −1 & 0\\\\
−1 & λ - 2 & 0\\\\
−1 & −a & λ - b
\\end{vmatrix} = (λ - b)(λ - 3)(λ - 1) = 0
$$

解得特征值$λ_{1} = 3$，$λ_{2} = 1$，$λ_{3} = b$。
情况1：$b = 3$
对于二重特征值$λ = 3$，矩阵为：

$$
3E - A = \\left( \\begin{array}{ccc}
1 & −1 & 0 \\\\
−1 & 1 & 0 \\\\
−1 & −a & 0 \\\\
\\end{array} \\right)
$$

要求有两个线性无关的特征向量，矩阵秩必须为1，因此：

$$
−a - 1 = 0 ⇒ a = −1
$$

此时特征向量为$α_{1} = (1, 1, 0)T$，$α_{2} = (0, 0, 1)T$。对于$λ_{3} = 1$，对应的特征向量为$α_{3} = (−1, 1, 1)T$。
情况2：$b = 1$
对于二重特征值$λ = 1$，矩阵为：

$$
E - A = \\left( \\begin{array}{ccc}
−1 & −1 & 0 \\\\
−1 & −1 & 0 \\\\
−1 & −a & 0 \\\\
\\end{array} \\right)
$$

同样要求秩为1，得到：

$$
−a + 1 = 0 ⇒ a = 1
$$

此时特征向量为$β_{1} = (−1, 1, 0)T$，$β_{2} = (0, 0, 1)T$。对于$λ_{3} = 3$，对应的特征向量为$α_{3} = (1, 1, 1)T$。
结论
当$a = −1, b = 3$或$a = 1, b = 1$时，存在可逆矩阵$P$使得$P^{−1}AP$为对角矩阵。
', 9, 'Mogullzr', '2026-01-29 14:19:23', 9, 'Mogullzr', '2026-01-29 14:19:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '2968');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '2968');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2969, '2021年考研数学卷3第22题', '简单', '考研数学2021年数3真题', '本小题满分12分在区间$(0, 2)$上随机取一点，将该区间分成两段，较短一段长度记为$X$，较长的一段长度记为$Y$，令$Z = \\frac{Y}{X}$。', '[]', '
(1)$X$的概率密度为


$$
f(x) = \\begin{cases} 1 & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}
$$

(2)$Z$的概率密度为


$$
f_{Z}(z) = \\begin{cases} \\frac{2}{(z+1)2} & z ≥ 1 \\\\ 0 & 其他 \\end{cases}
$$

(3)$E (\\frac{X}{Y}) = −1 + 2 \\ln 2$
', '
(1) 当随机点在$(0, 1)$时，$X$为该点到$0$的距离，即$X ∼ U(0, 1)$，故$X$的概率密度为


$$
f(x) = \\begin{cases} 1 & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}
$$

(2) 设$Y = 2 - X$，则$Z = \\frac{2-X}{X}$。当$z ≥ 1$时，


$$
F_{Z}(z) = P \\{\\frac{2 - X}{X} ≤ z\\} = 1 - P \\{X ≤ \\frac{2}{z + 1}\\} = 1 - \\frac{2}{z + 1}
$$

故$Z$的概率密度为


$$
f_{Z}(z) = \\begin{cases} \\frac{2}{(z+1)2} & z ≥ 1 \\\\ 0 & 其他 \\end{cases}
$$

(3) 期望计算为


$$
E (\\frac{X}{Y}) = E (\\frac{X}{2 - X}) = \\int_{0}^{1} \\frac{x}{2 - x} dx = −1 + 2 \\ln 2
$$

', 9, 'Mogullzr', '2026-01-29 14:19:23', 9, 'Mogullzr', '2026-01-29 14:19:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2969');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '2969');
