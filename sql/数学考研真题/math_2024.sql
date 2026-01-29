INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3102, '2024年考研数学卷1第1题', '简单', '考研数学2024年数1真题', '已知函数$f(x) = \\int_{0}^{x} e^{\\cos t}dt$，$g(x) = \\int_{0}^{\\sin x} e^{t^{2}}dt$，则( )', '[''$f(x)$是奇函数，$g(x)$是偶函数'', ''$f(x)$是偶函数，$g(x)$是奇函数'', ''$f(x)$与$g(x)$均为奇函数'', ''$f(x)$与$g(x)$均为周期函数'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:11', 9, 'Mogullzr', '2026-01-29 14:20:11', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3102');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3102');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '3102');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3103, '2024年考研数学卷1第2题', '简单', '考研数学2024年数1真题', '已知$P = P(x, y, z)$，$Q = Q(x, y, z)$均连续，$∑$为$z = \\sqrt{1 - x^{2} - y^{2}}$，$x ≤ 0$，$y ≥ 0$的上侧，则$\\iint_{∑} Pdydz + Qdxdz =$', '[''$\\\\iint_{∑}(\\\\frac{x}{z}P + \\\\frac{y}{z}Q)dxdy$'', ''$\\\\iint_{∑}(−\\\\frac{x}{z}P + \\\\frac{y}{z}Q)dxdy$'', ''$\\\\iint_{∑}(\\\\frac{x}{z}P - \\\\frac{y}{z}Q)dxdy$'', ''$\\\\iint_{∑}(−\\\\frac{x}{z}P - \\\\frac{y}{z}Q)dxdy$'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:20:11', 9, 'Mogullzr', '2026-01-29 14:20:11', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3103');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3103');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '3103');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3104, '2024年考研数学卷1第3题', '简单', '考研数学2024年数1真题', '已知幂级数$\\sum_{n=0}^{∞} a_{n}x^{n}$的和函数为$\\ln(2 + x)$，则$\\sum_{n=0}^{∞} na_{2n} =$（ ）', '[''$−\\\\frac{1}{6}$'', ''$−\\\\frac{1}{3}$'', ''$\\\\frac{1}{6}$'', ''$\\\\frac{1}{3}$'']', "['A']", '
$$
\\begin{array}{cc}
\\ln(2 + x) & = \\ln  (1 + \\frac{x}{2}) + \\ln 2 \\\\
 & = \\ln 2 + \\sum_{n=1}^{∞}(−1)n−1\\frac{(\\frac{x}{2})^{n}}{n} \\\\
\\end{array}
$$

$$
\\begin{array}{cc}
\\sum_{n=0}^{∞} na_{2n} & = 0 + a_{2} + 2a_{4} + 3a_{6} + 4a_{8} + ⋯ \\\\
 & = −\\frac{1}{2 ⋅ 2^{2}} + 2 ⋅ (−\\frac{1}{2^{4} ⋅ 4}) - 3 ⋅ \\frac{1}{2^{6} ⋅ 6} + ⋯ \\\\
 & = −  \\lbrack \\frac{1}{2^{3}} + \\frac{1}{2^{5}} + \\frac{1}{2^{7}} + ⋯  \\rbrack  \\\\
\\end{array}
$$
故选 A。', 9, 'Mogullzr', '2026-01-29 14:20:12', 9, 'Mogullzr', '2026-01-29 14:20:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3104');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3104');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '3104');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3105, '2024年考研数学卷1第4题', '简单', '考研数学2024年数1真题', '设函数$f(x)$在区间$(−1, 1)$上有定义，且$\\lim_{x→0} f(x) = 0$，则(  )', '[''当$\\\\lim_{x→0} \\\\frac{f(x)}{x} = m$时，$f^{′}(0) = m$'', ''当$f^{′}(0) = m$时，$\\\\lim_{x→0} \\\\frac{f(x)}{x} = m$'', ''当$\\\\lim_{x→0} f^{′}(x) = m$时，$f^{′}(0) = m$'', ''当$f^{′}(0) = m$时，$\\\\lim_{x→0} f^{′}(x) = m$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:12', 9, 'Mogullzr', '2026-01-29 14:20:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3105');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3105');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '3105');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3106, '2024年考研数学卷1第5题', '简单', '考研数学2024年数1真题', '在空间直角坐标系$O - xyz$中，三张平面
$π_{i} : a_{i}x + b_{i}y + c_{i}z = d_{i} (i = 1, 2, 3)$的位置关系如图所示，
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/b637044cabb948309a373475c7d6ac47.jpg)
记$α_{i} = (a_{i}, b_{i}, c_{i})$，$β_{i} = (a_{i}, b_{i}, c_{i}, d_{i})$，
若

$$
r \\left( \\begin{array}{c}
α_{1} \\\\
α_{2} \\\\
α_{3} \\\\
\\end{array} \\right) = m,  r \\left( \\begin{array}{c}
β_{1} \\\\
β_{2} \\\\
β_{3} \\\\
\\end{array} \\right) = n,
$$
则（ ）', '[''$m = 1$，$n = 2$'', ''$m = n = 2$'', ''$m = 2$，$n = 3$'', ''$m = n = 3$'']', "['B']", '
由题意知

$$
\\left( \\begin{array}{c}
α_{1} \\\\
α_{2} \\\\
α_{3} \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
d_{1} \\\\
d_{2} \\\\
d_{3} \\\\
\\end{array} \\right)
$$
有无穷多解，故

$$
r \\left( \\begin{array}{c}
α_{1} \\\\
α_{2} \\\\
α_{3} \\\\
\\end{array} \\right) = r \\left( \\begin{array}{c}
β_{1} \\\\
β_{2} \\\\
β_{3} \\\\
\\end{array} \\right) < 3
$$
又由存在两平面的法向量不共线即线性无关，故

$$
r \\left( \\begin{array}{c}
α_{1} \\\\
α_{2} \\\\
α_{3} \\\\
\\end{array} \\right) ≥ 2
$$
则

$$
r \\left( \\begin{array}{c}
α_{1} \\\\
α_{2} \\\\
α_{3} \\\\
\\end{array} \\right) = r \\left( \\begin{array}{c}
β_{1} \\\\
β_{2} \\\\
β_{3} \\\\
\\end{array} \\right) = 2
$$
故$m = n = 2$，故选 B。', 9, 'Mogullzr', '2026-01-29 14:20:14', 9, 'Mogullzr', '2026-01-29 14:20:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3106');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '3106');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3107, '2024年考研数学卷1第6题', '简单', '考研数学2024年数1真题', '设向量$α_{1} = \\left( \\begin{array}{c}
a \\\\
1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，$α_{2} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
b \\\\
a \\\\
\\end{array} \\right)$，$α_{3} = \\left( \\begin{array}{c}
1 \\\\
a \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，若$α_{1}, α_{2}, α_{3}$线性相关，且其中任意两个向量均线性无关，则（ ）', '[''$a = 1, b \\\\neq −1$'', ''$a = 1, b = −1$'', ''$a \\\\neq −2, b = 2$'', ''$a = −2, b = 2$'']', "['D']", '
由于向量组$α_{1}, α_{2}, α_{3}$线性相关，因此其秩$r(α_{1}, α_{2}, α_{3}) < 3$。
由此可得行列式

$$
\\begin{vmatrix}
a & 1 & 1\\\\
1 & 1 & a\\\\
1 & a & 1
\\end{vmatrix} = 0
$$
解得$a = 1$或$a = −2$。当$a = 1$时，$α_{1}$与$α_{3}$线性相关，与题意矛盾，因此舍去。
故取$a = −2$。进一步，由

$$
\\begin{vmatrix}
a & 1 & 1\\\\
1 & 1 & a\\\\
−1 & b & −1
\\end{vmatrix} = \\begin{vmatrix}
−2 & 1 & 1\\\\
1 & 1 & −2\\\\
−1 & b & −1
\\end{vmatrix} = 0
$$
解得$b = 2$。因此，正确答案为D。', 9, 'Mogullzr', '2026-01-29 14:20:14', 9, 'Mogullzr', '2026-01-29 14:20:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3107');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3107');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '3107');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3108, '2024年考研数学卷1第7题', '简单', '考研数学2024年数1真题', '设$A$是秩为$2$的$3$阶矩阵，$α$是满足$Aα = 0$的非零向量，若对满足$β^{T}α = 0$的$3$维列向量$β$，均有$Aβ = β$，则( )', '[''$A^{3}$的迹为$2$'', ''$A^{3}$的迹为$5$'', ''$A^{2}$的迹为$8$'', ''$A^{2}$的迹为$9$'']', "['A']", '由$Aα = 0$且$α \\neq 0$，故$λ_{1} = 0$，设非零向量$β_{1}, β_{2}$线性无关（因为与$α$垂直的平面中一定存在两个线性无关的向量）且满足$β_{1}^{T}α = β_{2}^{T}α = 0$，则$Aβ_{1} = β_{1}, Aβ_{2} = β_{2}$，又由$β_{1}, β_{2}$线性无关，故$λ = 1$至少为二重根，故$λ_{1} = 0, λ_{2} = λ_{3} = 1$，故$A^{3}$的特征值为$0, 1, 1$，故$tr(A^{3}) = 0 + 1 + 1 = 2$，故选A.', 9, 'Mogullzr', '2026-01-29 14:20:14', 9, 'Mogullzr', '2026-01-29 14:20:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3108');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3108');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '3108');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3109, '2024年考研数学卷1第8题', '简单', '考研数学2024年数1真题', '设随机变量$X$，$Y$相互独立，且$X$服从正态分布$N(0, 2)$，$Y$服从正态分布$N(−2, 2)$，若$P\\{2X + Y < a\\} = P\\{X > Y\\}$，则$a = ($)', '[''$−2 - \\\\sqrt{10}$'', ''$−2 + \\\\sqrt{10}$'', ''$−2 - \\\\sqrt{6}$'', ''$−2 + \\\\sqrt{6}$'']', "['B']", '$2X + Y : N(−2, 10)$，$Y - X : N(−2, 2^{2})$，所以$P\\{2X + Y < a\\} = Φ(\\frac{a+2}{\\sqrt{10}}) = P\\{Y - X < 0\\} = Φ(\\frac{0+2}{2})$，于是$\\frac{a+2}{\\sqrt{10}} = \\frac{0+2}{2}$，$a = −2 + \\sqrt{10}$。故选 B.', 9, 'Mogullzr', '2026-01-29 14:20:14', 9, 'Mogullzr', '2026-01-29 14:20:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3109');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3109');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3110, '2024年考研数学卷1第9题', '简单', '考研数学2024年数1真题', '设随机变量$X$的概率密度为

$$
f(x) = \\begin{cases} 2(1 - x) & 0 < x < 1 \\\\ 0 & 其它 \\end{cases}
$$
在$X = x (0 < x < 1)$的条件下，随机变量$Y$服从区间$(x, 1)$上的均匀分布，则$Cov(X, Y) =$（  ）', '[''$−\\\\frac{1}{36}$'', ''$−\\\\frac{1}{72}$'', ''$\\\\frac{1}{72}$'', ''$\\\\frac{1}{36}$'']', "['D']", '当$0 < x < 1$时，条件概率密度函数为：
$$
f_{Y∣X}(y ∣ x) = \\begin{cases} \\frac{1}{1 - x} & x < y < 1 \\\\ 0 & 其他 \\end{cases}
$$
联合概率密度函数为：
$$
f(x, y) = \\begin{cases} 2 & x < y < 1,  0 < x < 1 \\\\ 0 & 其他 \\end{cases}
$$
计算$EXY$：
$$
EXY = ∬_{\\begin{array}{c}
−∞<x<+∞ \\\\
−∞<y<+∞ \\\\
\\end{array}} xyf(x, y) dx dy = \\int_{0}^{1} dy \\int_{0}^{y} 2xy dx = \\frac{1}{4}
$$
计算$EX$：
$$
EX = \\int_{0}^{1} x ⋅ 2(1 - x) dx = \\frac{1}{3}
$$
计算$EY$：
$$
EY = ∬_{\\begin{array}{c}
−∞<x<+∞ \\\\
−∞<y<+∞ \\\\
\\end{array}} yf(x, y) dx dy = \\int_{0}^{1} dy \\int_{0}^{y} 2y dx = \\frac{2}{3}
$$
计算协方差：
$$
Cov(X, Y) = EXY - EX ⋅ EY = \\frac{1}{4} - \\frac{1}{3} ⋅ \\frac{2}{3} = \\frac{1}{36}
$$
故选 D。', 9, 'Mogullzr', '2026-01-29 14:20:14', 9, 'Mogullzr', '2026-01-29 14:20:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3110');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3110');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '3110');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3111, '2024年考研数学卷1第10题', '简单', '考研数学2024年数1真题', '设随机变量$X, Y$相互独立，且均服从参数为$λ$的指数分布，令$Z = ∣X - Y∣$，则下列随机变量与$Z$同分布的是（  ）', '[''$X + Y$'', ''$\\\\frac{X+Y}{2}$'', ''$2X$'', ''$X$'']', "['D']", '令$Z = ∣X - Y∣$，则$F_{Z}(z) = P\\{Z ≤ z\\} = P\\{∣X - Y∣ ≤ z\\}$。当$z < 0$时，$F_{Z}(z) = 0$；当$z ≥ 0$时，
$$
\\begin{array}{cc}
F_{Z}(z) & = \\iint_{∣x-y∣≤z} f(x, y) dx dy = \\iint_{∣x-y∣≤z} λe^{−λx}λe^{−λy} dx dy \\\\
 & = 2 \\int_{0}^{∞} dy \\int_{y}^{y+z} λe^{−λx}λe^{−λy} dx = 1 - e^{−λz} \\\\
\\end{array}
$$
因此，
$$
F_{Z}(z) = \\begin{cases} 0 & z < 0 \\\\ 1 - e^{−λz} & z ≥ 0 \\end{cases}
$$
显然，$Z = ∣X - Y∣$与$X$同分布。故选 D。', 9, 'Mogullzr', '2026-01-29 14:20:15', 9, 'Mogullzr', '2026-01-29 14:20:15', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3111');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3111');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '3111');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3112, '2024年考研数学卷1第11题', '简单', '考研数学2024年数1真题', '（填空题）若$\\lim_{x→0} \\frac{(1+ax^{2})sinx-1}{x^{3}} = 6$，则$a =$______', '[]', '6
', '

$$
\\begin{array}{cc}
\\lim_{x→0} \\frac{(1 + ax^{2})sinx - 1}{x^{3}} & = \\lim_{x→0} \\frac{e^{\\sin x \\ln(1+ax^{2})} - 1}{x^{3}} \\\\
 & = \\lim_{x→0} \\frac{\\sin x ⋅ \\ln(1 + ax^{2})}{x^{3}} \\\\
 & = \\lim_{x→0} \\frac{ax^{3}}{x^{3}} = 6 \\\\
\\end{array}
$$

故$a = 6$
', 9, 'Mogullzr', '2026-01-29 14:20:15', 9, 'Mogullzr', '2026-01-29 14:20:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3112');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3112');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '3112');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3113, '2024年考研数学卷1第12题', '简单', '考研数学2024年数1真题', '（填空题）设函数$f(u, v)$具有 2 阶连续偏导数，且

$$
df∣_{(1,1)} = 3 du + 4 dv,
$$
令$y = f(\\cos x, 1 + x^{2})$，则

$$
\\frac{d^{2}y}{dx^{2}}​_{x=0} =
$$
', '[]', '5
', '
由$df∣_{(1,1)} = 3 du + 4 dv$可知，


$$
f_{u}^{′}(1, 1) = 3,  f_{v}^{′}(1, 1) = 4
$$

又


$$
\\frac{dy}{dx} = f_{u}^{′} ⋅ (− \\sin x) + f_{v}^{′} ⋅ 2x
$$

则


$$
\\begin{array}{cc}
\\frac{d^{2}y}{dx^{2}} & =  \\lbrack f_{uu}^{′′} ⋅ (− \\sin x) + f_{uv}^{′′} ⋅ 2x \\rbrack  (− \\sin x) + f_{u}^{′} ⋅ (− \\cos x) \\\\
 & +  \\lbrack f_{vu}^{′′} ⋅ (− \\sin x) + f_{vv}^{′′} ⋅ 2x \\rbrack  (2x) + 2f_{v}^{′} \\\\
\\end{array}
$$

因此，


$$
\\frac{d^{2}y}{dx^{2}}​_{x=0} = f_{u}^{′}(1, 1) ⋅ (−1) + 2f_{v}^{′}(1, 1) = −3 + 8 = 5
$$

', 9, 'Mogullzr', '2026-01-29 14:20:15', 9, 'Mogullzr', '2026-01-29 14:20:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3113');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3113');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3113');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3114, '2024年考研数学卷1第13题', '简单', '考研数学2024年数1真题', '（填空题）已知函数$f(x) = x + 1$，若$f(x) = \\frac{a_{0}}{2} + \\sum_{n=1}^{∞} a_{n} \\cos nx$，$x ∈  \\lbrack 0, π \\rbrack$，则$\\lim_{n→∞} n^{2} \\sin a_{2n-1} =$__________', '[]', '$−\\frac{1}{π}$
', '
由题意可得将$f(x)$在$\\lbrack 0, π \\rbrack$展为余弦级数，由公式可得

$$
\\begin{array}{cc}
a_{n} & = \\frac{2}{π} \\int_{0}^{π}(x + 1) \\cos \\frac{nπx}{π}dx \\\\
 & = \\frac{2}{π}  \\lbrack (x + 1)\\frac{1}{n} \\sin nx + \\frac{1}{n^{2}} \\cos nx \\rbrack _{0}^{π} \\\\
\\end{array}
$$


$$
\\lim_{n→∞} n^{2} \\sin a_{2n-1} = \\lim_{n→∞}  \\lbrack −\\frac{4}{(2n - 1)2π}n^{2} \\rbrack  = −\\frac{1}{π}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:15', 9, 'Mogullzr', '2026-01-29 14:20:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3114');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3114');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '3114');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3115, '2024年考研数学卷1第14题', '简单', '考研数学2024年数1真题', '（填空题）微分方程$y^{′} = \\frac{1}{(x+y)2}$满足条件$y(1) = 0$的解为______', '[]', '$x = \\tan(y + \\frac{π}{4}) - y$
【解析
令$x + y = u$，等式两边同时对$x$求导，得到$u^{′} = 1 + y^{′}$，代入原式可得$u^{′} - 1 = \\frac{1}{u^{2}}$。整理得$\\frac{du}{dx} = \\frac{1+u^{2}}{u^{2}}$，即$∫ \\frac{u^{2}}{u^{2}+1}du = ∫ dx$。求得$u - arctan u = x + c$，即$y - arctan(x + y) = c$。把初始条件代入可得$c = −\\frac{π}{4}$，解得$x = \\tan(y + \\frac{π}{4}) - y$。
', '', 9, 'Mogullzr', '2026-01-29 14:20:15', 9, 'Mogullzr', '2026-01-29 14:20:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3115');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3115');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '3115');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3116, '2024年考研数学卷1第15题', '简单', '考研数学2024年数1真题', '（填空题）设实矩阵$A = \\left( \\begin{array}{cc}
a + 1 & a \\\\
a & a \\\\
\\end{array} \\right)$，若对任意实向量$α = \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
\\end{array} \\right)$，$β = \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
\\end{array} \\right)$，$(α^{T}Aβ)2 ≤ α^{T}Aα ⋅ β^{T}Aβ$都成立，则$a$的取值范围是______', '[]', '$\\lbrack 0, +∞)$
', '由题意知：$α^{T}A(βα^{T} - αβ^{T})Aβ ≤ 0$恒成立。
设函数$f(x_{1}, x_{2}, y_{1}, y_{2}) = α^{T}A(βα^{T} - αβ^{T})Aβ$。
由

$$
βα^{T} - αβ^{T} = \\left( \\begin{array}{c}
y_{1} \\\\
y_{2} \\\\
\\end{array} \\right) (x_{1} x_{2}) - \\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
\\end{array} \\right) (y_{1} y_{2}) = (x_{1}y_{2} - x_{2}y_{1}) \\left( \\begin{array}{cc}
0 & −1 \\\\
1 & 0 \\\\
\\end{array} \\right) ,
$$

则

$$
\\begin{array}{cccccccccc}
A(βα^{T} - αβ^{T})A & \\begin{array}{cc}
a + 1 & a \\\\
a & a \\\\
\\end{array} &  &  &  &  &  &  &  &  \\\\
 &  & a + 1 & a & 0 & −1 & a + 1 & a & 0 & −a \\\\
 &  & a & a & 1 & 0 & a & a & a & 0 \\\\
 & \\begin{array}{cc}
0 & −a \\\\
a & 0 \\\\
\\end{array} &  &  &  &  &  &  &  &  \\\\
\\end{array}
$$

故

$$
f(x_{1}, x_{2}, y_{1}, y_{2}) = (x_{1}y_{2} - x_{2}y_{1})α^{T} \\left( \\begin{array}{cc}
0 & −a \\\\
a & 0 \\\\
\\end{array} \\right) β = −a(x_{1}y_{2} - x_{2}y_{1})2 ≤ 0,
$$

可得$a ≥ 0$。
', 9, 'Mogullzr', '2026-01-29 14:20:15', 9, 'Mogullzr', '2026-01-29 14:20:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3116');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3116');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3116');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3117, '2024年考研数学卷1第16题', '简单', '考研数学2024年数1真题', '（填空题）设随机试验每次成功的概率为$P$，现进行 3 次独立重复试验，在至少成功 1 次的条件下，3 次试验全部成功的概率为$\\frac{4}{13}$，则$P =$______', '[]', '$\\frac{2}{3}$
', '设随机变量$X$表示三次试验中成功的次数，则$X : B(3, p)$，所以

$$
P\\{X = 3∣X ≥ 1\\} = \\frac{P\\{X = 3, X ≥ 1\\}}{P\\{X ≥ 1\\}} = \\frac{P\\{X = 3\\}}{P\\{X ≥ 1\\}} = \\frac{C_{3}^{3}P^{3}}{1 - C_{3}^{0}(1 - P)3} = \\frac{4}{13}
$$


$$
∴ P = \\frac{2}{3}​
$$

', 9, 'Mogullzr', '2026-01-29 14:20:16', 9, 'Mogullzr', '2026-01-29 14:20:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3117');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '3117');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3118, '2024年考研数学卷1第17题', '简单', '考研数学2024年数1真题', '（本题满分10分）已知平面区域$D = \\{(x, y)∣\\sqrt{1 - y^{2}} ≤ x ≤ 1, −1 ≤ y ≤ 1\\}$，计算$\\iint_{D} \\frac{x}{\\sqrt{x^{2}+y^{2}}}dxdy$', '[]', '$\\sqrt{2} - 2 + \\ln(1 + \\sqrt{2})$
', '
由于积分区域关于$x$轴对称，被积函数关于$y$为偶函数，故
$\\iint_{D} \\frac{x}{\\sqrt{x^{2}+y^{2}}}dxdy = 2 \\iint_{D_{1}} \\frac{x}{\\sqrt{x^{2}+y^{2}}}dxdy = 2 \\int_{0}^{1} dy \\int_{\\sqrt{1-y^{2}}}^{1} \\frac{x}{\\sqrt{x^{2}+y^{2}}}dx$
$= \\int_{0}^{1} dy \\int_{\\sqrt{1-y^{2}}}^{1} \\frac{1}{\\sqrt{x^{2}+y^{2}}}d(x^{2} + y^{2})$
$= 2 \\int_{0}^{1} \\sqrt{1 + y^{2}}dy - 2 =  \\lbrack y\\sqrt{1 + y^{2}} + \\ln(y + \\sqrt{1 + y^{2}}) \\rbrack ​_{0}^{1} - 2$
$= \\sqrt{2} - 2 + \\ln(1 + \\sqrt{2})$
', 9, 'Mogullzr', '2026-01-29 14:20:16', 9, 'Mogullzr', '2026-01-29 14:20:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3118');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3118');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3118');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3119, '2024年考研数学卷1第18题', '简单', '考研数学2024年数1真题', '（本题满分12分）已知函数$f(x, y) = x^{3} + y^{3} - (x + y)2 + 3$，设$T$是曲面$z = f(x, y)$在点$(1, 1, 1)$处的切平面，$D$为$T$与坐标平面所围成的有界区域在$xOy$平面上的投影。(1) 求$T$的方程(2) 求$f(x, y)$在$D$上的最大值和最小值', '[]', '
(1)$x + y + z = 3$
(2) 最大值为21，最小值为$\\frac{17}{27}$
', '
(1) 对于$z = f(x, y) = x^{3} + y^{3} - (x + y)2 + 3$，
有$z_{x}^{′}(1, 1) = −1$，$z_{y}^{′}(1, 1) = −1$，
从而曲面在点$(1, 1, 1)$处的一个法向量为


$$
n = (−z_{x}, −z_{y}, 1) = (1, 1, 1),
$$

得该点处曲面的切平面方程为


$$
x + y + z = 3.
$$

(2) 在$xoy$平面中，区域$D : x + y ≤ 3,  x ≥ 0,  y ≥ 0$。
在$D$内部求驻点，解方程组


$$
\\begin{cases} f_{x}^{′} = 3x^{2} - 2(x + y) = 0 \\\\ f_{y}^{′} = 3y^{2} - 2(x + y) = 0 \\end{cases}
$$

得$(\\frac{4}{3}, \\frac{4}{3})$，有$f (\\frac{4}{3}, \\frac{4}{3}) = \\frac{17}{27}$；
在边界$y = 0,  0 < x < 3$上，对于$f(x, 0) = x^{3} - x^{2} + 3$，
解得其驻点$(\\frac{2}{3}, 0)$，有$f (\\frac{2}{3}, 0) = \\frac{77}{27}$；
在边界$x = 0,  0 < y < 3$上，对于$f(0, y) = y^{3} - y^{2} + 3$，
解得其驻点$(0, \\frac{2}{3})$，有$f (0, \\frac{2}{3}) = \\frac{77}{27}$；
在边界$x + y = 3,  0 < x < 3$上，对于$f(x, 3 - x) = x^{3} + (3 - x)3 - 6$，
解得其驻点$(\\frac{3}{2}, \\frac{3}{2})$，有$f (\\frac{3}{2}, \\frac{3}{2}) = \\frac{3}{4}$；
在边界顶点，有


$$
f(0, 0) = 3,  f(3, 0) = f(0, 3) = 21.
$$

综上，得$f(x, y)$在$D$上的最大值为$f(3, 0) = f(0, 3) = 21$，
最小值为$f (\\frac{4}{3}, \\frac{4}{3}) = \\frac{17}{27}$。
', 9, 'Mogullzr', '2026-01-29 14:20:16', 9, 'Mogullzr', '2026-01-29 14:20:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3119');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3119');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '3119');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3120, '2024年考研数学卷1第19题', '简单', '考研数学2024年数1真题', '（本题满分 12 分）设函数$f(x)$具有 2 阶导数，且$f^{′}(0) = f^{′}(1)$，$∣f^{′′}(x)∣ ≤ 1$，证明：(1) 当$x ∈ (0, 1)$时，$∣f(x) - f(0)(1 - x) - f(1)x∣ ≤ \\frac{x(1 - x)}{2}$(2)$​\\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2}​ ≤ \\frac{1}{12}$', '[]', '见解析
', '
(1) 证明：
令$g(x) = f(0)(1 - x) + f(1)x$。
令$F(x) = f(x) - g(x) - \\frac{x(1-x)}{2}$，其中$x ∈ (0, 1)$。
由于$F(0) = 0$，$F(1) = 0$，
且$F^{′′}(x) = f^{′′}(x) + 1 ≥ 0$（因为$∣f^{′′}(x)∣ ≤ 1$），
因此$F(x)$为凹函数，从而$F(x) ≥ 0$。
于是有


$$
f(x) - f(0)(1 - x) - f(1)x ≤ \\frac{x(1 - x)}{2}.
$$

再令$F(x) = f(x) - g(x) + \\frac{x(1-x)}{2}$，其中$x ∈ (0, 1)$。
由于$F(0) = 0$，$F(1) = 0$，
且$F^{′′}(x) = f^{′′}(x) - 1 ≤ 0$（因为$∣f^{′′}(x)∣ ≤ 1$），
因此$F(x)$为凸函数，从而$F(x) ≥ 0$。
于是有


$$
f(x) - f(0)(1 - x) - f(1)x ≥ −\\frac{x(1 - x)}{2}.
$$

综上，


$$
∣f(x) - f(0)(1 - x) - f(1)x∣ ≤ \\frac{x(1 - x)}{2}.
$$

(2) 由 (1) 中


$$
f(x) - f(0)(1 - x) - f(1)x ≤ \\frac{x(1 - x)}{2},
$$

两边在$\\lbrack 0, 1 \\rbrack$上积分得


$$
\\int_{0}^{1}  \\lbrack f(x) - f(0)(1 - x) - f(1)x \\rbrack   dx ≤ \\int_{0}^{1} \\frac{x(1 - x)}{2} dx.
$$

计算可得


$$
\\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2} ≤ \\frac{1}{12}.
$$

又由 (1) 中


$$
f(x) - f(0)(1 - x) - f(1)x ≥ −\\frac{x(1 - x)}{2},
$$

两边在$\\lbrack 0, 1 \\rbrack$上积分得


$$
\\int_{0}^{1}  \\lbrack f(x) - f(0)(1 - x) - f(1)x \\rbrack   dx ≥ − \\int_{0}^{1} \\frac{x(1 - x)}{2} dx,
$$

即


$$
\\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2} ≥ −\\frac{1}{12}.
$$

综上，


$$
​\\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2}​ ≤ \\frac{1}{12}.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:16', 9, 'Mogullzr', '2026-01-29 14:20:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3120');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3120');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3120');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3121, '2024年考研数学卷1第20题', '简单', '考研数学2024年数1真题', '（本题满分12分）已知有向曲线 L 的球面$x^{2} + y^{2} + z^{2} = 2x$与平面$2x - z - 1 = 0$的交线，从 z 轴正向往 z 轴负向看去为逆时针方向，计算曲线积分$\\int_{L}(6xyz - yz^{2})dx + 2x^{2}zdy + xyzdz$', '[]', '$\\frac{4\\sqrt{5}π}{25}$
', '

$$
\\begin{array}{ccccc}
I & = ∮_{L}(6xyz - yz^{2}) dx + 2x^{2}z dy + xyz dz &  &  &  \\\\
 & \\begin{array}{ccc}
dy dz & dz dx & dx dy \\\\
\\frac{∂}{∂x} & \\frac{∂}{∂y} & \\frac{∂}{∂z} \\\\
6xyz - yz^{2} & 2x^{2}z & xyz \\\\
\\end{array} &  &  &  \\\\
 & = \\iint_{∑}(xz - 2x^{2}) dy dz + (6xy - 3yz) dz dx + (z^{2} - 2xz) dx dy &  &  &  \\\\
 & = \\iint_{∑}  \\lbrack (xz - 2x^{2})(−2) + (6xy - 3yz) ⋅ 0 + (z^{2} - 2xz) \\rbrack  dx dy &  &  &  \\\\
 &  & dy dz & dz dx & dx dy \\\\
 &  & \\frac{∂}{∂x} & \\frac{∂}{∂y} & \\frac{∂}{∂z} \\\\
 & = \\iint_{∑}(4x^{2} - 4xz + z^{2}) dx dy &  &  &  \\\\
 &  & 6xyz - yz^{2} & 2x^{2}z & xyz \\\\
 & = \\iint_{D} 1 dx dy &  &  &  \\\\
 & = \\frac{4\\sqrt{5}π}{25}. &  &  &  \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:16', 9, 'Mogullzr', '2026-01-29 14:20:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3121');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3121');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '3121');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3122, '2024年考研数学卷1第21题', '简单', '考研数学2024年数1真题', '（本题满分 12 分）已知数列$\\{x_{n}\\}$，$\\{y_{n}\\}$，$\\{z_{n}\\}$满足$x_{0} = −1$，$y_{0} = 0$，$z_{0} = 2$，且
$$
\\begin{cases} x_{n} = −2x_{n-1} + 2z_{n-1} \\\\ y_{n} = −2y_{n-1} - 2z_{n-1} \\\\ z_{n} = −6x_{n-1} - 3y_{n-1} + 3z_{n-1} \\end{cases}
$$
记$α_{n} = \\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
z_{n} \\\\
\\end{array} \\right)$，写出满足$α_{n} = Aα_{n-1}$的矩阵$A$，并求$A^{n}$及$x_{n}$，$y_{n}$，$z_{n}$。', '[]', '
矩阵$A = \\left( \\begin{array}{ccc}
−2 & 0 & 2 \\\\
0 & −2 & −2 \\\\
−6 & −3 & 3 \\\\
\\end{array} \\right)$
$A^{n} = \\left( \\begin{array}{ccc}
−4 + (−1)n+1 ⋅ 2^{n} & −2 + (−1)n+1 ⋅ 2^{n} & 2 \\\\
4 + (−1)n ⋅ 2^{n+1} & 2 + (−1)n ⋅ 2^{n+1} & −2 \\\\
−6 & −3 & 3 \\\\
\\end{array} \\right)$
$x_{n} = 8 + (−2)n$,$y_{n} = −8 + (−2)n+1$,$z_{n} = 12$
', '
由题设得


$$
\\left( \\begin{array}{c}
x_{n} \\\\
y_{n} \\\\
z_{n} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
−2 & 0 & 2 \\\\
0 & −2 & −2 \\\\
−6 & −3 & 3 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{n-1} \\\\
y_{n-1} \\\\
z_{n-1} \\\\
\\end{array} \\right) ,
$$

即$α_{n} = Aα_{n-1}$，
故


$$
A = \\left( \\begin{array}{ccc}
−2 & 0 & 2 \\\\
0 & −2 & −2 \\\\
−6 & −3 & 3 \\\\
\\end{array} \\right) .
$$

由$∣λE - A∣ = 0$，即


$$
\\begin{vmatrix}
λ + 2 & 0 & −2\\\\
0 & λ + 2 & 2\\\\
6 & 3 & λ - 3
\\end{vmatrix} = 0,
$$

得$λ_{1} = 0$，$λ_{2} = 1$，$λ_{3} = −2$。
当$λ_{1} = 0$时，$Ax = 0$，得基础解系为$η_{1} = (1, −1, 1)T$。
当$λ_{2} = 1$时，$(E - A)x = 0$，得基础解系为$η_{2} = (2, −2, 3)T$。
当$λ_{3} = −2$时，$(−2E - A)x = 0$，得基础解系为$η_{3} = (−1, 2, 0)T$。
故存在可逆矩阵


$$
P = (η_{1}, η_{2}, η_{3}) = \\left( \\begin{array}{ccc}
1 & 2 & −1 \\\\
−1 & −2 & 2 \\\\
1 & 3 & 0 \\\\
\\end{array} \\right) ,
$$

使$P^{−1}AP = \\left( \\begin{array}{ccc}
0 &  &  \\\\
 & 1 &  \\\\
 &  & −2 \\\\
\\end{array} \\right)$，即$A = PΛP^{−1}$。
则


$$
A^{n} = PΛ^{n}P^{−1} = \\left( \\begin{array}{ccc}
1 & 2 & −1 \\\\
−1 & −2 & 2 \\\\
1 & 3 & 0 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
0 &  &  \\\\
 & 1 &  \\\\
 &  & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 2 & −1 \\\\
−1 & −2 & 2 \\\\
1 & 3 & 0 \\\\
\\end{array} \\right)
$$



$$
= \\left( \\begin{array}{ccc}
−4 + (−1)n+1 ⋅ 2^{n} & −2 + (−1)n+1 ⋅ 2^{n} & 2 \\\\
4 + (−1)n ⋅ 2^{n+1} & 2 + (−1)n ⋅ 2^{n+1} & −2 \\\\
−6 & −3 & 3 \\\\
\\end{array} \\right) .
$$

由$α_{n} = Aα_{n-1}$，得


$$
α_{n} = A^{n}α_{0} = \\left( \\begin{array}{ccc}
−4 + (−1)n+1 ⋅ 2^{n} & −2 + (−1)n+1 ⋅ 2^{n} & 2 \\\\
4 + (−1)n ⋅ 2^{n+1} & 2 + (−1)n ⋅ 2^{n+1} & −2 \\\\
−6 & −3 & 3 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
x_{0} \\\\
y_{0} \\\\
z_{0} \\\\
\\end{array} \\right)
$$



$$
= \\left( \\begin{array}{c}
8 + (−2)n \\\\
−8 + (−2)n+1 \\\\
12 \\\\
\\end{array} \\right) .
$$

则


$$
x_{n} = 8 + (−2)n,  y_{n} = −8 + (−2)n+1,  z_{n} = 12.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:17', 9, 'Mogullzr', '2026-01-29 14:20:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3122');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3122');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '3122');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3123, '2024年考研数学卷1第22题', '简单', '考研数学2024年数1真题', '（本题满分 12 分）设总体$X$服从$\\lbrack 0, θ \\rbrack$上的均匀分布，其中$θ ∈ (0, +∞)$为未知参数，$X_{1}, X_{2}, ⋯  , X_{n}$是来自总体$X$的简单随机样本，记$X_{(n)} = \\max\\{X_{1}, X_{2}, ⋯  , X_{n}\\}$，$T_{c} = cX_{(n)}$。（1）求$c$，使得$T_{c}$是$θ$的无偏估计；（2）记$h(c) = E(T_{c} - θ)2$，求$c$使得$h(c)$最小。', '[]', '
(1)$c = \\frac{n+1}{n}$
(2)$c = \\frac{n+2}{n+1}$
', '
(1)$X$的概率密度为


$$
f(x) = \\begin{cases} \\frac{1}{θ} & 0 < x < θ \\\\ 0 & 其他 \\end{cases}
$$

$X$的分布函数为


$$
F(x) = \\begin{cases} 0 & x < 0 \\\\ \\frac{1}{θ}x & 0 ≤ x < θ \\\\ 1 & x ≥ θ \\end{cases}
$$

$X_{(n)}$的分布函数为


$$
F_{X_{(n)}}(x) = P\\{\\max\\{X_{1}, X_{2}, ⋯  , X_{n}\\} ≤ x\\} = P\\{X_{1} ≤ x, X_{2} ≤ x, ⋯  , X_{n} ≤ x\\}
$$



$$
= P\\{X_{1} ≤ x\\} ⋅ P\\{X_{2} ≤ x\\} ⋯ P\\{X_{n} ≤ x\\} = F^{n}(x)
$$

$X_{(n)}$的概率密度为


$$
f_{X_{(n)}}(x) = nF^{n-1}(x) ⋅ f(x) = \\begin{cases} \\frac{n}{θ^{n}}x^{n-1} & 0 < x < θ \\\\ 0 & 其他 \\end{cases}
$$

计算期望：


$$
E(T_{c}) = cE(X_{(n)}) = c \\int_{0}^{θ} x ⋅ \\frac{n}{θ^{n}}x^{n-1} dx = \\frac{cn}{n + 1}θ
$$

令$E(T_{c}) = \\frac{cn}{n+1}θ = θ$，解得


$$
c = \\frac{n + 1}{n}
$$

(2) 计算二阶矩：


$$
E(T_{c}^{2}) = c^{2}E(X_{(n)}^{2}) = c^{2} \\int_{0}^{θ} x^{2} ⋅ \\frac{n}{θ^{n}}x^{n-1} dx = \\frac{c^{2}n}{n + 2}θ^{2}
$$

定义函数：


$$
h(c) = E(T_{c} - θ)2 = E(T_{c}^{2} - 2θT_{c} + θ^{2}) = E(T_{c}^{2}) - 2θE(T_{c}) + θ^{2}
$$

代入得


$$
h(c) = \\frac{c^{2}n}{n + 2}θ^{2} - \\frac{2cn}{n + 1}θ^{2} + θ^{2}
$$

求导：


$$
h^{′}(c) = \\frac{2cn}{n + 2}θ^{2} - \\frac{2n}{n + 1}θ^{2}
$$

令$h^{′}(c) = 0$，解得


$$
c = \\frac{n + 2}{n + 1}
$$

二阶导数为


$$
h^{′′}(c) = \\frac{2n}{n + 2}θ^{2} > 0
$$

因此当$c = \\frac{n+2}{n+1}$时，$h(c)$取得最小值。
', 9, 'Mogullzr', '2026-01-29 14:20:17', 9, 'Mogullzr', '2026-01-29 14:20:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3123');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '3123');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1073', '3123');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3124, '2024年考研数学卷2第1题', '简单', '考研数学2024年数2真题', '函数$f(x) = ∣x∣^{\\frac{1}{(1-x)(x-2)}}$的第一类间断点的个数为', '[''$3$'', ''$2$'', ''$1$'', ''$0$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:19', 9, 'Mogullzr', '2026-01-29 14:20:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3124');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3124');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '3124');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3125, '2024年考研数学卷2第2题', '简单', '考研数学2024年数2真题', '已知参数方程
$$
\\begin{cases} x = 1 + t^{3} \\\\ y = e^{t^{2}} \\end{cases}
$$
确定函数$y = f(x)$，则$\\lim_{x→+∞} x \\lbrack f(2 + \\frac{2}{x}) - f(2) \\rbrack  =$', '[''$e$'', ''$\\\\frac{4}{3}e$'', ''$\\\\frac{2}{3}e$'', ''$\\\\frac{e}{3}$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:19', 9, 'Mogullzr', '2026-01-29 14:20:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3125');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3125');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '3125');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3126, '2024年考研数学卷2第3题', '简单', '考研数学2024年数2真题', '已知函数$f(x) = \\int_{0}^{\\sin x} \\sin t^{3} dt, g(x) = \\int_{0}^{x} f(t)dt$，则 ( )', '[''$f(x)$为奇函数,$g(x)$为奇函数'', ''$f(x)$为奇函数,$g(x)$为偶函数'', ''$f(x)$为偶函数,$g(x)$为偶函数'', ''$f(x)$为偶函数,$g(x)$为奇函数'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:20', 9, 'Mogullzr', '2026-01-29 14:20:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3126');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3126');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '3126');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3127, '2024年考研数学卷2第4题', '简单', '考研数学2024年数2真题', '已知数列$\\{a_{n}\\}(a_{n} \\neq 0)$，若$\\{a_{n}\\}$发散，则 ()', '[''$\\\\{a_{n} + \\\\frac{1}{a_{n}}\\\\}$发散'', ''$\\\\{a_{n} - \\\\frac{1}{a_{n}}\\\\}$发散'', ''$\\\\{e^{a_{n}} + \\\\frac{1}{e^{a_{n}}}\\\\}$发散'', ''$\\\\{e^{a_{n}} - \\\\frac{1}{e^{a_{n}}}\\\\}$发散'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:20', 9, 'Mogullzr', '2026-01-29 14:20:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3127');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3127');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1072', '3127');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3128, '2024年考研数学卷2第5题', '简单', '考研数学2024年数2真题', '已知函数$f(x, y) = \\begin{cases} (x^{2} + y^{2}) \\sin \\frac{1}{xy} & xy \\neq 0 \\\\ 0 & xy = 0 \\end{cases}$，则在点$(0, 0)$处，函数$f(x, y)$的偏导数$\\frac{∂f(x,y)}{∂x}$和可微性为（）', '[''$\\\\frac{∂f}{∂x}$存在且连续，函数可微'', ''$\\\\frac{∂f}{∂x}$存在但不连续，函数不可微'', ''$\\\\frac{∂f}{∂x}$存在但不连续，函数可微'', ''$\\\\frac{∂f}{∂x}$不存在，函数不可微'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:20', 9, 'Mogullzr', '2026-01-29 14:20:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3128');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3128');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3128');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3129, '2024年考研数学卷2第6题', '简单', '考研数学2024年数2真题', '设$f(x, y)$是连续函数，则$\\int_{\\frac{π}{6}}^{\\frac{π}{2}}  dx \\int_{\\sin x}^{1} f(x, y)dy =$', '[''$\\\\int_{\\\\frac{1}{2}}^{1} dy \\\\int_{\\\\frac{π}{6}}^{arcsin y} f(x, y)dx$'', ''$\\\\int_{\\\\frac{1}{2}}^{1} dy \\\\int_{arcsin y}^{\\\\frac{π}{2}} f(x, y)dx$'', ''$\\\\int_{0}^{\\\\frac{1}{2}} dy \\\\int_{\\\\frac{π}{6}}^{arctan y} f(x, y)dx$'', ''$\\\\int_{0}^{\\\\frac{1}{2}} dy \\\\int_{arctan y}^{\\\\frac{π}{2}} f(x, y)dx$'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:20:20', 9, 'Mogullzr', '2026-01-29 14:20:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3129');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3129');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '3129');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3130, '2024年考研数学卷2第7题', '简单', '考研数学2024年数2真题', '设非负函数$f(x)$在$\\lbrack 0, +∞)$上连续，给定以下三个命题：(1) 若$\\int_{0}^{+∞} f^{2}(x) dx$收敛，则$\\int_{0}^{+∞} f(x) dx$收敛；(2) 若存在$p > 1$，使极限$\\lim_{x→+∞} x^{p}f(x)$存在，则$\\int_{0}^{+∞} f(x) dx$收敛；(3) 若$\\int_{0}^{+∞} f(x) dx$收敛，则存在$p > 1$，使极限$\\lim_{x→+∞} x^{p}f(x)$存在；其中正确的个数是 ( )', '[''$0$'', ''$1$'', ''$2$'', ''$3$'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:20', 9, 'Mogullzr', '2026-01-29 14:20:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3130');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3130');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3130');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3131, '2024年考研数学卷2第8题', '简单', '考研数学2024年数2真题', '设$P = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，若$P^{T}AP^{2} = \\left( \\begin{array}{ccc}
a + 2c & 0 & c \\\\
0 & b & 0 \\\\
2c & 0 & c \\\\
\\end{array} \\right)$，则$A =$', '[''$\\\\left( \\\\begin{array}{ccc}\\nc & 0 & 0 \\\\\\\\\\n0 & a & 0 \\\\\\\\\\n0 & 0 & b \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\nb & 0 & 0 \\\\\\\\\\n0 & c & 0 \\\\\\\\\\n0 & 0 & a \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\na & 0 & 0 \\\\\\\\\\n0 & b & 0 \\\\\\\\\\n0 & 0 & c \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\nc & 0 & 0 \\\\\\\\\\n0 & b & 0 \\\\\\\\\\n0 & 0 & a \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['C']", '由于$P^{T}AP^{2} = \\left( \\begin{array}{ccc}
a + 2c & 0 & c \\\\
0 & b & 0 \\\\
2c & 0 & c \\\\
\\end{array} \\right)$，所以
$$
A = (P^{T})−1 \\left( \\begin{array}{ccc}
a + 2c & 0 & c \\\\
0 & b & 0 \\\\
2c & 0 & c \\\\
\\end{array} \\right) (P^{2})−1
$$
代入矩阵得：
$$
A = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
a + 2c & 0 & c \\\\
0 & b & 0 \\\\
2c & 0 & c \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
a & 0 & 0 \\\\
0 & b & 0 \\\\
0 & 0 & c \\\\
\\end{array} \\right)
$$
因此，正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:20:21', 9, 'Mogullzr', '2026-01-29 14:20:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3131');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3131');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3131');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3132, '2024年考研数学卷2第9题', '简单', '考研数学2024年数2真题', '设$A$为$4$阶矩阵，$A^{∗}$为$A$的伴随矩阵，若$A(A - A^{∗}) = O$，且$A \\neq A^{∗}$，则$r(A)$的取值为 (　　)', '[''$0$或$1$'', ''$1$或$3$'', ''$2$或$3$'', ''$1$或$2$'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:20:21', 9, 'Mogullzr', '2026-01-29 14:20:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3132');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3132');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3132');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3133, '2024年考研数学卷2第10题', '简单', '考研数学2024年数2真题', '设$A$，$B$均为2阶矩阵，且$AB = BA$，则 “$A$有两个不相等的特征值”是“$B$可对角化” 的 ()', '[''充要条件'', ''充分不必要条件'', ''必要不充分条件'', ''既不充分也不必要条件'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:20:21', 9, 'Mogullzr', '2026-01-29 14:20:21', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3133');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3133');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3134, '2024年考研数学卷2第11题', '简单', '考研数学2024年数2真题', '（填空题）曲线$y^{2} = x$在点$(0, 0)$处的曲率圆方程为', '[]', '$(x - \\frac{1}{2})^{2} + y^{2} = \\frac{1}{4}$
', '将曲线看作函数$x = y^{2}$，那么曲线在点$(0, 0)$处的曲率为

$$
K = \\frac{∣x^{′′}(y)∣}{ \\lbrack 1 + (x^{′}(y))^{2} \\rbrack ^{\\frac{3}{2}}}​_{y=0} = \\frac{2}{(1 + 4y^{2})^{\\frac{3}{2}}}​_{y=0} = 2,
$$

于是该点处的曲率半径为$R = \\frac{1}{K} = \\frac{1}{2}$。由于曲线在$(0, 0)$处与$y$轴相切，曲率中心位于切线的法线上。在该点处，法线方向沿$x$轴正向，因此曲率中心为$(\\frac{1}{2}, 0)$，曲率圆的方程为

$$
(x - \\frac{1}{2})^{2} + y^{2} = \\frac{1}{4}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:21', 9, 'Mogullzr', '2026-01-29 14:20:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3134');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3134');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '3134');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3135, '2024年考研数学卷2第12题', '简单', '考研数学2024年数2真题', '（填空题）函数$f(x, y) = 2x^{3} - 9x^{2} - 6y^{4} + 12x + 24y$的极值点为', '[]', '(1,1)
', '函数$f(x, y) = 2x^{3} - 9x^{2} - 6y^{4} + 12x + 24y$的极值点为
$f_{x}^{′} = 6x^{2} - 18x + 12 = 0 ⇒ (x, y) = (1, 1)$或位小且

$$
f_{xx}^{′′} = 12x - 18, f_{xy}^{′′} = 0, f_{yy}^{′′} = −72y^{2}
$$

当$(x, y) = (1, 1)$时,$A = f_{xx}^{′′}(1, 1) = −6$$B = f_{xy}^{′′}(1, 1) = 0$,$f_{yy}^{′′}(1, 1) = −72$,此时$AC - B^{2} > 0$,所以(1,1)是 极值点.
当$(x, y) = (2, 1)$时,$A = f_{xx}^{′′}(2, 1) = 6$,$B = f_{xy}^{′′}(2, 1) = 0$$f_{yy}^{′′}(2, 1) = −72$,那么$AC - B^{2} < 0$,所以(2.1)不是 极值点.
', 9, 'Mogullzr', '2026-01-29 14:20:21', 9, 'Mogullzr', '2026-01-29 14:20:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3135');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3135');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '3135');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3136, '2024年考研数学卷2第13题', '简单', '考研数学2024年数2真题', '（填空题）微分方程$y^{′} = \\frac{1}{(x+y)2}$满足初始条件$y(1) = 0$的解为', '[]', '$y = arctan(x + y) - \\frac{π}{4}$
', '
令$u = x + y$，则$y = u - x$，两边对$x$求导得$y^{′} = u^{′} - 1$。
代入原方程得：

$$
u^{′} - 1 = \\frac{1}{u^{2}}
$$

整理得：

$$
\\frac{du}{dx} = 1 + \\frac{1}{u^{2}} = \\frac{u^{2} + 1}{u^{2}}
$$

分离变量得：

$$
\\frac{u^{2}}{u^{2} + 1} du = dx
$$

两边积分：

$$
∫ \\frac{u^{2}}{u^{2} + 1} du = ∫ dx
$$

左边可化为：

$$
∫ (1 - \\frac{1}{u^{2} + 1}) du = u - arctan u
$$

因此：

$$
u - arctan u = x + C
$$

代回$u = x + y$得：

$$
x + y - arctan(x + y) = x + C
$$

化简得：

$$
y = arctan(x + y) - C
$$

由初始条件$y(1) = 0$，代入得：

$$
0 = arctan(1 + 0) - C = arctan 1 - C = \\frac{π}{4} - C
$$

解得$C = \\frac{π}{4}$。
因此原方程的解为：

$$
y = arctan(x + y) - \\frac{π}{4}
$$

或写作隐式形式：

$$
y = arctan(x + y) - \\frac{π}{4}​
$$

', 9, 'Mogullzr', '2026-01-29 14:20:21', 9, 'Mogullzr', '2026-01-29 14:20:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3136');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3136');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '3136');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3137, '2024年考研数学卷2第14题', '简单', '考研数学2024年数2真题', '（填空题）已知函数$f(x) = x^{2}(e^{x} - 1)$,则$f^{(5)}(1) =$', '[]', '31e
', '由莱布尼茨公式容易得到

$$
f^{(5)}(x) = (e^{x} + 1)^{5} x^{2} + 5 (e^{n} + 1)^{(4)} ⋅ 2x + 10 (e^{x} + 1)^{(3)} ⋅ 2 = (x^{2} + 10x + 20) e^{x},
$$

于是$f^{(5)}(1) = 31e$
', 9, 'Mogullzr', '2026-01-29 14:20:22', 9, 'Mogullzr', '2026-01-29 14:20:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3137');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3137');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3137');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3138, '2024年考研数学卷2第15题', '简单', '考研数学2024年数2真题', '（填空题）某物体以速度$v(t) = t + k \\sin πt$做直线运动,若它从$t = 0$到$t = 3$的时间段内平均速度是$\\frac{5}{2}$则 k=', '[]', '$\\frac{3π}{2}$
', '由函数的平均值公式可得

$$
\\frac{\\int_{0}^{3} t + k \\sin πt dt}{3} = \\frac{5}{2}
$$

解得

$$
k = \\frac{3π}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:22', 9, 'Mogullzr', '2026-01-29 14:20:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3138');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3138');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3138');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3139, '2024年考研数学卷2第16题', '简单', '考研数学2024年数2真题', '（填空题）设向量$α_{1} = \\left( \\begin{array}{c}
a \\\\
1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，$α_{2} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
b \\\\
a \\\\
\\end{array} \\right)$，$α_{3} = \\left( \\begin{array}{c}
1 \\\\
a \\\\
−1 \\\\
1 \\\\
\\end{array} \\right)$，若$α_{1}$，$α_{2}$，$α_{3}$线性相关，且其中任意两个向量均线性无关，则$ab =   ​$。', '[]', '-4
', '首先由$α_{1}$、$α_{3}$线性无关可知$a \\neq 1$。对向量组$(α_{1}, α_{2}, α_{3})$进行初等行变换可得：

$$
\\begin{array}{ccccccccccccccccc}
(α_{1}, α_{2}, α_{3}) & \\begin{array}{ccc}
a & 1 & 1 \\\\
1 & 1 & a \\\\
−1 & b & −1 \\\\
1 & a & 1 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & a & 1 & 1 & 1 & 1 & a & 1 & 1 & a & 1 & 1 & a & 1 & 1 & a \\\\
 &  & 1 & 1 & a & 1 & a & 1 & 0 & a - 1 & 1 - a & 0 & 1 & −1 & 0 & 1 & −1 - a \\\\
 &  & −1 & b & −1 & −1 & b & −1 & 0 & b + 1 & a - 1 & 0 & b + 1 & a - 1 & 0 & 0 & a + b \\\\
 & \\begin{array}{ccc}
1 & 1 & a \\\\
0 & 1 & −1 \\\\
0 & b + 1 & a - 1 \\\\
0 & 1 & 1 + a \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & a & 1 & a & 1 & 1 & 0 & 1 - a & 1 - a^{2} & 0 & 1 & 1 + a & 0 & 0 & a + 2 \\\\
\\end{array}
$$

由条件有$r(α_{1}, α_{2}, α_{3}) = 2$，于是$a + 2 = 0$，$a + b = 0$，即$a = −2$，$b = 2$。
此时$α_{1}$、$α_{2}$、$α_{3}$两两线性无关，于是$ab = −4$。
', 9, 'Mogullzr', '2026-01-29 14:20:22', 9, 'Mogullzr', '2026-01-29 14:20:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3139');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3139');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '3139');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3140, '2024年考研数学卷2第17题', '简单', '考研数学2024年数2真题', '(本题满分 10 分)设平面有界区域$D$位于第一象限，由曲线$xy = \\frac{1}{3}, xy = 3$与直线$y = \\frac{1}{3}x, y = 3x$围成，计算$\\iint_{D}(1 + x - y)dxdy$。', '[]', '$\\frac{8}{3} \\ln 3$
', '设平面有界区域$D$位于第一象限，由曲线$xy = \\frac{1}{3}, xy = 3$与直线$y = \\frac{1}{3}x, y = 3x$围成，计算$\\iint_{D}(1 + x - y)dxdy$。
', 9, 'Mogullzr', '2026-01-29 14:20:22', 9, 'Mogullzr', '2026-01-29 14:20:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3140');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3140');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3140');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3141, '2024年考研数学卷2第18题', '简单', '考研数学2024年数2真题', '（本题满分 12 分）设$y = y(x)$满足方程$x^{2}y^{′′} + xy^{′} - 9y = 0$，且$y∣_{x=1} = 2$，$y^{′}∣_{x=1} = 6$。(1) 利用变换$x = e^{t}$化简方程，并求$y(x)$的表达式；(2) 求$\\int_{1}^{2} y(x)\\sqrt{4 - x^{2}}dx$。', '[]', '
(1)$y = 2x^{3}$
(2)$\\frac{22}{5}\\sqrt{3}$
', '
', 9, 'Mogullzr', '2026-01-29 14:20:22', 9, 'Mogullzr', '2026-01-29 14:20:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3141');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3141');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '3141');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3142, '2024年考研数学卷2第19题', '简单', '考研数学2024年数2真题', '(本题满分12分)设$t > 0$，求曲线$y = \\sqrt{x}e^{−x}$与直线$x = t$，$x = 2t$及$x$轴所围平面图形，绕$x$轴旋转所得的旋转体体积为$V(t)$，求$V(t)$的最大值。', '[]', '$V(t)$的最大值为$(\\frac{\\ln 2}{16} + \\frac{3}{64}) π$
', '由题意可知$V(t) = π \\int_{t}^{2t} xe^{−2x}dx$，那么

$$
V^{′}(t) = 4πte^{−4t} - πte^{−2t} = πte^{−2t}(4e^{−2t} - 1) \\begin{cases} > 0 & 0 < t < \\ln 2 \\\\ < 0 & t > \\ln 2 \\end{cases}
$$

这说明$V(t)$在$(0, \\ln 2 \\rbrack$上单调递增，在$\\lbrack \\ln 2, +∞)$上单调递减，所以$V(t)$的最大值为

$$
V(\\ln 2) = π \\int_{\\ln 2}^{2 \\ln 2} xe^{−2x}dx = (\\frac{\\ln 2}{16} + \\frac{3}{64}) π
$$

', 9, 'Mogullzr', '2026-01-29 14:20:22', 9, 'Mogullzr', '2026-01-29 14:20:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3142');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3142');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3142');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3143, '2024年考研数学卷2第20题', '简单', '考研数学2024年数2真题', '（本题满分 12 分）设$f(u, v)$具有二阶连续偏导，$g(x, y) = f(2x + y, 3x - y)$，且满足
$$
\\frac{∂^{2}g}{∂x^{2}} + \\frac{∂^{2}g}{∂x∂y} - 6\\frac{∂^{2}g}{∂y^{2}} = 1
$$
(1) 求$\\frac{∂^{2}f}{∂u∂v}$；(2) 若$\\frac{∂f(u,0)}{∂u} = ue^{−u}$，且$f(0, v) = \\frac{1}{50}v^{2} - 1$，求$f(u, v)$的表达式。', '[]', '
(1)$\\frac{∂^{2}f}{∂u∂v} = \\frac{1}{25}$
(2)$f(u, v) = \\frac{1}{25}uv - e^{−u}(u + 1) + \\frac{1}{50}v^{2}$
', '
', 9, 'Mogullzr', '2026-01-29 14:20:23', 9, 'Mogullzr', '2026-01-29 14:20:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3143');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3143');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3143');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3144, '2024年考研数学卷2第21题', '简单', '考研数学2024年数2真题', '(本题满分12分)设函数$f(x)$具有二阶导数,且$f^{′}(0) = f^{′}(1)$$∣f^{′′}(x)∣ ≤ 1$证明:(1)当$x ∈ (0, 1)$时,$∣f(x) - f(0)(1 - x) - f(1)x∣ ≤ \\frac{x(1-x)}{2}$
$$
(2) ​\\int_{0}^{1} f(x)dx - \\frac{f(0) + f(1)}{2}​ ≤ \\frac{1}{12}
$$
', '[]', '见解析
', '证(1)令$g(x) = f(x) - f(0)(1 - x) - f(1)x - \\frac{x(1-x)}{2}, x ∈  \\lbrack 0, 1 \\rbrack$,那么$g(0) = g(1) = 0$且

$$
g^{′}(x) = f^{′}(x) + f(0) - f(1) - \\frac{1}{2} + x, g^{′′}(x) = f^{′′}(x) + 1 ≥ 0,
$$

如果存在$x_{0} ∈ (0, 1)$,使得$g(x_{0}) > 0$,那么由拉格朗日中值定理可知,存在$ξ_{1} ∈ (0, x_{0})$,$ξ_{2} ∈ (x_{0}, 1)$,使得

$$
g^{′} (ξ_{1}) = \\frac{g (x_{0}) - f(0)}{x_{0}} > 0, g^{′} (ξ_{2}) = \\frac{g(1) - g (x_{0})}{1 - x_{0}} < 0,
$$

进一步存在$ξ ∈ (ξ_{1}, ξ_{2})$使得$g^{′′}(ξ) = \\frac{g^{′}(ξ_{2})-g^{′}(ξ_{1})}{ξ_{2}-ξ_{1}} < 0$矛盾,因此对任意$x ∈ (0, 1)$都有$g(x)0$即

$$
f(x) - f(0)(1 - x) - f(1)x ≤ \\frac{x(1 - x)}{2}
$$

同理还有

$$
f(x) - f(0)(1 - x) - f(1)x ≥ −\\frac{x(1 - x)}{2},
$$

综合起来即

$$
∣f(x) - f(0)(1 - x) - f(1)x∣ ≤ \\frac{x(1 - x)}{2}, x ∈  \\lbrack 0, 1 \\rbrack
$$

(2)将不等式

$$
−\\frac{x(1 - x)}{2} ≤ f(x) - f(0)(1 - x) - f(1)x ≤ \\frac{x(1 - x)}{2}
$$

在[0.上积分,注意到$\\int_{0}^{1} \\frac{x(1-x)}{2} dx = \\frac{1}{12}$,且

$$
\\int_{0}^{1} \\lbrack f(x) - f(0)(1 - x) - f(1)x \\rbrack dx = \\int_{0}^{1} f(x)dx - \\frac{f(0) + f(1)}{2},
$$

于是

$$
−\\frac{1}{12} ≤ \\int_{0}^{1} f(x)dx - \\frac{f(0) + f(1)}{2} ≤ \\frac{1}{12},
$$

即

$$
​\\int_{0}^{1} f(x)dx - \\frac{f(0) + f(1)}{2}​ ≤ \\frac{1}{12}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:23', 9, 'Mogullzr', '2026-01-29 14:20:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3144');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3144');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3144');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3145, '2024年考研数学卷2第22题', '简单', '考研数学2024年数2真题', '（本题满分 12 分）设矩阵$A = \\left( \\begin{array}{ccc}
0 & 1 & a \\\\
1 & 0 & 1 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}
1 & 1 \\\\
1 & 1 \\\\
b & 2 \\\\
\\end{array} \\right)$，$f(x_{1}, x_{2}, x_{3}) = x^{T}BAx$，已知方程组$Ax = 0$的解是$B^{T}x = 0$的解，但两个方程组不同解。(1) 求$a, b$的值；(2) 求正交矩阵$x = Qy$将$f(x_{1}, x_{2}, x_{3})$化为标准形。', '[]', '
(1)$a = 1$,$b = 2$.
(2) 正交矩阵$Q = \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{6}} \\\\
−\\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{6}} \\\\
0 & −\\frac{1}{\\sqrt{3}} & \\frac{2}{\\sqrt{6}} \\\\
\\end{array} \\right)$，将二次型$f(x_{1}, x_{2}, x_{3})$化为标准形$6y_{3}^{2}$.
', '
', 9, 'Mogullzr', '2026-01-29 14:20:23', 9, 'Mogullzr', '2026-01-29 14:20:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3145');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3145');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3146, '2024年考研数学卷3第1题', '简单', '考研数学2024年数3真题', '已知函数$f(x) = \\lim_{n→∞} \\frac{1+x}{1+nx^{2n}}$，则$f(x)$在$x = −1$处和$x = 1$处的连续性为（　　）', '[''在$x = 1$,$x = −1$处都连续'', ''在$x = 1$,处连续$, x = −1$处不连续'', ''在$x = 1$,$x = −1$处都不连续'', ''在$x = 1$处不连续,$x = −1$处连续'']', "['D']", '
$$
f(x) = \\begin{cases} x + 1 & ∣x∣ < 1 \\\\ 0 & 其他 \\end{cases}
$$
由于

$$
\\lim_{x→1^{-}} f(x) = 2,  \\lim_{x→1^{+}} f(x) = 0,
$$
所以在$x = 1$处不连续。
$$
\\lim_{x→−1^{-}} f(x) = 0,  \\lim_{x→−1^{+}} f(x) = 0,
$$
所以在$x = −1$处连续。故选 (D)。', 9, 'Mogullzr', '2026-01-29 14:20:25', 9, 'Mogullzr', '2026-01-29 14:20:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3146');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3146');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '3146');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3147, '2024年考研数学卷3第2题', '简单', '考研数学2024年数3真题', '设$I = \\int_{a}^{a+kπ} ∣ \\sin x∣ dx$，其中$k$为整数。则$I$的值（ ）。', '[''只与 a 有关'', ''只与 k 有关'', ''与$a, k$均有关'', ''与$a, k$均无关'']', "['B']", '由于$∣ \\sin x∣$是周期为$2π$的周期函数，因此
$$
I = \\int_{a}^{a+kπ} ∣ \\sin x∣ dx = \\int_{0}^{kπ} ∣ \\sin x∣ dx = k \\int_{0}^{π} \\sin x dx = 2k,
$$
故选 B。', 9, 'Mogullzr', '2026-01-29 14:20:25', 9, 'Mogullzr', '2026-01-29 14:20:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3147');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3147');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '3147');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3148, '2024年考研数学卷3第3题', '简单', '考研数学2024年数3真题', '设$f(x, y)$是连续函数，则

$$
\\int_{\\frac{π}{6}}^{\\frac{π}{2}}  dx \\int_{\\sin x}^{1} f(x, y) dy =
$$
', '[''$\\\\int_{\\\\frac{1}{2}}^{1} dy \\\\int_{\\\\frac{π}{6}}^{arcsiny} f(x, y)dx$'', ''$\\\\int_{\\\\frac{1}{2}}^{1} dy \\\\int_{arcsiny}^{\\\\frac{π}{2}} f(x, y)dx$'', ''$\\\\int_{0}^{\\\\frac{1}{2}} dy \\\\int_{\\\\frac{π}{6}}^{arcsiny} f(x, y)dx$'', ''$\\\\int_{0}^{\\\\frac{1}{2}} dy \\\\int_{arcsiny}^{\\\\frac{π}{2}} f(x, y)dx$'']', "['A']", '
原积分区域为

$$
D = \\{(x, y) ​ \\frac{π}{6} ≤ x ≤ \\frac{π}{2},  \\sin x ≤ y ≤ 1\\} .
$$
将其改写为$y$型区域：

$$
D = \\{(x, y) ​ \\frac{1}{2} ≤ y ≤ 1,  \\frac{π}{6} ≤ x ≤ arcsin y\\} .
$$
因此

$$
\\int_{\\frac{π}{6}}^{\\frac{π}{2}} dx \\int_{\\sin x}^{1} f(x, y) dy = \\int_{\\frac{1}{2}}^{1} dy \\int_{\\frac{π}{6}}^{arcsin y} f(x, y) dx.
$$
故选 A。', 9, 'Mogullzr', '2026-01-29 14:20:26', 9, 'Mogullzr', '2026-01-29 14:20:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3148');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3148');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '3148');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3149, '2024年考研数学卷3第4题', '简单', '考研数学2024年数3真题', '已知幂级数$\\sum_{n=0}^{∞} a_{n}x^{n}$的和函数为$\\ln(2 + x)$，则$\\sum_{n=0}^{∞} na_{2n} =$( )', '[''$−\\\\frac{1}{6}$'', ''$−\\\\frac{1}{3}$'', ''$\\\\frac{1}{6}$'', ''$\\\\frac{1}{3}$'']', "['A']", '将$\\ln(2 + x)$展开可得
$$
\\ln(2 + x) = \\ln 2 + \\ln (1 + \\frac{x}{2}) = \\ln 2 + \\sum_{n=1}^{∞} \\frac{(−1)n−1}{n} (\\frac{x}{2})^{n}
$$
于是$a_{0} = \\ln 2$，$a_{n} = \\frac{(−1)n−1}{2^{n}n}$，所以
$$
\\sum_{n=0}^{∞} na_{2n} = − \\sum_{n=1}^{∞} \\frac{1}{2^{2n+1}} = −\\frac{1}{6}
$$
选 A。', 9, 'Mogullzr', '2026-01-29 14:20:26', 9, 'Mogullzr', '2026-01-29 14:20:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3149');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3149');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '3149');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3150, '2024年考研数学卷3第5题', '简单', '考研数学2024年数3真题', '设二次型在正交变换下的标准型为$f(x_{1}, x_{2}, x_{3}) = y_{1}^{2} - 2y_{2}^{2} + 3y_{3}^{2}$，则二次型$f$的矩阵$A$的行列式与迹分别为（ ）', '[''$−6, −2$'', ''$6, −2$'', ''$−6, 2$'', ''$6, 2$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:26', 9, 'Mogullzr', '2026-01-29 14:20:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3150');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3150');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3151, '2024年考研数学卷3第6题', '简单', '考研数学2024年数3真题', '设矩阵$P = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，且$P^{T}AP = \\left( \\begin{array}{ccc}
a + 2c & 0 & c \\\\
0 & b & 0 \\\\
2c & 0 & c \\\\
\\end{array} \\right)$，则矩阵$A$为（ ）', '[''$\\\\left( \\\\begin{array}{ccc}\\nc & 0 & 0 \\\\\\\\\\n0 & a & 0 \\\\\\\\\\n0 & 0 & b \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\nb & 0 & 0 \\\\\\\\\\n0 & c & 0 \\\\\\\\\\n0 & 0 & a \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\na & 0 & 0 \\\\\\\\\\n0 & b & 0 \\\\\\\\\\n0 & 0 & c \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\nc & 0 & 0 \\\\\\\\\\n0 & b & 0 \\\\\\\\\\n0 & 0 & a \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:20:26', 9, 'Mogullzr', '2026-01-29 14:20:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3151');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3151');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3151');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3152, '2024年考研数学卷3第7题', '简单', '考研数学2024年数3真题', '设矩阵$A = \\left( \\begin{array}{ccc}
a + 1 & b & 3 \\\\
a & \\frac{b}{2} & 1 \\\\
1 & 1 & 2 \\\\
\\end{array} \\right)$，$M_{ij}$为$A$的代数余子式，且$∣A∣ = −\\frac{1}{2}$，$−M_{21} + M_{22} - M_{23} = 0$，则（ ）', '[''$a = 0$或$a = −\\\\frac{3}{2}$'', ''$a = 0$或$a = \\\\frac{3}{2}$'', ''$b = 1$或$b = −\\\\frac{1}{2}$'', ''$b = −1$或$b = \\\\frac{1}{2}$'']', "['B']", '由$−M_{21} + M_{22} - M_{23} = 0$可得
$$
\\begin{vmatrix}
a + 1 & b & 3\\\\
1 & 1 & 1\\\\
1 & 1 & 2
\\end{vmatrix} = a - b + 1 = 0
$$
因此
$$
∣A∣ = \\left( \\begin{array}{ccc}
a + 1 & a + 1 & 3 \\\\
a & \\frac{a+1}{2} & 1 \\\\
1 & 1 & 2 \\\\
\\end{array} \\right) = \\frac{(1 - a)(2a - 1)}{2} = −\\frac{1}{2}
$$
解得$a = 0$或$a = \\frac{3}{2}$。选 B。', 9, 'Mogullzr', '2026-01-29 14:20:26', 9, 'Mogullzr', '2026-01-29 14:20:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3152');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3152');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3152');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3153, '2024年考研数学卷3第8题', '简单', '考研数学2024年数3真题', '设随机变量$X$的概率密度为

$$
f(x) = \\begin{cases} 6x(1 - x) & 0 < x < 1 \\\\ 0 & 其他 \\end{cases}
$$
则

$$
E(X - EX)3 = ()
$$
', '[''$−\\\\frac{1}{32}$'', ''$0$'', ''$\\\\frac{1}{16}$'', ''$\\\\frac{1}{2}$'']', "['B']", '
$EX = \\int_{0}^{1} x ⋅ 6x(1 - x) dx = \\frac{1}{2}$，
则

$$
E(X - EX)3 = \\int_{0}^{1} (x - \\frac{1}{2})^{3} ⋅ 6x(1 - x) dx = 0,
$$
选 B。', 9, 'Mogullzr', '2026-01-29 14:20:26', 9, 'Mogullzr', '2026-01-29 14:20:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3153');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3153');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '3153');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3154, '2024年考研数学卷3第9题', '简单', '考研数学2024年数3真题', '设随机变量$X$、$Y$相互独立，$X ∼ N(0, 2)$，$Y ∼ N(−1, 1)$，设$p_{1} = P\\{2X > Y\\}$，$p_{2} = P\\{X - 2Y > 1\\}$，则（ ）', '[''$p_{1} > p_{2} > \\\\frac{1}{2}$'', ''$p_{2} > p_{1} > \\\\frac{1}{2}$'', ''$p_{1} < p_{2} < \\\\frac{1}{2}$'', ''$p_{2} > p_{1} < \\\\frac{1}{2}$'']', "['B']", '

$$
\\begin{array}{cc}
p_{1} & = P(2X > Y) = P(Y - 2X < 0) \\\\
 & = P (\\frac{Y - 2X + 1}{3} < \\frac{1}{3}) = Φ (\\frac{1}{3}) , \\\\
p_{2} & = P(X - 2Y > 1) = P (\\frac{X - 2Y - 2}{\\sqrt{6}} > −\\frac{1}{\\sqrt{6}}) \\\\
\\end{array}
$$
于是$p_{2} > p_{1} > \\frac{1}{2}$，选 B。', 9, 'Mogullzr', '2026-01-29 14:20:27', 9, 'Mogullzr', '2026-01-29 14:20:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3154');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3154');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3155, '2024年考研数学卷3第10题', '简单', '考研数学2024年数3真题', '设随机变量$X$、$Y$相互独立，且均服从参数为$λ$的指数分布，令$Z = ∣X - Y∣$，则下列随机变量与$Z$同分布的是（　　）', '[''$X + Y$'', ''$\\\\frac{X+Y}{2}$'', ''$2X$'', ''$X$'']', "['D']", '先求$Z$的分布函数$F_{Z}(z)$。当$z ≤ 0$时，显然$F_{Z}(z) = 0$。当$z > 0$时，
$$
\\begin{array}{cc}
F_{Z}(z) & = P(Z ≤ z) = P(∣X - Y∣ ≤ z) = 1 - P(∣X - Y∣ > z) \\\\
 & = 1 - 2 \\int_{z}^{+∞} dx \\int_{0}^{x-z} λe^{−λx} ⋅ λe^{−λy} dy \\\\
 & = 1 - 2 \\int_{z}^{+∞} λe^{−λx} (1 - e^{λz-λx}) dx = 1 - e^{−λz}, \\\\
\\end{array}
$$
这说明$Z$服从参数为$λ$的指数分布，选 D。', 9, 'Mogullzr', '2026-01-29 14:20:27', 9, 'Mogullzr', '2026-01-29 14:20:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3155');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3155');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '3155');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3156, '2024年考研数学卷3第11题', '简单', '考研数学2024年数3真题', '（填空题）当$x → 0$时，$\\int_{0}^{x} \\frac{(1+t^{2}) \\sin t^{2}}{1+\\cos^{2} t} dt$与$x^{k}$是同阶无穷小，则$k =  ​$。', '[]', '3
', '当$x → 0$时，


$$
\\int_{0}^{x} \\frac{(1 + t^{2}) \\sin t^{2}}{1 + \\cos t^{2}}dt ∼ \\int_{0}^{x} \\frac{t^{2}}{2}dt = \\frac{x^{3}}{6}.
$$

因此，$k = 3$。
', 9, 'Mogullzr', '2026-01-29 14:20:27', 9, 'Mogullzr', '2026-01-29 14:20:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3156');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3156');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3156');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3157, '2024年考研数学卷3第12题', '简单', '考研数学2024年数3真题', '（填空题）

$$
\\int_{2}^{+∞} \\frac{5}{x^{4} + 3x^{2} - 4} dx =
$$
', '[]', '$\\frac{\\ln 3}{2} - \\frac{π}{8}$
', '

$$
\\frac{5}{x^{4} + 3x^{2} - 4} = \\frac{5}{(x^{2} - 1)(x^{2} + 4)} = \\frac{1}{x^{2} - 1} - \\frac{1}{x^{2} + 4} = \\frac{1}{2(x - 1)} - \\frac{1}{2(x + 1)} - \\frac{1}{x^{2} + 4}
$$

于是

$$
\\begin{array}{cc}
\\int_{2}^{+∞} \\frac{5}{x^{4} + 3x^{2} - 4} dx & = \\int_{2}^{+∞} (\\frac{1}{2(x - 1)} - \\frac{1}{2(x + 1)} - \\frac{1}{x^{2} + 4})  dx \\\\
 & = (\\frac{1}{2} \\ln \\frac{x - 1}{x + 1} - \\frac{1}{2} arctan \\frac{x}{2})​_{2}^{+∞} = \\frac{\\ln 3}{2} - \\frac{π}{8}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:27', 9, 'Mogullzr', '2026-01-29 14:20:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3157');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3157');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3157');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3158, '2024年考研数学卷3第13题', '简单', '考研数学2024年数3真题', '（填空题）函数$f(x, y) = 2x^{3} - 9x^{2} - 6y^{4} + 12x + 24y$的极值点为', '[]', '(1,1)
', '由

$$
\\begin{cases} f_{x}^{′} = 6x^{2} - 18x + 12 = 0 \\\\ f_{y}^{′} = −24y^{3} + 24 = 0 \\end{cases}
$$

解得$(x, y) = (1, 1)$或$(2, 1)$。
进一步计算二阶偏导数：

$$
f_{xx}^{′′} = 12x - 18,  f_{xy}^{′′} = 0,  f_{yy}^{′′} = −72y^{2}.
$$

当$(x, y) = (1, 1)$时：

$$
A = f_{xx}^{′′}(1, 1) = −6,  B = f_{xy}^{′′}(1, 1) = 0,  C = f_{yy}^{′′}(1, 1) = −72,
$$

此时$AC - B^{2} > 0$，因此$(1, 1)$是极值点。
当$(x, y) = (2, 1)$时：

$$
A = f_{xx}^{′′}(2, 1) = 6,  B = f_{xy}^{′′}(2, 1) = 0,  C = f_{yy}^{′′}(2, 1) = −72,
$$

此时$AC - B^{2} < 0$，因此$(2, 1)$不是极值点。
', 9, 'Mogullzr', '2026-01-29 14:20:27', 9, 'Mogullzr', '2026-01-29 14:20:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3158');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3158');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '3158');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3159, '2024年考研数学卷3第14题', '简单', '考研数学2024年数3真题', '（填空题）设某产品的价格函数为

$$
p = \\begin{cases} 25 - 0.25Q & Q ≤ 20 \\\\ 35 - 0.75Q & Q > 20 \\end{cases}
$$
其中$P$为价格，$Q$为销量，成本函数为$C = 150 + 5Q + 0.25Q^{2}$，求经营该产品可获得的最大利润为 ______。', '[]', '50
', '利润函数为：

$$
L(Q) = pQ - C = \\begin{cases} −0.5Q^{2} + 20Q - 150 & Q ≤ 20 \\\\ −Q^{2} + 30Q - 150 & Q > 20 \\end{cases}
$$

$L(Q)$是连续函数。其一阶导数为：

$$
L^{′}(Q) = \\begin{cases} −Q + 20 > 0 & Q < 20 \\\\ −2Q + 30 < 0 & Q > 20 \\end{cases}
$$

因此，$L(Q)$在$Q = 20$处取得最大值，最大利润为：

$$
L(20) = 50
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3159');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3159');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3159');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3160, '2024年考研数学卷3第15题', '简单', '考研数学2024年数3真题', '（填空题）设$A$为 3 阶矩阵，$A^{∗}$为$A$的伴随矩阵。若$r(2E - A) = 1$，$r(A + E) = 2$，求$∣A^{∗}∣ =$', '[]', '16
', '由于$r(2E - A) = 1$，$r(E + A) = 2$，可知 2 至少为$A$的二重特征值，而$−1$也是$A$的特征值。
因此$A$的特征值为$2, 2, −1$，于是可得：

$$
∣A∣ = −4,  ∣A^{∗}∣ = ∣A∣^{2} = 16
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3160');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3160');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3160');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3161, '2024年考研数学卷3第16题', '简单', '考研数学2024年数3真题', '（填空题）设事件$A$每次成功的概率为$P$，在三次独立重复试验中，在事件$A$至少成功 1 次的条件下，3 次试验全部成功的概率为$\\frac{4}{13}$，则$P =$', '[]', '$p = \\frac{2}{3}$
', '设在3次试验中，$B$表示事件$A$至少成功1次，$C$表示事件$A$成功3次，则

$$
\\frac{4}{13} = P(C ∣ B) = \\frac{P(C)}{P(B)} = \\frac{P(C)}{1 - P(\\overline{B})} = \\frac{p^{3}}{1 - (1 - p)3} ⇒ p = \\frac{2}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3161');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '3161');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3162, '2024年考研数学卷3第17题', '简单', '考研数学2024年数3真题', '（本题满分 10 分）设平面有界区域$D$位于第一象限，由曲线$xy = \\frac{1}{3}$、$xy = 3$与直线$y = \\frac{1}{3}x$、$y = 3x$围成，计算

$$
\\iint_{D}(1 + x - y) dx dy.
$$
', '[]', '$\\frac{8}{3} \\ln 3$
', '设平面有界区域$D$位于第一象限，由曲线$xy = \\frac{1}{3}$、$xy = 3$与直线$y = \\frac{1}{3}x$、$y = 3x$围成，计算


$$
\\iint_{D}(1 + x - y) dx dy.
$$

积分区域关于直线$y = x$对称，由轮换对称性有

$$
\\iint_{D} xdxdy = \\iint_{D} ydxdy,
$$

于是

$$
\\begin{array}{cc}
\\iint_{D}(1 + x - y)dxdy & = \\iint_{D} dxdy \\\\
 & = \\int_{arctan \\frac{1}{3}}^{arctan 3} dθ \\int_{\\sqrt{\\frac{1}{3 \\sin θ \\cos θ}}}^{\\sqrt{\\frac{3}{\\sin θ \\cos θ}}} rdr \\\\
 & = \\frac{1}{2} \\int_{arctan \\frac{1}{3}}^{arctan 3} (\\frac{3}{\\sin θ \\cos θ} - \\frac{1}{3 \\sin θ \\cos θ}) dθ \\\\
 & = \\frac{8}{3} \\int_{arctan \\frac{1}{3}}^{arctan 3} \\frac{1}{\\sin 2θ}dθ \\\\
 & = \\frac{8}{3} \\ln 3. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3162');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3162');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3162');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3163, '2024年考研数学卷3第18题', '简单', '考研数学2024年数3真题', '（本题满分 12 分）设函数$z = z(x, y)$由方程

$$
z + e^{x} - y \\ln(1 + z^{2}) = 0
$$
确定，求

$$
(\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}}) ​_{(0,0)}.
$$
', '[]', '$−1 - 2 \\ln 2$
', '将$(x, y) = (0, 0)$代入原方程可得$z(0, 0) = −1$。
方程两边对$x$求偏导可得

$$
z_{x}^{′} + e^{x} - y ⋅ \\frac{2zz_{x}^{′}}{1 + z^{2}} = 0 ⇒ z_{x}^{′}(0, 0) = −1
$$

上述等式两边继续对$x$求偏导可得

$$
z_{xx}^{′′} + e^{x} - y ⋅ \\frac{∂}{∂x} (\\frac{2zz_{x}^{′}}{1 + z^{2}}) = 0 ⇒ z_{xx}^{′′}(0, 0) = −1
$$

原方程两边对$y$求偏导可得

$$
z_{y}^{′} - \\ln (1 + z^{2}) - y ⋅ \\frac{2zz_{y}^{′}}{1 + z^{2}} = 0 ⇒ z_{y}^{′}(0, 0) = \\ln 2
$$

上述等式两边继续对$y$求偏导可得

$$
z_{yy}^{′′} - \\frac{2zz_{y}^{′}}{1 + z^{2}} - \\frac{2zz_{y}^{′}}{1 + z^{2}} - y ⋅ \\frac{∂}{∂y} (\\frac{2zz_{y}^{′}}{1 + z^{2}}) = 0 ⇒ z_{yy}^{′′}(0, 0) = −2 \\ln 2
$$

因此，

$$
(\\frac{∂^{2}z}{∂x^{2}} + \\frac{∂^{2}z}{∂y^{2}})​_{(0,0)} = −1 - 2 \\ln 2
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3163');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3163');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3163');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3164, '2024年考研数学卷3第19题', '简单', '考研数学2024年数3真题', '（本题满分 12 分）设$t > 0$，平面有界区域$D$由曲线$y = xe^{−2x}$与直线$x = t$、$x = 2t$及$x$轴围成，$D$的面积为$S(t)$，求$S(t)$的最大值。', '[]', '

$$
S(\\ln 2) = \\frac{\\ln 2}{16} + \\frac{3}{64}
$$

', '由题意可知$S(t) = \\int_{t}^{2t} xe^{−2x} dx$，那么

$$
S^{′}(t) = 4te^{−4t} - te^{−2t} = te^{−2t} (4e^{−2t} - 1)
$$


$$
= \\begin{cases} > 0 & 0 < t < \\ln 2 \\\\ = 0 & t = \\ln 2 \\\\ < 0 & t > \\ln 2 \\end{cases}
$$

这说明$S(t)$在$(0, \\ln 2 \\rbrack$上单调递增，在$\\lbrack \\ln 2, +∞)$上单调递减，所以$S(t)$的最大值为

$$
S(\\ln 2) = \\int_{\\ln 2}^{2 \\ln 2} xe^{−2x} dx = \\frac{\\ln 2}{16} + \\frac{3}{64}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3164');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3164');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3164');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3165, '2024年考研数学卷3第20题', '简单', '考研数学2024年数3真题', '（本题满分 12 分）设函数$f(x)$具有二阶导数，且$f^{′}(0) = f^{′}(1)$，$∣f^{′′}(x)∣ ≤ 1$，证明：(1)当$x ∈ (0, 1)$时，
$$
∣f(x) - f(0)(1 - x) - f(1)x∣ ≤ \\frac{x(1 - x)}{2}.
$$
(2)
$$
​\\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2}​ ≤ \\frac{1}{12}.
$$
', '[]', '见解析
', '(1) 令$g(x) = f(x) - f(0)(1 - x) - f(1)x - \\frac{x(1-x)}{2},  x ∈  \\lbrack 0, 1 \\rbrack$。那么$g(0) = g(1) = 0$，且

$$
g^{′}(x) = f^{′}(x) + f(0) - f(1) - \\frac{1}{2} + x,  g^{′′}(x) = f^{′′}(x) + 1 ≥ 0
$$

如果存在$x_{0} ∈ (0, 1)$，使得$g(x_{0}) > 0$，那么由拉格朗日中值定理可知，存在$ξ_{1} ∈ (0, x_{0})$，$ξ_{2} ∈ (x_{0}, 1)$，使得

$$
g^{′}(ξ_{1}) = \\frac{g(x_{0}) - g(0)}{x_{0}} > 0,  g^{′}(ξ_{2}) = \\frac{g(1) - g(x_{0})}{1 - x_{0}} < 0
$$

进一步存在$ξ ∈ (ξ_{1}, ξ_{2})$，使得

$$
g^{′′}(ξ) = \\frac{g^{′}(ξ_{2}) - g^{′}(ξ_{1})}{ξ_{2} - ξ_{1}} < 0
$$

矛盾。因此对任意$x ∈ (0, 1)$都有$g(x) ≤ 0$，即

$$
f(x) - f(0)(1 - x) - f(1)x ≤ \\frac{x(1 - x)}{2}
$$

同理还有

$$
f(x) - f(0)(1 - x) - f(1)x ≥ −\\frac{x(1 - x)}{2}
$$

综合起来即

$$
∣f(x) - f(0)(1 - x) - f(1)x∣ ≤ \\frac{x(1 - x)}{2},  x ∈  \\lbrack 0, 1 \\rbrack
$$

(2) 将不等式

$$
−\\frac{x(1 - x)}{2} ≤ f(x) - f(0)(1 - x) - f(1)x ≤ \\frac{x(1 - x)}{2}
$$

在$\\lbrack 0, 1 \\rbrack$上积分。注意到$\\int_{0}^{1} \\frac{x(1-x)}{2} dx = \\frac{1}{12}$，且

$$
\\int_{0}^{1} \\lbrack f(x) - f(0)(1 - x) - f(1)x \\rbrack  dx = \\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2}
$$

于是

$$
−\\frac{1}{12} ≤ \\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2} ≤ \\frac{1}{12}
$$

即

$$
​\\int_{0}^{1} f(x) dx - \\frac{f(0) + f(1)}{2}​ ≤ \\frac{1}{12}
$$

', 9, 'Mogullzr', '2026-01-29 14:20:28', 9, 'Mogullzr', '2026-01-29 14:20:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3165');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3165');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '3165');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3166, '2024年考研数学卷3第21题', '简单', '考研数学2024年数3真题', '（本题满分 12 分）设矩阵
$$
A = \\left( \\begin{array}{cccc}
1 & −1 & 0 & −1 \\\\
1 & 1 & 0 & 3 \\\\
2 & 1 & 2 & 6 \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{cccc}
1 & 0 & 1 & 2 \\\\
1 & −1 & a & a - 1 \\\\
2 & −3 & 2 & −2 \\\\
\\end{array} \\right)
$$
，且向量$α = \\left( \\begin{array}{c}
0 \\\\
2 \\\\
3 \\\\
\\end{array} \\right) ,  β = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$。(1) 证明：方程组$Ax = α$的解均为方程组$Bx = β$的解；(2) 若方程组$Ax = α$与方程组$Bx = β$不同解，求$a$的值。', '[]', '
(1) 见解析
(2) a=1
', '
(1) 首先解方程组$Ax = α$，对增广矩阵$(A, α)$进行初等行变换可得：

$$
\\begin{array}{ccccccccccccccccc}
(A, α) & \\begin{array}{ccccc}
1 & −1 & 0 & −1 & 0 \\\\
1 & 1 & 0 & 3 & 2 \\\\
2 & 1 & 2 & 6 & 3 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & −1 & 0 & −1 & 0 & 1 & −1 & 0 & −1 & 0 & 1 & 0 & 0 & 1 & 1 \\\\
 & \\begin{array}{ccccc}
1 & −1 & 0 & −1 & 0 \\\\
0 & 2 & 0 & 4 & 2 \\\\
0 & 3 & 2 & 8 & 3 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & 1 & 0 & 3 & 2 & 0 & 2 & 0 & 4 & 2 & 0 & 1 & 0 & 2 & 1 \\\\
 &  & 2 & 1 & 2 & 6 & 3 & 0 & 3 & 2 & 8 & 3 & 0 & 0 & 1 & 1 & 0 \\\\
\\end{array}
$$

令$x_{4} = k$，那么$x_{1} = 1 - k$，$x_{2} = 1 - 2k$，$x_{3} = 1 - k$，则方程组$Ax = α$的通解为：

$$
x = (1 - k, 1 - 2k, 1 - k, k)T = kξ + η,
$$

其中$ξ = (−1, −2, −1, 1)T$，$η = (1, 1, 1, 0)T$。
容易验证$Bξ = 0$，$Bη = β$，这就意味着$kξ + η$都是方程组$Bx = β$的解。
(2) 由于$Ax = α$的解都是$Bx = β$的解，如果这两个方程组不同解，则$r(B) < 3$。
对矩阵$B$进行初等行变换：

$$
\\begin{array}{cccccccccccccc}
B & \\begin{array}{cccc}
1 & 0 & 1 & 2 \\\\
1 & −1 & a & a - 1 \\\\
2 & −3 & 2 & −2 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & 0 & 1 & 2 & 1 & 0 & 1 & 2 & 1 & 0 & 1 & 2 \\\\
 & \\begin{array}{cccc}
1 & 0 & 1 & 2 \\\\
0 & −1 & a - 1 & a - 3 \\\\
0 & −3 & 0 & −6 \\\\
\\end{array} &  &  &  &  &  &  &  &  &  &  &  &  \\\\
 &  & 1 & −1 & a & a - 1 & 0 & −1 & a - 1 & a - 3 & 0 & −1 & a - 1 & a - 3 \\\\
 &  & 2 & −3 & 2 & −2 & 0 & −3 & 0 & −6 & 0 & 0 & 3(a - 1) & 3(a - 1) \\\\
\\end{array}
$$

所以当$3(a - 1) = 0$，即$a = 1$时，$r(B) = 2 < 3$。
', 9, 'Mogullzr', '2026-01-29 14:20:29', 9, 'Mogullzr', '2026-01-29 14:20:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3166');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '3166');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3167, '2024年考研数学卷3第22题', '简单', '考研数学2024年数3真题', '（本题满分 12 分）设总体$X$服从$\\lbrack 0, θ \\rbrack$上的均匀分布，其中$θ ∈ (0, +∞)$为未知参数。$X_{1}, X_{2}, ⋯  , X_{n}$是来自总体$X$的简单随机样本，记
$$
X_{(n)} = \\max \\{X_{1}, X_{2}, ⋯  , X_{n}\\} ,  T_{c} = cX_{(n)}
$$
(1) 求$c$，使得$E(T_{c}) = θ$；(2) 记$h(c) = E \\lbrack (T_{c} - θ)2 \\rbrack$，求$c$使得$h(c)$最小。', '[]', '
(1)$c = \\frac{n+1}{n}$
(2)$c = \\frac{n+2}{n+1}$
', '
(1) 先求$X_{(n)}$的分布函数$F(x) = P(X_{(n)} ≤ x)$。当$x < 0$时，$F(x) = 0$；当$x > θ$时，$F(x) = 1$；当$0 ≤ x ≤ θ$时，

$$
\\begin{array}{cc}
F(x) & = P (\\max\\{X_{1}, X_{2}, … , X_{n}\\} ≤ x) \\\\
 & = P (X_{1} ≤ x, X_{2} ≤ x, … , X_{n} ≤ x) \\\\
 & = \\prod_{i=1}^{n} P(X_{i} ≤ x) =  \\lbrack P(X ≤ x) \\rbrack n \\\\
\\end{array}
$$

于是$X_{(n)}$的概率密度为

$$
f(x) = \\begin{cases} \\frac{nx^{n-1}}{θ^{n}} & 0 ≤ x ≤ θ \\\\ 0 & 其他. \\end{cases}
$$

计算期望：

$$
E(X_{(n)}) = \\int_{0}^{θ} x ⋅ \\frac{nx^{n-1}}{θ^{n}} dx = \\frac{n}{n + 1}θ.
$$

要使得$E(T_{c}) = θ$，则

$$
c ⋅ \\frac{n}{n + 1}θ = θ,
$$

解得$c = \\frac{n+1}{n}$。
(2) 计算二阶矩：

$$
E(X_{(n)}^{2}) = \\int_{0}^{θ} x^{2} ⋅ \\frac{nx^{n-1}}{θ^{n}} dx = \\frac{n}{n + 2}θ^{2}.
$$

于是

$$
\\begin{array}{cc}
h(c) & = E  \\lbrack (T_{c} - θ)2 \\rbrack  \\\\
 & = E  \\lbrack c^{2}X_{(n)}^{2} - 2cθX_{(n)} + θ^{2} \\rbrack  \\\\
 & = c^{2}E(X_{(n)}^{2}) - 2cθE(X_{(n)}) + θ^{2} \\\\
\\end{array}
$$

这是一个关于$c$的二次函数，二次项系数$\\frac{n}{n+2} > 0$，因此当

$$
c = −\\frac{b}{2a} = −\\frac{−\\frac{2n}{n+1}}{2 ⋅ \\frac{n}{n+2}} = \\frac{n + 2}{n + 1}
$$

时，$h(c)$取得最小值。
', 9, 'Mogullzr', '2026-01-29 14:20:29', 9, 'Mogullzr', '2026-01-29 14:20:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3167');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '3167');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '3167');
