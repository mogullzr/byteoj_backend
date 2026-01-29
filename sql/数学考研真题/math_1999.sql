INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1224, '1999年考研数学卷1第1题', '简单', '考研数学1999年卷1真题', '$\\lim_{x→0} (\\frac{1}{x^{2}} - \\frac{1}{x \\tan x}) =$______．', '[]', '$\\frac{1}{3}$
', '考虑极限$\\lim_{x→0} (\\frac{1}{x^{2}} - \\frac{1}{x \\tan x})$。首先，将表达式重写为：

$$
\\frac{1}{x^{2}} - \\frac{1}{x \\tan x} = \\frac{1}{x^{2}} - \\frac{\\cos x}{x \\sin x}
$$

合并分式，公共分母为$x^{2} \\sin x$：

$$
\\frac{\\sin x - x \\cos x}{x^{2} \\sin x}
$$

因此，原极限化为：

$$
\\lim_{x→0} \\frac{\\sin x - x \\cos x}{x^{2} \\sin x}
$$

使用泰勒展开：$\\sin x = x - \\frac{x^{3}}{6} + O(x^{5})$，$\\cos x = 1 - \\frac{x^{2}}{2} + O(x^{4})$。代入分子：

$$
\\sin x - x \\cos x = (x - \\frac{x^{3}}{6}) - x (1 - \\frac{x^{2}}{2}) = x - \\frac{x^{3}}{6} - x + \\frac{x^{3}}{2} = \\frac{1}{3}x^{3} + O(x^{5})
$$

分母：

$$
x^{2} \\sin x = x^{2} (x - \\frac{x^{3}}{6} + O(x^{5})) = x^{3} + O(x^{5})
$$

所以：

$$
\\frac{\\sin x - x \\cos x}{x^{2} \\sin x} = \\frac{\\frac{1}{3}x^{3} + O(x^{5})}{x^{3} + O(x^{5})} = \\frac{\\frac{1}{3} + O(x^{2})}{1 + O(x^{2})} → \\frac{1}{3} 当 x → 0
$$

因此，极限为$\\frac{1}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:11:04', 9, 'Mogullzr', '2026-01-29 14:11:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1224');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1224');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1224');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1225, '1999年考研数学卷1第2题', '简单', '考研数学1999年卷1真题', '$\\frac{d}{dx} \\int_{0}^{x} \\sin ((x - t)2) dt =$______．', '[]', '$\\sin(x^{2})$
', '考虑积分$\\int_{0}^{x} \\sin ((x - t)2) dt$。令$u = x - t$，则当$t = 0$时，$u = x$；当$t = x$时，$u = 0$。且$du = −dt$，即$dt = −du$。代入积分得：

$$
\\int_{0}^{x} \\sin ((x - t)2) dt = \\int_{x}^{0} \\sin(u^{2})(−du) = \\int_{0}^{x} \\sin(u^{2})du.
$$

因此，原积分化为$\\int_{0}^{x} \\sin(u^{2})du$。由微积分基本定理，对该积分求导得：

$$
\\frac{d}{dx} \\int_{0}^{x} \\sin(u^{2})du = \\sin(x^{2}).
$$

故原导数为$\\sin(x^{2})$。
', 9, 'Mogullzr', '2026-01-29 14:11:04', 9, 'Mogullzr', '2026-01-29 14:11:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1225');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1225');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1225');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1226, '1999年考研数学卷1第3题', '简单', '考研数学1999年卷1真题', '微分方程$y^{′′} - 4y = e^{2x}$的通解为$y =$______．', '[]', '
$y = C_{1}e^{2x} + C_{2}e^{−2x} + \\frac{1}{4}xe^{2x}$
', '
给定微分方程$y^{′′} - 4y = e^{2x}$，首先求解齐次方程$y^{′′} - 4y = 0$。特征方程为$r^{2} - 4 = 0$，解得$r = ±2$，因此齐次解为$y_{h} = C_{1}e^{2x} + C_{2}e^{−2x}$。
由于非齐次项$e^{2x}$是齐次解的一部分，设特解为$y_{p} = Axe^{2x}$。计算导数：$y_{p}^{′} = Ae^{2x}(1 + 2x)$，$y_{p}^{′′} = 4Ae^{2x}(1 + x)$。代入原方程得$4Ae^{2x}(1 + x) - 4Axe^{2x} = 4Ae^{2x} = e^{2x}$，解得$A = \\frac{1}{4}$，因此特解为$y_{p} = \\frac{1}{4}xe^{2x}$。
通解为齐次解与特解之和，即$y = y_{h} + y_{p} = C_{1}e^{2x} + C_{2}e^{−2x} + \\frac{1}{4}xe^{2x}$。
', 9, 'Mogullzr', '2026-01-29 14:11:04', 9, 'Mogullzr', '2026-01-29 14:11:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1226');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1226');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1226');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1227, '1999年考研数学卷1第4题', '简单', '考研数学1999年卷1真题', '设$n$阶矩阵$A$的元素全为$1$，则$A$的$n$个特征值是 ______．', '[]', '
$n$和$0$（其中$0$的重数为$n - 1$）
', '
矩阵$A$是一个$n × n$矩阵，所有元素均为 1。由于所有行相同，矩阵的秩为 1。对于秩为 1 的矩阵，有且仅有一个非零特征值，其余特征值均为 0。
考虑向量$v = (1, 1, … , 1)T$，计算$Av$：


$$
Av = \\left( \\begin{array}{cccc}
1 & 1 &  & 1 \\\\
 &  & ⋯ &  \\\\
1 & 1 &  & 1 \\\\
 &  & ⋯ &  \\\\
⋮ & ⋮ &  & ⋮ \\\\
 &  & ⋱ &  \\\\
1 & 1 &  & 1 \\\\
 &  & ⋯ &  \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
1 \\\\
1 \\\\
⋮ \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
n \\\\
n \\\\
⋮ \\\\
n \\\\
\\end{array} \\right) = nv
$$

因此，$v$是特征向量，对应特征值为$n$。
对于任何与$v$正交的向量$x$，有$v^{T}x = 0$，则$Ax = vv^{T}x = v ⋅ 0 = 0$，即$Ax = 0x$，因此特征值为 0。由于正交补的维数为$n - 1$，故有$n - 1$个特征值为 0。
综上，$A$的$n$个特征值为$n$和$0$（重数$n - 1$）。
', 9, 'Mogullzr', '2026-01-29 14:11:04', 9, 'Mogullzr', '2026-01-29 14:11:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1227');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1227');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1228, '1999年考研数学卷1第5题', '简单', '考研数学1999年卷1真题', '设两两相互独立的三事件$A$,$B$和$C$满足条件：
$$
ABC = ∅,  P(A) = P(B) = P(C) < \\frac{1}{2},  P(A ∪ B ∪ C) = \\frac{9}{16},
$$
则$P(A) =$______．', '[]', '$\\frac{1}{4}$
', '设$P(A) = P(B) = P(C) = p$，其中$p < \\frac{1}{2}$。由于事件$A, B, C$两两独立，且$ABC = ∅$，即$P(A ∩ B ∩ C) = 0$，则并集概率公式为：

$$
P(A ∪ B ∪ C) = P(A) + P(B) + P(C) - P(A ∩ B) - P(A ∩ C) - P(B ∩ C) + P(A ∩ B ∩ C).
$$

代入两两独立条件$P(A ∩ B) = P(A)P(B) = p^{2}$，同理$P(A ∩ C) = p^{2}$，$P(B ∩ C) = p^{2}$，以及$P(A ∩ B ∩ C) = 0$，得：

$$
P(A ∪ B ∪ C) = 3p - 3p^{2}.
$$

已知$P(A ∪ B ∪ C) = \\frac{9}{16}$，所以：

$$
3p - 3p^{2} = \\frac{9}{16}.
$$

两边除以 3：

$$
p - p^{2} = \\frac{3}{16}.
$$

整理为二次方程：

$$
p^{2} - p + \\frac{3}{16} = 0.
$$

乘以 16 消去分母：

$$
16p^{2} - 16p + 3 = 0.
$$

解二次方程，判别式$D = (−16)2 - 4 × 16 × 3 = 256 - 192 = 64$，则：

$$
p = \\frac{16 ± \\sqrt{64}}{2 × 16} = \\frac{16 ± 8}{32}.
$$

得$p = \\frac{24}{32} = \\frac{3}{4}$或$p = \\frac{8}{32} = \\frac{1}{4}$。由于$p < \\frac{1}{2}$，故$p = \\frac{1}{4}$。验证：当$p = \\frac{1}{4}$时，$P(A ∪ B ∪ C) = 3 × \\frac{1}{4} - 3 × (\\frac{1}{4})^{2} = \\frac{3}{4} - \\frac{3}{16} = \\frac{12}{16} - \\frac{3}{16} = \\frac{9}{16}$，满足条件。因此$P(A) = \\frac{1}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:11:04', 9, 'Mogullzr', '2026-01-29 14:11:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1228');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1228');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1229, '1999年考研数学卷1第6题', '简单', '考研数学1999年卷1真题', '设$f(x)$是连续函数，$F(x)$是$f(x)$的原函数，则', '[''当$f(x)$是奇函数时，$F(x)$必是偶函数．'', ''当$f(x)$是偶函数时，$F(x)$必是奇函数．'', ''当$f(x)$是周期函数时，$F(x)$必是周期函数．'', ''当$f(x)$是单调增函数时，$F(x)$必是单调增函数．'']', "['A']", '$f(x)$的原函数$F(x)$可以表示为$F(x) = \\int_{0}^{x} f(t)dt + C$，于是
$$
F(−x) = \\int_{0}^{−x} f(t)dt + C = \\int_{0}^{x} f(−u)d(−u) + C
$$
当$f(x)$为奇函数时，$f(−u) = −f(u)$，从而有
$$
F(−x) = \\int_{0}^{x} f(u)du + C = \\int_{0}^{x} f(t)dt + C = F(x)
$$
即$F(x)$为偶函数。故 (A) 为正确选项。(B)、(C)、(D) 可分别举反例如下：$f(x) = x^{2}$是偶函数，但其原函数$F(x) = \\frac{1}{3}x^{3} + 1$不是奇函数，可排除 (B)；$f(x) = \\cos^{2} x$是周期函数，但其原函数$F(x) = \\frac{1}{2}x + \\frac{1}{4} \\sin 2x$不是周期函数，可排除 (C)；$f(x) = x$在区间$(−∞, +∞)$内是单调增函数，但其原函数$F(x) = \\frac{1}{2}x^{2}$在区间$(−∞, +∞)$内非单调增函数，可排除 (D)。', 9, 'Mogullzr', '2026-01-29 14:11:04', 9, 'Mogullzr', '2026-01-29 14:11:04', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1229');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1229');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1229');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1230, '1999年考研数学卷1第7题', '简单', '考研数学1999年卷1真题', '设$f(x) = \\begin{cases} \\frac{1-\\cos x}{\\sqrt{x}} & x > 0 \\\\ x^{2}g(x) & x ≤ 0 \\end{cases}$其中$g(x)$是有界函数，则$f(x)$在$x = 0$处', '[''极限不存在．'', ''极限存在，但不连续．'', ''连续，但不可导．'', ''可导．'']', "['D']", '
首先，考虑$f(x)$在$x = 0$处的极限。当$x → 0^{+}$时，$f(x) = \\frac{1 - \\cos x}{\\sqrt{x}}$。利用等价无穷小$1 - \\cos x ∼ \\frac{x^{2}}{2}$，可得
$\\frac{1-\\cos x}{\\sqrt{x}} ∼ \\frac{x^{2}}{2\\sqrt{x}} = \\frac{x^{3/2}}{2} → 0.$当$x → 0^{-}$时，$f(x) = x^{2}g(x)$。由于$g(x)$有界，存在$M > 0$使得$∣g(x)∣ ≤ M$，于是
$∣x^{2}g(x)∣ ≤ x^{2}M → 0.$左右极限均为 0，且$f(0) = 0^{2} ⋅ g(0) = 0$，因此函数在$x = 0$处连续。其次，检查可导性。右导数为
$f_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{f(h)-f(0)}{h} = \\lim_{h→0^{+}} \\frac{1-\\cos h}{h^{3/2}} ∼ \\lim_{h→0^{+}} \\frac{h^{1/2}}{2} = 0.$左导数为
$f_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{f(h)-f(0)}{h} = \\lim_{h→0^{-}} hg(h).$由于$g(h)$有界，有$∣hg(h)∣ ≤ ∣h∣M → 0$，故左导数为 0。左右导数相等，因此函数在$x = 0$处可导。', 9, 'Mogullzr', '2026-01-29 14:11:05', 9, 'Mogullzr', '2026-01-29 14:11:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1230');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1230');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1230');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1231, '1999年考研数学卷1第8题', '简单', '考研数学1999年卷1真题', '设$f(x) = \\begin{cases} x & 0 ≤ x ≤ \\frac{1}{2} \\\\ 2 - 2x & \\frac{1}{2} < x < 1 \\end{cases}$，$S(x) = \\frac{a_{0}}{2} + \\sum_{n=1}^{∞} a_{n} \\cos nπx$,$−∞ < x < +∞$，其中$a_{n} = 2 \\int_{0}^{1} f(x) \\cos nπxdx$（$n = 0, 1, 2, ⋯$），
则$S (−\\frac{5}{2})$等于', '[''$\\\\frac{1}{2}$．'', ''$−\\\\frac{1}{2}$．'', ''$\\\\frac{3}{4}$．'', ''$−\\\\frac{3}{4}$．'']', "['C']", '应选 (C)。由题设知，应先将$f(x)$从 [0,1] 作偶延拓，使之成为区间 [-1,1] 上的偶函数，然后再作周期为 2 的周期延拓，再展开为傅里叶级数。因此
$$
S (−\\frac{5}{2}) = S (−2 - \\frac{1}{2}) = S (−\\frac{1}{2}) = S (\\frac{1}{2})
$$
而$x = \\frac{1}{2}$是$f(x)$的间断点，按狄利克雷定理有
$$
S (\\frac{1}{2}) = \\frac{f (\\frac{1}{2}) + f (\\frac{1}{2}+)}{2} = \\frac{\\frac{1}{2} + 1}{2} = \\frac{3}{4}
$$
', 9, 'Mogullzr', '2026-01-29 14:11:05', 9, 'Mogullzr', '2026-01-29 14:11:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1231');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1231');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '1231');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1232, '1999年考研数学卷1第9题', '简单', '考研数学1999年卷1真题', '设$A$是$m × n$矩阵，$B$是$n × m$矩阵，则', '[''当$m > n$时，必有行列式$∣AB∣ \\\\neq 0$．'', ''当$m > n$时，必有行列式$∣AB∣ = 0$．'', ''当$n > m$时，必有行列式$∣AB∣ \\\\neq 0$．'', ''当$n > m$时，必有行列式$∣AB∣ = 0$．'']', "['B']", '设A是m×n矩阵，B是n×m矩阵，则AB是m×m方阵。当m>n时，由于rank(A) ≤ n和rank(B) ≤ n，因此rank(AB) ≤ min(rank(A), rank(B)) ≤ n < m。这意味着AB的秩小于其阶数m，故AB是奇异矩阵，行列式|AB| = 0。因此选项B正确。当n>m时，rank(AB) ≤ m，但可能等于m，故|AB|可能不为零，也可能为零，因此选项C和D均错误。选项A与上述结论矛盾，故错误。', 9, 'Mogullzr', '2026-01-29 14:11:05', 9, 'Mogullzr', '2026-01-29 14:11:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1232');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1232');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '1232');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1233, '1999年考研数学卷1第10题', '简单', '考研数学1999年卷1真题', '设两个相互独立的随机变量$X$和$Y$分别服从正态分布$N(0, 1)$和$N(1, 1)$，则', '[''$P \\\\{X + Y ≤ 0\\\\} = \\\\frac{1}{2}$．'', ''$P \\\\{X + Y ≤ 1\\\\} = \\\\frac{1}{2}$．'', ''$P \\\\{X - Y ≤ 0\\\\} = \\\\frac{1}{2}$．'', ''$P \\\\{X - Y ≤ 1\\\\} = \\\\frac{1}{2}$．'']', "['B']", '根据正态分布的性质：服从正态分布的独立随机变量的线性组合仍服从正态分布。因$X$和$Y$相互独立，且$X ∼ N(0, 1)$，$Y ∼ N(1, 1)$，所以
$$
X + Y ∼ N(1, 2),  X - Y ∼ N(−1, 2).
$$
将它们标准化得到
$$
\\frac{X + Y - 1}{\\sqrt{2}} ∼ N(0, 1),  \\frac{X - Y + 1}{\\sqrt{2}} ∼ N(0, 1).
$$
则根据标准正态分布的对称性有
$$
P\\{X + Y ≤ 0\\} = P \\{\\frac{X + Y - 1}{\\sqrt{2}} ≤ −\\frac{1}{\\sqrt{2}}\\} < \\frac{1}{2},
$$

$$
P\\{X + Y ≤ 1\\} = P \\{\\frac{X + Y - 1}{\\sqrt{2}} ≤ 0\\} = \\frac{1}{2},
$$

$$
P\\{X - Y ≤ 0\\} = P \\{\\frac{X - Y + 1}{\\sqrt{2}} ≤ \\frac{1}{\\sqrt{2}}\\} > \\frac{1}{2},
$$

$$
P\\{X - Y ≤ 1\\} = P \\{\\frac{X - Y + 1}{\\sqrt{2}} ≤ \\frac{2}{\\sqrt{2}}\\} > \\frac{1}{2}.
$$
', 9, 'Mogullzr', '2026-01-29 14:11:05', 9, 'Mogullzr', '2026-01-29 14:11:05', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1233');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1233');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1234, '1999年考研数学卷1第11题', '简单', '考研数学1999年卷1真题', '设$y = y(x)$，$z = z(x)$是由方程$z = xf(x + y)$和$F(x, y, z) = 0$所确定的函数，
其中$f$和$F$分别具有一阶连续导数和一阶连续偏导数，求$\\frac{dz}{dx}$．', '[]', '

$$
\\frac{dz}{dx} = \\frac{f(x + y)F_{y} + xf^{′}(x + y)(F_{y} - F_{x})}{F_{y} + xf^{′}(x + y)F_{z}}
$$

其中$F_{x}, F_{y}, F_{z}$分别表示$F(x, y, z)$对$x, y, z$的偏导数。
', '给定方程$z = xf(x + y)$和$F(x, y, z) = 0$，其中$y = y(x)$和$z = z(x)$是由这两个方程确定的函数，$f$具有一阶连续导数，$F$具有一阶连续偏导数。
首先，对方程$z = xf(x + y)$两边关于$x$求导，注意$y$是$x$的函数：

$$
\\frac{dz}{dx} = f(x + y) + xf^{′}(x + y) (1 + \\frac{dy}{dx})
$$

整理得：

$$
\\frac{dz}{dx} - xf^{′}(x + y)\\frac{dy}{dx} = f(x + y) + xf^{′}(x + y) (1)
$$

其次，对方程$F(x, y, z) = 0$两边关于$x$求导，注意$y$和$z$是$x$的函数：

$$
\\frac{∂F}{∂x} + \\frac{∂F}{∂y}\\frac{dy}{dx} + \\frac{∂F}{∂z}\\frac{dz}{dx} = 0
$$

记$F_{x} = \\frac{∂F}{∂x}$,$F_{y} = \\frac{∂F}{∂y}$,$F_{z} = \\frac{∂F}{∂z}$，则：

$$
F_{x} + F_{y}\\frac{dy}{dx} + F_{z}\\frac{dz}{dx} = 0 (2)
$$

现在，方程组 (1) 和 (2) 关于$\\frac{dy}{dx}$和$\\frac{dz}{dx}$线性：

$$
\\begin{cases} \\frac{dz}{dx} - xf^{′}\\frac{dy}{dx} = f + xf^{′} \\\\ F_{z}\\frac{dz}{dx} + F_{y}\\frac{dy}{dx} = −F_{x} \\end{cases}
$$

其中$f = f(x + y)$,$f^{′} = f^{′}(x + y)$。
使用克莱姆法则求解$\\frac{dz}{dx}$。系数矩阵行列式为：

$$
Δ = \\begin{vmatrix}
1 & −xf^{′}\\\\
F_{z} & F_{y}
\\end{vmatrix} = F_{y} + xf^{′}F_{z}
$$

替换第一列为常数项后的行列式：

$$
Δ_{1} = \\begin{vmatrix}
f + xf^{′} & −xf^{′}\\\\
−F_{x} & F_{y}
\\end{vmatrix} = (f + xf^{′})F_{y} - xf^{′}F_{x} = fF_{y} + xf^{′}(F_{y} - F_{x})
$$

因此，

$$
\\frac{dz}{dx} = \\frac{Δ_{1}}{Δ} = \\frac{fF_{y} + xf^{′}(F_{y} - F_{x})}{F_{y} + xf^{′}F_{z}}
$$

即所求结果。
', 9, 'Mogullzr', '2026-01-29 14:11:05', 9, 'Mogullzr', '2026-01-29 14:11:05', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1234');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1234');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1234');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1235, '1999年考研数学卷1第12题', '简单', '考研数学1999年卷1真题', '求$I = \\int_{L} (e^{x} \\sin y - b(x + y)) dx + (e^{x} \\cos y - ax) dy$，
其中$a$,$b$为正常数，$L$为从点$A (2a, 0)$沿曲线$y = \\sqrt{2ax - x^{2}}$到点$O(0, 0)$的弧．', '[]', '

$$
I = \\frac{a^{2}}{2}  \\lbrack (4 + π)b - πa \\rbrack
$$

', '首先，注意到被积函数中的$e^{x} \\sin y$和$e^{x} \\cos y$部分与函数$U(x, y) = e^{x} \\sin y$的全微分有关，即$dU = e^{x} \\sin y dx + e^{x} \\cos y dy$。因此，积分可重写为：

$$
I = \\int_{L} dU - \\int_{L}  \\lbrack b(x + y) dx + ax dy \\rbrack  =  \\lbrack U(O) - U(A) \\rbrack  - \\int_{L}  \\lbrack b(x + y) dx + ax dy \\rbrack  .
$$

由于$U(O) = e^{0} \\sin 0 = 0$和$U(A) = e^{2a} \\sin 0 = 0$，有$U(O) - U(A) = 0$，所以：

$$
I = − \\int_{L}  \\lbrack b(x + y) dx + ax dy \\rbrack  = −b \\int_{L}(x + y) dx - a \\int_{L} x dy.
$$

接下来，计算积分$\\int_{L}(x + y) dx$和$\\int_{L} x dy$。曲线$L$是从$A(2a, 0)$到$O(0, 0)$沿上半圆$y = \\sqrt{2ax - x^{2}}$，即$(x - a)2 + y^{2} = a^{2}$（$y ≥ 0$）。考虑封闭曲线$C$由$L$和从$O$到$A$沿$x$轴的线段$L_{1}$组成，方向为逆时针。
对于$\\int_{L}(x + y) dx$，令$P = x + y$，$Q = 0$，则：

$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = 0 - 1 = −1.
$$

由格林定理：

$$
∮_{C}(x + y) dx = \\iint_{D}(−1) dA = −面积(D) = −\\frac{1}{2}πa^{2}.
$$

又：

$$
∮_{C}(x + y) dx = \\int_{L}(x + y) dx + \\int_{L_{1}}(x + y) dx.
$$

在$L_{1}$上，$y = 0$，从$x = 0$到$x = 2a$，有：

$$
\\int_{L_{1}}(x + y) dx = \\int_{0}^{2a} x dx =  \\lbrack \\frac{x^{2}}{2} \\rbrack _{0}^{2a} = 2a^{2}.
$$

所以：

$$
\\int_{L}(x + y) dx = ∮_{C}(x + y) dx - \\int_{L_{1}}(x + y) dx = −\\frac{πa^{2}}{2} - 2a^{2}.
$$

对于$\\int_{L} x dy$，令$P = 0$，$Q = x$，则：

$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = 1 - 0 = 1.
$$

由格林定理：

$$
∮_{C} x dy = \\iint_{D} 1 dA = 面积(D) = \\frac{1}{2}πa^{2}.
$$

又：

$$
∮_{C} x dy = \\int_{L} x dy + \\int_{L_{1}} x dy.
$$

在$L_{1}$上，$y = 0$，$dy = 0$，所以$\\int_{L_{1}} x dy = 0$，因此：

$$
\\int_{L} x dy = ∮_{C} x dy = \\frac{πa^{2}}{2}.
$$

代入$I$：

$$
\\begin{array}{cc}
I & = −b (−\\frac{πa^{2}}{2} - 2a^{2}) - a (\\frac{πa^{2}}{2}) \\\\
 & = b (\\frac{πa^{2}}{2} + 2a^{2}) - \\frac{πa^{3}}{2} \\\\
 & = \\frac{πa^{2}b}{2} + 2a^{2}b - \\frac{πa^{3}}{2} \\\\
\\end{array}
$$

整理得：

$$
I = \\frac{a^{2}}{2}  \\lbrack (4 + π)b - πa \\rbrack  .
$$

', 9, 'Mogullzr', '2026-01-29 14:11:06', 9, 'Mogullzr', '2026-01-29 14:11:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1235');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1235');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1235');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1236, '1999年考研数学卷1第13题', '简单', '考研数学1999年卷1真题', '设函数$y(x)$（$x ≥ 0$）二阶可导，且$y^{′}(x) > 0$，$y(0) = 1$．
过曲线$y = y(x)$上任意一点$P (x, y)$作该曲线的切线及$x$轴的垂线，
上述两直线与$x$轴所围成的三角形的面积记为$S_{1}$，区间$\\lbrack 0, x \\rbrack$上以$y = y(x)$为曲边的曲边梯形面积记为$S_{2}$，
并设$2S_{1} - S_{2}$恒为$1$，求此曲线$y = y(x)$的方程．', '[]', '


$$
y = e^{x}
$$

', '
设曲线方程为$y = y(x)$，满足$y^{′}(x) > 0$，$y(0) = 1$。过点$P(x, y)$作曲线的切线和$x$轴的垂线，两直线与$x$轴围成三角形，其面积记为$S_{1}$；区间$\\lbrack 0, x \\rbrack$上以曲线为曲边的曲边梯形面积记为$S_{2}$。已知$2S_{1} - S_{2} ≡ 1$，求曲线方程。
首先，计算$S_{1}$。点$P$坐标为$(x, y)$，曲线在$P$处的切线斜率为$y^{′}$，切线方程为：

$$
Y - y = y^{′}(X - x).
$$

切线与$x$轴交于点$A$，令$Y = 0$，得：

$$
0 - y = y^{′}(X - x) ⇒ X = x - \\frac{y}{y^{′}}.
$$

垂线与$x$轴交于点$B = (x, 0)$。三角形顶点为$A = (x - \\frac{y}{y^{′}}, 0)$，$B = (x, 0)$，$P = (x, y)$。三角形底边$AB$长度为$\\frac{y}{y^{′}}$，高为$y$，故面积为：

$$
S_{1} = \\frac{1}{2} ⋅ \\frac{y}{y^{′}} ⋅ y = \\frac{y^{2}}{2y^{′}}.
$$

曲边梯形面积$S_{2}$为：

$$
S_{2} = \\int_{0}^{x} y(t) dt.
$$

由条件$2S_{1} - S_{2} = 1$，代入得：

$$
2 ⋅ \\frac{y^{2}}{2y^{′}} - \\int_{0}^{x} y(t) dt = 1 ⇒ \\frac{y^{2}}{y^{′}} - \\int_{0}^{x} y(t) dt = 1.(1)
$$

对式 (1) 关于$x$求导（记$y = y(x)$，$y^{′} = y^{′}(x)$）：

$$
\\frac{d}{dx} (\\frac{y^{2}}{y^{′}}) - y = 0.
$$

计算导数：

$$
\\frac{d}{dx} (\\frac{y^{2}}{y^{′}}) = \\frac{2yy^{′} ⋅ y^{′} - y^{2}y^{′′}}{(y^{′})2} = \\frac{2y(y^{′})2 - y^{2}y^{′′}}{(y^{′})2} = 2y - \\frac{y^{2}y^{′′}}{(y^{′})2}.
$$

代入得：

$$
2y - \\frac{y^{2}y^{′′}}{(y^{′})2} - y = 0 ⇒ y - \\frac{y^{2}y^{′′}}{(y^{′})2} = 0.
$$

由于$y > 0$（由$y(0) = 1$和$y^{′} > 0$可知），两边乘以$\\frac{(y^{′})2}{y}$：

$$
(y^{′})2 - yy^{′′} = 0 ⇒ \\frac{y^{′′}}{y^{′}} = \\frac{y^{′}}{y}.
$$

积分得：

$$
\\ln ∣y^{′}∣ = \\ln ∣y∣ + C_{1} ⇒ y^{′} = Cy,  C = e^{C_{1}}.
$$

由$y^{′} = Cy$，解得：

$$
y = Ae^{Cx}.
$$

利用初始条件$y(0) = 1$，得$A = 1$，故：

$$
y = e^{Cx}.
$$

为确定$C$，利用条件 (1) 在$x = 0$处的值。当$x = 0$时，$S_{2} = 0$，计算$S_{1}$：
点$P(0, 1)$，切线斜率为$y^{′}(0) = C$，切线与$x$轴交于点$(−\\frac{1}{C}, 0)$，垂线为$x = 0$，三角形面积为：

$$
S_{1} = \\frac{1}{2} ⋅ \\frac{1}{C} ⋅ 1 = \\frac{1}{2C}.
$$

代入条件：

$$
2S_{1} - S_{2} = \\frac{1}{C} = 1 ⇒ C = 1.
$$

因此，曲线方程为：

$$
y = e^{x}.
$$

验证：$y = e^{x}$，则$y^{′} = e^{x}$，$S_{1} = \\frac{e^{2x}}{2e^{x}} = \\frac{e^{x}}{2}$，$2S_{1} = e^{x}$，$S_{2} = \\int_{0}^{x} e^{t} dt = e^{x} - 1$，故$2S_{1} - S_{2} = e^{x} - (e^{x} - 1) = 1$，满足条件。
故所求曲线方程为$y = e^{x}$。
', 9, 'Mogullzr', '2026-01-29 14:11:06', 9, 'Mogullzr', '2026-01-29 14:11:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1236');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1236');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1236');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1237, '1999年考研数学卷1第14题', '简单', '考研数学1999年卷1真题', '试证：当$x > 0$时，$(x^{2} - 1) \\ln x ≥ (x - 1)2$．', '[]', '
当$x = 1$时，原不等式显然成立；当$0 < x < 1$时，原不等式等价于$\\ln x ≤ \\frac{x-1}{x+1}$；
当$1 < x < +∞$时，原不等式等价于$\\ln x > \\frac{x-1}{x+1}$。令$f(x) = \\ln x - \\frac{x-1}{x+1}$，则

$$
f^{′}(x) = \\frac{1}{x} - \\frac{2}{(x + 1)2} = \\frac{x^{2} + 1}{x(x + 1)2} > 0 (x > 0).
$$

又因为$f(1) = 0$，利用函数单调性可知当$0 < x < 1$时，$f(x) < 0$即$\\ln x < \\frac{x-1}{x+1}$；
当$1 < x < +∞$时，$f(x) > 0$即$\\ln x > \\frac{x-1}{x+1}$。综上所述，当$x > 0$时，总有

$$
(x^{2} - 1) \\ln x ≥ (x - 1)2.
$$

', '
当$x = 1$时，原不等式显然成立；当$0 < x < 1$时，原不等式等价于$\\ln x ≤ \\frac{x-1}{x+1}$；
当$1 < x < +∞$时，原不等式等价于$\\ln x > \\frac{x-1}{x+1}$。令$f(x) = \\ln x - \\frac{x-1}{x+1}$，则

$$
f^{′}(x) = \\frac{1}{x} - \\frac{2}{(x + 1)2} = \\frac{x^{2} + 1}{x(x + 1)2} > 0 (x > 0).
$$

又因为$f(1) = 0$，利用函数单调性可知当$0 < x < 1$时，$f(x) < 0$即$\\ln x < \\frac{x-1}{x+1}$；
当$1 < x < +∞$时，$f(x) > 0$即$\\ln x > \\frac{x-1}{x+1}$。综上所述，当$x > 0$时，总有

$$
(x^{2} - 1) \\ln x ≥ (x - 1)2.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:06', 9, 'Mogullzr', '2026-01-29 14:11:06', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1237');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1237');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '1237');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1238, '1999年考研数学卷1第15题', '简单', '考研数学1999年卷1真题', '为清除井底的污泥，用缆绳将抓斗放入井底，抓起污泥后提出井口（见图），已知井深 30m，抓斗自重 400N，缆绳每米重 50N，抓斗抓起的污泥重 2000N，提升速度为$3m/s$，在提升过程中，污泥以 20N/s 的速度从抓斗缝隙中漏掉，现将抓起污泥的抓斗提升至井口，问克服重力需作多少焦耳的功？(说明：①$1N × 1m = 1J$；其中$m, N, s, J$分别表示米、牛顿、秒、焦耳；
② 抓斗的高度及位于井口上方的缆绳长度忽略不计。)
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/dfdf06415d8b41da8941fd9143283914.jpg)
', '[]', '91500
', '为了计算克服重力所做的功，考虑抓斗从井底（$x = 0$）提升到井口（$x = 30$）的过程中，井口拉力$F(x)$随高度$x$变化。功$W$为$F(x)$对$x$的积分，即$W = \\int_{0}^{30} F(x) dx$。
抓斗自重为$400 N$，污泥初始重量为$2000 N$，以$20 N/s$的速度漏掉。提升速度为$3 m/s$，因此时间$t = x/3$。污泥重量随高度变化为$2000 - 20 ⋅ (x/3) = 2000 - \\frac{20}{3}x N$。抓斗和污泥的总重量为：

$$
G(x) = 400 + (2000 - \\frac{20}{3}x) = 2400 - \\frac{20}{3}x N.
$$

缆绳每米重$50 N$，当抓斗在高度$x$时，井中缆绳长度为$30 - x$米，重量为$50(30 - x) N$。井口拉力$F(x)$需克服抓斗、污泥和井中缆绳的重力，因此：

$$
F(x) = G(x) + 50(30 - x) = (2400 - \\frac{20}{3}x) + 1500 - 50x = 3900 - \\frac{170}{3}x N.
$$

积分求功：

$$
W = \\int_{0}^{30} (3900 - \\frac{170}{3}x) dx =  \\lbrack 3900x - \\frac{170}{3} ⋅ \\frac{x^{2}}{2} \\rbrack _{0}^{30} =  \\lbrack 3900x - \\frac{170}{6}x^{2} \\rbrack _{0}^{30} .
$$

代入上下限：

$$
W = 3900 × 30 - \\frac{170}{6} × 900 = 117000 - 25500 = 91500 J.
$$

因此，克服重力需作$91500 J$的功。
', 9, 'Mogullzr', '2026-01-29 14:11:08', 9, 'Mogullzr', '2026-01-29 14:11:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1238');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1238');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1238');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1239, '1999年考研数学卷1第16题', '简单', '考研数学1999年卷1真题', '设$S$为椭球面$\\frac{x^{2}}{2} + \\frac{y^{2}}{2} + z^{2} = 1$的上半部分，
点$P(x, y, z) ∈ S$，$π$为$S$在点$P$处的切平面，$ρ(x, y, z)$为点$O(0, 0, 0)$到平面$π$的距离，
求$\\iint_{S} \\frac{z}{ρ(x,y,z)}dS$．', '[]', '$\\frac{3π}{2}$
', '给定椭球面$S : \\frac{x^{2}}{2} + \\frac{y^{2}}{2} + z^{2} = 1$的上半部分，点$P(x, y, z) ∈ S$，切平面$π$的方程为$xX + yY + 2zZ = 2$，其中$(X, Y, Z)$为切平面上点。原点$O(0, 0, 0)$到切平面的距离为：

$$
ρ(x, y, z) = \\frac{2}{\\sqrt{x^{2} + y^{2} + 4z^{2}}}.
$$

因此，被积函数为：

$$
\\frac{z}{ρ(x, y, z)} = \\frac{z}{2}\\sqrt{x^{2} + y^{2} + 4z^{2}}.
$$

曲面积分变为：

$$
\\iint_{S} \\frac{z}{ρ(x, y, z)} dS = \\iint_{S} \\frac{z}{2}\\sqrt{x^{2} + y^{2} + 4z^{2}} dS.
$$

参数化曲面$S$：令$x = \\sqrt{2} \\sin θ \\cos ϕ$,$y = \\sqrt{2} \\sin θ \\sin ϕ$,$z = \\cos θ$，其中$θ ∈  \\lbrack 0, π/2 \\rbrack$,$ϕ ∈  \\lbrack 0, 2π \\rbrack$。计算面积元素：

$$
dS = ​\\frac{∂r}{∂θ} × \\frac{∂r}{∂ϕ}​ dθdϕ = \\sqrt{2} \\sin θ\\sqrt{1 + \\cos^{2} θ} dθdϕ.
$$

代入被积函数：

$$
x^{2} + y^{2} = 2 \\sin^{2} θ,  x^{2} + y^{2} + 4z^{2} = 2 \\sin^{2} θ + 4 \\cos^{2} θ = 2(1 + \\cos^{2} θ),
$$



$$
\\sqrt{x^{2} + y^{2} + 4z^{2}} = \\sqrt{2}\\sqrt{1 + \\cos^{2} θ},
$$



$$
\\frac{z}{2}\\sqrt{x^{2} + y^{2} + 4z^{2}} = \\frac{\\cos θ}{2} ⋅ \\sqrt{2}\\sqrt{1 + \\cos^{2} θ} = \\frac{1}{\\sqrt{2}} \\cos θ\\sqrt{1 + \\cos^{2} θ}.
$$

积分变为：

$$
\\iint_{S} \\frac{z}{ρ} dS = \\int_{0}^{2π} \\int_{0}^{π/2} \\frac{1}{\\sqrt{2}} \\cos θ\\sqrt{1 + \\cos^{2} θ} ⋅ \\sqrt{2} \\sin θ\\sqrt{1 + \\cos^{2} θ} dθdϕ = \\int_{0}^{2π} \\int_{0}^{π/2} \\cos θ \\sin θ(1 + \\cos^{2} θ) dθdϕ.
$$

先对$ϕ$积分：

$$
\\int_{0}^{2π} dϕ = 2π,
$$

再对$θ$积分：

$$
2π \\int_{0}^{π/2} \\cos θ \\sin θ(1 + \\cos^{2} θ) dθ.
$$

令$u = \\cos θ$,$du = − \\sin θ dθ$，积分限变为$u = 1$到$u = 0$：

$$
\\int_{0}^{π/2} \\cos θ \\sin θ(1 + \\cos^{2} θ) dθ = \\int_{1}^{0} u(1 + u^{2})(−du) = \\int_{0}^{1} u(1 + u^{2}) du = \\int_{0}^{1}(u + u^{3}) du =  \\lbrack \\frac{u^{2}}{2} + \\frac{u^{4}}{4} \\rbrack _{0}^{1} = \\frac{1}{2} + \\frac{1}{4} = \\frac{3}{4}.
$$

因此，

$$
\\iint_{S} \\frac{z}{ρ} dS = 2π ⋅ \\frac{3}{4} = \\frac{3π}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:08', 9, 'Mogullzr', '2026-01-29 14:11:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1239');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1239');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1078', '1239');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1240, '1999年考研数学卷1第17题', '简单', '考研数学1999年卷1真题', '设$a_{n} = \\int_{0}^{\\frac{π}{4}} \\tan^{n} xdx$，(1) 求$\\sum_{n=1}^{∞} \\frac{1}{n} (a_{n} + a_{n+2})$的值；(2) 试证：对任意的常数$λ > 0$，级数$\\sum_{n=1}^{∞} \\frac{a_{n}}{n^{λ}}$收敛．', '[]', '
(1)$1$
(2) 收敛
', '
(Ⅰ) 因为

$$
\\frac{1}{n}(a_{n} + a_{n+2}) = \\frac{1}{n} \\int_{0}^{\\frac{π}{4}} \\tan^{n} x(1 + \\tan^{2} x)dx = \\frac{1}{n} \\int_{0}^{\\frac{π}{4}} \\tan^{n} x sec^{2} xdx
$$



$$
= \\frac{1}{n} \\int_{0}^{\\frac{π}{4}} \\tan^{n} xd(\\tan x) = \\frac{1}{n} \\int_{0}^{1} t^{n}dt = \\frac{1}{n(n + 1)}.
$$

所以部分和数列

$$
S_{n} = \\sum_{i=1}^{n} \\frac{1}{i}(a_{i} + a_{i+2}) = \\sum_{i=1}^{n} \\frac{1}{i(i + 1)} = \\sum_{i=1}^{n} (\\frac{1}{i} - \\frac{1}{i + 1}) = 1 - \\frac{1}{n + 1},
$$

因此

$$
\\sum_{n=1}^{∞} \\frac{1}{n}(a_{n} + a_{n+2}) = \\lim_{n→∞} S_{n} = 1.
$$

(Ⅱ) 令$t = \\tan x$，则有

$$
a_{n} = \\int_{0}^{\\frac{π}{4}} \\tan^{n} xdx = \\int_{0}^{1} \\frac{t^{n}}{1 + t^{2}} < \\int_{0}^{1} t^{n}dt = \\frac{1}{n + 1} ⇒ \\frac{a_{n}}{n^{λ}} < \\frac{1}{n^{λ}(n + 1)} < \\frac{1}{n^{λ+1}}.
$$

由于$λ + 1 > 0$，所以$\\sum_{n=1}^{∞} \\frac{1}{n^{λ+1}}$收敛，从而$\\sum_{n=1}^{∞} \\frac{a_{n}}{n^{λ}}$也收敛。
', 9, 'Mogullzr', '2026-01-29 14:11:08', 9, 'Mogullzr', '2026-01-29 14:11:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1240');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1240');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1240');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1241, '1999年考研数学卷1第18题', '简单', '考研数学1999年卷1真题', '设矩阵$A = \\left( \\begin{array}{ccc}
a & −1 & c \\\\
5 & b & 3 \\\\
1 - c & 0 & −a \\\\
\\end{array} \\right)$，其行列式$∣A∣ = −1$，又$A$的伴随矩阵$A^{∗}$有一个特征值$λ_{0}$，
属于$λ_{0}$的一个特征向量为$α = (−1, −1, 1)T$，求$a, b, c$和$λ_{0}$的值．', '[]', '$a = 2$，$b = −3$，$c = 2$，$λ_{0} = 1$
', '已知矩阵$A$的行列式$∣A∣ = −1$，伴随矩阵$A^{∗}$有一个特征值$λ_{0}$，对应的特征向量为$α = (−1, −1, 1)T$。由伴随矩阵的性质，$A^{∗} = ∣A∣A^{−1} = −A^{−1}$，因此$A^{∗}α = λ_{0}α$等价于$−A^{−1}α = λ_{0}α$，即$Aα = −\\frac{1}{λ_{0}}α$。令$μ = −\\frac{1}{λ_{0}}$，则$Aα = μα$。
计算$Aα$：

$$
Aα = \\left( \\begin{array}{ccc}
a & −1 & c \\\\
5 & b & 3 \\\\
1 - c & 0 & −a \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−a + 1 + c \\\\
−5 - b + 3 \\\\
−1 + c - a \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−a + c + 1 \\\\
−b - 2 \\\\
−a + c - 1 \\\\
\\end{array} \\right)
$$

而$μα = μ \\left( \\begin{array}{c}
−1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−μ \\\\
−μ \\\\
μ \\\\
\\end{array} \\right)$，因此得到方程组：

$$
\\begin{cases} −a + c + 1 = −μ \\\\ −b - 2 = −μ \\\\ −a + c - 1 = μ \\end{cases}
$$

由第一式和第三式相减得：

$$
(−a + c + 1) - (−a + c - 1) = −μ - μ  ⟹  2 = −2μ  ⟹  μ = −1
$$

代入第一式：

$$
−a + c + 1 = −(−1)  ⟹  −a + c + 1 = 1  ⟹  −a + c = 0  ⟹  a = c
$$

代入第二式：

$$
−b - 2 = −(−1)  ⟹  −b - 2 = 1  ⟹  −b = 3  ⟹  b = −3
$$

现在利用行列式$∣A∣ = −1$求$a$和$c$。代入$a = c$和$b = −3$，矩阵$A$为：

$$
A = \\left( \\begin{array}{ccc}
a & −1 & a \\\\
5 & −3 & 3 \\\\
1 - a & 0 & −a \\\\
\\end{array} \\right)
$$

计算行列式：

$$
∣A∣ = a ⋅ det \\left( \\begin{array}{cc}
−3 & 3 \\\\
0 & −a \\\\
\\end{array} \\right) - (−1) ⋅ det \\left( \\begin{array}{cc}
5 & 3 \\\\
1 - a & −a \\\\
\\end{array} \\right) + a ⋅ det \\left( \\begin{array}{cc}
5 & −3 \\\\
1 - a & 0 \\\\
\\end{array} \\right)
$$



$$
= a ⋅  \\lbrack (−3)(−a) - 3 ⋅ 0 \\rbrack  + 1 ⋅  \\lbrack 5 ⋅ (−a) - 3 ⋅ (1 - a) \\rbrack  + a ⋅  \\lbrack 5 ⋅ 0 - (−3)(1 - a) \\rbrack
$$



$$
= a ⋅ (3a) +  \\lbrack −5a - 3 + 3a \\rbrack  + a ⋅  \\lbrack 0 + 3(1 - a) \\rbrack
$$



$$
= 3a^{2} + (−2a - 3) + a ⋅ (3 - 3a)
$$



$$
= 3a^{2} - 2a - 3 + 3a - 3a^{2}
$$



$$
= a - 3
$$

令$∣A∣ = a - 3 = −1$，得$a = 2$，故$c = 2$。
求$λ_{0}$：由$μ = −1$和$μ = −\\frac{1}{λ_{0}}$，得$λ_{0} = −\\frac{1}{μ} = −\\frac{1}{−1} = 1$。或者由伴随矩阵特征值公式，$A^{∗}$的特征值为$\\frac{∣A∣}{μ} = \\frac{−1}{−1} = 1$，故$λ_{0} = 1$。
因此，$a = 2$，$b = −3$，$c = 2$，$λ_{0} = 1$。
', 9, 'Mogullzr', '2026-01-29 14:11:09', 9, 'Mogullzr', '2026-01-29 14:11:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1241');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1241');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1241');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1242, '1999年考研数学卷1第19题', '简单', '考研数学1999年卷1真题', '设$A$为$m$阶实对称矩阵且正定，$B$为$m × n$实矩阵，$B^{T}$为$B$的转置矩阵，
试证：$B^{T}AB$为正定矩阵的充分必要条件是$B$的秩$r(B) = n$．', '[]', '
$B^{T}AB$为正定矩阵的充分必要条件是$B$的秩$r(B) = n$。
', '
首先，证明充分性：若$r(B) = n$，则$B^{T}AB$正定。
由于$A$是实对称正定矩阵，且$B$列满秩，故对任意非零向量$x ∈ R^{n}$，有$Bx \\neq 0$。
于是


$$
x^{T}(B^{T}AB)x = (Bx)TA(Bx) > 0,
$$

因为$A$正定且$Bx \\neq 0$。
因此$B^{T}AB$正定。
其次，证明必要性：若$B^{T}AB$正定，则$r(B) = n$。
假设$r(B) < n$，则存在非零向量$x ∈ R^{n}$使得$Bx = 0$。
于是


$$
x^{T}(B^{T}AB)x = (Bx)TA(Bx) = 0,
$$

与$B^{T}AB$正定性矛盾。
故$r(B) = n$。
', 9, 'Mogullzr', '2026-01-29 14:11:09', 9, 'Mogullzr', '2026-01-29 14:11:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1242');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1242');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1242');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1243, '1999年考研数学卷1第20题', '简单', '考研数学1999年卷1真题', '设随机变量$X$与$Y$相互独立，下表列出了二维随机变量$(X, Y)$的联合分布律及
关于$X$和关于$Y$的边缘分布律中的部分数值，试将其余数值填入表中的空白处．
$$
\\begin{array}{c|c|c|c|c|}
X\\Y & y_{1} & y_{2} & y_{3} & P(X = x_{i}) = p_{i} \\\\
x_{1} &  & \\frac{1}{8} &  &  \\\\
x_{2} & \\frac{1}{8} &  &  &  \\\\
P(Y = y_{j}) = p_{j} & \\frac{1}{6} &  &  & 1 \\\\
\\end{array}
$$
', '[]', '
填充后的表格如下：

$$
\\begin{array}{c|c|c|c|c|}
X\\Y & y_{1} & y_{2} & y_{3} & P(X = x_{i}) = p_{i} \\\\
x_{1} & \\frac{1}{24} & \\frac{1}{8} & \\frac{1}{12} & \\frac{1}{4} \\\\
x_{2} & \\frac{1}{8} & \\frac{3}{8} & \\frac{1}{4} & \\frac{3}{4} \\\\
P(Y = y_{j}) = p_{j} & \\frac{1}{6} & \\frac{1}{2} & \\frac{1}{3} & 1 \\\\
\\end{array}
$$

', '
由于随机变量$X$与$Y$相互独立，联合概率等于边缘概率的乘积。设$P(X = x_{1}) = a$，$P(X = x_{2}) = b$，则$a + b = 1$。设$P(Y = y_{1}) = \\frac{1}{6}$，$P(Y = y_{2}) = c$，$P(Y = y_{3}) = d$，则$\\frac{1}{6} + c + d = 1$。
从已知条件：$P(X = x_{1}, Y = y_{2}) = \\frac{1}{8} = a ⋅ c$，$P(X = x_{2}, Y = y_{1}) = \\frac{1}{8} = b ⋅ \\frac{1}{6}$。由后者得$b = \\frac{3}{4}$，进而$a = \\frac{1}{4}$。代入前者得$c = \\frac{1}{2}$，于是$d = 1 - \\frac{1}{6} - \\frac{1}{2} = \\frac{1}{3}$。
计算所有联合概率：
$P(X = x_{1}, Y = y_{1}) = a ⋅ P(Y = y_{1}) = \\frac{1}{4} ⋅ \\frac{1}{6} = \\frac{1}{24}$$P(X = x_{1}, Y = y_{2}) = \\frac{1}{8}$$P(X = x_{1}, Y = y_{3}) = a ⋅ P(Y = y_{3}) = \\frac{1}{4} ⋅ \\frac{1}{3} = \\frac{1}{12}$$P(X = x_{2}, Y = y_{1}) = \\frac{1}{8}$$P(X = x_{2}, Y = y_{2}) = b ⋅ P(Y = y_{2}) = \\frac{3}{4} ⋅ \\frac{1}{2} = \\frac{3}{8}$$P(X = x_{2}, Y = y_{3}) = b ⋅ P(Y = y_{3}) = \\frac{3}{4} ⋅ \\frac{1}{3} = \\frac{1}{4}$
边缘概率：
$P(X = x_{1}) = \\frac{1}{24} + \\frac{1}{8} + \\frac{1}{12} = \\frac{1}{4}$$P(X = x_{2}) = \\frac{1}{8} + \\frac{3}{8} + \\frac{1}{4} = \\frac{3}{4}$$P(Y = y_{1}) = \\frac{1}{24} + \\frac{1}{8} = \\frac{1}{6}$$P(Y = y_{2}) = \\frac{1}{8} + \\frac{3}{8} = \\frac{1}{2}$$P(Y = y_{3}) = \\frac{1}{12} + \\frac{1}{4} = \\frac{1}{3}$
所有值均一致，填入表格即可。
', 9, 'Mogullzr', '2026-01-29 14:11:09', 9, 'Mogullzr', '2026-01-29 14:11:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1243');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1243');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1243');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1244, '1999年考研数学卷1第21题', '简单', '考研数学1999年卷1真题', '设总体$X$的概率密度为
$$
f(x) = \\begin{cases} \\frac{6x}{θ^{3}}(θ - x) & 0 < x < θ; \\\\ 0 & 其他. \\end{cases}
$$
$X_{1}, X_{2}, ⋯  , X_{n}$是取自总体$X$的简单随机样本．(1) 求$θ$的矩估计量$θ$；(2) 求$θ$的方差$D (θ)$．', '[]', '(1)$θ = 2\\bar{X}$，其中$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$(2)$D(θ) = \\frac{θ^{2}}{5n}$
', '首先，求总体$X$的期望$E(X)$。
计算：


$$
E(X) = \\int_{0}^{θ} x ⋅ \\frac{6x}{θ^{3}}(θ - x) dx = \\frac{6}{θ^{3}} \\int_{0}^{θ} x^{2}(θ - x) dx
$$

积分：


$$
\\int_{0}^{θ} x^{2}(θ - x) dx = \\int_{0}^{θ}(θx^{2} - x^{3}) dx =  \\lbrack θ ⋅ \\frac{x^{3}}{3} - \\frac{x^{4}}{4} \\rbrack _{0}^{θ} = \\frac{θ^{4}}{3} - \\frac{θ^{4}}{4} = \\frac{θ^{4}}{12}
$$

所以，


$$
E(X) = \\frac{6}{θ^{3}} ⋅ \\frac{θ^{4}}{12} = \\frac{θ}{2}
$$

根据矩估计法，令样本均值$\\bar{X}$等于总体期望$E(X)$，即：


$$
\\bar{X} = \\frac{θ}{2}
$$

解得矩估计量：


$$
θ = 2\\bar{X}
$$

其次，求$θ$的方差$D(θ)$。
由于$θ = 2\\bar{X}$，有：


$$
D(θ) = D(2\\bar{X}) = 4D(\\bar{X})
$$

其中$D(\\bar{X}) = \\frac{D(X)}{n}$，需先求总体方差$D(X)$。
计算$E(X^{2})$：


$$
E(X^{2}) = \\int_{0}^{θ} x^{2} ⋅ \\frac{6x}{θ^{3}}(θ - x) dx = \\frac{6}{θ^{3}} \\int_{0}^{θ} x^{3}(θ - x) dx
$$

积分：


$$
\\int_{0}^{θ} x^{3}(θ - x) dx = \\int_{0}^{θ}(θx^{3} - x^{4}) dx =  \\lbrack θ ⋅ \\frac{x^{4}}{4} - \\frac{x^{5}}{5} \\rbrack _{0}^{θ} = \\frac{θ^{5}}{4} - \\frac{θ^{5}}{5} = \\frac{θ^{5}}{20}
$$

所以，


$$
E(X^{2}) = \\frac{6}{θ^{3}} ⋅ \\frac{θ^{5}}{20} = \\frac{3θ^{2}}{10}
$$

方差：


$$
D(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2 = \\frac{3θ^{2}}{10} - (\\frac{θ}{2})^{2} = \\frac{3θ^{2}}{10} - \\frac{θ^{2}}{4} = \\frac{6θ^{2}}{20} - \\frac{5θ^{2}}{20} = \\frac{θ^{2}}{20}
$$

因此，


$$
D(\\bar{X}) = \\frac{D(X)}{n} = \\frac{θ^{2}}{20n}
$$

最终，


$$
D(θ) = 4 ⋅ \\frac{θ^{2}}{20n} = \\frac{θ^{2}}{5n}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:09', 9, 'Mogullzr', '2026-01-29 14:11:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1244');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1244');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1244');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1245, '1999年考研数学卷2第1题', '简单', '考研数学1999年卷2真题', '曲线$\\begin{cases} x = e^{t} \\sin 2t \\\\ y = e^{t} \\cos t \\end{cases}$在点$(0, 1)$处的法线方程为 ______．', '[]', '
$y = −2x + 1$
', '
曲线由参数方程$x = e^{t} \\sin 2t$和$y = e^{t} \\cos t$给出。点$(0, 1)$对应参数$t = 0$，因为当$t = 0$时，$x = e^{0} \\sin 0 = 0$，$y = e^{0} \\cos 0 = 1$。
求切线斜率$\\frac{dy}{dx}$：
先计算


$$
\\frac{dx}{dt} = e^{t}(\\sin 2t + 2 \\cos 2t),  \\frac{dy}{dt} = e^{t}(\\cos t - \\sin t)
$$

则


$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{\\cos t - \\sin t}{\\sin 2t + 2 \\cos 2t}
$$

在$t = 0$时，


$$
\\frac{dy}{dx} = \\frac{1 - 0}{0 + 2 ⋅ 1} = \\frac{1}{2}
$$

切线斜率为$\\frac{1}{2}$，因此法线斜率为$−2$。
法线过点$(0, 1)$，用法线点斜式方程：


$$
y - 1 = −2(x - 0)
$$

即


$$
y = −2x + 1
$$

故法线方程为$y = −2x + 1$。
', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1245');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1245');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1245');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1246, '1999年考研数学卷2第2题', '简单', '考研数学1999年卷2真题', '设函数$y = y(x)$由方程$\\ln (x^{2} + y) = x^{3}y + \\sin x$确定，
则$\\frac{dy}{dx}​_{x=0} =$______．', '[]', '1
', '由方程$\\ln (x^{2} + y) = x^{3}y + \\sin x$确定函数$y = y(x)$。首先，求$x = 0$时对应的$y$值。代入$x = 0$得：

$$
\\ln (0^{2} + y) = 0^{3} ⋅ y + \\sin 0  ⟹  \\ln y = 0  ⟹  y = 1
$$

对方程两边关于$x$求导，注意$y$是$x$的函数：

$$
\\frac{d}{dx} \\ln (x^{2} + y) = \\frac{d}{dx} (x^{3}y + \\sin x)
$$

左边求导：

$$
\\frac{1}{x^{2} + y} ⋅ (2x + \\frac{dy}{dx})
$$

右边求导：

$$
x^{3}\\frac{dy}{dx} + 3x^{2}y + \\cos x
$$

因此，求导后方程为：

$$
\\frac{1}{x^{2} + y} ⋅ (2x + \\frac{dy}{dx}) = x^{3}\\frac{dy}{dx} + 3x^{2}y + \\cos x
$$

代入$x = 0$和$y = 1$：
左边：

$$
\\frac{1}{0 + 1} ⋅ (0 + \\frac{dy}{dx}) = \\frac{dy}{dx}
$$

右边：

$$
0 ⋅ \\frac{dy}{dx} + 0 ⋅ 1 + \\cos 0 = 1
$$

所以，

$$
\\frac{dy}{dx} = 1
$$

因此，

$$
\\frac{dy}{dx}​_{x=0} = 1
$$

', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1246');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1246');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1246');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1247, '1999年考研数学卷2第3题', '简单', '考研数学1999年卷2真题', '$∫ \\frac{x+5}{x^{2}-6x+13}dx =$______．', '[]', '$\\frac{1}{2} \\ln(x^{2} - 6x + 13) + 4 arctan \\frac{x-3}{2} + C$
', '首先，对分母完成平方：


$$
x^{2} - 6x + 13 = (x - 3)2 + 4
$$

积分变为


$$
∫ \\frac{x + 5}{(x - 3)2 + 4} dx
$$

令$u = x - 3$，则$x = u + 3$，$dx = du$，分子$x + 5 = u + 8$，积分化为


$$
∫ \\frac{u + 8}{u^{2} + 4} du
$$

拆分为两个积分：


$$
∫ \\frac{u}{u^{2} + 4} du + ∫ \\frac{8}{u^{2} + 4} du
$$

第一个积分通过代换$v = u^{2} + 4$，$dv = 2u du$，得$\\frac{1}{2} \\ln ∣u^{2} + 4∣$；
第二个积分使用公式


$$
∫ \\frac{1}{u^{2} + a^{2}} du = \\frac{1}{a} arctan \\frac{u}{a}
$$

其中$a = 2$，得$4 arctan \\frac{u}{2}$。
合并后为


$$
\\frac{1}{2} \\ln(u^{2} + 4) + 4 arctan \\frac{u}{2} + C
$$

代回$u = x - 3$得最终结果。
', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1247');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1247');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1247');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1248, '1999年考研数学卷2第4题', '简单', '考研数学1999年卷2真题', '函数$y = \\frac{x^{2}}{\\sqrt{−x^{2}}}$在区间$\\lbrack \\frac{1}{2}, \\frac{\\sqrt{3}}{2} \\rbrack$上的平均值为 ______．', '[]', '$\\frac{π}{12}(1 + \\sqrt{3})$
', '函数应为$y = \\frac{x^{2}}{\\sqrt{1-x^{2}}}$，否则在给定区间内无实数定义。函数在区间$\\lbrack \\frac{1}{2}, \\frac{\\sqrt{3}}{2} \\rbrack$上的平均值公式为：

$$
平均值 = \\frac{1}{b - a} \\int_{a}^{b} f(x) dx
$$

其中$a = \\frac{1}{2}$，$b = \\frac{\\sqrt{3}}{2}$，$f(x) = \\frac{x^{2}}{\\sqrt{1-x^{2}}}$。计算积分：

$$
I = \\int_{1/2}^{\\sqrt{3}/2} \\frac{x^{2}}{\\sqrt{1 - x^{2}}} dx
$$

使用三角代换，令$x = \\sin θ$，则$dx = \\cos θ dθ$，且当$x = \\frac{1}{2}$时$θ = \\frac{π}{6}$，当$x = \\frac{\\sqrt{3}}{2}$时$θ = \\frac{π}{3}$。积分变为：

$$
I = \\int_{π/6}^{π/3} \\frac{\\sin^{2} θ}{\\cos θ} ⋅ \\cos θ dθ = \\int_{π/6}^{π/3} \\sin^{2} θ dθ
$$

利用恒等式$\\sin^{2} θ = \\frac{1-\\cos 2θ}{2}$，得：

$$
I = \\int_{π/6}^{π/3} \\frac{1 - \\cos 2θ}{2} dθ = \\frac{1}{2} \\int_{π/6}^{π/3}(1 - \\cos 2θ) dθ
$$

计算积分：

$$
\\int_{π/6}^{π/3}(1 - \\cos 2θ) dθ =  \\lbrack θ - \\frac{1}{2} \\sin 2θ \\rbrack _{π/6}^{π/3}
$$

代入上下限：

$$
\\begin{array}{cc}
 & (\\frac{π}{3} - \\frac{1}{2} \\sin \\frac{2π}{3}) - (\\frac{π}{6} - \\frac{1}{2} \\sin \\frac{π}{3}) \\\\
 & = (\\frac{π}{3} - \\frac{1}{2} ⋅ \\frac{\\sqrt{3}}{2}) - (\\frac{π}{6} - \\frac{1}{2} ⋅ \\frac{\\sqrt{3}}{2}) \\\\
 & = \\frac{π}{3} - \\frac{π}{6} \\\\
\\end{array}
$$

所以：

$$
I = \\frac{1}{2} ⋅ \\frac{π}{6} = \\frac{π}{12}
$$

区间长度为：

$$
b - a = \\frac{\\sqrt{3}}{2} - \\frac{1}{2} = \\frac{\\sqrt{3} - 1}{2}
$$

平均值为：

$$
平均值 = \\frac{\\frac{π}{12}}{\\frac{\\sqrt{3}-1}{2}} = \\frac{π}{12} ⋅ \\frac{2}{\\sqrt{3} - 1} = \\frac{π}{6} ⋅ \\frac{1}{\\sqrt{3} - 1}
$$

有理化分母：

$$
\\frac{1}{\\sqrt{3} - 1} = \\frac{\\sqrt{3} + 1}{(\\sqrt{3} - 1)(\\sqrt{3} + 1)} = \\frac{\\sqrt{3} + 1}{3 - 1} = \\frac{\\sqrt{3} + 1}{2}
$$

因此：

$$
平均值 = \\frac{π}{6} ⋅ \\frac{\\sqrt{3} + 1}{2} = \\frac{π(1 + \\sqrt{3})}{12}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1248');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1248');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1248');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1249, '1999年考研数学卷2第5题', '', '考研数学1999年卷2真题', '/problems/other/1226', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1250, '1999年考研数学卷2第6题', '', '考研数学1999年卷2真题', '/problems/other/1230', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1251, '1999年考研数学卷2第7题', '简单', '考研数学1999年卷2真题', '设$α(x) = \\int_{0}^{5x} \\frac{\\sin t}{t}dt$，$β(x) = \\int_{0}^{\\sin x} (1 + t)^{1/t} dt$，
则当$x → 0$时$α(x)$是$β(x)$的', '[''高阶无穷小．'', ''低阶无穷小．'', ''同阶但不等价的无穷小．'', ''等价无穷小．'']', "['C']", '当$x → 0$时，分析$α(x)$和$β(x)$的渐近行为。
对于$α(x) = \\int_{0}^{5x} \\frac{\\sin t}{t} dt$，由于$t → 0$时$\\frac{\\sin t}{t} → 1$，因此$α(x) ∼ \\int_{0}^{5x} 1 dt = 5x$。
对于$β(x) = \\int_{0}^{\\sin x}(1 + t)1/t dt$，由于$t → 0$时$(1 + t)1/t → e$，因此$β(x) ∼ \\int_{0}^{\\sin x} e dt = e \\sin x ∼ ex$。
于是，$\\frac{α(x)}{β(x)} ∼ \\frac{5x}{ex} = \\frac{5}{e}$，极限为$\\frac{5}{e} \\neq 1$，且既不为 0 也不为无穷大。
因此，$α(x)$与$β(x)$是同阶但不等价的无穷小。', 9, 'Mogullzr', '2026-01-29 14:11:12', 9, 'Mogullzr', '2026-01-29 14:11:12', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1251');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1251');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1251');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1252, '1999年考研数学卷2第8题', '', '考研数学1999年卷2真题', '/problems/other/1229', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:13', 9, 'Mogullzr', '2026-01-29 14:11:13', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1253, '1999年考研数学卷2第9题', '简单', '考研数学1999年卷2真题', '“对任意给定的$ε ∈ (0, 1)$，总存在正整数$N$，当$n ≥ N$时，
恒有$∣x_{n} - a∣ ≤ 2ε$”是数列$\\{x_{n}\\}$收敛于$a$的', '[''充分条件但非必要条件．'', ''必要条件但非充分条件．'', ''充分必要条件．'', ''既非充分条件又非必要条件．'']', "['C']", '数列$\\{x_{n}\\}$收敛于$a$的定义是：对任意$ε^{′} > 0$，存在正整数$N$，当$n ≥ N$时，恒有$∣x_{n} - a∣ < ε^{′}$。
给出的条件为：对任意$ε ∈ (0, 1)$，总存在正整数$N$，当$n ≥ N$时，恒有$∣x_{n} - a∣ ≤ 2ε$。充分性：若给出的条件成立，则对任意$ε^{′} > 0$，取$ε = \\min\\{ε^{′}/4, 1/2\\}$，则$ε ∈ (0, 1)$，由条件存在$N$，当$n ≥ N$时，$∣x_{n} - a∣ ≤ 2ε ≤ ε^{′}$（因当$ε^{′} ≥ 2$时，$2ε < 2 ≤ ε^{′}$；当$ε^{′} < 2$时，$2ε = ε^{′}/2 < ε^{′}$），故数列收敛于$a$，充分性成立。必要性：若数列收敛于$a$，则对任意$ε ∈ (0, 1)$，取$ε^{′} = ε$，由收敛定义存在$N$，当$n ≥ N$时，$∣x_{n} - a∣ < ε ≤ 2ε$，故$∣x_{n} - a∣ ≤ 2ε$，必要性成立。
因此，该条件是数列收敛于$a$的充分必要条件。', 9, 'Mogullzr', '2026-01-29 14:11:13', 9, 'Mogullzr', '2026-01-29 14:11:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1253');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1253');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1072', '1253');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1254, '1999年考研数学卷2第10题', '简单', '考研数学1999年卷2真题', '记行列式$\\begin{vmatrix}
x - 2 & x - 1 & x - 2 & x - 3\\\\
2x - 2 & 2x - 1 & 2x - 2 & 2x - 3\\\\
3x - 3 & 3x - 2 & 4x - 5 & 3x - 5\\\\
4x & 4x - 3 & 5x - 7 & 4x - 3
\\end{vmatrix}$为$f(x)$，则方程$f(x) = 0$的根的个数为', '[''$1$．'', ''$2$．'', ''$3$．'', ''$4$．'']', "['B']", '
考虑行列式
$$
f(x) = \\begin{vmatrix}
x - 2 & x - 1 & x - 2 & x - 3\\\\
2x - 2 & 2x - 1 & 2x - 2 & 2x - 3\\\\
3x - 3 & 3x - 2 & 4x - 5 & 3x - 5\\\\
4x & 4x - 3 & 5x - 7 & 4x - 3
\\end{vmatrix} .
$$
通过列操作简化：令$C2 ← C2 - C1$，则$C2$变为常数列$\\lbrack 1, 1, 1, −3 \\rbrack T$；再令$C4 ← C4 - C2$（原始$C2$），则$C4$变为常数列$\\lbrack −2, −2, −3, 0 \\rbrack T$。此时行列式变为$∣C1, C2^{′}, C3, C4^{′}∣$，其中$C2^{′}$和$C4^{′}$为常数列，$C1$和$C3$为$x$的线性函数。因此，行列式是$x$的二次多项式。计算二次项系数$det(A, C2^{′}, C, C4^{′})$，其中$A =  \\lbrack 1, 2, 3, 4 \\rbrack T$，$C =  \\lbrack 1, 2, 4, 5 \\rbrack T$，得值为$5$，不为零。故$f(x)$为二次多项式，方程$f(x) = 0$有两个根（可能为重根，但二次多项式总有两个根）。验证$x = 1$时$f(1) = 0$，且存在另一个根，因此根的个数为$2$。', 9, 'Mogullzr', '2026-01-29 14:11:13', 9, 'Mogullzr', '2026-01-29 14:11:13', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1254');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '1254');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1255, '1999年考研数学卷2第11题', '简单', '考研数学1999年卷2真题', '
$$
\\lim_{x→0} \\frac{\\sqrt{1 + \\tan x} - \\sqrt{1 + \\sin x}}{x \\ln (1 + x) - x^{2}} =
$$
', '[]', '$−\\frac{1}{2}$
', '考虑极限$\\lim_{x→0} \\frac{\\sqrt{1+\\tan x}-\\sqrt{1+\\sin x}}{x \\ln(1+x)-x^{2}}$。当$x → 0$时，分子和分母均趋于 0，因此使用泰勒展开求解。
首先，对分子进行有理化：

$$
\\begin{array}{cc}
\\sqrt{1 + \\tan x} - \\sqrt{1 + \\sin x} & = \\frac{(\\sqrt{1 + \\tan x} - \\sqrt{1 + \\sin x})(\\sqrt{1 + \\tan x} + \\sqrt{1 + \\sin x})}{\\sqrt{1 + \\tan x} + \\sqrt{1 + \\sin x}} \\\\
 & = \\frac{\\tan x - \\sin x}{\\sqrt{1 + \\tan x} + \\sqrt{1 + \\sin x}}. \\\\
\\end{array}
$$

当$x → 0$时，$\\sqrt{1 + \\tan x} → 1$，$\\sqrt{1 + \\sin x} → 1$，因此分母趋于 2。于是，

$$
\\sqrt{1 + \\tan x} - \\sqrt{1 + \\sin x} ∼ \\frac{\\tan x - \\sin x}{2}.
$$

利用泰勒展开：

$$
\\tan x = x + \\frac{x^{3}}{3} + O(x^{5}),  \\sin x = x - \\frac{x^{3}}{6} + O(x^{5}),
$$

所以

$$
\\tan x - \\sin x = (x + \\frac{x^{3}}{3}) - (x - \\frac{x^{3}}{6}) + O(x^{5}) = \\frac{x^{3}}{2} + O(x^{5}),
$$

因此

$$
\\sqrt{1 + \\tan x} - \\sqrt{1 + \\sin x} ∼ \\frac{1}{2} ⋅ \\frac{x^{3}}{2} = \\frac{x^{3}}{4}.
$$

对于分母$x \\ln(1 + x) - x^{2}$，利用泰勒展开：

$$
\\ln(1 + x) = x - \\frac{x^{2}}{2} + \\frac{x^{3}}{3} - \\frac{x^{4}}{4} + O(x^{5}),
$$

所以

$$
x \\ln(1 + x) = x (x - \\frac{x^{2}}{2} + \\frac{x^{3}}{3} - O(x^{4})) = x^{2} - \\frac{x^{3}}{2} + \\frac{x^{4}}{3} + O(x^{5}),
$$

于是

$$
x \\ln(1 + x) - x^{2} = (x^{2} - \\frac{x^{3}}{2} + \\frac{x^{4}}{3}) - x^{2} = −\\frac{x^{3}}{2} + \\frac{x^{4}}{3} + O(x^{5}) ∼ −\\frac{x^{3}}{2}.
$$

因此，

$$
\\frac{\\sqrt{1 + \\tan x} - \\sqrt{1 + \\sin x}}{x \\ln(1 + x) - x^{2}} ∼ \\frac{\\frac{x^{3}}{4}}{−\\frac{x^{3}}{2}} = \\frac{1}{4} ⋅ (−\\frac{2}{1}) = −\\frac{1}{2}.
$$

故极限为$−\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:11:13', 9, 'Mogullzr', '2026-01-29 14:11:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1255');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1255');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1255');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1256, '1999年考研数学卷2第12题', '简单', '考研数学1999年卷2真题', '计算$\\int_{1}^{+∞} \\frac{arctan x}{x^{2}}dx$．', '[]', '$\\frac{π}{4} + \\frac{1}{2} \\ln 2$
', '使用分部积分法，设$u = arctan x$，$dv = \\frac{1}{x^{2}} dx$，则$du = \\frac{1}{1+x^{2}} dx$，$v = −\\frac{1}{x}$。
于是，


$$
∫ \\frac{arctan x}{x^{2}} dx = −\\frac{arctan x}{x} + ∫ \\frac{1}{x(1 + x^{2})} dx
$$

对第二项进行部分分式分解：


$$
\\frac{1}{x(1 + x^{2})} = \\frac{1}{x} - \\frac{x}{1 + x^{2}}
$$

所以，


$$
\\begin{array}{cc}
∫ \\frac{1}{x(1 + x^{2})} dx & = ∫ \\frac{1}{x} dx - ∫ \\frac{x}{1 + x^{2}} dx \\\\
 & = \\ln ∣x∣ - \\frac{1}{2} \\ln(1 + x^{2}) + C \\\\
 & = \\ln \\frac{∣x∣}{\\sqrt{1 + x^{2}}} + C \\\\
\\end{array}
$$

因此，


$$
∫ \\frac{arctan x}{x^{2}} dx = −\\frac{arctan x}{x} + \\ln \\frac{x}{\\sqrt{1 + x^{2}}} + C
$$

计算定积分：


$$
\\int_{1}^{∞} \\frac{arctan x}{x^{2}} dx = \\lim_{b→∞}  \\lbrack −\\frac{arctan x}{x} + \\ln \\frac{x}{\\sqrt{1 + x^{2}}} \\rbrack _{1}^{b}
$$

当$x → ∞$，$\\frac{arctan x}{x} → 0$，$\\ln \\frac{x}{\\sqrt{1+x^{2}}} = \\ln \\frac{1}{\\sqrt{\\frac{1}{x^{2}}+1}} → \\ln 1 = 0$，所以上限值为 0。
下限值为：


$$
−\\frac{arctan 1}{1} + \\ln \\frac{1}{\\sqrt{2}} = −\\frac{π}{4} - \\frac{1}{2} \\ln 2
$$

因此，积分值为：


$$
0 - (−\\frac{π}{4} - \\frac{1}{2} \\ln 2) = \\frac{π}{4} + \\frac{1}{2} \\ln 2
$$

', 9, 'Mogullzr', '2026-01-29 14:11:13', 9, 'Mogullzr', '2026-01-29 14:11:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1256');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1256');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1256');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1257, '1999年考研数学卷2第13题', '简单', '考研数学1999年卷2真题', '求初值问题$\\begin{cases} (y + \\sqrt{x^{2} + y^{2}}) dx - xdy = 0 (x > 0) \\\\ y​_{x=1} = 0 \\end{cases}$的解．', '[]', '$y = \\frac{x^{2}-1}{2}$
', '给定初值问题：

$$
\\begin{cases} (y + \\sqrt{x^{2} + y^{2}}) dx - xdy = 0 (x > 0) \\\\ y∣_{x=1} = 0 \\end{cases}
$$

令$u = \\frac{y}{x}$，则$y = ux$，$dy = udx + xdu$。代入原方程：

$$
(ux + \\sqrt{x^{2} + u^{2}x^{2}}) dx - x(udx + xdu) = 0
$$

简化得：

$$
uxdx + x\\sqrt{1 + u^{2}}dx - uxdx - x^{2}du = 0
$$

即：

$$
x\\sqrt{1 + u^{2}}dx - x^{2}du = 0
$$

由于$x > 0$，除以$x$：

$$
\\sqrt{1 + u^{2}}dx - xdu = 0
$$

分离变量：

$$
\\frac{dx}{x} = \\frac{du}{\\sqrt{1 + u^{2}}}
$$

积分两边：

$$
∫ \\frac{dx}{x} = ∫ \\frac{du}{\\sqrt{1 + u^{2}}}
$$

左边为$\\ln x$，右边为$\\ln ∣u + \\sqrt{1 + u^{2}}∣$，因此：

$$
\\ln x = \\ln ∣u + \\sqrt{1 + u^{2}}∣ + C
$$

代入初始条件$x = 1, y = 0$（即$u = 0$）：

$$
\\ln 1 = \\ln ∣0 + \\sqrt{1 + 0}∣ + C  ⟹  0 = \\ln 1 + C  ⟹  C = 0
$$

所以：

$$
\\ln x = \\ln ∣u + \\sqrt{1 + u^{2}}∣
$$

由于$u + \\sqrt{1 + u^{2}} > 0$，去掉绝对值：

$$
x = u + \\sqrt{1 + u^{2}}
$$

解出$u$：考虑等式$\\sqrt{1 + u^{2}} - u = \\frac{1}{x}$（因为两者乘积为1）。将两式相加：

$$
2\\sqrt{1 + u^{2}} = x + \\frac{1}{x}  ⟹  \\sqrt{1 + u^{2}} = \\frac{x^{2} + 1}{2x}
$$

相减：

$$
2u = x - \\frac{1}{x}  ⟹  u = \\frac{x^{2} - 1}{2x}
$$

代回$u = \\frac{y}{x}$：

$$
\\frac{y}{x} = \\frac{x^{2} - 1}{2x}  ⟹  y = \\frac{x^{2} - 1}{2}
$$

验证初始条件：当$x = 1$时，$y = \\frac{1-1}{2} = 0$，满足。代入原方程也成立，因此解为$y = \\frac{x^{2}-1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:11:13', 9, 'Mogullzr', '2026-01-29 14:11:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1257');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1257');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '1257');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1258, '1999年考研数学卷2第14题', '', '考研数学1999年卷2真题', '/problems/other/1238', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:14', 9, 'Mogullzr', '2026-01-29 14:11:14', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1259, '1999年考研数学卷2第15题', '简单', '考研数学1999年卷2真题', '已知函数$y = \\frac{x^{3}}{(x-1)2}$，求(1) 函数的增减区间及极值；(2) 函数图形的凹凸区间及拐点；(3) 函数图形的渐近线．', '[]', '
(1) 函数的递增区间为$(−∞, 1)$和$(3, +∞)$，递减区间为$(1, 3)$。极小值点为$x = 3$，极小值为$y = \\frac{27}{4}$，无极大值。
(2) 函数的凹向下区间为$(−∞, 0)$，凹向上区间为$(0, 1)$和$(1, +∞)$。拐点为$(0, 0)$。
(3) 函数图形的垂直渐近线为$x = 1$，斜渐近线为$y = x + 2$，无水平渐近线。
', '
函数的定义域为$(−∞, 1) ∪ (1, +∞)$，对函数求导，得

$$
y^{′} = \\frac{x^{2}(x - 3)}{(x - 1)3},  y^{′′} = \\frac{6x}{(x - 1)4}.
$$

令$y^{′} = 0$得驻点$x = 0, x = 3$；令$y^{′′} = 0$得$x = 0$。列表讨论如下：
$x$$(−∞, 0)$$0$$(0, 1)$$(1, 3)$$3$$(3, +∞)$$y^{′′}$$−$$0$$+$$+$$+$$+$$y^{′}$$+$$0$$+$$−$$0$$+$$y$凸，增拐点凹，增凹，减极小值凹，增
由此可知，
(I) 函数的单调增区间为$(−∞, 1) ∪ (3, +∞)$，单调减区间为$(1, 3)$，极小值为

$$
y​_{x=3} = \\frac{27}{4}.
$$

(II) 函数图形在区间$(−∞, 0)$内是向上凸的，在区间$(0, 1), (1, +∞)$内是向上凹的，拐点为$(0, 0)$点。
(III) 由$\\lim_{x→1} \\frac{x^{3}}{(x-1)2} = +∞$，可知$x = 1$是函数图形的铅直渐近线。又因为

$$
\\lim_{x→∞} \\frac{y}{x} = \\lim_{x→∞} \\frac{x^{3}}{x(x - 1)2} = 1,
$$


$$
\\begin{array}{cc}
\\lim_{x→∞}(y - x) & = \\lim_{x→∞} (\\frac{x^{3}}{(x - 1)2} - x) \\\\
 & = \\lim_{x→∞}  \\lbrack \\frac{x^{3} - x(x - 1)2}{(x - 1)2} \\rbrack  \\\\
 & = \\lim_{x→∞}  \\lbrack \\frac{2x^{2} - x}{(x - 1)2} \\rbrack  \\\\
\\end{array}
$$

故$y = x + 2$是函数的斜渐近线。
', 9, 'Mogullzr', '2026-01-29 14:11:14', 9, 'Mogullzr', '2026-01-29 14:11:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1259');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1259');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1259');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1260, '1999年考研数学卷2第16题', '简单', '考研数学1999年卷2真题', '设函数$f(x)$在闭区间$\\lbrack −1, 1 \\rbrack$上具有三阶连续导数，
且$f(−1) = 0$，$f(1) = 1$，$f^{′}(0) = 0$，证明：
在开区间$(−1, 1)$内至少存在一点$ξ$，使$f^{′′′} (ξ) = 3$．', '[]', '
方法1：由麦克劳林公式得

$$
f(x) = f(0) + f^{′}(0)x + \\frac{1}{2!}f^{′′}(0)x^{2} + \\frac{1}{3!}f^{′′′}(η)x^{3},
$$

其中$η$介于$0$与$x$之间，$x ∈  \\lbrack −1, 1 \\rbrack$。分别令$x = −1$和$x = 1$，结合已知条件得

$$
f(−1) = f(0) + \\frac{1}{2}f^{′′}(0) - \\frac{1}{6}f^{′′′}(η_{1}) = 0,  −1 < η_{1} < 0;
$$


$$
f(1) = f(0) + \\frac{1}{2}f^{′′}(0) + \\frac{1}{6}f^{′′′}(η_{2}) = 1,  0 < η_{2} < 1.
$$

两式相减，得$f^{′′′}(η_{2}) + f^{′′′}(η_{1}) = 6$。由$f^{′′′}(x)$的连续性，知$f^{′′′}(x)$在区间$\\lbrack η_{1}, η_{2} \\rbrack$上有最大值和最小值，设它们分别为$M$和$m$，则有

$$
m ≤ \\frac{1}{2} \\lbrack f^{′′′}(η_{2}) + f^{′′′}(η_{1}) \\rbrack  ≤ M.
$$

再由连续函数的介值定理知，至少存在一点$ξ ∈  \\lbrack η_{1}, η_{2} \\rbrack  ⊂ (−1, 1)$，使

$$
f^{′′′}(ξ) = \\frac{1}{2} \\lbrack f^{′′′}(η_{2}) + f^{′′′}(η_{1}) \\rbrack  = 3.
$$

方法2：构造函数$φ(x)$，使得$x ∈  \\lbrack −1, 1 \\rbrack$时$φ^{′}(x)$有三个零点，再用罗尔定理证明$ξ$的存在性。设具有三阶连续导数的$φ(x) = f(x) + ax^{3} + bx^{2} + cx + d$，令

$$
\\begin{cases} φ(−1) = −a + b - c + d = 0 \\\\ φ(0) = f(0) + d = 0 \\\\ φ(1) = 1 + a + b + c + d = 0 \\\\ φ^{′}(0) = c = 0 \\end{cases} ⇒ \\begin{cases} a = −\\frac{1}{2} \\\\ b = f(0) - \\frac{1}{2} \\\\ c = 0 \\\\ d = −f(0). \\end{cases}
$$

代入$φ(x)$得

$$
φ(x) = f(x) - \\frac{1}{2}x^{3} + (f(0) - \\frac{1}{2}) x^{2} - f(0).
$$

由罗尔定理可知，存在$η_{1} ∈ (−1, 0), η_{2} ∈ (0, 1)$，使$φ^{′}(η_{1}) = 0, φ^{′}(η_{2}) = 0$。又因为$φ^{′}(0) = 0$，再由罗尔定理可知，存在$ξ_{1} ∈ (η_{1}, 0), ξ_{2} ∈ (0, η_{2})$，使得$φ^{′′}(ξ_{1}) = 0, φ^{′′}(ξ_{2}) = 0$。再由罗尔定理可知，存在$ξ ∈ (ξ_{1}, ξ_{2}) ⊂ (η_{1}, η_{2}) ⊂ (−1, 1)$，使得$φ^{′′′}(ξ) = f^{′′′}(ξ) - 3 = 0$，即$f^{′′′}(ξ) = 3.$
', '
方法1：由麦克劳林公式得

$$
f(x) = f(0) + f^{′}(0)x + \\frac{1}{2!}f^{′′}(0)x^{2} + \\frac{1}{3!}f^{′′′}(η)x^{3},
$$

其中$η$介于$0$与$x$之间，$x ∈  \\lbrack −1, 1 \\rbrack$。分别令$x = −1$和$x = 1$，结合已知条件得

$$
f(−1) = f(0) + \\frac{1}{2}f^{′′}(0) - \\frac{1}{6}f^{′′′}(η_{1}) = 0,  −1 < η_{1} < 0;
$$


$$
f(1) = f(0) + \\frac{1}{2}f^{′′}(0) + \\frac{1}{6}f^{′′′}(η_{2}) = 1,  0 < η_{2} < 1.
$$

两式相减，得$f^{′′′}(η_{2}) + f^{′′′}(η_{1}) = 6$。由$f^{′′′}(x)$的连续性，知$f^{′′′}(x)$在区间$\\lbrack η_{1}, η_{2} \\rbrack$上有最大值和最小值，设它们分别为$M$和$m$，则有

$$
m ≤ \\frac{1}{2} \\lbrack f^{′′′}(η_{2}) + f^{′′′}(η_{1}) \\rbrack  ≤ M.
$$

再由连续函数的介值定理知，至少存在一点$ξ ∈  \\lbrack η_{1}, η_{2} \\rbrack  ⊂ (−1, 1)$，使

$$
f^{′′′}(ξ) = \\frac{1}{2} \\lbrack f^{′′′}(η_{2}) + f^{′′′}(η_{1}) \\rbrack  = 3.
$$

方法2：构造函数$φ(x)$，使得$x ∈  \\lbrack −1, 1 \\rbrack$时$φ^{′}(x)$有三个零点，再用罗尔定理证明$ξ$的存在性。设具有三阶连续导数的$φ(x) = f(x) + ax^{3} + bx^{2} + cx + d$，令

$$
\\begin{cases} φ(−1) = −a + b - c + d = 0 \\\\ φ(0) = f(0) + d = 0 \\\\ φ(1) = 1 + a + b + c + d = 0 \\\\ φ^{′}(0) = c = 0 \\end{cases} ⇒ \\begin{cases} a = −\\frac{1}{2} \\\\ b = f(0) - \\frac{1}{2} \\\\ c = 0 \\\\ d = −f(0). \\end{cases}
$$

代入$φ(x)$得

$$
φ(x) = f(x) - \\frac{1}{2}x^{3} + (f(0) - \\frac{1}{2}) x^{2} - f(0).
$$

由罗尔定理可知，存在$η_{1} ∈ (−1, 0), η_{2} ∈ (0, 1)$，使$φ^{′}(η_{1}) = 0, φ^{′}(η_{2}) = 0$。又因为$φ^{′}(0) = 0$，再由罗尔定理可知，存在$ξ_{1} ∈ (η_{1}, 0), ξ_{2} ∈ (0, η_{2})$，使得$φ^{′′}(ξ_{1}) = 0, φ^{′′}(ξ_{2}) = 0$。再由罗尔定理可知，存在$ξ ∈ (ξ_{1}, ξ_{2}) ⊂ (η_{1}, η_{2}) ⊂ (−1, 1)$，使得$φ^{′′′}(ξ) = f^{′′′}(ξ) - 3 = 0$，即$f^{′′′}(ξ) = 3.$
', 9, 'Mogullzr', '2026-01-29 14:11:14', 9, 'Mogullzr', '2026-01-29 14:11:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1260');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1260');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1260');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1261, '1999年考研数学卷2第17题', '', '考研数学1999年卷2真题', '/problems/other/1236', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:14', 9, 'Mogullzr', '2026-01-29 14:11:14', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1262, '1999年考研数学卷2第18题', '简单', '考研数学1999年卷2真题', '设$f(x)$是区间$\\lbrack 0, +∞)$上单调减少且非负的连续函数，
$$
a_{n} = \\sum_{i=1}^{n} f(k) - \\int_{1}^{n} f(x)dx  (n = 1, 2, ⋯ ) ,
$$
证明数列$\\{a_{n}\\}$的极限存在．', '[]', '
利用单调有界必有极限的准则来证明。因为


$$
a_{n} = \\sum_{i=1}^{n-1} f(k) + f(n) - \\sum_{k=1}^{n-1} \\int_{k}^{k+1} f(x) dx = \\sum_{k=1}^{n-1} \\int_{k}^{k+1} \\lbrack f(k) - f(x) \\rbrack  dx + f(n),
$$

而且$f(x)$单调减少且非负，$k ≤ x ≤ k + 1$，所以$a_{n} ≥ 0$。又因为


$$
a_{n+1} - a_{n} =  \\lbrack \\sum_{i=1}^{n+1} f(k) - \\int_{1}^{n+1} f(x) dx \\rbrack  -  \\lbrack \\sum_{i=1}^{n} f(k) - \\int_{1}^{n} f(x) dx \\rbrack
$$



$$
= f(n + 1) - \\int_{n}^{n+1} f(x) dx = \\int_{n}^{n+1} \\lbrack f(n + 1) - f(x) \\rbrack  dx ≤ 0,
$$

所以$\\{a_{n}\\}$单调减少。因为单调有界必有极限，所以$\\lim_{n→∞} a_{n}$存在。
', '
利用单调有界必有极限的准则来证明。因为


$$
a_{n} = \\sum_{i=1}^{n-1} f(k) + f(n) - \\sum_{k=1}^{n-1} \\int_{k}^{k+1} f(x) dx = \\sum_{k=1}^{n-1} \\int_{k}^{k+1} \\lbrack f(k) - f(x) \\rbrack  dx + f(n),
$$

而且$f(x)$单调减少且非负，$k ≤ x ≤ k + 1$，所以$a_{n} ≥ 0$。又因为


$$
a_{n+1} - a_{n} =  \\lbrack \\sum_{i=1}^{n+1} f(k) - \\int_{1}^{n+1} f(x) dx \\rbrack  -  \\lbrack \\sum_{i=1}^{n} f(k) - \\int_{1}^{n} f(x) dx \\rbrack
$$



$$
= f(n + 1) - \\int_{n}^{n+1} f(x) dx = \\int_{n}^{n+1} \\lbrack f(n + 1) - f(x) \\rbrack  dx ≤ 0,
$$

所以$\\{a_{n}\\}$单调减少。因为单调有界必有极限，所以$\\lim_{n→∞} a_{n}$存在。
', 9, 'Mogullzr', '2026-01-29 14:11:14', 9, 'Mogullzr', '2026-01-29 14:11:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1262');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1262');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1262');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1263, '1999年考研数学卷2第19题', '简单', '考研数学1999年卷2真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
−1 & 1 & 1 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right)$，矩阵$X$满足$A^{∗}X = A^{−1} + 2X$，其中$A^{∗}$是$A$的伴随矩阵，求矩阵$X$．', '[]', '

$$
X = \\left( \\begin{array}{ccc}
\\frac{1}{4} & \\frac{1}{4} & 0 \\\\
0 & \\frac{1}{4} & \\frac{1}{4} \\\\
\\frac{1}{4} & 0 & \\frac{1}{4} \\\\
\\end{array} \\right)
$$

', '给定矩阵$A = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
−1 & 1 & 1 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right)$和方程$A^{∗}X = A^{−1} + 2X$，其中$A^{∗}$是$A$的伴随矩阵。首先计算$A$的行列式$det(A) = 4$，因此$A^{∗} = det(A)A^{−1} = 4A^{−1}$。代入方程得：

$$
4A^{−1}X = A^{−1} + 2X
$$

左乘$A$：

$$
4AA^{−1}X = AA^{−1} + 2AX
$$

即：

$$
4IX = I + 2AX
$$

整理得：

$$
4X - 2AX = I
$$



$$
(4I - 2A)X = I
$$

令$B = 4I - 2A$，则$X = B^{−1}$。计算$B$：

$$
B = 4 \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) - 2 \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
−1 & 1 & 1 \\\\
1 & −1 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & −2 & 2 \\\\
2 & 2 & −2 \\\\
−2 & 2 & 2 \\\\
\\end{array} \\right)
$$

计算$B$的行列式$det(B) = 32$，故$B$可逆。计算$B$的伴随矩阵：

$$
adj(B) = \\left( \\begin{array}{ccc}
8 & 8 & 0 \\\\
0 & 8 & 8 \\\\
8 & 0 & 8 \\\\
\\end{array} \\right)
$$

因此：

$$
B^{−1} = \\frac{1}{32} \\left( \\begin{array}{ccc}
8 & 8 & 0 \\\\
0 & 8 & 8 \\\\
8 & 0 & 8 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
\\frac{1}{4} & \\frac{1}{4} & 0 \\\\
0 & \\frac{1}{4} & \\frac{1}{4} \\\\
\\frac{1}{4} & 0 & \\frac{1}{4} \\\\
\\end{array} \\right)
$$

所以$X = B^{−1}$。
', 9, 'Mogullzr', '2026-01-29 14:11:14', 9, 'Mogullzr', '2026-01-29 14:11:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1263');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1263');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1263');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1264, '1999年考研数学卷2第20题', '简单', '考研数学1999年卷2真题', '设向量组
$$
α_{1} = (1, 1, 1, 3)T, α_{2} = (−1, −3, 5, 1)T, α_{3} = (3, 2, −1, p + 2)T, α_{4} = (−2, −6, 10, p)T.
$$
(1)$p$为何值时，该向量组线性无关？并在此时将向量$α = (4, 1, 6, 10)^{T}$用$α_{1}$,$α_{2}$,$α_{3}$,$α_{4}$线性表示；(2)$p$为何值时，该向量组线性相关？并在此时求出它的秩和一个极大线性无关组．', '[]', '(1) 当$p \\neq 2$时，向量组线性无关。此时，向量$α$可表示为：

$$
α = 2α_{1} + \\frac{3p - 4}{p - 2}α_{2} + α_{3} + \\frac{1 - p}{p - 2}α_{4}.
$$

(2) 当$p = 2$时，向量组线性相关，秩为$3$，一个极大线性无关组为$α_{1}, α_{2}, α_{3}$.
', '考虑矩阵$A = (α_{1}, α_{2}, α_{3}, α_{4})$：

$$
A = \\left( \\begin{array}{cccc}
1 & −1 & 3 & −2 \\\\
1 & −3 & 2 & −6 \\\\
1 & 5 & −1 & 10 \\\\
3 & 1 & p + 2 & p \\\\
\\end{array} \\right) .
$$

对$A$进行行变换：

$$
\\left( \\begin{array}{cccc}
1 & −1 & 3 & −2 \\\\
0 & −2 & −1 & −4 \\\\
0 & 6 & −4 & 12 \\\\
0 & 4 & p - 7 & p + 6 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 3.5 & 0 \\\\
0 & 1 & 0.5 & 2 \\\\
0 & 0 & −7 & 0 \\\\
0 & 0 & p - 9 & p - 2 \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 0 & 0 \\\\
0 & 1 & 0 & 2 \\\\
0 & 0 & 1 & 0 \\\\
0 & 0 & 0 & p - 2 \\\\
\\end{array} \\right) .
$$

当$p \\neq 2$时，矩阵的秩为$4$，向量组线性无关。当$p = 2$时，矩阵的秩为$3$，向量组线性相关。
(1) 当$p \\neq 2$时，解方程组$Ax = α$，其中$α = (4, 1, 6, 10)T$。构造增广矩阵：

$$
\\left( \\begin{array}{cccccc}
1 & −1 & 3 & −2 & ∣ & 4 \\\\
1 & −3 & 2 & −6 & ∣ & 1 \\\\
1 & 5 & −1 & 10 & ∣ & 6 \\\\
3 & 1 & p + 2 & p & ∣ & 10 \\\\
\\end{array} \\right) .
$$

经行变换得：

$$
\\left( \\begin{array}{cccccc}
1 & 0 & 0 & 0 & ∣ & 2 \\\\
0 & 1 & 0 & 2 & ∣ & 1 \\\\
0 & 0 & 1 & 0 & ∣ & 1 \\\\
0 & 0 & 0 & p - 2 & ∣ & 1 - p \\\\
\\end{array} \\right) .
$$

解得：

$$
x_{1} = 2,  x_{2} = 1 - 2x_{4} = \\frac{3p - 4}{p - 2},  x_{3} = 1,  x_{4} = \\frac{1 - p}{p - 2}.
$$

故$α = 2α_{1} + \\frac{3p-4}{p-2}α_{2} + α_{3} + \\frac{1-p}{p-2}α_{4}$.
(2) 当$p = 2$时，从行变换矩阵可知秩为$3$，且$α_{4} = 2α_{2}$，故极大线性无关组为$α_{1}, α_{2}, α_{3}$.
', 9, 'Mogullzr', '2026-01-29 14:11:15', 9, 'Mogullzr', '2026-01-29 14:11:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1264');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1264');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1264');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1265, '1999年考研数学卷3第1题', '简单', '考研数学1999年卷3真题', '设$f(x)$有一个原函数$\\frac{\\sin x}{x}$，则$\\int_{\\frac{π}{2}}^{π} xf^{′}(x)dx =$______．', '[]', '$\\frac{4}{π} - 1$
', '
已知$f(x)$有一个原函数$\\frac{\\sin x}{x}$，即$∫ f(x) dx = \\frac{\\sin x}{x} + C$，因此$f(x) = \\frac{d}{dx} (\\frac{\\sin x}{x}) = \\frac{x \\cos x-\\sin x}{x^{2}}$。
需要计算$\\int_{\\frac{π}{2}}^{π} xf^{′}(x) dx$。使用分部积分法，令$u = x$，$dv = f^{′}(x) dx$，则$du = dx$，$v = f(x)$，于是：


$$
∫ xf^{′}(x) dx = xf(x) - ∫ f(x) dx = xf(x) - \\frac{\\sin x}{x} + C
$$

代入$f(x)$，有$xf(x) = x ⋅ \\frac{x \\cos x-\\sin x}{x^{2}} = \\frac{x \\cos x-\\sin x}{x} = \\cos x - \\frac{\\sin x}{x}$，
所以：


$$
∫ xf^{′}(x) dx = (\\cos x - \\frac{\\sin x}{x}) - \\frac{\\sin x}{x} = \\cos x - 2\\frac{\\sin x}{x} + C
$$

因此，定积分为：


$$
\\int_{\\frac{π}{2}}^{π} xf^{′}(x) dx =  \\lbrack \\cos x - 2\\frac{\\sin x}{x} \\rbrack _{\\frac{π}{2}}^{π}
$$

计算上下限：
当$x = π$时，$\\cos π = −1$，$\\sin π = 0$，所以值为$−1 - 2 ⋅ \\frac{0}{π} = −1$；
当$x = \\frac{π}{2}$时，$\\cos \\frac{π}{2} = 0$，$\\sin \\frac{π}{2} = 1$，所以值为$0 - 2 ⋅ \\frac{1}{\\frac{π}{2}} = −\\frac{4}{π}$；
于是积分值为：


$$
−1 - (−\\frac{4}{π}) = \\frac{4}{π} - 1
$$

故答案为$\\frac{4}{π} - 1$。
', 9, 'Mogullzr', '2026-01-29 14:11:17', 9, 'Mogullzr', '2026-01-29 14:11:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1265');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1265');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1265');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1266, '1999年考研数学卷3第2题', '简单', '考研数学1999年卷3真题', '$\\sum_{n=1}^{∞} n (\\frac{1}{2})^{n-1} =$______．', '[]', '$4$
', '
考虑级数$\\sum_{n=1}^{∞} nx^{n-1}$，其中$∣x∣ < 1$。该级数的和为$\\frac{1}{(1-x)2}$。
本题中，$x = \\frac{1}{2}$，代入公式得：


$$
\\sum_{n=1}^{∞} n (\\frac{1}{2})^{n-1} = \\frac{1}{(1 - \\frac{1}{2})2} = \\frac{1}{(\\frac{1}{2})2} = \\frac{1}{\\frac{1}{4}} = 4.
$$

因此，该级数的和为 4。
', 9, 'Mogullzr', '2026-01-29 14:11:17', 9, 'Mogullzr', '2026-01-29 14:11:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1266');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1266');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1266');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1267, '1999年考研数学卷3第3题', '简单', '考研数学1999年卷3真题', '设$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，而$n ≥ 2$为整数，则$A^{n} - 2A^{n-1} =$______．', '[]', '$\\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 0 \\\\
\\end{array} \\right)$
', '
应填$O$。因为

$$
A^{2} = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 0 & 2 \\\\
0 & 4 & 0 \\\\
2 & 0 & 2 \\\\
\\end{array} \\right) = 2 \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 2 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right) = 2A,
$$

故有

$$
A^{n} - 2A^{n-1} = A^{n-2}(A^{2} - 2A) = O.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:17', 9, 'Mogullzr', '2026-01-29 14:11:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1267');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1267');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1267');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1268, '1999年考研数学卷3第4题', '简单', '考研数学1999年卷3真题', '在天平上重复称量一重为$a$的物品，假设各次称量结果相互独立且同服从正态分布$N(a, 0.2^{2})$．
若以$\\overline{X}_{n}$表示$n$次称量结果的算术平均值，则为使
$$
P \\{​\\overline{X}_{n} - a​ < 0.1\\} ≥ 0.95,
$$
$n$的最小值应不小于自然数 ______．', '[]', '$16$
', '
由题设知$U = \\frac{\\overline{X}_{n}-a}{0.2/\\sqrt{n}} ∼ N(0, 1)$，所以

$$
\\begin{array}{cc}
P \\{∣\\overline{X}_{n} - a∣ < 0.1\\} & ≥ 0.95 \\\\
⟺  P \\{​\\frac{\\overline{X}_{n} - a}{0.2/\\sqrt{n}}​ < \\frac{0.1}{0.2/\\sqrt{n}}\\} & ≥ 0.95 \\\\
⟺  P \\{∣U∣ < \\frac{\\sqrt{n}}{2}\\} & ≥ 0.95. \\\\
\\end{array}
$$

查标准正态分布表知$P\\{∣U∣ < 1.96\\} ≥ 0.95$。所以$\\frac{\\sqrt{n}}{2} ≥ 1.96$，解得$n ≥ 15.3664$。因$n$为整数，所以$n$最小为 16。
', 9, 'Mogullzr', '2026-01-29 14:11:17', 9, 'Mogullzr', '2026-01-29 14:11:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1268');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1268');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1268');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1269, '1999年考研数学卷3第5题', '简单', '考研数学1999年卷3真题', '设随机变量$X_{ij} (i, j = 1, 2, ⋯  , n; n ≥ 2)$独立同分布，$EX_{ij} = 2$，
则行列式$Y = \\begin{vmatrix}
X_{11} & X_{12} &  & X_{1n}\\\\
 &  & ⋯ & \\\\
X_{21} & X_{22} &  & X_{2n}\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  &  & \\\\
X_{n1} & X_{n2} &  & X_{nn}\\\\
 &  & ⋯ & 
\\end{vmatrix}$的数学期望$EY =$______．', '[]', '$0$
', '
应填$EY = 0$。行列式每一项都是$n$个元素的乘积$X_{1j_{1}}X_{2j_{2}} ⋯ X_{nj_{n}}$，前面带有正号或负号。由于随机变量$X_{ij}(i, j = 1, 2, ⋯  , n)$相互独立，所以有

$$
E(X_{1j_{1}}X_{2j_{2}} ⋯ X_{nj_{n}}) = EX_{1j_{1}}EX_{2j_{2}} ⋯ EX_{nj_{n}}.
$$

所以前面无论取正号或者负号，对和式的期望等于各项期望之和。即有

$$
EY = \\begin{vmatrix}
EX_{11} & EX_{12} &  & EX_{1n}\\\\
 &  & ⋯ & \\\\
EX_{21} & EX_{22} &  & EX_{2n}\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  &  & \\\\
EX_{n1} & EX_{n2} &  & EX_{nn}\\\\
 &  & ⋯ & 
\\end{vmatrix}
$$

而$X_{ij}(i, j = 1, 2, ⋯  , n; n ⩾ 2)$同分布，且$EX_{ij} = 2$，所以

$$
EY = \\begin{vmatrix}
EX_{11} & EX_{12} &  & EX_{1n}\\\\
 &  & ⋯ & \\\\
EX_{21} & EX_{22} &  & EX_{2n}\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  &  & \\\\
EX_{n1} & EX_{n2} &  & EX_{nn}\\\\
 &  & ⋯ & 
\\end{vmatrix} = \\begin{vmatrix}
2 & 2 &  & 2\\\\
 &  & ⋯ & \\\\
2 & 2 &  & 2\\\\
 &  & ⋯ & \\\\
⋮ & ⋮ &  & ⋮\\\\
 &  &  & \\\\
2 & 2 &  & 2\\\\
 &  & ⋯ & 
\\end{vmatrix} = 0.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:17', 9, 'Mogullzr', '2026-01-29 14:11:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1269');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1269');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1269');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1270, '1999年考研数学卷3第6题', '', '考研数学1999年卷3真题', '/problems/other/1229', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:18', 9, 'Mogullzr', '2026-01-29 14:11:18', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1271, '1999年考研数学卷3第7题', '简单', '考研数学1999年卷3真题', '设$f(x, y)$连续，且$f(x, y) = xy + \\iint_{D} f(u, v)dudv$，
其中$D$是由$y = 0$,$y = x^{2}$,$x = 1$所围成的区域，则$f(x, y)$等于', '[''$xy$．'', ''$2xy$．'', ''$xy + \\\\frac{1}{8}$．'', ''$xy + 1$．'']', "['C']", '', 9, 'Mogullzr', '2026-01-29 14:11:18', 9, 'Mogullzr', '2026-01-29 14:11:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1271');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1271');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1271');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1272, '1999年考研数学卷3第8题', '简单', '考研数学1999年卷3真题', '设向量$β$可由向量组$α_{1}, α_{2}, ⋯  , α_{m}$线性表示，
但不能由向量组(I)$α_{1}, α_{2}, ⋯  , α_{m-1}$线性表示，
记向量组(II)$α_{1}, α_{2}, ⋯  , α_{m-1}, β$，则', '[''$α_{m}$不能由(I)线性表示，也不能由(II)线性表示．'', ''$α_{m}$不能由(I)线性表示，但可由(II)线性表示．'', ''$α_{m}$可由(I)线性表示，也可由(II)线性表示．'', ''$α_{m}$可由(I)线性表示，但不可由(II)线性表示．'']', "['B']", '', 9, 'Mogullzr', '2026-01-29 14:11:18', 9, 'Mogullzr', '2026-01-29 14:11:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1272');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1272');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1272');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1273, '1999年考研数学卷3第9题', '简单', '考研数学1999年卷3真题', '设$A, B$为$n$阶矩阵，且$A$与$B$相似，$E$为$n$阶单位矩阵，则', '[''$λE - A = λE - B$．'', ''$A$与$B$有相同的特征值和特征向量．'', ''$A$与$B$都相似于一个对角矩阵．'', ''对任意常数$t$，$tE - A$与$tE - B$相似．'']', "['D']", '', 9, 'Mogullzr', '2026-01-29 14:11:18', 9, 'Mogullzr', '2026-01-29 14:11:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1273');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '1273');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1274, '1999年考研数学卷3第10题', '简单', '考研数学1999年卷3真题', '设随机变量$X_{i} ∼ \\left( \\begin{array}{ccc}
−1 & 0 & 1 \\\\
\\frac{1}{4} & \\frac{1}{2} & \\frac{1}{4} \\\\
\\end{array} \\right) (i = 1, 2)$，且满足$P \\{X_{1}X_{2} = 0\\} = 1$，
则$P \\{X_{1} = X_{2}\\}$等于', '[''$0$．'', ''$\\\\frac{1}{4}$．'', ''$\\\\frac{1}{2}$．'', ''$1$．'']', "['A']", '', 9, 'Mogullzr', '2026-01-29 14:11:18', 9, 'Mogullzr', '2026-01-29 14:11:18', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1274');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1274');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1274');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1275, '1999年考研数学卷3第11题', '简单', '考研数学1999年卷3真题', '曲线$y = \\frac{1}{\\sqrt{x}}$的切线与$x$轴和$y$轴围成一个图形，记切点的横坐标为$a$，
试求切线方程和这个图形的面积，当切点沿曲线趋于无穷远时，该面积的变换趋势如何？', '[]', '
切线方程为$y = −\\frac{1}{2a^{3/2}}x + \\frac{3}{2\\sqrt{a}}$，围成的图形面积为$S = \\frac{9}{4}\\sqrt{a}$。当切点沿曲线趋于无穷远时（即$a → ∞$），面积$S → ∞$。
', '
曲线$y = \\frac{1}{\\sqrt{x}}$在点$(a, \\frac{1}{\\sqrt{a}})$处的导数为


$$
y^{′} = −\\frac{1}{2}x^{−3/2},
$$

所以在$x = a$处的切线斜率为


$$
m = −\\frac{1}{2}a^{−3/2}.
$$

切线方程为


$$
y - \\frac{1}{\\sqrt{a}} = −\\frac{1}{2}a^{−3/2}(x - a),
$$

化简得


$$
y = −\\frac{1}{2a^{3/2}}x + \\frac{3}{2\\sqrt{a}}.
$$

切线与$x$轴的交点令$y = 0$，解得


$$
x = 3a;
$$

与$y$轴的交点令$x = 0$，解得


$$
y = \\frac{3}{2\\sqrt{a}}.
$$

切线与两轴围成的图形为直角三角形，其面积为


$$
S = \\frac{1}{2} × 3a × \\frac{3}{2\\sqrt{a}} = \\frac{9}{4}\\sqrt{a}.
$$

当切点沿曲线趋于无穷远时，即$a → ∞$，面积


$$
S = \\frac{9}{4}\\sqrt{a} → ∞.
$$

如果切点沿曲线向$y$轴方向移动（$a → 0^{+}$），则面积$S → 0$，但问题中“趋于无穷远”通常指$a → ∞$，故面积趋于无穷大。
', 9, 'Mogullzr', '2026-01-29 14:11:18', 9, 'Mogullzr', '2026-01-29 14:11:18', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1275');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1275');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '1275');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1276, '1999年考研数学卷3第12题', '简单', '考研数学1999年卷3真题', '计算二重积分$\\iint_{D} ydxdy$，其中$D$是由直线$x = −2, y = 0, y = 2$以及曲线$x = −\\sqrt{2y - y^{2}}$所围成的平面区域．', '[]', '$4 - \\frac{π}{2}$
', '
区域$D$和$D_{1}$如图所示，有

$$
\\iint_{D} y dx dy = \\iint_{D+D_{1}} y dx dy - \\iint_{D_{1}} y dx dy = I_{1} - I_{2}.
$$


显然$I_{1} = \\iint_{D+D_{1}} y dx dy = \\int_{−2}^{0} dx \\int_{0}^{2} y dy = 4$。在极坐标系下，有


$$
D_{1} = \\{(r, θ) ∣ 0 ≤ r ≤ 2 \\sin θ,  π/2 ≤ θ ≤ π\\}.
$$

因此


$$
I_{2} = \\iint_{D_{1}} y dx dy = \\int_{π/2}^{π} dθ \\int_{0}^{2 \\sin θ} r \\sin θ ⋅ r dr
$$



$$
= \\frac{8}{3} \\int_{π/2}^{π} \\sin^{4} θ dθ = \\frac{8}{3 × 4} \\int_{π/2}^{π}  \\lbrack 1 - 2 \\cos 2θ + \\frac{1 + \\cos 4θ}{2} \\rbrack  dθ = \\frac{π}{2}.
$$

于是


$$
\\iint_{D} y dx dy = I_{1} - I_{2} = 4 - \\frac{π}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:19', 9, 'Mogullzr', '2026-01-29 14:11:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1276');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1276');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1276');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1277, '1999年考研数学卷3第13题', '简单', '考研数学1999年卷3真题', '设生产某种产品必须投入两种要素，$x_{1}$和$x_{2}$分别为两要素的投入量，$Q$为产出量；
若生产函数为$Q = 2x_{1}^{α}x_{2}^{β}$，其中$α, β$为正常数，且$α + β = 1$．
假设两种要素的价格分别为$p_{1}$和$p_{2}$，试问：当产出量为$12$时，两要素各投入多少可以使得投入总费用最小？', '[]', '
当产出量为$12$时，两要素的投入量分别为：


$$
x_{1} = 6 (\\frac{p_{2}α}{p_{1}β})^{β}
$$



$$
x_{2} = 6 (\\frac{p_{1}β}{p_{2}α})^{α}
$$

其中$α$和$β$为正常数，且$α + β = 1$，$p_{1}$和$p_{2}$分别为两要素的价格。
', '
这是一个约束优化问题，目标是在产出量$Q = 12$的约束下最小化总费用$C = p_{1}x_{1} + p_{2}x_{2}$。生产函数为$Q = 2x_{1}^{α}x_{2}^{β}$，且$α + β = 1$。
由约束$Q = 12$可得$2x_{1}^{α}x_{2}^{β} = 12$，即$x_{1}^{α}x_{2}^{β} = 6$。
构造拉格朗日函数：


$$
L = p_{1}x_{1} + p_{2}x_{2} + λ(12 - 2x_{1}^{α}x_{2}^{β})
$$

取一阶偏导数并设为零：


$$
\\frac{∂L}{∂x_{1}} = p_{1} - λ ⋅ 2αx_{1}^{α-1}x_{2}^{β} = 0
$$



$$
\\frac{∂L}{∂x_{2}} = p_{2} - λ ⋅ 2βx_{1}^{α}x_{2}^{β-1} = 0
$$



$$
\\frac{∂L}{∂λ} = 12 - 2x_{1}^{α}x_{2}^{β} = 0
$$

从前两个方程消去$λ$，可得：


$$
\\frac{p_{1}}{p_{2}} = \\frac{α}{β} ⋅ \\frac{x_{2}}{x_{1}}
$$

即


$$
\\frac{x_{2}}{x_{1}} = \\frac{p_{1}}{p_{2}} ⋅ \\frac{β}{α}
$$

令$k = \\frac{p_{1}β}{p_{2}α}$，则$x_{2} = kx_{1}$。代入约束$x_{1}^{α}x_{2}^{β} = 6$：


$$
x_{1}^{α}(kx_{1})β = x_{1}k^{β} = 6
$$

解得


$$
x_{1} = 6k^{−β} = 6 (\\frac{p_{2}α}{p_{1}β})^{β}
$$

代入$x_{2} = kx_{1}$：


$$
x_{2} = k ⋅ 6k^{−β} = 6k^{1-β} = 6k^{α} = 6 (\\frac{p_{1}β}{p_{2}α})^{α}
$$

因此，当产出量为$12$时，两要素投入如上所示可使总费用最小。
', 9, 'Mogullzr', '2026-01-29 14:11:19', 9, 'Mogullzr', '2026-01-29 14:11:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1277');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1277');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '1277');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1278, '1999年考研数学卷3第14题', '简单', '考研数学1999年卷3真题', '设有微分方程$y^{′} - 2y = φ(x)$，其中$φ(x) = \\begin{cases} 2 & x < 1; \\\\ 0 & x > 1. \\end{cases}$试求在$(−∞, +∞)$内的连续函数$y = y(x)$，
使之在$(−∞, 1)$和$(1, +∞)$内都满足所给方程，且满足条件$y(0) = 0$．', '[]', '

$$
y(x) = \\begin{cases} e^{2x} - 1 & x ≤ 1 \\\\ e^{2x} - e^{2(x-1)} & x > 1 \\end{cases}
$$

且在$x = 1$处连续，值为$e^{2} - 1$.
', '
在两个区间$(−∞, 1)$和$(1, +∞)$上分别求微分方程：

$$
\\begin{cases} y^{′} - 2y = 2 & x < 1 \\\\ y^{′} - 2y = 0 & x > 1 \\end{cases} ⇒ \\begin{cases} y = −1 + C_{1}e^{2x} & x < 1; \\\\ y = C_{2}e^{2x} & x > 1; \\end{cases}
$$

其中$C_{1}, C_{2}$为常数。由题设$y(0) = 0$，其中$x < 0 < 1$，可知

$$
y​_{x=0} = −1 + C_{1}e^{2x}​_{x=0} = −1 + C_{1} = 0.
$$

解得$C_{1} = 1$。所以有

$$
\\begin{cases} y = −1 + e^{2x} & x < 1; \\\\ y = C_{2}e^{2x} & x > 1. \\end{cases}
$$

又因为$y = y(x)$在$(−∞, +∞)$内连续，所以$\\lim_{x→1^{-}} y = \\lim_{x→1^{+}} y = y(1)$，即

$$
\\lim_{x→1^{-}}(−1 + e^{2x}) = \\lim_{x→1^{+}} C_{2}e^{2x} = y(1).
$$

解之得$C_{2} = 1 - e^{−2}$，$y(1) = e^{2} - 1$。故所求连续函数为

$$
y = y(x) = \\begin{cases} e^{2x} - 1 & x ≤ 1; \\\\ (1 - e^{−2})e^{2x} & x > 1. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:19', 9, 'Mogullzr', '2026-01-29 14:11:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1278');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1278');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1278');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1279, '1999年考研数学卷3第15题', '简单', '考研数学1999年卷3真题', '设函数$f(x)$连续，且$\\int_{0}^{x} tf(2x - t)dt = \\frac{1}{2} arctan x^{2}$．
已知$f(1) = 1$，求$\\int_{1}^{2} f(x)dx$的值．', '[]', '$\\frac{3}{4}$
', '已知积分方程$\\int_{0}^{x} tf(2x - t) dt = \\frac{1}{2} arctan x^{2}$且$f(1) = 1$。
令$u = 2x - t$，则积分变为$\\int_{x}^{2x}(2x - u)f(u) du = \\frac{1}{2} arctan x^{2}$。
定义$F(x) = \\int_{x}^{2x}(2x - t)f(t) dt$，则$F(x) = \\frac{1}{2} arctan x^{2}$。
对$F(x)$求导，使用莱布尼茨规则：

$$
F^{′}(x) = −xf(x) + 2 \\int_{x}^{2x} f(t) dt.
$$

同时，

$$
F^{′}(x) = \\frac{d}{dx} (\\frac{1}{2} arctan x^{2}) = \\frac{x}{1 + x^{4}}.
$$

因此，

$$
−xf(x) + 2 \\int_{x}^{2x} f(t) dt = \\frac{x}{1 + x^{4}}.
$$

代入$x = 1$和$f(1) = 1$：

$$
−1 ⋅ 1 + 2 \\int_{1}^{2} f(t) dt = \\frac{1}{1 + 1^{4}} = \\frac{1}{2}.
$$

解得

$$
2 \\int_{1}^{2} f(t) dt = \\frac{3}{2},  \\int_{1}^{2} f(t) dt = \\frac{3}{4}.
$$

故$\\int_{1}^{2} f(x) dx = \\frac{3}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:11:19', 9, 'Mogullzr', '2026-01-29 14:11:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1279');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1279');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1279');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1280, '1999年考研数学卷3第16题', '简单', '考研数学1999年卷3真题', '设函数$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导，
且$f(0) = f(1) = 0, f (\\frac{1}{2}) = 1$．试证：(1) 存在$η ∈ (\\frac{1}{2}, 1)$，使$f (η) = η$；(2) 对任意实数$λ$，必存在$ξ ∈ (0, η)$，
使得$f^{′} (ξ) - λ  \\lbrack f (ξ) - ξ \\rbrack  = 1$．', '[]', '见解析
', '
(I) 设$F(x) = f(x) - x$，则$F(x)$在区间$\\lbrack 0, 1 \\rbrack$上连续，在$(0, 1)$内可导，且


$$
F (\\frac{1}{2}) = \\frac{1}{2} > 0,  F(1) = −1 < 0.
$$

所以由介值定理得，存在$η ∈ (\\frac{1}{2}, 1)$，使得$F(η) = f(η) - η = 0$，即$f(η) = η$。
(II) 令$f^{′}(x) - λ \\lbrack f(x) - x \\rbrack  - 1 = 0$，解微分方程得


$$
f(x) = x + Ce^{λx}  ⇒  e^{−λx}(f(x) - x) = C.
$$

令$F(x) = e^{−λx}(f(x) - x)$。因为


$$
F(0) = e^{0}(f(0) - 0) = 0,  F(η) = e^{−λη}(f(η) - η) = 0,
$$

所以由罗尔定理知，存在点$ξ ∈ (0, η)$，使得$F^{′}(ξ) = 0$，即


$$
F^{′}(ξ) = e^{−λξ}  \\lbrack f^{′}(ξ) - λ  \\lbrack f(ξ) - ξ \\rbrack  - 1 \\rbrack  = 0.
$$

从而即有


$$
f^{′}(ξ) - λ  \\lbrack f(ξ) - ξ \\rbrack  = 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:19', 9, 'Mogullzr', '2026-01-29 14:11:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1280');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1280');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1280');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1281, '1999年考研数学卷3第17题', '', '考研数学1999年卷3真题', '/problems/other/1241', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:20', 9, 'Mogullzr', '2026-01-29 14:11:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1282, '1999年考研数学卷3第18题', '简单', '考研数学1999年卷3真题', '设$A$为$m × n$实矩阵，$E$为$n$阶单位矩阵．已知矩阵$B = λE + A^{T}A$，
试证：当$λ > 0$时，矩阵$B$为正定矩阵．', '[]', '见解析
', '
要证明矩阵$B$为正定矩阵，需证对于任意非零向量$x ∈ R^{n}$，有$x^{T}Bx > 0$。
考虑$B = λE + A^{T}A$，则


$$
x^{T}Bx = x^{T}(λE + A^{T}A)x = λx^{T}Ex + x^{T}A^{T}Ax.
$$

由于$E$是单位矩阵，有$x^{T}Ex = x^{T}x = ∥x∥^{2}$。
又$x^{T}A^{T}Ax = (Ax)T(Ax) = ∥Ax∥^{2}$，
因此


$$
x^{T}Bx = λ∥x∥^{2} + ∥Ax∥^{2}.
$$

当$x \\neq 0$时，有$∥x∥^{2} > 0$，且由于$λ > 0$，故$λ∥x∥^{2} > 0$。
同时，$∥Ax∥^{2} ≥ 0$，
所以


$$
x^{T}Bx ≥ λ∥x∥^{2} > 0.
$$

因此，对于任意非零向量$x$，有$x^{T}Bx > 0$，即$B$为正定矩阵。
', 9, 'Mogullzr', '2026-01-29 14:11:20', 9, 'Mogullzr', '2026-01-29 14:11:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1282');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1282');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1283, '1999年考研数学卷3第19题', '简单', '考研数学1999年卷3真题', '假设二维随机变量$(X, Y)$在矩形$G = \\{(x, y)∣ 0 ≤ x ≤ 2, 0 ≤ y ≤ 1\\}$上服从均匀分布．记
$$
U = \\begin{cases} 0 & X ≤ Y; \\\\ 1 & X > Y. \\end{cases}  V = \\begin{cases} 0 & X ≤ 2Y; \\\\ 1 & X > 2Y. \\end{cases}
$$
(1) 求$U$和$V$的联合分布；(2) 求$U$和$V$的相关系数$r$．', '[]', '
(1)$U$和$V$的联合分布为：


$$
\\begin{array}{c|cc}
 & V = 0 & V = 1 \\\\
U = 0 & \\frac{1}{4} & 0 \\\\
U = 1 & \\frac{1}{4} & \\frac{1}{2} \\\\
\\end{array}
$$

(2)$U$和$V$的相关系数$r = \\frac{1}{\\sqrt{3}}$。
', '
(I) 如图，由题知$P\\{X ⩽ Y\\} = \\frac{1}{4}$，$P\\{X > 2Y\\} = \\frac{1}{2}$，$P\\{Y < X ⩽ 2Y\\} = \\frac{1}{4}$。

$(U, V)$有四个可能值：$(0, 0), (0, 1), (1, 0), (1, 1)$。

$$
P\\{U = 0, V = 0\\} = P\\{X ≤ Y, X ≤ 2Y\\} = P\\{X ≤ Y\\} = \\frac{1}{4},
$$



$$
P\\{U = 0, V = 1\\} = P\\{X ≤ Y, X > 2Y\\} = P\\{∅\\} = 0,
$$



$$
P\\{U = 1, V = 0\\} = P\\{X > Y, X ≤ 2Y\\} = P\\{Y < X ≤ 2Y\\} = \\frac{1}{4},
$$



$$
P\\{U = 1, V = 1\\} = P\\{X > Y, X > 2Y\\} = P\\{X > 2Y\\} = \\frac{1}{2}.
$$

(II)由边缘概率的定义有：

$$
P\\{U = 0\\} = P\\{U = 0, V = 0\\} + P\\{U = 0, V = 1\\} = \\frac{1}{4} + 0 = \\frac{1}{4},
$$



$$
P\\{U = 1\\} = P\\{U = 1, V = 0\\} + P\\{U = 1, V = 1\\} = \\frac{1}{4} + \\frac{1}{2} = \\frac{3}{4},
$$



$$
P\\{V = 0\\} = P\\{U = 0, V = 0\\} + P\\{U = 1, V = 0\\} = \\frac{1}{4} + \\frac{1}{4} = \\frac{1}{2},
$$



$$
P\\{V = 1\\} = P\\{U = 0, V = 1\\} + P\\{U = 1, V = 1\\} = 0 + \\frac{1}{2} = \\frac{1}{2}.
$$

而随机变量$UV$的概率分布为：

$$
P\\{UV = 0\\} = P\\{U = 0, V = 0\\} + P\\{U = 0, V = 1\\} + P\\{U = 1, V = 0\\} = \\frac{1}{2},
$$



$$
P\\{UV = 1\\} = P\\{U = 1, V = 1\\} = \\frac{1}{2}.
$$

于是有

$$
EU = \\frac{3}{4},  EU^{2} = \\frac{3}{4},  DU = EU^{2} - (EU)2 = \\frac{3}{16};
$$



$$
EV = \\frac{1}{2},  EV^{2} = \\frac{1}{2},  DV = EV^{2} - (EV)2 = \\frac{1}{4};
$$



$$
E(UV) = \\frac{1}{2},  Cov(U, V) = E(UV) - EU ⋅ EV = \\frac{1}{8}.
$$

故$U$和$V$的相关系数

$$
r(U, V) = \\frac{Cov(U, V)}{\\sqrt{DU}\\sqrt{DV}} = \\frac{\\frac{1}{8}}{\\frac{\\sqrt{3}}{4} × \\frac{1}{2}} = \\frac{\\sqrt{3}}{3}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:20', 9, 'Mogullzr', '2026-01-29 14:11:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1283');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1283');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1283');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1284, '1999年考研数学卷3第20题', '简单', '考研数学1999年卷3真题', '设$X_{1}, X_{2}, … , X_{9}$是来自正态总体$X$的简单随机样本，$Y_{1} = \\frac{1}{6} (X_{1} + X_{2} + ⋯ + X_{6})$，$Y_{2} = \\frac{1}{3} (X_{7} + X_{8} + X_{9})$，$S^{2} = \\frac{1}{2} \\sum_{i=7}^{9} (X_{i} - Y_{2})^{2}$，$Z = \\frac{\\sqrt{2}(Y_{1}-Y_{2})}{S}$，证明统计量$Z$服从自由度为$2$的$t$分布．', '[]', '见解析
', '
设$X ∼ N(μ, σ^{2})$，则$X_{1}, … , X_{9} ∼ N(μ, σ^{2})$。从而

$$
Y_{1} = \\frac{1}{6}(X_{1} + X_{2} + … + X_{6}) ∼ N (μ, \\frac{σ^{2}}{6}) ,
$$


$$
Y_{2} = \\frac{1}{3}(X_{7} + X_{8} + X_{9}) ∼ N (μ, \\frac{σ^{2}}{3}) .
$$

又由于$Y_{1}, Y_{2}$相互独立，且都服从正态分布，故$Y_{1} - Y_{2} ∼ N (0, \\frac{σ^{2}}{2})$。标准化得

$$
U = \\frac{Y_{1} - Y_{2} - 0}{σ/\\sqrt{2}} ∼ N(0, 1).
$$

由正态总体样本方差的性质得

$$
χ^{2} = \\frac{2S^{2}}{σ^{2}} ∼ χ^{2}(2).
$$

由于样本方差与样本均值独立，所以$Y_{2}$与$S^{2}$独立。而$Y_{1}$也与$S^{2}$独立，故$U = \\frac{Y_{1} - Y_{2} - 0}{σ/\\sqrt{2}}$与$\\frac{2S^{2}}{σ^{2}}$独立。所以由$t$分布的定义有

$$
Z = \\frac{\\sqrt{2}(Y_{1} - Y_{2})}{S} = \\frac{\\frac{Y_{1} - Y_{2} - 0}{σ/\\sqrt{2}}}{\\sqrt{\\frac{2S^{2}}{σ^{2}}/2}} = \\frac{U}{\\sqrt{χ^{2}/2}} ∼ t(2).
$$

', 9, 'Mogullzr', '2026-01-29 14:11:20', 9, 'Mogullzr', '2026-01-29 14:11:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1284');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1284');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1285, '1999年考研数学卷4第1题', '简单', '考研数学1999年卷4真题', '设函数$f(x) = a^{x}$（$a > 0$,$a \\neq 1$），
则$\\lim_{n→∞} \\frac{1}{n^{2}} \\ln \\lbrack f(1)f(2) ⋯ f(n) \\rbrack  =$______．', '[]', '$\\frac{1}{2} \\ln a$
', '
函数$f(x) = a^{x}$，则

$$
f(1)f(2) ⋯ f(n) = a^{1} ⋅ a^{2} ⋯ a^{n} = a^{1+2+⋯+n} = a^{\\frac{n(n+1)}{2}}
$$

取自然对数，得

$$
\\ln \\lbrack f(1)f(2) ⋯ f(n) \\rbrack  = \\ln (a^{\\frac{n(n+1)}{2}}) = \\frac{n(n + 1)}{2} \\ln a
$$

代入极限式：

$$
\\begin{array}{cc}
\\lim_{n→∞} \\frac{1}{n^{2}} \\ln \\lbrack f(1)f(2) ⋯ f(n) \\rbrack  & = \\lim_{n→∞} \\frac{1}{n^{2}} ⋅ \\frac{n(n + 1)}{2} \\ln a \\\\
 & = \\lim_{n→∞} \\frac{n(n + 1)}{2n^{2}} \\ln a \\\\
 & = \\lim_{n→∞} \\frac{n + 1}{2n} \\ln a \\\\
\\end{array}
$$

当$n → ∞$时，$\\frac{n+1}{2n} → \\frac{1}{2}$，因此极限为$\\frac{1}{2} \\ln a$。
', 9, 'Mogullzr', '2026-01-29 14:11:22', 9, 'Mogullzr', '2026-01-29 14:11:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1285');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1285');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1285');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1286, '1999年考研数学卷4第2题', '简单', '考研数学1999年卷4真题', '设$f(x) = e^{x}yz^{2}$，其中$z = z(x, y)$是由$x + y + z + xyz = 0$确定的隐函数，
则$f_{x}^{′}(0, 1, −1) =$______．', '[]', '1
', '
给定函数$f(x) = e^{x}yz^{2}$，其中$z = z(x, y)$由方程$x + y + z + xyz = 0$确定。需要求$f_{x}^{′}(0, 1, −1)$，即$f$对$x$的偏导数在点$(0, 1, −1)$处的值。
首先，求$f$对$x$的偏导数。由于$z$是$x$和$y$的函数，应用乘积法则和链式法则：

$$
f_{x} = \\frac{∂}{∂x} (e^{x}yz^{2}) = y (e^{x}z^{2} + e^{x} ⋅ 2z ⋅ \\frac{∂z}{∂x}) = ye^{x} (z^{2} + 2z\\frac{∂z}{∂x}) .
$$

在点$(0, 1, −1)$处，代入$x = 0$,$y = 1$,$z = −1$:

$$
\\begin{array}{cc}
f_{x}(0, 1, −1) & = 1 ⋅ e^{0} ((−1)2 + 2(−1)\\frac{∂z}{∂x}​_{(0,1)}) \\\\
 & = 1 ⋅ 1 (1 - 2\\frac{∂z}{∂x}​_{(0,1)}) \\\\
\\end{array}
$$

接下来，求$\\frac{∂z}{∂x}$在点$(0, 1)$处的值。由隐函数方程$F(x, y, z) = x + y + z + xyz = 0$，利用隐函数求导公式：

$$
\\frac{∂z}{∂x} = −\\frac{\\frac{∂F}{∂x}}{\\frac{∂F}{∂z}}.
$$

计算偏导数：

$$
\\frac{∂F}{∂x} = 1 + yz,  \\frac{∂F}{∂z} = 1 + xy.
$$

在点$(0, 1, −1)$处：

$$
\\frac{∂F}{∂x} = 1 + (1)(−1) = 0,  \\frac{∂F}{∂z} = 1 + (0)(1) = 1.
$$

所以，

$$
\\frac{∂z}{∂x}​_{(0,1)} = −\\frac{0}{1} = 0.
$$

代入回$f_{x}$:

$$
f_{x}(0, 1, −1) = 1 - 2 × 0 = 1.
$$

因此，$f_{x}^{′}(0, 1, −1) = 1$.
', 9, 'Mogullzr', '2026-01-29 14:11:22', 9, 'Mogullzr', '2026-01-29 14:11:22', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1286');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1286');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '1286');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1287, '1999年考研数学卷4第3题', '', '考研数学1999年卷4真题', '/problems/other/1267', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:22', 9, 'Mogullzr', '2026-01-29 14:11:22', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1288, '1999年考研数学卷4第4题', '简单', '考研数学1999年卷4真题', '已知$AB - B = A$，其中$B = \\left( \\begin{array}{ccc}
1 & −2 & 0 \\\\
2 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$，则$A =$______．', '[]', '

$$
A = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{2} & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)
$$

', '已知矩阵方程$AB - B = A$，可改写为$AB - A = B$，即$A(B - I) = B$，其中$I$是单位矩阵。
给定


$$
B = \\left( \\begin{array}{ccc}
1 & −2 & 0 \\\\
2 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) ,
$$

则


$$
B - I = \\left( \\begin{array}{ccc}
0 & −2 & 0 \\\\
2 & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) .
$$

计算$(B - I)−1$：由于$B - I$是分块矩阵，其逆矩阵为


$$
(B - I)−1 = \\left( \\begin{array}{ccc}
0 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{2} & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) .
$$

因此，


$$
A = B(B - I)−1 = \\left( \\begin{array}{ccc}
1 & −2 & 0 \\\\
2 & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
0 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{2} & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & 0 \\\\
−\\frac{1}{2} & 1 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right) .
$$

验证：计算$AB - B$，结果等于$A$，符合原方程。
', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1288');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1288');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '1288');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1289, '1999年考研数学卷4第5题', '简单', '考研数学1999年卷4真题', '设$X$服从参数为$λ$的泊松分布，且已知$E \\lbrack (X - 1)(X - 2) \\rbrack  = 1$，则$λ =$______．', '[]', '1
', '
已知$X$服从参数为$λ$的泊松分布，且$E \\lbrack (X - 1)(X - 2) \\rbrack  = 1$。
展开$(X - 1)(X - 2) = X^{2} - 3X + 2$，则


$$
E \\lbrack (X - 1)(X - 2) \\rbrack  = E \\lbrack X^{2} - 3X + 2 \\rbrack  = E \\lbrack X^{2} \\rbrack  - 3E \\lbrack X \\rbrack  + 2.
$$

对于泊松分布，有$E \\lbrack X \\rbrack  = λ$，且$E \\lbrack X^{2} \\rbrack  = Var(X) + (E \\lbrack X \\rbrack )2 = λ + λ^{2}$。
代入得：


$$
E \\lbrack X^{2} - 3X + 2 \\rbrack  = (λ + λ^{2}) - 3λ + 2 = λ^{2} - 2λ + 2.
$$

设其等于 1：


$$
λ^{2} - 2λ + 2 = 1,
$$

即


$$
λ^{2} - 2λ + 1 = 0,
$$

解得$(λ - 1)2 = 0$，所以$λ = 1$。
验证：当$λ = 1$时，$E \\lbrack X \\rbrack  = 1$，$E \\lbrack X^{2} \\rbrack  = 1 + 1^{2} = 2$，则$E \\lbrack X^{2} - 3X + 2 \\rbrack  = 2 - 3 × 1 + 2 = 1$，符合条件。
因此，$λ = 1$。
', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1289');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1289');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1290, '1999年考研数学卷4第6题', '', '考研数学1999年卷4真题', '/problems/other/1229', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1291, '1999年考研数学卷4第7题', '', '考研数学1999年卷4真题', '/problems/other/1271', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1292, '1999年考研数学卷4第8题', '', '考研数学1999年卷4真题', '/problems/other/1272', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1293, '1999年考研数学卷4第9题', '简单', '考研数学1999年卷4真题', '设随机变量$X$和$Y$的方差存在且不等于$0$，则$D(X + Y) = DX + DY$是$X$和$Y$', '[''不相关的充分条件，但不是必要条件．'', ''独立的必要条件，但不是充分条件．'', ''不相关的充要条件．'', ''独立的充要条件．'']', "['C']", '根据方差的性质，对于随机变量$X$和$Y$，有

$$
D(X + Y) = DX + DY + 2 Cov(X, Y)
$$

因此，$D(X + Y) = DX + DY$当且仅当$Cov(X, Y) = 0$。而$Cov(X, Y) = 0$正是$X$和$Y$不相关的定义。故$D(X + Y) = DX + DY$是$X$和$Y$不相关的充要条件。
选项 A、B、D 均不正确，因为不相关并不一定意味着独立，独立是更强的条件。', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1293');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1293');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1293');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1294, '1999年考研数学卷4第10题', '简单', '考研数学1999年卷4真题', '设$X$服从指数分布，则$Y = \\min\\{X, 2\\}$的分布函数', '[''是连续函数．'', ''至少有两个间断点．'', ''是阶梯函数．'', ''恰有一个间断点．'']', "['D']", '
设随机变量$X$服从参数为$λ$的指数分布，其分布函数为

$$
F_{X}(x) = 1 - e^{−λx} (x ≥ 0).
$$

考虑$Y = \\min\\{X, 2\\}$的分布函数$F_{Y}(y) = P(Y ≤ y)$。当$y < 0$时，$F_{Y}(y) = 0$。当$0 ≤ y < 2$时，$F_{Y}(y) = P(X ≤ y) = 1 - e^{−λy}$。当$y ≥ 2$时，$F_{Y}(y) = 1$。在$y = 0$处，$F_{Y}(0) = 0$，且左极限为$0$，故连续。
在$y = 2$处，$F_{Y}(2) = 1$，左极限为$1 - e^{−2λ} < 1$，故存在跳跃间断点。
其余点处$F_{Y}(y)$连续，因此分布函数恰有一个间断点。选项分析：
A 错误，因为分布函数不连续；
B 错误，因为只有一个间断点；
C 错误，因为并非阶梯函数（仅在$y = 2$处跳跃，其余部分连续）；
D 正确。', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1294');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1294');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1295, '1999年考研数学卷4第11题', '', '考研数学1999年卷4真题', '/problems/other/1275', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1296, '1999年考研数学卷4第12题', '', '考研数学1999年卷4真题', '/problems/other/1276', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1297, '1999年考研数学卷4第13题', '', '考研数学1999年卷4真题', '/problems/other/1277', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1298, '1999年考研数学卷4第14题', '简单', '考研数学1999年卷4真题', '设$F(x)$为$f(x)$的原函数，且当$x ≥ 0$时，$f(x)F(x) = \\frac{xe^{x}}{2(1+x)2}$，
已知$F(0) = 1$，$F(x) > 0$，试求$f(x)$．', '[]', '

$$
f(x) = \\frac{xe^{\\frac{x}{2}}}{2(1 + x)23​}
$$

', '已知$F(x)$是$f(x)$的原函数，即$F^{′}(x) = f(x)$，且当$x ≥ 0$时，有

$$
f(x)F(x) = \\frac{xe^{x}}{2(1 + x)2},
$$

同时给定$F(0) = 1$，$F(x) > 0$。
令$u = F(x)$，则$u^{′} = f(x)$，代入得

$$
u^{′}u = \\frac{xe^{x}}{2(1 + x)2}.
$$

注意到左边为$\\frac{1}{2}(u^{2})′$，因此

$$
\\frac{1}{2}(u^{2})′ = \\frac{xe^{x}}{2(1 + x)2}  ⇒  (u^{2})′ = \\frac{xe^{x}}{(1 + x)2}.
$$

积分两边：

$$
u^{2} = ∫ \\frac{xe^{x}}{(1 + x)2} dx + C.
$$

计算积分：

$$
∫ \\frac{xe^{x}}{(1 + x)2} dx = \\frac{e^{x}}{1 + x},
$$

因为

$$
(\\frac{e^{x}}{1 + x})^{′} = \\frac{e^{x}(1 + x) - e^{x}}{(1 + x)2} = \\frac{xe^{x}}{(1 + x)2}.
$$

所以

$$
u^{2} = \\frac{e^{x}}{1 + x} + C.
$$

由$F(0) = 1$，即$u(0) = 1$，代入得

$$
1 = \\frac{e^{0}}{1 + 0} + C = 1 + C  ⇒  C = 0.
$$

因此

$$
u^{2} = \\frac{e^{x}}{1 + x}  ⇒  u = \\sqrt{\\frac{e^{x}}{1 + x}} = \\frac{e^{\\frac{x}{2}}}{\\sqrt{1 + x}},
$$

即

$$
F(x) = \\frac{e^{\\frac{x}{2}}}{\\sqrt{1 + x}}.
$$

求导得

$$
f(x) = F^{′}(x) = \\frac{d}{dx} (e^{\\frac{x}{2}}(1 + x)−21​) .
$$

应用乘积法则：

$$
f(x) = e^{\\frac{x}{2}} ⋅ \\frac{1}{2}(1 + x)−21​ + e^{\\frac{x}{2}} ⋅ (−\\frac{1}{2}) (1 + x)−23​ = \\frac{e^{\\frac{x}{2}}}{2}  \\lbrack \\frac{1}{\\sqrt{1 + x}} - \\frac{1}{(1 + x)23​} \\rbrack  .
$$

化简括号内：

$$
\\frac{1}{\\sqrt{1 + x}} - \\frac{1}{(1 + x)23​} = \\frac{(1 + x) - 1}{(1 + x)23​} = \\frac{x}{(1 + x)23​},
$$

所以

$$
f(x) = \\frac{e^{\\frac{x}{2}}}{2} ⋅ \\frac{x}{(1 + x)23​} = \\frac{xe^{\\frac{x}{2}}}{2(1 + x)23​}.
$$

验证：计算$f(x)F(x)$：

$$
f(x)F(x) = \\frac{xe^{\\frac{x}{2}}}{2(1 + x)23​} ⋅ \\frac{e^{\\frac{x}{2}}}{\\sqrt{1 + x}} = \\frac{xe^{x}}{2(1 + x)2},
$$

符合给定条件。因此所求函数为

$$
f(x) = \\frac{xe^{\\frac{x}{2}}}{2(1 + x)23​}.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1298');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1298');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '1298');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1299, '1999年考研数学卷4第15题', '简单', '考研数学1999年卷4真题', '已知$f(x)$连续，$\\int_{0}^{x} tf(x - t)dt = 1 - \\cos x$，求$\\int_{0}^{\\frac{π}{2}} f(x)dx$的值．', '[]', '1
', '已知积分方程$\\int_{0}^{x} tf(x - t) dt = 1 - \\cos x$，且$f(x)$连续。
令$u = x - t$，则当$t = 0$时，$u = x$；当$t = x$时，$u = 0$，且$dt = −du$。
代入原积分得：


$$
\\int_{0}^{x} tf(x - t) dt = \\int_{x}^{0}(x - u)f(u) (−du) = \\int_{0}^{x}(x - u)f(u) du
$$

因此，有：


$$
\\int_{0}^{x}(x - u)f(u) du = 1 - \\cos x
$$

将积分写为：


$$
x \\int_{0}^{x} f(u) du - \\int_{0}^{x} uf(u) du = 1 - \\cos x
$$

令$F(x) = \\int_{0}^{x} f(u) du$，则上式化为：


$$
xF(x) - \\int_{0}^{x} uf(u) du = 1 - \\cos x
$$

对两边关于$x$求导：
左边求导为：


$$
\\frac{d}{dx}  \\lbrack xF(x) - \\int_{0}^{x} uf(u) du \\rbrack  = F(x) + xf(x) - xf(x) = F(x)
$$

右边求导为：


$$
\\frac{d}{dx}(1 - \\cos x) = \\sin x
$$

因此，


$$
F(x) = \\sin x
$$

即


$$
\\int_{0}^{x} f(u) du = \\sin x
$$

所求积分为：


$$
\\int_{0}^{\\frac{π}{2}} f(x) dx = F (\\frac{π}{2}) = \\sin \\frac{π}{2} = 1
$$

故答案为 1。
', 9, 'Mogullzr', '2026-01-29 14:11:23', 9, 'Mogullzr', '2026-01-29 14:11:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1299');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1299');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1299');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1300, '1999年考研数学卷4第16题', '简单', '考研数学1999年卷4真题', '证明：当$0 < x < π$时，有$\\sin \\frac{x}{2} > \\frac{x}{π}$．', '[]', '见解析
', '
令$t = \\frac{x}{2}$，则当$0 < x < π$时，有$0 < t < \\frac{π}{2}$。原不等式化为$\\sin t > \\frac{2}{π}t$。
考虑函数$s(t) = \\frac{\\sin t}{t}$，其中$t > 0$。求导得


$$
s^{′}(t) = \\frac{t \\cos t - \\sin t}{t^{2}}.
$$

令$u(t) = t \\cos t - \\sin t$，则


$$
u^{′}(t) = \\cos t - t \\sin t - \\cos t = −t \\sin t < 0 (当t > 0),
$$

故$u(t)$单调递减。又


$$
u(0) = \\lim_{t→0}(t \\cos t - \\sin t) = 0,
$$

所以对任意$t > 0$，有$u(t) < 0$，因此$s^{′}(t) < 0$，即$s(t)$在$t > 0$时单调递减。
当$t = \\frac{π}{2}$时，


$$
s (\\frac{π}{2}) = \\frac{\\sin \\frac{π}{2}}{\\frac{π}{2}} = \\frac{2}{π}.
$$

由于$s(t)$单调递减，当$0 < t < \\frac{π}{2}$时，有


$$
s(t) > s (\\frac{π}{2}) = \\frac{2}{π},
$$

即


$$
\\frac{\\sin t}{t} > \\frac{2}{π},
$$

所以$\\sin t > \\frac{2}{π}t$。
代回$t = \\frac{x}{2}$，得


$$
\\sin \\frac{x}{2} > \\frac{2}{π} ⋅ \\frac{x}{2} = \\frac{x}{π}.
$$

因此，当$0 < x < π$时，原不等式成立。
', 9, 'Mogullzr', '2026-01-29 14:11:24', 9, 'Mogullzr', '2026-01-29 14:11:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1300');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1300');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1066', '1300');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1301, '1999年考研数学卷4第17题', '简单', '考研数学1999年卷4真题', '设矩阵$A = \\left( \\begin{array}{ccc}
3 & 2 & −2 \\\\
−k & −1 & k \\\\
4 & 2 & −3 \\\\
\\end{array} \\right)$，问：当$k$为何值时，存在可逆矩阵$P$，使得$P^{−1}AP$为对角矩阵？并求出$P$和相应的对角矩阵．', '[]', '
当$k = 0$时，存在可逆矩阵$P$，使得$P^{−1}AP$为对角矩阵。
可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 0 & 1 \\\\
1 & 2 & 1 \\\\
\\end{array} \\right)$，相应的对角矩阵为$Λ = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$。
', '
矩阵$A$的特征多项式为$det(A - λI) = −λ^{3} - λ^{2} + λ + 1$，即$λ^{3} + λ^{2} - λ - 1 = 0$，解得特征值为$λ = 1$（单根）和$λ = −1$（二重根）。
要使$A$可对角化，需要特征值$λ = −1$的几何重数等于其代数重数$2$，即$dim null(A + I) = 2$。
计算


$$
A + I = \\left( \\begin{array}{ccc}
4 & 2 & −2 \\\\
−k & 0 & k \\\\
4 & 2 & −2 \\\\
\\end{array} \\right) .
$$

当$k = 0$时，


$$
A + I = \\left( \\begin{array}{ccc}
4 & 2 & −2 \\\\
0 & 0 & 0 \\\\
4 & 2 & −2 \\\\
\\end{array} \\right) ,
$$

其秩为$1$，零空间维数为$2$，满足可对角化条件。
当$k = 0$时，求解特征向量：

$$
v_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) .
$$

令可逆矩阵$P$由这些特征向量组成：


$$
P = \\left( \\begin{array}{ccc}
1 & 1 & 0 \\\\
0 & 0 & 1 \\\\
1 & 2 & 1 \\\\
\\end{array} \\right) ,
$$

对角矩阵$Λ$由特征值构成：


$$
Λ = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −1 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right) .
$$

验证$P$可逆：


$$
det(P) = −1 \\neq 0.
$$

', 9, 'Mogullzr', '2026-01-29 14:11:24', 9, 'Mogullzr', '2026-01-29 14:11:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1301');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1301');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1301');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1302, '1999年考研数学卷4第18题', '简单', '考研数学1999年卷4真题', '已知线性方程组$\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ ax_{1} + bx_{2} + cx_{3} = 0 \\\\ a^{2}x_{1} + b^{2}x_{2} + c^{2}x_{3} = 0. \\end{cases}$(1) 当$a$,$b$,$c$满足何种关系时，方程组仅有零解？(2) 当$a$,$b$,$c$满足何种关系时，方程组有无穷多组解，并用基础解系表示全部解．', '[]', '
(1) 当$a, b, c$互不相等时，方程组仅有零解。
(2) 当$a, b, c$中至少有两个相等时，方程组有无穷多解：
若$a = b \\neq c$，基础解系为$\\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right)$，全部解为$k \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right)$（$k$为任意常数）若$a = c \\neq b$，基础解系为$\\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$，全部解为$k \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$（$k$为任意常数）若$b = c \\neq a$，基础解系为$\\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$，全部解为$k \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$（$k$为任意常数）若$a = b = c$，基础解系为$\\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$和$\\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$，全部解为$k_{1} \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right) + k_{2} \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$（$k_{1}, k_{2}$为任意常数）
（注：基础解系不唯一，但不同基础解系之间存在线性关系）
', '
线性方程组解的分析
这是一个齐次线性方程组，系数矩阵为范德蒙德矩阵：

$$
A = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
a & b & c \\\\
a^{2} & b^{2} & c^{2} \\\\
\\end{array} \\right)
$$

(1) 仅有零解的条件
齐次线性方程组仅有零解的条件是系数矩阵满秩，即$rank(A) = 3$。
范德蒙德矩阵的行列式为：

$$
det(A) = (b - a)(c - a)(c - b)
$$

当$det(A) \\neq 0$时，矩阵满秩，方程组仅有零解。
所以，当$a, b, c$互不相等时，方程组仅有零解。
(2) 有无穷多解的条件及基础解系
当$det(A) = 0$时，矩阵不满秩，方程组有无穷多解。即当$a, b, c$中至少有两个相等时，方程组有无穷多解。
具体分析如下：
情况1：$a = b \\neq c$
方程组变为：

$$
\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ ax_{1} + ax_{2} + cx_{3} = 0 \\\\ a^{2}x_{1} + a^{2}x_{2} + c^{2}x_{3} = 0. \\end{cases}
$$

解得：$x_{3} = 0$，$x_{2} = −x_{1}$，所以通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right) ,  k ∈ R
$$

基础解系：$\\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
\\end{array} \\right)$
情况2：$a = c \\neq b$
方程组变为：

$$
\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ ax_{1} + bx_{2} + ax_{3} = 0 \\\\ a^{2}x_{1} + b^{2}x_{2} + a^{2}x_{3} = 0. \\end{cases}
$$

解得：$x_{2} = 0$，$x_{3} = −x_{1}$，所以通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right) ,  k ∈ R
$$

基础解系：$\\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$
情况3：$b = c \\neq a$
方程组变为：

$$
\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ ax_{1} + bx_{2} + bx_{3} = 0 \\\\ a^{2}x_{1} + b^{2}x_{2} + b^{2}x_{3} = 0. \\end{cases}
$$

解得：$x_{1} = 0$，$x_{3} = −x_{2}$，所以通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) ,  k ∈ R
$$

基础解系：$\\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$
情况4：$a = b = c$
方程组变为：

$$
\\begin{cases} x_{1} + x_{2} + x_{3} = 0 \\\\ ax_{1} + ax_{2} + ax_{3} = 0 \\\\ a^{2}x_{1} + a^{2}x_{2} + a^{2}x_{3} = 0. \\end{cases}
$$

所有方程等价于$x_{1} + x_{2} + x_{3} = 0$，所以通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = k_{1} \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right) + k_{2} \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) ,  k_{1}, k_{2} ∈ R
$$

基础解系：$\\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
\\end{array} \\right)$和$\\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right)$
', 9, 'Mogullzr', '2026-01-29 14:11:24', 9, 'Mogullzr', '2026-01-29 14:11:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1302');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1302');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1303, '1999年考研数学卷4第19题', '简单', '考研数学1999年卷4真题', '设二维随机变量$(X, Y)$在矩形$G = \\{(x, y)∣0 ≤ x ≤ 2, 0 ≤ y ≤ 1\\}$上服从均匀分布，
试求边长为$X$和$Y$的矩形面积$S$的概率密度$f(s)$．', '[]', '
$f(s) = \\begin{cases} \\frac{1}{2}(\\ln 2 - \\ln s) & 0 < s < 2; \\\\ 0 & 其他. \\end{cases}$
', '
二维随机变量$(X, Y)$的概率密度为

$$
ϕ(x, y) = \\begin{cases} \\frac{1}{2} & 若(x, y) ∈ G; \\\\ 0 & 若(x, y) ∈/ G. \\end{cases}
$$

设$F(s) = P\\{S ≤ s\\}$为$S$的分布函数，则当$s ≤ 0$时，$F(s) = 0$；当$s ≥ 2$时，$F(s) = 1$。

现设$0 < s < 2$，曲线$xy = s$与矩形$G$的上边交于点$(s, 1)$，于是


$$
\\begin{array}{cc}
F(s) & = P\\{S ≤ s\\} = P\\{XY ≤ s\\} \\\\
 & = 1 - P\\{XY > s\\} \\\\
 & = 1 - \\iint_{xy>s} \\frac{1}{2} dx dy \\\\
 & = 1 - \\frac{1}{2} \\int_{s}^{2} dx \\int_{\\frac{s}{x}}^{1} dy \\\\
\\end{array}
$$

因此


$$
f(s) = \\begin{cases} \\frac{1}{2}(\\ln 2 - \\ln s) & 0 < s < 2; \\\\ 0 & 其他. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:11:24', 9, 'Mogullzr', '2026-01-29 14:11:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1303');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1303');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1303');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1304, '1999年考研数学卷4第20题', '简单', '考研数学1999年卷4真题', '已知随机变量$X_{1}$和$X_{2}$的概率分布为
$$
\\begin{array}{c|c|c|c|}
X_{1} & −1 & 0 & 1 \\\\
P & \\frac{1}{4} & \\frac{1}{2} & \\frac{1}{4} \\\\
\\end{array},  \\begin{array}{c|c|c|}
X_{2} & 0 & 1 \\\\
P & \\frac{1}{2} & \\frac{1}{2} \\\\
\\end{array}
$$
且$P\\{X_{1}X_{2} = 0\\} = 1$．(1) 求$X_{1}$和$X_{2}$的联合分布；(2) 问$X_{1}$和$X_{2}$是否独立？为什么？', '[]', '
(1)$X_{1}$和$X_{2}$的联合分布为：


$$
\\begin{array}{c|cc}
 & X_{2} = 0 & X_{2} = 1 \\\\
X_{1} = −1 & \\frac{1}{4} & 0 \\\\
X_{1} = 0 & 0 & \\frac{1}{2} \\\\
X_{1} = 1 & \\frac{1}{4} & 0 \\\\
\\end{array}
$$

(2)$X_{1}$和$X_{2}$不独立。
', '
(1) 已知$P\\{X_{1}X_{2} = 0\\} = 1$，即$X_{1}X_{2} \\neq 0$的概率为 0，因此


$$
P(X_{1} = −1, X_{2} = 1) = 0,  P(X_{1} = 1, X_{2} = 1) = 0
$$

根据边缘分布：


$$
\\begin{array}{cc}
P(X_{1} = −1) & = \\frac{1}{4}  ⇒  P(X_{1} = −1, X_{2} = 0) = \\frac{1}{4}, \\\\
P(X_{1} = 1) & = \\frac{1}{4}  ⇒  P(X_{1} = 1, X_{2} = 0) = \\frac{1}{4}, \\\\
P(X_{2} = 0) & = \\frac{1}{2}  ⇒  P(X_{1} = 0, X_{2} = 0) = 0, \\\\
\\end{array}
$$

因此联合分布如上表。
(2) 对于独立性，检查


$$
P(X_{1} = 0, X_{2} = 0) = 0
$$

而


$$
P(X_{1} = 0)P(X_{2} = 0) = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4} \\neq 0
$$


故不独立。
', 9, 'Mogullzr', '2026-01-29 14:11:25', 9, 'Mogullzr', '2026-01-29 14:11:25', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1304');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1304');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1304');
