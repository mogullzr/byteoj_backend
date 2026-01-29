INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1911, '2007年考研数学卷1第1题', '简单', '考研数学2007年卷1真题', '当$x → 0^{+}$时，与$\\sqrt{x}$等价的无穷小量是', '[''$1 - e^{\\\\sqrt{x}}$．'', ''$\\\\ln \\\\frac{1+x}{1-\\\\sqrt{x}}$．'', ''$\\\\sqrt{} - 1$．'', ''$1 - \\\\cos \\\\sqrt{x}$．'']', "['B']", '当$x → 0^{+}$时，需要找到与$\\sqrt{x}$等价的无穷小量，即求$\\lim_{x→0^{+}} \\frac{f(x)}{\\sqrt{x}} = 1$。选项 A：$1 - e^{\\sqrt{x}}$，计算极限$\\lim_{x→0^{+}} \\frac{1-e^{\\sqrt{x}}}{\\sqrt{x}} = − \\lim_{t→0^{+}} \\frac{e^{t}-1}{t} = −1 \\neq 1$，故不等价。选项 B：$\\ln \\frac{1+x}{1-\\sqrt{x}} = \\ln(1 + x) - \\ln(1 - \\sqrt{x})$，计算极限$\\lim_{x→0^{+}} \\frac{\\ln \\frac{1+x}{1-\\sqrt{x}}}{\\sqrt{x}} = \\lim_{x→0^{+}} \\frac{\\ln(1+x)-\\ln(1-\\sqrt{x})}{\\sqrt{x}}$。由于$\\ln(1 + x) ∼ x$，且$\\frac{x}{\\sqrt{x}} = \\sqrt{x} → 0$，而$\\ln(1 - \\sqrt{x}) ∼ −\\sqrt{x}$，所以$− \\ln(1 - \\sqrt{x}) ∼ \\sqrt{x}$，因此极限为 1，故等价。选项 C：$\\sqrt{} - 1$，利用等价无穷小$\\sqrt{1 + u} - 1 ∼ \\frac{1}{2}u$（当$u → 0$），令$u = \\sqrt{x}$，则$\\sqrt{} - 1 ∼ \\frac{1}{2}\\sqrt{x}$，极限为$\\frac{1}{2} \\neq 1$，故不等价。选项 D：$1 - \\cos \\sqrt{x}$，利用等价无穷小$1 - \\cos t ∼ \\frac{1}{2}t^{2}$（当$t → 0$），令$t = \\sqrt{x}$，则$1 - \\cos \\sqrt{x} ∼ \\frac{1}{2}x$，与$\\sqrt{x}$比较的极限为$\\frac{\\frac{1}{2}x}{\\sqrt{x}} = \\frac{1}{2}\\sqrt{x} → 0$，故不等价。
因此，只有选项 B 与$\\sqrt{x}$等价。', 9, 'Mogullzr', '2026-01-29 14:14:10', 9, 'Mogullzr', '2026-01-29 14:14:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1911');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1911');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1911');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1912, '2007年考研数学卷1第2题', '简单', '考研数学2007年卷1真题', '曲线$y = \\frac{1}{x} + \\ln(1 + e^{x})$渐近线的条数为', '[''$0$．'', ''$1$．'', ''$2$．'', ''$3$．'']', "['D']", '为了求曲线$y = \\frac{1}{x} + \\ln(1 + e^{x})$的渐近线，需考虑水平渐近线、垂直渐近线和斜渐近线。
当$x → −∞$时，$\\frac{1}{x} → 0$，$\\ln(1 + e^{x}) → \\ln(1) = 0$，因此$y → 0$，有一条水平渐近线$y = 0$。
当$x → 0$时，$\\frac{1}{x} → ∞$，而$\\ln(1 + e^{x})$有限，因此有一条垂直渐近线$x = 0$。
当$x → +∞$时，计算$\\lim_{x→+∞} \\frac{y}{x} = \\lim_{x→+∞} (\\frac{1}{x^{2}} + \\frac{\\ln(1+e^{x})}{x}) = 0 + 1 = 1$，且$\\lim_{x→+∞}(y - x) = \\lim_{x→+∞} (\\frac{1}{x} + \\ln(1 + e^{x}) - x) = \\lim_{x→+∞} \\ln(1 + e^{−x}) = \\ln(1) = 0$，因此有一条斜渐近线$y = x$。
综上，曲线有三条渐近线，故答案为 D。', 9, 'Mogullzr', '2026-01-29 14:14:10', 9, 'Mogullzr', '2026-01-29 14:14:10', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1912');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1912');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1912');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1913, '2007年考研数学卷1第3题', '简单', '考研数学2007年卷1真题', '如图，连续函数$y = f(x)$在区间$\\lbrack −3, −2 \\rbrack$,$\\lbrack 2, 3 \\rbrack$上的图形分别是直径为$1$的上、下半圆周，在区间$\\lbrack −2, 0 \\rbrack$,$\\lbrack 0, 2 \\rbrack$上图形分别是直径为$2$的上、下半圆周．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/7ff4b0add8df4182869735aa9215c4ca.jpg)
设$F(x) = \\int_{0}^{x} f(t)dt$，则下列结论正确的是', '[''$F(3) = −\\\\frac{3}{4}F(−2)$．'', ''$F(3) = \\\\frac{5}{4}F(2)$．'', ''$F(−3) = \\\\frac{3}{4}F(2)$．'', ''$F(−3) = −\\\\frac{5}{4}F(−2)$．'']', "['C']", '由所给条件知，$f(x)$为$x$的奇函数，则$f(−x) = −f(x)$，由$F(x) = \\int_{0}^{x} f(t)dt$知

$$
F(−x) = \\int_{0}^{−x} f(t)dt = \\int_{0}^{x} f(−u)d(−u) = \\int_{0}^{x} f(u)du = F(x),
$$
故$F(x)$为$x$的偶函数，所以$F(−3) = F(3)$。由于曲线由半圆周组成，由定积分的几何意义，得到

$$
F(2) = \\int_{0}^{2} f(t)dt = \\frac{π}{2} ⋅ 1^{2} = \\frac{π}{2},
$$

$$
F(3) = \\int_{0}^{3} f(t)dt = \\int_{0}^{2} f(t)dt + \\int_{2}^{3} f(t)dt = \\frac{π}{2} ⋅ 1^{2} - \\frac{π}{2} ⋅ (\\frac{1}{2})^{2} = \\frac{π}{2} ⋅ \\frac{3}{4} = \\frac{3}{4}F(2).
$$
所以$F(−3) = F(3) = \\frac{3}{4}F(2)$。', 9, 'Mogullzr', '2026-01-29 14:14:12', 9, 'Mogullzr', '2026-01-29 14:14:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1913');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1913');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1913');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1914, '2007年考研数学卷1第4题', '简单', '考研数学2007年卷1真题', '设函数$f(x)$在$x = 0$连续，则下列命题错误的是', '[''若$\\\\lim_{x→0} \\\\frac{f(x)}{x}$存在，则$f(0) = 0$．'', ''若$\\\\lim_{x→0} \\\\frac{f(x)+f(−x)}{x}$存在，则$f(0) = 0$．'', ''若$\\\\lim_{x→0} \\\\frac{f(x)}{x}$存在，则$f^{′}(0)$存在．'', ''若$\\\\lim_{x→0} \\\\frac{f(x)-f(−x)}{x}$存在，则$f^{′}(0)$存在．'']', "['D']", '应选 (D)。例如取$f(x) = ∣x∣$，有
$$
\\lim_{x→0} \\frac{f(x) - f(−x)}{x - 0} = \\lim_{x→0} \\frac{∣x∣ - ∣ - x∣}{x} = 0
$$
存在，而
$$
\\lim_{x→0^{-}} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0^{-}} \\frac{−x - 0}{x - 0} = −1,  \\lim_{x→0^{+}} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0^{+}} \\frac{x - 0}{x - 0} = 1,
$$
左右极限存在但不相等，所以$f(x) = ∣x∣$在$x = 0$的导数$f^{′}(0)$不存在，即选项 (D) 错误。由$\\lim_{x→0} \\frac{f(x)}{x}$存在及$f(x)$在$x = 0$处连续，可得
$$
f(0) = \\lim_{x→0} f(x) = \\lim_{x→0} (\\frac{f(x)}{x} ⋅ x) = \\lim_{x→0} \\frac{f(x)}{x} ⋅ \\lim_{x→0} x = 0 ⋅ \\lim_{x→0} \\frac{f(x)}{x} = 0,
$$
所以选项 (A) 正确。由选项 (A) 知$f(0) = 0$，所以
$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0} \\frac{f(x)}{x}
$$
存在，所以选项 (C) 也正确。由$f(x)$在$x = 0$处连续，所以$f(−x)$在$x = 0$处连续，从而
$$
\\lim_{x→0} \\lbrack f(x) + f(−x) \\rbrack  = \\lim_{x→0} f(x) + \\lim_{x→0} f(−x) = f(0) + f(0) = 2f(0),
$$
所以
$$
2f(0) = \\lim_{x→0}  \\lbrack \\frac{f(x) + f(−x)}{x} ⋅ x \\rbrack  = \\lim_{x→0} \\frac{f(x) + f(−x)}{x} ⋅ \\lim_{x→0} x = 0 ⋅ \\lim_{x→0} \\frac{f(x) + f(−x)}{x} = 0,
$$
即有$f(0) = 0$，所以选项 (B) 正确。', 9, 'Mogullzr', '2026-01-29 14:14:12', 9, 'Mogullzr', '2026-01-29 14:14:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1914');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1914');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1914');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1915, '2007年考研数学卷1第5题', '简单', '考研数学2007年卷1真题', '设函数$f(x)$在$(0, +∞)$上具有二阶导数，且$f^{′′}(x) > 0$，令$u_{n} = f(n)$（$n = 1, 2, ⋯$），
则下列结论正确的是', '[''若$u_{1} > u_{2}$，则$\\\\{u_{n}\\\\}$必收敛．'', ''若$u_{1} > u_{2}$，则$\\\\{u_{n}\\\\}$必发散．'', ''若$u_{1} < u_{2}$，则$\\\\{u_{n}\\\\}$必收敛．'', ''若$u_{1} < u_{2}$，则$\\\\{u_{n}\\\\}$必发散．'']', "['D']", '函数$f(x)$在$(0, +∞)$上具有二阶导数，且$f^{′′}(x) > 0$，因此$f(x)$是凸函数，且$f^{′}(x)$单调递增。令$u_{n} = f(n)$，考虑选项条件。若$u_{1} < u_{2}$，即$f(1) < f(2)$，由微分中值定理，存在$c ∈ (1, 2)$使得$f^{′}(c) = \\frac{f(2)-f(1)}{2-1} > 0$。由于$f^{′}(x)$单调递增，对任意$x > c$，有$f^{′}(x) > f^{′}(c) > 0$。因此，当$x ≥ 2$时，$f^{′}(x) > 0$，且$f^{′}(x)$有正下界，故$f(x)$在$\\lbrack 2, +∞)$上严格递增且至少以线性速度增长，从而$\\lim_{x→∞} f(x) = +∞$，序列$\\{u_{n}\\}$发散。对于其他选项，反例表明不一定成立：若$u_{1} > u_{2}$，如$f(x) = \\frac{1}{x}$，则$u_{n} = \\frac{1}{n}$收敛；如$f(x) = − \\ln x$，则$u_{n} = − \\ln n$发散。故 A 和 B 错误。若$u_{1} < u_{2}$，如$f(x) = x^{2}$，则$u_{n} = n^{2}$发散，故 C 错误。因此，正确结论为 D。', 9, 'Mogullzr', '2026-01-29 14:14:12', 9, 'Mogullzr', '2026-01-29 14:14:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1915');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1915');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1915');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1916, '2007年考研数学卷1第6题', '简单', '考研数学2007年卷1真题', '设曲线$L : f(x, y) = 1$（$f(x, y)$具有一阶连续偏导数）过第Ⅱ象限内的点$M$和第Ⅳ象限内的点$N$，$Γ$为$L$上从点$M$到点$N$的一段弧，则下列积分小于零的是', '[''$\\\\int_{Γ} f(x, y)dx$．'', ''$\\\\int_{Γ} f(x, y)dy$．'', ''$\\\\int_{Γ} f(x, y)ds$．'', ''$\\\\int_{Γ} f_{x}^{′}(x, y)dx + f_{y}^{′}(x, y)dy$．'']', "['B']", '曲线$L : f(x, y) = 1$上，$f(x, y)$恒为 1。点$M$在第 II 象限（$x < 0, y > 0$），点$N$在第 IV 象限（$x > 0, y < 0$），弧$Γ$从$M$到$N$。
对于选项 A：$\\int_{Γ} f(x, y) dx = \\int_{Γ} 1 dx = x(N) - x(M)$。由于$x(N) > 0$，$x(M) < 0$，因此$x(N) - x(M) > 0$，积分大于零。
对于选项 B：$\\int_{Γ} f(x, y) dy = \\int_{Γ} 1 dy = y(N) - y(M)$。由于$y(N) < 0$，$y(M) > 0$，因此$y(N) - y(M) < 0$，积分小于零。
对于选项 C：$\\int_{Γ} f(x, y) ds = \\int_{Γ} 1 ds$，其中$ds$为弧长元素，始终为正，因此积分大于零。
对于选项 D：$\\int_{Γ} f_{x}^{′}(x, y) dx + f_{y}^{′}(x, y) dy = \\int_{Γ} df(x, y)$。由于在曲线$L$上$f(x, y) = 1$为常数，故$df(x, y) = 0$，积分等于零。
因此，只有选项 B 的积分小于零。', 9, 'Mogullzr', '2026-01-29 14:14:13', 9, 'Mogullzr', '2026-01-29 14:14:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1916');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1916');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1917, '2007年考研数学卷1第7题', '简单', '考研数学2007年卷1真题', '设向量组$α_{1}$,$α_{2}$,$α_{3}$线性无关，则下列向量组线性相关的是', '[''$α_{1} - α_{2}$,$α_{2} - α_{3}$,$α_{3} - α_{1}$．'', ''$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} + α_{1}$．'', ''$α_{1} - 2α_{2}$,$α_{2} - 2α_{3}$,$α_{3} - 2α_{1}$．'', ''$α_{1} + 2α_{2}$,$α_{2} + 2α_{3}$,$α_{3} + 2α_{1}$．'']', "['A']", '应选 (A). 因为$(α_{1} - α_{2}) + (α_{2} - α_{3}) + (α_{3} - α_{1}) = 0$, 所以$α_{1} - α_{2}, α_{2} - α_{3}, α_{3} - α_{1}$线性相关.选项 (B) 不对. 因为
$$
(α_{1} + α_{2}, α_{2} + α_{3}, α_{3} + α_{1}) = (α_{1}, α_{2}, α_{3}) \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
1 & 1 & 0 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right) = (α_{1}, α_{2}, α_{3})P_{2},
$$
其中$∣P_{2}∣ = 2 \\neq 0$.选项 (C) 不对, 因为
$$
(α_{1} - 2α_{2}, α_{2} - 2α_{3}, α_{3} - 2α_{1}) = (α_{1}, α_{2}, α_{3}) \\left( \\begin{array}{ccc}
1 & 0 & −2 \\\\
−2 & 1 & 0 \\\\
0 & −2 & 1 \\\\
\\end{array} \\right) = (α_{1}, α_{2}, α_{3})P_{3},
$$
其中$∣P_{3}∣ = −7 \\neq 0$.选项 (D) 不对, 因为
$$
(α_{1} + 2α_{2}, α_{2} + 2α_{3}, α_{3} + 2α_{1}) = (α_{1}, α_{2}, α_{3}) \\left( \\begin{array}{ccc}
1 & 0 & 2 \\\\
2 & 1 & 0 \\\\
0 & 2 & 1 \\\\
\\end{array} \\right) = (α_{1}, α_{2}, α_{3})P_{4},
$$
其中$∣P_{4}∣ = 9 \\neq 0$.', 9, 'Mogullzr', '2026-01-29 14:14:13', 9, 'Mogullzr', '2026-01-29 14:14:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1917');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1917');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1917');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1918, '2007年考研数学卷1第8题', '简单', '考研数学2007年卷1真题', '设矩阵$A = \\left( \\begin{array}{ccc}
2 & −1 & −1 \\\\
−1 & 2 & −1 \\\\
−1 & −1 & 2 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$，则$A$与$B$', '[''合同，且相似．'', ''合同，但不相似．'', ''不合同，但相似．'', ''既不合同，也不相似．'']', "['B']", '矩阵$A$的特征值为$0, 3, 3$，矩阵$B$的特征值为$1, 1, 0$。由于特征值不同，因此$A$与$B$不相似。$A$与$B$都是实对称矩阵，且它们的正惯性指数均为$2$，负惯性指数均为$0$，因此$A$与$B$合同。故$A$与$B$合同但不相似。', 9, 'Mogullzr', '2026-01-29 14:14:13', 9, 'Mogullzr', '2026-01-29 14:14:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1918');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1918');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1919, '2007年考研数学卷1第9题', '简单', '考研数学2007年卷1真题', '某人向同一目标独立重复射击，每次射击命中目标的概率为$p$（$0 < p < 1$），
则此人第$4$次射击恰好第$2$次命中目标的概率为', '[''$3p(1 - p)2$．'', ''$6p(1 - p)2$．'', ''$3p^{2}(1 - p)2$．'', ''$6p^{2}(1 - p)2$．'']', "['C']", '第4次射击恰好第2次命中目标意味着在前三次射击中恰好有一次命中目标，且第四次射击命中目标。前三次射击中恰好一次命中的概率为$(\\frac{3}{1})p(1 - p)2 = 3p(1 - p)2$，第四次命中的概率为$p$。因此，总概率为$3p(1 - p)2 × p = 3p^{2}(1 - p)2$，对应选项C。', 9, 'Mogullzr', '2026-01-29 14:14:13', 9, 'Mogullzr', '2026-01-29 14:14:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1919');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1919');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1920, '2007年考研数学卷1第10题', '简单', '考研数学2007年卷1真题', '设随机变量$(X, Y)$服从二维正态分布，且$X$与$Y$不相关，$f_{X}(x), f_{Y}(y)$分别表示$X, Y$的概率密度，
则在$Y = y$条件下，$X$的条件概率密度$f_{X∣Y}(x ∣y)$为', '[''$f_{X}(x)$．'', ''$f_{Y}(y$．'', ''$f_{X}(x)f_{Y}(y)$．'', ''$\\\\frac{f_{X}(x)}{f_{Y}(y)}$．'']', "['A']", '由于随机变量$(X, Y)$服从二维正态分布，且$X$与$Y$不相关，在二维正态分布中，不相关等价于独立。因此，$X$与$Y$相互独立，联合概率密度函数$f_{X,Y}(x, y) = f_{X}(x)f_{Y}(y)$。条件概率密度$f_{X∣Y}(x∣y)$的定义为$f_{X∣Y}(x∣y) = \\frac{f_{X,Y}(x,y)}{f_{Y}(y)}$。代入独立条件，得$f_{X∣Y}(x∣y) = \\frac{f_{X}(x)f_{Y}(y)}{f_{Y}(y)} = f_{X}(x)$，故答案为A。', 9, 'Mogullzr', '2026-01-29 14:14:13', 9, 'Mogullzr', '2026-01-29 14:14:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1920');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1920');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1064', '1920');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1921, '2007年考研数学卷1第11题', '简单', '考研数学2007年卷1真题', '$\\int_{1}^{2} \\frac{1}{x^{3}}e^{\\frac{1}{x}}dx =$______．', '[]', '
$\\frac{1}{2}\\sqrt{e}$
', '
考虑积分$\\int_{1}^{2} \\frac{1}{x^{3}}e^{\\frac{1}{x}} dx$。令$u = \\frac{1}{x}$，则$du = −\\frac{1}{x^{2}} dx$。当$x = 1$时，$u = 1$；当$x = 2$时，$u = \\frac{1}{2}$。
被积函数可写为：


$$
\\frac{1}{x^{3}}e^{\\frac{1}{x}} dx = u^{3}e^{u} ⋅ (−\\frac{1}{u^{2}} du) = −ue^{u} du
$$

因此，积分变为：


$$
\\int_{1}^{2} \\frac{1}{x^{3}}e^{\\frac{1}{x}} dx = \\int_{1}^{\\frac{1}{2}} −ue^{u} du = \\int_{\\frac{1}{2}}^{1} ue^{u} du
$$

计算$∫ ue^{u} du$使用分部积分法：
令$f = u$，$g^{′} = e^{u}$，则$f^{′} = 1$，$g = e^{u}$，


$$
∫ ue^{u} du = ue^{u} - ∫ e^{u} du = ue^{u} - e^{u} + C = e^{u}(u - 1) + C
$$

代入上下限：


$$
\\int_{\\frac{1}{2}}^{1} ue^{u} du =  \\lbrack e^{u}(u - 1) \\rbrack _{\\frac{1}{2}}^{1} = (e^{1}(1 - 1)) - (e^{\\frac{1}{2}} (\\frac{1}{2} - 1)) = 0 - (e^{\\frac{1}{2}} ⋅ (−\\frac{1}{2})) = \\frac{1}{2}e^{\\frac{1}{2}} = \\frac{1}{2}\\sqrt{e}
$$

故原积分的值为$\\frac{1}{2}\\sqrt{e}$。
', 9, 'Mogullzr', '2026-01-29 14:14:14', 9, 'Mogullzr', '2026-01-29 14:14:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1921');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1921');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1921');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1922, '2007年考研数学卷1第12题', '简单', '考研数学2007年卷1真题', '设$f(u, v)$为二元可微函数，$z = f(x^{y}, y^{x})$，则$\\frac{∂z}{∂x} =$______．', '[]', '

$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u} ⋅ yx^{y-1} + \\frac{∂f}{∂v} ⋅ y^{x} \\ln y
$$

其中偏导数$\\frac{∂f}{∂u}$和$\\frac{∂f}{∂v}$在点$(u, v) = (x^{y}, y^{x})$处取值。
', '给定$z = f(x^{y}, y^{x})$，其中$f(u, v)$是二元可微函数。令$u = x^{y}$和$v = y^{x}$，则$z = f(u, v)$。使用链式法则求$\\frac{∂z}{∂x}$：

$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u}\\frac{∂u}{∂x} + \\frac{∂f}{∂v}\\frac{∂v}{∂x}.
$$

计算$\\frac{∂u}{∂x}$：由于$u = x^{y}$，且$y$视为常数，有$\\frac{∂u}{∂x} = yx^{y-1}$。
计算$\\frac{∂v}{∂x}$：由于$v = y^{x}$，且$y$视为常数，有$\\frac{∂v}{∂x} = y^{x} \\ln y$。
代入链式法则公式，得到：

$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u} ⋅ yx^{y-1} + \\frac{∂f}{∂v} ⋅ y^{x} \\ln y.
$$

其中$\\frac{∂f}{∂u}$和$\\frac{∂f}{∂v}$在点$(u, v) = (x^{y}, y^{x})$处计算。
', 9, 'Mogullzr', '2026-01-29 14:14:14', 9, 'Mogullzr', '2026-01-29 14:14:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1922');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1922');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1922');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1923, '2007年考研数学卷1第13题', '简单', '考研数学2007年卷1真题', '二阶常系数非齐次线性微分方程$y^{′′} - 4y^{′} + 3y = 2e^{2x}$的通解为$y =$______．', '[]', '
$y = C_{1}e^{3x} + C_{2}e^{x} - 2e^{2x}$
', '
给定二阶常系数非齐次线性微分方程$y^{′′} - 4y^{′} + 3y = 2e^{2x}$，首先求解齐次方程$y^{′′} - 4y^{′} + 3y = 0$。
特征方程为$r^{2} - 4r + 3 = 0$，解得$r_{1} = 3$，$r_{2} = 1$，因此齐次通解为$y_{h} = C_{1}e^{3x} + C_{2}e^{x}$。
由于非齐次项为$2e^{2x}$，且$2$不是特征根，设特解形式为$y_{p} = Ae^{2x}$。
代入原方程：
$y_{p}^{′} = 2Ae^{2x}$，$y_{p}^{′′} = 4Ae^{2x}$，
则$y_{p}^{′′} - 4y_{p}^{′} + 3y_{p} = 4Ae^{2x} - 8Ae^{2x} + 3Ae^{2x} = −Ae^{2x}$。
令其等于$2e^{2x}$，得$−A = 2$，即$A = −2$，故特解为$y_{p} = −2e^{2x}$。
因此，通解为齐次通解与特解之和：$y = y_{h} + y_{p} = C_{1}e^{3x} + C_{2}e^{x} - 2e^{2x}$。
', 9, 'Mogullzr', '2026-01-29 14:14:14', 9, 'Mogullzr', '2026-01-29 14:14:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1923');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1923');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1923');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1924, '2007年考研数学卷1第14题', '简单', '考研数学2007年卷1真题', '设曲面$Σ : ∣x∣ + ∣y∣ + ∣z∣ = 1$，
则$∬​_{Σ}(x + ∣y∣)dS =$______．', '[]', '

$$
\\frac{4\\sqrt{3}}{3}
$$

', '首先，计算曲面积分$∬​_{Σ}(x + ∣y∣)dS$，其中曲面$Σ : ∣x∣ + ∣y∣ + ∣z∣ = 1$。
由于曲面关于$yz$平面对称，且$x$是奇函数，因此$∬​_{Σ} xdS = 0$。
于是，积分简化为$∬​_{Σ} ∣y∣dS$。
接下来，计算$∬​_{Σ} ∣y∣dS$。
由曲面的对称性，有$∬​_{Σ} ∣x∣dS = ∬​_{Σ} ∣y∣dS = ∬​_{Σ} ∣z∣dS$。
在曲面上，$∣x∣ + ∣y∣ + ∣z∣ = 1$，因此


$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{Σ​}(∣x∣ + ∣y∣ + ∣z∣)dS = \\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{Σ​} 1dS = A,
$$

其中$A$是曲面的表面积。
曲面$Σ$是一个正八面体，由 8 个等边三角形面组成，每个三角形的边长为$\\sqrt{2}$，面积为$\\frac{\\sqrt{3}}{2}$，故总表面积$A = 8 × \\frac{\\sqrt{3}}{2} = 4\\sqrt{3}$。
于是，


$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{Σ​} ∣y∣dS = \\frac{A}{3} = \\frac{4\\sqrt{3}}{3}.
$$

因此，


$$
\\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{Σ​}(x + ∣y∣)dS = 0 + \\frac{4\\sqrt{3}}{3} = \\frac{4\\sqrt{3}}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:14', 9, 'Mogullzr', '2026-01-29 14:14:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1924');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1924');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1925, '2007年考研数学卷1第15题', '简单', '考研数学2007年卷1真题', '设矩阵$A = \\left( \\begin{array}{cccc}
0 & 1 & 0 & 0 \\\\
0 & 0 & 1 & 0 \\\\
0 & 0 & 0 & 1 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$，则$A^{3}$的秩为______．', '[]', '$1$
', '
矩阵$A = \\left( \\begin{array}{cccc}
0 & 1 & 0 & 0 \\\\
0 & 0 & 1 & 0 \\\\
0 & 0 & 0 & 1 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$是一个移位矩阵。计算$A^{3}$：
首先，$A^{2} = A × A = \\left( \\begin{array}{cccc}
0 & 0 & 1 & 0 \\\\
0 & 0 & 0 & 1 \\\\
0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$。
然后，$A^{3} = A^{2} × A = \\left( \\begin{array}{cccc}
0 & 0 & 0 & 1 \\\\
0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
0 & 0 & 0 & 0 \\\\
\\end{array} \\right)$。
矩阵$A^{3}$只有第一行非零，且该行为$(0, 0, 0, 1)$，因此行秩为1；同样，只有第四列非零，列秩也为1。故$A^{3}$的秩为1。
', 9, 'Mogullzr', '2026-01-29 14:14:14', 9, 'Mogullzr', '2026-01-29 14:14:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1925');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1925');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '1925');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1926, '2007年考研数学卷1第16题', '简单', '考研数学2007年卷1真题', '在区间$(0, 1)$中随机地取两个数，则这两数之差的绝对值小于$\\frac{1}{2}$的概率为______．', '[]', '$\\frac{3}{4}$
', '在区间$(0, 1)$中随机取两个数$x$和$y$，则点$(x, y)$落在单位正方形$\\lbrack 0, 1 \\rbrack  ×  \\lbrack 0, 1 \\rbrack$内。总面积为1。需要求$∣x - y∣ < \\frac{1}{2}$的概率，即满足条件的区域面积。
条件$∣x - y∣ < \\frac{1}{2}$等价于$−\\frac{1}{2} < x - y < \\frac{1}{2}$，即$y - \\frac{1}{2} < x < y + \\frac{1}{2}$。在单位正方形内，该区域由两条直线$x - y = \\frac{1}{2}$和$x - y = −\\frac{1}{2}$界定。
不满足条件的区域为$∣x - y∣ ≥ \\frac{1}{2}$，包括两个三角形：
当$x - y ≥ \\frac{1}{2}$时，区域为三角形，顶点为$(1/2, 0)$、$(1, 0)$、$(1, 1/2)$，面积为$\\frac{1}{8}$。当$x - y ≤ −\\frac{1}{2}$时，区域为三角形，顶点为$(0, 1/2)$、$(0, 1)$、$(1/2, 1)$，面积为$\\frac{1}{8}$。
不满足条件的区域总面积为$\\frac{1}{8} + \\frac{1}{8} = \\frac{1}{4}$，因此满足条件的区域面积为$1 - \\frac{1}{4} = \\frac{3}{4}$。
或者，通过积分计算：对于固定$y$，$x$的允许长度为$\\min(1, y + 1/2) - \\max(0, y - 1/2)$。
当$y ∈  \\lbrack 0, 1/2 \\rbrack$时，长度为$(y + 1/2) - 0 = y + 1/2$。当$y ∈  \\lbrack 1/2, 1 \\rbrack$时，长度为$1 - (y - 1/2) = 3/2 - y$。
积分得：$\\int_{0}^{1/2}(y + 1/2) dy = \\frac{3}{8},  \\int_{1/2}^{1}(3/2 - y) dy = \\frac{3}{8},$总和为$\\frac{3}{4}$。
故概率为$\\frac{3}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:14:14', 9, 'Mogullzr', '2026-01-29 14:14:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1926');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1926');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1927, '2007年考研数学卷1第17题', '简单', '考研数学2007年卷1真题', '（本题满分 10 分）求函数$f(x, y) = x^{2} + 2y^{2} - x^{2}y^{2}$在区域$D = \\{(x, y) ​x^{2} + y^{2} ≤ 4, y ≥ 0\\}$上的最大值和最小值．', '[]', '最小值：0，最大值：8
', '首先，求函数在区域内部的临界点。计算偏导数$f_{x} = 2x - 2xy^{2}$和$f_{y} = 4y - 2x^{2}y$，令其为零：
$f_{x} = 0$得$x = 0$或$y^{2} = 1$；$f_{y} = 0$得$y = 0$或$x^{2} = 2$。
结合条件，得临界点$(0, 0)$、$(\\sqrt{2}, 1)$和$(−\\sqrt{2}, 1)$，函数值分别为$0$、$2$和$2$。
其次，考虑边界。边界由$y = 0$（$−2 ≤ x ≤ 2$）和半圆$x^{2} + y^{2} = 4$（$y ≥ 0$）组成：
在$y = 0$上，函数化为$f(x, 0) = x^{2}$，最小值为$0$（在$(0, 0)$），最大值为$4$（在$(±2, 0)$）。在半圆上，代入$x^{2} = 4 - y^{2}$得$f(x, y) = 4 - 3y^{2} + y^{4}$。令$g(y) = y^{4} - 3y^{2} + 4$（$y ∈  \\lbrack 0, 2 \\rbrack$），求导$g^{′}(y) = 4y^{3} - 6y$，得临界点$y = 0$和$y = \\sqrt{3/2}$。函数值：在$y = 0$时$f = 4$，在$y = \\sqrt{3/2}$时$f = 7/4$，在$y = 2$时$f = 8$.
比较所有点函数值：内部临界点值$0$和$2$，边界值$0$、$4$、$7/4$、$8$，故最小值为$0$，最大值为$8$。
', 9, 'Mogullzr', '2026-01-29 14:14:15', 9, 'Mogullzr', '2026-01-29 14:14:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1927');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1927');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1927');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1928, '2007年考研数学卷1第18题', '简单', '考研数学2007年卷1真题', '（本题满分 11 分）计算曲面积分$I = \\iint_{Σ} xzdydz + 2zydzdx + 3xydxdy$，
其中$Σ$为曲面$z = 1 - x^{2} - \\frac{y^{2}}{4}$（$0 ≤ z ≤ 1$）的上侧．', '[]', '$π$
', '考虑使用高斯散度定理。曲面$Σ$是开放曲面，需添加底面$Σ_{1} : z = 0, x^{2} + \\frac{y^{2}}{4} ≤ 1$取下侧，构成封闭曲面$S = Σ ∪ Σ_{1}$。设向量场$F = (P, Q, R) = (xz, 2zy, 3xy)$，则原积分可写为：

$$
I = \\iint_{Σ} P dy dz + Q dz dx + R dx dy.
$$

由高斯定理：

$$
\\iint_{S} P dy dz + Q dz dx + R dx dy = \\iiint_{V} (\\frac{∂P}{∂x} + \\frac{∂Q}{∂y} + \\frac{∂R}{∂z}) dV,
$$

其中$V$是$S$所围成的区域。计算散度：

$$
\\frac{∂P}{∂x} = \\frac{∂}{∂x}(xz) = z,  \\frac{∂Q}{∂y} = \\frac{∂}{∂y}(2zy) = 2z,  \\frac{∂R}{∂z} = \\frac{∂}{∂z}(3xy) = 0,
$$

所以$∇ ⋅ F = z + 2z + 0 = 3z$。因此：

$$
\\iint_{S} F ⋅ dS = \\iiint_{V} 3z dV.
$$

区域$V$由$0 ≤ z ≤ 1 - x^{2} - \\frac{y^{2}}{4}$和$x^{2} + \\frac{y^{2}}{4} ≤ 1$定义。采用坐标变换：令$x = r \\cos θ, y = 2r \\sin θ$，则雅可比行列式为$2r$，即$dx dy = 2r dr dθ$，且$r ≤ 1, θ ∈  \\lbrack 0, 2π \\rbrack$。于是：

$$
\\iiint_{V} 3z dV = \\int_{0}^{2π} \\int_{0}^{1} \\int_{0}^{1-r^{2}} 3z ⋅ 2r dz dr dθ = \\int_{0}^{2π} \\int_{0}^{1} 6r  \\lbrack \\frac{1}{2}z^{2} \\rbrack _{0}^{1-r^{2}} dr dθ = \\int_{0}^{2π} \\int_{0}^{1} 3r(1 - r^{2})2 dr dθ.
$$

计算内积分：

$$
\\int_{0}^{1} 3r(1 - r^{2})2 dr = 3 \\int_{0}^{1} r(1 - 2r^{2} + r^{4}) dr = 3  \\lbrack \\frac{1}{2}r^{2} - \\frac{1}{2}r^{4} + \\frac{1}{6}r^{6} \\rbrack _{0}^{1} = 3 (\\frac{1}{2} - \\frac{1}{2} + \\frac{1}{6}) = \\frac{1}{2}.
$$

所以：

$$
\\iiint_{V} 3z dV = \\int_{0}^{2π} \\frac{1}{2} dθ = π.
$$

即：

$$
\\iint_{S} F ⋅ dS = π.
$$

现在计算底面$Σ_{1}$的积分。在$Σ_{1}$上，$z = 0$，取法向量向下$n = (0, 0, −1)$，则：

$$
\\iint_{Σ_{1}} F ⋅ dS = \\iint_{Σ_{1}}(xz, 2zy, 3xy) ⋅ (0, 0, −1) dS = \\iint_{D} −3xy dx dy,
$$

其中$D : x^{2} + \\frac{y^{2}}{4} ≤ 1$。由于被积函数$xy$在$D$上关于$x$和$y$均为奇函数，且$D$对称，故积分值为零：

$$
\\iint_{D} −3xy dx dy = 0.
$$

因此：

$$
\\iint_{Σ} F ⋅ dS = \\iint_{S} F ⋅ dS - \\iint_{Σ_{1}} F ⋅ dS = π - 0 = π.
$$

故原积分$I = π$。
', 9, 'Mogullzr', '2026-01-29 14:14:15', 9, 'Mogullzr', '2026-01-29 14:14:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1928');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1928');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '1928');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1929, '2007年考研数学卷1第19题', '简单', '考研数学2007年卷1真题', '（本题满分 11 分）设函数$f(x)$，$g(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内二阶可导且存在相等的最大值，
又$f(a)$=$g(a)$，$f(b)$=$g(b)$，证明：存在$ξ ∈ (a, b)$，使得$f^{′′}(ξ) = g^{′′}(ξ)$．', '[]', '
存在$ξ ∈ (a, b)$，使得$f^{′′}(ξ) = g^{′′}(ξ)$。
', '
令$φ(x) = f(x) - g(x)$，由题设$f(x),  g(x)$存在相等的最大值，设$x_{1} ∈ (a, b),  x_{2} ∈ (a, b)$使得

$$
f(x_{1}) = \\max_{ \\lbrack a,b \\rbrack } f(x) = g(x_{2}) = \\max_{ \\lbrack a,b \\rbrack } g(x).
$$

于是$φ(x_{1}) = f(x_{1}) - g(x_{1}) ≥ 0,  φ(x_{2}) = f(x_{2}) - g(x_{2}) ≤ 0.$
若$φ(x_{1}) = 0$，则取$η = x_{1} ∈ (a, b)$，有$φ(η) = 0$.
若$φ(x_{2}) = 0$，则取$η = x_{2} ∈ (a, b)$，有$φ(η) = 0$.
若$φ(x_{1}) > 0,  φ(x_{2}) < 0$，则由连续函数介值定理知，存在$η ∈ (x_{1}, x_{2})$使$φ(η) = 0$. 不论以上哪种情况，总存在$η ∈ (a, b)$，使$φ(η) = 0$. 另外有

$$
φ(a) = f(a) - g(a) = 0,  φ(b) = f(b) - g(b) = 0.
$$

将$φ(x)$在区间$\\lbrack a, η \\rbrack ,  \\lbrack η, b \\rbrack$分别应用罗尔定理，得存在$ξ_{1} ∈ (a, η), ξ_{2} ∈ (η, b)$，使得$φ^{′}(ξ_{1}) = 0,  φ^{′}(ξ_{2}) = 0$；再由罗尔定理知，存在$ξ ∈ (ξ_{1}, ξ_{2})$，使$φ^{′′}(ξ) = 0$，即有$f^{′′}(ξ) = g^{′′}(ξ)$.
', 9, 'Mogullzr', '2026-01-29 14:14:15', 9, 'Mogullzr', '2026-01-29 14:14:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1929');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1929');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1929');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1930, '2007年考研数学卷1第20题', '简单', '考研数学2007年卷1真题', '（本题满分 10 分）设幂级数$\\sum_{n=0}^{∞} a_{n}x^{n}$在$(−∞, +∞)$内收敛，其和函数$y(x)$满足
$$
y^{′′} - 2xy^{′} - 4y = 0, y(0) = 0, y^{′}(0) = 1.
$$
(1) 证明$a_{n+2} = \\frac{2}{n+1}a_{n},  n = 1, 2, ⋯$；(2) 求$y(x)$的表达式．', '[]', '
(1) 证明见解析。
(2)$y(x) = xe^{x^{2}}$
', '
(1) 设$y(x) = \\sum_{n=0}^{∞} a_{n}x^{n}$，则$y^{′}(x) = \\sum_{n=1}^{∞} na_{n}x^{n-1}$，$y^{′′}(x) = \\sum_{n=2}^{∞} n(n - 1)a_{n}x^{n-2}$。代入微分方程$y^{′′} - 2xy^{′} - 4y = 0$，得：


$$
\\sum_{n=2}^{∞} n(n - 1)a_{n}x^{n-2} - 2x \\sum_{n=1}^{∞} na_{n}x^{n-1} - 4 \\sum_{n=0}^{∞} a_{n}x^{n} = 0
$$

调整索引：第一项为$\\sum_{n=0}^{∞}(n + 2)(n + 1)a_{n+2}x^{n}$，第二项为$−2 \\sum_{n=0}^{∞} na_{n}x^{n}$（当$n = 0$时项为 0），第三项为$−4 \\sum_{n=0}^{∞} a_{n}x^{n}$。合并得：


$$
\\sum_{n=0}^{∞}  \\lbrack (n + 2)(n + 1)a_{n+2} - 2na_{n} - 4a_{n} \\rbrack  x^{n} = 0
$$

即


$$
\\sum_{n=0}^{∞}  \\lbrack (n + 2)(n + 1)a_{n+2} - 2(n + 2)a_{n} \\rbrack  x^{n} = 0
$$

由于级数恒为零，系数必为零：


$$
(n + 2)(n + 1)a_{n+2} - 2(n + 2)a_{n} = 0
$$

对于$n ≥ 0$，由于$n + 2 \\neq 0$，除以$n + 2$得：


$$
(n + 1)a_{n+2} = 2a_{n}
$$

即


$$
a_{n+2} = \\frac{2}{n + 1}a_{n}
$$

对于$n = 1, 2, ⋯$，该式成立。
(2) 由初始条件$y(0) = 0$得$a_{0} = 0$，由$y^{′}(0) = 1$得$a_{1} = 1$。利用递推关系$a_{n+2} = \\frac{2}{n+1}a_{n}$：
当$n$为偶数时，$a_{0} = 0$，故所有偶数项$a_{2k} = 0$。当$n$为奇数时，$a_{1} = 1$，$a_{3} = \\frac{2}{2}a_{1} = 1$，$a_{5} = \\frac{2}{4}a_{3} = \\frac{1}{2}$，$a_{7} = \\frac{2}{6}a_{5} = \\frac{1}{6}$，归纳得$a_{2k+1} = \\frac{1}{k!}$。
因此和函数为：
$y(x) = \\sum_{k=0}^{∞} a_{2k+1}x^{2k+1} = \\sum_{k=0}^{∞} \\frac{1}{k!}x^{2k+1} = x \\sum_{k=0}^{∞} \\frac{(x^{2})k}{k!} = xe^{x^{2}}$故$y(x) = xe^{x^{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:14:15', 9, 'Mogullzr', '2026-01-29 14:14:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1930');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1930');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1930');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1931, '2007年考研数学卷1第21题', '简单', '考研数学2007年卷1真题', '（本题满分 11 分）设线性方程组①$\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ x_{1} + 2x_{2} + ax_{3} = 0 \\\\ x_{1} + 4x_{2} + a^{2}x_{3} = 0 \\end{cases}$与方程②$x_{1} + 2x_{2} + x_{3} = a - 1$有公共解，求$a$的值及所有公共解．', '[]', '
当$a = 1$时，所有公共解为$x_{1} = −k, x_{2} = 0, x_{3} = k$，其中$k$为任意常数；
当$a = 2$时，公共解为$x_{1} = 0, x_{2} = 1, x_{3} = −1$。
', '
线性方程组①的系数矩阵行列式为：


$$
det \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
1 & 2 & a \\\\
1 & 4 & a^{2} \\\\
\\end{array} \\right) = (a - 1)(a - 2)
$$

当$a \\neq 1$且$a \\neq 2$时，方程组①仅有零解，但零解代入方程②得$0 = a - 1$，要求$a = 1$，矛盾，故无公共解。
当$a = 1$时，方程组①化为：


$$
\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ x_{1} + 2x_{2} + x_{3} = 0 \\\\ x_{1} + 4x_{2} + x_{3} = 0 \\end{cases}
$$

解得$x_{2} = 0$，$x_{1} = −x_{3}$，令$x_{3} = k$，则解为$x_{1} = −k, x_{2} = 0, x_{3} = k$。代入方程②$x_{1} + 2x_{2} + x_{3} = a - 1 = 0$，得$(−k) + 0 + k = 0$，恒成立，故所有解均为公共解。
当$a = 2$时，方程组①化为：


$$
\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ x_{1} + 2x_{2} + 2x_{3} = 0 \\\\ x_{1} + 4x_{2} + 4x_{3} = 0 \\end{cases}
$$

解得$x_{1} = 0$，$x_{2} = −x_{3}$，令$x_{3} = k$，则解为$x_{1} = 0, x_{2} = −k, x_{3} = k$。代入方程②$x_{1} + 2x_{2} + x_{3} = a - 1 = 1$，得$0 + 2(−k) + k = −k = 1$，解得$k = −1$，故公共解为$x_{1} = 0, x_{2} = 1, x_{3} = −1$。
', 9, 'Mogullzr', '2026-01-29 14:14:16', 9, 'Mogullzr', '2026-01-29 14:14:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1931');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1931');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1932, '2007年考研数学卷1第22题', '简单', '考研数学2007年卷1真题', '（本题满分 11 分）设$3$阶实对称矩阵$A$的特征值$λ_{1} = 1$,$λ_{2} = 2$,$λ_{3} = −2$，$α_{1} = (1, −1, 1)T$是$A$的属于$λ_{1}$的一个特征向量，
记$B = A^{5} - 4A^{3} + E$，其中$E$为$3$阶单位矩阵．(1) 验证$α_{1}$是矩阵$B$的特征向量，并求$B$的全部特征值与特征向量；(2) 求矩阵$B$．', '[]', '
(1)$α_{1}$是矩阵$B$的特征向量，对应的特征值为$−2$。$B$的全部特征值为$−2, 1, 1$。特征向量：对于特征值$−2$，特征向量为$kα_{1}$（$k \\neq 0$）；对于特征值$1$，特征向量为所有满足$x_{1} - x_{2} + x_{3} = 0$的向量$x$。
(2) 矩阵$B$为


$$
B = \\left( \\begin{array}{ccc}
0 & 1 & −1 \\\\
1 & 0 & 1 \\\\
−1 & 1 & 0 \\\\
\\end{array} \\right)
$$

', '
(1) 由于$A$是实对称矩阵，$α_{1}$是$A$的属于特征值$λ_{1} = 1$的特征向量，即$Aα_{1} = α_{1}$。则


$$
Bα_{1} = (A^{5} - 4A^{3} + E)α_{1} = A^{5}α_{1} - 4A^{3}α_{1} + Eα_{1} = λ_{1}^{5}α_{1} - 4λ_{1}^{3}α_{1} + α_{1} = (1 - 4 + 1)α_{1} = −2α_{1},
$$

所以$α_{1}$是$B$的特征向量，对应的特征值为$−2$。
$B$是$A$的多项式，因此$B$的特征值可以通过$A$的特征值计算。设$f(λ) = λ^{5} - 4λ^{3} + 1$，则


$$
f(1) = 1^{5} - 4 ⋅ 1^{3} + 1 = −2,  f(2) = 2^{5} - 4 ⋅ 2^{3} + 1 = 1,  f(−2) = (−2)5 - 4 ⋅ (−2)3 + 1 = 1,
$$

所以$B$的特征值为$−2, 1, 1$。
特征向量：对于特征值$−2$，特征向量为$kα_{1}$（$k \\neq 0$）。对于特征值$1$，由于$A$是实对称矩阵，其特征向量相互正交，且$B$的特征向量与$A$相同，因此特征值$1$的特征向量是$A$的属于特征值$2$和$−2$的特征向量，这些特征向量均与$α_{1}$正交，即满足$x_{1} - x_{2} + x_{3} = 0$。由于特征值$1$是二重的，特征空间是二维的，所以任何满足$x_{1} - x_{2} + x_{3} = 0$的向量都是$B$的属于特征值$1$的特征向量。
(2) 由 (1) 知$B$的特征值为$−2, 1, 1$，且特征向量对应。令$u_{1} = \\frac{α_{1}}{∥α_{1}∥} = (\\frac{1}{\\sqrt{3}}, −\\frac{1}{\\sqrt{3}}, \\frac{1}{\\sqrt{3}})^{T}$，则$B$可表示为


$$
B = I - 3u_{1}u_{1}^{T},
$$

其中$I$为单位矩阵。计算$u_{1}u_{1}^{T}$：


$$
u_{1}u_{1}^{T} = \\left( \\begin{array}{c}
\\frac{1}{\\sqrt{3}} \\\\
−\\frac{1}{\\sqrt{3}} \\\\
\\frac{1}{\\sqrt{3}} \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
\\frac{1}{\\sqrt{3}} & −\\frac{1}{\\sqrt{3}} & \\frac{1}{\\sqrt{3}} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
\\frac{1}{3} & −\\frac{1}{3} & \\frac{1}{3} \\\\
−\\frac{1}{3} & \\frac{1}{3} & −\\frac{1}{3} \\\\
\\frac{1}{3} & −\\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array} \\right) ,
$$

则


$$
B = I - 3 ⋅ \\left( \\begin{array}{ccc}
\\frac{1}{3} & −\\frac{1}{3} & \\frac{1}{3} \\\\
−\\frac{1}{3} & \\frac{1}{3} & −\\frac{1}{3} \\\\
\\frac{1}{3} & −\\frac{1}{3} & \\frac{1}{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) - \\left( \\begin{array}{ccc}
1 & −1 & 1 \\\\
−1 & 1 & −1 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
0 & 1 & −1 \\\\
1 & 0 & 1 \\\\
−1 & 1 & 0 \\\\
\\end{array} \\right) .
$$

因此，矩阵$B$为


$$
\\left( \\begin{array}{ccc}
0 & 1 & −1 \\\\
1 & 0 & 1 \\\\
−1 & 1 & 0 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:14:16', 9, 'Mogullzr', '2026-01-29 14:14:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1932');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1932');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1933, '2007年考研数学卷1第23题', '简单', '考研数学2007年卷1真题', '（本题满分 11 分）设二维随机变量$(X, Y)$的概率密度为
$$
f(x, y) = \\begin{cases} 2 - x - y & 0 < x < 1, 0 < y < 1 \\\\ 0 & 其他. \\end{cases}
$$
(1) 求$P\\{X > 2Y\\}$；(2) 求$Z = X + Y$的概率密度$f_{Z}(z)$．', '[]', '
(1)$P\\{X > 2Y\\} = \\frac{7}{24}$
(2)$Z = X + Y$的概率密度函数为


$$
f_{Z}(z) = \\begin{cases} z(2 - z) & 0 < z < 1 \\\\ (2 - z)2 & 1 < z < 2 \\\\ 0 & 其他 \\end{cases}
$$

', '
(1) 计算$P\\{X > 2Y\\}$，即求概率$P\\{X > 2Y\\} = \\iint_{x>2y} f(x, y) dx dy$。由于$f(x, y)$在$0 < x < 1, 0 < y < 1$时非零，且满足$x > 2y$，因此积分区域为$0 < y < 0.5$和$2y < x < 1$。于是：


$$
P\\{X > 2Y\\} = \\int_{0}^{0.5} \\int_{2y}^{1}(2 - x - y) dx dy
$$

先计算内层积分：


$$
\\int_{2y}^{1}(2 - x - y) dx =  \\lbrack 2x - \\frac{1}{2}x^{2} - yx \\rbrack _{x=2y}^{x=1} = (1.5 - y) - (4y - 4y^{2}) = 1.5 - 5y + 4y^{2}
$$

然后计算外层积分：


$$
\\int_{0}^{0.5}(1.5 - 5y + 4y^{2}) dy =  \\lbrack 1.5y - \\frac{5}{2}y^{2} + \\frac{4}{3}y^{3} \\rbrack _{0}^{0.5} = \\frac{3}{4} - \\frac{5}{8} + \\frac{1}{6} = \\frac{18}{24} - \\frac{15}{24} + \\frac{4}{24} = \\frac{7}{24}
$$

故$P\\{X > 2Y\\} = \\frac{7}{24}$。
(2) 求$Z = X + Y$的概率密度$f_{Z}(z)$。使用卷积公式，$f_{Z}(z) = \\int_{−∞}^{∞} f(x, z - x) dx$。其中$f(x, z - x) = 2 - x - (z - x) = 2 - z$，但需满足$0 < x < 1$和$0 < z - x < 1$，即$\\max(0, z - 1) < x < \\min(1, z)$。因此：


$$
f_{Z}(z) = \\int_{\\max(0,z-1)}^{\\min(1,z)}(2 - z) dx = (2 - z)  \\lbrack \\min(1, z) - \\max(0, z - 1) \\rbrack
$$

根据$z$的取值范围讨论：
当$0 < z < 1$时，$\\min(1, z) = z$，$\\max(0, z - 1) = 0$，所以$f_{Z}(z) = (2 - z)z = z(2 - z)$。当$1 < z < 2$时，$\\min(1, z) = 1$，$\\max(0, z - 1) = z - 1$，所以$f_{Z}(z) = (2 - z)(1 - (z - 1)) = (2 - z)2$。当$z ≤ 0$或$z ≥ 2$时，$f_{Z}(z) = 0$。
验证概率密度积分为 1：
$\\int_{0}^{1} z(2 - z) dz = \\int_{0}^{1}(2z - z^{2}) dz =  \\lbrack z^{2} - \\frac{1}{3}z^{3} \\rbrack _{0}^{1} = 1 - \\frac{1}{3} = \\frac{2}{3}$$\\int_{1}^{2}(2 - z)2 dz = \\int_{1}^{2}(z - 2)2 dz =  \\lbrack \\frac{1}{3}(z - 2)3 \\rbrack _{1}^{2} = 0 - (\\frac{1}{3}(−1)3) = \\frac{1}{3}$总和为$\\frac{2}{3} + \\frac{1}{3} = 1$，正确。故$f_{Z}(z)$如上所述。
', 9, 'Mogullzr', '2026-01-29 14:14:16', 9, 'Mogullzr', '2026-01-29 14:14:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1933');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1933');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1933');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1934, '2007年考研数学卷1第24题', '简单', '考研数学2007年卷1真题', '（本题满分 11 分）设总体$X$的概率密度为
$$
f(x; θ) = \\begin{cases} \\frac{1}{2θ} & 0 < x < θ \\\\ \\frac{1}{2(1-θ)} & θ ≤ x < 1 \\\\ 0 & 其他. \\end{cases}
$$
其中参数$θ$（$0 < θ < 1$）未知，$X_{1}, X_{2}, ⋯ X_{n}$是来自总体$X$的简单随机样本，$\\overline{X}$是样本均值．(1) 求参数$θ$的矩估计量$θ$；(2) 判断$4\\overline{X}^{2}$是否为$θ^{2}$的无偏估计量，并说明理由．', '[]', '(1) 参数$θ$的矩估计量为$θ = \\frac{4\\overline{X}-1}{2}$。
(2)$4\\overline{X}^{2}$不是$θ^{2}$的无偏估计量。
', '(1) 求矩估计量
总体均值为


$$
E(X) = \\int_{0}^{θ} x ⋅ \\frac{1}{2θ} dx + \\int_{θ}^{1} x ⋅ \\frac{1}{2(1 - θ)} dx.
$$

计算得第一个积分为$\\frac{θ}{4}$，第二个积分为$\\frac{1+θ}{4}$，于是


$$
E(X) = \\frac{θ}{4} + \\frac{1 + θ}{4} = \\frac{1 + 2θ}{4}.
$$

根据矩估计法，令样本均值$\\overline{X} = E(X)$，即


$$
\\overline{X} = \\frac{1 + 2θ}{4},
$$

解得


$$
θ = \\frac{4\\overline{X} - 1}{2}.
$$

因此矩估计量为


$$
θ = \\frac{4\\overline{X} - 1}{2}.
$$


(2) 判断无偏性
需要判断$4\\overline{X}^{2}$是否为$θ^{2}$的无偏估计量，即计算$E(4\\overline{X}^{2})$。
首先，


$$
E(\\overline{X}) = E(X) = \\frac{1 + 2θ}{4},  Var(\\overline{X}) = \\frac{Var(X)}{n}.
$$

计算总体方差$Var(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2$，其中


$$
E(X^{2}) = \\int_{0}^{θ} x^{2} ⋅ \\frac{1}{2θ} dx + \\int_{θ}^{1} x^{2} ⋅ \\frac{1}{2(1 - θ)} dx.
$$

计算得第一个积分为$\\frac{θ^{2}}{6}$，第二个积分为$\\frac{1+θ+θ^{2}}{6}$，于是


$$
E(X^{2}) = \\frac{θ^{2}}{6} + \\frac{1 + θ + θ^{2}}{6} = \\frac{1 + θ + 2θ^{2}}{6}.
$$

因此，


$$
Var(X) = \\frac{1 + θ + 2θ^{2}}{6} - (\\frac{1 + 2θ}{4})^{2} = \\frac{5 - 4θ + 4θ^{2}}{48}.
$$

于是


$$
Var(\\overline{X}) = \\frac{5 - 4θ + 4θ^{2}}{48n},
$$



$$
E(\\overline{X}^{2}) = Var(\\overline{X}) +  \\lbrack E(\\overline{X}) \\rbrack 2 = \\frac{5 - 4θ + 4θ^{2}}{48n} + (\\frac{1 + 2θ}{4})^{2} .
$$

所以


$$
E(4\\overline{X}^{2}) = 4E(\\overline{X}^{2}) = \\frac{5 - 4θ + 4θ^{2}}{12n} + \\frac{1 + 4θ + 4θ^{2}}{4}.
$$

整理得


$$
E(4\\overline{X}^{2}) = \\frac{3n + 5 + (12n - 4)θ + (12n + 4)θ^{2}}{12n}.
$$

可见$E(4\\overline{X}^{2})$是$θ$的二次函数，且包含常数项与一次项，而$θ^{2}$是纯二次项。因此对于任意有限$n$，


$$
E(4\\overline{X}^{2}) \\neq θ^{2},
$$

故$4\\overline{X}^{2}$不是$θ^{2}$的无偏估计量。
', 9, 'Mogullzr', '2026-01-29 14:14:16', 9, 'Mogullzr', '2026-01-29 14:14:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1934');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1934');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1934');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1935, '2007年考研数学卷2第1题', '', '考研数学2007年卷2真题', '/problems/other/1911', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1936, '2007年考研数学卷2第2题', '简单', '考研数学2007年卷2真题', '函数$f(x) = \\frac{(e^{\\frac{1}{x}}+e) \\tan x}{x(e^{\\frac{1}{x}}-e)}$在$\\lbrack −π, π \\rbrack$上的第一类间断点是$x =$', '[''$0$．'', ''$1$．'', ''$−\\\\frac{π}{2}$．'', ''$\\\\frac{π}{2}$．'']', "['A']", '函数$f(x) = \\frac{(e^{\\frac{1}{x}}+e) \\tan x}{x(e^{\\frac{1}{x}}-e)}$在区间$\\lbrack −π, π \\rbrack$上的可能间断点为$x = 0$、$x = 1$、$x = \\frac{π}{2}$和$x = −\\frac{π}{2}$，因为这些点处函数无定义。对于$x = 0$:
当$x → 0^{+}$，有$e^{\\frac{1}{x}} → +∞$，因此$f(x) ∼ \\frac{\\tan x}{x} → 1$。
当$x → 0^{-}$，有$e^{\\frac{1}{x}} → 0$，因此$f(x) ∼ −\\frac{\\tan x}{x} → −1$。
左右极限存在但不相等，故$x = 0$是第一类间断点。对于$x = 1$:
分母为零而分子不为零，极限为无穷大，左右极限不存在，故为第二类间断点。对于$x = \\frac{π}{2}$和$x = −\\frac{π}{2}$:
分子中$\\tan x$趋于无穷大而分母不为零，极限为无穷大，左右极限不存在，故为第二类间断点。
因此，第一类间断点为$x = 0$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1936');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1936');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1936');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1937, '2007年考研数学卷2第3题', '', '考研数学2007年卷2真题', '/problems/other/1913', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1938, '2007年考研数学卷2第4题', '', '考研数学2007年卷2真题', '/problems/other/1914', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1939, '2007年考研数学卷2第5题', '', '考研数学2007年卷2真题', '/problems/other/1912', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1940, '2007年考研数学卷2第6题', '', '考研数学2007年卷2真题', '/problems/other/1915', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1941, '2007年考研数学卷2第7题', '简单', '考研数学2007年卷2真题', '二元函数$f(x, y)$在点$(0, 0)$处可微的一个充分条件是', '[''$\\\\lim_{(x,y)→(0,0)}  \\\\lbrack f(x, y) - f(0, 0) \\\\rbrack  = 0$．'', ''$\\\\lim_{x→0} \\\\frac{ \\\\lbrack f(x,0)-f(0,0) \\\\rbrack }{x} = 0$且$\\\\lim_{y→0} \\\\frac{ \\\\lbrack f(0,y)-f(0,0) \\\\rbrack }{y} = 0$．'', ''$\\\\lim_{(x,y)→(0,0)} \\\\frac{ \\\\lbrack f(x,y)-f(0,0) \\\\rbrack }{\\\\sqrt{x^{2}+y^{2}}} = 0$．'', ''$\\\\lim_{x→0}  \\\\lbrack f_{x}^{′}(x, 0) - f_{x}^{′}(0, 0) \\\\rbrack  = 0$且$\\\\lim_{y→0}  \\\\lbrack f_{y}^{′}(0, y) - f_{y}^{′}(0, 0) \\\\rbrack  = 0$．'']', "['C']", '
二元函数在点$(0, 0)$处可微的定义是：存在线性映射

$$
L(x, y) = f_{x}(0, 0)x + f_{y}(0, 0)y,
$$
使得

$$
\\lim_{(x,y)→(0,0)} \\frac{f(x, y) - f(0, 0) - L(x, y)}{\\sqrt{x^{2} + y^{2}}} = 0.
$$
选项 C 中，

$$
\\lim_{(x,y)→(0,0)} \\frac{f(x, y) - f(0, 0)}{\\sqrt{x^{2} + y^{2}}} = 0
$$
意味着$f(x, y) - f(0, 0)$是比$\\sqrt{x^{2} + y^{2}}$更高阶的无穷小。此时，若偏导数$f_{x}(0, 0)$和$f_{y}(0, 0)$存在，则可由该极限推导出它们均为 0（因为沿$x$轴和$y$轴方向该极限为 0，即方向导数为 0），从而$L(x, y) = 0$，满足可微定义。因此选项 C 是充分条件。选项 A 仅表示函数在$(0, 0)$处连续，但连续不一定可微。选项 B 表示在$x$轴和$y$轴方向的方向导数为 0，但未保证其他方向的可微性，因此不是充分条件。选项 D 表示偏导数在$x$轴和$y$轴上连续，但未保证在整个邻域内偏导数连续，因此不是可微的充分条件。', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1941');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1941');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1941');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1942, '2007年考研数学卷2第8题', '简单', '考研数学2007年卷2真题', '设函数$f(x, y)$连续，则二次积分$\\int_{\\frac{π}{2}}^{π} dx \\int_{\\sin x}^{1} f(x, y)dy$等于', '[''$\\\\int_{0}^{1} dy \\\\int_{π+arcsin y}^{π} f(x, y)dx$．'', ''$\\\\int_{0}^{1} dy \\\\int_{π-arcsin y}^{π} f(x, y)dx$．'', ''$\\\\int_{0}^{1} dy \\\\int_{\\\\frac{π}{2}}^{π+arcsin y} f(x, y)dx$．'', ''$\\\\int_{0}^{1} dy \\\\int_{\\\\frac{π}{2}}^{π-arcsin y} f(x, y)dx$．'']', "['B']", '
原二次积分为

$$
\\int_{\\frac{π}{2}}^{π} dx \\int_{\\sin x}^{1} f(x, y) dy,
$$
积分区域由$x ∈  \\lbrack \\frac{π}{2}, π \\rbrack$和$y ∈  \\lbrack \\sin x, 1 \\rbrack$定义。为了交换积分顺序，需要确定$y$的范围。当$x ∈  \\lbrack \\frac{π}{2}, π \\rbrack$时，$\\sin x$从$1$下降到$0$，因此$y ∈  \\lbrack 0, 1 \\rbrack$。对于固定的$y$，$x$需满足$\\sin x ≤ y$且$x ∈  \\lbrack \\frac{π}{2}, π \\rbrack$。
在$x ∈  \\lbrack \\frac{π}{2}, π \\rbrack$时，有$\\sin x = \\sin(π - x)$，且$π - x ∈  \\lbrack 0, \\frac{π}{2} \\rbrack$，
因此$\\sin x ≤ y$等价于$π - x ≤ arcsin y$，即$x ≥ π - arcsin y$。
同时$x ≤ π$，而$π - arcsin y ≥ \\frac{π}{2}$（因为$arcsin y ∈  \\lbrack 0, \\frac{π}{2} \\rbrack$），
故$x$的取值范围为$\\lbrack π - arcsin y, π \\rbrack$。交换积分顺序后，积分变为

$$
\\int_{0}^{1} dy \\int_{π-arcsin y}^{π} f(x, y) dx,
$$
与选项 B 一致。', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1942');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1942');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '1942');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1943, '2007年考研数学卷2第9题', '', '考研数学2007年卷2真题', '/problems/other/1917', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1944, '2007年考研数学卷2第10题', '', '考研数学2007年卷2真题', '/problems/other/1918', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1945, '2007年考研数学卷2第11题', '简单', '考研数学2007年卷2真题', '
$$
\\lim_{x→0} \\frac{arctan x - \\sin x}{x^{3}} =
$$
', '[]', '$−\\frac{1}{6}$
', '考虑极限$\\lim_{x→0} \\frac{arctan x-\\sin x}{x^{3}}$。当$x → 0$时，分子和分母均趋于 0，因此可以使用洛必达法则或泰勒展开求解。
使用泰勒展开：$arctan x = x - \\frac{x^{3}}{3} + O(x^{5})$，$\\sin x = x - \\frac{x^{3}}{6} + O(x^{5})$，
则$arctan x - \\sin x = (x - \\frac{x^{3}}{3}) - (x - \\frac{x^{3}}{6}) + O(x^{5}) = −\\frac{x^{3}}{6} + O(x^{5})$。
因此，

$$
\\frac{arctan x - \\sin x}{x^{3}} = \\frac{−\\frac{x^{3}}{6} + O(x^{5})}{x^{3}} = −\\frac{1}{6} + O(x^{2}) → −\\frac{1}{6} x → 0
$$

使用洛必达法则验证：
第一次应用洛必达法则：

$$
\\lim_{x→0} \\frac{\\frac{1}{1+x^{2}} - \\cos x}{3x^{2}}
$$

当$x → 0$时，该式仍为$\\frac{0}{0}$型，第二次应用洛必达法则：

$$
\\lim_{x→0} \\frac{−\\frac{2x}{(1+x^{2})2} + \\sin x}{6x} = \\lim_{x→0} (−\\frac{1}{3(1 + x^{2})2} + \\frac{1}{6} ⋅ \\frac{\\sin x}{x})
$$

当$x → 0$时，$(1 + x^{2})2 → 1$，$\\frac{\\sin x}{x} → 1$，因此极限为$−\\frac{1}{3} + \\frac{1}{6} = −\\frac{1}{6}$。
两种方法均得极限为$−\\frac{1}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1945');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1945');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1945');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1946, '2007年考研数学卷2第12题', '简单', '考研数学2007年卷2真题', '曲线$\\begin{cases} x = \\cos t + \\cos^{2} t \\\\ y = 1 + \\sin t \\end{cases}$上对应于$t = \\frac{π}{4}$的点处的法线斜率为 ______．', '[]', '$1 + \\sqrt{2}$
', '曲线由参数方程$x = \\cos t + \\cos^{2} t$和$y = 1 + \\sin t$给出。需要求在$t = \\frac{π}{4}$处的法线斜率。法线斜率为切线斜率的负倒数。
先求切线斜率$\\frac{dy}{dx}$。由于是参数方程，有：

$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}}
$$

计算$\\frac{dy}{dt}$：

$$
y = 1 + \\sin t  ⟹  \\frac{dy}{dt} = \\cos t
$$

计算$\\frac{dx}{dt}$：

$$
x = \\cos t + \\cos^{2} t  ⟹  \\frac{dx}{dt} = − \\sin t - 2 \\cos t \\sin t = − \\sin t(1 + 2 \\cos t)
$$

因此，

$$
\\frac{dy}{dx} = \\frac{\\cos t}{− \\sin t(1 + 2 \\cos t)} = −\\frac{\\cos t}{\\sin t(1 + 2 \\cos t)}
$$

在$t = \\frac{π}{4}$处，$\\cos \\frac{π}{4} = \\frac{\\sqrt{2}}{2}$，$\\sin \\frac{π}{4} = \\frac{\\sqrt{2}}{2}$，代入得：

$$
\\frac{dy}{dx} = −\\frac{\\frac{\\sqrt{2}}{2}}{\\frac{\\sqrt{2}}{2}(1 + 2 ⋅ \\frac{\\sqrt{2}}{2})} = −\\frac{1}{1 + \\sqrt{2}}
$$

有理化分母：

$$
−\\frac{1}{1 + \\sqrt{2}} ⋅ \\frac{1 - \\sqrt{2}}{1 - \\sqrt{2}} = −\\frac{1 - \\sqrt{2}}{1 - 2} = −\\frac{1 - \\sqrt{2}}{−1} = 1 - \\sqrt{2}
$$

所以切线斜率为$1 - \\sqrt{2}$。
法线斜率为切线斜率的负倒数：

$$
m_{n} = −\\frac{1}{1 - \\sqrt{2}}
$$

有理化分母：

$$
−\\frac{1}{1 - \\sqrt{2}} ⋅ \\frac{1 + \\sqrt{2}}{1 + \\sqrt{2}} = −\\frac{1 + \\sqrt{2}}{1 - 2} = −\\frac{1 + \\sqrt{2}}{−1} = 1 + \\sqrt{2}
$$

故法线斜率为$1 + \\sqrt{2}$。
', 9, 'Mogullzr', '2026-01-29 14:14:19', 9, 'Mogullzr', '2026-01-29 14:14:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1946');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1946');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1946');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1947, '2007年考研数学卷2第13题', '简单', '考研数学2007年卷2真题', '设函数$y = \\frac{1}{2x+3}$，则$y^{(n)}(0) =$______．', '[]', '

$$
\\frac{(−1)nn!2^{n}}{3^{n+1}}
$$

', '
考虑函数$y = \\frac{1}{2x+3} = (2x + 3)−1$。
对于一般形式$f(x) = (ax + b)−1$，其$n$阶导数为


$$
f^{(n)}(x) = (−1)n n! a^{n} (ax + b)−(n+1)
$$

本题中$a = 2$，$b = 3$，因此


$$
y^{(n)}(x) = (−1)n n! 2^{n} (2x + 3)−(n+1)
$$

代入$x = 0$得


$$
y^{(n)}(0) = (−1)n n! 2^{n} 3^{−(n+1)} = \\frac{(−1)n n! 2^{n}}{3^{n+1}}
$$

验证：
当$n = 0$时，$y(0) = \\frac{1}{3}$，公式给出$\\frac{1}{3}$；当$n = 1$时，$y^{′}(0) = −\\frac{2}{9}$，公式给出$−\\frac{2}{9}$。
两者均一致。
', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1947');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1947');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1947');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1948, '2007年考研数学卷2第14题', '', '考研数学2007年卷2真题', '/problems/other/1923', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1949, '2007年考研数学卷2第15题', '简单', '考研数学2007年卷2真题', '设$f(u, v)$是二元可微函数，$z = f (\\frac{y}{x}, \\frac{x}{y})$，
则$x\\frac{∂z}{∂x} - y\\frac{∂z}{∂y} =$______．', '[]', '$2 (\\frac{x}{y}\\frac{∂f}{∂v} - \\frac{y}{x}\\frac{∂f}{∂u})$
', '设$u = \\frac{y}{x}$,$v = \\frac{x}{y}$，则$z = f(u, v)$。
使用链式法则求偏导数：


$$
\\frac{∂z}{∂x} = \\frac{∂f}{∂u}\\frac{∂u}{∂x} + \\frac{∂f}{∂v}\\frac{∂v}{∂x} = \\frac{∂f}{∂u} (−\\frac{y}{x^{2}}) + \\frac{∂f}{∂v} (\\frac{1}{y})
$$



$$
\\frac{∂z}{∂y} = \\frac{∂f}{∂u}\\frac{∂u}{∂y} + \\frac{∂f}{∂v}\\frac{∂v}{∂y} = \\frac{∂f}{∂u} (\\frac{1}{x}) + \\frac{∂f}{∂v} (−\\frac{x}{y^{2}})
$$

计算$x\\frac{∂z}{∂x}$和$y\\frac{∂z}{∂y}$：


$$
x\\frac{∂z}{∂x} = x  \\lbrack \\frac{∂f}{∂u} (−\\frac{y}{x^{2}}) + \\frac{∂f}{∂v} (\\frac{1}{y}) \\rbrack  = −\\frac{y}{x}\\frac{∂f}{∂u} + \\frac{x}{y}\\frac{∂f}{∂v}
$$



$$
y\\frac{∂z}{∂y} = y  \\lbrack \\frac{∂f}{∂u} (\\frac{1}{x}) + \\frac{∂f}{∂v} (−\\frac{x}{y^{2}}) \\rbrack  = \\frac{y}{x}\\frac{∂f}{∂u} - \\frac{x}{y}\\frac{∂f}{∂v}
$$

相减得：


$$
\\begin{array}{cc}
x\\frac{∂z}{∂x} - y\\frac{∂z}{∂y} & = (−\\frac{y}{x}\\frac{∂f}{∂u} + \\frac{x}{y}\\frac{∂f}{∂v}) (\\frac{y}{x}\\frac{∂f}{∂u} - \\frac{x}{y}\\frac{∂f}{∂v}) \\\\
 & = −2\\frac{y}{x}\\frac{∂f}{∂u} + 2\\frac{x}{y}\\frac{∂f}{∂v} \\\\
\\end{array}
$$

因此，结果为$2 (\\frac{x}{y}\\frac{∂f}{∂v} - \\frac{y}{x}\\frac{∂f}{∂u})$。
', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1949');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1949');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1949');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1950, '2007年考研数学卷2第16题', '', '考研数学2007年卷2真题', '/problems/other/1925', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1951, '2007年考研数学卷2第17题', '简单', '考研数学2007年卷2真题', '（本题满分 10 分）设$f(x)$是区间$\\lbrack 0, \\frac{π}{4} \\rbrack$上的单调、可导函数，且满足
$$
\\int_{0}^{f(x)} f^{−1}(t)dt = \\int_{0}^{x} t\\frac{\\cos t - \\sin t}{\\sin t + \\cos t}dt,
$$
其中$f^{−1}$是$f$的反函数，求$f(x)$．', '[]', '

$$
f(x) = \\ln(\\sin x + \\cos x)
$$

', '给定方程：

$$
\\int_{0}^{f(x)} f^{−1}(t)dt = \\int_{0}^{x} t\\frac{\\cos t - \\sin t}{\\sin t + \\cos t}dt
$$

其中$f(x)$在区间$\\lbrack 0, \\frac{π}{4} \\rbrack$上单调、可导，且$f^{−1}$是其反函数。
对两边关于$x$求导。左边：

$$
\\frac{d}{dx} \\int_{0}^{f(x)} f^{−1}(t)dt = f^{−1}(f(x)) ⋅ f^{′}(x) = xf^{′}(x)
$$

右边：

$$
\\frac{d}{dx} \\int_{0}^{x} t\\frac{\\cos t - \\sin t}{\\sin t + \\cos t}dt = x\\frac{\\cos x - \\sin x}{\\sin x + \\cos x}
$$

因此：

$$
xf^{′}(x) = x\\frac{\\cos x - \\sin x}{\\sin x + \\cos x}
$$

对于$x \\neq 0$，两边除以$x$：

$$
f^{′}(x) = \\frac{\\cos x - \\sin x}{\\sin x + \\cos x}
$$

积分得：

$$
f(x) = ∫ \\frac{\\cos x - \\sin x}{\\sin x + \\cos x}dx
$$

注意到分子是分母的导数，即：

$$
\\frac{d}{dx}(\\sin x + \\cos x) = \\cos x - \\sin x
$$

所以：

$$
f(x) = \\ln ∣ \\sin x + \\cos x∣ + C
$$

在区间$\\lbrack 0, \\frac{π}{4} \\rbrack$上，$\\sin x + \\cos x > 0$，因此：

$$
f(x) = \\ln(\\sin x + \\cos x) + C
$$

由初始条件，当$x = 0$时，原方程两边均为零，故$f(0) = 0$。代入：

$$
f(0) = \\ln(\\sin 0 + \\cos 0) + C = \\ln 1 + C = 0 + C = 0
$$

解得$C = 0$。因此：

$$
f(x) = \\ln(\\sin x + \\cos x)
$$

该函数在$\\lbrack 0, \\frac{π}{4} \\rbrack$上单调递增且可导，满足条件。
', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1951');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1951');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1951');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1952, '2007年考研数学卷2第18题', '简单', '考研数学2007年卷2真题', '（本题满分 11 分）设$D$是位于曲线$y = \\sqrt{x}a^{−\\frac{x}{2a}}(a > 1, 0 ≤ x < +∞)$下方、$x$轴上方的无界区域．(1) 求区域$D$绕$x$轴旋转一周所成旋转体的体积$V(a)$；(2) 当$a$为何值时，$V(a)$最小？并求出最小值．', '[]', '
(1)$V(a) = π\\frac{a^{2}}{(\\ln a)2}$
(2) 当$a = e$时，$V(a)$最小，最小值为$πe^{2}$
', '
(Ⅰ) 由旋转体的体积公式，

$$
V(a) = π \\int_{0}^{∞} xa^{−\\frac{x}{a}}dx = −\\frac{a}{\\ln a}π \\int_{0}^{∞} xd (a^{−\\frac{x}{a}})
$$



$$
= −\\frac{a}{\\ln a}π  \\lbrack xa^{−\\frac{x}{a}} \\rbrack _{0}^{+∞} + \\frac{a}{\\ln a}π \\int_{0}^{∞} a^{−\\frac{x}{a}}dx = π (\\frac{a}{\\ln a})^{2}
$$

(Ⅱ) 对$V(a)$求导得到

$$
V^{′}(a) =  \\lbrack π (\\frac{a}{\\ln a})^{2} \\rbrack ^{′} = π ⋅ \\frac{2a \\ln^{2} a - a^{2} ⋅ 2 \\ln a ⋅ \\frac{1}{a}}{\\ln^{4} a}
$$



$$
= π ⋅ \\frac{2a \\ln a - 2a}{\\ln^{3} a} = 2π (\\frac{a(\\ln a - 1)}{\\ln^{3} a})
$$

令$V^{′}(a) = 0$，得$\\ln a = 1$，从而$a = e$。当$1 < a < e$时，$V^{′}(a) < 0$，$V(a)$单调减少；当$a > e$时，$V^{′}(a) > 0$，$V(a)$单调增加。所以$a = e$时$V$最小，最小体积为$V_{\\min}(a) = πe^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1952');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1952');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '1952');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1953, '2007年考研数学卷2第19题', '简单', '考研数学2007年卷2真题', '（本题满分 11 分）求微分方程$y^{′′}(x + y^{′2}) = y^{′}$满足初始条件$y(1) = y^{′}(1) = 1$的特解．', '[]', '
$y = \\frac{2}{3}x^{\\frac{3}{2}} + \\frac{1}{3}$
', '
令$y^{′} = p$，则$y^{′′} = p^{′}$，原方程化为$p^{′}(x + p^{2}) = p$。即

$$
\\frac{dx}{dp} - \\frac{x}{p} = p
$$

由一阶线性微分方程求解公式，得

$$
x = e^{∫ \\frac{1}{p}dp} (∫ pe^{∫ −\\frac{1}{p}dp}dp + C_{1}) = p (∫ dp + C_{1}) = p(p + C_{1})
$$

代入初始条件得$C_{1} = 0$，于是$p^{2} = x$。由$y^{′}(1) = 1$知$p = \\sqrt{x}$，即

$$
\\frac{dy}{dx} = \\sqrt{x} ⇒ y = \\frac{2}{3}x^{\\frac{3}{2}} + C_{2}
$$

代入初始条件得$C_{2} = \\frac{1}{3}$，所以特解为

$$
y = \\frac{2}{3}x^{\\frac{3}{2}} + \\frac{1}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:14:20', 9, 'Mogullzr', '2026-01-29 14:14:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1953');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1953');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1953');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1954, '2007年考研数学卷2第20题', '简单', '考研数学2007年卷2真题', '（本题满分 10 分）已知函数$f(u)$具有二阶导数，且$f^{′}(0) = 1$，函数$y = y(x)$由方程$y - xe^{y-1} = 1$所确定．
设$z = f(\\ln y - \\sin x)$，求$\\frac{dz}{dx}​_{x=0}$,$\\frac{d^{2}z}{dx^{2}}​_{x=0}$．', '[]', '$\\frac{dz}{dx}​_{x=0} = 0$，$\\frac{d^{2}z}{dx^{2}}​_{x=0} = 1$
', '
在$y - xe^{y-1} = 1$中，令$x = 0$，得$y = 1$。$y - xe^{y-1} = 1$两边对$x$求导，得

$$
y^{′} - e^{y-1} - xe^{y-1}y^{′} = 0 ⇒ (2 - y)y^{′} - e^{y-1} = 0.
$$

由$x = 0, y = 1$得$y^{′}∣_{x=0} = 1$。对上述两边求导，得

$$
(2 - y)y^{′′} - y^{′2} - e^{y-1}y^{′} = 0.
$$

令$x = 0$，由$x = 0$时$y = 1, y^{′} = 1$，得$y^{′′}∣_{x=0} = 2$。因为$z = f(\\ln y - \\sin x)$，所以

$$
\\frac{dz}{dx} = f^{′}(\\ln y - \\sin x) (\\frac{y^{′}}{y} - \\cos x) .
$$

把$x = 0, y = 1, y^{′} = 1$代入，得

$$
\\frac{dz}{dx}​_{x=0} = 0.
$$

对上述再次求导，得

$$
\\frac{d^{2}z}{dx^{2}} = f^{′′}(\\ln y - \\sin x) (\\frac{y^{′}}{y} - \\cos x)^{2} + f^{′}(\\ln y - \\sin x)  \\lbrack −\\frac{y^{′2}}{y^{2}} + \\frac{y^{′′}}{y} + \\sin x \\rbrack  .
$$

把$x = 0, y = 1, y^{′} = 1, y^{′′} = 2$代入上式，得

$$
\\frac{d^{2}z}{dx^{2}} = f^{′}(0)(2 - 1) = 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:14:21', 9, 'Mogullzr', '2026-01-29 14:14:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1954');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1954');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1955, '2007年考研数学卷2第21题', '', '考研数学2007年卷2真题', '/problems/other/1929', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:21', 9, 'Mogullzr', '2026-01-29 14:14:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1956, '2007年考研数学卷2第22题', '简单', '考研数学2007年卷2真题', '（本题满分 11 分）设二元函数$f(x, y) = \\begin{cases} x^{2} & ∣x∣ + ∣y∣ ≤ 1 \\\\ \\frac{1}{\\sqrt{x^{2}+y^{2}}} & 1 < ∣x∣ + ∣y∣ ≤ 2 \\end{cases}$计算二重积分$\\iint_{D} f(x, y)dσ$，其中$D = \\{(x, y) ∣∣x∣ + ∣y∣ ≤ 2\\}$．', '[]', '

$$
\\iint_{D} f(x, y) dσ = \\frac{1}{3} + 4\\sqrt{2} \\ln(1 + \\sqrt{2})
$$

', '积分区域$D = \\{(x, y) ∣ ∣x∣ + ∣y∣ ≤ 2\\}$是一个菱形区域。根据函数$f(x, y)$的定义，将积分分为两部分：

$$
\\iint_{D} f(x, y) dσ = \\iint_{∣x∣+∣y∣≤1} x^{2} dσ + \\iint_{1<∣x∣+∣y∣≤2} \\frac{1}{\\sqrt{x^{2} + y^{2}}} dσ = I_{1} + I_{2}.
$$

首先计算$I_{1} = \\iint_{∣x∣+∣y∣≤1} x^{2} dσ$。区域$∣x∣ + ∣y∣ ≤ 1$关于$x$轴和$y$轴对称，且$x^{2}$是偶函数，故只需计算第一象限部分并乘以 4。在第一象限，区域为$x ≥ 0, y ≥ 0, x + y ≤ 1$，则：

$$
\\begin{array}{cc}
I_{1} & = 4 \\int_{0}^{1} \\int_{0}^{1-x} x^{2} dy dx = 4 \\int_{0}^{1} x^{2}(1 - x) dx \\\\
 & = 4 \\int_{0}^{1}(x^{2} - x^{3}) dx = 4  \\lbrack \\frac{1}{3}x^{3} - \\frac{1}{4}x^{4} \\rbrack _{0}^{1} \\\\
 & = 4 (\\frac{1}{3} - \\frac{1}{4}) = 4 ⋅ \\frac{1}{12} \\\\
\\end{array}
$$

其次计算$I_{2} = \\iint_{1<∣x∣+∣y∣≤2} \\frac{1}{\\sqrt{x^{2}+y^{2}}} dσ$。在极坐标下，令$x = r \\cos θ$,$y = r \\sin θ$，则$dσ = r dr dθ$，且$\\frac{1}{\\sqrt{x^{2}+y^{2}}} = \\frac{1}{r}$，因此：

$$
I_{2} = \\iint_{1<∣x∣+∣y∣≤2} \\frac{1}{r} ⋅ r dr dθ = \\iint_{1<∣x∣+∣y∣≤2} dr dθ.
$$

区域$1 < ∣x∣ + ∣y∣ ≤ 2$在极坐标下表示为$1 < r(∣ \\cos θ∣ + ∣ \\sin θ∣) ≤ 2$。由于对称性，只需计算$θ ∈  \\lbrack 0, π/2 \\rbrack$部分并乘以 4。在$θ ∈  \\lbrack 0, π/2 \\rbrack$时，$∣ \\cos θ∣ + ∣ \\sin θ∣ = \\cos θ + \\sin θ$，令$k(θ) = \\cos θ + \\sin θ$，则：

$$
I_{2} = 4 \\int_{0}^{π/2} \\int_{r=1/k(θ)}^{2/k(θ)} dr dθ = 4 \\int_{0}^{π/2} \\frac{1}{k(θ)} dθ = 4 \\int_{0}^{π/2} \\frac{1}{\\cos θ + \\sin θ} dθ.
$$

计算积分$J = \\int_{0}^{π/2} \\frac{1}{\\cos θ+\\sin θ} dθ$。注意到$\\cos θ + \\sin θ = \\sqrt{2} \\cos(θ - π/4)$，所以：

$$
J = \\int_{0}^{π/2} \\frac{1}{\\sqrt{2} \\cos(θ - π/4)} dθ = \\frac{1}{\\sqrt{2}} \\int_{−π/4}^{π/4} sec u du (u = θ - π/4).
$$

由于$sec u$是偶函数：

$$
\\begin{array}{cc}
J & = \\frac{1}{\\sqrt{2}} ⋅ 2 \\int_{0}^{π/4} sec u du = \\sqrt{2} \\int_{0}^{π/4} sec u du \\\\
 & = \\sqrt{2}  \\lbrack \\ln ∣ sec u + \\tan u∣ \\rbrack _{0}^{π/4} = \\sqrt{2}  \\lbrack \\ln(\\sqrt{2} + 1) - \\ln(1 + 0) \\rbrack  \\\\
 & = \\sqrt{2} \\ln(1 + \\sqrt{2}). \\\\
\\end{array}
$$

因此：

$$
I_{2} = 4 ⋅ \\sqrt{2} \\ln(1 + \\sqrt{2}) = 4\\sqrt{2} \\ln(1 + \\sqrt{2}).
$$

综上：

$$
\\iint_{D} f(x, y) dσ = I_{1} + I_{2} = \\frac{1}{3} + 4\\sqrt{2} \\ln(1 + \\sqrt{2}).
$$

', 9, 'Mogullzr', '2026-01-29 14:14:21', 9, 'Mogullzr', '2026-01-29 14:14:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1956');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1956');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1956');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1957, '2007年考研数学卷2第23题', '', '考研数学2007年卷2真题', '/problems/other/1931', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:21', 9, 'Mogullzr', '2026-01-29 14:14:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1958, '2007年考研数学卷2第24题', '', '考研数学2007年卷2真题', '/problems/other/1932', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:21', 9, 'Mogullzr', '2026-01-29 14:14:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1959, '2007年考研数学卷3第1题', '简单', '考研数学2007年卷3真题', '当$x → 0^{+}$时，与$\\sqrt{x}$等价的无穷小量是', '[''$1 - e^{\\\\sqrt{x}}$．'', ''$\\\\ln(1 + \\\\sqrt{x})$．'', ''$\\\\sqrt{} - 1$．'', ''$1 - \\\\cos \\\\sqrt{x}$．'']', "['B']", '
当$x → 0^{+}$时，需要找到与$\\sqrt{x}$等价的无穷小量，即比较各选项与$\\sqrt{x}$的比值的极限是否为 1。选项 A：$1 - e^{\\sqrt{x}}$
由于$e^{\\sqrt{x}} - 1 ∼ \\sqrt{x}$，所以$1 - e^{\\sqrt{x}} ∼ −\\sqrt{x}$，极限为$−1$，不等价。选项 B：$\\ln(1 + \\sqrt{x})$
由于$\\ln(1 + u) ∼ u$（当$u → 0$），令$u = \\sqrt{x}$，则$\\ln(1 + \\sqrt{x}) ∼ \\sqrt{x}$，极限为 1，等价。选项 C：$\\sqrt{} - 1$
由于$\\sqrt{1 + u} - 1 ∼ \\frac{u}{2}$（当$u → 0$），令$u = \\sqrt{x}$，则$\\sqrt{} - 1 ∼ \\frac{\\sqrt{x}}{2}$，极限为$\\frac{1}{2}$，不等价。选项 D：$1 - \\cos \\sqrt{x}$
由于$1 - \\cos u ∼ \\frac{u^{2}}{2}$（当$u → 0$），令$u = \\sqrt{x}$，则$1 - \\cos \\sqrt{x} ∼ \\frac{x}{2}$，与$\\sqrt{x}$的比值的极限为 0，不等价。因此，只有选项 B 与$\\sqrt{x}$等价。', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1959');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1959');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '1959');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1960, '2007年考研数学卷3第2题', '', '考研数学2007年卷3真题', '/problems/other/1914', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1961, '2007年考研数学卷3第3题', '', '考研数学2007年卷3真题', '/problems/other/1913', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1962, '2007年考研数学卷3第4题', '', '考研数学2007年卷3真题', '/problems/other/1942', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1963, '2007年考研数学卷3第5题', '简单', '考研数学2007年卷3真题', '设某商品的需求函数为$Q = 160 - 2p$，其中$Q$，$p$分别表示需要量和价格，
如果该商品需求弹性的绝对值等于$1$，则商品的价格是', '[''$10$．'', ''$20$．'', ''$30$．'', ''$40$．'']', "['D']", '由需求弹性的定义知
$$
​\\frac{Q^{′}(p)}{Q(p)}p​ = ​\\frac{−2}{160 - 2p}p​ = ​\\frac{p}{80 - p}​ = 1.
$$
若$\\frac{p}{p-80} = 1$，则$p = p - 80$，无意义；
若$\\frac{p}{80-p} = 1$，解得$p = 40$。
所以选 (D)。', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1963');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1963');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1963');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1964, '2007年考研数学卷3第6题', '', '考研数学2007年卷3真题', '/problems/other/1912', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1965, '2007年考研数学卷3第7题', '', '考研数学2007年卷3真题', '/problems/other/1917', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1966, '2007年考研数学卷3第8题', '', '考研数学2007年卷3真题', '/problems/other/1918', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1967, '2007年考研数学卷3第9题', '', '考研数学2007年卷3真题', '/problems/other/1919', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1968, '2007年考研数学卷3第10题', '', '考研数学2007年卷3真题', '/problems/other/1920', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1969, '2007年考研数学卷3第11题', '简单', '考研数学2007年卷3真题', '
$$
\\lim_{x→+∞} \\frac{x^{3} + x^{2} + 1}{2^{x} + x^{3}}(\\sin x + \\cos x) =
$$
', '[]', '$0$
', '
考虑极限$\\lim_{x→+∞} \\frac{x^{3}+x^{2}+1}{2^{x}+x^{3}}(\\sin x + \\cos x)$。
首先，分析分式部分$\\frac{x^{3}+x^{2}+1}{2^{x}+x^{3}}$。当$x → +∞$时，分子$x^{3} + x^{2} + 1$是多项式增长，分母$2^{x} + x^{3}$中指数函数$2^{x}$增长更快，因此分式趋近于 0。具体地，$\\frac{x^{3}+x^{2}+1}{2^{x}+x^{3}} ∼ \\frac{x^{3}}{2^{x}} → 0$。
其次，因子$(\\sin x + \\cos x)$是有界函数，因为$∣ \\sin x + \\cos x∣ ≤ \\sqrt{2}$。
因此，分式趋近于 0 与有界函数的乘积的极限为 0。
由夹逼定理，有


$$
​\\frac{x^{3} + x^{2} + 1}{2^{x} + x^{3}}(\\sin x + \\cos x)​ ≤ \\frac{x^{3} + x^{2} + 1}{2^{x} + x^{3}} ⋅ \\sqrt{2} → 0,
$$

故原极限为 0。
', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1969');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1969');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1969');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1970, '2007年考研数学卷3第12题', '', '考研数学2007年卷3真题', '/problems/other/1947', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1971, '2007年考研数学卷3第13题', '', '考研数学2007年卷3真题', '/problems/other/1949', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1972, '2007年考研数学卷3第14题', '简单', '考研数学2007年卷3真题', '微分方程$\\frac{dy}{dx} = \\frac{y}{x} - \\frac{1}{2} (\\frac{y}{x})^{3}$满足$y​_{x=1} = 1$的特解为$y =$______．', '[]', '$y = \\frac{x}{\\sqrt{1+\\ln x}}$
', '
应填$\\frac{x}{\\sqrt{1+\\ln x}}$。令$u = \\frac{y}{x}$，有

$$
\\frac{dy}{dx} = \\frac{d(ux)}{dx} = ux^{′} + x\\frac{du}{dx} = u + x\\frac{du}{dx},
$$

原方程化为

$$
u + x\\frac{du}{dx} = u - \\frac{1}{2}u^{3}  ⇒  \\frac{2 du}{u^{3}} = −\\frac{dx}{x}.
$$

此式为变量可分离的微分方程，两边积分，

$$
∫ \\frac{2 du}{u^{3}} = − ∫ \\frac{dx}{x}  ⇒  −\\frac{1}{u^{2}} = − \\ln x + C_{1}.
$$

得$\\frac{1}{u^{2}} = \\ln x + C$，即$\\frac{x^{2}}{y^{2}} = \\ln ∣x∣ + C$。由$y​_{x=1} = 1$知应取$x > 0, y > 0$且$C = 1$，
所以得特解$y = \\frac{x}{\\sqrt{1+\\ln x}}$。
', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1972');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1972');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1972');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1973, '2007年考研数学卷3第15题', '', '考研数学2007年卷3真题', '/problems/other/1925', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1974, '2007年考研数学卷3第16题', '', '考研数学2007年卷3真题', '/problems/other/1926', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1975, '2007年考研数学卷3第17题', '简单', '考研数学2007年卷3真题', '（本题满分 10 分）设函数$y = y(x)$由方程$y \\ln y - x + y = 0$确定，试判断曲线$y = y(x)$在点$(1, 1)$附近的凹凸性．', '[]', '凸
', '
对方程两边求导得

$$
y^{′} \\ln y + y ⋅ \\frac{1}{y} ⋅ y^{′} - 1 + y^{′} = y^{′} \\ln y + 2y^{′} - 1 = 0.
$$

移项得$y^{′} = \\frac{1}{2+\\ln y}$。再两边求导得

$$
y^{′′} = −\\frac{(\\ln y)′}{(2 + \\ln y)2} = −\\frac{y^{′}}{y(2 + \\ln y)2} = −\\frac{1}{y(2 + \\ln y)3}.
$$

在$(1, 1)$点的值为

$$
y^{′′}​_{x=1} = −\\frac{1}{1 ⋅ (2 + \\ln 1)3} = −\\frac{1}{8} < 0.
$$

又由$y^{′′}$在$y = 1$的附近连续，所以在$y = 1$的附近$y^{′′} < 0$，曲线为凸。
', 9, 'Mogullzr', '2026-01-29 14:14:23', 9, 'Mogullzr', '2026-01-29 14:14:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1975');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1975');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '1975');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1976, '2007年考研数学卷3第18题', '', '考研数学2007年卷3真题', '/problems/other/1956', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1977, '2007年考研数学卷3第19题', '简单', '考研数学2007年卷3真题', '（本题满分 11 分）设函数$f(x)$，$g(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内二阶可导且存在相等的最大值，又$f(a)$=$g(a)$，$f(b)$=$g(b)$，证明：(1) 存在$η ∈ (a, b)$，使得$f(η) = g(η)$；(2) 存在$ξ ∈ (a, b)$，使得$f^{′′}(ξ) = g^{′′}(ξ)$．', '[]', '见解析
', '
(I) 令$φ(x) = f(x) - g(x)$，由题设$f(x), g(x)$存在相等的最大值，设$x_{1} ∈ (a, b)$,$x_{2} ∈ (a, b)$使得

$$
f(x_{1}) = \\max_{ \\lbrack a,b \\rbrack } f(x) = g(x_{2}) = \\max_{ \\lbrack a,b \\rbrack } g(x).
$$

于是$φ(x_{1}) = f(x_{1}) - g(x_{1}) ≥ 0$，$φ(x_{2}) = f(x_{2}) - g(x_{2}) ≤ 0$。若$φ(x_{1}) = 0$，则取$η = x_{1} ∈ (a, b)$，有$φ(η) = 0$。若$φ(x_{2}) = 0$，则取$η = x_{2} ∈ (a, b)$，有$φ(η) = 0$。若$φ(x_{1}) > 0$,$φ(x_{2}) < 0$，则由连续函数介值定理知，存在$η ∈ (x_{1}, x_{2})$使$φ(η) = 0$。
不论以上哪种情况，总存在$η ∈ (a, b)$，使$φ(η) = 0$，即$f(η) = g(η)$。
(II) 因为

$$
φ(a) = f(a) - g(a) = 0,  φ(η) = 0,  φ(b) = f(b) - g(b) = 0.
$$

则由罗尔定理，存在$ξ_{1} ∈ (a, η)$,$ξ_{2} ∈ (η, b)$，使得$φ^{′}(ξ_{1}) = 0$,$φ^{′}(ξ_{2}) = 0$；再由罗尔定理知，存在$ξ ∈ (ξ_{1}, ξ_{2})$，使$φ^{′′}(ξ) = 0$，即有$f^{′′}(ξ) = g^{′′}(ξ)$。
', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1977');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1977');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1977');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1978, '2007年考研数学卷3第20题', '简单', '考研数学2007年卷3真题', '（本题满分 10 分）将函数$f(x) = \\frac{1}{x^{2}-3x-4}$展开成$x - 1$的幂级数，并指出其收敛区间．', '[]', '
函数$f(x) = \\frac{1}{x^{2}-3x-4}$展开成$x - 1$的幂级数为：


$$
f(x) = −\\frac{1}{5} \\sum_{n=0}^{∞}  \\lbrack \\frac{1}{3^{n+1}} + \\frac{(−1)n}{2^{n+1}} \\rbrack  (x - 1)n
$$

收敛区间为$(−1, 3)$。
', '
先对函数作恒等变形，得到

$$
f(x) = \\frac{1}{x^{2} - 3x - 4} = \\frac{1}{(x - 4)(x + 1)} = \\frac{1}{5} (\\frac{1}{x - 4} - \\frac{1}{x + 1}) .
$$

当$​\\frac{x-1}{3}​ < 1$即$−2 < x < 4$时有

$$
\\frac{1}{x - 4} = \\frac{1}{x - 1 - 3} = \\frac{1}{−3 + (x - 1)} = −\\frac{1}{3} ⋅ \\frac{1}{1 - (\\frac{x-1}{3})} = −\\frac{1}{3} \\sum_{n=0}^{∞} (\\frac{x - 1}{3})^{n} .
$$

当$​−\\frac{x-1}{2}​ < 1$即$−1 < x < 3$时有

$$
\\frac{1}{x + 1} = \\frac{1}{x - 1 + 2} = \\frac{1}{2} ⋅ \\frac{1}{1 + (\\frac{x-1}{2})} = \\frac{1}{2} ⋅ \\frac{1}{1 - (−\\frac{x-1}{2})} = \\frac{1}{2} \\sum_{n=0}^{∞} (−\\frac{x - 1}{2})^{n} .
$$

所以，$f(x) = \\frac{1}{x^{2}-3x-4}$展开成$x - 1$的幂级数为：

$$
\\begin{array}{cc}
f(x) & = \\frac{1}{5}  \\lbrack −\\frac{1}{3} \\sum_{n=0}^{∞} (\\frac{x - 1}{3})^{n} - \\frac{1}{2} \\sum_{n=0}^{∞} (−\\frac{x - 1}{2})^{n} \\rbrack  \\\\
 & = −\\frac{1}{5} \\sum_{n=0}^{∞} (\\frac{1}{3^{n+1}} + \\frac{(−1)n}{2^{n+1}}) (x - 1)n, \\\\
\\end{array}
$$

其中$−1 < x < 3$。
', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1978');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1978');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1978');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1979, '2007年考研数学卷3第21题', '', '考研数学2007年卷3真题', '/problems/other/1931', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1980, '2007年考研数学卷3第22题', '', '考研数学2007年卷3真题', '/problems/other/1932', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1981, '2007年考研数学卷3第23题', '', '考研数学2007年卷3真题', '/problems/other/1933', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1982, '2007年考研数学卷3第24题', '', '考研数学2007年卷3真题', '/problems/other/1934', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:24', 9, 'Mogullzr', '2026-01-29 14:14:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1983, '2007年考研数学卷4第1题', '', '考研数学2007年卷4真题', '/problems/other/1959', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1984, '2007年考研数学卷4第2题', '', '考研数学2007年卷4真题', '/problems/other/1914', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1985, '2007年考研数学卷4第3题', '', '考研数学2007年卷4真题', '/problems/other/1913', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1986, '2007年考研数学卷4第4题', '', '考研数学2007年卷4真题', '/problems/other/1942', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1987, '2007年考研数学卷4第5题', '', '考研数学2007年卷4真题', '/problems/other/1963', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1988, '2007年考研数学卷4第6题', '', '考研数学2007年卷4真题', '/problems/other/1912', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1989, '2007年考研数学卷4第7题', '', '考研数学2007年卷4真题', '/problems/other/1917', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1990, '2007年考研数学卷4第8题', '', '考研数学2007年卷4真题', '/problems/other/1918', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1991, '2007年考研数学卷4第9题', '', '考研数学2007年卷4真题', '/problems/other/1919', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1992, '2007年考研数学卷4第10题', '', '考研数学2007年卷4真题', '/problems/other/1920', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1993, '2007年考研数学卷4第11题', '', '考研数学2007年卷4真题', '/problems/other/1969', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1994, '2007年考研数学卷4第12题', '', '考研数学2007年卷4真题', '/problems/other/1947', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1995, '2007年考研数学卷4第13题', '', '考研数学2007年卷4真题', '/problems/other/1949', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1996, '2007年考研数学卷4第14题', '', '考研数学2007年卷4真题', '/problems/other/1972', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1997, '2007年考研数学卷4第15题', '', '考研数学2007年卷4真题', '/problems/other/1925', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1998, '2007年考研数学卷4第16题', '', '考研数学2007年卷4真题', '/problems/other/1926', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1999, '2007年考研数学卷4第17题', '', '考研数学2007年卷4真题', '/problems/other/1975', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2000, '2007年考研数学卷4第18题', '', '考研数学2007年卷4真题', '/problems/other/1956', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2001, '2007年考研数学卷4第19题', '', '考研数学2007年卷4真题', '/problems/other/1977', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2002, '2007年考研数学卷4第20题', '简单', '考研数学2007年卷4真题', '（本题满分 10 分）设函数$f(x)$具有连续的一阶导数，且满足$f(x) = \\int_{0}^{x}(x^{2} - t^{2})f^{′}(t)dt + x^{2}$，求$f(x)$的表达式．', '[]', '

$$
f(x) = e^{x^{2}} - 1
$$

', '给定函数$f(x)$具有连续的一阶导数，且满足方程：

$$
f(x) = \\int_{0}^{x}(x^{2} - t^{2})f^{′}(t) dt + x^{2}
$$

首先，求$f(0)$。令$x = 0$，代入方程：

$$
f(0) = \\int_{0}^{0}(0^{2} - t^{2})f^{′}(t) dt + 0^{2} = 0
$$

所以$f(0) = 0$。
定义$F(x) = \\int_{0}^{x}(x^{2} - t^{2})f^{′}(t) dt$，则$f(x) = F(x) + x^{2}$。对$F(x)$应用莱布尼茨积分法则：

$$
\\begin{array}{cc}
F^{′}(x) & = \\frac{d}{dx} \\int_{0}^{x}(x^{2} - t^{2})f^{′}(t) dt \\\\
 & =  \\lbrack (x^{2} - t^{2})f^{′}(t) \\rbrack _{t=x} ⋅ \\frac{d}{dx}(x) -  \\lbrack (x^{2} - t^{2})f^{′}(t) \\rbrack _{t=0} ⋅ \\frac{d}{dx}(0) \\\\
 & + \\int_{0}^{x} \\frac{∂}{∂x}  \\lbrack (x^{2} - t^{2})f^{′}(t) \\rbrack  dt \\\\
\\end{array}
$$

计算各项：
第一项：当$t = x$时，$(x^{2} - x^{2})f^{′}(x) = 0$，乘以$\\frac{d}{dx}(x) = 1$，结果为 0。第二项：当$t = 0$时，$(x^{2} - 0^{2})f^{′}(0) = x^{2}f^{′}(0)$，乘以$\\frac{d}{dx}(0) = 0$，结果为 0。第三项：$\\frac{∂}{∂x}  \\lbrack (x^{2} - t^{2})f^{′}(t) \\rbrack  = 2xf^{′}(t)$，所以$\\int_{0}^{x} 2xf^{′}(t) dt = 2x \\int_{0}^{x} f^{′}(t) dt = 2x \\lbrack f(x) - f(0) \\rbrack  = 2xf(x)$（因为$f(0) = 0$）。
因此，$F^{′}(x) = 2xf(x)$。对$f(x) = F(x) + x^{2}$求导：

$$
f^{′}(x) = F^{′}(x) + 2x = 2xf(x) + 2x
$$

整理得：

$$
f^{′}(x) - 2xf(x) = 2x
$$

这是一阶线性微分方程。积分因子为$μ(x) = e^{∫ −2x dx} = e^{−x^{2}}$。乘以积分因子：

$$
e^{−x^{2}}f^{′}(x) - 2xe^{−x^{2}}f(x) = 2xe^{−x^{2}}
$$

左边为$\\frac{d}{dx}  \\lbrack e^{−x^{2}}f(x) \\rbrack$，所以：

$$
\\frac{d}{dx}  \\lbrack e^{−x^{2}}f(x) \\rbrack  = 2xe^{−x^{2}}
$$

积分两边：

$$
e^{−x^{2}}f(x) = ∫ 2xe^{−x^{2}} dx
$$

令$u = −x^{2}$，则$du = −2x dx$，所以：

$$
∫ 2xe^{−x^{2}} dx = − ∫ e^{u} du = −e^{u} + C = −e^{−x^{2}} + C
$$

因此：

$$
e^{−x^{2}}f(x) = −e^{−x^{2}} + C
$$

解得：

$$
f(x) = −1 + Ce^{x^{2}}
$$

由$f(0) = 0$，代入得：

$$
0 = −1 + C ⋅ e^{0}  ⟹  C = 1
$$

所以：

$$
f(x) = e^{x^{2}} - 1
$$

验证：代入原方程，左右相等，故正确。
', 9, 'Mogullzr', '2026-01-29 14:14:25', 9, 'Mogullzr', '2026-01-29 14:14:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '2002');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '2002');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '2002');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2003, '2007年考研数学卷4第21题', '', '考研数学2007年卷4真题', '/problems/other/1931', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:26', 9, 'Mogullzr', '2026-01-29 14:14:26', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2004, '2007年考研数学卷4第22题', '', '考研数学2007年卷4真题', '/problems/other/1932', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:26', 9, 'Mogullzr', '2026-01-29 14:14:26', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2005, '2007年考研数学卷4第23题', '', '考研数学2007年卷4真题', '/problems/other/1933', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:14:26', 9, 'Mogullzr', '2026-01-29 14:14:26', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (2006, '2007年考研数学卷4第24题', '简单', '考研数学2007年卷4真题', '（本题满分 11 分）设随机变量$X$与$Y$独立同分布，且$X$的概率分布为
$$
\\begin{array}{c|cc|}
X & 1 & 2 \\\\
P & 2/3 & 1/3 \\\\
\\end{array}
$$
记$U = \\max\\{X, Y\\}$,$V = \\min\\{X, Y\\}$．(1) 求$(U, V)$的概率分布；(2) 求$U$与$V$的协方差$Cov(U, V)$．', '[]', '
(1)$(U, V)$的概率分布为：


$$
\\begin{array}{c|cc}
 & V = 1 & V = 2 \\\\
U = 1 & \\frac{4}{9} & 0 \\\\
U = 2 & \\frac{4}{9} & \\frac{1}{9} \\\\
\\end{array}
$$

(2)$Cov(U, V) = \\frac{4}{81}$。
', '
(1) 由于$X$和$Y$独立同分布，且$P(X = 1) = \\frac{2}{3}$，$P(X = 2) = \\frac{1}{3}$，则$(X, Y)$的联合概率分布为：
$P(X = 1, Y = 1) = \\frac{2}{3} × \\frac{2}{3} = \\frac{4}{9}$，此时$U = 1$，$V = 1$；$P(X = 1, Y = 2) = \\frac{2}{3} × \\frac{1}{3} = \\frac{2}{9}$，此时$U = 2$，$V = 1$；$P(X = 2, Y = 1) = \\frac{1}{3} × \\frac{2}{3} = \\frac{2}{9}$，此时$U = 2$，$V = 1$；$P(X = 2, Y = 2) = \\frac{1}{3} × \\frac{1}{3} = \\frac{1}{9}$，此时$U = 2$，$V = 2$。
因此，$(U, V)$的概率分布为：$P(U = 1, V = 1) = \\frac{4}{9}$；$P(U = 2, V = 1) = \\frac{2}{9} + \\frac{2}{9} = \\frac{4}{9}$；$P(U = 2, V = 2) = \\frac{1}{9}$。
这可以表示为表格形式。
(2) 对于协方差$Cov(U, V)$，计算如下：
首先，求$U$和$V$的边缘分布：
$P(U = 1) = \\frac{4}{9}$，$P(U = 2) = \\frac{4}{9} + \\frac{1}{9} = \\frac{5}{9}$，故$E \\lbrack U \\rbrack  = 1 × \\frac{4}{9} + 2 × \\frac{5}{9} = \\frac{14}{9}$；$P(V = 1) = \\frac{4}{9} + \\frac{4}{9} = \\frac{8}{9}$，$P(V = 2) = \\frac{1}{9}$，故$E \\lbrack V \\rbrack  = 1 × \\frac{8}{9} + 2 × \\frac{1}{9} = \\frac{10}{9}$。
其次，求$E \\lbrack UV \\rbrack$：$E \\lbrack UV \\rbrack  = 1 × \\frac{4}{9} + 2 × \\frac{4}{9} + 4 × \\frac{1}{9} = \\frac{4}{9} + \\frac{8}{9} + \\frac{4}{9} = \\frac{16}{9}$。
因此，
$Cov(U, V) = E \\lbrack UV \\rbrack  - E \\lbrack U \\rbrack E \\lbrack V \\rbrack  = \\frac{16}{9} - \\frac{14}{9} × \\frac{10}{9} = \\frac{144}{81} - \\frac{140}{81} = \\frac{4}{81}.$
', 9, 'Mogullzr', '2026-01-29 14:14:26', 9, 'Mogullzr', '2026-01-29 14:14:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '2006');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '2006');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '2006');
