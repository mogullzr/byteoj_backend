INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3168, '2025年考研数学卷1第1题', '简单', '考研数学2025年数1真题', '已知函数$f(x) = \\int_{0}^{x} e^{t^{2}} \\sin tdt$，$g(x) = \\int_{0}^{x} e^{t^{2}}dt ⋅ \\sin^{2} x$，则', '[''$x = 0$是$f(x)$的极值点，也是$g(x)$的极值点.'', ''$x = 0$是$f(x)$的极值点，$(0, 0)$是曲线$y = g(x)$的拐点.'', ''$x = 0$是$f(x)$的极值点，$(0, 0)$是曲线$y = f(x)$的拐点.'', ''$(0, 0)$是曲线$y = f(x)$的拐点，也是曲线$y = g(x)$的拐点.'']', "['B']", '$f^{′}(x) = e^{x^{2}} \\sin x, f^{′′}(x) = 2xe^{x^{2}} \\sin x + e^{x^{2}} \\cos x$$f^{′}(0) = 0, f^{′′}(0) = 1 > 0$。$x = 0$是$f(x)$的极值点。$g^{′}(x) = e^{x^{2}} \\sin^{2} x + \\sin 2x \\int_{0}^{x} e^{t^{2}}dt$，$g^{′′}(x) = e^{x^{2}} \\sin 2x + 2xe^{x^{2}} \\sin^{2} x + \\sin 2xe^{x^{2}} + 2 \\cos 2x \\int_{0}^{x} e^{t^{2}}dt$$g^{′}(0) = 0,  g^{′′}(0) = 0,  g^{′′′}(0) > 0$。$(0, 0)$是$y = g(x)$的拐点。', 9, 'Mogullzr', '2026-01-29 14:20:31', 9, 'Mogullzr', '2026-01-29 14:20:31', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3168');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3168');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3168');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3169, '2025年考研数学卷1第2题', '简单', '考研数学2025年数1真题', '已知级数：①$\\sum_{n=1}^{∞} \\sin \\frac{n^{3}π}{n^{2}+1}$；②$\\sum_{n=1}^{∞}(−1)n (\\frac{1}{\\sqrt{n^{2}}} - \\tan \\frac{1}{\\sqrt{n^{2}}})$，则', '[''①与②均条件收敛.'', ''①条件收敛，②绝对收敛.'', ''①绝对收敛，②条件收敛.'', ''①与②均绝对收敛.'']', "['B']", '$​\\sin \\frac{n^{3}π}{n^{2}+1}​ = ​\\sin (\\frac{n^{3}π}{n^{2}+1} - nπ)​ = ​\\sin \\frac{n}{n^{2}+1}π​ ∼ \\frac{n}{n^{2}+1}π ∼ \\frac{1}{n}π$.$\\sum_{n=1}^{∞} \\frac{1}{n}$发散$∴$不是绝对收敛.$\\sin \\frac{n^{3}π}{n^{2}+1} = (−1)n \\sin (\\frac{n^{3}π}{n^{2}+1} - nπ) = (−1)n \\sin \\frac{n}{n^{2}+1}π$，为交错级数.$\\sin \\frac{n}{n^{2}+1}π$递减，$∴$条件收敛.$\\sum_{n=1}^{∞}(−1)n (\\frac{1}{\\sqrt{n^{2}}} - \\tan \\frac{1}{\\sqrt{n^{2}}})$.$​(−1)n (\\frac{1}{\\sqrt{n^{2}}} - \\tan \\frac{1}{\\sqrt{n^{2}}})​ = ​−\\frac{1}{3}\\frac{1}{n^{\\frac{2}{3}×\\frac{3}{2}}} + o (\\frac{1}{n^{2}})​$（注：原解析此处$n$的次数书写可能有误，推测应为$​−\\frac{1}{3}\\frac{1}{n^{\\frac{4}{3}}} + o (\\frac{1}{n^{\\frac{4}{3}}})​$，按你提供内容提取 ），实际准确是利用等价无穷小，当$x → 0$时，$x - \\tan x ∼ −\\frac{1}{3}x^{3}$，令$x = \\frac{1}{\\sqrt{n^{2}}} = n^{−\\frac{2}{3}}$，则$\\frac{1}{\\sqrt{n^{2}}} - \\tan \\frac{1}{\\sqrt{n^{2}}} ∼ −\\frac{1}{3}n^{−2}$，所以$​(−1)n (\\frac{1}{\\sqrt{n^{2}}} - \\tan \\frac{1}{\\sqrt{n^{2}}})​ ∼ \\frac{1}{3n^{2}}$）$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$收敛$∴ \\sum_{n=1}^{∞}(−1)n (\\frac{1}{\\sqrt{n^{2}}} - \\tan \\frac{1}{\\sqrt{n^{2}}})$绝对收敛', 9, 'Mogullzr', '2026-01-29 14:20:32', 9, 'Mogullzr', '2026-01-29 14:20:32', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3169');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3169');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '3169');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3170, '2025年考研数学卷1第3题', '简单', '考研数学2025年数1真题', '设函数$f(x)$在区间$\\lbrack 0, +∞)$上可导，则', '[''当$\\\\lim_{x→+∞} f(x)$存在时，$\\\\lim_{x→+∞} f^{′}(x)$存在。'', ''当$\\\\lim_{x→+∞} f^{′}(x)$存在时，$\\\\lim_{x→+∞} f(x)$存在。'', ''当$\\\\lim_{x→+∞} \\\\frac{\\\\int_{0}^{x} f(t)dt}{x}$存在时，$\\\\lim_{x→+∞} f(x)$存在。'', ''当$\\\\lim_{x→+∞} f(x)$存在时，$\\\\lim_{x→+∞} \\\\frac{\\\\int_{0}^{x} f(t)dt}{x}$存在。'']', "['D']", 'A 错误，反例：$f(x) = \\frac{\\sin x^{2}}{x}, \\lim_{x→+∞} f(x) = 0$，但$\\lim_{x→+∞} f^{′}(x) = \\lim_{x→+∞} \\frac{2x^{2} \\cos x^{2}-\\sin x^{2}}{x^{2}}$，极限不存在。B 错误，反例：$f(x) = \\sqrt{x}, f^{′}(x) = \\frac{1}{2\\sqrt{x}}, \\lim_{x→+∞} f^{′}(x) = 0$，极限存在，但$\\lim_{x→+∞} f(x)$极限不存在。C 错误，反例：$f(x) = \\cos x$，则$\\lim_{x→+∞} \\frac{\\int_{0}^{x} f(t)dt}{x} = \\lim_{x→+∞} \\frac{\\sin x}{x}$存在，但$\\lim_{x→+∞} f(x) = \\lim_{x→+∞} \\cos x$不存在。D 正确，用$\\lim_{x→+∞} \\frac{\\int_{0}^{x} f(t)dt}{x} = \\lim_{x→+∞} \\frac{f(x)}{1} = A$，故选 D 。', 9, 'Mogullzr', '2026-01-29 14:20:32', 9, 'Mogullzr', '2026-01-29 14:20:32', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3170');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3170');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3170');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3171, '2025年考研数学卷1第4题', '简单', '考研数学2025年数1真题', '设函数$f(x, y)$连续，则
$$
\\int_{−2}^{2} dx \\int_{4-x^{2}}^{4} f(x, y) dy =
$$
', '[''$\\\\int_{0}^{4}  \\\\lbrack \\\\int_{−2}^{−\\\\sqrt{4-y}} f(x, y)dx + \\\\int_{\\\\sqrt{4-y}}^{2} f(x, y)dx \\\\rbrack  dy$'', ''$\\\\int_{0}^{4}  \\\\lbrack \\\\int_{−2}^{\\\\sqrt{4-y}} f(x, y)dx + \\\\int_{\\\\sqrt{4-y}}^{2} f(x, y)dx \\\\rbrack  dy$'', ''$\\\\int_{0}^{4}  \\\\lbrack \\\\int_{−2}^{−\\\\sqrt{4-y}} f(x, y)dx + \\\\int_{2}^{\\\\sqrt{4-y}} f(x, y)dx \\\\rbrack  dy$'', ''$2 \\\\int_{0}^{4} dy \\\\int_{\\\\sqrt{4-y}}^{2} f(x, y)dx$'']', "['A']", '由题易知，此二重积分的积分区域为
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/4f95c7ef406d482bb73a2294ec5a0b8e.jpg)
$D = \\{(x, y)​4 - x^{2} ≤ y ≤ 4, −2 ≤ x ≤ 2\\}$，对应图像为上图所示。记
$D_{1} = \\{(x, y)​4 - x^{2} ≤ y ≤ 4, −2 ≤ x ≤ 0\\}$，
$D_{2} = \\{(x, y)​4 - x^{2} ≤ y ≤ 4, 0 ≤ x ≤ 2\\}$，
且$I = \\int_{−2}^{2} dx \\int_{4-x^{2}}^{4} f(x, y) dy$，
则$I = \\iint_{D_{1}} f(x, y) dσ + \\iint_{D_{2}} f(x, y) dσ$。交换积分次序得

$$
I = \\int_{0}^{4} dy \\int_{−2}^{−\\sqrt{4-y}} f(x, y) dx + \\int_{0}^{4} dy \\int_{\\sqrt{4-y}}^{2} f(x, y) dx
$$

$$
= \\int_{0}^{4}  \\lbrack \\int_{−2}^{−\\sqrt{4-y}} f(x, y) dx + \\int_{\\sqrt{4-y}}^{2} f(x, y) dx \\rbrack  dy
$$
故 A 正确。', 9, 'Mogullzr', '2026-01-29 14:20:32', 9, 'Mogullzr', '2026-01-29 14:20:32', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3171');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3171');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '3171');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3172, '2025年考研数学卷1第5题', '简单', '考研数学2025年数1真题', '二次型$f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + 2x_{1}x_{2} + 2x_{1}x_{3}$的正惯性指数', '[''$0$'', ''$1$'', ''$2$'', ''$3$'']', "['B']", '
矩阵

$$
A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 0 & 0 \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)
$$
计算特征多项式：

$$
\\begin{array}{ccccccccccc}
λE - A & \\begin{array}{ccc}
λ - 1 & −1 & −1 \\\\
−1 & λ & 0 \\\\
−1 & 0 & λ \\\\
\\end{array} &  &  &  &  &  &  &  &  &  \\\\
 & \\begin{array}{ccc}
λ - 1 & −1 & −1 \\\\
0 & λ & −λ \\\\
−1 & 0 & λ \\\\
\\end{array} &  &  &  &  &  &  &  &  &  \\\\
 &  & λ - 1 & −1 & −1 & λ - 1 & −1 & −1 & λ - 1 & −1 & −1 \\\\
 &  & −1 & λ & 0 & 0 & λ & −λ & 0 & 1 & −1 \\\\
 & \\begin{array}{ccc}
λ - 1 & −1 & −1 \\\\
0 & 1 & −1 \\\\
−1 & 0 & λ \\\\
\\end{array} &  &  &  &  &  &  &  &  &  \\\\
 &  & −1 & 0 & λ & −1 & 0 & λ & −1 & 0 & λ \\\\
 & = λ(λ^{2} - λ - 2) &  &  &  &  &  &  &  &  &  \\\\
 & = λ(λ - 2)(λ + 1) &  &  &  &  &  &  &  &  &  \\\\
\\end{array}
$$
解得特征值为：

$$
λ_{1} = 0,  λ_{2} = 2,  λ_{3} = −1
$$
因此，正惯性指数为$1$，选 B。', 9, 'Mogullzr', '2026-01-29 14:20:34', 9, 'Mogullzr', '2026-01-29 14:20:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3172');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3172');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3173, '2025年考研数学卷1第6题', '简单', '考研数学2025年数1真题', '设$α_{1}, α_{2}, α_{3}, α_{4}$是$n$维列向量，$α_{1}, α_{2}$线性无关，$α_{1}, α_{2}, α_{3}$线性相关，且$α_{1} + α_{2} + α_{4} = 0$。在空间直角坐标系$O - xyz$中，关于$x, y, z$的方程组$xα_{1} + yα_{2} + zα_{3} = α_{4}$的几何图形是', '[''过原点的一个平面.'', ''过原点的一条直线.'', ''不过原点的一个平面.'', ''不过原点的一条直线.'']', "['D']", '记$A = (α_{1}, α_{2}, α_{3})$，由$α_{1}, α_{2}$线性无关，而$α_{1}, α_{2}, α_{3}$线性相关，可得$r(A) = 2$。记$\\overline{A} = (A∣α_{4}) = (α_{1}, α_{2}, α_{3}, α_{4})$，再由$α_{1} + α_{2} + α_{4} = 0$，可得$r(\\overline{A}) = 2$。于是方程$Ax = α_{4}$有无穷多解。方程$xα_{1} + yα_{2} + zα_{3} = α_{4}$等价于$(α_{1}, α_{2}, α_{3}) ⋅ (x, y, z)T = α_{4}$，即$A ⋅ (x, y, z)T = α_{4}$。若该方程所表示的平面过原点，则$α_{4} = 0$，但这与$α_{1}, α_{2}$线性无关矛盾，故平面不过原点。将方程写为分量形式：
$$
\\begin{cases} a_{11}x + a_{12}y + a_{13}z = a_{14} \\\\ a_{21}x + a_{22}y + a_{23}z = a_{24} \\\\ ⋯ \\\\ a_{n1}x + a_{n2}y + a_{n3}z = a_{n4} \\end{cases}
$$
由上述分析可知$r(A) = r(\\overline{A}) = 2$，故该方程组表示两个平面交于一条直线，且不过原点。因此，正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:20:34', 9, 'Mogullzr', '2026-01-29 14:20:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3173');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3173');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '3173');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3174, '2025年考研数学卷1第7题', '简单', '考研数学2025年数1真题', '设$n$阶矩阵$A$、$B$、$C$满足$r(A) + r(B) + r(C) = r(ABC) + 2n$，给出下列四个结论：①$r(ABC) + n = r(AB) + r(C)$；
②$r(AB) + n = r(A) + r(B)$；
③$r(A) = r(B) = r(C) = n$；
④$r(AB) = r(BC) = n$。其中正确结论的序号是', '[''①②.'', ''①③.'', ''②④.'', ''③④.'']', "['A']", '
设矩阵

$$
A = \\left( \\begin{array}{cc}
1 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cc}
0 & 0 \\\\
0 & 1 \\\\
\\end{array} \\right) ,  C = E
$$
满足

$$
r(A) + r(B) + r(C) = r(ABC) + 2n
$$
计算得

$$
r(A) = 1,  r(B) = 1,  r(C) = 2
$$
因此排除结论③和④，故选 A。', 9, 'Mogullzr', '2026-01-29 14:20:34', 9, 'Mogullzr', '2026-01-29 14:20:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3174');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3174');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '3174');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3175, '2025年考研数学卷1第8题', '简单', '考研数学2025年数1真题', '设二维随机变量$(X, Y)$服从正态分布$N(0, 0; 1, 1; ρ)$，其中$ρ ∈ (−1, 1)$。若$a, b$为满足$a^{2} + b^{2} = 1$的任意实数，则$D(aX + bY)$的最大值为', '[''$1$'', ''$2$'', ''$1 + ∣ρ∣$.'', ''$1 + ρ^{2}$.'']', "['C']", '$D(aX + bY) = a^{2}DX + b^{2}DY + 2abρ ⋅ 1 ⋅ 1$$= a^{2} + b^{2} + 2abρ = 1 + 2abρ = 1 + 2a\\sqrt{1 - a^{2}}ρ = f(a)$$f^{′}(a) = ρ (2\\sqrt{1 - a^{2}} + 2a ⋅ \\frac{−a}{\\sqrt{1-a^{2}}}) = 2ρ (\\sqrt{1 - a^{2}} - \\frac{a^{2}}{\\sqrt{1-a^{2}}}) = 0$即$2ρ ⋅ \\frac{1-a^{2}-a^{2}}{\\sqrt{1-a^{2}}} = 0$，$2a^{2} = 1 ⇒ a^{2} = \\frac{1}{2}, b^{2} = \\frac{1}{2}$，于是$a = ±\\frac{1}{\\sqrt{2}}, b = ±\\frac{1}{\\sqrt{2}}$。所以最大值为$1 + ∣ρ∣$，故选C。', 9, 'Mogullzr', '2026-01-29 14:20:35', 9, 'Mogullzr', '2026-01-29 14:20:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3175');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3175');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '3175');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3176, '2025年考研数学卷1第9题', '简单', '考研数学2025年数1真题', '设$X_{1}, X_{2}, ⋯  , X_{20}$是来自总体$B(1, 0.1)$的简单随机样本.令$T = \\sum_{i=1}^{20} X_{i}$，利用泊松分布近似表示二项分布的方法可得$P\\{T ≤ 1\\} ≈$', '[''$\\\\frac{1}{e^{2}}$'', ''$\\\\frac{2}{e^{2}}$'', ''$\\\\frac{3}{e^{2}}$'', ''$\\\\frac{4}{e^{2}}$'']', "['C']", '由题意可知$T ∼ B(20, 0.1).np = 20 × 0.1 = 2$$P\\{T ≤ 1\\} = P\\{T = 0\\} + P\\{T = 1\\} = \\frac{2^{0}}{0!}e^{−2} + \\frac{2^{1}}{1!}e^{−2} = e^{−2} + 2e^{−2} = \\frac{3}{e^{2}}$', 9, 'Mogullzr', '2026-01-29 14:20:35', 9, 'Mogullzr', '2026-01-29 14:20:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3176');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1081', '3176');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3177, '2025年考研数学卷1第10题', '简单', '考研数学2025年数1真题', '设$X_{1}, X_{2}, ⋯  , X_{n}$为来自正态总体$N(μ, 2)$的简单随机样本，记$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，$\\bar{x}$为$\\bar{X}$的观察值，$z_{α}$表示标准正态分布的上侧$α$分位数，假设检验问题：$H_{0} : μ ≤ 1, H_{1} : μ > 1$的显著性水平为$α$的检验的拒绝域为（）.', '[''$\\\\{(x_{1}, x_{2}, ⋯  , x_{n}) ∣ \\\\bar{x} > 1 + \\\\frac{2}{n}z_{α}\\\\}$'', ''$\\\\{(x_{1}, x_{2}, ⋯  , x_{n}) ∣ \\\\bar{x} > 1 + \\\\frac{\\\\sqrt{2}}{n}z_{α}\\\\}$'', ''$\\\\{(x_{1}, x_{2}, ⋯  , x_{n}) ∣ \\\\bar{x} > 1 + \\\\frac{2}{\\\\sqrt{n}}z_{α}\\\\}$'', ''$\\\\{(x_{1}, x_{2}, ⋯  , x_{n}) ∣ \\\\bar{x} > 1 + \\\\sqrt{\\\\frac{2}{n}}z_{α}\\\\}$'']', "['D']", '按题意需检验假设:$H_{0} : μ ≤ 1$，$H_{1} : μ > 1$，这是右边检验问题，$σ^{2} = 2$为已知，其拒绝域为$\\frac{\\bar{X}-μ}{σ/\\sqrt{n}} > z_{α}$，解得$\\bar{X} > μ + \\frac{σ}{\\sqrt{n}}z_{α} = 1 + \\frac{\\sqrt{2}}{\\sqrt{n}}z_{α}$，故选 D.', 9, 'Mogullzr', '2026-01-29 14:20:35', 9, 'Mogullzr', '2026-01-29 14:20:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3177');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '3177');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1079', '3177');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3178, '2025年考研数学卷1第11题', '简单', '考研数学2025年数1真题', '（填空题）
$$
\\lim_{x→0^{+}} \\frac{x^{x} - 1}{\\ln x ⋅ \\ln(1 - x)} =
$$
', '[]', '$−1$
', '


$$
\\lim_{x→0^{+}} \\frac{e^{x \\ln x} - 1}{−x \\ln x} = \\lim_{x→0^{+}} \\frac{x \\ln x}{−x \\ln x} = −1
$$

', 9, 'Mogullzr', '2026-01-29 14:20:35', 9, 'Mogullzr', '2026-01-29 14:20:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3178');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3178');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3178');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3179, '2025年考研数学卷1第12题', '简单', '考研数学2025年数1真题', '（填空题）已知函数$f(x) = \\begin{cases} 0 & 0 ≤ x < \\frac{1}{2} \\\\ x^{2} & \\frac{1}{2} ≤ x ≤ 1 \\end{cases}$的傅里叶级数为$\\sum_{n=1}^{∞} b_{n} \\sin nπx$，$S(x)$为$\\sum_{n=1}^{∞} b_{n} \\sin nπx$的和函数，则$S (−\\frac{7}{2}) =$______．', '[]', '$\\frac{1}{8}$
', '


$$
S (−\\frac{7}{2}) = S (−\\frac{7}{2} + 4) = S (\\frac{1}{2}) = \\frac{1}{8}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:35', 9, 'Mogullzr', '2026-01-29 14:20:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3179');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3179');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '3179');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3180, '2025年考研数学卷1第13题', '简单', '考研数学2025年数1真题', '（填空题）已知函数$u(x, y, z) = xy^{2}z^{3}$，向量$n = (2, 2, −1)$，则

$$
\\frac{∂u}{∂n}​_{(1,1,1)} =
$$
', '[]', '1
', '
由题易知，

$$
\\frac{∂u}{∂x} = y^{2}z^{3},  \\frac{∂u}{∂y} = 2xyz^{3},  \\frac{∂u}{∂z} = 3xy^{2}z^{2}.
$$

在$x = 1$，$y = 1$，$z = 1$处，有

$$
(\\frac{∂u}{∂x}, \\frac{∂u}{∂y}, \\frac{∂u}{∂z}) = (1, 2, 3).
$$

对于向量$\\bar{n} = (2, 2, −1)$，归一化可得

$$
\\bar{n}_{0} = (\\frac{2}{3}, \\frac{2}{3}, −\\frac{1}{3}) .
$$

故

$$
\\begin{array}{cc}
\\frac{∂u}{∂n}​_{(1,1,1)} & = (\\frac{∂u}{∂x}, \\frac{∂u}{∂y}, \\frac{∂u}{∂z}) ⋅ \\bar{n}_{0} \\\\
 & = (1, 2, 3) ⋅ (\\frac{2}{3}, \\frac{2}{3}, −\\frac{1}{3}) \\\\
 & = 1 ⋅ \\frac{2}{3} + 2 ⋅ \\frac{2}{3} + 3 ⋅ (−\\frac{1}{3}) \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:35', 9, 'Mogullzr', '2026-01-29 14:20:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3180');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '3180');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3181, '2025年考研数学卷1第14题', '简单', '考研数学2025年数1真题', '（填空题）已知有向曲线$L$是沿抛物线$y = 1 - x^{2}$从点$(1, 0)$到点$(−1, 0)$的一段，则曲线积分$\\int_{L}(y + \\cos x)dx + (2x + \\cos y)dy =$______。', '[]', '$\\frac{4}{3} - 2 \\sin 1$
', '
曲线积分$\\int_{L}(y + \\cos x) dx + (2x + \\cos y) dy$中，曲线$L$为抛物线$y = 1 - x^{2}$从点$(1, 0)$到点$(−1, 0)$的一段。计算步骤如下：
方法一：直接参数化
以$x$为参数，$x$从$1$到$−1$，$y = 1 - x^{2}$，则$dy = −2x dx$。代入积分：

$$
\\begin{array}{cc}
I & = \\int_{1}^{−1}  \\lbrack (1 - x^{2} + \\cos x) + (2x + \\cos(1 - x^{2}))(−2x) \\rbrack   dx \\\\
 & = \\int_{1}^{−1} (1 - 5x^{2} + \\cos x - 2x \\cos(1 - x^{2}))  dx. \\\\
\\end{array}
$$

分别计算：

$$
\\int_{1}^{−1} 1 dx = −2,  \\int_{1}^{−1}(−5x^{2}) dx = \\frac{10}{3},  \\int_{1}^{−1} \\cos x dx = −2 \\sin 1,
$$

而

$$
\\int_{1}^{−1}(−2x) \\cos(1 - x^{2}) dx = 0 (因为被积函数为奇函数，且上下限对称).
$$

所以

$$
I = −2 + \\frac{10}{3} - 2 \\sin 1 = \\frac{4}{3} - 2 \\sin 1.
$$

方法二：格林公式
补充线段$L_{0} : y = 0$从$(−1, 0)$到$(1, 0)$，与$L$形成逆时针闭曲线$C = L ∪ L_{0}$。设$P = y + \\cos x$，$Q = 2x + \\cos y$，则

$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = 2 - 1 = 1.
$$

闭曲线$C$所围区域$D$的面积为

$$
\\iint_{D} 1 dA = \\int_{−1}^{1}(1 - x^{2}) dx = \\frac{4}{3}.
$$

由格林公式，

$$
∮_{C} P dx + Q dy = \\iint_{D} 1 dA = \\frac{4}{3}.
$$

又

$$
\\int_{L_{0}} P dx + Q dy = \\int_{−1}^{1} \\cos x dx = 2 \\sin 1,
$$

故

$$
\\int_{L} P dx + Q dy = ∮_{C} P dx + Q dy - \\int_{L_{0}} P dx + Q dy = \\frac{4}{3} - 2 \\sin 1.
$$

综上，所求曲线积分为$\\frac{4}{3} - 2 \\sin 1$.
', 9, 'Mogullzr', '2026-01-29 14:20:36', 9, 'Mogullzr', '2026-01-29 14:20:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3181');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3181');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '3181');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3182, '2025年考研数学卷1第15题', '简单', '考研数学2025年数1真题', '（填空题）设矩阵$A = \\left( \\begin{array}{ccc}
4 & 2 & −3 \\\\
a & 3 & −4 \\\\
b & 5 & −7 \\\\
\\end{array} \\right)$，若方程组$A^{2}x = 0$与$Ax = 0$不同解，则$a - b =$______。', '[]', '-4
', '由题知，$A = \\left( \\begin{array}{ccc}
4 & 2 & −3 \\\\
a & 3 & −4 \\\\
b & 5 & −7 \\\\
\\end{array} \\right)$。若$A^{2}x = 0$与$Ax = 0$同解，则三秩相同，即$r(A) = r(A^{2}) = r \\left( \\begin{array}{c}
A \\\\
A^{2} \\\\
\\end{array} \\right)$。
如果$A$可逆，三秩显然相同，则$A^{2}x = 0$与$Ax = 0$同解。于是，要想$A^{2}x = 0$与$Ax = 0$不同解，即$A$不可逆，于是$∣A∣ = 0$。
根据行列式的倍加性质易得：

$$
∣A∣ = \\begin{vmatrix}
4 & 2 & −3\\\\
a & 3 & −4\\\\
b & 5 & −7
\\end{vmatrix} = \\begin{vmatrix}
4 & 2 & −1\\\\
a & 3 & −1\\\\
b & 5 & −2
\\end{vmatrix} = \\begin{vmatrix}
4 & 0 & −1\\\\
a & 1 & −1\\\\
b & 1 & −2
\\end{vmatrix} = 4(−2 + 1) - (a - b)
$$

令$∣A∣ = 0$，有$a - b = −4$。
', 9, 'Mogullzr', '2026-01-29 14:20:36', 9, 'Mogullzr', '2026-01-29 14:20:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3182');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3182');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '3182');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3183, '2025年考研数学卷1第16题', '简单', '考研数学2025年数1真题', '（填空题）设$A, B$为两个不同的随机事件，且$A$与$B$相互独立，已知$P(A) = 2P(B)$，$P(A ∪ B) = \\frac{5}{8}$，则在$A, B$至少有一个发生的条件下，$A, B$中恰有一个发生的概率为______。', '[]', '$\\frac{4}{5}$
', '

$$
\\begin{array}{cc}
P(A\\overline{B}) + P(\\overline{A}B) & = P(A) - P(AB) + P(B) - P(AB) \\\\
 & = P(A) + P(B) - 2P(A)P(B) \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
P(A ∪ B) & = P(A) + P(B) - P(AB) = \\frac{5}{8} \\\\
 & ⇒ 3P(B) - 2P^{2}(B) = \\frac{5}{8} \\\\
 & ⇒ 24P(B) - 16P^{2}(B) = 5 \\\\
 & ⇒ 16P^{2}(B) - 24P(B) + 5 = 0 \\\\
 & ⇒ P(B) = \\frac{1}{4},  P(A) = \\frac{1}{2} \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
P(A\\overline{B}) + P(\\overline{A}B) & = P(A) - P(AB) + P(B) - P(AB) \\\\
 & = P(A) + P(B) - 2P(A)P(B) \\\\
 & = \\frac{1}{2} + \\frac{1}{4} - 2 × \\frac{1}{4} × \\frac{1}{2} = \\frac{1}{2} \\\\
\\end{array}
$$


$$
P = \\frac{\\frac{1}{2}}{\\frac{5}{8}} = \\frac{1}{2} × \\frac{8}{5} = \\frac{4}{5}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:36', 9, 'Mogullzr', '2026-01-29 14:20:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3183');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '3183');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3184, '2025年考研数学卷1第17题', '简单', '考研数学2025年数1真题', '（本题满分10分）计算$\\int_{0}^{1} \\frac{1}{(x+1)(x^{2}-2x+2)}dx$。', '[]', '$\\frac{3}{10} \\ln 2 + \\frac{1}{10}π$
', '

$$
\\begin{array}{cc}
\\int_{0}^{1} \\frac{1}{(x + 1)(x^{2} - 2x + 2)}dx & = \\int_{0}^{1} (\\frac{A}{x + 1} + \\frac{Bx + C}{x^{2} - 2x + 2}) dx \\\\
 & = \\int_{0}^{1} (\\frac{\\frac{1}{5}}{x + 1} + \\frac{−\\frac{1}{5}x + \\frac{3}{5}}{x^{2} - 2x + 2}) dx \\\\
 & = \\frac{1}{5} \\ln ∣1 + x∣​_{0}^{1} \\\\
 & - \\frac{1}{10} \\ln ∣x^{2} - 2x + 2∣​_{0}^{1} \\\\
 & = \\frac{3}{10} \\ln 2 + \\frac{1}{10}π \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:36', 9, 'Mogullzr', '2026-01-29 14:20:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3184');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3184');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '3184');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3185, '2025年考研数学卷1第18题', '简单', '考研数学2025年数1真题', '（本题满分12分）已知函数$f(u)$在区间$(0, +∞)$内具有2阶导数，记$g(x, y) = f (\\frac{x}{y})$，若$g(x, y)$满足$x^{2}\\frac{∂^{2}g}{∂x^{2}} + xy\\frac{∂^{2}g}{∂x∂y} + y^{2}\\frac{∂^{2}g}{∂y^{2}} = 1$，且$g(x, x) = 1$，$\\frac{∂g}{∂x}​_{(x,x)} = \\frac{2}{x}$，求$f(u)$。', '[]', '$f(u) = \\frac{1}{2} \\ln^{2} u + 2 \\ln u + 1$
', '
令$u = \\frac{x}{y}$，则


$$
\\frac{∂g}{∂x} = f^{′}(u)\\frac{1}{y},  \\frac{∂g}{∂y} = f^{′}(u) (−\\frac{x}{y^{2}}) .
$$

又


$$
\\begin{array}{c}
g(x, x) = f (\\frac{x}{x}) = f(1) = 1, \\\\
\\frac{∂g}{∂x}​_{(x,x)} = f^{′}(1)\\frac{1}{x} = \\frac{2}{x}, \\\\
\\end{array}
$$

故$f^{′}(1) = 2$。
二阶偏导数为：


$$
\\begin{array}{c}
\\frac{∂^{2}g}{∂x^{2}} = (f^{′′}(u)\\frac{1}{y}) \\frac{1}{y} = f^{′′}(u)\\frac{1}{y^{2}} (1) \\\\
\\frac{∂^{2}g}{∂x∂y} = f^{′′}(u) (−\\frac{x}{y^{2}}) \\frac{1}{y} + f^{′}(u) (−\\frac{1}{y^{2}}) = −\\frac{x}{y^{3}}f^{′′}(u) - \\frac{1}{y^{2}}f^{′}(u) (2) \\\\
\\end{array}
$$

将 (1)(2)(3) 代入


$$
x^{2}\\frac{∂^{2}g}{∂x^{2}} + xy\\frac{∂^{2}g}{∂x∂y} + y^{2}\\frac{∂^{2}g}{∂y^{2}} = 1,
$$

化简得


$$
u^{2}f^{′′}(u) + uf^{′}(u) = 1,
$$

即


$$
f^{′′}(u) + \\frac{1}{u}f^{′}(u) = \\frac{1}{u^{2}}.
$$

令$p = f^{′}(u)$，则


$$
p^{′} + \\frac{1}{u}p = \\frac{1}{u^{2}}.
$$

解得


$$
p = e^{− ∫ \\frac{1}{u}du}  \\lbrack ∫ \\frac{1}{u^{2}}e^{∫ \\frac{1}{u}du}du + C \\rbrack  = \\frac{1}{u}  \\lbrack ∫ \\frac{1}{u}du + C \\rbrack  = \\frac{\\ln u}{u} + \\frac{C}{u}.
$$

由$p∣_{u=1} = C = 2$，得


$$
p = \\frac{\\ln u}{u} + \\frac{2}{u}.
$$

因此


$$
\\frac{df}{du} = \\frac{\\ln u}{u} + \\frac{2}{u},
$$

积分得


$$
f(u) = ∫ (\\frac{\\ln u}{u} + \\frac{2}{u}) du = \\frac{1}{2} \\ln^{2} u + 2 \\ln u + C.
$$

由$f(1) = C = 1$，得


$$
f(u) = \\frac{1}{2} \\ln^{2} u + 2 \\ln u + 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:36', 9, 'Mogullzr', '2026-01-29 14:20:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3185');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3185');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3185');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3186, '2025年考研数学卷1第19题', '简单', '考研数学2025年数1真题', '（本题满分12分）设函数$f(x)$在区间$(a, b)$内可导.证明导函数$f^{′}(x)$在$(a, b)$内严格单调增加的充分必要条件是:对$(a, b)$内任意的$x_{1}, x_{2}, x_{3}$，当$x_{1} < x_{2} < x_{3}$时$\\frac{f(x_{2})-f(x_{1})}{x_{2}-x_{1}} < \\frac{f(x_{3})-f(x_{2})}{x_{3}-x_{2}}$.', '[]', '见解析
', '充分性：若对$(a, b)$内任意的$x_{1}, x_{2}, x_{3}$，当$x_{1} < x_{2} < x_{3}$时，都有

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$

则在$(a, b)$内取任意的$x_{1} < x_{2} < x_{3} < x_{4} < x_{5}$，有

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}} < \\frac{f(x_{4}) - f(x_{3})}{x_{4} - x_{3}} < \\frac{f(x_{5}) - f(x_{4})}{x_{5} - x_{4}}
$$

在$\\frac{f(x_{2})-f(x_{1})}{x_{2}-x_{1}} < \\frac{f(x_{3})-f(x_{2})}{x_{3}-x_{2}}$两边同时令$x_{2} → x_{1}^{+}$，得

$$
f_{+}^{′}(x_{1}) ≤ \\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}}
$$

两边同时令$x_{2} → x_{3}^{-}$，得$\\frac{f(x_{3})-f(x_{1})}{x_{3}-x_{1}} ≤ f_{-}^{′}(x_{3})$，即

$$
f_{+}^{′}(x_{1}) ≤ \\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}} ≤ f_{-}^{′}(x_{3})
$$

同理可得$f_{+}^{′}(x_{3}) ≤ \\frac{f(x_{3})-f(x_{1})}{x_{3}-x_{1}} ≤ f_{-}^{′}(x_{5})$.因为

$$
\\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}} < \\frac{f(x_{5}) - f(x_{3})}{x_{5} - x_{3}}
$$

所以$f_{+}^{′}(x_{1}) ≤ f_{-}^{′}(x_{5})$.由$x_{1}, x_{5}$的任意性，可得$f^{′}(x)$在$(a, b)$内严格单调递增，充分性得证。
再证必要性，即已知$f^{′}(x)$单调递增，在$\\lbrack x_{1}, x_{2} \\rbrack ,  \\lbrack x_{2}, x_{3} \\rbrack$上分别使用拉格朗日中值定理，知存在$ξ_{1} ∈ (x_{1}, x_{2}), ξ_{2} ∈ (x_{2}, x_{3})$，使

$$
f^{′}(ξ_{1}) = \\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}},  f^{′}(ξ_{2}) = \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$

又由$f^{′}(x)$单调递增，且$ξ_{1} < ξ_{2}$知，$f^{′}(ξ_{1}) < f^{′}(ξ_{2})$，即

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$

必要性得证。
综上所述，充要条件得证。
', 9, 'Mogullzr', '2026-01-29 14:20:37', 9, 'Mogullzr', '2026-01-29 14:20:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3186');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3186');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '3186');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3187, '2025年考研数学卷1第20题', '简单', '考研数学2025年数1真题', '（本题满分 12 分）设$Σ$是由直线$\\begin{cases} x = 0 \\\\ y = 0 \\end{cases}$绕直线$\\begin{cases} x = t \\\\ y = t \\\\ z = t \\end{cases}$（$t$为参数）旋转一周得到的曲面，$Σ_{1}$是$Σ$介于平面$x + y + z = 0$与平面$x + y + z = 1$之间部分的外侧，计算曲面积分
$$
I = ∬_{Σ_{1}} x dy dz + (y + 1) dz dx + (z + 2) dx dy
$$
', '[]', '$−\\frac{2\\sqrt{3}π}{3}$
', '
曲面$Σ$的方程为$xy + yz + zx = 0$，是由直线$x = 0,  y = 0$绕直线$x = t,  y = t,  z = t$旋转得到的圆锥面。$Σ_{1}$是该圆锥面介于平面$x + y + z = 0$与$x + y + z = 1$之间的部分，取外侧。
计算曲面积分

$$
I = \\iint_{Σ_{1}} x dy dz + (y + 1) dz dx + (z + 2) dx dy.
$$

记$P = x,  Q = y + 1,  R = z + 2$，散度

$$
div F = \\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z} = 1 + 1 + 1 = 3.
$$

为应用高斯公式，补充平面区域：
$S_{1} : x + y + z = 1$上被圆锥面截下的部分，取上侧（外法向与$(1, 1, 1)$同向）；$S_{ε} : x + y + z = ε$上被圆锥面截下的部分（$0 < ε < 1$），取下侧（外法向与$(1, 1, 1)$反向）。
记$Σ_{1,ε}$为圆锥面上满足$ε ≤ x + y + z ≤ 1$的部分，取外侧。则$Σ_{1,ε} ∪ S_{1} ∪ S_{ε}$构成封闭曲面，围成区域$Ω_{ε}$。由高斯公式，$\\iint_{Σ_{1,ε}} F ⋅ dS + \\iint_{S_{1}} F ⋅ dS + \\iint_{S_{ε}} F ⋅ dS = \\iiint_{Ω_{ε}} 3 dV.$
计算区域$Ω_{ε}$的体积。作正交变换

$$
u = \\frac{x + y + z}{\\sqrt{3}},  v = \\frac{x - y}{\\sqrt{2}},  w = \\frac{x + y - 2z}{\\sqrt{6}},
$$

则圆锥面方程化为$v^{2} + w^{2} = 2u^{2}$，区域$Ω_{ε}$表示为

$$
\\frac{ε}{\\sqrt{3}} ≤ u ≤ \\frac{1}{\\sqrt{3}},  v^{2} + w^{2} ≤ 2u^{2}.
$$

体积

$$
V(Ω_{ε}) = \\int_{ε/\\sqrt{3}}^{1/\\sqrt{3}} π(\\sqrt{2}u)2 du = 2π \\int_{ε/\\sqrt{3}}^{1/\\sqrt{3}} u^{2} du = \\frac{2π}{3}  \\lbrack u^{3} \\rbrack _{ε/\\sqrt{3}}^{1/\\sqrt{3}} = \\frac{2π}{9\\sqrt{3}}(1 - ε^{3}).
$$

计算$S_{1}$上的积分。在$S_{1}$上，$x + y + z = 1$，外法向方向余弦均为$1/\\sqrt{3}$，且

$$
P + Q + R = x + (y + 1) + (z + 2) = x + y + z + 3 = 4.
$$

面积元$dS = dv dw$，区域$v^{2} + w^{2} ≤ 2/3$，面积

$$
A(S_{1}) = π ⋅ \\frac{2}{3} = \\frac{2π}{3}.
$$

故

$$
\\iint_{S_{1}} F ⋅ dS = \\iint_{S_{1}} \\frac{4}{\\sqrt{3}} dS = \\frac{4}{\\sqrt{3}} ⋅ \\frac{2π}{3} = \\frac{8π}{3\\sqrt{3}}.
$$

计算$S_{ε}$上的积分。在$S_{ε}$上，$x + y + z = ε$，外法向方向余弦均为$−1/\\sqrt{3}$，且

$$
P + Q + R = ε + 3.
$$

面积

$$
A(S_{ε}) = π ⋅ 2 (\\frac{ε}{\\sqrt{3}})^{2} = \\frac{2πε^{2}}{3}.
$$

故

$$
\\iint_{S_{ε}} F ⋅ dS = \\iint_{S_{ε}} \\frac{−(ε + 3)}{\\sqrt{3}} dS = −\\frac{ε + 3}{\\sqrt{3}} ⋅ \\frac{2πε^{2}}{3} = −\\frac{2πε^{2}(ε + 3)}{3\\sqrt{3}}.
$$

代入高斯公式，

$$
\\iint_{Σ_{1,ε}} F ⋅ dS = 3 ⋅ \\frac{2π}{9\\sqrt{3}}(1 - ε^{3}) - \\frac{8π}{3\\sqrt{3}} + \\frac{2πε^{2}(ε + 3)}{3\\sqrt{3}}.
$$

令$ε → 0^{+}$，得

$$
I = \\lim_{ε→0^{+}} \\iint_{Σ_{1,ε}} F ⋅ dS = \\frac{2π}{3\\sqrt{3}} - \\frac{8π}{3\\sqrt{3}} = −\\frac{6π}{3\\sqrt{3}} = −\\frac{2π}{\\sqrt{3}}.
$$

有理化得

$$
I = −\\frac{2\\sqrt{3}π}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:37', 9, 'Mogullzr', '2026-01-29 14:20:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3187');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3187');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '3187');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3188, '2025年考研数学卷1第21题', '简单', '考研数学2025年数1真题', '（本题满分 12 分）设矩阵$A = \\left( \\begin{array}{ccc}
0 & −1 & 2 \\\\
−1 & 0 & 2 \\\\
−1 & −1 & a \\\\
\\end{array} \\right)$，已知$1$是$A$的特征多项式的重根。(1) 求$a$的值；(2) 求所有满足$Aα = α + β$，$A^{2}α = α + 2β$的非零列向量$α$，$β$。', '[]', '
(1)$a = 3$
(2) 设$α = \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right)$，其中$a_{1}, a_{2}, a_{3}$满足$a_{1}a_{2}a_{3} \\neq 0$且$a_{1} + a_{2} \\neq 2a_{3}$，则$β = \\left( \\begin{array}{c}
2a_{3} - a_{1} - a_{2} \\\\
2a_{3} - a_{1} - a_{2} \\\\
2a_{3} - a_{1} - a_{2} \\\\
\\end{array} \\right)$.
', '
（1）
由


$$
f(λ) = ∣A - λE∣ = (1 - λ) \\lbrack (λ - a)(λ + 1) + 4 \\rbrack ,
$$

代入$λ = 1$得


$$
\\begin{array}{c}
(1 - a)(1 + 1) + 4 = 0, \\\\
a = 3. \\\\
\\end{array}
$$

（2）
由（1）可知


$$
A = \\left( \\begin{array}{ccc}
0 & −1 & 2 \\\\
−1 & 0 & 2 \\\\
−1 & −1 & 3 \\\\
\\end{array} \\right) .
$$

由$∣A - λE∣ = 0$，得$A$的特征值$λ_{1} = λ_{2} = λ_{3} = 1$。
已知


$$
Aα = α + β,  A^{2}α = α + 2β,
$$

则


$$
\\begin{array}{c}
(A - E)α = β, \\\\
(A^{2} - E)α = 2β = 2(A - E)α, \\\\
(A - E)2α = 0, \\\\
\\end{array}
$$

故$α$可取任意非零向量。设


$$
α = (a_{1}, a_{2}, a_{3})T,  a_{1}a_{2}a_{3} \\neq 0.
$$

于是


$$
β = (A - E)α = \\left( \\begin{array}{ccc}
−1 & −1 & 2 \\\\
−1 & −1 & 2 \\\\
−1 & −1 & 2 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
2a_{3} - a_{1} - a_{2} \\\\
2a_{3} - a_{1} - a_{2} \\\\
2a_{3} - a_{1} - a_{2} \\\\
\\end{array} \\right) ,
$$

其中$a_{1} + a_{2} \\neq 2a_{3}$。
综上，


$$
α = \\left( \\begin{array}{c}
a_{1} \\\\
a_{2} \\\\
a_{3} \\\\
\\end{array} \\right) ,  β = \\left( \\begin{array}{c}
2a_{3} - a_{1} - a_{2} \\\\
2a_{3} - a_{1} - a_{2} \\\\
2a_{3} - a_{1} - a_{2} \\\\
\\end{array} \\right) ,
$$

满足$a_{1}a_{2}a_{3} \\neq 0$且$a_{1} + a_{2} \\neq 2a_{3}$。
', 9, 'Mogullzr', '2026-01-29 14:20:37', 9, 'Mogullzr', '2026-01-29 14:20:37', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3188');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3188');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3189, '2025年考研数学卷1第22题', '简单', '考研数学2025年数1真题', '（本题满分 12 分）投保人的损失事件发生时，保险公司的赔付额$Y$与投保人的损失额$X$的关系为
$$
Y = \\begin{cases} 0 & X ≤ 100 \\\\ X - 100 & X > 100. \\end{cases}
$$
设定损事件发生时，投保人的损失额$X$的概率密度为
$$
f(x) = \\begin{cases} \\frac{2 × 100^{2}}{(100 + x)3} & x > 0 \\\\ 0 & x ≤ 0. \\end{cases}
$$
（1）求$P\\{Y > 0\\}$及$EY$。（2）这种损失事件在一年内发生的次数记为$N$，保险公司在一年内就这种损失事件产生的理赔次数记为$M$，假设$N$服从参数为$8$的泊松分布，在$N = n$（$n ≥ 1$）的条件下，$M$服从二项分布$B(n, p)$，其中$p = P\\{Y > 0\\}$，求$M$的概率分布。', '[]', '
(1)$P\\{Y > 0\\} = \\frac{1}{4}$，$EY = 50$
(2)$M ∼ P(2)$，即$P\\{M = m\\} = \\frac{2^{m}}{m!}e^{−2}$
', '
(1)


$$
P\\{Y > 0\\} = P\\{X - 100 > 0\\} = P\\{X > 100\\} = \\int_{100}^{+∞} \\frac{2 × 100^{2}}{(100 + x)3} dx = \\frac{1}{4}
$$


$$
EY = \\int_{100}^{+∞}(x - 100)\\frac{2 × 100^{2}}{(100 + x)3} dx = 50
$$

(2)


$$
N ∼ P(8),  \\{M ∣ N = n\\} ∼ B (n, \\frac{1}{4})
$$


$$
\\begin{array}{cc}
P\\{M = m\\} & = \\sum_{n=m}^{∞} P\\{N = n\\} ⋅ P\\{M = m ∣ N = n\\} \\\\
 & = \\sum_{n=m}^{∞} \\frac{8^{n}}{n!}e^{−8} ⋅ C_{n}^{m} ⋅ (\\frac{1}{4})^{m} ⋅ (\\frac{3}{4})^{n-m} \\\\
 & = \\sum_{n=m}^{∞} \\frac{8^{n}}{n!}e^{−8} ⋅ \\frac{n!}{m!(n - m)!} (\\frac{1}{4})^{m} ⋅ (\\frac{3}{4})^{n-m} \\\\
 & = (\\frac{1}{4})^{m} e^{−8}\\frac{8^{m}}{m!} \\sum_{n=m}^{∞} \\frac{6^{n-m}}{(n - m)!} = \\frac{2^{m}}{m!}e^{−2} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:38', 9, 'Mogullzr', '2026-01-29 14:20:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3189');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3189');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '3189');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3190, '2025年考研数学卷2第1题', '简单', '考研数学2025年数2真题', '设函数$z = z(x, y)$由$z + \\ln z - \\int_{y}^{x} e^{−t^{2}}dt = 0$确定，则$\\frac{∂z}{∂x} + \\frac{∂z}{∂y} =$', '[''$\\\\frac{z}{z+1}(e^{−x^{2}} - e^{−y^{2}})$'', ''$\\\\frac{z}{z+1}(e^{−x^{2}} + e^{−y^{2}})$'', ''$−\\\\frac{z}{z+1}(e^{−x^{2}} - e^{−y^{2}})$'', ''$−\\\\frac{z}{z+1}(e^{−x^{2}} + e^{−y^{2}})$'']', "['A']", '$z + \\ln z - \\int_{y}^{x} e^{−t^{2}}dt = 0$，分别对$x$，$y$求偏导，得：$\\frac{∂z}{∂x} + \\frac{1}{z}\\frac{∂z}{∂x} - e^{−x^{2}} = 0 ⇒ \\frac{∂z}{∂x} = \\frac{z}{z+1}e^{−x^{2}}$$\\frac{∂z}{∂y} + \\frac{1}{z}\\frac{∂z}{∂y} + e^{−y^{2}} = 0. ⇒ \\frac{∂z}{∂y} = \\frac{−z}{z+1}e^{−y^{2}}$$\\frac{∂z}{∂x} + \\frac{∂z}{∂y} = \\frac{z}{z+1}(e^{−x^{2}} - e^{−y^{2}})$', 9, 'Mogullzr', '2026-01-29 14:20:40', 9, 'Mogullzr', '2026-01-29 14:20:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3190');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3190');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3190');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3191, '2025年考研数学卷2第2题', '简单', '考研数学2025年数2真题', '已知函数$f(x) = \\int_{0}^{x} e^{t^{2}} \\sin tdt$，$g(x) = \\int_{0}^{x} e^{t^{2}}dt ⋅ \\sin^{2} x$，则', '[''$x = 0$是$f(x)$的极值点，也是$g(x)$的极值点.'', ''$x = 0$是$f(x)$的极值点，$(0, 0)$是曲线$y = g(x)$的拐点.'', ''$x = 0$是$f(x)$的极值点，$(0, 0)$是曲线$y = f(x)$的拐点.'', ''$(0, 0)$是曲线$y = f(x)$的拐点，$(0, 0)$也是曲线$y = g(x)$的拐点.'']', "['B']", '$f^{′}(x) = e^{x^{2}} \\sin x, f^{′′}(x) = 2xe^{x^{2}} \\sin x + e^{x^{2}} \\cos x$$f^{′}(0) = 0, f^{′′}(0) = 1 > 0$.$x = 0$是$f(x)$的极值点.$g^{′}(x) = e^{x^{2}} \\sin^{2} x + \\sin 2x \\int_{0}^{x} e^{t^{2}}dt$，$g^{′′}(x) = e^{x^{2}} \\sin 2x + 2xe^{x^{2}} \\sin^{2} x + \\sin 2xe^{x^{2}} + 2 \\cos 2x \\int_{0}^{x} e^{t^{2}}dt$$g^{′}(0) = 0,  g^{′′}(0) = 0,  g^{′′′}(0) > 0$.$(0, 0)$是$y = g(x)$的拐点.', 9, 'Mogullzr', '2026-01-29 14:20:40', 9, 'Mogullzr', '2026-01-29 14:20:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3191');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3191');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '3191');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3192, '2025年考研数学卷2第3题', '简单', '考研数学2025年数2真题', '如果对微分方程$y^{′′} - 2ay^{′} + (a + 2)y = 0$任一解$y(x)$，反常积分$\\int_{0}^{+∞} y(x)dx$均收敛，则$a$的取值范围为', '[''$(−2, −1 \\\\rbrack$'', ''$(−∞, −1 \\\\rbrack$'', ''$(−2, 0)$'', ''$(−∞, 0)$'']', "['C']", '当$a = −2$时，$y^{′′} + 4y^{′} = 0$，通解：$c_{1} + c_{2}e^{−4t}$，$c \\neq 0$时，$\\int_{0}^{+∞}(c_{1} + c_{2}e^{−4x})dx$不收敛.故B、D排除.当$a = −\\frac{1}{2}$时，$y^{′′} + y^{′} + \\frac{3}{2}y = 0$，通解：$y(t) = e^{−\\frac{1}{2}t}(a_{1} \\cos(\\frac{\\sqrt{5}}{2}t) + B(\\sin \\frac{\\sqrt{5}}{2}t))$$\\int_{0}^{+∞} y(x)dx$收敛.', 9, 'Mogullzr', '2026-01-29 14:20:40', 9, 'Mogullzr', '2026-01-29 14:20:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3192');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3192');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '3192');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3193, '2025年考研数学卷2第4题', '简单', '考研数学2025年数2真题', '设函数$f(x)$，$g(x)$在$x = 0$某去心邻域内有定义且恒不为$0$，若$x → 0$时，$f(x)$是$g(x)$的高阶无穷小，则当$x → 0$时', '[''$f(x) + g(x) = o(g(x))$'', ''$f(x)g(x) = o(f^{2}(x))$'', ''$f(x) = o(e^{g(x)} - 1)$'', ''$f(x) = o(g^{2}(x))$'']', "['C']", '由题易知，$x → 0$时，$f(x)$是$g(x)$高阶无穷小.则有$\\lim_{x→0} \\frac{f(x)}{g(x)} = 0$及$\\lim_{x→0} f(x) = 0$，$\\lim_{x→0} g(x) = 0$.又$f(x)$，$g(x)$在$x = 0$某去心邻域内有定义且不恒等于$0$.故对于A选项，等式两端同除$g(x)$得：$\\frac{f(x)}{g(x)} + 1 = \\frac{o \\lbrack g(x) \\rbrack }{g(x)}$取极限得$\\lim_{x→0}(\\frac{f(x)}{g(x)} + 1) = \\lim_{x→0} \\frac{o \\lbrack g(x) \\rbrack }{g(x)}$即$0 + 1 = 0$，显然A不成立.对于B选项，等式两端同除$f^{2}(x)$得$\\frac{g(x)}{f(x)} = \\frac{o \\lbrack f^{2}(x) \\rbrack }{f^{2}(x)}$两端取极限得$\\lim_{x→0} \\frac{g(x)}{f(x)} = \\lim_{x→0} \\frac{o \\lbrack f^{2}(x) \\rbrack }{f^{2}(x)}$，即$∞ = 0$，显然不成立.对于C选项，等式两端同除$g(x)$得$\\frac{f(x)}{g(x)} = \\frac{o \\lbrack e^{g(x)}-1 \\rbrack }{g(x)}$取极限得$\\lim_{x→0} \\frac{f(x)}{g(x)} = \\lim_{x→0} \\frac{o \\lbrack e^{g(x)}-1 \\rbrack }{g(x)} = \\lim_{x→0} \\frac{o \\lbrack g(x) \\rbrack }{g(x)}$显然有$0 = 0$，故C正确.对于D等式两端同除$g(x)$得$\\frac{f(x)}{g^{2}(x)} = \\frac{o \\lbrack g^{2}(x) \\rbrack }{g^{2}(x)}$取极限得$\\lim_{x→0} \\frac{f(x)}{g^{2}(x)} = \\lim_{x→0} \\frac{o \\lbrack g^{2}(x) \\rbrack }{g^{2}(x)}$，显然不成立.综上选C.', 9, 'Mogullzr', '2026-01-29 14:20:41', 9, 'Mogullzr', '2026-01-29 14:20:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3193');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3193');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3193');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3194, '2025年考研数学卷2第5题', '简单', '考研数学2025年数2真题', '设函数$f(x, y)$连续，则$\\int_{−2}^{2} dx \\int_{4-x^{2}}^{4} f(x, y)dy =$', '[''$\\\\int_{0}^{4}  \\\\lbrack \\\\int_{−2}^{−\\\\sqrt{4-y}} f(x, y)dx + \\\\int_{\\\\sqrt{4-y}}^{2} f(x, y)dx \\\\rbrack  dy$'', ''$\\\\int_{0}^{4}  \\\\lbrack \\\\int_{−2}^{\\\\sqrt{4-y}} f(x, y)dx + \\\\int_{\\\\sqrt{4-y}}^{2} f(x, y)dx \\\\rbrack  dy$'', ''$\\\\int_{0}^{4}  \\\\lbrack \\\\int_{−2}^{−\\\\sqrt{4-y}} f(x, y)dx + \\\\int_{2}^{\\\\sqrt{4-y}} f(x, y)dx \\\\rbrack  dy$'', ''$2 \\\\int_{0}^{4} dy \\\\int_{\\\\sqrt{4-y}}^{2} f(x, y)dx$'']', "['A']", '由题易知，此二重积分积分区域为$D = \\{(x, y)∣4 - x^{2} ≤ y ≤ 4, −2 ≤ x ≤ 2\\}$，对应图像为上图所示。记$D_{1} = \\{(x, y)∣4 - x^{2} ≤ y ≤ 4, −2 ≤ x ≤ 0\\}$，$D_{2} = \\{(x, y)∣4 - x^{2} ≤ y ≤ 4, 0 ≤ x ≤ 2\\}$，且$I = \\int_{−2}^{2} dx \\int_{4-x^{2}}^{4} f(x, y)dy$，则$I = ∬_{D_{1}} f(x, y)dσ + ∬_{D_{2}} f(x, y)dσ$，交换积分次序得$I = \\int_{0}^{4} dy \\int_{−2}^{−\\sqrt{4-y}} f(x, y)dx + \\int_{0}^{4} dy \\int_{\\sqrt{4-y}}^{2} f(x, y)dx$$= \\int_{0}^{4}  \\lbrack \\int_{−2}^{−\\sqrt{4-y}} f(x, y)dx + \\int_{\\sqrt{4-y}}^{2} f(x, y)dx \\rbrack  dy$故 A 正确。', 9, 'Mogullzr', '2026-01-29 14:20:41', 9, 'Mogullzr', '2026-01-29 14:20:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3194');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3194');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '3194');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3195, '2025年考研数学卷2第6题', '简单', '考研数学2025年数2真题', '设单位质点$P, Q$分别位于点$(0, 0)$和$(0, 1)$处，$P$从点$(0, 0)$出发沿$x$轴正向移动，记$G$为引力常量，则当质点$P$移动到点$(l, 0)$时，克服质点$Q$的引力所做的功为（  ）', '[''$\\\\int_{0}^{l} \\\\frac{G}{x^{2}+1}dx$'', ''$\\\\int_{0}^{l} \\\\frac{Gx}{(x^{2}+1)23\\u200b}dx$'', ''$\\\\int_{0}^{l} \\\\frac{G}{(x^{2}+1)23\\u200b}dx$'', ''$\\\\int_{0}^{l} \\\\frac{G(x+1)}{(x^{2}+1)23\\u200b}dx$'']', "['A']", '由题可知，其对应如图所示.单位质点$P$与单位质点$Q$之间的引力为$F = G\\frac{1⋅1}{r^{2}}$其中$r$为两质点间的距离.且由图可知$r^{2} = x^{2} + 1$又引力$F$在$x$方向上的力投影为$F_{x} = F \\cos θ = \\frac{x}{\\sqrt{1+x^{2}}}F$.故克服引力做功为：$W = \\int_{0}^{1} F_{x}dx = \\int_{0}^{1} \\frac{G}{(x^{2}+1)}\\frac{x}{\\sqrt{1+x^{2}}}dx = \\int_{0}^{1} \\frac{Gx}{(1+x^{2})23​}dx$', 9, 'Mogullzr', '2026-01-29 14:20:41', 9, 'Mogullzr', '2026-01-29 14:20:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3195');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3195');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3195');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3196, '2025年考研数学卷2第7题', '简单', '考研数学2025年数2真题', '设函数$f(x)$连续，给出下列 4 个条件：①$\\lim_{x→0} \\frac{∣f(x)∣-f(0)}{x}$存在；②$\\lim_{x→0} \\frac{f(x)-∣f(0)∣}{x}$存在；③$\\lim_{x→0} \\frac{∣f(x)∣}{x}$存在；④$\\lim_{x→0} \\frac{∣f(x)-f(0)∣}{x}$存在。其中可得到“$f(x)$在$x = 0$处可导”的条件个数为', '[''1'', ''2'', ''3'', ''4'']', "['B']", '
① 已知$\\lim_{x→0} \\frac{∣f(x)∣-f(0)}{x} = A$，
可得$∣f(0)∣ - f(0) = 0 ⇒ f(0) = ∣f(0)∣ ⇒ f(0) = 0$或$f(0) > 0$。若$f(0) > 0$，则当$x → 0$时，有$f(x) > 0$，
于是$\\lim_{x→0} \\frac{∣f(x)∣-f(0)}{x} = \\lim_{x→0} \\frac{f(x)-f(0)}{x} = A ⇒ f^{′}(0) = A$。若$f(0) = 0$，由$\\lim_{x→0} \\frac{∣f(x)∣-f(0)}{x} = \\lim_{x→0} \\frac{∣f(x)∣}{x} = A$，
可得

$$
\\begin{cases} \\lim_{x→0^{+}} ​\\frac{f(x)}{x}​ = A \\\\ \\lim_{x→0^{-}} ​−\\frac{f(x)}{x}​ = A \\end{cases}
$$
若$A = 0$，则$f^{′}(0)$存在；若$A \\neq 0$，则$f^{′}(0)$不存在。② 由$\\lim_{x→0} \\frac{f(x)-∣f(0)∣}{x} = A ⇒ f(0) = ∣f(0)∣$，
因此$f(0) = 0$或$f(0) > 0$。若$f(0) = 0$，则

$$
A = \\lim_{x→0} \\frac{f(x) - ∣f(0)∣}{x} = \\lim_{x→0} \\frac{f(x)}{x} = f^{′}(0)
$$
若$f(0) > 0$，则

$$
A = \\lim_{x→0} \\frac{f(x) - f(0)}{x} = f^{′}(0)
$$
因此②成立。③ 由$\\lim_{x→0} \\frac{∣f(x)∣}{x}$存在，可得$∣f(0)∣ = 0 ⇒ f(0) = 0$，
此时与①情况相同，因此③错误。④ 若$\\lim_{x→0} \\frac{∣f(x)∣-∣f(0)∣}{x}$存在，则$∣f(x)∣$在$x = 0$处可导，
进而$f(x)$在$x = 0$处可导，因此④正确。综上，①③错误，②④正确，选 B。', 9, 'Mogullzr', '2026-01-29 14:20:41', 9, 'Mogullzr', '2026-01-29 14:20:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3196');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3196');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '3196');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3197, '2025年考研数学卷2第8题', '简单', '考研数学2025年数2真题', '设矩阵

$$
\\left( \\begin{array}{ccc}
1 & 2 & 0 \\\\
2 & a & 0 \\\\
0 & 0 & b \\\\
\\end{array} \\right)
$$
有一个正特征值和两个负特征值，则（ ）', '[''$a > 4, b > 0$'', ''$a < 4, b > 0$'', ''$a > 4, b < 0$'', ''$a < 4, b < 0$'']', "['D']", '令$A = \\left( \\begin{array}{ccc}
1 & 2 & 0 \\\\
2 & a & 0 \\\\
0 & 0 & b \\\\
\\end{array} \\right)$，为实对称矩阵，对应二次型为
$f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + ax_{2}^{2} + bx_{3}^{2} + 4x_{1}x_{2}$。用配方法将其化为标准型：
$f(x_{1}, x_{2}, x_{3}) = (x_{1} + 2x_{2})2 + (a - 4)x_{2}^{2} + bx_{3}^{2}$。已知$A$有一正两负特征值，则

$$
\\begin{cases} a - 4 < 0 \\\\ b < 0 \\end{cases} ⇒ \\begin{cases} a < 4 \\\\ b < 0 \\end{cases}
$$
故选 D。', 9, 'Mogullzr', '2026-01-29 14:20:41', 9, 'Mogullzr', '2026-01-29 14:20:41', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3197');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3197');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3198, '2025年考研数学卷2第9题', '简单', '考研数学2025年数2真题', '下列矩阵中，可以经过若干初等行变换得到矩阵
$$
\\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
0 & 0 & 1 & 2 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$
的是', '[''$\\\\left( \\\\begin{array}{cccc}\\n1 & 1 & 0 & 1 \\\\\\\\\\n1 & 2 & 1 & 3 \\\\\\\\\\n2 & 3 & 1 & 4 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cccc}\\n1 & 1 & 0 & 1 \\\\\\\\\\n1 & 1 & 2 & 5 \\\\\\\\\\n1 & 1 & 1 & 3 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cccc}\\n1 & 0 & 0 & 1 \\\\\\\\\\n0 & 1 & 0 & 3 \\\\\\\\\\n0 & 1 & 0 & 0 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cccc}\\n1 & 1 & 2 & 3 \\\\\\\\\\n1 & 2 & 2 & 3 \\\\\\\\\\n2 & 3 & 4 & 6 \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['B']", 'A选项：
$$
\\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
1 & 2 & 1 & 3 \\\\
2 & 3 & 1 & 4 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
0 & 1 & 1 & 2 \\\\
0 & 1 & 1 & 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
0 & 1 & 1 & 2 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$
B选项：
$$
\\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
1 & 1 & 2 & 5 \\\\
1 & 1 & 1 & 3 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
0 & 0 & 2 & 4 \\\\
0 & 0 & 1 & 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 0 & 1 \\\\
0 & 0 & 1 & 2 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$
C选项：
$$
\\left( \\begin{array}{cccc}
1 & 0 & 0 & 1 \\\\
0 & 1 & 0 & 3 \\\\
0 & 1 & 0 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right)
$$
D选项：
$$
\\left( \\begin{array}{cccc}
1 & 1 & 2 & 3 \\\\
1 & 2 & 2 & 3 \\\\
2 & 3 & 4 & 6 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 2 & 3 \\\\
0 & 1 & 0 & 0 \\\\
0 & 1 & 0 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 1 & 2 & 3 \\\\
0 & 1 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$
', 9, 'Mogullzr', '2026-01-29 14:20:42', 9, 'Mogullzr', '2026-01-29 14:20:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3198');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3198');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '3198');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3199, '2025年考研数学卷2第10题', '简单', '考研数学2025年数2真题', '设$3$阶矩阵$A, B$满足$r(AB) = r(BA) + 1$，则', '[''方程组$(A + B)x = 0$只有零解.'', ''方程组$Ax = 0$与方程组$Bx = 0$均只有零解.'', ''方程组$Ax = 0$与方程组$Bx = 0$没有公共非零解.'', ''方程组$ABAx = 0$与方程组$BABx = 0$有公共非零解.'']', "['D']", '取$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
1 & 0 & −1 \\\\
1 & 0 & −1 \\\\
\\end{array} \\right)$，
则$AB = \\left( \\begin{array}{ccc}
3 & 0 & −3 \\\\
3 & 0 & −3 \\\\
3 & 0 & −3 \\\\
\\end{array} \\right)$，$r(AB) = 1$。$BA = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，$r(BA) = 0$，排除选项 B 和 C。$A + B = \\left( \\begin{array}{ccc}
2 & 1 & 0 \\\\
2 & 1 & 0 \\\\
2 & 1 & 0 \\\\
\\end{array} \\right)$，$r(A + B) = 1$，排除选项 A，故选 D。', 9, 'Mogullzr', '2026-01-29 14:20:42', 9, 'Mogullzr', '2026-01-29 14:20:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3199');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3199');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '3199');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3200, '2025年考研数学卷2第11题', '简单', '考研数学2025年数2真题', '（填空题）设$\\int_{1}^{+∞} \\frac{a}{x(2x+a)} dx = \\ln 2$，则$a =$______。', '[]', '2
', '已知$a = 2$。
原式为：

$$
\\int_{1}^{+∞} \\frac{a}{x(2x + a)} dx =  \\lbrack \\ln x - \\ln(2x + a) \\rbrack  ​_{1}^{+∞}
$$

代入上下限：

$$
= \\lim_{x→+∞} \\ln \\frac{x}{2x + a} - \\ln \\frac{1}{2 + a}
$$

化简极限部分：

$$
= \\lim_{x→+∞} \\ln \\frac{x}{2x + a} + \\ln(2 + a)
$$

由于

$$
\\lim_{x→+∞} \\frac{x}{2x + a} = \\frac{1}{2},
$$

所以

$$
\\lim_{x→+∞} \\ln \\frac{x}{2x + a} = \\ln \\frac{1}{2}.
$$

代入得：

$$
\\ln \\frac{1}{2} + \\ln(2 + a) = \\ln 2
$$

即

$$
\\ln(2 + a) = 2 \\ln 2
$$

因此

$$
a = 2.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:42', 9, 'Mogullzr', '2026-01-29 14:20:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3200');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3200');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3200');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3201, '2025年考研数学卷2第12题', '简单', '考研数学2025年数2真题', '（填空题）曲线$y = \\sqrt{x^{3} - 3x^{2} + 1}$的渐近线方程为______．', '[]', '$y = x - 1$
', '
可得无水平渐近线、铅直渐近线，故求斜渐近线即可．
$k = \\lim_{x→∞} \\frac{\\sqrt{x^{3}-3x^{2}+1}}{x} = \\lim_{x→∞} \\sqrt{\\frac{x^{3}-3x^{2}+1}{x^{3}}} = 1$
$\\begin{array}{cc}
b & = \\lim_{x→∞} \\sqrt{x^{3} - 3x^{2} + 1} - x \\\\
 & = \\lim_{x→∞} x ⋅ ((1 + \\frac{1 - 3x^{2}}{x^{3}})^{\\frac{1}{3}} - 1) \\\\
 & = \\lim_{x→∞} x ⋅ \\frac{1}{3} ⋅ \\frac{1 - 3x^{2}}{x^{3}} = −1 \\\\
\\end{array}$
故$y = x - 1$．
', 9, 'Mogullzr', '2026-01-29 14:20:42', 9, 'Mogullzr', '2026-01-29 14:20:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3201');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3201');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '3201');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3202, '2025年考研数学卷2第13题', '简单', '考研数学2025年数2真题', '（填空题）$\\lim_{n→∞} \\frac{1}{n^{2}}  \\lbrack \\ln \\frac{1}{n} + 2 \\ln \\frac{2}{n} + ⋯ + (n - 1) \\ln \\frac{n-1}{n} \\rbrack  =$．', '[]', '-$\\frac{1}{4}$
', '$\\lim_{n→∞} \\frac{1}{n^{2}}  \\lbrack \\ln \\frac{1}{n} + 2 \\ln \\frac{2}{n} + ⋯ + (n - 1) \\ln \\frac{n-1}{n} \\rbrack$
$= \\lim_{n→∞} (\\frac{1}{n} \\ln \\frac{1}{n} + \\frac{2}{n} \\ln \\frac{2}{n} + ⋯ + \\frac{n-1}{n} \\ln \\frac{n-1}{n}) ⋅ \\frac{1}{n}$
$= \\lim_{n→∞} (\\frac{1}{n} \\ln \\frac{1}{n} + \\frac{2}{n} \\ln \\frac{2}{n} + ⋯ + \\frac{n-1}{n} \\ln \\frac{n-1}{n} + \\frac{n}{n} \\ln \\frac{n}{n}) ⋅ \\frac{1}{n}$
$= \\lim_{n→∞} \\sum_{i=1}^{n} \\frac{i}{n} \\ln \\frac{i}{n} ⋅ \\frac{1}{n}$
$= \\int_{0}^{1} x \\ln xdx$
$= \\frac{1}{2} \\int_{0}^{1} \\ln xdx^{2} = \\frac{1}{2} (x^{2} \\ln x​_{0}^{1} - \\int_{0}^{1} x^{2} ⋅ \\frac{1}{x}dx)$
$= −\\frac{1}{2} \\int_{0}^{1} xdx = −\\frac{1}{4}$
', 9, 'Mogullzr', '2026-01-29 14:20:42', 9, 'Mogullzr', '2026-01-29 14:20:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3202');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3202');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3202');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3203, '2025年考研数学卷2第14题', '简单', '考研数学2025年数2真题', '（填空题）已知函数$y = y(x)$由
$$
\\begin{cases} x = \\ln(1 + 2t) \\\\ 2t - \\int_{1}^{y+t^{2}} e^{−u^{2}}du = 0 \\end{cases}
$$
确定，则$\\frac{dy}{dx}​_{t=0} =$______ 。', '[]', '$e$
', '


$$
\\begin{cases} x = \\ln(1 + 2t) \\\\ 2t - \\int_{1}^{y+t^{2}} e^{−u^{2}}du = 0 \\end{cases}
$$

由②两边关于$t$求导，则$2 - e^{−(y+t^{2})2} ⋅ (\\frac{dy}{dt} + 2t) = 0$。
当$t = 0$时，$y = 1$，$2 - e^{−1} ⋅ \\frac{dy}{dt} = 0 ⇒ \\frac{dy}{dt} = 2e$。
则$\\frac{dy}{dx}​_{t=0} = \\frac{\\frac{dy}{dt}​_{t=0}}{\\frac{dx}{dt}​_{t=0}} = \\frac{2e}{2} = e$。
', 9, 'Mogullzr', '2026-01-29 14:20:42', 9, 'Mogullzr', '2026-01-29 14:20:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3203');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3203');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3203');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3204, '2025年考研数学卷2第15题', '简单', '考研数学2025年数2真题', '（填空题）微分方程$(2y - 3x) dx + (2x - 5y) dy = 0$满足条件$y(1) = 1$的解为 ______ ．', '[]', '$3x^{2} - 4xy + 5y^{2} = 4$
', '
解：

$$
\\begin{array}{cc}
 & (2y - 3x) dx + (2x - 5y) dy = 0 \\\\
⇒ & 2y dx + 2x dy - 3x dx - 5y dy = 0 \\\\
⇒ & d(2xy) - d (\\frac{3}{2}x^{2}) - d (\\frac{5}{2}y^{2}) = 0 \\\\
\\end{array}
$$

即：

$$
\\begin{array}{cc}
 & d (2xy - \\frac{3}{2}x^{2} - \\frac{5}{2}y^{2}) = 0 \\\\
⇒ & 2xy - \\frac{3}{2}x^{2} - \\frac{5}{2}y^{2} = c \\\\
\\end{array}
$$

又因为$y(1) = 1$，则：

$$
2 - \\frac{3}{2} - \\frac{5}{2} = c  ⇒  c = −2
$$

即：

$$
2xy - \\frac{3}{2}x^{2} - \\frac{5}{2}y^{2} = −2
$$

整理得：

$$
3x^{2} - 4xy + 5y^{2} = 4
$$

则所求方程为$y = \\frac{2x+\\sqrt{20-11x^{2}}}{5}$。
', 9, 'Mogullzr', '2026-01-29 14:20:43', 9, 'Mogullzr', '2026-01-29 14:20:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3204');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '3204');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3205, '2025年考研数学卷2第16题', '简单', '考研数学2025年数2真题', '（填空题）设矩阵$A = (a_{1}, a_{2}, a_{3}, a_{4})$，若$a_{1}, a_{2}, a_{3}$线性无关，且$a_{1} + a_{2} = a_{3} + a_{4}$，则方程组$Ax = a_{1} + 4a_{4}$的通解为$x =$______．', '[]', '$k \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
1 \\\\
0 \\\\
0 \\\\
4 \\\\
\\end{array} \\right)$，其中$k$为任意常数。
', '
由于$α_{1} + α_{2} = α_{3} + α_{4}$，可知$α_{1}, α_{2}, α_{3}, α_{4}$线性相关。
又已知$α_{1}, α_{2}, α_{3}$线性无关，因此$r(A) = 3$。
方程$Ax = α_{1} + 4α_{4}$等价于


$$
(α_{1}, α_{2}, α_{3}, α_{4}) ⋅ \\left( \\begin{array}{c}
1 \\\\
0 \\\\
0 \\\\
4 \\\\
\\end{array} \\right) = α_{1} + 4α_{4},
$$

所以$\\left( \\begin{array}{c}
1 \\\\
0 \\\\
0 \\\\
4 \\\\
\\end{array} \\right)$是该方程的一个特解。
由$α_{1} + α_{2} = α_{3} + α_{4}$，可得


$$
α_{1} + α_{2} - α_{3} - α_{4} = 0,
$$

即


$$
(α_{1}, α_{2}, α_{3}, α_{4}) ⋅ \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right) = 0.
$$

因此$\\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right)$是齐次方程$Ax = 0$的一个解向量。
由$s = n - r(A) = 4 - 3 = 1$可知，齐次方程的基础解系含一个向量，故


$$
\\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right)
$$

即为$Ax = 0$的一个基础解系。
于是，原方程$Ax = α_{1} + 4α_{4}$的通解为


$$
k \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
1 \\\\
0 \\\\
0 \\\\
4 \\\\
\\end{array} \\right) ,
$$

其中$k$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:20:43', 9, 'Mogullzr', '2026-01-29 14:20:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3205');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3205');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '3205');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3206, '2025年考研数学卷2第17题', '简单', '考研数学2025年数2真题', '（本题满分$10$分）计算$\\int_{0}^{1} \\frac{1}{(x + 1)(x^{2} - 2x + 2)} dx$。', '[]', '$\\frac{3}{10} \\ln 2 + \\frac{π}{10}$
', '
首先，将积分拆分为部分分式：

$$
\\int_{0}^{1} \\frac{1}{(x + 1)(x^{2} - 2x + 2)} dx = \\int_{0}^{1} (\\frac{A}{x + 1} + \\frac{Bx + C}{x^{2} - 2x + 2}) dx
$$

通过待定系数法，解得：

$$
A = \\frac{1}{5},  B = −\\frac{1}{5},  C = \\frac{3}{5}
$$

代入后得：

$$
\\int_{0}^{1} (\\frac{1/5}{x + 1} + \\frac{−\\frac{1}{5}x + \\frac{3}{5}}{x^{2} - 2x + 2}) dx
$$

分别计算各部分积分：

$$
\\frac{1}{5} \\int_{0}^{1} \\frac{1}{x + 1} dx = \\frac{1}{5} \\ln ∣x + 1∣ ​_{0}^{1}
$$



$$
−\\frac{1}{5} \\int_{0}^{1} \\frac{x - 3}{x^{2} - 2x + 2} dx = −\\frac{1}{10} \\ln ∣x^{2} - 2x + 2∣ ​_{0}^{1} + \\frac{2}{5} arctan(x - 1) ​_{0}^{1}
$$

代入上下限计算：

$$
\\frac{1}{5} \\ln ∣1 + 1∣ - \\frac{1}{5} \\ln ∣0 + 1∣ = \\frac{1}{5} \\ln 2
$$



$$
−\\frac{1}{10} \\ln ∣1^{2} - 2 ⋅ 1 + 2∣ + \\frac{1}{10} \\ln ∣0^{2} - 2 ⋅ 0 + 2∣ = −\\frac{1}{10} \\ln 1 + \\frac{1}{10} \\ln 2 = \\frac{1}{10} \\ln 2
$$



$$
\\frac{2}{5} arctan(1 - 1) - \\frac{2}{5} arctan(0 - 1) = \\frac{2}{5}(0 - (−\\frac{π}{4})) = \\frac{π}{10}
$$

合并结果：

$$
\\frac{1}{5} \\ln 2 + \\frac{1}{10} \\ln 2 + \\frac{π}{10} = \\frac{3}{10} \\ln 2 + \\frac{π}{10}
$$

因此，原积分的值为：

$$
\\int_{0}^{1} \\frac{1}{(x + 1)(x^{2} - 2x + 2)} dx = \\frac{3}{10} \\ln 2 + \\frac{π}{10}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:43', 9, 'Mogullzr', '2026-01-29 14:20:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3206');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3206');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '3206');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3207, '2025年考研数学卷2第18题', '简单', '考研数学2025年数2真题', '（本题满分12分）设函数$f(x)$在$x = 0$处连续，且$\\lim_{x→0} \\frac{xf(x)-e^{2 \\sin x}+1}{\\ln(1+x)+\\ln(1-x)} = −3$。证明$f(x)$在$x = 0$处可导，并求$f^{′}(0)$。', '[]', '$f^{′}(0) = 5$
', '解：
已知


$$
\\ln(1 + x) + \\ln(1 - x) = x - \\frac{1}{2}x^{2} + o(x^{2}) - x - \\frac{1}{2}x^{2} + o(x^{2}) = −x^{2} + o(x^{2})
$$


$$
e^{2 \\sin x} = 1 + 2 \\sin x + \\frac{1}{2}(2 \\sin x)2 + o(x^{2}) = 1 + 2 \\sin x + 2 \\sin^{2} x + o(x^{2})
$$

因此，


$$
−3 = \\lim_{x→0} \\frac{xf(x) - e^{2 \\sin x} + 1}{−x^{2}} = \\lim_{x→0} \\frac{xf(x) - (1 + 2 \\sin x + 2 \\sin^{2} x + o(x^{2})) + 1}{−x^{2}}
$$


$$
= \\lim_{x→0} \\frac{xf(x) - 2 \\sin x}{−x^{2}} + \\lim_{x→0} \\frac{−2 \\sin^{2} x}{−x^{2}}
$$

可以得出


$$
\\lim_{x→0} \\frac{xf(x) - 2 \\sin x}{−x^{2}} = −5,  \\lim_{x→0} \\frac{xf(x) - 2 (x - \\frac{1}{6}x^{3} + o(x^{3}))}{x^{2}} = 5,
$$

进一步得到


$$
\\lim_{x→0} \\frac{xf(x) - 2x}{x^{2}} = 5,  即  \\lim_{x→0} \\frac{f(x) - 2}{x} = 5.
$$

由


$$
\\lim_{x→0} \\lbrack f(x) - 2 \\rbrack  = 0
$$

可得


$$
\\lim_{x→0} f(x) = 2 = f(0),
$$

故


$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - 2}{x} = 5.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:43', 9, 'Mogullzr', '2026-01-29 14:20:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3207');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3207');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '3207');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3208, '2025年考研数学卷2第19题', '简单', '考研数学2025年数2真题', '（本题满分12分）设函数$f(x, y)$可微，且满足$df(x, y) = −2xe^{−y}dx + e^{−y}(x^{2} - y - 1)dy$，$f(0, 0) = 2$，求$f(x, y)$，并求$f(x, y)$的极值.', '[]', '
函数$f(x, y) = −x^{2}e^{−y} + (y + 2)e^{−y}$，驻点为$(0, −1)$，极大值为$e$。
', '


$$
\\frac{∂f}{∂x} = −2xe^{−y} ⇒ f(x, y) = −x^{2}e^{−y} + φ(y)
$$

则


$$
\\frac{∂f}{∂y} = x^{2}e^{−y} + φ^{′}(y) = e^{−y}x^{2} - (y + 1)e^{−y}
$$

于是


$$
φ^{′}(y) = −(y + 1)e^{−y}
$$



$$
⇒ φ(y) = (y + 2)e^{−y} + C
$$

因此


$$
f(x, y) = −x^{2}e^{−y} + (y + 2)e^{−y} + C
$$

又$f(0, 0) = 2$，代入得$C = 0$，故


$$
f(x, y) = −x^{2}e^{−y} + (y + 2)e^{−y}
$$

由


$$
\\begin{cases} \\frac{∂f}{∂x} = −2xe^{−y} = 0 \\\\ \\frac{∂f}{∂y} = e^{−y}(x^{2} - y - 1) = 0 \\end{cases} ⇒ \\begin{cases} x = 0 \\\\ y = −1 \\end{cases}
$$

得驻点$(0, −1)$。
计算二阶偏导：


$$
f_{xx} = −2e^{−y},  f_{xy} = 2xe^{−y},  f_{yy} = e^{−y}(x^{2} - y - 1) - e^{−y} = e^{−y}(x^{2} - y)
$$

在点$(0, −1)$处：


$$
A = −2e,  B = 0,  C = −e
$$

则$AC - B^{2} > 0$，且$A < 0$，故$f(x, y)$在$(0, −1)$处取极大值，极大值为


$$
f(0, −1) = e
$$

', 9, 'Mogullzr', '2026-01-29 14:20:43', 9, 'Mogullzr', '2026-01-29 14:20:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3208');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3208');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '3208');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3209, '2025年考研数学卷2第20题', '简单', '考研数学2025年数2真题', '（本题满分12分）已知平面有界区域$D = \\{(x, y)∣x^{2} + y^{2} ≤ 4x, x^{2} + y^{2} ≤ 4y\\}$，计算$\\iint_{D}(x - y)2dxdy$。', '[]', '$12π - \\frac{16}{3}$
', '
由题可知，积分区域


$$
D = \\{(x, y) ∣ (x - 2)2 + y^{2} ≤ 2^{2},  x^{2} + (y - 2)2 ≤ 2^{2}\\}.
$$

显然积分区域关于直线$y = x$对称。
记


$$
D_{1} = \\{(x, y) ∣ x^{2} + (y - 2)2 ≤ 2^{2},  y ≤ x\\},
$$



$$
D_{2} = \\{(x, y) ∣ (x - 2)2 + y^{2} ≤ 2^{2},  y ≥ x\\}.
$$

于是


$$
\\begin{array}{cc}
I & = \\iint_{D}(x - y)2 dx dy \\\\
 & = \\iint_{D_{1}}(x - y)2 dx dy + \\iint_{D_{2}}(x - y)2 dx dy \\\\
\\end{array}
$$

令$x = r \\cos θ,  y = r \\sin θ$，则在积分区域$D_{1}$上有


$$
\\begin{cases} 0 ≤ r ≤ 4 \\cos θ \\\\ 0 ≤ θ ≤ \\frac{π}{4}. \\end{cases}
$$

那么


$$
\\begin{array}{cc}
\\iint_{D_{1}}(x - y)2 dx dy & = \\iint_{D_{1}}(x^{2} + y^{2} - 2xy) dx dy \\\\
 & = \\int_{0}^{\\frac{π}{4}} dθ \\int_{0}^{4 \\cos θ}(r^{2} - 2r^{2} \\cos θ \\sin θ) dr. \\\\
\\end{array}
$$

计算得


$$
\\iint_{D_{1}}(x - y)2 dx dy = 6π - \\frac{8}{3}.
$$

因此


$$
I = 2 (6π - \\frac{8}{3}) = 12π - \\frac{16}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:44', 9, 'Mogullzr', '2026-01-29 14:20:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3209');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3209');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3209');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3210, '2025年考研数学卷2第21题', '简单', '考研数学2025年数2真题', '（本题满分12分）设函数$f(x)$在区间$(a, b)$内可导.证明导函数$f^{′}(x)$在$(a, b)$内严格单调增加的充分必要条件是:对$(a, b)$内任意的$x_{1}, x_{2}, x_{3}$，当$x_{1} < x_{2} < x_{3}$时
$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$
', '[]', '见解析
', '
充分性：若对$(a, b)$内任意的$x_{1}, x_{2}, x_{3}$，当$x_{1} < x_{2} < x_{3}$时，都有

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$

则在$(a, b)$内取任意的$x_{1} < x_{2} < x_{3} < x_{4} < x_{5}$，有

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}} < \\frac{f(x_{4}) - f(x_{3})}{x_{4} - x_{3}} < \\frac{f(x_{5}) - f(x_{4})}{x_{5} - x_{4}}
$$

在$\\frac{f(x_{2})-f(x_{1})}{x_{2}-x_{1}} < \\frac{f(x_{3})-f(x_{2})}{x_{3}-x_{2}}$两边同时令$x_{2} → x_{1}^{+}$，得

$$
f_{+}^{′}(x_{1}) ≤ \\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}}
$$

两边同时令$x_{2} → x_{3}^{-}$，得$\\frac{f(x_{3})-f(x_{1})}{x_{3}-x_{1}} ≤ f_{-}^{′}(x_{3})$，即

$$
f_{+}^{′}(x_{1}) ≤ \\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}} ≤ f_{-}^{′}(x_{3})
$$

同理可得$f_{+}^{′}(x_{3}) ≤ \\frac{f(x_{3})-f(x_{1})}{x_{3}-x_{1}} ≤ f_{-}^{′}(x_{5})$.因为

$$
\\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}} < \\frac{f(x_{5}) - f(x_{3})}{x_{5} - x_{3}}
$$

所以$f_{+}^{′}(x_{1}) ≤ f_{-}^{′}(x_{5})$.由$x_{1}, x_{5}$的任意性，可得$f^{′}(x)$在$(a, b)$内严格单调递增，充分性得证。
再证必要性，即已知$f^{′}(x)$单调递增，在$\\lbrack x_{1}, x_{2} \\rbrack ,  \\lbrack x_{2}, x_{3} \\rbrack$上分别使用拉格朗日中值定理，知存在$ξ_{1} ∈ (x_{1}, x_{2}), ξ_{2} ∈ (x_{2}, x_{3})$，使

$$
f^{′}(ξ_{1}) = \\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}},  f^{′}(ξ_{2}) = \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$

又由$f^{′}(x)$单调递增，且$ξ_{1} < ξ_{2}$知，$f^{′}(ξ_{1}) < f^{′}(ξ_{2})$，即

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$

必要性得证。
综上所述，充要条件得证。
', 9, 'Mogullzr', '2026-01-29 14:20:44', 9, 'Mogullzr', '2026-01-29 14:20:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3210');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3210');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3210');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3211, '2025年考研数学卷2第22题', '简单', '考研数学2025年数2真题', '（本题满分12分）已知矩阵$A = \\left \\lbrack  \\begin{array}{ccccc}
4 & 1 & −2 &  &  \\\\
1 & 1 & 1 - 2 & 1 & a \\\\
\\end{array} \\right \\rbrack$与$B = \\begin{vmatrix}
k & 0 & 0\\\\
0 & 6 & 0\\\\
0 & 0 & 0
\\end{vmatrix}$合同。(1)求$a$的值及$k$的取值范围；(2)若存在正交矩阵$Q$，使得$Q^{T}AQ = B$，求$k$及$Q$.', '[]', '
(1)$a = 4$，$k > 0$。
(2)$k = 3$，$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{3}} & −\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & 0 & −\\frac{2}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\end{array} \\right)$。
', '
（1）$A$与$B$合同知，二者有相同的正负惯性指数
显然，$B$的特征值为$k$、$6$、$0$，故$A$有特征值$0$.故$∣A∣ = 0$.
计算得$∣A∣ = −3(a - 4)$，即有$a = 4$.
此时$∣λE - A∣ = λ(λ - 3)(λ - 6)$.
知$A$的特征值为$3$、$6$、$0$.$P = 2$. 故$k > 0$.
(2)由$Q^{T}AQ = B$，知$Q^{−1}AQ = B$.
故$A$、$B$相似，特征值相同，故$k = 3$.对$A : λ = 3$时，解$(3E - A)X = 0$，
得$c_{1} = \\begin{vmatrix}
1\\\\
1\\\\
1
\\end{vmatrix}$，$λ = 6$时，解$(6E - A)x = 0$，得$c_{2} = \\begin{vmatrix}
−1\\\\
0\\\\
1
\\end{vmatrix}$
$λ = 0$时，解$(0 ⋅ E - A)x = 0$得$c_{3} = \\left \\lbrack  \\begin{array}{c}
1 - 2 \\\\
1 \\\\
\\end{array} \\right \\rbrack$
再单位化得：$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{3}} & −\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & 0 & −\\frac{2}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{6}} \\\\
\\end{array} \\right)$
', 9, 'Mogullzr', '2026-01-29 14:20:44', 9, 'Mogullzr', '2026-01-29 14:20:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3211');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3211');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3212, '2025年考研数学卷3第1题', '简单', '考研数学2025年数3真题', '在$x → 0^{+}$时，下列无穷小量中与$x$等价的是', '[''$e^{−sinx} - 1$'', ''$\\\\sqrt{x + 1} - cosx$'', ''$1 - cos\\\\sqrt{2x}$'', ''$1 - \\\\frac{\\\\ln(1+x)}{x}$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:46', 9, 'Mogullzr', '2026-01-29 14:20:46', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3212');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3212');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3212');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3213, '2025年考研数学卷3第2题', '简单', '考研数学2025年数3真题', '已知函数$f(x) = \\int_{0}^{x} e^{t^{2}} \\sin t dt$，$g(x) = \\int_{0}^{x} e^{t^{2}} dt ⋅ \\sin^{2} x$，则', '[''$x = 0$是$f(x)$的极值点，也是$g(x)$的极值点。'', ''$x = 0$是$f(x)$的极值点，$(0, 0)$是曲线$y = g(x)$的拐点。'', ''$x = 0$是$f(x)$的极值点，$(0, 0)$是曲线$y = f(x)$的拐点。'', ''$(0, 0)$是曲线$y = f(x)$的拐点，$(0, 0)$也是曲线$y = g(x)$的拐点。'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3213');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3213');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '3213');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3214, '2025年考研数学卷3第3题', '简单', '考研数学2025年数3真题', '已知$k$为常数，级数

$$
\\sum_{n=1}^{∞}(−1)n  \\lbrack \\frac{1}{n} - \\ln (1 + \\frac{k}{n^{2}}) \\rbrack
$$
的敛散性为', '[''绝对收敛'', ''条件收敛'', ''发散'', ''敛散性与 k 的取值有关'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3214');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3214');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '3214');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3215, '2025年考研数学卷3第4题', '简单', '考研数学2025年数3真题', '设函数$f(x)$连续，$\\int_{0}^{1}  dy \\int_{0}^{y} f(x) dx =$', '[''$\\\\int_{0}^{1} xf(x)dx$'', ''$\\\\int_{0}^{1}(x + 1)f(x)dx$'', ''$\\\\int_{0}^{1}(x - 1)f(x)dx$'', ''$\\\\int_{0}^{1}(1 - x)f(x)dx$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3215');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3215');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '3215');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3216, '2025年考研数学卷3第5题', '简单', '考研数学2025年数3真题', '设$A$是$m × n$矩阵，$β$是$m$维非零列向量。若$A$有$k$阶非零子式，则', '[''当$k = m$时，$Ax = β$有解。'', ''当$k = m$时，$Ax = β$无解。'', ''当$k < m$时，$Ax = β$有解。'', ''当$k < m$时，$Ax = β$无解。'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3216');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '3216');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3217, '2025年考研数学卷3第6题', '简单', '考研数学2025年数3真题', '设$A$为 3 阶矩阵，则“$A^{3} - A^{2}$可对角化”是“$A$可对角化”的（ ）。', '[''充分不必要条件'', ''必要不充分条件'', ''充分必要条件'', ''既不充分也不必要条件'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3217');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3217');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3218, '2025年考研数学卷3第7题', '简单', '考研数学2025年数3真题', '设矩阵$A = \\left( \\begin{array}{cc}
1 & 2 \\\\
−2 & −a \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}
1 & 0 \\\\
1 & a \\\\
\\end{array} \\right)$。若$f(x, y) = ∣xA + yB∣$是正定二次型，则$a$的取值范围是', '[''$(0, 2 - \\\\sqrt{3})$。'', ''$(2 - \\\\sqrt{3}, 2 + \\\\sqrt{3})$。'', ''$(2 + \\\\sqrt{3}, 4)$。'', ''$(0, 4)$。'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3218');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3218');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3219, '2025年考研数学卷3第8题', '简单', '考研数学2025年数3真题', '设随机变量$X$服从正态分布$N(−1, 1)$，$Y$服从正态分布$N(1, 2)$，若$X$与$X + 2Y$不相关，则$X$与$X - Y$的相关系数为？', '[''$\\\\frac{1}{3}$'', ''$\\\\frac{1}{2}$'', ''$\\\\frac{2}{3}$'', ''$\\\\frac{3}{4}$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:47', 9, 'Mogullzr', '2026-01-29 14:20:47', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3219');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3219');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '3219');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3220, '2025年考研数学卷3第9题', '简单', '考研数学2025年数3真题', '设$X_{1}, X_{2}, ⋯  , X_{20}$是来自总体$B(1, 0.1)$的简单随机样本，令$T = \\sum_{i=1}^{20} X_{i}$，则用泊松近似方法可得$P\\{T ≤ 1\\} ≈$', '[''$\\\\frac{1}{e^{2}}$'', ''$\\\\frac{2}{e^{2}}$'', ''$\\\\frac{3}{e^{2}}$'', ''$\\\\frac{4}{e^{2}}$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:48', 9, 'Mogullzr', '2026-01-29 14:20:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3220');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3220');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3221, '2025年考研数学卷3第10题', '简单', '考研数学2025年数3真题', '设总体$X$的分布函数为$F(x)$，$x_{1}, x_{2}, ⋯  , x_{n}$为来自总体$X$的简单随机样本，样本的经验分布函数为$F_{n}(x)$。对于给定的$x$（$0 < F(x) < 1$），$D(F_{n}(x)) = ( )$。', '[''$F(x)(1 - F(x))$'', ''$(F(x))2$'', ''$\\\\frac{1}{n}F(x)(1 - F(x))$'', ''$\\\\frac{1}{n}(F(x))2$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:48', 9, 'Mogullzr', '2026-01-29 14:20:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3221');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1076', '3221');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3222, '2025年考研数学卷3第11题', '简单', '考研数学2025年数3真题', '（填空题）设$g(x)$是函数$f(x) = \\frac{1}{2} \\ln \\frac{3+x}{3-x}$的反函数，则曲线$y = g(x)$的渐近线方程为', '[]', '$y = 3$和$y = −3$
', '

$$
\\begin{array}{cc}
y & = \\frac{1}{2} \\ln \\frac{3 + x}{3 - x} \\\\
⇒  2y & = \\ln \\frac{3 + x}{3 - x} \\\\
⇒  e^{2y} & = \\frac{3 + x}{3 - x} = \\frac{6}{3 - x} - 1 \\\\
\\end{array}
$$


$$
g(x) = 3 - \\frac{6}{e^{2y} + 1},  \\lim_{x} g(x) = 3,  \\lim_{x} g(x) = −3
$$

故$y = g(x)$的渐近线方程为
', 9, 'Mogullzr', '2026-01-29 14:20:48', 9, 'Mogullzr', '2026-01-29 14:20:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3222');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3222');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '3222');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3223, '2025年考研数学卷3第12题', '简单', '考研数学2025年数3真题', '（填空题）设$\\int_{1}^{+∞} \\frac{a}{x(2x+a)} dx = \\ln 2$，则$a =$______。', '[]', '2
', '
计算积分


$$
\\int_{1}^{+∞} (\\frac{1}{x} - \\frac{2}{2x + a}) dx
$$

可得


$$
\\ln \\frac{x}{2x + a}​_{1}^{+∞} = \\ln 2
$$

因此，$a = 2$。
', 9, 'Mogullzr', '2026-01-29 14:20:48', 9, 'Mogullzr', '2026-01-29 14:20:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3223');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3223');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3223');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3224, '2025年考研数学卷3第13题', '简单', '考研数学2025年数3真题', '（填空题）微分方程$xy^{′} - y + x^{2}e^{x} = 0$满足条件$y(1) = −e$的解为$y =$______。', '[]', '$y = −xe^{x}$
', '

$$
xy^{′} - y + x^{2}e^{x} = 0  ⇒  y^{′} - \\frac{y}{x} = −xe^{x}
$$


$$
y = e^{∫ \\frac{1}{x}dx}  \\lbrack ∫ e^{− ∫ \\frac{1}{x}dx} (−xe^{x}) dx + C \\rbrack
$$


$$
y = −x (e^{x} + C)
$$

代入$y(1) = −e$得$C = 0$。
因此解为$y = −xe^{x}$。
', 9, 'Mogullzr', '2026-01-29 14:20:48', 9, 'Mogullzr', '2026-01-29 14:20:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3224');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3224');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '3224');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3225, '2025年考研数学卷3第14题', '简单', '考研数学2025年数3真题', '（填空题）已知函数$z = z(x, y)$由

$$
z + \\ln z - \\int_{y}^{x} te^{−t^{2}} dt = 1
$$
确定，则

$$
\\frac{∂^{2}z}{∂x^{2}}​_{(1,1)} = ______
$$
', '[]', '$\\frac{1}{8}e^{−2}$
', '


$$
\\frac{∂z}{∂x}​_{(1,1)} = \\frac{\\int_{y}^{x} e^{−t^{2}}dt + xe^{−x^{2}}}{1 + \\frac{1}{z}}​_{(1,1)} = \\frac{e^{−1}}{2}
$$


$$
\\frac{∂^{2}z}{∂x^{2}}​_{(1,1)} = \\frac{ \\lbrack 2e^{−x^{2}} + xe^{−x^{2}}(−2x) \\rbrack  (1 + \\frac{1}{z}) + \\frac{1}{z^{2}} (\\int_{y}^{x} e^{−t^{2}}dt + xe^{−x^{2}}) \\frac{∂z}{∂x}​_{(1,1)}}{(1 + \\frac{1}{z})^{2}}
$$

代入数值后得：

$$
\\frac{e^{−1} ⋅ \\frac{e^{−1}}{2}}{4} = \\frac{e^{−2}}{8}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:49', 9, 'Mogullzr', '2026-01-29 14:20:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3225');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3225');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '3225');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3226, '2025年考研数学卷3第15题', '简单', '考研数学2025年数3真题', '（填空题）设

$$
f(x) = \\begin{vmatrix}
2x + 1 & 3 & 2x + 1 & 1\\\\
2x - 3 & 4x & −2 & 1\\\\
2x + 1 & 2 & 2x + 1 & 1\\\\
2x - 4 & 4x & −2 & 1
\\end{vmatrix} ,  g(x) = \\begin{vmatrix}
2x + 1 & 1 & 2x + 1 & 3\\\\
5x + 1 & −2 & 4x & −3\\\\
0 & 1 & 2x + 1 & 2\\\\
2x & −2 & 4x & −4
\\end{vmatrix} ,
$$
且$f(x) = g(x)$，则不同的根的个数为', '[]', '2
', '


$$
f(x) = \\begin{vmatrix}
2x + 1 & 2x + 1 & 1\\\\
2x & 4x & −2\\\\
0 & 0 & 0
\\end{vmatrix} = 0
$$



$$
g(x) = x(−8x - 2) = 0
$$

可得两个根$x_{1} = −\\frac{1}{4}$，$x_{2} = 0$。
', 9, 'Mogullzr', '2026-01-29 14:20:49', 9, 'Mogullzr', '2026-01-29 14:20:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3226');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3226');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '3226');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3227, '2025年考研数学卷3第16题', '简单', '考研数学2025年数3真题', '（填空题）设$A$、$B$、$C$为三个随机事件，且$A$与$B$相互独立，$B$与$C$相互独立，$A$与$C$互不相容，已知$P(A) = P(C) = \\frac{1}{4}$，$P(B) = \\frac{1}{2}$，则在事件$A$、$B$、$C$至少有一个发生的条件下，$A$、$B$、$C$中恰有一个发生的概率为 ______。', '[]', '$\\frac{2}{3}$
', '
首先计算事件$A ∪ B ∪ C$的概率：

$$
P(A ∪ B ∪ C) = P(A) + P(B) + P(C) - P(AB) - P(BC)
$$

由于事件$A$与$B$相互独立，$B$与$C$相互独立，代入已知概率：

$$
\\begin{array}{cc}
 & = P(A) + P(B) + P(C) - P(A)P(B) - P(B)P(C) \\\\
 & = \\frac{1}{4} + \\frac{1}{2} + \\frac{1}{4} - \\frac{1}{8} - \\frac{1}{8} \\\\
 & = \\frac{3}{4} \\\\
\\end{array}
$$

接下来计算仅有两个事件同时发生的概率：

$$
\\begin{array}{cc}
 & P(AB\\overline{C}) + P(A\\overline{B}C) + P(\\overline{A}BC) \\\\
 & = P(A\\overline{C}) + P(\\overline{A}C) \\\\
 & = P(A) + P(C) - 2P(AC) \\\\
 & = \\frac{1}{4} + \\frac{1}{4} \\\\
\\end{array}
$$

最后计算条件概率：

$$
P = \\frac{\\frac{1}{2}}{\\frac{3}{4}} = \\frac{2}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:49', 9, 'Mogullzr', '2026-01-29 14:20:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3227');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '3227');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3228, '2025年考研数学卷3第17题', '简单', '考研数学2025年数3真题', '（本题满分 10 分）计算

$$
\\int_{0}^{1} \\frac{1}{(x + 1)(x^{2} - 2x + 2)} dx
$$
', '[]', '$\\frac{3}{10} \\ln 2 + \\frac{1}{10}π$
', '

$$
\\begin{array}{cc}
 & \\int_{0}^{1} \\frac{1}{(x + 1)(x^{2} - 2x + 2)} dx \\\\
 & = \\int_{0}^{1} (\\frac{A}{x + 1} + \\frac{Bx + C}{x^{2} - 2x + 2}) dx \\\\
 & = \\int_{0}^{1} (\\frac{\\frac{1}{5}}{x + 1} + \\frac{−\\frac{1}{5}x + \\frac{3}{5}}{x^{2} - 2x + 2}) dx \\\\
 & = \\frac{3}{10} \\ln 2 + \\frac{1}{10}π \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:49', 9, 'Mogullzr', '2026-01-29 14:20:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3228');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3228');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '3228');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3229, '2025年考研数学卷3第18题', '简单', '考研数学2025年数3真题', '（本题满分 12 分）设函数$f(x)$在$x = 0$处连续，且

$$
\\lim_{x→0} \\frac{xf(x) - e^{2 \\sin x} + 1}{\\ln(1 + x) + \\ln(1 - x)} = −3
$$
证明：$f(x)$在$x = 0$处可导，并求$f^{′}(0)$。', '[]', '$f^{′}(0) = −5$
', '已知$\\ln(1 + x) + \\ln(1 - x) = \\ln(1 - x^{2}) ∼ −x^{2}$（$x → 0$）。

$$
e^{2 \\sin x} = 1 + 2 \\sin x + \\frac{1}{2}(2 \\sin x)2 + o (x^{2}) = 1 + 2 \\sin x + 2 \\sin^{2} x + o (x^{2})
$$

因此，

$$
−3 = \\lim_{x→0} \\frac{xf(x) - e^{2 \\sin x} + 1}{−x^{2}} = \\lim_{x→0} \\frac{xf(x) - 2 \\sin x - 2 \\sin^{2} x}{−x^{2}}
$$

进一步拆分为：

$$
\\lim_{x→0} \\frac{xf(x) - 2 \\sin x}{x^{2}} + \\lim_{x→0} \\frac{−2 \\sin^{2} x}{−x^{2}}
$$

由于$\\lim_{x→0} \\frac{−2 \\sin^{2} x}{−x^{2}} = 2$，可得：

$$
\\lim_{x→0} \\frac{xf(x) - 2 \\sin x}{x^{2}} = −5
$$

将$\\sin x$展开为$\\sin x = x - \\frac{1}{6}x^{3} + o(x^{3})$，代入得：

$$
\\lim_{x→0} \\frac{xf(x) - 2x + \\frac{1}{3}x^{3} + o(x^{3})}{x^{2}} = −5
$$

即：

$$
\\lim_{x→0} \\frac{x(f(x) - 2) + \\frac{1}{3}x^{3} + o(x^{3})}{x^{2}} = −5
$$

分子分母同除以$x$，得：

$$
\\lim_{x→0} \\frac{f(x) - 2 + \\frac{1}{3}x^{2} + o(x^{2})}{x} = −5
$$

由于分母趋于 0 且极限存在，分子必趋于 0，即：

$$
\\lim_{x→0}(f(x) - 2) = 0
$$

因此$f(0) = 2$。
于是：

$$
\\lim_{x→0} \\frac{f(x) - 2}{x} = −5
$$

即$f^{′}(0) = −5$。
', 9, 'Mogullzr', '2026-01-29 14:20:49', 9, 'Mogullzr', '2026-01-29 14:20:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3229');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3229');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '3229');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3230, '2025年考研数学卷3第19题', '简单', '考研数学2025年数3真题', '（本题满分 12 分）设区域$D = \\{(x, y) ∣ y^{2} ≤ x, x^{2} ≤ y\\}$，计算$\\iint_{D}(x - y + 1)2 dx dy$。', '[]', '$\\frac{71}{210}$
', '


$$
\\iint_{D}(x - y + 1)2 dx dy = \\iint_{D} ((x - y)2 + 2(x - y) + 1)  dx dy
$$

由轮换对称性，$\\iint_{D}(x - y) dx dy = 0$。
计算$\\iint_{D}(x - y)2 dx dy$：

$$
= \\int_{0}^{1} dx \\int_{x^{2}}^{\\sqrt{x}}(x - y)2 dy = \\int_{0}^{1}  \\lbrack \\frac{1}{3}(y - x)3 \\rbrack _{x^{2}}^{\\sqrt{x}}  dx
$$


$$
= \\frac{1}{3} \\int_{0}^{1}  \\lbrack (\\sqrt{x} - x)3 - (x^{2} - x)3 \\rbrack   dx = \\frac{1}{3} × \\frac{1}{70} = \\frac{1}{210}
$$

计算$\\iint_{D} 1 dx dy$：

$$
= \\int_{0}^{1} dx \\int_{x^{2}}^{\\sqrt{x}} dy = \\int_{0}^{1} (\\sqrt{x} - x^{2}) dx = \\frac{2}{3} - \\frac{1}{3} = \\frac{1}{3}
$$

故原积分$= \\frac{1}{210} + \\frac{1}{3} = \\frac{71}{210}$。
', 9, 'Mogullzr', '2026-01-29 14:20:49', 9, 'Mogullzr', '2026-01-29 14:20:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3230');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3230');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3230');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3231, '2025年考研数学卷3第20题', '简单', '考研数学2025年数3真题', '（本题满分 12 分）设函数$f(x)$在区间$(a, b)$内可导，证明：导函数$f^{′}(x)$在$(a, b)$内严格单调增加的充分必要条件是：对$(a, b)$内任意的$x_{1}, x_{2}, x_{3}$，且$x_{1} < x_{2} < x_{3}$，有
$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}
$$
', '[]', '见解析
', '充分性证明
若对任意$x_{1} < x_{2} < x_{3}$，有

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}},
$$

在区间内取任意$x_{1} < x_{2} < x_{3} < x_{4}$，则有

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}} < \\frac{f(x_{4}) - f(x_{3})}{x_{4} - x_{3}}.
$$

令$x_{2} → x_{1}^{+}$，得

$$
f_{+}^{′}(x_{1}) ≤ \\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}}.
$$

令$x_{2} → x_{3}^{−}$，得

$$
\\frac{f(x_{3}) - f(x_{1})}{x_{3} - x_{1}} ≤ f_{−}^{′}(x_{3}).
$$

由$f(x)$可导，有

$$
f_{+}^{′}(x_{1}) = f_{−}^{′}(x_{1}) = f^{′}(x_{1}),  f_{+}^{′}(x_{3}) = f_{−}^{′}(x_{3}) = f^{′}(x_{3}),
$$

因此

$$
f^{′}(x_{1}) < f^{′}(x_{3}),
$$

即$f^{′}(x)$严格单调递增。
必要性证明
已知$f^{′}(x)$严格单调递增，在$\\lbrack x_{1}, x_{2} \\rbrack$和$\\lbrack x_{2}, x_{3} \\rbrack$上分别应用拉格朗日中值定理，存在$ξ_{1} ∈ (x_{1}, x_{2})$，$ξ_{2} ∈ (x_{2}, x_{3})$，使得

$$
f^{′}(ξ_{1}) = \\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}},  f^{′}(ξ_{2}) = \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}.
$$

由于$ξ_{1} < ξ_{2}$且$f^{′}(x)$严格递增，有

$$
f^{′}(ξ_{1}) < f^{′}(ξ_{2}),
$$

即

$$
\\frac{f(x_{2}) - f(x_{1})}{x_{2} - x_{1}} < \\frac{f(x_{3}) - f(x_{2})}{x_{3} - x_{2}}.
$$

综上，充要条件得证。
', 9, 'Mogullzr', '2026-01-29 14:20:50', 9, 'Mogullzr', '2026-01-29 14:20:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3231');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3231');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3231');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3232, '2025年考研数学卷3第21题', '简单', '考研数学2025年数3真题', '（本题满分 12 分）设矩阵

$$
A = \\begin{vmatrix}
1 & −1 & 3 & 0 & −1\\\\
−1 & 0 & −2 & −a & −1\\\\
1 & 1 & a & 2 & 3
\\end{vmatrix}
$$
的秩为$2$。（1）求$a$的值；（2）求$A$的列向量组的一个极大线性无关组$α, β$，并求矩阵$H$，使得$A = GH$，其中$G = (α, β)$。', '[]', '(1)$a = 1$
(2) 列向量组的一个极大线性无关组为$α = \\begin{vmatrix}
1\\\\
−1\\\\
1
\\end{vmatrix}$,$β = \\begin{vmatrix}
−1\\\\
0\\\\
1
\\end{vmatrix}$，矩阵$H = \\left \\lbrack  \\begin{array}{ccccc}
1 & 0 & 2 & 1 & 1 \\\\
0 & 1 & −1 & 1 & 2 \\\\
\\end{array} \\right \\rbrack$
', '(1) 对矩阵$A$作初等行变换：

$$
A → \\begin{vmatrix}
1 & −1 & 3 & 0 & −1\\\\
0 & −1 & 1 & −a & −2\\\\
0 & 0 & a - 1 & −2a + 2 & 0
\\end{vmatrix}
$$

因为$r(A) = 2$，所以第三行元素全为 0，即$a - 1 = 0$且$−2a + 2 = 0$，解得$a = 1$。
(2) 当$a = 1$时，矩阵$A$经初等行变换为：

$$
A → \\begin{vmatrix}
1 & −1 & 3 & 0 & −1\\\\
0 & −1 & 1 & −1 & −2\\\\
0 & 0 & 0 & 0 & 0
\\end{vmatrix}
$$

令$A = (α_{1}, α_{2}, α_{3}, α_{4}, α_{5})$，则列向量组的一个极大线性无关组为$α_{1}, α_{2}$，即$α = α_{1} = (1, −1, 1)T$，$β = α_{2} = (−1, 0, 1)T$。
由列向量线性关系：

$$
α_{3} = 2α_{1} - α_{2},  α_{4} = α_{1} + α_{2},  α_{5} = α_{1} + 2α_{2}
$$

故矩阵$H = \\left \\lbrack  \\begin{array}{ccccc}
1 & 0 & 2 & 1 & 1 \\\\
0 & 1 & −1 & 1 & 2 \\\\
\\end{array} \\right \\rbrack$，满足$A = GH$。
', 9, 'Mogullzr', '2026-01-29 14:20:50', 9, 'Mogullzr', '2026-01-29 14:20:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3232');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3232');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '3232');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3233, '2025年考研数学卷3第22题', '简单', '考研数学2025年数3真题', '（本题满分 12 分）投保人的损失事件发生时，保险公司的赔付额$Y$与投保人的损失额$X$的关系为

$$
Y = \\begin{cases} 0 & X ≤ 100 \\\\ X - 100 & X > 100 \\end{cases}
$$
$X$的概率密度为

$$
f(x) = \\begin{cases} \\frac{2 × 100^{2}}{(100 + x)3} & x > 0 \\\\ 0 & x ≤ 0 \\end{cases}
$$
（1）求$P\\{Y > 0\\}$及$EY$；（2）这种损失事件在一年内发生的次数记为$N$，保险公司在一年内就这种损失事件产生的理赔次数记为$M$，假设$N$服从参数为 8 的泊松分布，在$N = n(n ≥ 1)$的条件下，$M$服从二项分布$B(n, p)$，其中$p = P\\{Y > 0\\}$，求$M$的概率分布。', '[]', '
(1)$P\\{Y > 0\\} = \\frac{1}{4}$,$EY = 50$。
(2)$M$的概率分布为$M ∼ P(2)$，即$P\\{M = m\\} = \\frac{2^{m}e^{−2}}{m!},  m = 0, 1, 2, ⋯$。
', '
(1)$P\\{Y > 0\\} = P\\{X > 100\\} = \\int_{100}^{+∞} \\frac{2×100^{2}}{(100+x)3}dx$。
令$t = 100 + x$，则积分化为：

$$
\\int_{200}^{+∞} \\frac{2 × 100^{2}}{t^{3}}dt = − \\frac{100^{2}}{t^{2}}​_{200}^{+∞} = \\frac{100^{2}}{200^{2}} = \\frac{1}{4}.
$$

计算$EY$：

$$
EY = \\int_{100}^{+∞}(x - 100) ⋅ \\frac{2 × 100^{2}}{(100 + x)3}dx.
$$

令$t = x - 100$，则$x = t + 100$，积分化为：

$$
\\int_{0}^{+∞} t ⋅ \\frac{2 × 100^{2}}{(200 + t)3}dt.
$$

再令$u = 200 + t$，则$t = u - 200$，积分化为：

$$
2 × 100^{2} \\int_{200}^{+∞} \\frac{u - 200}{u^{3}}du = 2 × 100^{2} (\\int_{200}^{+∞} \\frac{1}{u^{2}}du - 200 \\int_{200}^{+∞} \\frac{1}{u^{3}}du) .
$$

计算得：

$$
2 × 100^{2} (−\\frac{1}{u}​_{200}^{+∞} - 200 × −\\frac{1}{2u^{2}}​_{200}^{+∞}) = 2 × 100^{2} (\\frac{1}{200} - \\frac{100}{200^{2}}) = 50.
$$

(2) 由题意，$N ∼ P(8)$，$M∣N = n ∼ B(n, \\frac{1}{4})$。
计算$M$的概率分布：

$$
\\begin{array}{cc}
P\\{M = m\\} & = \\sum_{n=m}^{∞} P\\{N = n\\} ⋅ P\\{M = m∣N = n\\} \\\\
 & = \\sum_{n=m}^{∞} \\frac{8^{n}e^{−8}}{n!} ⋅ C_{n}^{m} (\\frac{1}{4})^{m} (\\frac{3}{4})^{n-m} . \\\\
\\end{array}
$$

化简得：

$$
\\frac{(8 × \\frac{1}{4})me^{−8}}{m!} \\sum_{n=m}^{∞} \\frac{(8 × \\frac{3}{4})n−m}{(n - m)!} = \\frac{2^{m}e^{−8}}{m!} \\sum_{k=0}^{∞} \\frac{6^{k}}{k!} = \\frac{2^{m}e^{−8} ⋅ e^{6}}{m!} = \\frac{2^{m}e^{−2}}{m!}.
$$

因此，$M$服从参数为 2 的泊松分布，即$M ∼ P(2)$，概率分布为：

$$
P\\{M = m\\} = \\frac{2^{m}e^{−2}}{m!},  m = 0, 1, 2, ⋯  .
$$

', 9, 'Mogullzr', '2026-01-29 14:20:50', 9, 'Mogullzr', '2026-01-29 14:20:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3233');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3233');
