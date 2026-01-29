INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (106, '1988年考研数学卷1第1题', '简单', '考研数学1988年卷1真题', '求幂级数$\\sum_{n=1}^{∞} \\frac{(x-3)n}{n⋅3^{n}}$的收敛域．', '[]', '


$$
\\lbrack 0, 6)
$$

', '
考虑幂级数$\\sum_{n=1}^{∞} \\frac{(x-3)n}{n⋅3^{n}}$，使用比值判别法。令$u_{n} = \\frac{(x-3)n}{n⋅3^{n}}$，则


$$
​\\frac{u_{n+1}}{u_{n}}​ = ​\\frac{\\frac{(x-3)n+1}{(n+1)⋅3^{n+1}}}{\\frac{(x-3)n}{n⋅3^{n}}}​ = ​\\frac{(x - 3) ⋅ n}{(n + 1) ⋅ 3}​ = \\frac{∣x - 3∣}{3} ⋅ \\frac{n}{n + 1}.
$$

当$n → ∞$时，$\\frac{n}{n+1} → 1$，因此


$$
\\lim_{n→∞} ​\\frac{u_{n+1}}{u_{n}}​ = \\frac{∣x - 3∣}{3}.
$$

根据比值判别法，当$\\frac{∣x-3∣}{3} < 1$时级数绝对收敛，即$∣x - 3∣ < 3$，解得$0 < x < 6$。收敛半径为 3。
检查端点：
当$x = 0$时，级数为$\\sum_{n=1}^{∞} \\frac{(−3)n}{n⋅3^{n}} = \\sum_{n=1}^{∞} \\frac{(−1)n}{n}$，该交错级数收敛（莱布尼茨准则）。
当$x = 6$时，级数为$\\sum_{n=1}^{∞} \\frac{3^{n}}{n⋅3^{n}} = \\sum_{n=1}^{∞} \\frac{1}{n}$，调和级数发散。
因此，收敛域为$\\lbrack 0, 6)$。
', 9, 'Mogullzr', '2026-01-29 14:06:26', 9, 'Mogullzr', '2026-01-29 14:06:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '106');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '106');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '106');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (107, '1988年考研数学卷1第2题', '简单', '考研数学1988年卷1真题', '已知$f(x) = e^{x^{2}}$,$f \\lbrack ϕ(x) \\rbrack  = 1 - x$且$ϕ(x) ≥ 0$，求$ϕ(x)$，并写出它的定义域．', '[]', '$ϕ(x) = \\sqrt{\\ln(1 - x)}$，定义域为$(−∞, 0 \\rbrack$
', '已知$f(x) = e^{x^{2}}$且$f \\lbrack ϕ(x) \\rbrack  = 1 - x$，代入得$e^{ \\lbrack ϕ(x) \\rbrack 2} = 1 - x$。
由于$e^{ \\lbrack ϕ(x) \\rbrack 2} > 0$，因此$1 - x > 0$，即$x < 1$。
对等式两边取自然对数，得$\\lbrack ϕ(x) \\rbrack 2 = \\ln(1 - x)$。
由于$\\lbrack ϕ(x) \\rbrack 2 ≥ 0$，故$\\ln(1 - x) ≥ 0$，即$1 - x ≥ 1$，解得$x ≤ 0$。
结合$x < 1$，定义域为$x ≤ 0$。
又因为$ϕ(x) ≥ 0$，所以取平方根得$ϕ(x) = \\sqrt{\\ln(1 - x)}$。
验证：当$x ≤ 0$时，$f \\lbrack ϕ(x) \\rbrack  = e^{ \\lbrack ϕ(x) \\rbrack 2} = e^{\\ln(1-x)} = 1 - x$，满足条件。
因此，$ϕ(x) = \\sqrt{\\ln(1 - x)}$，定义域为$(−∞, 0 \\rbrack$。
', 9, 'Mogullzr', '2026-01-29 14:06:26', 9, 'Mogullzr', '2026-01-29 14:06:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '107');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '107');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1022', '107');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (108, '1988年考研数学卷1第3题', '简单', '考研数学1988年卷1真题', '设$S$为曲面$x^{2} + y^{2} + z^{2} = 1$的外侧，计算曲面积分
$$
I = \\int\\kern{-8pt}\\int \\kern{-23mu} \\bigcirc \\bf^{S​} x^{3}dydz + y^{3}dzdx + z^{3}dxdy.
$$
', '[]', '$\\frac{12π}{5}$
', '考虑向量场$F = (x^{3}, y^{3}, z^{3})$，则曲面积分$I = ∬​_{S} x^{3} dy dz + y^{3} dz dx + z^{3} dx dy$可写为$∬​_{S} F ⋅ dS$。由于曲面$S$是球面$x^{2} + y^{2} + z^{2} = 1$的外侧，应用高斯散度定理，有：

$$
I = \\iiint_{V} ∇ ⋅ F dV
$$

其中$V$是球体$x^{2} + y^{2} + z^{2} ≤ 1$。计算散度：

$$
∇ ⋅ F = \\frac{∂}{∂x}(x^{3}) + \\frac{∂}{∂y}(y^{3}) + \\frac{∂}{∂z}(z^{3}) = 3x^{2} + 3y^{2} + 3z^{2} = 3(x^{2} + y^{2} + z^{2})
$$

因此，

$$
I = \\iiint_{V} 3(x^{2} + y^{2} + z^{2}) dV
$$

在球坐标系下，令$x = ρ \\sin ϕ \\cos θ$，$y = ρ \\sin ϕ \\sin θ$，$z = ρ \\cos ϕ$，体积元素$dV = ρ^{2} \\sin ϕ dρ dϕ dθ$，且$x^{2} + y^{2} + z^{2} = ρ^{2}$。积分区域为$ρ ∈  \\lbrack 0, 1 \\rbrack$，$ϕ ∈  \\lbrack 0, π \\rbrack$，$θ ∈  \\lbrack 0, 2π \\rbrack$。代入得：

$$
I = 3 \\int_{0}^{2π} \\int_{0}^{π} \\int_{0}^{1} ρ^{2} ⋅ ρ^{2} \\sin ϕ dρ dϕ dθ = 3 \\int_{0}^{2π} dθ \\int_{0}^{π} \\sin ϕ dϕ \\int_{0}^{1} ρ^{4} dρ
$$

计算各积分：

$$
\\int_{0}^{2π} dθ = 2π,  \\int_{0}^{π} \\sin ϕ dϕ = 2,  \\int_{0}^{1} ρ^{4} dρ = \\frac{1}{5}
$$

因此，

$$
I = 3 × 2π × 2 × \\frac{1}{5} = \\frac{12π}{5}
$$

故曲面积分$I = \\frac{12π}{5}$。
', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '108');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '108');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1021', '108');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (109, '1988年考研数学卷1第4题', '简单', '考研数学1988年卷1真题', '若$f(t) = \\lim_{x→∞} t (1 + \\frac{1}{x})^{2tx}$，则$f^{′}(t) =$______.', '[]', '
$e^{2t}(1 + 2t)$
', '
首先，计算极限：


$$
f(t) = \\lim_{x→∞} t (1 + \\frac{1}{x})^{2tx}
$$

由于$\\lim_{x→∞} (1 + \\frac{1}{x})^{x} = e$，有


$$
\\lim_{x→∞} (1 + \\frac{1}{x})^{2tx} =  \\lbrack \\lim_{x→∞} (1 + \\frac{1}{x})^{x} \\rbrack ^{2t} = e^{2t}
$$

因此，


$$
f(t) = t ⋅ e^{2t}
$$

接下来，求导数：


$$
f^{′}(t) = \\frac{d}{dt}(te^{2t}) = e^{2t} + t ⋅ 2e^{2t} = e^{2t}(1 + 2t)
$$

故$f^{′}(t) = e^{2t}(1 + 2t)$。
', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '109');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '109');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '109');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (110, '1988年考研数学卷1第5题', '简单', '考研数学1988年卷1真题', '设$f(x)$是周期为$2$的周期函数，它在区间$(−1, 1 \\rbrack$上的定义为
$$
f(x) = \\begin{cases} 2 & −1 < x ≤ 0 \\\\ x^{3} & 0 < x ≤ 1 \\end{cases}
$$
则$f(x)$的傅里叶（Fourier）级数在$x = 1$处收敛于 ______.', '[]', '
$\\frac{3}{2}$
', '
函数$f(x)$是周期为$2$的周期函数。在$x = 1$处，计算左极限和右极限：
左极限为$\\lim_{x→1^{-}} f(x) = \\lim_{x→1^{-}} x^{3} = 1$；
由于周期性，右极限为$\\lim_{x→1^{+}} f(x) = \\lim_{x→1^{+}} f(x - 2) = \\lim_{x→1^{+}} f(−1 + ϵ) = 2$（其中$ϵ > 0$且趋近于$0$）。
根据傅里叶级数的收敛性质，在跳跃间断点处，级数收敛于左极限和右极限的平均值，即$\\frac{1+2}{2} = \\frac{3}{2}$。
因此，傅里叶级数在$x = 1$处收敛于$\\frac{3}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '110');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '110');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '110');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (111, '1988年考研数学卷1第6题', '简单', '考研数学1988年卷1真题', '设$f(x)$是连续函数，且$\\int_{0}^{x^{3}-1} f(t)dt = x$，则$f(7) =$______.', '[]', '$\\frac{1}{12}$
', '给定方程$\\int_{0}^{x^{3}-1} f(t) dt = x$，其中$f(x)$是连续函数。对两边关于$x$求导，利用微积分基本定理和链式法则，左边导数为$f(x^{3} - 1) ⋅ \\frac{d}{dx}(x^{3} - 1) = f(x^{3} - 1) ⋅ 3x^{2}$，右边导数为$1$。因此：

$$
f(x^{3} - 1) ⋅ 3x^{2} = 1
$$

解得：

$$
f(x^{3} - 1) = \\frac{1}{3x^{2}}
$$

要求$f(7)$，令$x^{3} - 1 = 7$，则$x^{3} = 8$，即$x = 2$。代入上式：

$$
f(7) = \\frac{1}{3 ⋅ 2^{2}} = \\frac{1}{12}
$$

故$f(7) = \\frac{1}{12}$。
', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '111');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '111');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '111');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (112, '1988年考研数学卷1第7题', '简单', '考研数学1988年卷1真题', '设$4 × 4$矩阵$A = (α, γ_{2}, γ_{3}, γ_{4})$，$B = (β, γ_{2}, γ_{3}, γ_{4})$，
其中$α$,$β$,$γ_{2}$,$γ_{3}$,$γ_{4}$均为$4$维列向量，
且已知行列式$∣A∣ = 4$，$∣B∣ = 1$，则行列式$∣A + B∣ =$______.', '[]', '$40$
', '给定矩阵$A = (α, γ_{2}, γ_{3}, γ_{4})$和$B = (β, γ_{2}, γ_{3}, γ_{4})$，且$∣A∣ = 4$，$∣B∣ = 1$。
首先计算$A + B$：


$$
A + B = (α + β, γ_{2} + γ_{2}, γ_{3} + γ_{3}, γ_{4} + γ_{4}) = (α + β, 2γ_{2}, 2γ_{3}, 2γ_{4}).
$$

行列式$∣A + B∣$为：


$$
∣A + B∣ = ∣α + β, 2γ_{2}, 2γ_{3}, 2γ_{4}∣.
$$

利用行列式的多重线性性质，将每一列的标量因子提出：


$$
∣A + B∣ = 2 ⋅ 2 ⋅ 2 ⋅ ∣α + β, γ_{2}, γ_{3}, γ_{4}∣ = 8∣α + β, γ_{2}, γ_{3}, γ_{4}∣.
$$

再根据行列式对某一列的线性性质：


$$
∣α + β, γ_{2}, γ_{3}, γ_{4}∣ = ∣α, γ_{2}, γ_{3}, γ_{4}∣ + ∣β, γ_{2}, γ_{3}, γ_{4}∣ = ∣A∣ + ∣B∣ = 4 + 1 = 5.
$$

因此，


$$
∣A + B∣ = 8 × 5 = 40.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '112');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '112');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (113, '1988年考研数学卷1第8题', '简单', '考研数学1988年卷1真题', '若函数$y = f(x)$可导，且有$f^{′}(x_{0}) = \\frac{1}{2}$，
则当$Δx → 0$时，该函数在$x = x_{0}$处的微分$dy$是', '[''与$Δx$等价的无穷小．'', ''与$Δx$同阶的无穷小．'', ''比$Δx$低阶的无穷小．'', ''比$Δx$高阶的无穷小．'']', "['B']", '函数在$x = x_{0}$处的微分定义为$dy = f^{′}(x_{0})Δx$。已知$f^{′}(x_{0}) = \\frac{1}{2}$，因此$dy = \\frac{1}{2}Δx$。当$Δx → 0$时，$\\frac{dy}{Δx} = \\frac{1}{2}$，是一个非零常数，所以$dy$与$Δx$是同阶无穷小。选项A要求比值为1，不满足；选项C和D要求比值趋于0，也不满足。故正确答案为B。', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '113');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '113');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '113');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (114, '1988年考研数学卷1第9题', '简单', '考研数学1988年卷1真题', '设$y = f(x)$是方程$y^{′′} - 2y^{′} + 4y = 0$的一个解，若$f(x_{0}) > 0$，
且$f^{′}(x_{0}) = 0$，则函数$f(x)$在点$x_{0}$', '[''取得极大值．'', ''取得极小值．'', ''某个邻域内单调增加．'', ''某个邻域内单调减少．'']', "['A']", '由微分方程$y^{′′} - 2y^{′} + 4y = 0$及条件$f^{′}(x_{0}) = 0$和$f(x_{0}) > 0$，代入点$x_{0}$得：

$$
f^{′′}(x_{0}) - 2 ⋅ 0 + 4f(x_{0}) = 0
$$
即

$$
f^{′′}(x_{0}) = −4f(x_{0}) < 0
$$
由于$f^{′′}(x_{0}) < 0$，函数$f(x)$在点$x_{0}$处取得极大值。因此，选项 A 正确。', 9, 'Mogullzr', '2026-01-29 14:06:27', 9, 'Mogullzr', '2026-01-29 14:06:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '114');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '114');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1051', '114');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (115, '1988年考研数学卷1第10题', '简单', '考研数学1988年卷1真题', '设有空间区域$Ω_{1} : x^{2} + y^{2} + z^{2} ≤ R^{2}, z ≥ 0$；及$Ω_{2} : x^{2} + y^{2} + z^{2} ≤ R^{2},  x ≥ 0, y ≥ 0, z ≥ 0$，则', '[''$\\\\iiint_{Ω_{1}} xdv = 4 \\\\iiint_{Ω_{2}} xdv$．'', ''$\\\\iiint_{Ω_{1}} ydv = 4 \\\\iiint_{Ω_{2}} ydv$．'', ''$\\\\iiint_{Ω_{1}} zdv = 4 \\\\iiint_{Ω_{2}} zdv$．'', ''$\\\\iiint_{Ω_{1}} xyzdv = 4 \\\\iiint_{Ω_{2}} xyzdv$．'']', "['C']", '
考虑选项 C：$\\iiint_{Ω_{1}} z dv$与$\\iiint_{Ω_{2}} z dv$。对于$Ω_{1}$（上半球）：
使用球坐标

$$
x = r \\sin ϕ \\cos θ,  y = r \\sin ϕ \\sin θ,  z = r \\cos ϕ,  dv = r^{2} \\sin ϕ dr dϕ dθ,
$$
积分区域为

$$
r ∈  \\lbrack 0, R \\rbrack ,  ϕ ∈  \\lbrack 0, π/2 \\rbrack ,  θ ∈  \\lbrack 0, 2π \\rbrack .
$$
计算得

$$
\\iiint_{Ω_{1}} z dv = \\int_{0}^{2π} dθ \\int_{0}^{π/2} \\cos ϕ \\sin ϕ dϕ \\int_{0}^{R} r^{3} dr = 2π ⋅ \\frac{1}{2} ⋅ \\frac{R^{4}}{4} = \\frac{πR^{4}}{4}.
$$
对于$Ω_{2}$（第一卦限半球）：
积分区域为

$$
r ∈  \\lbrack 0, R \\rbrack ,  ϕ ∈  \\lbrack 0, π/2 \\rbrack ,  θ ∈  \\lbrack 0, π/2 \\rbrack .
$$
计算得

$$
\\iiint_{Ω_{2}} z dv = \\int_{0}^{π/2} dθ \\int_{0}^{π/2} \\cos ϕ \\sin ϕ dϕ \\int_{0}^{R} r^{3} dr = \\frac{π}{2} ⋅ \\frac{1}{2} ⋅ \\frac{R^{4}}{4} = \\frac{πR^{4}}{16}.
$$
因此

$$
\\iiint_{Ω_{1}} z dv = 4 ⋅ \\iiint_{Ω_{2}} z dv,
$$
选项 C 正确。对于选项 A 和 B：
由于$Ω_{1}$关于$yz$平面和$xz$平面对称，而$x$和$y$分别为奇函数，因此

$$
\\iiint_{Ω_{1}} x dv = 0,  \\iiint_{Ω_{1}} y dv = 0,
$$
但在$Ω_{2}$中$\\iiint_{Ω_{2}} x dv > 0$，$\\iiint_{Ω_{2}} y dv > 0$，故 A 和 B 不成立。对于选项 D：
由于$Ω_{1}$关于各坐标平面对称，而$xyz$为奇函数，因此

$$
\\iiint_{Ω_{1}} xyz dv = 0,
$$
但在$Ω_{2}$中$\\iiint_{Ω_{2}} xyz dv > 0$，故 D 不成立。', 9, 'Mogullzr', '2026-01-29 14:06:28', 9, 'Mogullzr', '2026-01-29 14:06:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '115');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '115');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '115');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (116, '1988年考研数学卷1第11题', '简单', '考研数学1988年卷1真题', '若$\\sum_{n=1}^{∞} a_{n}(x - 1)n$在$x = −1$处收敛，则此级数在$x = 2$处', '[''条件收敛．'', ''绝对收敛．'', ''发散．'', ''收敛性不能确定．'']', "['B']", '给定幂级数$\\sum_{n=1}^{∞} a_{n}(x - 1)n$在$x = −1$处收敛，其中心为$x = 1$。收敛点$x = −1$到中心的距离为$∣ - 1 - 1∣ = 2$，因此收敛半径$R ≥ 2$。考虑$x = 2$，该点到中心的距离为$∣2 - 1∣ = 1$。由于$1 < R$，级数在$x = 2$处绝对收敛。故正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:06:28', 9, 'Mogullzr', '2026-01-29 14:06:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '116');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '116');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '116');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (117, '1988年考研数学卷1第12题', '简单', '考研数学1988年卷1真题', '$n$维向量组$α_{1}, α_{2}, ⋯  , α_{s}$（$3 ≤ s ≤ n$）
线性无关的充分必要条件是', '[''存在一组不全为$0$的数$k_{1}, k_{2}, … , k_{s}$，使$α_{1}k_{1} + α_{2}k_{2} + ⋯ + α_{s}k_{s} \\\\neq 0$．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$中任意两个向量都线性无关．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$中存在一个向量，它不能用其余向量线性表示．'', ''$α_{1}, α_{2}, ⋯  , α_{s}$中任意一个向量都不能用其余向量线性表示．'']', "['D']", '线性无关的充分必要条件是向量组中任意一个向量都不能由其余向量线性表示。选项D恰好表述了这一条件，因此是正确的。选项A仅说明存在非零线性组合不为零，这在线性相关时也可能成立，故不是充分条件。选项B要求任意两个向量线性无关，但整体可能线性相关，例如三维空间中三个共面但不共线的向量。选项C只要求存在一个向量不能由其余表示，但在线性相关时也可能存在这样的向量，故不是充分条件。', 9, 'Mogullzr', '2026-01-29 14:06:28', 9, 'Mogullzr', '2026-01-29 14:06:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '117');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '117');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '117');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (118, '1988年考研数学卷1第13题', '简单', '考研数学1988年卷1真题', '设$u = yf (\\frac{x}{y}) + xg (\\frac{y}{x})$，
其中函数$f, g$具有二阶连续导数，
求$x\\frac{∂^{2}u}{∂x^{2}} + y\\frac{∂^{2}u}{∂x∂y}$．', '[]', '$0$
', '给定函数$u = yf (\\frac{x}{y}) + xg (\\frac{y}{x})$，其中$f$和$g$具有二阶连续导数。需要计算$x\\frac{∂^{2}u}{∂x^{2}} + y\\frac{∂^{2}u}{∂x∂y}$.
首先，计算一阶偏导数：
设$s = \\frac{x}{y}$,$t = \\frac{y}{x}$，则

$$
\\frac{∂u}{∂x} = f^{′}(s) + g(t) - tg^{′}(t).
$$

接着，计算二阶偏导数：

$$
\\frac{∂^{2}u}{∂x^{2}} = \\frac{∂}{∂x}  \\lbrack f^{′}(s) + g(t) - tg^{′}(t) \\rbrack  = \\frac{1}{y}f^{′′}(s) + \\frac{y^{2}}{x^{3}}g^{′′}(t),
$$



$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{∂}{∂y}  \\lbrack f^{′}(s) + g(t) - tg^{′}(t) \\rbrack  = −\\frac{x}{y^{2}}f^{′′}(s) - \\frac{y}{x^{2}}g^{′′}(t).
$$

然后，计算所需表达式：

$$
x\\frac{∂^{2}u}{∂x^{2}} = x (\\frac{1}{y}f^{′′}(s) + \\frac{y^{2}}{x^{3}}g^{′′}(t)) = \\frac{x}{y}f^{′′}(s) + \\frac{y^{2}}{x^{2}}g^{′′}(t),
$$



$$
y\\frac{∂^{2}u}{∂x∂y} = y (−\\frac{x}{y^{2}}f^{′′}(s) - \\frac{y}{x^{2}}g^{′′}(t)) = −\\frac{x}{y}f^{′′}(s) - \\frac{y^{2}}{x^{2}}g^{′′}(t).
$$

将两者相加：

$$
x\\frac{∂^{2}u}{∂x^{2}} + y\\frac{∂^{2}u}{∂x∂y} = (\\frac{x}{y}f^{′′}(s) + \\frac{y^{2}}{x^{2}}g^{′′}(t)) + (−\\frac{x}{y}f^{′′}(s) - \\frac{y^{2}}{x^{2}}g^{′′}(t)) = 0.
$$

因此，结果为 0。
', 9, 'Mogullzr', '2026-01-29 14:06:28', 9, 'Mogullzr', '2026-01-29 14:06:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '118');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '118');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '118');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (119, '1988年考研数学卷1第14题', '简单', '考研数学1988年卷1真题', '设函数$y = y(x)$满足微分方程$y^{′′} - 3y^{′} + 2y = 2e^{x}$，且其图形在点$(0, 1)$处的切线与曲线$y = x^{2} - x + 1$在该点的切线重合，求函数$y = y(x)$．', '[]', '


$$
y = (1 - 2x)e^{x}
$$

', '
给定微分方程$y^{′′} - 3y^{′} + 2y = 2e^{x}$，其对应的齐次方程为$y^{′′} - 3y^{′} + 2y = 0$。
特征方程为$r^{2} - 3r + 2 = 0$，解得$r = 1$或$r = 2$，故齐次通解为


$$
y_{h} = C_{1}e^{x} + C_{2}e^{2x}.
$$

由于非齐次项为$2e^{x}$，且$e^{x}$是齐次解的一部分，设特解形式为$y_{p} = Axe^{x}$。
计算导数：


$$
y_{p}^{′} = Ae^{x}(x + 1),  y_{p}^{′′} = Ae^{x}(x + 2).
$$

代入原方程：


$$
Ae^{x}(x + 2) - 3Ae^{x}(x + 1) + 2Axe^{x} = Ae^{x} \\lbrack (x + 2) - 3(x + 1) + 2x \\rbrack  = Ae^{x}(−1) = −Ae^{x}.
$$

令$−Ae^{x} = 2e^{x}$，得$A = −2$，故特解为


$$
y_{p} = −2xe^{x}.
$$

因此通解为


$$
y = y_{h} + y_{p} = C_{1}e^{x} + C_{2}e^{2x} - 2xe^{x}.
$$

由题设，曲线在点$(0, 1)$处的切线与曲线$y = x^{2} - x + 1$在点$(0, 1)$处的切线重合。
计算曲线$y = x^{2} - x + 1$在$x = 0$处的切线：


$$
y(0) = 1,  y^{′} = 2x - 1 ⇒ y^{′}(0) = −1.
$$

故初始条件为$y(0) = 1$，$y^{′}(0) = −1$。
由$y(0) = C_{1} + C_{2} = 1$，
计算导数：


$$
y^{′} = C_{1}e^{x} + 2C_{2}e^{2x} - 2e^{x}(x + 1) = (C_{1} - 2)e^{x} + 2C_{2}e^{2x} - 2xe^{x},
$$

代入$x = 0$：


$$
y^{′}(0) = (C_{1} - 2) + 2C_{2} = −1 ⇒ C_{1} + 2C_{2} = 1.
$$

解方程组：


$$
\\begin{cases} C_{1} + C_{2} = 1 \\\\ C_{1} + 2C_{2} = 1 \\end{cases}
$$

相减得$C_{2} = 0$，代入得$C_{1} = 1$。
因此函数为


$$
y = e^{x} - 2xe^{x} = (1 - 2x)e^{x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:28', 9, 'Mogullzr', '2026-01-29 14:06:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '119');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '119');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '119');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (120, '1988年考研数学卷1第15题', '简单', '考研数学1988年卷1真题', '设位于点$(0, 1)$的质点$A$对质点$M$的引力大小为$\\frac{k}{r^{2}}$（$k > 0$为常数，$r$为质点$A$与$M$之间的距离），质点$M$沿曲线$y = \\sqrt{2x - x^{2}}$自$B(2, 0)$运动到$O(0, 0)$，
求在此运动过程中质点$A$对质点$M$的引力所作的功．', '[]', '
$k (1 - \\frac{1}{\\sqrt{5}})$
', '
由于质点 A 对质点 M 的引力大小为$\\frac{k}{r^{2}}$，该引力为保守力，其势能函数为$U = −\\frac{k}{r}$。质点 M 从点 B(2,0) 运动到点 O(0,0)，引力所做的功等于势能的减少量，即


$$
W = U_{B} - U_{O}
$$

其中，点 B 处质点 A 与 M 的距离为$r_{B} = \\sqrt{(2 - 0)2 + (0 - 1)2} = \\sqrt{5}$，点 O 处距离为$r_{O} = \\sqrt{(0 - 0)2 + (0 - 1)2} = 1$。
因此，


$$
U_{B} = −\\frac{k}{\\sqrt{5}},  U_{O} = −k
$$



$$
W = (−\\frac{k}{\\sqrt{5}}) - (−k) = k (1 - \\frac{1}{\\sqrt{5}})
$$

故所求功为$k (1 - \\frac{1}{\\sqrt{5}})$。
', 9, 'Mogullzr', '2026-01-29 14:06:29', 9, 'Mogullzr', '2026-01-29 14:06:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '120');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '120');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '120');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (121, '1988年考研数学卷1第16题', '简单', '考研数学1988年卷1真题', '已知$AP = PB$，其中$B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$，$P = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & −1 & 0 \\\\
2 & 1 & 1 \\\\
\\end{array} \\right)$，求$A$及$A^{5}$．', '[]', '

$$
A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 0 & 0 \\\\
6 & −1 & −1 \\\\
\\end{array} \\right) ,  A^{5} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 0 & 0 \\\\
6 & −1 & −1 \\\\
\\end{array} \\right)
$$

', '已知$AP = PB$，其中$P = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & −1 & 0 \\\\
2 & 1 & 1 \\\\
\\end{array} \\right)$，$B = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$。通过计算可得$P$的逆矩阵为$P^{−1} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & −1 & 0 \\\\
−4 & 1 & 1 \\\\
\\end{array} \\right)$。于是$A = PBP^{−1}$。
计算$BP^{−1} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & 0 \\\\
4 & −1 & −1 \\\\
\\end{array} \\right)$，再计算$A = P(BP^{−1}) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & −1 & 0 \\\\
2 & 1 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & 0 \\\\
4 & −1 & −1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 0 & 0 \\\\
6 & −1 & −1 \\\\
\\end{array} \\right)$。
为求$A^{5}$，利用$A = PBP^{−1}$，则$A^{5} = PB^{5}P^{−1}$。计算$B$的幂：$B^{2} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，$B^{3} = B^{2}B = B$，因此$B^{5} = B$。故$A^{5} = PBP^{−1} = A$。
所以$A^{5} = A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 0 & 0 \\\\
6 & −1 & −1 \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:06:29', 9, 'Mogullzr', '2026-01-29 14:06:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '121');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '121');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '121');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (122, '1988年考研数学卷1第17题', '简单', '考研数学1988年卷1真题', '已知矩阵$A = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 0 & 1 \\\\
0 & 1 & x \\\\
\\end{array} \\right)$与$B = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & y & 0 \\\\
0 & 0 & −1 \\\\
\\end{array} \\right)$相似，(1) 求$x$与$y$；(2) 求一个满足$P^{−1}AP = B$的可逆矩阵$P$．', '[]', '
(1)$x = 0$，$y = 1$
(2)$P = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)$
', '
(1) 由于矩阵$A$与$B$相似，它们具有相同的特征值。矩阵$B$的特征值为$2, y, −1$。计算矩阵$A$的特征多项式：


$$
∣A - λI∣ = \\begin{vmatrix}
2 - λ & 0 & 0\\\\
0 & −λ & 1\\\\
0 & 1 & x - λ
\\end{vmatrix} = (2 - λ) \\begin{vmatrix}
−λ & 1\\\\
1 & x - λ
\\end{vmatrix} = (2 - λ)(λ^{2} - xλ - 1)
$$

特征值为$λ = 2$和$λ^{2} - xλ - 1 = 0$的根。这些根应与$B$的特征值$y$和$−1$一致。根据二次方程根的性质，根之和为$x$，根之积为$−1$。设根为$y$和$−1$，则：


$$
y + (−1) = x,  y ⋅ (−1) = −1
$$

解得$y = 1$，代入得$x = 0$。
验证：当$x = 0$时，$A$的特征值为$2, 1, −1$，与$B$的特征值一致。
(2) 求可逆矩阵$P$使得$P^{−1}AP = B$。矩阵$A$在$x = 0$时为：


$$
A = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 0 & 1 \\\\
0 & 1 & 0 \\\\
\\end{array} \\right)
$$

求特征向量：
对于特征值$λ = 2$，解$(A - 2I)v = 0$：
$A - 2I = \\left( \\begin{array}{ccc}
0 & 0 & 0 \\\\
0 & −2 & 1 \\\\
0 & 1 & −2 \\\\
\\end{array} \\right)$得特征向量$v_{1} = (1, 0, 0)T$。对于特征值$λ = 1$，解$(A - I)v = 0$：
$A - I = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & −1 & 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)$得特征向量$v_{2} = (0, 1, 1)T$。对于特征值$λ = −1$，解$(A + I)v = 0$：
$A + I = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 1 & 1 \\\\
\\end{array} \\right)$得特征向量$v_{3} = (0, 1, −1)T$。
构造矩阵$P$，其列向量为特征向量，对应特征值$2, 1, −1$：
$P = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 1 \\\\
0 & 1 & −1 \\\\
\\end{array} \\right)$验证：$P$可逆（$det(P) = −2 \\neq 0$)，且满足$P^{−1}AP = B$。
', 9, 'Mogullzr', '2026-01-29 14:06:29', 9, 'Mogullzr', '2026-01-29 14:06:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '122');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '122');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1053', '122');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (123, '1988年考研数学卷1第18题', '简单', '考研数学1988年卷1真题', '设函数$f(x)$在区间$\\lbrack a, b \\rbrack$上连续，且在$(a, b)$内有$f^{′}(x) > 0$．
证明：在$(a, b)$内存在唯一的$ξ$，使曲线$y = f(x)$与两直线$y = f(ξ)$,$x = a$所围平面图形$S_{1}$是曲线$y = f(x)$与两直线$y = f(ξ)$,$x = b$所围平面图形面积$S_{2}$的$3$倍．', '[]', '存在唯一的$ξ ∈ (a, b)$使得$S_{1} = 3S_{2}$。
', '定义函数

$$
F(ξ) = \\int_{a}^{ξ} \\lbrack f(ξ) - f(x) \\rbrack  dx - 3 \\int_{ξ}^{b} \\lbrack f(x) - f(ξ) \\rbrack  dx.
$$

由于$f(x)$在$\\lbrack a, b \\rbrack$上连续且在$(a, b)$内$f^{′}(x) > 0$，故$f(x)$严格递增。计算端点值：

$$
F(a) = \\int_{a}^{a} \\lbrack f(a) - f(x) \\rbrack  dx - 3 \\int_{a}^{b} \\lbrack f(x) - f(a) \\rbrack  dx = −3 \\int_{a}^{b} \\lbrack f(x) - f(a) \\rbrack  dx < 0,
$$



$$
F(b) = \\int_{a}^{b} \\lbrack f(b) - f(x) \\rbrack  dx - 3 \\int_{b}^{b} \\lbrack f(x) - f(b) \\rbrack  dx = \\int_{a}^{b} \\lbrack f(b) - f(x) \\rbrack  dx > 0.
$$

对$F(ξ)$求导：

$$
F^{′}(ξ) = \\frac{d}{dξ} (\\int_{a}^{ξ} \\lbrack f(ξ) - f(x) \\rbrack  dx) - 3\\frac{d}{dξ} (\\int_{ξ}^{b} \\lbrack f(x) - f(ξ) \\rbrack  dx) .
$$

由莱布尼茨公式，

$$
\\frac{d}{dξ} (\\int_{a}^{ξ} \\lbrack f(ξ) - f(x) \\rbrack  dx) =  \\lbrack f(ξ) - f(ξ) \\rbrack  + \\int_{a}^{ξ} f^{′}(ξ) dx = f^{′}(ξ)(ξ - a),
$$



$$
\\frac{d}{dξ} (\\int_{ξ}^{b} \\lbrack f(x) - f(ξ) \\rbrack  dx) = − \\lbrack f(ξ) - f(ξ) \\rbrack  + \\int_{ξ}^{b} \\lbrack −f^{′}(ξ) \\rbrack  dx = −f^{′}(ξ)(b - ξ).
$$

因此，

$$
F^{′}(ξ) = f^{′}(ξ)(ξ - a) + 3f^{′}(ξ)(b - ξ) = f^{′}(ξ)(3b - a - 2ξ).
$$

由于$f^{′}(ξ) > 0$，且对任意$ξ ∈  \\lbrack a, b \\rbrack$有

$$
3b - a - 2ξ ≥ 3b - a - 2b = b - a > 0,
$$

故$F^{′}(ξ) > 0$，即$F(ξ)$在$\\lbrack a, b \\rbrack$上严格单调递增。由介值定理，存在唯一$ξ ∈ (a, b)$使得$F(ξ) = 0$，即$S_{1} = 3S_{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:29', 9, 'Mogullzr', '2026-01-29 14:06:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '123');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '123');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '123');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (124, '1988年考研数学卷1第19题', '简单', '考研数学1988年卷1真题', '设三次独立试验中，事件$A$出现的概率相等，若已知$A$至少出现一次的概率等于$\\frac{19}{27}$，
则事件$A$在一次试验中出现的概率为______.', '[]', '

$$
\\frac{1}{3}
$$

', '设事件$A$在一次试验中出现的概率为$p$。由于三次试验独立，事件$A$至少出现一次的概率为$1 - (1 - p)3$。根据已知条件，有：

$$
1 - (1 - p)3 = \\frac{19}{27}
$$

解方程：

$$
(1 - p)3 = 1 - \\frac{19}{27} = \\frac{8}{27}
$$



$$
1 - p = \\sqrt{\\frac{8}{27}} = \\frac{2}{3}
$$



$$
p = 1 - \\frac{2}{3} = \\frac{1}{3}
$$

因此，事件$A$在一次试验中出现的概率为$\\frac{1}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:06:29', 9, 'Mogullzr', '2026-01-29 14:06:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '124');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '124');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (125, '1988年考研数学卷1第20题', '简单', '考研数学1988年卷1真题', '在区间$(0, 1)$中随机地取两个数，则事件“两数之和小于$\\frac{6}{5}$”的概率为 ______.', '[]', '$\\frac{17}{25}$
', '设两个数分别为$x$和$y$，且$x, y ∈ (0, 1)$。所有可能的点$(x, y)$构成一个单位正方形，面积为 1。事件“两数之和小于$\\frac{6}{5}$”即$x + y < \\frac{6}{5}$。
在单位正方形中，直线$x + y = \\frac{6}{5}$与边界相交于点$(0.2, 1)$和$(1, 0.2)$。区域$x + y < \\frac{6}{5}$的面积可以通过积分计算：

$$
面积 = \\int_{0}^{0.2} \\int_{0}^{1} dy dx + \\int_{0.2}^{1} \\int_{0}^{\\frac{6}{5}-x} dy dx
$$

第一积分：

$$
\\int_{0}^{0.2} 1 dx = 0.2
$$

第二积分：

$$
\\int_{0.2}^{1} (\\frac{6}{5} - x) dx =  \\lbrack \\frac{6}{5}x - \\frac{x^{2}}{2} \\rbrack _{0.2}^{1} = (\\frac{6}{5} - \\frac{1}{2}) - (\\frac{6}{5} × 0.2 - \\frac{0.2^{2}}{2}) = (\\frac{12}{10} - \\frac{5}{10}) - (\\frac{12}{50} - \\frac{0.04}{2}) = \\frac{7}{10} - (\\frac{6}{25} - 0.02) = 0.7 - (0.24 - 0.02) = 0.7 - 0.22 = 0.48
$$

总面积：

$$
0.2 + 0.48 = 0.68 = \\frac{17}{25}
$$

因此，概率为$\\frac{17}{25}$。
', 9, 'Mogullzr', '2026-01-29 14:06:30', 9, 'Mogullzr', '2026-01-29 14:06:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '125');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '125');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '125');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (126, '1988年考研数学卷1第21题', '简单', '考研数学1988年卷1真题', '设随机变量$X$服从均值为$10$，均方差为$0.02$的正态分布．已知
$$
Φ(x) = \\int_{−∞}^{x} \\frac{1}{\\sqrt{2π}}e^{−\\frac{u^{2}}{2}}du,  Φ(2.5) = 0.9938,
$$
则$X$落在区间$(9.95, 10.05)$内的概率为 ______.', '[]', '$0.9876$
', '
随机变量$X$服从正态分布，均值$μ = 10$，标准差$σ = 0.02$。需要求$X$落在区间$(9.95, 10.05)$内的概率，即$P(9.95 < X < 10.05)$。
将$X$标准化为标准正态变量$Z = \\frac{X-μ}{σ}$，则


$$
P(9.95 < X < 10.05) = P (\\frac{9.95 - 10}{0.02} < Z < \\frac{10.05 - 10}{0.02}) = P(−2.5 < Z < 2.5)
$$

标准正态分布中，$P(−2.5 < Z < 2.5) = Φ(2.5) - Φ(−2.5)$，且$Φ(−2.5) = 1 - Φ(2.5)$，因此


$$
P(−2.5 < Z < 2.5) = Φ(2.5) - (1 - Φ(2.5)) = 2Φ(2.5) - 1
$$

已知$Φ(2.5) = 0.9938$，代入得


$$
P = 2 × 0.9938 - 1 = 1.9876 - 1 = 0.9876
$$

故$X$落在区间$(9.95, 10.05)$内的概率为 0.9876。
', 9, 'Mogullzr', '2026-01-29 14:06:30', 9, 'Mogullzr', '2026-01-29 14:06:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '126');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '126');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (127, '1988年考研数学卷1第22题', '简单', '考研数学1988年卷1真题', '设随机变量$X$的概率密度函数为$f_{X}(x) = \\frac{1}{π(1+x^{2})}$，求随机变量$Y = 1 - \\sqrt{X}$的概率密度函数$f_{Y}(y)$．', '[]', '

$$
f_{Y}(y) = \\frac{3(1 - y)2}{π  \\lbrack 1 + (1 - y)6 \\rbrack },  y ∈ R
$$

', '给定随机变量$X$的概率密度函数$f_{X}(x) = \\frac{1}{π(1+x^{2})}$，以及$Y = 1 - \\sqrt{X}$。需要求$Y$的概率密度函数$f_{Y}(y)$。
使用概率密度函数的变换公式。设$Y = g(X) = 1 - X^{1/3}$，则反函数为$X = g^{−1}(Y) = (1 - Y)3$。计算反函数的导数：

$$
\\frac{d}{dy}g^{−1}(y) = \\frac{d}{dy}(1 - y)3 = 3(1 - y)2 ⋅ (−1) = −3(1 - y)2
$$

取其绝对值：

$$
​\\frac{d}{dy}g^{−1}(y)​ = 3(1 - y)2
$$

代入变换公式：

$$
f_{Y}(y) = f_{X}(g^{−1}(y)) ⋅ ​\\frac{d}{dy}g^{−1}(y)​ = f_{X}((1 - y)3) ⋅ 3(1 - y)2
$$

其中$f_{X}((1 - y)3) = \\frac{1}{π \\lbrack 1+((1-y)3)2 \\rbrack } = \\frac{1}{π \\lbrack 1+(1-y)6 \\rbrack }$。因此：

$$
f_{Y}(y) = \\frac{1}{π  \\lbrack 1 + (1 - y)6 \\rbrack } ⋅ 3(1 - y)2 = \\frac{3(1 - y)2}{π  \\lbrack 1 + (1 - y)6 \\rbrack }
$$

由于$X$服从柯西分布，其取值范围为全体实数，且$Y = 1 - \\sqrt{X}$中$\\sqrt{X}$为实数，故$Y$的取值范围也为全体实数，即$y ∈ R$。
', 9, 'Mogullzr', '2026-01-29 14:06:30', 9, 'Mogullzr', '2026-01-29 14:06:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '127');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '127');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (128, '1988年考研数学卷2第1题', '', '考研数学1988年卷2真题', '/problems/other/106', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (129, '1988年考研数学卷2第2题', '', '考研数学1988年卷2真题', '/problems/other/107', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (130, '1988年考研数学卷2第3题', '', '考研数学1988年卷2真题', '/problems/other/108', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (131, '1988年考研数学卷2第4题', '', '考研数学1988年卷2真题', '/problems/other/109', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (132, '1988年考研数学卷2第5题', '', '考研数学1988年卷2真题', '/problems/other/110', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (133, '1988年考研数学卷2第6题', '', '考研数学1988年卷2真题', '/problems/other/111', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (134, '1988年考研数学卷2第7题', '', '考研数学1988年卷2真题', '/problems/other/112', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (135, '1988年考研数学卷2第8题', '', '考研数学1988年卷2真题', '/problems/other/113', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (136, '1988年考研数学卷2第9题', '', '考研数学1988年卷2真题', '/problems/other/114', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (137, '1988年考研数学卷2第10题', '', '考研数学1988年卷2真题', '/problems/other/115', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (138, '1988年考研数学卷2第11题', '', '考研数学1988年卷2真题', '/problems/other/116', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (139, '1988年考研数学卷2第12题', '', '考研数学1988年卷2真题', '/problems/other/117', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (140, '1988年考研数学卷2第13题', '', '考研数学1988年卷2真题', '/problems/other/118', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (141, '1988年考研数学卷2第14题', '简单', '考研数学1988年卷2真题', '计算$\\int_{1}^{2} dx \\int_{\\sqrt{x}}^{x} \\sin \\frac{πx}{2y}dy + \\int_{2}^{4} dx \\int_{\\sqrt{x}}^{2} \\sin \\frac{πx}{2y}dy$．', '[]', '

$$
\\frac{4(π + 2)}{π^{3}}
$$

', '原积分为：

$$
\\int_{1}^{2} dx \\int_{\\sqrt{x}}^{x} \\sin \\frac{πx}{2y}dy + \\int_{2}^{4} dx \\int_{\\sqrt{x}}^{2} \\sin \\frac{πx}{2y}dy
$$

首先改变积分顺序。积分区域由曲线$y = \\sqrt{x}$、$y = x$和$y = 2$围成，其中$x$从 1 到 4。将积分顺序改为先对$x$后对$y$，则$y$从 1 到 2，对于每个$y$，$x$从$y$到$y^{2}$。因此，原积分化为：

$$
\\int_{1}^{2} \\int_{y}^{y^{2}} \\sin \\frac{πx}{2y}dxdy
$$

先计算内层积分：

$$
\\int_{y}^{y^{2}} \\sin \\frac{πx}{2y}dx
$$

令$u = \\frac{πx}{2y}$，则$du = \\frac{π}{2y}dx$，即$dx = \\frac{2y}{π}du$。积分限变为：当$x = y$时，$u = \\frac{π}{2}$；当$x = y^{2}$时，$u = \\frac{πy}{2}$。于是：

$$
\\int_{y}^{y^{2}} \\sin \\frac{πx}{2y}dx = \\int_{\\frac{π}{2}}^{\\frac{πy}{2}} \\sin u ⋅ \\frac{2y}{π}du = \\frac{2y}{π} \\int_{\\frac{π}{2}}^{\\frac{πy}{2}} \\sin udu = \\frac{2y}{π}  \\lbrack − \\cos u \\rbrack _{\\frac{π}{2}}^{\\frac{πy}{2}} = \\frac{2y}{π} (− \\cos (\\frac{πy}{2}) + \\cos (\\frac{π}{2})) = −\\frac{2y}{π} \\cos (\\frac{πy}{2})
$$

代入外层积分：

$$
\\int_{1}^{2} (−\\frac{2y}{π} \\cos (\\frac{πy}{2})) dy = −\\frac{2}{π} \\int_{1}^{2} y \\cos (\\frac{πy}{2}) dy
$$

计算积分$J = \\int_{1}^{2} y \\cos (\\frac{πy}{2}) dy$。使用分部积分法，令$u = y$，$dv = \\cos (\\frac{πy}{2}) dy$，则$du = dy$，$v = \\frac{2}{π} \\sin (\\frac{πy}{2})$。于是：

$$
J =  \\lbrack y ⋅ \\frac{2}{π} \\sin (\\frac{πy}{2}) \\rbrack _{1}^{2} - \\int_{1}^{2} \\frac{2}{π} \\sin (\\frac{πy}{2}) dy
$$

计算第一项：
当$y = 2$时，$2 ⋅ \\frac{2}{π} \\sin(π) = 0$；当$y = 1$时，$1 ⋅ \\frac{2}{π} \\sin (\\frac{π}{2}) = \\frac{2}{π}$。
所以第一项为$0 - \\frac{2}{π} = −\\frac{2}{π}$。
计算第二项：$− \\int_{1}^{2} \\frac{2}{π} \\sin (\\frac{πy}{2}) dy = −\\frac{2}{π} \\int_{1}^{2} \\sin (\\frac{πy}{2}) dy = −\\frac{2}{π}  \\lbrack −\\frac{2}{π} \\cos (\\frac{πy}{2}) \\rbrack _{1}^{2} = \\frac{4}{π^{2}}  \\lbrack \\cos (\\frac{πy}{2}) \\rbrack _{1}^{2}$其中：当$y = 2$时，$\\cos(π) = −1$；当$y = 1$时，$\\cos (\\frac{π}{2}) = 0$。
所以第二项为$\\frac{4}{π^{2}}(−1 - 0) = −\\frac{4}{π^{2}}$。
因此：$J = −\\frac{2}{π} - \\frac{4}{π^{2}}$代回：$−\\frac{2}{π}J = −\\frac{2}{π} (−\\frac{2}{π} - \\frac{4}{π^{2}}) = \\frac{2}{π} (\\frac{2}{π} + \\frac{4}{π^{2}}) = \\frac{4}{π^{2}} + \\frac{8}{π^{3}} = \\frac{4π}{π^{3}} + \\frac{8}{π^{3}} = \\frac{4(π+2)}{π^{3}}$故原积分为$\\frac{4(π+2)}{π^{3}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '141');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '141');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '141');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (142, '1988年考研数学卷2第15题', '简单', '考研数学1988年卷2真题', '求椭球面$x^{2} + xy^{2} + 3z^{2} = 21$上某点$M$处的切平面$Π$的方程，
使平面$Π$过已知直线$l : \\frac{x-6}{2} = \\frac{y-3}{1} = \\frac{2z-1}{−2}$．', '[]', '切平面方程为$x + 2z = 7$或$3x + 4y + 10z = 35$。
', '假设椭球面方程为$x^{2} + y^{2} + 3z^{2} = 21$（原方程$x^{2} + xy^{2} + 3z^{2} = 21$可能为笔误）。设点$M(x_{0}, y_{0}, z_{0})$在椭球面上，则切平面方程为$x_{0}x + y_{0}y + 3z_{0}z = 21$。
直线$l$的参数方程为$x = 6 + 2t$,$y = 3 + t$,$z = \\frac{1}{2} - t$。
将直线参数方程代入切平面方程：


$$
x_{0}(6 + 2t) + y_{0}(3 + t) + 3z_{0} (\\frac{1}{2} - t) = 21
$$

整理得：


$$
(2x_{0} + y_{0} - 3z_{0})t + (6x_{0} + 3y_{0} + \\frac{3}{2}z_{0}) = 21
$$

由于该方程对任意$t$成立，系数需为零：


$$
2x_{0} + y_{0} - 3z_{0} = 0 (1)
$$



$$
6x_{0} + 3y_{0} + \\frac{3}{2}z_{0} = 21 (2)
$$

点$M$在椭球面上：


$$
x_{0}^{2} + y_{0}^{2} + 3z_{0}^{2} = 21 (3)
$$

由方程 (1) 得$y_{0} = 3z_{0} - 2x_{0}$，代入方程 (2)：


$$
6x_{0} + 3(3z_{0} - 2x_{0}) + \\frac{3}{2}z_{0} = 21
$$

简化得：


$$
9z_{0} + \\frac{3}{2}z_{0} = 21  ⟹  \\frac{21}{2}z_{0} = 21  ⟹  z_{0} = 2
$$

代入$y_{0} = 3z_{0} - 2x_{0}$得$y_{0} = 6 - 2x_{0}$，代入方程 (3)：


$$
x_{0}^{2} + (6 - 2x_{0})2 + 3 ⋅ 2^{2} = 21
$$



$$
x_{0}^{2} + 36 - 24x_{0} + 4x_{0}^{2} + 12 = 21
$$



$$
5x_{0}^{2} - 24x_{0} + 48 = 21
$$



$$
5x_{0}^{2} - 24x_{0} + 27 = 0
$$

解得$x_{0} = 3$或$x_{0} = \\frac{9}{5}$。
对应$y_{0} = 0$或$y_{0} = \\frac{12}{5}$。
因此点$M$为$(3, 0, 2)$或$(\\frac{9}{5}, \\frac{12}{5}, 2)$。
切平面方程：
对于$M(3, 0, 2)$，切平面为$3x + 0 ⋅ y + 6z = 21$，即$x + 2z = 7$。对于$M(\\frac{9}{5}, \\frac{12}{5}, 2)$，切平面为$\\frac{9}{5}x + \\frac{12}{5}y + 6z = 21$，即$9x + 12y + 30z = 105$，简化得$3x + 4y + 10z = 35$。
验证：两条切平面均过直线$l$。
', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '142');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '142');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '142');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (143, '1988年考研数学卷2第16题', '', '考研数学1988年卷2真题', '/problems/other/119', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (144, '1988年考研数学卷2第17题', '', '考研数学1988年卷2真题', '/problems/other/120', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (145, '1988年考研数学卷2第18题', '', '考研数学1988年卷2真题', '/problems/other/121', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (146, '1988年考研数学卷2第19题', '', '考研数学1988年卷2真题', '/problems/other/122', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (147, '1988年考研数学卷2第20题', '', '考研数学1988年卷2真题', '/problems/other/123', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:32', 9, 'Mogullzr', '2026-01-29 14:06:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (148, '1988年考研数学卷3第1题', '简单', '考研数学1988年卷3真题', '若$f(x) = \\begin{cases} e^{2}(\\sin x + \\cos x) & x > 0 \\\\ 2x + a & x ≤ 0 \\end{cases}$是$(−∞, +∞)$上的连续函数，则$a =$______．', '[]', '
$e^{2}$
', '
函数$f(x)$在$(−∞, +∞)$上连续，特别是在$x = 0$处连续。因此，需要满足：


$$
\\lim_{x→0^{-}} f(x) = \\lim_{x→0^{+}} f(x) = f(0)
$$

计算左极限：


$$
\\lim_{x→0^{-}} f(x) = \\lim_{x→0^{-}}(2x + a) = 2 ⋅ 0 + a = a
$$

计算右极限：


$$
\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} e^{2}(\\sin x + \\cos x) = e^{2}(\\sin 0 + \\cos 0) = e^{2}(0 + 1) = e^{2}
$$

函数在$x = 0$处的值为：


$$
f(0) = 2 ⋅ 0 + a = a
$$

由连续性条件，有：


$$
a = e^{2}
$$

因此，$a = e^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:34', 9, 'Mogullzr', '2026-01-29 14:06:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '148');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '148');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '148');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (149, '1988年考研数学卷3第2题', '', '考研数学1988年卷3真题', '/problems/other/109', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:34', 9, 'Mogullzr', '2026-01-29 14:06:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (150, '1988年考研数学卷3第3题', '', '考研数学1988年卷3真题', '/problems/other/111', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:34', 9, 'Mogullzr', '2026-01-29 14:06:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (151, '1988年考研数学卷3第4题', '简单', '考研数学1988年卷3真题', '$\\lim_{x→+0}  (\\frac{1}{\\sqrt{x}})^{\\tan x} =$______．', '[]', '1
', '
考虑极限$\\lim_{x→+0} (\\frac{1}{\\sqrt{x}})^{\\tan x}$。
设$y = (\\frac{1}{\\sqrt{x}})^{\\tan x}$，则$\\ln y = \\tan x ⋅ \\ln (\\frac{1}{\\sqrt{x}}) = −\\frac{1}{2} \\tan x \\ln x$。
因此，$\\lim_{x→+0} \\ln y = \\lim_{x→+0} (−\\frac{1}{2} \\tan x \\ln x) = −\\frac{1}{2} \\lim_{x→+0} (\\tan x \\ln x)$。
当$x → 0^{+}$时，$\\tan x ∼ x$，故$\\lim_{x→+0} \\tan x \\ln x = \\lim_{x→+0} x \\ln x = 0$。
所以，$\\lim_{x→+0} \\ln y = −\\frac{1}{2} × 0 = 0$，即$\\lim_{x→+0} y = e^{0} = 1$。
因此，原极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:06:34', 9, 'Mogullzr', '2026-01-29 14:06:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '151');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '151');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '151');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (152, '1988年考研数学卷3第5题', '简单', '考研数学1988年卷3真题', '$\\int_{0}^{4} e^{\\sqrt{x}}dx =$______．', '[]', '$2e^{2} + 2$
', '
计算定积分$\\int_{0}^{4} e^{\\sqrt{x}} dx$。
令$u = \\sqrt{x}$，则$x = u^{2}$，$dx = 2u du$。
当$x = 0$时，$u = 0$；当$x = 4$时，$u = 2$。
积分变为：


$$
\\int_{0}^{4} e^{\\sqrt{x}} dx = \\int_{0}^{2} e^{u} ⋅ 2u du = 2 \\int_{0}^{2} ue^{u} du
$$

使用分部积分法计算$∫ ue^{u} du$：
令$f = u$，$dg = e^{u} du$，则$df = du$，$g = e^{u}$。


$$
∫ ue^{u} du = ue^{u} - ∫ e^{u} du = ue^{u} - e^{u} + C = e^{u}(u - 1) + C
$$

代入上下限：


$$
\\int_{0}^{2} ue^{u} du =  \\lbrack e^{u}(u - 1) \\rbrack _{0}^{2} = (e^{2}(2 - 1)) - (e^{0}(0 - 1)) = e^{2} - (−1) = e^{2} + 1
$$

因此，


$$
2 \\int_{0}^{2} ue^{u} du = 2(e^{2} + 1) = 2e^{2} + 2
$$

故原积分的值为$2e^{2} + 2$。
', 9, 'Mogullzr', '2026-01-29 14:06:34', 9, 'Mogullzr', '2026-01-29 14:06:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '152');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '152');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '152');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (153, '1988年考研数学卷3第6题', '简单', '考研数学1988年卷3真题', '$f(x) = \\frac{1}{3}x^{3} + \\frac{1}{2}x^{2} + 6x + 1$的图形在点$(0, 1)$处切线与$x$轴交点的坐标是', '[''$(−\\\\frac{1}{6}, 0)$．'', ''$(−1, 0)$．'', ''$(\\\\frac{1}{6}, 0)$．'', ''$(1, 0)$．'']', "['A']", '首先，求函数$f(x) = \\frac{1}{3}x^{3} + \\frac{1}{2}x^{2} + 6x + 1$在点$(0, 1)$处的切线斜率。计算导数：$f^{′}(x) = x^{2} + x + 6$，代入$x = 0$得$f^{′}(0) = 6$，即切线斜率为 6。
切线方程使用点斜式：$y - 1 = 6(x - 0)$，化简得$y = 6x + 1$。
求切线与$x$轴交点，即设$y = 0$：$0 = 6x + 1$，解得$x = −\\frac{1}{6}$。
因此，交点坐标为$(−\\frac{1}{6}, 0)$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:06:34', 9, 'Mogullzr', '2026-01-29 14:06:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '153');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '153');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '153');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (154, '1988年考研数学卷3第7题', '简单', '考研数学1988年卷3真题', '若$f(x)$与$g(x)$在$(−∞, +∞)$上皆可导，且$f(x) < g(x)$，则必有', '[''$f(−x) > g(−x)$．'', ''$f^{′}(x) < g^{′}(x)$．'', ''$\\\\lim_{x→x_{0}} f(x) < \\\\lim_{x→x_{0}} g(x)$．'', ''$\\\\int_{0}^{x} f(t)dt < \\\\int_{0}^{x} g(t)dt$．'']', "['C']", '由于$f(x)$和$g(x)$在$(−∞, +∞)$上可导，因此它们连续。由条件$f(x) < g(x)$对于所有$x$，可知对于任意$x_{0}$，有$f(x_{0}) < g(x_{0})$，且由于连续性，$\\lim_{x→x_{0}} f(x) = f(x_{0})$和$\\lim_{x→x_{0}} g(x) = g(x_{0})$，故$\\lim_{x→x_{0}} f(x) < \\lim_{x→x_{0}} g(x)$，选项 C 正确。选项 A 错误，因为$f(−x) < g(−x)$；选项 B 错误，导数关系不确定，例如$f(x) = x$，$g(x) = e^{x}$时，当$x < 0$有$f^{′}(x) > g^{′}(x)$；选项 D 错误，当$x < 0$时积分不等式反向，例如$\\int_{0}^{x} f(t) dt > \\int_{0}^{x} g(t) dt$。', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '154');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '154');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '154');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (155, '1988年考研数学卷3第8题', '', '考研数学1988年卷3真题', '/problems/other/113', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (156, '1988年考研数学卷3第9题', '简单', '考研数学1988年卷3真题', '曲线$y = \\sin^{3/2} x$（$0 ≤ x ≤ π$）
与$x$轴围成的图形绕$x$轴旋转所形成的旋转体体积为', '[''$\\\\frac{4}{3}$．'', ''$\\\\frac{4}{3}π$．'', ''$\\\\frac{2}{3}π^{2}$．'', ''$\\\\frac{2}{3}π$．'']', "['B']", '曲线$y = \\sin^{3/2} x$在区间$\\lbrack 0, π \\rbrack$上与$x$轴围成的图形绕$x$轴旋转所形成的旋转体体积公式为$V = π \\int_{0}^{π} \\lbrack f(x) \\rbrack 2 dx$，其中$f(x) = \\sin^{3/2} x$，因此$\\lbrack f(x) \\rbrack 2 = (\\sin^{3/2} x)2 = \\sin^{3} x$。
于是，体积$V = π \\int_{0}^{π} \\sin^{3} x dx$。
计算积分$\\int_{0}^{π} \\sin^{3} x dx$：
利用恒等式$\\sin^{3} x = \\sin x(1 - \\cos^{2} x) = \\sin x - \\sin x \\cos^{2} x$，
则$∫ \\sin^{3} x dx = ∫ \\sin x dx - ∫ \\sin x \\cos^{2} x dx$。
其中，$∫ \\sin x dx = − \\cos x$，
对于$∫ \\sin x \\cos^{2} x dx$，令$u = \\cos x$，则$du = − \\sin x dx$，
所以$∫ \\sin x \\cos^{2} x dx = ∫ −u^{2} du = −\\frac{u^{3}}{3} + C = −\\frac{\\cos^{3} x}{3} + C$。
因此，$∫ \\sin^{3} x dx = − \\cos x + \\frac{\\cos^{3} x}{3} + C$。
计算定积分：
在$x = π$时，$− \\cos π + \\frac{\\cos^{3} π}{3} = −(−1) + \\frac{(−1)3}{3} = 1 - \\frac{1}{3} = \\frac{2}{3}$，
在$x = 0$时，$− \\cos 0 + \\frac{\\cos^{3} 0}{3} = −1 + \\frac{1}{3} = −\\frac{2}{3}$，
所以$\\int_{0}^{π} \\sin^{3} x dx = \\frac{2}{3} - (−\\frac{2}{3}) = \\frac{4}{3}$。
因此，体积$V = π × \\frac{4}{3} = \\frac{4}{3}π$，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '156');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '156');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '156');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (157, '1988年考研数学卷3第10题', '', '考研数学1988年卷3真题', '/problems/other/117', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (158, '1988年考研数学卷3第11题', '', '考研数学1988年卷3真题', '/problems/other/107', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (159, '1988年考研数学卷3第12题', '简单', '考研数学1988年卷3真题', '已知$y = 1 + xe^{xy}$，求$y^{′}∣_{x=0}$及$y^{′′}∣_{x=0}$．', '[]', '
$y^{′}∣_{x=0} = 1$，$y^{′′}∣_{x=0} = 2$
', '
已知方程$y = 1 + xe^{xy}$。
当$x = 0$时，代入原方程得$y = 1$。
对原方程两边关于$x$求导：


$$
y^{′} = e^{xy} + xe^{xy}(xy^{′} + y)
$$

代入$x = 0$，$y = 1$：


$$
y^{′} = e^{0} + 0 ⋅ e^{0}(0 ⋅ y^{′} + 1) = 1
$$

故$y^{′}∣_{x=0} = 1$。
对一阶导数方程两边再关于$x$求导：


$$
y^{′′} = e^{xy}(xy^{′} + y)(1 + x^{2}y^{′} + xy) + e^{xy}(x^{2}y^{′′} + 3xy^{′} + y)
$$

代入$x = 0$，$y = 1$，$y^{′} = 1$：


$$
y^{′′} = e^{0}(0 ⋅ 1 + 1)(1 + 0^{2} ⋅ 1 + 0 ⋅ 1) + e^{0}(0^{2} ⋅ y^{′′} + 3 ⋅ 0 ⋅ 1 + 1) = 1 ⋅ 1 ⋅ 1 + 1 ⋅ (0 + 0 + 1) = 1 + 1 = 2
$$

故$y^{′′}∣_{x=0} = 2$。
', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '159');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '159');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '159');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (160, '1988年考研数学卷3第13题', '简单', '考研数学1988年卷3真题', '求微分方程$y^{′} + \\frac{1}{x}y = \\frac{1}{x(x^{2}+1)}$的通解（一般解）．', '[]', '

$$
y = \\frac{arctan x}{x} + \\frac{C}{x}
$$

其中$C$为任意常数。
', '给定微分方程$y^{′} + \\frac{1}{x}y = \\frac{1}{x(x^{2}+1)}$，这是一阶线性微分方程，标准形式为$y^{′} + P(x)y = Q(x)$，其中$P(x) = \\frac{1}{x}$，$Q(x) = \\frac{1}{x(x^{2}+1)}$。
通解公式为$y = e^{− ∫ P(x) dx} (∫ Q(x)e^{∫ P(x) dx} dx + C)$。
首先计算$∫ P(x) dx = ∫ \\frac{1}{x} dx = \\ln x$（假设$x > 0$）。
则$e^{∫ P(x) dx} = e^{\\ln x} = x$，
$e^{− ∫ P(x) dx} = e^{− \\ln x} = \\frac{1}{x}$。
然后计算$∫ Q(x)e^{∫ P(x) dx} dx = ∫ \\frac{1}{x(x^{2}+1)} ⋅ x dx = ∫ \\frac{1}{x^{2}+1} dx = arctan x$。
代入通解公式，得$y = \\frac{1}{x}(arctan x + C)$，即$y = \\frac{arctan x}{x} + \\frac{C}{x}$。
验证：代入原方程满足，故为通解。
', 9, 'Mogullzr', '2026-01-29 14:06:35', 9, 'Mogullzr', '2026-01-29 14:06:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '160');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '160');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '160');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (161, '1988年考研数学卷3第14题', '简单', '考研数学1988年卷3真题', '作函数$y = \\frac{6}{x^{2}-2x+4}$的图形，并填写下表。
$$
\\begin{array}{c|c|}
项目 & 结果 \\\\
单调增区间 &  \\\\
单调减区间 &  \\\\
极值点 &  \\\\
极值 &  \\\\
凹(∪)区间 &  \\\\
渐近线 &  \\\\
\\end{array}
$$
', '[]', '单调增区间：$(−∞, 1)$
单调减区间：$(1, +∞)$
极值点：$x = 1$
极值：$y = 2$
凹$∪$区间：$(−∞, 0) ∪ (2, +∞)$
凸$∩$区间：$(0, 2)$
拐点：$(0, \\frac{3}{2})$,$(2, \\frac{3}{2})$
渐近线：$y = 0$
其图形如下：

', '函数$y = \\frac{6}{x^{2}-2x+4}$的分母$x^{2} - 2x + 4$的判别式为负，始终为正，故函数定义域为全体实数，且值域为正。
一阶导数为$f^{′}(x) = −\\frac{12(x-1)}{(x^{2}-2x+4)2}$，由分母恒正，符号取决于分子。当$x < 1$时$f^{′}(x) > 0$，函数单调递增；当$x > 1$时$f^{′}(x) < 0$，函数单调递减。$x = 1$为极值点，代入函数得极值$y = 2$。
二阶导数为$f^{′′}(x) = \\frac{36x(x-2)}{(x^{2}-2x+4)3}$，由分母恒正，符号取决于分子。当$x < 0$或$x > 2$时$f^{′′}(x) > 0$，函数凹向上；当$0 < x < 2$时$f^{′′}(x) < 0$，函数凸向下。拐点为$f^{′′}(x) = 0$的点，即$x = 0$和$x = 2$，代入函数得$y = \\frac{3}{2}$。
当$x → ±∞$时，$y → 0$，故水平渐近线为$y = 0$。无垂直渐近线和斜渐近线。
', 9, 'Mogullzr', '2026-01-29 14:06:36', 9, 'Mogullzr', '2026-01-29 14:06:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '161');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '161');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '161');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (162, '1988年考研数学卷3第15题', '简单', '考研数学1988年卷3真题', '将长为$a$的铁丝切成两段，一段围成正方形，另一段围成圆形．问这两段铁丝各长为多少时，正方形与圆形的面积之和为最小？', '[]', '
两段铁丝的长度分别为$\\frac{4a}{π+4}$和$\\frac{πa}{π+4}$。
', '
设用于围成正方形的铁丝长度为$x$，则用于围成圆形的铁丝长度为$a - x$。
正方形部分
周长：$x$边长：$\\frac{x}{4}$面积：$(\\frac{x}{4})^{2} = \\frac{x^{2}}{16}$
圆形部分
周长：$a - x$半径：$\\frac{a-x}{2π}$面积：$π (\\frac{a-x}{2π})^{2} = \\frac{(a-x)2}{4π}$
总面积函数为


$$
S = \\frac{x^{2}}{16} + \\frac{(a - x)2}{4π}
$$

为求$S$的最小值，对$S$求导：


$$
S^{′} = \\frac{2x}{16} - \\frac{2(a - x)}{4π} = \\frac{x}{8} - \\frac{a - x}{2π}
$$

令$S^{′} = 0$：


$$
\\frac{x}{8} = \\frac{a - x}{2π}
$$

两边乘以$8 ⋅ 2π$得：


$$
2πx = 8(a - x)
$$



$$
2πx + 8x = 8a
$$



$$
x(2π + 8) = 8a
$$



$$
x = \\frac{8a}{2π + 8} = \\frac{4a}{π + 4}
$$

另一段长度为


$$
a - x = a - \\frac{4a}{π + 4} = \\frac{πa}{π + 4}
$$

由于$S$是$x$的二次函数且二次项系数为正，该临界点对应最小值。
结论：当两段铁丝长度分别为


$$
\\frac{4a}{π + 4} 和 \\frac{πa}{π + 4}
$$

时，正方形与圆形的面积之和最小。
', 9, 'Mogullzr', '2026-01-29 14:06:36', 9, 'Mogullzr', '2026-01-29 14:06:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '162');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '162');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '162');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (163, '1988年考研数学卷3第16题', '', '考研数学1988年卷3真题', '/problems/other/119', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:36', 9, 'Mogullzr', '2026-01-29 14:06:36', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (164, '1988年考研数学卷3第17题', '简单', '考研数学1988年卷3真题', '设$x ≥ −1$，求$\\int_{−1}^{x} (1 - ∣t∣) dt$．', '[]', '

$$
\\int_{−1}^{x}(1 - ∣t∣) dt = \\begin{cases} \\frac{1}{2}(x + 1)2 & ifx ≤ 0 \\\\ x - \\frac{x^{2}}{2} + \\frac{1}{2} & ifx > 0 \\end{cases}
$$

', '由于被积函数包含绝对值，需要根据$x$的值分段计算积分。
当$x ≤ 0$时，在区间$\\lbrack −1, x \\rbrack$上，$t ≤ 0$，因此$∣t∣ = −t$，被积函数为$1 - (−t) = 1 + t$。积分计算如下：


$$
\\int_{−1}^{x}(1 + t) dt =  \\lbrack t + \\frac{t^{2}}{2} \\rbrack _{−1}^{x} = (x + \\frac{x^{2}}{2}) - (−1 + \\frac{1}{2}) = x + \\frac{x^{2}}{2} + \\frac{1}{2} = \\frac{1}{2}(x + 1)2.
$$

当$x > 0$时，积分区间跨越$t = 0$，需分成两部分：从$−1$到$0$和从$0$到$x$。
在$\\lbrack −1, 0 \\rbrack$上，$∣t∣ = −t$，被积函数为$1 + t$，积分计算如下：


$$
\\int_{−1}^{0}(1 + t) dt =  \\lbrack t + \\frac{t^{2}}{2} \\rbrack _{−1}^{0} = 0 - (−1 + \\frac{1}{2}) = \\frac{1}{2}.
$$

在$\\lbrack 0, x \\rbrack$上，$∣t∣ = t$，被积函数为$1 - t$，积分计算如下：


$$
\\int_{0}^{x}(1 - t) dt =  \\lbrack t - \\frac{t^{2}}{2} \\rbrack _{0}^{x} = x - \\frac{x^{2}}{2}.
$$

两部分相加得：


$$
\\frac{1}{2} + (x - \\frac{x^{2}}{2}) = x - \\frac{x^{2}}{2} + \\frac{1}{2}.
$$

因此，积分结果如上所述的分段函数。
', 9, 'Mogullzr', '2026-01-29 14:06:36', 9, 'Mogullzr', '2026-01-29 14:06:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '164');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '164');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '164');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (165, '1988年考研数学卷3第18题', '简单', '考研数学1988年卷3真题', '设$f(x)$在$(−∞ + ∞)$上有连续导数，且$m ≤ f(x) ≤ M$．(1) 求$\\lim_{a→+0}  \\frac{1}{4a^{2}} \\int_{−a}^{a} \\lbrack f(t + a) - f(t - a) \\rbrack dt$．(2) 证明$​\\frac{1}{2a} \\int_{−a}^{a} f(t)dt - f(x)​ ≤ M - m$（$a > 0$）．', '[]', '
(1)$f^{′}(0)$
(2) 证明见解析。
', '
(Ⅰ) 可以用积分中值定理和微分中值定理。这里用洛必达法则直接计算：

$$
\\begin{array}{c}
原式 = \\lim_{a→+0} \\frac{1}{4a^{2}}  \\lbrack \\int_{0}^{2a} f(u)du - \\int_{−2a}^{0} f(u)du \\rbrack  \\\\
= \\lim_{a→+0} \\frac{1}{8a}  \\lbrack 2f(2a) - 2f(−2a) \\rbrack  = \\lim_{a→+0} \\frac{1}{4a}  \\lbrack f(2a) - f(−2a) \\rbrack  \\\\
= \\lim_{a→+0} \\frac{1}{4}  \\lbrack 2f^{′}(2a) + 2f^{′}(−2a) \\rbrack  = f^{′}(0) \\\\
\\end{array}
$$

(Ⅱ) 可以分别估计两项。这里利用积分的绝对值不等式来估计：

$$
\\begin{array}{c}
​\\frac{1}{2a} \\int_{−a}^{a} f(t) dt - f(x)​ = ​\\frac{1}{2a} \\int_{−a}^{a} \\lbrack f(t) - f(x) \\rbrack  dt​ \\\\
≤ \\frac{1}{2a} \\int_{−a}^{a} ∣f(t) - f(x)∣ dt ≤ \\frac{1}{2a} \\int_{−a}^{a}(M - m) dt = M - m \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:36', 9, 'Mogullzr', '2026-01-29 14:06:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '165');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '165');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '165');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (166, '1988年考研数学卷4第1题', '简单', '考研数学1988年卷4真题', '已知函数$f(x) = \\int_{0}^{x} e^{−\\frac{1}{2}t^{2}}dt$，$−∞ < x < +∞$，则(a)$f^{′}(x) =$______；(b)$f(x)$的单调性：______；(c)$f(x)$的奇偶性：______；(d)$f(x)$的图形的拐点：______；(e)$f(x)$图形的凹凸性：，；(f)$f(x)$图形的水平渐近线：，．', '[]', '
(a)$f^{′}(x) = e^{−\\frac{1}{2}x^{2}}$
(b) 单调递增
(c) 奇函数
(d) 拐点$(0, 0)$
(e) 当$x < 0$时凹向上，当$x > 0$时凹向下
(f) 水平渐近线$y = \\sqrt{\\frac{π}{2}}$和$y = −\\sqrt{\\frac{π}{2}}$
', '(a) 根据微积分基本定理，函数
$f(x) = \\int_{0}^{x} e^{−\\frac{1}{2}t^{2}} dt$
的导数为被积函数在$x$处的值，即
$f^{′}(x) = e^{−\\frac{1}{2}x^{2}}$。
(b) 由于
$f^{′}(x) = e^{−\\frac{1}{2}x^{2}} > 0$
对于所有$x ∈ (−∞, +∞)$，因此$f(x)$在整个定义域内单调递增。
(c) 考虑
$f(−x) = \\int_{0}^{−x} e^{−\\frac{1}{2}t^{2}} dt$，
令$u = −t$，则
$f(−x) = − \\int_{0}^{x} e^{−\\frac{1}{2}u^{2}} du = −f(x)$，
故$f(x)$是奇函数。
(d) 先求二阶导数：
$f^{′′}(x) = \\frac{d}{dx}e^{−\\frac{1}{2}x^{2}} = −xe^{−\\frac{1}{2}x^{2}}$。
令$f^{′′}(x) = 0$，解得$x = 0$。
当$x < 0$时，$f^{′′}(x) > 0$，图形凹向上；
当$x > 0$时，$f^{′′}(x) < 0$，图形凹向下。
因此$x = 0$处凹凸性改变，且$f(0) = 0$，故拐点为$(0, 0)$。
(e) 由 (d) 的分析，
当$x < 0$时$f^{′′}(x) > 0$，图形凹向上；
当$x > 0$时$f^{′′}(x) < 0$，图形凹向下。
(f) 计算极限：
当$x → +∞$，
$f(x) = \\int_{0}^{x} e^{−\\frac{1}{2}t^{2}} dt → \\int_{0}^{∞} e^{−\\frac{1}{2}t^{2}} dt = \\sqrt{\\frac{π}{2}}$；
当$x → −∞$，由于$f(x)$是奇函数，有
$f(x) → −\\sqrt{\\frac{π}{2}}$。
因此水平渐近线为
$y = \\sqrt{\\frac{π}{2}}$和$y = −\\sqrt{\\frac{π}{2}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:39', 9, 'Mogullzr', '2026-01-29 14:06:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '166');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '166');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '166');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (167, '1988年考研数学卷4第2题', '简单', '考研数学1988年卷4真题', '$\\begin{vmatrix}
1 & 1 & 1 & 0\\\\
1 & 1 & 0 & 1\\\\
1 & 0 & 1 & 1\\\\
0 & 1 & 1 & 1
\\end{vmatrix} =$______．', '[]', '-3
', '计算行列式

$$
\\begin{vmatrix}
1 & 1 & 1 & 0\\\\
1 & 1 & 0 & 1\\\\
1 & 0 & 1 & 1\\\\
0 & 1 & 1 & 1
\\end{vmatrix}
$$

的一种方法是通过行操作：首先将第二行、第三行、第四行依次加到第一行，得到第一行为$(3, 3, 3, 3)$，提取公因子 3，行列式变为

$$
3 × \\begin{vmatrix}
1 & 1 & 1 & 1\\\\
1 & 1 & 0 & 1\\\\
1 & 0 & 1 & 1\\\\
0 & 1 & 1 & 1
\\end{vmatrix}
$$

然后对新的行列式进行行操作：第二行减去第一行，第三行减去第一行，第四行减去第一行，得到

$$
\\begin{vmatrix}
1 & 1 & 1 & 1\\\\
0 & 0 & −1 & 0\\\\
0 & −1 & 0 & 0\\\\
−1 & 0 & 0 & 0
\\end{vmatrix}
$$

展开第一行，计算得该行列式为 -1，所以原行列式为$3 × (−1) = −3$。
另一种直接方法是：对原矩阵进行行操作，第二行减去第一行，第三行减去第一行，得到

$$
\\begin{vmatrix}
1 & 1 & 1 & 0\\\\
0 & 0 & −1 & 1\\\\
0 & −1 & 0 & 1\\\\
0 & 1 & 1 & 1
\\end{vmatrix}
$$

沿第一列展开，计算三阶子式

$$
\\begin{vmatrix}
0 & −1 & 1\\\\
−1 & 0 & 1\\\\
1 & 1 & 1
\\end{vmatrix}
$$

该子式的值为$0 ⋅ (0 ⋅ 1 - 1 ⋅ 1) - (−1) ⋅ ((−1) ⋅ 1 - 1 ⋅ 1) + 1 ⋅ ((−1) ⋅ 1 - 0 ⋅ 1) = 0 + 1 ⋅ (−2) + 1 ⋅ (−1) = −3$，所以原行列式为 -3。
两种方法均得行列式为 -3。
', 9, 'Mogullzr', '2026-01-29 14:06:39', 9, 'Mogullzr', '2026-01-29 14:06:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '167');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1049', '167');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (168, '1988年考研数学卷4第3题', '简单', '考研数学1988年卷4真题', '$\\left( \\begin{array}{cccc}
0 & 0 & 0 & 1 \\\\
0 & 0 & 1 & 0 \\\\
0 & 1 & 0 & 0 \\\\
1 & 0 & 0 & 0 \\\\
\\end{array} \\right) =$______．', '[]', '

$$
\\left( \\begin{array}{cccc}
0 & 0 & 0 & 1 \\\\
0 & 0 & 1 & 0 \\\\
0 & 1 & 0 & 0 \\\\
1 & 0 & 0 & 0 \\\\
\\end{array} \\right)
$$

', '该矩阵是一个置换矩阵，其作用是将向量的顺序反转。例如，对于向量$(x_{1}, x_{2}, x_{3}, x_{4})T$，乘以该矩阵后得到$(x_{4}, x_{3}, x_{2}, x_{1})T$。反转操作应用两次即可恢复原向量，因此该矩阵的逆矩阵是其本身。计算该矩阵乘以自身得到单位矩阵，验证了这一点。同时，该矩阵是对称的，其转置等于自身，作为正交矩阵，逆矩阵等于转置矩阵，因此逆矩阵即为原矩阵。
', 9, 'Mogullzr', '2026-01-29 14:06:39', 9, 'Mogullzr', '2026-01-29 14:06:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '168');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '168');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '168');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (169, '1988年考研数学卷4第4题', '简单', '考研数学1988年卷4真题', '假设$P(A) = 0.4$，$P(A ∪ B) = 0.7$，那么(a) 若$A$与$B$互不相容，则$P(B) =$______；(b) 若$A$与$B$相互独立，则$P(B) =$______．', '[]', '
(a) 0.3
(b) 0.5
', '
对于 (a)，由于$A$与$B$互不相容，有$P(A ∩ B) = 0$，因此


$$
P(A ∪ B) = P(A) + P(B).
$$

代入已知值$P(A) = 0.4$和$P(A ∪ B) = 0.7$，得


$$
0.7 = 0.4 + P(B),
$$

解得$P(B) = 0.3$。
对于 (b)，由于$A$与$B$相互独立，有$P(A ∩ B) = P(A)P(B)$。概率加法公式为


$$
P(A ∪ B) = P(A) + P(B) - P(A ∩ B),
$$

代入得


$$
0.7 = 0.4 + P(B) - 0.4P(B),
$$

即


$$
0.7 = 0.4 + 0.6P(B),
$$

解得


$$
0.3 = 0.6P(B),
$$

因此$P(B) = 0.5$。
', 9, 'Mogullzr', '2026-01-29 14:06:39', 9, 'Mogullzr', '2026-01-29 14:06:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '169');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '169');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (170, '1988年考研数学卷4第5题', '简单', '考研数学1988年卷4真题', '若极限$\\lim_{x→x_{0}} f(x)$与$\\lim_{x→x_{0}} f(x)g(x)$都存在，
则极限$\\lim_{x→x_{0}} g(x)$必存在．', '[]', '
不正确
', '
考虑反例：设$x_{0} = 0$，$f(x) = x$，$g(x) = \\frac{1}{x}$。则$\\lim_{x→0} f(x) = 0$存在，$\\lim_{x→0} f(x)g(x) = \\lim_{x→0} x ⋅ \\frac{1}{x} = \\lim_{x→0} 1 = 1$也存在。但$\\lim_{x→0} g(x) = \\lim_{x→0} \\frac{1}{x}$不存在。因此，在给定条件下，$\\lim_{x→x_{0}} g(x)$不一定存在。
', 9, 'Mogullzr', '2026-01-29 14:06:39', 9, 'Mogullzr', '2026-01-29 14:06:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '170');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '170');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '170');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (171, '1988年考研数学卷4第6题', '简单', '考研数学1988年卷4真题', '若$x_{0}$是函数$f(x)$的极值点，则必有$f^{′}(x_{0}) = 0$．', '[]', '
不正确
', '
根据费马定理，如果函数$f(x)$在点$x_{0}$处可导且$x_{0}$是极值点，则必有$f^{′}(x_{0}) = 0$。但问题中未假设$f(x)$在$x_{0}$处可导，因此如果$f(x)$在$x_{0}$处不可导，即使$x_{0}$是极值点，$f^{′}(x_{0})$也可能不存在。例如，函数$f(x) = ∣x∣$在$x = 0$处有极小值，但$f^{′}(0)$不存在。故原命题不正确。
', 9, 'Mogullzr', '2026-01-29 14:06:40', 9, 'Mogullzr', '2026-01-29 14:06:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '171');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '171');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '171');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (172, '1988年考研数学卷4第7题', '简单', '考研数学1988年卷4真题', '等式$\\int_{0}^{a} f(x)dx = − \\int_{0}^{a} f(a - x)dx$对任何实数$a$都成立．', '[]', '
该等式不正确。正确的等式是$\\int_{0}^{a} f(x) dx = \\int_{0}^{a} f(a - x) dx$，对任何实数$a$都成立。
', '
考虑积分$\\int_{0}^{a} f(a - x) dx$。令$u = a - x$，则$du = −dx$。当$x = 0$时，$u = a$；当$x = a$时，$u = 0$。因此，


$$
\\int_{0}^{a} f(a - x) dx = \\int_{a}^{0} f(u) (−du) = − \\int_{a}^{0} f(u) du.
$$

由于$\\int_{a}^{0} f(u) du = − \\int_{0}^{a} f(u) du$，代入得


$$
− \\int_{a}^{0} f(u) du = −(− \\int_{0}^{a} f(u) du) = \\int_{0}^{a} f(u) du.
$$

因此，$\\int_{0}^{a} f(a - x) dx = \\int_{0}^{a} f(x) dx$，而不是$− \\int_{0}^{a} f(a - x) dx$。原等式中的负号是错误的。
例如，取$f(x) = x$和$a = 1$，则$\\int_{0}^{1} x dx = \\frac{1}{2}$，而$\\int_{0}^{1}(1 - x) dx = \\frac{1}{2}$，两者相等，验证了正确等式。
', 9, 'Mogullzr', '2026-01-29 14:06:40', 9, 'Mogullzr', '2026-01-29 14:06:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '172');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '172');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '172');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (173, '1988年考研数学卷4第8题', '简单', '考研数学1988年卷4真题', '若$A$和$B$都是$n$阶非零方阵，且$AB = 0$，则$A$的秩必小于$n$．', '[]', '正确
', '假设$A$的秩等于$n$，则$A$可逆。由$AB = 0$两边左乘$A^{−1}$得$B = 0$，与$B$是非零矩阵矛盾。因此假设不成立，故$A$的秩必小于$n$。
', 9, 'Mogullzr', '2026-01-29 14:06:40', 9, 'Mogullzr', '2026-01-29 14:06:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '173');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '173');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '173');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (174, '1988年考研数学卷4第9题', '简单', '考研数学1988年卷4真题', '若事件$A$,$B$,$C$满足等式$A ∪ C = B ∪ C$，则$A = B$．', '[]', '错误
', '通过反例可知，命题不成立。例如，设事件$A = \\{1\\}$,$B = \\{2\\}$,$C = \\{1, 2\\}$，则$A ∪ C = \\{1, 2\\}$,$B ∪ C = \\{1, 2\\}$，即$A ∪ C = B ∪ C$，但$A \\neq B$。因此，原命题错误。
', 9, 'Mogullzr', '2026-01-29 14:06:40', 9, 'Mogullzr', '2026-01-29 14:06:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '174');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '174');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (175, '1988年考研数学卷4第10题', '简单', '考研数学1988年卷4真题', '求极限
$$
\\lim_{x→1} \\frac{x^{x} - 1}{x \\ln x}
$$
', '[]', '
1
', '
考虑极限$\\lim_{x→1} \\frac{x^{x}-1}{x \\ln x}$。当$x → 1$时，分子$x^{x} - 1 → 0$，分母$x \\ln x → 0$，因此该极限为$\\frac{0}{0}$型未定式，可应用洛必达法则。
设$f(x) = x^{x} - 1$，$g(x) = x \\ln x$。首先求导：
$f^{′}(x) = \\frac{d}{dx}(x^{x} - 1)$。由于$x^{x} = e^{x \\ln x}$，故
$f^{′}(x) = e^{x \\ln x} ⋅ \\frac{d}{dx}(x \\ln x) = x^{x}(\\ln x + 1)$$g^{′}(x) = \\frac{d}{dx}(x \\ln x) = \\ln x + x ⋅ \\frac{1}{x} = \\ln x + 1$
应用洛必达法则：


$$
\\lim_{x→1} \\frac{x^{x} - 1}{x \\ln x} = \\lim_{x→1} \\frac{f^{′}(x)}{g^{′}(x)} = \\lim_{x→1} \\frac{x^{x}(\\ln x + 1)}{\\ln x + 1} = \\lim_{x→1} x^{x}
$$

由于$\\lim_{x→1} x^{x} = 1^{1} = 1$，因此原极限为 1。
', 9, 'Mogullzr', '2026-01-29 14:06:40', 9, 'Mogullzr', '2026-01-29 14:06:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '175');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '175');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '175');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (176, '1988年考研数学卷4第11题', '简单', '考研数学1988年卷4真题', '已知$u + e^{u} = xy$，求$\\frac{∂^{2}u}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{1 + 2e^{u} - ue^{u}}{(1 + e^{u})3}
$$

', '已知方程$u + e^{u} = xy$，其中$u$是$x$和$y$的函数。首先求一阶偏导数。
对原方程两边关于$x$求偏导：

$$
\\frac{∂u}{∂x} + e^{u}\\frac{∂u}{∂x} = y
$$

即

$$
(1 + e^{u})\\frac{∂u}{∂x} = y
$$

所以

$$
\\frac{∂u}{∂x} = \\frac{y}{1 + e^{u}}
$$

对原方程两边关于$y$求偏导：

$$
\\frac{∂u}{∂y} + e^{u}\\frac{∂u}{∂y} = x
$$

即

$$
(1 + e^{u})\\frac{∂u}{∂y} = x
$$

所以

$$
\\frac{∂u}{∂y} = \\frac{x}{1 + e^{u}}
$$

接下来求二阶混合偏导数$\\frac{∂^{2}u}{∂x∂y}$，即对$\\frac{∂u}{∂y}$关于$x$求偏导：

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{∂}{∂x} (\\frac{x}{1 + e^{u}})
$$

使用商法则：

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{1 ⋅ (1 + e^{u}) - x ⋅ \\frac{∂}{∂x}(1 + e^{u})}{(1 + e^{u})2}
$$

其中$\\frac{∂}{∂x}(1 + e^{u}) = e^{u}\\frac{∂u}{∂x}$，代入得：

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{1 + e^{u} - xe^{u}\\frac{∂u}{∂x}}{(1 + e^{u})2}
$$

将$\\frac{∂u}{∂x} = \\frac{y}{1+e^{u}}$代入：

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{1 + e^{u} - xe^{u} ⋅ \\frac{y}{1+e^{u}}}{(1 + e^{u})2} = \\frac{1 + e^{u} - \\frac{xye^{u}}{1+e^{u}}}{(1 + e^{u})2}
$$

通分分子：

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{\\frac{(1+e^{u})2-xye^{u}}{1+e^{u}}}{(1 + e^{u})2} = \\frac{(1 + e^{u})2 - xye^{u}}{(1 + e^{u})3}
$$

由原方程$u + e^{u} = xy$，得$xy = u + e^{u}$，代入：

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{(1 + e^{u})2 - (u + e^{u})e^{u}}{(1 + e^{u})3}
$$

展开分子：

$$
(1 + e^{u})2 = 1 + 2e^{u} + e^{2u}
$$



$$
(1 + 2e^{u} + e^{2u}) - ue^{u} - e^{2u} = 1 + 2e^{u} - ue^{u}
$$

所以

$$
\\frac{∂^{2}u}{∂x∂y} = \\frac{1 + 2e^{u} - ue^{u}}{(1 + e^{u})3}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:40', 9, 'Mogullzr', '2026-01-29 14:06:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '176');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '176');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '176');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (177, '1988年考研数学卷4第12题', '简单', '考研数学1988年卷4真题', '求定积分
$$
\\int_{0}^{3} \\frac{dx}{\\sqrt{x}(1 + x)}
$$
', '[]', '$\\frac{2π}{3}$
', '考虑定积分$\\int_{0}^{3} \\frac{dx}{\\sqrt{x}(1+x)}$。令$u = \\sqrt{x}$，则$x = u^{2}$，$dx = 2u du$。当$x = 0$时，$u = 0$；当$x = 3$时，$u = \\sqrt{3}$。代入积分得：

$$
\\int_{0}^{3} \\frac{dx}{\\sqrt{x}(1 + x)} = \\int_{0}^{\\sqrt{3}} \\frac{2u du}{u(1 + u^{2})} = \\int_{0}^{\\sqrt{3}} \\frac{2 du}{1 + u^{2}}.
$$

已知$∫ \\frac{du}{1+u^{2}} = arctan u + C$，所以：

$$
2 \\int_{0}^{\\sqrt{3}} \\frac{du}{1 + u^{2}} = 2  \\lbrack arctan u \\rbrack _{0}^{\\sqrt{3}} = 2 (arctan \\sqrt{3} - arctan 0) = 2 (\\frac{π}{3} - 0) = \\frac{2π}{3}.
$$

因此，积分值为$\\frac{2π}{3}$。
', 9, 'Mogullzr', '2026-01-29 14:06:41', 9, 'Mogullzr', '2026-01-29 14:06:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '177');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '177');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '177');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (178, '1988年考研数学卷4第13题', '简单', '考研数学1988年卷4真题', '求二重积分
$$
\\int_{0}^{\\frac{π}{6}} dy \\int_{y}^{\\frac{π}{6}} \\frac{\\cos x}{x}dx
$$
', '[]', '$\\frac{1}{2}$
', '给定二重积分$\\int_{0}^{\\frac{π}{6}} dy \\int_{y}^{\\frac{π}{6}} \\frac{\\cos x}{x}dx$，积分区域为$0 ≤ y ≤ x ≤ \\frac{π}{6}$。通过改变积分顺序，先对$y$积分，再对$x$积分，得到：

$$
\\int_{0}^{\\frac{π}{6}} \\int_{0}^{x} \\frac{\\cos x}{x}dydx.
$$

内层积分中，$\\frac{\\cos x}{x}$与$y$无关，因此：

$$
\\int_{0}^{x} \\frac{\\cos x}{x}dy = \\frac{\\cos x}{x} ⋅ x = \\cos x.
$$

代入后，积分化为：

$$
\\int_{0}^{\\frac{π}{6}} \\cos xdx = \\sin x​_{0}^{\\frac{π}{6}} = \\sin \\frac{π}{6} - \\sin 0 = \\frac{1}{2} - 0 = \\frac{1}{2}.
$$

因此，原二重积分的值为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:06:41', 9, 'Mogullzr', '2026-01-29 14:06:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '178');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '178');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '178');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (179, '1988年考研数学卷4第14题', '简单', '考研数学1988年卷4真题', '讨论级数$\\sum_{n=1}^{∞} \\frac{(n+1)!}{n^{(n+1)}}$的敛散性．', '[]', '
收敛
', '
考虑级数$\\sum_{n=1}^{∞} a_{n}$，其中$a_{n} = \\frac{(n+1)!}{n^{n+1}}$。使用比值判别法，计算极限：


$$
L = \\lim_{n→∞} ​\\frac{a_{n+1}}{a_{n}}​ = \\lim_{n→∞} \\frac{\\frac{(n+2)!}{(n+1)n+2}}{\\frac{(n+1)!}{n^{n+1}}} = \\lim_{n→∞} \\frac{(n + 2)n^{n+1}}{(n + 1)n+2} = \\lim_{n→∞} \\frac{n + 2}{n + 1} ⋅ (\\frac{n}{n + 1})^{n+1} .
$$

当$n → ∞$时，$\\frac{n+2}{n+1} → 1$，且$(\\frac{n}{n+1})^{n+1} = (1 - \\frac{1}{n+1})^{n+1} → \\frac{1}{e}$。因此，$L = \\frac{1}{e} < 1$，由比值判别法可知级数收敛。
此外，也可通过斯特林公式验证：$n! ∼ \\sqrt{2πn} (\\frac{n}{e})^{n}$，则$a_{n} ∼ \\sqrt{2πn}\\frac{1}{e^{n}} ⋅ (1 + \\frac{1}{n})$，其中指数项$e^{n}$增长迅速，确保级数收敛。
', 9, 'Mogullzr', '2026-01-29 14:06:41', 9, 'Mogullzr', '2026-01-29 14:06:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '179');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '179');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '179');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (180, '1988年考研数学卷4第15题', '简单', '考研数学1988年卷4真题', '已知级数$\\sum_{n=1}^{∞} a_{n}^{2}$和$\\sum_{n=1}^{∞} b_{n}^{2}$都收敛，
试证明级数$\\sum_{n=1}^{∞} a_{n}b_{n}$绝对收敛，', '[]', '
级数$\\sum_{n=1}^{∞} a_{n}b_{n}$绝对收敛。
', '
已知级数$\\sum_{n=1}^{∞} a_{n}^{2}$和$\\sum_{n=1}^{∞} b_{n}^{2}$收敛，考虑部分和$\\sum_{n=1}^{N} ∣a_{n}b_{n}∣$。由柯西-施瓦茨不等式，有：


$$
\\sum_{n=1}^{N} ∣a_{n}b_{n}∣ ≤ (\\sum_{n=1}^{N} a_{n}^{2})^{1/2} (\\sum_{n=1}^{N} b_{n}^{2})^{1/2} .
$$

由于$\\sum_{n=1}^{∞} a_{n}^{2}$和$\\sum_{n=1}^{∞} b_{n}^{2}$收敛，设$A = \\sum_{n=1}^{∞} a_{n}^{2}$和$B = \\sum_{n=1}^{∞} b_{n}^{2}$，则对于所有$N$，有：


$$
\\sum_{n=1}^{N} ∣a_{n}b_{n}∣ ≤ A^{1/2}B^{1/2}.
$$

因此，部分和$\\sum_{n=1}^{N} ∣a_{n}b_{n}∣$有上界且单调递增，由单调收敛定理，级数$\\sum_{n=1}^{∞} ∣a_{n}b_{n}∣$收敛，即$\\sum_{n=1}^{∞} a_{n}b_{n}$绝对收敛。
', 9, 'Mogullzr', '2026-01-29 14:06:41', 9, 'Mogullzr', '2026-01-29 14:06:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '180');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '180');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '180');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (181, '1988年考研数学卷4第16题', '简单', '考研数学1988年卷4真题', '已知某商品的需求量$D$和供给量$S$都是价格$p$的函数：
$$
D = D(p) = \\frac{a}{p^{2}},  S = S(p) = bp,
$$
其中$a > 0$和$b > 0$为常数；价格$p$是时间$t$的函数且满足方程
$$
\\frac{dp}{dt} = k \\lbrack D(p) - S(p) \\rbrack  （k为正的常数）.
$$
假设当$t = 0$时价格为$1$，试求(1) 需求量等于供给量时的均衡价格$p_{e}$；(2) 价格函数$p(t)$；(3) 极限$\\lim_{t→+∞} p(t)$．', '[]', '
(1)$p_{e} = (\\frac{a}{b})^{1/3}$
(2)$p(t) = (\\frac{1}{b}  \\lbrack a - (a - b)e^{−3bkt} \\rbrack )^{1/3}$
(3)$\\lim_{t→+∞} p(t) = (\\frac{a}{b})^{1/3}$
', '
(1) 均衡价格$p_{e}$满足需求量等于供给量，即$D(p) = S(p)$。
由$\\frac{a}{p^{2}} = bp$得$a = bp^{3}$，解得


$$
p_{e} = (\\frac{a}{b})^{1/3} .
$$

(2) 价格函数$p(t)$满足微分方程


$$
\\frac{dp}{dt} = k (\\frac{a}{p^{2}} - bp) = k\\frac{a - bp^{3}}{p^{2}}.
$$

分离变量得


$$
\\frac{p^{2}}{a - bp^{3}} dp = k dt.
$$

积分左边：令$u = p^{3}$，则$du = 3p^{2} dp$，有


$$
∫ \\frac{p^{2}}{a - bp^{3}} dp = \\frac{1}{3} ∫ \\frac{du}{a - bu} = −\\frac{1}{3b} \\ln ∣a - bp^{3}∣ + C.
$$

积分右边：


$$
∫ k dt = kt + C.
$$

结合得


$$
−\\frac{1}{3b} \\ln ∣a - bp^{3}∣ = kt + C.
$$

代入初始条件$p(0) = 1$，得


$$
C = −\\frac{1}{3b} \\ln ∣a - b∣.
$$

因此


$$
−\\frac{1}{3b} \\ln ∣a - bp^{3}∣ = kt - \\frac{1}{3b} \\ln ∣a - b∣,
$$

整理得


$$
\\ln ​\\frac{a - b}{a - bp^{3}}​ = 3bkt.
$$

取指数并考虑初始条件，得


$$
\\frac{a - b}{a - bp^{3}} = e^{3bkt},
$$

解得


$$
a - bp^{3} = \\frac{a - b}{e^{3bkt}},
$$

即


$$
p^{3} = \\frac{a}{b} - \\frac{a - b}{b}e^{−3bkt},
$$

所以


$$
p(t) = (\\frac{1}{b}  \\lbrack a - (a - b)e^{−3bkt} \\rbrack )^{1/3} .
$$

(3) 当$t → +∞$时，$e^{−3bkt} → 0$，故


$$
\\lim_{t→+∞} p(t) = (\\frac{a}{b})^{1/3} = p_{e}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:41', 9, 'Mogullzr', '2026-01-29 14:06:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '181');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '181');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1055', '181');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (182, '1988年考研数学卷4第17题', '简单', '考研数学1988年卷4真题', '在曲线$y = x^{2}$（$x > 0$）上某点$A$处作一切线，
使之与曲线以及$x$轴所围图形的面积为$\\frac{1}{12}$．试求：(1) 切点$A$的坐标；(2) 过切点$A$的切线方程；(3) 由上述所围平面图形绕$x$轴旋转一周所成旋转体的体积．', '[]', '
(1) 切点$A$的坐标为$(1, 1)$
(2) 过切点$A$的切线方程为$y = 2x - 1$
(3) 所围平面图形绕$x$轴旋转一周所成旋转体的体积为$\\frac{π}{30}$
', '
(1) 设切点$A$的坐标为$(a, a^{2})$，其中$a > 0$。曲线$y = x^{2}$在点$A$处的切线斜率为$2a$，切线方程为$y = 2ax - a^{2}$。切线与$x$轴的交点为$B (\\frac{a}{2}, 0)$。
由曲线、切线和$x$轴所围图形的面积为：


$$
A = \\int_{0}^{a/2} x^{2} dx + \\int_{a/2}^{a}  \\lbrack x^{2} - (2ax - a^{2}) \\rbrack   dx
$$

计算得：


$$
\\int_{0}^{a/2} x^{2} dx = \\frac{a^{3}}{24},  \\int_{a/2}^{a}(x - a)2 dx = \\frac{a^{3}}{24}
$$

所以$A = \\frac{a^{3}}{12}$。给定$A = \\frac{1}{12}$，解得$a^{3} = 1$，即$a = 1$。因此切点$A$的坐标为$(1, 1)$。
(2) 将$a = 1$代入切线方程$y = 2ax - a^{2}$，得切线方程为$y = 2x - 1$。
(3) 所围图形绕$x$轴旋转的体积为曲线$y = x^{2}$从$x = 0$到$x = 1$绕$x$轴旋转的体积减去切线$y = 2x - 1$从$x = \\frac{1}{2}$到$x = 1$绕$x$轴旋转的体积：


$$
V = \\int_{0}^{1} π(x^{2})2 dx - \\int_{1/2}^{1} π(2x - 1)2 dx = π \\int_{0}^{1} x^{4} dx - π \\int_{1/2}^{1}(2x - 1)2 dx
$$

计算得：


$$
\\int_{0}^{1} x^{4} dx = \\frac{1}{5},  \\int_{1/2}^{1}(2x - 1)2 dx = \\frac{1}{6}
$$

所以$V = π ⋅ \\frac{1}{5} - π ⋅ \\frac{1}{6} = \\frac{π}{30}$。
', 9, 'Mogullzr', '2026-01-29 14:06:42', 9, 'Mogullzr', '2026-01-29 14:06:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '182');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '182');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '182');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (183, '1988年考研数学卷4第18题', '简单', '考研数学1988年卷4真题', '已给线性方程组$\\begin{cases} x_{1} + x_{2} + 2x_{3} + 3x_{4} = 1 \\\\ x_{1} + 3x_{2} + 6x_{3} + x_{4} = 3 \\\\ 3x_{1} - x_{2} - k_{1}x_{3} + 15x_{4} = 3 \\\\ x_{1} - 5x_{2} - 10x_{3} + 12x_{4} = k_{2}. \\end{cases}$问$k_{1}$和$k_{2}$各取何值时，方程组无解？有唯一解？有无穷多解？
在方程组有无穷多组解的情形下，试求出一\\text{般解}．', '[]', '当$k_{1} \\neq 2$时，方程组有唯一解；当$k_{1} = 2$且$k_{2} \\neq 1$时，方程组无解；当$k_{1} = 2$且$k_{2} = 1$时，方程组有无穷多解。在有无穷多解的情形下，一般解为：

$$
x_{1} = −8,  x_{2} = 3 - 2t,  x_{3} = t,  x_{4} = 2,
$$

其中$t$为任意实数。
', '给定线性方程组的增广矩阵为：

$$
\\left( \\begin{array}{cccc|c}
1 & 1 & 2 & 3 & 1 \\\\
1 & 3 & 6 & 1 & 3 \\\\
3 & −1 & −k_{1} & 15 & 3 \\\\
1 & −5 & −10 & 12 & k_{2} \\\\
\\end{array} \\right)
$$

通过行变换化为行阶梯形：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 0 & 4 & 0 \\\\
0 & 1 & 2 & −1 & 1 \\\\
0 & 0 & −k_{1} + 2 & 2 & 4 \\\\
0 & 0 & 0 & 3 & k_{2} + 5 \\\\
\\end{array} \\right)
$$

分析该矩阵：
当$−k_{1} + 2 \\neq 0$，即$k_{1} \\neq 2$时，系数矩阵的秩为 4，增广矩阵的秩也为 4，方程组有唯一解。当$k_{1} = 2$时，系数矩阵的秩为 3。此时增广矩阵的第三行为$0, 0, 0, 2, 4$，第四行为$0, 0, 0, 3, k_{2} + 5$。由第三行得$x_{4} = 2$，代入第四行得$3 × 2 = k_{2} + 5$，即$k_{2} = 1$。因此，当$k_{2} \\neq 1$时，增广矩阵的秩为 4，方程组无解；当$k_{2} = 1$时，增广矩阵的秩为 3，方程组有无穷多解。
在$k_{1} = 2$且$k_{2} = 1$时，行阶梯形矩阵为：

$$
\\left( \\begin{array}{cccc|c}
1 & 0 & 0 & 4 & 0 \\\\
0 & 1 & 2 & −1 & 1 \\\\
0 & 0 & 0 & 2 & 4 \\\\
0 & 0 & 0 & 3 & 6 \\\\
\\end{array} \\right)
$$

忽略冗余的第四行，得到方程：

$$
\\begin{cases} x_{1} + 4x_{4} = 0 \\\\ x_{2} + 2x_{3} - x_{4} = 1 \\\\ 2x_{4} = 4 \\end{cases}
$$

解得$x_{4} = 2$，$x_{1} = −8$，代入第二方程得$x_{2} + 2x_{3} = 3$，即$x_{2} = 3 - 2x_{3}$。令$x_{3} = t$（$t$为任意实数），则一般解为：

$$
x_{1} = −8,  x_{2} = 3 - 2t,  x_{3} = t,  x_{4} = 2.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:42', 9, 'Mogullzr', '2026-01-29 14:06:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '183');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '183');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (184, '1988年考研数学卷4第19题', '简单', '考研数学1988年卷4真题', '已知向量组$α_{1}, α_{2}, ⋯  , α_{s}$($s ≥ 2$)线性无关．设
$$
β_{1} = α_{1} + α_{2},  β_{2} = α_{2} + α_{3},  ⋯  ,  β_{s-1} = α_{s-1} + α_{s},  β_{s} = α_{s} + α_{1}.
$$
试讨论向量组$β_{1}, β_{2}, ⋯  , β_{s}$的线性相关性．', '[]', '
当$s$为奇数时，向量组$β_{1}, β_{2}, ⋯  , β_{s}$线性无关；当$s$为偶数时，向量组$β_{1}, β_{2}, ⋯  , β_{s}$线性相关。
', '
考虑线性组合$k_{1}β_{1} + k_{2}β_{2} + ⋯ + k_{s}β_{s} = 0$，代入$β_{i}$的定义：


$$
k_{1}(α_{1} + α_{2}) + k_{2}(α_{2} + α_{3}) + ⋯ + k_{s-1}(α_{s-1} + α_{s}) + k_{s}(α_{s} + α_{1}) = 0.
$$

整理得：


$$
(k_{1} + k_{s})α_{1} + (k_{1} + k_{2})α_{2} + (k_{2} + k_{3})α_{3} + ⋯ + (k_{s-1} + k_{s})α_{s} = 0.
$$

由于$α_{1}, α_{2}, ⋯  , α_{s}$线性无关，系数必须为零：


$$
\\begin{cases} k_{1} + k_{s} = 0 \\\\ k_{1} + k_{2} = 0 \\\\ k_{2} + k_{3} = 0 \\\\ ⋮ \\\\ k_{s-1} + k_{s} = 0 \\end{cases}
$$

该齐次线性方程组的解可通过递推关系求得。设$k_{1} = c$，则$k_{2} = −c$，$k_{3} = c$，$k_{4} = −c$，依此类推，有$k_{i} = (−1)i−1c$。代入第一个方程$k_{1} + k_{s} = 0$：


$$
c + (−1)s−1c = 0  ⇒  c  \\lbrack 1 + (−1)s−1 \\rbrack  = 0.
$$

若$1 + (−1)s−1 \\neq 0$，则$c = 0$，仅有零解，向量组线性无关；若$1 + (−1)s−1 = 0$，则$c$可取任意值，存在非零解，向量组线性相关。
注意到$1 + (−1)s−1 = 0$当且仅当$s - 1$为奇数，即$s$为偶数；反之，当$s$为奇数时，$1 + (−1)s−1 = 2 \\neq 0$。
因此，当$s$为奇数时，向量组线性无关；当$s$为偶数时，向量组线性相关。
', 9, 'Mogullzr', '2026-01-29 14:06:42', 9, 'Mogullzr', '2026-01-29 14:06:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '184');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '184');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '184');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (185, '1988年考研数学卷4第20题', '简单', '考研数学1988年卷4真题', '设$A$是三阶方阵，$A^{∗}$是$A$的伴随矩阵，$A$的行列式$∣A∣ = \\frac{1}{2}$．
求行列式$​(3A)−1 - 2A^{∗}​$的值．', '[]', '
$−\\frac{16}{27}$
', '
已知$A$为三阶方阵，且$∣A∣ = \\frac{1}{2}$，则$A$可逆。伴随矩阵$A^{∗}$满足$A^{∗} = ∣A∣A^{−1} = \\frac{1}{2}A^{−1}$。
计算$(3A)−1 - 2A^{∗}$：
首先，$(3A)−1 = \\frac{1}{3}A^{−1}$。
其次，$2A^{∗} = 2 × \\frac{1}{2}A^{−1} = A^{−1}$。
因此，$(3A)−1 - 2A^{∗} = \\frac{1}{3}A^{−1} - A^{−1} = −\\frac{2}{3}A^{−1}$。
行列式$​−\\frac{2}{3}A^{−1}​ = (−\\frac{2}{3})^{3} ∣A^{−1}∣$，其中三阶矩阵的行列式系数幂次为 3。
计算得$(−\\frac{2}{3})^{3} = −\\frac{8}{27}$，且$∣A^{−1}∣ = \\frac{1}{∣A∣} = 2$。
故行列式为$−\\frac{8}{27} × 2 = −\\frac{16}{27}$。
', 9, 'Mogullzr', '2026-01-29 14:06:42', 9, 'Mogullzr', '2026-01-29 14:06:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '185');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '185');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '185');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (186, '1988年考研数学卷4第21题', '简单', '考研数学1988年卷4真题', '玻璃杯成箱出售，每箱$20$只，假设各箱含$0$,$1$,$2$只残次品的概率相应为$0.8$,$0.1$和$0.1$．
一顾客欲购一箱玻璃杯，在购买时，售货员随意取一箱，顾客开箱随机地察看$4$只：
若无残次品，则买下该箱玻璃杯，否则退回．试求：(1) 顾客买下该箱的概率$α$；(2) 在顾客买下的一箱中，确实没有残次品的概率$β$．', '[]', '
(1)$α = \\frac{448}{475}$
(2)$β = \\frac{95}{112}$
', '
设事件$B_{0}$、$B_{1}$、$B_{2}$分别表示箱中含有0、1、2只残次品，其概率分别为$P(B_{0}) = 0.8$、$P(B_{1}) = 0.1$、$P(B_{2}) = 0.1$。事件$A$表示顾客买下该箱，即随机查验4只玻璃杯无残次品。
(1) 求顾客买下该箱的概率$α = P(A)$。
使用全概率公式：


$$
P(A) = P(A ∣ B_{0})P(B_{0}) + P(A ∣ B_{1})P(B_{1}) + P(A ∣ B_{2})P(B_{2})
$$

其中：
$P(A ∣ B_{0}) = 1$（无残次品时必买下）$P(A ∣ B_{1}) = \\frac{C(19,4)}{C(20,4)} = \\frac{3876}{4845} = \\frac{4}{5}$（从19只好杯中选4只）$P(A ∣ B_{2}) = \\frac{C(18,4)}{C(20,4)} = \\frac{3060}{4845} = \\frac{12}{19}$（从18只好杯中选4只）
代入计算：
$P(A) = 1 × 0.8 + \\frac{4}{5} × 0.1 + \\frac{12}{19} × 0.1 = 0.8 + 0.08 + \\frac{12}{190}$转换为分数：
$P(A) = \\frac{4}{5} + \\frac{4}{50} + \\frac{12}{190} = \\frac{760}{950} + \\frac{76}{950} + \\frac{60}{950} = \\frac{896}{950} = \\frac{448}{475}$故$α = \\frac{448}{475}$。
(2) 求在顾客买下的一箱中确实没有残次品的概率$β = P(B_{0} ∣ A)$。
使用贝叶斯公式：


$$
P(B_{0} ∣ A) = \\frac{P(A ∣ B_{0})P(B_{0})}{P(A)} = \\frac{1 × 0.8}{\\frac{448}{475}} = \\frac{4}{5} × \\frac{475}{448} = \\frac{380}{448} = \\frac{95}{112}
$$

故$β = \\frac{95}{112}$。
', 9, 'Mogullzr', '2026-01-29 14:06:42', 9, 'Mogullzr', '2026-01-29 14:06:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '186');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '186');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (187, '1988年考研数学卷4第22题', '简单', '考研数学1988年卷4真题', '某保险公司多年的统计资料表明，在索赔户中被盗索赔户占$20%$。
以$X$表示在随意抽查的$100$个索赔户中因被盗向保险公司索赔的户数。[附表]设$Φ(x)$是标准正态分布函数。
$$
\\begin{array}{c|ccccccc|}
x & 0 & 0.5 & 1.0 & 1.5 & 2.0 & 2.5 & 3.0 \\\\
Φ(x) & 0.500 & 0.692 & 0.841 & 0.933 & 0.977 & 0.994 & 0.999 \\\\
\\end{array}
$$
', '[]', '
$X ∼ B(100, 0.2)$，即$P(X = k) = (\\frac{100}{k})(0.2)k(0.8)100−k,  k = 0, 1, 2, … , 100$。概率的近似值为$0.939$。
', '

$$
Z = \\frac{X - μ}{σ} = \\frac{X - 20}{4}
$$

', 9, 'Mogullzr', '2026-01-29 14:06:43', 9, 'Mogullzr', '2026-01-29 14:06:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '187');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '187');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (188, '1988年考研数学卷4第23题', '简单', '考研数学1988年卷4真题', '假设随机变量$X$在区间$(1, 2)$上服从均匀分布，试求随机变量$Y = e^{2X}$的概率密度$f_{Y}(y)$．', '[]', '
$f_{Y}(y) = \\begin{cases} \\frac{1}{2y} & e^{2} < y < e^{4} \\\\ 0 & 其他 \\end{cases}$
', '
已知随机变量$X$在区间$(1, 2)$上服从均匀分布，因此其概率密度函数为$f_{X}(x) = 1$，其中$x ∈ (1, 2)$。
给定$Y = e^{2X}$，首先确定$Y$的取值范围：当$X = 1$时，$Y = e^{2}$；当$X = 2$时，$Y = e^{4}$，故$Y$在区间$(e^{2}, e^{4})$内取值。
函数$Y = e^{2X}$是单调递增的，因此可以使用变量变换法求$f_{Y}(y)$。
设$g(X) = e^{2X}$，则其反函数为$g^{−1}(Y) = \\frac{\\ln Y}{2}$。
计算导数：


$$
\\frac{d}{dy}g^{−1}(y) = \\frac{d}{dy} (\\frac{\\ln y}{2}) = \\frac{1}{2y}.
$$

根据变换公式，


$$
f_{Y}(y) = f_{X}(g^{−1}(y)) ⋅ ​\\frac{d}{dy}g^{−1}(y)​ .
$$

代入$f_{X}(g^{−1}(y)) = f_{X} (\\frac{\\ln y}{2})$，且$f_{X}(x) = 1$当$x ∈ (1, 2)$，即$\\frac{\\ln y}{2} ∈ (1, 2)$，等价于$e^{2} < y < e^{4}$。
因此，当$y ∈ (e^{2}, e^{4})$时，$f_{X}(g^{−1}(y)) = 1$，且$​\\frac{d}{dy}g^{−1}(y)​ = \\frac{1}{2y}$，故


$$
f_{Y}(y) = \\frac{1}{2y}.
$$

对于其他$y$值，$f_{Y}(y) = 0$。
验证：


$$
\\int_{e^{2}}^{e^{4}} \\frac{1}{2y} dy = \\frac{1}{2}  \\lbrack \\ln y \\rbrack _{e^{2}}^{e^{4}} = \\frac{1}{2}(4 - 2) = 1,
$$

满足概率密度函数的归一性。
', 9, 'Mogullzr', '2026-01-29 14:06:43', 9, 'Mogullzr', '2026-01-29 14:06:43', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '188');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '188');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (189, '1988年考研数学卷5第1题', '', '考研数学1988年卷5真题', '/problems/other/166', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (190, '1988年考研数学卷5第2题', '', '考研数学1988年卷5真题', '/problems/other/167', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (191, '1988年考研数学卷5第3题', '', '考研数学1988年卷5真题', '/problems/other/168', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (192, '1988年考研数学卷5第4题', '', '考研数学1988年卷5真题', '/problems/other/169', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (193, '1988年考研数学卷5第5题', '', '考研数学1988年卷5真题', '/problems/other/170', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (194, '1988年考研数学卷5第6题', '', '考研数学1988年卷5真题', '/problems/other/171', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (195, '1988年考研数学卷5第7题', '', '考研数学1988年卷5真题', '/problems/other/172', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (196, '1988年考研数学卷5第8题', '', '考研数学1988年卷5真题', '/problems/other/173', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (197, '1988年考研数学卷5第9题', '', '考研数学1988年卷5真题', '/problems/other/174', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (198, '1988年考研数学卷5第10题', '简单', '考研数学1988年卷5真题', '求极限$\\lim_{x→1}(1 - x^{2}) \\tan \\frac{πx}{2}$．', '[]', '$\\frac{4}{π}$
', '该极限为$0 × ∞$型不定式。将其转化为$\\frac{0}{0}$形式：


$$
\\lim_{x→1} \\frac{1 - x^{2}}{cot \\frac{πx}{2}}.
$$

应用洛必达法则，分子导数为$−2x$，分母导数为$−\\frac{π}{2} csc^{2} \\frac{πx}{2}$。因此，极限化为


$$
\\lim_{x→1} \\frac{−2x}{−\\frac{π}{2} csc^{2} \\frac{πx}{2}} = \\lim_{x→1} \\frac{4x}{π csc^{2} \\frac{πx}{2}} = \\lim_{x→1} \\frac{4x \\sin^{2} \\frac{πx}{2}}{π}.
$$

代入$x = 1$，得


$$
\\frac{4 ⋅ 1 ⋅ 1}{π} = \\frac{4}{π}.
$$

或者，令$t = x - 1$，则原极限化为


$$
\\lim_{t→0}(2t + t^{2}) cot \\frac{πt}{2}.
$$

当$t → 0$时，$cot \\frac{πt}{2} ∼ \\frac{2}{πt}$，因此


$$
2t ⋅ \\frac{2}{πt} = \\frac{4}{π},
$$

忽略高阶项$t^{2}$，结果相同。
', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '198');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '198');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '198');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (199, '1988年考研数学卷5第11题', '简单', '考研数学1988年卷5真题', '已知$u = e^{\\frac{x}{y}}$，求$\\frac{∂^{2}u}{∂x∂y}$．', '[]', '

$$
\\frac{∂^{2}u}{∂x∂y} = −\\frac{(x + y)e^{\\frac{x}{y}}}{y^{3}}
$$

', '给定$u = e^{\\frac{x}{y}}$，首先求一阶偏导数$\\frac{∂u}{∂y}$。
令$v = \\frac{x}{y}$，则$u = e^{v}$，所以


$$
\\frac{∂u}{∂y} = \\frac{∂u}{∂v} ⋅ \\frac{∂v}{∂y} = e^{v} ⋅ \\frac{∂}{∂y} (\\frac{x}{y}) = e^{\\frac{x}{y}} ⋅ (−\\frac{x}{y^{2}}) = −\\frac{x}{y^{2}}e^{\\frac{x}{y}}.
$$

然后求二阶混合偏导数$\\frac{∂^{2}u}{∂x∂y} = \\frac{∂}{∂x} (\\frac{∂u}{∂y})$，即


$$
\\frac{∂}{∂x} (−\\frac{x}{y^{2}}e^{\\frac{x}{y}}) .
$$

这是一个乘积形式，令$w = −\\frac{x}{y^{2}}$,$z = e^{\\frac{x}{y}}$，则


$$
\\frac{∂}{∂x}(wz) = \\frac{∂w}{∂x}z + w\\frac{∂z}{∂x}.
$$

计算


$$
\\frac{∂w}{∂x} = \\frac{∂}{∂x} (−\\frac{x}{y^{2}}) = −\\frac{1}{y^{2}},
$$



$$
\\frac{∂z}{∂x} = \\frac{∂}{∂x} (e^{\\frac{x}{y}}) = e^{\\frac{x}{y}} ⋅ \\frac{∂}{∂x} (\\frac{x}{y}) = e^{\\frac{x}{y}} ⋅ \\frac{1}{y}.
$$

代入得


$$
\\frac{∂}{∂x} (\\frac{∂u}{∂y}) = (−\\frac{1}{y^{2}}) e^{\\frac{x}{y}} + (−\\frac{x}{y^{2}}) (e^{\\frac{x}{y}} ⋅ \\frac{1}{y}) = −\\frac{1}{y^{2}}e^{\\frac{x}{y}} - \\frac{x}{y^{3}}e^{\\frac{x}{y}} = −e^{\\frac{x}{y}} (\\frac{1}{y^{2}} + \\frac{x}{y^{3}}) .
$$

提取公因式$\\frac{1}{y^{2}}$，


$$
= −e^{\\frac{x}{y}} ⋅ \\frac{1}{y^{2}} (1 + \\frac{x}{y}) = −\\frac{e^{\\frac{x}{y}}}{y^{2}} ⋅ \\frac{x + y}{y} = −\\frac{(x + y)e^{\\frac{x}{y}}}{y^{3}}.
$$

因此，$\\frac{∂^{2}u}{∂x∂y} = −\\frac{(x+y)e^{\\frac{x}{y}}}{y^{3}}$。
', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '199');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '199');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '199');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (200, '1988年考研数学卷5第12题', '', '考研数学1988年卷5真题', '/problems/other/177', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (201, '1988年考研数学卷5第13题', '', '考研数学1988年卷5真题', '/problems/other/178', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (202, '1988年考研数学卷5第14题', '简单', '考研数学1988年卷5真题', '确定常数$a$和$b$，使函数$f(x) = \\begin{cases} ax + b & x > 1 \\\\ x^{2} & x ≤ 1 \\end{cases}$处处可导．', '[]', '
$a = 2$，$b = −1$
', '
为了使函数$f(x)$处处可导，必须满足其在$x = 1$处连续且可导。
首先，连续性要求：


$$
\\lim_{x→1^{-}} f(x) = \\lim_{x→1^{+}} f(x) = f(1).
$$

当$x ≤ 1$时，$f(x) = x^{2}$，于是


$$
\\lim_{x→1^{-}} f(x) = 1^{2} = 1,  f(1) = 1.
$$

当$x > 1$时，$f(x) = ax + b$，于是


$$
\\lim_{x→1^{+}} f(x) = a ⋅ 1 + b = a + b.
$$

因此，连续性条件为


$$
a + b = 1.
$$

其次，可导性要求：
在$x = 1$处左导数等于右导数。
左导数为


$$
f_{-}^{′}(1) = \\frac{d}{dx}(x^{2})​_{x=1} = 2 ⋅ 1 = 2.
$$

右导数为


$$
f_{+}^{′}(1) = \\frac{d}{dx}(ax + b)​_{x=1} = a.
$$

因此，可导性条件为


$$
2 = a,
$$

即$a = 2$。
代入连续性条件$a + b = 1$，得


$$
2 + b = 1,
$$

即$b = −1$。
故当$a = 2$，$b = −1$时，函数处处可导。
', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '202');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '202');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '202');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (203, '1988年考研数学卷5第15题', '', '考研数学1988年卷5真题', '/problems/other/162', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (204, '1988年考研数学卷5第16题', '', '考研数学1988年卷5真题', '/problems/other/182', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (205, '1988年考研数学卷5第17题', '', '考研数学1988年卷5真题', '/problems/other/183', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (206, '1988年考研数学卷5第18题', '简单', '考研数学1988年卷5真题', '已知$n$阶方阵$A$满足矩阵方程$A^{2} - 3A - 2E = O$，其中$A$是给定的，而$E$是单位矩阵．
证明$A$可逆，并求了其逆矩阵$A^{−1}$．', '[]', '
$A^{−1} = \\frac{1}{2}(A - 3E)$
', '
已知矩阵方程$A^{2} - 3A - 2E = O$，其中$E$是单位矩阵。
将方程改写为


$$
A^{2} - 3A = 2E
$$

在左边提取公因子$A$，得到


$$
A(A - 3E) = 2E
$$

两边同时除以 2，可得


$$
A ⋅ \\frac{1}{2}(A - 3E) = E
$$

同理，从方程右乘的角度可得


$$
(A - 3E)A = 2E
$$

即


$$
\\frac{1}{2}(A - 3E) ⋅ A = E
$$

因此，$A$可逆，且其逆矩阵为


$$
A^{−1} = \\frac{1}{2}(A - 3E)
$$

', 9, 'Mogullzr', '2026-01-29 14:06:45', 9, 'Mogullzr', '2026-01-29 14:06:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '206');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '206');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '206');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (207, '1988年考研数学卷5第19题', '', '考研数学1988年卷5真题', '/problems/other/184', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:46', 9, 'Mogullzr', '2026-01-29 14:06:46', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (208, '1988年考研数学卷5第20题', '', '考研数学1988年卷5真题', '/problems/other/186', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:46', 9, 'Mogullzr', '2026-01-29 14:06:46', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (209, '1988年考研数学卷5第21题', '简单', '考研数学1988年卷5真题', '假设有十只同种电器元件，其中有两只废品，装配仪器时，从这批元件中任取一只，
如是废品，则扔掉重新任取一只；如仍是废品，则扔掉再取一只．
试求在取到正品之前，已取出的废品只数的分布、数学期望和方差．', '[]', '
已取出的废品只数$X$的分布为：
$P(X = 0) = \\frac{4}{5}$，
$P(X = 1) = \\frac{8}{45}$，
$P(X = 2) = \\frac{1}{45}$。
数学期望$E(X) = \\frac{2}{9}$，
方差$Var(X) = \\frac{88}{405}$。
', '
设随机变量$X$表示在取到正品之前已取出的废品只数，其可能取值为$0$、$1$、$2$。
$P(X = 0)$表示第一次取到正品，概率为$\\frac{8}{10} = \\frac{4}{5}$。$P(X = 1)$表示第一次取到废品、第二次取到正品，概率为$\\frac{2}{10} × \\frac{8}{9} = \\frac{16}{90} = \\frac{8}{45}$。$P(X = 2)$表示第一次取到废品、第二次取到废品、第三次取到正品，概率为$\\frac{2}{10} × \\frac{1}{9} × 1 = \\frac{2}{90} = \\frac{1}{45}$。
数学期望


$$
E(X) = 0 × \\frac{4}{5} + 1 × \\frac{8}{45} + 2 × \\frac{1}{45} = \\frac{10}{45} = \\frac{2}{9}.
$$

计算方差：


$$
E(X^{2}) = 0^{2} × \\frac{4}{5} + 1^{2} × \\frac{8}{45} + 2^{2} × \\frac{1}{45} = \\frac{8}{45} + \\frac{4}{45} = \\frac{12}{45} = \\frac{4}{15},
$$



$$
Var(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2 = \\frac{4}{15} - (\\frac{2}{9})^{2} = \\frac{4}{15} - \\frac{4}{81} = \\frac{108}{405} - \\frac{20}{405} = \\frac{88}{405}.
$$

', 9, 'Mogullzr', '2026-01-29 14:06:46', 9, 'Mogullzr', '2026-01-29 14:06:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '209');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '209');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (210, '1988年考研数学卷5第22题', '', '考研数学1988年卷5真题', '/problems/other/188', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:06:46', 9, 'Mogullzr', '2026-01-29 14:06:46', 0, 4);
