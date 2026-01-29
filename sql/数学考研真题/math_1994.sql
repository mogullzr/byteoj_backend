INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (744, '1994年考研数学卷1第1题', '简单', '考研数学1994年卷1真题', '$\\lim_{x→0} cot x (\\frac{1}{\\sin x} - \\frac{1}{x}) =$______．', '[]', '
$\\frac{1}{6}$
', '
首先，将原式化简：


$$
cot x (\\frac{1}{\\sin x} - \\frac{1}{x}) = \\frac{\\cos x}{\\sin x} (\\frac{1}{\\sin x} - \\frac{1}{x}) = \\frac{\\cos x(x - \\sin x)}{x \\sin^{2} x}
$$

当$x → 0$时，$\\cos x → 1$，且$\\sin x ∼ x$，因此


$$
\\frac{\\cos x(x - \\sin x)}{x \\sin^{2} x} ∼ \\frac{1 ⋅ (x - \\sin x)}{x ⋅ x^{2}} = \\frac{x - \\sin x}{x^{3}}
$$

利用$\\sin x$的泰勒展开$\\sin x = x - \\frac{x^{3}}{6} + O(x^{5})$，得


$$
x - \\sin x = \\frac{x^{3}}{6} + O(x^{5})
$$

所以


$$
\\frac{x - \\sin x}{x^{3}} → \\frac{1}{6} 当 x → 0
$$

因此，原极限为$\\frac{1}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:08:58', 9, 'Mogullzr', '2026-01-29 14:08:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '744');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '744');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '744');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (745, '1994年考研数学卷1第2题', '简单', '考研数学1994年卷1真题', '曲面$z - e^{z} + 2xy = 3$在点$(1, 2, 0)$处的切平面方程为 ______．', '[]', '
$2x + y - 4 = 0$
', '
给定曲面方程$z - e^{z} + 2xy = 3$，可改写为$F(x, y, z) = z - e^{z} + 2xy - 3 = 0$。
点$(1, 2, 0)$满足方程，因为$0 - e^{0} + 2 × 1 × 2 - 3 = 0 - 1 + 4 - 3 = 0$。
计算偏导数：
$\\frac{∂F}{∂x} = 2y$，在点$(1, 2, 0)$处值为$2 × 2 = 4$；
$\\frac{∂F}{∂y} = 2x$，在点$(1, 2, 0)$处值为$2 × 1 = 2$；
$\\frac{∂F}{∂z} = 1 - e^{z}$，在点$(1, 2, 0)$处值为$1 - e^{0} = 0$。
梯度向量$∇F(1, 2, 0) = (4, 2, 0)$。
切平面方程为：
$4(x - 1) + 2(y - 2) + 0(z - 0) = 0$，
简化得$4x - 4 + 2y - 4 = 0$，即$4x + 2y - 8 = 0$，
进一步化为$2x + y - 4 = 0$。
因此，切平面方程为$2x + y - 4 = 0$。
', 9, 'Mogullzr', '2026-01-29 14:08:58', 9, 'Mogullzr', '2026-01-29 14:08:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '745');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '745');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '745');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (746, '1994年考研数学卷1第3题', '简单', '考研数学1994年卷1真题', '设$u = e^{−x} \\sin \\frac{x}{y}$，则$\\frac{∂^{2}u}{∂x∂y}$在点$(2, \\frac{1}{π})$处的值为 ______．', '[]', '
$π^{2}e^{−2}$
', '
给定函数$u = e^{−x} \\sin \\frac{x}{y}$，需要求混合偏导数$\\frac{∂^{2}u}{∂x∂y}$在点$(2, \\frac{1}{π})$处的值。
先计算$\\frac{∂u}{∂y}$:


$$
\\frac{∂u}{∂y} = e^{−x} ⋅ \\cos \\frac{x}{y} ⋅ (−\\frac{x}{y^{2}}) = −e^{−x}\\frac{x}{y^{2}} \\cos \\frac{x}{y}
$$

再计算$\\frac{∂}{∂x} (\\frac{∂u}{∂y})$:


$$
\\frac{∂}{∂x} (−e^{−x}\\frac{x}{y^{2}} \\cos \\frac{x}{y}) = −\\frac{1}{y^{2}}\\frac{∂}{∂x} (e^{−x}x \\cos \\frac{x}{y})
$$

令$A = e^{−x}$,$B = x$,$C = \\cos \\frac{x}{y}$，则：


$$
\\frac{∂}{∂x}(ABC) = A^{′}BC + AB^{′}C + ABC^{′}
$$

其中$A^{′} = −e^{−x}$,$B^{′} = 1$,$C^{′} = − \\sin \\frac{x}{y} ⋅ \\frac{1}{y}$。
代入得：


$$
\\frac{∂}{∂x}(ABC) = (−e^{−x})x \\cos \\frac{x}{y} + e^{−x} ⋅ 1 ⋅ \\cos \\frac{x}{y} + e^{−x}x (− \\sin \\frac{x}{y} ⋅ \\frac{1}{y}) = e^{−x}  \\lbrack −x \\cos \\frac{x}{y} + \\cos \\frac{x}{y} - \\frac{x}{y} \\sin \\frac{x}{y} \\rbrack
$$

因此，


$$
\\frac{∂}{∂x} (\\frac{∂u}{∂y}) = −\\frac{1}{y^{2}}e^{−x}  \\lbrack (1 - x) \\cos \\frac{x}{y} - \\frac{x}{y} \\sin \\frac{x}{y} \\rbrack
$$

在点$(2, \\frac{1}{π})$处，有$x = 2$,$y = \\frac{1}{π}$,$e^{−x} = e^{−2}$,$y^{2} = \\frac{1}{π^{2}}$,$\\frac{x}{y} = 2π$,$\\cos \\frac{x}{y} = \\cos 2π = 1$,$\\sin \\frac{x}{y} = \\sin 2π = 0$。
代入得：


$$
\\frac{∂^{2}u}{∂x∂y} = −\\frac{e^{−2}}{\\frac{1}{π^{2}}}  \\lbrack (1 - 2) ⋅ 1 - \\frac{2}{\\frac{1}{π}} ⋅ 0 \\rbrack  = −e^{−2}π^{2} ⋅ (−1) = π^{2}e^{−2}
$$

故值为$π^{2}e^{−2}$。
', 9, 'Mogullzr', '2026-01-29 14:08:58', 9, 'Mogullzr', '2026-01-29 14:08:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '746');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '746');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '746');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (747, '1994年考研数学卷1第4题', '简单', '考研数学1994年卷1真题', '设区域$D$为$x^{2} + y^{2} ≤ R^{2}$，则$\\iint_{D} (\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}}) dxdy =$______．', '[]', '$\\frac{πR^{4}}{4} (\\frac{1}{a^{2}} + \\frac{1}{b^{2}})$
', '区域$D$是圆盘$x^{2} + y^{2} ≤ R^{2}$，使用极坐标变换：令$x = r \\cos θ$，$y = r \\sin θ$，则$dxdy = rdrdθ$，积分区域变为$0 ≤ r ≤ R$，$0 ≤ θ ≤ 2π$。
被积函数化为：


$$
\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}} = r^{2} (\\frac{\\cos^{2} θ}{a^{2}} + \\frac{\\sin^{2} θ}{b^{2}})
$$

积分变为：


$$
\\iint_{D} (\\frac{x^{2}}{a^{2}} + \\frac{y^{2}}{b^{2}}) dxdy = \\int_{0}^{2π} \\int_{0}^{R} r^{3} (\\frac{\\cos^{2} θ}{a^{2}} + \\frac{\\sin^{2} θ}{b^{2}}) drdθ
$$

拆分积分：


$$
\\frac{1}{a^{2}} \\int_{0}^{2π} \\cos^{2} θdθ \\int_{0}^{R} r^{3}dr + \\frac{1}{b^{2}} \\int_{0}^{2π} \\sin^{2} θdθ \\int_{0}^{R} r^{3}dr
$$

计算径向积分：


$$
\\int_{0}^{R} r^{3}dr =  \\lbrack \\frac{r^{4}}{4} \\rbrack _{0}^{R} = \\frac{R^{4}}{4}
$$

计算角度积分：


$$
\\int_{0}^{2π} \\cos^{2} θdθ = \\int_{0}^{2π} \\frac{1 + \\cos 2θ}{2}dθ = \\frac{1}{2} \\int_{0}^{2π} dθ + \\frac{1}{2} \\int_{0}^{2π} \\cos 2θdθ = \\frac{1}{2} ⋅ 2π + 0 = π
$$

同理，


$$
\\int_{0}^{2π} \\sin^{2} θdθ = \\int_{0}^{2π} \\frac{1 - \\cos 2θ}{2}dθ = \\frac{1}{2} \\int_{0}^{2π} dθ - \\frac{1}{2} \\int_{0}^{2π} \\cos 2θdθ = π
$$

代入得：


$$
\\frac{1}{a^{2}} ⋅ π ⋅ \\frac{R^{4}}{4} + \\frac{1}{b^{2}} ⋅ π ⋅ \\frac{R^{4}}{4} = \\frac{πR^{4}}{4} (\\frac{1}{a^{2}} + \\frac{1}{b^{2}})
$$

因此，积分结果为$\\frac{πR^{4}}{4} (\\frac{1}{a^{2}} + \\frac{1}{b^{2}})$。
', 9, 'Mogullzr', '2026-01-29 14:08:58', 9, 'Mogullzr', '2026-01-29 14:08:58', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '747');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '747');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '747');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (748, '1994年考研数学卷1第5题', '简单', '考研数学1994年卷1真题', '已知$α = (1, 2, 3), β = (1, \\frac{1}{2}, \\frac{1}{3})$，设$A = α^{T}β$,
其中$α^{T}$是$α$的转置，则$A^{n} =$______．', '[]', '

$$
3^{n-1}A​
$$

其中

$$
A = \\left( \\begin{array}{ccc}
1 & \\frac{1}{2} & \\frac{1}{3} \\\\
2 & 1 & \\frac{2}{3} \\\\
3 & \\frac{3}{2} & 1 \\\\
\\end{array} \\right) .
$$

', '
已知$A = α^{T}β$，其中


$$
α = (1, 2, 3),  β = (1, \\frac{1}{2}, \\frac{1}{3}) .
$$

计算


$$
βα^{T} = 1 × 1 + \\frac{1}{2} × 2 + \\frac{1}{3} × 3 = 1 + 1 + 1 = 3.
$$

于是，


$$
A^{2} = A ⋅ A = (α^{T}β)(α^{T}β) = α^{T}(βα^{T})β = α^{T} ⋅ 3 ⋅ β = 3α^{T}β = 3A.
$$

类似地，


$$
A^{3} = A^{2} ⋅ A = 3A ⋅ A = 3 ⋅ 3A = 3^{2}A,
$$

依此类推，可得


$$
A^{n} = 3^{n-1}A.
$$

因此，


$$
A^{n} = 3^{n-1}A.
$$

', 9, 'Mogullzr', '2026-01-29 14:08:59', 9, 'Mogullzr', '2026-01-29 14:08:59', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '748');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '748');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '748');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (749, '1994年考研数学卷1第6题', '简单', '考研数学1994年卷1真题', '设$M = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}}  \\frac{\\sin x}{1+x^{2}} \\cos^{4} xdx$,$N = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} (\\sin^{3} x + \\cos^{4} x)dx$, \\goodbreak$P = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} (x^{2} \\sin^{3} x - \\cos^{4} x)dx$，则有', '[''$N < P < M$．'', ''$M < P < N$．'', ''$N < M < P$．'', ''$P < M < N$．'']', "['D']", '首先，分析积分$M = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}} \\frac{\\sin x}{1+x^{2}} \\cos^{4} x dx$。被积函数中，$\\sin x$是奇函数，$\\cos^{4} x$和$\\frac{1}{1+x^{2}}$是偶函数，因此整体为奇函数。在对称区间上，奇函数的积分为零，故$M = 0$。其次，考虑$N = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}}(\\sin^{3} x + \\cos^{4} x) dx$。其中，$\\sin^{3} x$是奇函数，在对称区间上积分为零；$\\cos^{4} x$是偶函数，积分可化为$2 \\int_{0}^{\\frac{π}{2}} \\cos^{4} x dx$。由于$\\cos^{4} x ≥ 0$且在$\\lbrack 0, \\frac{π}{2} \\rbrack$上不恒为零，该积分值为正，故$N > 0$。最后，考虑$P = \\int_{−\\frac{π}{2}}^{\\frac{π}{2}}(x^{2} \\sin^{3} x - \\cos^{4} x) dx$。其中，$x^{2} \\sin^{3} x$是奇函数（因为$x^{2}$为偶函数，$\\sin^{3} x$为奇函数），在对称区间上积分为零；$− \\cos^{4} x$是偶函数，积分可化为$−2 \\int_{0}^{\\frac{π}{2}} \\cos^{4} x dx$，该积分值为负，故$P < 0$。综上，有$P < 0 = M < N$，即$P < M < N$，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:08:59', 9, 'Mogullzr', '2026-01-29 14:08:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '749');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '749');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '749');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (750, '1994年考研数学卷1第7题', '简单', '考研数学1994年卷1真题', '二元函数$f(x, y)$在点$(x_{0}, y_{0})$处两个偏导数$f_{x}^{′}(x_{0}, y_{0})$,$f_{y}^{′}(x_{0}, y_{0})$存在是$f(x, y)$在该点连续的', '[''充分条件但非必要条件．'', ''必要条件而非充分条件．'', ''充分必要条件．'', ''既非充分条件又非必要条件．'']', "['D']", '二元函数在某点偏导数存在并不意味着函数在该点连续。例如，考虑函数$f(x, y) = \\begin{cases} 1 & ifxy \\neq 0 \\\\ 0 & ifxy = 0 \\end{cases}$在点$(0, 0)$处，偏导数$f_{x}^{′}(0, 0) = 0$和$f_{y}^{′}(0, 0) = 0$存在，但函数在$(0, 0)$不连续，因为沿路径$y = x$逼近时极限为 1，不等于函数值 0。反之，函数在某点连续也不意味着偏导数存在。例如，函数$f(x, y) = ∣x∣ + ∣y∣$在点$(0, 0)$连续，但偏导数$f_{x}^{′}(0, 0)$和$f_{y}^{′}(0, 0)$不存在。因此，偏导数存在既不是函数连续的充分条件，也不是必要条件。', 9, 'Mogullzr', '2026-01-29 14:08:59', 9, 'Mogullzr', '2026-01-29 14:08:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '750');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '750');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '750');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (751, '1994年考研数学卷1第8题', '简单', '考研数学1994年卷1真题', '设常数$λ > 0$，且级数$\\sum_{n=1}^{∞} a_{n}^{2}$收敛，则级数$\\sum_{n=1}^{∞}(−1)n\\frac{∣a_{n}∣}{\\sqrt{n^{2}+λ}}$', '[''发散．'', ''条件收敛．'', ''绝对收敛．'', ''收敛性与$λ$有关．'']', "['C']", '已知级数$\\sum_{n=1}^{∞} a_{n}^{2}$收敛，且$λ > 0$。考虑级数$\\sum_{n=1}^{∞}(−1)n\\frac{∣a_{n}∣}{\\sqrt{n^{2}+λ}}$的绝对收敛性，即判断$\\sum_{n=1}^{∞} \\frac{∣a_{n}∣}{\\sqrt{n^{2}+λ}}$是否收敛。由于$\\sqrt{n^{2} + λ} ≥ n$，有$\\frac{∣a_{n}∣}{\\sqrt{n^{2}+λ}} ≤ \\frac{∣a_{n}∣}{n}$。由柯西-施瓦茨不等式，$\\sum_{n=1}^{∞} \\frac{∣a_{n}∣}{n} ≤ (\\sum_{n=1}^{∞} a_{n}^{2})^{1/2} (\\sum_{n=1}^{∞} \\frac{1}{n^{2}})^{1/2} < ∞$，因为$∑ a_{n}^{2}$和$∑ \\frac{1}{n^{2}}$均收敛。因此，$∑ \\frac{∣a_{n}∣}{n}$收敛，由比较判别法，$∑ \\frac{∣a_{n}∣}{\\sqrt{n^{2}+λ}}$收敛，故原级数绝对收敛。收敛性与$λ$无关，故选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:08:59', 9, 'Mogullzr', '2026-01-29 14:08:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '751');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '751');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '751');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (752, '1994年考研数学卷1第9题', '简单', '考研数学1994年卷1真题', '设$\\lim_{x→0} \\frac{a \\tan x+b(1-\\cos x)}{c \\ln(1-2x)+d(1-e^{−x^{2}})} = 2$，
其中$a^{2} + c^{2} \\neq 0$，则必有', '[''$b = 4d$．'', ''$b = −4d$．'', ''$a = 4c$．'', ''$a = −4c$．'']', "['D']", '给定极限$\\lim_{x→0} \\frac{a \\tan x+b(1-\\cos x)}{c \\ln(1-2x)+d(1-e^{−x^{2}})} = 2$且$a^{2} + c^{2} \\neq 0$。由于分母在$x → 0$时趋于 0，分子也必须趋于 0，否则极限不存在或为无穷大。使用泰勒展开分析：分子$a \\tan x + b(1 - \\cos x) ∼ ax + \\frac{b}{2}x^{2}$，分母$c \\ln(1 - 2x) + d(1 - e^{−x^{2}}) ∼ −2cx + (−2c + d)x^{2}$。若$c \\neq 0$，则分母的主要项为$−2cx$，分子主要项必须为$ax$，且极限要求$\\frac{a}{−2c} = 2$，即$a = −4c$。若$c = 0$，则$a \\neq 0$，但分子为$O(x)$，分母为$O(x^{2})$，极限为无穷大，与极限为 2 矛盾。因此$c \\neq 0$且$a = −4c$。选项 A、B、C 均不一定成立，故必有$a = −4c$。', 9, 'Mogullzr', '2026-01-29 14:08:59', 9, 'Mogullzr', '2026-01-29 14:08:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '752');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '752');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '752');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (753, '1994年考研数学卷1第10题', '简单', '考研数学1994年卷1真题', '已知向量组$α_{1}$,$α_{2}$,$α_{3}$,$α_{4}$线性无关，则向量组', '[''$α_{1} + α_{2}$、$α_{2} + α_{3}$、$α_{3} + α_{4}$、$α_{4} + α_{1}$线性无关．'', ''$α_{1} - α_{2}$、$α_{2} - α_{3}$、$α_{3} - α_{4}$、$α_{4} - α_{1}$线性无关．'', ''$α_{1} + α_{2}$、$α_{2} + α_{3}$、$α_{3} + α_{4}$、$α_{4} - α_{1}$线性无关．'', ''$α_{1} + α_{2}$、$α_{2} + α_{3}$、$α_{3} - α_{4}$、$α_{4} - α_{1}$线性无关．'']', "['C']", '已知向量组$α_{1}, α_{2}, α_{3}, α_{4}$线性无关。对于选项C，考虑向量组$α_{1} + α_{2}, α_{2} + α_{3}, α_{3} + α_{4}, α_{4} - α_{1}$。设线性组合$k_{1}(α_{1} + α_{2}) + k_{2}(α_{2} + α_{3}) + k_{3}(α_{3} + α_{4}) + k_{4}(α_{4} - α_{1}) = 0$，整理得$(k_{1} - k_{4})α_{1} + (k_{1} + k_{2})α_{2} + (k_{2} + k_{3})α_{3} + (k_{3} + k_{4})α_{4} = 0$。由于$α_{1}, α_{2}, α_{3}, α_{4}$线性无关，系数必须为零：
$k_{1} - k_{4} = 0$，
$k_{1} + k_{2} = 0$，
$k_{2} + k_{3} = 0$，
$k_{3} + k_{4} = 0$。
解得$k_{1} = k_{4}$，$k_{2} = −k_{1}$，$k_{3} = −k_{2} = k_{1}$，代入第四式得$k_{3} + k_{4} = k_{1} + k_{1} = 2k_{1} = 0$，所以$k_{1} = 0$，进而$k_{2} = 0$，$k_{3} = 0$，$k_{4} = 0$。只有零解，故线性无关。
对于选项A、B、D，类似分析可得存在非零解，线性相关。因此正确答案为C。', 9, 'Mogullzr', '2026-01-29 14:08:59', 9, 'Mogullzr', '2026-01-29 14:08:59', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '753');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '753');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '753');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (754, '1994年考研数学卷1第11题', '简单', '考研数学1994年卷1真题', '设$\\begin{cases} x = \\cos(t^{2}) \\\\ y = t \\cos(t^{2}) - \\int_{1}^{t^{2}} \\frac{1}{2\\sqrt{u}} \\cos udu \\end{cases}$求$\\frac{dy}{dx}$、$\\frac{d^{2}y}{dx^{2}}$在$t = \\sqrt{\\frac{π}{2}}$的值．', '[]', '

$$
\\frac{dy}{dx} = \\sqrt{\\frac{π}{2}},  \\frac{d^{2}y}{dx^{2}} = −\\frac{1}{\\sqrt{2π}}
$$

', '给定参数方程：

$$
x = \\cos(t^{2}),  y = t \\cos(t^{2}) - \\int_{1}^{t^{2}} \\frac{1}{2\\sqrt{u}} \\cos u du
$$

首先求$\\frac{dy}{dx}$，利用公式$\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt}$。
计算$dx/dt$：

$$
\\frac{dx}{dt} = − \\sin(t^{2}) ⋅ 2t = −2t \\sin(t^{2})
$$

计算$dy/dt$：
令$A = t \\cos(t^{2})$，则

$$
\\frac{dA}{dt} = \\cos(t^{2}) + t ⋅ (− \\sin(t^{2}) ⋅ 2t) = \\cos(t^{2}) - 2t^{2} \\sin(t^{2})
$$

令$B = \\int_{1}^{t^{2}} \\frac{1}{2\\sqrt{u}} \\cos u du$，由微积分基本定理：

$$
\\frac{dB}{dt} = \\frac{1}{2\\sqrt{t^{2}}} \\cos(t^{2}) ⋅ 2t = \\frac{1}{2t} \\cos(t^{2}) ⋅ 2t = \\cos(t^{2})
$$

因此，

$$
\\frac{dy}{dt} = \\frac{dA}{dt} - \\frac{dB}{dt} =  \\lbrack \\cos(t^{2}) - 2t^{2} \\sin(t^{2}) \\rbrack  - \\cos(t^{2}) = −2t^{2} \\sin(t^{2})
$$

所以，

$$
\\frac{dy}{dx} = \\frac{−2t^{2} \\sin(t^{2})}{−2t \\sin(t^{2})} = t
$$

在$t = \\sqrt{\\frac{π}{2}}$时，

$$
\\frac{dy}{dx} = \\sqrt{\\frac{π}{2}}
$$

接下来求$\\frac{d^{2}y}{dx^{2}}$，利用公式$\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{d(dy/dx)/dt}{dx/dt}$。
由$\\frac{dy}{dx} = t$，得

$$
\\frac{d}{dt} (\\frac{dy}{dx}) = 1
$$

而$dx/dt = −2t \\sin(t^{2})$，所以

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{1}{−2t \\sin(t^{2})}
$$

在$t = \\sqrt{\\frac{π}{2}}$时，$t^{2} = \\frac{π}{2}$，$\\sin(t^{2}) = \\sin (\\frac{π}{2}) = 1$，因此

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{1}{−2 ⋅ \\sqrt{\\frac{π}{2}} ⋅ 1} = −\\frac{1}{2} ⋅ \\frac{1}{\\sqrt{\\frac{π}{2}}} = −\\frac{1}{2} ⋅ \\sqrt{\\frac{2}{π}} = −\\frac{1}{\\sqrt{2π}}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:00', 9, 'Mogullzr', '2026-01-29 14:09:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '754');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '754');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '754');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (755, '1994年考研数学卷1第12题', '简单', '考研数学1994年卷1真题', '将函数$f(x) = \\frac{1}{4} \\ln \\frac{1+x}{1-x} + \\frac{1}{2} arctan x - x$展开成$x$的幂级数．', '[]', '

$$
f(x) = \\sum_{n=1}^{∞} \\frac{x^{4n+1}}{4n + 1}
$$

', '首先，将$f(x)$拆分为三部分：$\\frac{1}{4} \\ln \\frac{1+x}{1-x}$、$\\frac{1}{2} arctan x$和$−x$。利用已知的幂级数展开：
$\\ln \\frac{1+x}{1-x} = \\ln(1 + x) - \\ln(1 - x) = 2 \\sum_{k=0}^{∞} \\frac{x^{2k+1}}{2k+1}$，所以$\\frac{1}{4} \\ln \\frac{1+x}{1-x} = \\frac{1}{2} \\sum_{k=0}^{∞} \\frac{x^{2k+1}}{2k+1}$。$arctan x = \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n+1}$，所以$\\frac{1}{2} arctan x = \\frac{1}{2} \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n+1}$。$−x$直接写出。
因此，

$$
f(x) = \\frac{1}{2} \\sum_{k=0}^{∞} \\frac{x^{2k+1}}{2k + 1} + \\frac{1}{2} \\sum_{n=0}^{∞}(−1)n\\frac{x^{2n+1}}{2n + 1} - x.
$$

合并级数，考虑$x^{2m+1}$的系数：

$$
a_{2m+1} = \\frac{1}{2} ⋅ \\frac{1}{2m + 1} + \\frac{1}{2}(−1)m\\frac{1}{2m + 1} - δ_{m,0},
$$

其中$δ_{m,0}$是 Kronecker delta函数。简化得：

$$
a_{2m+1} = \\frac{1}{2} ⋅ \\frac{1}{2m + 1}(1 + (−1)m) - δ_{m,0}.
$$

当$m$为奇数时，$1 + (−1)m = 0$，所以$a_{2m+1} = 0$。当$m$为偶数时，设$m = 2n$（$n ≥ 0$），则$a_{4n+1} = \\frac{1}{4n+1} - δ_{n,0}$。当$n = 0$时，$a_{1} = 1 - 1 = 0$；当$n ≥ 1$时，$a_{4n+1} = \\frac{1}{4n+1}$。因此，非零项仅当指数为$4n + 1$且$n ≥ 1$，系数为$\\frac{1}{4n+1}$。故幂级数为：

$$
f(x) = \\sum_{n=1}^{∞} \\frac{x^{4n+1}}{4n + 1}.
$$

该级数在$∣x∣ < 1$内收敛。
', 9, 'Mogullzr', '2026-01-29 14:09:00', 9, 'Mogullzr', '2026-01-29 14:09:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '755');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '755');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '755');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (756, '1994年考研数学卷1第13题', '简单', '考研数学1994年卷1真题', '求$∫ \\frac{dx}{\\sin 2x+2 \\sin x}$．', '[]', '

$$
\\frac{1}{4} \\ln ​\\tan \\frac{x}{2}​ + \\frac{1}{8} \\tan^{2} \\frac{x}{2} + C
$$

', '首先，简化分母：$\\sin 2x + 2 \\sin x = 2 \\sin x \\cos x + 2 \\sin x = 2 \\sin x(\\cos x + 1)$，所以积分化为

$$
∫ \\frac{dx}{\\sin 2x + 2 \\sin x} = ∫ \\frac{dx}{2 \\sin x(\\cos x + 1)} = \\frac{1}{2} ∫ \\frac{dx}{\\sin x(\\cos x + 1)}.
$$

使用万能代换$t = \\tan \\frac{x}{2}$，则$\\sin x = \\frac{2t}{1+t^{2}}$，$\\cos x = \\frac{1-t^{2}}{1+t^{2}}$，$dx = \\frac{2}{1+t^{2}}dt$。代入得

$$
\\frac{1}{2} ∫ \\frac{1}{\\sin x(\\cos x + 1)}dx = \\frac{1}{2} ∫ \\frac{1}{\\frac{2t}{1+t^{2}} (\\frac{1-t^{2}}{1+t^{2}} + 1)} ⋅ \\frac{2}{1 + t^{2}}dt.
$$

计算$\\cos x + 1 = \\frac{1-t^{2}}{1+t^{2}} + 1 = \\frac{2}{1+t^{2}}$，所以

$$
\\sin x(\\cos x + 1) = \\frac{2t}{1 + t^{2}} ⋅ \\frac{2}{1 + t^{2}} = \\frac{4t}{(1 + t^{2})2}.
$$

因此，

$$
\\frac{1}{2} ∫ \\frac{1}{\\frac{4t}{(1+t^{2})2}} ⋅ \\frac{2}{1 + t^{2}}dt = \\frac{1}{2} ∫ \\frac{(1 + t^{2})2}{4t} ⋅ \\frac{2}{1 + t^{2}}dt = \\frac{1}{2} ∫ \\frac{1 + t^{2}}{2t}dt = \\frac{1}{4} ∫ \\frac{1 + t^{2}}{t}dt.
$$

计算积分：

$$
∫ \\frac{1 + t^{2}}{t}dt = ∫ (\\frac{1}{t} + t) dt = \\ln ∣t∣ + \\frac{t^{2}}{2} + C.
$$

所以，

$$
\\frac{1}{4} (\\ln ∣t∣ + \\frac{t^{2}}{2}) + C = \\frac{1}{4} \\ln ∣t∣ + \\frac{1}{8}t^{2} + C.
$$

代回$t = \\tan \\frac{x}{2}$，得

$$
\\frac{1}{4} \\ln ​\\tan \\frac{x}{2}​ + \\frac{1}{8} \\tan^{2} \\frac{x}{2} + C.
$$

此为最终结果。
', 9, 'Mogullzr', '2026-01-29 14:09:00', 9, 'Mogullzr', '2026-01-29 14:09:00', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '756');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '756');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '756');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (757, '1994年考研数学卷1第14题', '简单', '考研数学1994年卷1真题', '计算曲面积分$\\iint_{S} \\frac{xdydz+z^{2}dxdy}{x^{2}+y^{2}+z^{2}}$,
其中$S$是由曲面$x^{2} + y^{2} = R^{2}$及两平面$z = R$,$z = −R$($R > 0$)所围成立体表面的外侧．', '[]', '$\\frac{π^{2}R}{2}$
', '考虑曲面积分$\\iint_{S} \\frac{x dy dz+z^{2} dx dy}{x^{2}+y^{2}+z^{2}}$，其中$S$是由曲面$x^{2} + y^{2} = R^{2}$及平面$z = R$和$z = −R$所围成立体表面的外侧。定义向量场$F = (\\frac{x}{x^{2}+y^{2}+z^{2}}, 0, \\frac{z^{2}}{x^{2}+y^{2}+z^{2}})$，则原积分等于$\\iint_{S} F ⋅ dS$。由于$S$是封闭曲面，应用高斯散度定理，有：

$$
\\iint_{S} F ⋅ dS = \\iiint_{V} ∇ ⋅ F dV,
$$

其中$V$是圆柱体区域$x^{2} + y^{2} ≤ R^{2}, −R ≤ z ≤ R$。计算散度：

$$
∇ ⋅ F = \\frac{∂}{∂x} (\\frac{x}{x^{2} + y^{2} + z^{2}}) + \\frac{∂}{∂y}(0) + \\frac{∂}{∂z} (\\frac{z^{2}}{x^{2} + y^{2} + z^{2}}) .
$$

令$r^{2} = x^{2} + y^{2} + z^{2}$，则：

$$
\\frac{∂}{∂x} (\\frac{x}{r^{2}}) = \\frac{r^{2} - 2x^{2}}{r^{4}},  \\frac{∂}{∂z} (\\frac{z^{2}}{r^{2}}) = \\frac{2z(r^{2} - z^{2})}{r^{4}} = \\frac{2z(x^{2} + y^{2})}{r^{4}}.
$$

所以：

$$
∇ ⋅ F = \\frac{r^{2} - 2x^{2}}{r^{4}} + \\frac{2z(x^{2} + y^{2})}{r^{4}} = \\frac{r^{2} - 2x^{2} + 2z(x^{2} + y^{2})}{r^{4}}.
$$

在柱坐标下，令$x = ρ \\cos θ, y = ρ \\sin θ, z = z$，则$r^{2} = ρ^{2} + z^{2}$，体积元$dV = ρ dρ dθ dz$。代入散度表达式：

$$
∇ ⋅ F = \\frac{ρ^{2} + z^{2} - 2ρ^{2} \\cos^{2} θ + 2zρ^{2}}{(ρ^{2} + z^{2})2}.
$$

体积分为：

$$
\\iiint_{V} ∇ ⋅ F dV = \\int_{z=−R}^{R} \\int_{θ=0}^{2π} \\int_{ρ=0}^{R} \\frac{ρ^{2} + z^{2} - 2ρ^{2} \\cos^{2} θ + 2zρ^{2}}{(ρ^{2} + z^{2})2} ρ dρ dθ dz.
$$

对$θ$积分时，$\\cos 2θ$项和$2zρ^{2}$项积分为零，仅剩：

$$
\\int_{θ=0}^{2π} (ρ^{2} + z^{2} - 2ρ^{2} \\cos^{2} θ) dθ = 2πz^{2}.
$$

因此：

$$
\\iiint_{V} ∇ ⋅ F dV = \\int_{z=−R}^{R} \\int_{ρ=0}^{R} \\frac{2πz^{2}}{(ρ^{2} + z^{2})2} ρ dρ dz = 2π \\int_{ρ=0}^{R} ρ dρ \\int_{z=−R}^{R} \\frac{z^{2}}{(ρ^{2} + z^{2})2} dz.
$$

内层积分：

$$
\\int_{z=−R}^{R} \\frac{z^{2}}{(ρ^{2} + z^{2})2} dz = \\frac{1}{ρ} arctan (\\frac{R}{ρ}) - \\frac{R}{ρ^{2} + R^{2}}.
$$

代入得：

$$
\\iiint_{V} ∇ ⋅ F dV = 2π \\int_{0}^{R} (arctan (\\frac{R}{ρ}) - \\frac{ρR}{ρ^{2} + R^{2}}) dρ.
$$

计算积分：

$$
\\int_{0}^{R} arctan (\\frac{R}{ρ}) dρ = R (\\frac{π}{4} + \\frac{1}{2} \\ln 2) ,  \\int_{0}^{R} \\frac{ρR}{ρ^{2} + R^{2}}dρ = \\frac{R}{2} \\ln 2.
$$

所以：

$$
\\iiint_{V} ∇ ⋅ F dV = 2π  \\lbrack R (\\frac{π}{4} + \\frac{1}{2} \\ln 2) - \\frac{R}{2} \\ln 2 \\rbrack  = 2π ⋅ R ⋅ \\frac{π}{4} = \\frac{π^{2}R}{2}.
$$

因此，曲面积分为$\\frac{π^{2}R}{2}$。
也可直接计算曲面积分：将$S$分为圆柱面$S_{1}$、顶面$S_{2}$($z = R$) 和底面$S_{3}$($z = −R$)。在$S_{1}$上，积分值为$\\frac{π^{2}R}{2}$；在$S_{2}$上，积分值为$πR^{2} \\ln 2$；在$S_{3}$上，积分值为$−πR^{2} \\ln 2$。三部分相加得$\\frac{π^{2}R}{2}$，与散度定理结果一致。
故答案为$\\frac{π^{2}R}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:01', 9, 'Mogullzr', '2026-01-29 14:09:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '757');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '757');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '757');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (758, '1994年考研数学卷1第15题', '简单', '考研数学1994年卷1真题', '设$f(x)$具有二阶连续导数，$f(0) = 0, f^{′}(0) = 1$，且
$$
\\lbrack xy(x + y) - f(x)y \\rbrack dx +  \\lbrack f^{′}(x) + x^{2}y \\rbrack dy = 0
$$
为一全微分方程，求$f(x)$及此全微分方程的通解．', '[]', '$f(x) = x^{2} + \\sin x + 2 \\cos x - 2$，通解为$\\frac{1}{2}x^{2}y^{2} + y(2x + \\cos x - 2 \\sin x) = C$，其中$C$为任意常数。
', '给定方程为全微分方程：

$$
\\lbrack xy(x + y) - f(x)y \\rbrack  dx +  \\lbrack f^{′}(x) + x^{2}y \\rbrack  dy = 0.
$$

记$P(x, y) = xy(x + y) - f(x)y$，$Q(x, y) = f^{′}(x) + x^{2}y$。由全微分条件$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，计算得：

$$
\\frac{∂P}{∂y} = x^{2} + 2xy - f(x),  \\frac{∂Q}{∂x} = f^{′′}(x) + 2xy.
$$

令两者相等，得：

$$
x^{2} + 2xy - f(x) = f^{′′}(x) + 2xy ⇒ f^{′′}(x) + f(x) = x^{2}.
$$

这是一阶非齐次线性微分方程。齐次解为$f_{h}(x) = A \\cos x + B \\sin x$。设特解形式为$f_{p}(x) = ax^{2} + bx + c$，代入得：

$$
2a + ax^{2} + bx + c = x^{2} ⇒ a = 1,  b = 0,  2a + c = 0 ⇒ c = −2.
$$

故特解为$f_{p}(x) = x^{2} - 2$，通解为：

$$
f(x) = A \\cos x + B \\sin x + x^{2} - 2.
$$

利用初始条件$f(0) = 0$，$f^{′}(0) = 1$：

$$
f(0) = A - 2 = 0 ⇒ A = 2,  f^{′}(x) = −A \\sin x + B \\cos x + 2x ⇒ f^{′}(0) = B = 1.
$$

因此，

$$
f(x) = 2 \\cos x + \\sin x + x^{2} - 2.
$$

代入原方程，得：

$$
P(x, y) = xy^{2} - (\\sin x + 2 \\cos x - 2)y,  Q(x, y) = −2 \\sin x + \\cos x + 2x + x^{2}y.
$$

求原函数$U(x, y)$，使得$dU = P dx + Q dy$。由$\\frac{∂U}{∂y} = Q$，积分得：

$$
U(x, y) = ∫ Q dy = (−2 \\sin x + \\cos x + 2x)y + \\frac{1}{2}x^{2}y^{2} + φ(x).
$$

对$x$求偏导：

$$
\\frac{∂U}{∂x} = (−2 \\cos x - \\sin x + 2)y + xy^{2} + φ^{′}(x).
$$

与$P(x, y)$比较：

$$
(−2 \\cos x - \\sin x + 2)y + xy^{2} + φ^{′}(x) = xy^{2} - (\\sin x + 2 \\cos x - 2)y.
$$

两边对应项相等，得$φ^{′}(x) = 0$，即$φ(x)$为常数。取$φ(x) = 0$，则：

$$
U(x, y) = \\frac{1}{2}x^{2}y^{2} + y(2x + \\cos x - 2 \\sin x).
$$

故全微分方程的通解为：

$$
\\frac{1}{2}x^{2}y^{2} + y(2x + \\cos x - 2 \\sin x) = C.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:01', 9, 'Mogullzr', '2026-01-29 14:09:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '758');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '758');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '758');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (759, '1994年考研数学卷1第16题', '简单', '考研数学1994年卷1真题', '设$f(x)$在点$x = 0$的某一邻域内具有二阶连续导数，且$\\lim_{x→0} \\frac{f(x)}{x} = 0$，证明级数$\\sum_{n=1}^{∞} f (\\frac{1}{n})$绝对收敛．', '[]', '
方法一：由$\\lim_{x→0} \\frac{f(x)}{x} = 0$及$f(x)$的连续性得知$f(0) = 0, f^{′}(0) = 0$，再由洛必达法则有

$$
\\lim_{x→0} \\frac{f(x)}{x^{2}} = \\lim_{x→0} \\frac{f^{′}(x)}{2x} = \\lim_{x→0} \\frac{f^{′′}(x)}{2} = \\frac{1}{2}f^{′′}(0)
$$


$$
⇒ \\lim_{x→0} ​\\frac{f(x)}{x^{2}}​ = \\frac{1}{2} ∣f^{′′}(0)∣ ⇒ \\lim_{n→+∞} ​\\frac{f (\\frac{1}{n})}{n^{2}}​ = \\frac{1}{2} ∣f^{′′}(0)∣ .
$$

因$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$收敛，则$\\sum_{n=1}^{∞} ​f (\\frac{1}{n})​$收敛，即$\\sum_{n=1}^{∞} f (\\frac{1}{n})$绝对收敛。

方法二：由$\\lim_{x→0} \\frac{f(x)}{x} = 0$得知$f(0) = 0, f^{′}(0) = 0$，在点$x = 0$由泰勒公式有：

$$
f(x) = f(0) + f^{′}(0)x + \\frac{1}{2}f^{′′}(θx)x^{2} = \\frac{1}{2}f^{′′}(θx)x^{2} (0 < θ < 1, x ∈  \\lbrack −δ, δ \\rbrack ).
$$

因$f(x)$在点$x = 0$的某一邻域内具有二阶连续导数，则$∃δ > 0, f^{′′}(x)$在$x ∈  \\lbrack −δ, δ \\rbrack$有界，即$∃M > 0$，有$∣f^{′′}(x)∣ ≤ M, x ∈  \\lbrack −δ, δ \\rbrack$。从而

$$
∣f(x)∣ = \\frac{1}{2}∣f^{′′}(θx)∣x^{2} ≤ \\frac{1}{2}Mx^{2},  x ∈  \\lbrack −δ, δ \\rbrack .
$$

对此$δ > 0, ∃N, n > N$时，

$$
0 < \\frac{1}{n} < δ ⇒ ​f (\\frac{1}{n})​ ≤ \\frac{1}{2}M\\frac{1}{n^{2}}.
$$

因$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$收敛，则$\\sum_{n=1}^{∞} ​f (\\frac{1}{n})​$收敛，即$\\sum_{n=1}^{∞} f (\\frac{1}{n})$绝对收敛。
', '
方法一：由$\\lim_{x→0} \\frac{f(x)}{x} = 0$及$f(x)$的连续性得知$f(0) = 0, f^{′}(0) = 0$，再由洛必达法则有

$$
\\lim_{x→0} \\frac{f(x)}{x^{2}} = \\lim_{x→0} \\frac{f^{′}(x)}{2x} = \\lim_{x→0} \\frac{f^{′′}(x)}{2} = \\frac{1}{2}f^{′′}(0)
$$


$$
⇒ \\lim_{x→0} ​\\frac{f(x)}{x^{2}}​ = \\frac{1}{2} ∣f^{′′}(0)∣ ⇒ \\lim_{n→+∞} ​\\frac{f (\\frac{1}{n})}{n^{2}}​ = \\frac{1}{2} ∣f^{′′}(0)∣ .
$$

因$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$收敛，则$\\sum_{n=1}^{∞} ​f (\\frac{1}{n})​$收敛，即$\\sum_{n=1}^{∞} f (\\frac{1}{n})$绝对收敛。

方法二：由$\\lim_{x→0} \\frac{f(x)}{x} = 0$得知$f(0) = 0, f^{′}(0) = 0$，在点$x = 0$由泰勒公式有：

$$
f(x) = f(0) + f^{′}(0)x + \\frac{1}{2}f^{′′}(θx)x^{2} = \\frac{1}{2}f^{′′}(θx)x^{2} (0 < θ < 1, x ∈  \\lbrack −δ, δ \\rbrack ).
$$

因$f(x)$在点$x = 0$的某一邻域内具有二阶连续导数，则$∃δ > 0, f^{′′}(x)$在$x ∈  \\lbrack −δ, δ \\rbrack$有界，即$∃M > 0$，有$∣f^{′′}(x)∣ ≤ M, x ∈  \\lbrack −δ, δ \\rbrack$。从而

$$
∣f(x)∣ = \\frac{1}{2}∣f^{′′}(θx)∣x^{2} ≤ \\frac{1}{2}Mx^{2},  x ∈  \\lbrack −δ, δ \\rbrack .
$$

对此$δ > 0, ∃N, n > N$时，

$$
0 < \\frac{1}{n} < δ ⇒ ​f (\\frac{1}{n})​ ≤ \\frac{1}{2}M\\frac{1}{n^{2}}.
$$

因$\\sum_{n=1}^{∞} \\frac{1}{n^{2}}$收敛，则$\\sum_{n=1}^{∞} ​f (\\frac{1}{n})​$收敛，即$\\sum_{n=1}^{∞} f (\\frac{1}{n})$绝对收敛。
', 9, 'Mogullzr', '2026-01-29 14:09:01', 9, 'Mogullzr', '2026-01-29 14:09:01', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '759');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '759');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '759');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (760, '1994年考研数学卷1第17题', '简单', '考研数学1994年卷1真题', '已知点$A$与$B$的直角坐标分别为$(1, 0, 0)$与$(0, 1, 1)$．线段$AB$绕$z$轴旋转一周所围成的旋转曲面为$S$．求由$S$及两平面$z = 0, z = 1$所围成的立体体积．', '[]', '


$$
\\frac{2π}{3}
$$

', '
点$A(1, 0, 0)$和点$B(0, 1, 1)$的线段$AB$的参数方程为：


$$
x = 1 - t,  y = t,  z = t,  t ∈  \\lbrack 0, 1 \\rbrack
$$

线段$AB$绕$z$轴旋转一周形成旋转曲面$S$。对于每个$z$（即$t = z$），点$(x, y)$到$z$轴的距离为：


$$
r(z) = \\sqrt{x^{2} + y^{2}} = \\sqrt{(1 - z)2 + z^{2}} = \\sqrt{1 - 2z + 2z^{2}}
$$

旋转曲面$S$与平面$z = 0$和$z = 1$所围成的立体体积可通过积分计算。对于每个$z$，横截面为圆，面积为$π \\lbrack r(z) \\rbrack 2$，因此体积为：


$$
V = π \\int_{0}^{1} \\lbrack r(z) \\rbrack 2 dz = π \\int_{0}^{1}(1 - 2z + 2z^{2}) dz
$$

计算积分：


$$
\\int_{0}^{1}(1 - 2z + 2z^{2}) dz =  \\lbrack z - z^{2} + \\frac{2}{3}z^{3} \\rbrack _{0}^{1} = 1 - 1 + \\frac{2}{3} = \\frac{2}{3}
$$

所以


$$
V = π ⋅ \\frac{2}{3} = \\frac{2π}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:02', 9, 'Mogullzr', '2026-01-29 14:09:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '760');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '760');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1059', '760');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (761, '1994年考研数学卷1第18题', '简单', '考研数学1994年卷1真题', '设四元线性齐次方程组①为$\\begin{cases} x_{1} + x_{2} = 0 \\\\ x_{2} - x_{4} = 0 \\end{cases}$又已知某线性齐次方程组②的通解为$k_{1}(0, 1, 10) + k_{2}(−1, 2, 2, 1)$．(1) 求线性方程组①的基础解系；(2) 问线性方程组①和②是否有非零公共解？
若有，则求出所有的非零公共解．若没有，则说明理由．', '[]', '
(1) 线性方程组①的基础解系为$(0, 0, 1, 0)T$和$(−1, 1, 0, 1)T$。
(2) 线性方程组①和②有非零公共解，所有非零公共解为$k(−1, 1, 1, 1)T$，其中$k$为非零常数。
', '
(1) 对于线性方程组①：


$$
\\begin{cases} x_{1} + x_{2} = 0 \\\\ x_{2} - x_{4} = 0 \\end{cases}
$$

系数矩阵为


$$
\\left( \\begin{array}{cccc}
1 & 1 & 0 & 0 \\\\
0 & 1 & 0 & −1 \\\\
\\end{array} \\right) .
$$

通过求解，得到$x_{1} = −x_{4}$，$x_{2} = x_{4}$，$x_{3}$为自由变量。因此通解为


$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = x_{3} \\left( \\begin{array}{c}
0 \\\\
0 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + x_{4} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,
$$

基础解系为$ξ_{1} = (0, 0, 1, 0)T$和$ξ_{2} = (−1, 1, 0, 1)T$。
(2) 线性方程组②的通解为$k_{1}(0, 1, 1, 0)T + k_{2}(−1, 2, 2, 1)T$（其中$(0, 1, 10)T$视为$(0, 1, 1, 0)T$的笔误）。设公共解为


$$
v = k_{1}(0, 1, 1, 0)T + k_{2}(−1, 2, 2, 1)T = (−k_{2}, k_{1} + 2k_{2}, k_{1} + 2k_{2}, k_{2})T.
$$

代入方程组①的方程：
$x_{1} + x_{2} = −k_{2} + (k_{1} + 2k_{2}) = k_{1} + k_{2} = 0$，$x_{2} - x_{4} = (k_{1} + 2k_{2}) - k_{2} = k_{1} + k_{2} = 0$。
均得到$k_{1} + k_{2} = 0$，即$k_{1} = −k_{2}$。代入得
$v = k_{2}(−1, 1, 1, 1)T.$当$k_{2} \\neq 0$时，$v$为非零公共解。因此所有非零公共解为$k(−1, 1, 1, 1)T$，其中$k$为非零常数。
', 9, 'Mogullzr', '2026-01-29 14:09:02', 9, 'Mogullzr', '2026-01-29 14:09:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '761');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '761');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (762, '1994年考研数学卷1第19题', '简单', '考研数学1994年卷1真题', '设$A$为$n$阶非零方阵，$A^{∗}$是$A$的伴随矩阵，$A^{T}$是$A$的转置矩阵，
当$A^{∗} = A^{T}$时，证明$∣A∣ \\neq 0$．', '[]', '
证法一：由于$A^{∗} = A^{T}$，根据$A^{∗}$的定义有


$$
A_{ij} = a_{ij} (∀i, j = 1, 2, ⋯  , n),
$$

其中$A_{ij}$是行列式$∣A∣$中$a_{ij}$的代数余子式。由于$A \\neq 0$，不妨设$a_{ij} \\neq 0$，那么


$$
∣A∣ = a_{i1}A_{i1} + a_{i2}A_{i2} + ⋯ + a_{in}A_{in} = a_{i1}^{2} + a_{i2}^{2} + ⋯ + a_{in}^{2} > a_{i}^{2} > 0,
$$

故$∣A∣ \\neq 0$。
证法二：(反证法)若$∣A∣ = 0$，则


$$
AA^{∗} = AA^{T} = ∣A∣E = 0.
$$

设$A$的行向量为$α_{i}(i = 1, 2, ⋯  , n)$，则


$$
α_{i}α_{i}^{T} = a_{i1}^{2} + a_{i2}^{2} + ⋯ + a_{in}^{2} = 0 (i = 1, 2, ⋯  , n).
$$

于是$α_{i} = (a_{i1}, a_{i2}, ⋯  , a_{in}) = 0 (i = 1, 2, ⋯  , n)$。进而有$A = 0$，这与$A$是非零矩阵相矛盾。故$∣A∣ \\neq 0$。
', '
证法一：由于$A^{∗} = A^{T}$，根据$A^{∗}$的定义有


$$
A_{ij} = a_{ij} (∀i, j = 1, 2, ⋯  , n),
$$

其中$A_{ij}$是行列式$∣A∣$中$a_{ij}$的代数余子式。由于$A \\neq 0$，不妨设$a_{ij} \\neq 0$，那么


$$
∣A∣ = a_{i1}A_{i1} + a_{i2}A_{i2} + ⋯ + a_{in}A_{in} = a_{i1}^{2} + a_{i2}^{2} + ⋯ + a_{in}^{2} > a_{i}^{2} > 0,
$$

故$∣A∣ \\neq 0$。
证法二：(反证法)若$∣A∣ = 0$，则


$$
AA^{∗} = AA^{T} = ∣A∣E = 0.
$$

设$A$的行向量为$α_{i}(i = 1, 2, ⋯  , n)$，则


$$
α_{i}α_{i}^{T} = a_{i1}^{2} + a_{i2}^{2} + ⋯ + a_{in}^{2} = 0 (i = 1, 2, ⋯  , n).
$$

于是$α_{i} = (a_{i1}, a_{i2}, ⋯  , a_{in}) = 0 (i = 1, 2, ⋯  , n)$。进而有$A = 0$，这与$A$是非零矩阵相矛盾。故$∣A∣ \\neq 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:02', 9, 'Mogullzr', '2026-01-29 14:09:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '762');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '762');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '762');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (763, '1994年考研数学卷1第20题', '简单', '考研数学1994年卷1真题', '已知$A$,$B$两个事件满足条件$P(AB) = P(\\overline{A}\\overline{B})$，且$P(A) = p$，则$P(B) =$______．', '[]', '
$1 - p$
', '
给定条件$P(AB) = P(\\overline{A}\\overline{B})$，且$P(A) = p$。
由概率性质，$P(\\overline{A}\\overline{B}) = P(\\overline{A∪B}) = 1 - P(A ∪ B)$，
因此条件化为：


$$
P(AB) = 1 - P(A ∪ B)
$$

又因为$P(A ∪ B) = P(A) + P(B) - P(AB)$，
代入得：


$$
P(AB) = 1 -  \\lbrack P(A) + P(B) - P(AB) \\rbrack
$$

简化方程：


$$
P(AB) = 1 - P(A) - P(B) + P(AB)
$$

两边减去$P(AB)$：


$$
0 = 1 - P(A) - P(B)
$$

即：


$$
P(B) = 1 - P(A) = 1 - p
$$

因此，$P(B) = 1 - p$。
', 9, 'Mogullzr', '2026-01-29 14:09:02', 9, 'Mogullzr', '2026-01-29 14:09:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '763');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '763');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (764, '1994年考研数学卷1第21题', '简单', '考研数学1994年卷1真题', '设相互独立的两个随机变量$X$、$Y$具有同一分布律，且$X$的分布律为
$$
\\begin{array}{c|c|c|}
X & 0 & 1 \\\\
P & \\frac{1}{2} & \\frac{1}{2} \\\\
\\end{array}
$$
则随机变量$Z = \\max \\{X, Y\\}$的分布律为 ______．', '[]', '

$$
\\begin{array}{c|c|c|}
Z & 0 & 1 \\\\
P & \\frac{1}{4} & \\frac{3}{4} \\\\
\\end{array}
$$

', '由于$X$和$Y$相互独立且同分布，且$X$和$Y$的取值均为 0 或 1，因此$Z = \\max\\{X, Y\\}$的取值也为 0 或 1。
当$Z = 0$时，等价于$X = 0$且$Y = 0$，故$P(Z = 0) = P(X = 0) ⋅ P(Y = 0) = \\frac{1}{2} × \\frac{1}{2} = \\frac{1}{4}$。
当$Z = 1$时，等价于$X = 1$或$Y = 1$，即至少一个为 1，故$P(Z = 1) = 1 - P(Z = 0) = 1 - \\frac{1}{4} = \\frac{3}{4}$。
因此，$Z$的分布律如上表所示。
', 9, 'Mogullzr', '2026-01-29 14:09:02', 9, 'Mogullzr', '2026-01-29 14:09:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '764');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '764');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '764');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (765, '1994年考研数学卷1第22题', '简单', '考研数学1994年卷1真题', '已知随机变量$(X, Y)$服从二维正态分布，且$X$和$Y$分别服从正态分布$N(1, 3^{2})$和$N(0, 4^{2})$,$X$与$Y$的相关系数$ρ_{XY} = −\\frac{1}{2}$，设$Z = \\frac{X}{3} + \\frac{Y}{2}$．(1) 求$Z$的数学期望$E(Z)$和方差$D(Z)$；(2) 求$X$与$Z$的相关系数$ρ_{XZ}$；(3) 问$X$与$Z$是否相互独立？为什么？', '[]', '
(1)$E(Z) = \\frac{1}{3}$，$D(Z) = 3$
(2)$ρ_{XZ} = 0$
(3)$X$与$Z$相互独立

', '
(1) 计算$Z$的数学期望与方差

$$
E(Z) = E (\\frac{X}{3} + \\frac{Y}{2}) = \\frac{E(X)}{3} + \\frac{E(Y)}{2} = \\frac{1}{3} + \\frac{0}{2} = \\frac{1}{3}.
$$


$$
\\begin{array}{cc}
D(Z) & = D (\\frac{X}{3} + \\frac{Y}{2}) \\\\
 & = (\\frac{1}{3})^{2} D(X) + (\\frac{1}{2})^{2} D(Y) + 2 ⋅ \\frac{1}{3} ⋅ \\frac{1}{2} ⋅ Cov(X, Y). \\\\
\\end{array}
$$

已知：

$$
D(X) = 3^{2} = 9,  D(Y) = 4^{2} = 16,  ρ_{XY} = −\\frac{1}{2},
$$



$$
Cov(X, Y) = ρ_{XY} ⋅ \\sqrt{D(X)} ⋅ \\sqrt{D(Y)} = −\\frac{1}{2} ⋅ 3 ⋅ 4 = −6.
$$

代入得：

$$
D(Z) = \\frac{1}{9} ⋅ 9 + \\frac{1}{4} ⋅ 16 + 2 ⋅ \\frac{1}{3} ⋅ \\frac{1}{2} ⋅ (−6) = 1 + 4 - 2 = 3.
$$


(2) 计算$X$与$Z$的相关系数

$$
ρ_{XZ} = \\frac{Cov(X, Z)}{\\sqrt{D(X) ⋅ D(Z)}}.
$$

先求协方差：

$$
\\begin{array}{cc}
Cov(X, Z) & = Cov (X, \\frac{X}{3} + \\frac{Y}{2}) \\\\
 & = \\frac{1}{3} Cov(X, X) + \\frac{1}{2} Cov(X, Y) \\\\
 & = \\frac{1}{3} ⋅ D(X) + \\frac{1}{2} ⋅ Cov(X, Y) \\\\
\\end{array}
$$

又$D(X) = 9$，$D(Z) = 3$，所以

$$
\\sqrt{D(X) ⋅ D(Z)} = \\sqrt{9 ⋅ 3} = 3\\sqrt{3}.
$$

因此

$$
ρ_{XZ} = \\frac{0}{3\\sqrt{3}} = 0.
$$


(3) 判断$X$与$Z$是否相互独立
由于$(X, Y)$服从二维正态分布，且$Z = \\frac{X}{3} + \\frac{Y}{2}$是$X, Y$的线性组合，因此$(X, Z)$也服从二维正态分布。
在二维正态分布中，相关系数为零意味着不相关，而不相关与相互独立等价。
由$ρ_{XZ} = 0$可得$X$与$Z$相互独立。
', 9, 'Mogullzr', '2026-01-29 14:09:02', 9, 'Mogullzr', '2026-01-29 14:09:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '765');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '765');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '765');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (766, '1994年考研数学卷2第1题', '', '考研数学1994年卷2真题', '/problems/other/744', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (767, '1994年考研数学卷2第2题', '', '考研数学1994年卷2真题', '/problems/other/745', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (768, '1994年考研数学卷2第3题', '', '考研数学1994年卷2真题', '/problems/other/746', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (769, '1994年考研数学卷2第4题', '', '考研数学1994年卷2真题', '/problems/other/747', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (770, '1994年考研数学卷2第5题', '', '考研数学1994年卷2真题', '/problems/other/748', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (771, '1994年考研数学卷2第6题', '', '考研数学1994年卷2真题', '/problems/other/749', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (772, '1994年考研数学卷2第7题', '', '考研数学1994年卷2真题', '/problems/other/750', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (773, '1994年考研数学卷2第8题', '', '考研数学1994年卷2真题', '/problems/other/751', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (774, '1994年考研数学卷2第9题', '', '考研数学1994年卷2真题', '/problems/other/752', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (775, '1994年考研数学卷2第10题', '', '考研数学1994年卷2真题', '/problems/other/753', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (776, '1994年考研数学卷2第11题', '', '考研数学1994年卷2真题', '/problems/other/754', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (777, '1994年考研数学卷2第12题', '', '考研数学1994年卷2真题', '/problems/other/755', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (778, '1994年考研数学卷2第13题', '', '考研数学1994年卷2真题', '/problems/other/756', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (779, '1994年考研数学卷2第14题', '简单', '考研数学1994年卷2真题', '在椭圆$x^{2} + 4y^{2} = 4$上求一点，使其到直线$2x + 3y - 6 = 0$的距离最短．', '[]', '

$$
(\\frac{8}{5}, \\frac{3}{5})
$$

', '问题要求椭圆$x^{2} + 4y^{2} = 4$上到直线$2x + 3y - 6 = 0$距离最短的点。首先，计算直线与椭圆是否有交点。将直线方程$x = 3 - 1.5y$代入椭圆方程，得$6.25y^{2} - 9y + 5 = 0$，判别式为$−44 < 0$，无实根，故直线与椭圆不相交。因此，最小距离不为零。
距离公式为$d = \\frac{∣2x+3y-6∣}{\\sqrt{13}}$。由于直线与椭圆不相交，且椭圆上点均满足$2x + 3y - 6 < 0$（如点$(2, 0)$值为$−2$，点$(0, 1)$值为$−3$），故最小化$∣2x + 3y - 6∣$等价于最大化$2x + 3y - 6$，即最大化$2x + 3y$。
使用拉格朗日乘数法最大化$f(x, y) = 2x + 3y$，约束为$g(x, y) = x^{2} + 4y^{2} - 4 = 0$。设拉格朗日函数$L(x, y, λ) = 2x + 3y - λ(x^{2} + 4y^{2} - 4)$。求偏导：

$$
\\frac{∂L}{∂x} = 2 - 2λx = 0,  \\frac{∂L}{∂y} = 3 - 8λy = 0,  \\frac{∂L}{∂λ} = −(x^{2} + 4y^{2} - 4) = 0.
$$

由前两式得$λx = 1$和$λ = \\frac{3}{8y}$，联立得$y = \\frac{3}{8}x$。代入约束方程：

$$
x^{2} + 4 (\\frac{3}{8}x)^{2} = 4  ⟹  x^{2} + \\frac{9}{16}x^{2} = 4  ⟹  \\frac{25}{16}x^{2} = 4  ⟹  x^{2} = \\frac{64}{25}  ⟹  x = ±\\frac{8}{5}.
$$

对应$y = \\frac{3}{8}x = ±\\frac{3}{5}$。计算$2x + 3y$：当$x = \\frac{8}{5}, y = \\frac{3}{5}$时，值为$5$；当$x = −\\frac{8}{5}, y = −\\frac{3}{5}$时，值为$−5$。故最大值点为$(\\frac{8}{5}, \\frac{3}{5})$。
验证距离：点$(\\frac{8}{5}, \\frac{3}{5})$到直线的距离为$\\frac{∣2⋅\\frac{8}{5}+3⋅\\frac{3}{5}-6∣}{\\sqrt{13}} = \\frac{∣5-6∣}{\\sqrt{13}} = \\frac{1}{\\sqrt{13}}$，小于其他点（如$(0, 1)$距离$\\frac{3}{\\sqrt{13}}$），故该点为所求。
', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '779');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '779');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '779');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (780, '1994年考研数学卷2第15题', '', '考研数学1994年卷2真题', '/problems/other/757', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (781, '1994年考研数学卷2第16题', '', '考研数学1994年卷2真题', '/problems/other/758', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (782, '1994年考研数学卷2第17题', '', '考研数学1994年卷2真题', '/problems/other/759', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (783, '1994年考研数学卷2第18题', '', '考研数学1994年卷2真题', '/problems/other/760', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (784, '1994年考研数学卷2第19题', '简单', '考研数学1994年卷2真题', '（本题满分6分）设$A$是$n$阶方阵，$2$,$4$,$6$,$⋯$,$2n$是$A$的$n$个特征值，$E$是$n$阶单位阵，计算行列式$∣A - 3E∣$的值．', '[]', '

$$
∣A - 3E∣ = −(2n - 3)!!
$$

', '
1. 确定$A - 3E$的特征值
已知$n$阶方阵$A$的$n$个特征值为：

$$
λ_{1} = 2, λ_{2} = 4, λ_{3} = 6, ⋯  , λ_{n} = 2n
$$

根据矩阵多项式特征值的性质，矩阵$A - 3E$的特征值$μ_{i}$为$A$的对应特征值减去 3：

$$
μ_{i} = λ_{i} - 3
$$

将$λ_{i}$代入，可得$A - 3E$的$n$个特征值为：
$μ_{1} = 2 - 3 = −1$$μ_{2} = 4 - 3 = 1$$μ_{3} = 6 - 3 = 3$$μ_{4} = 8 - 3 = 5$$⋯$$μ_{n} = 2n - 3$
2. 计算行列式$∣A - 3E∣$
行列式的值等于所有特征值的乘积：

$$
∣A - 3E∣ = μ_{1} × μ_{2} × μ_{3} × ⋯ × μ_{n}
$$

代入具体数值：

$$
∣A - 3E∣ = (−1) × 1 × 3 × 5 × ⋯ × (2n - 3)
$$

3. 整理结果
观察上述乘积：
第一项是$−1$。从第二项开始，即$1 × 3 × 5 × ⋯ × (2n - 3)$，这是从 1 到$2n - 3$的所有连续奇数的乘积。
在数学中，连续奇数的乘积通常用双阶乘（Double Factorial）符号$!!$表示。即$(2n - 3)!! = 1 × 3 × ⋯ × (2n - 3)$。
因此，最终结果为：

$$
∣A - 3E∣ = −(2n - 3)!!
$$

(注：如果题目不强制要求双阶乘符号，写成乘积形式$(−1) ⋅ 1 ⋅ 3 ⋯ (2n - 3)$也是正确的)

最终答案

$$
∣A - 3E∣ = −(2n - 3)!!
$$

或者写成展开形式：

$$
∣A - 3E∣ = −1 × 3 × 5 × ⋯ × (2n - 3)
$$

', 9, 'Mogullzr', '2026-01-29 14:09:04', 9, 'Mogullzr', '2026-01-29 14:09:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '784');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '784');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (785, '1994年考研数学卷2第20题', '', '考研数学1994年卷2真题', '/problems/other/761', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:05', 9, 'Mogullzr', '2026-01-29 14:09:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (786, '1994年考研数学卷2第21题', '', '考研数学1994年卷2真题', '/problems/other/762', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:05', 9, 'Mogullzr', '2026-01-29 14:09:05', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (787, '1994年考研数学卷3第1题', '简单', '考研数学1994年卷3真题', '若$f(x) = \\begin{cases} \\frac{\\sin 2x+e^{2ax}-1}{x} & x \\neq 0 \\\\ a & x = 0 \\end{cases}$在$(−∞, +∞)$上连续，则$a =$______．', '[]', '
-2
', '
函数$f(x)$在$x = 0$处连续，因此需满足：


$$
\\lim_{x→0} f(x) = f(0) = a
$$

即计算极限：


$$
\\lim_{x→0} \\frac{\\sin 2x + e^{2ax} - 1}{x}
$$

当$x → 0$时，该极限为$\\frac{0}{0}$型不定式。使用等价无穷小替换：$\\sin 2x ∼ 2x$，$e^{2ax} - 1 ∼ 2ax$，代入得：


$$
\\lim_{x→0} \\frac{2x + 2ax}{x} = \\lim_{x→0} \\frac{2x(1 + a)}{x} = 2(1 + a)
$$

令极限等于$a$：


$$
2(1 + a) = a
$$

解得：


$$
2 + 2a = a  ⟹  a = −2
$$

因此，$a = −2$。
', 9, 'Mogullzr', '2026-01-29 14:09:07', 9, 'Mogullzr', '2026-01-29 14:09:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '787');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '787');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '787');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (788, '1994年考研数学卷3第2题', '简单', '考研数学1994年卷3真题', '设函数$y = y(x)$由参数方程$\\begin{cases} x = t - \\ln(1 + t) \\\\ y = t^{3} + t^{2} \\end{cases}$所确定，则$\\frac{d^{2}y}{dx^{2}} =$______．', '[]', '
$\\frac{(6t + 5)(1 + t)}{t}$或等价形式如$\\frac{6t^{2} + 11t + 5}{t}$或$6t + 11 + \\frac{5}{t}$
', '
给定参数方程：


$$
x = t - \\ln(1 + t),  y = t^{3} + t^{2}
$$

首先求一阶导数$\\frac{dy}{dx}$。
计算$\\frac{dx}{dt}$和$\\frac{dy}{dt}$：


$$
\\frac{dx}{dt} = \\frac{d}{dt} \\lbrack t - \\ln(1 + t) \\rbrack  = 1 - \\frac{1}{1 + t} = \\frac{t}{1 + t}
$$



$$
\\frac{dy}{dt} = \\frac{d}{dt} \\lbrack t^{3} + t^{2} \\rbrack  = 3t^{2} + 2t
$$

则一阶导数为：


$$
\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt} = \\frac{3t^{2} + 2t}{\\frac{t}{1+t}} = (3t^{2} + 2t) ⋅ \\frac{1 + t}{t} = (3t + 2)(1 + t) = 3t^{2} + 5t + 2
$$

接下来求二阶导数$\\frac{d^{2}y}{dx^{2}}$：


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{dy}{dx}) = \\frac{\\frac{d}{dt} (\\frac{dy}{dx})}{\\frac{dx}{dt}}
$$

其中：


$$
\\frac{d}{dt} (\\frac{dy}{dx}) = \\frac{d}{dt}(3t^{2} + 5t + 2) = 6t + 5
$$

代入得：


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{6t + 5}{\\frac{t}{1+t}} = (6t + 5) ⋅ \\frac{1 + t}{t} = \\frac{(6t + 5)(1 + t)}{t}
$$

该结果可简化为$\\frac{6t^{2}+11t+5}{t}$或$6t + 11 + \\frac{5}{t}$。
', 9, 'Mogullzr', '2026-01-29 14:09:07', 9, 'Mogullzr', '2026-01-29 14:09:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '788');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '788');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '788');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (789, '1994年考研数学卷3第3题', '简单', '考研数学1994年卷3真题', '$\\frac{d}{dx}  \\lbrack \\int_{0}^{\\cos 3x} f(t)dt \\rbrack  =$______．', '[]', '$−3 \\sin 3x ⋅ f(\\cos 3x)$
', '设$u = \\cos 3x$，则原函数为

$$
G(x) = \\int_{0}^{u} f(t) dt.
$$

根据微积分基本定理，

$$
\\frac{dG}{du} = f(u) = f(\\cos 3x).
$$

同时，

$$
\\frac{du}{dx} = \\frac{d}{dx}(\\cos 3x) = −3 \\sin 3x.
$$

由链式法则，

$$
\\frac{dG}{dx} = \\frac{dG}{du} ⋅ \\frac{du}{dx} = f(\\cos 3x) ⋅ (−3 \\sin 3x) = −3 \\sin 3x ⋅ f(\\cos 3x).
$$

因此，导数为

$$
−3 \\sin 3x ⋅ f(\\cos 3x).
$$

', 9, 'Mogullzr', '2026-01-29 14:09:07', 9, 'Mogullzr', '2026-01-29 14:09:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '789');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '789');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '789');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (790, '1994年考研数学卷3第4题', '简单', '考研数学1994年卷3真题', '$∫ x^{3}e^{x^{2}}dx =$______．', '[]', '$\\frac{1}{2}e^{x^{2}}(x^{2} - 1) + C$
', '考虑积分$∫ x^{3}e^{x^{2}} dx$。令$u = x^{2}$，则$du = 2x dx$，即$x dx = \\frac{du}{2}$。将积分改写为：

$$
∫ x^{3}e^{x^{2}} dx = ∫ x^{2} ⋅ x ⋅ e^{x^{2}} dx = ∫ ue^{u} ⋅ \\frac{du}{2} = \\frac{1}{2} ∫ ue^{u} du.
$$

现在计算$∫ ue^{u} du$，使用分部积分法。设$v = u$，$dw = e^{u} du$，则$dv = du$，$w = e^{u}$。代入分部积分公式：

$$
∫ ue^{u} du = ue^{u} - ∫ e^{u} du = ue^{u} - e^{u} + C = e^{u}(u - 1) + C.
$$

代回$u = x^{2}$，得到：

$$
\\frac{1}{2} ∫ ue^{u} du = \\frac{1}{2}e^{x^{2}}(x^{2} - 1) + C.
$$

因此，积分结果为$\\frac{1}{2}e^{x^{2}}(x^{2} - 1) + C$。验证求导：对$\\frac{1}{2}e^{x^{2}}(x^{2} - 1)$求导，得到$x^{3}e^{x^{2}}$，符合原被积函数。
', 9, 'Mogullzr', '2026-01-29 14:09:07', 9, 'Mogullzr', '2026-01-29 14:09:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '790');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '790');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '790');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (791, '1994年考研数学卷3第5题', '简单', '考研数学1994年卷3真题', '微分方程$ydx + (x^{2} - 4x)dy = 0$的通解为 ______．', '[]', '
$y^{4} = C\\frac{x}{x-4}$，其中$C$为任意常数。
', '
给定微分方程$y dx + (x^{2} - 4x) dy = 0$，首先改写为


$$
\\frac{dy}{dx} = −\\frac{y}{x^{2} - 4x}
$$

因式分解分母$x^{2} - 4x = x(x - 4)$，得


$$
\\frac{dy}{dx} = −\\frac{y}{x(x - 4)}
$$

分离变量：


$$
\\frac{dy}{y} = −\\frac{dx}{x(x - 4)}
$$

对右边分式进行部分分式分解：


$$
\\frac{1}{x(x - 4)} = \\frac{A}{x} + \\frac{B}{x - 4}
$$

解得$A = −\\frac{1}{4}$,$B = \\frac{1}{4}$，所以


$$
−\\frac{1}{x(x - 4)} = \\frac{1}{4} (\\frac{1}{x} - \\frac{1}{x - 4})
$$

代入方程：


$$
\\frac{dy}{y} = \\frac{1}{4} (\\frac{1}{x} - \\frac{1}{x - 4}) dx
$$

积分两边：


$$
∫ \\frac{dy}{y} = \\frac{1}{4} ∫ (\\frac{1}{x} - \\frac{1}{x - 4}) dx
$$



$$
\\ln ∣y∣ = \\frac{1}{4} (\\ln ∣x∣ - \\ln ∣x - 4∣) + C_{1}
$$



$$
\\ln ∣y∣ = \\frac{1}{4} \\ln ​\\frac{x}{x - 4}​ + C_{1}
$$

令$C = e^{4C_{1}}$，则


$$
∣y∣^{4} = ​C\\frac{x}{x - 4}​
$$

因此通解为


$$
y^{4} = C\\frac{x}{x - 4}
$$

其中$C$为任意常数。当$C = 0$时，对应解$y = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:07', 9, 'Mogullzr', '2026-01-29 14:09:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '791');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '791');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '791');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (792, '1994年考研数学卷3第6题', '简单', '考研数学1994年卷3真题', '设$\\lim_{x→0} \\frac{\\ln(1+x)-(ax+bx^{2})}{x^{2}} = 2$，则', '[''$a = 1, b = −\\\\frac{5}{2}$．'', ''$a = 0, b = −2$．'', ''$a = 0, b = −\\\\frac{5}{2}$．'', ''$a = 1, b = −2$．'']', "['A']", '
给定极限

$$
\\lim_{x→0} \\frac{\\ln(1 + x) - (ax + bx^{2})}{x^{2}} = 2,
$$
首先将$\\ln(1 + x)$展开为泰勒级数：

$$
\\ln(1 + x) = x - \\frac{x^{2}}{2} + \\frac{x^{3}}{3} - ⋯  .
$$
代入分子得

$$
\\ln(1 + x) - ax - bx^{2} = (1 - a)x + (−\\frac{1}{2} - b) x^{2} + \\frac{x^{3}}{3} - ⋯  .
$$
除以$x^{2}$后为

$$
\\frac{1 - a}{x} + (−\\frac{1}{2} - b) + \\frac{x}{3} - ⋯  .
$$
为使极限存在，必须使$\\frac{1-a}{x}$的系数为零，即

$$
1 - a = 0,
$$
解得$a = 1$。代入$a = 1$，表达式变为

$$
\\frac{\\ln(1 + x) - x - bx^{2}}{x^{2}} = − (\\frac{1}{2} + b) + \\frac{x}{3} - ⋯  .
$$
取极限得

$$
− (\\frac{1}{2} + b) = 2,
$$
解得

$$
b = −\\frac{5}{2}.
$$
因此$a = 1,  b = −\\frac{5}{2}$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:09:08', 9, 'Mogullzr', '2026-01-29 14:09:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '792');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '792');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '792');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (793, '1994年考研数学卷3第7题', '简单', '考研数学1994年卷3真题', '设$f(x) = \\begin{cases} \\frac{2}{3}x^{3} & x ≤ 1 \\\\ x^{2} & x > 1 \\end{cases}$则$f(x)$在$x = 1$处', '[''左、右导数都存在．'', ''左导数存在，但右导数不存在．'', ''左导数不存在，但右导数存在．'', ''左、右导数都不存在．'']', "['B']", '
函数$f(x)$在$x = 1$处定义为

$$
f(1) = \\frac{2}{3} × 1^{3} = \\frac{2}{3}.
$$
左导数定义为

$$
f_{−}^{′}(1) = \\lim_{h→0^{-}} \\frac{f(1 + h) - f(1)}{h}.
$$
当$h → 0^{-}$时，$1 + h < 1$，故

$$
f(1 + h) = \\frac{2}{3}(1 + h)3.
$$
计算得：

$$
\\begin{array}{cc}
f_{−}^{′}(1) & = \\lim_{h→0^{-}} \\frac{\\frac{2}{3}(1 + h)3 - \\frac{2}{3}}{h} \\\\
 & = \\lim_{h→0^{-}} \\frac{2}{3} ⋅ \\frac{(1 + h)3 - 1}{h} \\\\
 & = \\lim_{h→0^{-}} \\frac{2}{3} ⋅ \\frac{3h + 3h^{2} + h^{3}}{h} \\\\
 & = \\frac{2}{3} × 3 = 2. \\\\
\\end{array}
$$
左导数存在且为$2$。右导数定义为

$$
f_{+}^{′}(1) = \\lim_{h→0^{+}} \\frac{f(1 + h) - f(1)}{h}.
$$
当$h → 0^{+}$时，$1 + h > 1$，故

$$
f(1 + h) = (1 + h)2.
$$
计算得：

$$
\\begin{array}{cc}
f_{+}^{′}(1) & = \\lim_{h→0^{+}} \\frac{(1 + h)2 - \\frac{2}{3}}{h} \\\\
 & = \\lim_{h→0^{+}} \\frac{1 + 2h + h^{2} - \\frac{2}{3}}{h} \\\\
 & = \\lim_{h→0^{+}} \\frac{\\frac{1}{3} + 2h + h^{2}}{h} \\\\
\\end{array}
$$
当$h → 0^{+}$时，$\\frac{1}{3h} → +∞$，故极限不存在。因此右导数不存在。综上，左导数存在，右导数不存在，对应选项B。', 9, 'Mogullzr', '2026-01-29 14:09:08', 9, 'Mogullzr', '2026-01-29 14:09:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '793');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '793');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '793');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (794, '1994年考研数学卷3第8题', '简单', '考研数学1994年卷3真题', '设$y = f(x)$是满足微分方程$y^{′′} + y^{′} - e^{\\sin x} = 0$的解，且$f^{′}(x_{0}) = 0$，则$f(x)$在', '[''$x_{0}$的某个邻域内单调增加．'', ''$x_{0}$的某个邻域内单调减少．'', ''$x_{0}$处取得极小值．'', ''$x_{0}$处取得极大值．'']', "['C']", '
由微分方程$y^{′′} + y^{′} - e^{\\sin x} = 0$可得

$$
y^{′′} = e^{\\sin x} - y^{′}.
$$
在点$x_{0}$处，已知$f^{′}(x_{0}) = 0$，代入得

$$
f^{′′}(x_{0}) = e^{\\sin x_{0}} - f^{′}(x_{0}) = e^{\\sin x_{0}}.
$$
由于$e^{\\sin x_{0}} > 0$恒成立，因此$f^{′′}(x_{0}) > 0$。
结合$f^{′}(x_{0}) = 0$，根据极值的二阶导数判别法，函数$f(x)$在$x_{0}$处取得极小值。选项 A 和 B 涉及邻域内的单调性，但由于在$x_{0}$处取得极小值，邻域内的单调性可能变化，故不选 A 或 B。
选项 D 表示极大值，与结论不符。
因此正确选项为 C。', 9, 'Mogullzr', '2026-01-29 14:09:08', 9, 'Mogullzr', '2026-01-29 14:09:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '794');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '794');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '794');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (795, '1994年考研数学卷3第9题', '简单', '考研数学1994年卷3真题', '曲线$y = e^{\\frac{1}{x^{2}}} arctan \\frac{x^{2}+x+1}{(x+1)(x-2)}$的渐近线有', '[''1条'', ''2条'', ''3条'', ''4条'']', "['B']", '
首先，考虑水平渐近线。
当$x → ∞$或$x → −∞$时，

$$
e^{\\frac{1}{x^{2}}} → 1,
$$
且

$$
\\frac{x^{2} + x + 1}{(x + 1)(x - 2)} → 1,
$$
因此

$$
arctan \\frac{x^{2} + x + 1}{(x + 1)(x - 2)} → arctan 1 = \\frac{π}{4}.
$$
故$y → \\frac{π}{4}$，存在水平渐近线

$$
y = \\frac{π}{4}.
$$
其次，考虑垂直渐近线。
函数在$x = −1$、$x = 0$、$x = 2$处未定义。
在$x = −1$和$x = 2$处，极限为有限值，无垂直渐近线。
在$x = 0$处，

$$
e^{\\frac{1}{x^{2}}} → ∞,
$$
且

$$
arctan \\frac{x^{2} + x + 1}{(x + 1)(x - 2)} → arctan (−\\frac{1}{2})
$$
为有限值，故$y → ∞$（具体为$−∞$），存在垂直渐近线

$$
x = 0.
$$
最后，考虑斜渐近线。
由于存在水平渐近线，当$x → ±∞$时无斜渐近线。因此，渐近线共有 2 条。', 9, 'Mogullzr', '2026-01-29 14:09:08', 9, 'Mogullzr', '2026-01-29 14:09:08', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '795');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '795');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '795');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (796, '1994年考研数学卷3第10题', '', '考研数学1994年卷3真题', '/problems/other/749', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:08', 9, 'Mogullzr', '2026-01-29 14:09:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (797, '1994年考研数学卷3第11题', '简单', '考研数学1994年卷3真题', '设$y = f(x + y)$，其中$f$具有二阶导数，且其一阶导数不等于$1$，求$\\frac{d^{2}y}{dx^{2}}$．', '[]', '

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{f^{′′}(x + y)}{ \\lbrack 1 - f^{′}(x + y) \\rbrack 3}
$$

', '给定$y = f(x + y)$，其中$f$具有二阶导数，且$f^{′} \\neq 1$。设$u = x + y$，则$y = f(u)$。对两边关于$x$求一阶导数：

$$
\\frac{dy}{dx} = f^{′}(u) ⋅ \\frac{du}{dx} = f^{′}(u) ⋅ (1 + \\frac{dy}{dx})
$$

解得：

$$
\\frac{dy}{dx} = \\frac{f^{′}(u)}{1 - f^{′}(u)}
$$

再对两边关于$x$求二阶导数：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{f^{′}(u)}{1 - f^{′}(u)})
$$

使用链式法则和商法则，令$v = f^{′}(u)$，则：

$$
\\frac{d}{dx} (\\frac{v}{1 - v}) = \\frac{v^{′}}{(1 - v)2}
$$

其中$v^{′} = \\frac{dv}{dx} = f^{′′}(u) ⋅ \\frac{du}{dx} = f^{′′}(u) ⋅ (1 + \\frac{dy}{dx})$。代入一阶导数结果：

$$
1 + \\frac{dy}{dx} = 1 + \\frac{f^{′}(u)}{1 - f^{′}(u)} = \\frac{1}{1 - f^{′}(u)}
$$

所以：

$$
v^{′} = f^{′′}(u) ⋅ \\frac{1}{1 - f^{′}(u)}
$$

代入二阶导数：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{f^{′′}(u) ⋅ \\frac{1}{1-f^{′}(u)}}{ \\lbrack 1 - f^{′}(u) \\rbrack 2} = \\frac{f^{′′}(u)}{ \\lbrack 1 - f^{′}(u) \\rbrack 3}
$$

将$u = x + y$代回，得：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{f^{′′}(x + y)}{ \\lbrack 1 - f^{′}(x + y) \\rbrack 3}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:08', 9, 'Mogullzr', '2026-01-29 14:09:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '797');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '797');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '797');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (798, '1994年考研数学卷3第12题', '简单', '考研数学1994年卷3真题', '计算$\\int_{0}^{1} x(1 - x^{4})23​dx$．', '[]', '$\\frac{3π}{32}$
', '
计算积分


$$
\\int_{0}^{1} x(1 - x^{4})23​ dx
$$

令$x^{2} = \\sin θ$，则


$$
2x dx = \\cos θ dθ
$$

即


$$
x dx = \\frac{1}{2} \\cos θ dθ
$$

当$x = 0$时，$θ = 0$；当$x = 1$时，$θ = \\frac{π}{2}$。
代入积分得：


$$
\\begin{array}{cc}
\\int_{0}^{1} x(1 - x^{4})23​ dx & = \\int_{0}^{\\frac{π}{2}} \\frac{1}{2} \\cos θ ⋅ (1 - \\sin^{2} θ)23​ dθ \\\\
 & = \\frac{1}{2} \\int_{0}^{\\frac{π}{2}} \\cos θ ⋅ \\cos^{3} θ dθ \\\\
\\end{array}
$$

计算$\\int_{0}^{\\frac{π}{2}} \\cos^{4} θ dθ$。利用倍角公式：


$$
\\begin{array}{cc}
\\cos^{4} θ & = (\\frac{1 + \\cos 2θ}{2})^{2} \\\\
 & = \\frac{1}{4} (1 + 2 \\cos 2θ + \\cos^{2} 2θ) \\\\
 & = \\frac{1}{4} (1 + 2 \\cos 2θ + \\frac{1 + \\cos 4θ}{2}) \\\\
\\end{array}
$$

积分得：


$$
\\begin{array}{cc}
\\int_{0}^{\\frac{π}{2}} \\cos^{4} θ dθ & = \\int_{0}^{\\frac{π}{2}} (\\frac{3}{8} + \\frac{1}{2} \\cos 2θ + \\frac{1}{8} \\cos 4θ) dθ \\\\
 & =  \\lbrack \\frac{3}{8}θ + \\frac{1}{4} \\sin 2θ + \\frac{1}{32} \\sin 4θ \\rbrack _{0}^{\\frac{π}{2}} \\\\
 & = \\frac{3}{8} ⋅ \\frac{π}{2} \\\\
\\end{array}
$$

因此，


$$
\\frac{1}{2} \\int_{0}^{\\frac{π}{2}} \\cos^{4} θ dθ = \\frac{1}{2} ⋅ \\frac{3π}{16} = \\frac{3π}{32}
$$

故积分值为$\\frac{3π}{32}$。
', 9, 'Mogullzr', '2026-01-29 14:09:09', 9, 'Mogullzr', '2026-01-29 14:09:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '798');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '798');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '798');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (799, '1994年考研数学卷3第13题', '简单', '考研数学1994年卷3真题', '计算$\\lim_{n→∞} \\tan^{n} (\\frac{π}{4} + \\frac{2}{n})$．', '[]', '$e^{4}$
', '
考虑极限


$$
\\lim_{n→∞} \\tan^{n} (\\frac{π}{4} + \\frac{2}{n})
$$

令


$$
t = \\tan (\\frac{2}{n})
$$

则


$$
\\tan (\\frac{π}{4} + \\frac{2}{n}) = \\frac{1 + t}{1 - t}
$$

当$n → ∞$时，$\\frac{2}{n} → 0$，故


$$
t ≈ \\frac{2}{n}
$$

因此，原极限化为


$$
\\lim_{n→∞} (\\frac{1 + \\frac{2}{n}}{1 - \\frac{2}{n}})^{n}
$$

令


$$
y = (\\frac{1 + \\frac{2}{n}}{1 - \\frac{2}{n}})^{n}
$$

取自然对数：


$$
\\ln y = n \\ln (\\frac{1 + \\frac{2}{n}}{1 - \\frac{2}{n}}) = n  \\lbrack \\ln (1 + \\frac{2}{n}) - \\ln (1 - \\frac{2}{n}) \\rbrack
$$

利用泰勒展开：


$$
\\ln(1 + x) ≈ x - \\frac{x^{2}}{2} + \\frac{x^{3}}{3} - ⋯
$$



$$
\\ln(1 - x) ≈ −x - \\frac{x^{2}}{2} - \\frac{x^{3}}{3} - ⋯
$$

代入$x = \\frac{2}{n}$，得：


$$
\\ln (\\frac{1 + \\frac{2}{n}}{1 - \\frac{2}{n}}) ≈ \\frac{4}{n} + O (\\frac{1}{n^{3}})
$$

故


$$
\\ln y ≈ n ⋅ \\frac{4}{n} = 4
$$

因此


$$
y → e^{4}
$$

即使考虑$\\tan (\\frac{2}{n})$的高阶项，极限仍为$e^{4}$。
所以，原极限为


$$
e^{4}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:09', 9, 'Mogullzr', '2026-01-29 14:09:09', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '799');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '799');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '799');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (800, '1994年考研数学卷3第14题', '', '考研数学1994年卷3真题', '/problems/other/756', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:09', 9, 'Mogullzr', '2026-01-29 14:09:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (801, '1994年考研数学卷3第15题', '简单', '考研数学1994年卷3真题', '如图，设曲线方程为$y = x^{2} + \\frac{1}{2}$，梯形$OABC$的面积为$D$，
曲边梯形$OABC$的面积为$D_{1}$，点$A$的坐标为$(a, 0)$（$a > 0$）．证明：$\\frac{D}{D_{1}} < \\frac{3}{2}$．
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/3e0edeb69577480f8f5f10eeee6beaa3.jpg)
', '[]', '
设点$O(0, 0)$，$A(a, 0)$（$a > 0$），$B(a, a^{2} + \\frac{1}{2})$，$C(0, \\frac{1}{2})$。梯形$OABC$的平行边为$OC$和$AB$，长度分别为$\\frac{1}{2}$和$a^{2} + \\frac{1}{2}$，高为$a$，其面积为：

$$
D = \\frac{1}{2} (\\frac{1}{2} + a^{2} + \\frac{1}{2}) a = \\frac{a}{2}(a^{2} + 1).
$$

曲边梯形$OABC$为由曲线$y = x^{2} + \\frac{1}{2}$、直线$x = a$、x 轴和 y 轴围成的区域，其面积为：

$$
D_{1} = \\int_{0}^{a} (x^{2} + \\frac{1}{2}) dx =  \\lbrack \\frac{1}{3}x^{3} + \\frac{1}{2}x \\rbrack _{0}^{a} = \\frac{1}{3}a^{3} + \\frac{1}{2}a.
$$

计算比值：

$$
\\frac{D}{D_{1}} = \\frac{\\frac{a}{2}(a^{2} + 1)}{\\frac{1}{3}a^{3} + \\frac{1}{2}a} = \\frac{\\frac{1}{2}a(a^{2} + 1)}{\\frac{1}{2}a (\\frac{2}{3}a^{2} + 1)} = \\frac{a^{2} + 1}{\\frac{2}{3}a^{2} + 1} = \\frac{3(a^{2} + 1)}{2a^{2} + 3}.
$$

需证$\\frac{3(a^{2}+1)}{2a^{2}+3} < \\frac{3}{2}$。由于$a > 0$，分母$2a^{2} + 3 > 0$，不等式等价于：

$$
\\frac{a^{2} + 1}{2a^{2} + 3} < \\frac{1}{2}.
$$

交叉相乘得：

$$
2(a^{2} + 1) < 2a^{2} + 3,
$$

即$2a^{2} + 2 < 2a^{2} + 3$，化简得$2 < 3$，恒成立。因此，$\\frac{D}{D_{1}} < \\frac{3}{2}$得证。
', '
设点$O(0, 0)$，$A(a, 0)$（$a > 0$），$B(a, a^{2} + \\frac{1}{2})$，$C(0, \\frac{1}{2})$。梯形$OABC$的平行边为$OC$和$AB$，长度分别为$\\frac{1}{2}$和$a^{2} + \\frac{1}{2}$，高为$a$，其面积为：

$$
D = \\frac{1}{2} (\\frac{1}{2} + a^{2} + \\frac{1}{2}) a = \\frac{a}{2}(a^{2} + 1).
$$

曲边梯形$OABC$为由曲线$y = x^{2} + \\frac{1}{2}$、直线$x = a$、x 轴和 y 轴围成的区域，其面积为：

$$
D_{1} = \\int_{0}^{a} (x^{2} + \\frac{1}{2}) dx =  \\lbrack \\frac{1}{3}x^{3} + \\frac{1}{2}x \\rbrack _{0}^{a} = \\frac{1}{3}a^{3} + \\frac{1}{2}a.
$$

计算比值：

$$
\\frac{D}{D_{1}} = \\frac{\\frac{a}{2}(a^{2} + 1)}{\\frac{1}{3}a^{3} + \\frac{1}{2}a} = \\frac{\\frac{1}{2}a(a^{2} + 1)}{\\frac{1}{2}a (\\frac{2}{3}a^{2} + 1)} = \\frac{a^{2} + 1}{\\frac{2}{3}a^{2} + 1} = \\frac{3(a^{2} + 1)}{2a^{2} + 3}.
$$

需证$\\frac{3(a^{2}+1)}{2a^{2}+3} < \\frac{3}{2}$。由于$a > 0$，分母$2a^{2} + 3 > 0$，不等式等价于：

$$
\\frac{a^{2} + 1}{2a^{2} + 3} < \\frac{1}{2}.
$$

交叉相乘得：

$$
2(a^{2} + 1) < 2a^{2} + 3,
$$

即$2a^{2} + 2 < 2a^{2} + 3$，化简得$2 < 3$，恒成立。因此，$\\frac{D}{D_{1}} < \\frac{3}{2}$得证。
', 9, 'Mogullzr', '2026-01-29 14:09:11', 9, 'Mogullzr', '2026-01-29 14:09:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '801');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '801');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '801');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (802, '1994年考研数学卷3第16题', '简单', '考研数学1994年卷3真题', '设当$x > 0$时，方程$kx + \\frac{1}{x^{2}} = 1$有且仅有一个解，求$k$的取值范围．', '[]', '

$$
k ≤ 0 或 k = \\frac{2\\sqrt{3}}{9}
$$

', '考虑函数$f(x) = kx + \\frac{1}{x^{2}} - 1$，其中$x > 0$。
方程$kx + \\frac{1}{x^{2}} = 1$有且仅有一个解，等价于$f(x)$在$x > 0$时只有一个零点。

1. 当$k ≤ 0$时
导数


$$
f^{′}(x) = k - \\frac{2}{x^{3}} < 0 (对所有x > 0),
$$

因此$f(x)$严格递减。
当$x → 0^{+}$时，$\\frac{1}{x^{2}} → +∞$，故$f(x) → +∞$；
当$x → +∞$时：
若$k < 0$，则$f(x) → −∞$；若$k = 0$，则$f(x) → −1$。
由于$f(x)$严格递减且从正无穷开始，必存在唯一的$x > 0$使$f(x) = 0$。
因此，对$k ≤ 0$，方程有且仅有一个解。

2. 当$k > 0$时
此时$f(x)$不是单调的。计算导数


$$
f^{′}(x) = k - \\frac{2}{x^{3}}.
$$

令$f^{′}(x) = 0$，得临界点


$$
x_{0} = (\\frac{2}{k})^{1/3} .
$$

当$x < x_{0}$时，$f^{′}(x) < 0$；当$x > x_{0}$时，$f^{′}(x) > 0$，
所以$x_{0}$是极小值点。
极小值为


$$
f(x_{0}) = kx_{0} + \\frac{1}{x_{0}^{2}} - 1 = \\frac{3}{2^{2/3}}k^{2/3} - 1.
$$

方程有解的条件是$f(x_{0}) ≤ 0$，即


$$
\\frac{3}{2^{2/3}}k^{2/3} ≤ 1.
$$

若$\\frac{3}{2^{2/3}}k^{2/3} < 1$，即$k < \\frac{2}{3\\sqrt{3}}$，则$f(x_{0}) < 0$，方程有两个解；若$\\frac{3}{2^{2/3}}k^{2/3} > 1$，即$k > \\frac{2}{3\\sqrt{3}}$，则$f(x_{0}) > 0$，方程无解；若$\\frac{3}{2^{2/3}}k^{2/3} = 1$，即$k = \\frac{2}{3\\sqrt{3}} = \\frac{2\\sqrt{3}}{9}$，则$f(x_{0}) = 0$，方程有且仅有一个解（位于$x = x_{0}$处）。

综上，方程有且仅有一个解时，$k$的取值范围为


$$
k ≤ 0 或 k = \\frac{2\\sqrt{3}}{9}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:11', 9, 'Mogullzr', '2026-01-29 14:09:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '802');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '802');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '802');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (803, '1994年考研数学卷3第17题', '简单', '考研数学1994年卷3真题', '设$y = \\frac{x^{3}+4}{x^{2}}$，(1) 求函数的增减区间及极值；(2) 求函数图像的凹凸区间及拐点；(3) 求其渐近线；(4) 作出其图形．', '[]', '
(1) 函数在$(−∞, 0)$和$(2, +∞)$上单调递增，在$(0, 2)$上单调递减；极小值点为$(2, 3)$，无极大值点。
(2) 函数在$(−∞, 0)$和$(0, +∞)$上均为凹向上；无拐点。
(3) 渐近线：垂直渐近线$x = 0$，斜渐近线$y = x$。
(4) 图形基于以上性质绘制：函数图像在$x = 0$处有垂直渐近线，以$y = x$为斜渐近线，在$x = 2$处取得极小值点$(2, 3)$，在$(−∞, 0)$上递增且凹向上，在$(0, 2)$上递减且凹向上，在$(2, +∞)$上递增且凹向上。

', '
函数$y = \\frac{x^{3}+4}{x^{2}} = x + \\frac{4}{x^{2}}$。
(1) 求一阶导数$y^{′} = 1 - \\frac{8}{x^{3}}$。令$y^{′} = 0$，得$x = 2$。分析符号：当$x < 0$时，$y^{′} > 0$；当$0 < x < 2$时，$y^{′} < 0$；当$x > 2$时，$y^{′} > 0$。因此，函数在$(−∞, 0)$和$(2, +∞)$上递增，在$(0, 2)$上递减。极小值点为$(2, 3)$。
(2) 求二阶导数$y^{′′} = \\frac{24}{x^{4}}$。由于$y^{′′} > 0$对于所有$x \\neq 0$，函数在$(−∞, 0)$和$(0, +∞)$上凹向上，无拐点。
(3) 渐近线：当$x → 0$时，$y → ∞$，故$x = 0$为垂直渐近线。当$x → ±∞$时，计算$m = \\lim_{x→±∞} \\frac{y}{x} = 1$，$b = \\lim_{x→±∞}(y - mx) = 0$，故$y = x$为斜渐近线。
(4) 图形基于上述分析绘制：定义域$x \\neq 0$，函数在$x = 0$处趋于无穷，在$x = 2$处取极小值，且始终在渐近线$y = x$上方。
', 9, 'Mogullzr', '2026-01-29 14:09:11', 9, 'Mogullzr', '2026-01-29 14:09:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '803');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '803');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '803');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (804, '1994年考研数学卷3第18题', '简单', '考研数学1994年卷3真题', '求微分方程$y^{′′} + a^{2}y = \\sin x$的通解，其中常数$a > 0.$', '[]', '
当$a \\neq 1$时，通解为$y = C_{1} \\cos(ax) + C_{2} \\sin(ax) + \\frac{\\sin x}{a^{2}-1}$；
当$a = 1$时，通解为$y = C_{1} \\cos x + C_{2} \\sin x - \\frac{1}{2}x \\cos x$，
其中$C_{1}$和$C_{2}$为任意常数。
', '给定微分方程$y^{′′} + a^{2}y = \\sin x$是一个二阶线性非齐次微分方程。通解由齐次方程的通解和非齐次方程的特解组成。
首先，求齐次方程$y^{′′} + a^{2}y = 0$的通解。
特征方程为$r^{2} + a^{2} = 0$，解得$r = ±ai$，因此齐次通解为


$$
y_{h} = C_{1} \\cos(ax) + C_{2} \\sin(ax)
$$

其次，求非齐次方程的特解$y_{p}$。根据非齐次项$\\sin x$的形式，需分两种情况：

$$
y_{p} = \\frac{\\sin x}{a^{2} - 1}
$$

最终，通解为齐次通解与特解之和。
', 9, 'Mogullzr', '2026-01-29 14:09:11', 9, 'Mogullzr', '2026-01-29 14:09:11', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '804');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '804');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '804');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (805, '1994年考研数学卷3第19题', '简单', '考研数学1994年卷3真题', '设$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续且递减，证明：当$0 < λ < 1$时，$\\int_{0}^{λ} f(x)dx ≥ λ \\int_{0}^{1} f(x)dx$．', '[]', '
考虑函数$g(λ) = \\int_{0}^{λ} f(x) dx - λ \\int_{0}^{1} f(x) dx$。需要证明当$0 < λ < 1$时，有$g(λ) ≥ 0$。
首先，计算$g(0)$和$g(1)$：
当$λ = 0$时，
$g(0) = \\int_{0}^{0} f(x) dx - 0 ⋅ \\int_{0}^{1} f(x) dx = 0$；当$λ = 1$时，
$g(1) = \\int_{0}^{1} f(x) dx - 1 ⋅ \\int_{0}^{1} f(x) dx = 0$。
因此，$g(0) = 0$和$g(1) = 0$。
接下来，计算$g(λ)$的导数。由微积分基本定理，有

$$
g^{′}(λ) = \\frac{d}{dλ} \\int_{0}^{λ} f(x) dx - \\int_{0}^{1} f(x) dx = f(λ) - \\int_{0}^{1} f(x) dx
$$

令$C = \\int_{0}^{1} f(x) dx$，则$g^{′}(λ) = f(λ) - C$。
由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续且递减，因此$f(λ)$随$λ$增加而减小，故$g^{′}(λ)$也是递减函数。

$$
C = \\int_{0}^{1} f(x) dx ≤ f(0) ⋅ 1 = f(0)
$$

因此，$g^{′}(λ)$从$g^{′}(0) ≥ 0$开始，递减至$g^{′}(1) ≤ 0$，故存在点$λ_{0} ∈ (0, 1)$使得$g^{′}(λ_{0}) = 0$，且当$λ < λ_{0}$时$g^{′}(λ) > 0$，当$λ > λ_{0}$时$g^{′}(λ) < 0$。这意味着$g(λ)$在$\\lbrack 0, λ_{0} \\rbrack$上单调递增，在$\\lbrack λ_{0}, 1 \\rbrack$上单调递减。
由于$g(0) = 0$和$g(1) = 0$，且$g(λ)$先增后减，因此对于所有$λ ∈ (0, 1)$，有$g(λ) ≥ 0$，即

$$
\\int_{0}^{λ} f(x) dx ≥ λ \\int_{0}^{1} f(x) dx
$$

不等式得证。
', '
考虑函数$g(λ) = \\int_{0}^{λ} f(x) dx - λ \\int_{0}^{1} f(x) dx$。需要证明当$0 < λ < 1$时，有$g(λ) ≥ 0$。
首先，计算$g(0)$和$g(1)$：
当$λ = 0$时，
$g(0) = \\int_{0}^{0} f(x) dx - 0 ⋅ \\int_{0}^{1} f(x) dx = 0$；当$λ = 1$时，
$g(1) = \\int_{0}^{1} f(x) dx - 1 ⋅ \\int_{0}^{1} f(x) dx = 0$。
因此，$g(0) = 0$和$g(1) = 0$。
接下来，计算$g(λ)$的导数。由微积分基本定理，有

$$
g^{′}(λ) = \\frac{d}{dλ} \\int_{0}^{λ} f(x) dx - \\int_{0}^{1} f(x) dx = f(λ) - \\int_{0}^{1} f(x) dx
$$

令$C = \\int_{0}^{1} f(x) dx$，则$g^{′}(λ) = f(λ) - C$。
由于$f(x)$在$\\lbrack 0, 1 \\rbrack$上连续且递减，因此$f(λ)$随$λ$增加而减小，故$g^{′}(λ)$也是递减函数。

$$
C = \\int_{0}^{1} f(x) dx ≤ f(0) ⋅ 1 = f(0)
$$

因此，$g^{′}(λ)$从$g^{′}(0) ≥ 0$开始，递减至$g^{′}(1) ≤ 0$，故存在点$λ_{0} ∈ (0, 1)$使得$g^{′}(λ_{0}) = 0$，且当$λ < λ_{0}$时$g^{′}(λ) > 0$，当$λ > λ_{0}$时$g^{′}(λ) < 0$。这意味着$g(λ)$在$\\lbrack 0, λ_{0} \\rbrack$上单调递增，在$\\lbrack λ_{0}, 1 \\rbrack$上单调递减。
由于$g(0) = 0$和$g(1) = 0$，且$g(λ)$先增后减，因此对于所有$λ ∈ (0, 1)$，有$g(λ) ≥ 0$，即

$$
\\int_{0}^{λ} f(x) dx ≥ λ \\int_{0}^{1} f(x) dx
$$

不等式得证。
', 9, 'Mogullzr', '2026-01-29 14:09:12', 9, 'Mogullzr', '2026-01-29 14:09:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '805');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '805');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '805');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (806, '1994年考研数学卷3第20题', '简单', '考研数学1994年卷3真题', '求曲线$y = 3 - ∣x^{2} - 1∣$与$x$轴围成的封闭图形绕直线$y = 3$旋转所得的旋转体体积．', '[]', '

$$
\\frac{448π}{15}
$$

', '曲线$y = 3 - ∣x^{2} - 1∣$与$x$轴围成的封闭图形位于$x$轴上方，且与$x$轴的交点为$x = ±2$。该图形绕直线$y = 3$旋转时，旋转体体积可通过固定$x$处的截面面积积分求解。
对于固定$x$，截面为圆环，外半径为$3 - 0 = 3$，内半径为$3 - f(x)$，其中$f(x) = 3 - ∣x^{2} - 1∣$。截面面积$A(x) = π \\lbrack 3^{2} - (3 - f(x))2 \\rbrack  = π \\lbrack 9 - (9 - 6f(x) + f(x)2) \\rbrack  = π(6f(x) - f(x)2)$。
体积$V = \\int_{−2}^{2} A(x) dx = π \\int_{−2}^{2} \\lbrack 6f(x) - f(x)2 \\rbrack  dx$。由于$f(x)$为偶函数，可计算从$0$到$2$的积分后乘以$2$，即$V = 2π \\int_{0}^{2} \\lbrack 6f(x) - f(x)2 \\rbrack  dx$.
函数$f(x)$在$\\lbrack 0, 2 \\rbrack$上分段：
当$x ∈  \\lbrack 0, 1 \\rbrack$时，$f(x) = 2 + x^{2}$;当$x ∈  \\lbrack 1, 2 \\rbrack$时，$f(x) = 4 - x^{2}$.
计算积分：

$$
\\begin{array}{cc}
I_{1} & = \\int_{0}^{1}  \\lbrack 6(2 + x^{2}) - (2 + x^{2})2 \\rbrack  dx \\\\
 & = \\int_{0}^{1}  \\lbrack 8 + 2x^{2} - x^{4} \\rbrack  dx \\\\
 & =  \\lbrack 8x + \\frac{2}{3}x^{3} - \\frac{1}{5}x^{5} \\rbrack _{0}^{1} \\\\
 & = \\frac{127}{15}. \\\\
\\end{array}
$$



$$
\\begin{array}{cc}
I_{2} & = \\int_{1}^{2}  \\lbrack 6(4 - x^{2}) - (4 - x^{2})2 \\rbrack  dx \\\\
 & = \\int_{1}^{2}  \\lbrack 8 + 2x^{2} - x^{4} \\rbrack  dx \\\\
 & =  \\lbrack 8x + \\frac{2}{3}x^{3} - \\frac{1}{5}x^{5} \\rbrack _{1}^{2} \\\\
 & = (16 + \\frac{16}{3} - \\frac{32}{5}) - (8 + \\frac{2}{3} - \\frac{1}{5}) \\\\
 & = \\frac{97}{15}. \\\\
\\end{array}
$$

于是，

$$
\\int_{0}^{2} \\lbrack 6f(x) - f(x)2 \\rbrack  dx = I_{1} + I_{2} = \\frac{127}{15} + \\frac{97}{15} = \\frac{224}{15},
$$

所以

$$
V = 2π × \\frac{224}{15} = \\frac{448π}{15}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:12', 9, 'Mogullzr', '2026-01-29 14:09:12', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '806');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '806');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '806');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (807, '1994年考研数学卷4第1题', '简单', '考研数学1994年卷4真题', '$\\int_{−2}^{2} \\frac{x+∣x∣}{2+x^{2}}dx =$______．', '[]', '
$\\ln 3$
', '
考虑积分$\\int_{−2}^{2} \\frac{x+∣x∣}{2+x^{2}} dx$。由于被积函数中含有绝对值$∣x∣$，需分段计算。
当$x ∈  \\lbrack −2, 0)$时，$∣x∣ = −x$，因此$x + ∣x∣ = x + (−x) = 0$，于是


$$
\\int_{−2}^{0} \\frac{x + ∣x∣}{2 + x^{2}} dx = \\int_{−2}^{0} 0 dx = 0.
$$

当$x ∈  \\lbrack 0, 2 \\rbrack$时，$∣x∣ = x$，因此$x + ∣x∣ = x + x = 2x$，于是


$$
\\int_{0}^{2} \\frac{x + ∣x∣}{2 + x^{2}} dx = \\int_{0}^{2} \\frac{2x}{2 + x^{2}} dx.
$$

令$u = 2 + x^{2}$，则$du = 2x dx$。当$x = 0$时，$u = 2$；当$x = 2$时，$u = 6$。因此


$$
\\int_{0}^{2} \\frac{2x}{2 + x^{2}} dx = \\int_{2}^{6} \\frac{1}{u} du =  \\lbrack \\ln ∣u∣ \\rbrack _{2}^{6} = \\ln 6 - \\ln 2 = \\ln \\frac{6}{2} = \\ln 3.
$$

综上，积分值为$\\ln 3$。
', 9, 'Mogullzr', '2026-01-29 14:09:14', 9, 'Mogullzr', '2026-01-29 14:09:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '807');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '807');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '807');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (808, '1994年考研数学卷4第2题', '简单', '考研数学1994年卷4真题', '已知$f^{′}(x) = −1$，则$\\lim_{x→0} \\frac{x}{f(x_{0}-2x)-f(x_{0}-x)} =$______．', '[]', '
1
', '
已知$f^{′}(x_{0}) = −1$，求极限：

$$
\\lim_{x→0} \\frac{x}{f(x_{0} - 2x) - f(x_{0} - x)}
$$

步骤：

$$
\\lim_{t→0} \\frac{−t}{f(x_{0} + 2t) - f(x_{0} + t)}
$$

或直接法：若$f(x) = −x + c$，则

$$
f(x_{0} - 2x) - f(x_{0} - x) = x
$$

极限也为$1$。
答案：$1$
', 9, 'Mogullzr', '2026-01-29 14:09:14', 9, 'Mogullzr', '2026-01-29 14:09:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '808');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '808');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '808');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (809, '1994年考研数学卷4第3题', '简单', '考研数学1994年卷4真题', '设方程$e^{xy} + y^{2} = \\cos x$确定$y$为$x$的函数，则$\\frac{dy}{dx} =$______．', '[]', '

$$
\\frac{dy}{dx} = −\\frac{\\sin x + ye^{xy}}{xe^{xy} + 2y}
$$

', '给定方程$e^{xy} + y^{2} = \\cos x$确定$y$为$x$的函数，对方程两边关于$x$求导。
左边求导：


$$
\\frac{d}{dx} (e^{xy}) = e^{xy} ⋅ \\frac{d}{dx}(xy) = e^{xy} (x\\frac{dy}{dx} + y)
$$



$$
\\frac{d}{dx} (y^{2}) = 2y\\frac{dy}{dx}
$$

右边求导：


$$
\\frac{d}{dx}(\\cos x) = − \\sin x
$$

因此，求导后的方程为：


$$
e^{xy} (x\\frac{dy}{dx} + y) + 2y\\frac{dy}{dx} = − \\sin x
$$

整理项：


$$
xe^{xy}\\frac{dy}{dx} + ye^{xy} + 2y\\frac{dy}{dx} = − \\sin x
$$

合并含$\\frac{dy}{dx}$的项：


$$
(xe^{xy} + 2y) \\frac{dy}{dx} + ye^{xy} = − \\sin x
$$

移项：


$$
(xe^{xy} + 2y) \\frac{dy}{dx} = − \\sin x - ye^{xy}
$$

解出$\\frac{dy}{dx}$:


$$
\\frac{dy}{dx} = \\frac{− \\sin x - ye^{xy}}{xe^{xy} + 2y} = −\\frac{\\sin x + ye^{xy}}{xe^{xy} + 2y}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:14', 9, 'Mogullzr', '2026-01-29 14:09:14', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '809');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '809');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '809');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (810, '1994年考研数学卷4第4题', '简单', '考研数学1994年卷4真题', '设$A = \\left( \\begin{array}{ccccc}
0 & a_{1} & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & a_{2} &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  &  &  \\\\
0 & 0 & 0 &  & a_{n-1} \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right)$，其中$a_{i} \\neq 0, i = 1, 2, ⋯  , n$，则$A^{−1} =$______．', '[]', '

$$
A^{−1} = \\left( \\begin{array}{ccccc}
0 & 0 &  & 0 & \\frac{1}{a_{n}} \\\\
 &  & ⋯ &  &  \\\\
\\frac{1}{a_{1}} & 0 &  & 0 & 0 \\\\
 &  & ⋯ &  &  \\\\
0 & \\frac{1}{a_{2}} &  & 0 & 0 \\\\
 &  & ⋯ &  &  \\\\
⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 &  & ⋱ &  &  \\\\
\\end{array} \\right)
$$

', '设矩阵$A = DP$，其中$D = diag(a_{1}, a_{2}, … , a_{n})$是对角矩阵，$P$是循环左移矩阵：

$$
P = \\left( \\begin{array}{ccccc}
0 & 1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & 1 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
0 & 0 & 0 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
\\end{array} \\right) .
$$

则$A^{−1} = (DP)−1 = P^{−1}D^{−1}$。其中$P^{−1}$是循环右移矩阵：

$$
P^{−1} = \\left( \\begin{array}{ccccc}
0 & 0 &  & 0 & 1 \\\\
 &  & ⋯ &  &  \\\\
1 & 0 &  & 0 & 0 \\\\
 &  & ⋯ &  &  \\\\
0 & 1 &  & 0 & 0 \\\\
 &  & ⋯ &  &  \\\\
⋮ & ⋮ &  & ⋮ & ⋮ \\\\
 &  & ⋱ &  &  \\\\
\\end{array} \\right) ,
$$

且$D^{−1} = diag (\\frac{1}{a_{1}}, \\frac{1}{a_{2}}, … , \\frac{1}{a_{n}})$。计算$P^{−1}D^{−1}$，得到$A^{−1}$的元素为：

$$
(A^{−1})i,j​ = \\frac{P_{i,j}^{−1}}{a_{j}},
$$

其中$P_{i,j}^{−1} = 1$当$j = i - 1  mod  n$（即$i = 1$时$j = n$，$i = 2$时$j = 1$，$i = 3$时$j = 2$，⋯，$i = n$时$j = n - 1$），否则$P_{i,j}^{−1} = 0$。因此，$A^{−1}$的形式如上所示。
', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '810');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '810');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '810');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (811, '1994年考研数学卷4第5题', '简单', '考研数学1994年卷4真题', '设随机变量$X$的概率密度为$f(x) = \\begin{cases} 2x & 0 < x < 1 \\\\ 0 & 其他. \\end{cases}$以$Y$表示对$X$的三次独立重复观察中事件$\\{X ≤ \\frac{1}{2}\\}$出现的次数，
则$P\\{Y = 2\\} =$______．', '[]', '$\\frac{9}{64}$
', '首先，计算事件$\\{X ≤ \\frac{1}{2}\\}$的概率。随机变量$X$的概率密度函数为$f(x) = 2x$，其中$0 < x < 1$。因此，

$$
P \\{X ≤ \\frac{1}{2}\\} = \\int_{0}^{\\frac{1}{2}} 2x dx =  \\lbrack x^{2} \\rbrack _{0}^{\\frac{1}{2}} = (\\frac{1}{2})^{2} - 0^{2} = \\frac{1}{4}.
$$

令$p = P \\{X ≤ \\frac{1}{2}\\} = \\frac{1}{4}$。$Y$表示对$X$的三次独立重复观察中该事件出现的次数，因此$Y$服从二项分布$Y ∼ Binomial(n = 3, p = \\frac{1}{4})$。于是，

$$
P\\{Y = 2\\} = (\\frac{3}{2}) (\\frac{1}{4})^{2} (1 - \\frac{1}{4})^{3-2} = 3 × \\frac{1}{16} × \\frac{3}{4} = \\frac{9}{64}.
$$

故答案为$\\frac{9}{64}$。
', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '811');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '811');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (812, '1994年考研数学卷4第6题', '', '考研数学1994年卷4真题', '/problems/other/795', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (813, '1994年考研数学卷4第7题', '', '考研数学1994年卷4真题', '/problems/other/751', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (814, '1994年考研数学卷4第8题', '简单', '考研数学1994年卷4真题', '设$A$是$m × n$矩阵，$C$是$n$阶可逆矩阵，矩阵$A$的秩为$r$，矩阵$B = AC$的秩为$r_{1}$，则', '[''$r > r_{1}$．'', ''$r < r_{1}$．'', ''$r = r_{1}$．'', ''$r$与$r_{1}$的关系由$C$而定．'']', "['C']", '
因为$C$是$n$阶可逆矩阵，所以$rank(C) = n$。
设$B = AC$，则

$$
rank(B) = rank(AC) = rank(A)
$$
因此$r_{1} = r$，选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '814');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '814');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '814');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (815, '1994年考研数学卷4第9题', '简单', '考研数学1994年卷4真题', '设$0 < P(A) < 1$,$0 < P(B) < 1$,$P(A∣ B) + P(\\bar{A}​ \\bar{B}) = 1$，则', '[''事件$A$和$B$互不相容．'', ''事件$A$和$B$相互对立．'', ''事件$A$和$B$互不独立．'', ''事件$A$和$B$相互独立．'']', "['D']", '
应选 (D)。因为$P(A∣B) = 1 - P(\\overline{A}∣\\overline{B}) = P(A∣\\overline{B})$，所以
$$
\\frac{P(AB)}{P(B)} = \\frac{P(A\\overline{B})}{P(\\overline{B})} ⇒ \\frac{P(AB)}{P(B)} = \\frac{P(A) - P(AB)}{1 - P(B)}
$$
整理得$P(AB) = P(A)P(B)$，即$A$与$B$相互独立。', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '815');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '815');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (816, '1994年考研数学卷4第10题', '简单', '考研数学1994年卷4真题', '设$X_{1}, X_{2}, ⋯  , X_{n}$是来自正态总体$N(μ, σ^{2})$的简单随机样本，$\\overline{X}$为样本均值。定义如下样本方差：
$$
S_{1}^{2} = \\frac{1}{n - 1} \\sum_{i=1}^{n}(X_{i} - \\overline{X})2,  S_{2}^{2} = \\frac{1}{n} \\sum_{i=1}^{n}(X_{i} - \\overline{X})2
$$

$$
S_{3}^{2} = \\frac{1}{n - 1} \\sum_{i=1}^{n}(X_{i} - μ)2,  S_{4}^{2} = \\frac{1}{n} \\sum_{i=1}^{n}(X_{i} - μ)2
$$
则服从自由度为$n - 1$的$t$分布的随机变量是', '[''$t = \\\\frac{\\\\overline{X}-μ}{S_{1}/\\\\sqrt{n-1}}$．'', ''$t = \\\\frac{\\\\overline{X}-μ}{S_{2}/\\\\sqrt{n-1}}$．'', ''$t = \\\\frac{\\\\overline{X}-μ}{S_{3}/\\\\sqrt{n}}$'', ''$t = \\\\frac{\\\\overline{X}-μ}{S_{4}/\\\\sqrt{n}}$．'']', "['B']", '考虑随机变量

$$
t = \\frac{\\overline{X} - μ}{S_{2}/\\sqrt{n - 1}},
$$
其中

$$
S_{2}^{2} = \\frac{1}{n} \\sum_{i=1}^{n}(X_{i} - \\overline{X})2.
$$
已知

$$
Z = \\frac{\\overline{X} - μ}{σ/\\sqrt{n}} ∼ N(0, 1),  V = \\frac{\\sum_{i=1}^{n}(X_{i} - \\overline{X})2}{σ^{2}} ∼ χ_{n-1}^{2},
$$
且$Z$与$V$独立。于是

$$
t = \\frac{\\overline{X} - μ}{S_{2}/\\sqrt{n - 1}} = \\frac{Z}{\\sqrt{V/(n - 1)}} ∼ t_{n-1}.
$$
因此该统计量服从自由度为$n - 1$的$t$分布。
$$
t = \\frac{Z}{\\sqrt{V}} ⋅ \\frac{n - 1}{\\sqrt{n}},
$$
故正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:09:15', 9, 'Mogullzr', '2026-01-29 14:09:15', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '816');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1076', '816');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (817, '1994年考研数学卷4第11题', '简单', '考研数学1994年卷4真题', '计算二重积分$\\iint_{D}(x + y)dxdy$，其中$D = \\{(x, y)∣ x^{2} + y^{2} ≤ x + y + 1\\}$．', '[]', '$\\frac{3π}{2}$
', '积分区域$D$由不等式$x^{2} + y^{2} ≤ x + y + 1$定义。通过完成平方，将该不等式重写为：

$$
x^{2} - x + y^{2} - y ≤ 1
$$



$$
(x - \\frac{1}{2})2 - \\frac{1}{4} + (y - \\frac{1}{2})2 - \\frac{1}{4} ≤ 1
$$



$$
(x - \\frac{1}{2})2 + (y - \\frac{1}{2})2 ≤ \\frac{3}{2}
$$

这表明$D$是一个圆盘，圆心在$(\\frac{1}{2}, \\frac{1}{2})$，半径$r = \\sqrt{\\frac{3}{2}}$。
考虑坐标变换：令$u = x - \\frac{1}{2}$,$v = y - \\frac{1}{2}$，则区域变为$u^{2} + v^{2} ≤ \\frac{3}{2}$，积分函数变为：

$$
x + y = (u + \\frac{1}{2}) + (v + \\frac{1}{2}) = u + v + 1
$$

因此，积分变为：

$$
\\iint_{u^{2}+v^{2}≤\\frac{3}{2}}(u + v + 1) du dv
$$

由于圆盘关于原点对称，函数$u$和$v$是奇函数，因此：

$$
\\iint_{u^{2}+v^{2}≤\\frac{3}{2}} u du dv = 0,  \\iint_{u^{2}+v^{2}≤\\frac{3}{2}} v du dv = 0
$$

于是：

$$
\\iint_{u^{2}+v^{2}≤\\frac{3}{2}}(u + v + 1) du dv = \\iint_{u^{2}+v^{2}≤\\frac{3}{2}} 1 du dv
$$

该积分表示圆盘的面积，即$πr^{2} = π ⋅ \\frac{3}{2} = \\frac{3π}{2}$。因此，原积分值为$\\frac{3π}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:16', 9, 'Mogullzr', '2026-01-29 14:09:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '817');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '817');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '817');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (818, '1994年考研数学卷4第12题', '简单', '考研数学1994年卷4真题', '设函数$y = y(x)$满足条件$\\begin{cases} y^{′′} + 4y^{′} + 4y = 0 \\\\ y(0) = 2, y^{′}(0) = −4 \\end{cases}$求广义积分$\\int_{0}^{+∞} y(x)dx$．', '[]', '
1
', '
给定微分方程$y^{′′} + 4y^{′} + 4y = 0$为二阶线性常系数齐次方程，其特征方程为


$$
r^{2} + 4r + 4 = 0
$$

解得重根$r = −2$，因此通解为


$$
y(x) = (C_{1} + C_{2}x)e^{−2x}
$$

代入初始条件$y(0) = 2$，得$C_{1} = 2$。
求导得


$$
y^{′}(x) = e^{−2x} \\lbrack C_{2} - 2(C_{1} + C_{2}x) \\rbrack
$$

代入$y^{′}(0) = −4$，得$C_{2} - 2 × 2 = −4$，解得$C_{2} = 0$。
因此特解为


$$
y(x) = 2e^{−2x}
$$

计算广义积分


$$
\\int_{0}^{+∞} y(x)dx = \\int_{0}^{+∞} 2e^{−2x}dx
$$

求不定积分


$$
∫ 2e^{−2x}dx = −e^{−2x} + C
$$

计算定积分


$$
\\lim_{b→∞}  \\lbrack −e^{−2x} \\rbrack _{0}^{b} = \\lim_{b→∞}(−e^{−2b}) - (−1) = 0 + 1 = 1
$$

故广义积分的值为 1。
', 9, 'Mogullzr', '2026-01-29 14:09:16', 9, 'Mogullzr', '2026-01-29 14:09:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '818');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '818');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '818');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (819, '1994年考研数学卷4第13题', '简单', '考研数学1994年卷4真题', '已知$f(x, y) = x^{2} arctan \\frac{y}{x} - y^{2} arctan \\frac{x}{y}$，求$\\frac{∂^{2}f}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}f}{∂x∂y} = \\frac{x^{2} - y^{2}}{x^{2} + y^{2}}
$$

', '
先对$x$求偏导数得

$$
\\begin{array}{cc}
\\frac{∂f}{∂x} & = 2x arctan \\frac{y}{x} + \\frac{x^{2}}{1 + (\\frac{y}{x})^{2}} (−\\frac{y}{x^{2}}) - \\frac{y^{2}}{1 + (\\frac{x}{y})^{2}}\\frac{1}{y} \\\\
 & = 2x arctan \\frac{y}{x} - \\frac{x^{2}y}{x^{2} + y^{2}} - \\frac{y^{3}}{x^{2} + y^{2}} \\\\
\\end{array}
$$

再对$y$求偏导数得

$$
\\frac{∂^{2}f}{∂x∂y} = \\frac{2x}{1 + (\\frac{y}{x})^{2}} ⋅ \\frac{1}{x} - 1 = \\frac{2x^{2}}{x^{2} + y^{2}} - 1 = \\frac{x^{2} - y^{2}}{x^{2} + y^{2}}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:16', 9, 'Mogullzr', '2026-01-29 14:09:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '819');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '819');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '819');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (820, '1994年考研数学卷4第14题', '简单', '考研数学1994年卷4真题', '设函数$f(x)$可导，且$f(0) = 0$,$F(x) = \\int_{0}^{x} t^{n-1}f(x^{n} - t^{n})dt$，求$\\lim_{x→0} \\frac{F(x)}{x^{2n}}$．', '[]', '

$$
\\frac{f^{′}(0)}{2n}
$$

', '
给定函数$f(x)$可导且$f(0) = 0$，以及$F(x) = \\int_{0}^{x} t^{n-1}f(x^{n} - t^{n}) dt$。要求极限$\\lim_{x→0} \\frac{F(x)}{x^{2n}}$。
首先，对积分进行变量替换。令$u = x^{n} - t^{n}$，则当$t = 0$时，$u = x^{n}$；当$t = x$时，$u = 0$。同时，$du = −nt^{n-1} dt$，即$t^{n-1} dt = −\\frac{1}{n} du$。代入积分得：

$$
F(x) = \\int_{0}^{x} t^{n-1}f(x^{n} - t^{n}) dt = \\int_{x^{n}}^{0} f(u) (−\\frac{1}{n}) du = \\frac{1}{n} \\int_{0}^{x^{n}} f(u) du.
$$

因此，

$$
\\frac{F(x)}{x^{2n}} = \\frac{1}{n}\\frac{\\int_{0}^{x^{n}} f(u) du}{x^{2n}} = \\frac{1}{n}\\frac{\\int_{0}^{x^{n}} f(u) du}{(x^{n})2}.
$$

令$y = x^{n}$，则当$x → 0$时，$y → 0$。极限化为：

$$
\\lim_{x→0} \\frac{F(x)}{x^{2n}} = \\frac{1}{n} \\lim_{y→0} \\frac{\\int_{0}^{y} f(u) du}{y^{2}}.
$$

令$g(y) = \\int_{0}^{y} f(u) du$，则$g(0) = 0$，且$g^{′}(y) = f(y)$。应用洛必达法则：

$$
\\lim_{y→0} \\frac{g(y)}{y^{2}} = \\lim_{y→0} \\frac{g^{′}(y)}{2y} = \\lim_{y→0} \\frac{f(y)}{2y}.
$$

由于$f(0) = 0$且$f$可导，有$\\lim_{y→0} \\frac{f(y)}{y} = f^{′}(0)$，因此：

$$
\\lim_{y→0} \\frac{f(y)}{2y} = \\frac{1}{2}f^{′}(0).
$$

代入回原式：

$$
\\lim_{x→0} \\frac{F(x)}{x^{2n}} = \\frac{1}{n} ⋅ \\frac{1}{2}f^{′}(0) = \\frac{f^{′}(0)}{2n}.
$$

故所求极限为$\\frac{f^{′}(0)}{2n}$。
', 9, 'Mogullzr', '2026-01-29 14:09:16', 9, 'Mogullzr', '2026-01-29 14:09:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '820');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '820');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '820');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (821, '1994年考研数学卷4第15题', '简单', '考研数学1994年卷4真题', '已知曲线$y = a\\sqrt{x}$（$a > 0$）与曲线$y = \\ln \\sqrt{x}$在点$(x_{0}, y_{0})$处有公共切线，求：(1) 常数$a$及切点$(x_{0}, y_{0})$；(2) 两曲线与$x$轴围成的平面图形绕$x$轴旋转所得旋转体的体积$V_{x}$．', '[]', '(1)$a = \\frac{1}{e}$, 切点为$(e^{2}, 1)$(2)$V_{x} = \\frac{π}{2}$
', '
(I) 由$y = a\\sqrt{x}$知$y^{′} = \\frac{a}{2\\sqrt{x}}$。由$y = \\ln \\sqrt{x}$知$y^{′} = \\frac{1}{2x}$。由于两曲线在$(x_{0}, y_{0})$处有公共切线，可得


$$
\\frac{a}{2\\sqrt{x_{0}}} = \\frac{1}{2x_{0}} ⇒ x_{0} = \\frac{1}{a^{2}}
$$


将$x_{0} = \\frac{1}{a^{2}}$分别代入两曲线方程，有


$$
y_{0} = a\\sqrt{\\frac{1}{a^{2}}} = \\ln \\sqrt{\\frac{1}{a^{2}}} ⇒ y_{0} = 1 = \\ln \\sqrt{\\frac{1}{a^{2}}}
$$


于是$a = \\frac{1}{e}, x_{0} = \\frac{1}{a^{2}} = e^{2}$，从而切点为$(e^{2}, 1)$。
(II)$V$是两个旋转体的体积之差，由旋转体体积公式可得


$$
\\begin{array}{cc}
V_{x} & = π \\int_{0}^{e^{2}} (\\frac{1}{e}\\sqrt{x})^{2} dx - π \\int_{1}^{e^{2}}(\\ln \\sqrt{x})2dx \\\\
 & = \\frac{π}{e^{2}} \\int_{0}^{e^{2}} x dx - \\frac{π}{4} \\int_{1}^{e^{2}} \\ln^{2} x dx \\\\
 & = \\frac{π}{2}e^{2} - \\frac{π}{4}  \\lbrack x \\ln^{2} x​_{1}^{e^{2}} - 2 \\int_{1}^{e^{2}} \\ln x dx \\rbrack  \\\\
 & = \\frac{π}{2}e^{2} - \\frac{π}{4} (4e^{2} - 2  \\lbrack x \\ln x - x \\rbrack _{1}^{e^{2}}) \\\\
 & = \\frac{π}{2} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:16', 9, 'Mogullzr', '2026-01-29 14:09:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '821');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '821');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '821');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (822, '1994年考研数学卷4第16题', '简单', '考研数学1994年卷4真题', '假设$f(x)$在$\\lbrack a, +∞)$上连续，$f^{′′}(x)$在$(a, +∞)$内存在且大于零，记
$$
F(x) = \\frac{f(x) - f(a)}{x - a} (x > a),
$$
证明$F(x)$在$(a, +∞)$内单调增加．', '[]', '$F(x)$在$(a, +∞)$内单调增加．
', '要证明$F(x) = \\frac{f(x)-f(a)}{x-a}$在$(a, +∞)$内单调增加，只需证明其导数$F^{′}(x) > 0$对于所有$x > a$．
计算导数：


$$
F^{′}(x) = \\frac{f^{′}(x)(x - a) -  \\lbrack f(x) - f(a) \\rbrack }{(x - a)2}.
$$

由于分母$(x - a)2 > 0$，只需证明分子


$$
g(x) = f^{′}(x)(x - a) -  \\lbrack f(x) - f(a) \\rbrack  > 0.
$$

由拉格朗日中值定理，对任意$x > a$，存在$ξ ∈ (a, x)$使得


$$
f(x) - f(a) = f^{′}(ξ)(x - a).
$$

代入$g(x)$：


$$
g(x) = f^{′}(x)(x - a) - f^{′}(ξ)(x - a) = (x - a) \\lbrack f^{′}(x) - f^{′}(ξ) \\rbrack .
$$

已知$f^{′′}(x) > 0$在$(a, +∞)$内，故$f^{′}(x)$在$(a, +∞)$内单调增加．由于$ξ < x$，有$f^{′}(ξ) < f^{′}(x)$，即$f^{′}(x) - f^{′}(ξ) > 0$．又$x - a > 0$，所以$g(x) > 0$．
因此，$F^{′}(x) > 0$，即$F(x)$在$(a, +∞)$内单调增加．
', 9, 'Mogullzr', '2026-01-29 14:09:17', 9, 'Mogullzr', '2026-01-29 14:09:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '822');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '822');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '822');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (823, '1994年考研数学卷4第17题', '简单', '考研数学1994年卷4真题', '设线性方程组$\\begin{cases} x_{1} + a_{1}x_{2} + a_{1}^{2}x_{3} = a_{1}^{3} \\\\ x_{1} + a_{2}x_{2} + a_{2}^{2}x_{3} = a_{2}^{3} \\\\ x_{1} + a_{3}x_{2} + a_{3}^{2}x_{3} = a_{3}^{3} \\\\ x_{1} + a_{4}x_{2} + a_{4}^{2}x_{3} = a_{4}^{3}. \\end{cases}$(1) 证明：若$a_{1}, a_{2}, a_{3}, a_{4}$两两不相等，则此线性方程组无解；(2) 设$a_{1} = a_{3} = k$,$a_{2} = a_{4} = −k$（$k \\neq 0$），
且已知$β_{1}$,$β_{2}$是该方程组的两个解，其中
$$
β_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) , β_{2} = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) ,
$$
写出此方程组的通解．', '[]', '
(1) 若$a_{1}, a_{2}, a_{3}, a_{4}$两两不相等，则线性方程组无解。
(2) 方程组的通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) + c \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  c ∈ R
$$

或等价地：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) + c \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  c ∈ R
$$

', '
(Ⅰ) 因为增广矩阵$\\overline{A}$的行列式是范德蒙行列式，$a_{1}, a_{2}, a_{3}, a_{4}$两两不相等，则有

$$
∣A∣ = (a_{2} - a_{1})(a_{3} - a_{1})(a_{4} - a_{1})(a_{3} - a_{2})(a_{4} - a_{2})(a_{4} - a_{3}) \\neq 0,
$$

故$r(\\overline{A}) = 4$。而系数矩阵$A$的秩$r(A) = 3$，所以方程组无解。
(Ⅱ) 当$a_{1} = a_{3} = k, a_{2} = a_{4} = −k (k \\neq 0)$时，方程组同解于

$$
\\begin{cases} x_{1} + kx_{2} + k^{2}x_{3} = k^{3} \\\\ x_{1} - kx_{2} + k^{2}x_{3} = −k^{3}. \\end{cases}
$$

因为

$$
\\begin{vmatrix}
1 & k\\\\
1 & −k
\\end{vmatrix} = −2k \\neq 0,
$$

知$r(A) = r(\\overline{A}) = 2$。由$n - r(A) = 3 - 2 = 1$，知导出组$Ax = 0$的基础解系含有 1 个解向量。由解的结构和解的性质，

$$
η = β_{1} - β_{2} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) - \\left( \\begin{array}{c}
1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
2 \\\\
\\end{array} \\right)
$$

是$Ax = 0$的基础解系。于是方程组的通解为

$$
β_{1} + kη = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) + k \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
2 \\\\
\\end{array} \\right) ,
$$

其中$k$为任意常数。
', 9, 'Mogullzr', '2026-01-29 14:09:17', 9, 'Mogullzr', '2026-01-29 14:09:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '823');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '823');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (824, '1994年考研数学卷4第18题', '简单', '考研数学1994年卷4真题', '设$A = \\left( \\begin{array}{ccc}
0 & 0 & 1 \\\\
x & 1 & y \\\\
1 & 0 & 0 \\\\
\\end{array} \\right)$有三个线性无关的特征向量，求$x$和$y$应满足的条件．', '[]', '
$y = −x$
', '
由$A$的特征方程

$$
∣λE - A∣ = \\begin{vmatrix}
λ & 0 & −1\\\\
−x & λ - 1 & −y\\\\
−1 & 0 & λ
\\end{vmatrix} = (λ - 1) \\begin{vmatrix}
λ & −1\\\\
−1 & λ
\\end{vmatrix} = (λ - 1)2(λ + 1) = 0,
$$

得到$A$的特征值为$λ_{1} = λ_{2} = 1, λ_{3} = −1$。由题设有三个线性无关的特征向量，因此$λ = 1$必有两个线性无关的特征向量，从而$r(E - A) = 1$。由初等行变换得

$$
E - A = \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
−x & 0 & −y \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccc}
1 & 0 & −1 \\\\
0 & 0 & −x - y \\\\
0 & 0 & 0 \\\\
\\end{array} \\right) ,
$$

由$r(E - A) = 1$，得$x$和$y$必须满足条件$x + y = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:17', 9, 'Mogullzr', '2026-01-29 14:09:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '824');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '824');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (825, '1994年考研数学卷4第19题', '简单', '考研数学1994年卷4真题', '假设随机变量$X_{1}, X_{2}, X_{3}, X_{4}$相互独立，且同分布
$$
P \\{X_{i} = 0\\} = 0.6,  P \\{X_{i} = 1\\} = 0,  (i = 1, 2, 3, 4).
$$
求行列式$X = \\begin{vmatrix}
X_{1} & X_{2}\\\\
X_{3} & X_{4}
\\end{vmatrix}$的概率分布．', '[]', '行列式$X$的概率分布为：

$$
P(X = −1) = \\frac{84}{625},  P(X = 0) = \\frac{457}{625},  P(X = 1) = \\frac{84}{625}.
$$

', '
随机变量$X_{1}, X_{2}, X_{3}, X_{4}$相互独立且同分布，其中
$P(X_{i} = 0) = 0.6$，$P(X_{i} = 1) = 0.4$。
行列式定义为


$$
X = \\begin{vmatrix}
X_{1} & X_{2}\\\\
X_{3} & X_{4}
\\end{vmatrix} = X_{1}X_{4} - X_{2}X_{3}
$$

其可能取值为$−1, 0, 1$。
计算概率分布
设$p = P(X_{i} = 1) = \\frac{2}{5}$，则$p^{2} = \\frac{4}{25}$。
$P(X = 1) = P(X_{1}X_{4} = 1, X_{2}X_{3} = 0) = p^{2}(1 - p^{2}) = \\frac{84}{625}$$P(X = −1) = P(X_{1}X_{4} = 0, X_{2}X_{3} = 1) = (1 - p^{2})p^{2} = \\frac{84}{625}$$P(X = 0) = 1 - P(X = 1) - P(X = −1) = \\frac{457}{625}$
因此，行列式$X$的概率分布为：

$$
P(X = −1) = \\frac{84}{625},  P(X = 0) = \\frac{457}{625},  P(X = 1) = \\frac{84}{625}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:17', 9, 'Mogullzr', '2026-01-29 14:09:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '825');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '825');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '825');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (826, '1994年考研数学卷4第20题', '简单', '考研数学1994年卷4真题', '假设由自动线加工的某种零件的内径$X$(毫米)服从正态分布$N(μ, 1)$，内径小于$10$或大于$12$的为不合格品，其余为合格品，销售每件合格品获利，销售每件不合格品亏损．已知销售利润$T$(单位:元)与销售零件的内径$X$有如下关系:
$$
T = \\begin{cases} −1 & X < 10 \\\\ 20 & 10 ≤ X ≤ 12 \\\\ −5 & X > 12. \\end{cases}
$$
问平均内径$μ$取何值时，销售一个零件的平均利润最大?', '[]', '
$μ = 11 - \\frac{1}{2} \\ln \\frac{25}{21}$
', '
依据数学期望的计算公式及一般正态分布的标准化方法，有


$$
\\begin{array}{cc}
E(T) & = −P\\{X < 10\\} + 20P\\{10 ≤ X ≤ 12\\} - 5P\\{X > 12\\} \\\\
 & = −Φ(10 - μ) + 20 \\lbrack Φ(12 - μ) - Φ(10 - μ) \\rbrack  - 5 \\lbrack 1 - Φ(12 - μ) \\rbrack  \\\\
 & = 25Φ(12 - μ) - 21Φ(10 - μ) - 5. \\\\
\\end{array}
$$

此时数学期望依赖于参数$μ$，为使其达到最大值，令其一阶导数为0，有


$$
\\frac{dE(T)}{dμ} = −25φ(12 - μ) + 21φ(10 - μ) = \\frac{1}{\\sqrt{2π}}  \\lbrack 21e^{−\\frac{(10-μ)2}{2}} - 25e^{−\\frac{(12-μ)2}{2}} \\rbrack  ,
$$

令$\\frac{dE(T)}{dμ} = 0$，得


$$
21e^{−\\frac{(10-μ)2}{2}} - 25e^{−\\frac{(12-μ)2}{2}} = 0 ⇒ 21e^{−\\frac{(10-μ)2}{2}} = 25e^{−\\frac{(12-μ)2}{2}}.
$$

解上面的方程得$μ = μ_{0} = 11 - \\frac{1}{2} \\ln \\frac{25}{21} ≈ 10.9$。得到唯一驻点$μ = μ_{0} ≈ 10.9$，因为此问题是实际问题，所以平均利润函数必然有最大值，而且这个最大值是唯一的。由题意知，当$μ = μ_{0} ≈ 10.9$毫米时，平均利润最大。
', 9, 'Mogullzr', '2026-01-29 14:09:17', 9, 'Mogullzr', '2026-01-29 14:09:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '826');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '826');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '826');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (827, '1994年考研数学卷5第1题', '', '考研数学1994年卷5真题', '/problems/other/807', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (828, '1994年考研数学卷5第2题', '', '考研数学1994年卷5真题', '/problems/other/808', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (829, '1994年考研数学卷5第3题', '', '考研数学1994年卷5真题', '/problems/other/809', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (830, '1994年考研数学卷5第4题', '', '考研数学1994年卷5真题', '/problems/other/810', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (831, '1994年考研数学卷5第5题', '简单', '考研数学1994年卷5真题', '假设一批产品中一，三等品各占60%，30%，10%，从中随意取出一件，结果不是二等品，则取到的是一等品的概率为', '[]', '$\\frac{2}{3}$
', '
设事件$A$为取到一等品，事件$B$为取到不是三等品。
需要求条件概率$P(A∣B)$。
根据条件概率公式：


$$
P(A∣B) = \\frac{P(A ∩ B)}{P(B)}
$$

由于一等品不是三等品，即$A ⊆ B$，因此


$$
P(A ∩ B) = P(A) = 0.6
$$

又


$$
P(B) = P(不是三等品) = 0.6 + 0.3 = 0.9
$$

因此


$$
P(A∣B) = \\frac{0.6}{0.9} = \\frac{2}{3}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '831');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '831');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (832, '1994年考研数学卷5第6题', '', '考研数学1994年卷5真题', '/problems/other/795', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (833, '1994年考研数学卷5第7题', '简单', '考研数学1994年卷5真题', '设函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上连续，且$f(x) > 0$，
则方程$\\int_{a}^{x} f(t)dt + \\int_{b}^{x} \\frac{1}{f(t)}dt = 0$在开区间$(a, b)$内的根有', '[''$0$个．'', ''$1$个．'', ''$2$个．'', ''无穷多个．'']', "['B']", '
令

$$
F(x) = \\int_{a}^{x} f(t) dt + \\int_{b}^{x} \\frac{1}{f(t)} dt.
$$
由于$f(x)$在$\\lbrack a, b \\rbrack$上连续且$f(x) > 0$，则$F(x)$在$\\lbrack a, b \\rbrack$上连续。
计算

$$
F(a) = − \\int_{a}^{b} \\frac{1}{f(t)} dt < 0,  F(b) = \\int_{a}^{b} f(t) dt > 0.
$$
由中间值定理，存在$c ∈ (a, b)$使得$F(c) = 0$。
进一步，求导得

$$
F^{′}(x) = f(x) + \\frac{1}{f(x)}.
$$
由$f(x) > 0$，有

$$
f(x) + \\frac{1}{f(x)} ≥ 2,
$$
等号成立当且仅当$f(x) = 1$，此时仍有$F^{′}(x) ≥ 2 > 0$。
因此$F^{′}(x) > 0$在$\\lbrack a, b \\rbrack$上恒成立，即$F(x)$严格递增。
故方程$F(x) = 0$在$(a, b)$内有且仅有一个根。', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '833');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '833');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '833');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (834, '1994年考研数学卷5第8题', '简单', '考研数学1994年卷5真题', '设$A$,$B$都是$n$阶非零矩阵，且$AB = O$，则$A$和$B$的秩', '[''必有一个等于零．'', ''都小于$n$．'', ''一个小于$n$，一个等于$n$．'', ''都等于$n$．'']', "['B']", '
已知$A$和$B$都是$n$阶非零矩阵，且$AB = O$。由矩阵秩的性质可得：
$$
rank(A) + rank(B) ≤ n
$$
由于$A$和$B$非零，它们的秩至少为 1。选项 A 错误，因为秩不可能为零；选项 D 错误，因为若$rank(A) = rank(B) = n$，则$rank(A) + rank(B) = 2n > n$，与不等式矛盾；选项 C 错误，因为若一个矩阵的秩为$n$，则另一个矩阵的秩必须小于等于 0，与秩至少为 1 矛盾。因此，唯一正确的是选项 B，即$A$和$B$的秩都小于$n$。', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '834');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '834');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '834');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (835, '1994年考研数学卷5第9题', '简单', '考研数学1994年卷5真题', '设有向量组$α_{1} = (1, −1, 2, 4)$,$α_{2} = (0, 3, 1, 2)$,$α_{3} = (3, 0, 7, 14)$,$α_{4} = (1, −2, 2, 0)$,$α_{5} = (2, 1, 5, 10)$，则该向量组的极大线性无关组是', '[''$α_{1}$,$α_{2}$,$α_{3}$．'', ''$α_{1}$,$α_{2}$,$α_{4}$．'', ''$α_{1}$,$α_{2}$,$α_{5}$．'', ''$α_{1}$,$α_{2}$,$α_{4}$,$α_{5}$．'']', "['B']", '
为求向量组的极大线性无关组，将向量作为列构造矩阵：
$$
A = \\left( \\begin{array}{ccccc}
1 & 0 & 3 & 1 & 2 \\\\
−1 & 3 & 0 & −2 & 1 \\\\
2 & 1 & 7 & 2 & 5 \\\\
4 & 2 & 14 & 0 & 10 \\\\
\\end{array} \\right)
$$
进行行简化阶梯形化简：
$$
\\left( \\begin{array}{ccccc}
1 & 0 & 3 & 1 & 2 \\\\
0 & 3 & 3 & −1 & 3 \\\\
0 & 1 & 1 & 0 & 1 \\\\
0 & 2 & 2 & −4 & 2 \\\\
\\end{array} \\right)
$$
主元位于第1、2、4列，对应向量$α_{1}, α_{2}, α_{4}$为极大线性无关组，故选B。由行简化阶梯形可得：
$$
α_{3} = 3α_{1} + α_{2},  α_{5} = 2α_{1} + α_{2}
$$
因此$α_{3}, α_{5}$可由$α_{1}, α_{2}$线性表示，而$α_{4}$独立。其他选项包含线性相关向量或不能表示全体向量，故不正确。', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '835');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '835');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '835');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (836, '1994年考研数学卷5第10题', '', '考研数学1994年卷5真题', '/problems/other/815', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (837, '1994年考研数学卷5第11题', '简单', '考研数学1994年卷5真题', '求极限$\\lim_{x→∞}  \\lbrack x - x^{2} \\ln (1 + \\frac{1}{x}) \\rbrack$．', '[]', '$\\frac{1}{2}$
', '考虑极限$\\lim_{x→∞}  \\lbrack x - x^{2} \\ln (1 + \\frac{1}{x}) \\rbrack$。令$t = \\frac{1}{x}$，则当$x → ∞$时，$t → 0^{+}$，原式化为：

$$
\\lim_{t→0^{+}}  \\lbrack \\frac{1}{t} - \\frac{1}{t^{2}} \\ln(1 + t) \\rbrack  = \\lim_{t→0^{+}} \\frac{t - \\ln(1 + t)}{t^{2}}.
$$

当$t → 0^{+}$时，分子$t - \\ln(1 + t)$和分母$t^{2}$均趋于 0，应用洛必达法则：
分子导数为$1 - \\frac{1}{1+t}$，分母导数为$2t$，因此：

$$
\\lim_{t→0^{+}} \\frac{1 - \\frac{1}{1+t}}{2t} = \\lim_{t→0^{+}} \\frac{\\frac{t}{1+t}}{2t} = \\lim_{t→0^{+}} \\frac{1}{2(1 + t)} = \\frac{1}{2}.
$$

或者，利用泰勒展开：当$x → ∞$时，$\\ln (1 + \\frac{1}{x}) = \\frac{1}{x} - \\frac{1}{2x^{2}} + \\frac{1}{3x^{3}} - ⋯$，代入得：

$$
x - x^{2} (\\frac{1}{x} - \\frac{1}{2x^{2}} + \\frac{1}{3x^{3}} - ⋯ ) = x - x + \\frac{1}{2} - \\frac{1}{3x} + ⋯ = \\frac{1}{2} + o(1),
$$

故极限为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '837');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '837');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (838, '1994年考研数学卷5第12题', '', '考研数学1994年卷5真题', '/problems/other/819', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (839, '1994年考研数学卷5第13题', '简单', '考研数学1994年卷5真题', '设$\\frac{\\sin x}{x}$是$f(x)$的一个原函数，求$∫ x^{3}f^{′}(x)dx$．', '[]', '

$$
∫ x^{3}f^{′}(x) dx = x^{2} \\cos x - 4x \\sin x - 6 \\cos x + C
$$

', '已知$\\frac{\\sin x}{x}$是$f(x)$的一个原函数，因此$f(x) = \\frac{d}{dx} (\\frac{\\sin x}{x})$。计算得：

$$
f(x) = \\frac{x \\cos x - \\sin x}{x^{2}}
$$

需要求$∫ x^{3}f^{′}(x) dx$，使用分部积分法，设$u = x^{3}$，$dv = f^{′}(x) dx$，则$du = 3x^{2} dx$，$v = f(x)$。于是：

$$
∫ x^{3}f^{′}(x) dx = x^{3}f(x) - ∫ 3x^{2}f(x) dx = x^{3}f(x) - 3 ∫ x^{2}f(x) dx
$$

代入$f(x)$：

$$
∫ x^{2}f(x) dx = ∫ x^{2} ⋅ \\frac{x \\cos x - \\sin x}{x^{2}} dx = ∫(x \\cos x - \\sin x) dx
$$

计算积分：

$$
∫ x \\cos x dx = x \\sin x + \\cos x,  ∫ \\sin x dx = − \\cos x
$$

所以：

$$
∫ x^{2}f(x) dx = (x \\sin x + \\cos x) - (− \\cos x) = x \\sin x + 2 \\cos x
$$

代入原式：

$$
∫ x^{3}f^{′}(x) dx = x^{3} ⋅ \\frac{x \\cos x - \\sin x}{x^{2}} - 3(x \\sin x + 2 \\cos x) = x^{2} \\cos x - x \\sin x - 3x \\sin x - 6 \\cos x
$$

简化得：

$$
∫ x^{3}f^{′}(x) dx = x^{2} \\cos x - 4x \\sin x - 6 \\cos x + C
$$

其中$C$为积分常数。
', 9, 'Mogullzr', '2026-01-29 14:09:20', 9, 'Mogullzr', '2026-01-29 14:09:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '839');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '839');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '839');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (840, '1994年考研数学卷5第14题', '简单', '考研数学1994年卷5真题', '某养殖场饲养两种鱼，若甲种鱼放养$x$（万尾），乙种鱼放养$y$（万尾），
收获时两种鱼的收获量分别为$(3 - αx - βy)x$和$(4 - βx - 2αy)y$（$α > β > 0$)．
求使产鱼总量最大的放养数．', '[]', '使产鱼总量最大的放养数为：

$$
x = \\frac{3α - 2β}{2α^{2} - β^{2}},  y = \\frac{4α - 3β}{2(2α^{2} - β^{2})}
$$

', '产鱼总量函数为：

$$
P(x, y) = (3 - αx - βy)x + (4 - βx - 2αy)y = 3x + 4y - αx^{2} - 2αy^{2} - 2βxy
$$

为求最大值，计算偏导数并令其为零：

$$
\\frac{∂P}{∂x} = 3 - 2αx - 2βy = 0,  \\frac{∂P}{∂y} = 4 - 4αy - 2βx = 0
$$

整理得方程组：

$$
\\begin{cases} αx + βy = \\frac{3}{2} \\\\ βx + 2αy = 2 \\end{cases}
$$

解此方程组，系数矩阵行列式为：

$$
D = \\begin{vmatrix}
α & β\\\\
β & 2α
\\end{vmatrix} = 2α^{2} - β^{2}
$$

由于$α > β > 0$，有$D > 0$，方程组有唯一解：

$$
x = \\begin{array}{cc}
\\frac{3}{2} & β \\\\
2 & 2α \\\\
\\end{array} = \\frac{\\frac{3}{2} ⋅ 2α - β ⋅ 2}{D} = \\frac{3α - 2β}{2α^{2} - β^{2}}
$$



$$
y = \\begin{array}{cc}
α & \\frac{3}{2} \\\\
β & 2 \\\\
\\end{array} = \\frac{α ⋅ 2 - \\frac{3}{2} ⋅ β}{D} = \\frac{2α - \\frac{3}{2}β}{2α^{2} - β^{2}} = \\frac{4α - 3β}{2(2α^{2} - β^{2})}
$$

验证二阶条件，Hessian 矩阵为：

$$
H = \\left( \\begin{array}{cc}
\\frac{∂^{2}P}{∂x^{2}} & \\frac{∂^{2}P}{∂x∂y} \\\\
\\frac{∂^{2}P}{∂y∂x} & \\frac{∂^{2}P}{∂y^{2}} \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
−2α & −2β \\\\
−2β & −4α \\\\
\\end{array} \\right)
$$

一阶顺序主子式$\\frac{∂^{2}P}{∂x^{2}} = −2α < 0$，二阶顺序主子式$det(H) = (−2α)(−4α) - (−2β)2 = 8α^{2} - 4β^{2} = 4(2α^{2} - β^{2}) > 0$，故 Hessian 负定，该临界点为最大值点。且$x > 0$、$y > 0$，因此为所求放养数。
', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '840');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '840');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '840');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (841, '1994年考研数学卷5第15题', '简单', '考研数学1994年卷5真题', '已知曲线$y = a\\sqrt{x}$（$a > 0$）与曲线$y = \\ln \\sqrt{x}$在点$(x_{0}, y_{0})$处有公共切线，求：(1) 常数$a$及切点$(x_{0}, y_{0})$；(2) 两曲线与$x$轴围成的平面图形的面积$S$．', '[]', '
(1)$a = \\frac{1}{e}$, 切点为$(e^{2}, 1)$
(2)$S = \\frac{1}{6}e^{2} - \\frac{1}{2}$
', '
(Ⅰ) 由$y = a\\sqrt{x}$知$y^{′} = \\frac{a}{2\\sqrt{x}}$。由$y = \\ln \\sqrt{x}$知$y^{′} = \\frac{1}{2x}$。由于两曲线在$(x_{0}, y_{0})$处有公共切线，可得

$$
\\frac{a}{2\\sqrt{x_{0}}} = \\frac{1}{2x_{0}} ⇒ x_{0} = \\frac{1}{a^{2}}
$$

将$x_{0} = \\frac{1}{a^{2}}$分别代入两曲线方程，有

$$
y_{0} = a\\sqrt{\\frac{1}{a^{2}}} = \\ln \\sqrt{\\frac{1}{a^{2}}} ⇒ y_{0} = 1 = \\ln \\sqrt{\\frac{1}{a^{2}}}
$$

于是$a = \\frac{1}{e}, x_{0} = \\frac{1}{a^{2}} = e^{2}$，从而切点为$(e^{2}, 1)$。
(Ⅱ) 由面积公式可得

$$
S = \\int_{0}^{1}(e^{2y} - e^{2}y^{2})dy = \\frac{1}{6}e^{2} - \\frac{1}{2}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '841');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '841');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '841');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (842, '1994年考研数学卷5第16题', '', '考研数学1994年卷5真题', '/problems/other/820', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (843, '1994年考研数学卷5第17题', '简单', '考研数学1994年卷5真题', '设$α_{1}$,$α_{2}$,$α_{3}$是齐次线性方程组$Ax = 0$的一个基础解系，
证明：$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} + α_{1}$也是该方程组的一个基础解系．', '[]', '
$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} + α_{1}$是齐次线性方程组$Ax = 0$的一个基础解系。
', '
首先，证明$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} + α_{1}$都是$Ax = 0$的解。由于$α_{1}, α_{2}, α_{3}$是基础解系，故$Aα_{1} = 0$,$Aα_{2} = 0$,$Aα_{3} = 0$。因此，
$A(α_{1} + α_{2}) = Aα_{1} + Aα_{2} = 0 + 0 = 0$，
$A(α_{2} + α_{3}) = Aα_{2} + Aα_{3} = 0 + 0 = 0$，
$A(α_{3} + α_{1}) = Aα_{3} + Aα_{1} = 0 + 0 = 0$，
即这些向量都是解。
其次，证明$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} + α_{1}$线性无关。设存在常数$k_{1}, k_{2}, k_{3}$使得
$k_{1}(α_{1} + α_{2}) + k_{2}(α_{2} + α_{3}) + k_{3}(α_{3} + α_{1}) = 0$。
展开并整理得：
$(k_{1} + k_{3})α_{1} + (k_{1} + k_{2})α_{2} + (k_{2} + k_{3})α_{3} = 0$。
由于$α_{1}, α_{2}, α_{3}$线性无关，故系数为零：
$k_{1} + k_{3} = 0$，
$k_{1} + k_{2} = 0$，
$k_{2} + k_{3} = 0$。
解此方程组：由第一式得$k_{3} = −k_{1}$，由第二式得$k_{2} = −k_{1}$，代入第三式得$k_{2} + k_{3} = −k_{1} - k_{1} = −2k_{1} = 0$，所以$k_{1} = 0$，进而$k_{2} = 0$,$k_{3} = 0$。因此，线性无关。
最后，由于$α_{1}, α_{2}, α_{3}$是基础解系，解空间的维数为 3，而$α_{1} + α_{2}$,$α_{2} + α_{3}$,$α_{3} + α_{1}$是三个线性无关的解向量，故它们张成整个解空间，从而构成基础解系。
', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '843');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '843');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (844, '1994年考研数学卷5第18题', '', '考研数学1994年卷5真题', '/problems/other/824', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (845, '1994年考研数学卷5第19题', '简单', '考研数学1994年卷5真题', '假设随机变量$X$的概率密度为$f(x) = \\begin{cases} 2x & 0 < x < 1 \\\\ 0 & 其他. \\end{cases}$现在对$X$进行$n$次独立重复观测，
以$V_{n}$表示观测值不大于$0.1$的次数，试求随机变量$V_{n}$的概率分布．', '[]', '
$V_{n} ∼ B(n, 0.01)$，即$P(V_{n} = k) = (\\frac{n}{k})(0.01)k(0.99)n−k,  k = 0, 1, 2, … , n.$
', '
随机变量$X$的概率密度函数为$f(x) = 2x$（$0 < x < 1$），对$X$进行$n$次独立重复观测。$V_{n}$表示观测值不大于 0.1 的次数。每次观测中，事件“观测值不大于 0.1”的概率为$p = P(X ≤ 0.1)$。计算$p$：


$$
p = \\int_{0}^{0.1} f(x) dx = \\int_{0}^{0.1} 2x dx =  \\lbrack x^{2} \\rbrack _{0}^{0.1} = (0.1)2 = 0.01.
$$

因此，每次观测中成功概率为$p = 0.01$。由于观测是独立的，$V_{n}$服从二项分布$B(n, 0.01)$，其概率分布为：


$$
P(V_{n} = k) = (\\frac{n}{k})(0.01)k(0.99)n−k,  k = 0, 1, 2, … , n.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '845');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '845');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (846, '1994年考研数学卷5第20题', '', '考研数学1994年卷5真题', '/problems/other/826', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:21', 9, 'Mogullzr', '2026-01-29 14:09:21', 0, 4);
