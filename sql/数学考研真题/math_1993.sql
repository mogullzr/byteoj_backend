INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (642, '1993年考研数学卷1第1题', '简单', '考研数学1993年卷1真题', '函数$F(x) = \\int_{1}^{x} (2 - \\frac{1}{\\sqrt{t}}) dt$（$x > 0$）的单调减少区间为 ______．', '[]', '
$(0, \\frac{1}{4})$
', '
函数$F(x) = \\int_{1}^{x} (2 - \\frac{1}{\\sqrt{t}})  dt$的单调性由其导数决定。根据微积分基本定理，$F^{′}(x) = 2 - \\frac{1}{\\sqrt{x}}$。
函数单调减少当$F^{′}(x) < 0$，即$2 - \\frac{1}{\\sqrt{x}} < 0$。
解此不等式：


$$
2 < \\frac{1}{\\sqrt{x}}
$$



$$
\\sqrt{x} < \\frac{1}{2}
$$



$$
x < \\frac{1}{4}
$$

考虑到$x > 0$，因此单调减少区间为$(0, \\frac{1}{4})$。
当$x = \\frac{1}{4}$时，$F^{′}(x) = 0$，函数取得极小值，故严格单调减少区间不包括该点。
', 9, 'Mogullzr', '2026-01-29 14:08:32', 9, 'Mogullzr', '2026-01-29 14:08:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '642');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '642');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '642');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (643, '1993年考研数学卷1第2题', '简单', '考研数学1993年卷1真题', '由曲线$\\begin{cases} 3x^{2} + 2y^{2} = 12 \\\\ z = 0 \\end{cases}$绕$y$轴旋转一周得到的旋转面在点$(0, \\sqrt{3}, \\sqrt{2})$处的指向外侧的单位法向量为 ______．', '[]', '$(0, \\frac{\\sqrt{10}}{5}, \\frac{\\sqrt{15}}{5})$
', '曲线由方程$\\begin{cases} 3x^{2} + 2y^{2} = 12 \\\\ z = 0 \\end{cases}$给出，这是一个在$xy$平面上的椭圆。绕$y$轴旋转一周后，旋转面的方程可通过将$x$替换为$\\sqrt{x^{2} + z^{2}}$得到，即$3(x^{2} + z^{2}) + 2y^{2} = 12$。
点$(0, \\sqrt{3}, \\sqrt{2})$在旋转面上，代入验证：$3(0^{2} + (\\sqrt{2})2) + 2(\\sqrt{3})2 = 3 × 2 + 2 × 3 = 6 + 6 = 12$。
设$F(x, y, z) = 3(x^{2} + z^{2}) + 2y^{2} - 12$，则曲面的法向量为梯度$∇F = (6x, 4y, 6z)$。在点$(0, \\sqrt{3}, \\sqrt{2})$处，$∇F = (0, 4\\sqrt{3}, 6\\sqrt{2})$。该向量指向外侧，因为从原点（内部点）到曲面，$F$值增加。
单位法向量需归一化。计算模长：$∣∇F∣ = \\sqrt{} = \\sqrt{0 + 48 + 72} = \\sqrt{120} = 2\\sqrt{30}$。单位法向量为：

$$
(\\frac{0}{2\\sqrt{30}}, \\frac{4\\sqrt{3}}{2\\sqrt{30}}, \\frac{6\\sqrt{2}}{2\\sqrt{30}}) = (0, \\frac{2\\sqrt{3}}{\\sqrt{30}}, \\frac{3\\sqrt{2}}{\\sqrt{30}})
$$

简化得：

$$
(0, \\frac{\\sqrt{10}}{5}, \\frac{\\sqrt{15}}{5})
$$

因此，指向外侧的单位法向量为$(0, \\frac{\\sqrt{10}}{5}, \\frac{\\sqrt{15}}{5})$。
', 9, 'Mogullzr', '2026-01-29 14:08:32', 9, 'Mogullzr', '2026-01-29 14:08:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '643');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '643');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '643');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (644, '1993年考研数学卷1第3题', '简单', '考研数学1993年卷1真题', '设函数$f(x) = πx + x^{2}$（$−π < x < π$）的傅里叶级数展开式为
$$
\\frac{a_{0}}{2} + \\sum_{n=1}^{∞}(a_{n} \\cos nx + b_{n} \\sin nx),
$$
则其中系数$b_{3}$的值为 ______．', '[]', '$\\frac{2π}{3}$
', '函数$f(x) = πx + x^{2}$在区间$(−π, π)$上的傅里叶级数系数$b_{n}$的公式为：

$$
b_{n} = \\frac{1}{π} \\int_{−π}^{π} f(x) \\sin nx dx
$$

对于$b_{3}$，有：

$$
b_{3} = \\frac{1}{π} \\int_{−π}^{π}(πx + x^{2}) \\sin 3x dx
$$

考虑被积函数的奇偶性：$πx \\sin 3x$是偶函数（奇函数乘以奇函数），而$x^{2} \\sin 3x$是奇函数（偶函数乘以奇函数）。在对称区间上，奇函数的积分为零，因此：

$$
\\int_{−π}^{π} x^{2} \\sin 3x dx = 0
$$

于是：

$$
b_{3} = \\frac{1}{π} \\int_{−π}^{π} πx \\sin 3x dx = \\int_{−π}^{π} x \\sin 3x dx
$$

由于$x \\sin 3x$是偶函数，有：

$$
\\int_{−π}^{π} x \\sin 3x dx = 2 \\int_{0}^{π} x \\sin 3x dx
$$

计算积分$\\int_{0}^{π} x \\sin 3x dx$，使用分部积分法：令$u = x$，$dv = \\sin 3x dx$，则$du = dx$，$v = −\\frac{\\cos 3x}{3}$。于是：

$$
∫ x \\sin 3x dx = −\\frac{x \\cos 3x}{3} + \\frac{1}{3} ∫ \\cos 3x dx = −\\frac{x \\cos 3x}{3} + \\frac{\\sin 3x}{9} + C
$$

代入上下限：

$$
\\lbrack −\\frac{x \\cos 3x}{3} + \\frac{\\sin 3x}{9} \\rbrack _{0}^{π} = (−\\frac{π \\cos 3π}{3} + \\frac{\\sin 3π}{9}) - (−\\frac{0 ⋅ \\cos 0}{3} + \\frac{\\sin 0}{9})
$$

其中$\\cos 3π = −1$，$\\sin 3π = 0$，$\\sin 0 = 0$，所以：

$$
= −\\frac{π ⋅ (−1)}{3} + 0 = \\frac{π}{3}
$$

因此：

$$
\\int_{0}^{π} x \\sin 3x dx = \\frac{π}{3}
$$

于是：

$$
\\int_{−π}^{π} x \\sin 3x dx = 2 ⋅ \\frac{π}{3} = \\frac{2π}{3}
$$

所以：

$$
b_{3} = \\frac{2π}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:32', 9, 'Mogullzr', '2026-01-29 14:08:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '644');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '644');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '644');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (645, '1993年考研数学卷1第4题', '简单', '考研数学1993年卷1真题', '设数量场$u = \\ln \\sqrt{x^{2} + y^{2} + z^{2}}$，则$÷(∇u) =$______．', '[]', '

$$
\\frac{1}{x^{2} + y^{2} + z^{2}}
$$

', '给定数量场$u = \\ln \\sqrt{x^{2} + y^{2} + z^{2}}$，可简化为$u = \\ln r$，其中$r = \\sqrt{x^{2} + y^{2} + z^{2}}$。需要计算$÷(∇u)$，即拉普拉斯算子$∇^{2}u$。
在笛卡尔坐标系中，先计算梯度$∇u$。
$∇u = (\\frac{∂u}{∂x}, \\frac{∂u}{∂y}, \\frac{∂u}{∂z})$。
由于$u = \\frac{1}{2} \\ln(x^{2} + y^{2} + z^{2})$，
有$\\frac{∂u}{∂x} = \\frac{1}{2} ⋅ \\frac{2x}{x^{2}+y^{2}+z^{2}} = \\frac{x}{x^{2}+y^{2}+z^{2}}$，
同理$\\frac{∂u}{∂y} = \\frac{y}{x^{2}+y^{2}+z^{2}}$，
$\\frac{∂u}{∂z} = \\frac{z}{x^{2}+y^{2}+z^{2}}$。
因此，$∇u = (\\frac{x}{r^{2}}, \\frac{y}{r^{2}}, \\frac{z}{r^{2}})$，其中$r^{2} = x^{2} + y^{2} + z^{2}$.
接下来计算散度$÷(∇u) = \\frac{∂}{∂x} (\\frac{x}{r^{2}}) + \\frac{∂}{∂y} (\\frac{y}{r^{2}}) + \\frac{∂}{∂z} (\\frac{z}{r^{2}})$。
计算$\\frac{∂}{∂x} (\\frac{x}{r^{2}}) = \\frac{r^{2}-2x^{2}}{r^{4}}$，
同理$\\frac{∂}{∂y} (\\frac{y}{r^{2}}) = \\frac{r^{2}-2y^{2}}{r^{4}}$，
$\\frac{∂}{∂z} (\\frac{z}{r^{2}}) = \\frac{r^{2}-2z^{2}}{r^{4}}$。
求和得：


$$
÷(∇u) = \\frac{r^{2} - 2x^{2}}{r^{4}} + \\frac{r^{2} - 2y^{2}}{r^{4}} + \\frac{r^{2} - 2z^{2}}{r^{4}} = \\frac{3r^{2} - 2(x^{2} + y^{2} + z^{2})}{r^{4}} = \\frac{3r^{2} - 2r^{2}}{r^{4}} = \\frac{r^{2}}{r^{4}} = \\frac{1}{r^{2}} = \\frac{1}{x^{2} + y^{2} + z^{2}}.
$$

因此，$÷(∇u) = \\frac{1}{x^{2}+y^{2}+z^{2}}$.
', 9, 'Mogullzr', '2026-01-29 14:08:33', 9, 'Mogullzr', '2026-01-29 14:08:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '645');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '645');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '645');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (646, '1993年考研数学卷1第5题', '简单', '考研数学1993年卷1真题', '设$n$阶矩阵$A$的各行元素之和均为零，且$A$的秩为$n - 1$，则线性方程组$Ax = 0$的通解为 ______．', '[]', '


$$
k(1, 1, ⋯  , 1)T
$$

', '
由于矩阵$A$的各行元素之和均为零，即对于每一行，其元素之和为零，因此有


$$
A \\left( \\begin{array}{c}
1 \\\\
1 \\\\
⋮ \\\\
1 \\\\
\\end{array} \\right) = 0,
$$

这意味着向量$(1, 1, ⋯  , 1)T$是齐次线性方程组$Ax = 0$的一个解。
又因为$A$的秩为$n - 1$，所以齐次线性方程组$Ax = 0$的解空间的维数为$1$。
因此，方程组$Ax = 0$的通解为


$$
x = k(1, 1, ⋯  , 1)T,
$$

其中$k$为任意常数。
\\boxed{k(1,1,\\cdots,1)^T}
', 9, 'Mogullzr', '2026-01-29 14:08:33', 9, 'Mogullzr', '2026-01-29 14:08:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '646');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '646');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (647, '1993年考研数学卷1第6题', '简单', '考研数学1993年卷1真题', '设$f(x) = \\int_{0}^{\\sin x}   \\sin(t^{2})dt$，$g(x) = x^{3} + x^{4}$，则当$x → 0$时，$f(x)$是$g(x)$的', '[''等价无穷小．'', ''同阶但非等价无穷小．'', ''高阶无穷小．'', ''低阶无穷小．'']', "['B']", '运用洛必达法则有
$$
\\lim_{x→0} \\frac{f(x)}{g(x)} = \\lim_{x→0} \\int_{0}^{\\sin x} \\frac{\\sin(t^{2})dt}{x^{3} + x^{4}} = \\lim_{x→0} \\frac{\\sin(\\sin^{2} x) \\cos x}{3x^{2} + 4x^{3}}
$$

$$
= \\lim_{x→0} \\frac{\\sin(\\sin^{2} x)}{3x^{2} + 4x^{3}} ⋅ \\lim_{x→0} \\cos x = \\lim_{x→0} \\frac{\\sin(\\sin^{2} x)}{3x^{2} + 4x^{3}}
$$

$$
= \\lim_{x→0} \\frac{x^{2}}{3x^{2} + 4x^{3}} = \\lim_{x→0} \\frac{1}{3 + 4x} = \\frac{1}{3}.
$$
', 9, 'Mogullzr', '2026-01-29 14:08:33', 9, 'Mogullzr', '2026-01-29 14:08:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '647');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '647');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '647');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (648, '1993年考研数学卷1第7题', '简单', '考研数学1993年卷1真题', '双纽线$(x^{2} + y^{2})2 = x^{2} - y^{2}$所围成的区域面积可用定积分表示为', '[''$2 \\\\int_{0}^{\\\\frac{π}{4}} \\\\cos 2θdθ$．'', ''$4 \\\\int_{0}^{\\\\frac{π}{4}} \\\\cos 2θdθ$．'', ''$2 \\\\int_{0}^{\\\\frac{π}{4}} \\\\sqrt{\\\\cos 2θ}dθ$．'', ''$\\\\frac{1}{2} \\\\int_{0}^{\\\\frac{π}{4}}(\\\\cos 2θ)2dθ$．'']', "['A']", '
双纽线的方程为

$$
(x^{2} + y^{2})2 = x^{2} - y^{2}.
$$
通过极坐标变换

$$
x = r \\cos θ,  y = r \\sin θ,
$$
代入方程可得

$$
r^{4} = r^{2}(\\cos^{2} θ - \\sin^{2} θ) = r^{2} \\cos 2θ,
$$
整理得

$$
r^{2} = \\cos 2θ.
$$
极坐标下曲线所围区域的面积公式为

$$
A = \\frac{1}{2} ∫ r^{2} dθ.
$$
由$r^{2} = \\cos 2θ$，需满足$\\cos 2θ ≥ 0$，即

$$
θ ∈  \\lbrack −\\frac{π}{4}, \\frac{π}{4} \\rbrack  ∪  \\lbrack \\frac{3π}{4}, \\frac{5π}{4} \\rbrack  .
$$
利用对称性，从$θ = −\\frac{π}{4}$到$\\frac{π}{4}$的积分覆盖右叶片的面积，左叶片面积与之相同。因此总面积为

$$
A = \\frac{1}{2} \\int_{−\\frac{π}{4}}^{\\frac{π}{4}} \\cos 2θ dθ + \\frac{1}{2} \\int_{\\frac{3π}{4}}^{\\frac{5π}{4}} \\cos 2θ dθ.
$$
由于$\\cos 2θ$的周期为$π$，第二个积分等于第一个积分，故

$$
A = \\int_{−\\frac{π}{4}}^{\\frac{π}{4}} \\cos 2θ dθ.
$$
又因为$\\cos 2θ$是偶函数，积分可化为

$$
A = 2 \\int_{0}^{\\frac{π}{4}} \\cos 2θ dθ,
$$
与选项 A 一致。选项 B 的系数 4 过大，选项 C 和 D 的被积函数形式错误。', 9, 'Mogullzr', '2026-01-29 14:08:33', 9, 'Mogullzr', '2026-01-29 14:08:33', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '648');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '648');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '648');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (649, '1993年考研数学卷1第8题', '简单', '考研数学1993年卷1真题', '设有直线$L_{1} : \\frac{x-1}{1} = \\frac{y-5}{−2} = \\frac{z+8}{1}$与$L_{2} : \\begin{cases} x - y = 6 \\\\ 2y + z = 3 \\end{cases}$，则$L_{1}$与$L_{2}$的夹角为', '[''$\\\\frac{π}{6}$．'', ''$\\\\frac{π}{4}$．'', ''$\\\\frac{π}{3}$．'', ''$\\\\frac{π}{2}$．'']', "['C']", '直线$L_{1}$的方向向量为$s1​​ = (1, −2, 1)$。直线$L_{2}$由两个平面方程联立给出，其法向量分别为$n1​​ = (1, −1, 0)$和$n2​​ = (0, 2, 1)$，则$L_{2}$的方向向量为$s2​​ = n1​​ × n2​​ = (−1, −1, 2)$。计算两方向向量的点积：$s1​​ ⋅ s2​​ = 1 × (−1) + (−2) × (−1) + 1 × 2 = −1 + 2 + 2 = 3$。计算模长：$∣s1​​∣ = \\sqrt{1^{2} + (−2)2 + 1^{2}} = \\sqrt{6}$，$∣s2​​∣ = \\sqrt{(−1)2 + (−1)2 + 2^{2}} = \\sqrt{6}$。则夹角的余弦值为$\\cos θ = \\frac{∣s1​​⋅s2​​∣}{∣s1​​∣∣s2​​∣} = \\frac{3}{\\sqrt{6}⋅\\sqrt{6}} = \\frac{1}{2}$，故$θ = \\frac{π}{3}$。', 9, 'Mogullzr', '2026-01-29 14:08:34', 9, 'Mogullzr', '2026-01-29 14:08:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '649');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '649');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '649');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (650, '1993年考研数学卷1第9题', '简单', '考研数学1993年卷1真题', '设曲线积分$\\int_{L} \\lbrack f(x) - e^{x} \\rbrack  \\sin ydx - f(x) \\cos ydy$与路径无关，
其中$f(x)$具有一阶连续导数，且$f(0) = 0$，则$f(x)$等于', '[''$\\\\frac{e^{−x}-e^{x}}{2}$．'', ''$\\\\frac{e^{x}-e^{−x}}{2}$．'', ''$\\\\frac{e^{x}+e^{−x}}{2} - 1$．'', ''$1 - \\\\frac{e^{x}+e^{−x}}{2}$．'']', "['B']", '曲线积分与路径无关的条件是$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，其中$P(x, y) =  \\lbrack f(x) - e^{x} \\rbrack  \\sin y$，$Q(x, y) = −f(x) \\cos y$。计算偏导数：$\\frac{∂P}{∂y} =  \\lbrack f(x) - e^{x} \\rbrack  \\cos y$，$\\frac{∂Q}{∂x} = −f^{′}(x) \\cos y$。令两者相等，得$\\lbrack f(x) - e^{x} \\rbrack  \\cos y = −f^{′}(x) \\cos y$，即$f^{′}(x) + f(x) = e^{x}$。这是一阶线性微分方程，求解得$f(x) = \\frac{1}{2}e^{x} + Ce^{−x}$。代入初始条件$f(0) = 0$，得$C = −\\frac{1}{2}$，因此$f(x) = \\frac{e^{x}-e^{−x}}{2}$，对应选项B。', 9, 'Mogullzr', '2026-01-29 14:08:34', 9, 'Mogullzr', '2026-01-29 14:08:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '650');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '650');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '650');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (651, '1993年考研数学卷1第10题', '简单', '考研数学1993年卷1真题', '已知$Q = \\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
2 & 4 & t \\\\
3 & 6 & 9 \\\\
\\end{array} \\right)$，$P$为三阶非零矩阵，且满足$PQ = O$，则', '[''$t = 6$时，$P$的秩必为$1$．'', ''$t = 6$时，$P$的秩必为$2$．'', ''$t \\\\neq 6$时，$P$的秩必为$1$．'', ''$t \\\\neq 6$时，$P$的秩必为$2$．'']', "['C']", '给定矩阵$Q = \\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
2 & 4 & t \\\\
3 & 6 & 9 \\\\
\\end{array} \\right)$和三阶非零矩阵$P$满足$PQ = O$。首先，计算$Q$的秩。通过行变换，$Q$可化为$\\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
0 & 0 & t - 6 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，因此当$t = 6$时，$rank(Q) = 1$；当$t \\neq 6$时，$rank(Q) = 2$。由$PQ = O$可知$Im(Q) ⊆ Ker(P)$，故$rank(P) ≤ 3 - rank(Q)$。且$P$非零，故$rank(P) ≥ 1$。当$t = 6$时，$rank(Q) = 1$，则$rank(P) ≤ 2$，但$rank(P)$可能为 1 或 2，故选项 A 和 B 均不正确。当$t \\neq 6$时，$rank(Q) = 2$，则$rank(P) ≤ 1$，结合$P$非零，得$rank(P) = 1$，故选项 C 正确，选项 D 错误。
因此，正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:08:34', 9, 'Mogullzr', '2026-01-29 14:08:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '651');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '651');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '651');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (652, '1993年考研数学卷1第11题', '简单', '考研数学1993年卷1真题', '求$\\lim_{x→∞} (\\sin \\frac{2}{x} + \\cos \\frac{1}{x})^{x}$．', '[]', '
$e^{2}$
', '
考虑极限$\\lim_{x→∞} (\\sin \\frac{2}{x} + \\cos \\frac{1}{x})^{x}$。令$t = \\frac{1}{x}$，则当$x → ∞$时，$t → 0^{+}$，原极限化为：


$$
\\lim_{t→0^{+}} (\\sin(2t) + \\cos(t))^{1/t} .
$$

设$L = \\lim_{t→0^{+}} (\\sin(2t) + \\cos(t))^{1/t}$，取自然对数：


$$
\\ln L = \\lim_{t→0^{+}} \\frac{1}{t} \\ln (\\sin(2t) + \\cos(t)) .
$$

当$t → 0^{+}$时，$\\sin(2t) + \\cos(t) → 1$，故为$1^{∞}$型未定式。令$u(t) = \\sin(2t) + \\cos(t) - 1$，则$\\ln(1 + u(t)) ∼ u(t)$，


$$
\\ln L = \\lim_{t→0^{+}} \\frac{1}{t}u(t) = \\lim_{t→0^{+}} \\frac{\\sin(2t) + \\cos(t) - 1}{t}.
$$

该极限为$\\frac{0}{0}$型，应用洛必达法则：
分子导数为$2 \\cos(2t) - \\sin(t)$，分母导数为$1$，


$$
\\lim_{t→0^{+}} \\frac{2 \\cos(2t) - \\sin(t)}{1} = 2 \\cos(0) - \\sin(0) = 2.
$$

因此，$\\ln L = 2$，即$L = e^{2}$。故原极限为$e^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:08:34', 9, 'Mogullzr', '2026-01-29 14:08:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '652');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '652');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '652');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (653, '1993年考研数学卷1第12题', '简单', '考研数学1993年卷1真题', '求$∫ \\frac{xe^{x}}{\\sqrt{e^{x}-1}}dx$．', '[]', '

$$
2\\sqrt{e^{x} - 1}(x - 2) + 4 arctan(\\sqrt{e^{x} - 1}) + C
$$

', '令$t = \\sqrt{e^{x} - 1}$，则$t^{2} = e^{x} - 1$，$e^{x} = t^{2} + 1$。微分得$e^{x} dx = 2t dt$，即$dx = \\frac{2t}{t^{2}+1} dt$。代入原积分：

$$
∫ \\frac{xe^{x}}{\\sqrt{e^{x} - 1}} dx = ∫ \\frac{xe^{x}}{t} ⋅ \\frac{2t}{t^{2} + 1} dt = ∫ \\frac{2xe^{x}}{t^{2} + 1} dt.
$$

由$e^{x} = t^{2} + 1$，得：

$$
∫ \\frac{2x(t^{2} + 1)}{t^{2} + 1} dt = ∫ 2x dt.
$$

由$x = \\ln(t^{2} + 1)$，积分变为：

$$
∫ 2 \\ln(t^{2} + 1) dt.
$$

计算$∫ \\ln(t^{2} + 1) dt$使用分部积分：令$u = \\ln(t^{2} + 1)$,$dv = dt$，则$du = \\frac{2t}{t^{2}+1}dt$,$v = t$。于是：

$$
∫ \\ln(t^{2} + 1) dt = t \\ln(t^{2} + 1) - ∫ t ⋅ \\frac{2t}{t^{2} + 1} dt = t \\ln(t^{2} + 1) - 2 ∫ \\frac{t^{2}}{t^{2} + 1} dt.
$$

其中：

$$
∫ \\frac{t^{2}}{t^{2} + 1} dt = ∫ (1 - \\frac{1}{t^{2} + 1}) dt = t - arctan t + C.
$$

所以：

$$
∫ \\ln(t^{2} + 1) dt = t \\ln(t^{2} + 1) - 2(t - arctan t) + C = t \\ln(t^{2} + 1) - 2t + 2 arctan t + C.
$$

因此：

$$
∫ 2 \\ln(t^{2} + 1) dt = 2t \\ln(t^{2} + 1) - 4t + 4 arctan t + C.
$$

代回$t = \\sqrt{e^{x} - 1}$，并注意$\\ln(t^{2} + 1) = \\ln(e^{x}) = x$，得：

$$
2\\sqrt{e^{x} - 1} ⋅ x - 4\\sqrt{e^{x} - 1} + 4 arctan(\\sqrt{e^{x} - 1}) + C = 2\\sqrt{e^{x} - 1}(x - 2) + 4 arctan(\\sqrt{e^{x} - 1}) + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:34', 9, 'Mogullzr', '2026-01-29 14:08:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '653');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '653');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '653');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (654, '1993年考研数学卷1第13题', '简单', '考研数学1993年卷1真题', '求微分方程$x^{2}y^{′} + xy = y^{2}$，满足初始条件$y∣_{x=1} = 1$的特解．', '[]', '$y = \\frac{2x}{1+x^{2}}$
', '给定微分方程$x^{2}y^{′} + xy = y^{2}$满足初始条件$y∣_{x=1} = 1$。
首先，将方程化为标准形式：


$$
\\frac{dy}{dx} + \\frac{1}{x}y = \\frac{y^{2}}{x^{2}}
$$

这是一个伯努利方程，令$v = y^{−1}$，则$y = v^{−1}$，$\\frac{dy}{dx} = −v^{−2}\\frac{dv}{dx}$。
代入方程：


$$
−v^{−2}\\frac{dv}{dx} + \\frac{1}{x}v^{−1} = \\frac{v^{−2}}{x^{2}}
$$

两边乘以$−v^{2}$：


$$
\\frac{dv}{dx} - \\frac{1}{x}v = −\\frac{1}{x^{2}}
$$

这是一阶线性微分方程，积分因子为$μ(x) = e^{∫ −\\frac{1}{x}dx} = \\frac{1}{x}$。
乘以积分因子：


$$
\\frac{1}{x}\\frac{dv}{dx} - \\frac{1}{x^{2}}v = −\\frac{1}{x^{3}}
$$

即


$$
\\frac{d}{dx} (\\frac{v}{x}) = −\\frac{1}{x^{3}}
$$

积分得：


$$
\\frac{v}{x} = ∫ −\\frac{1}{x^{3}}dx = \\frac{1}{2x^{2}} + C
$$

所以


$$
v = \\frac{1}{2x} + Cx
$$

代回$v = y^{−1}$：


$$
y^{−1} = \\frac{1}{2x} + Cx
$$



$$
y = \\frac{1}{\\frac{1}{2x} + Cx} = \\frac{2x}{1 + 2Cx^{2}}
$$

令$K = 2C$，则


$$
y = \\frac{2x}{1 + Kx^{2}}
$$

代入初始条件$y∣_{x=1} = 1$：


$$
1 = \\frac{2}{1 + K}
$$

解得$K = 1$。
因此特解为$y = \\frac{2x}{1+x^{2}}$。
验证：代入原方程满足，且初始条件成立。
', 9, 'Mogullzr', '2026-01-29 14:08:35', 9, 'Mogullzr', '2026-01-29 14:08:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '654');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '654');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '654');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (655, '1993年考研数学卷1第14题', '简单', '考研数学1993年卷1真题', '计算$\\iint_{Σ} 2xzdydz + yzdzdx - z^{2}dxdy$,
其中$Σ$是由曲面$z = \\sqrt{x^{2} + y^{2}}$与$z = \\sqrt{2 - x^{2} - y^{2}}$所围立体的表面外侧．', '[]', '$\\frac{π}{2}$
', '根据散度定理，曲面积分$\\iint_{Σ} 2xz dy dz + yz dz dx - z^{2} dx dy$等于立体$V$的散度三重积分。定义向量场$F = (P, Q, R) = (2xz, yz, −z^{2})$，则散度$∇ ⋅ F = \\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z} = 2z + z - 2z = z$。因此，积分化为$\\iiint_{V} z dV$，其中$V$是由曲面$z = \\sqrt{x^{2} + y^{2}}$和$z = \\sqrt{2 - x^{2} - y^{2}}$所围成的立体。
在柱坐标下，$x = r \\cos θ$,$y = r \\sin θ$,$z = z$，体积元素$dV = r dz dr dθ$。两曲面交线满足$x^{2} + y^{2} = 1$，因此$r$的范围为$0$到$1$，$z$的范围为$r$到$\\sqrt{2 - r^{2}}$。积分变为：

$$
\\iiint_{V} z dV = \\int_{0}^{2π} \\int_{0}^{1} \\int_{r}^{\\sqrt{2-r^{2}}} z ⋅ r dz dr dθ.
$$

先对$z$积分：

$$
\\int_{r}^{\\sqrt{2-r^{2}}} z dz =  \\lbrack \\frac{1}{2}z^{2} \\rbrack _{r}^{\\sqrt{2-r^{2}}} = \\frac{1}{2} ((2 - r^{2}) - r^{2}) = 1 - r^{2}.
$$

代入得：

$$
\\int_{0}^{2π} \\int_{0}^{1} r(1 - r^{2}) dr dθ = 2π \\int_{0}^{1}(r - r^{3}) dr = 2π  \\lbrack \\frac{1}{2}r^{2} - \\frac{1}{4}r^{4} \\rbrack _{0}^{1} = 2π ⋅ \\frac{1}{4} = \\frac{π}{2}.
$$

故曲面积分为$\\frac{π}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:08:35', 9, 'Mogullzr', '2026-01-29 14:08:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '655');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '655');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '655');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (656, '1993年考研数学卷1第15题', '简单', '考研数学1993年卷1真题', '求级数$\\sum_{n=0}^{∞} \\frac{(−1)n(n^{2}-n+1)}{2^{n}}$的和．', '[]', '$\\frac{22}{27}$
', '考虑级数$\\sum_{n=0}^{∞} \\frac{(−1)n(n^{2}-n+1)}{2^{n}}$，令$x = −\\frac{1}{2}$，则级化为$\\sum_{n=0}^{∞}(n^{2} - n + 1)x^{n}$。利用已知级数求和公式：$\\sum_{n=0}^{∞} x^{n} = \\frac{1}{1-x}$，$\\sum_{n=0}^{∞} nx^{n} = \\frac{x}{(1-x)2}$，$\\sum_{n=0}^{∞} n^{2}x^{n} = \\frac{x(1+x)}{(1-x)3}$，可得：

$$
\\sum_{n=0}^{∞}(n^{2} - n + 1)x^{n} = \\sum_{n=0}^{∞} n^{2}x^{n} - \\sum_{n=0}^{∞} nx^{n} + \\sum_{n=0}^{∞} x^{n} = \\frac{x(1 + x)}{(1 - x)3} - \\frac{x}{(1 - x)2} + \\frac{1}{1 - x}.
$$

通分后分母为$(1 - x)3$，分子为：

$$
x(1 + x) - x(1 - x) + (1 - x)2 = (x + x^{2}) - (x - x^{2}) + (1 - 2x + x^{2}) = 3x^{2} - 2x + 1.
$$

因此，

$$
\\sum_{n=0}^{∞}(n^{2} - n + 1)x^{n} = \\frac{3x^{2} - 2x + 1}{(1 - x)3}.
$$

代入$x = −\\frac{1}{2}$：
分子为$3 (−\\frac{1}{2})^{2} - 2 (−\\frac{1}{2}) + 1 = 3 × \\frac{1}{4} + 1 + 1 = \\frac{3}{4} + 2 = \\frac{11}{4}$，
分母为$(1 - (−\\frac{1}{2}))^{3} = (\\frac{3}{2})^{3} = \\frac{27}{8}$。
所以和为$\\frac{11}{4} × \\frac{8}{27} = \\frac{88}{108} = \\frac{22}{27}$。
', 9, 'Mogullzr', '2026-01-29 14:08:35', 9, 'Mogullzr', '2026-01-29 14:08:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '656');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '656');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '656');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (657, '1993年考研数学卷1第16题', '简单', '考研数学1993年卷1真题', '设在$\\lbrack 0, +∞)$上函数$f(x)$有连续导数，且$f^{′}(x) ≥ k > 0$,$f(0) < 0$，
证明$f(x)$在$(0, +∞)$内有且仅有一个零点．', '[]', '函数$f(x)$在$(0, +∞)$内有且仅有一个零点。
', '首先证明存在性。由条件$f^{′}(x) ≥ k > 0$和$f(0) < 0$，根据拉格朗日中值定理，对任意$x > 0$，存在$ξ ∈ (0, x)$使得$f(x) - f(0) = f^{′}(ξ)x ≥ kx$，因此$f(x) ≥ f(0) + kx$。由于$f(0) < 0$且$kx → +∞$当$x → +∞$，存在$X > 0$使得当$x > X$时$f(0) + kx > 0$，从而$f(x) > 0$。在$x = 0$处$f(0) < 0$，由连续函数中间值定理，存在$c ∈ (0, X)$使得$f(c) = 0$，即存在零点。
其次证明唯一性。由于$f^{′}(x) ≥ k > 0$，函数$f(x)$严格递增。假设存在两个零点$c_{1} < c_{2}$满足$f(c_{1}) = f(c_{2}) = 0$，则由罗尔定理，存在$η ∈ (c_{1}, c_{2})$使得$f^{′}(η) = 0$，与$f^{′}(η) ≥ k > 0$矛盾。故至多有一个零点。
综上，$f(x)$在$(0, +∞)$内有且仅有一个零点。
', 9, 'Mogullzr', '2026-01-29 14:08:35', 9, 'Mogullzr', '2026-01-29 14:08:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '657');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '657');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '657');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (658, '1993年考研数学卷1第17题', '简单', '考研数学1993年卷1真题', '设$b > a > e$，证明$a^{b} > b^{a}$．', '[]', '
先将不等式做恒等变形：因为$b > a > e$，故原不等式等价于

$$
b \\ln a > a \\ln b 或 \\frac{\\ln a}{a} > \\frac{\\ln b}{b}.
$$

证法一：令$f(x) = x \\ln a - a \\ln x (x > a > e)$，则

$$
f^{′}(x) = \\ln a - \\frac{a}{x}.
$$

因为$x > a > e$，所以$\\ln a > 1,  \\frac{a}{x} < 1$，故

$$
f^{′}(x) = \\ln a - \\frac{a}{x} > 0.
$$

从而$f(x)$在$x > a > e$时为严格的单调递增函数，故

$$
f(x) > f(a) = 0,  (x > a > e).
$$

由此$f(b) = b \\ln a - a \\ln b > 0$，即$a^{b} > b^{a}$。
证法二：令$f(x) = \\frac{\\ln x}{x} (x > e)$，则有

$$
f^{′}(x) = \\frac{1 - \\ln x}{x^{2}}.
$$

当$x ∈ (e, +∞)$时$f^{′}(x) < 0$，所以$f(x)$为单调递减函数，故当$b > a > e$时有

$$
f(b) = \\frac{\\ln b}{b} < f(a) = \\frac{\\ln a}{a}
$$

成立。即$a^{b} > b^{a}$。
', '
先将不等式做恒等变形：因为$b > a > e$，故原不等式等价于

$$
b \\ln a > a \\ln b 或 \\frac{\\ln a}{a} > \\frac{\\ln b}{b}.
$$

证法一：令$f(x) = x \\ln a - a \\ln x (x > a > e)$，则

$$
f^{′}(x) = \\ln a - \\frac{a}{x}.
$$

因为$x > a > e$，所以$\\ln a > 1,  \\frac{a}{x} < 1$，故

$$
f^{′}(x) = \\ln a - \\frac{a}{x} > 0.
$$

从而$f(x)$在$x > a > e$时为严格的单调递增函数，故

$$
f(x) > f(a) = 0,  (x > a > e).
$$

由此$f(b) = b \\ln a - a \\ln b > 0$，即$a^{b} > b^{a}$。
证法二：令$f(x) = \\frac{\\ln x}{x} (x > e)$，则有

$$
f^{′}(x) = \\frac{1 - \\ln x}{x^{2}}.
$$

当$x ∈ (e, +∞)$时$f^{′}(x) < 0$，所以$f(x)$为单调递减函数，故当$b > a > e$时有

$$
f(b) = \\frac{\\ln b}{b} < f(a) = \\frac{\\ln a}{a}
$$

成立。即$a^{b} > b^{a}$。
', 9, 'Mogullzr', '2026-01-29 14:08:35', 9, 'Mogullzr', '2026-01-29 14:08:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '658');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '658');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '658');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (659, '1993年考研数学卷1第18题', '简单', '考研数学1993年卷1真题', '已知二次型$f(x_{1}, x_{2}, x_{3}) = 2x_{1}^{2} + 3x_{2}^{2} + 3x_{3}^{2} + 2ax_{2}x_{3}$（$a > 0$）通过正交变换化成标准形$f = y_{1}^{2} + 2y_{2}^{2} + 5y_{3}^{2}$，求参数$a$及所用的正交变换矩阵．', '[]', '
$a = 2$，正交变换矩阵为$\\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
−\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
\\end{array} \\right)$。
', '
由题，二次型矩阵为

$$
A = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 3 & a \\\\
0 & a & 3 \\\\
\\end{array} \\right) ,
$$

经正交变换化为标准形$f = y_{1}^{2} + 2y_{2}^{2} + 5y_{3}^{2}$，故$A$的特征值为$1, 2, 5$。
计算特征多项式：

$$
det(λI - A) = \\begin{vmatrix}
λ - 2 & 0 & 0\\\\
0 & λ - 3 & −a\\\\
0 & −a & λ - 3
\\end{vmatrix} = (λ - 2) \\lbrack (λ - 3)2 - a^{2} \\rbrack .
$$

特征值为$λ_{1} = 2$，$λ_{2} = 3 + a$，$λ_{3} = 3 - a$。令$\\{2, 3 + a, 3 - a\\} = \\{1, 2, 5\\}$，解得$a = 2$（因$a > 0$）。此时

$$
A = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 3 & 2 \\\\
0 & 2 & 3 \\\\
\\end{array} \\right) ,  特征值 λ_{1} = 1,  λ_{2} = 2,  λ_{3} = 5.
$$

分别求特征向量并单位化：

$$
A - I = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 2 & 2 \\\\
0 & 2 & 2 \\\\
\\end{array} \\right) ∼ \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

以$p_{1}, p_{2}, p_{3}$为列向量，得正交变换矩阵

$$
Q = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
−\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
\\end{array} \\right) ,
$$

满足$Q^{T}AQ = diag(1, 2, 5)$。
因此，参数$a = 2$，正交变换矩阵为

$$
a = 2​,  \\begin{array}{ccc}
0 & 1 & 0 \\\\
−\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
\\end{array}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:36', 9, 'Mogullzr', '2026-01-29 14:08:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '659');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '659');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (660, '1993年考研数学卷1第19题', '简单', '考研数学1993年卷1真题', '设$A$是$n × m$矩阵，$B$是$m × n$矩阵，其中$n < m$,$E$是$n$阶单位矩阵，
若$AB = E$，证明$B$的列向量组线性无关．', '[]', '
$B$的列向量组线性无关。
', '
设$B$的列向量为$b_{1}, b_{2}, … , b_{n}$，每个$b_{i}$是$m$维列向量。要证明$B$的列向量组线性无关，即若存在系数$c_{1}, c_{2}, … , c_{n}$使得


$$
c_{1}b_{1} + c_{2}b_{2} + ⋯ + c_{n}b_{n} = 0,
$$

则必有$c_{1} = c_{2} = ⋯ = c_{n} = 0$。
考虑线性组合$c_{1}b_{1} + c_{2}b_{2} + ⋯ + c_{n}b_{n} = 0$，两边左乘矩阵$A$，得


$$
A(c_{1}b_{1} + c_{2}b_{2} + ⋯ + c_{n}b_{n}) = A ⋅ 0 = 0.
$$

由矩阵乘法的线性性质，左边等于


$$
c_{1}Ab_{1} + c_{2}Ab_{2} + ⋯ + c_{n}Ab_{n}.
$$

已知$AB = E$，其中$E$是$n$阶单位矩阵，因此$Ab_{i}$等于$E$的第$i$列，即标准基向量$e_{i}$。
故


$$
c_{1}Ab_{1} + c_{2}Ab_{2} + ⋯ + c_{n}Ab_{n} = c_{1}e_{1} + c_{2}e_{2} + ⋯ + c_{n}e_{n}.
$$

由于$e_{1}, e_{2}, … , e_{n}$是线性无关的标准基向量，


$$
c_{1}e_{1} + c_{2}e_{2} + ⋯ + c_{n}e_{n} = 0
$$

推出$c_{1} = c_{2} = ⋯ = c_{n} = 0$。
因此，$B$的列向量组线性无关。
注：证明过程中未直接使用$n < m$的条件，但由$AB = E$可知$n ≤ m$，而题设$n < m$确保了$B$不是方阵，但结论依然成立。
', 9, 'Mogullzr', '2026-01-29 14:08:36', 9, 'Mogullzr', '2026-01-29 14:08:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '660');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '660');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '660');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (661, '1993年考研数学卷1第20题', '简单', '考研数学1993年卷1真题', '设物体$A$从点$(0, 1)$出发，以速度大小为常数$v$沿$y$轴正向运动．物体$B$从点$(−1, 0)$与$A$同时出发，其速度大小为$2v$，方向始终指向$A$，试建立物体$B$的运动轨迹所满足的微分方程，并写出初始条件．', '[]', '设在时刻$t$，$B$位于点$(x, y)$处，则


$$
\\frac{dy}{dx} = \\frac{y - (1 + vt)}{x},
$$

即


$$
x\\frac{dy}{dx} = y - vt - 1.
$$

两边对$x$求导得


$$
x\\frac{d^{2}y}{dx^{2}} = −v\\frac{dt}{dx}.
$$

又由已知得


$$
2v = \\frac{ds}{dt} = \\sqrt{1 + (\\frac{dy}{dx})^{2} ⋅ \\frac{dx}{dt}},
$$

即


$$
\\frac{dt}{dx} = \\frac{1}{2v}\\sqrt{1 + (\\frac{dy}{dx})^{2}}.
$$

代入上述得到所求的微分方程为


$$
x\\frac{d^{2}y}{dx^{2}} = −\\frac{1}{2}\\sqrt{1 + (\\frac{dy}{dx})^{2}}.
$$

其初始条件为$y(−1) = 0$，$y^{′}(−1) = 1$。
', '设在时刻$t$，$B$位于点$(x, y)$处，则


$$
\\frac{dy}{dx} = \\frac{y - (1 + vt)}{x},
$$

即


$$
x\\frac{dy}{dx} = y - vt - 1.
$$

两边对$x$求导得


$$
x\\frac{d^{2}y}{dx^{2}} = −v\\frac{dt}{dx}.
$$

又由已知得


$$
2v = \\frac{ds}{dt} = \\sqrt{1 + (\\frac{dy}{dx})^{2} ⋅ \\frac{dx}{dt}},
$$

即


$$
\\frac{dt}{dx} = \\frac{1}{2v}\\sqrt{1 + (\\frac{dy}{dx})^{2}}.
$$

代入上述得到所求的微分方程为


$$
x\\frac{d^{2}y}{dx^{2}} = −\\frac{1}{2}\\sqrt{1 + (\\frac{dy}{dx})^{2}}.
$$

其初始条件为$y(−1) = 0$，$y^{′}(−1) = 1$。
', 9, 'Mogullzr', '2026-01-29 14:08:36', 9, 'Mogullzr', '2026-01-29 14:08:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '661');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '661');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1074', '661');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (662, '1993年考研数学卷1第21题', '简单', '考研数学1993年卷1真题', '一批产品共有$10$个正品和$2$个次品，任意抽取两次，每次抽一个，抽出后不再放回，
则第二次抽出的是次品的概率为 ______．', '[]', '
$\\frac{1}{6}$
', '
设事件$A_{1}$为第一次抽到正品，事件$A_{2}$为第一次抽到次品，事件$B$为第二次抽到次品。由全概率公式：

$$
P(B) = P(A_{1})P(B ∣ A_{1}) + P(A_{2})P(B ∣ A_{2})
$$

其中

$$
P(A_{1}) = \\frac{10}{12} = \\frac{5}{6},  P(A_{2}) = \\frac{2}{12} = \\frac{1}{6}
$$



$$
P(B ∣ A_{1}) = \\frac{2}{11},  P(B ∣ A_{2}) = \\frac{1}{11}
$$

代入得

$$
P(B) = \\frac{5}{6} × \\frac{2}{11} + \\frac{1}{6} × \\frac{1}{11} = \\frac{10}{66} + \\frac{1}{66} = \\frac{11}{66} = \\frac{1}{6}
$$

因此，第二次抽出的是次品的概率为$\\frac{1}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:08:36', 9, 'Mogullzr', '2026-01-29 14:08:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '662');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '662');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (663, '1993年考研数学卷1第22题', '简单', '考研数学1993年卷1真题', '设随机变量$X$服从$(0, 2)$上的均匀分布，则随机变量$Y = X^{2}$在$(0, 4)$内的概率分布密度$f_{Y}(y) =$______．', '[]', '$\\frac{1}{4\\sqrt{y}}$
', '已知随机变量$X$服从$(0, 2)$上的均匀分布，其概率密度函数为$f_{X}(x) = \\frac{1}{2}$，其中$x ∈ (0, 2)$。给定$Y = X^{2}$，需要求$Y$的概率密度函数$f_{Y}(y)$。由于$Y = X^{2}$在$(0, 2)$上是单调递增函数，且$y ∈ (0, 4)$，使用变量变换法。由$y = x^{2}$得$x = \\sqrt{y}$，求导得$\\frac{dx}{dy} = \\frac{1}{2}y^{−1/2}$。代入公式$f_{Y}(y) = f_{X}(x) ​\\frac{dx}{dy}​$，得到$f_{Y}(y) = \\frac{1}{2} ⋅ \\frac{1}{2}y^{−1/2} = \\frac{1}{4}y^{−1/2} = \\frac{1}{4\\sqrt{y}}$，其中$y ∈ (0, 4)$。验证积分$\\int_{0}^{4} \\frac{1}{4\\sqrt{y}} dy = 1$，符合概率密度函数性质。
', 9, 'Mogullzr', '2026-01-29 14:08:36', 9, 'Mogullzr', '2026-01-29 14:08:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '663');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '663');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (664, '1993年考研数学卷1第23题', '简单', '考研数学1993年卷1真题', '设随机变量$X$的概率分布密度为$f(x) = \\frac{1}{2}e^{−∣x∣}$,$−∞ < x < +∞$．(1) 求$X$的数学期望$E(X)$和方差$D(X)$．(2) 求$X$与$∣X∣$的协方差，并问$X$与$∣X∣$是否不相关？(3) 问$X$与$∣X∣$是否相互独立？为什么？', '[]', '(1)$E(X) = 0$，$D(X) = 2$
(2) 协方差为0，$X$与$∣X∣$不相关
(3)$X$与$∣X∣$不相互独立
', '(1) 数学期望


$$
E(X) = \\int_{−∞}^{+∞} xf(x) dx = \\int_{−∞}^{+∞} x ⋅ \\frac{1}{2}e^{−∣x∣} dx.
$$

由于被积函数$xe^{−∣x∣}$是奇函数，在对称区间上积分为零，因此


$$
E(X) = 0.
$$

方差


$$
D(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2 = E(X^{2}).
$$

计算


$$
E(X^{2}) = \\int_{−∞}^{+∞} x^{2} ⋅ \\frac{1}{2}e^{−∣x∣} dx.
$$

由于被积函数为偶函数，可得


$$
E(X^{2}) = 2 \\int_{0}^{+∞} x^{2} ⋅ \\frac{1}{2}e^{−x} dx = \\int_{0}^{+∞} x^{2}e^{−x} dx.
$$

该积分是 Gamma 函数$Γ(3) = 2! = 2$，因此


$$
E(X^{2}) = 2,  D(X) = 2.
$$


(2) 协方差


$$
Cov(X, ∣X∣) = E \\lbrack X∣X∣ \\rbrack  - E(X)E(∣X∣).
$$

由$E(X) = 0$，得


$$
Cov(X, ∣X∣) = E \\lbrack X∣X∣ \\rbrack .
$$

计算


$$
E \\lbrack X∣X∣ \\rbrack  = \\int_{−∞}^{+∞} x∣x∣ ⋅ \\frac{1}{2}e^{−∣x∣} dx.
$$

令$g(x) = x∣x∣$，则$g(−x) = −x∣x∣ = −g(x)$，故$g(x)$为奇函数，而$f(x)$为偶函数，因此$g(x)f(x)$为奇函数，在对称区间上积分为零，即


$$
E \\lbrack X∣X∣ \\rbrack  = 0.
$$

因此协方差为 0，$X$与$∣X∣$不相关。

(3)$X$与$∣X∣$不相互独立。
理由如下：若相互独立，则对任意 Borel 集$A$和$B$，有


$$
P(X ∈ A, ∣X∣ ∈ B) = P(X ∈ A)P(∣X∣ ∈ B).
$$

取$A = (1, +∞)$，$B = (0, 1)$，则


$$
P(X > 1, ∣X∣ < 1) = 0,
$$

因为若$X > 1$则$∣X∣ > 1$，不可能有$∣X∣ < 1$。但


$$
P(X > 1) > 0,  P(∣X∣ < 1) > 0,
$$

所以


$$
P(X > 1)P(∣X∣ < 1) > 0,
$$

与独立性矛盾。因此$X$与$∣X∣$不相互独立。
', 9, 'Mogullzr', '2026-01-29 14:08:36', 9, 'Mogullzr', '2026-01-29 14:08:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '664');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '664');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '664');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (665, '1993年考研数学卷2第1题', '', '考研数学1993年卷2真题', '/problems/other/642', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (666, '1993年考研数学卷2第2题', '', '考研数学1993年卷2真题', '/problems/other/643', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (667, '1993年考研数学卷2第3题', '', '考研数学1993年卷2真题', '/problems/other/644', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (668, '1993年考研数学卷2第4题', '', '考研数学1993年卷2真题', '/problems/other/645', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (669, '1993年考研数学卷2第5题', '', '考研数学1993年卷2真题', '/problems/other/646', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (670, '1993年考研数学卷2第6题', '', '考研数学1993年卷2真题', '/problems/other/647', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (671, '1993年考研数学卷2第7题', '', '考研数学1993年卷2真题', '/problems/other/648', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (672, '1993年考研数学卷2第8题', '', '考研数学1993年卷2真题', '/problems/other/649', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (673, '1993年考研数学卷2第9题', '', '考研数学1993年卷2真题', '/problems/other/650', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (674, '1993年考研数学卷2第10题', '', '考研数学1993年卷2真题', '/problems/other/651', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (675, '1993年考研数学卷2第11题', '', '考研数学1993年卷2真题', '/problems/other/652', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (676, '1993年考研数学卷2第12题', '', '考研数学1993年卷2真题', '/problems/other/653', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (677, '1993年考研数学卷2第13题', '', '考研数学1993年卷2真题', '/problems/other/654', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (678, '1993年考研数学卷2第14题', '简单', '考研数学1993年卷2真题', '设$z = x^{3}f (xy, \\frac{y}{x})$，$f$具有连续二阶偏导数，
求$\\frac{∂z}{∂y}$,$\\frac{∂^{2}z}{∂y^{2}}$及$\\frac{∂^{2}z}{∂x∂y}$．', '[]', '

$$
\\frac{∂z}{∂y} = x^{4}f_{u} + x^{2}f_{v}
$$



$$
\\frac{∂^{2}z}{∂y^{2}} = x^{5}f_{uu} + 2x^{3}f_{uv} + xf_{vv}
$$



$$
\\frac{∂^{2}z}{∂x∂y} = x^{4}yf_{uu} + 4x^{3}f_{u} + 2xf_{v} - yf_{vv}
$$

其中$f_{u} = \\frac{∂f}{∂u}$,$f_{v} = \\frac{∂f}{∂v}$,$f_{uu} = \\frac{∂^{2}f}{∂u^{2}}$,$f_{uv} = \\frac{∂^{2}f}{∂u∂v}$,$f_{vv} = \\frac{∂^{2}f}{∂v^{2}}$，且$u = xy$,$v = \\frac{y}{x}$.
', '设$u = xy$,$v = \\frac{y}{x}$，则$z = x^{3}f(u, v)$.
首先求$\\frac{∂z}{∂y}$:


$$
\\frac{∂z}{∂y} = x^{3}\\frac{∂f}{∂y} = x^{3} (\\frac{∂f}{∂u}\\frac{∂u}{∂y} + \\frac{∂f}{∂v}\\frac{∂v}{∂y}) = x^{3} (f_{u} ⋅ x + f_{v} ⋅ \\frac{1}{x}) = x^{4}f_{u} + x^{2}f_{v}.
$$

其次求$\\frac{∂^{2}z}{∂y^{2}}$:


$$
\\frac{∂^{2}z}{∂y^{2}} = \\frac{∂}{∂y} (x^{4}f_{u} + x^{2}f_{v}) = x^{4}\\frac{∂f_{u}}{∂y} + x^{2}\\frac{∂f_{v}}{∂y}.
$$

其中


$$
\\frac{∂f_{u}}{∂y} = \\frac{∂f_{u}}{∂u}\\frac{∂u}{∂y} + \\frac{∂f_{u}}{∂v}\\frac{∂v}{∂y} = f_{uu} ⋅ x + f_{uv} ⋅ \\frac{1}{x} = xf_{uu} + \\frac{1}{x}f_{uv},
$$



$$
\\frac{∂f_{v}}{∂y} = \\frac{∂f_{v}}{∂u}\\frac{∂u}{∂y} + \\frac{∂f_{v}}{∂v}\\frac{∂v}{∂y} = f_{vu} ⋅ x + f_{vv} ⋅ \\frac{1}{x} = xf_{uv} + \\frac{1}{x}f_{vv} (f_{uv} = f_{vu}).
$$

代入得


$$
\\frac{∂^{2}z}{∂y^{2}} = x^{4} (xf_{uu} + \\frac{1}{x}f_{uv}) + x^{2} (xf_{uv} + \\frac{1}{x}f_{vv}) = x^{5}f_{uu} + x^{3}f_{uv} + x^{3}f_{uv} + xf_{vv} = x^{5}f_{uu} + 2x^{3}f_{uv} + xf_{vv}.
$$

最后求$\\frac{∂^{2}z}{∂x∂y}$:


$$
\\frac{∂^{2}z}{∂x∂y} = \\frac{∂}{∂x} (\\frac{∂z}{∂y}) = \\frac{∂}{∂x} (x^{4}f_{u} + x^{2}f_{v}) = \\frac{∂}{∂x}(x^{4}f_{u}) + \\frac{∂}{∂x}(x^{2}f_{v}).
$$

计算


$$
\\frac{∂}{∂x}(x^{4}f_{u}) = 4x^{3}f_{u} + x^{4}\\frac{∂f_{u}}{∂x},  \\frac{∂}{∂x}(x^{2}f_{v}) = 2xf_{v} + x^{2}\\frac{∂f_{v}}{∂x}.
$$

其中


$$
\\frac{∂f_{u}}{∂x} = \\frac{∂f_{u}}{∂u}\\frac{∂u}{∂x} + \\frac{∂f_{u}}{∂v}\\frac{∂v}{∂x} = f_{uu} ⋅ y + f_{uv} ⋅ (−\\frac{y}{x^{2}}) = yf_{uu} - \\frac{y}{x^{2}}f_{uv},
$$



$$
\\frac{∂f_{v}}{∂x} = \\frac{∂f_{v}}{∂u}\\frac{∂u}{∂x} + \\frac{∂f_{v}}{∂v}\\frac{∂v}{∂x} = f_{vu} ⋅ y + f_{vv} ⋅ (−\\frac{y}{x^{2}}) = yf_{uv} - \\frac{y}{x^{2}}f_{vv}.
$$

代入得


$$
\\frac{∂}{∂x}(x^{4}f_{u}) = 4x^{3}f_{u} + x^{4} (yf_{uu} - \\frac{y}{x^{2}}f_{uv}) = 4x^{3}f_{u} + x^{4}yf_{uu} - x^{2}yf_{uv},
$$



$$
\\frac{∂}{∂x}(x^{2}f_{v}) = 2xf_{v} + x^{2} (yf_{uv} - \\frac{y}{x^{2}}f_{vv}) = 2xf_{v} + x^{2}yf_{uv} - yf_{vv}.
$$

合并得


$$
\\frac{∂^{2}z}{∂x∂y} = (4x^{3}f_{u} + x^{4}yf_{uu} - x^{2}yf_{uv}) + (2xf_{v} + x^{2}yf_{uv} - yf_{vv}) = x^{4}yf_{uu} + 4x^{3}f_{u} + 2xf_{v} - yf_{vv}.
$$

以上即为所求。
', 9, 'Mogullzr', '2026-01-29 14:08:38', 9, 'Mogullzr', '2026-01-29 14:08:38', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '678');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '678');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '678');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (679, '1993年考研数学卷2第15题', '', '考研数学1993年卷2真题', '/problems/other/655', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (680, '1993年考研数学卷2第16题', '简单', '考研数学1993年卷2真题', '已知$R^{3}$的两个基为
$$
α_{1} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) ,  α_{2} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right) ,  α_{3} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)  与 β_{1} = \\left( \\begin{array}{c}
1 \\\\
2 \\\\
1 \\\\
\\end{array} \\right) ,  β_{2} = \\left( \\begin{array}{c}
2 \\\\
3 \\\\
4 \\\\
\\end{array} \\right) ,  β_{3} = \\left( \\begin{array}{c}
3 \\\\
4 \\\\
3 \\\\
\\end{array} \\right) ,
$$
求由基$α_{1},  α_{2},  α_{3}$到基$β_{1},  β_{2},  β_{3}$的过渡矩阵．', '[]', '

$$
\\left( \\begin{array}{ccc}
2 & 3 & 4 \\\\
0 & −1 & 0 \\\\
−1 & 0 & −1 \\\\
\\end{array} \\right)
$$

', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 0 & 0 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right)$，其列为基$α_{1}, α_{2}, α_{3}$；矩阵$B = \\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
2 & 3 & 4 \\\\
1 & 4 & 3 \\\\
\\end{array} \\right)$，其列为基$β_{1}, β_{2}, β_{3}$。由基$α$到基$β$的过渡矩阵$P$满足$B = AP$，即$P = A^{−1}B$。
计算$A$的逆矩阵：

$$
A^{−1} = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
\\frac{1}{2} & 0 & −\\frac{1}{2} \\\\
\\frac{1}{2} & −1 & \\frac{1}{2} \\\\
\\end{array} \\right)
$$

则：

$$
P = A^{−1}B = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
\\frac{1}{2} & 0 & −\\frac{1}{2} \\\\
\\frac{1}{2} & −1 & \\frac{1}{2} \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 2 & 3 \\\\
2 & 3 & 4 \\\\
1 & 4 & 3 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 3 & 4 \\\\
0 & −1 & 0 \\\\
−1 & 0 & −1 \\\\
\\end{array} \\right)
$$

验证：$β_{1} = 2α_{1} + 0α_{2} - 1α_{3}$，$β_{2} = 3α_{1} - 1α_{2} + 0α_{3}$，$β_{3} = 4α_{1} + 0α_{2} - 1α_{3}$，符合要求。
', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '680');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '680');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '680');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (681, '1993年考研数学卷2第17题', '', '考研数学1993年卷2真题', '/problems/other/656', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (682, '1993年考研数学卷2第18题', '', '考研数学1993年卷2真题', '/problems/other/657', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (683, '1993年考研数学卷2第19题', '', '考研数学1993年卷2真题', '/problems/other/659', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (684, '1993年考研数学卷2第20题', '', '考研数学1993年卷2真题', '/problems/other/660', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (685, '1993年考研数学卷2第21题', '', '考研数学1993年卷2真题', '/problems/other/661', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:39', 9, 'Mogullzr', '2026-01-29 14:08:39', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (686, '1993年考研数学卷3第1题', '简单', '考研数学1993年卷3真题', '$\\lim_{x→0^{+}} x \\ln x =$______．', '[]', '
0
', '
考虑极限$\\lim_{x→0^{+}} x \\ln x$。这是一个$0 ⋅ (−∞)$型不定式。将其改写为$\\frac{\\ln x}{1/x}$，当$x → 0^{+}$时，分子$\\ln x → −∞$，分母$1/x → ∞$，形成$\\frac{−∞}{∞}$型不定式，可应用洛必达法则。
求分子和分母的导数：分子$\\ln x$的导数为$1/x$，分母$1/x$的导数为$−1/x^{2}$。
因此，极限化为$\\lim_{x→0^{+}} \\frac{1/x}{−1/x^{2}} = \\lim_{x→0^{+}} −x = 0$。
或者，令$t = − \\ln x$，则当$x → 0^{+}$时，$t → ∞$，且$x = e^{−t}$，原式变为$x \\ln x = e^{−t} ⋅ (−t) = −te^{−t}$。
求极限$\\lim_{t→∞} −te^{−t} = − \\lim_{t→∞} \\frac{t}{e^{t}}$。由于指数函数$e^{t}$增长快于多项式$t$，该极限为 0。
故原极限为 0。
', 9, 'Mogullzr', '2026-01-29 14:08:41', 9, 'Mogullzr', '2026-01-29 14:08:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '686');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '686');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '686');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (687, '1993年考研数学卷3第2题', '简单', '考研数学1993年卷3真题', '函数$y = y(x)$由方程$\\sin(x^{2} + y^{2}) + e^{x} - xy^{2} = 0$所确定，则$\\frac{dy}{dx} =$______．', '[]', '

$$
\\frac{dy}{dx} = −\\frac{2x \\cos(x^{2} + y^{2}) + e^{x} - y^{2}}{2y(\\cos(x^{2} + y^{2}) - x)}
$$

', '对方程$\\sin(x^{2} + y^{2}) + e^{x} - xy^{2} = 0$两边关于$x$求导，注意$y$是$x$的函数。
求导后得：


$$
\\cos(x^{2} + y^{2}) ⋅ (2x + 2y\\frac{dy}{dx}) + e^{x} - (y^{2} + 2xy\\frac{dy}{dx}) = 0
$$

整理项：


$$
2x \\cos(x^{2} + y^{2}) + 2y \\cos(x^{2} + y^{2})\\frac{dy}{dx} + e^{x} - y^{2} - 2xy\\frac{dy}{dx} = 0
$$

将含$\\frac{dy}{dx}$的项移到一边：


$$
2y \\cos(x^{2} + y^{2})\\frac{dy}{dx} - 2xy\\frac{dy}{dx} = −2x \\cos(x^{2} + y^{2}) - e^{x} + y^{2}
$$

提取公因式：


$$
\\frac{dy}{dx}  \\lbrack 2y \\cos(x^{2} + y^{2}) - 2xy \\rbrack  = y^{2} - 2x \\cos(x^{2} + y^{2}) - e^{x}
$$

解得：


$$
\\frac{dy}{dx} = \\frac{y^{2} - 2x \\cos(x^{2} + y^{2}) - e^{x}}{2y \\cos(x^{2} + y^{2}) - 2xy}
$$

化简分母：


$$
\\frac{dy}{dx} = \\frac{y^{2} - 2x \\cos(x^{2} + y^{2}) - e^{x}}{2y(\\cos(x^{2} + y^{2}) - x)}
$$

等价于：


$$
\\frac{dy}{dx} = −\\frac{2x \\cos(x^{2} + y^{2}) + e^{x} - y^{2}}{2y(\\cos(x^{2} + y^{2}) - x)}
$$

此即所求导数。
', 9, 'Mogullzr', '2026-01-29 14:08:41', 9, 'Mogullzr', '2026-01-29 14:08:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '687');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '687');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '687');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (688, '1993年考研数学卷3第3题', '', '考研数学1993年卷3真题', '/problems/other/642', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:41', 9, 'Mogullzr', '2026-01-29 14:08:41', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (689, '1993年考研数学卷3第4题', '简单', '考研数学1993年卷3真题', '$∫ \\frac{\\tan x}{\\sqrt{\\cos x}}dx =$______．', '[]', '
$2\\sqrt{sec x} + C$
', '
考虑积分$∫ \\frac{\\tan x}{\\sqrt{\\cos x}} dx$。首先，将$\\tan x$表示为$\\frac{\\sin x}{\\cos x}$，则积分化为：


$$
∫ \\frac{\\tan x}{\\sqrt{\\cos x}} dx = ∫ \\frac{\\sin x}{\\cos x ⋅ \\sqrt{\\cos x}} dx = ∫ \\frac{\\sin x}{\\cos^{3/2} x} dx.
$$

令$u = \\cos x$，则$du = − \\sin x dx$，即$\\sin x dx = −du$。代入得：


$$
∫ \\frac{\\sin x}{\\cos^{3/2} x} dx = ∫ \\frac{1}{u^{3/2}} ⋅ (−du) = − ∫ u^{−3/2} du.
$$

计算积分：


$$
− ∫ u^{−3/2} du = − (\\frac{u^{−1/2}}{−1/2}) + C = 2u^{−1/2} + C.
$$

代回$u = \\cos x$：


$$
2u^{−1/2} + C = 2(\\cos x)−1/2 + C = 2\\frac{1}{\\sqrt{\\cos x}} + C = 2\\sqrt{sec x} + C.
$$

因此，积分结果为$2\\sqrt{sec x} + C$。
', 9, 'Mogullzr', '2026-01-29 14:08:41', 9, 'Mogullzr', '2026-01-29 14:08:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '689');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '689');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '689');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (690, '1993年考研数学卷3第5题', '简单', '考研数学1993年卷3真题', '已知曲线$y = f(x)$过点$(0, −\\frac{1}{2})$，
且其上任一点$(x, y)$处的切线斜率为$x \\ln(1 + x^{2})$，则$f(x) =$______．', '[]', '

$$
f(x) = \\frac{1}{2}(1 + x^{2}) (\\ln(1 + x^{2}) - 1)
$$

', '由题意，$f^{′}(x) = x \\ln(1 + x^{2})$，故


$$
f(x) = ∫ x \\ln(1 + x^{2}) dx.
$$

令$u = 1 + x^{2}$，则$du = 2x dx$，即$x dx = \\frac{du}{2}$，
于是


$$
f(x) = ∫ \\ln u ⋅ \\frac{du}{2} = \\frac{1}{2} ∫ \\ln u du.
$$

利用积分公式$∫ \\ln u du = u \\ln u - u + C$，可得


$$
f(x) = \\frac{1}{2}(u \\ln u - u) + C = \\frac{1}{2}((1 + x^{2}) \\ln(1 + x^{2}) - (1 + x^{2})) + C.
$$

曲线过点$(0, −\\frac{1}{2})$，代入$x = 0$：


$$
f(0) = \\frac{1}{2}(1 ⋅ \\ln 1 - 1) + C = \\frac{1}{2}(0 - 1) + C = −\\frac{1}{2} + C.
$$

令$f(0) = −\\frac{1}{2}$，得$C = 0$。
因此，


$$
f(x) = \\frac{1}{2}((1 + x^{2}) \\ln(1 + x^{2}) - (1 + x^{2})) = \\frac{1}{2}(1 + x^{2})(\\ln(1 + x^{2}) - 1).
$$

', 9, 'Mogullzr', '2026-01-29 14:08:41', 9, 'Mogullzr', '2026-01-29 14:08:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '690');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '690');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '690');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (691, '1993年考研数学卷3第6题', '简单', '考研数学1993年卷3真题', '当$x → 0$时，变量$\\frac{1}{x^{2}} \\sin \\frac{1}{x}$是', '[''无穷小．'', ''无穷大．'', ''有界的，但不是无穷小．'', ''有界的，但不是无穷大．'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:08:42', 9, 'Mogullzr', '2026-01-29 14:08:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '691');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '691');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '691');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (692, '1993年考研数学卷3第7题', '简单', '考研数学1993年卷3真题', '设$f(x) = \\begin{cases} \\frac{∣x^{2}-1∣}{x-1} & x \\neq 1 \\\\ 2 & x = 1 \\end{cases}$则在点$x = 1$处函数$f(x)$', '[''不连续．'', ''连续，但不可导．'', ''可导，但导数不连续．'', ''可导，且导数连续．'']', "['A']", '
首先检查函数在$x = 1$处的连续性。函数在$x = 1$处定义为$f(1) = 2$。计算极限$\\lim_{x→1} f(x)$。对于$x \\neq 1$，有

$$
f(x) = \\frac{∣x^{2} - 1∣}{x - 1}.
$$
由于$x^{2} - 1 = (x - 1)(x + 1)$，因此

$$
f(x) = \\frac{∣x - 1∣ ⋅ ∣x + 1∣}{x - 1}.
$$

$$
f(x) = \\frac{(x - 1)(x + 1)}{x - 1} = x + 1,
$$
左右极限不相等，故$\\lim_{x→1} f(x)$不存在。因此，函数在$x = 1$处不连续。由于不连续，函数在$x = 1$处不可导。故正确答案为A。', 9, 'Mogullzr', '2026-01-29 14:08:42', 9, 'Mogullzr', '2026-01-29 14:08:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '692');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '692');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '692');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (693, '1993年考研数学卷3第8题', '简单', '考研数学1993年卷3真题', '已知$f(x) = \\begin{cases} x^{2} & 0 ≤ x < 1 \\\\ 1 & 1 ≤ x ≤ 2 \\end{cases}$设$F(x) = \\int_{1}^{x} f(t)dt$（$0 ≤ x ≤ 2$），则$F(x)$为', '[''$\\\\begin{cases} \\\\frac{1}{3}x^{3} & 0 ≤ x < 1; \\\\\\\\ x & 1 ≤ x ≤ 2. \\\\end{cases}$'', ''$\\\\begin{cases} \\\\frac{1}{3}x^{3} - \\\\frac{1}{3} & 0 ≤ x < 1; \\\\\\\\ x & 1 ≤ x ≤ 2. \\\\end{cases}$'', ''$\\\\begin{cases} \\\\frac{1}{3}x^{3} & 0 ≤ x < 1; \\\\\\\\ x - 1 & 1 ≤ x ≤ 2. \\\\end{cases}$'', ''$\\\\begin{cases} \\\\frac{1}{3}x^{3} - \\\\frac{1}{3} & 0 ≤ x < 1; \\\\\\\\ x - 1 & 1 ≤ x ≤ 2. \\\\end{cases}$'']', "['D']", '
给定$F(x) = \\int_{1}^{x} f(t) dt$，其中$0 ≤ x ≤ 2$，且$f(x)$是分段函数。
$$
F(x) = \\int_{1}^{x} 1 dt = x - 1.
$$
比较选项，D 符合计算结果。', 9, 'Mogullzr', '2026-01-29 14:08:42', 9, 'Mogullzr', '2026-01-29 14:08:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '693');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '693');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '693');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (694, '1993年考研数学卷3第9题', '简单', '考研数学1993年卷3真题', '设常数$k > 0$，函数$f(x) = \\ln x - \\frac{x}{e} + k$在$(0, +∞)$内的零点个数为', '[''$3$．'', ''$2$．'', ''$1$．'', ''$0$．'']', "['B']", '
函数$f(x) = \\ln x - \\frac{x}{e} + k$的定义域为$(0, +∞)$。求导得

$$
f^{′}(x) = \\frac{1}{x} - \\frac{1}{e},
$$
令$f^{′}(x) = 0$得$x = e$。二阶导数

$$
f^{′′}(x) = −\\frac{1}{x^{2}} < 0,
$$
所以$x = e$为极大值点。计算

$$
f(e) = \\ln e - \\frac{e}{e} + k = k > 0.
$$
当$x → 0^{+}$时，$\\ln x → −∞$，故$f(x) → −∞$；
当$x → +∞$时，线性项$−\\frac{x}{e}$主导，故$f(x) → −∞$。因此，函数在$(0, e)$内从负无穷单调递增至$f(e) = k > 0$，有一个零点；
在$(e, +∞)$内从$f(e) = k > 0$单调递减至负无穷，有一个零点。综上，函数有两个零点。', 9, 'Mogullzr', '2026-01-29 14:08:42', 9, 'Mogullzr', '2026-01-29 14:08:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '694');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '694');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '694');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (695, '1993年考研数学卷3第10题', '简单', '考研数学1993年卷3真题', '设$f(x) = −f(−x)$，在$(0, +∞)$内$f^{′}(x) > 0$,$f^{′′}(x) > 0$，则$f(x)$在$(−∞, 0)$内', '[''$f^{′}(x) < 0, f^{′′}(x) < 0$．'', ''$f^{′}(x) < 0, f^{′′}(x) > 0$．'', ''$f^{′}(x) > 0, f^{′′}(x) < 0$．'', ''$f^{′}(x) > 0, f^{′′}(x) > 0$．'']', "['C']", '
由条件$f(x) = −f(−x)$可知，函数$f(x)$是奇函数。对于奇函数：其一阶导数$f^{′}(x)$是偶函数，即$f^{′}(−x) = f^{′}(x)$；二阶导数$f^{′′}(x)$是奇函数，即$f^{′′}(−x) = −f^{′′}(x)$。在$(0, +∞)$内，给定$f^{′}(x) > 0$和$f^{′′}(x) > 0$。由于$f^{′}(x)$是偶函数，在$(−∞, 0)$内，对于任意$x < 0$，有$−x > 0$，因此

$$
f^{′}(x) = f^{′}(−x) > 0
$$
由于$f^{′′}(x)$是奇函数，在$(−∞, 0)$内，对于任意$x < 0$，有

$$
f^{′′}(x) = −f^{′′}(−x)
$$
而$f^{′′}(−x) > 0$，所以

$$
f^{′′}(x) < 0
$$
因此，在$(−∞, 0)$内，$f^{′}(x) > 0$且$f^{′′}(x) < 0$，对应选项C。', 9, 'Mogullzr', '2026-01-29 14:08:42', 9, 'Mogullzr', '2026-01-29 14:08:42', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '695');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '695');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '695');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (696, '1993年考研数学卷3第11题', '简单', '考研数学1993年卷3真题', '设$y = \\sin \\lbrack f(x^{2}) \\rbrack$，其中$f$具有二阶导数，求$\\frac{d^{2}y}{dx^{2}}$．', '[]', '

$$
\\frac{d^{2}y}{dx^{2}} = 2f^{′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack  + 4x^{2}f^{′′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack  - 4x^{2} \\lbrack f^{′}(x^{2}) \\rbrack 2 \\sin \\lbrack f(x^{2}) \\rbrack
$$

', '
设$y = \\sin \\lbrack f(x^{2}) \\rbrack$，先求一阶导数。
令$u = f(x^{2})$，则$y = \\sin u$。
由链式法则：

$$
\\frac{dy}{dx} = \\frac{dy}{du} ⋅ \\frac{du}{dx} = \\cos u ⋅ \\frac{du}{dx}.
$$

其中$\\frac{du}{dx} = f^{′}(x^{2}) ⋅ 2x$，所以一阶导数为：

$$
\\frac{dy}{dx} = 2xf^{′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack .
$$

接下来求二阶导数$\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx})$。
令$z = 2xf^{′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack$，这是三个函数的乘积，应用乘积法则：

$$
\\begin{array}{cc}
\\frac{dz}{dx} & = \\frac{d}{dx}(2x) ⋅ f^{′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack  \\\\
 & + 2x ⋅ \\frac{d}{dx} \\lbrack f^{′}(x^{2}) \\rbrack  ⋅ \\cos \\lbrack f(x^{2}) \\rbrack  \\\\
 & + 2x ⋅ f^{′}(x^{2}) ⋅ \\frac{d}{dx} \\lbrack \\cos \\lbrack f(x^{2}) \\rbrack  \\rbrack . \\\\
\\end{array}
$$

计算各项：
$\\frac{d}{dx}(2x) = 2$；$\\frac{d}{dx} \\lbrack f^{′}(x^{2}) \\rbrack  = f^{′′}(x^{2}) ⋅ 2x$（链式法则）；$\\frac{d}{dx} \\lbrack \\cos \\lbrack f(x^{2}) \\rbrack  \\rbrack  = − \\sin \\lbrack f(x^{2}) \\rbrack  ⋅ f^{′}(x^{2}) ⋅ 2x$（链式法则）。
代入得：

$$
\\begin{array}{cc}
\\frac{dz}{dx} & = 2 ⋅ f^{′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack  \\\\
 & + 2x ⋅ (2xf^{′′}(x^{2})) ⋅ \\cos \\lbrack f(x^{2}) \\rbrack  \\\\
 & + 2x ⋅ f^{′}(x^{2}) ⋅ (−2xf^{′}(x^{2}) \\sin \\lbrack f(x^{2}) \\rbrack ). \\\\
\\end{array}
$$

简化：

$$
\\frac{dz}{dx} = 2f^{′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack  + 4x^{2}f^{′′}(x^{2}) \\cos \\lbrack f(x^{2}) \\rbrack  - 4x^{2} \\lbrack f^{′}(x^{2}) \\rbrack 2 \\sin \\lbrack f(x^{2}) \\rbrack .
$$

因此，二阶导数为上式。
', 9, 'Mogullzr', '2026-01-29 14:08:43', 9, 'Mogullzr', '2026-01-29 14:08:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '696');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '696');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '696');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (697, '1993年考研数学卷3第12题', '简单', '考研数学1993年卷3真题', '求$\\lim_{x→−∞} x(\\sqrt{x^{2} + 100 + x})$．', '[]', '-50
', '令$t = −x$，则当$x → −∞$时，有$t → +∞$。
原极限化为：


$$
\\begin{array}{cc}
\\lim_{x→−∞} x(\\sqrt{x^{2} + 100} + x) & = \\lim_{t→+∞}(−t) (\\sqrt{(−t)2 + 100} + (−t)) \\\\
 & = \\lim_{t→+∞} −t (\\sqrt{t^{2} + 100} - t) \\\\
\\end{array}
$$

对$\\sqrt{t^{2} + 100} - t$有理化：


$$
\\sqrt{t^{2} + 100} - t = \\frac{100}{\\sqrt{t^{2} + 100} + t}
$$

代入得：


$$
\\lim_{t→+∞} −t ⋅ \\frac{100}{\\sqrt{t^{2} + 100} + t} = \\lim_{t→+∞} \\frac{−100t}{\\sqrt{t^{2} + 100} + t}
$$

分子分母同时除以$t$：


$$
= \\lim_{t→+∞} \\frac{−100}{\\frac{\\sqrt{t^{2}+100}}{t} + 1} = \\lim_{t→+∞} \\frac{−100}{\\sqrt{1 + \\frac{100}{t^{2}}} + 1}
$$

当$t → +∞$时，$\\frac{100}{t^{2}} → 0$，所以$\\sqrt{1 + \\frac{100}{t^{2}}} → 1$，
因此：


$$
\\frac{−100}{1 + 1} = \\frac{−100}{2} = −50
$$

故极限为$−50$。
', 9, 'Mogullzr', '2026-01-29 14:08:43', 9, 'Mogullzr', '2026-01-29 14:08:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '697');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '697');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '697');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (698, '1993年考研数学卷3第13题', '简单', '考研数学1993年卷3真题', '求$\\int_{0}^{\\frac{π}{4}} \\frac{x}{1+\\cos 2x}dx$．', '[]', '

$$
\\frac{π}{8} - \\frac{1}{4} \\ln 2
$$

', '首先，利用三角恒等式$1 + \\cos 2x = 2 \\cos^{2} x$，将积分化简为：

$$
\\int_{0}^{\\frac{π}{4}} \\frac{x}{1 + \\cos 2x} dx = \\int_{0}^{\\frac{π}{4}} \\frac{x}{2 \\cos^{2} x} dx = \\frac{1}{2} \\int_{0}^{\\frac{π}{4}} x sec^{2} x dx.
$$

接下来，使用分部积分法计算$∫ x sec^{2} x dx$。设$u = x$，$dv = sec^{2} x dx$，则$du = dx$，$v = \\tan x$。分部积分公式为：

$$
∫ u dv = uv - ∫ v du,
$$

所以：

$$
∫ x sec^{2} x dx = x \\tan x - ∫ \\tan x dx.
$$

其中，$∫ \\tan x dx = ∫ \\frac{\\sin x}{\\cos x} dx = − \\ln ∣ \\cos x∣ + C$。在区间$\\lbrack 0, \\frac{π}{4} \\rbrack$上，$\\cos x > 0$，因此：

$$
∫ x sec^{2} x dx = x \\tan x + \\ln(\\cos x) + C.
$$

代入积分上下限：

$$
\\frac{1}{2} \\int_{0}^{\\frac{π}{4}} x sec^{2} x dx = \\frac{1}{2}  \\lbrack x \\tan x + \\ln(\\cos x) \\rbrack _{0}^{\\frac{π}{4}} .
$$

计算在$x = \\frac{π}{4}$的值：

$$
x \\tan x = \\frac{π}{4} ⋅ \\tan \\frac{π}{4} = \\frac{π}{4},  \\ln(\\cos x) = \\ln (\\frac{\\sqrt{2}}{2}) = −\\frac{1}{2} \\ln 2,
$$

所以：

$$
\\lbrack x \\tan x + \\ln(\\cos x) \\rbrack _{x=\\frac{π}{4}} = \\frac{π}{4} - \\frac{1}{2} \\ln 2.
$$

在$x = 0$的值：

$$
x \\tan x = 0 ⋅ \\tan 0 = 0,  \\ln(\\cos x) = \\ln 1 = 0,
$$

所以：

$$
\\lbrack x \\tan x + \\ln(\\cos x) \\rbrack _{x=0} = 0.
$$

因此：

$$
\\frac{1}{2} (\\frac{π}{4} - \\frac{1}{2} \\ln 2 - 0) = \\frac{1}{2} (\\frac{π}{4} - \\frac{1}{2} \\ln 2) = \\frac{π}{8} - \\frac{1}{4} \\ln 2.
$$

故积分为$\\frac{π}{8} - \\frac{1}{4} \\ln 2$.
', 9, 'Mogullzr', '2026-01-29 14:08:43', 9, 'Mogullzr', '2026-01-29 14:08:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '698');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '698');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '698');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (699, '1993年考研数学卷3第14题', '简单', '考研数学1993年卷3真题', '求$\\int_{0}^{+∞} \\frac{x}{(1+x)^{3}}dx$．', '[]', '$\\frac{1}{2}$
', '考虑积分$\\int_{0}^{+∞} \\frac{x}{(1+x)3} dx$。使用代换法，令$u = 1 + x$，则$du = dx$，积分限变为$u = 1$到$u → +∞$。积分化为：

$$
\\int_{1}^{+∞} \\frac{u - 1}{u^{3}} du = \\int_{1}^{+∞} (u^{−2} - u^{−3}) du.
$$

计算不定积分：

$$
∫ (u^{−2} - u^{−3}) du = −u^{−1} + \\frac{1}{2}u^{−2} + C.
$$

代入上下限：

$$
\\lim_{b→∞}  \\lbrack −u^{−1} + \\frac{1}{2}u^{−2} \\rbrack _{1}^{b} = \\lim_{b→∞} (−\\frac{1}{b} + \\frac{1}{2b^{2}}) - (−\\frac{1}{1} + \\frac{1}{2}) = 0 - (−1 + \\frac{1}{2}) = \\frac{1}{2}.
$$

因此，积分值为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:08:43', 9, 'Mogullzr', '2026-01-29 14:08:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '699');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '699');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '699');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (700, '1993年考研数学卷3第15题', '简单', '考研数学1993年卷3真题', '求微分方程$(x^{2} - 1)dy + (2xy - \\cos x)dx = 0$满足初始条件$y∣_{x=0} = 0$的特解．', '[]', '

$$
y = \\frac{\\sin x}{x^{2} - 1}
$$

', '将微分方程$(x^{2} - 1) dy + (2xy - \\cos x) dx = 0$化为标准形式：

$$
\\frac{dy}{dx} + \\frac{2x}{x^{2} - 1}y = \\frac{\\cos x}{x^{2} - 1}
$$

积分因子为$μ(x) = e^{∫ \\frac{2x}{x^{2}-1} dx} = e^{\\ln ∣x^{2}-1∣} = x^{2} - 1$（忽略绝对值不影响结果）。乘以积分因子后，方程变为：

$$
\\frac{d}{dx}  \\lbrack (x^{2} - 1)y \\rbrack  = \\cos x
$$

积分两边：

$$
(x^{2} - 1)y = ∫ \\cos x dx = \\sin x + C
$$

解得：

$$
y = \\frac{\\sin x + C}{x^{2} - 1}
$$

代入初始条件$y∣_{x=0} = 0$：

$$
0 = \\frac{\\sin 0 + C}{0^{2} - 1} = \\frac{C}{−1}  ⟹  C = 0
$$

因此特解为：

$$
y = \\frac{\\sin x}{x^{2} - 1}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:43', 9, 'Mogullzr', '2026-01-29 14:08:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '700');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '700');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '700');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (701, '1993年考研数学卷3第16题', '简单', '考研数学1993年卷3真题', '设二阶常系数线性微分方程$y^{′′} + αy^{′} + βy = γe^{x}$的一个特解为$y = e^{2x} + (1 + x)e^{x}$，
试确定常数$α$,$β$,$γ$，并求该方程的通解．', '[]', '常数$α = −3$，$β = 2$，$γ = −1$。该方程的通解为$y = (C_{1} + x)e^{x} + C_{2}e^{2x}$，其中$C_{1}$和$C_{2}$为任意常数。
', '给定二阶常系数线性微分方程$y^{′′} + αy^{′} + βy = γe^{x}$的一个特解为$y_{p} = e^{2x} + (1 + x)e^{x}$。首先，计算特解的一阶和二阶导数：

$$
y_{p}^{′} = 2e^{2x} + 2e^{x} + xe^{x},  y_{p}^{′′} = 4e^{2x} + 3e^{x} + xe^{x}.
$$

代入原方程：

$$
y_{p}^{′′} + αy_{p}^{′} + βy_{p} = γe^{x}.
$$

代入后得：

$$
(4 + 2α + β)e^{2x} + (3 + 2α + β)e^{x} + (1 + α + β)xe^{x} = γe^{x}.
$$

比较系数，得到方程组：

$$
\\begin{cases} 4 + 2α + β = 0 (1) \\\\ 1 + α + β = 0 (2) \\\\ 3 + 2α + β = γ (3) \\end{cases}
$$

解方程组：由(1)和(2)相减得$3 + α = 0$，所以$α = −3$。代入(2)得$1 - 3 + β = 0$，所以$β = 2$。代入(3)得$3 + 2(−3) + 2 = γ$，所以$γ = −1$。
原方程为$y^{′′} - 3y^{′} + 2y = −e^{x}$。齐次方程$y^{′′} - 3y^{′} + 2y = 0$的特征方程为$r^{2} - 3r + 2 = 0$，解得$r = 1, 2$，齐次解为$y_{h} = C_{1}e^{x} + C_{2}e^{2x}$。特解已知为$y_{p} = e^{2x} + (1 + x)e^{x}$。通解为齐次解加特解：

$$
y = y_{h} + y_{p} = C_{1}e^{x} + C_{2}e^{2x} + e^{2x} + (1 + x)e^{x} = (C_{1} + 1 + x)e^{x} + (C_{2} + 1)e^{2x}.
$$

令$C_{1}^{′} = C_{1} + 1$，$C_{2}^{′} = C_{2} + 1$，则通解为$y = (C_{1}^{′} + x)e^{x} + C_{2}^{′}e^{2x}$。重新标记常数为$C_{1}$和$C_{2}$，得通解$y = (C_{1} + x)e^{x} + C_{2}e^{2x}$。
', 9, 'Mogullzr', '2026-01-29 14:08:44', 9, 'Mogullzr', '2026-01-29 14:08:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '701');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '701');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '701');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (702, '1993年考研数学卷3第17题', '简单', '考研数学1993年卷3真题', '设平面图形$A$由$x^{2} + y^{2} ≤ 2x$与$y ≥ x$所确定，
求图形$A$绕$x = 2$旋转一周所得旋转体的体积．', '[]', '$\\frac{π^{2}}{2} - \\frac{2π}{3}$
', '
图形$A$由$x^{2} + y^{2} ≤ 2x$与$y ≥ x$所确定。
将$x^{2} + y^{2} ≤ 2x$化为标准形式：


$$
(x - 1)2 + y^{2} ≤ 1,
$$

表示圆心在$(1, 0)$、半径为$1$的圆盘。
与$y ≥ x$结合，求得交点为$(0, 0)$和$(1, 1)$，因此图形$A$对应圆盘在直线$y = x$上方的部分。
绕直线$x = 2$旋转时，采用圆环法，以$y$为积分变量。
对于$y ∈  \\lbrack 0, 1 \\rbrack$，$x$的范围为从$x = 1 - \\sqrt{1 - y^{2}}$到$x = y$。
旋转半径为到$x = 2$的距离：
外半径为$2 - (1 - \\sqrt{1 - y^{2}}) = 1 + \\sqrt{1 - y^{2}}$，内半径为$2 - y$。
旋转体的体积为：


$$
V = π \\int_{0}^{1} \\lbrack (1 + \\sqrt{1 - y^{2}})2 - (2 - y)2 \\rbrack  dy.
$$

展开被积函数：


$$
(1 + \\sqrt{1 - y^{2}})2 = 1 + 2\\sqrt{1 - y^{2}} + 1 - y^{2} = 2 + 2\\sqrt{1 - y^{2}} - y^{2},
$$



$$
(2 - y)2 = 4 - 4y + y^{2}.
$$

差值为：


$$
2 + 2\\sqrt{1 - y^{2}} - y^{2} - 4 + 4y - y^{2} = 2\\sqrt{1 - y^{2}} + 4y - 2y^{2} - 2.
$$

因此，


$$
V = π \\int_{0}^{1}(2\\sqrt{1 - y^{2}} + 4y - 2y^{2} - 2) dy.
$$

计算积分：


$$
\\int_{0}^{1} 2\\sqrt{1 - y^{2}} dy = 2 ⋅ \\frac{π}{4} = \\frac{π}{2},
$$



$$
\\int_{0}^{1} 4y dy = 4 ⋅ \\frac{1}{2} = 2,
$$



$$
\\int_{0}^{1} 2y^{2} dy = 2 ⋅ \\frac{1}{3} = \\frac{2}{3},
$$



$$
\\int_{0}^{1} 2 dy = 2.
$$

总和为：


$$
\\frac{π}{2} + 2 - \\frac{2}{3} - 2 = \\frac{π}{2} - \\frac{2}{3}.
$$

故


$$
V = π (\\frac{π}{2} - \\frac{2}{3}) = \\frac{π^{2}}{2} - \\frac{2π}{3}.
$$

因此，旋转体的体积为$\\frac{π^{2}}{2} - \\frac{2π}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:08:44', 9, 'Mogullzr', '2026-01-29 14:08:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '702');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '702');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '702');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (703, '1993年考研数学卷3第18题', '简单', '考研数学1993年卷3真题', '作半径为$r$的球的外切正圆锥，问此圆锥的高$h$为何值时，其体积$V$最小，并求出该最小值．', '[]', '
当圆锥的高$h = 4r$时，体积$V$最小，最小值为$\\frac{8}{3}πr^{3}$。
', '
设圆锥的底面半径为$R$，高为$h$，体积$V = \\frac{1}{3}πR^{2}h$。
由于球外切于圆锥，在圆锥的纵截面中，等腰三角形的内切圆半径为$r$。
根据面积关系，圆锥纵截面的面积为$Rh$，半周长为$\\sqrt{h^{2} + R^{2}} + R$，内切圆半径与面积的关系为


$$
Rh = r (\\sqrt{h^{2} + R^{2}} + R)
$$

整理得


$$
R(h - r) = r\\sqrt{h^{2} + R^{2}}
$$

两边平方得


$$
R^{2}(h - r)2 = r^{2}(h^{2} + R^{2})
$$

进一步化简得


$$
R^{2}(h^{2} - 2hr) = r^{2}h^{2}
$$

即


$$
R^{2} = \\frac{r^{2}h}{h - 2r} (其中h > 2r)
$$

代入体积公式得


$$
V = \\frac{1}{3}π ⋅ \\frac{r^{2}h}{h - 2r} ⋅ h = \\frac{πr^{2}}{3} ⋅ \\frac{h^{2}}{h - 2r}
$$

令$f(h) = \\frac{h^{2}}{h-2r}$，求导得


$$
f^{′}(h) = \\frac{h(h - 4r)}{(h - 2r)2}
$$

令$f^{′}(h) = 0$，得$h = 4r$（舍去$h = 0$）。
当$2r < h < 4r$时，$f^{′}(h) < 0$；当$h > 4r$时，$f^{′}(h) > 0$，
故$h = 4r$时$f(h)$取极小值，即体积$V$取最小值。
代入$h = 4r$得


$$
R^{2} = \\frac{r^{2} ⋅ 4r}{4r - 2r} = 2r^{2}
$$

所以


$$
V = \\frac{1}{3}π ⋅ 2r^{2} ⋅ 4r = \\frac{8}{3}πr^{3}
$$

因此，当高$h = 4r$时，圆锥体积最小，最小值为$\\frac{8}{3}πr^{3}$。
', 9, 'Mogullzr', '2026-01-29 14:08:44', 9, 'Mogullzr', '2026-01-29 14:08:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '703');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '703');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '703');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (704, '1993年考研数学卷3第19题', '简单', '考研数学1993年卷3真题', '设$x > 0$，常数$a > e$，证明：$(a + x)a < a^{a+x}$．', '[]', '
考虑函数$f(x) = a \\ln(a + x) - (a + x) \\ln a$，其中$x > 0$且$a > e$。原不等式$(a + x)a < a^{a+x}$等价于$f(x) < 0$。
当$x = 0$时，$f(0) = a \\ln a - a \\ln a = 0$。
计算导数：


$$
f^{′}(x) = \\frac{a}{a + x} - \\ln a
$$

由于$a > e$，有$\\ln a > 1$，且对于$x > 0$，有$\\frac{a}{a+x} < 1$，因此$f^{′}(x) < 0$。
故$f(x)$在$x > 0$时严格递减，结合$f(0) = 0$，得$f(x) < 0$对于所有$x > 0$成立，即原不等式成立。
', '
考虑函数$f(x) = a \\ln(a + x) - (a + x) \\ln a$，其中$x > 0$且$a > e$。原不等式$(a + x)a < a^{a+x}$等价于$f(x) < 0$。
当$x = 0$时，$f(0) = a \\ln a - a \\ln a = 0$。
计算导数：


$$
f^{′}(x) = \\frac{a}{a + x} - \\ln a
$$

由于$a > e$，有$\\ln a > 1$，且对于$x > 0$，有$\\frac{a}{a+x} < 1$，因此$f^{′}(x) < 0$。
故$f(x)$在$x > 0$时严格递减，结合$f(0) = 0$，得$f(x) < 0$对于所有$x > 0$成立，即原不等式成立。
', 9, 'Mogullzr', '2026-01-29 14:08:44', 9, 'Mogullzr', '2026-01-29 14:08:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '704');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '704');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '704');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (705, '1993年考研数学卷3第20题', '简单', '考研数学1993年卷3真题', '设$f^{′}(x)$在$\\lbrack 0, a \\rbrack$上连续，且$f(0) = 0$，证明：
$$
​\\int_{0}^{a} f(x)dx​ ≤ \\frac{Ma^{2}}{2},
$$
其中$M = \\max_{0≤x≤a} ∣f^{′}(x)∣$．', '[]', '
证法一：任取$x ∈ (0, a \\rbrack$，由微分中值定理有

$$
f(x) = f(x) - f(0) = f^{′}(ξ)x,  ξ ∈ (0, x).
$$

再由定积分的绝对值不等式有

$$
​\\int_{0}^{a} f(x)dx​ = ​\\int_{0}^{a} f^{′}(ξ)xdx​ ≤ \\int_{0}^{a} ∣f^{′}(ξ)∣ xdx ≤ M \\int_{0}^{a} xdx = M\\frac{a^{2}}{2}.
$$


证法二：由微积分基本公式及定积分的绝对值不等式有

$$
∣f(x)∣ = ∣f(x) - f(0)∣ = ​\\int_{0}^{x} f^{′}(t)dt​ ≤ \\int_{0}^{x} ∣f^{′}(t)∣ dt ≤ \\int_{0}^{x} Mdt = Mx.
$$

从而由积分的保号性有

$$
​\\int_{0}^{a} f(x)dx​ ≤ \\int_{0}^{a} ∣f(x)∣dx ≤ \\int_{0}^{a} Mxdx = M\\frac{a^{2}}{2}.
$$

', '
证法一：任取$x ∈ (0, a \\rbrack$，由微分中值定理有

$$
f(x) = f(x) - f(0) = f^{′}(ξ)x,  ξ ∈ (0, x).
$$

再由定积分的绝对值不等式有

$$
​\\int_{0}^{a} f(x)dx​ = ​\\int_{0}^{a} f^{′}(ξ)xdx​ ≤ \\int_{0}^{a} ∣f^{′}(ξ)∣ xdx ≤ M \\int_{0}^{a} xdx = M\\frac{a^{2}}{2}.
$$


证法二：由微积分基本公式及定积分的绝对值不等式有

$$
∣f(x)∣ = ∣f(x) - f(0)∣ = ​\\int_{0}^{x} f^{′}(t)dt​ ≤ \\int_{0}^{x} ∣f^{′}(t)∣ dt ≤ \\int_{0}^{x} Mdt = Mx.
$$

从而由积分的保号性有

$$
​\\int_{0}^{a} f(x)dx​ ≤ \\int_{0}^{a} ∣f(x)∣dx ≤ \\int_{0}^{a} Mxdx = M\\frac{a^{2}}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:44', 9, 'Mogullzr', '2026-01-29 14:08:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '705');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '705');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '705');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (706, '1993年考研数学卷4第1题', '简单', '考研数学1993年卷4真题', '$\\lim_{x→∞} \\frac{3x^{2}+5}{5x+3} \\sin \\frac{2}{x} =$______．', '[]', '$\\frac{6}{5}$
', '考虑极限$\\lim_{x→∞} \\frac{3x^{2}+5}{5x+3} \\sin \\frac{2}{x}$。令$t = \\frac{1}{x}$，则当$x → ∞$时，$t → 0^{+}$。代入得：

$$
\\lim_{t→0^{+}} \\frac{3(\\frac{1}{t})2 + 5}{5(\\frac{1}{t}) + 3} \\sin(2t) = \\lim_{t→0^{+}} \\frac{\\frac{3}{t^{2}} + 5}{\\frac{5}{t} + 3} \\sin(2t).
$$

将分子和分母同乘$t^{2}$：

$$
\\lim_{t→0^{+}} \\frac{3 + 5t^{2}}{5t + 3t^{2}} \\sin(2t).
$$

利用$\\sin(2t) ∼ 2t$当$t → 0$，且$\\lim_{t→0} \\frac{\\sin(2t)}{2t} = 1$，有：

$$
\\lim_{t→0^{+}} \\frac{3 + 5t^{2}}{5t + 3t^{2}} ⋅ 2t = \\lim_{t→0^{+}} \\frac{2t(3 + 5t^{2})}{5t + 3t^{2}}.
$$

约去公因子$t$：

$$
\\lim_{t→0^{+}} \\frac{2(3 + 5t^{2})}{5 + 3t} = \\frac{2 ⋅ 3}{5} = \\frac{6}{5}.
$$

因此，极限值为$\\frac{6}{5}$.
', 9, 'Mogullzr', '2026-01-29 14:08:47', 9, 'Mogullzr', '2026-01-29 14:08:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '706');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '706');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '706');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (707, '1993年考研数学卷4第2题', '简单', '考研数学1993年卷4真题', '已知$y = f (\\frac{3x-2}{3x+2}) , f^{′}(x) = arctan x^{2}$，则$\\frac{dy}{dx}​_{x=0} =$______．', '[]', '$\\frac{3π}{4}$
', '已知$y = f (\\frac{3x-2}{3x+2})$和$f^{′}(x) = arctan x^{2}$，需求$\\frac{dy}{dx}​_{x=0}$。
设$u = \\frac{3x-2}{3x+2}$，则$y = f(u)$。由链式法则，有：

$$
\\frac{dy}{dx} = f^{′}(u) ⋅ \\frac{du}{dx}.
$$

首先，求$f^{′}(u)$。由于$f^{′}(x) = arctan x^{2}$，故$f^{′}(u) = arctan(u^{2})$.
其次，求$\\frac{du}{dx}$。由商法则：

$$
\\frac{du}{dx} = \\frac{(3)(3x + 2) - (3x - 2)(3)}{(3x + 2)2} = \\frac{9x + 6 - 9x + 6}{(3x + 2)2} = \\frac{12}{(3x + 2)2}.
$$

因此，

$$
\\frac{dy}{dx} = arctan(u^{2}) ⋅ \\frac{12}{(3x + 2)2}.
$$

在$x = 0$处：

$$
u = \\frac{3 ⋅ 0 - 2}{3 ⋅ 0 + 2} = \\frac{−2}{2} = −1,
$$



$$
u^{2} = (−1)2 = 1,
$$



$$
f^{′}(u) = arctan(1) = \\frac{π}{4},
$$



$$
\\frac{du}{dx} = \\frac{12}{(3 ⋅ 0 + 2)2} = \\frac{12}{4} = 3.
$$

故：

$$
\\frac{dy}{dx}​_{x=0} = \\frac{π}{4} ⋅ 3 = \\frac{3π}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:47', 9, 'Mogullzr', '2026-01-29 14:08:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '707');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '707');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '707');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (708, '1993年考研数学卷4第3题', '简单', '考研数学1993年卷4真题', '级数$\\sum_{n=0}^{∞} \\frac{(\\ln 3)n}{2^{n}}$的和为 ______．', '[]', '
$\\frac{2}{2-\\ln 3}$
', '
该级数为几何级数$\\sum_{n=0}^{∞} (\\frac{\\ln 3}{2})^{n}$，其中首项$a = 1$，公比$r = \\frac{\\ln 3}{2}$。由于$∣r∣ = ​\\frac{\\ln 3}{2}​ < 1$，该级数收敛。几何级数的求和公式为$\\frac{a}{1-r}$，代入可得其和为


$$
\\frac{1}{1 - \\frac{\\ln 3}{2}} = \\frac{2}{2 - \\ln 3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:47', 9, 'Mogullzr', '2026-01-29 14:08:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '708');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '708');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '708');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (709, '1993年考研数学卷4第4题', '简单', '考研数学1993年卷4真题', '设$4$阶方阵$A$的秩为$2$，则其伴随矩阵$A^{∗}$的秩为 ______．', '[]', '0
', '
因为$A$是 4 阶方阵且秩为 2，即$rank(A) = 2$，小于$n - 1 = 3$。
根据伴随矩阵的性质，当$rank(A) < n - 1$时，所有$n - 1$阶子式均为零，因此所有代数余子式均为零，伴随矩阵$A^{∗}$为零矩阵，故其秩为 0。
', 9, 'Mogullzr', '2026-01-29 14:08:47', 9, 'Mogullzr', '2026-01-29 14:08:47', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '709');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '709');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '709');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (710, '1993年考研数学卷4第5题', '简单', '考研数学1993年卷4真题', '设总体$X$的方差为1，根据来自$X$的容量为$100$的简单随机样本，测得样本均值为$5$,
则$X$的数学期望的置信度近似等于$0.95$的置信区间为 ______．', '[]', '$(4.804, 5.196)$
', '
已知总体方差为$1$，即$σ^{2} = 1$，所以标准差$σ = 1$。样本容量$n = 100$，样本均值$\\bar{x} = 5$，置信度近似为$0.95$。由于总体方差已知且样本容量较大，使用正态分布构造置信区间。置信区间的公式为


$$
\\bar{x} ± z_{α/2}\\frac{σ}{\\sqrt{n}},
$$

其中$α = 1 - 0.95 = 0.05$，$α/2 = 0.025$，对应标准正态分布的上$α/2$分位数$z_{α/2} = 1.96$。计算标准误差：


$$
\\frac{σ}{\\sqrt{n}} = \\frac{1}{\\sqrt{100}} = 0.1
$$

则置信区间为


$$
5 ± 1.96 × 0.1 = 5 ± 0.196
$$

即$(4.804,  5.196)$。
', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '710');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '710');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1075', '710');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (711, '1993年考研数学卷4第6题', '简单', '考研数学1993年卷4真题', '设$f(x) =$$\\begin{cases} \\sqrt{∣x∣} \\sin \\frac{1}{x^{2}} & x \\neq 0 \\\\ 0 & x = 0 \\end{cases}$则$f(x)$在点$x = 0$处', '[''极限不存在．'', ''极限存在但不连续．'', ''连续但不可导．'', ''可导．'']', "['C']", '首先，考虑函数在$x = 0$处的极限。当$x \\neq 0$时，$f(x) = \\sqrt{∣x∣} \\sin \\frac{1}{x^{2}}$。由于$∣ \\sin \\frac{1}{x^{2}}∣ ≤ 1$，有$∣f(x)∣ ≤ \\sqrt{∣x∣}$。当$x → 0$时，$\\sqrt{∣x∣} → 0$，由夹逼定理知$\\lim_{x→0} f(x) = 0$。因此极限存在。其次，函数在$x = 0$处定义为$f(0) = 0$，且极限值等于函数值，故$f(x)$在$x = 0$处连续。最后，检查可导性。考虑导数定义：$f^{′}(0) = \\lim_{h→0} \\frac{f(0+h)-f(0)}{h} = \\lim_{h→0} \\frac{\\sqrt{∣h∣} \\sin \\frac{1}{h^{2}}}{h}$。当$h → 0^{+}$时，有$\\frac{\\sqrt{∣h∣} \\sin \\frac{1}{h^{2}}}{h} = \\frac{\\sqrt{h} \\sin \\frac{1}{h^{2}}}{h} = \\frac{\\sin \\frac{1}{h^{2}}}{\\sqrt{h}}$。令$t = \\frac{1}{h^{2}}$，则当$h → 0^{+}$时$t → ∞$，表达式化为$t^{1/2} \\sin t$，该式振荡且无界，故极限不存在。类似地，当$h → 0^{-}$时，极限也不存在。因此，$f(x)$在$x = 0$处不可导。综上，$f(x)$在$x = 0$处连续但不可导，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '711');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '711');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '711');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (712, '1993年考研数学卷4第7题', '简单', '考研数学1993年卷4真题', '设$f(x)$为连续函数，且$F(x) = \\int_{\\frac{1}{x}}^{\\ln x} f(t)dt$，
则$F^{′}(x)$等于', '[''$\\\\frac{1}{x}f (\\\\ln x) + \\\\frac{1}{x^{2}}f (\\\\frac{1}{x})$．'', ''$\\\\frac{1}{x}f (\\\\ln x) + f (\\\\frac{1}{x})$．'', ''$\\\\frac{1}{x}f (\\\\ln x) - \\\\frac{1}{x^{2}}f (\\\\frac{1}{x})$．'', ''$f (\\\\ln x) - f (\\\\frac{1}{x})$．'']', "['A']", '
根据莱布尼茨法则，若

$$
F(x) = \\int_{a(x)}^{b(x)} f(t) dt,
$$
则
$$
F^{′}(x) = f(b(x)) b^{′}(x) - f(a(x)) a^{′}(x).
$$
本题中$a(x) = \\frac{1}{x}$，$b(x) = \\ln x$，计算得

$$
a^{′}(x) = −\\frac{1}{x^{2}},  b^{′}(x) = \\frac{1}{x}.
$$
代入公式得

$$
F^{′}(x) = f(\\ln x) ⋅ \\frac{1}{x} - f (\\frac{1}{x}) ⋅ (−\\frac{1}{x^{2}}) = \\frac{1}{x}f(\\ln x) + \\frac{1}{x^{2}}f (\\frac{1}{x}) ,
$$
与选项 A 一致。', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '712');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '712');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '712');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (713, '1993年考研数学卷4第8题', '简单', '考研数学1993年卷4真题', '$n$阶方阵$A$具有$n$个不同的特征值是$A$与对角阵相似的', '[''充分必要条件．'', ''充分而非必要条件．'', ''必要而非充分条件．'', ''既非充分也非必要条件．'']', "['B']", '
若$n$阶方阵$A$有$n$个互不相同的特征值，则$A$有$n$个线性无关的特征向量，因此$A$可对角化，这说明$n$个不同的特征值是充分条件。
但是，$A$可对角化并不必须要求有$n$个不同的特征值，例如单位矩阵有重特征值，但仍然与对角矩阵相似，因此这不是必要条件。
故答案为B。', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '713');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '713');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (714, '1993年考研数学卷4第9题', '简单', '考研数学1993年卷4真题', '假设事件$A$和$B$满足$P(B∣A) = 1$，则', '[''$A$是必然事件．'', ''$P(B∣\\\\overline{A}) = 0$．'', ''$A ⊃ B$．'', ''$A ⊂ B$．'']', "['无']", '
考题有误。采用排除法：对样本空间为$Ω =  \\lbrack 0, 1 \\rbrack$的几何模型，取$A = (0, 1 \\rbrack$,
$$
B =  \\lbrack 0, 1 \\rbrack ,  有 P(B∣A) = \\frac{P(AB)}{P(A)} = 1,
$$
但$A$不是必然事件，且$A ∈/ B$,$B ∈/ A$, 故排除 (A)、(C)、(D)；另取$A =  \\lbrack 0, \\frac{1}{2} \\rbrack$,$B =  \\lbrack 0, 1 \\rbrack$, 有
$$
P(B∣A) = \\frac{P(AB)}{P(A)} = 1,
$$
但
$$
P(B∣\\bar{A}) = \\frac{P(\\bar{A}B)}{P(\\bar{A})} = 1 \\neq 0,
$$
可排除 (B)；因此本题没有正确选项。', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '714');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '714');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (715, '1993年考研数学卷4第10题', '简单', '考研数学1993年卷4真题', '设随机变量$X$的密度函数为$φ(x)$，且$φ(−x) = φ(x)$，$F(x)$是$X$的分布函数，则对任意实数$a$，有', '[''$F(−a) = 1 - \\\\int_{0}^{a} φ(x)dx$．'', ''$F(−a) = \\\\frac{1}{2} - \\\\int_{0}^{a} φ(x)dx$．'', ''$F(−a) = F(a)$．'', ''$F(−a) = 2F(a) - 1$．'']', "['B']", '由于密度函数$φ(x)$满足$φ(−x) = φ(x)$，即$φ(x)$是偶函数，随机变量$X$的分布关于原点对称。因此，分布函数$F(x)$满足$F(0) = P(X ≤ 0) = 1/2$。对于任意实数$a$，有

$$
F(−a) = P(X ≤ −a) = P(X ≥ a) = 1 - P(X ≤ a) = 1 - F(a).
$$
又因为

$$
\\int_{0}^{a} φ(x) dx = F(a) - F(0) = F(a) - \\frac{1}{2},
$$
所以

$$
F(a) = \\frac{1}{2} + \\int_{0}^{a} φ(x) dx.
$$
代入$F(−a) = 1 - F(a)$，得

$$
F(−a) = 1 - (\\frac{1}{2} + \\int_{0}^{a} φ(x) dx) = \\frac{1}{2} - \\int_{0}^{a} φ(x) dx,
$$
即选项 B 正确。选项 A 错误，因为$1 - \\int_{0}^{a} φ(x) dx$不等于$F(−a)$；
选项 C 错误，因为对于$a > 0$，有$F(−a) < F(a)$；
选项 D 错误，因为当$a = 0$时，$F(0) = 1/2$，但$2F(0) - 1 = 0$，两者不相等。', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '715');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '715');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (716, '1993年考研数学卷4第11题', '简单', '考研数学1993年卷4真题', '设$z = f (x, y)$是由方程$z - y - x + xe^{z-y-x} = 0$所确定的二元函数，求$dz$．', '[]', '
$dz = \\frac{e^{z-y-x}+z-y-x-1}{z-y-x-1}dx + dy$
', '
设$u = z - y - x$，则原方程化为$u + xe^{u} = 0$。
对原方程两边求全微分：


$$
dz - dy - dx + d(xe^{u}) = 0
$$

其中$d(xe^{u}) = e^{u}dx + xe^{u}du$，且$du = dz - dy - dx$。
代入得：


$$
dz - dy - dx + e^{u}dx + xe^{u}(dz - dy - dx) = 0
$$

整理项：


$$
(1 + xe^{u})dz + (−1 + e^{u} - xe^{u})dx + (−1 - xe^{u})dy = 0
$$

由$u + xe^{u} = 0$得$xe^{u} = −u$，代入上式：


$$
(1 - u)dz + (−1 + e^{u} + u)dx + (−1 + u)dy = 0
$$

解出$dz$:


$$
(1 - u)dz = (1 - e^{u} - u)dx + (1 - u)dy
$$



$$
dz = \\frac{1 - e^{u} - u}{1 - u}dx + dy
$$

将$u = z - y - x$代回，并改写分子分母：


$$
dz = \\frac{e^{z-y-x} + z - y - x - 1}{z - y - x - 1}dx + dy
$$

此即为所求全微分。
', 9, 'Mogullzr', '2026-01-29 14:08:48', 9, 'Mogullzr', '2026-01-29 14:08:48', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '716');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '716');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '716');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (717, '1993年考研数学卷4第12题', '简单', '考研数学1993年卷4真题', '已知$\\lim_{x→∞} (\\frac{x-a}{x+a})^{x} = \\int_{a}^{+∞} 4x^{2}e^{−2x}dx$，求常数$a$的值．', '[]', '
$a = 0$或$a = −1$
', '
先求左边的极限：

$$
\\lim_{x→∞} (\\frac{x - a}{x + a})^{x} = \\lim_{x→∞} (1 + \\frac{−2a}{x + a})^{x} = \\exp (\\lim_{x→∞} \\frac{−2ax}{x + a}) = e^{−2a}.
$$

再求右边的积分：

$$
\\int_{a}^{+∞} 4x^{2}e^{−2x}dx = −2 \\int_{a}^{+∞} x^{2}d(e^{−2x}) =  \\lbrack −2x^{2}e^{−2x} \\rbrack a+∞​ + 4 \\int_{a}^{+∞} xe^{−2x}dx
$$


$$
= 2a^{2}e^{−2a} +  \\lbrack −2xe^{−2x} \\rbrack a+∞​ + 2 \\int_{a}^{+∞} e^{−2x}dx
$$


$$
= 2a^{2}e^{−2a} + 2ae^{−2a} + e^{−2a}.
$$

由$e^{−2a} = 2a^{2}e^{−2a} + 2ae^{−2a} + e^{−2a}$，得$a^{2} + a = 0$，所以$a = 0$或$a = −1$。
', 9, 'Mogullzr', '2026-01-29 14:08:49', 9, 'Mogullzr', '2026-01-29 14:08:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '717');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '717');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '717');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (718, '1993年考研数学卷4第13题', '简单', '考研数学1993年卷4真题', '设某产品的成本函数为$C = aq^{2} + bq + c$，需求函数为$q = \\frac{1}{e}(d - p)$，其中$C$为成本，$q$为需求量（即产量），$p$为单价，$a$,$b$,$c$,$d$,$e$都是正的常数，且$d > b$，求：(1) 利润最大时的产量及最大利润；(2) 需求对价格的弹性；(3) 需求对价格弹性的绝对值为$1$时的产量．', '[]', '
(1) 利润最大时的产量为$q^{∗} = \\frac{d-b}{2(a+e)}$，最大利润为$π_{max} = \\frac{(d-b)2}{4(a+e)} - c$。
(2) 需求对价格的弹性为$η = −\\frac{p}{d-p}$。
(3) 需求对价格弹性的绝对值为 1 时的产量为$q = \\frac{d}{2e}$。
', '
(1) 利润函数为$π = R - C$，其中收入$R = pq$。由需求函数$q = \\frac{1}{e}(d - p)$解得$p = d - eq$，代入得$R = (d - eq)q = dq - eq^{2}$。成本函数为$C = aq^{2} + bq + c$，故利润函数为

$$
π = (dq - eq^{2}) - (aq^{2} + bq + c) = −(a + e)q^{2} + (d - b)q - c
$$

对$q$求导并令导数为零：

$$
\\frac{dπ}{dq} = −2(a + e)q + (d - b) = 0
$$

解得

$$
q^{∗} = \\frac{d - b}{2(a + e)}
$$

代入利润函数得最大利润

$$
π_{max} = \\frac{(d - b)2}{4(a + e)} - c
$$

(2) 需求对价格的弹性定义为$η = \\frac{dq}{dp} ⋅ \\frac{p}{q}$。由需求函数$q = \\frac{1}{e}(d - p)$得$\\frac{dq}{dp} = −\\frac{1}{e}$，代入得

$$
η = −\\frac{1}{e} ⋅ \\frac{p}{q}
$$

又$q = \\frac{1}{e}(d - p)$，所以$\\frac{p}{q} = \\frac{ep}{d-p}$，故

$$
η = −\\frac{p}{d - p}
$$

(3) 需求对价格弹性的绝对值为 1，即$∣η∣ = 1$。由$η = −\\frac{p}{d-p}$得

$$
​−\\frac{p}{d - p}​ = \\frac{p}{d - p} = 1
$$

解得$p = d - p$，即$p = \\frac{d}{2}$。代入需求函数$q = \\frac{1}{e}(d - p)$得

$$
q = \\frac{1}{e} (d - \\frac{d}{2}) = \\frac{d}{2e}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:49', 9, 'Mogullzr', '2026-01-29 14:08:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '718');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '718');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '718');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (719, '1993年考研数学卷4第14题', '简单', '考研数学1993年卷4真题', '假设：(1) 函数$y = f(x)$（$0 ≤ x < +∞$）满足条件$f(0) = 0$和$0 ≤ f(x) ≤ e^{x} - 1$；(2) 平行于$y$轴的动直线$MN$与曲线$y = f(x)$和$y = e^{x} - 1$分别相交于点$P_{1}$和$P_{2}$；(3) 曲线$y = f(x)$，直线$MN$与$x$轴所围封闭图形面积$S$恒等于线段$P_{1}P_{2}$的长度．求函数$y = f(x)$的表达式．', '[]', '
$f(x) = \\frac{1}{2}(e^{x} - e^{−x})$
', '
由题设可得示意图如下：

设$P_{1}(x, f(x))$，$P_{2}(x, e^{x} - 1)$，则$S = ∣P_{1}P_{2}∣$，即


$$
\\int_{0}^{x} f(t) dt = e^{x} - 1 - f(x).
$$


两端求导得$f(x) = e^{x} - f^{′}(x)$，即$f(x) + f^{′}(x) = e^{x}$。因此


$$
\\begin{array}{cc}
f(x) & = e^{− ∫ p(x) dx} (∫ q(x)e^{∫ p(x) dx} dx + C) \\\\
 & = e^{− ∫ dx} (∫ e^{x}e^{∫ dx} dx + C) \\\\
 & = e^{−x} (∫ e^{2x} dx + C) \\\\
\\end{array}
$$

由初始条件$f(0) = 0$，得$C = −\\frac{1}{2}$。因此所求函数为


$$
f(x) = \\frac{1}{2}(e^{x} - e^{−x}).
$$

', 9, 'Mogullzr', '2026-01-29 14:08:49', 9, 'Mogullzr', '2026-01-29 14:08:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '719');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '719');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '719');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (720, '1993年考研数学卷4第15题', '简单', '考研数学1993年卷4真题', '假设函数$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内二阶可导，
过点$A(0, f(0))$与$B(1, f(1))$的直线与曲线$y = f(x)$相交于点$C(c, f(c))$，其中$0 < c < 1$．
证明：在$(0, 1)$内至少存在一点$ξ$，使$f^{′′}(ξ) = 0$．', '[]', '见解析
', '
考虑函数$g(x) = f(x) - L(x)$，其中$L(x)$是过点$A(0, f(0))$和$B(1, f(1))$的直线方程，即


$$
L(x) = f(0) + (f(1) - f(0))x.
$$


由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内二阶可导，且$L(x)$是线性函数，故$g(x)$在$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内二阶可导，且


$$
g^{′′}(x) = f^{′′}(x).
$$


由题意，点$C(c, f(c))$在直线$AB$上，故$g(c) = f(c) - L(c) = 0$。同时，


$$
g(0) = f(0) - L(0) = 0,  g(1) = f(1) - L(1) = 0.
$$


因此，$g(0) = g(c) = g(1) = 0$，其中$0 < c < 1$。
在区间$\\lbrack 0, c \\rbrack$上，$g(0) = g(c) = 0$，由罗尔定理，存在一点$a ∈ (0, c)$，使得


$$
g^{′}(a) = 0.
$$


在区间$\\lbrack c, 1 \\rbrack$上，$g(c) = g(1) = 0$，由罗尔定理，存在一点$b ∈ (c, 1)$，使得


$$
g^{′}(b) = 0.
$$


现在考虑$g^{′}(x)$在区间$\\lbrack a, b \\rbrack$上。由于$g^{′}(a) = g^{′}(b) = 0$，且$g^{′}(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，由罗尔定理，存在一点$ξ ∈ (a, b) ⊂ (0, 1)$，使得


$$
g^{′′}(ξ) = 0.
$$


由于$g^{′′}(ξ) = f^{′′}(ξ)$，故


$$
f^{′′}(ξ) = 0.
$$


证毕。
', 9, 'Mogullzr', '2026-01-29 14:08:49', 9, 'Mogullzr', '2026-01-29 14:08:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '720');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '720');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '720');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (721, '1993年考研数学卷4第16题', '简单', '考研数学1993年卷4真题', '$k$为何值时，线性方程组
$$
\\begin{cases} x_{1} + x_{2} + kx_{3} = 4 \\\\ −x_{1} + kx_{2} + x_{3} = k^{2} \\\\ x_{1} - x_{2} + 2x_{3} = −4 \\end{cases}
$$
有惟一解、无解、有无穷多组解？在有解情况下，求出其全部解．', '[]', '见解析
', '
对方程组的增广矩阵作初等行变换，

$$
\\overline{A} = \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & 1 & k &  & 4 \\\\
 &  &  & ⋮ &  \\\\
−1 & k & 1 &  & k^{2} \\\\
 &  &  & ⋮ &  \\\\
1 & −1 & 2 &  & −4 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & −1 & 2 &  & −4 \\\\
 &  &  & ⋮ &  \\\\
−1 & k & 1 &  & k^{2} \\\\
 &  &  & ⋮ &  \\\\
1 & 1 & k &  & 4 \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & −1 & 2 &  & −4 \\\\
 &  &  & ⋮ &  \\\\
0 & k - 1 & 3 &  & k^{2} - 4 \\\\
 &  &  & ⋮ &  \\\\
0 & 2 & k - 2 &  & 8 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & −1 & 2 &  & −4 \\\\
 &  &  & ⋮ &  \\\\
0 & 2 & k - 2 &  & 8 \\\\
 &  &  & ⋮ &  \\\\
0 & k - 1 & 3 &  & k^{2} - 4 \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & −1 & 2 &  & −4 \\\\
 &  &  & ⋮ &  \\\\
0 & 2 & k - 2 &  & 8 \\\\
 &  &  & ⋮ &  \\\\
0 & 0 & \\frac{(1+k)(4-k)}{2} &  & \\frac{k(k-4)}{2} \\\\
\\end{array} \\right)
$$

(I) 当$k \\neq −1$且$k \\neq 4$时，$r(\\overline{A}) = r(A) = 3$，方程组有唯一解，即

$$
x_{1} = \\frac{k^{2} + 2k}{k + 1},  x_{2} = \\frac{k^{2} + 2k + 4}{k + 1},  x_{3} = \\frac{−2k}{k + 1}
$$

(II) 当$k = −1$时，$r(\\overline{A}) = 3, r(A) = 2$。方程组无解。
(III) 当$k = 4$时，有

$$
\\overline{A} = \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & −1 & 2 &  & −4 \\\\
 &  &  & ⋮ &  \\\\
0 & 2 & 2 &  & 8 \\\\
 &  &  & ⋮ &  \\\\
0 & 0 & 0 &  & 0 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
 &  &  & ⋮ &  \\\\
1 & 0 & 3 &  & 0 \\\\
 &  &  & ⋮ &  \\\\
0 & 1 & 1 &  & 4 \\\\
 &  &  & ⋮ &  \\\\
0 & 0 & 0 &  & 0 \\\\
\\end{array} \\right)
$$

因为$r(\\overline{A}) = r(A) = 2 < 3$，方程组有无穷多解。取$x_{3}$为自由变量，得方程组的特解为$α = (0, 4, 0)T$。又导出组的基础解系为$η = (−3, −1, 1)T$，所以方程组的通解为$α + kη$，其中$k$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:08:49', 9, 'Mogullzr', '2026-01-29 14:08:49', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '721');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '721');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (722, '1993年考研数学卷4第17题', '简单', '考研数学1993年卷4真题', '设二次型$f = x_{1}^{2} + x_{2}^{2} + x_{3}^{2} + 2αx_{1}x_{2} + 2βx_{2}x_{3} + 2x_{1}x_{3}$经正交变换$X = PY$化成$f = y_{2}^{2} + 2y_{3}^{2}$，其中$X = (x_{1}, x_{2}, x_{3})T$和$Y = (y_{1}, y_{2}, y_{3})T$是三维列向量，$P$是$3$阶正交矩阵．试求常数$α$,$β$．', '[]', '$α = 0$，$β = 0$
', '二次型$f = x_{1}^{2} + x_{2}^{2} + x_{3}^{2} + 2αx_{1}x_{2} + 2βx_{2}x_{3} + 2x_{1}x_{3}$对应的矩阵为

$$
A = \\left( \\begin{array}{ccc}
1 & α & 1 \\\\
α & 1 & β \\\\
1 & β & 1 \\\\
\\end{array} \\right)
$$

经正交变换后化为$f = y_{2}^{2} + 2y_{3}^{2}$，该标准形对应的特征值为$0, 1, 2$。由于正交变换不改变特征值，矩阵$A$的特征值也为$0, 1, 2$。
计算特征多项式$det(A - λI)$：

$$
det(A - λI) = \\begin{vmatrix}
1 - λ & α & 1\\\\
α & 1 - λ & β\\\\
1 & β & 1 - λ
\\end{vmatrix} = −λ^{3} + 3λ^{2} + (−2 + α^{2} + β^{2})λ + (−α^{2} - β^{2} + 2αβ)
$$

特征多项式应等于$−λ(λ - 1)(λ - 2) = −λ^{3} + 3λ^{2} - 2λ$。比较系数：
$λ$的系数：$−2 + α^{2} + β^{2} = −2$，得$α^{2} + β^{2} = 0$。常数项：$−α^{2} - β^{2} + 2αβ = 0$，代入$α^{2} + β^{2} = 0$得$2αβ = 0$，即$αβ = 0$。
由$α^{2} + β^{2} = 0$和$αβ = 0$，解得$α = 0$，$β = 0$。
验证：当$α = 0$，$β = 0$时，矩阵$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 1 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，特征值为$0, 1, 2$，符合要求。
因此，常数$α = 0$，$β = 0$。
', 9, 'Mogullzr', '2026-01-29 14:08:50', 9, 'Mogullzr', '2026-01-29 14:08:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '722');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '722');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (723, '1993年考研数学卷4第18题', '简单', '考研数学1993年卷4真题', '设随机变量$X$和$Y$同分布，$X$的概率密度为
$$
f(x) = \\begin{cases} \\frac{3}{8}x^{2} & 0 < x < 2 \\\\ 0 & 其他. \\end{cases}
$$
(1) 已知事件$A = \\{X > a\\}$和$B = \\{Y > a\\}$独立，
且$P (A ∪ B) = \\frac{3}{4}$．求常数$a$．(2) 求$\\frac{1}{X^{2}}$的数学期望．', '[]', '
(1)$a = \\sqrt{4}$
(2)$E  \\lbrack \\frac{1}{X^{2}} \\rbrack  = \\frac{3}{4}$
', '
(1) 因为随机变量$X$和$Y$同分布，则

$$
P(A) = P(X > a) = P(Y > a) = P(B),
$$

又事件$A = \\{X > a\\}$和$B = \\{Y > a\\}$独立，故$P(AB) = P(A)P(B)$。由加法公式，

$$
P(A ∪ B) = P(A) + P(B) - P(A)P(B) = 2P(A) -  \\lbrack P(A) \\rbrack 2 = \\frac{3}{4}.
$$

解以$P(A)$为未知量的方程

$$
\\lbrack P(A) \\rbrack 2 - 2P(A) + \\frac{3}{4} = 0,
$$

得$P(A) = \\frac{3}{2}$（舍去）或$P(A) = \\frac{1}{2}$。再依题设条件得

$$
\\frac{1}{2} = P(A) = P\\{X > a\\} = \\int_{a}^{+∞} f(x)dx = \\int_{a}^{2} \\frac{3}{8}x^{2}dx = \\frac{1}{8}(8 - a^{3}).
$$

再解以$a$为未知量的方程$8 - a^{3} = 4$，得$a = \\sqrt{4}$。
(II) 由随机变量函数的数学期望公式，得到

$$
E (\\frac{1}{x^{2}}) = \\int_{−∞}^{+∞} \\frac{1}{x^{2}}f(x)dx = \\int_{0}^{2} \\frac{1}{x^{2}} ⋅ \\frac{3}{8}x^{2}dx = \\int_{0}^{2} \\frac{3}{8}dx = \\frac{3}{4}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:50', 9, 'Mogullzr', '2026-01-29 14:08:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '723');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '723');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (724, '1993年考研数学卷4第19题', '简单', '考研数学1993年卷4真题', '假设一大型设备在任何长为$t$的时间内发生故障的次数$N(t)$服从参数为$λt$的泊松分布．(1) 求相继两次故障之间时间间隔$T$的概率分布；(2) 求在设备已经无故障工作$8$小时的情形下，再无故障运行$8$小时的概率$Q$．', '[]', '
(1) 相继两次故障之间时间间隔$T$服从参数为$λ$的指数分布，即$T ∼ Exp(λ)$，其概率密度函数为$f_{T}(t) = λe^{−λt}$，$t ≥ 0$。
(2) 概率$Q = e^{−8λ}$。
', '
(Ⅰ)易见$T$是只取非负值的连续型随机变量。当$t < 0$时，$F(t) = P\\{T ≤ t\\} = 0$;
当$t ≥ 0$时，事件$\\{T > t\\}$与$\\{N(t) = 0\\}$等价。于是有

$$
F(t) = P\\{T ≤ t\\} = 1 - P\\{T > t\\} = 1 - P\\{N(t) = 0\\} = 1 - e^{−λt}.
$$

因此

$$
F(t) = \\begin{cases} 1 - e^{−λt} & t ≥ 0 \\\\ 0 & t < 0 \\end{cases}
$$

即$T$服从参数为$λ$的指数分布。
(Ⅱ)由于指数分布具有“无记忆性”，因此

$$
\\begin{array}{cc}
Q & = P\\{T ≥ 16 ∣ T ≥ 8\\} = P\\{T ≥ 8\\} = 1 - P\\{T < 8\\} \\\\
 & = 1 - F(8) = 1 - (1 - e^{−8λ}) = e^{−8λ}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:50', 9, 'Mogullzr', '2026-01-29 14:08:50', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '724');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '724');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (725, '1993年考研数学卷5第1题', '简单', '考研数学1993年卷5真题', '$\\lim_{n→∞}  \\lbrack \\sqrt{1 + 2 + ⋯ + n} - \\sqrt{1 + 2 + ⋯ + (n - 1)} \\rbrack  =$______．', '[]', '
$\\frac{1}{\\sqrt{2}}$
', '
考虑前$n$个自然数的和公式：$1 + 2 + ⋯ + n = \\frac{n(n+1)}{2}$，以及前$n - 1$个自然数的和：$1 + 2 + ⋯ + (n - 1) = \\frac{(n-1)n}{2}$。
原极限化为：


$$
\\lim_{n→∞}  \\lbrack \\sqrt{\\frac{n(n + 1)}{2}} - \\sqrt{\\frac{(n - 1)n}{2}} \\rbrack
$$

提取公因子$\\sqrt{\\frac{n}{2}}$：


$$
\\sqrt{\\frac{n}{2}}  \\lbrack \\sqrt{n + 1} - \\sqrt{n - 1} \\rbrack
$$

对$\\sqrt{n + 1} - \\sqrt{n - 1}$有理化：


$$
\\sqrt{n + 1} - \\sqrt{n - 1} = \\frac{(\\sqrt{n + 1} - \\sqrt{n - 1})(\\sqrt{n + 1} + \\sqrt{n - 1})}{\\sqrt{n + 1} + \\sqrt{n - 1}} = \\frac{(n + 1) - (n - 1)}{\\sqrt{n + 1} + \\sqrt{n - 1}} = \\frac{2}{\\sqrt{n + 1} + \\sqrt{n - 1}}
$$

代入得：


$$
\\sqrt{\\frac{n}{2}} ⋅ \\frac{2}{\\sqrt{n + 1} + \\sqrt{n - 1}} = \\frac{2\\sqrt{\\frac{n}{2}}}{\\sqrt{n + 1} + \\sqrt{n - 1}} = \\frac{\\sqrt{2}\\sqrt{n}}{\\sqrt{n + 1} + \\sqrt{n - 1}}
$$

分子分母同除以$\\sqrt{n}$：


$$
\\frac{\\sqrt{2}}{\\frac{\\sqrt{n+1}}{\\sqrt{n}} + \\frac{\\sqrt{n-1}}{\\sqrt{n}}} = \\frac{\\sqrt{2}}{\\sqrt{1 + \\frac{1}{n}} + \\sqrt{1 - \\frac{1}{n}}}
$$

当$n → ∞$时，$\\frac{1}{n} → 0$，故$\\sqrt{1 + \\frac{1}{n}} → 1$和$\\sqrt{1 - \\frac{1}{n}} → 1$，分母趋近于$2$。
因此极限为：


$$
\\frac{\\sqrt{2}}{2} = \\frac{1}{\\sqrt{2}}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:52', 9, 'Mogullzr', '2026-01-29 14:08:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '725');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '725');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '725');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (726, '1993年考研数学卷5第2题', '简单', '考研数学1993年卷5真题', '已知$y = f (\\frac{3x-2}{3x+2})$，$f^{′}(x) = arcsin x^{2}$，
则$\\frac{dy}{dx}​_{x=0} =$______．', '[]', '$\\frac{3π}{2}$
', '设$u = \\frac{3x-2}{3x+2}$，则$y = f(u)$。由链式法则，有：

$$
\\frac{dy}{dx} = f^{′}(u) ⋅ \\frac{du}{dx}
$$

其中$f^{′}(x) = arcsin x^{2}$，所以$f^{′}(u) = arcsin(u^{2})$。
计算$\\frac{du}{dx}$：

$$
u = \\frac{3x - 2}{3x + 2},  \\frac{du}{dx} = \\frac{(3)(3x + 2) - (3x - 2)(3)}{(3x + 2)2} = \\frac{9x + 6 - 9x + 6}{(3x + 2)2} = \\frac{12}{(3x + 2)2}
$$

因此：

$$
\\frac{dy}{dx} = arcsin(u^{2}) ⋅ \\frac{12}{(3x + 2)2} = arcsin ((\\frac{3x - 2}{3x + 2})^{2}) ⋅ \\frac{12}{(3x + 2)2}
$$

在$x = 0$处：

$$
u = \\frac{3 ⋅ 0 - 2}{3 ⋅ 0 + 2} = \\frac{−2}{2} = −1,  u^{2} = 1
$$



$$
arcsin(u^{2}) = arcsin(1) = \\frac{π}{2}
$$



$$
\\frac{12}{(3x + 2)2} = \\frac{12}{4} = 3
$$

所以：

$$
\\frac{dy}{dx}​_{x=0} = \\frac{π}{2} ⋅ 3 = \\frac{3π}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:08:52', 9, 'Mogullzr', '2026-01-29 14:08:52', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '726');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '726');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '726');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (727, '1993年考研数学卷5第3题', '简单', '考研数学1993年卷5真题', '
$$
∫ \\frac{dx}{(2 - x)\\sqrt{1 - x}} =
$$
', '[]', '


$$
−2 arctan (\\sqrt{1 - x}) + C
$$

', '
令$t = \\sqrt{1 - x}$，则$t^{2} = 1 - x$，即$x = 1 - t^{2}$，从而$dx = −2t dt$。
代入积分：


$$
∫ \\frac{dx}{(2 - x)\\sqrt{1 - x}} = ∫ \\frac{−2t dt}{(2 - (1 - t^{2})) ⋅ t} = ∫ \\frac{−2t dt}{(1 + t^{2}) ⋅ t} = ∫ \\frac{−2 dt}{1 + t^{2}}
$$

已知$∫ \\frac{dt}{1+t^{2}} = arctan t + C$，所以：


$$
∫ \\frac{−2 dt}{1 + t^{2}} = −2 arctan t + C
$$

代回$t = \\sqrt{1 - x}$，得：


$$
−2 arctan (\\sqrt{1 - x}) + C
$$

验证：对结果求导，可得原被积函数，故正确。
', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '727');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '727');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '727');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (728, '1993年考研数学卷5第4题', '', '考研数学1993年卷5真题', '/problems/other/709', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (729, '1993年考研数学卷5第5题', '简单', '考研数学1993年卷5真题', '设$10$件产品有$4$件不合格品，从中任取两件，已知所取两件产品中有一件是不合格品，
则另一件也是不合格品的概率为 ______．', '[]', '$\\frac{1}{5}$
', '设事件$A$为至少有一件不合格品，事件$B$为两件都是不合格品。需要求条件概率$P(B∣A)$。
根据条件概率公式，


$$
P(B∣A) = \\frac{P(B ∩ A)}{P(A)}.
$$


由于$B$是$A$的子集，有$P(B ∩ A) = P(B)$，
因此


$$
P(B∣A) = \\frac{P(B)}{P(A)}.
$$

从 10 件产品中任取两件，总组合数为


$$
C(10, 2) = 45.
$$


$P(B)$为两件都是不合格品的概率，不合格品有 4 件，故


$$
P(B) = \\frac{C(4, 2)}{45} = \\frac{6}{45} = \\frac{2}{15}.
$$


$P(A)$为至少有一件不合格品的概率，可通过 1 减去没有不合格品的概率计算。没有不合格品的概率即两件都是合格品，合格品有 6 件，故


$$
P(没有不合格品) = \\frac{C(6, 2)}{45} = \\frac{15}{45} = \\frac{1}{3}.
$$


因此


$$
P(A) = 1 - \\frac{1}{3} = \\frac{2}{3}.
$$

代入得


$$
P(B∣A) = \\frac{2/15}{2/3} = \\frac{2}{15} × \\frac{3}{2} = \\frac{3}{15} = \\frac{1}{5}.
$$

或者直接计算：已知至少有一件不合格品的组合数为$45 - 15 = 30$，其中两件都是不合格品的组合数为 6，故概率为


$$
\\frac{6}{30} = \\frac{1}{5}.
$$

因此，所求概率为


$$
\\frac{1}{5}.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '729');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '729');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (730, '1993年考研数学卷5第6题', '', '考研数学1993年卷5真题', '/problems/other/711', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (731, '1993年考研数学卷5第7题', '', '考研数学1993年卷5真题', '/problems/other/712', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (732, '1993年考研数学卷5第8题', '简单', '考研数学1993年卷5真题', '若$α_{1}$,$α_{2}$,$α_{3}$,$β_{1}$,$β_{2}$都是$4$维列向量，
且$4$阶行列式
$$
∣α_{1}, α_{2}, α_{3}, β_{1}∣ = m,  ∣α_{1}, α_{2}, β_{2}, α_{3}∣ = n,
$$
则$4$阶行列式$∣α_{3}, α_{2}, α_{1}, β_{1} + β_{2}∣$等于', '[''$m + n$．'', ''$−(m + n)$．'', ''$n - m$．'', ''$m - n$．'']', "['C']", '
给定行列式$∣α_{1}, α_{2}, α_{3}, β_{1}∣ = m$和$∣α_{1}, α_{2}, β_{2}, α_{3}∣ = n$，需要求$∣α_{3}, α_{2}, α_{1}, β_{1} + β_{2}∣$。
利用行列式的线性性质，有：

$$
∣α_{3}, α_{2}, α_{1}, β_{1} + β_{2}∣ = ∣α_{3}, α_{2}, α_{1}, β_{1}∣ + ∣α_{3}, α_{2}, α_{1}, β_{2}∣
$$
计算第一个行列式：
从$∣α_{1}, α_{2}, α_{3}, β_{1}∣ = m$，交换第一列和第三列得到$∣α_{3}, α_{2}, α_{1}, β_{1}∣$，行列式变号，故

$$
∣α_{3}, α_{2}, α_{1}, β_{1}∣ = −m
$$
计算第二个行列式：
从$∣α_{1}, α_{2}, β_{2}, α_{3}∣ = n$，交换第三列和第四列得到$∣α_{1}, α_{2}, α_{3}, β_{2}∣$，行列式变号，故

$$
∣α_{1}, α_{2}, α_{3}, β_{2}∣ = −n
$$
再交换第一列和第三列得到$∣α_{3}, α_{2}, α_{1}, β_{2}∣$，行列式变号，故

$$
∣α_{3}, α_{2}, α_{1}, β_{2}∣ = −(−n) = n
$$
因此，

$$
∣α_{3}, α_{2}, α_{1}, β_{1} + β_{2}∣ = −m + n = n - m
$$
故答案为选项C。', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '732');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '732');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (733, '1993年考研数学卷5第9题', '简单', '考研数学1993年卷5真题', '设$λ = 2$是非奇异矩阵$A$的一个特征值，
则矩阵$(\\frac{1}{3}A^{2})^{−1}$有一特征值等于', '[''$\\\\frac{4}{3}$．'', ''$\\\\frac{3}{4}$．'', ''$\\\\frac{1}{2}$．'', ''$\\\\frac{1}{4}$．'']', "['B']", '
已知$λ = 2$是矩阵$A$的一个特征值，且$A$非奇异，因此$A$可逆。
对于对应的特征向量$v$，有

$$
Av = 2v.
$$
于是

$$
A^{2}v = A(Av) = A(2v) = 4v,
$$
因此$A^{2}$有一个特征值$4$。
那么矩阵$\\frac{1}{3}A^{2}$有一个特征值$\\frac{1}{3} × 4 = \\frac{4}{3}$。
由于$\\frac{1}{3}A^{2}$可逆，其逆矩阵$(\\frac{1}{3}A^{2})^{−1}$有一个特征值

$$
\\frac{1}{\\frac{4}{3}} = \\frac{3}{4}.
$$
故正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '733');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '733');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (734, '1993年考研数学卷5第10题', '简单', '考研数学1993年卷5真题', '设随机变量$X$与$Y$均服从正态分布，$X ∼ N(μ, 4^{2})$，$Y ∼ N(μ, 5^{2})$，记
$$
p_{1} = P\\{X ≤ μ - 4\\},  p_{2} = P\\{Y ≥ μ + 5\\},
$$
则', '[''对任何实数$μ$，都有$p_{1} = p_{2}$．'', ''对任何实数$μ$，都有$p_{1} < p_{2}$．'', ''只对$μ$的个别值，才有$p_{1} = p_{2}$．'', ''对任何实数$μ$，都有$p_{1} > p_{2}$．'']', "['A']", '
由于$X ∼ N(μ, 4^{2})$和$Y ∼ N(μ, 5^{2})$，将$X$和$Y$标准化为标准正态分布。
令$Z = \\frac{X-μ}{4}$，则$Z ∼ N(0, 1)$，因此

$$
p_{1} = P\\{X ≤ μ - 4\\} = P \\{Z ≤ \\frac{μ - 4 - μ}{4}\\} = P\\{Z ≤ −1\\}.
$$
类似地，令$W = \\frac{Y-μ}{5}$，则$W ∼ N(0, 1)$，因此

$$
p_{2} = P\\{Y ≥ μ + 5\\} = P \\{W ≥ \\frac{μ + 5 - μ}{5}\\} = P\\{W ≥ 1\\}.
$$
在标准正态分布中，由对称性可得

$$
P\\{Z ≤ −1\\} = P\\{Z ≥ 1\\} = P\\{W ≥ 1\\},
$$
因此$p_{1} = p_{2}$对任意实数$μ$成立。故选项 A 正确。', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '734');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '734');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (735, '1993年考研数学卷5第11题', '', '考研数学1993年卷5真题', '/problems/other/716', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (736, '1993年考研数学卷5第12题', '', '考研数学1993年卷5真题', '/problems/other/717', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:53', 9, 'Mogullzr', '2026-01-29 14:08:53', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (737, '1993年考研数学卷5第13题', '简单', '考研数学1993年卷5真题', '已知某厂生产$x$件产品的成本为$C = 25000 + 200x + \\frac{1}{40}x^{2}$（元）．问：(1) 要使平均成本最小，应生产多少件产品？(2) 若产品以每件$500$元售出，要使利润最大，应生产多少件产品？', '[]', '
(1) 应生产1000件产品。
(2) 应生产6000件产品。
', '
(1) 平均成本为

$$
AC = \\frac{C}{x} = \\frac{25000}{x} + 200 + \\frac{1}{40}x.
$$

对$AC$求导得

$$
AC^{′}(x) = −\\frac{25000}{x^{2}} + \\frac{1}{40}.
$$

令$AC^{′}(x) = 0$，有

$$
−\\frac{25000}{x^{2}} + \\frac{1}{40} = 0,
$$

解得$x^{2} = 25000 × 40 = 1000000$，故$x = 1000$。二阶导数

$$
AC^{′′}(x) = \\frac{50000}{x^{3}} > 0 (x > 0),
$$

因此$x = 1000$时平均成本最小。
(2) 利润函数为

$$
P = R - C = 500x - (25000 + 200x + \\frac{1}{40}x^{2}) = 300x - 25000 - \\frac{1}{40}x^{2}.
$$

对$P$求导得

$$
P^{′}(x) = 300 - \\frac{1}{20}x.
$$

令$P^{′}(x) = 0$，有

$$
300 - \\frac{1}{20}x = 0,
$$

解得$x = 6000$。二阶导数

$$
P^{′′}(x) = −\\frac{1}{20} < 0,
$$

因此$x = 6000$时利润最大。
', 9, 'Mogullzr', '2026-01-29 14:08:54', 9, 'Mogullzr', '2026-01-29 14:08:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '737');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '737');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '737');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (738, '1993年考研数学卷5第14题', '简单', '考研数学1993年卷5真题', '设$p$,$q$是大于$1$的常数，且$\\frac{1}{p} + \\frac{1}{q} = 1$．
证明：对于任意$x > 0$，有$\\frac{1}{p}x^{p} + \\frac{1}{q} ≥ x$．', '[]', '
对于任意$x > 0$，有$\\frac{1}{p}x^{p} + \\frac{1}{q} ≥ x$。
', '
考虑函数$f(x) = \\frac{1}{p}x^{p} + \\frac{1}{q} - x$，其中$x > 0$。
对函数求导得


$$
f^{′}(x) = x^{p-1} - 1.
$$

令$f^{′}(x) = 0$，得


$$
x^{p-1} = 1,
$$

解得$x = 1$。
二阶导数为


$$
f^{′′}(x) = (p - 1)x^{p-2}.
$$

由于$p > 1$，有$p - 1 > 0$，且对于$x > 0$，有$x^{p-2} > 0$，因此$f^{′′}(x) > 0$，故$x = 1$是全局最小值点。
计算函数在$x = 1$处的取值：


$$
f(1) = \\frac{1}{p} ⋅ 1^{p} + \\frac{1}{q} - 1 = \\frac{1}{p} + \\frac{1}{q} - 1.
$$

由已知条件$\\frac{1}{p} + \\frac{1}{q} = 1$，得


$$
f(1) = 0.
$$

因此，对于所有$x > 0$，有$f(x) ≥ f(1) = 0$，即


$$
\\frac{1}{p}x^{p} + \\frac{1}{q} ≥ x.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:54', 9, 'Mogullzr', '2026-01-29 14:08:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '738');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '738');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '738');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (739, '1993年考研数学卷5第15题', '简单', '考研数学1993年卷5真题', '运用导数的知识作函数$y = (x + 6)e^{\\frac{1}{x}}$的图形．', '[]', '
函数$y = (x + 6)e^{\\frac{1}{x}}$的图形具有以下特征：
定义域：$(−∞, 0) ∪ (0, +∞)$垂直渐近线：$x = 0$斜渐近线：$y = x + 7$（当$x → +∞$和$x → −∞$）局部极大值点：$x = −2$，$y = 4e^{−\\frac{1}{2}} ≈ 2.426$局部极小值点：$x = 3$，$y = 9e^{\\frac{1}{3}} ≈ 12.56$拐点：$x = −\\frac{6}{13} ≈ −0.4615$，$y = \\frac{72}{13}e^{−\\frac{13}{6}} ≈ 0.634$函数在$(−∞, −2)$递增，在$(−2, 0)$递减，在$(0, 3)$递减，在$(3, +∞)$递增函数在$(−∞, −\\frac{6}{13})$凹向下，在$(−\\frac{6}{13}, 0)$和$(0, +∞)$凹向上

', '
为了绘制函数$y = (x + 6)e^{\\frac{1}{x}}$的图形，首先分析其定义域。函数在$x = 0$处未定义，因此定义域为$(−∞, 0) ∪ (0, +∞)$。
求一阶导数以确定单调性和极值点。
设$u = x + 6$，$v = e^{\\frac{1}{x}}$，则$u^{′} = 1$，$v^{′} = −\\frac{1}{x^{2}}e^{\\frac{1}{x}}$。
由乘积法则，$y^{′} = u^{′}v + uv^{′} = e^{\\frac{1}{x}} + (x + 6) (−\\frac{1}{x^{2}}e^{\\frac{1}{x}}) = e^{\\frac{1}{x}} (1 - \\frac{x+6}{x^{2}})$。
简化得$y^{′} = e^{\\frac{1}{x}}\\frac{x^{2}-x-6}{x^{2}}$。
令$y^{′} = 0$，由于$e^{\\frac{1}{x}} > 0$且$x^{2} > 0$（$x \\neq 0$），解$x^{2} - x - 6 = 0$，得$x = −2$或$x = 3$。这些是临界点。
求二阶导数以确定凹凸性和拐点。
$y^{′} = e^{\\frac{1}{x}}\\frac{x^{2}-x-6}{x^{2}}$，
设$f = e^{\\frac{1}{x}}$，$g = \\frac{x^{2}-x-6}{x^{2}}$，
则$f^{′} = −\\frac{1}{x^{2}}e^{\\frac{1}{x}}$，$g^{′} = \\frac{1}{x^{2}} + \\frac{12}{x^{3}}$。
由乘积法则，$y^{′′} = f^{′}g + fg^{′} = −\\frac{1}{x^{2}}e^{\\frac{1}{x}}\\frac{x^{2}-x-6}{x^{2}} + e^{\\frac{1}{x}} (\\frac{1}{x^{2}} + \\frac{12}{x^{3}})$。
提取公因子$e^{\\frac{1}{x}}$，并通分得$y^{′′} = e^{\\frac{1}{x}}\\frac{13x+6}{x^{4}}$。
令$y^{′′} = 0$，解$13x + 6 = 0$，得$x = −\\frac{6}{13} ≈ −0.4615$。这是拐点。
分析一阶导数的符号：
$y^{′} = e^{\\frac{1}{x}}\\frac{(x-3)(x+2)}{x^{2}}$。
当$x < −2$时，$y^{′} > 0$，函数递增；
当$−2 < x < 0$时，$y^{′} < 0$，函数递减；
当$0 < x < 3$时，$y^{′} < 0$，函数递减；
当$x > 3$时，$y^{′} > 0$，函数递增。
因此，$x = −2$是局部极大值点，$x = 3$是局部极小值点。
分析二阶导数的符号：
$y^{′′} = e^{\\frac{1}{x}}\\frac{13x+6}{x^{4}}$。
当$x < −\\frac{6}{13}$时，$y^{′′} < 0$，函数凹向下；
当$−\\frac{6}{13} < x < 0$时，$y^{′′} > 0$，函数凹向上；
当$x > 0$时，$y^{′′} > 0$，函数凹向上。
因此，$x = −\\frac{6}{13}$是拐点。
求渐近线：
垂直渐近线：当$x → 0^{+}$，$y → +∞$；当$x → 0^{-}$，$y → 0$。故$x = 0$是垂直渐近线。
斜渐近线：计算$m = \\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\frac{(x+6)e^{\\frac{1}{x}}}{x} = 1$，
$b = \\lim_{x→∞}(y - mx) = \\lim_{x→∞} ((x + 6)e^{\\frac{1}{x}} - x) = 7$。
同理，当$x → −∞$，$m = 1$，$b = 7$。故斜渐近线为$y = x + 7$。
计算关键点函数值：
在$x = −2$，$y = 4e^{−\\frac{1}{2}} ≈ 2.426$；
在$x = 3$，$y = 9e^{\\frac{1}{3}} ≈ 12.56$；
在$x = −\\frac{6}{13}$，$y = \\frac{72}{13}e^{−\\frac{13}{6}} ≈ 0.634$。
综上，结合单调性、凹凸性、渐近线和关键点，可绘制函数图形。
', 9, 'Mogullzr', '2026-01-29 14:08:54', 9, 'Mogullzr', '2026-01-29 14:08:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '739');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '739');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '739');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (740, '1993年考研数学卷5第16题', '简单', '考研数学1993年卷5真题', '已知$3$阶矩阵$A$的逆矩阵为$A^{−1} = \\left( \\begin{array}{ccc}
1 & 1 & 3 \\\\
1 & 2 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，试求其伴随矩阵$A^{∗}$的逆矩阵．', '[]', '

$$
(A^{∗})−1 = \\left( \\begin{array}{ccc}
1 & 2 & −5 \\\\
0 & −2 & 2 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right)
$$

', '已知$A^{−1} = \\left( \\begin{array}{ccc}
1 & 1 & 3 \\\\
1 & 2 & 1 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，首先计算$det(A^{−1}) = −2$，因此$det(A) = \\frac{1}{det(A^{−1})} = −\\frac{1}{2}$。
由公式$A^{∗} = det(A)A^{−1}$，可得$(A^{∗})−1 = \\frac{1}{det(A)}A$。
需要求$A = (A^{−1})−1$。通过计算$A^{−1}$的逆矩阵，得到$A = \\left( \\begin{array}{ccc}
−\\frac{1}{2} & −1 & \\frac{5}{2} \\\\
0 & 1 & −1 \\\\
\\frac{1}{2} & 0 & −\\frac{1}{2} \\\\
\\end{array} \\right)$。
代入公式：$(A^{∗})−1 = \\frac{1}{−1/2}A = −2 × A = \\left( \\begin{array}{ccc}
1 & 2 & −5 \\\\
0 & −2 & 2 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right)$。
验证：计算$A^{∗} ⋅ (A^{∗})−1$得到单位矩阵，确认结果正确。
', 9, 'Mogullzr', '2026-01-29 14:08:54', 9, 'Mogullzr', '2026-01-29 14:08:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '740');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '740');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '740');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (741, '1993年考研数学卷5第17题', '简单', '考研数学1993年卷5真题', '设$A$是$m × n$矩阵，$B$是$n × m$矩阵，$E$是$n$阶单位矩阵（$m > n$）．
已知$BA = E$，试判断$A$的列向量组是否线性相关？为什么？', '[]', '
$A$的列向量组线性无关。
', '
已知$BA = E$，其中$E$是$n$阶单位矩阵。假设$A$的列向量组线性相关，则存在非零向量$x ∈ R^{n}$使得$Ax = 0$。左乘$B$得$B(Ax) = B ⋅ 0 = 0$。但$B(Ax) = (BA)x = Ex = x$，因此$x = 0$，与假设矛盾。故假设不成立，$A$的列向量组线性无关。
', 9, 'Mogullzr', '2026-01-29 14:08:54', 9, 'Mogullzr', '2026-01-29 14:08:54', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '741');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '741');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '741');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (742, '1993年考研数学卷5第18题', '简单', '考研数学1993年卷5真题', '设随机变量$X$和$Y$独立，都在区间$\\lbrack 1, 3 \\rbrack$上服从均匀分布；
引进事件$A = \\{X ≤ a\\}$，$B = \\{Y > a\\}$．(1) 已知$P(A ∪ B) = \\frac{7}{9}$，求常数$a$；(2) 求$\\frac{1}{X}$的数学期望．', '[]', '
(1)$a = \\frac{5}{3}$或$a = \\frac{7}{3}$
(2)$E  \\lbrack \\frac{1}{X} \\rbrack  = \\frac{1}{2} \\ln 3$
', '
(1) 设事件$A = \\{X ≤ a\\}$，$B = \\{Y > a\\}$。
由独立性及均匀分布可得：


$$
P(A) = \\frac{a - 1}{2},  P(B) = \\frac{3 - a}{2}.
$$



$$
P(A ∩ B) = P(A)P(B) = \\frac{(a - 1)(3 - a)}{4}.
$$



$$
P(A ∪ B) = P(A) + P(B) - P(A ∩ B) = 1 - \\frac{(a - 1)(3 - a)}{4}.
$$

已知$P(A ∪ B) = \\frac{7}{9}$，代入得：


$$
1 - \\frac{(a - 1)(3 - a)}{4} = \\frac{7}{9}.
$$



$$
\\frac{(a - 1)(3 - a)}{4} = \\frac{2}{9}  ⇒  (a - 1)(3 - a) = \\frac{8}{9}.
$$

展开整理：


$$
−a^{2} + 4a - 3 = \\frac{8}{9}  ⇒  9a^{2} - 36a + 35 = 0.
$$

解二次方程：


$$
a = \\frac{36 ± \\sqrt{36^{2} - 4 ⋅ 9 ⋅ 35}}{18} = \\frac{36 ± 6}{18}.
$$

解得$a = \\frac{7}{3}$或$a = \\frac{5}{3}$，均在$\\lbrack 1, 3 \\rbrack$内。
(2) 计算期望：


$$
E  \\lbrack \\frac{1}{X} \\rbrack  = \\int_{1}^{3} \\frac{1}{x} ⋅ \\frac{1}{2}dx = \\frac{1}{2}  \\lbrack \\ln x \\rbrack _{1}^{3} = \\frac{1}{2} \\ln 3.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:55', 9, 'Mogullzr', '2026-01-29 14:08:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '742');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '742');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (743, '1993年考研数学卷5第19题', '', '考研数学1993年卷5真题', '/problems/other/724', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:08:55', 9, 'Mogullzr', '2026-01-29 14:08:55', 0, 4);
