INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3036, '2023年考研数学卷1第1题', '简单', '考研数学2023年数1真题', '曲线$y = x \\ln (e + \\frac{1}{x-1})$的渐近线方程为（  ）。', '[''$y = x + e$'', ''$y = x + \\\\frac{1}{e}$'', ''$y = x$'', ''$y = x - \\\\frac{1}{e}$'']', "['B']", '首先，计算斜率$k$：
$$
k = \\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\frac{x \\ln (e + \\frac{1}{x-1})}{x} = \\lim_{x→∞} \\ln (e + \\frac{1}{x - 1}) = 1
$$
接着，计算截距$b$：
$$
\\begin{array}{cc}
b & = \\lim_{x→∞}(y - kx) \\\\
 & = \\lim_{x→∞}  \\lbrack x \\ln (e + \\frac{1}{x - 1}) - x \\rbrack  \\\\
 & = \\lim_{x→∞} x  \\lbrack \\ln (e + \\frac{1}{x - 1}) - 1 \\rbrack  \\\\
\\end{array}
$$
进一步化简：
$$
b = \\lim_{x→∞} x \\ln  \\lbrack 1 + \\frac{1}{e(x - 1)} \\rbrack  = \\lim_{x→∞} \\frac{x}{e(x - 1)} = \\frac{1}{e}
$$
因此，斜渐近线方程为$y = x + \\frac{1}{e}$。', 9, 'Mogullzr', '2026-01-29 14:19:51', 9, 'Mogullzr', '2026-01-29 14:19:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3036');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3036');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '3036');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3037, '2023年考研数学卷1第2题', '简单', '考研数学2023年数1真题', '若微分方程$y^{′′} + ay^{′} + by = 0$的解在$(−∞, +∞)$上有界，则（  ）', '[''$a < 0, b > 0$'', ''$a > 0, b > 0$'', ''$a = 0, b > 0$'', ''$a = 0, b < 0$'']', "['C']", '二阶常系数齐次线性微分方程$y^{′′} + ay^{′} + by = 0$特征方程为：$λ^{2} + aλ + b = 0$①当$Δ = a^{2} - 4b > 0$时，设其两不同特征值为$λ_{1}, λ_{2}$，则其通解结构为：$y(x) = C_{1}e^{λ_{1}x} + C_{2}e^{λ_{2}x}$.不管$λ_{1}, λ_{2}$的正负如何，其在$x → ∞$时，$y(x) → ∞$，其必然为无界函数.舍去.②当$Δ = a^{2} - 4b = 0$时，设其两相同特征值为$λ_{1} = λ_{2}$，则其通解结构为$y(x) = (C_{1} + C_{2}x)e^{λ_{1}x}$. 不管$λ_{1}, λ_{2}$的正负如何，其在$x → ∞$时，$y(x) → ∞$，其必然为无界函数.舍去.③当$Δ = a^{2} - 4b < 0$时，设其两特征值为$λ_{1,2} = α ± βi$，则其通解结构为$y(x) = e^{αx}(C_{1} \\sin βx + C_{2} \\cos βx)$.若$α \\neq 0$，则$x → ∞$时，$y(x) = e^{αx}(C_{1} \\sin βx + C_{2} \\cos βx)$为无界函数，从而$α = 0$即当$α = 0$时，$y(x) = C_{1} \\sin βx + C_{2} \\cos βx$为有界函数.此时$Δ = a^{2} - 4b < 0$，即$a = 0, b > 0$，故选（C）.', 9, 'Mogullzr', '2026-01-29 14:19:51', 9, 'Mogullzr', '2026-01-29 14:19:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3037');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3037');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '3037');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3038, '2023年考研数学卷1第3题', '简单', '考研数学2023年数1真题', '设函数$y = f(x)$由
$$
\\begin{cases} x = 2t + ∣t∣ \\\\ y = ∣t∣ \\sin t \\end{cases}
$$
确定，则（  ）', '[''$f(x)$连续，$f^{′}(0)$不存在.'', ''$f^{′}(0)$存在，$f^{′}(x)$在$x = 0$处不连续.'', ''$f^{′}(x)$连续，$f^{′′}(0)$不存在.'', ''$f^{′′}(0)$存在，$f^{′′}(x)$在$x = 0$处不连续.'']', "['C']", '由参数方程可得$f(x) = \\begin{cases} \\frac{x}{3} \\sin \\frac{x}{3} & x ≥ 0 \\\\ −x \\sin x & x < 0 \\end{cases}$$\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{−}} f(x) = 0 = f(0)$，$f(x)$在$x = 0$处连续.$f^{′}(x) = \\begin{cases} \\frac{1}{3} \\sin \\frac{x}{3} + \\frac{x}{9} \\cos \\frac{x}{3} & x ≥ 0 \\\\ − \\sin x - x \\cos x & x < 0 \\end{cases}$，$\\lim_{x→0^{+}} f^{′}(x) = \\lim_{x→0^{−}} f^{′}(x) = 0 = f^{′}(0)$，$f^{′}(x)$在$x = 0$处连续.$f_{+}^{′′}(0) = \\lim_{x→0^{+}} \\frac{f^{′}(x)-f^{′}(0)}{x} = \\lim_{x→0^{+}} \\frac{\\frac{1}{3} \\sin \\frac{x}{3}+\\frac{x}{9} \\cos \\frac{x}{3}}{x} = \\frac{2}{9}$;$f_{−}^{′′}(0) = \\lim_{x→0^{−}} \\frac{f^{′}(x)-f^{′}(0)}{x} = \\lim_{x→0^{−}} \\frac{− \\sin x-x \\cos x}{x} = −2$$\\lim_{x→0^{+}} f^{′′}(x) \\neq \\lim_{x→0^{−}} f^{′′}(x)$，$f^{′′}(x)$在$x = 0$处不可导，选C.', 9, 'Mogullzr', '2026-01-29 14:19:51', 9, 'Mogullzr', '2026-01-29 14:19:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3038');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3038');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3038');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3039, '2023年考研数学卷1第4题', '简单', '考研数学2023年数1真题', '已知$a_{n} < b_{n}(n = 1, 2, ⋯ )$，若级数$\\sum_{n=1}^{∞} a_{n}$与$\\sum_{n=1}^{∞} b_{n}$均收敛，则“级数$\\sum_{n=1}^{∞} a_{n}$绝对收敛”是“级数$\\sum_{n=1}^{∞} b_{n}$绝对收敛”的（）', '[''充分必要条件'', ''充分不必要条件'', ''必要不充分条件'', ''既不充分也不必要'']', "['A']", '由条件可知$\\sum_{n=1}^{∞}(b_{n} - a_{n})$为收敛的正项级数，进而绝对收敛；设$\\sum_{n=1}^{∞} a_{n}$绝对收敛，则由$∣b_{n}∣ = ∣b_{n} - a_{n} + a_{n}∣ ≤ ∣b_{n} - a_{n}∣ + ∣a_{n}∣$与比较 ，得$\\sum_{n=1}^{∞} b_{n}$绝对收敛；设$\\sum_{n=1}^{∞} b_{n}$绝对收敛，则由$∣a_{n}∣ = ∣a_{n} - b_{n} + b_{n}∣ ≤ ∣a_{n} - b_{n}∣ + ∣b_{n}∣$与比较 ，得$\\sum_{n=1}^{∞} a_{n}$绝对收敛；故为充要条件。', 9, 'Mogullzr', '2026-01-29 14:19:51', 9, 'Mogullzr', '2026-01-29 14:19:51', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3039');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3039');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '3039');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3040, '2023年考研数学卷1第5题', '简单', '考研数学2023年数1真题', '已知$n$阶矩阵$A$、$B$、$C$满足$ABC = O$，$E$为$n$阶单位矩阵。记矩阵

$$
\\left( \\begin{array}{cc}
O & A \\\\
BC & E \\\\
\\end{array} \\right) ,  \\left( \\begin{array}{cc}
AB & C \\\\
O & E \\\\
\\end{array} \\right) ,  \\left( \\begin{array}{cc}
E & AB \\\\
AB & O \\\\
\\end{array} \\right)
$$
的秩分别为$r_{1}$、$r_{2}$、$r_{3}$，则', '[''$r_{1} ≤ r_{2} ≤ r_{3}$'', ''$r_{1} ≤ r_{3} ≤ r_{2}$'', ''$r_{3} ≤ r_{1} ≤ r_{2}$'', ''$r_{2} ≤ r_{1} ≤ r_{3}$'']', "['B']", '由于初等变换不改变矩阵的秩，因此：
$$
r_{1} = r \\left( \\begin{array}{cc}
O & A \\\\
BC & E \\\\
\\end{array} \\right) = r \\left( \\begin{array}{cc}
−ABC & O \\\\
BC & E \\\\
\\end{array} \\right) = r \\left( \\begin{array}{cc}
O & O \\\\
BC & E \\\\
\\end{array} \\right) = n
$$

$$
r_{2} = r \\left( \\begin{array}{cc}
AB & C \\\\
O & E \\\\
\\end{array} \\right) = r \\left( \\begin{array}{cc}
AB & O \\\\
O & E \\\\
\\end{array} \\right) = n + r(AB)
$$

$$
r_{3} = r \\left( \\begin{array}{cc}
E & AB \\\\
AB & O \\\\
\\end{array} \\right) = r \\left( \\begin{array}{cc}
E & O \\\\
O & −ABAB \\\\
\\end{array} \\right) = n + r(ABAB)
$$
又因为$r(ABAB) ≤ r(AB)$，所以选项 B 正确。', 9, 'Mogullzr', '2026-01-29 14:19:52', 9, 'Mogullzr', '2026-01-29 14:19:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3040');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3040');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '3040');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3041, '2023年考研数学卷1第6题', '简单', '考研数学2023年数1真题', '下列矩阵不能相似于对角矩阵的是（ ）', '[''$\\\\left( \\\\begin{array}{ccc}\\n1 & 1 & a \\\\\\\\\\n0 & 2 & 2 \\\\\\\\\\n0 & 0 & 3 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 1 & a \\\\\\\\\\n1 & 2 & 0 \\\\\\\\\\na & 0 & 3 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 1 & a \\\\\\\\\\n0 & 2 & 0 \\\\\\\\\\n0 & 0 & 2 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n1 & 1 & a \\\\\\\\\\n0 & 2 & 2 \\\\\\\\\\n0 & 0 & 2 \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['D']", '选项 A 为上三角矩阵，特征值为主对角元素，且三个特征值互不相同，故可相似对角化。选项 B 为实对称矩阵，故可相似对角化。选项 C 的特征值为$1, 2, 2$，二重特征值$2$的特征向量的基础解系含解向量个数为$2 = 3 - r(C - 2E)$，所以可相似对角化。故选 D。', 9, 'Mogullzr', '2026-01-29 14:19:52', 9, 'Mogullzr', '2026-01-29 14:19:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3041');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '3041');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3042, '2023年考研数学卷1第7题', '简单', '考研数学2023年数1真题', '已知向量$α_{1} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right)$，$α_{2} = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$，$β_{1} = \\left( \\begin{array}{c}
2 \\\\
5 \\\\
9 \\\\
\\end{array} \\right)$，$β_{2} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$。若$γ$既可由$α_{1}, α_{2}$线性表示，也可由$β_{1}, β_{2}$线性表示，则$γ =$', '[''$k \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n5 \\\\\\\\\\n10 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n−1 \\\\\\\\\\n1 \\\\\\\\\\n2 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n5 \\\\\\\\\\n8 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'']', "['D']", '由题意可知，设存在常数$k_{1}$、$k_{2}$、$t_{1}$、$t_{2}$，使得：
$$
γ = k_{1}α_{1} + k_{2}α_{2},  γ = t_{1}β_{1} + t_{2}β_{2}
$$
即：
$$
k_{1}α_{1} + k_{2}α_{2} = t_{1}β_{1} + t_{2}β_{2}
$$
可得方程组：
$$
\\begin{cases} k_{1} + 2k_{2} = 2t_{1} + t_{2} \\\\ 2k_{1} + k_{2} = 5t_{1} + 0 ⋅ t_{2} \\\\ 3k_{1} + k_{2} = 9t_{1} + t_{2} \\end{cases}
$$
解得：
$$
k_{1} = −3k_{2}
$$
即：
$$
γ = k_{1}α_{1} + k_{2}α_{2} = −3k_{2}α_{1} + k_{2}α_{2} = k_{2} \\begin{vmatrix}
−1\\\\
−5\\\\
−8
\\end{vmatrix} = k \\begin{vmatrix}
1\\\\
5\\\\
8
\\end{vmatrix} ,  k ∈ R
$$
故选（D）。', 9, 'Mogullzr', '2026-01-29 14:19:52', 9, 'Mogullzr', '2026-01-29 14:19:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3042');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3042');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '3042');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3043, '2023年考研数学卷1第8题', '简单', '考研数学2023年数1真题', '设随机变量$X$服从参数为$1$的泊松分布，则$E(∣X - EX∣) =$（　　）', '[''$\\\\frac{1}{e}$'', ''$\\\\frac{1}{2}$'', ''$\\\\frac{2}{e}$'', ''$1$'']', "['C']", '已知$X ∼ P(1)$，则有：
$$
P(X = k) = \\frac{λ^{k}}{k!}e^{−λ} = \\frac{e^{−1}}{k!},  k = 0, 1, 2, ⋯
$$
且$EX = 1$。于是：
$$
\\begin{array}{cc}
 & E(∣X - EX∣) \\\\
 & = \\sum_{k=0}^{+∞} ∣x_{k} - EX∣ ⋅ P_{k} \\\\
 & = ∣0 - 1∣ ⋅ e^{−1} + ∣1 - 1∣ ⋅ e^{−1} + ∣2 - 1∣ ⋅ \\frac{e^{−1}}{2!} + ⋯ + (k - 1) ⋅ \\frac{1}{k!}e^{−1} + ⋯ \\\\
 & = e^{−1} + e^{−1} \\sum_{k=2}^{∞}(k - 1) ⋅ \\frac{1}{k!} \\\\
 & = e^{−1} + e^{−1}(e - 1) - e^{−1}(e - 1 - 1) \\\\
 & = \\frac{2}{e} \\\\
\\end{array}
$$
故选（C）。', 9, 'Mogullzr', '2026-01-29 14:19:52', 9, 'Mogullzr', '2026-01-29 14:19:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3043');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3043');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '3043');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3044, '2023年考研数学卷1第9题', '简单', '考研数学2023年数1真题', '设$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$N(μ, σ^{2})$的简单随机样本，$Y_{1}, Y_{2}, ⋯  , Y_{m}$为来自总体$N(μ, 2σ^{2})$的简单随机样本，且两样本之间相互独立。记
$$
\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i},  \\overline{Y} = \\frac{1}{m} \\sum_{i=1}^{m} Y_{i},  S_{1}^{2} = \\frac{1}{n - 1} \\sum_{i=1}^{n}(X_{i} - \\overline{X})2,  S_{2}^{2} = \\frac{1}{m - 1} \\sum_{i=1}^{m}(Y_{i} - \\overline{Y})2.
$$
则（ ）', '[''$\\\\frac{S_{1}^{2}}{S_{2}^{2}} ∼ F(n, m)$'', ''$\\\\frac{S_{1}^{2}}{S_{2}^{2}} ∼ F(n - 1, m - 1)$'', ''$\\\\frac{2S_{1}^{2}}{S_{2}^{2}} ∼ F(n, m)$'', ''$\\\\frac{2S_{1}^{2}}{S_{2}^{2}} ∼ F(n - 1, m - 1)$'']', "['D']", '
由$\\frac{(n-1)S^{2}}{σ^{2}} ∼ χ^{2}(n - 1)$可知：

$$
\\frac{(n - 1)S_{1}^{2}}{σ^{2}} ∼ χ^{2}(n - 1),  \\frac{(m - 1)S_{1}^{2}}{2σ^{2}} ∼ χ^{2}(m - 1)
$$
又因为两样本相互独立，故

$$
\\frac{2S_{1}^{2}}{S_{2}^{2}} = \\frac{\\frac{(n-1)S_{1}^{2}}{σ^{2}}/(n - 1)}{\\frac{(m-1)S_{1}^{2}}{2σ^{2}}/(m - 1)} ∼ F(n - 1, m - 1)
$$
因此，选择（D）。', 9, 'Mogullzr', '2026-01-29 14:19:52', 9, 'Mogullzr', '2026-01-29 14:19:52', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3044');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1076', '3044');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3045, '2023年考研数学卷1第10题', '简单', '考研数学2023年数1真题', '设$X_{1}, X_{2}$为来自总体$N(μ, σ^{2})$的简单随机样本，其中$σ(σ > 0)$是未知参数，若$\\hat{σ} = a∣X_{1} - X_{2}∣$为$σ$的无偏估计，则$a =$（）', '[''$\\\\frac{\\\\sqrt{π}}{2}$'', ''$\\\\frac{\\\\sqrt{2π}}{2}$'', ''$\\\\sqrt{π}$'', ''$\\\\sqrt{2π}$'']', "['A']", '
因为$X_{1}, X_{2}$为来自总体$N(μ, σ^{2})$的简单随机样本，故

$$
(X_{1} - X_{2}) ∼ N(0, 2σ^{2}).
$$
令$Y = X_{1} - X_{2}$，则随机变量$Y$的概率密度为：

$$
f(y) = \\frac{1}{\\sqrt{2π} ⋅ \\sqrt{2}σ}e^{−\\frac{y^{2}}{4σ^{2}}},  −∞ < y < +∞.
$$
则

$$
\\begin{array}{cc}
E(\\hat{σ}) & = a \\int_{−∞}^{+∞} ∣y∣ ⋅ \\frac{1}{2\\sqrt{π} ⋅ σ}e^{−\\frac{y^{2}}{4σ^{2}}} dy \\\\
 & = \\frac{a}{\\sqrt{π}σ} \\int_{0}^{+∞} ye^{−\\frac{y^{2}}{4σ^{2}}} dy \\\\
 & = −\\frac{2aσ}{\\sqrt{π}} \\int_{0}^{+∞} e^{−\\frac{y^{2}}{4σ^{2}}} d (−\\frac{y^{2}}{4σ^{2}}) \\\\
\\end{array}
$$
因$E(\\hat{σ}) = σ$，则

$$
a = \\frac{\\sqrt{π}}{2},
$$
选（A）。', 9, 'Mogullzr', '2026-01-29 14:19:53', 9, 'Mogullzr', '2026-01-29 14:19:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3045');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '3045');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '3045');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3046, '2023年考研数学卷1第11题', '简单', '考研数学2023年数1真题', '（填空题）当$x → 0$时，函数$f(x) = ax + bx^{2} + \\ln(1 + x)$与$g(x) = e^{x^{2}} - \\cos x$是等价无穷小，则$ab =$__________.', '[]', '$ab = −2$
', '

$$
\\begin{array}{cc}
 & \\lim_{x→0} \\frac{ax + bx^{2} + \\ln(1 + x)}{e^{x^{2}} - \\cos x} \\\\
 & = \\lim_{x→0} \\frac{ax + bx^{2} + x - \\frac{1}{2}x^{2} + \\frac{1}{3}x^{3} - \\frac{1}{4}x^{4} + o(x^{4})}{1 + x^{2} + \\frac{1}{2}(x^{4}) - (1 - \\frac{x^{2}}{2} + \\frac{1}{4!}x^{4}) + o(x^{4})} \\\\
\\end{array}
$$

$a + 1 = 0$，$a = −1$，$b - \\frac{1}{2} = \\frac{3}{2}$，$b = 2$，
$ab = −2$.
', 9, 'Mogullzr', '2026-01-29 14:19:53', 9, 'Mogullzr', '2026-01-29 14:19:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3046');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3046');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3046');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3047, '2023年考研数学卷1第12题', '简单', '考研数学2023年数1真题', '（填空题）曲面$z = x + 2y + \\ln(1 + x^{2} + y^{2})$在点$(0, 0, 0)$处的切平面方程为__________.', '[]', '$x + 2y - z = 0$
', '', 9, 'Mogullzr', '2026-01-29 14:19:53', 9, 'Mogullzr', '2026-01-29 14:19:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3047');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3047');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '3047');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3048, '2023年考研数学卷1第13题', '简单', '考研数学2023年数1真题', '（填空题）设$f(x)$是周期为$2$的周期函数，且$f(x) = 1 - x, x ∈  \\lbrack 0, 1 \\rbrack$，若$f(x) = \\frac{a_{0}}{2} + \\sum_{n=1}^{∞} a_{n} \\cos nπx$，则$\\sum_{n=1}^{∞} a_{2n} =$__________。', '[]', '0
', '$a_{n} = 2 \\int_{0}^{1}(1 - x) \\cos nπxdx = 2(\\int_{0}^{1} \\cos nπxdx - \\int_{0}^{1} x \\cos nπxdx)$
$= −\\frac{2}{nπ} \\int_{0}^{1} xd(\\sin nπx)$
$= \\frac{−2}{n^{2}π^{2}}(\\cos nπ - 1)$，
故$\\sum_{n=1}^{∞} a_{2n} = \\frac{−1}{2n^{2}π^{2}}(\\cos 2nπ - 1) = 0$
', 9, 'Mogullzr', '2026-01-29 14:19:53', 9, 'Mogullzr', '2026-01-29 14:19:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3048');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3048');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '3048');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3049, '2023年考研数学卷1第14题', '简单', '考研数学2023年数1真题', '（填空题）设连续函数$f(x)$满足：$f(x + 2) - f(x) = x$，$\\int_{0}^{2} f(x)dx = 0$，则$\\int_{1}^{3} f(x)dx =$__________.', '[]', '$\\frac{1}{2}$
', '

$$
\\begin{array}{cc}
\\int_{1}^{3} f(x)dx & = \\int_{1}^{2} f(x)dx + \\int_{2}^{3} f(x)dx = \\int_{1}^{2} f(x)dx + \\int_{0}^{1} f(x + 2)dx \\\\
 & = \\int_{1}^{2} f(x)dx + \\int_{0}^{1} \\lbrack f(x) + x \\rbrack dx = \\int_{1}^{2} f(x)dx + \\int_{0}^{1} f(x)dx + \\int_{0}^{1} xdx \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:53', 9, 'Mogullzr', '2026-01-29 14:19:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3049');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3049');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '3049');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3050, '2023年考研数学卷1第15题', '简单', '考研数学2023年数1真题', '（填空题）已知向量

$$
α_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) ,  α_{2} = \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  α_{3} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) ,  β = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) ,  γ = k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3}.
$$
若$γ^{T}α_{i} = β^{T}α_{i} (i = 1, 2, 3)$，则$k_{1}^{2} + k_{2}^{2} + k_{3}^{2} =$________。', '[]', '$\\frac{11}{9}$
', '由$γ^{T}α_{1} = β^{T}α_{1} = 1$，可得：

$$
k_{1}α_{1}^{T}α_{1} + k_{2}α_{2}^{T}α_{2} + k_{3}α_{3}^{T}α_{3} = 1 ⇒ k_{1} = \\frac{1}{3}
$$

同理可得：

$$
k_{2} = −1,  k_{3} = −\\frac{1}{3}
$$

于是：

$$
k_{1}^{2} + k_{2}^{2} + k_{3}^{2} = \\frac{11}{9}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:53', 9, 'Mogullzr', '2026-01-29 14:19:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3050');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3050');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1077', '3050');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3051, '2023年考研数学卷1第16题', '简单', '考研数学2023年数1真题', '（填空题）设随机变量$X$与$Y$相互独立，且$X ∼ B(1, \\frac{1}{3})$，$Y ∼ B(2, \\frac{1}{2})$则$P\\{X = Y\\} =$_______.', '[]', '$\\frac{1}{3}$
', '
因为$X ∼ B(1, \\frac{1}{3})$，$Y ∼ B(2, \\frac{1}{2})$所以$X$取值为$0, 1$，$Y$的取值为$0, 1, 2$
又因为$X$与$Y$相互独立，所以

$$
\\begin{array}{cc}
P\\{X = Y\\} & = P\\{X = 0, Y = 0\\} + P\\{X = 1, Y = 1\\} \\\\
 & = \\frac{2}{3}C_{2}^{0} (\\frac{1}{2})^{2} + \\frac{1}{3}C_{2}^{1} (\\frac{1}{2})^{2} = \\frac{1}{3} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:54', 9, 'Mogullzr', '2026-01-29 14:19:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3051');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3051');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3052, '2023年考研数学卷1第17题', '简单', '考研数学2023年数1真题', '（本题满分 10 分）设曲线$y = y(x)(x > 0)$经过点$(1, 2)$，该曲线上任一点$P(x, y)$到$y$轴的距离等于该点处的切线在$y$轴上的截距.（1） 求$y(x)$；（2） 求函数$f(x) = \\int_{1}^{x} y(t)dt$在$(0, +∞)$上的最大值.', '[]', '
（1）$y(x) = x(2 - \\ln x)$
（2）最大值为$\\frac{1}{4}e^{4} - \\frac{5}{4}$
', '
（1）曲线$L$在点$P(x, y)$处的切线方程为$Y - y = y^{′}(X - x)$，令$X = 0$， 则切线在$y$轴上的截距为$Y = y - xy^{′}$，则$x = y - xy^{′}$，即$y^{′} - \\frac{1}{x}y = −1$，解得
$y(x) = x(C - \\ln x)$，其中$C$为任意常数.
又$y(1) = 2$，则$C = 2$，故$y(x) = x(2 - \\ln x)$.
（2）由（1）可知，$f(x) = \\int_{1}^{x} t(2 - \\ln t)dt$，故$f^{′}(x) = x(2 - \\ln x) = 0$. 则驻点为$x = e^{2}$.
当$0 < x < e^{2}$时，$f^{′}(x) > 0$；当$x > e^{2}$时，$f^{′}(x) < 0$故$f(x)$在$x = e^{2}$处取得极大值，同时也是最大值，且最大值为$f(e^{2}) = \\frac{1}{4}e^{4} - \\frac{5}{4}$.
', 9, 'Mogullzr', '2026-01-29 14:19:54', 9, 'Mogullzr', '2026-01-29 14:19:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3052');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3052');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '3052');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3053, '2023年考研数学卷1第18题', '简单', '考研数学2023年数1真题', '（本题满分 12 分）求函数$f(x, y) = (y - x^{2})(y - x^{3})$的极值.', '[]', '极小值为$−\\frac{4}{729}$
', '


$$
\\begin{cases} f_{x}^{′} = −2(2y + 3xy - 5x^{3}) = 0 \\\\ f_{y}^{′} = 2y - x^{2} - x^{3} = 0 \\end{cases}
$$

，得驻点为$(0, 0), (1, 1), (\\frac{2}{3}, \\frac{10}{27})$

$$
\\begin{cases} f_{xx}^{′′} = −(2y + 3xy - 5x^{3}) - x(3y - 15x^{2}) \\\\ f_{xy}^{′′} = −2x - 3x^{2} \\\\ f_{yy}^{′′} = 2 \\end{cases}
$$

代入点$(0, 0)$可得

$$
\\begin{cases} A = 0 \\\\ B = 0 \\\\ C = 2 \\end{cases}
$$

，则$AC - B^{2} = 0$判别法失效，故当$x → 0$时，取$y = x^{2} + kx^{3}$可得$f(x, y) = kx^{5}$故附近值既有大于$0$也有小于$0$。因此$(0, 0)$不是极值点
代入点$(1, 1)$可得

$$
\\begin{cases} A = 12 \\\\ B = −5 \\\\ C = 2 \\end{cases}
$$

，则$AC - B^{2} < 0$故$(1, 1)$不是极值点
代入点$(\\frac{2}{3}, \\frac{10}{27})$可得

$$
\\begin{cases} A = \\frac{100}{27} \\\\ B = −\\frac{8}{3} \\\\ C = 2 \\end{cases}
$$

，则$AC - B^{2} > 0$且$A > 0$故$(\\frac{2}{3}, \\frac{10}{27})$是极小值点. 故$f(\\frac{2}{3}, \\frac{10}{27}) = −\\frac{4}{729}$为极小值.
', 9, 'Mogullzr', '2026-01-29 14:19:54', 9, 'Mogullzr', '2026-01-29 14:19:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3053');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3053');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '3053');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3054, '2023年考研数学卷1第19题', '简单', '考研数学2023年数1真题', '（本题满分 12 分）设空间有界区域$Ω$由柱面$x^{2} + y^{2} = 1$与平面$z = 0$和$x + z = 1$围成.$Σ$为$Ω$的边界曲面的外侧. 计算曲面积分$I = \\iint_{Σ} 2xzdydz + xz \\cos ydzdx + 3yz \\sin xdxdy$.', '[]', '$\\frac{5π}{4}$
', '由高斯公式可得：
$I = \\iint_{Σ} 2xzdydz + xz \\cos ydzdx + 3yz \\sin xdxdy = \\iiint_{Ω}(2z - xz \\sin y + 3y \\sin x)dV$
由对称性知$\\iiint_{Ω}(xz \\sin y + 3y \\sin x)dV = 0$，则

$$
\\begin{array}{cc}
I & = \\iiint_{Ω} 2z dV = \\iint_{D_{xy}} dx dy \\int_{0}^{1-x} 2z dz = \\iint_{D_{xy}}(1 - x)2dx dy \\\\
 & = \\iint_{D_{xy}}(1 - 2x + x^{2})dx dy = π + \\frac{1}{2} \\int_{0}^{2π} dθ \\int_{0}^{1} r^{3} dr = \\frac{5π}{4} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:19:54', 9, 'Mogullzr', '2026-01-29 14:19:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3054');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3054');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '3054');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3055, '2023年考研数学卷1第20题', '简单', '考研数学2023年数1真题', '（本题满分 12 分）设函数$f(x)$在$\\lbrack −a, a \\rbrack$上具有$2$阶连续导数. 证明:（1）若$f(0) = 0$，则存在$ξ ∈ (−a, a)$，使得$f^{′′}(ξ) = \\frac{1}{a^{2}} \\lbrack f(a) + f(−a) \\rbrack$;（2）若$f(x)$在$(−a, a)$内取得极值，则存在$η ∈ (−a, a)$，使得$∣f^{′′}(η)∣ ≥ \\frac{1}{2a^{2}}∣f(a) - f(−a)∣$.', '[]', '见解析
', '（Ⅰ）证明：由泰勒中值定理


$$
f(x) = f(0) + f^{′}(0)x + \\frac{f^{′′}(η)}{2!}x^{2} = f^{′}(0)x + \\frac{f^{′′}(η)}{2!}x^{2},
$$

其中$η$介于$0$与$x$之间，则

$$
f(a) = f^{′}(0)a + \\frac{f^{′′}(η_{1})}{2!}a^{2},  0 < η_{1} < a (1)
$$



$$
f(−a) = f^{′}(0)(−a) + \\frac{f^{′′}(η_{2})}{2!}a^{2},  −a < η_{2} < 0 (2)
$$

(1) + (2) 得：


$$
f(a) + f(−a) = \\frac{a^{2}}{2} \\lbrack f^{′′}(η_{1}) + f^{′′}(η_{2}) \\rbrack  (3)
$$

又$f^{′′}(x)$在$\\lbrack η_{2}, η_{1} \\rbrack$上连续，则必有最大值$M$与最小值$m$，即


$$
m ≤ f^{′′}(η_{1}) ≤ M,  m ≤ f^{′′}(η_{2}) ≤ M,
$$

从而


$$
m ≤ \\frac{f^{′′}(η_{1}) + f^{′′}(η_{2})}{2} ≤ M.
$$

由介值定理得：存在$ξ ∈  \\lbrack η_{2}, η_{1} \\rbrack  ⊂ (−a, a)$，使得


$$
\\frac{f^{′′}(η_{1}) + f^{′′}(η_{2})}{2} = f^{′′}(ξ),
$$

代入 (3) 得：


$$
f(a) + f(−a) = a^{2}f^{′′}(ξ),  f^{′′}(ξ) = \\frac{f(a) + f(−a)}{a^{2}}.
$$


（Ⅱ）证明：设$f(x)$在$x = x_{0} ∈ (−a, a)$取极值，且$f(x)$在$x = x_{0}$可导，则$f^{′}(x_{0}) = 0$。
由泰勒公式


$$
f(x) = f(x_{0}) + f^{′}(x_{0})(x - x_{0}) + \\frac{f^{′′}(γ)}{2!}(x - x_{0})2 = f(x_{0}) + \\frac{f^{′′}(γ)}{2!}(x - x_{0})2,
$$

其中$γ$介于$x_{0}$与$x$之间，于是

$$
f(−a) = f(x_{0}) + \\frac{f^{′′}(γ_{1})}{2!}(−a - x_{0})2,  −a < γ_{1} < x_{0},
$$



$$
f(a) = f(x_{0}) + \\frac{f^{′′}(γ_{2})}{2!}(a - x_{0})2,  x_{0} < γ_{2} < a.
$$

从而


$$
\\begin{array}{cc}
​f(a) - f(−a)​ & = ​\\frac{1}{2}(a - x_{0})2f^{′′}(γ_{2}) - \\frac{1}{2}(a + x_{0})2f^{′′}(γ_{1})​ \\\\
 & ≤ \\frac{1}{2} ​(a - x_{0})2f^{′′}(γ_{2})​ + \\frac{1}{2} ​(a + x_{0})2f^{′′}(γ_{1})​ . \\\\
\\end{array}
$$

又$​f^{′′}(x)​$连续，令$M = \\max\\{∣f^{′′}(γ_{1})∣,  ∣f^{′′}(γ_{2})∣\\}$，则

$$
\\begin{array}{cc}
​f(a) - f(−a)​ & ≤ \\frac{1}{2}M(a + x_{0})2 + \\frac{1}{2}M(a - x_{0})2 \\\\
 & = M(a^{2} + x_{0}^{2}). \\\\
\\end{array}
$$

由于$x_{0} ∈ (−a, a)$，有


$$
​f(a) - f(−a)​ ≤ M(a^{2} + x_{0}^{2}) ≤ 2Ma^{2},
$$

因此


$$
M ≥ \\frac{1}{2a^{2}}​f(a) - f(−a)​.
$$

即存在$η = γ_{1}$或$η = γ_{2} ∈ (−a, a)$，使得


$$
​f^{′′}(η)​ ≥ \\frac{1}{2a^{2}}​f(a) - f(−a)​.
$$

', 9, 'Mogullzr', '2026-01-29 14:19:54', 9, 'Mogullzr', '2026-01-29 14:19:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3055');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3055');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3055');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3056, '2023年考研数学卷1第21题', '简单', '考研数学2023年数1真题', '（本题满分 12 分）已知二次型
$$
f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + 2x_{2}^{2} + 2x_{3}^{2} + 2x_{1}x_{2} - 2x_{1}x_{3}
$$

$$
g(y_{1}, y_{2}, y_{3}) = y_{1}^{2} + y_{2}^{2} + y_{3}^{2} + 2y_{2}y_{3}
$$
（1）求可逆变换$x = Py$将$f(x_{1}, x_{2}, x_{3})$化成$g(y_{1}, y_{2}, y_{3})$（2）是否存在正交变换$x = Qy$将$f(x_{1}, x_{2}, x_{3})$化成$g(y_{1}, y_{2}, y_{3})$', '[]', '
(1) 可逆变换矩阵$P = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$
(2) 不存在正交变换
', '
（1）利用配方法将$f(x_{1}, x_{2}, x_{3})$化为规范形：

$$
f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + 2x_{2}^{2} + 2x_{3}^{2} + 2x_{1}x_{2} - 2x_{1}x_{3} = (x_{1} + x_{2} - x_{3})2 + (x_{2} + x_{3})2
$$

令

$$
\\begin{cases} z_{1} = x_{1} + x_{2} - x_{3} \\\\ z_{2} = x_{2} + x_{3} \\\\ z_{3} = x_{3} \\end{cases}
$$

即

$$
\\left( \\begin{array}{c}
z_{1} \\\\
z_{2} \\\\
z_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right)
$$

则

$$
f(x_{1}, x_{2}, x_{3}) = z_{1}^{2} + z_{2}^{2}
$$

再将$g(y_{1}, y_{2}, y_{3})$化为规范形：

$$
g(y_{1}, y_{2}, y_{3}) = y_{1}^{2} + y_{2}^{2} + y_{3}^{2} + 2y_{2}y_{3} = y_{1}^{2} + (y_{2} + y_{3})2
$$

令

$$
\\begin{cases} z_{1} = y_{1} \\\\ z_{2} = y_{2} + y_{3} \\\\ z_{3} = y_{3} \\end{cases}
$$

则

$$
g(y_{1}, y_{2}, y_{3}) = z_{1}^{2} + z_{2}^{2}
$$

即

$$
\\left( \\begin{array}{c}
z_{1} \\\\
z_{2} \\\\
z_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
y_{3} \\\\
\\end{array} \\right)
$$

使得

$$
g(y_{1}, y_{2}, y_{3}) = z_{1}^{2} + z_{2}^{2}
$$

从而有

$$
\\left( \\begin{array}{c}
z_{1} \\\\
z_{2} \\\\
z_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
y_{3} \\\\
\\end{array} \\right)
$$

于是可得

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

其中

$$
P = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

为所求矩阵，可将$f(x_{1}, x_{2}, x_{3})$化成$g(y_{1}, y_{2}, y_{3})$。
（2）二次型$f(x_{1}, x_{2}, x_{3}) = x_{1}^{2} + 2x_{2}^{2} + 2x_{3}^{2} + 2x_{1}x_{2} - 2x_{1}x_{3}$的矩阵为

$$
A = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
1 & 2 & 0 \\\\
−1 & 0 & 2 \\\\
\\end{array} \\right)
$$

二次型$g(y_{1}, y_{2}, y_{3}) = y_{1}^{2} + y_{2}^{2} + y_{3}^{2} + 2y_{2}y_{3}$的矩阵为

$$
B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)
$$

若存在正交变换$x = Qy$，使得$Q^{T}AQ = Q^{−1}AQ = B$，可得$A$与$B$相似。
但$tr(A) = 5$，$tr(B) = 3$，故$A$与$B$不相似。
因此，不存在正交变换$x = Qy$使得$f(x_{1}, x_{2}, x_{3})$化成$g(y_{1}, y_{2}, y_{3})$。
', 9, 'Mogullzr', '2026-01-29 14:19:55', 9, 'Mogullzr', '2026-01-29 14:19:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3056');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3056');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3057, '2023年考研数学卷1第22题', '简单', '考研数学2023年数1真题', '（本题满分 12 分）设二维随机变量$(x, y)$的概率密度为
$$
f(x, y) = \\begin{cases} \\frac{2}{π}(x^{2} + y^{2}) & x^{2} + y^{2} ≤ 1 \\\\ 0 & 其他 \\end{cases}
$$
（1）求$X$与$Y$的协方差；（2）求$X$与$Y$是否相互独立；（3）求$Z = X^{2} + Y^{2}$的概率密度.', '[]', '
(1)$Cov(X, Y) = 0$
(2)$X$与$Y$不相互独立
(3)$Z$的概率密度为：


$$
f_{Z}(z) = \\begin{cases} 2z & 0 < z < 1 \\\\ 0 & 其他 \\end{cases}
$$

', '
', 9, 'Mogullzr', '2026-01-29 14:19:55', 9, 'Mogullzr', '2026-01-29 14:19:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3057');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3057');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '3057');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3058, '2023年考研数学卷2第1题', '简单', '考研数学2023年数2真题', '函数$y = x \\ln (e + \\frac{1}{x-1})$的渐近线方程为', '[''$y = x + e$'', ''$y = x + \\\\frac{1}{e}$'', ''$y = x$'', ''$y = x - \\\\frac{1}{e}$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:57', 9, 'Mogullzr', '2026-01-29 14:19:57', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3058');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3058');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '3058');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3059, '2023年考研数学卷2第2题', '简单', '考研数学2023年数2真题', '函数$f(x) = \\begin{cases} \\frac{1}{\\sqrt{1+x^{2}}} & x ≤ 0 \\\\ (x + 1) \\cos x & x > 0 \\end{cases}$的一个原函数为', '[''$F(x) = \\\\begin{cases} \\\\ln (\\\\sqrt{1 + x^{2}} - x)  & x ≤ 0 \\\\\\\\ (x + 1) \\\\cos x - \\\\sin x & x > 0 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} \\\\ln (\\\\sqrt{1 + x^{2}} - x) + 1 & x ≤ 0 \\\\\\\\ (x + 1) \\\\cos x - \\\\sin x & x > 0 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} \\\\ln (\\\\sqrt{1 + x^{2}} + x)  & x ≤ 0 \\\\\\\\ (x + 1) \\\\sin x + \\\\cos x & x > 0 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} \\\\ln (\\\\sqrt{1 + x^{2}} + x) + 1 & x ≤ 0 \\\\\\\\ (x + 1) \\\\sin x + \\\\cos x & x > 0 \\\\end{cases}$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:58', 9, 'Mogullzr', '2026-01-29 14:19:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3059');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3059');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '3059');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3060, '2023年考研数学卷2第3题', '简单', '考研数学2023年数2真题', '已知$\\{x_{n}\\}$、$\\{y_{n}\\}$满足：$x_{1} = y_{1} = \\frac{1}{2}$，$x_{n+1} = \\sin x_{n}$，$y_{n+1} = y_{n}^{2} (n = 1, 2, ⋯ )$，则当$n → ∞$时，（）', '[''$x_{n}$是$y_{n}$的高阶无穷小'', ''$y_{n}$是$x_{n}$的高阶无穷小'', ''$x_{n}$与$y_{n}$是等价无穷小'', ''$x_{n}$与$y_{n}$是同阶但不等价的无穷小'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:58', 9, 'Mogullzr', '2026-01-29 14:19:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3060');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3060');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3060');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3061, '2023年考研数学卷2第4题', '简单', '考研数学2023年数2真题', '若微分方程$y^{′′} + ay^{′} + by = 0$的解在$(−∞, +∞)$上有界，则', '[''$a < 0, b > 0$'', ''$a > 0, b > 0$'', ''$a = 0, b > 0$'', ''$a = 0, b < 0$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:58', 9, 'Mogullzr', '2026-01-29 14:19:58', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3061');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3061');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '3061');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3062, '2023年考研数学卷2第5题', '简单', '考研数学2023年数2真题', '设函数$y = f(x)$由

$$
\\begin{cases} x = 2t + ∣t∣ \\\\ y = ∣t∣ \\sin t \\end{cases}
$$
确定，则', '[''$f(x)$连续，$f^{′}(0)$不存在'', ''$f^{′}(0)$存在，$f^{′}(x)$在$x = 0$处不连续'', ''$f^{′}(x)$连续，$f^{′′}(0)$不存在'', ''$f^{′′}(0)$存在，$f^{′′}(x)$在$x = 0$处不连续'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:59', 9, 'Mogullzr', '2026-01-29 14:19:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3062');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3062');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3062');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3063, '2023年考研数学卷2第6题', '简单', '考研数学2023年数2真题', '若函数$f(α) = \\int_{2}^{+∞} \\frac{1}{x(\\ln x)α+1}dx$在$α = α_{0}$处取得最小值，则$α_{0} =$', '[''$−\\\\frac{1}{\\\\ln(\\\\ln 2)}$'', ''$− \\\\ln(\\\\ln 2)$'', ''$\\\\frac{1}{\\\\ln 2}$'', ''$\\\\ln 2$'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:19:59', 9, 'Mogullzr', '2026-01-29 14:19:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3063');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3063');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3063');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3064, '2023年考研数学卷2第7题', '简单', '考研数学2023年数2真题', '设函数$f(x) = (x^{2} + a)e^{x}$，若$f(x)$没有极值点，但曲线$y = f(x)$有拐点，则$a$的取值范围是$$', '[''$\\\\lbrack 0, 1)$'', ''$\\\\lbrack 1, +∞)$'', ''$\\\\lbrack 1, 2)$'', ''$\\\\lbrack 2, +∞)$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:19:59', 9, 'Mogullzr', '2026-01-29 14:19:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3064');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3064');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3064');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3065, '2023年考研数学卷2第8题', '简单', '考研数学2023年数2真题', '设$V = \\left( \\begin{array}{cc}
A & E \\\\
 &  \\\\
O & B \\\\
\\end{array} \\right)$，则$V =$（）', '[''$\\\\left( \\\\begin{array}{cc}\\n∣A∣B^{∗} & −B^{∗}A^{∗} \\\\\\\\\\nO & ∣B∣A^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cc}\\n∣A∣B^{∗} & −A^{∗}B^{∗} \\\\\\\\\\nO & ∣B∣A^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cc}\\n∣B∣A^{∗} & −B^{∗}A^{∗} \\\\\\\\\\nO & ∣A∣B^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cc}\\n∣B∣A^{∗} & −A^{∗}B^{∗} \\\\\\\\\\nO & ∣A∣B^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:19:59', 9, 'Mogullzr', '2026-01-29 14:19:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3065');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3065');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3065');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3066, '2023年考研数学卷2第9题', '简单', '考研数学2023年数2真题', '二次型$f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{1} + x_{3})2 - 4(x_{2} - x_{3})2$的形为 (\\ )', '[''$y_{1}^{2} + y_{2}^{2}$'', ''$y_{1}^{2} - y_{2}^{2}$'', ''$y_{1}^{2} + y_{2}^{2} - 4y_{3}^{2}$'', ''$y_{1}^{2} + y_{2}^{2} - y_{3}^{2}$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:19:59', 9, 'Mogullzr', '2026-01-29 14:19:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3066');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3066');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3067, '2023年考研数学卷2第10题', '简单', '考研数学2023年数2真题', '已知向量$α_{1} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right)$，$α_{2} = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
1 \\\\
\\end{array} \\right)$，$β_{1} = \\left( \\begin{array}{c}
2 \\\\
5 \\\\
9 \\\\
\\end{array} \\right)$，$β_{2} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$。若向量$γ$既可由$α_{1}$、$α_{2}$线性表示， 也可由$β_{1}$、$β_{2}$线性表示， 则$γ =$（ ）', '[''$k \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n5 \\\\\\\\\\n10 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n−1 \\\\\\\\\\n1 \\\\\\\\\\n2 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n5 \\\\\\\\\\n8 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:00', 9, 'Mogullzr', '2026-01-29 14:20:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3067');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3067');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '3067');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3068, '2023年考研数学卷2第11题', '简单', '考研数学2023年数2真题', '（填空题）当$x → 0$时，函数$f(x) = ax + bx^{2} + \\ln(1 + x)$与$g(x) = e^{x^{2}} - \\cos x$是等价无穷小，则$ab =  ​$。', '[]', '-2
', '由题设知：

$$
\\begin{array}{cc}
1 & = \\lim_{x→0} \\frac{ax + bx^{2} + \\ln(1 + x)}{e^{x^{2}} - \\cos x} \\\\
 & = \\lim_{x→0} \\frac{ax + bx^{2} + x - \\frac{x^{2}}{2} + o(x^{2})}{ \\lbrack 1 + x^{2} + o(x^{2}) \\rbrack  -  \\lbrack 1 - \\frac{x^{2}}{2} + o(x^{2}) \\rbrack } \\\\
\\end{array}
$$

则$a + 1 = 0$且$b - \\frac{1}{2} = \\frac{3}{2}$，解得$a = −1$，$b = 2$，故$ab = −2$。
', 9, 'Mogullzr', '2026-01-29 14:20:00', 9, 'Mogullzr', '2026-01-29 14:20:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3068');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3068');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3068');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3069, '2023年考研数学卷2第12题', '简单', '考研数学2023年数2真题', '（填空题）曲线$y = \\int_{−\\sqrt{3}}^{x} \\sqrt{3 - t^{2}} dt$的弧长为$​$。', '[]', '$\\sqrt{3} + \\frac{4}{3}π$
', '
函数$y = \\int_{−\\sqrt{3}}^{x} \\sqrt{3 - t^{2}} dt$的定义域为$\\lbrack −\\sqrt{3}, \\sqrt{3} \\rbrack$。
所求弧长为：

$$
s = \\int_{−\\sqrt{3}}^{\\sqrt{3}} \\sqrt{1 + y^{′2}} dx = \\int_{−\\sqrt{3}}^{\\sqrt{3}} \\sqrt{4 - x^{2}} dx
$$

由于被积函数为偶函数，可得：

$$
s = 2 \\int_{0}^{\\sqrt{3}} \\sqrt{4 - x^{2}} dx
$$

令$x = 2 \\sin t$，则：

$$
s = 2 \\int_{0}^{\\frac{π}{3}} 4 \\cos^{2} t dt = 8 \\int_{0}^{\\frac{π}{3}} \\cos^{2} t dt
$$

利用恒等式$\\cos^{2} t = \\frac{1+\\cos 2t}{2}$，得：

$$
s = 4 \\int_{0}^{\\frac{π}{3}}(1 + \\cos 2t) dt
$$

计算积分：

$$
s = 4  \\lbrack t + \\frac{\\sin 2t}{2} \\rbrack _{0}^{\\frac{π}{3}} = 4 (\\frac{π}{3} + \\frac{\\sin \\frac{2π}{3}}{2}) = 4 (\\frac{π}{3} + \\frac{\\sqrt{3}}{4}) = \\sqrt{3} + \\frac{4}{3}π
$$

因此，弧长为$\\sqrt{3} + \\frac{4}{3}π$。
', 9, 'Mogullzr', '2026-01-29 14:20:00', 9, 'Mogullzr', '2026-01-29 14:20:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3069');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3069');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3069');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3070, '2023年考研数学卷2第13题', '简单', '考研数学2023年数2真题', '（填空题）设函数$z = z(x, y)$由$e^{z} + xz = 2x - y$确定，则$\\frac{∂^{2}z}{∂x^{2}}​_{(1,1)} =  ​$。', '[]', '$−\\frac{3}{2}$
', '当$x = y = 1$时，由$e^{z} + z = 1$得$z = 0$。
方程$e^{z} + xz = 2x - y$两边对$x$求偏导，有

$$
e^{z} ⋅ \\frac{∂z}{∂x} + z + x\\frac{∂z}{∂x} = 2
$$

①式两端再对$x$求偏导数，有

$$
e^{z} ⋅ (\\frac{∂z}{∂x})^{2} + e^{z} ⋅ \\frac{∂^{2}z}{∂x^{2}} + \\frac{∂z}{∂x} + \\frac{∂z}{∂x} + x\\frac{∂^{2}z}{∂x^{2}} = 0
$$

将$x = y = 1$，$z = 0$代入①式得

$$
\\frac{∂z}{∂x}​_{(1,1)} = 1
$$

再将$x = y = 1$，$z = 0$，$\\frac{∂z}{∂x} = 1$代入②得$\\frac{∂^{2}z}{∂x^{2}}​_{(1,1)} = −\\frac{3}{2}.$
', 9, 'Mogullzr', '2026-01-29 14:20:00', 9, 'Mogullzr', '2026-01-29 14:20:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3070');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3070');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3070');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3071, '2023年考研数学卷2第14题', '简单', '考研数学2023年数2真题', '（填空题）曲线$3x^{3} = y^{5} + 2y^{3}$在$x = 1$对应点处的法线斜率为$​$。', '[]', '$−\\frac{11}{9}$
', '
将$x = 1$代入$3x^{3} = y^{5} + 2y^{3}$得$y = 1$。
等式$3x^{3} = y^{5} + 2y^{3}$两端对$x$求导，得


$$
9x^{2} = 5y^{4}y^{′} + 6y^{2}y^{′}
$$

将$x = 1$，$y = 1$代入上式，得


$$
y^{′}(1) = \\frac{9}{11}
$$

所以，曲线$3x^{3} = y^{5} + 2y^{3}$在$x = 1$对应点处的法线斜率为


$$
−\\frac{11}{9}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:00', 9, 'Mogullzr', '2026-01-29 14:20:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3071');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3071');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3071');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3072, '2023年考研数学卷2第15题', '简单', '考研数学2023年数2真题', '（填空题）设函数$f(x)$满足：$f(x + 2) - f(x) = x$，$\\int_{0}^{2} f(x) dx = 0$，则$\\int_{1}^{3} f(x) dx =  ​$。', '[]', '$\\frac{1}{2}$
', '首先，将积分拆分为两部分：


$$
\\int_{1}^{3} f(x) dx = \\int_{1}^{2} f(x) dx + \\int_{2}^{3} f(x) dx
$$

接着，对第二项进行变量替换。令$x = t + 2$，则当$x = 2$时，$t = 0$；当$x = 3$时，$t = 1$。
于是有：


$$
\\int_{2}^{3} f(x) dx = \\int_{0}^{1} f(t + 2) dt = \\int_{0}^{1} f(x + 2) dx
$$

根据题意，$f(x + 2) = f(x) + x$，代入得：


$$
\\int_{0}^{1} f(x + 2) dx = \\int_{0}^{1} \\lbrack f(x) + x \\rbrack  dx = \\int_{0}^{1} f(x) dx + \\int_{0}^{1} x dx = \\int_{0}^{1} f(x) dx + \\frac{1}{2}
$$

因此，原积分变为：


$$
\\int_{1}^{3} f(x) dx = \\int_{1}^{2} f(x) dx + (\\int_{0}^{1} f(x) dx + \\frac{1}{2})
$$

又因为$\\int_{1}^{2} f(x) dx + \\int_{0}^{1} f(x) dx = \\frac{1}{2}$，代入得：


$$
\\int_{1}^{3} f(x) dx = \\frac{1}{2} + \\frac{1}{2} = 1
$$

最终结果为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:20:01', 9, 'Mogullzr', '2026-01-29 14:20:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3072');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3072');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '3072');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3073, '2023年考研数学卷2第16题', '简单', '考研数学2023年数2真题', '（填空题）已知行列式$\\begin{vmatrix}
a & 0 & 1\\\\
1 & a & 1\\\\
1 & 2 & a
\\end{vmatrix} = 4$，则$\\begin{vmatrix}
1 & a & 1\\\\
1 & 2 & a\\\\
a & b & 0
\\end{vmatrix} =  ​$。', '[]', '8
', '已知题中方程组有解，所以$r(A) = r(B)$，其中

$$
A = \\begin{vmatrix}
a & 0 & 1\\\\
1 & a & 1\\\\
1 & 2 & a\\\\
a & b & 0
\\end{vmatrix} ,  B = \\begin{vmatrix}
a & 0 & 1 & 1\\\\
1 & a & 1 & 0\\\\
1 & 2 & a & 0\\\\
a & b & 0 & 2
\\end{vmatrix} .
$$

又因为

$$
\\begin{vmatrix}
a & 0 & 1\\\\
1 & a & 1\\\\
1 & 2 & a
\\end{vmatrix} = 4 \\neq 0,
$$

所以$r(A) = 3$，从而$r(B) = 3$，$∣B∣ = 0$。
计算行列式：

$$
∣B∣ = \\begin{vmatrix}
a & 0 & 1 & 1\\\\
1 & a & 1 & 0\\\\
1 & 2 & a & 0\\\\
a & b & 0 & 2
\\end{vmatrix} =4 − \\begin{vmatrix}
1 & a & 1\\\\
1 & 2 & a\\\\
a & b & 0
\\end{vmatrix} + 2 \\begin{vmatrix}
a & 0 & 1\\\\
1 & a & 1\\\\
1 & 2 & a
\\end{vmatrix} = 8 - \\begin{vmatrix}
1 & a & 1\\\\
1 & 2 & a\\\\
a & b & 0
\\end{vmatrix} = 0.
$$

所以

$$
\\begin{vmatrix}
1 & a & 1\\\\
1 & 2 & a\\\\
a & b & 0
\\end{vmatrix} = 8.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:01', 9, 'Mogullzr', '2026-01-29 14:20:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3073');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '3073');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3074, '2023年考研数学卷2第17题', '简单', '考研数学2023年数2真题', '（本题满分$10$分）设曲线$L : y = y(x) (x > c)$经过点$(c^{2}, 0)$。$L$上任一点$P(x, y)$到$y$轴的距离等于该点处的切线在$y$轴上的截距。(1) 求$y(x)$；(2) 在$L$上求一点，使得该点处的切线与两坐标轴所围三角形的面积最小，并求此最小面积。', '[]', '
(1)$y(x) = x(2 - \\ln x)$
(2) 所求点为$(e^{\\frac{3}{2}}, \\frac{1}{2}e^{\\frac{3}{2}})$，最小面积为$e^{3}$
', '
(1) 设曲线$y = y(x)$在点$(x, y)$处的切线方程为


$$
Y - y = y^{′}(X - x),
$$

则在$y$轴上的截距为$y - xy^{′}$，从而有


$$
x = y - xy^{′},
$$

即


$$
y^{′} - \\frac{1}{x}y = −1.
$$

解此方程得


$$
y(x) = x(C - \\ln x).
$$

由$y(e^{2}) = 0$可知，$C = 2$，则


$$
y(x) = x(2 - \\ln x).
$$

(2) 设曲线$y = x(2 - \\ln x)$在点$(x, y)$处的切线方程为


$$
Y - y = y^{′}(X - x),
$$

令$X = 0$得


$$
Y = y - xy^{′} = x,
$$

令$Y = 0$得


$$
X = \\frac{x}{\\ln x - 1}.
$$

该切线与两坐标轴所围三角形的面积为


$$
S(x) = \\frac{1}{2}XY = \\frac{x^{2}}{2(\\ln x - 1)}.
$$

则


$$
S^{′}(x) = \\frac{x(2 \\ln x - 3)}{2(\\ln x - 1)2}.
$$

令$S^{′}(x) = 0$得驻点$x = e^{\\frac{3}{2}}$，且当$e < x < e^{\\frac{3}{2}}$时$S^{′}(x) < 0$，当$x > e^{\\frac{3}{2}}$时$S^{′}(x) > 0$，故$S(x)$在$x = e^{\\frac{3}{2}}$处取最小值，最小值为


$$
S(e^{\\frac{3}{2}}) = e^{3}.
$$

因而所求点为


$$
(e^{\\frac{3}{2}}, \\frac{1}{2}e^{\\frac{3}{2}}) ,
$$

所围三角形的最小面积为$e^{3}$。
', 9, 'Mogullzr', '2026-01-29 14:20:01', 9, 'Mogullzr', '2026-01-29 14:20:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3074');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3074');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '3074');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3075, '2023年考研数学卷2第18题', '简单', '考研数学2023年数2真题', '（本题满分$12$分）求函数$f(x, y) = xe^{\\cos y} + \\frac{x^{2}}{2}$的极值。', '[]', '函数在点$(−e, kπ)$（其中$k$为偶数）处取极小值$−\\frac{e^{2}}{2}$。
', '由

$$
\\begin{cases} f_{x}^{′} = e^{\\cos y} + x = 0 \\\\ f_{y}^{′} = −x \\sin y e^{\\cos y} = 0 \\end{cases}
$$

得驻点为$(−e^{(−1)k}, kπ)$，其中$k = 0, ±1, ⋯$。
可计算：

$$
A = f_{xx}^{′′} = 1,  B = f_{xy}^{′′} = − \\sin y e^{\\cos y},  C = f_{yy}^{′′} = −x(\\cos y - \\sin^{2} y)e^{\\cos y}.
$$

在驻点处，判别式为

$$
Δ = B^{2} - AC = −e^{(−1)k} ⋅ (−1)ke^{(−1)k}.
$$

当$k$为奇数时，$Δ = e^{−2} > 0$，不是极值点；
当$k$为偶数时，$Δ = −e^{2} < 0$，且$A = 1 > 0$，此时函数取极小值：

$$
f(−e, kπ) = −\\frac{e^{2}}{2},  (k).
$$

', 9, 'Mogullzr', '2026-01-29 14:20:01', 9, 'Mogullzr', '2026-01-29 14:20:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3075');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3075');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '3075');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3076, '2023年考研数学卷2第19题', '简单', '考研数学2023年数2真题', '（本题满分 12 分）已知平面区域
$D = \\{(x, y) ​ 0 ≤ y ≤ \\frac{1}{x\\sqrt{1 + x^{2}}},  x ≥ 1\\}$(1) 求$D$的面积；
(2) 求$D$绕$x$轴旋转所成旋转体的体积。', '[]', '
(1)$\\ln(1 + \\sqrt{2})$
(2)$π (1 - \\frac{π}{4})$
', '
(1) 所求面积为


$$
\\begin{array}{cc}
S & = \\int_{1}^{+∞} \\frac{dx}{x\\sqrt{1 + x^{2}}} = \\int_{1}^{+∞} \\frac{dx}{x^{2}\\sqrt{1 + (\\frac{1}{x})^{2}}} \\\\
 & = − \\int_{1}^{+∞} \\frac{d (\\frac{1}{x})}{\\sqrt{1 + (\\frac{1}{x})^{2}}} \\\\
 & = − \\ln (\\frac{1}{x} + \\sqrt{1 + \\frac{1}{x^{2}}})​_{1}^{+∞} \\\\
 & = \\ln(1 + \\sqrt{2}). \\\\
\\end{array}
$$

(2) 所求旋转体体积为


$$
\\begin{array}{cc}
V & = π \\int_{1}^{+∞} \\frac{dx}{x^{2}(1 + x^{2})} = π \\int_{1}^{+∞} (\\frac{1}{x^{2}} - \\frac{1}{1 + x^{2}}) dx \\\\
 & = − π (\\frac{1}{x} + arctan x)​_{1}^{+∞} = π (1 - \\frac{π}{4}) . \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:01', 9, 'Mogullzr', '2026-01-29 14:20:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3076');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3076');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3076');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3077, '2023年考研数学卷2第20题', '简单', '考研数学2023年数2真题', '（本题满分 12 分）设平面有界区域 D 位于第一象限,由曲线$x^{2} + y^{2} - xy = 1, x^{2} + y^{2} - xy = 2$与直线$y = \\sqrt{3}x$、$y = 0$围成,计算$\\iint_{D} \\frac{1}{3x^{2}+y^{2}}dxdy$高等数学一元函数微分学导数的几何意义查看答案与解析收藏
$$
r_{1}^{2} = \\frac{1}{1 - \\cos θ \\sin θ},  r_{2}^{2} = \\frac{2}{1 - \\cos θ \\sin θ}.
$$
', '[]', '', '', 9, 'Mogullzr', '2026-01-29 14:20:02', 9, 'Mogullzr', '2026-01-29 14:20:02', 0, 0);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3078, '2023年考研数学卷2第21题', '简单', '考研数学2023年数2真题', '（本题满分 12 分）
设函数$f(x)$在$\\lbrack −a, a \\rbrack$上具有$2$阶连续导数，证明：(1)若$f(0) = 0$,则存在$ξ ∈ (−a, a)$使得$f^{′′}(ξ) = \\frac{1}{a^{2}} \\lbrack f(a) + f(−a) \\rbrack$(2)若$f(x)$在$(−a, a)$内取得极值,则存在$η ∈ (−a, a)$,使得$∣f^{′′}(η)∣ ≥ \\frac{1}{2a^{2}}∣f(a) - f(−a)∣$高等数学一元函数微分学微分中值定理查看答案与解析收藏
$$
f(x) = f(0) + f^{′}(0)x + \\frac{f^{′′}(η)}{2!}x^{2} = f^{′}(0)x + \\frac{f^{′′}(η)}{2!}x^{2},
$$
', '[]', '', '', 9, 'Mogullzr', '2026-01-29 14:20:02', 9, 'Mogullzr', '2026-01-29 14:20:02', 0, 0);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3079, '2023年考研数学卷2第22题', '简单', '考研数学2023年数2真题', '（本题满分$12$分）设$A$作用于$x_{1}, x_{2}, x_{3}$为
$$
A \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
x_{1} + x_{2} + x_{3} \\\\
2x_{1} - x_{2} + x_{3} \\\\
x_{2} - x_{3} \\\\
\\end{array} \\right)
$$
$(1)$求$A$；(2)求可逆矩阵$P$与对角矩阵$Λ$,使得$P^{−1}AP = Λ$线性代数矩阵矩阵的运算与变换查看答案与解析收藏【答案】
(1)$A = \\begin{vmatrix}
1 & 1 & 1\\\\
2 & −1 & 1\\\\
0 & 1 & −1
\\end{vmatrix}$
(2) 特征值：$λ_{1} = −1$,$λ_{2} = −2$,$λ_{3} = 2$；特征向量：$ξ_{1} = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
2 \\\\
\\end{array} \\right)$,$ξ_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$,$ξ_{3} = \\left( \\begin{array}{c}
4 \\\\
3 \\\\
1 \\\\
\\end{array} \\right)$；令$P = \\begin{vmatrix}
−1 & 0 & 4\\\\
0 & 1 & 3\\\\
2 & −1 & 1
\\end{vmatrix}$，则$P^{−1}AP = \\begin{vmatrix}
−1 & 0 & 0\\\\
0 & −2 & 0\\\\
0 & 0 & 2
\\end{vmatrix}$。【解析】
(1)$A = AE = A \\begin{vmatrix}
1 & 0 & 0\\\\
0 & 1 & 0\\\\
0 & 0 & 1
\\end{vmatrix} = \\begin{vmatrix}
1 & 1 & 1\\\\
2 & −1 & 1\\\\
0 & 1 & −1
\\end{vmatrix}$。(2) 令$∣A - λE∣ = \\begin{vmatrix}
1 - λ & 1 & 1\\\\
2 & −1 - λ & 1\\\\
0 & 1 & −1 - λ
\\end{vmatrix} = −(λ + 2)(λ - 2)(λ + 1) = 0$，求得$A$的特征值为$λ_{1} = −1$，$λ_{2} = −2$，$λ_{3} = 2$。先求解方程组$(A + E)x = 0$，其中$A + E = \\begin{vmatrix}
2 & 1 & 1\\\\
2 & 0 & 1\\\\
0 & 1 & 0
\\end{vmatrix}$。
经行变换得$\\left( \\begin{array}{ccc}
1 & 0 & \\frac{1}{2} \\\\
0 & 1 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，通解为$x = k_{1}(−1, 0, 2)T$，取属于$λ_{1} = −1$的特征向量为$ξ_{1} = (−1, 0, 2)T$。再求解$(A + 2E)x = 0$，其中$A + 2E = \\begin{vmatrix}
3 & 1 & 1\\\\
2 & 1 & 1\\\\
0 & 1 & 1
\\end{vmatrix}$。
经行变换得$\\begin{vmatrix}
1 & 0 & 0\\\\
0 & 1 & 1\\\\
0 & 0 & 0
\\end{vmatrix}$，通解为$x = k_{2}(0, 1, −1)T$，取属于$λ_{2} = −2$的特征向量为$ξ_{2} = (0, 1, −1)T$。最后求解$(A - 2E)x = 0$，其中$A - 2E = \\begin{vmatrix}
−1 & 1 & 1\\\\
2 & −3 & 1\\\\
0 & 1 & −3
\\end{vmatrix}$。
经行变换得$\\begin{vmatrix}
1 & 0 & −4\\\\
0 & 1 & −3\\\\
0 & 0 & 0
\\end{vmatrix}$，通解为$x = k_{3}(4, 3, 1)T$，取属于$λ_{3} = 2$的特征向量为$ξ_{3} = (4, 3, 1)T$。令$P =  \\lbrack ξ_{1}, ξ_{2}, ξ_{3} \\rbrack  = \\begin{vmatrix}
−1 & 0 & 4\\\\
0 & 1 & 3\\\\
2 & −1 & 1
\\end{vmatrix}$，则$P^{−1}AP = \\begin{vmatrix}
−1 & 0 & 0\\\\
0 & −2 & 0\\\\
0 & 0 & 2
\\end{vmatrix}$。', '[]', '
(1)$A = \\begin{vmatrix}
1 & 1 & 1\\\\
2 & −1 & 1\\\\
0 & 1 & −1
\\end{vmatrix}$
(2) 特征值：$λ_{1} = −1$,$λ_{2} = −2$,$λ_{3} = 2$；特征向量：$ξ_{1} = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
2 \\\\
\\end{array} \\right)$,$ξ_{2} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$,$ξ_{3} = \\left( \\begin{array}{c}
4 \\\\
3 \\\\
1 \\\\
\\end{array} \\right)$；令$P = \\begin{vmatrix}
−1 & 0 & 4\\\\
0 & 1 & 3\\\\
2 & −1 & 1
\\end{vmatrix}$，则$P^{−1}AP = \\begin{vmatrix}
−1 & 0 & 0\\\\
0 & −2 & 0\\\\
0 & 0 & 2
\\end{vmatrix}$。', '
(1)$A = AE = A \\begin{vmatrix}
1 & 0 & 0\\\\
0 & 1 & 0\\\\
0 & 0 & 1
\\end{vmatrix} = \\begin{vmatrix}
1 & 1 & 1\\\\
2 & −1 & 1\\\\
0 & 1 & −1
\\end{vmatrix}$。(2) 令$∣A - λE∣ = \\begin{vmatrix}
1 - λ & 1 & 1\\\\
2 & −1 - λ & 1\\\\
0 & 1 & −1 - λ
\\end{vmatrix} = −(λ + 2)(λ - 2)(λ + 1) = 0$，求得$A$的特征值为$λ_{1} = −1$，$λ_{2} = −2$，$λ_{3} = 2$。先求解方程组$(A + E)x = 0$，其中$A + E = \\begin{vmatrix}
2 & 1 & 1\\\\
2 & 0 & 1\\\\
0 & 1 & 0
\\end{vmatrix}$。
经行变换得$\\left( \\begin{array}{ccc}
1 & 0 & \\frac{1}{2} \\\\
0 & 1 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，通解为$x = k_{1}(−1, 0, 2)T$，取属于$λ_{1} = −1$的特征向量为$ξ_{1} = (−1, 0, 2)T$。再求解$(A + 2E)x = 0$，其中$A + 2E = \\begin{vmatrix}
3 & 1 & 1\\\\
2 & 1 & 1\\\\
0 & 1 & 1
\\end{vmatrix}$。
经行变换得$\\begin{vmatrix}
1 & 0 & 0\\\\
0 & 1 & 1\\\\
0 & 0 & 0
\\end{vmatrix}$，通解为$x = k_{2}(0, 1, −1)T$，取属于$λ_{2} = −2$的特征向量为$ξ_{2} = (0, 1, −1)T$。最后求解$(A - 2E)x = 0$，其中$A - 2E = \\begin{vmatrix}
−1 & 1 & 1\\\\
2 & −3 & 1\\\\
0 & 1 & −3
\\end{vmatrix}$。
经行变换得$\\begin{vmatrix}
1 & 0 & −4\\\\
0 & 1 & −3\\\\
0 & 0 & 0
\\end{vmatrix}$，通解为$x = k_{3}(4, 3, 1)T$，取属于$λ_{3} = 2$的特征向量为$ξ_{3} = (4, 3, 1)T$。令$P =  \\lbrack ξ_{1}, ξ_{2}, ξ_{3} \\rbrack  = \\begin{vmatrix}
−1 & 0 & 4\\\\
0 & 1 & 3\\\\
2 & −1 & 1
\\end{vmatrix}$，则$P^{−1}AP = \\begin{vmatrix}
−1 & 0 & 0\\\\
0 & −2 & 0\\\\
0 & 0 & 2
\\end{vmatrix}$。', 9, 'Mogullzr', '2026-01-29 14:20:02', 9, 'Mogullzr', '2026-01-29 14:20:02', 0, 0);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3080, '2023年考研数学卷3第1题', '简单', '考研数学2023年数3真题', '已知函数$f(x, y) = \\ln(y + ∣x \\sin y∣)$，则()', '[''$\\\\frac{∂f}{∂x}∣_{(0,1)}$不存在，$\\\\frac{∂f}{∂y}∣_{(0,1)}$存在'', ''$\\\\frac{∂f}{∂x}∣_{(0,1)}$存在，$\\\\frac{∂f}{∂y}∣_{(0,1)}$不存在'', ''$\\\\frac{∂f}{∂x}∣_{(0,1)}$、$\\\\frac{∂f}{∂y}∣_{(0,1)}$均存在'', ''$\\\\frac{∂f}{∂x}∣_{(0,1)}$、$\\\\frac{∂f}{∂y}∣_{(0,1)}$均不存在'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:20:04', 9, 'Mogullzr', '2026-01-29 14:20:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3080');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3080');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3080');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3081, '2023年考研数学卷3第2题', '简单', '考研数学2023年数3真题', '函数
$$
f(x) = \\begin{cases} \\frac{1}{\\sqrt{1+x^{2}}} & x ≤ 0 \\\\ (x + 1) \\cos x & x > 0 \\end{cases}
$$
的一个原函数为()', '[''$F(x) = \\\\begin{cases} x ≤ 0 \\\\\\\\ x > 0 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} x ≤ 0 \\\\\\\\ x > 0 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} x ≤ 0 \\\\\\\\ x > 0 \\\\end{cases}$'', ''$F(x) = \\\\begin{cases} x ≤ 0 \\\\\\\\ x > 0 \\\\end{cases}$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:05', 9, 'Mogullzr', '2026-01-29 14:20:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3081');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3081');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '3081');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3082, '2023年考研数学卷3第3题', '简单', '考研数学2023年数3真题', '若微分方程$y^{′′} + ay^{′} + by = 0$的解在$(−∞, +∞)$上有界，则 ( )', '[''$a < 0, b > 0$'', ''$a > 0, b > 0$'', ''$a = 0, b > 0$'', ''$a = 0, b < 0$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:05', 9, 'Mogullzr', '2026-01-29 14:20:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3082');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3082');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '3082');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3083, '2023年考研数学卷3第4题', '简单', '考研数学2023年数3真题', '已知$a_{n} < b_{n} (n = 1, 2, ⋯ )$。若级数$\\sum_{n=1}^{∞} a_{n}$与$\\sum_{n=1}^{∞} b_{n}$均收敛，则“$\\sum_{n=1}^{∞} a_{n}$绝对收敛”是“$\\sum_{n=1}^{∞} b_{n}$绝对收敛”的', '[''充分必要条件.'', ''充分不必要条件.'', ''必要不充分条件.'', ''既不充分也不必要条件.'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:20:05', 9, 'Mogullzr', '2026-01-29 14:20:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3083');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3083');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '3083');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3084, '2023年考研数学卷3第5题', '简单', '考研数学2023年数3真题', '设$A$、$B$为$n$阶可逆矩阵，$E$为$n$阶单位矩阵，$M^{∗}$为矩阵$M$的伴随矩阵，则
$$
\\left( \\begin{array}{cc}
A & E \\\\
O & B \\\\
\\end{array} \\right) = ?
$$
', '[''$\\\\left( \\\\begin{array}{cc}\\n∣A∣B^{∗} & −B^{∗}A^{∗} \\\\\\\\\\n0 & ∣B∣A^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cc}\\n∣B∣A^{∗} & −A^{∗}B^{∗} \\\\\\\\\\n0 & ∣A∣B^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cc}\\n∣B∣A^{∗} & −B^{∗}A^{∗} \\\\\\\\\\n0 & ∣A∣B^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{cc}\\n∣A∣B^{∗} & −A^{∗}B^{∗} \\\\\\\\\\n0 & ∣B∣A^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:05', 9, 'Mogullzr', '2026-01-29 14:20:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3084');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3084');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3084');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3085, '2023年考研数学卷3第6题', '简单', '考研数学2023年数3真题', '二次型$f(x_{1}, x_{2}, x_{3}) = (x_{1} + x_{2})2 + (x_{1} + x_{3})2 - 4(x_{2} - x_{3})2$的规范形为()', '[''$y_{1}^{2} + y_{2}^{2}$'', ''$y_{1}^{2} - y_{2}^{2}$'', ''$y_{1}^{2} + y_{2}^{2} - 4y_{3}^{2}$'', ''$y_{1}^{2} + y_{2}^{2} - y_{3}^{2}$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:06', 9, 'Mogullzr', '2026-01-29 14:20:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3085');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3085');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3086, '2023年考研数学卷3第7题', '简单', '考研数学2023年数3真题', '已知向量

$$
α_{1} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) ,  α_{2} = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) ,  β_{1} = \\left( \\begin{array}{c}
2 \\\\
5 \\\\
9 \\\\
\\end{array} \\right) ,  β_{2} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$
若$γ$既可由$α_{1}$、$α_{2}$线性表示，也可由$β_{1}$、$β_{2}$线性表示，则

$$
γ =  ? ​
$$
', '[''$k \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n3 \\\\\\\\\\n4 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n3 \\\\\\\\\\n5 \\\\\\\\\\n10 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n−1 \\\\\\\\\\n1 \\\\\\\\\\n2 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'', ''$k \\\\left( \\\\begin{array}{c}\\n1 \\\\\\\\\\n5 \\\\\\\\\\n8 \\\\\\\\\\n\\\\end{array} \\\\right) , k ∈ R$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:06', 9, 'Mogullzr', '2026-01-29 14:20:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3086');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3086');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '3086');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3087, '2023年考研数学卷3第8题', '简单', '考研数学2023年数3真题', '设随机变量$X$服从参数为 1 的泊松分布，则$E(∣X - E(X)∣) =$', '[''$\\\\frac{1}{e}$.'', ''$\\\\frac{1}{2}$.'', ''$\\\\frac{2}{e}$.'', ''$1$.'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:06', 9, 'Mogullzr', '2026-01-29 14:20:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3087');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3087');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '3087');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3088, '2023年考研数学卷3第9题', '简单', '考研数学2023年数3真题', '设$X_{1}, X_{2}, ⋯  , X_{n}$为来自总体$N(μ_{1}, σ^{2})$的简单随机样本，
$Y_{1}, Y_{2}, ⋯  , Y_{m}$为来自总体$N(μ_{2}, 2σ^{2})$的简单随机样本，
且两样本相互独立。记

$$
\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i},  \\bar{Y} = \\frac{1}{m} \\sum_{i=1}^{m} Y_{i},
$$

$$
S_{1}^{2} = \\frac{1}{n - 1} \\sum_{i=1}^{n}(X_{i} - \\bar{X})2,  S_{2}^{2} = \\frac{1}{m - 1} \\sum_{i=1}^{m}(Y_{i} - \\bar{Y})2,
$$
则', '[''$\\\\frac{S_{1}^{2}}{S_{2}^{2}} ∼ F(n, m)$'', ''$\\\\frac{S_{1}^{2}}{S_{2}^{2}} ∼ F(n - 1, m - 1)$'', ''$\\\\frac{2S_{1}^{2}}{S_{2}^{2}} ∼ F(n, m)$'', ''$\\\\frac{2S_{1}^{2}}{S_{2}^{2}} ∼ F(n - 1, m - 1)$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:06', 9, 'Mogullzr', '2026-01-29 14:20:06', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3088');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1076', '3088');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3089, '2023年考研数学卷3第10题', '简单', '考研数学2023年数3真题', '设$X_{1}$,$X_{2}$为来自总体$N(μ, σ^{2})$的简单随机样本，其中$σ$($σ > 0$) 是未知参数。记$\\hat{σ} = a∣X_{1} - X_{2}∣$，若$E(\\hat{σ}) = σ$，则$a =$', '[''$\\\\frac{\\\\sqrt{π}}{2}$'', ''$\\\\frac{\\\\sqrt{2π}}{2}$'', ''$\\\\sqrt{π}$'', ''$\\\\sqrt{2π}$'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:20:07', 9, 'Mogullzr', '2026-01-29 14:20:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3089');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3089');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '3089');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3090, '2023年考研数学卷3第11题', '简单', '考研数学2023年数3真题', '（填空题）$\\lim_{x→∞} x^{2} (2 - x \\sin \\frac{1}{x} - \\cos \\frac{1}{x}) =$', '[]', '$\\frac{2}{3}$
', '首先展开表达式：

$$
\\begin{array}{cc}
 & \\lim_{x→∞} x^{2} (2 - x \\sin \\frac{1}{x} - \\cos \\frac{1}{x}) \\\\
 & = x^{2} \\lbrack 2 - x (\\frac{1}{x} - \\frac{1}{6x^{3}} + o (\\frac{1}{x^{3}})) - (1 - \\frac{1}{2x^{2}} + o (\\frac{1}{x^{2}}))  \\rbrack  \\\\
\\end{array}
$$

简化后得到：

$$
x^{2}  \\lbrack \\frac{1}{6x^{2}} + \\frac{1}{2x^{2}} + o (\\frac{1}{x^{2}}) \\rbrack  = \\frac{2}{3}
$$

最终结果为$\\frac{2}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:20:07', 9, 'Mogullzr', '2026-01-29 14:20:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3090');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3090');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '3090');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3091, '2023年考研数学卷3第12题', '简单', '考研数学2023年数3真题', '（填空题）已知函数$f(x, y)$满足
$$
df(x, y) = \\frac{x dy - y dx}{x^{2} + y^{2}},
$$
且$f(1, 1) = \\frac{π}{4}$，则$f(\\sqrt{3}, 3) =$', '[]', '$\\frac{π}{3}$
', '由题意可得$f_{x}^{′}(x, y) = \\frac{−y}{x^{2}+y^{2}}$，则

$$
f(x, y) = −y ⋅ \\frac{1}{y} ⋅ arctan \\frac{x}{y} + c(y) = − arctan \\frac{x}{y} + c(y)
$$

又因为$f_{y}^{′}(x, y) = \\frac{x}{x^{2}+y^{2}}$，可得$c^{′}(y) = 0$。由$f(1, 1) = \\frac{π}{4}$可得$c = \\frac{π}{2}$，即

$$
f(x, y) = − arctan \\frac{x}{y} + \\frac{π}{2}
$$

故$f(\\sqrt{3}, 3) = \\frac{π}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:20:07', 9, 'Mogullzr', '2026-01-29 14:20:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3091');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3091');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '3091');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3092, '2023年考研数学卷3第13题', '简单', '考研数学2023年数3真题', '（填空题）$\\sum_{n=0}^{∞} \\frac{x^{2n}}{(2n)!} =$', '[]', '$\\frac{1}{2}e^{x} + \\frac{1}{2}e^{−x}$
', '令$s(x) = \\sum_{n=0}^{∞} \\frac{x^{2n}}{(2n)!}$，则：

$$
s^{′}(x) = \\sum_{n=1}^{∞} \\frac{x^{2n-1}}{(2n - 1)!}
$$


$$
s^{′′}(x) = \\sum_{n=1}^{∞} \\frac{x^{2n-2}}{(2n - 2)!} = \\sum_{n=0}^{∞} \\frac{x^{2n}}{(2n)!} = s(x)
$$

即有微分方程$s^{′′}(x) - s(x) = 0$，其通解为：

$$
s(x) = C_{1}e^{x} + C_{2}e^{−x}
$$

由初始条件$s(0) = 1$和$s^{′}(0) = 0$，可得：

$$
C_{1} + C_{2} = 1
$$


$$
C_{1} - C_{2} = 0
$$

解得$C_{1} = C_{2} = \\frac{1}{2}$，因此：

$$
s(x) = \\frac{1}{2}e^{x} + \\frac{1}{2}e^{−x}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:07', 9, 'Mogullzr', '2026-01-29 14:20:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3092');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3092');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '3092');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3093, '2023年考研数学卷3第14题', '简单', '考研数学2023年数3真题', '（填空题）设某公司在$t$时刻的资产为$f(t)$，从$0$时刻到$t$时刻的平均资产等于$\\frac{f(t)}{t} - t$。假设$f(t)$连续且$f(0) = 0$，则$f(t) =$', '[]', '$f(t) = 2e^{t} - 2t - 2$
', '由题意可得方程

$$
\\frac{\\int_{0}^{t} f(x)dx}{t} = \\frac{f(t)}{t} - t
$$

即

$$
\\int_{0}^{t} f(x)dx = f(t) - t^{2}
$$

两边同时对$t$求导得

$$
f(t) = f^{′}(t) - 2t
$$

即

$$
f^{′}(t) - f(t) = 2t
$$

由一阶线性微分方程通解公式有：

$$
f(t) = e^{∫ 1dt} (∫ 2te^{− ∫ 1dt}dt + C) = e^{t} (∫ 2te^{−t}dt + C)
$$

计算积分部分：

$$
∫ 2te^{−t}dt = −(2t + 2)e^{−t}
$$

因此通解为：

$$
f(t) = e^{t}  \\lbrack −(2t + 2)e^{−t} + C \\rbrack  = Ce^{t} - 2t - 2
$$

又由于$f(0) = 0$，代入得：

$$
C - 2 = 0  ⇒  C = 2
$$

故最终解为：

$$
f(t) = 2e^{t} - 2t - 2
$$

', 9, 'Mogullzr', '2026-01-29 14:20:07', 9, 'Mogullzr', '2026-01-29 14:20:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3093');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3093');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3093');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3094, '2023年考研数学卷3第15题', '简单', '考研数学2023年数3真题', '（填空题）已知线性方程组
$$
\\begin{cases} αx_{1} + x_{3} = 1 \\\\ x_{1} + αx_{2} + x_{3} = 0 \\\\ x_{1} + 2x_{2} + αx_{3} = 0 \\\\ αx_{1} + αx_{2} = 2 \\end{cases}
$$
有解，其中$α, b$为常数。若
$$
\\begin{vmatrix}
α & 0 & 1\\\\
1 & α & 1\\\\
1 & 2 & α
\\end{vmatrix} = 4,
$$
则
$$
\\begin{vmatrix}
1 & α & 1\\\\
1 & 2 & α\\\\
α & b & 0
\\end{vmatrix} =  ​.
$$
', '[]', '8
', '由已知$r(A) = r(A, b) ≤ 3 < 4$，故$∣A, b∣ = 0$。
即

$$
∣A, b∣ = \\begin{vmatrix}
α & 0 & 1 & 1\\\\
1 & α & 1 & 0\\\\
1 & 2 & α & 0\\\\
α & b & 0 & 2
\\end{vmatrix} = 1 ⋅ (−1)1+4 \\begin{vmatrix}
1 & α & 1\\\\
1 & 2 & α\\\\
α & b & 0
\\end{vmatrix} + 2 ⋅ (−1)4+4 \\begin{vmatrix}
α & 0 & 1\\\\
1 & α & 1\\\\
1 & 2 & α
\\end{vmatrix}
$$


$$
= − \\begin{vmatrix}
1 & α & 1\\\\
1 & 2 & α\\\\
α & b & 0
\\end{vmatrix} + 2 ⋅ 4 = 0
$$

故

$$
\\begin{vmatrix}
1 & α & 1\\\\
1 & 2 & α\\\\
α & b & 0
\\end{vmatrix} = 8
$$

', 9, 'Mogullzr', '2026-01-29 14:20:07', 9, 'Mogullzr', '2026-01-29 14:20:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3094');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '3094');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3095, '2023年考研数学卷3第16题', '简单', '考研数学2023年数3真题', '（填空题）设随机变量$X$与$Y$相互独立，且$X ∼ B(1, p)$，$Y ∼ B(2, p)$，$p ∈ (0, 1)$，则$X + Y$与$X - Y$的相关系数为', '[]', '$−\\frac{1}{3}$
', '因为$X ∼ B(1, p)$，所以$DX = p(1 - p)$。因为$Y ∼ B(2, p)$，所以$DY = 2p(1 - p)$。
协方差计算如下：

$$
\\begin{array}{cc}
Cov(X + Y, X - Y) & = Cov(X + Y, X) - Cov(X + Y, Y) \\\\
 & = Cov(X, X) + Cov(Y, X) - Cov(X, Y) - Cov(Y, Y) \\\\
 & = DX - DY \\\\
 & = p(1 - p) - 2p(1 - p) \\\\
\\end{array}
$$

由于$X$与$Y$相互独立，方差计算如下：

$$
D(X + Y) = DX + DY = 3p(1 - p)
$$


$$
D(X - Y) = DX + DY = 3p(1 - p)
$$

因此，相关系数为：

$$
ρ = \\frac{Cov(X + Y, X - Y)}{\\sqrt{D(X + Y)D(X - Y)}} = −\\frac{1}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:08', 9, 'Mogullzr', '2026-01-29 14:20:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3095');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3095');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '3095');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3096, '2023年考研数学卷3第17题', '简单', '考研数学2023年数3真题', '（本题满分 10 分）已知可导函数$y = y(x)$满足

$$
ae^{x} + y^{2} + y - \\ln(1 + x) \\cos y + b = 0,
$$
且$y(0) = 0$，$y^{′}(0) = 0$。(I)求$a$，$b$的值；(II)判断$x = 0$是否为$y(x)$的极值点。', '[]', '
(I)$a = 1$，$b = −1$
(II)$x = 0$是$y(x)$的极大值点。
', '
(1) 在题设方程两边同时对$x$求导得，

$$
ae^{x} + 2y ⋅ y^{′} + y^{′} - \\frac{\\cos y}{1 + x} + \\ln(1 + x) ⋅ \\sin y ⋅ y^{′} = 0
$$

将$x = 0$，$y = 0$代入题设方程得，$a + b = 0$；将$x = 0$，$y = 0$，$y^{′}(0) = 0$代入①式得，$a - 1 = 0$。综上：$a = 1$，$b = −1$。
(2) 在等式①两边再对$x$求导得，

$$
ae^{x} + 2(y^{′})2 + 2y ⋅ y^{′′} + y^{′′}\\frac{− \\sin y ⋅ y^{′} ⋅ (1 + x) - \\cos y}{(1 + x)2} (\\ln(1 + x) ⋅ \\sin y ⋅ y^{′})^{′} = 0
$$

将$x = 0$，$y = 0$，$y^{′}(0) = 0$代入②式得，$y^{′′}(0) = −a - 1 = −2$。由于$y^{′}(0) = 0$，$y^{′′}(0) = −2$，故$x = 0$是$y(x)$的极大值点。
', 9, 'Mogullzr', '2026-01-29 14:20:08', 9, 'Mogullzr', '2026-01-29 14:20:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3096');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3096');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3096');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3097, '2023年考研数学卷3第18题', '简单', '考研数学2023年数3真题', '（本题满分 12 分）已知平面区域$D = \\{(x, y) ∣ 0 ≤ y ≤ \\frac{1}{x\\sqrt{1+x^{2}}},  x ≥ 1\\}$。(I) 求$D$的面积；(II) 求$D$绕$x$轴旋转所成旋转体的体积。', '[]', '
(I)$\\ln(1 + \\sqrt{2})$
(II)$π (1 - \\frac{π}{4})$
', '
(1) 面积

$$
\\begin{array}{cc}
S & = \\int_{1}^{+∞} \\frac{1}{x\\sqrt{1 + x^{2}}} dx = \\int_{\\frac{π}{4}}^{\\frac{π}{2}} \\frac{sec^{2} t}{\\tan t ⋅ sec t} dt \\\\
 & = \\int_{\\frac{π}{4}}^{\\frac{π}{2}} csc t dt = \\ln ∣ csc t - cot t∣∣_{\\frac{π}{4}}^{\\frac{π}{2}} \\\\
\\end{array}
$$

(2) 旋转体体积为

$$
\\begin{array}{cc}
V_{x} & = \\int_{1}^{+∞} πy^{2} dx = π \\int_{1}^{+∞} \\frac{1}{x^{2}(1 + x^{2})} dx \\\\
 & = π \\int_{1}^{+∞} (\\frac{1}{x^{2}} - \\frac{1}{1 + x^{2}}) dx = π (−\\frac{1}{x} - arctan x)​_{1}^{+∞} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:08', 9, 'Mogullzr', '2026-01-29 14:20:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3097');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3097');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3097');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3098, '2023年考研数学卷3第19题', '简单', '考研数学2023年数3真题', '（本题满分 12 分）已知平面区域$D = \\{(x, y) ∣ (x - 1)2 + y^{2} ≤ 1\\}$，计算二重积分

$$
∬_{D} ​\\sqrt{x^{2} + y^{2}} - 1​  dx dy.
$$
', '[]', '$∬_{D} ​\\sqrt{x^{2} + y^{2}} - 1​  dx dy = −\\frac{π+32}{9} + 3\\sqrt{3}$
', '
本题利用奇偶对称性化简，再切割积分区域，将积分区域分为三块，分别采用极坐标进行计算：

$$
∬_{D} ∣\\sqrt{x^{2} + y^{2}} - 1∣dσ = 2 ∬_{D_{1}+D_{2}+D_{3}} ∣\\sqrt{x^{2} + y^{2}} - 1∣dσ
$$


$$
= 2 ∬_{D_{1}} 1 - \\sqrt{x^{2} + y^{2}}dσ + 2 ∬_{D_{2}} 1 - \\sqrt{x^{2} + y^{2}}dσ + 2 ∬_{D_{3}} \\sqrt{x^{2} + y^{2}} - 1dσ
$$

分别采用极坐标计算：

$$
∬_{D_{1}} 1 - \\sqrt{x^{2} + y^{2}}dσ = \\int_{0}^{\\frac{π}{3}} dθ \\int_{0}^{1} r(1 - r)dr = \\frac{π}{3} ⋅ \\frac{1}{6} = \\frac{π}{18}
$$


$$
\\begin{array}{cc}
∬_{D_{2}} (1 - \\sqrt{x^{2} + y^{2}}) dσ & = \\int_{\\frac{π}{3}}^{\\frac{π}{2}} dθ \\int_{0}^{2 \\cos θ} r(1 - r) dr \\\\
 & = \\int_{\\frac{π}{3}}^{\\frac{π}{2}} (2 \\cos^{2} θ - \\frac{8}{3} \\cos^{3} θ) dθ \\\\
\\end{array}
$$


$$
\\begin{array}{cc}
∬_{D_{3}} (\\sqrt{x^{2} + y^{2}} - 1) dσ & = \\int_{0}^{\\frac{π}{3}} dθ \\int_{1}^{2 \\cos θ} r(r - 1) dr \\\\
 & = \\int_{0}^{\\frac{π}{3}} (\\frac{8}{3} \\cos^{3} θ - 2 \\cos^{2} θ + \\frac{1}{6}) dθ \\\\
\\end{array}
$$

综上，最终结果为：

$$
∬_{D} ∣\\sqrt{x^{2} + y^{2}} - 1∣dσ = 2 (\\frac{π}{18}) + 2 (\\frac{π}{6} - \\frac{16}{9} + \\frac{3}{4}\\sqrt{3}) + 2 (\\frac{3}{4}\\sqrt{3} - \\frac{π}{3} + \\frac{π}{18})
$$


$$
= −\\frac{π + 32}{9} + 3\\sqrt{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:08', 9, 'Mogullzr', '2026-01-29 14:20:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3098');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3098');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3098');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3099, '2023年考研数学卷3第20题', '简单', '考研数学2023年数3真题', '(本题满分 12 分)设函数$f(x)$在$\\lbrack −a, a \\rbrack$上具有 2 阶连续导数，证明：（Ⅰ）若$f(0) = 0$，则存在$ξ ∈ (−a, a)$使得
$$
f^{′′}(ξ) = \\frac{1}{a^{2}} \\lbrack f(a) + f(−a) \\rbrack  ;
$$
（Ⅱ）若$f(x)$在$(−a, a)$内取得极值，则存在$η ∈ (−a, a)$，使得
$$
​f^{′′}(η)​ ≥ \\frac{1}{a^{2}}​f(a) - f(−a)​ .
$$
', '[]', '见解析
', '（1）证明：
由泰勒展开式可得：

$$
f(x) = f(0) + f^{′}(0)x + \\frac{f^{′′}(η)}{2!}x^{2} = f^{′}(0)x + \\frac{f^{′′}(η)}{2!}x^{2}
$$

其中$η$介于$0$与$x$之间。
分别取$x = a$和$x = −a$，得到：

$$
f(a) = f^{′}(0)a + \\frac{f^{′′}(η_{1})}{2!}a^{2},  0 < η_{1} < a
$$



$$
f(−a) = f^{′}(0)(−a) + \\frac{f^{′′}(η_{2})}{2!}a^{2},  −a < η_{2} < 0
$$

将①和②相加：

$$
f(a) + f(−a) = \\frac{a^{2}}{2}  \\lbrack f^{′′}(η_{1}) + f^{′′}(η_{2}) \\rbrack
$$

由于$f^{′′}(x)$在$\\lbrack η_{2}, η_{1} \\rbrack$上连续，设其最大值为$M$，最小值为$m$，则：

$$
m ≤ f^{′′}(η_{1}) ≤ M,  m ≤ f^{′′}(η_{2}) ≤ M
$$

从而：

$$
m ≤ \\frac{f^{′′}(η_{1}) + f^{′′}(η_{2})}{2} ≤ M
$$

由介值定理，存在$ξ ∈  \\lbrack η_{2}, η_{1} \\rbrack  ⊂ (−a, a)$，使得：

$$
\\frac{f^{′′}(η_{1}) + f^{′′}(η_{2})}{2} = f^{′′}(ξ)
$$

代入③得：

$$
f(a) + f(−a) = a^{2}f^{′′}(ξ)
$$

即：

$$
f^{′′}(ξ) = \\frac{f(a) + f(−a)}{a^{2}}
$$


（2）证明：
设$f(x)$在$x = x_{0} ∈ (−a, a)$处取得极值，且$f(x)$在$x = x_{0}$可导，则$f^{′}(x_{0}) = 0$。
由泰勒展开式：

$$
f(x) = f(x_{0}) + f^{′}(x_{0})(x - x_{0}) + \\frac{f^{′′}(γ)}{2!}(x - x_{0})2 = f(x_{0}) + \\frac{f^{′′}(γ)}{2!}(x - x_{0})2
$$

其中$γ$介于$0$与$x$之间。
分别取$x = −a$和$x = a$，得到：

$$
f(−a) = f(x_{0}) + \\frac{f^{′′}(γ_{1})}{2!}(−a - x_{0})2,  −a < γ_{1} < 0
$$



$$
f(a) = f(x_{0}) + \\frac{f^{′′}(γ_{2})}{2!}(a - x_{0})2,  0 < γ_{2} < a
$$

因此：

$$
∣f(a) - f(−a)∣ = ​\\frac{1}{2}(a - x_{0})2f^{′′}(γ_{2}) - \\frac{1}{2}(a + x_{0})2f^{′′}(γ_{1})​
$$



$$
≤ \\frac{1}{2}∣(a - x_{0})2f^{′′}(γ_{2})∣ + \\frac{1}{2}∣(a + x_{0})2f^{′′}(γ_{1})∣
$$

设$M = \\max\\{∣f^{′′}(γ_{1})∣, ∣f^{′′}(γ_{2})∣\\}$，则：

$$
∣f(a) - f(−a)∣ ≤ \\frac{1}{2}M(a + x_{0})2 + \\frac{1}{2}M(a - x_{0})2 = M(a^{2} + x_{0}^{2})
$$

由于$x_{0} ∈ (−a, a)$，有：

$$
∣f(a) - f(−a)∣ ≤ M(a^{2} + x_{0}^{2}) ≤ 2Ma^{2}
$$

即：

$$
M ≥ \\frac{1}{2a^{2}}∣f(a) - f(−a)∣
$$

因此，存在$η = γ_{1}$或$η = γ_{2} ∈ (−a, a)$，使得：

$$
∣f^{′′}(η)∣ ≥ \\frac{1}{2a^{2}}∣f(a) - f(−a)∣
$$

', 9, 'Mogullzr', '2026-01-29 14:20:08', 9, 'Mogullzr', '2026-01-29 14:20:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3099');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3099');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3099');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3100, '2023年考研数学卷3第21题', '简单', '考研数学2023年数3真题', '（本题满分 12 分）设矩阵$A$对向量$\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right)$有

$$
A \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
x_{1} + x_{2} + x_{3} \\\\
2x_{1} - x_{2} + x_{3} \\\\
x_{2} - x_{3} \\\\
\\end{array} \\right)
$$
(I)求$A$；(II)求可逆矩阵$P$与对角矩阵$Λ$，使得$P^{−1}AP = Λ$。', '[]', '
(I)$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
2 & −1 & 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)$
(II) 可逆矩阵$P = \\left( \\begin{array}{ccc}
0 & 4 & 1 \\\\
−1 & 3 & 0 \\\\
1 & 1 & −2 \\\\
\\end{array} \\right)$，对角矩阵$Λ = \\left( \\begin{array}{ccc}
−2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$
', '
(I) 由$A \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
2 & −1 & 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right)$，故矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
2 & −1 & 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)$。
(II) 特征多项式为：

$$
∣λE - A∣ = \\begin{vmatrix}
λ - 1 & −1 & −1\\\\
−2 & λ + 1 & −1\\\\
0 & −1 & λ + 1
\\end{vmatrix}
$$

展开计算：

$$
= (λ - 1) ⋅ \\begin{vmatrix}
λ + 1 & −1\\\\
−1 & λ + 1
\\end{vmatrix} + 2 ⋅ \\begin{vmatrix}
−1 & −1\\\\
−1 & λ + 1
\\end{vmatrix}
$$

进一步化简：

$$
= (λ - 1)(λ^{2} + 2λ) - 2(λ + 2) = (λ + 2)(λ - 2)(λ + 1) = 0
$$

所以$A$的特征值为$λ_{1} = −2$，$λ_{2} = 2$，$λ_{3} = −1$。
对于$λ_{1} = −2$：

$$
λ_{1}E - A = \\left( \\begin{array}{ccc}
−3 & −1 & −1 \\\\
−2 & −1 & −1 \\\\
0 & −1 & −1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

对应的特征向量$α_{1} = (0, −1, 1)T$。
对于$λ_{2} = 2$：

$$
λ_{2}E - A = \\left( \\begin{array}{ccc}
1 & −1 & −1 \\\\
−2 & 3 & −1 \\\\
0 & −1 & 3 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 0 & −4 \\\\
0 & 1 & −3 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

对应的特征向量$α_{2} = (4, 3, 1)T$。
对于$λ_{3} = −1$：

$$
λ_{3}E - A = \\left( \\begin{array}{ccc}
−2 & −1 & −1 \\\\
−2 & 0 & −1 \\\\
0 & −1 & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
2 & 0 & 1 \\\\
0 & 1 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)
$$

对应的特征向量$α_{3} = (1, 0, −2)T$。
令$P = (α_{1}, α_{2}, α_{3}) = \\left( \\begin{array}{ccc}
0 & 4 & 1 \\\\
−1 & 3 & 0 \\\\
1 & 1 & −2 \\\\
\\end{array} \\right)$，则

$$
P^{−1}AP = \\left( \\begin{array}{ccc}
−2 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:20:09', 9, 'Mogullzr', '2026-01-29 14:20:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3100');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3100');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3101, '2023年考研数学卷3第22题', '简单', '考研数学2023年数3真题', '(本题满分12分)设随机变量$X$的概率密度为

$$
f(x) = \\frac{e^{x}}{(1 + e^{x})2},  −∞ < x < +∞
$$
令$Y = e^{X}$。（Ⅰ）求$X$的分布函数$F(x)$；（Ⅱ）求$Y$的概率密度$f_{Y}(y)$；（Ⅲ）$Y$的期望是否存在？', '[]', '
（Ⅰ）$F(x) = \\frac{e^{x}}{1+e^{x}},  x ∈ R$
（Ⅱ）$f_{Y}(y) = \\begin{cases} \\frac{1}{(1+y)2} & y > 0 \\\\ 0 & 其他 \\end{cases}$
（Ⅲ）不存在
', '
（I）


$$
F(x) = \\int_{−∞}^{x} \\frac{e^{x}}{(1 + e^{x})2}dx = −\\frac{1}{1 + e^{x}}​_{−∞}^{x} = \\frac{e^{x}}{1 + e^{x}},  x ∈ R
$$

（II）
【法1】分布函数法
$F_{Y}(y) = P\\{Y ≤ y\\} = P\\{e^{X} ≤ y\\}$
当$y < 0$时，$F_{Y}(y) = 0$当$y ≥ 0$时，$F_{Y}(y) = P\\{X ≤ \\ln y\\} = F(\\ln y) = \\frac{y}{1+y}$
因此，$Y$的概率密度为

$$
f_{Y}(y) = \\begin{cases} \\frac{1}{(1+y)2} & y > 0 \\\\ 0 & 其他 \\end{cases}
$$

【法2】公式法
因为$y = e^{x}$在$(−∞, +∞)$上单调且处处可导，当$x ∈ (−∞, +∞)$时，$y > 0$，此时$x = \\ln y$。
所以$Y$的概率密度为

$$
f_{Y}(y) = \\begin{cases} f(\\ln y) ⋅ (\\ln y)′ & y > 0 \\\\ 0 & 其他 \\end{cases} = \\begin{cases} \\frac{e^{\\ln y}}{(1+e^{\\ln y})2} ⋅ \\frac{1}{y} & y > 0 \\\\ 0 & 其他 \\end{cases} = \\begin{cases} \\frac{1}{(1+y)2} & y > 0 \\\\ 0 & 其他 \\end{cases}
$$

（Ⅲ）


$$
EY = \\int_{0}^{+∞} \\frac{y}{(1 + y)2}dy = (\\ln(1 + y) + \\frac{1}{1 + y})​_{0}^{+∞} = ∞
$$

因此，$EY$不存在。
', 9, 'Mogullzr', '2026-01-29 14:20:09', 9, 'Mogullzr', '2026-01-29 14:20:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3101');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3101');
