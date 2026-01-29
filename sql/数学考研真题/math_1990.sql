INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (320, '1990年考研数学卷1第1题', '简单', '考研数学1990年卷1真题', '过点$M(1, 2, −1)$且与直线$\\begin{cases} x = −t + 2 \\\\ y = 3t - 4 \\\\ z = t - 1 \\end{cases}$垂直的平面方程是 ______.', '[]', '
$−x + 3y + z - 4 = 0$（或等价形式$x - 3y - z + 4 = 0$）
', '
首先，从直线的参数方程$\\begin{cases} x = −t + 2 \\\\ y = 3t - 4 \\\\ z = t - 1 \\end{cases}$中，提取方向向量$d = (−1, 3, 1)$。由于所求平面与直线垂直，平面的法向量$n$与方向向量$d$平行，故取$n = (−1, 3, 1)$。
平面过点$M(1, 2, −1)$，使用点法式方程：$n ⋅ (r - r0​​) = 0$，其中$r = (x, y, z)$，$r0​​ = (1, 2, −1)$。代入得：


$$
−1(x - 1) + 3(y - 2) + 1(z - (−1)) = 0
$$

简化：


$$
−x + 1 + 3y - 6 + z + 1 = 0
$$



$$
−x + 3y + z - 4 = 0
$$

因此，所求平面方程为$−x + 3y + z - 4 = 0$。
', 9, 'Mogullzr', '2026-01-29 14:07:12', 9, 'Mogullzr', '2026-01-29 14:07:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '320');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '320');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '320');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (321, '1990年考研数学卷1第2题', '简单', '考研数学1990年卷1真题', '设$a$为非零常数，则$\\lim_{x→∞}  (\\frac{x+a}{x-a})^{x} =$______.', '[]', '
$e^{2a}$
', '
考虑极限$\\lim_{x→∞} (\\frac{x+a}{x-a})^{x}$。将分式改写为：


$$
\\frac{x + a}{x - a} = 1 + \\frac{2a}{x - a}
$$

于是极限化为：


$$
\\lim_{x→∞} (1 + \\frac{2a}{x - a})^{x}
$$

令$t = x - a$，则当$x → ∞$时$t → ∞$，且$x = t + a$。代入得：


$$
(1 + \\frac{2a}{t})^{t+a} = (1 + \\frac{2a}{t})^{t} ⋅ (1 + \\frac{2a}{t})^{a}
$$

取极限：


$$
\\lim_{t→∞} (1 + \\frac{2a}{t})^{t} ⋅ \\lim_{t→∞} (1 + \\frac{2a}{t})^{a}
$$

其中$\\lim_{t→∞} (1 + \\frac{2a}{t})^{t} = e^{2a}$，且$\\lim_{t→∞} (1 + \\frac{2a}{t})^{a} = 1^{a} = 1$。
因此，极限为$e^{2a}$。
', 9, 'Mogullzr', '2026-01-29 14:07:12', 9, 'Mogullzr', '2026-01-29 14:07:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '321');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '321');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '321');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (322, '1990年考研数学卷1第3题', '简单', '考研数学1990年卷1真题', '设函数$f(x) = \\begin{cases} 1 & ∣x∣ ≤ 1 \\\\ 0 & ∣x∣ > 1 \\end{cases}$则$f \\lbrack f(x) \\rbrack  =$______.', '[]', '
1
', '
函数$f(x)$定义为：当$∣x∣ ≤ 1$时，$f(x) = 1$；当$∣x∣ > 1$时，$f(x) = 0$。
考虑复合函数$f \\lbrack f(x) \\rbrack$，即以内层函数$f(x)$的值作为外层函数$f$的输入。
由于$f(x)$的值只能是 0 或 1，且无论输入是 0 还是 1，均有$∣0∣ = 0 ≤ 1$和$∣1∣ = 1 ≤ 1$，因此外层函数$f$的输出始终为 1。
即，对于任意$x$，有$f \\lbrack f(x) \\rbrack  = 1$。
', 9, 'Mogullzr', '2026-01-29 14:07:12', 9, 'Mogullzr', '2026-01-29 14:07:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '322');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '322');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '322');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (323, '1990年考研数学卷1第4题', '简单', '考研数学1990年卷1真题', '积分$\\int_{0}^{2} dx \\int_{x}^{2} e^{−y^{2}}dy$的值等于 ______.', '[]', '$\\frac{1}{2}(1 - e^{−4})$
', '给定二重积分$\\int_{0}^{2} dx \\int_{x}^{2} e^{−y^{2}}dy$，直接计算内层积分较困难，因此考虑改变积分顺序。积分区域由$0 ≤ x ≤ 2$和$x ≤ y ≤ 2$定义，这等价于$0 ≤ y ≤ 2$和$0 ≤ x ≤ y$。改变积分顺序后，积分变为：

$$
\\int_{0}^{2} dy \\int_{0}^{y} e^{−y^{2}}dx
$$

计算内层积分：

$$
\\int_{0}^{y} e^{−y^{2}}dx = e^{−y^{2}} \\int_{0}^{y} dx = ye^{−y^{2}}
$$

因此，积分化为：

$$
\\int_{0}^{2} ye^{−y^{2}}dy
$$

令$u = y^{2}$，则$du = 2y dy$，即$y dy = \\frac{du}{2}$。当$y = 0$时，$u = 0$；当$y = 2$时，$u = 4$。代入得：

$$
\\int_{0}^{2} ye^{−y^{2}}dy = \\int_{0}^{4} e^{−u} ⋅ \\frac{du}{2} = \\frac{1}{2} \\int_{0}^{4} e^{−u} du = \\frac{1}{2}  \\lbrack −e^{−u} \\rbrack _{0}^{4} = \\frac{1}{2} (−e^{−4} + 1) = \\frac{1}{2}(1 - e^{−4})
$$

故积分值为$\\frac{1}{2}(1 - e^{−4})$。
', 9, 'Mogullzr', '2026-01-29 14:07:12', 9, 'Mogullzr', '2026-01-29 14:07:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '323');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '323');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '323');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (324, '1990年考研数学卷1第5题', '简单', '考研数学1990年卷1真题', '已知向量组$α_{1} = (1, 2, 3, 4)$，$α_{2} = (2, 3, 4, 5)$，$α_{3} = (3, 4, 5, 6)$，$α_{4} = (4, 5, 6, 7)$，
则该向量组的秩是______．', '[]', '$2$
', '
给定向量组$α_{1} = (1, 2, 3, 4)$，$α_{2} = (2, 3, 4, 5)$，$α_{3} = (3, 4, 5, 6)$，$α_{4} = (4, 5, 6, 7)$。
构造矩阵$A = \\left( \\begin{array}{cccc}
1 & 2 & 3 & 4 \\\\
2 & 3 & 4 & 5 \\\\
3 & 4 & 5 & 6 \\\\
4 & 5 & 6 & 7 \\\\
\\end{array} \\right)$，通过行变换化为行阶梯形：
首先，$R_{2} - 2R_{1}$、$R_{3} - 3R_{1}$、$R_{4} - 4R_{1}$，得到$\\left( \\begin{array}{cccc}
1 & 2 & 3 & 4 \\\\
0 & −1 & −2 & −3 \\\\
0 & −2 & −4 & −6 \\\\
0 & −3 & −6 & −9 \\\\
\\end{array} \\right)$。
然后，$R_{2} × (−1)$，得到$\\left( \\begin{array}{cccc}
1 & 2 & 3 & 4 \\\\
0 & 1 & 2 & 3 \\\\
0 & −2 & −4 & −6 \\\\
0 & −3 & −6 & −9 \\\\
\\end{array} \\right)$。
接着，$R_{3} + 2R_{2}$、$R_{4} + 3R_{2}$，得到$\\left( \\begin{array}{cccc}
1 & 2 & 3 & 4 \\\\
0 & 1 & 2 & 3 \\\\
0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$。
行阶梯形中有两个非零行，因此矩阵的秩为2，即向量组的秩为2。
此外，直观上，每个向量均可由$α_{1}$和$(1, 1, 1, 1)$线性表示，故向量组张成的空间是二维的，秩为2。
', 9, 'Mogullzr', '2026-01-29 14:07:12', 9, 'Mogullzr', '2026-01-29 14:07:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '324');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '324');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '324');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (325, '1990年考研数学卷1第6题', '简单', '考研数学1990年卷1真题', '设$f(x)$是连续函数，且$F(x) = \\int_{x}^{e^{−x}}   f(t)dt$，则$F^{′}(x)$等于', '[''$−e^{−x}f(e^{−x}) - f(x)$．'', ''$−e^{−x}f(e^{−x}) + f(x)$．'', ''$e^{−x}f(e^{−x}) - f(x)$．'', ''$e^{−x}f(e^{−x}) + f(x)$．'']', "['A']", '给定$F(x) = \\int_{x}^{e^{−x}} f(t) dt$，其中$f(x)$是连续函数。根据微积分的基本定理和链式法则，对于积分上限和下限均为$x$的函数的情况，有$F^{′}(x) = f(g(x)) ⋅ g^{′}(x) - f(h(x)) ⋅ h^{′}(x)$，其中$g(x) = e^{−x}$，$h(x) = x$。计算得$g^{′}(x) = −e^{−x}$，$h^{′}(x) = 1$。代入公式得$F^{′}(x) = f(e^{−x}) ⋅ (−e^{−x}) - f(x) ⋅ 1 = −e^{−x}f(e^{−x}) - f(x)$，与选项 A 一致。', 9, 'Mogullzr', '2026-01-29 14:07:12', 9, 'Mogullzr', '2026-01-29 14:07:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '325');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '325');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '325');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (326, '1990年考研数学卷1第7题', '简单', '考研数学1990年卷1真题', '已知函数$f(x)$具有任意阶导数，且$f^{′}(x) =  \\lbrack f(x) \\rbrack 2$，
则当$n$为大于$2$的正整数时，$f(x)$的$n$阶导数$f^{(n)}(x)$是', '[''$n! \\\\lbrack f(x) \\\\rbrack n+1$．'', ''$n \\\\lbrack f(x) \\\\rbrack n+1$．'', ''$\\\\lbrack f(x) \\\\rbrack 2n$．'', ''$n! \\\\lbrack f(x) \\\\rbrack 2n$．'']', "['A']", '已知函数$f(x)$满足$f^{′}(x) =  \\lbrack f(x) \\rbrack 2$。通过求高阶导数，观察模式：一阶导数：$f^{′}(x) =  \\lbrack f(x) \\rbrack 2 = 1! ⋅  \\lbrack f(x) \\rbrack 1+1$二阶导数：$f^{′′}(x) = \\frac{d}{dx} \\lbrack f^{′}(x) \\rbrack  = \\frac{d}{dx} \\lbrack f(x) \\rbrack 2 = 2f(x)f^{′}(x) = 2f(x) ⋅  \\lbrack f(x) \\rbrack 2 = 2 \\lbrack f(x) \\rbrack 3 = 2! ⋅  \\lbrack f(x) \\rbrack 2+1$三阶导数：$f^{′′′}(x) = \\frac{d}{dx} \\lbrack f^{′′}(x) \\rbrack  = \\frac{d}{dx} \\lbrack 2 \\lbrack f(x) \\rbrack 3 \\rbrack  = 2 ⋅ 3 \\lbrack f(x) \\rbrack 2f^{′}(x) = 6 \\lbrack f(x) \\rbrack 2 ⋅  \\lbrack f(x) \\rbrack 2 = 6 \\lbrack f(x) \\rbrack 4 = 3! ⋅  \\lbrack f(x) \\rbrack 3+1$由此归纳，对于任意正整数$n$，有$f^{(n)}(x) = n! ⋅  \\lbrack f(x) \\rbrack n+1$。当$n > 2$时，该公式同样成立。选项 A 与此一致，其他选项均不匹配。', 9, 'Mogullzr', '2026-01-29 14:07:13', 9, 'Mogullzr', '2026-01-29 14:07:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '326');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '326');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '326');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (327, '1990年考研数学卷1第8题', '简单', '考研数学1990年卷1真题', '设$α$为常数，则级数$\\sum_{n=1}^{∞}  \\lbrack \\frac{\\sin nα}{n^{2}} - \\frac{1}{\\sqrt{n}} \\rbrack$', '[''绝对收敛．'', ''条件收敛．'', ''发散．'', ''收敛性与$α$的取值有关．'']', "['C']", '级数$\\sum_{n=1}^{∞}  \\lbrack \\frac{\\sin nα}{n^{2}} - \\frac{1}{\\sqrt{n}} \\rbrack$由两部分组成。第一部分$\\sum_{n=1}^{∞} \\frac{\\sin nα}{n^{2}}$由于$∣ \\sin nα∣ ≤ 1$，有$​\\frac{\\sin nα}{n^{2}}​ ≤ \\frac{1}{n^{2}}$，而$∑ \\frac{1}{n^{2}}$收敛（p-级数，p=2>1），因此该部分绝对收敛，且收敛性与$α$无关。第二部分$\\sum_{n=1}^{∞} −\\frac{1}{\\sqrt{n}} = − \\sum_{n=1}^{∞} \\frac{1}{n^{1/2}}$是 p-级数，p=1/2<1，因此发散。由于一个收敛级数与一个发散级数的和发散，故原级数发散，且与$α$的取值无关。因此选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:07:13', 9, 'Mogullzr', '2026-01-29 14:07:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '327');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '327');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '327');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (328, '1990年考研数学卷1第9题', '简单', '考研数学1990年卷1真题', '已知$f(x)$在$x = 0$的某个邻域内连续，且$f(0) = 0$，$\\lim_{x→0} \\frac{f(x)}{1-\\cos x} = 2$，
则在点$x = 0$处$f(x)$', '[''不可导．'', ''可导，且$f^{′}(0) \\\\neq 0$．'', ''取得极大值．'', ''取得极小值．'']', "['D']", '已知$\\lim_{x→0} \\frac{f(x)}{1-\\cos x} = 2$且$f(0) = 0$。由于$1 - \\cos x ∼ \\frac{x^{2}}{2}$当$x → 0$，代入极限得$\\lim_{x→0} \\frac{f(x)}{\\frac{x^{2}}{2}} = 2$，即$\\lim_{x→0} \\frac{f(x)}{x^{2}} = 1$。因此，$f(x) ∼ x^{2}$在$x = 0$附近。
考虑导数：$f^{′}(0) = \\lim_{h→0} \\frac{f(h)-f(0)}{h} = \\lim_{h→0} \\frac{f(h)}{h}$。由$f(h) ∼ h^{2}$，得$\\frac{f(h)}{h} ∼ h → 0$，故$f^{′}(0) = 0$，即可导且导数为零，排除 A 和 B。
由$\\lim_{x→0} \\frac{f(x)}{x^{2}} = 1 > 0$，知在$x = 0$某邻域内$f(x) > 0$对于$x \\neq 0$，而$f(0) = 0$，故$f(x)$在$x = 0$处取得极小值，排除 C。因此正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:07:13', 9, 'Mogullzr', '2026-01-29 14:07:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '328');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '328');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '328');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (329, '1990年考研数学卷1第10题', '简单', '考研数学1990年卷1真题', '已知$β_{1}$,$β_{2}$是非齐次线性方程组$AX = b$的两个不同的解，$α_{1}$,$α_{2}$是对应齐次线性方程组$AX = 0$的基础解系，$k_{1}$,$k_{2}$为任意常数，则方程组$AX = b$的通解（一般解）必是', '[''$k_{1}α_{1} + k_{2}(α_{1} + α_{2}) + \\\\frac{β_{1}-β_{2}}{2}$．'', ''$k_{1}α_{1} + k_{2}(α_{1} - α_{2}) + \\\\frac{β_{1}+β_{2}}{2}$．'', ''$k_{1}α_{1} + k_{2}(β_{1} + β_{2}) + \\\\frac{β_{1}-β_{2}}{2}$．'', ''$k_{1}α_{1} + k_{2}(β_{1} - β_{2}) + \\\\frac{β_{1}+β_{2}}{2}$．'']', "['B']", '
非齐次线性方程组$AX = b$的通解由对应齐次方程组$AX = 0$的通解和一个特解组成。已知$α_{1}$和$α_{2}$是$AX = 0$的基础解系，因此齐次通解为

$$
k_{1}α_{1} + k_{2}α_{2},
$$
其中$k_{1}$、$k_{2}$为任意常数。
$$
k_{1}α_{1} + k_{2}(α_{1} - α_{2}) = (k_{1} + k_{2})α_{1} + (−k_{2})α_{2},
$$
故B 正确。', 9, 'Mogullzr', '2026-01-29 14:07:13', 9, 'Mogullzr', '2026-01-29 14:07:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '329');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '329');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (330, '1990年考研数学卷1第11题', '简单', '考研数学1990年卷1真题', '求$\\int_{0}^{1} \\frac{\\ln(1+x)}{(2-x)2}dx$．', '[]', '$\\frac{\\ln 2}{3}$
', '考虑积分$I = \\int_{0}^{1} \\frac{\\ln(1+x)}{(2-x)2} dx$。使用分部积分法，设$u = \\ln(1 + x)$，则$du = \\frac{1}{1+x}dx$；设$dv = \\frac{1}{(2-x)2}dx$，则$v = \\frac{1}{2-x}$。于是：

$$
I =  \\lbrack \\ln(1 + x) ⋅ \\frac{1}{2 - x} \\rbrack _{0}^{1} - \\int_{0}^{1} \\frac{1}{2 - x} ⋅ \\frac{1}{1 + x} dx
$$

计算边界项：
当$x = 1$时，$\\ln(2) ⋅ \\frac{1}{2-1} = \\ln 2$；当$x = 0$时，$\\ln(1) ⋅ \\frac{1}{2-0} = 0$，故边界项为$\\ln 2$。因此：

$$
I = \\ln 2 - \\int_{0}^{1} \\frac{1}{(2 - x)(1 + x)} dx
$$

现在计算积分$J = \\int_{0}^{1} \\frac{1}{(2-x)(1+x)} dx$。使用部分分式分解：

$$
\\frac{1}{(2 - x)(1 + x)} = \\frac{A}{2 - x} + \\frac{B}{1 + x}
$$

两边乘以$(2 - x)(1 + x)$得：

$$
1 = A(1 + x) + B(2 - x)
$$

代入$x = 2$得$1 = 3A$，故$A = \\frac{1}{3}$；代入$x = 0$得$1 = A + 2B$，即$1 = \\frac{1}{3} + 2B$，解得$B = \\frac{1}{3}$。因此：

$$
J = \\int_{0}^{1} (\\frac{1/3}{2 - x} + \\frac{1/3}{1 + x}) dx = \\frac{1}{3} \\int_{0}^{1} \\frac{1}{2 - x} dx + \\frac{1}{3} \\int_{0}^{1} \\frac{1}{1 + x} dx
$$

计算第一积分：令$u = 2 - x$，则$du = −dx$，积分限变为$u = 2$到$u = 1$，故：

$$
\\int_{0}^{1} \\frac{1}{2 - x} dx = \\int_{2}^{1} \\frac{1}{u}(−du) = \\int_{1}^{2} \\frac{1}{u} du = \\ln u​_{1}^{2} = \\ln 2
$$

第二积分：

$$
\\int_{0}^{1} \\frac{1}{1 + x} dx = \\ln(1 + x)​_{0}^{1} = \\ln 2
$$

所以$J = \\frac{1}{3} \\ln 2 + \\frac{1}{3} \\ln 2 = \\frac{2}{3} \\ln 2$。代入原式：

$$
I = \\ln 2 - \\frac{2}{3} \\ln 2 = \\frac{1}{3} \\ln 2
$$

故积分为$\\frac{\\ln 2}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:07:13', 9, 'Mogullzr', '2026-01-29 14:07:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '330');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '330');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '330');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (331, '1990年考研数学卷1第12题', '简单', '考研数学1990年卷1真题', '设$z = f(2x - y, y \\sin x)$，其中$f(u, v)$具有连续的二阶偏导数，求$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}z}{∂x∂y} = −2f_{uu} + (2 \\sin x - y \\cos x)f_{uv} + \\cos x f_{v} + y \\sin x \\cos x f_{vv}
$$

其中$f_{uu}, f_{uv}, f_{vv}$分别表示$f$对$u$和$v$的二阶偏导数。
', '设$u = 2x - y$,$v = y \\sin x$，则$z = f(u, v)$。首先求一阶偏导数$\\frac{∂z}{∂y}$：

$$
\\frac{∂z}{∂y} = \\frac{∂f}{∂u} ⋅ \\frac{∂u}{∂y} + \\frac{∂f}{∂v} ⋅ \\frac{∂v}{∂y} = f_{u} ⋅ (−1) + f_{v} ⋅ \\sin x = −f_{u} + \\sin x f_{v}.
$$

然后求混合偏导数$\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂x} (\\frac{∂z}{∂y})$：

$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂x} (−f_{u}) + \\frac{∂}{∂x} (\\sin x f_{v}) = −\\frac{∂}{∂x}(f_{u}) + \\cos x f_{v} + \\sin x ⋅ \\frac{∂}{∂x}(f_{v}).
$$

计算$\\frac{∂}{∂x}(f_{u})$和$\\frac{∂}{∂x}(f_{v})$使用链式法则：

$$
\\frac{∂}{∂x}(f_{u}) = \\frac{∂f_{u}}{∂u} ⋅ \\frac{∂u}{∂x} + \\frac{∂f_{u}}{∂v} ⋅ \\frac{∂v}{∂x} = f_{uu} ⋅ 2 + f_{uv} ⋅ (y \\cos x) = 2f_{uu} + y \\cos x f_{uv},
$$



$$
\\frac{∂}{∂x}(f_{v}) = \\frac{∂f_{v}}{∂u} ⋅ \\frac{∂u}{∂x} + \\frac{∂f_{v}}{∂v} ⋅ \\frac{∂v}{∂x} = f_{vu} ⋅ 2 + f_{vv} ⋅ (y \\cos x) = 2f_{uv} + y \\cos x f_{vv} (f_{uv} = f_{vu}).
$$

代入得：

$$
\\frac{∂^{2}z}{∂x∂y} = −(2f_{uu} + y \\cos x f_{uv}) + \\cos x f_{v} + \\sin x ⋅ (2f_{uv} + y \\cos x f_{vv}) = −2f_{uu} - y \\cos x f_{uv} + \\cos x f_{v} + 2 \\sin x f_{uv} + y \\sin x \\cos x f_{vv}.
$$

合并同类项：

$$
\\frac{∂^{2}z}{∂x∂y} = −2f_{uu} + (2 \\sin x - y \\cos x)f_{uv} + \\cos x f_{v} + y \\sin x \\cos x f_{vv}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:14', 9, 'Mogullzr', '2026-01-29 14:07:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '331');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '331');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '331');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (332, '1990年考研数学卷1第13题', '简单', '考研数学1990年卷1真题', '求微分方程$y^{′′} + 4y^{′} + 4y = e^{−2x}$的通解（一般解）．', '[]', '

$$
y = e^{−2x} (C_{1} + C_{2}x + \\frac{1}{2}x^{2})
$$

其中$C_{1}$和$C_{2}$为任意常数。
', '给定微分方程$y^{′′} + 4y^{′} + 4y = e^{−2x}$是二阶线性非齐次方程。通解由齐次解和特解组成。
首先求齐次解。齐次方程$y^{′′} + 4y^{′} + 4y = 0$的特征方程为$r^{2} + 4r + 4 = 0$，解得重根$r = −2$，因此齐次解为$y_{h} = (C_{1} + C_{2}x)e^{−2x}$，其中$C_{1}$和$C_{2}$为常数。
然后求特解。由于非齐次项$e^{−2x}$与齐次解形式重叠，特解假设为$y_{p} = Ax^{2}e^{−2x}$。代入原方程求待定常数$A$。计算一阶导数$y_{p}^{′} = Ae^{−2x}(2x - 2x^{2})$和二阶导数$y_{p}^{′′} = Ae^{−2x}(4x^{2} - 8x + 2)$。代入原方程得：

$$
y_{p}^{′′} + 4y_{p}^{′} + 4y_{p} = Ae^{−2x}(4x^{2} - 8x + 2) + 4Ae^{−2x}(2x - 2x^{2}) + 4Ax^{2}e^{−2x} = 2Ae^{−2x}
$$

令其等于非齐次项$e^{−2x}$，有$2A = 1$，解得$A = \\frac{1}{2}$。因此特解为$y_{p} = \\frac{1}{2}x^{2}e^{−2x}$.
最终通解为齐次解与特解之和：

$$
y = y_{h} + y_{p} = (C_{1} + C_{2}x)e^{−2x} + \\frac{1}{2}x^{2}e^{−2x} = e^{−2x} (C_{1} + C_{2}x + \\frac{1}{2}x^{2})
$$

', 9, 'Mogullzr', '2026-01-29 14:07:14', 9, 'Mogullzr', '2026-01-29 14:07:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '332');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '332');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '332');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (333, '1990年考研数学卷1第14题', '简单', '考研数学1990年卷1真题', '求幂级数$\\sum_{n=0}^{∞}(2n + 1)x^{n}$的收敛域，并求其和函数．', '[]', '
收敛域为$(−1, 1)$，和函数为$S(x) = \\frac{1+x}{(1-x)2}$。
', '
考虑幂级数$\\sum_{n=0}^{∞}(2n + 1)x^{n}$。使用比值判别法求收敛域：
设$a_{n} = (2n + 1)x^{n}$，则


$$
\\lim_{n→∞} ​\\frac{a_{n+1}}{a_{n}}​ = \\lim_{n→∞} ​\\frac{(2n + 3)x^{n+1}}{(2n + 1)x^{n}}​ = \\lim_{n→∞} \\frac{2n + 3}{2n + 1}∣x∣ = ∣x∣.
$$

当$∣x∣ < 1$时级数收敛，当$∣x∣ > 1$时级数发散。
在端点$x = 1$处，级数为$\\sum_{n=0}^{∞}(2n + 1)$，通项不趋于零，发散；
在$x = −1$处，级数为$\\sum_{n=0}^{∞}(2n + 1)(−1)n$，通项不趋于零，发散。
因此收敛域为$(−1, 1)$。
求和函数时，将级数写为：


$$
S(x) = \\sum_{n=0}^{∞}(2n + 1)x^{n} = 2 \\sum_{n=0}^{∞} nx^{n} + \\sum_{n=0}^{∞} x^{n}.
$$

其中$\\sum_{n=0}^{∞} x^{n} = \\frac{1}{1-x}$（对于$∣x∣ < 1$），
且$\\sum_{n=0}^{∞} nx^{n} = \\frac{x}{(1-x)2}$（因为$\\sum_{n=1}^{∞} nx^{n-1} = \\frac{1}{(1-x)2}$，故$\\sum_{n=1}^{∞} nx^{n} = \\frac{x}{(1-x)2}$，且$n = 0$时项为零）。
代入得：


$$
S(x) = 2 ⋅ \\frac{x}{(1 - x)2} + \\frac{1}{1 - x} = \\frac{2x}{(1 - x)2} + \\frac{1 - x}{(1 - x)2} = \\frac{2x + 1 - x}{(1 - x)2} = \\frac{1 + x}{(1 - x)2}.
$$

因此和函数为$S(x) = \\frac{1+x}{(1-x)2}$（对于$∣x∣ < 1$）。
', 9, 'Mogullzr', '2026-01-29 14:07:14', 9, 'Mogullzr', '2026-01-29 14:07:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '333');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '333');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '333');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (334, '1990年考研数学卷1第15题', '简单', '考研数学1990年卷1真题', '求曲面积分$I = \\iint_{S} yzdxdx + 2dxdy$，其中$S$是球面$x^{2} + y^{2} + z^{2} = 4$外侧在$z ≥ 0$的部分．', '[]', '$12π$
', '
考虑曲面积分$I = \\iint_{S} yz dz dx + 2 dx dy$，其中$S$是球面$x^{2} + y^{2} + z^{2} = 4$外侧在$z ≥ 0$的部分。这里将原积分中的$dx dx$视为$dz dx$的笔误，对应向量场$F = (0, yz, 2)$。
使用散度定理，引入圆盘$D : x^{2} + y^{2} ≤ 4, z = 0$方向向下，与$S$构成封闭曲面$S^{′} = S ∪ D$，包围上半球体$V : x^{2} + y^{2} + z^{2} ≤ 4, z ≥ 0$。则


$$
\\iint_{S^{′}} F ⋅ dS = \\iiint_{V} ∇ ⋅ F dV.
$$

计算散度：


$$
∇ ⋅ F = \\frac{∂}{∂x}(0) + \\frac{∂}{∂y}(yz) + \\frac{∂}{∂z}(2) = z.
$$

在球坐标下，$x = ρ \\sin ϕ \\cos θ$,$y = ρ \\sin ϕ \\sin θ$,$z = ρ \\cos ϕ$，其中$ρ ∈  \\lbrack 0, 2 \\rbrack$,$ϕ ∈  \\lbrack 0, π/2 \\rbrack$,$θ ∈  \\lbrack 0, 2π \\rbrack$，体积元$dV = ρ^{2} \\sin ϕ dρ dϕ dθ$。于是


$$
\\iiint_{V} z dV = \\int_{0}^{2π} \\int_{0}^{π/2} \\int_{0}^{2} ρ \\cos ϕ ⋅ ρ^{2} \\sin ϕ dρ dϕ dθ = 2π ⋅ \\frac{1}{2} ⋅ 4 = 4π.
$$

在圆盘$D$上，$z = 0$，法向量向下，


$$
F ⋅ dS = (0, 0, 2) ⋅ (0, 0, −1) dS = −2 dS,
$$

所以


$$
\\iint_{D} F ⋅ dS = −2 ⋅ π ⋅ 2^{2} = −8π.
$$

因此，


$$
\\iint_{S} F ⋅ dS = \\iiint_{V} z dV - \\iint_{D} F ⋅ dS = 4π - (−8π) = 12π.
$$

故曲面积分$I = 12π$.
', 9, 'Mogullzr', '2026-01-29 14:07:14', 9, 'Mogullzr', '2026-01-29 14:07:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '334');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '334');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (335, '1990年考研数学卷1第16题', '简单', '考研数学1990年卷1真题', '设不恒为常数的函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上连续，在开区间$(a, b)$内可导，
且$f(a) = f(b)$．证明在$(a, b)$内至少存在一点$ξ$，使得$f^{′}(ξ) > 0$．', '[]', '见解析
', '由于$f(x)$在闭区间$\\lbrack a, b \\rbrack$上不恒为常数，且$f(a) = f(b)$，故存在一点$c ∈ (a, b)$，使得$f(c) \\neq f(a)$。考虑两种情况：

$$
f^{′}(ξ) = \\frac{f(c) - f(a)}{c - a} > 0
$$

综上，在$(a, b)$内至少存在一点$ξ$，使得$f^{′}(ξ) > 0$。
', 9, 'Mogullzr', '2026-01-29 14:07:14', 9, 'Mogullzr', '2026-01-29 14:07:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '335');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '335');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '335');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (336, '1990年考研数学卷1第17题', '简单', '考研数学1990年卷1真题', '设四阶矩阵$B = \\left( \\begin{array}{cccc}
1 & −1 & 0 & 0 \\\\
0 & 1 & −1 & 0 \\\\
0 & 0 & 1 & −1 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right)$，$C = \\left( \\begin{array}{cccc}
2 & 1 & 3 & 4 \\\\
0 & 2 & 1 & 3 \\\\
0 & 0 & 2 & 1 \\\\
0 & 0 & 0 & 2 \\\\
\\end{array} \\right)$，
且矩阵$A$满足关系式$A(E - C^{−1}B)′C^{′} = E$，其中$E$为四阶单位矩阵，$C^{−1}$表示$C$的逆矩阵，$C^{′}$表示$C$的转置矩阵，将上述关系式化简并求矩阵$A$．', '[]', '

$$
A = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−2 & 1 & 0 & 0 \\\\
1 & −2 & 1 & 0 \\\\
0 & 1 & −2 & 1 \\\\
\\end{array} \\right)
$$

', '给定关系式$A(E - C^{−1}B)′C^{′} = E$，其中$E$为单位矩阵。
首先，简化关系式：


$$
(E - C^{−1}B)′ = E^{′} - (C^{−1}B)′ = E - B^{′}(C^{−1})′ = E - B^{′}(C^{′})−1,
$$

代入得：


$$
A \\lbrack E - B^{′}(C^{′})−1 \\rbrack C^{′} = E.
$$

计算括号内与$C^{′}$的乘积：


$$
\\lbrack E - B^{′}(C^{′})−1 \\rbrack C^{′} = EC^{′} - B^{′}(C^{′})−1C^{′} = C^{′} - B^{′}E = C^{′} - B^{′}.
$$

因此，关系式简化为


$$
A(C^{′} - B^{′}) = E,
$$

所以


$$
A = (C^{′} - B^{′})−1.
$$


计算$B^{′}$和$C^{′}$：

$$
B = \\left( \\begin{array}{cccc}
1 & −1 & 0 & 0 \\\\
0 & 1 & −1 & 0 \\\\
0 & 0 & 1 & −1 \\\\
0 & 0 & 0 & 1 \\\\
\\end{array} \\right) ,  B^{′} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−1 & 1 & 0 & 0 \\\\
0 & −1 & 1 & 0 \\\\
0 & 0 & −1 & 1 \\\\
\\end{array} \\right) .
$$


$$
C = \\left( \\begin{array}{cccc}
2 & 1 & 3 & 4 \\\\
0 & 2 & 1 & 3 \\\\
0 & 0 & 2 & 1 \\\\
0 & 0 & 0 & 2 \\\\
\\end{array} \\right) ,  C^{′} = \\left( \\begin{array}{cccc}
2 & 0 & 0 & 0 \\\\
1 & 2 & 0 & 0 \\\\
3 & 1 & 2 & 0 \\\\
4 & 3 & 1 & 2 \\\\
\\end{array} \\right) .
$$

计算$C^{′} - B^{′}$：


$$
C^{′} - B^{′} = \\left( \\begin{array}{cccc}
2 - 1 & 0 - 0 & 0 - 0 & 0 - 0 \\\\
1 - (−1) & 2 - 1 & 0 - 0 & 0 - 0 \\\\
3 - 0 & 1 - (−1) & 2 - 1 & 0 - 0 \\\\
4 - 0 & 3 - 0 & 1 - (−1) & 2 - 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
2 & 1 & 0 & 0 \\\\
3 & 2 & 1 & 0 \\\\
4 & 3 & 2 & 1 \\\\
\\end{array} \\right) .
$$


求$(C^{′} - B^{′})−1$：
设$D = C^{′} - B^{′} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
2 & 1 & 0 & 0 \\\\
3 & 2 & 1 & 0 \\\\
4 & 3 & 2 & 1 \\\\
\\end{array} \\right)$，求$D^{−1}$。
设$D^{−1} = \\left( \\begin{array}{cccc}
x_{11} & 0 & 0 & 0 \\\\
x_{21} & x_{22} & 0 & 0 \\\\
x_{31} & x_{32} & x_{33} & 0 \\\\
x_{41} & x_{42} & x_{43} & x_{44} \\\\
\\end{array} \\right)$，解$DD^{−1} = E$：
第一行：
$1 ⋅ x_{11} = 1$，得$x_{11} = 1$。第二行：
$2 ⋅ x_{11} + 1 ⋅ x_{21} = 0$，即$2 ⋅ 1 + x_{21} = 0$，得$x_{21} = −2$；
$2 ⋅ x_{12} + 1 ⋅ x_{22} = 1$，但$x_{12} = 0$，得$x_{22} = 1$。第三行：
$3 ⋅ x_{11} + 2 ⋅ x_{21} + 1 ⋅ x_{31} = 0$，即$3 ⋅ 1 + 2 ⋅ (−2) + x_{31} = 0$，得$x_{31} = 1$；
$3 ⋅ x_{12} + 2 ⋅ x_{22} + 1 ⋅ x_{32} = 0$，即$0 + 2 ⋅ 1 + x_{32} = 0$，得$x_{32} = −2$；
$3 ⋅ x_{13} + 2 ⋅ x_{23} + 1 ⋅ x_{33} = 1$，但$x_{13} = 0, x_{23} = 0$，得$x_{33} = 1$。第四行：
$4 ⋅ x_{11} + 3 ⋅ x_{21} + 2 ⋅ x_{31} + 1 ⋅ x_{41} = 0$，即$4 ⋅ 1 + 3 ⋅ (−2) + 2 ⋅ 1 + x_{41} = 0$，得$x_{41} = 0$；
$4 ⋅ x_{12} + 3 ⋅ x_{22} + 2 ⋅ x_{32} + 1 ⋅ x_{42} = 0$，即$0 + 3 ⋅ 1 + 2 ⋅ (−2) + x_{42} = 0$，得$x_{42} = 1$；
$4 ⋅ x_{13} + 3 ⋅ x_{23} + 2 ⋅ x_{33} + 1 ⋅ x_{43} = 0$，即$0 + 0 + 2 ⋅ 1 + x_{43} = 0$，得$x_{43} = −2$；
$4 ⋅ x_{14} + 3 ⋅ x_{24} + 2 ⋅ x_{34} + 1 ⋅ x_{44} = 1$，但$x_{14} = 0, x_{24} = 0, x_{34} = 0$，得$x_{44} = 1$。
因此，


$$
D^{−1} = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−2 & 1 & 0 & 0 \\\\
1 & −2 & 1 & 0 \\\\
0 & 1 & −2 & 1 \\\\
\\end{array} \\right) ,
$$

即


$$
A = \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
−2 & 1 & 0 & 0 \\\\
1 & −2 & 1 & 0 \\\\
0 & 1 & −2 & 1 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:07:15', 9, 'Mogullzr', '2026-01-29 14:07:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '336');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '336');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '336');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (337, '1990年考研数学卷1第18题', '简单', '考研数学1990年卷1真题', '求一个正交变换化二次型$f = x_{1}^{2} + 4x_{2}^{2} + 4x_{3}^{2} - 4x_{1}x_{2} + 4x_{1}x_{3} - 8x_{2}x_{3}$成标准形．', '[]', '
二次型的标准形为$9y_{1}^{2}$。
', '
二次型$f = x_{1}^{2} + 4x_{2}^{2} + 4x_{3}^{2} - 4x_{1}x_{2} + 4x_{1}x_{3} - 8x_{2}x_{3}$对应的矩阵为


$$
A = \\left( \\begin{array}{ccc}
1 & −2 & 2 \\\\
−2 & 4 & −4 \\\\
2 & −4 & 4 \\\\
\\end{array} \\right) .
$$

求特征值：解特征方程$det(A - λI) = 0$，即


$$
det \\left( \\begin{array}{ccc}
1 - λ & −2 & 2 \\\\
−2 & 4 - λ & −4 \\\\
2 & −4 & 4 - λ \\\\
\\end{array} \\right) = 0.
$$

计算得$λ^{2}(9 - λ) = 0$，特征值为$λ_{1} = 9$（单根），$λ_{2} = 0$（二重根）。
求特征向量：
对于$λ_{1} = 9$，解$(A - 9I)v = 0$，得特征向量$v_{1} = \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
2 \\\\
\\end{array} \\right)$，单位化得$q_{1} = \\frac{1}{3} \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
2 \\\\
\\end{array} \\right)$。对于$λ_{2} = 0$，解$Av = 0$，得特征向量$v_{2} = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，$v_{3} = \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$。使用 Gram-Schmidt 正交化：
$u_{2} = v_{2} = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，
$u_{3} = v_{3} - \\frac{v_{3}⋅u_{2}}{u_{2}⋅u_{2}}u_{2} = \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) - \\frac{−4}{5} \\left( \\begin{array}{c}
2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−2 \\\\
4 \\\\
5 \\\\
\\end{array} \\right)$。
单位化：
$q_{2} = \\frac{1}{\\sqrt{5}} \\left( \\begin{array}{c}
2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，
$q_{3} = \\frac{1}{3\\sqrt{5}} \\left( \\begin{array}{c}
−2 \\\\
4 \\\\
5 \\\\
\\end{array} \\right)$。
正交变换矩阵为
$Q = \\left( \\begin{array}{ccc}
\\frac{1}{3} & \\frac{2}{\\sqrt{5}} & −\\frac{2}{3\\sqrt{5}} \\\\
−\\frac{2}{3} & \\frac{1}{\\sqrt{5}} & \\frac{4}{3\\sqrt{5}} \\\\
\\frac{2}{3} & 0 & \\frac{5}{3\\sqrt{5}} \\\\
\\end{array} \\right) .$令$x = Qy$，则二次型化为标准形$f = 9y_{1}^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:07:15', 9, 'Mogullzr', '2026-01-29 14:07:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '337');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '337');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (338, '1990年考研数学卷1第19题', '简单', '考研数学1990年卷1真题', '质点$P$沿着以$AB$为直径的圆周，从点$A(1, 2)$运动到点$B(3, 4)$的过程中受变力$F$作用(见图)，$F$的大小等于点$P$与原点$O$之间的距离，其方向垂直于线段$OP$且与$y$轴正向的夹角小于$\\frac{π}{2}$．
求变力$F$对质点$P$所作的功．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/8341e9d74ca8406fb46985489f84df2a.jpg)
', '[]', '$2(π - 1)$
', '质点受变力$F$作用，力的大小等于点$P$与原点$O$之间的距离，即$∣F∣ = \\sqrt{x^{2} + y^{2}}$，方向垂直于线段$OP$且与$y$轴正向的夹角小于$\\frac{π}{2}$。由此可得$F = (−y, x)$。
变力对质点所作的功为线积分$W = \\int_{C} F ⋅ dr = \\int_{C}(−y dx + x dy)$，其中路径$C$是以$AB$为直径的圆弧，从点$A(1, 2)$到点$B(3, 4)$。
圆的圆心为$AB$的中点$C(2, 3)$，半径$r = \\sqrt{2}$。参数化路径：
$x = 2 + \\sqrt{2} \\cos θ$，
$y = 3 + \\sqrt{2} \\sin θ$，
其中$θ$从$−\\frac{3π}{4}$到$\\frac{π}{4}$。
计算微分：
$dx = −\\sqrt{2} \\sin θ dθ$，
$dy = \\sqrt{2} \\cos θ dθ$。
代入积分：


$$
W = \\int_{−\\frac{3π}{4}}^{\\frac{π}{4}}  \\lbrack −y dx + x dy \\rbrack  = \\int_{−\\frac{3π}{4}}^{\\frac{π}{4}}  \\lbrack −(3 + \\sqrt{2} \\sin θ)(−\\sqrt{2} \\sin θ dθ) + (2 + \\sqrt{2} \\cos θ)(\\sqrt{2} \\cos θ dθ) \\rbrack
$$

简化被积函数：


$$
\\sqrt{2}  \\lbrack (3 + \\sqrt{2} \\sin θ) \\sin θ + (2 + \\sqrt{2} \\cos θ) \\cos θ \\rbrack  dθ = \\sqrt{2}  \\lbrack 3 \\sin θ + \\sqrt{2} \\sin^{2} θ + 2 \\cos θ + \\sqrt{2} \\cos^{2} θ \\rbrack  dθ
$$



$$
= \\sqrt{2}  \\lbrack 3 \\sin θ + 2 \\cos θ + \\sqrt{2}(\\sin^{2} θ + \\cos^{2} θ) \\rbrack  dθ = \\sqrt{2}  \\lbrack 3 \\sin θ + 2 \\cos θ + \\sqrt{2} \\rbrack  dθ
$$

因此，


$$
W = \\sqrt{2} \\int_{−\\frac{3π}{4}}^{\\frac{π}{4}}  \\lbrack 3 \\sin θ + 2 \\cos θ + \\sqrt{2} \\rbrack  dθ
$$

计算积分：


$$
∫ 3 \\sin θ dθ = −3 \\cos θ,  ∫ 2 \\cos θ dθ = 2 \\sin θ,  ∫ \\sqrt{2} dθ = \\sqrt{2}θ
$$

代入上下限：


$$
\\lbrack −3 \\cos θ \\rbrack _{−\\frac{3π}{4}}^{\\frac{π}{4}} = −3  \\lbrack \\cos (\\frac{π}{4}) - \\cos (−\\frac{3π}{4}) \\rbrack  = −3  \\lbrack \\frac{\\sqrt{2}}{2} - (−\\frac{\\sqrt{2}}{2}) \\rbrack  = −3\\sqrt{2}
$$



$$
\\lbrack 2 \\sin θ \\rbrack _{−\\frac{3π}{4}}^{\\frac{π}{4}} = 2  \\lbrack \\sin (\\frac{π}{4}) - \\sin (−\\frac{3π}{4}) \\rbrack  = 2  \\lbrack \\frac{\\sqrt{2}}{2} - (−\\frac{\\sqrt{2}}{2}) \\rbrack  = 2\\sqrt{2}
$$



$$
\\lbrack \\sqrt{2}θ \\rbrack _{−\\frac{3π}{4}}^{\\frac{π}{4}} = \\sqrt{2}  \\lbrack \\frac{π}{4} - (−\\frac{3π}{4}) \\rbrack  = \\sqrt{2}π
$$

积分结果为：


$$
−3\\sqrt{2} + 2\\sqrt{2} + \\sqrt{2}π = \\sqrt{2}(π - 1)
$$

于是，


$$
W = \\sqrt{2} ⋅ \\sqrt{2}(π - 1) = 2(π - 1)
$$

故变力$F$对质点$P$所作的功为$2(π - 1)$。
', 9, 'Mogullzr', '2026-01-29 14:07:17', 9, 'Mogullzr', '2026-01-29 14:07:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '338');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '338');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '338');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (339, '1990年考研数学卷1第20题', '简单', '考研数学1990年卷1真题', '已知随机变量$X$的概率密度函数$f(x) = \\frac{1}{2}e^{−∣x∣}$，$−∞ < x < +∞$，
则$X$的概率分布函数$F(x) =$______.', '[]', '

$$
F(x) = \\begin{cases} \\frac{1}{2}e^{x} & ifx < 0 \\\\ 1 - \\frac{1}{2}e^{−x} & ifx ≥ 0 \\end{cases}
$$

', '概率分布函数$F(x)$定义为$F(x) = P(X ≤ x) = \\int_{−∞}^{x} f(t) dt$。给定概率密度函数$f(x) = \\frac{1}{2}e^{−∣x∣}$，由于绝对值的存在，需分段计算。
当$x < 0$时，在积分区间$(−∞, x \\rbrack$上，有$∣t∣ = −t$，所以：

$$
F(x) = \\int_{−∞}^{x} \\frac{1}{2}e^{−∣t∣} dt = \\int_{−∞}^{x} \\frac{1}{2}e^{t} dt = \\frac{1}{2}  \\lbrack e^{t} \\rbrack _{−∞}^{x} = \\frac{1}{2}e^{x}.
$$

当$x ≥ 0$时，积分需分成两段：$(−∞, 0)$和$\\lbrack 0, x \\rbrack$。在$(−∞, 0)$上，有$∣t∣ = −t$：

$$
\\int_{−∞}^{0} \\frac{1}{2}e^{−∣t∣} dt = \\int_{−∞}^{0} \\frac{1}{2}e^{t} dt = \\frac{1}{2}  \\lbrack e^{t} \\rbrack _{−∞}^{0} = \\frac{1}{2}(1 - 0) = \\frac{1}{2}.
$$

在$\\lbrack 0, x \\rbrack$上，有$∣t∣ = t$：

$$
\\int_{0}^{x} \\frac{1}{2}e^{−∣t∣} dt = \\int_{0}^{x} \\frac{1}{2}e^{−t} dt = \\frac{1}{2}  \\lbrack −e^{−t} \\rbrack _{0}^{x} = \\frac{1}{2}(1 - e^{−x}).
$$

因此：

$$
F(x) = \\frac{1}{2} + \\frac{1}{2}(1 - e^{−x}) = 1 - \\frac{1}{2}e^{−x}.
$$

在$x = 0$处，两种情况的取值均为$\\frac{1}{2}$，故函数连续。
', 9, 'Mogullzr', '2026-01-29 14:07:17', 9, 'Mogullzr', '2026-01-29 14:07:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '339');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '339');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (340, '1990年考研数学卷1第21题', '简单', '考研数学1990年卷1真题', '设随机事件$A$，$B$及其和事件$A ∪ B$的概率分别是$0.4$,$0.3$和$0.6$．
若$\\overline{B}$表示$B$的对立事件，那么积事件$A\\overline{B}$的概率$P(A\\overline{B}) =$______.', '[]', '$0.3$
', '
已知$P(A) = 0.4$，$P(B) = 0.3$，$P(A ∪ B) = 0.6$。
根据概率的加法公式：


$$
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
$$

代入已知值：


$$
0.6 = 0.4 + 0.3 - P(A ∩ B)
$$

解得：


$$
P(A ∩ B) = 0.4 + 0.3 - 0.6 = 0.1
$$

事件$A$可以分解为互斥事件$A ∩ B$和$A ∩ \\overline{B}$的并集，因此：


$$
P(A) = P(A ∩ B) + P(A ∩ \\overline{B})
$$

代入$P(A) = 0.4$和$P(A ∩ B) = 0.1$：


$$
0.4 = 0.1 + P(A ∩ \\overline{B})
$$

解得：


$$
P(A ∩ \\overline{B}) = 0.4 - 0.1 = 0.3
$$

因此，积事件$A\\overline{B}$的概率为 0.3。
', 9, 'Mogullzr', '2026-01-29 14:07:17', 9, 'Mogullzr', '2026-01-29 14:07:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '340');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '340');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (341, '1990年考研数学卷1第22题', '简单', '考研数学1990年卷1真题', '已知离散型随机变量$X$服从参数为$2$的泊松（Poisson）分布，即$P\\{X = k\\} = \\frac{2^{k}e^{−2}}{k!}$,$k = 0, 1, 2, ⋯$，则随机变量$Z = 3X - 2$的数学期望$E(Z) =$______.', '[]', '$4$
', '
已知随机变量$X$服从参数为$λ = 2$的泊松分布，因此$E(X) = λ = 2$。
对于随机变量$Z = 3X - 2$，根据数学期望的线性性质，有$E(Z) = E(3X - 2) = 3E(X) - 2$。
代入$E(X) = 2$，得$E(Z) = 3 × 2 - 2 = 6 - 2 = 4$。
故随机变量$Z$的数学期望为 4。
', 9, 'Mogullzr', '2026-01-29 14:07:18', 9, 'Mogullzr', '2026-01-29 14:07:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '341');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '341');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '341');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (342, '1990年考研数学卷1第23题', '简单', '考研数学1990年卷1真题', '设二维随机变量$(X, Y)$在区域$D :  0 < x < 1,  ∣y∣ < x$内服从均匀分布，
求关于$X$的边缘概率密度函数及随机变量$Z = 2X + 1$的方差$D(Z)$．', '[]', '
关于$X$的边缘概率密度函数为$f_{X}(x) = 2x$（其中$0 < x < 1$），随机变量$Z = 2X + 1$的方差$D(Z) = \\frac{2}{9}$。
', '
二维随机变量$(X, Y)$在区域$D : 0 < x < 1, ∣y∣ < x$上服从均匀分布。区域$D$的面积为


$$
A = \\iint_{D} dxdy = \\int_{0}^{1} \\int_{−x}^{x} dydx = \\int_{0}^{1} 2xdx =  \\lbrack x^{2} \\rbrack 01​ = 1,
$$

因此联合概率密度函数为


$$
f_{X,Y}(x, y) = 1,  (x, y) ∈ D.
$$

关于$X$的边缘概率密度函数通过对$y$积分得到：


$$
f_{X}(x) = \\int_{−∞}^{∞} f_{X,Y}(x, y)dy = \\int_{−x}^{x} 1dy = 2x,  0 < x < 1.
$$

对于随机变量$Z = 2X + 1$，其方差为


$$
D(Z) = D(2X + 1) = 4D(X).
$$

需要计算$D(X) = E \\lbrack X^{2} \\rbrack  - (E \\lbrack X \\rbrack )2$。首先求$E \\lbrack X \\rbrack$：


$$
E \\lbrack X \\rbrack  = \\int_{0}^{1} x ⋅ 2xdx = \\int_{0}^{1} 2x^{2}dx = 2  \\lbrack \\frac{x^{3}}{3} \\rbrack _{0}^{1} = \\frac{2}{3}.
$$

然后求$E \\lbrack X^{2} \\rbrack$：


$$
E \\lbrack X^{2} \\rbrack  = \\int_{0}^{1} x^{2} ⋅ 2xdx = \\int_{0}^{1} 2x^{3}dx = 2  \\lbrack \\frac{x^{4}}{4} \\rbrack _{0}^{1} = \\frac{1}{2}.
$$

因此


$$
D(X) = \\frac{1}{2} - (\\frac{2}{3})^{2} = \\frac{1}{2} - \\frac{4}{9} = \\frac{9}{18} - \\frac{8}{18} = \\frac{1}{18}.
$$

最终


$$
D(Z) = 4 × \\frac{1}{18} = \\frac{4}{18} = \\frac{2}{9}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:18', 9, 'Mogullzr', '2026-01-29 14:07:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '342');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '342');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1064', '342');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (343, '1990年考研数学卷2第1题', '', '考研数学1990年卷2真题', '/problems/other/320', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (344, '1990年考研数学卷2第2题', '', '考研数学1990年卷2真题', '/problems/other/321', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (345, '1990年考研数学卷2第3题', '', '考研数学1990年卷2真题', '/problems/other/322', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (346, '1990年考研数学卷2第4题', '', '考研数学1990年卷2真题', '/problems/other/323', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (347, '1990年考研数学卷2第5题', '', '考研数学1990年卷2真题', '/problems/other/324', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (348, '1990年考研数学卷2第6题', '', '考研数学1990年卷2真题', '/problems/other/325', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (349, '1990年考研数学卷2第7题', '', '考研数学1990年卷2真题', '/problems/other/326', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (350, '1990年考研数学卷2第8题', '', '考研数学1990年卷2真题', '/problems/other/327', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (351, '1990年考研数学卷2第9题', '', '考研数学1990年卷2真题', '/problems/other/328', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (352, '1990年考研数学卷2第10题', '', '考研数学1990年卷2真题', '/problems/other/329', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (353, '1990年考研数学卷2第11题', '', '考研数学1990年卷2真题', '/problems/other/330', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (354, '1990年考研数学卷2第12题', '', '考研数学1990年卷2真题', '/problems/other/331', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (355, '1990年考研数学卷2第13题', '', '考研数学1990年卷2真题', '/problems/other/332', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (356, '1990年考研数学卷2第14题', '', '考研数学1990年卷2真题', '/problems/other/333', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (357, '1990年考研数学卷2第15题', '简单', '考研数学1990年卷2真题', '求微分方程$x \\ln xdy + (y - \\ln x)dx = 0$满足条件$y∣_{x=e} = 1$的特解．', '[]', '
$y = \\frac{1}{2} (\\ln x + \\frac{1}{\\ln x})$
', '
给定微分方程$x \\ln xdy + (y - \\ln x)dx = 0$，将其化为标准形式：


$$
\\frac{dy}{dx} + \\frac{1}{x \\ln x}y = \\frac{1}{x}
$$

这是一阶线性微分方程，其中$P(x) = \\frac{1}{x \\ln x}$，$Q(x) = \\frac{1}{x}$。
计算积分因子$μ(x) = e^{∫ P(x) dx} = e^{∫ \\frac{1}{x \\ln x} dx}$。
令$u = \\ln x$，则$du = \\frac{1}{x}dx$，所以


$$
∫ \\frac{1}{x \\ln x} dx = ∫ \\frac{1}{u} du = \\ln ∣u∣ = \\ln ∣ \\ln x∣
$$

因此积分因子为$μ(x) = \\ln x$（取$x > 0$且$\\ln x > 0$)。
将原方程乘以积分因子：


$$
\\ln x\\frac{dy}{dx} + \\frac{1}{x}y = \\frac{\\ln x}{x}
$$

左边为$\\frac{d}{dx}(y \\ln x)$，所以


$$
\\frac{d}{dx}(y \\ln x) = \\frac{\\ln x}{x}
$$

两边积分：


$$
y \\ln x = ∫ \\frac{\\ln x}{x} dx
$$

令$u = \\ln x$，则$du = \\frac{1}{x}dx$，所以


$$
∫ \\frac{\\ln x}{x} dx = ∫ u du = \\frac{u^{2}}{2} + C = \\frac{(\\ln x)2}{2} + C
$$

因此


$$
y \\ln x = \\frac{(\\ln x)2}{2} + C
$$

解得


$$
y = \\frac{\\ln x}{2} + \\frac{C}{\\ln x}
$$

代入初始条件$y∣_{x=e} = 1$：


$$
1 = \\frac{\\ln e}{2} + \\frac{C}{\\ln e} = \\frac{1}{2} + C
$$

得$C = \\frac{1}{2}$。
故特解为


$$
y = \\frac{\\ln x}{2} + \\frac{1}{2 \\ln x} = \\frac{1}{2} (\\ln x + \\frac{1}{\\ln x})
$$

', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '357');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '357');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '357');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (358, '1990年考研数学卷2第16题', '简单', '考研数学1990年卷2真题', '过点$P(1, 0)$作抛物线$y = \\sqrt{x - 2}$的切线，该切线与上述抛物线及$x$轴围成一平面图形，
求此图形绕$x$轴旋转一周所成旋转体的体积．', '[]', '

$$
\\frac{π}{6}
$$

', '过点$P(1, 0)$作抛物线$y = \\sqrt{x - 2}$的切线。设切点为$(a, \\sqrt{a - 2})$，抛物线导数为$y^{′} = \\frac{1}{2\\sqrt{x-2}}$，切点处斜率为$k = \\frac{1}{2\\sqrt{a-2}}$。切线过点$P(1, 0)$和切点，斜率也为$k = \\frac{\\sqrt{a-2}}{a-1}$。联立方程：

$$
\\frac{1}{2\\sqrt{a - 2}} = \\frac{\\sqrt{a - 2}}{a - 1}
$$

解得$a = 3$，切点为$(3, 1)$，切线斜率为$\\frac{1}{2}$，切线方程为$y = \\frac{1}{2}(x - 1)$。
切线与抛物线及$x$轴围成的图形边界为：从$P(1, 0)$沿切线到$(3, 1)$，再沿抛物线到$(2, 0)$，最后沿$x$轴回$P(1, 0)$。该图形绕$x$轴旋转一周所得旋转体体积可分段计算。
从$x = 1$到$x = 2$，只有切线旋转，体积为：

$$
V_{1} = π \\int_{1}^{2}  \\lbrack \\frac{1}{2}(x - 1) \\rbrack ^{2} dx = π \\int_{1}^{2} \\frac{(x - 1)2}{4}dx
$$

令$u = x - 1$，则：

$$
V_{1} = \\frac{π}{4} \\int_{0}^{1} u^{2}du = \\frac{π}{4} ⋅  \\lbrack \\frac{u^{3}}{3} \\rbrack _{0}^{1} = \\frac{π}{12}
$$

从$x = 2$到$x = 3$，切线与抛物线同时旋转，形成 washer 形状，体积为：

$$
V_{2} = π \\int_{2}^{3}  \\lbrack (\\frac{1}{2}(x - 1))^{2} - (\\sqrt{x - 2})^{2} \\rbrack  dx = π \\int_{2}^{3}  \\lbrack \\frac{(x - 1)2}{4} - (x - 2) \\rbrack  dx
$$

计算积分：

$$
\\int_{2}^{3}  \\lbrack \\frac{(x - 1)2}{4} - (x - 2) \\rbrack  dx = \\int_{2}^{3}  \\lbrack \\frac{x^{2}}{4} - \\frac{3x}{2} + \\frac{9}{4} \\rbrack  dx
$$

反导数为：

$$
F(x) = \\frac{x^{3}}{12} - \\frac{3x^{2}}{4} + \\frac{9x}{4}
$$

代入上下限：

$$
F(3) = \\frac{27}{12} - \\frac{27}{4} + \\frac{27}{4} = \\frac{27}{12} = \\frac{9}{4},  F(2) = \\frac{8}{12} - \\frac{12}{4} + \\frac{18}{4} = \\frac{8}{12} + \\frac{6}{4} = \\frac{8}{12} + \\frac{18}{12} = \\frac{26}{12} = \\frac{13}{6}
$$

积分值为：

$$
F(3) - F(2) = \\frac{9}{4} - \\frac{13}{6} = \\frac{27}{12} - \\frac{26}{12} = \\frac{1}{12}
$$

所以：

$$
V_{2} = π ⋅ \\frac{1}{12} = \\frac{π}{12}
$$

总体积：

$$
V = V_{1} + V_{2} = \\frac{π}{12} + \\frac{π}{12} = \\frac{π}{6}
$$

或者，整体计算：切线从$x = 1$到$x = 3$旋转体积为：

$$
π \\int_{1}^{3}  \\lbrack \\frac{1}{2}(x - 1) \\rbrack ^{2} dx = π \\int_{1}^{3} \\frac{(x - 1)2}{4}dx = \\frac{π}{4} \\int_{0}^{2} u^{2}du = \\frac{π}{4} ⋅ \\frac{8}{3} = \\frac{2π}{3}
$$

抛物线从$x = 2$到$x = 3$旋转体积为：

$$
π \\int_{2}^{3}(x - 2)dx = π  \\lbrack \\frac{(x - 2)2}{2} \\rbrack _{2}^{3} = π ⋅ \\frac{1}{2} = \\frac{π}{2}
$$

相减：

$$
V = \\frac{2π}{3} - \\frac{π}{2} = \\frac{4π}{6} - \\frac{3π}{6} = \\frac{π}{6}
$$

结果一致。故旋转体体积为$\\frac{π}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '358');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '358');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '358');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (359, '1990年考研数学卷2第17题', '', '考研数学1990年卷2真题', '/problems/other/334', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (360, '1990年考研数学卷2第18题', '', '考研数学1990年卷2真题', '/problems/other/335', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (361, '1990年考研数学卷2第19题', '', '考研数学1990年卷2真题', '/problems/other/336', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (362, '1990年考研数学卷2第20题', '', '考研数学1990年卷2真题', '/problems/other/337', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (363, '1990年考研数学卷2第21题', '', '考研数学1990年卷2真题', '/problems/other/338', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:20', 9, 'Mogullzr', '2026-01-29 14:07:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (364, '1990年考研数学卷3第1题', '简单', '考研数学1990年卷3真题', '曲线$\\begin{cases} x = \\cos^{3} t \\\\ y = \\sin^{3} t \\end{cases}$上对应于点$t = \\frac{π}{6}$点处的法线方程是______.', '[]', '
$y = \\sqrt{3}x - 1$
', '
曲线由参数方程$x = \\cos^{3} t$和$y = \\sin^{3} t$给出。首先求切线斜率$\\frac{dy}{dx}$：


$$
\\frac{dx}{dt} = −3 \\cos^{2} t \\sin t,  \\frac{dy}{dt} = 3 \\sin^{2} t \\cos t,
$$

因此


$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{3 \\sin^{2} t \\cos t}{−3 \\cos^{2} t \\sin t} = − \\tan t.
$$

在$t = \\frac{π}{6}$时，切线斜率$m_{t} = − \\tan \\frac{π}{6} = −\\frac{1}{\\sqrt{3}}$。法线斜率$m_{n}$是切线斜率的负倒数，即


$$
m_{n} = −\\frac{1}{m_{t}} = −\\frac{1}{−\\frac{1}{\\sqrt{3}}} = \\sqrt{3}.
$$

接下来求点坐标：


$$
x = \\cos^{3} \\frac{π}{6} = (\\frac{\\sqrt{3}}{2})^{3} = \\frac{3\\sqrt{3}}{8},  y = \\sin^{3} \\frac{π}{6} = (\\frac{1}{2})^{3} = \\frac{1}{8}.
$$

因此点为$(\\frac{3\\sqrt{3}}{8}, \\frac{1}{8})$。用法线斜率$\\sqrt{3}$和点斜式方程：


$$
y - \\frac{1}{8} = \\sqrt{3} (x - \\frac{3\\sqrt{3}}{8}) .
$$

化简：


$$
y - \\frac{1}{8} = \\sqrt{3}x - \\sqrt{3} ⋅ \\frac{3\\sqrt{3}}{8} = \\sqrt{3}x - \\frac{9}{8},
$$



$$
y = \\sqrt{3}x - \\frac{9}{8} + \\frac{1}{8} = \\sqrt{3}x - 1.
$$

故法线方程为$y = \\sqrt{3}x - 1$。
', 9, 'Mogullzr', '2026-01-29 14:07:23', 9, 'Mogullzr', '2026-01-29 14:07:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '364');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '364');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '364');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (365, '1990年考研数学卷3第2题', '简单', '考研数学1990年卷3真题', '设$y = e^{\\tan \\frac{1}{x}} \\sin \\frac{1}{x}$，则$y^{′} =$______.', '[]', '$−\\frac{1}{x^{2}}e^{\\tan \\frac{1}{x}} (sec^{2} \\frac{1}{x} \\sin \\frac{1}{x} + \\cos \\frac{1}{x})$
', '设$y = e^{\\tan \\frac{1}{x}} \\sin \\frac{1}{x}$，则$y$是函数
$u = e^{\\tan \\frac{1}{x}}$和$v = \\sin \\frac{1}{x}$的乘积。
由乘积法则，


$$
y^{′} = u^{′}v + uv^{′}.
$$


首先，求$u^{′}$：
令$z = \\tan \\frac{1}{x}$，则$u = e^{z}$，所以


$$
u^{′} = e^{z} ⋅ z^{′}.
$$

又$z = \\tan \\frac{1}{x}$，令$w = \\frac{1}{x}$，则$z = \\tan w$，所以


$$
z^{′} = sec^{2} w ⋅ w^{′}.
$$

由于$w = \\frac{1}{x} = x^{−1}$，有


$$
w^{′} = −x^{−2} = −\\frac{1}{x^{2}}.
$$

因此


$$
z^{′} = sec^{2} \\frac{1}{x} ⋅ (−\\frac{1}{x^{2}}) = −\\frac{1}{x^{2}} sec^{2} \\frac{1}{x}.
$$

于是


$$
u^{′} = e^{\\tan \\frac{1}{x}} ⋅ (−\\frac{1}{x^{2}} sec^{2} \\frac{1}{x}) = −\\frac{1}{x^{2}}e^{\\tan \\frac{1}{x}} sec^{2} \\frac{1}{x}.
$$


其次，求$v^{′}$：
$v = \\sin \\frac{1}{x}$，令$w = \\frac{1}{x}$，则$v = \\sin w$，所以


$$
v^{′} = \\cos w ⋅ w^{′}.
$$

代入$w^{′} = −\\frac{1}{x^{2}}$，得


$$
v^{′} = \\cos \\frac{1}{x} ⋅ (−\\frac{1}{x^{2}}) = −\\frac{1}{x^{2}} \\cos \\frac{1}{x}.
$$


代入乘积法则：

$$
\\begin{array}{cc}
y^{′} & = u^{′}v + uv^{′} \\\\
 & = (−\\frac{1}{x^{2}}e^{\\tan \\frac{1}{x}} sec^{2} \\frac{1}{x}) \\sin \\frac{1}{x}  +  e^{\\tan \\frac{1}{x}} (−\\frac{1}{x^{2}} \\cos \\frac{1}{x}) . \\\\
\\end{array}
$$

提取公因子$−\\frac{1}{x^{2}}e^{\\tan \\frac{1}{x}}$，得

$$
y^{′} = −\\frac{1}{x^{2}}e^{\\tan \\frac{1}{x}} (sec^{2} \\frac{1}{x} \\sin \\frac{1}{x} + \\cos \\frac{1}{x}) .
$$

这就是所求的导数。
', 9, 'Mogullzr', '2026-01-29 14:07:23', 9, 'Mogullzr', '2026-01-29 14:07:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '365');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '365');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '365');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (366, '1990年考研数学卷3第3题', '简单', '考研数学1990年卷3真题', '$\\int_{0}^{1} x\\sqrt{1 - x}dx =$______.', '[]', '$\\frac{4}{15}$
', '计算积分$\\int_{0}^{1} x\\sqrt{1 - x} dx$。令$u = 1 - x$，则$du = −dx$，即$dx = −du$。当$x = 0$时，$u = 1$；当$x = 1$时，$u = 0$。积分变为：

$$
\\int_{0}^{1} x\\sqrt{1 - x} dx = \\int_{1}^{0}(1 - u)\\sqrt{u} (−du) = \\int_{0}^{1}(1 - u)u^{1/2} du
$$

展开被积函数：

$$
\\int_{0}^{1}(u^{1/2} - u^{3/2}) du
$$

分别计算积分：

$$
∫ u^{1/2} du = \\frac{2}{3}u^{3/2},  ∫ u^{3/2} du = \\frac{2}{5}u^{5/2}
$$

所以：

$$
\\int_{0}^{1}(u^{1/2} - u^{3/2}) du =  \\lbrack \\frac{2}{3}u^{3/2} - \\frac{2}{5}u^{5/2} \\rbrack _{0}^{1} = (\\frac{2}{3} - \\frac{2}{5}) - (0) = \\frac{10}{15} - \\frac{6}{15} = \\frac{4}{15}
$$

因此，积分值为$\\frac{4}{15}$。
', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '366');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '366');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '366');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (367, '1990年考研数学卷3第4题', '简单', '考研数学1990年卷3真题', '下列两个积分的大小关系是：$\\int_{−2}^{−1} e^{−x^{3}}dx$______$\\int_{−2}^{−1} e^{x^{3}}dx$．', '[]', '大于
', '在区间$\\lbrack −2, −1 \\rbrack$上，$x$为负值，故$x^{3} ≤ −1$。因此，$e^{−x^{3}} ≥ e^{1} > 1$，而$e^{x^{3}} ≤ e^{−1} < 1$，从而有$e^{−x^{3}} > e^{x^{3}}$。根据积分的单调性，被积函数在区间上恒有大小关系，则积分后大小关系不变，即$\\int_{−2}^{−1} e^{−x^{3}} dx > \\int_{−2}^{−1} e^{x^{3}} dx$。此外，通过变量代换$t = −x$也可得相同结论。
', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '367');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '367');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '367');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (368, '1990年考研数学卷3第5题', '', '考研数学1990年卷3真题', '/problems/other/322', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (369, '1990年考研数学卷3第6题', '简单', '考研数学1990年卷3真题', '已知$\\lim_{x→∞}  (\\frac{x^{2}}{x+1} - ax - b) = 0$，其中$a, b$是常数，则', '[''$a = 1, b = 1$．'', ''$a = −1, b = 1$．'', ''$a = 1, b = −1$．'', ''$a = −1, b = −1$．'']', "['C']", '
给定极限

$$
\\lim_{x→∞}  (\\frac{x^{2}}{x + 1} - ax - b) = 0
$$
首先对$\\frac{x^{2}}{x+1}$进行化简。通过多项式除法可得：

$$
\\frac{x^{2}}{x + 1} = x - 1 + \\frac{1}{x + 1}
$$
代入原式得：

$$
(x - 1 + \\frac{1}{x + 1}) - ax - b = (1 - a)x + (−1 - b) + \\frac{1}{x + 1}
$$
当$x → ∞$时，$\\frac{1}{x+1} → 0$。要使极限为 0，必须满足：
$$
1 - a = 0  ⇒  a = 1
$$
验证：当$a = 1,  b = −1$时，

$$
\\frac{x^{2}}{x + 1} - x + 1 = \\frac{1}{x + 1} → 0
$$
符合条件。故选项C正确。', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '369');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '369');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '369');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (370, '1990年考研数学卷3第7题', '简单', '考研数学1990年卷3真题', '设函数$f(x)$在$(−∞ + ∞)$上连续，则$d  \\lbrack ∫ f(x)dx \\rbrack$等于', '[''$f(x)$．'', ''$f(x)dx$．'', ''$f(x) + C$．'', ''$f^{′}(x)dx$．'']', "['B']", '
函数$f(x)$在$(−∞, +∞)$上连续，因此$∫ f(x) dx$表示$f(x)$的所有原函数的集合。
设$F(x)$为$f(x)$的一个原函数，即$F^{′}(x) = f(x)$，则
$$
d  \\lbrack ∫ f(x) dx \\rbrack  = dF = F^{′}(x) dx = f(x) dx
$$
选项 A 缺少微分$dx$；选项 C 包含不必要的常数$C$；选项 D 涉及导数$f^{′}(x)$，与微分原函数的结果不符。因此，正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '370');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '370');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '370');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (371, '1990年考研数学卷3第8题', '', '考研数学1990年卷3真题', '/problems/other/326', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (372, '1990年考研数学卷3第9题', '', '考研数学1990年卷3真题', '/problems/other/325', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (373, '1990年考研数学卷3第10题', '简单', '考研数学1990年卷3真题', '设$F(x) = \\begin{cases} \\frac{f(x)}{x} & x \\neq 0 \\\\ f(0) & x = 0 \\end{cases}$，其中$f(x)$在$x = 0$处可导，$f^{′}(0) \\neq 0, f(0) = 0$，
则$x = 0$是$F(x)$的', '[''连续点．'', ''第一类间断点．'', ''第二类间断点．'', ''连续点或间断点不能由此确定．'']', "['B']", '
给定$F(0) = f(0) = 0$，需要判断$x = 0$处$F(x)$的连续性。考虑极限
$$
\\lim_{x→0} F(x).
$$
当$x \\neq 0$时，$F(x) = \\frac{f(x)}{x}$，因此
$$
\\lim_{x→0} F(x) = \\lim_{x→0} \\frac{f(x)}{x}.
$$
由于$f(0) = 0$且$f(x)$在$x = 0$处可导，根据导数定义
$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0} \\frac{f(x)}{x},
$$
故
$$
\\lim_{x→0} F(x) = f^{′}(0).
$$
已知$f^{′}(0) \\neq 0$，所以
$$
\\lim_{x→0} F(x) = f^{′}(0) \\neq 0,
$$
而$F(0) = 0$，因此极限不等于函数值，$F(x)$在$x = 0$处不连续。由于极限$f^{′}(0)$存在且有限，但不同于函数值，此为第一类间断点（即可去间断点）。故选项B正确。', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '373');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '373');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '373');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (374, '1990年考研数学卷3第11题', '简单', '考研数学1990年卷3真题', '已知$\\lim_{x→∞} (\\frac{x+a}{x-a})^{x} = 9$，求常数$a$．', '[]', '
$a = \\ln 3$
', '
给定极限$\\lim_{x→∞} (\\frac{x+a}{x-a})^{x} = 9$。
将表达式改写为：


$$
(\\frac{x + a}{x - a})^{x} = (1 + \\frac{2a}{x - a})^{x}
$$

令$t = x - a$，则当$x → ∞$时$t → ∞$，且$x = t + a$，代入得：


$$
(1 + \\frac{2a}{t})^{t+a} = (1 + \\frac{2a}{t})^{t} ⋅ (1 + \\frac{2a}{t})^{a}
$$

当$t → ∞$时，$(1 + \\frac{2a}{t})^{a} → 1$，而$(1 + \\frac{2a}{t})^{t} → e^{2a}$，因此极限为$e^{2a}$。
由已知$e^{2a} = 9$，解得$2a = \\ln 9$，即$a = \\frac{\\ln 9}{2}$。
由于$\\ln 9 = \\ln(3^{2}) = 2 \\ln 3$，所以$a = \\ln 3$。
', 9, 'Mogullzr', '2026-01-29 14:07:24', 9, 'Mogullzr', '2026-01-29 14:07:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '374');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '374');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '374');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (375, '1990年考研数学卷3第12题', '简单', '考研数学1990年卷3真题', '求由方程$2y - x = (x - y) \\ln(x - y)$所确定的函数$y = y(x)$的微分$dy$．', '[]', '

$$
dy = \\frac{\\ln(x - y) + 2}{\\ln(x - y) + 3}dx
$$

', '给定方程$2y - x = (x - y) \\ln(x - y)$，求函数$y = y(x)$的微分$dy$。
对方程两边取微分：
左边微分为$d(2y - x) = 2dy - dx$。
右边令$u = x - y$，则$d(u \\ln u) = (\\ln u + 1)du$，其中$du = d(x - y) = dx - dy$，因此右边微分为$(\\ln(x - y) + 1)(dx - dy)$。
于是有：


$$
2dy - dx = (\\ln(x - y) + 1)(dx - dy)
$$

展开右边：


$$
2dy - dx = (\\ln(x - y) + 1)dx - (\\ln(x - y) + 1)dy
$$

移项整理：


$$
2dy + (\\ln(x - y) + 1)dy - dx - (\\ln(x - y) + 1)dx = 0
$$

即：


$$
\\lbrack \\ln(x - y) + 3 \\rbrack dy -  \\lbrack \\ln(x - y) + 2 \\rbrack dx = 0
$$

解得：


$$
dy = \\frac{\\ln(x - y) + 2}{\\ln(x - y) + 3}dx
$$

这就是所求的微分。
', 9, 'Mogullzr', '2026-01-29 14:07:25', 9, 'Mogullzr', '2026-01-29 14:07:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '375');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '375');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '375');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (376, '1990年考研数学卷3第13题', '简单', '考研数学1990年卷3真题', '求曲线$y = \\frac{1}{1+x^{2}}$（$x > 0$）的拐点．', '[]', '
拐点为$(\\frac{\\sqrt{3}}{3}, \\frac{3}{4})$。
', '
首先，求函数$y = \\frac{1}{1+x^{2}}$的一阶导数和二阶导数。
一阶导数：


$$
y^{′} = −\\frac{2x}{(1 + x^{2})2}.
$$

二阶导数：


$$
y^{′′} = \\frac{6x^{2} - 2}{(1 + x^{2})3}.
$$

令$y^{′′} = 0$，即


$$
\\frac{6x^{2} - 2}{(1 + x^{2})3} = 0,
$$

分子为零：


$$
6x^{2} - 2 = 0,
$$

解得$x^{2} = \\frac{1}{3}$。由于$x > 0$，故


$$
x = \\frac{\\sqrt{3}}{3}.
$$

代入原函数求$y$：


$$
y = \\frac{1}{1 + (\\frac{\\sqrt{3}}{3})^{2}} = \\frac{1}{1 + \\frac{1}{3}} = \\frac{3}{4}.
$$

验证二阶导数符号变化：
当$x < \\frac{\\sqrt{3}}{3}$时，$y^{′′} < 0$，曲线凹向下；当$x > \\frac{\\sqrt{3}}{3}$时，$y^{′′} > 0$，曲线凹向上。
因此，$(\\frac{\\sqrt{3}}{3}, \\frac{3}{4})$是拐点。
', 9, 'Mogullzr', '2026-01-29 14:07:25', 9, 'Mogullzr', '2026-01-29 14:07:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '376');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '376');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '376');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (377, '1990年考研数学卷3第14题', '简单', '考研数学1990年卷3真题', '计算$∫ \\frac{\\ln x}{(1-x)2}dx.$', '[]', '

$$
\\frac{\\ln x}{1 - x} - \\ln ​\\frac{x}{1 - x}​ + C
$$

或等价形式。
', '考虑积分$∫ \\frac{\\ln x}{(1-x)2} dx$。使用分部积分法，设$u = \\ln x$，则$du = \\frac{1}{x} dx$；设$dv = \\frac{1}{(1-x)2} dx$，则$v = ∫ \\frac{1}{(1-x)2} dx = \\frac{1}{1-x}$。分部积分公式为：

$$
∫ u dv = uv - ∫ v du
$$

代入得：

$$
∫ \\frac{\\ln x}{(1 - x)2} dx = \\frac{\\ln x}{1 - x} - ∫ \\frac{1}{1 - x} ⋅ \\frac{1}{x} dx = \\frac{\\ln x}{1 - x} - ∫ \\frac{1}{x(1 - x)} dx
$$

对$∫ \\frac{1}{x(1-x)} dx$进行部分分式分解：

$$
\\frac{1}{x(1 - x)} = \\frac{A}{x} + \\frac{B}{1 - x}
$$

两边乘以$x(1 - x)$得：

$$
1 = A(1 - x) + Bx
$$

令$x = 0$，得$A = 1$；令$x = 1$，得$B = 1$。因此：

$$
\\frac{1}{x(1 - x)} = \\frac{1}{x} + \\frac{1}{1 - x}
$$

积分得：

$$
∫ \\frac{1}{x(1 - x)} dx = ∫ (\\frac{1}{x} + \\frac{1}{1 - x}) dx = \\ln ∣x∣ - \\ln ∣1 - x∣ + C_{1} = \\ln ​\\frac{x}{1 - x}​ + C_{1}
$$

代回原积分：

$$
∫ \\frac{\\ln x}{(1 - x)2} dx = \\frac{\\ln x}{1 - x} - \\ln ​\\frac{x}{1 - x}​ + C
$$

其中$C$为积分常数。此结果已验证正确。
', 9, 'Mogullzr', '2026-01-29 14:07:25', 9, 'Mogullzr', '2026-01-29 14:07:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '377');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '377');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '377');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (378, '1990年考研数学卷3第15题', '', '考研数学1990年卷3真题', '/problems/other/357', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:25', 9, 'Mogullzr', '2026-01-29 14:07:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (379, '1990年考研数学卷3第16题', '简单', '考研数学1990年卷3真题', '在椭圆$\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}} = 1$的第一象限部分上求一点$P$，使该点处的切线、椭圆及两坐标轴所围图形面积为最小（其中$a > 0, b > 0$）．', '[]', '$P (\\frac{a}{\\sqrt{2}}, \\frac{b}{\\sqrt{2}})$
', '设椭圆在第一象限上一点$P(x_{0}, y_{0})$，满足


$$
\\frac{x_{0}^{2}}{a^{2}} + \\frac{y_{0}^{2}}{b^{2}} = 1
$$

在点$P$处的切线方程为


$$
\\frac{xx_{0}}{a^{2}} + \\frac{yy_{0}}{b^{2}} = 1
$$

该切线与$x$轴交于点$A (\\frac{a^{2}}{x_{0}}, 0)$，与$y$轴交于点$B (0, \\frac{b^{2}}{y_{0}})$。
切线、坐标轴及椭圆所围图形的面积为三角形$OAB$的面积减去椭圆在第一象限内的面积。
三角形$OAB$的面积为


$$
S_{△} = \\frac{1}{2} ⋅ \\frac{a^{2}}{x_{0}} ⋅ \\frac{b^{2}}{y_{0}} = \\frac{a^{2}b^{2}}{2x_{0}y_{0}}
$$

椭圆在第一象限内的面积为


$$
S_{e} = \\frac{πab}{4}
$$

因此，所围图形的面积为


$$
S = S_{△} - S_{e} = \\frac{a^{2}b^{2}}{2x_{0}y_{0}} - \\frac{πab}{4}
$$

由于$S_{e}$为常数，最小化$S$等价于最小化$S_{△}$，即最小化$\\frac{a^{2}b^{2}}{2x_{0}y_{0}}$，亦即最大化$x_{0}y_{0}$。
在约束条件$\\frac{x_{0}^{2}}{a^{2}} + \\frac{y_{0}^{2}}{b^{2}} = 1$下，由均值不等式，


$$
x_{0}y_{0} ≤ \\frac{ab}{2}
$$

当且仅当$\\frac{x_{0}^{2}}{a^{2}} = \\frac{y_{0}^{2}}{b^{2}} = \\frac{1}{2}$时取等号，即


$$
x_{0} = \\frac{a}{\\sqrt{2}},  y_{0} = \\frac{b}{\\sqrt{2}}
$$

此时$S_{△}$取最小值$ab$，因而$S$取最小值


$$
ab (1 - \\frac{π}{4})
$$

故所求点为


$$
P (\\frac{a}{\\sqrt{2}},  \\frac{b}{\\sqrt{2}})
$$

', 9, 'Mogullzr', '2026-01-29 14:07:25', 9, 'Mogullzr', '2026-01-29 14:07:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '379');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '379');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '379');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (380, '1990年考研数学卷3第17题', '简单', '考研数学1990年卷3真题', '证明：当$x > 0$时，有不等式$arctan x + \\frac{1}{x} > \\frac{π}{2}$．', '[]', '
不等式成立。
', '
考虑函数$f(x) = arctan x + \\frac{1}{x} - \\frac{π}{2}$，其中$x > 0$。
计算导数：


$$
f^{′}(x) = \\frac{1}{1 + x^{2}} - \\frac{1}{x^{2}} = \\frac{x^{2} - (1 + x^{2})}{x^{2}(1 + x^{2})} = \\frac{−1}{x^{2}(1 + x^{2})}
$$

由于$x > 0$，有$x^{2}(1 + x^{2}) > 0$，因此$f^{′}(x) < 0$，即$f(x)$在$(0, ∞)$上严格递减。
计算极限：


$$
\\lim_{x→∞} f(x) = \\lim_{x→∞} (arctan x + \\frac{1}{x} - \\frac{π}{2}) = \\frac{π}{2} + 0 - \\frac{π}{2} = 0
$$

由于$f(x)$严格递减且趋于 0，因此对于所有$x > 0$，有$f(x) > 0$，即


$$
arctan x + \\frac{1}{x} > \\frac{π}{2}
$$

故不等式得证。
', 9, 'Mogullzr', '2026-01-29 14:07:25', 9, 'Mogullzr', '2026-01-29 14:07:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '380');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '380');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '380');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (381, '1990年考研数学卷3第18题', '简单', '考研数学1990年卷3真题', '设$f(x) = \\int_{1}^{x} \\frac{\\ln t}{1+t}dt$，其中$x > 0$，求$f(x) + f (\\frac{1}{x})$．', '[]', '

$$
\\frac{1}{2}(\\ln x)2
$$

', '给定$f(x) = \\int_{1}^{x} \\frac{\\ln t}{1+t} dt$，需要求$f(x) + f (\\frac{1}{x})$。
首先，计算$f (\\frac{1}{x}) = \\int_{1}^{1/x} \\frac{\\ln t}{1+t} dt$。
令$u = \\frac{1}{t}$，则当$t = 1$时$u = 1$，当$t = 1/x$时$u = x$，且$dt = −\\frac{1}{u^{2}} du$。
代入得：


$$
f (\\frac{1}{x}) = \\int_{1}^{x} \\frac{\\ln(1/u)}{1 + 1/u} ⋅ (−\\frac{1}{u^{2}})  du = \\int_{1}^{x} \\frac{− \\ln u}{\\frac{u+1}{u}} ⋅ (−\\frac{1}{u^{2}})  du = \\int_{1}^{x} \\frac{\\ln u}{u(u + 1)} du.
$$

于是，


$$
f(x) + f (\\frac{1}{x}) = \\int_{1}^{x} \\frac{\\ln t}{1 + t} dt + \\int_{1}^{x} \\frac{\\ln t}{t(1 + t)} dt = \\int_{1}^{x}  \\lbrack \\frac{\\ln t}{1 + t} + \\frac{\\ln t}{t(1 + t)} \\rbrack  dt.
$$

合并被积函数：


$$
\\frac{\\ln t}{1 + t} + \\frac{\\ln t}{t(1 + t)} = \\ln t (\\frac{1}{1 + t} + \\frac{1}{t(1 + t)}) = \\ln t ⋅ \\frac{t + 1}{t(1 + t)} = \\frac{\\ln t}{t}.
$$

因此，


$$
f(x) + f (\\frac{1}{x}) = \\int_{1}^{x} \\frac{\\ln t}{t} dt.
$$

计算该积分：令$u = \\ln t$，则$du = \\frac{1}{t}dt$，


$$
∫ \\frac{\\ln t}{t} dt = ∫ u du = \\frac{u^{2}}{2} + C = \\frac{(\\ln t)2}{2} + C.
$$

代入上下限：


$$
\\int_{1}^{x} \\frac{\\ln t}{t} dt =  \\lbrack \\frac{(\\ln t)2}{2} \\rbrack _{1}^{x} = \\frac{(\\ln x)2}{2} - \\frac{(\\ln 1)2}{2} = \\frac{1}{2}(\\ln x)2.
$$

故$f(x) + f (\\frac{1}{x}) = \\frac{1}{2}(\\ln x)2$.
', 9, 'Mogullzr', '2026-01-29 14:07:26', 9, 'Mogullzr', '2026-01-29 14:07:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '381');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '381');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '381');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (382, '1990年考研数学卷3第19题', '', '考研数学1990年卷3真题', '/problems/other/358', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:26', 9, 'Mogullzr', '2026-01-29 14:07:26', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (383, '1990年考研数学卷3第20题', '简单', '考研数学1990年卷3真题', '求微分方程$y^{′′} + 4y^{′} + 4y = e^{ax}$之通解，其中$a$为实数．', '[]', '当$a \\neq −2$时，通解为$y = (C_{1} + C_{2}x)e^{−2x} + \\frac{1}{(a+2)2}e^{ax}$；
当$a = −2$时，通解为$y = (C_{1} + C_{2}x)e^{−2x} + \\frac{1}{2}x^{2}e^{−2x}$，其中$C_{1}$和$C_{2}$为任意常数。
', '给定微分方程$y^{′′} + 4y^{′} + 4y = e^{ax}$，首先求解齐次方程$y^{′′} + 4y^{′} + 4y = 0$。
特征方程为$r^{2} + 4r + 4 = 0$，解得$r = −2$（重根），因此齐次通解为


$$
y_{h} = (C_{1} + C_{2}x)e^{−2x}.
$$

接下来求非齐次方程的特解$y_{p}$，根据$a$的值分情况讨论：

$$
Aa^{2}e^{ax} + 4Aae^{ax} + 4Ae^{ax} = e^{ax},
$$

最终通解为齐次解与特解之和。
', 9, 'Mogullzr', '2026-01-29 14:07:26', 9, 'Mogullzr', '2026-01-29 14:07:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '383');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '383');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '383');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (384, '1990年考研数学卷4第1题', '简单', '考研数学1990年卷4真题', '极限$\\lim_{n→∞}  (\\sqrt{} - \\sqrt{}) =$______.', '[]', '
2
', '
考虑极限$\\lim_{n→∞} (\\sqrt{} - \\sqrt{})$。这是一个$∞ - ∞$型不定式，通过有理化处理。
令$a = \\sqrt{}$，$b = \\sqrt{}$，则


$$
a - b = \\frac{a^{2} - b^{2}}{a + b} = \\frac{(n + 3\\sqrt{n}) - (n - \\sqrt{n})}{\\sqrt{} + \\sqrt{}} = \\frac{4\\sqrt{n}}{\\sqrt{} + \\sqrt{}}.
$$

因此，


$$
\\lim_{n→∞} (\\sqrt{} - \\sqrt{}) = \\lim_{n→∞} \\frac{4\\sqrt{n}}{\\sqrt{} + \\sqrt{}}.
$$

将分母中的根式提取$\\sqrt{n}$：


$$
\\sqrt{} = \\sqrt{n} ⋅ \\sqrt{},  \\sqrt{} = \\sqrt{n} ⋅ \\sqrt{}.
$$

于是，


$$
\\frac{4\\sqrt{n}}{\\sqrt{n} (\\sqrt{} + \\sqrt{})} = \\frac{4}{\\sqrt{} + \\sqrt{}}.
$$

当$n → ∞$时，$\\frac{3}{\\sqrt{n}} → 0$，$\\frac{1}{\\sqrt{n}} → 0$，故


$$
\\sqrt{} → 1,  \\sqrt{} → 1.
$$

因此，分母趋近于$1 + 1 = 2$，极限值为$\\frac{4}{2} = 2$。
', 9, 'Mogullzr', '2026-01-29 14:07:28', 9, 'Mogullzr', '2026-01-29 14:07:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '384');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '384');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '384');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (385, '1990年考研数学卷4第2题', '简单', '考研数学1990年卷4真题', '设函数$f(x)$有连续的导函数，$f(0) = 0, f^{′}(0) = b$，若函数
$$
F(x) = \\begin{cases} \\frac{f(x)+a \\sin x}{x} & x \\neq 0 \\\\ A & x = 0 \\end{cases}
$$
在$x = 0$处连续，则常数$A$=______.', '[]', '
$a + b$
', '
由于函数$F(x)$在$x = 0$处连续，因此有$\\lim_{x→0} F(x) = F(0) = A$。
计算极限：


$$
\\lim_{x→0} F(x) = \\lim_{x→0} \\frac{f(x) + a \\sin x}{x}
$$

已知$f(0) = 0$，因此该极限为$\\frac{0}{0}$型不定式。
将极限拆分为：


$$
\\lim_{x→0} \\frac{f(x) + a \\sin x}{x} = \\lim_{x→0} \\frac{f(x)}{x} + \\lim_{x→0} \\frac{a \\sin x}{x}
$$

由导数定义，$\\lim_{x→0} \\frac{f(x)}{x} = f^{′}(0) = b$。
又$\\lim_{x→0} \\frac{\\sin x}{x} = 1$，因此$\\lim_{x→0} \\frac{a \\sin x}{x} = a$。
所以，


$$
\\lim_{x→0} F(x) = b + a
$$

故$A = a + b$。
', 9, 'Mogullzr', '2026-01-29 14:07:28', 9, 'Mogullzr', '2026-01-29 14:07:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '385');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '385');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '385');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (386, '1990年考研数学卷4第3题', '简单', '考研数学1990年卷4真题', '曲线$y = x^{2}$与直线$y = x + 2$所围成的平面图形的面积为______.', '[]', '

$$
\\frac{9}{2}
$$

', '曲线$y = x^{2}$与直线$y = x + 2$的交点通过解方程$x^{2} = x + 2$得到，即$x^{2} - x - 2 = 0$，解得$x = −1$和$x = 2$。在区间$\\lbrack −1, 2 \\rbrack$上，直线$y = x + 2$位于曲线$y = x^{2}$的上方，因此所围成的平面图形的面积为：

$$
A = \\int_{−1}^{2}  \\lbrack (x + 2) - x^{2} \\rbrack   dx
$$

计算积分：

$$
∫(x + 2 - x^{2}) dx = \\frac{x^{2}}{2} + 2x - \\frac{x^{3}}{3} + C
$$

代入上下限：

$$
\\lbrack \\frac{x^{2}}{2} + 2x - \\frac{x^{3}}{3} \\rbrack _{−1}^{2} = (\\frac{4}{2} + 4 - \\frac{8}{3}) - (\\frac{1}{2} - 2 + \\frac{1}{3}) = (2 + 4 - \\frac{8}{3}) - (\\frac{1}{2} - 2 + \\frac{1}{3})
$$

简化：

$$
= (6 - \\frac{8}{3}) - (\\frac{1}{2} - 2 + \\frac{1}{3}) = \\frac{10}{3} - (−\\frac{7}{6}) = \\frac{10}{3} + \\frac{7}{6} = \\frac{20}{6} + \\frac{7}{6} = \\frac{27}{6} = \\frac{9}{2}
$$

因此，所求面积为$\\frac{9}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:07:28', 9, 'Mogullzr', '2026-01-29 14:07:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '386');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '386');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '386');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (387, '1990年考研数学卷4第4题', '简单', '考研数学1990年卷4真题', '若线性方程组$\\begin{cases} x_{1} + x_{2} = −a_{1} \\\\ x_{2} + x_{3} = a_{2} \\\\ x_{3} + x_{4} = −a_{3} \\\\ x_{4} + x_{1} = a_{4} \\end{cases}$有解，则常数$a_{1}$,$a_{2}$,$a_{3}$,$a_{4}$应满足条件______.', '[]', '$a_{1} + a_{2} + a_{3} + a_{4} = 0$
', '将方程组的增广矩阵进行行变换：

$$
\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & −a_{1} \\\\
0 & 1 & 1 & 0 & a_{2} \\\\
0 & 0 & 1 & 1 & −a_{3} \\\\
1 & 0 & 0 & 1 & a_{4} \\\\
\\end{array} \\right)
$$

第一行乘以 -1 加到第四行：

$$
\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & −a_{1} \\\\
0 & 1 & 1 & 0 & a_{2} \\\\
0 & 0 & 1 & 1 & −a_{3} \\\\
0 & −1 & 0 & 1 & a_{1} + a_{4} \\\\
\\end{array} \\right)
$$

第二行加到第四行：

$$
\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & −a_{1} \\\\
0 & 1 & 1 & 0 & a_{2} \\\\
0 & 0 & 1 & 1 & −a_{3} \\\\
0 & 0 & 1 & 1 & a_{1} + a_{2} + a_{4} \\\\
\\end{array} \\right)
$$

第三行乘以 -1 加到第四行：

$$
\\left( \\begin{array}{ccccc}
1 & 1 & 0 & 0 & −a_{1} \\\\
0 & 1 & 1 & 0 & a_{2} \\\\
0 & 0 & 1 & 1 & −a_{3} \\\\
0 & 0 & 0 & 0 & a_{1} + a_{2} + a_{3} + a_{4} \\\\
\\end{array} \\right)
$$

方程组有解当且仅当增广矩阵的秩等于系数矩阵的秩。系数矩阵的秩为 3，因此增广矩阵的最后一行为零行，即$a_{1} + a_{2} + a_{3} + a_{4} = 0$。
', 9, 'Mogullzr', '2026-01-29 14:07:29', 9, 'Mogullzr', '2026-01-29 14:07:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '387');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '387');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (388, '1990年考研数学卷4第5题', '简单', '考研数学1990年卷4真题', '一射手对同一目标独立地进行四次射击，若至少命中一次的概率为$\\frac{80}{81}$,
则该射手的命中率为______.', '[]', '$\\frac{2}{3}$
', '设命中率为$p$，则每次射击不命中的概率为$1 - p$。四次独立射击全部不命中的概率为$(1 - p)4$。至少命中一次的概率为$1 - (1 - p)4 = \\frac{80}{81}$。
解方程：


$$
\\begin{array}{cc}
1 - (1 - p)4 & = \\frac{80}{81} \\\\
(1 - p)4 & = 1 - \\frac{80}{81} = \\frac{1}{81} \\\\
1 - p & = \\sqrt{\\frac{1}{81}} = \\frac{1}{3} \\\\
\\end{array}
$$

因此，该射手的命中率为$\\frac{2}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:07:29', 9, 'Mogullzr', '2026-01-29 14:07:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '388');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '388');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (389, '1990年考研数学卷4第6题', '简单', '考研数学1990年卷4真题', '设函数$f(x) = x ⋅ \\tan x ⋅ e^{\\sin x}$，则$f(x)$是', '[''偶函数．'', ''无界函数．'', ''周期函数．'', ''单调函数．'']', "['B']", '函数$f(x) = x ⋅ \\tan x ⋅ e^{\\sin x}$的性质如下：非偶函数
$f(−x) = (−x) ⋅ \\tan(−x) ⋅ e^{\\sin(−x)} = x ⋅ \\tan x ⋅ e^{− \\sin x} \\neq f(x)$，除非$\\sin x = 0$，但不恒成立。非周期函数
$x$线性增长，而$\\tan x$和$\\sin x$的周期性被$x$破坏，不存在$T > 0$使得$f(x + T) = f(x)$对所有$x$成立。非单调函数
函数值振荡：在$x = kπ$时$f(x) = 0$，而在$x_{n} = \\frac{π}{2} + nπ - \\frac{1}{n}$时$f(x_{n}) ≈ cn^{2}$（$c$为常数），当$n → ∞$时$f(x_{n}) → ∞$，因此函数值从零到无穷大变化，不单调。无界函数
存在序列$x_{n}$使得$f(x_{n}) → ∞$，例如取$x_{n} = \\frac{π}{2} + nπ - \\frac{1}{n}$，则$\\tan x_{n} ≈ n$，$x_{n} ≈ nπ$，$e^{\\sin x_{n}}$有界，故$f(x_{n}) ≈ cn^{2} → ∞$，因此函数无界。', 9, 'Mogullzr', '2026-01-29 14:07:29', 9, 'Mogullzr', '2026-01-29 14:07:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '389');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '389');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (390, '1990年考研数学卷4第7题', '简单', '考研数学1990年卷4真题', '设函数$f(x)$对任意$x$均满足等式$f(1 + x) = af(x)$，且有$f^{′}(0) = b$,
其中$a$,$b$为非零常数，则', '[''$f(x)$在$x = 1$处不可导．'', ''$f(x)$在$x = 1$处可导，且$f^{′}(1) = a$．'', ''$f(x)$在$x = 1$处可导，且$f^{′}(1) = b$．'', ''$f(x)$在$x = 1$处可导，且$f^{′}(1) = ab$．'']', "['D']", '给定函数等式$f(1 + x) = af(x)$对任意$x$成立，且$f^{′}(0) = b$。需要求$f(x)$在$x = 1$处的导数。
利用导数定义：

$$
f^{′}(1) = \\lim_{h→0} \\frac{f(1 + h) - f(1)}{h}
$$
由函数等式，令$x = h$，有$f(1 + h) = af(h)$。又令$x = 0$，有$f(1) = af(0)$。代入得：

$$
f^{′}(1) = \\lim_{h→0} \\frac{af(h) - af(0)}{h} = a \\lim_{h→0} \\frac{f(h) - f(0)}{h} = af^{′}(0) = ab
$$
因此，$f(x)$在$x = 1$处可导，且$f^{′}(1) = ab$。选项 D 正确。', 9, 'Mogullzr', '2026-01-29 14:07:29', 9, 'Mogullzr', '2026-01-29 14:07:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '390');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '390');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (391, '1990年考研数学卷4第8题', '简单', '考研数学1990年卷4真题', '向量组$α_{1}, α_{2}, ⋯  , α_{s}$线性无关的充分条件是', '[''$α_{1}, α_{2}, ⋯  , α_{s}$均不为零向量．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$中任意两个向量的分量不成比例．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$中任意一个向量均不能由其余$s - 1$个向量线性表示．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$中有一部分向量线性无关．'']', "['C']", '
向量组线性无关的充分必要条件是其中任意一个向量都不能由其余向量线性表示，因此选项C是充分条件。A不是充分条件：所有向量非零时仍可能线性相关，例如二维空间中两个非零但成比例的向量。B不是充分条件：任意两个向量不成比例时整体仍可能线性相关，例如三维空间中三个向量，其中两个不平行但第三个是前两个的线性组合。D不是充分条件：部分向量线性无关不能保证整体线性无关，例如二维空间中两个向量，其中一个非零（线性无关），但两个向量成比例时整体线性相关。', 9, 'Mogullzr', '2026-01-29 14:07:29', 9, 'Mogullzr', '2026-01-29 14:07:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '391');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '391');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (392, '1990年考研数学卷4第9题', '简单', '考研数学1990年卷4真题', '设$A, B$为两随机事件，且$B ⊂ A$，则下列式子正确的是', '[''$P(A + B) = P(A)$．'', ''$P(AB) = P(A)$．'', ''$P(B∣A) = P(B)$．'', ''$P(B - A) = P(B) - P(A)$．'']', "['A']", '
由于$B ⊂ A$，有$A ∪ B = A$，因此

$$
P(A ∪ B) = P(A),
$$
即$P(A + B) = P(A)$。选项 B：$P(AB) = P(A ∩ B) = P(B)$，一般不等于$P(A)$；选项 C：$P(B ∣ A) = \\frac{P(B ∩ A)}{P(A)} = \\frac{P(B)}{P(A)}$，一般不等于$P(B)$；选项 D：$P(B - A) = P(∅) = 0$，而$P(B) - P(A)$可能小于 0，故不正确。', 9, 'Mogullzr', '2026-01-29 14:07:29', 9, 'Mogullzr', '2026-01-29 14:07:29', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '392');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '392');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (393, '1990年考研数学卷4第10题', '简单', '考研数学1990年卷4真题', '设随机变量$X$和$Y$相互独立，其概率分布为
$$
\\begin{array}{c|cc|}
m & −1 & 1 \\\\
P\\{X = m\\} & 1/2 & 1/2 \\\\
\\end{array} \\begin{array}{c|cc|}
m & −1 & 1 \\\\
P\\{Y = m\\} & 1/2 & 1/2 \\\\
\\end{array}
$$
则下列式子正确的是', '[''$X = Y$．'', ''$P\\\\{X = Y\\\\} = 0$．'', ''$P\\\\{X = Y\\\\} = \\\\frac{1}{2}$．'', ''$P\\\\{X = Y\\\\} = 1$．'']', "['C']", '
由于$X$与$Y$相互独立，

$$
\\begin{array}{cc}
P\\{X = Y\\} & = P\\{X = −1, Y = −1\\} + P\\{X = 1, Y = 1\\} \\\\
 & = P\\{X = −1\\}P\\{Y = −1\\} + P\\{X = 1\\}P\\{Y = 1\\} \\\\
 & = \\frac{1}{2} × \\frac{1}{2} + \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4} + \\frac{1}{4} = \\frac{1}{2}. \\\\
\\end{array}
$$
因此选项C正确。选项A错误：$X$与$Y$不一定相等。选项B错误：概率不为 0。选项D错误：概率不为 1。', 9, 'Mogullzr', '2026-01-29 14:07:30', 9, 'Mogullzr', '2026-01-29 14:07:30', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '393');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '393');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '393');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (394, '1990年考研数学卷4第11题', '简单', '考研数学1990年卷4真题', '求函数$I(x) = \\int_{e}^{x} \\frac{\\ln t}{t^{2}-2t+1}dt$在区间$\\lbrack e, e^{2} \\rbrack$上的最大值．', '[]', '

$$
\\max_{x∈ \\lbrack e,e^{2} \\rbrack } I(x) = \\ln(e + 1) - \\frac{e}{e + 1}
$$

', '
在$x ∈  \\lbrack e, e^{2} \\rbrack$上，$I^{′}(x) = \\frac{\\ln x}{x^{2}-2x+1} = \\frac{\\ln x}{(x-1)2} > 0$，因此函数$I(x)$在$\\lbrack e, e^{2} \\rbrack$上单调增加，最大值为$I(e^{2})$。

$$
\\begin{array}{cc}
I(e^{2}) & = \\int_{e}^{e^{2}} \\frac{\\ln t}{(t - 1)2} dt = − \\int_{e}^{e^{2}} \\ln t d (\\frac{1}{t - 1}) \\\\
 & =  \\lbrack −\\frac{\\ln t}{t - 1} \\rbrack _{e}^{e^{2}} + \\int_{e}^{e^{2}} \\frac{dt}{t(t - 1)} \\\\
 & = −\\frac{2}{e^{2} - 1} + \\frac{1}{e - 1} + \\int_{e}^{e^{2}} (\\frac{1}{t - 1} - \\frac{1}{t})  dt \\\\
 & = −\\frac{e}{e + 1} + \\ln(e + 1). \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:07:30', 9, 'Mogullzr', '2026-01-29 14:07:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '394');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '394');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '394');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (395, '1990年考研数学卷4第12题', '简单', '考研数学1990年卷4真题', '计算二重积分$\\iint_{D} xe^{−y^{2}}dxdy$，其中$D$是曲线$y = 4x^{2}$和$y = 9x^{2}$在第一象限所围成的区域．', '[]', '$\\frac{5}{144}$
', '积分区域$D$由曲线$y = 4x^{2}$和$y = 9x^{2}$在第一象限围成。以$y$为自变量，对于固定的$y$，$x$的范围从$\\frac{\\sqrt{y}}{3}$到$\\frac{\\sqrt{y}}{2}$，$y$的范围从$0$到$∞$。因此，二重积分可写为：

$$
\\iint_{D} xe^{−y^{2}} dx dy = \\int_{0}^{∞} \\int_{\\frac{\\sqrt{y}}{3}}^{\\frac{\\sqrt{y}}{2}} xe^{−y^{2}} dx dy.
$$

先计算内层积分：

$$
\\int_{\\frac{\\sqrt{y}}{3}}^{\\frac{\\sqrt{y}}{2}} x dx =  \\lbrack \\frac{1}{2}x^{2} \\rbrack _{\\frac{\\sqrt{y}}{3}}^{\\frac{\\sqrt{y}}{2}} = \\frac{1}{2} ((\\frac{\\sqrt{y}}{2})^{2} - (\\frac{\\sqrt{y}}{3})^{2}) = \\frac{1}{2} (\\frac{y}{4} - \\frac{y}{9}) = \\frac{1}{2} ⋅ \\frac{5y}{36} = \\frac{5y}{72}.
$$

代入外层积分：

$$
\\int_{0}^{∞} e^{−y^{2}} ⋅ \\frac{5y}{72} dy = \\frac{5}{72} \\int_{0}^{∞} ye^{−y^{2}} dy.
$$

计算积分$\\int_{0}^{∞} ye^{−y^{2}} dy$，令$u = y^{2}$，则$du = 2y dy$，即$y dy = \\frac{du}{2}$，积分限变为$u$从$0$到$∞$：

$$
\\int_{0}^{∞} ye^{−y^{2}} dy = \\int_{0}^{∞} e^{−u} ⋅ \\frac{du}{2} = \\frac{1}{2} \\int_{0}^{∞} e^{−u} du = \\frac{1}{2}  \\lbrack −e^{−u} \\rbrack _{0}^{∞} = \\frac{1}{2}(0 - (−1)) = \\frac{1}{2}.
$$

因此，原积分为：

$$
\\frac{5}{72} × \\frac{1}{2} = \\frac{5}{144}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:30', 9, 'Mogullzr', '2026-01-29 14:07:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '395');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '395');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '395');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (396, '1990年考研数学卷4第13题', '简单', '考研数学1990年卷4真题', '求级数$\\sum_{n=1}^{∞} \\frac{(x-3)n}{n^{2}}$的收敛域．', '[]', '
收敛域为$\\lbrack 2, 4 \\rbrack$。
', '
考虑幂级数$\\sum_{n=1}^{∞} \\frac{(x-3)n}{n^{2}}$，其中心在$x = 3$。使用比值测试求收敛半径：
设$a_{n} = \\frac{1}{n^{2}}$，则


$$
\\lim_{n→∞} ​\\frac{a_{n+1}}{a_{n}}​ = \\lim_{n→∞} \\frac{\\frac{1}{(n+1)2}}{\\frac{1}{n^{2}}} = \\lim_{n→∞} \\frac{n^{2}}{(n + 1)2} = 1,
$$

因此收敛半径$R = 1$。级数在$∣x - 3∣ < 1$时绝对收敛，在$∣x - 3∣ > 1$时发散。
检查端点：
当$x = 4$时，级数为$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$，是$p = 2 > 1$的$p$-级数，收敛；
当$x = 2$时，级数为$\\sum_{n=1}^{∞} \\frac{(−1)n}{n^{2}}$，绝对收敛。
故收敛域为$∣x - 3∣ ≤ 1$，即$\\lbrack 2, 4 \\rbrack$。
', 9, 'Mogullzr', '2026-01-29 14:07:30', 9, 'Mogullzr', '2026-01-29 14:07:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '396');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '396');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '396');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (397, '1990年考研数学卷4第14题', '简单', '考研数学1990年卷4真题', '求微分方程$y^{′} + y \\cos x = (\\ln x)e^{− \\sin x}$的通解．', '[]', '
$y = e^{− \\sin x}(x \\ln x - x + C)$，其中$C$为任意常数。
', '
给定微分方程$y^{′} + y \\cos x = (\\ln x)e^{− \\sin x}$，这是一阶线性微分方程。
标准形式为$y^{′} + P(x)y = Q(x)$，其中$P(x) = \\cos x$，$Q(x) = (\\ln x)e^{− \\sin x}$。
积分因子为$e^{∫ P(x) dx} = e^{\\sin x}$。
通解公式为$y = e^{− ∫ P(x) dx} (∫ Q(x)e^{∫ P(x) dx} dx + C)$。
代入得：


$$
y = e^{− \\sin x} (∫(\\ln x)e^{− \\sin x}e^{\\sin x} dx + C) = e^{− \\sin x} (∫ \\ln x dx + C)
$$

计算积分$∫ \\ln x dx = x \\ln x - x$。
因此，通解为$y = e^{− \\sin x}(x \\ln x - x + C)$。
验证：令$y = e^{− \\sin x}(x \\ln x - x + C)$，计算$y^{′}$并代入原方程，满足等式。
', 9, 'Mogullzr', '2026-01-29 14:07:30', 9, 'Mogullzr', '2026-01-29 14:07:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '397');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '397');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '397');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (398, '1990年考研数学卷4第15题', '简单', '考研数学1990年卷4真题', '某公司可通过电台及报纸两种形式做销售某种商品的广告，根据统计资料，
销售收入$R$(万元)与电台广告费用$x_{1}$(万元)及报纸广告费用$x_{2}$(万元)之间的关系有如下经验公式:
$$
R = 15 + 14x_{1} + 32x_{2} - 8x_{1}x_{2} - 2x_{1}^{2} - 10x_{2}^{2}.
$$
(1) 在广告费用不限的情况下，求最优广告策略；(2) 若提供的广告费用为$1.5$万元，求相应的最优广告策略．', '[]', '
(1) 最优广告策略为电台广告费用$x_{1} = 0.75$万元，报纸广告费用$x_{2} = 1.25$万元。
(2) 最优广告策略为电台广告费用$x_{1} = 0$万元，报纸广告费用$x_{2} = 1.5$万元。
', '
(1) 利润为销售收入减去成本，所以利润函数为


$$
π = 15 + 14x_{1} + 32x_{2} - 8x_{1}x_{2} - 2x_{1}^{2} - 10x_{2}^{2} - (x_{1} + x_{2})
$$



$$
= 15 + 13x_{1} + 31x_{2} - 8x_{1}x_{2} - 2x_{1}^{2} - 10x_{2}^{2}.
$$

由多元函数极值点的必要条件，有


$$
\\begin{cases} \\frac{∂π}{∂x_{1}} = −4x_{1} - 8x_{2} + 13 = 0 \\\\ \\frac{∂π}{∂x_{2}} = −8x_{1} - 20x_{2} + 31 = 0 \\end{cases}
$$

解得$x_{1} = 0.75, x_{2} = 1.25$。因驻点惟一，且实际问题必有最大值，故投入电台广告费用 0.75 万元，报纸广告费用 1.25 万元可获最大利润。
(2) 若广告费用为1.5万元，则应当求利润函数在$x_{1} + x_{2} = 1.5$时的条件最大值。拉格朗日函数

$$
L(x_{1}, x_{2}, λ) = 15 + 13x_{1} + 31x_{2} - 8x_{1}x_{2} - 2x_{1}^{2} - 10x_{2}^{2} + λ(x_{1} + x_{2} - 1.5).
$$

对它求各个偏导数得到方程组

$$
\\begin{cases} \\frac{∂L}{∂x_{1}} = −4x_{1} - 8x_{2} + 13 + λ = 0 \\\\ \\frac{∂L}{∂x_{2}} = −8x_{1} - 20x_{2} + 31 + λ = 0 \\\\ \\frac{∂L}{∂λ} = x_{1} + x_{2} - 1.5 = 0 \\end{cases}
$$

解得$x_{1} = 0, x_{2} = 1.5$。因驻点惟一，且实际问题必有最大值，故应将广告费1.5万元全部用于报纸广告，可便利润最大。
', 9, 'Mogullzr', '2026-01-29 14:07:31', 9, 'Mogullzr', '2026-01-29 14:07:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '398');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '398');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '398');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (399, '1990年考研数学卷4第16题', '简单', '考研数学1990年卷4真题', '设$f(x)$在闭区间$\\lbrack 0, c \\rbrack$上连续，其导数$f^{′}(x)$在开区间$(0, c)$内存在且单调减少；$f(0) = 0$，
试应用拉格朗日中值定理证明不等式：$f(a + b) ≤ f(a) + f(b)$，其中常数$ab$满足条件$0 ≤ a ≤ b ≤ a + b ≤ c$．', '[]', '见解析
', '
方法1：由拉格朗日中值定理

$$
f(a + b) - f(a) - f(b) =  \\lbrack f(a + b) - f(b) \\rbrack  -  \\lbrack f(a) - f(0) \\rbrack
$$



$$
= f^{′}(ξ_{2})a - f^{′}(ξ_{1})a = a \\lbrack f^{′}(ξ_{2}) - f^{′}(ξ_{1}) \\rbrack ,
$$

其中$0 < ξ_{1} < a ≤ b < ξ_{2} < a + b$。又$f^{′}(x)$单调减少，故$f^{′}(ξ_{2}) ≤ f^{′}(ξ_{1})$。从而有

$$
f(a + b) - f(a) - f(b) ≤ 0,  即 f(a + b) ≤ f(a) + f(b).
$$

方法2：构造辅助函数

$$
F(x) = f(x) + f(a) - f(a + x), x ∈  \\lbrack 0, b \\rbrack ,
$$

则$F(0) = 0$。又因为

$$
F^{′}(x) = f^{′}(x) - f^{′}(a + x)
$$

且$a ≥ 0$，$f^{′}(x)$在$(0, b)$单调减少，所以$F^{′}(x) ≥ 0$，于是$F(x)$在$\\lbrack 0, b \\rbrack$上单调递增，故$F(b) ≥ F(0) = 0$，即$f(a + b) ≤ f(a) + f(b)$，其中$0 ≤ a ≤ b ≤ a + b ≤ c$.
', 9, 'Mogullzr', '2026-01-29 14:07:31', 9, 'Mogullzr', '2026-01-29 14:07:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '399');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '399');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '399');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (400, '1990年考研数学卷4第17题', '简单', '考研数学1990年卷4真题', '已知线性方程组$\\begin{cases} x_{1} + x_{2} + x_{3} + x_{4} + x_{5} = a \\\\ 3x_{1} + 2x_{2} + x_{3} + x_{4} - 3x_{5} = 0 \\\\ x_{2} + 2x_{3} + 2x_{4} + 6x_{5} = b \\\\ 5x_{1} + 4x_{2} + 3x_{3} + 3x_{4} - x_{5} = 2 \\end{cases}$(1)$a$,$b$为何值时，方程组有解？(2) 方程组有解时，求出方程组的导出组的一个基础解系；(3) 方程组有解时，求出方程组的全部解．', '[]', '
(1) 当$a = 1$，$b = 3$时，方程组有解。
(2) 导出组的一个基础解系为：


$$
ξ_{1} = \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  ξ_{3} = \\left( \\begin{array}{c}
5 \\\\
−6 \\\\
0 \\\\
0 \\\\
\\end{array} \\right)
$$

(3) 方程组的全部解为：


$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−2 \\\\
3 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + c_{1} \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + c_{2} \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) + c_{3} \\left( \\begin{array}{c}
5 \\\\
−6 \\\\
0 \\\\
0 \\\\
\\end{array} \\right)
$$

其中$c_{1}, c_{2}, c_{3}$为任意常数。
', '
首先，将方程组的增广矩阵进行行化简：


$$
\\left( \\begin{array}{cccccc}
1 & 1 & 1 & 1 & 1 & a \\\\
3 & 2 & 1 & 1 & −3 & 0 \\\\
0 & 1 & 2 & 2 & 6 & b \\\\
5 & 4 & 3 & 3 & −1 & 2 \\\\
\\end{array} \\right)
$$

通过行操作，第一行不变，第二行减去第一行的 3 倍，第四行减去第一行的 5 倍，得到：


$$
\\left( \\begin{array}{cccccc}
1 & 1 & 1 & 1 & 1 & a \\\\
0 & −1 & −2 & −2 & −6 & −3a \\\\
0 & 1 & 2 & 2 & 6 & b \\\\
0 & −1 & −2 & −2 & −6 & 2 - 5a \\\\
\\end{array} \\right)
$$

将第二行和第四行乘以 -1，得到：


$$
\\left( \\begin{array}{cccccc}
1 & 1 & 1 & 1 & 1 & a \\\\
0 & 1 & 2 & 2 & 6 & 3a \\\\
0 & 1 & 2 & 2 & 6 & b \\\\
0 & 1 & 2 & 2 & 6 & 5a - 2 \\\\
\\end{array} \\right)
$$

第二、三、四行的左侧部分相同，因此方程组有解的条件是这些行的常数项相等，即$3a = b$和$3a = 5a - 2$。解之得$a = 1$，$b = 3$。
当$a = 1$，$b = 3$时，增广矩阵化简为：


$$
\\left( \\begin{array}{cccccc}
1 & 1 & 1 & 1 & 1 & 1 \\\\
0 & 1 & 2 & 2 & 6 & 3 \\\\
0 & 0 & 0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

对应方程组为：


$$
\\begin{cases} x_{1} + x_{2} + x_{3} + x_{4} + x_{5} = 1 \\\\ x_{2} + 2x_{3} + 2x_{4} + 6x_{5} = 3 \\end{cases}
$$

导出组（齐次方程组）为：


$$
\\begin{cases} x_{1} + x_{2} + x_{3} + x_{4} + x_{5} = 0 \\\\ x_{2} + 2x_{3} + 2x_{4} + 6x_{5} = 0 \\end{cases}
$$

解导出组，令$x_{3}, x_{4}, x_{5}$为自由变量，解得：


$$
x_{1} = x_{3} + x_{4} + 5x_{5},  x_{2} = −2x_{3} - 2x_{4} - 6x_{5}
$$

基础解系由三个线性无关的解向量组成：


$$
ξ_{1} = \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) ,  ξ_{2} = \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  ξ_{3} = \\left( \\begin{array}{c}
5 \\\\
−6 \\\\
0 \\\\
0 \\\\
\\end{array} \\right)
$$

对于非齐次方程组，求一个特解。令$x_{3} = 0, x_{4} = 0, x_{5} = 0$，代入得$x_{2} = 3$，$x_{1} = −2$，特解为：


$$
η = \\left( \\begin{array}{c}
−2 \\\\
3 \\\\
0 \\\\
0 \\\\
\\end{array} \\right)
$$

全部解为特解加上导出组基础解系的线性组合。
', 9, 'Mogullzr', '2026-01-29 14:07:31', 9, 'Mogullzr', '2026-01-29 14:07:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '400');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '400');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (401, '1990年考研数学卷4第18题', '简单', '考研数学1990年卷4真题', '已知对于$n$阶方阵$A$，存在自然数$k$，使得$A^{k} = 0$，试证明矩阵$E - A$可逆，
并写出其逆矩阵的表达式($E$为$n$阶单位阵).', '[]', '
逆矩阵为$E + A + A^{2} + ⋯ + A^{k-1}$.
', '
由于$A^{k} = 0$，考虑矩阵$B = E + A + A^{2} + ⋯ + A^{k-1}$。计算$(E - A)B$：

$$
(E - A)(E + A + A^{2} + ⋯ + A^{k-1}) = E(E + A + A^{2} + ⋯ + A^{k-1}) - A(E + A + A^{2} + ⋯ + A^{k-1}) = E + A + A^{2} + ⋯ + A^{k-1} - A - A^{2} - ⋯ - A^{k-1} - A^{k}.
$$

由于$A^{k} = 0$，上式简化为$E$。同理，可以验证$B(E - A) = E$。因此，$E - A$可逆，且其逆矩阵为$B = E + A + A^{2} + ⋯ + A^{k-1}$.
', 9, 'Mogullzr', '2026-01-29 14:07:31', 9, 'Mogullzr', '2026-01-29 14:07:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '401');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '401');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '401');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (402, '1990年考研数学卷4第19题', '简单', '考研数学1990年卷4真题', '设$A$是$n$阶矩阵，$λ_{1}$和$λ_{2}$是$A$的两个不同的特征值，$x_{1}, x_{2}$是分别属于$λ_{1}$和$λ_{2}$的特征向量．
试证明$x_{1} + x_{2}$不是$A$的特征向量．', '[]', '
$x_{1} + x_{2}$不是$A$的特征向量。
', '
假设$x_{1} + x_{2}$是$A$的特征向量，则存在特征值$λ$，使得


$$
A(x_{1} + x_{2}) = λ(x_{1} + x_{2}).
$$

由于$x_{1}$、$x_{2}$分别是属于$λ_{1}$、$λ_{2}$的特征向量，有


$$
Ax_{1} = λ_{1}x_{1},  Ax_{2} = λ_{2}x_{2}.
$$

于是


$$
A(x_{1} + x_{2}) = Ax_{1} + Ax_{2} = λ_{1}x_{1} + λ_{2}x_{2}.
$$

结合假设得


$$
λ_{1}x_{1} + λ_{2}x_{2} = λ(x_{1} + x_{2}),
$$

整理为


$$
(λ_{1} - λ)x_{1} + (λ_{2} - λ)x_{2} = 0.
$$

由于$λ_{1} \\neq λ_{2}$，对应于不同特征值的特征向量$x_{1}, x_{2}$线性无关。
因此线性组合为零当且仅当系数全为零，即


$$
λ_{1} - λ = 0,  λ_{2} - λ = 0,
$$

于是$λ_{1} = λ$且$λ_{2} = λ$，与$λ_{1} \\neq λ_{2}$矛盾。
故假设不成立，$x_{1} + x_{2}$不是$A$的特征向量。
', 9, 'Mogullzr', '2026-01-29 14:07:31', 9, 'Mogullzr', '2026-01-29 14:07:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '402');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '402');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (403, '1990年考研数学卷4第20题', '简单', '考研数学1990年卷4真题', '从$0, 1, 2, ⋯  , 9$十个数字中任意选出三个不同数字，试求下列事件的概率：$A_{1} =${三个数字中不含$0$和$5$}；$A_{2} =${三个数字中不含$0$或$5$}.', '[]', '
$P(A_{1}) = \\frac{7}{15}$，$P(A_{2}) = \\frac{14}{15}$
', '
从数字 0 到 9 中任选三个不同的数字，共有


$$
C(10, 3) = 120种可能。
$$


$$
C(8, 3) = 56种,  P(A_{1}) = \\frac{56}{120} = \\frac{7}{15}.
$$

另一种方法：
设$B$为“不含 0”，$C$为“不含 5”，则$A_{2} = B ∪ C$。


$$
P(B) = \\frac{C(9, 3)}{120} = \\frac{84}{120},  P(C) = \\frac{84}{120},  P(B ∩ C) = P(A_{1}) = \\frac{56}{120}.
$$

由容斥原理得


$$
P(B ∪ C) = \\frac{84}{120} + \\frac{84}{120} - \\frac{56}{120} = \\frac{112}{120} = \\frac{14}{15}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:32', 9, 'Mogullzr', '2026-01-29 14:07:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '403');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '403');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (404, '1990年考研数学卷4第21题', '简单', '考研数学1990年卷4真题', '一电子仪器由两个部件构成，以$X$和$Y$分别表示两个部件的寿命（单位：千小时），
已知$X$和$Y$的联合分布函数为：
$$
F(x, y) = \\begin{cases} 1 - e^{−0.5x} - e^{−0.5y} + e^{−0.5(x+y)} & x ≥ 0, y ≥ 0 \\\\ 0 & 其他. \\end{cases}
$$
(1) 问$X$和$Y$是否独立？(2) 求两个部件的寿命都超过100小时的概率$α$．', '[]', '
(1) 是独立的。
(2)$α = e^{−0.1}$
', '
(Ⅰ)$X$和$Y$的边缘分布函数分别为

$$
F_{X}(x) = F(x, +∞) = \\lim_{y→+∞} F(x, y) = \\begin{cases} 1 - e^{−0.5x} & x ≥ 0 \\\\ 0 & x < 0; \\end{cases}
$$


$$
F_{Y}(y) = F(+∞, y) = \\lim_{x→+∞} F(x, y) = \\begin{cases} 1 - e^{−0.5y} & y ≥ 0 \\\\ 0 & y < 0. \\end{cases}
$$

由于对任意实数$x, y$都满足$F(x, y) = F_{X}(x)F_{Y}(y)$。因此$X$和$Y$相互独立。
(Ⅱ) 因为$X$和$Y$相互独立，所以有

$$
α = P\\{X > 0.1, Y > 0.1\\} = P\\{X > 0.1\\} ⋅ P\\{Y > 0.1\\}
$$


$$
=  \\lbrack 1 - F_{X}(0.1) \\rbrack  \\lbrack 1 - F_{Y}(0.1) \\rbrack  = e^{−0.05} ⋅ e^{−0.05} = e^{−0.1}.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:32', 9, 'Mogullzr', '2026-01-29 14:07:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '404');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '404');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '404');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (405, '1990年考研数学卷4第22题', '简单', '考研数学1990年卷4真题', '某地抽样调查结果表明，考生的外语成绩(百分制)近似服从正态分布，平均成绩为72分，96分以上的占考生总数的2.3
试求考生的外语成绩在60分至84分之间的概率．【附表】（表中$Φ(x)$是标准正态分布函数）
$$
\\begin{array}{c|ccccccc|}
x & 0 & 0.5 & 1.0 & 1.5 & 2.0 & 2.5 & 3.0 \\\\
Φ(x) & 0.500 & 0.692 & 0.841 & 0.933 & 0.977 & 0.994 & 0.999 \\\\
\\end{array}
$$
', '[]', '0.682
', '
设$X$为考生的外语成绩，依题意有$X ∼ N(μ, σ^{2})$，且$μ = 72$，但$σ^{2}$未知。所以可标准化得


$$
\\frac{X - 72}{σ} ∼ N(0, 1).
$$

由标准正态分布函数概率的计算公式，有


$$
P\\{X > 96\\} = 1 - P\\{X ≤ 96\\} = 1 - Φ (\\frac{96 - 72}{σ}) = 1 - Φ (\\frac{24}{σ}) = 0.023,
$$

即$Φ (\\frac{24}{σ}) = 1 - 0.023 = 0.977$。 查表可得$\\frac{24}{σ} = 2$，即$σ = 12$，从而$X ∼ N(72, 12^{2})$

$$
P\\{60 ≤ X ≤ 84\\} = P \\{​\\frac{X - 72}{12}​ ≤ 1\\} = 2Φ(1) - 1 = 0.682.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:32', 9, 'Mogullzr', '2026-01-29 14:07:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '405');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '405');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (406, '1990年考研数学卷5第1题', '', '考研数学1990年卷5真题', '/problems/other/384', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (407, '1990年考研数学卷5第2题', '', '考研数学1990年卷5真题', '/problems/other/385', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (408, '1990年考研数学卷5第3题', '', '考研数学1990年卷5真题', '/problems/other/386', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (409, '1990年考研数学卷5第4题', '', '考研数学1990年卷5真题', '/problems/other/387', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (410, '1990年考研数学卷5第5题', '简单', '考研数学1990年卷5真题', '已知随机变量$X ∼ N(−3, 1)$，$Y ∼ N(2, 1)$，且$X$,$Y$相互独立，
设随机变量$Z = X - 2Y + 7$，则$Z ∼$______.', '[]', '
$N(0, 5)$
', '
已知$X ∼ N(−3, 1)$和$Y ∼ N(2, 1)$，且$X$与$Y$相互独立。设$Z = X - 2Y + 7$。由于$X$和$Y$相互独立且服从正态分布，它们的线性组合$Z$也服从正态分布。
计算$Z$的均值：


$$
μ_{Z} = E \\lbrack Z \\rbrack  = E \\lbrack X - 2Y + 7 \\rbrack  = E \\lbrack X \\rbrack  - 2E \\lbrack Y \\rbrack  + 7 = (−3) - 2 × 2 + 7 = −3 - 4 + 7 = 0
$$

计算$Z$的方差：


$$
σ_{Z}^{2} = Var(Z) = Var(X - 2Y + 7) = Var(X) + (−2)2Var(Y) = 1 + 4 × 1 = 5
$$

因此，$Z ∼ N(0, 5)$。
', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '410');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '410');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (411, '1990年考研数学卷5第6题', '', '考研数学1990年卷5真题', '/problems/other/389', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (412, '1990年考研数学卷5第7题', '', '考研数学1990年卷5真题', '/problems/other/390', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (413, '1990年考研数学卷5第8题', '', '考研数学1990年卷5真题', '/problems/other/391', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (414, '1990年考研数学卷5第9题', '简单', '考研数学1990年卷5真题', '设$A$为$n$阶可逆矩阵，$A^{∗}$是$A$的伴随矩阵，则$∣A^{∗}∣ =$', '[''$∣A∣^{n-1}$．'', ''$∣A∣$．'', ''$∣A∣^{n}$．'', ''$∣A∣^{−1}$．'']', "['A']", '根据伴随矩阵的性质，有$AA^{∗} = A^{∗}A = ∣A∣I$，其中$I$是单位矩阵。两边取行列式，得$∣AA^{∗}∣ = ∣∣A∣I∣$。左边$∣AA^{∗}∣ = ∣A∣ ⋅ ∣A^{∗}∣$，右边$∣∣A∣I∣ = ∣A∣^{n}∣I∣ = ∣A∣^{n}$。因此，$∣A∣ ⋅ ∣A^{∗}∣ = ∣A∣^{n}$。由于$A$可逆，$∣A∣ \\neq 0$，两边除以$∣A∣$，得$∣A^{∗}∣ = ∣A∣^{n-1}$。故正确答案为 A。', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '414');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '414');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (415, '1990年考研数学卷5第10题', '简单', '考研数学1990年卷5真题', '已知随机变量$X$服从二项分布，且$EX = 2.4$，$DX = 1.44$，
则二项分布的参数$n$，$p$的值为', '[''$n = 4$，$p = 0.6$．'', ''$n = 6$，$p = 0.4$．'', ''$n = 8$，$p = 0.3$．'', ''$n = 24$，$p = 0.1$．'']', "['B']", '对于二项分布，期望$EX = np$，方差$DX = np(1 - p)$。已知$EX = 2.4$，$DX = 1.44$，代入公式得：
$np = 2.4$
$np(1 - p) = 1.44$
将第一式代入第二式：
$2.4(1 - p) = 1.44$
解得$1 - p = 1.44/2.4 = 0.6$，所以$p = 0.4$。
代入$np = 2.4$得$n = 2.4/0.4 = 6$。
因此，$n = 6$，$p = 0.4$，对应选项 B。验证方差：$DX = 6 × 0.4 × 0.6 = 1.44$，符合条件。其他选项均不满足方差值。', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '415');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '415');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (416, '1990年考研数学卷5第11题', '简单', '考研数学1990年卷5真题', '求极限$\\lim_{x→∞}  \\frac{1}{x} \\int_{0}^{x}(1 + t^{2})e^{t^{2}-x^{2}}dt$．', '[]', '$\\frac{1}{2}$
', '考虑极限$\\lim_{x→∞} \\frac{1}{x} \\int_{0}^{x}(1 + t^{2})e^{t^{2}-x^{2}} dt$。首先，将指数部分改写为$e^{t^{2}-x^{2}} = e^{t^{2}}e^{−x^{2}}$，于是积分变为：

$$
\\int_{0}^{x}(1 + t^{2})e^{t^{2}}e^{−x^{2}} dt = e^{−x^{2}} \\int_{0}^{x}(1 + t^{2})e^{t^{2}} dt.
$$

因此，原极限化为：

$$
\\lim_{x→∞} \\frac{1}{x}e^{−x^{2}} \\int_{0}^{x}(1 + t^{2})e^{t^{2}} dt.
$$

计算积分$\\int_{0}^{x}(1 + t^{2})e^{t^{2}} dt$。利用关系：

$$
\\frac{d}{dt} (te^{t^{2}}) = e^{t^{2}} + 2t^{2}e^{t^{2}} = e^{t^{2}}(1 + 2t^{2}),
$$

可得：

$$
∫(1 + 2t^{2})e^{t^{2}} dt = te^{t^{2}} + C.
$$

于是：

$$
∫(1 + t^{2})e^{t^{2}} dt = ∫  \\lbrack \\frac{1}{2}(1 + 2t^{2})e^{t^{2}} + \\frac{1}{2}e^{t^{2}} \\rbrack  dt = \\frac{1}{2}te^{t^{2}} + \\frac{1}{2} ∫ e^{t^{2}} dt + C.
$$

代入积分上下限：

$$
\\int_{0}^{x}(1 + t^{2})e^{t^{2}} dt =  \\lbrack \\frac{1}{2}te^{t^{2}} + \\frac{1}{2} ∫ e^{t^{2}} dt \\rbrack _{0}^{x} = \\frac{1}{2}xe^{x^{2}} + \\frac{1}{2} \\int_{0}^{x} e^{t^{2}} dt.
$$

代回原式：

$$
\\frac{1}{x}e^{−x^{2}} \\int_{0}^{x}(1 + t^{2})e^{t^{2}} dt = \\frac{1}{x}e^{−x^{2}} (\\frac{1}{2}xe^{x^{2}} + \\frac{1}{2} \\int_{0}^{x} e^{t^{2}} dt) = \\frac{1}{2} + \\frac{1}{2x}e^{−x^{2}} \\int_{0}^{x} e^{t^{2}} dt.
$$

因此，极限为：

$$
\\lim_{x→∞} (\\frac{1}{2} + \\frac{1}{2x}e^{−x^{2}} \\int_{0}^{x} e^{t^{2}} dt) = \\frac{1}{2} + \\frac{1}{2} \\lim_{x→∞} \\frac{1}{x}e^{−x^{2}} \\int_{0}^{x} e^{t^{2}} dt.
$$

考虑极限$\\lim_{x→∞} \\frac{1}{x}e^{−x^{2}} \\int_{0}^{x} e^{t^{2}} dt$。令$F(x) = \\int_{0}^{x} e^{t^{2}} dt$，则$F^{′}(x) = e^{x^{2}}$。该极限为$\\frac{∞}{∞}$型，应用洛必达法则：

$$
\\lim_{x→∞} \\frac{F(x)}{xe^{x^{2}}} = \\lim_{x→∞} \\frac{F^{′}(x)}{\\frac{d}{dx}(xe^{x^{2}})} = \\lim_{x→∞} \\frac{e^{x^{2}}}{e^{x^{2}} + 2x^{2}e^{x^{2}}} = \\lim_{x→∞} \\frac{1}{1 + 2x^{2}} = 0.
$$

故：

$$
\\lim_{x→∞} \\frac{1}{x}e^{−x^{2}} \\int_{0}^{x} e^{t^{2}} dt = 0.
$$

代入得原极限为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:07:34', 9, 'Mogullzr', '2026-01-29 14:07:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '416');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '416');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '416');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (417, '1990年考研数学卷5第12题', '简单', '考研数学1990年卷5真题', '求不定积分$∫ \\frac{x \\cos^{4} \\frac{x}{2}}{\\sin^{3} x}dx$．', '[]', '

$$
−\\frac{x}{8} csc^{2} \\frac{x}{2} - \\frac{1}{4} cot \\frac{x}{2} + C
$$

', '首先，利用三角恒等式简化被积函数。注意到$\\sin x = 2 \\sin \\frac{x}{2} \\cos \\frac{x}{2}$，因此$\\sin^{3} x = 8 \\sin^{3} \\frac{x}{2} \\cos^{3} \\frac{x}{2}$。代入原积分：

$$
∫ \\frac{x \\cos^{4} \\frac{x}{2}}{\\sin^{3} x} dx = ∫ x ⋅ \\frac{\\cos^{4} \\frac{x}{2}}{8 \\sin^{3} \\frac{x}{2} \\cos^{3} \\frac{x}{2}} dx = \\frac{1}{8} ∫ x ⋅ \\frac{\\cos \\frac{x}{2}}{\\sin^{3} \\frac{x}{2}} dx = \\frac{1}{8} ∫ x cot \\frac{x}{2} csc^{2} \\frac{x}{2} dx.
$$

令$u = \\frac{x}{2}$，则$du = \\frac{1}{2}dx$，即$dx = 2du$，且$x = 2u$。代入积分：

$$
\\frac{1}{8} ∫(2u) cot u csc^{2} u ⋅ (2 du) = \\frac{1}{8} ∫ 4u cot u csc^{2} u du = \\frac{1}{2} ∫ u cot u csc^{2} u du.
$$

现在计算$∫ u cot u csc^{2} u du$。注意到$cot u csc^{2} u du = −\\frac{1}{2}d(csc^{2} u)$，因此：

$$
∫ u cot u csc^{2} u du = −\\frac{1}{2} ∫ u d(csc^{2} u).
$$

使用分部积分法，令$v = u$，$dw = d(csc^{2} u)$，则：

$$
∫ u d(csc^{2} u) = u csc^{2} u - ∫ csc^{2} u du = u csc^{2} u + cot u + C.
$$

所以：

$$
∫ u cot u csc^{2} u du = −\\frac{1}{2}(u csc^{2} u + cot u) + C.
$$

代回原积分：

$$
\\frac{1}{2} ∫ u cot u csc^{2} u du = \\frac{1}{2} (−\\frac{1}{2}(u csc^{2} u + cot u)) + C = −\\frac{1}{4}(u csc^{2} u + cot u) + C.
$$

将$u = \\frac{x}{2}$代入：

$$
−\\frac{1}{4} (\\frac{x}{2} csc^{2} \\frac{x}{2} + cot \\frac{x}{2}) + C = −\\frac{x}{8} csc^{2} \\frac{x}{2} - \\frac{1}{4} cot \\frac{x}{2} + C.
$$

因此，原积分为：

$$
∫ \\frac{x \\cos^{4} \\frac{x}{2}}{\\sin^{3} x} dx = −\\frac{x}{8} csc^{2} \\frac{x}{2} - \\frac{1}{4} cot \\frac{x}{2} + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '417');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '417');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '417');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (418, '1990年考研数学卷5第13题', '简单', '考研数学1990年卷5真题', '设$x^{2} + z^{2} = yϕ (\\frac{z}{y})$，其中$ϕ$为可微函数，求$\\frac{∂z}{∂y}$．', '[]', '

$$
\\frac{∂z}{∂y} = \\frac{ϕ (\\frac{z}{y}) - \\frac{z}{y}ϕ^{′} (\\frac{z}{y})}{2z - ϕ^{′} (\\frac{z}{y})}
$$

', '给定方程$x^{2} + z^{2} = yϕ (\\frac{z}{y})$，其中$ϕ$为可微函数，且$z$是$x$和$y$的函数。定义函数$F(x, y, z) = x^{2} + z^{2} - yϕ (\\frac{z}{y}) = 0$。根据隐函数求导法则，有：

$$
\\frac{∂z}{∂y} = −\\frac{\\frac{∂F}{∂y}}{\\frac{∂F}{∂z}}.
$$

首先，计算$\\frac{∂F}{∂y}$，其中$x$和$z$视为常数：

$$
\\frac{∂F}{∂y} = \\frac{∂}{∂y}  \\lbrack x^{2} + z^{2} - yϕ (\\frac{z}{y}) \\rbrack  = 0 + 0 - \\frac{∂}{∂y}  \\lbrack yϕ (\\frac{z}{y}) \\rbrack  .
$$

使用乘积法则：

$$
\\frac{∂}{∂y}  \\lbrack yϕ (\\frac{z}{y}) \\rbrack  = ϕ (\\frac{z}{y}) + y ⋅ \\frac{∂}{∂y}  \\lbrack ϕ (\\frac{z}{y}) \\rbrack  .
$$

其中：

$$
\\frac{∂}{∂y}  \\lbrack ϕ (\\frac{z}{y}) \\rbrack  = ϕ^{′} (\\frac{z}{y}) ⋅ \\frac{∂}{∂y} (\\frac{z}{y}) = ϕ^{′} (\\frac{z}{y}) ⋅ (−\\frac{z}{y^{2}}) .
$$

所以：

$$
\\frac{∂}{∂y}  \\lbrack yϕ (\\frac{z}{y}) \\rbrack  = ϕ (\\frac{z}{y}) - \\frac{z}{y}ϕ^{′} (\\frac{z}{y}) .
$$

因此：

$$
\\frac{∂F}{∂y} = −  \\lbrack ϕ (\\frac{z}{y}) - \\frac{z}{y}ϕ^{′} (\\frac{z}{y}) \\rbrack  = −ϕ (\\frac{z}{y}) + \\frac{z}{y}ϕ^{′} (\\frac{z}{y}) .
$$

接下来，计算$\\frac{∂F}{∂z}$，其中$x$和$y$视为常数：

$$
\\frac{∂F}{∂z} = \\frac{∂}{∂z}  \\lbrack x^{2} + z^{2} - yϕ (\\frac{z}{y}) \\rbrack  = 0 + 2z - y ⋅ \\frac{∂}{∂z}  \\lbrack ϕ (\\frac{z}{y}) \\rbrack  .
$$

其中：

$$
\\frac{∂}{∂z}  \\lbrack ϕ (\\frac{z}{y}) \\rbrack  = ϕ^{′} (\\frac{z}{y}) ⋅ \\frac{∂}{∂z} (\\frac{z}{y}) = ϕ^{′} (\\frac{z}{y}) ⋅ \\frac{1}{y}.
$$

所以：

$$
\\frac{∂F}{∂z} = 2z - y ⋅ ϕ^{′} (\\frac{z}{y}) ⋅ \\frac{1}{y} = 2z - ϕ^{′} (\\frac{z}{y}) .
$$

代入隐函数求导公式：

$$
\\frac{∂z}{∂y} = −\\frac{−ϕ (\\frac{z}{y}) + \\frac{z}{y}ϕ^{′} (\\frac{z}{y})}{2z - ϕ^{′} (\\frac{z}{y})} = \\frac{ϕ (\\frac{z}{y}) - \\frac{z}{y}ϕ^{′} (\\frac{z}{y})}{2z - ϕ^{′} (\\frac{z}{y})}.
$$

这就是所求的偏导数。
', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '418');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '418');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (419, '1990年考研数学卷5第14题', '', '考研数学1990年卷5真题', '/problems/other/395', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (420, '1990年考研数学卷5第15题', '', '考研数学1990年卷5真题', '/problems/other/398', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (421, '1990年考研数学卷5第16题', '简单', '考研数学1990年卷5真题', '证明不等式$1 + x \\ln(x + \\sqrt{1 + x^{2}}) ≥ \\sqrt{1 + x^{2}}$（$−∞ < x < +∞$）．', '[]', '证明见解析。
', '
构造函数$f(x) = 14 + x \\ln(x + \\sqrt{14 + x^{2}}) - \\sqrt{14 + x^{2}}$，
由$f^{′}(x) = \\ln(x + \\sqrt{1 + x^{2}})$，
知$f(x)$有唯一的驻点$x = 0$。又因为$f^{′′}(x) > 0$，
故$x = 0$是极小点，也是最小值点。于是$f(x) ≥ f(0) = 0$，结论成立。
', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '421');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '421');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '421');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (422, '1990年考研数学卷5第17题', '简单', '考研数学1990年卷5真题', '设$A$为$10 × 10$矩阵$\\left( \\begin{array}{ccccc}
0 & 1 & 0 & 0 & 0 \\\\
0 & 0 & 1 & 0 & 0 \\\\
⋯ & ⋯ & ⋯ & ⋯ & ⋯ \\\\
0 & 0 & 0 & 0 & 1 \\\\
\\end{array} \\right)$，计算行列式$∣A - λE∣$，其中$E$为$10$阶单位矩阵，$λ$为常数．', '[]', '
$λ^{10} - 10^{10}$
', '
矩阵$A$是一个$10 × 10$的伴随矩阵，其形式为：


$$
A = \\left( \\begin{array}{ccccc}
0 & 1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & 1 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
0 & 0 & 0 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right)
$$

对于这样的伴随矩阵，其特征多项式$∣A - λE∣$直接由最后一行元素决定。具体地，


$$
∣A - λE∣ = λ^{10} - 10^{10}
$$

这是因为矩阵$A$对应的多项式为$λ^{10} - 10^{10}$，且$∣A - λE∣ = ∣λE - A∣$由于$10$为偶数。因此，行列式为$λ^{10} - 10^{10}$。
', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '422');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '422');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (423, '1990年考研数学卷5第18题', '简单', '考研数学1990年卷5真题', '设方阵$A$满足$A^{T}A = E$，其中$A^{T}$是$A$的转置矩阵，$E$为单位阵．
试证明$A$所对应的特征值的绝对值等于$1$．', '[]', '
特征值的绝对值等于1。
', '
设$A$有特征值$λ$及对应的特征向量$x$，则


$$
Ax = λx.
$$

两边取转置得


$$
x^{T}A^{T} = λx^{T}.
$$

于是


$$
x^{T}x = x^{T}A^{T}Ax = λ^{2}x^{T}x.
$$

因此


$$
(λ^{2} - 1)x^{T}x = 0,
$$

由于$x^{T}x \\neq 0$，得$∣λ∣ = 1$。
', 9, 'Mogullzr', '2026-01-29 14:07:35', 9, 'Mogullzr', '2026-01-29 14:07:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '423');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '423');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '423');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (424, '1990年考研数学卷5第19题', '', '考研数学1990年卷5真题', '/problems/other/400', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:36', 9, 'Mogullzr', '2026-01-29 14:07:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (425, '1990年考研数学卷5第20题', '', '考研数学1990年卷5真题', '/problems/other/403', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:36', 9, 'Mogullzr', '2026-01-29 14:07:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (426, '1990年考研数学卷5第21题', '简单', '考研数学1990年卷5真题', '甲乙两人独立地各进行两次射击，假设甲的命中率为$0.2$，乙的为$0.5$，
以$X$和$Y$分别表示甲和乙的命中次数，试求$X$和$Y$的联合概率分布．', '[]', '

$$
\\begin{array}{c|ccc}
P(X, Y) & Y = 0 & Y = 1 & Y = 2 \\\\
X = 0 & 0.16 & 0.32 & 0.16 \\\\
X = 1 & 0.08 & 0.16 & 0.08 \\\\
X = 2 & 0.01 & 0.02 & 0.01 \\\\
\\end{array}
$$

', '甲和乙独立进行两次射击，因此$X$和$Y$相互独立。
$X ∼ Bin(2, 0.2)$，$Y ∼ Bin(2, 0.5)$。
$X$的概率分布：


$$
P(X = 0) = 0.8^{2} = 0.64,  P(X = 1) = 2 × 0.2 × 0.8 = 0.32,  P(X = 2) = 0.2^{2} = 0.04.
$$

$Y$的概率分布：


$$
P(Y = 0) = 0.5^{2} = 0.25,  P(Y = 1) = 2 × 0.5 × 0.5 = 0.50,  P(Y = 2) = 0.5^{2} = 0.25.
$$

由于$X$与$Y$独立，联合概率为


$$
P(X = x, Y = y) = P(X = x) ⋅ P(Y = y).
$$

计算可得联合分布如上表所示。
所有概率之和为 1，符合概率分布性质。
', 9, 'Mogullzr', '2026-01-29 14:07:36', 9, 'Mogullzr', '2026-01-29 14:07:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '426');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '426');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '426');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (427, '1990年考研数学卷5第22题', '', '考研数学1990年卷5真题', '/problems/other/405', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:07:36', 9, 'Mogullzr', '2026-01-29 14:07:36', 0, 4);
