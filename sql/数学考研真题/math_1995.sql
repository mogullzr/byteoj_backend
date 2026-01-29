INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (847, '1995年考研数学卷1第1题', '简单', '考研数学1995年卷1真题', '$\\lim_{x→0}(1 + 3x)sinx2​ =$______．', '[]', '
$e^{6}$
', '
考虑极限


$$
\\lim_{x→0}(1 + 3x)sinx2​.
$$

设


$$
L = \\lim_{x→0}(1 + 3x)sinx2​,
$$

取自然对数得：


$$
\\ln L = \\lim_{x→0} \\ln ((1 + 3x)sinx2​) = \\lim_{x→0} \\frac{2 \\ln(1 + 3x)}{\\sin x}.
$$

当$x → 0$时，该极限为$\\frac{0}{0}$型不定式。
当$x → 0$时，有


$$
\\ln(1 + 3x) ∼ 3x,  \\sin x ∼ x,
$$

因此


$$
\\frac{2 \\ln(1 + 3x)}{\\sin x} ∼ \\frac{2 ⋅ 3x}{x} = 6,
$$

即


$$
\\ln L = 6,  L = e^{6}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:24', 9, 'Mogullzr', '2026-01-29 14:09:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '847');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '847');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '847');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (848, '1995年考研数学卷1第2题', '简单', '考研数学1995年卷1真题', '$\\frac{d}{dx} \\int_{x^{2}}^{0} x \\cos t^{2}dt =$______．', '[]', '

$$
−2x^{2} \\cos(x^{4}) - \\int_{0}^{x^{2}} \\cos t^{2} dt
$$

', '考虑函数$F(x) = \\int_{x^{2}}^{0} x \\cos t^{2} dt$。首先，将积分改写为$F(x) = x \\int_{x^{2}}^{0} \\cos t^{2} dt$。然后，使用乘积法则求导：

$$
F^{′}(x) = \\frac{d}{dx}  \\lbrack x \\int_{x^{2}}^{0} \\cos t^{2} dt \\rbrack  = (\\frac{d}{dx}x) \\int_{x^{2}}^{0} \\cos t^{2} dt + x ⋅ \\frac{d}{dx} (\\int_{x^{2}}^{0} \\cos t^{2} dt) .
$$

其中，第一项为$\\int_{x^{2}}^{0} \\cos t^{2} dt$。对于第二项，令$G(u) = \\int_{u}^{0} \\cos t^{2} dt$，则$G(u) = − \\int_{0}^{u} \\cos t^{2} dt$，所以$G^{′}(u) = − \\cos u^{2}$。由于$u = x^{2}$，有$\\frac{du}{dx} = 2x$，因此：

$$
\\frac{d}{dx} (\\int_{x^{2}}^{0} \\cos t^{2} dt) = G^{′}(u) ⋅ \\frac{du}{dx} = − \\cos u^{2} ⋅ 2x = −2x \\cos(x^{4}).
$$

代入得：

$$
F^{′}(x) = \\int_{x^{2}}^{0} \\cos t^{2} dt + x ⋅ (−2x \\cos(x^{4})) = \\int_{x^{2}}^{0} \\cos t^{2} dt - 2x^{2} \\cos(x^{4}).
$$

将积分$\\int_{x^{2}}^{0} \\cos t^{2} dt$写为$− \\int_{0}^{x^{2}} \\cos t^{2} dt$，最终结果为：

$$
F^{′}(x) = −2x^{2} \\cos(x^{4}) - \\int_{0}^{x^{2}} \\cos t^{2} dt.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:24', 9, 'Mogullzr', '2026-01-29 14:09:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '848');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '848');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '848');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (849, '1995年考研数学卷1第3题', '简单', '考研数学1995年卷1真题', '设$(a × b) ⋅ c = 2$,
则$\\lbrack (a + b) × (b + c) \\rbrack  ⋅ (c + a) =$______．', '[]', '4
', '
利用向量运算律有

$$
\\lbrack (a + b) × (b + c) \\rbrack  ⋅ (c + a) =  \\lbrack (a + b) × b \\rbrack  ⋅ (c + a) +  \\lbrack (a + b) × c \\rbrack  ⋅ (c + a)
$$


$$
= (a × b + b × b) ⋅ (c + a) + (a × c + b × c) ⋅ (c + a)
$$


$$
= (a × b) ⋅ c + (a × b) ⋅ a + (a × c) ⋅ c + (b × c) ⋅ a
$$


$$
= (a × b) ⋅ c + (b × c) ⋅ a = (a × b) ⋅ c + (a × b) ⋅ c = 4
$$

', 9, 'Mogullzr', '2026-01-29 14:09:24', 9, 'Mogullzr', '2026-01-29 14:09:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '849');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '849');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1077', '849');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (850, '1995年考研数学卷1第4题', '简单', '考研数学1995年卷1真题', '幂级数$\\sum_{n=1}^{∞} \\frac{n}{2^{n}+(−3)n}x^{2n-1}$的收敛半径$R =$______．', '[]', '$\\sqrt{3}$
', '
令$a_{n} = \\frac{n}{2^{n}+(−3)n}x^{2n-1}$，则当$n → ∞$时，有

$$
\\lim_{n→∞} \\frac{∣a_{n+1}∣}{∣a_{n}∣} = \\lim_{n→∞} ​\\frac{\\frac{n+1}{2^{n+1}+(−3)n+1}x^{2(n+1)-1}}{\\frac{n}{2^{n}+(−3)n}x^{2n-1}}​
$$


$$
= \\lim_{n→∞} x^{2} ⋅ ​\\frac{n + 1}{n}​ ⋅ ​\\frac{3^{n} (\\frac{2}{3})^{n} + (−1)n}{3^{n+1} (\\frac{2}{3})^{n+1} + (−1)n+1}​ = \\frac{1}{3}x^{2},
$$

而当$\\frac{1}{3}x^{2} < 1$时，幂级数收敛，即$∣x∣ < \\sqrt{3}$时，此幂级数收敛；当$\\frac{1}{3}x^{2} > 1$时，即$∣x∣ > \\sqrt{3}$时，此幂级数发散，因此收敛半径为$R = \\sqrt{3}$。
', 9, 'Mogullzr', '2026-01-29 14:09:24', 9, 'Mogullzr', '2026-01-29 14:09:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '850');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '850');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '850');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (851, '1995年考研数学卷1第5题', '简单', '考研数学1995年卷1真题', '设三阶方阵$A$、$B$满足关系式：$A^{−1}BA = 6A + BA$，且$A = \\left( \\begin{array}{ccc}
\\frac{1}{3} & 0 & 0 \\\\
0 & \\frac{1}{4} & 0 \\\\
0 & 0 & \\frac{1}{7} \\\\
\\end{array} \\right)$，则$B =$______．', '[]', '

$$
B = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

', '给定方程$A^{−1}BA = 6A + BA$和$A = \\left( \\begin{array}{ccc}
\\frac{1}{3} & 0 & 0 \\\\
0 & \\frac{1}{4} & 0 \\\\
0 & 0 & \\frac{1}{7} \\\\
\\end{array} \\right)$，首先求$A^{−1}$。由于$A$是对角矩阵，$A^{−1} = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 4 & 0 \\\\
0 & 0 & 7 \\\\
\\end{array} \\right)$。
将原方程右乘$A^{−1}$，得：

$$
A^{−1}BAA^{−1} = 6AA^{−1} + BAA^{−1}
$$

简化后：

$$
A^{−1}B = 6I + B
$$

其中$I$为单位矩阵。移项得：

$$
A^{−1}B - B = 6I
$$

因式分解：

$$
(A^{−1} - I)B = 6I
$$

计算$A^{−1} - I$：

$$
A^{−1} - I = \\left( \\begin{array}{ccc}
3 - 1 & 0 & 0 \\\\
0 & 4 - 1 & 0 \\\\
0 & 0 & 7 - 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
2 & 0 & 0 \\\\
0 & 3 & 0 \\\\
0 & 0 & 6 \\\\
\\end{array} \\right)
$$

求逆矩阵：

$$
(A^{−1} - I)−1 = \\left( \\begin{array}{ccc}
\\frac{1}{2} & 0 & 0 \\\\
0 & \\frac{1}{3} & 0 \\\\
0 & 0 & \\frac{1}{6} \\\\
\\end{array} \\right)
$$

则：

$$
B = 6(A^{−1} - I)−1 = 6 \\left( \\begin{array}{ccc}
\\frac{1}{2} & 0 & 0 \\\\
0 & \\frac{1}{3} & 0 \\\\
0 & 0 & \\frac{1}{6} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)
$$

验证：计算$A^{−1}BA$和$6A + BA$，两者均等于$\\left( \\begin{array}{ccc}
3 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$，符合原方程。
', 9, 'Mogullzr', '2026-01-29 14:09:24', 9, 'Mogullzr', '2026-01-29 14:09:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '851');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '851');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '851');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (852, '1995年考研数学卷1第6题', '简单', '考研数学1995年卷1真题', '设有直线$L : \\begin{cases} x + 3y + 2z + 1 = 0 \\\\ 2x - y - 10z + 3 = 0 \\end{cases}$及平面$Π : 4x - 2y + z - 3 = 0$，则直线$L$', '[''平行于$Π$．'', ''在$Π$上．'', ''垂直于$Π$．'', ''与$Π$斜交．'']', "['C']", '首先，求直线L的方向向量。直线L由两个平面方程定义，其法向量分别为$n_{1} = (1, 3, 2)$和$n_{2} = (2, −1, −10)$。方向向量$d$为两法向量的叉积：$d = n_{1} × n_{2} = \\begin{vmatrix}
i & j & k\\\\
1 & 3 & 2\\\\
2 & −1 & −10
\\end{vmatrix} = (−28, 14, −7)$，简化后为$(4, −2, 1)$。平面$Π$的方程为$4x - 2y + z - 3 = 0$，法向量为$n = (4, −2, 1)$。可见方向向量$d$与法向量$n$平行，因此直线L垂直于平面$Π$。再验证直线L是否在平面上：取直线L上一点$P(−10/7, 1/7, 0)$，代入平面方程得$4 × (−10/7) - 2 × (1/7) + 0 - 3 = −40/7 - 2/7 - 3 = −42/7 - 3 = −6 - 3 = −9 \\neq 0$，故点P不在平面上，直线L不在平面$Π$上。因此，直线L垂直于平面$Π$。', 9, 'Mogullzr', '2026-01-29 14:09:25', 9, 'Mogullzr', '2026-01-29 14:09:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '852');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '852');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '852');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (853, '1995年考研数学卷1第7题', '简单', '考研数学1995年卷1真题', '设在$\\lbrack 0, 1 \\rbrack$上$f^{′′}(x) > 0$，则$f^{′}(0)$,$f^{′}(1)$,$f(1) - f(0)$或$f(0) - f(1)$的大小顺序是', '[''$f^{′}(1) > f^{′}(0) > f(1) - f(0)$．'', ''$f^{′}(1) > f(1) - f(0) > f^{′}(0)$．'', ''$f(1) - f(0) > f^{′}(1) > f^{′}(0)$．'', ''$f^{′}(1) > f(0) - f(1) > f^{′}(0)$．'']', "['B']", '由题意，在区间$\\lbrack 0, 1 \\rbrack$上$f^{′′}(x) > 0$，可知函数$f(x)$是凸函数，且导数$f^{′}(x)$单调递增，因此有$f^{′}(0) < f^{′}(1)$。根据拉格朗日中值定理，存在$c ∈ (0, 1)$使得$f(1) - f(0) = f^{′}(c)$。由于$f^{′}(x)$单调递增，有$f^{′}(0) < f^{′}(c) < f^{′}(1)$，即$f^{′}(0) < f(1) - f(0) < f^{′}(1)$。因此，大小顺序为$f^{′}(1) > f(1) - f(0) > f^{′}(0)$，对应选项 B。选项 A、C、D 均与上述不等式矛盾，故错误。', 9, 'Mogullzr', '2026-01-29 14:09:25', 9, 'Mogullzr', '2026-01-29 14:09:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '853');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '853');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '853');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (854, '1995年考研数学卷1第8题', '简单', '考研数学1995年卷1真题', '设$f(x)$可导，$F(x) = f(x)(1 + ∣ \\sin x∣)$，则$f(0) = 0$是$F(x)$在$x = 0$处可导的', '[''充分必要条件．'', ''充分条件但非必要条件．'', ''必要条件但非充分条件．'', ''既非充分条件又非必要条件．'']', "['A']", '设$f(x)$可导，$F(x) = f(x)(1 + ∣ \\sin x∣)$。需判断$f(0) = 0$是否为$F(x)$在$x = 0$处可导的充分必要条件。首先，若$f(0) = 0$，则计算$F(x)$在$x = 0$处的左、右导数。
右导数：

$$
F_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{f(h)(1 + ∣ \\sin h∣) - f(0)}{h} = \\lim_{h→0^{+}} \\frac{f(h)(1 + \\sin h)}{h}
$$
由于$f(h) = f(0) + f^{′}(0)h + o(h) = f^{′}(0)h + o(h)$，代入得：

$$
F_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{f^{′}(0)h(1 + \\sin h) + o(h)}{h} = f^{′}(0)(1 + 0) = f^{′}(0)
$$
左导数：

$$
F_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{f(h)(1 + ∣ \\sin h∣) - f(0)}{h} = \\lim_{h→0^{-}} \\frac{f(h)(1 - \\sin h)}{h}
$$
同样代入$f(h) = f^{′}(0)h + o(h)$：

$$
F_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{f^{′}(0)h(1 - \\sin h) + o(h)}{h} = f^{′}(0)(1 - 0) = f^{′}(0)
$$
左、右导数相等，故$F(x)$在$x = 0$处可导，且$F^{′}(0) = f^{′}(0)$。因此$f(0) = 0$是充分条件。其次，若$F(x)$在$x = 0$处可导，则左、右导数相等。
右导数：

$$
F_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{f(h)(1 + \\sin h) - f(0)}{h}
$$
代入$f(h) = f(0) + f^{′}(0)h + o(h)$：

$$
F_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{ \\lbrack f(0) + f^{′}(0)h + o(h) \\rbrack (1 + \\sin h) - f(0)}{h} = \\lim_{h→0^{+}} \\frac{f^{′}(0)h + f(0) \\sin h + o(h)}{h} = f^{′}(0) + f(0)
$$
左导数：

$$
F_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{f(h)(1 - \\sin h) - f(0)}{h}
$$
代入$f(h) = f(0) + f^{′}(0)h + o(h)$：

$$
F_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{ \\lbrack f(0) + f^{′}(0)h + o(h) \\rbrack (1 - \\sin h) - f(0)}{h} = \\lim_{h→0^{-}} \\frac{f^{′}(0)h - f(0) \\sin h + o(h)}{h} = f^{′}(0) - f(0)
$$
由$F_{+}^{′}(0) = F_{-}^{′}(0)$，得$f^{′}(0) + f(0) = f^{′}(0) - f(0)$，即$2f(0) = 0$，故$f(0) = 0$。因此$f(0) = 0$是必要条件。综上，$f(0) = 0$是$F(x)$在$x = 0$处可导的充分必要条件。', 9, 'Mogullzr', '2026-01-29 14:09:25', 9, 'Mogullzr', '2026-01-29 14:09:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '854');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '854');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '854');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (855, '1995年考研数学卷1第9题', '简单', '考研数学1995年卷1真题', '设$u_{n} = (−1)n \\ln (1 + \\frac{1}{\\sqrt{n}})$，则级数', '[''$\\\\sum_{n=1}^{∞} u_{n}$与$\\\\sum_{n=1}^{∞} u_{n}^{2}$都收敛．'', ''$\\\\sum_{n=1}^{∞} u_{n}$与$\\\\sum_{n=1}^{∞} u_{n}^{2}$都发散．'', ''$\\\\sum_{n=1}^{∞} u_{n}$收敛而$\\\\sum_{n=1}^{∞} u_{n}^{2}$发散．'', ''$\\\\sum_{n=1}^{∞} u_{n}$发散而$\\\\sum_{n=1}^{∞} u_{n}^{2}$收敛．'']', "['C']", '考虑级数$\\sum_{n=1}^{∞} u_{n}$，其中$u_{n} = (−1)n \\ln (1 + \\frac{1}{\\sqrt{n}})$。令$a_{n} = \\ln (1 + \\frac{1}{\\sqrt{n}})$，则$u_{n} = (−1)na_{n}$。当$n → ∞$时，$a_{n} ∼ \\frac{1}{\\sqrt{n}} → 0$，且$a_{n}$单调递减（因为函数$f(x) = \\ln (1 + \\frac{1}{\\sqrt{x}})$的导数$f^{′}(x) = −\\frac{1}{2}\\frac{1}{x^{3/2}+x} < 0$）。由莱布尼茨判别法，$\\sum_{n=1}^{∞} u_{n}$收敛。再考虑级数$\\sum_{n=1}^{∞} u_{n}^{2}$，其中$u_{n}^{2} =  \\lbrack \\ln (1 + \\frac{1}{\\sqrt{n}}) \\rbrack ^{2}$。当$n → ∞$时，$\\ln (1 + \\frac{1}{\\sqrt{n}}) ∼ \\frac{1}{\\sqrt{n}}$，因此$u_{n}^{2} ∼ (\\frac{1}{\\sqrt{n}})^{2} = \\frac{1}{n}$。由于$\\sum_{n=1}^{∞} \\frac{1}{n}$发散，由比较判别法，$\\sum_{n=1}^{∞} u_{n}^{2}$发散。因此，$\\sum_{n=1}^{∞} u_{n}$收敛而$\\sum_{n=1}^{∞} u_{n}^{2}$发散，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:09:25', 9, 'Mogullzr', '2026-01-29 14:09:25', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '855');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '855');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '855');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (856, '1995年考研数学卷1第10题', '简单', '考研数学1995年卷1真题', '设$A = \\left( \\begin{array}{ccc}
a_{11} & a_{12} & a_{13} \\\\
a_{21} & a_{22} & a_{23} \\\\
a_{31} & a_{32} & a_{33} \\\\
\\end{array} \\right)$,$B = \\left( \\begin{array}{ccc}
a_{21} & a_{22} & a_{23} \\\\
a_{11} & a_{12} & a_{13} \\\\
a_{31} + a_{11} & a_{32} + a_{12} & a_{33} + a_{13} \\\\
\\end{array} \\right)$$P_{1} = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
1 & 0 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$,$P_{2} = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
1 & 0 & 1 \\\\
\\end{array} \\right)$，则必有', '[''$AP_{1}P_{2} = B$．'', ''$AP_{2}P_{1} = B$．'', ''$P_{1}P_{2}A = B$．'', ''$P_{2}P_{1}A = B$．'']', "['C']", '矩阵$B$是通过对矩阵$A$进行行变换得到的：将$A$的第一行加到第三行；交换第一行和第二行。设初等矩阵$P_{2}$左乘$A$表示将第一行加到第三行，即$P_{2}A$；
再设初等矩阵$P_{1}$左乘$P_{2}A$表示交换第一行和第二行，即$P_{1}(P_{2}A) = P_{1}P_{2}A$。
计算可得$P_{1}P_{2}A$恰好等于$B$。其他选项不满足此关系：选项 A 和 B 涉及右乘，但右乘表示列变换，与$B$的行变换不符；选项 D 中$P_{2}P_{1}A$先交换行再加行，得到第三行为$A$的第三行加第二行，与$B$的第三行加第一行不一致。因此正确选项为$C$。', 9, 'Mogullzr', '2026-01-29 14:09:26', 9, 'Mogullzr', '2026-01-29 14:09:26', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '856');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '856');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '856');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (857, '1995年考研数学卷1第11题', '简单', '考研数学1995年卷1真题', '设$u = f(x, y, z)$,$φ(x^{2}, e^{y}, z) = 0$,$y = \\sin x$，其中$f$,$φ$都具有一阶连续偏导数，且$\\frac{∂φ}{∂z} \\neq 0$，求$\\frac{du}{dx}$．', '[]', '

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y} \\cos x - \\frac{\\frac{∂f}{∂z}}{\\frac{∂φ}{∂z}} (2x\\frac{∂φ}{∂u} + e^{y} \\cos x\\frac{∂φ}{∂v})
$$

其中$\\frac{∂φ}{∂u}$和$\\frac{∂φ}{∂v}$分别表示$φ$对第一个变量和第二个变量的偏导数，在点$(u, v, w) = (x^{2}, e^{y}, z)$处计算。
', '给定$u = f(x, y, z)$，$y = \\sin x$，以及$φ(x^{2}, e^{y}, z) = 0$，求$\\frac{du}{dx}$。
首先，应用链式法则，有：

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y}\\frac{dy}{dx} + \\frac{∂f}{∂z}\\frac{dz}{dx}.
$$

由$y = \\sin x$，得$\\frac{dy}{dx} = \\cos x$。
接下来，求$\\frac{dz}{dx}$。从$φ(x^{2}, e^{y}, z) = 0$出发，对$x$求导。令$φ = φ(u, v, w)$，其中$u = x^{2}$，$v = e^{y}$，$w = z$。则：

$$
\\frac{dφ}{dx} = \\frac{∂φ}{∂u}\\frac{du}{dx} + \\frac{∂φ}{∂v}\\frac{dv}{dx} + \\frac{∂φ}{∂w}\\frac{dw}{dx} = 0.
$$

计算得$\\frac{du}{dx} = 2x$，$\\frac{dv}{dx} = e^{y}\\frac{dy}{dx} = e^{y} \\cos x$，$\\frac{dw}{dx} = \\frac{dz}{dx}$。代入得：

$$
\\frac{∂φ}{∂u} ⋅ 2x + \\frac{∂φ}{∂v} ⋅ e^{y} \\cos x + \\frac{∂φ}{∂w} ⋅ \\frac{dz}{dx} = 0.
$$

由$\\frac{∂φ}{∂w} = \\frac{∂φ}{∂z} \\neq 0$，解出：

$$
\\frac{dz}{dx} = −\\frac{\\frac{∂φ}{∂u} ⋅ 2x + \\frac{∂φ}{∂v} ⋅ e^{y} \\cos x}{\\frac{∂φ}{∂z}}.
$$

代入$\\frac{du}{dx}$表达式：

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y} \\cos x + \\frac{∂f}{∂z} (−\\frac{\\frac{∂φ}{∂u} ⋅ 2x + \\frac{∂φ}{∂v} ⋅ e^{y} \\cos x}{\\frac{∂φ}{∂z}}) .
$$

整理得：

$$
\\frac{du}{dx} = \\frac{∂f}{∂x} + \\frac{∂f}{∂y} \\cos x - \\frac{\\frac{∂f}{∂z}}{\\frac{∂φ}{∂z}} (2x\\frac{∂φ}{∂u} + e^{y} \\cos x\\frac{∂φ}{∂v}) .
$$

其中$\\frac{∂φ}{∂u}$和$\\frac{∂φ}{∂v}$分别为$φ$对第一个变量和第二个变量的偏导数。
', 9, 'Mogullzr', '2026-01-29 14:09:26', 9, 'Mogullzr', '2026-01-29 14:09:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '857');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '857');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '857');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (858, '1995年考研数学卷1第12题', '简单', '考研数学1995年卷1真题', '设函数$f(x)$在区间$\\lbrack 0, 1 \\rbrack$上连续，并设$\\int_{0}^{1} f(x)dx = A$，求$\\int_{0}^{1} dx \\int_{x}^{1} f(x)f(y)dy$．', '[]', '$\\frac{1}{2}A^{2}$
', '
方法一：交换积分次序，并注意定积分与积分变量无关，得到

$$
I = \\int_{0}^{1} dx \\int_{x}^{1} f(x)f(y)dy = \\int_{0}^{1} dy \\int_{y}^{1} f(x)f(y)dx = \\int_{0}^{1} dx \\int_{y}^{1} f(y)f(x)dy.
$$

从而得到

$$
2I = \\int_{0}^{1} dx \\int_{x}^{1} f(x)f(y)dy + \\int_{0}^{1} dx \\int_{y}^{1} f(x)f(y)dy
$$



$$
= \\int_{0}^{1} dx \\int_{y}^{1} f(x)f(y)dy = \\int_{0}^{1} f(x)dx \\int_{y}^{1} f(y)dy = A^{2}.
$$

所以$I = \\frac{1}{2}A^{2}$。
方法二：用分部积分法。注意$d (\\int_{x}^{1} f(y)dy) = −f(x)dx$，将累次积分$I$写成

$$
I = \\int_{0}^{1} (f(x) \\int_{x}^{1} f(y)dy) dx = − \\int_{0}^{1} \\int_{x}^{1} f(y)dy d (\\int_{x}^{1} f(y)dy)
$$



$$
= −\\frac{1}{2}  \\lbrack (\\int_{x}^{1} f(y)dy)^{2} \\rbrack _{x=0}^{x=1} = \\frac{1}{2}A^{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:26', 9, 'Mogullzr', '2026-01-29 14:09:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '858');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '858');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '858');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (859, '1995年考研数学卷1第13题', '简单', '考研数学1995年卷1真题', '计算曲面积分$\\iint_{Σ} zdS$，其中$Σ$为锥面$z = \\sqrt{x^{2} + y^{2}}$在柱体$x^{2} + y^{2} ≤ 2x$内的部分．', '[]', '$\\frac{32\\sqrt{2}}{9}$
', '首先，将曲面$Σ$投影到$xy$-平面，投影区域$D$由柱体$x^{2} + y^{2} ≤ 2x$决定，即$(x - 1)2 + y^{2} ≤ 1$。对于锥面$z = \\sqrt{x^{2} + y^{2}}$，面积元素$dS = \\sqrt{1 + (\\frac{∂z}{∂x})^{2} + (\\frac{∂z}{∂y})^{2}}dxdy = \\sqrt{2}dxdy$。因此，曲面积分化为：

$$
\\iint_{Σ} z dS = \\iint_{D} \\sqrt{x^{2} + y^{2}} ⋅ \\sqrt{2} dxdy = \\sqrt{2} \\iint_{D} \\sqrt{x^{2} + y^{2}} dxdy.
$$

在极坐标下，$x = r \\cos θ$，$y = r \\sin θ$，$\\sqrt{x^{2} + y^{2}} = r$，$dxdy = rdrdθ$。区域$D$对应$0 ≤ r ≤ 2 \\cos θ$，$−\\frac{π}{2} ≤ θ ≤ \\frac{π}{2}$。于是：

$$
\\iint_{D} \\sqrt{x^{2} + y^{2}} dxdy = \\int_{−π/2}^{π/2} \\int_{0}^{2 \\cos θ} r ⋅ r drdθ = \\int_{−π/2}^{π/2} \\int_{0}^{2 \\cos θ} r^{2} drdθ.
$$

计算内积分：

$$
\\int_{0}^{2 \\cos θ} r^{2} dr =  \\lbrack \\frac{r^{3}}{3} \\rbrack _{0}^{2 \\cos θ} = \\frac{8 \\cos^{3} θ}{3}.
$$

代入外积分：

$$
\\int_{−π/2}^{π/2} \\frac{8 \\cos^{3} θ}{3} dθ = \\frac{8}{3} \\int_{−π/2}^{π/2} \\cos^{3} θ dθ.
$$

由于$\\cos^{3} θ$是偶函数，有：

$$
\\int_{−π/2}^{π/2} \\cos^{3} θ dθ = 2 \\int_{0}^{π/2} \\cos^{3} θ dθ = 2 ⋅ \\frac{2}{3} = \\frac{4}{3}.
$$

因此：

$$
\\iint_{D} \\sqrt{x^{2} + y^{2}} dxdy = \\frac{8}{3} ⋅ \\frac{4}{3} = \\frac{32}{9}.
$$

最终：

$$
\\iint_{Σ} z dS = \\sqrt{2} ⋅ \\frac{32}{9} = \\frac{32\\sqrt{2}}{9}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:26', 9, 'Mogullzr', '2026-01-29 14:09:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '859');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1078', '859');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (860, '1995年考研数学卷1第14题', '简单', '考研数学1995年卷1真题', '将函数$f(x) = x - 1$（$0 ≤ x ≤ 2$）展开成周期为$4$的余弦级数．', '[]', '

$$
f(x) = −\\frac{8}{π^{2}} \\sum_{n=1}^{∞} \\frac{1}{(2n - 1)2} \\cos (\\frac{(2n - 1)πx}{2})
$$

', '将函数$f(x) = x - 1$（$0 ≤ x ≤ 2$）展开成周期为4的余弦级数，需要计算傅里叶余弦系数。周期为4，半周期$L = 2$，余弦级数形式为：

$$
f(x) ∼ \\frac{a_{0}}{2} + \\sum_{n=1}^{∞} a_{n} \\cos (\\frac{nπx}{2})
$$

其中系数公式为：

$$
a_{0} = \\frac{2}{L} \\int_{0}^{L} f(x) dx = \\int_{0}^{2}(x - 1) dx
$$



$$
a_{n} = \\frac{2}{L} \\int_{0}^{L} f(x) \\cos (\\frac{nπx}{L}) dx = \\int_{0}^{2}(x - 1) \\cos (\\frac{nπx}{2}) dx
$$

计算$a_{0}$：

$$
a_{0} = \\int_{0}^{2}(x - 1) dx =  \\lbrack \\frac{x^{2}}{2} - x \\rbrack _{0}^{2} = (\\frac{4}{2} - 2) - 0 = 2 - 2 = 0
$$

计算$a_{n}$：
令$k = \\frac{nπ}{2}$，则：

$$
a_{n} = \\int_{0}^{2}(x - 1) \\cos(kx)dx
$$

使用分部积分法，设$u = x - 1$，$dv = \\cos(kx)dx$，则$du = dx$，$v = \\frac{\\sin(kx)}{k}$：

$$
∫(x - 1) \\cos(kx)dx = \\frac{(x - 1) \\sin(kx)}{k} - ∫ \\frac{\\sin(kx)}{k}dx = \\frac{(x - 1) \\sin(kx)}{k} + \\frac{\\cos(kx)}{k^{2}} + C
$$

代入上下限：

$$
a_{n} =  \\lbrack \\frac{(x - 1) \\sin(kx)}{k} + \\frac{\\cos(kx)}{k^{2}} \\rbrack _{0}^{2} = (\\frac{(2 - 1) \\sin(nπ)}{k} + \\frac{\\cos(nπ)}{k^{2}}) - (\\frac{(0 - 1) \\sin(0)}{k} + \\frac{\\cos(0)}{k^{2}})
$$

由于$\\sin(nπ) = 0$和$\\sin(0) = 0$，化简得：

$$
a_{n} = \\frac{\\cos(nπ)}{k^{2}} - \\frac{1}{k^{2}} = \\frac{\\cos(nπ) - 1}{k^{2}}
$$

代入$k = \\frac{nπ}{2}$，$k^{2} = \\frac{n^{2}π^{2}}{4}$：

$$
a_{n} = \\frac{\\cos(nπ) - 1}{\\frac{n^{2}π^{2}}{4}} = \\frac{4(\\cos(nπ) - 1)}{n^{2}π^{2}}
$$

其中$\\cos(nπ) = (−1)n$，所以：

$$
a_{n} = \\frac{4((−1)n - 1)}{n^{2}π^{2}}
$$

当$n$为偶数时，$(−1)n = 1$，$a_{n} = 0$；当$n$为奇数时，$(−1)n = −1$，$a_{n} = \\frac{4(−1-1)}{n^{2}π^{2}} = −\\frac{8}{n^{2}π^{2}}$。因此，仅奇数项非零，令$n = 2k - 1$（$k = 1, 2, 3, …$），则余弦级数为：

$$
f(x) ∼ \\sum_{k=1}^{∞} −\\frac{8}{(2k - 1)2π^{2}} \\cos (\\frac{(2k - 1)πx}{2}) = −\\frac{8}{π^{2}} \\sum_{n=1}^{∞} \\frac{1}{(2n - 1)2} \\cos (\\frac{(2n - 1)πx}{2})
$$

', 9, 'Mogullzr', '2026-01-29 14:09:26', 9, 'Mogullzr', '2026-01-29 14:09:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '860');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '860');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1050', '860');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (861, '1995年考研数学卷1第15题', '简单', '考研数学1995年卷1真题', '设曲线$L$位于$xOy$平面的第一象限内，$L$上任一点$M$处的切线与$y$轴总相交，交点记为$A$．已知$​\\overline{MA}​ = ​\\overline{OA}​$，且$L$过点$(\\frac{3}{2}, \\frac{3}{2})$，求$L$的方程．', '[]', '$x^{2} + y^{2} = 3x$
', '设曲线$L$上点$M(x, y)$处的切线斜率为$y^{′}$，则切线方程为$Y - y = y^{′}(X - x)$。与$y$轴交于点$A$，令$X = 0$，得$A(0, y - xy^{′})$。
由条件$∣MA∣ = ∣OA∣$，有


$$
x\\sqrt{1 + (y^{′})2} = ∣y - xy^{′}∣.
$$

考虑$y - xy^{′} ≥ 0$的情况，方程化为


$$
x\\sqrt{1 + (y^{′})2} = y - xy^{′},
$$

即


$$
\\sqrt{1 + (y^{′})2} + y^{′} = \\frac{y}{x}.
$$

令$u = \\frac{y}{x}$，则$y^{′} = p$，代入得


$$
\\sqrt{1 + p^{2}} + p = u.
$$

整理得$\\sqrt{1 + p^{2}} = u - p$，平方得


$$
1 + p^{2} = u^{2} - 2up + p^{2},
$$

即


$$
1 = u^{2} - 2up,
$$

所以


$$
p = \\frac{u^{2} - 1}{2u}.
$$

由$y = ux$和$y^{′} = p$，有


$$
\\frac{dy}{dx} = \\frac{du}{dx}x + u = \\frac{u^{2} - 1}{2u},
$$

即


$$
x\\frac{du}{dx} = \\frac{u^{2} - 1}{2u} - u = −\\frac{u^{2} + 1}{2u}.
$$

分离变量得


$$
\\frac{2u}{u^{2} + 1} du = −\\frac{1}{x} dx.
$$

积分得


$$
\\ln(u^{2} + 1) = − \\ln x + C,
$$

即


$$
\\ln \\lbrack x(u^{2} + 1) \\rbrack  = C,
$$

所以


$$
x(u^{2} + 1) = k,
$$

其中$k$为常数。代入$u = \\frac{y}{x}$得


$$
x (\\frac{y^{2}}{x^{2}} + 1) = k,
$$

即


$$
x^{2} + y^{2} = kx.
$$

曲线过点$(\\frac{3}{2}, \\frac{3}{2})$，代入得


$$
(\\frac{3}{2})^{2} + (\\frac{3}{2})^{2} = k ⋅ \\frac{3}{2},
$$

解得$k = 3$。故曲线方程为


$$
x^{2} + y^{2} = 3x.
$$

验证条件：当$y - xy^{′} < 0$时，同样导出相同方程。且该曲线在第一象限满足$∣MA∣ = ∣OA∣$。
', 9, 'Mogullzr', '2026-01-29 14:09:27', 9, 'Mogullzr', '2026-01-29 14:09:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '861');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '861');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '861');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (862, '1995年考研数学卷1第16题', '简单', '考研数学1995年卷1真题', '设函数$Q(x, y)$在$xOy$平面上具有一阶连续偏导数，曲线积分$\\int_{L} 2xydx + Q(x, y)dy$与路径无关，并且对任意$t$恒有
$$
\\int_{(0,0)}^{(t,1)} 2xydx + Q(x, y)dy = \\int_{(0,0)}^{(1,t)} 2xydx + Q(x, y)dy,
$$
求$Q(x, y)$．', '[]', '$Q(x, y) = x^{2} + 2y - 1$
', '由于曲线积分$\\int_{L} 2xy dx + Q(x, y) dy$与路径无关，根据保守场的条件，有$\\frac{∂}{∂y}(2xy) = \\frac{∂}{∂x}Q(x, y)$。计算得$\\frac{∂}{∂y}(2xy) = 2x$，因此$\\frac{∂Q}{∂x} = 2x$。积分得$Q(x, y) = x^{2} + g(y)$，其中$g(y)$是仅关于$y$的函数。
给定对任意$t$有$\\int_{(0,0)}^{(t,1)} 2xy dx + Q(x, y) dy = \\int_{(0,0)}^{(1,t)} 2xy dx + Q(x, y) dy$，由于积分与路径无关，选择沿坐标轴的路径计算。左边积分沿路径从$(0, 0)$到$(t, 0)$再到$(t, 1)$，贡献为$\\int_{0}^{1} Q(t, y) dy$。右边积分沿路径从$(0, 0)$到$(1, 0)$再到$(1, t)$，贡献为$\\int_{0}^{t} Q(1, y) dy$。因此有：

$$
\\int_{0}^{1} Q(t, y) dy = \\int_{0}^{t} Q(1, y) dy.
$$

代入$Q(x, y) = x^{2} + g(y)$，左边为：

$$
\\int_{0}^{1} \\lbrack t^{2} + g(y) \\rbrack  dy = t^{2} + \\int_{0}^{1} g(y) dy = t^{2} + C_{1},
$$

其中$C_{1}$为常数。右边为：

$$
\\int_{0}^{t} \\lbrack 1 + g(y) \\rbrack  dy = \\int_{0}^{t} 1 dy + \\int_{0}^{t} g(y) dy = t + \\int_{0}^{t} g(y) dy.
$$

所以：

$$
t^{2} + C_{1} = t + \\int_{0}^{t} g(y) dy.
$$

两边对$t$求导：

$$
2t = 1 + g(t),
$$

即$g(t) = 2t - 1$，因此$g(y) = 2y - 1$。代入得$Q(x, y) = x^{2} + 2y - 1$。验证满足积分与路径无关条件和给定积分等式，故正确。
', 9, 'Mogullzr', '2026-01-29 14:09:27', 9, 'Mogullzr', '2026-01-29 14:09:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '862');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '862');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (863, '1995年考研数学卷1第17题', '简单', '考研数学1995年卷1真题', '假设函数$f(x)$和$g(x)$在$\\lbrack a, b \\rbrack$上存在二阶导数，并且
$$
g^{′′}(x) \\neq 0,  f(a) = f(b) = g(a) = g(b).
$$
试证：(1) 在开区间$(a, b)$内$g(x) \\neq 0$；(2) 在开区间$(a, b)$内至少存在一点$ξ$，使$\\frac{f(ξ)}{g(ξ)} = \\frac{f^{′′}(ξ)}{g^{′′}(ξ)}$．', '[]', '(1) 在开区间$(a, b)$内$g(x) \\neq 0$。
(2) 在开区间$(a, b)$内至少存在一点$ξ$，使$\\frac{f(ξ)}{g(ξ)} = \\frac{f^{′′}(ξ)}{g^{′′}(ξ)}$。
', '
(Ⅰ)反证法：假设$∃c ∈ (a, b)$，使$g(c) = 0$。则由罗尔定理，$∃ξ_{1} ∈ (a, c), ξ_{2} ∈ (c, b)$，使$g^{′}(ξ_{1}) = g^{′}(ξ_{2}) = 0$；从而由罗尔定理，$∃ξ ∈ (ξ_{1}, ξ_{2}) ⊂ (a, b)$，使得$g^{′′}(ξ) = 0$。这与$g^{′′}(x) \\neq 0$矛盾。
(Ⅱ)令$φ(x) = f(x)g^{′}(x) - f^{′}(x)g(x)$，则$φ(x)$在$\\lbrack a, b \\rbrack$可导，$φ(a) = φ(b) = 0$。由罗尔定理，$∃ξ ∈ (a, b)$，使$φ^{′}(ξ) = 0$。即有

$$
f(ξ)g^{′′}(ξ) - f^{′′}(ξ)g(ξ) = 0 ⇒ \\frac{f(ξ)}{g(ξ)} = \\frac{f^{′′}(ξ)}{g^{′′}(ξ)}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:27', 9, 'Mogullzr', '2026-01-29 14:09:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '863');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '863');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '863');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (864, '1995年考研数学卷1第18题', '简单', '考研数学1995年卷1真题', '设三阶实对称矩阵$A$的特征值为$λ_{1} = −1$,$λ_{2} = λ_{3} = 1$，对应于$λ_{1}$的特征向量为$ξ_{1} = (0, 1, 1)T$，求$A$．', '[]', '

$$
A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & −1 \\\\
0 & −1 & 0 \\\\
\\end{array} \\right)
$$

', '已知三阶实对称矩阵$A$的特征值为$λ_{1} = −1$，$λ_{2} = λ_{3} = 1$，对应$λ_{1}$的特征向量为$ξ_{1} = (0, 1, 1)T$。由于$A$是实对称矩阵，特征值对应的特征向量相互正交。对应$λ_{2} = λ_{3} = 1$的特征向量与$ξ_{1}$正交，即满足$y + z = 0$。选取两个线性无关且正交的特征向量：$v_{1} = (1, 0, 0)T$和$v_{2} = (0, 1, −1)T$。
将特征向量单位化：
$u_{1} = \\frac{ξ_{1}}{∥ξ_{1}∥} = (0, \\frac{1}{\\sqrt{2}}, \\frac{1}{\\sqrt{2}})^{T}$$u_{2} = v_{1} = (1, 0, 0)T$$u_{3} = \\frac{v_{2}}{∥v_{2}∥} = (0, \\frac{1}{\\sqrt{2}}, −\\frac{1}{\\sqrt{2}})^{T}$
构造正交矩阵$Q = \\left( \\begin{array}{ccc}
0 & 1 & 0 \\\\
\\frac{1}{\\sqrt{2}} & 0 & \\frac{1}{\\sqrt{2}} \\\\
\\frac{1}{\\sqrt{2}} & 0 & −\\frac{1}{\\sqrt{2}} \\\\
\\end{array} \\right)$，对角矩阵$Λ = \\left( \\begin{array}{ccc}
−1 & 0 & 0 \\\\
0 & 1 & 0 \\\\
0 & 0 & 1 \\\\
\\end{array} \\right)$。则$A = QΛQ^{T}$。
计算$Q^{T} = \\left( \\begin{array}{ccc}
0 & \\frac{1}{\\sqrt{2}} & \\frac{1}{\\sqrt{2}} \\\\
1 & 0 & 0 \\\\
0 & \\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{2}} \\\\
\\end{array} \\right)$，然后计算$ΛQ^{T} = \\left( \\begin{array}{ccc}
0 & −\\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{2}} \\\\
1 & 0 & 0 \\\\
0 & \\frac{1}{\\sqrt{2}} & −\\frac{1}{\\sqrt{2}} \\\\
\\end{array} \\right)$，最后计算$A = Q(ΛQ^{T}) = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 0 & −1 \\\\
0 & −1 & 0 \\\\
\\end{array} \\right)$。
验证特征值和特征向量符合条件，故$A$为所求矩阵。
', 9, 'Mogullzr', '2026-01-29 14:09:27', 9, 'Mogullzr', '2026-01-29 14:09:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '864');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '864');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (865, '1995年考研数学卷1第19题', '简单', '考研数学1995年卷1真题', '设$A$是$n$阶矩阵，满足$AA^{T} = E$($E$是$n$阶单位阵，$A^{T}$是$A$的转置矩阵),$∣A∣ < 0$，求$∣A + E∣$．', '[]', '$0$
', '已知$A$是$n$阶矩阵，满足$AA^{T} = E$，且$∣A∣ < 0$。由于$AA^{T} = E$，$A$是正交矩阵，正交矩阵的行列式为$±1$，因此$∣A∣ = −1$。
计算$∣A + E∣$：

$$
∣A + E∣ = ∣A + AA^{T}∣ = ∣A(E + A^{T})∣ = ∣A∣ ⋅ ∣E + A^{T}∣.
$$

由于行列式在转置下不变，有$∣E + A^{T}∣ = ∣(E + A^{T})T∣ = ∣E + A∣ = ∣A + E∣$，代入上式：

$$
∣A + E∣ = ∣A∣ ⋅ ∣A + E∣.
$$

即：

$$
∣A + E∣ = (−1) ⋅ ∣A + E∣,
$$

整理得：

$$
∣A + E∣ + ∣A + E∣ = 0  ⇒  2∣A + E∣ = 0,
$$

因此$∣A + E∣ = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:28', 9, 'Mogullzr', '2026-01-29 14:09:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '865');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '865');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '865');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '865');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (866, '1995年考研数学卷1第20题', '简单', '考研数学1995年卷1真题', '设$X$表示10次独立重复射击命中目标的次数，每次射中目标的概率为0.4，则$X^{2}$的数学期望$E(X^{2}) =$______．', '[]', '$18.4$
', '
设$X$表示 10 次独立重复射击命中目标的次数，则$X ∼ Binomial(n = 10, p = 0.4)$。
二项分布的数学期望为


$$
E(X) = np = 10 × 0.4 = 4,
$$

方差为


$$
Var(X) = np(1 - p) = 10 × 0.4 × 0.6 = 2.4.
$$

由方差公式


$$
Var(X) = E(X^{2}) -  \\lbrack E(X) \\rbrack 2,
$$

可得


$$
E(X^{2}) = Var(X) +  \\lbrack E(X) \\rbrack 2 = 2.4 + 4^{2} = 2.4 + 16 = 18.4.
$$

因此，


$$
E(X^{2}) = 18.4.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:28', 9, 'Mogullzr', '2026-01-29 14:09:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '866');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '866');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (867, '1995年考研数学卷1第21题', '简单', '考研数学1995年卷1真题', '设$X$和$Y$为两个随机变量，且
$$
P \\{X ≥ 0, Y ≥ 0\\} = \\frac{3}{7},  P(X ≥ 0) = P(Y ≥ 0) = \\frac{4}{7},
$$
则$P \\{\\max(X, Y) ≥ 0\\} =$______．', '[]', '$\\frac{5}{7}$
', '需要求$P\\{\\max(X, Y) ≥ 0\\}$，即至少有一个变量大于等于零的概率，等价于$P\\{X ≥ 0 ∪ Y ≥ 0\\}$。
根据概率的加法公式：


$$
P\\{X ≥ 0 ∪ Y ≥ 0\\} = P\\{X ≥ 0\\} + P\\{Y ≥ 0\\} - P\\{X ≥ 0, Y ≥ 0\\}
$$

代入已知条件：


$$
P\\{X ≥ 0\\} = \\frac{4}{7},  P\\{Y ≥ 0\\} = \\frac{4}{7},  P\\{X ≥ 0, Y ≥ 0\\} = \\frac{3}{7}
$$

计算得：


$$
P\\{\\max(X, Y) ≥ 0\\} = \\frac{4}{7} + \\frac{4}{7} - \\frac{3}{7} = \\frac{5}{7}
$$

或者，考虑补集：$\\max(X, Y) < 0$等价于$X < 0$且$Y < 0$。
先求$P\\{X < 0, Y < 0\\}$：
由$P\\{X ≥ 0\\} = \\frac{4}{7}$，得$P\\{X < 0\\} = \\frac{3}{7}$，同理$P\\{Y < 0\\} = \\frac{3}{7}$。
通过概率分解：


$$
P\\{X ≥ 0\\} = P\\{X ≥ 0, Y ≥ 0\\} + P\\{X ≥ 0, Y < 0\\} ⇒ P\\{X ≥ 0, Y < 0\\} = \\frac{4}{7} - \\frac{3}{7} = \\frac{1}{7}
$$

同理，


$$
P\\{Y ≥ 0\\} = P\\{X ≥ 0, Y ≥ 0\\} + P\\{X < 0, Y ≥ 0\\} ⇒ P\\{X < 0, Y ≥ 0\\} = \\frac{4}{7} - \\frac{3}{7} = \\frac{1}{7}
$$

所有概率之和为1：


$$
P\\{X ≥ 0, Y ≥ 0\\} + P\\{X ≥ 0, Y < 0\\} + P\\{X < 0, Y ≥ 0\\} + P\\{X < 0, Y < 0\\} = 1
$$

代入得：


$$
\\frac{3}{7} + \\frac{1}{7} + \\frac{1}{7} + P\\{X < 0, Y < 0\\} = 1 ⇒ P\\{X < 0, Y < 0\\} = \\frac{2}{7}
$$

因此，


$$
P\\{\\max(X, Y) ≥ 0\\} = 1 - P\\{X < 0, Y < 0\\} = 1 - \\frac{2}{7} = \\frac{5}{7}
$$

两种方法均得相同结果。
', 9, 'Mogullzr', '2026-01-29 14:09:28', 9, 'Mogullzr', '2026-01-29 14:09:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '867');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '867');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '867');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (868, '1995年考研数学卷1第22题', '简单', '考研数学1995年卷1真题', '设随机变量$X$的概率密度为$f_{X}(x) = \\begin{cases} e^{−x} & x ≥ 0 \\\\ 0 & x < 0 \\end{cases}$求随机变量$Y = e^{X}$的概率密度$f_{Y}(y)$．', '[]', '

$$
f_{Y}(y) = \\begin{cases} \\frac{1}{y^{2}} & y > 1 \\\\ 0 & y ≤ 1. \\end{cases}
$$

', '
方法1：先求$Y$的分布函数$F_{Y}(y)$。
当$y ≤ 1$时，$F_{Y}(y) = 0$；当$y > 1$时，

$$
F_{Y}(y) = P\\{Y ≤ y\\} = P(e^{X} ≤ y) = P\\{X ≤ \\ln y\\}
$$


$$
= \\int_{0}^{\\ln y} e^{−x}dx = −e^{−x}​_{0}^{\\ln y} = 1 - \\frac{1}{y}.
$$

对分布函数求导，可得

$$
f_{Y}(y) = F_{Y}^{′}(y) = \\begin{cases} \\frac{1}{y^{2}} & y > 1 \\\\ 0 & y ≤ 1. \\end{cases}
$$


方法2：用单调函数公式直接求$Y$的概率密度。
由于$y = e^{x}$在$(0, +∞)$内单调，其反函数$x = h(y) = \\ln y$在$(1, +∞)$内可导且导数为$x_{y}^{′} = \\frac{1}{y} \\neq 0$，则所求概率密度函数为

$$
f_{Y}(y) = \\begin{cases} ∣h^{′}(y)∣ ⋅ f_{X}(h(y)) & y > 1 \\\\ 0 & y ≤ 1. \\end{cases} = \\begin{cases} \\frac{1}{y} ⋅ e^{− \\ln y} & y > 1 \\\\ 0 & y ≤ 1. \\end{cases} = \\begin{cases} \\frac{1}{y^{2}} & y > 1 \\\\ 0 & y ≤ 1. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:28', 9, 'Mogullzr', '2026-01-29 14:09:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '868');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '868');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (869, '1995年考研数学卷2第1题', '', '考研数学1995年卷2真题', '/problems/other/847', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (870, '1995年考研数学卷2第2题', '', '考研数学1995年卷2真题', '/problems/other/848', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (871, '1995年考研数学卷2第3题', '', '考研数学1995年卷2真题', '/problems/other/849', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (872, '1995年考研数学卷2第4题', '', '考研数学1995年卷2真题', '/problems/other/850', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (873, '1995年考研数学卷2第5题', '', '考研数学1995年卷2真题', '/problems/other/851', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (874, '1995年考研数学卷2第6题', '', '考研数学1995年卷2真题', '/problems/other/852', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (875, '1995年考研数学卷2第7题', '', '考研数学1995年卷2真题', '/problems/other/853', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (876, '1995年考研数学卷2第8题', '', '考研数学1995年卷2真题', '/problems/other/854', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (877, '1995年考研数学卷2第9题', '', '考研数学1995年卷2真题', '/problems/other/855', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (878, '1995年考研数学卷2第10题', '', '考研数学1995年卷2真题', '/problems/other/856', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (879, '1995年考研数学卷2第11题', '', '考研数学1995年卷2真题', '/problems/other/857', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (880, '1995年考研数学卷2第12题', '简单', '考研数学1995年卷2真题', '求曲面$z = \\frac{x^{2}}{2} + y^{2}$平行于平面$2x + 2y - z = 0$的切平面方程．', '[]', '$2x + 2y - z - 3 = 0$
', '曲面方程为$z = \\frac{x^{2}}{2} + y^{2}$，设$f(x, y) = \\frac{x^{2}}{2} + y^{2}$，则曲面的切平面法向量为$(f_{x}, f_{y}, −1) = (x, 2y, −1)$。
给定平面$2x + 2y - z = 0$的法向量为$(2, 2, −1)$。
由于切平面平行于给定平面，法向量平行，即存在常数$k$使得$(x, 2y, −1) = k(2, 2, −1)$。
由$−1 = −k$得$k = 1$，代入得$x = 2 × 1 = 2$，$2y = 2 × 1$得$y = 1$。
切点坐标为$(2, 1, z)$，代入曲面方程得$z = \\frac{2^{2}}{2} + 1^{2} = 2 + 1 = 3$，即切点为$(2, 1, 3)$。
切平面法向量为$(2, 2, −1)$，利用点法式得方程：
$2(x - 2) + 2(y - 1) - (z - 3) = 0$，
化简得$2x + 2y - z - 3 = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '880');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '880');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '880');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (881, '1995年考研数学卷2第13题', '简单', '考研数学1995年卷2真题', '计算二重积分$\\int_{D} x^{2}ydxdy$，其中$D$是由双曲线$x^{2} - y^{2} = 1$及直线$y = 0$,$y = 1$所围成的平面区域．', '[]', '

$$
\\frac{2}{15}(4\\sqrt{2} - 1)
$$

', '积分区域$D$由双曲线$x^{2} - y^{2} = 1$及直线$y = 0$、$y = 1$围成。对于$y ∈  \\lbrack 0, 1 \\rbrack$，$x$的取值范围为$−\\sqrt{1 + y^{2}}$到$\\sqrt{1 + y^{2}}$。因此，二重积分可化为：

$$
\\int_{0}^{1} \\int_{−\\sqrt{1+y^{2}}}^{\\sqrt{1+y^{2}}} x^{2}ydxdy
$$

由于被积函数$x^{2}y$关于$x$是偶函数，且积分区间对称，可简化为：

$$
\\int_{0}^{1} 2 \\int_{0}^{\\sqrt{1+y^{2}}} x^{2}ydxdy = \\frac{2}{3} \\int_{0}^{1} y(1 + y^{2})3/2dy
$$

令$u = 1 + y^{2}$，则$du = 2ydy$，即$ydy = \\frac{du}{2}$。当$y = 0$时，$u = 1$；当$y = 1$时，$u = 2$。代入得：

$$
\\frac{2}{3} \\int_{1}^{2} u^{3/2} ⋅ \\frac{du}{2} = \\frac{1}{3} \\int_{1}^{2} u^{3/2}du
$$

计算积分：

$$
∫ u^{3/2}du = \\frac{2}{5}u^{5/2}
$$

所以：

$$
\\frac{1}{3} ⋅ \\frac{2}{5}  \\lbrack u^{5/2} \\rbrack _{1}^{2} = \\frac{2}{15} (2^{5/2} - 1) = \\frac{2}{15}(4\\sqrt{2} - 1)
$$

因此，二重积分的值为$\\frac{2}{15}(4\\sqrt{2} - 1)$。
', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '881');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '881');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '881');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (882, '1995年考研数学卷2第14题', '', '考研数学1995年卷2真题', '/problems/other/859', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (883, '1995年考研数学卷2第15题', '', '考研数学1995年卷2真题', '/problems/other/860', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (884, '1995年考研数学卷2第16题', '', '考研数学1995年卷2真题', '/problems/other/861', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (885, '1995年考研数学卷2第17题', '', '考研数学1995年卷2真题', '/problems/other/862', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (886, '1995年考研数学卷2第18题', '', '考研数学1995年卷2真题', '/problems/other/863', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (887, '1995年考研数学卷2第19题', '简单', '考研数学1995年卷2真题', '设$\\begin{cases} x_{1} + 3x_{2} + 2x_{3} + x_{4} = 1 \\\\ x_{2} + ax_{3} - ax_{4} = −1 \\\\ x_{1} + 2x_{2} + 3x_{4} = 3 \\end{cases}$问$a$为何值时方程组有解，并在有解时求出方程组的通解．', '[]', '当$a = 2$时，方程组无解；当$a \\neq 2$时，方程组有解，通解为：

$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
x_{4} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
\\frac{7a-10}{a-2} \\\\
\\frac{2-2a}{a-2} \\\\
\\frac{1}{a-2} \\\\
0 \\\\
\\end{array} \\right) + t \\left( \\begin{array}{c}
−3 \\\\
0 \\\\
1 \\\\
1 \\\\
\\end{array} \\right) ,  t ∈ R.
$$

', '方程组的增广矩阵为：

$$
\\left( \\begin{array}{cccc|c}
1 & 3 & 2 & 1 & 1 \\\\
0 & 1 & a & −a & −1 \\\\
1 & 2 & 0 & 3 & 3 \\\\
\\end{array} \\right)
$$

通过行变换：
$R_{3} - R_{1}$得：$\\left( \\begin{array}{cccc|c}
1 & 3 & 2 & 1 & 1 \\\\
0 & 1 & a & −a & −1 \\\\
0 & −1 & −2 & 2 & 2 \\\\
\\end{array} \\right)$$R_{3} + R_{2}$得：$\\left( \\begin{array}{cccc|c}
1 & 3 & 2 & 1 & 1 \\\\
0 & 1 & a & −a & −1 \\\\
0 & 0 & a - 2 & 2 - a & 1 \\\\
\\end{array} \\right)$当$a = 2$时，第三行为$0 = 1$，矛盾，方程组无解。当$a \\neq 2$时，方程组有解。继续行变换：第三行除以$a - 2$得：$\\left( \\begin{array}{cccc|c}
1 & 3 & 2 & 1 & 1 \\\\
0 & 1 & a & −a & −1 \\\\
0 & 0 & 1 & −1 & \\frac{1}{a-2} \\\\
\\end{array} \\right)$$R_{2} - aR_{3}$得：$\\left( \\begin{array}{cccc|c}
1 & 3 & 2 & 1 & 1 \\\\
0 & 1 & 0 & 0 & −1 - \\frac{a}{a-2} \\\\
0 & 0 & 1 & −1 & \\frac{1}{a-2} \\\\
\\end{array} \\right)$$R_{1} - 2R_{3}$得：$\\left( \\begin{array}{cccc|c}
1 & 3 & 0 & 3 & 1 - \\frac{2}{a-2} \\\\
0 & 1 & 0 & 0 & −1 - \\frac{a}{a-2} \\\\
0 & 0 & 1 & −1 & \\frac{1}{a-2} \\\\
\\end{array} \\right)$$R_{1} - 3R_{2}$得：$\\left( \\begin{array}{cccc|c}
1 & 0 & 0 & 3 & 1 - \\frac{2}{a-2} + 3 + \\frac{3a}{a-2} \\\\
0 & 1 & 0 & 0 & −1 - \\frac{a}{a-2} \\\\
0 & 0 & 1 & −1 & \\frac{1}{a-2} \\\\
\\end{array} \\right)$简化常数项：$x_{2} = −1 - \\frac{a}{a-2} = \\frac{2-2a}{a-2}$$x_{1} + 3x_{4} = \\frac{7a-10}{a-2}$，即$x_{1} = \\frac{7a-10}{a-2} - 3x_{4}$$x_{3} - x_{4} = \\frac{1}{a-2}$，即$x_{3} = \\frac{1}{a-2} + x_{4}$令$x_{4} = t$，得通解如上。
', 9, 'Mogullzr', '2026-01-29 14:09:30', 9, 'Mogullzr', '2026-01-29 14:09:30', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '887');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '887');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '887');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (888, '1995年考研数学卷2第20题', '', '考研数学1995年卷2真题', '/problems/other/864', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:31', 9, 'Mogullzr', '2026-01-29 14:09:31', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (889, '1995年考研数学卷2第21题', '', '考研数学1995年卷2真题', '/problems/other/865', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:31', 9, 'Mogullzr', '2026-01-29 14:09:31', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (890, '1995年考研数学卷3第1题', '简单', '考研数学1995年卷3真题', '设$y = \\cos(x^{2}) \\sin^{2} \\frac{1}{x}$，则$y^{′} =$______．', '[]', '

$$
y^{′} = −2x \\sin(x^{2}) \\sin^{2} (\\frac{1}{x}) - \\frac{1}{x^{2}} \\cos(x^{2}) \\sin (\\frac{2}{x})
$$

', '
设$u = \\cos(x^{2})$和$v = \\sin^{2} (\\frac{1}{x})$，则$y = u ⋅ v$。
由乘积法则，


$$
y^{′} = u^{′}v + uv^{′}.
$$

第一步：求$u^{′}$
$u = \\cos(x^{2})$，使用链式法则。令$w = x^{2}$，则$u = \\cos(w)$，


$$
u^{′} = − \\sin(w) ⋅ w^{′} = − \\sin(x^{2}) ⋅ 2x = −2x \\sin(x^{2}).
$$

第二步：求$v^{′}$
$v = \\sin^{2} (\\frac{1}{x}) =  \\lbrack \\sin (\\frac{1}{x}) \\rbrack ^{2}$。
令$z = \\sin (\\frac{1}{x})$，则$v = z^{2}$，


$$
v^{′} = 2z ⋅ z^{′}.
$$

求$z^{′}$
令$t = \\frac{1}{x} = x^{−1}$，则$z = \\sin(t)$，


$$
z^{′} = \\cos(t) ⋅ t^{′} = \\cos (\\frac{1}{x}) ⋅ (−x^{−2}) = −\\frac{1}{x^{2}} \\cos (\\frac{1}{x}) .
$$

于是


$$
v^{′} = 2 \\sin (\\frac{1}{x}) ⋅ (−\\frac{1}{x^{2}} \\cos (\\frac{1}{x})) = −\\frac{2}{x^{2}} \\sin (\\frac{1}{x}) \\cos (\\frac{1}{x}) .
$$

利用三角恒等式


$$
\\sin (\\frac{1}{x}) \\cos (\\frac{1}{x}) = \\frac{1}{2} \\sin (\\frac{2}{x}) ,
$$

得


$$
v^{′} = −\\frac{2}{x^{2}} ⋅ \\frac{1}{2} \\sin (\\frac{2}{x}) = −\\frac{1}{x^{2}} \\sin (\\frac{2}{x}) .
$$

第三步：代入乘积法则


$$
\\begin{array}{cc}
y^{′} & = u^{′}v + uv^{′} \\\\
 & = (−2x \\sin(x^{2})) ⋅ \\sin^{2} (\\frac{1}{x})  +  \\cos(x^{2}) ⋅ (−\\frac{1}{x^{2}} \\sin (\\frac{2}{x})) \\\\
 & = −2x \\sin(x^{2}) \\sin^{2} (\\frac{1}{x})  -  \\frac{1}{x^{2}} \\cos(x^{2}) \\sin (\\frac{2}{x}) . \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:33', 9, 'Mogullzr', '2026-01-29 14:09:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '890');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '890');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '890');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (891, '1995年考研数学卷3第2题', '简单', '考研数学1995年卷3真题', '微分方程$y^{′′} + y = −2x$的通解为______．', '[]', '
$y = C_{1} \\cos x + C_{2} \\sin x - 2x$，其中$C_{1}$和$C_{2}$为任意常数。
', '
该微分方程为二阶线性非齐次方程，通解由齐次解和特解组成。
齐次方程$y^{′′} + y = 0$的特征方程为$r^{2} + 1 = 0$，解得$r = ±i$，故齐次解为$y_{h} = C_{1} \\cos x + C_{2} \\sin x$。
非齐次项为$−2x$，设特解形式为$y_{p} = Ax + B$，代入原方程得$y_{p}^{′′} = 0$，有$0 + (Ax + B) = −2x$，比较系数得$A = −2$，$B = 0$，即特解$y_{p} = −2x$。
因此，通解为$y = y_{h} + y_{p} = C_{1} \\cos x + C_{2} \\sin x - 2x$。
', 9, 'Mogullzr', '2026-01-29 14:09:33', 9, 'Mogullzr', '2026-01-29 14:09:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '891');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '891');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '891');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (892, '1995年考研数学卷3第3题', '简单', '考研数学1995年卷3真题', '曲线$\\begin{cases} x = 1 + t^{2} \\\\ y = t^{3} \\end{cases}$在$t = −2$处的切线方程为 ______．', '[]', '
$y = −3x + 7$
', '
曲线由参数方程$x = 1 + t^{2}$,$y = t^{3}$给出。
在$t = −2$时，点坐标为


$$
x = 1 + (−2)2 = 5,  y = (−2)3 = −8,
$$

即点$(5, −8)$。
求切线斜率：


$$
\\frac{dx}{dt} = 2t,  \\frac{dy}{dt} = 3t^{2},
$$

所以


$$
\\frac{dy}{dx} = \\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}} = \\frac{3t^{2}}{2t} = \\frac{3t}{2}.
$$

在$t = −2$时，斜率


$$
m = \\frac{3 × (−2)}{2} = −3.
$$

切线方程使用点斜式：


$$
y - (−8) = −3(x - 5),
$$

化简得


$$
y + 8 = −3x + 15,
$$

即


$$
y = −3x + 7.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:33', 9, 'Mogullzr', '2026-01-29 14:09:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '892');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '892');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '892');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (893, '1995年考研数学卷3第4题', '简单', '考研数学1995年卷3真题', '
$$
\\lim_{n→∞} (\\frac{1}{n^{2} + n + 1} + \\frac{2}{n^{2} + n + 2} + ⋯ + \\frac{n}{n^{2} + n + n}) =
$$
', '[]', '

$$
\\frac{1}{2}
$$

', '考虑和式$S_{n} = \\sum_{k=1}^{n} \\frac{k}{n^{2}+n+k}$。通过夹逼定理确定极限。
首先，注意到对于每个$k$（从 1 到$n$），有不等式：


$$
\\frac{k}{n^{2} + n + n} ≤ \\frac{k}{n^{2} + n + k} ≤ \\frac{k}{n^{2} + n + 1}
$$

即：


$$
\\frac{k}{n^{2} + 2n} ≤ \\frac{k}{n^{2} + n + k} ≤ \\frac{k}{n^{2} + n + 1}
$$

对$k$从 1 到$n$求和，得：


$$
\\sum_{k=1}^{n} \\frac{k}{n^{2} + 2n} ≤ S_{n} ≤ \\sum_{k=1}^{n} \\frac{k}{n^{2} + n + 1}
$$

计算左端和式：


$$
\\sum_{k=1}^{n} \\frac{k}{n^{2} + 2n} = \\frac{1}{n^{2} + 2n} \\sum_{k=1}^{n} k = \\frac{1}{n^{2} + 2n} ⋅ \\frac{n(n + 1)}{2} = \\frac{n(n + 1)}{2(n^{2} + 2n)} = \\frac{n^{2} + n}{2n^{2} + 4n}
$$

当$n → ∞$时，


$$
\\lim_{n→∞} \\frac{n^{2} + n}{2n^{2} + 4n} = \\lim_{n→∞} \\frac{1 + \\frac{1}{n}}{2 + \\frac{4}{n}} = \\frac{1}{2}
$$

计算右端和式：


$$
\\sum_{k=1}^{n} \\frac{k}{n^{2} + n + 1} = \\frac{1}{n^{2} + n + 1} \\sum_{k=1}^{n} k = \\frac{n(n + 1)}{2(n^{2} + n + 1)} = \\frac{n^{2} + n}{2n^{2} + 2n + 2}
$$

当$n → ∞$时，


$$
\\lim_{n→∞} \\frac{n^{2} + n}{2n^{2} + 2n + 2} = \\lim_{n→∞} \\frac{1 + \\frac{1}{n}}{2 + \\frac{2}{n} + \\frac{2}{n^{2}}} = \\frac{1}{2}
$$

由夹逼定理，得


$$
\\lim_{n→∞} S_{n} = \\frac{1}{2}
$$

因此，原极限为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:33', 9, 'Mogullzr', '2026-01-29 14:09:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '893');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '893');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '893');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (894, '1995年考研数学卷3第5题', '简单', '考研数学1995年卷3真题', '由曲线$y = x^{2}e^{−x^{2}}$的渐近线方程为 ______．', '[]', '
$y = 0$
', '
考虑曲线$y = x^{2}e^{−x^{2}}$。
首先，求水平渐近线：计算当$x → ∞$时的极限，


$$
\\lim_{x→∞} x^{2}e^{−x^{2}} = \\lim_{x→∞} \\frac{x^{2}}{e^{x^{2}}} = 0,
$$

因为指数函数增长更快。同理，当$x → −∞$时，


$$
\\lim_{x→−∞} x^{2}e^{−x^{2}} = 0.
$$

因此，水平渐近线为$y = 0$。
其次，检查垂直渐近线：函数$y = x^{2}e^{−x^{2}}$对所有实数$x$有定义，且无界点处极限有限，故无垂直渐近线。
最后，考虑斜渐近线：由于已有水平渐近线，且$\\lim_{x→±∞} \\frac{y}{x} = \\lim_{x→±∞} xe^{−x^{2}} = 0$，故无斜渐近线。
综上，曲线仅有水平渐近线$y = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:33', 9, 'Mogullzr', '2026-01-29 14:09:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '894');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '894');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '894');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (895, '1995年考研数学卷3第6题', '简单', '考研数学1995年卷3真题', '设$f(x)$和$ϕ(x)$在$(−∞, +∞)$上有定义，$f(x)$为连续函数，
且$f(x) \\neq 0$，$ϕ(x)$有间断点，则', '[''$ϕ \\\\lbrack f(x) \\\\rbrack$必有间断点．'', ''$\\\\lbrack ϕ(x) \\\\rbrack 2$必有间断点．'', ''$f \\\\lbrack ϕ(x) \\\\rbrack$必有间断点．'', ''$\\\\frac{ϕ(x)}{f(x)}$必有间断点．'']', "['D']", '
设$φ(x)$有间断点，$f(x)$连续且$f(x) \\neq 0$。考虑选项 D：$\\frac{φ(x)}{f(x)}$。
由于$f(x)$连续且不为零，$\\frac{1}{f(x)}$也连续。设$x = a$是$φ(x)$的一个间断点，则根据间断点的类型分析：若$φ(x)$在$a$处极限不存在，则$\\frac{φ(x)}{f(x)}$在$a$处极限也不存在，因为$f(x)$在$a$处极限存在且不为零；若$φ(x)$在$a$处极限存在但不等于$φ(a)$，则$\\frac{φ(x)}{f(x)}$在$a$处极限为$\\frac{L}{f(a)} \\neq \\frac{φ(a)}{f(a)}$，具有可去间断点；若$φ(x)$在$a$处有跳跃间断点，则左右极限不相等，乘以$\\frac{1}{f(a)}$后仍不相等，保持跳跃间断点。因此，$\\frac{φ(x)}{f(x)}$必有间断点。对于选项 A，$φ \\lbrack f(x) \\rbrack$不一定有间断点，例如$φ(x)$在$x = 0$处间断，但$f(x)$恒大于 0 且$φ$在$x > 0$时连续，则$φ \\lbrack f(x) \\rbrack$连续。
对于选项 B，$\\lbrack φ(x) \\rbrack 2$不一定有间断点，例如$φ(x)$在$x = 0$处有跳跃间断点且$φ(x)$值分别为 1 和 -1，则$\\lbrack φ(x) \\rbrack 2$恒为 1，连续。
对于选项 C，$f \\lbrack φ(x) \\rbrack$不一定有间断点，例如$f(x)$为常数函数，则$f \\lbrack φ(x) \\rbrack$常数，连续。故只有 D 选项必有间断点。', 9, 'Mogullzr', '2026-01-29 14:09:34', 9, 'Mogullzr', '2026-01-29 14:09:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '895');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '895');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '895');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (896, '1995年考研数学卷3第7题', '简单', '考研数学1995年卷3真题', '曲线$y = x(x - 1)(2 - x)$与$x$轴所围图形的面积可表示为', '[''$− \\\\int_{0}^{2} x(x - 1)(2 - x)dx$．'', ''$\\\\int_{0}^{1} x(x - 1)(2 - x)dx - \\\\int_{1}^{2} x(x - 1)(2 - x)dx$．'', ''$− \\\\int_{0}^{1} x(x - 1)(2 - x)dx + \\\\int_{1}^{2} x(x - 1)(2 - x)dx$．'', ''$\\\\int_{0}^{2} x(x - 1)(2 - x)dx$．'']', "['C']", '曲线$y = x(x - 1)(2 - x)$与$x$轴的交点为$x = 0$、$x = 1$、$x = 2$。在区间$\\lbrack 0, 1 \\rbrack$上，函数值为负；在区间$\\lbrack 1, 2 \\rbrack$上，函数值为正。因此，所求面积应为函数绝对值在$\\lbrack 0, 2 \\rbrack$上的积分，即：
$$
\\begin{array}{cc}
A & = \\int_{0}^{1} ∣y∣ dx + \\int_{1}^{2} ∣y∣ dx \\\\
 & = \\int_{0}^{1} −x(x - 1)(2 - x) dx + \\int_{1}^{2} x(x - 1)(2 - x) dx \\\\
\\end{array}
$$
这与选项 C 一致。选项 A 和 D 的积分值均为零，无法表示正面积；选项 B 的值为负，不符合面积定义。故正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:09:34', 9, 'Mogullzr', '2026-01-29 14:09:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '896');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '896');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '896');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (897, '1995年考研数学卷3第8题', '简单', '考研数学1995年卷3真题', '设$f(x)$在$(−∞, +∞)$内可导，且对任意$x_{1}$,$x_{2}$，
当$x_{1} > x_{2}$时都有$f(x_{1}) > f(x_{2})$，则', '[''对任意$x$，$f^{′}(x) > 0$．'', ''对任意$x$，$f^{′}(−x) ≤ 0$．'', ''函数$f(−x)$单调增加．'', ''函数$−f(−x)$单调增加．'']', "['D']", '
由于$f(x)$在$(−∞, +∞)$内可导，且对任意$x_{1} > x_{2}$有

$$
f(x_{1}) > f(x_{2}),
$$
即$f(x)$严格单调增加。考虑选项 D：
令$h(x) = −f(−x)$。当$x_{1} > x_{2}$时，有

$$
−x_{1} < −x_{2}.
$$
由$f$单调增加可得

$$
f(−x_{1}) < f(−x_{2}),
$$
因此

$$
−f(−x_{1}) > −f(−x_{2}),
$$
即$h(x_{1}) > h(x_{2})$，所以$h(x)$单调增加。选项 A 错误：
$f^{′}(x)$可能等于零。例如$f(x) = x^{3}$在$x = 0$处导数为 0，但函数仍严格单调增加。选项 B 错误：
由单调性可知$f^{′}(u) ≥ 0$对所有$u$成立，因此$f^{′}(−x) ≥ 0$。选项 C 错误：
当$x$增加时，$−x$减少，故$f(−x)$单调减少。', 9, 'Mogullzr', '2026-01-29 14:09:34', 9, 'Mogullzr', '2026-01-29 14:09:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '897');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '897');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '897');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (898, '1995年考研数学卷3第9题', '', '考研数学1995年卷3真题', '/problems/other/853', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:34', 9, 'Mogullzr', '2026-01-29 14:09:34', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (899, '1995年考研数学卷3第10题', '简单', '考研数学1995年卷3真题', '设$f(x)$可导，$F(x) = f(x)(1 + ∣ \\sin x∣)$，若$F(x)$在$x = 0$处可导，则必有', '[''$f(0) = 0$．'', ''$f^{′}(0) = 0$．'', ''$f(0) + f^{′}(0) = 0$．'', ''$f(0) - f^{′}(0) = 0$．'']', "['A']", '由于$F(x) = f(x)(1 + ∣ \\sin x∣)$在$x = 0$处可导，需考虑左导数和右导数。计算右导数：
当$h > 0$时，$∣ \\sin h∣ = \\sin h$，

$$
F_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{f(h)(1 + \\sin h) - f(0)}{h}
$$
使用泰勒展开$f(h) = f(0) + f^{′}(0)h + o(h)$，$\\sin h = h + o(h)$，代入得：

$$
F_{+}^{′}(0) = \\lim_{h→0^{+}} \\frac{ \\lbrack f(0) + f^{′}(0)h + o(h) \\rbrack (1 + h + o(h)) - f(0)}{h} = f(0) + f^{′}(0)
$$
计算左导数：
当$h < 0$时，$∣ \\sin h∣ = − \\sin h$，

$$
F_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{f(h)(1 - \\sin h) - f(0)}{h}
$$
同样代入泰勒展开：

$$
F_{-}^{′}(0) = \\lim_{h→0^{-}} \\frac{ \\lbrack f(0) + f^{′}(0)h + o(h) \\rbrack (1 - h + o(h)) - f(0)}{h} = −f(0) + f^{′}(0)
$$
对于可导性，需$F_{+}^{′}(0) = F_{-}^{′}(0)$，即：

$$
f(0) + f^{′}(0) = −f(0) + f^{′}(0)
$$
解得$f(0) = 0$。
因此，必有$f(0) = 0$，对应选项 A。
验证：若$f(0) = 0$，则$F_{+}^{′}(0) = f^{′}(0)$，$F_{-}^{′}(0) = f^{′}(0)$，相等，故$F(x)$在$x = 0$处可导，且$f^{′}(0)$可任意。', 9, 'Mogullzr', '2026-01-29 14:09:34', 9, 'Mogullzr', '2026-01-29 14:09:34', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '899');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '899');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '899');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (900, '1995年考研数学卷3第11题', '简单', '考研数学1995年卷3真题', '
$$
\\lim_{x→0^{+}} \\frac{1 - \\sqrt{\\cos x}}{x(1 - \\cos \\sqrt{x})} =
$$
', '[]', '$\\frac{1}{2}$
', '考虑极限$\\lim_{x→0^{+}} \\frac{1-\\sqrt{\\cos x}}{x(1-\\cos \\sqrt{x})}$。当$x → 0^{+}$时，分子和分母均趋于 0，因此使用等价无穷小替换。
分子$1 - \\sqrt{\\cos x}$：由于$\\cos x ≈ 1 - \\frac{x^{2}}{2}$，有$\\sqrt{\\cos x} ≈ \\sqrt{1 - \\frac{x^{2}}{2}} ≈ 1 - \\frac{x^{2}}{4}$，因此$1 - \\sqrt{\\cos x} ≈ \\frac{x^{2}}{4}$.
分母$x(1 - \\cos \\sqrt{x})$：由于$1 - \\cos \\sqrt{x} ≈ \\frac{(\\sqrt{x})2}{2} = \\frac{x}{2}$，因此$x(1 - \\cos \\sqrt{x}) ≈ x ⋅ \\frac{x}{2} = \\frac{x^{2}}{2}$.
于是，原极限化为$\\lim_{x→0^{+}} \\frac{\\frac{x^{2}}{4}}{\\frac{x^{2}}{2}} = \\frac{1}{4} × \\frac{2}{1} = \\frac{1}{2}$.
或者，令$u = \\sqrt{x}$，则当$x → 0^{+}$时$u → 0^{+}$，原极限变为$\\lim_{u→0^{+}} \\frac{1-\\sqrt{\\cos(u^{2})}}{u^{2}(1-\\cos u)}$。分子$1 - \\sqrt{\\cos(u^{2})} ≈ \\frac{u^{4}}{4}$，分母$u^{2}(1 - \\cos u) ≈ u^{2} ⋅ \\frac{u^{2}}{2} = \\frac{u^{4}}{2}$，比值仍为$\\frac{1}{2}$.
因此，极限为$\\frac{1}{2}$.
', 9, 'Mogullzr', '2026-01-29 14:09:34', 9, 'Mogullzr', '2026-01-29 14:09:34', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '900');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '900');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '900');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (901, '1995年考研数学卷3第12题', '简单', '考研数学1995年卷3真题', '设函数$y = y(x)$由方程$xe^{f(y)} = e^{y}$确定，其中$f$具有二阶导数，且$f^{′} \\neq 1$，求$\\frac{d^{2}y}{dx^{2}}$．', '[]', '

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{f^{′′}(y) - (1 - f^{′}(y))^{2}}{x^{2} (1 - f^{′}(y))^{3}}
$$

', '由方程$xe^{f(y)} = e^{y}$两边对$x$求导，利用乘积法则和链式法则，得到：

$$
e^{f(y)} + xe^{f(y)}f^{′}(y)\\frac{dy}{dx} = e^{y}\\frac{dy}{dx}
$$

整理得：

$$
e^{f(y)} = \\frac{dy}{dx} (e^{y} - xe^{f(y)}f^{′}(y))
$$

由原方程$xe^{f(y)} = e^{y}$，代入得：

$$
e^{f(y)} = \\frac{dy}{dx}e^{y} (1 - f^{′}(y))
$$

解得一阶导数：

$$
\\frac{dy}{dx} = \\frac{e^{f(y)}}{e^{y}(1 - f^{′}(y))} = \\frac{1}{x(1 - f^{′}(y))}
$$

其中利用了原方程$e^{f(y)} = \\frac{e^{y}}{x}$，即$e^{f(y)-y} = \\frac{1}{x}$。
对一阶导数再对$x$求导：

$$
\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dx} (\\frac{1}{x(1 - f^{′}(y))})
$$

令$u = 1 - f^{′}(y)$，则：

$$
\\frac{dy}{dx} = \\frac{1}{xu}
$$

求导：

$$
\\frac{d^{2}y}{dx^{2}} = −\\frac{1}{(xu)2} ⋅ \\frac{d}{dx}(xu)
$$

其中：

$$
\\frac{d}{dx}(xu) = u + x\\frac{du}{dx} = u + x (−f^{′′}(y)\\frac{dy}{dx}) = u - xf^{′′}(y)\\frac{dy}{dx}
$$

代入$\\frac{dy}{dx} = \\frac{1}{xu}$：

$$
\\frac{d}{dx}(xu) = u - xf^{′′}(y) ⋅ \\frac{1}{xu} = u - \\frac{f^{′′}(y)}{u}
$$

于是：

$$
\\frac{d^{2}y}{dx^{2}} = −\\frac{1}{x^{2}u^{2}} (u - \\frac{f^{′′}(y)}{u}) = −\\frac{1}{x^{2}u^{2}} ⋅ \\frac{u^{2} - f^{′′}(y)}{u} = −\\frac{u^{2} - f^{′′}(y)}{x^{2}u^{3}}
$$

代入$u = 1 - f^{′}(y)$：

$$
\\frac{d^{2}y}{dx^{2}} = −\\frac{(1 - f^{′}(y))2 - f^{′′}(y)}{x^{2}(1 - f^{′}(y))3} = \\frac{f^{′′}(y) - (1 - f^{′}(y))2}{x^{2}(1 - f^{′}(y))3}
$$

这就是所求的二阶导数。
', 9, 'Mogullzr', '2026-01-29 14:09:35', 9, 'Mogullzr', '2026-01-29 14:09:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '901');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '901');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '901');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (902, '1995年考研数学卷3第13题', '简单', '考研数学1995年卷3真题', '设$f(x^{2} - 1) = \\ln \\frac{x^{2}}{x^{2}-2}$，且$f \\lbrack ϕ(x) \\rbrack  = \\ln x$，求$∫ ϕ(x)dx$．', '[]', '
$x + 2 \\ln ∣x - 1∣ + C$
', '
给定$f(x^{2} - 1) = \\ln \\frac{x^{2}}{x^{2}-2}$，令$t = x^{2} - 1$，则$x^{2} = t + 1$，代入得


$$
f(t) = \\ln \\frac{t + 1}{t - 1}
$$

由$f \\lbrack ϕ(x) \\rbrack  = \\ln x$，有


$$
\\ln \\frac{ϕ(x) + 1}{ϕ(x) - 1} = \\ln x
$$

解得


$$
\\frac{ϕ(x) + 1}{ϕ(x) - 1} = x
$$



$$
ϕ(x) + 1 = x(ϕ(x) - 1)
$$



$$
ϕ(x) + 1 = xϕ(x) - x
$$



$$
ϕ(x) - xϕ(x) = −x - 1
$$



$$
ϕ(x)(1 - x) = −(x + 1)
$$



$$
ϕ(x) = \\frac{x + 1}{x - 1}
$$

求积分：


$$
∫ ϕ(x) dx = ∫ \\frac{x + 1}{x - 1} dx
$$

简化被积函数：


$$
\\frac{x + 1}{x - 1} = 1 + \\frac{2}{x - 1}
$$

所以


$$
∫ (1 + \\frac{2}{x - 1}) dx = x + 2 \\ln ∣x - 1∣ + C
$$

其中$C$为积分常数。
', 9, 'Mogullzr', '2026-01-29 14:09:35', 9, 'Mogullzr', '2026-01-29 14:09:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '902');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '902');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '902');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (903, '1995年考研数学卷3第14题', '简单', '考研数学1995年卷3真题', '设$f(x) = \\begin{cases} x arctan \\frac{1}{x^{2}} & x \\neq 0 \\\\ 0 & x = 0 \\end{cases}$试讨论$f^{′}(x)$在$x = 0$处的连续性．', '[]', '
$f^{′}(x)$在$x = 0$处连续。
', '
首先，计算$f^{′}(0)$使用导数定义：


$$
f^{′}(0) = \\lim_{h→0} \\frac{f(h) - f(0)}{h} = \\lim_{h→0} \\frac{h arctan \\frac{1}{h^{2}}}{h} = \\lim_{h→0} arctan \\frac{1}{h^{2}} = \\frac{π}{2}.
$$

其次，对于$x \\neq 0$，求导$f(x) = x arctan \\frac{1}{x^{2}}$：


$$
f^{′}(x) = arctan \\frac{1}{x^{2}} + x ⋅ \\frac{1}{1 + (\\frac{1}{x^{2}})^{2}} ⋅ (−\\frac{2}{x^{3}}) = arctan \\frac{1}{x^{2}} - \\frac{2x^{2}}{x^{4} + 1}.
$$

然后，计算$\\lim_{x→0} f^{′}(x)$：


$$
\\lim_{x→0} f^{′}(x) = \\lim_{x→0} (arctan \\frac{1}{x^{2}} - \\frac{2x^{2}}{x^{4} + 1}) = \\frac{π}{2} - 0 = \\frac{π}{2}.
$$

由于$\\lim_{x→0} f^{′}(x) = f^{′}(0) = \\frac{π}{2}$，因此$f^{′}(x)$在$x = 0$处连续。
', 9, 'Mogullzr', '2026-01-29 14:09:35', 9, 'Mogullzr', '2026-01-29 14:09:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '903');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '903');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '903');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (904, '1995年考研数学卷3第15题', '简单', '考研数学1995年卷3真题', '求摆线$\\begin{cases} x = 1 - \\cos t \\\\ y = t - \\sin t \\end{cases}$一拱（$0 ≤ t ≤ 2π$）的弧长．', '[]', '
8
', '
给定摆线的参数方程$x = 1 - \\cos t$,$y = t - \\sin t$，其中$t ∈  \\lbrack 0, 2π \\rbrack$。弧长公式为$s = \\int_{0}^{2π} \\sqrt{(\\frac{dx}{dt})^{2} + (\\frac{dy}{dt})^{2}} dt$。
计算导数：


$$
\\frac{dx}{dt} = \\sin t, \\frac{dy}{dt} = 1 - \\cos t
$$

代入弧长公式：


$$
\\begin{array}{cc}
\\sqrt{(\\frac{dx}{dt})^{2} + (\\frac{dy}{dt})^{2}} & = \\sqrt{(\\sin t)2 + (1 - \\cos t)2} \\\\
 & = \\sqrt{\\sin^{2} t + 1 - 2 \\cos t + \\cos^{2} t} \\\\
 & = \\sqrt{2 - 2 \\cos t} \\\\
 & = \\sqrt{4 \\sin^{2} \\frac{t}{2}} \\\\
\\end{array}
$$

在区间$\\lbrack 0, 2π \\rbrack$上，$\\frac{t}{2} ∈  \\lbrack 0, π \\rbrack$，故$\\sin \\frac{t}{2} ≥ 0$，因此$2 ​\\sin \\frac{t}{2}​ = 2 \\sin \\frac{t}{2}$。
于是弧长为：


$$
s = \\int_{0}^{2π} 2 \\sin \\frac{t}{2} dt.
$$

令$u = \\frac{t}{2}$，则$du = \\frac{1}{2}dt$，即$dt = 2du$，积分限变为$u = 0$到$u = π$。


$$
\\begin{array}{cc}
s & = \\int_{0}^{π} 2 \\sin u ⋅ 2 du \\\\
 & = 4 \\int_{0}^{π} \\sin u du \\\\
 & = 4  \\lbrack − \\cos u \\rbrack _{0}^{π} \\\\
 & = 4 (− \\cos π + \\cos 0) \\\\
 & = 8. \\\\
\\end{array}
$$

因此，摆线一拱的弧长为 8。
', 9, 'Mogullzr', '2026-01-29 14:09:35', 9, 'Mogullzr', '2026-01-29 14:09:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '904');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '904');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '904');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (905, '1995年考研数学卷3第16题', '简单', '考研数学1995年卷3真题', '设单位质点在水平面内作直线运动，初速度$v​_{t=0} = v_{0}$，
已知阻力与速度成正比（比例常数为$1$），
问$t$为多少时此质点的速度为$\\frac{v_{0}}{3}$？并求到此时刻该质点所经过的路程．', '[]', '
$t = \\ln 3$，路程为$\\frac{2}{3}v_{0}$。
', '
由题意，单位质点的质量$m = 1$，阻力与速度成正比且比例常数为$1$，故运动方程为$\\frac{dv}{dt} = −v$。
解此微分方程：分离变量得$\\frac{dv}{v} = −dt$，积分得$\\ln v = −t + C$，代入初始条件$v(0) = v_{0}$得$v(t) = v_{0}e^{−t}$。
设$v(t) = \\frac{v_{0}}{3}$，则$v_{0}e^{−t} = \\frac{v_{0}}{3}$，即$e^{−t} = \\frac{1}{3}$，解得$t = \\ln 3$。
路程为速度的积分，即$s(t) = \\int_{0}^{t} v(τ) dτ = \\int_{0}^{t} v_{0}e^{−τ} dτ = v_{0}  \\lbrack −e^{−τ} \\rbrack _{0}^{t} = v_{0}(1 - e^{−t})$。
代入$t = \\ln 3$得$s(\\ln 3) = v_{0}(1 - e^{− \\ln 3}) = v_{0} (1 - \\frac{1}{3}) = \\frac{2}{3}v_{0}$。
', 9, 'Mogullzr', '2026-01-29 14:09:35', 9, 'Mogullzr', '2026-01-29 14:09:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '905');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '905');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '905');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (906, '1995年考研数学卷3第17题', '简单', '考研数学1995年卷3真题', '求函数$f(x) = \\int_{0}^{x^{2}}(2 - t)e^{−t}dt$的最大值和最小值．', '[]', '
函数的最小值为$0$，最大值为$1 + e^{−2}$。
', '
函数$f(x) = \\int_{0}^{x^{2}}(2 - t)e^{−t} dt$可以通过计算积分得到显式表达式。
计算积分：


$$
∫(2 - t)e^{−t} dt = e^{−t}(t - 1) + C
$$

因此，


$$
\\begin{array}{cc}
f(x) & = \\int_{0}^{x^{2}}(2 - t)e^{−t} dt \\\\
 & =  \\lbrack e^{−t}(t - 1) \\rbrack _{0}^{x^{2}} \\\\
 & = e^{−x^{2}}(x^{2} - 1) - e^{0}(0 - 1) \\\\
\\end{array}
$$

即$f(x) = 1 + (x^{2} - 1)e^{−x^{2}}$。
令$t = x^{2} ≥ 0$，则$f(x) = g(t) = 1 + (t - 1)e^{−t}$。
求$g(t)$的导数：


$$
g^{′}(t) = \\frac{d}{dt}  \\lbrack (t - 1)e^{−t} \\rbrack  = e^{−t} + (t - 1)(−e^{−t}) = e^{−t}(2 - t)
$$

令$g^{′}(t) = 0$，得$t = 2$。
当$t < 2$时，$g^{′}(t) > 0$，函数单调递增；当$t > 2$时，$g^{′}(t) < 0$，函数单调递减。因此，$t = 2$时$g(t)$取得最大值。
计算关键点：
当$t = 0$（即$x = 0$）时，$g(0) = 1 + (0 - 1) ⋅ 1 = 0$。当$t = 2$（即$x = ±\\sqrt{2}$）时，$g(2) = 1 + (2 - 1)e^{−2} = 1 + e^{−2}$。当$t → ∞$（即$x → ±∞$）时，$g(t) → 1$。
比较函数值：$f(0) = 0$，$f(±\\sqrt{2}) = 1 + e^{−2} ≈ 1.135 > 1$，且$f(x) → 1$当$x → ±∞$。
因此，函数$f(x)$的最小值为$0$，最大值为$1 + e^{−2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:35', 9, 'Mogullzr', '2026-01-29 14:09:35', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '906');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '906');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '906');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (907, '1995年考研数学卷3第18题', '简单', '考研数学1995年卷3真题', '设$y = e^{x}$是微分方程$xy^{′} + p(x)y = x$的一个解，
求此微分方程满足条件$y​_{x=\\ln 2} = 0$的特解．', '[]', '$y = e^{x} (1 - e^{e^{−x}-\\frac{1}{2}})$
', '已知$y = e^{x}$是微分方程$xy^{′} + p(x)y = x$的一个解，代入得：

$$
xe^{x} + p(x)e^{x} = x
$$

解出：

$$
p(x) = \\frac{x - xe^{x}}{e^{x}} = x(e^{−x} - 1)
$$

代入原方程得：

$$
xy^{′} + x(e^{−x} - 1)y = x
$$

两边除以$x$（$x \\neq 0$）：

$$
y^{′} + (e^{−x} - 1)y = 1
$$

这是一阶线性微分方程，其中$P(x) = e^{−x} - 1$，$Q(x) = 1$。积分因子为：

$$
μ(x) = e^{∫ P(x) dx} = e^{∫(e^{−x}-1) dx} = e^{−e^{−x}-x}
$$

方程两边乘积分因子：

$$
\\frac{d}{dx} \\lbrack μ(x)y \\rbrack  = μ(x) ⋅ 1
$$

积分得：

$$
μ(x)y = ∫ μ(x) dx + C
$$

其中：

$$
∫ μ(x) dx = ∫ e^{−e^{−x}-x} dx
$$

令$u = e^{−x}$，则$du = −e^{−x}dx$，所以：

$$
∫ e^{−e^{−x}-x} dx = ∫ e^{−u} ⋅ (−du) = − ∫ e^{−u} du = e^{−u} = e^{−e^{−x}}
$$

因此：

$$
μ(x)y = e^{−e^{−x}} + C
$$

解得：

$$
y = \\frac{e^{−e^{−x}} + C}{e^{−e^{−x}}e^{−x}} = e^{x} + Ce^{x}e^{e^{−x}}
$$

代入初始条件$y(\\ln 2) = 0$：

$$
0 = e^{\\ln 2} + Ce^{\\ln 2}e^{e^{− \\ln 2}} = 2 + C ⋅ 2 ⋅ e^{1/2}
$$

解得：

$$
C = −\\frac{1}{e^{1/2}} = −e^{−1/2}
$$

代入通解得特解：

$$
y = e^{x} - e^{−1/2}e^{x}e^{e^{−x}} = e^{x} (1 - e^{e^{−x}-\\frac{1}{2}})
$$

', 9, 'Mogullzr', '2026-01-29 14:09:36', 9, 'Mogullzr', '2026-01-29 14:09:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '907');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '907');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '907');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (908, '1995年考研数学卷3第19题', '简单', '考研数学1995年卷3真题', '如图，设曲线$L$的方程为$y = f(x)$，且$y^{′′} > 0$，又$MT$,$MP$分别为该曲线在点$M(x_{0}, y_{0})$处的切线和法线，
已知线段$MP$的长度为$\\frac{(1+(y_{0}^{′})2)^{\\frac{3}{2}}}{y_{0}^{′′}}$（其中$y_{0}^{′} = y^{′}(x_{0})$,$y_{0}^{′′} = y^{′′}(x_{0})$），试推导出点$P(ξ, η)$的坐标表达式．', '[]', '
点$P(ξ, η)$的坐标表达式为：


$$
ξ = x_{0} - \\frac{y_{0}^{′}(1 + (y_{0}^{′})2)}{y_{0}^{′′}},  η = y_{0} + \\frac{1 + (y_{0}^{′})2}{y_{0}^{′′}}
$$

其中$y_{0}^{′} = y^{′}(x_{0})$,$y_{0}^{′′} = y^{′′}(x_{0})$.
', '
已知曲线$L$的方程为$y = f(x)$，且$y^{′′} > 0$。在点$M(x_{0}, y_{0})$处，法线$MP$的长度为$\\frac{(1+(y_{0}^{′})2)3/2}{y_{0}^{′′}}$，该长度即为曲率半径$ρ$。点$P(ξ, η)$是法线上的点，且$MP = ρ$，因此点$P$是曲率中心。
法线的斜率为$−\\frac{1}{y_{0}^{′}}$（假设$y_{0}^{′} \\neq 0$），法线方程为：


$$
y - y_{0} = −\\frac{1}{y_{0}^{′}}(x - x_{0})
$$

即


$$
η - y_{0} = −\\frac{1}{y_{0}^{′}}(ξ - x_{0})
$$

同时，点$P$到点$M$的距离为：


$$
\\sqrt{(ξ - x_{0})2 + (η - y_{0})2} = ρ = \\frac{(1 + (y_{0}^{′})2)3/2}{y_{0}^{′′}}
$$

将$η - y_{0}$代入距离公式：


$$
(ξ - x_{0})2 + (−\\frac{1}{y_{0}^{′}}(ξ - x_{0}))^{2} = ρ^{2}
$$



$$
(ξ - x_{0})2 (1 + \\frac{1}{(y_{0}^{′})2}) = ρ^{2}
$$



$$
(ξ - x_{0})2 ⋅ \\frac{1 + (y_{0}^{′})2}{(y_{0}^{′})2} = ρ^{2}
$$

解得：


$$
(ξ - x_{0})2 = ρ^{2} ⋅ \\frac{(y_{0}^{′})2}{1 + (y_{0}^{′})2}
$$

代入$ρ^{2} = \\frac{(1+(y_{0}^{′})2)3}{(y_{0}^{′′})2}$：


$$
(ξ - x_{0})2 = \\frac{(1 + (y_{0}^{′})2)3}{(y_{0}^{′′})2} ⋅ \\frac{(y_{0}^{′})2}{1 + (y_{0}^{′})2} = \\frac{(1 + (y_{0}^{′})2)2(y_{0}^{′})2}{(y_{0}^{′′})2}
$$

取平方根（考虑符号）：


$$
∣ξ - x_{0}∣ = \\frac{∣y_{0}^{′}∣(1 + (y_{0}^{′})2)}{y_{0}^{′′}}
$$

由于$y_{0}^{′′} > 0$，曲率中心的位置取决于$y_{0}^{′}$。当$y_{0}^{′′} > 0$时，曲线凹向上，曲率中心在点$M$上方，即$η > y_{0}$。由法线方程$η - y_{0} = −\\frac{1}{y_{0}^{′}}(ξ - x_{0})$，为确保$η > y_{0}$，需满足$ξ - x_{0} = −y_{0}^{′} ⋅ \\frac{1+(y_{0}^{′})2}{y_{0}^{′′}}$。因此：


$$
ξ - x_{0} = −\\frac{y_{0}^{′}(1 + (y_{0}^{′})2)}{y_{0}^{′′}}
$$

即


$$
ξ = x_{0} - \\frac{y_{0}^{′}(1 + (y_{0}^{′})2)}{y_{0}^{′′}}
$$

代入法线方程求$η$：


$$
η - y_{0} = −\\frac{1}{y_{0}^{′}} (−\\frac{y_{0}^{′}(1 + (y_{0}^{′})2)}{y_{0}^{′′}}) = \\frac{1 + (y_{0}^{′})2}{y_{0}^{′′}}
$$

所以


$$
η = y_{0} + \\frac{1 + (y_{0}^{′})2}{y_{0}^{′′}}
$$

当$y_{0}^{′} = 0$时，法线垂直，上述公式仍成立，此时$ξ = x_{0}$，$η = y_{0} + \\frac{1}{y_{0}^{′′}}$。
因此，点$P(ξ, η)$的坐标表达式为：


$$
ξ = x_{0} - \\frac{y_{0}^{′}(1 + (y_{0}^{′})2)}{y_{0}^{′′}},  η = y_{0} + \\frac{1 + (y_{0}^{′})2}{y_{0}^{′′}}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:36', 9, 'Mogullzr', '2026-01-29 14:09:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '908');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '908');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '908');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (909, '1995年考研数学卷3第20题', '简单', '考研数学1995年卷3真题', '设$f(x) = \\int_{0}^{x} \\frac{\\sin t}{π-t}dt$，求$\\int_{0}^{π} f(x)dx$．', '[]', '
2
', '
给定$f(x) = \\int_{0}^{x} \\frac{\\sin t}{π-t} dt$，需要计算$\\int_{0}^{π} f(x) dx$。
写出二重积分形式：


$$
\\int_{0}^{π} f(x) dx = \\int_{0}^{π} (\\int_{0}^{x} \\frac{\\sin t}{π - t} dt) dx
$$

改变积分顺序。在区域$0 ≤ t ≤ x ≤ π$上，对于固定$t$，$x$从$t$到$π$。因此：


$$
\\int_{0}^{π} \\int_{0}^{x} \\frac{\\sin t}{π - t} dt dx = \\int_{0}^{π} \\frac{\\sin t}{π - t} (\\int_{t}^{π} dx) dt
$$

计算内层积分：


$$
\\int_{t}^{π} dx = π - t
$$

代入得：


$$
\\int_{0}^{π} \\frac{\\sin t}{π - t} ⋅ (π - t) dt = \\int_{0}^{π} \\sin t dt
$$

计算该积分：


$$
\\int_{0}^{π} \\sin t dt = − \\cos t​_{0}^{π} = −(\\cos π - \\cos 0) = −(−1 - 1) = 2
$$

故结果为 2。
', 9, 'Mogullzr', '2026-01-29 14:09:36', 9, 'Mogullzr', '2026-01-29 14:09:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '909');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '909');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '909');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (910, '1995年考研数学卷3第21题', '简单', '考研数学1995年卷3真题', '设$\\lim_{x→0} \\frac{f(x)}{x} = 1$，且$f^{′′}(x) > 0$，证明$f(x) ≥ x$．', '[]', '
由$\\lim_{x→0} \\frac{f(x)}{x} = 1$可知，当$x → 0$时，$f(x) ∼ x$，因此$f(0) = 0$，且由导数定义得

$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x} = \\lim_{x→0} \\frac{f(x)}{x} = 1
$$

又因为$f^{′′}(x) > 0$，函数$f(x)$是凸函数。根据凸函数的性质，对于任意$x$，有

$$
f(x) ≥ f(0) + f^{′}(0)x = 0 + 1 ⋅ x = x
$$

故$f(x) ≥ x$。
', '
由$\\lim_{x→0} \\frac{f(x)}{x} = 1$可知，当$x → 0$时，$f(x) ∼ x$，因此$f(0) = 0$，且由导数定义得

$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x} = \\lim_{x→0} \\frac{f(x)}{x} = 1
$$

又因为$f^{′′}(x) > 0$，函数$f(x)$是凸函数。根据凸函数的性质，对于任意$x$，有

$$
f(x) ≥ f(0) + f^{′}(0)x = 0 + 1 ⋅ x = x
$$

故$f(x) ≥ x$。
', 9, 'Mogullzr', '2026-01-29 14:09:36', 9, 'Mogullzr', '2026-01-29 14:09:36', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '910');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '910');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '910');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (911, '1995年考研数学卷4第1题', '简单', '考研数学1995年卷4真题', '设$f(x) = \\frac{1-x}{1+x}$，则$f^{(n)}(x) =$______．', '[]', '

$$
f^{(n)}(x) = \\frac{2(−1)nn!}{(1 + x)n+1} (n ≥ 1)
$$

', '考虑函数$f(x) = \\frac{1-x}{1+x}$。将其改写为$f(x) = \\frac{2}{1+x} - 1$。由于常数的导数为零，对于$n ≥ 1$，有$f^{(n)}(x) = (\\frac{2}{1+x})^{(n)}$。
令$g(x) = \\frac{2}{1+x} = 2(1 + x)−1$，则其$n$阶导数为：


$$
g^{(n)}(x) = 2 ⋅ (−1)nn!(1 + x)−n−1 = \\frac{2(−1)nn!}{(1 + x)n+1}.
$$

因此，对于$n ≥ 1$，


$$
f^{(n)}(x) = \\frac{2(−1)nn!}{(1 + x)n+1}.
$$

该公式已验证于$n = 1, 2, 3, …$时成立。
', 9, 'Mogullzr', '2026-01-29 14:09:39', 9, 'Mogullzr', '2026-01-29 14:09:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '911');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '911');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '911');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (912, '1995年考研数学卷4第2题', '简单', '考研数学1995年卷4真题', '设$z = xyf (\\frac{y}{x})$,$f(u)$可导，则$xz_{x}^{′} + yz_{y}^{′} =$______．', '[]', '
$2z$
', '
给定$z = xyf (\\frac{y}{x})$，其中$f(u)$可导。
首先，计算偏导数$z_{x}^{′}$和$z_{y}^{′}$。
设$u = \\frac{y}{x}$，则$z = xyf(u)$。
求$z_{x}^{′}$:


$$
z_{x}^{′} = \\frac{∂}{∂x} \\lbrack xyf(u) \\rbrack  = yf(u) + xy\\frac{∂f(u)}{∂x} = yf(u) + xyf^{′}(u)\\frac{∂u}{∂x}
$$

其中$\\frac{∂u}{∂x} = −\\frac{y}{x^{2}}$，所以


$$
z_{x}^{′} = yf(u) + xyf^{′}(u) (−\\frac{y}{x^{2}}) = yf(u) - \\frac{y^{2}}{x}f^{′}(u)
$$

求$z_{y}^{′}$:


$$
z_{y}^{′} = \\frac{∂}{∂y} \\lbrack xyf(u) \\rbrack  = xf(u) + xy\\frac{∂f(u)}{∂y} = xf(u) + xyf^{′}(u)\\frac{∂u}{∂y}
$$

其中$\\frac{∂u}{∂y} = \\frac{1}{x}$，所以


$$
z_{y}^{′} = xf(u) + xyf^{′}(u) ⋅ \\frac{1}{x} = xf(u) + yf^{′}(u)
$$

现在计算$xz_{x}^{′} + yz_{y}^{′}$:


$$
xz_{x}^{′} = x (yf(u) - \\frac{y^{2}}{x}f^{′}(u)) = xyf(u) - y^{2}f^{′}(u)
$$



$$
yz_{y}^{′} = y (xf(u) + yf^{′}(u)) = xyf(u) + y^{2}f^{′}(u)
$$

相加得：


$$
xz_{x}^{′} + yz_{y}^{′} =  \\lbrack xyf(u) - y^{2}f^{′}(u) \\rbrack  +  \\lbrack xyf(u) + y^{2}f^{′}(u) \\rbrack  = 2xyf(u)
$$

由于$z = xyf(u)$，所以


$$
xz_{x}^{′} + yz_{y}^{′} = 2z
$$

因此，答案为$2z$。
', 9, 'Mogullzr', '2026-01-29 14:09:39', 9, 'Mogullzr', '2026-01-29 14:09:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '912');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '912');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '912');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (913, '1995年考研数学卷4第3题', '简单', '考研数学1995年卷4真题', '设$f^{′}(\\ln x) = 1 + x$，则$f(x) =$______．', '[]', '
$f(x) = x + e^{x} + C$，其中$C$为任意常数。
', '
给定$f^{′}(\\ln x) = 1 + x$，令$u = \\ln x$，则$x = e^{u}$，代入得$f^{′}(u) = 1 + e^{u}$。
对$f^{′}(u)$积分得$f(u) = ∫(1 + e^{u}) du = u + e^{u} + C$，其中$C$为积分常数。
将$u$替换为$x$，得$f(x) = x + e^{x} + C$。
验证：若$f(x) = x + e^{x} + C$，则$f^{′}(x) = 1 + e^{x}$，故$f^{′}(\\ln x) = 1 + e^{\\ln x} = 1 + x$，符合原条件。
', 9, 'Mogullzr', '2026-01-29 14:09:39', 9, 'Mogullzr', '2026-01-29 14:09:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '913');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '913');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '913');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (914, '1995年考研数学卷4第4题', '简单', '考研数学1995年卷4真题', '设$A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 2 & 0 \\\\
3 & 4 & 5 \\\\
\\end{array} \\right)$，$A^{∗}$是$A$的伴随矩阵，则$(A^{∗})−1 =$______．', '[]', '


$$
\\frac{1}{10} \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 2 & 0 \\\\
3 & 4 & 5 \\\\
\\end{array} \\right)
$$

', '
由伴随矩阵的性质，有$AA^{∗} = A^{∗}A = det(A)I$，其中$I$是单位矩阵。因此，$A^{∗} = det(A)A^{−1}$，进而可得$(A^{∗})−1 = \\frac{1}{det(A)}A$。
计算矩阵$A$的行列式：


$$
A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 2 & 0 \\\\
3 & 4 & 5 \\\\
\\end{array} \\right)
$$

由于$A$是下三角矩阵，行列式为对角元素的乘积，即


$$
det(A) = 1 × 2 × 5 = 10
$$

因此，


$$
(A^{∗})−1 = \\frac{1}{10}A = \\frac{1}{10} \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & 2 & 0 \\\\
3 & 4 & 5 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:09:39', 9, 'Mogullzr', '2026-01-29 14:09:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '914');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '914');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '914');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (915, '1995年考研数学卷4第5题', '简单', '考研数学1995年卷4真题', '设$X_{1}, X_{2}, ⋯  , X_{n}$是来自正态总体$N(μ, σ^{2})$的简单随机样本，其中参数$μ$和$σ^{2}$未知，
记$\\overline{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$，$Q^{2} = \\sum_{i=1}^{n}(X_{i} - \\overline{X})2$，
则假设$H_{0} : μ = 0$的$t$检验使用统计量$t =$______．', '[]', '

$$
t = \\frac{\\overline{X}\\sqrt{n}}{\\sqrt{\\frac{Q^{2}}{n-1}}}
$$

', '在假设检验中，当总体方差未知时，对总体均值进行t检验使用的统计量为$t = \\frac{\\overline{X}-μ_{0}}{s/\\sqrt{n}}$，其中$μ_{0}$为假设的总体均值，本题中$μ_{0} = 0$，$s$为样本标准差。样本方差$s^{2} = \\frac{1}{n-1} \\sum_{i=1}^{n}(X_{i} - \\overline{X})2 = \\frac{Q^{2}}{n-1}$，因此$s = \\sqrt{\\frac{Q^{2}}{n-1}}$。代入t统计量公式，得到$t = \\frac{\\overline{X}-0}{\\sqrt{\\frac{Q^{2}}{n-1}}/\\sqrt{n}} = \\frac{\\overline{X}\\sqrt{n}}{\\sqrt{\\frac{Q^{2}}{n-1}}}$。该统计量服从自由度为$n - 1$的t分布，用于检验假设$H_{0} : μ = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:39', 9, 'Mogullzr', '2026-01-29 14:09:39', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '915');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '915');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1079', '915');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (916, '1995年考研数学卷4第6题', '简单', '考研数学1995年卷4真题', '设$f(x)$为可导函数，且满足条件$\\lim_{x→0} \\frac{f(1)-f(1-x)}{2x} = −1$,
则曲线$y = f(x)$在点$(1, f(1))$处的切线斜率为', '[''$2$．'', ''$−1$．'', ''$\\\\frac{1}{2}$．'', ''$−2$．'']', "['D']", '给定条件$\\lim_{x→0} \\frac{f(1)-f(1-x)}{2x} = −1$。令$h = −x$，则当$x → 0$时，$h → 0$，于是有：
$$
\\frac{f(1) - f(1 - x)}{2x} = \\frac{f(1) - f(1 + h)}{2(−h)} = \\frac{− \\lbrack f(1 + h) - f(1) \\rbrack }{−2h} = \\frac{f(1 + h) - f(1)}{2h}.
$$
因此，
$$
\\lim_{h→0} \\frac{f(1 + h) - f(1)}{2h} = −1.
$$
根据导数的定义，$f^{′}(1) = \\lim_{h→0} \\frac{f(1+h)-f(1)}{h}$，所以：
$$
\\frac{1}{2}f^{′}(1) = −1,
$$
解得$f^{′}(1) = −2$。因此，曲线$y = f(x)$在点$(1, f(1))$处的切线斜率为$−2$。', 9, 'Mogullzr', '2026-01-29 14:09:39', 9, 'Mogullzr', '2026-01-29 14:09:39', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '916');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '916');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '916');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (917, '1995年考研数学卷4第7题', '简单', '考研数学1995年卷4真题', '下列广义积分发散的是', '[''$\\\\int_{−1}^{1} \\\\frac{1}{\\\\sin x}dx$．'', ''$\\\\int_{−1}^{1} \\\\frac{1}{\\\\sqrt{1-x^{2}}}dx$．'', ''$\\\\int_{0}^{+∞} e^{−x^{2}}dx$．'', ''$\\\\int_{2}^{+∞} \\\\frac{1}{x \\\\ln^{2} x}dx$．'']', "['A']", '
对于选项A，积分$\\int_{−1}^{1} \\frac{1}{\\sin x}dx$在$x = 0$处有奇点，因为$\\sin 0 = 0$。当$x → 0$时，$\\sin x ∼ x$，因此$\\frac{1}{\\sin x} ∼ \\frac{1}{x}$，而积分$∫ \\frac{1}{x}dx$在0附近发散，故该积分发散。
对于选项B，积分$\\int_{−1}^{1} \\frac{1}{\\sqrt{1-x^{2}}}dx$是标准积分，结果为$arcsin x​_{−1}^{1} = \\frac{π}{2} - (−\\frac{π}{2}) = π$，收敛。
对于选项C，积分$\\int_{0}^{+∞} e^{−x^{2}}dx$是高斯积分，收敛于$\\frac{\\sqrt{π}}{2}$。
对于选项D，积分$\\int_{2}^{+∞} \\frac{1}{x \\ln^{2} x}dx$，令$u = \\ln x$，则$du = \\frac{dx}{x}$，积分变为$\\int_{\\ln 2}^{+∞} \\frac{1}{u^{2}}du = −\\frac{1}{u}​_{\\ln 2}^{+∞} = \\frac{1}{\\ln 2}$，收敛。
因此，只有选项A发散。', 9, 'Mogullzr', '2026-01-29 14:09:40', 9, 'Mogullzr', '2026-01-29 14:09:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '917');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '917');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '917');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (918, '1995年考研数学卷4第8题', '简单', '考研数学1995年卷4真题', '设矩阵$A_{m×n}$的秩为$r(A) = m < n$,$E_{m}$为$m$阶单位矩阵，下述结论中正确的是', '[''$A$的任意$m$个行向量必线性无关．'', ''$A$的任意一个$m$阶子式不等于零．'', ''若矩阵$B$满足$BA = 0$，则$B = 0$．'', ''$A$通过初等行变换，必可以化为$(E_{m}, 0)$的形式．'']', "['C']", '
由于矩阵$A_{m×n}$的秩$r(A) = m < n$，即$A$行满秩，因此行向量线性无关。左零空间（满足$x^{T}A = 0$的向量$x$的集合）仅包含零向量。若矩阵$B$满足$BA = 0$，则$B$的每一行向量均属于左零空间，故$B$的每一行为零向量，即$B = 0$，因此选项 C 正确。
选项 A 错误，因为秩为$m$仅保证存在$m$个线性无关的行向量，但并非任意$m$个行向量都线性无关。
选项 B 错误，因为秩为$m$仅保证至少有一个$m$阶子式非零，但并非任意$m$阶子式都不为零。
选项 D 错误，因为通过初等行变换，$A$可化为行最简形式$\\lbrack I_{m} ∣ F \\rbrack$（其中$F$为$m × (n - m)$矩阵），但不一定能化为$(E_{m}, 0)$的形式，除非$F$为零矩阵。', 9, 'Mogullzr', '2026-01-29 14:09:40', 9, 'Mogullzr', '2026-01-29 14:09:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '918');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '918');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '918');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (919, '1995年考研数学卷4第9题', '简单', '考研数学1995年卷4真题', '设随机变量$X$和$Y$独立同分布，记$U = X - Y, V = X + Y$，则随机变量$U$与$V$必然', '[''不独立．'', ''独立．'', ''相关系数不为零．'', ''相关系数为零．'']', "['D']", '
设$E \\lbrack X \\rbrack  = E \\lbrack Y \\rbrack  = μ$，$Var(X) = Var(Y) = σ^{2}$，且$X$与$Y$独立，故$Cov(X, Y) = 0$。
计算$U = X - Y$与$V = X + Y$的协方差：
$$
\\begin{array}{cc}
Cov(U, V) & = Cov(X - Y, X + Y) \\\\
 & = Cov(X, X) + Cov(X, Y) - Cov(Y, X) - Cov(Y, Y) \\\\
 & = Var(X) - Var(Y) \\\\
\\end{array}
$$
因此，$U$与$V$的相关系数为零。
注意：相关系数为零不一定意味着独立，例如当$X, Y$为伯努利分布时，$U$与$V$不独立。
本题中必然成立的结论是相关系数为零。', 9, 'Mogullzr', '2026-01-29 14:09:40', 9, 'Mogullzr', '2026-01-29 14:09:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '919');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '919');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '919');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (920, '1995年考研数学卷4第10题', '简单', '考研数学1995年卷4真题', '设随机变量$X$服从正态分布$N(μ, σ^{2})$，则随$σ$的增大，
概率$P \\{∣X - μ∣ < σ\\}$', '[''单调增大．'', ''单调减少．'', ''保持不变．'', ''增减不定．'']', "['C']", '
已知$X ∼ N(μ, σ^{2})$，令$Z = \\frac{X-μ}{σ}$，则$Z ∼ N(0, 1)$。
于是

$$
P\\{∣X - μ∣ < σ\\} = P\\{∣Z∣ < 1\\} ≈ 0.6827
$$
该概率为常数，与$σ$无关，因此不随$σ$增大而改变。', 9, 'Mogullzr', '2026-01-29 14:09:40', 9, 'Mogullzr', '2026-01-29 14:09:40', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '920');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '920');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (921, '1995年考研数学卷4第11题', '简单', '考研数学1995年卷4真题', '设$f(x) = \\begin{cases} \\frac{2}{x^{2}}(1 - \\cos x) & x < 0 \\\\ 1 & x = 0 \\\\ \\frac{1}{x} \\int_{0}^{x} \\cos t^{2}dt & x > 0 \\end{cases}$，试讨论$f(x)$在$x = 0$处的连续性和可导性．', '[]', '
在$x = 0$处，$f(x)$连续且可导。
', '
(Ⅰ) 先看左极限与右极限：

$$
\\lim_{x→0^{-}} f(x) = \\lim_{x→0^{-}} \\frac{2(1 - \\cos x)}{x^{2}} = \\lim_{x→0^{-}} \\frac{2 ⋅ \\frac{1}{2}x^{2}}{x^{2}} = 1,
$$


$$
\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\int_{0}^{x} \\frac{\\cos t^{2}dt}{x} = \\lim_{x→0^{+}} \\frac{\\cos x^{2}}{1} = 1.
$$

故$f(0^{+}) = f(0^{-}) = f(0)$，即$f(x)$在$x = 0$处连续。
(Ⅱ) 再看左导数与右导数：

$$
f_{+}^{′}(0) = \\lim_{x→0^{+}} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0^{+}} \\frac{\\frac{1}{x} \\int_{0}^{x} \\cos t^{2}dt - 1}{x}
$$


$$
= \\lim_{x→0^{+}} \\int_{0}^{x} \\frac{\\cos t^{2}dt - x}{x^{2}} = \\lim_{x→0^{+}} \\frac{\\cos x^{2} - 1}{2x} = \\lim_{x→0^{+}} \\frac{−\\frac{1}{2}x^{4}}{2x} = 0,
$$


$$
f_{-}^{′}(0) = \\lim_{x→0^{-}} \\frac{f(x) - f(0)}{x - 0} = \\lim_{x→0^{-}} \\frac{\\frac{2}{x^{2}}(1 - \\cos x) - 1}{x}
$$


$$
= \\lim_{x→0^{-}} \\frac{2(1 - \\cos x) - x^{2}}{x^{3}} = \\lim_{x→0^{-}} \\frac{2 \\sin x - 2x}{3x^{2}} = \\lim_{x→0^{-}} \\frac{2(\\cos x - 1)}{6x} = 0.
$$

即$f_{+}^{′}(0) = f_{-}^{′}(0) = 0$，故$f(x)$在$x = 0$处可导，且$f^{′}(0) = 0$。
', 9, 'Mogullzr', '2026-01-29 14:09:40', 9, 'Mogullzr', '2026-01-29 14:09:40', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '921');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '921');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '921');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (922, '1995年考研数学卷4第12题', '简单', '考研数学1995年卷4真题', '已知连续函数$f(x)$满足条件$f(x) = \\int_{0}^{3x} f (\\frac{t}{3}) dt + e^{2x}$，求$f(x)$．', '[]', '
$f(x) = 3e^{3x} - 2e^{2x}$
', '
在变上限定积分令$s = \\frac{t}{3}$，得到


$$
f(x) = 3 \\int_{0}^{x} f(s)ds + e^{2x}.
$$

在上式中令$x = 0$得$f(0) = 1$，将上述两端对$x$求导数得


$$
f^{′}(x) = 3f(x) + 2e^{2x}.
$$

这是一阶线性微分方程的特解问题。用$e^{−3x}$同乘方程两端，得


$$
(f(x)e^{−3x})′ = 2e^{−x}.
$$

积分即得


$$
f(x) = Ce^{3x} - 2e^{2x}.
$$

由$f(0) = 1$可确定常数$C = 3$，于是所求的函数是


$$
f(x) = 3e^{3x} - 2e^{2x}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:41', 9, 'Mogullzr', '2026-01-29 14:09:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '922');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '922');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '922');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (923, '1995年考研数学卷4第13题', '简单', '考研数学1995年卷4真题', '将函数$y = \\ln(1 - x - 2x^{2})$展成$x$的幂级数，并指出其收敛区间．', '[]', '

$$
y = \\sum_{n=1}^{∞} \\frac{(−1)n−1 - 2^{n}}{n}x^{n},  x ∈  \\lbrack −\\frac{1}{2}, \\frac{1}{2})
$$

', '
首先，将函数$y = \\ln(1 - x - 2x^{2})$分解为$y = \\ln(1 - 2x) + \\ln(1 + x)$，因为$1 - x - 2x^{2} = (1 - 2x)(1 + x)$。
然后，利用已知的对数级数展开：


$$
\\ln(1 - 2x) = − \\sum_{n=1}^{∞} \\frac{(2x)n}{n} = − \\sum_{n=1}^{∞} \\frac{2^{n}x^{n}}{n},  ∣2x∣ < 1 ∣x∣ < \\frac{1}{2}
$$



$$
\\ln(1 + x) = \\sum_{n=1}^{∞}(−1)n−1\\frac{x^{n}}{n},  ∣x∣ < 1
$$

将两式相加，得到：


$$
y = \\sum_{n=1}^{∞} (−\\frac{2^{n}}{n} + (−1)n−1\\frac{1}{n}) x^{n} = \\sum_{n=1}^{∞} \\frac{(−1)n−1 - 2^{n}}{n}x^{n}
$$

收敛区间由两个级数的收敛域决定。函数定义域为$1 - x - 2x^{2} > 0$，即$−1 < x < \\frac{1}{2}$。级数的收敛半径通过系数极限求得：


$$
\\lim_{n→∞} ​\\frac{a_{n+1}}{a_{n}}​ = \\lim_{n→∞} ​\\frac{\\frac{(−1)n-2^{n+1}}{n+1}}{\\frac{(−1)n−1-2^{n}}{n}}​ ≈ \\lim_{n→∞} \\frac{2^{n+1}/n}{2^{n}/n} = 2
$$

收敛半径为$R = \\frac{1}{2}$。在$x = \\frac{1}{2}$处，级数为$∑ (\\frac{(−1)n−1}{n2^{n}} - \\frac{1}{n})$，其中$∑ \\frac{1}{n}$发散，故发散。在$x = −\\frac{1}{2}$处，级数为$∑ (−\\frac{1}{n2^{n}} - \\frac{(−1)n}{n})$，两者均收敛，故收敛。因此，收敛区间为$\\lbrack −\\frac{1}{2}, \\frac{1}{2})$。
', 9, 'Mogullzr', '2026-01-29 14:09:41', 9, 'Mogullzr', '2026-01-29 14:09:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '923');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '923');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '923');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (924, '1995年考研数学卷4第14题', '简单', '考研数学1995年卷4真题', '计算$\\int_{−∞}^{+∞} \\int_{−∞}^{+∞} \\min\\{x, y\\}e^{−(x^{2}+y^{2})}dxdy$．', '[]', '

$$
−\\sqrt{\\frac{π}{2}}
$$

', '
方法一：将积分区域$D$分为两部分：

$$
D_{1} = \\{(x, y)∣ - ∞ ≤ x ≤ +∞, x ≤ y < +∞\\},
$$



$$
D_{2} = \\{(x, y)∣ - ∞ ≤ x ≤ +∞, −∞ < y ≤ x\\}.
$$

从而有

$$
\\begin{array}{cc}
I & = \\iint_{D_{1}+D_{2}} \\min\\{x, y\\}e^{−(x^{2}+y^{2})} dx dy \\\\
 & = \\iint_{D_{1}} xe^{−(x^{2}+y^{2})} dx dy + \\iint_{D_{2}} ye^{−(x^{2}+y^{2})} dx dy \\\\
 & = \\int_{−∞}^{+∞} e^{−y^{2}} dy \\int_{−∞}^{y} xe^{−x^{2}} dx + \\int_{−∞}^{+∞} e^{−x^{2}} dx \\int_{−∞}^{x} ye^{−y^{2}} dy \\\\
 & = − \\int_{−∞}^{+∞} e^{−2x^{2}} dx. \\\\
\\end{array}
$$

令$t = \\sqrt{2}x$，利用泊松积分$\\int_{−∞}^{+∞} e^{−x^{2}}dx = \\sqrt{π}$，则有

$$
I = −\\frac{1}{\\sqrt{2}} \\int_{−∞}^{+∞} e^{−t^{2}}dt = −\\sqrt{\\frac{π}{2}}.
$$


方法二：引入极坐标系$x = r \\cos θ, y = r \\sin θ$，则

$$
\\frac{3π}{4} ≤ θ ≤ \\frac{π}{4} ⇒ \\min\\{x, y\\} = y = r \\sin θ,
$$



$$
\\frac{π}{4} ≤ θ ≤ \\frac{5π}{4} ⇒ \\min\\{x, y\\} = x = r \\cos θ.
$$

于是

$$
\\begin{array}{cc}
I & = \\int_{−∞}^{+∞} \\int_{−∞}^{+∞} \\min\\{x, y\\}e^{−(x^{2}+y^{2})} dx dy \\\\
 & = \\int_{−\\frac{3π}{4}}^{\\frac{π}{4}} \\sin θ dθ \\int_{0}^{+∞} r^{2}e^{−r^{2}} dr + \\int_{\\frac{π}{4}}^{\\frac{5π}{4}} \\cos θ dθ \\int_{0}^{+∞} r^{2}e^{−r^{2}} dr \\\\
 & = \\int_{0}^{+∞} r^{2}e^{−r^{2}} dr  \\lbrack \\int_{−\\frac{3π}{4}}^{\\frac{π}{4}} \\sin θ dθ + \\int_{\\frac{π}{4}}^{\\frac{5π}{4}} \\cos θ dθ \\rbrack  \\\\
 & = −2\\sqrt{2} \\int_{0}^{+∞} r^{2}e^{−r^{2}} dr \\\\
 & = \\sqrt{2}  \\lbrack re^{−r^{2}}​_{0}^{+∞} - \\int_{0}^{+∞} e^{−r^{2}} dr \\rbrack  \\\\
 & = −\\sqrt{2} \\int_{0}^{+∞} e^{−r^{2}} dr \\\\
 & = −\\sqrt{2} ⋅ \\frac{\\sqrt{π}}{2} \\\\
 & = −\\sqrt{\\frac{π}{2}}. \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:09:41', 9, 'Mogullzr', '2026-01-29 14:09:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '924');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '924');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '924');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (925, '1995年考研数学卷4第15题', '简单', '考研数学1995年卷4真题', '设某产品的需求函数为$Q = Q(P)$，收益函数为$R = PQ$，其中$P$为产品价格，$Q$为需求量(产品的产量),$Q(P)$为单调减函数．如果当价格为$P_{0}$，对应产量为$Q_{0}$时，边际收益$\\frac{dR}{dQ}​_{Q=Q_{0}} = a > 0$,
收益对价格的边际效应$\\frac{dR}{dP}​_{P=P_{0}} = c < 0$,
需求对价格的弹性$E_{P} = b > 1$．求$P_{0}$和$Q_{0}$．', '[]', '$P_{0} = \\frac{ab}{b - 1}$,$Q_{0} = −\\frac{c}{b - 1}$
', '已知收益函数$R = PQ(P)$，其中$Q(P)$是单调减函数。在点$(P_{0}, Q_{0})$处，给定边际收益$\\frac{dR}{dQ}​_{Q=Q_{0}} = a > 0$，收益对价格的边际效应$\\frac{dR}{dP}​_{P=P_{0}} = c < 0$，需求价格弹性$E_{P} = b > 1$。需求价格弹性定义为$E_{P} = −\\frac{dQ}{dP} ⋅ \\frac{P}{Q}$，故在$P = P_{0}$时，有：

$$
− \\frac{dQ}{dP}​_{P=P_{0}} ⋅ \\frac{P_{0}}{Q_{0}} = b
$$

即：

$$
\\frac{dQ}{dP}​_{P=P_{0}} = −b\\frac{Q_{0}}{P_{0}}
$$

收益对价格的边际效应为：

$$
\\frac{dR}{dP}​_{P=P_{0}} = Q_{0} + P_{0} \\frac{dQ}{dP}​_{P=P_{0}} = c
$$

代入上式：

$$
Q_{0} + P_{0} (−b\\frac{Q_{0}}{P_{0}}) = Q_{0}(1 - b) = c
$$

解得：

$$
Q_{0} = \\frac{c}{1 - b} = −\\frac{c}{b - 1}
$$

边际收益为：

$$
\\frac{dR}{dQ}​_{Q=Q_{0}} = P_{0} + Q_{0} \\frac{dP}{dQ}​_{Q=Q_{0}} = a
$$

由于$\\frac{dP}{dQ}​_{Q=Q_{0}} = \\frac{1}{\\frac{dQ}{dP}∣_{P=P_{0}}} = −\\frac{P_{0}}{bQ_{0}}$，代入得：

$$
P_{0} + Q_{0} (−\\frac{P_{0}}{bQ_{0}}) = P_{0} (1 - \\frac{1}{b}) = a
$$

解得：

$$
P_{0} = a ⋅ \\frac{b}{b - 1} = \\frac{ab}{b - 1}
$$

因此，$P_{0} = \\frac{ab}{b - 1}$,$Q_{0} = −\\frac{c}{b - 1}$。
', 9, 'Mogullzr', '2026-01-29 14:09:41', 9, 'Mogullzr', '2026-01-29 14:09:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '925');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '925');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1033', '925');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (926, '1995年考研数学卷4第16题', '简单', '考研数学1995年卷4真题', '设$f(x)$,$g(x)$在区间$\\lbrack −a, a \\rbrack$($a > 0$)上连续，$g(x)$为偶函数，
且$f(x)$满足条件$f(x) + f(−x) = A$（$A$为常数）．(1) 证明$\\int_{−a}^{a} f(x)g(x)dx = A \\int_{0}^{a} g(x)dx$；(2) 利用(I)的结论计算定积分$\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} ∣ \\sin x∣ arctan e^{x}dx$．', '[]', '
$\\frac{π}{2}$
', '(1) 证明：考虑积分$\\int_{−a}^{a} f(x)g(x) dx$。将其拆分为两部分：

$$
\\int_{−a}^{a} f(x)g(x) dx = \\int_{−a}^{0} f(x)g(x) dx + \\int_{0}^{a} f(x)g(x) dx.
$$

在第一个积分中，令$u = −x$，则当$x = −a$时$u = a$，当$x = 0$时$u = 0$，且$dx = −du$。因此：

$$
\\int_{−a}^{0} f(x)g(x) dx = \\int_{a}^{0} f(−u)g(−u)(−du) = \\int_{0}^{a} f(−u)g(u) du,
$$

其中$g(−u) = g(u)$因为$g(x)$是偶函数。将变量$u$换回$x$，得：

$$
\\int_{−a}^{0} f(x)g(x) dx = \\int_{0}^{a} f(−x)g(x) dx.
$$

于是原积分变为：

$$
\\int_{−a}^{a} f(x)g(x) dx = \\int_{0}^{a} f(−x)g(x) dx + \\int_{0}^{a} f(x)g(x) dx = \\int_{0}^{a} \\lbrack f(−x) + f(x) \\rbrack g(x) dx.
$$

由条件$f(x) + f(−x) = A$，代入得：

$$
\\int_{−a}^{a} f(x)g(x) dx = A \\int_{0}^{a} g(x) dx.
$$

故结论成立。
(2) 计算积分$\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} ∣ \\sin x∣ arctan e^{x} dx$。令$f(x) = arctan e^{x}$，$g(x) = ∣ \\sin x∣$，区间$\\lbrack −a, a \\rbrack$中$a = \\frac{π}{2}$。首先，$g(x) = ∣ \\sin x∣$是偶函数，因为$∣ \\sin(−x)∣ = ∣ - \\sin x∣ = ∣ \\sin x∣$。其次，验证$f(x) + f(−x) = A$：

$$
f(x) + f(−x) = arctan e^{x} + arctan e^{−x}.
$$

由于$e^{x} > 0$，有恒等式$arctan u + arctan \\frac{1}{u} = \\frac{π}{2}$（当$u > 0$），故：

$$
arctan e^{x} + arctan e^{−x} = \\frac{π}{2},
$$

即$A = \\frac{π}{2}$。根据 (1) 的结论：

$$
\\int_{−\\frac{π}{2}}^{\\frac{π}{2}} ∣ \\sin x∣ arctan e^{x} dx = A \\int_{0}^{\\frac{π}{2}} ∣ \\sin x∣ dx = \\frac{π}{2} \\int_{0}^{\\frac{π}{2}} \\sin x dx,
$$

因为在$\\lbrack 0, \\frac{π}{2} \\rbrack$上$\\sin x ≥ 0$，所以$∣ \\sin x∣ = \\sin x$。计算：

$$
\\int_{0}^{\\frac{π}{2}} \\sin x dx =  \\lbrack − \\cos x \\rbrack 02π​​ = − \\cos \\frac{π}{2} + \\cos 0 = 0 + 1 = 1.
$$

因此，积分值为：

$$
\\frac{π}{2} × 1 = \\frac{π}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:09:41', 9, 'Mogullzr', '2026-01-29 14:09:41', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '926');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '926');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '926');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (927, '1995年考研数学卷4第17题', '简单', '考研数学1995年卷4真题', '已知向量组(I)$α_{1}, α_{2}, α_{3}$；(II)$α_{1}, α_{2}, α_{3}, α_{4}$；
(III)$α_{1}, α_{2}, α_{3}, α_{5}$．
如果各向量组的秩分别为$r(I) = r(II) = 3$,$r(III) = 4$，
证明:向量组$α_{1}, α_{2}, α_{3}, α_{5} - α_{4}$的秩为4.', '[]', '
向量组$α_{1}, α_{2}, α_{3}, α_{5} - α_{4}$的秩为 4。
', '
已知$r(I) = 3$，即$α_{1}, α_{2}, α_{3}$线性无关。
已知$r(II) = 3$，即$α_{4}$可由$α_{1}, α_{2}, α_{3}$线性表示，设$α_{4} = c_{1}α_{1} + c_{2}α_{2} + c_{3}α_{3}$，其中$c_{1}, c_{2}, c_{3}$为标量。
已知$r(III) = 4$，即$α_{1}, α_{2}, α_{3}, α_{5}$线性无关。
考虑向量组$α_{1}, α_{2}, α_{3}, α_{5} - α_{4}$。要证明其秩为 4，只需证明该向量组线性无关。
设存在标量$k_{1}, k_{2}, k_{3}, k_{4}$，使得


$$
k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3} + k_{4}(α_{5} - α_{4}) = 0.
$$

展开得


$$
k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3} + k_{4}α_{5} - k_{4}α_{4} = 0.
$$

将$α_{4} = c_{1}α_{1} + c_{2}α_{2} + c_{3}α_{3}$代入，得


$$
k_{1}α_{1} + k_{2}α_{2} + k_{3}α_{3} + k_{4}α_{5} - k_{4}(c_{1}α_{1} + c_{2}α_{2} + c_{3}α_{3}) = 0.
$$

整理得


$$
(k_{1} - k_{4}c_{1})α_{1} + (k_{2} - k_{4}c_{2})α_{2} + (k_{3} - k_{4}c_{3})α_{3} + k_{4}α_{5} = 0.
$$

由于$α_{1}, α_{2}, α_{3}, α_{5}$线性无关，因此系数必须为零：


$$
\\begin{cases} k_{1} - k_{4}c_{1} = 0 \\\\ k_{2} - k_{4}c_{2} = 0 \\\\ k_{3} - k_{4}c_{3} = 0 \\\\ k_{4} = 0. \\end{cases}
$$

由$k_{4} = 0$代入前三个方程，得$k_{1} = 0, k_{2} = 0, k_{3} = 0$。
因此，$k_{1} = k_{2} = k_{3} = k_{4} = 0$，即$α_{1}, α_{2}, α_{3}, α_{5} - α_{4}$线性无关，故其秩为 4。
', 9, 'Mogullzr', '2026-01-29 14:09:42', 9, 'Mogullzr', '2026-01-29 14:09:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '927');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '927');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '927');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (928, '1995年考研数学卷4第18题', '简单', '考研数学1995年卷4真题', '已知二次型$f(x_{1}, x_{2}, x_{3}) = 4x_{2}^{2} - 3x_{3}^{2} + 4x_{1}x_{2} - 4x_{1}x_{3} + 8x_{2}x_{3}$．(1) 写出二次型$f$的矩阵表达式；(2) 用正交变换把二次型$f$化为标准形，并写出相应的正交矩阵．', '[]', '
(1) 二次型$f$的矩阵表达式为$f(x) = x^{T}Ax$，其中


$$
A = \\left( \\begin{array}{ccc}
0 & 2 & −2 \\\\
2 & 4 & 4 \\\\
−2 & 4 & −3 \\\\
\\end{array} \\right)
$$

(2) 通过正交变换，二次型$f$化为标准形$y_{1}^{2} + 6y_{2}^{2} - 6y_{3}^{2}$，相应的正交矩阵为


$$
Q = \\left( \\begin{array}{ccc}
−\\frac{2}{\\sqrt{5}} & \\frac{1}{\\sqrt{30}} & \\frac{1}{\\sqrt{6}} \\\\
0 & \\frac{5}{\\sqrt{30}} & −\\frac{1}{\\sqrt{6}} \\\\
\\frac{1}{\\sqrt{5}} & \\frac{2}{\\sqrt{30}} & \\frac{2}{\\sqrt{6}} \\\\
\\end{array} \\right)
$$

', '
(1) 二次型$f(x_{1}, x_{2}, x_{3}) = 4x_{2}^{2} - 3x_{3}^{2} + 4x_{1}x_{2} - 4x_{1}x_{3} + 8x_{2}x_{3}$的矩阵$A$是对称矩阵，其中$a_{11} = 0$（无$x_{1}^{2}$项），$a_{22} = 4$，$a_{33} = −3$，交叉项系数对应$2a_{12} = 4$得$a_{12} = 2$，$2a_{13} = −4$得$a_{13} = −2$，$2a_{23} = 8$得$a_{23} = 4$，故


$$
A = \\left( \\begin{array}{ccc}
0 & 2 & −2 \\\\
2 & 4 & 4 \\\\
−2 & 4 & −3 \\\\
\\end{array} \\right)
$$

(2) 求矩阵$A$的特征值和特征向量。解特征方程$det(A - λI) = 0$：


$$
det \\left( \\begin{array}{ccc}
−λ & 2 & −2 \\\\
2 & 4 - λ & 4 \\\\
−2 & 4 & −3 - λ \\\\
\\end{array} \\right) = −λ^{3} + λ^{2} + 36λ - 36 = 0
$$

解得$λ = 1, 6, −6$。
求特征向量：
对$λ = 1$，解$(A - I)v = 0$，得$v_{1} = (−2, 0, 1)T$。对$λ = 6$，解$(A - 6I)v = 0$，得$v_{2} = (1, 5, 2)T$。对$λ = −6$，解$(A + 6I)v = 0$，得$v_{3} = (1, −1, 2)T$。
特征向量相互正交。单位化：$∥v_{1}∥ = \\sqrt{5}$，得$u_{1} = \\frac{1}{\\sqrt{5}}(−2, 0, 1)T$。$∥v_{2}∥ = \\sqrt{30}$，得$u_{2} = \\frac{1}{\\sqrt{30}}(1, 5, 2)T$。$∥v_{3}∥ = \\sqrt{6}$，得$u_{3} = \\frac{1}{\\sqrt{6}}(1, −1, 2)T$。
正交矩阵$Q$以$u_{1}, u_{2}, u_{3}$为列向量，标准形为$y_{1}^{2} + 6y_{2}^{2} - 6y_{3}^{2}$。
', 9, 'Mogullzr', '2026-01-29 14:09:42', 9, 'Mogullzr', '2026-01-29 14:09:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '928');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '928');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (929, '1995年考研数学卷4第19题', '简单', '考研数学1995年卷4真题', '假设一厂家生产的每台仪器，以概率$0.70$可以直接出厂；
以概率$0.30$需进一步调试，经调试后以概率$0.80$可以出厂；以概率$0.20$定为不合格品不能出厂．
现该厂新生产了$n$（$n ≥ 2$）台仪器（假设各台仪器的生产过程相互独立）．求：(1) 全部能出厂的概率$α$；(2) 其中恰好有两台不能出厂的概率$β$；(3) 其中至少有两台不能出厂的概率$θ$．', '[]', '
(1)$α = (0.94)n$
(2)$β = (\\frac{n}{2})(0.06)2(0.94)n−2$
(3)$θ = 1 - (0.94)n - n ⋅ 0.06 ⋅ (0.94)n−1$
', '
首先，计算每台仪器能出厂的概率：
直接出厂概率为$0.70$需调试的概率为$0.30$，调试后出厂的概率为$0.80$最终能出厂的概率为$0.70 + 0.30 × 0.80 = 0.94$不能出厂的概率为$0.30 × 0.20 = 0.06$
设$X$为不能出厂的台数，则$X ∼ Binomial(n, 0.06)$。
(1) 全部能出厂的概率：

$$
α = (0.94)n
$$

(2) 恰好两台不能出厂的概率：

$$
β = (\\frac{n}{2})(0.06)2(0.94)n−2
$$

(3) 至少两台不能出厂的概率：

$$
θ = 1 - (0.94)n - n ⋅ 0.06 ⋅ (0.94)n−1
$$

', 9, 'Mogullzr', '2026-01-29 14:09:42', 9, 'Mogullzr', '2026-01-29 14:09:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '929');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '929');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (930, '1995年考研数学卷4第20题', '简单', '考研数学1995年卷4真题', '已知随机变量$X$和$Y$的联合概率密度为
$$
f(x, y) = \\begin{cases} 4xy & 0 ≤ x ≤ 1, 0 ≤ y ≤ 1 \\\\ 0 & 其他 \\end{cases}
$$
求$X$和$Y$联合分布函数$F(x, y)$．', '[]', '


$$
F(x, y) = \\begin{cases} 0 & x < 0y < 0 \\\\ x^{2}y^{2} & 0 ≤ x ≤ 1, 0 ≤ y ≤ 1 \\\\ x^{2} & 0 ≤ x ≤ 1, y > 1 \\\\ y^{2} & x > 1, 0 ≤ y ≤ 1 \\\\ 1 & x > 1, y > 1 \\end{cases}
$$

', '
将整个平面分为五个区域(如下图)：

(Ⅰ) 当$(x, y) ∈ D_{0}$，即$x < 0$或$y < 0$时，$F(x, y) = 0$。
(Ⅱ) 当$(x, y) ∈ D_{1}$，即$0 ≤ x ≤ 1$且$0 ≤ y ≤ 1$时，

$$
F(x, y) = \\int_{0}^{x} \\int_{0}^{y} 4st dt ds = \\int_{0}^{x} 2sy^{2} ds = x^{2}y^{2}.
$$

(Ⅲ) 当$(x, y) ∈ D_{2}$，即$0 ≤ x ≤ 1$且$y > 1$时，

$$
F(x, y) = \\int_{0}^{x} \\int_{0}^{y} 4st dt ds = \\int_{0}^{x} ds \\int_{0}^{1} 4st dt = \\int_{0}^{x} 2s ds = x^{2}.
$$

(Ⅳ) 当$(x, y) ∈ D_{3}$，即$x > 1$且$0 ≤ y ≤ 1$时，与$D_{2}$类似，有$F(x, y) = y^{2}$。
(Ⅴ) 当$(x, y) ∈ D_{4}$，即$x > 1$且$y > 1$时，$F(x, y) = 1$。
', 9, 'Mogullzr', '2026-01-29 14:09:42', 9, 'Mogullzr', '2026-01-29 14:09:42', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '930');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '930');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '930');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (931, '1995年考研数学卷5第1题', '简单', '考研数学1995年卷5真题', '设$\\lim_{x→∞} (\\frac{1+x}{x})^{ax} = \\int_{−∞}^{a} te^{t}dt$，
则常数$a$等于 ______．', '[]', '
2
', '
首先，计算左边的极限：


$$
\\lim_{x→∞} (\\frac{1 + x}{x})^{ax} = \\lim_{x→∞} (1 + \\frac{1}{x})^{ax} =  \\lbrack \\lim_{x→∞} (1 + \\frac{1}{x})^{x} \\rbrack ^{a} = e^{a}.
$$

其次，计算右边的积分：


$$
\\int_{−∞}^{a} te^{t} dt.
$$

使用分部积分法，设$u = t$,$dv = e^{t} dt$，则$du = dt$,$v = e^{t}$，可得：


$$
∫ te^{t} dt = te^{t} - ∫ e^{t} dt = te^{t} - e^{t} + C = e^{t}(t - 1) + C.
$$

因此，


$$
\\int_{−∞}^{a} te^{t} dt =  \\lbrack e^{t}(t - 1) \\rbrack _{−∞}^{a} = e^{a}(a - 1) - \\lim_{t→−∞} e^{t}(t - 1).
$$

计算极限：


$$
\\lim_{t→−∞} e^{t}(t - 1) = 0,
$$

因为指数衰减$e^{t}$主导线性增长$t - 1$。所以，


$$
\\int_{−∞}^{a} te^{t} dt = e^{a}(a - 1).
$$

由题设，左右两边相等：


$$
e^{a} = e^{a}(a - 1).
$$

假设$e^{a} \\neq 0$，两边除以$e^{a}$得：


$$
1 = a - 1,
$$

解得$a = 2$.
', 9, 'Mogullzr', '2026-01-29 14:09:44', 9, 'Mogullzr', '2026-01-29 14:09:44', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '931');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '931');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1065', '931');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (932, '1995年考研数学卷5第2题', '', '考研数学1995年卷5真题', '/problems/other/912', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (933, '1995年考研数学卷5第3题', '', '考研数学1995年卷5真题', '/problems/other/913', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (934, '1995年考研数学卷5第4题', '', '考研数学1995年卷5真题', '/problems/other/914', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (935, '1995年考研数学卷5第5题', '简单', '考研数学1995年卷5真题', '设$X$是一个随机变量，其概率密度为$f(x) = \\begin{cases} 1 + x & −1 ≤ x ≤ 0 \\\\ 1 - x & 0 < x ≤ 1 \\\\ 0 & 其他 \\end{cases}$则方差$DX =$______．', '[]', '$\\frac{1}{6}$
', '随机变量$X$的方差计算公式为$DX = E \\lbrack X^{2} \\rbrack  - (EX)2$。首先计算期望$EX$：

$$
EX = \\int_{−1}^{0} x(1 + x) dx + \\int_{0}^{1} x(1 - x) dx = \\int_{−1}^{0}(x + x^{2}) dx + \\int_{0}^{1}(x - x^{2}) dx.
$$

计算第一个积分：

$$
\\int_{−1}^{0}(x + x^{2}) dx =  \\lbrack \\frac{x^{2}}{2} + \\frac{x^{3}}{3} \\rbrack _{−1}^{0} = 0 - (\\frac{1}{2} - \\frac{1}{3}) = −\\frac{1}{6}.
$$

计算第二个积分：

$$
\\int_{0}^{1}(x - x^{2}) dx =  \\lbrack \\frac{x^{2}}{2} - \\frac{x^{3}}{3} \\rbrack _{0}^{1} = (\\frac{1}{2} - \\frac{1}{3}) - 0 = \\frac{1}{6}.
$$

因此，$EX = −\\frac{1}{6} + \\frac{1}{6} = 0$。
由于$EX = 0$，方差简化为$DX = E \\lbrack X^{2} \\rbrack$。计算$E \\lbrack X^{2} \\rbrack$：

$$
E \\lbrack X^{2} \\rbrack  = \\int_{−1}^{0} x^{2}(1 + x) dx + \\int_{0}^{1} x^{2}(1 - x) dx = \\int_{−1}^{0}(x^{2} + x^{3}) dx + \\int_{0}^{1}(x^{2} - x^{3}) dx.
$$

计算第一个积分：

$$
\\int_{−1}^{0}(x^{2} + x^{3}) dx =  \\lbrack \\frac{x^{3}}{3} + \\frac{x^{4}}{4} \\rbrack _{−1}^{0} = 0 - (−\\frac{1}{3} + \\frac{1}{4}) = \\frac{1}{3} - \\frac{1}{4} = \\frac{1}{12}.
$$

计算第二个积分：

$$
\\int_{0}^{1}(x^{2} - x^{3}) dx =  \\lbrack \\frac{x^{3}}{3} - \\frac{x^{4}}{4} \\rbrack _{0}^{1} = (\\frac{1}{3} - \\frac{1}{4}) - 0 = \\frac{1}{12}.
$$

因此，$E \\lbrack X^{2} \\rbrack  = \\frac{1}{12} + \\frac{1}{12} = \\frac{1}{6}$，故$DX = \\frac{1}{6}$。
', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '935');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '935');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '935');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (936, '1995年考研数学卷5第6题', '', '考研数学1995年卷5真题', '/problems/other/916', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (937, '1995年考研数学卷5第7题', '', '考研数学1995年卷5真题', '/problems/other/917', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (938, '1995年考研数学卷5第8题', '简单', '考研数学1995年卷5真题', '设$n$维行向量$α = (\\frac{1}{2}, 0, 0, \\frac{1}{2})$，
矩阵$A = E - α^{T}α$,$B = E + 2α^{T}α$，
其中$E$为$n$阶单位矩阵，则$AB$等于', '[''$O$．'', ''$−E$．'', ''$E$．'', ''$E + α^{T}α$．'']', "['C']", '给定n维行向量$α = (\\frac{1}{2}, 0, 0, \\frac{1}{2})$，矩阵$A = E - α^{T}α$和$B = E + 2α^{T}α$，其中$E$为n阶单位矩阵。计算$AB$：
设$C = α^{T}α$，则$A = E - C$，$B = E + 2C$，所以：
$$
AB = (E - C)(E + 2C) = E ⋅ E + E ⋅ 2C - C ⋅ E - C ⋅ 2C = E + 2C - C - 2C^{2} = E + C - 2C^{2}
$$
其中$C^{2} = (α^{T}α)(α^{T}α) = α^{T}(αα^{T})α$。注意$αα^{T}$是一个标量，即$β = αα^{T} = \\sum_{k=1}^{n} α_{k}^{2}$。计算$β$：
由于$α$的第一个和最后一个分量为$\\frac{1}{2}$，其余分量为0，故：
$$
β = (\\frac{1}{2})^{2} + (\\frac{1}{2})^{2} = \\frac{1}{4} + \\frac{1}{4} = \\frac{1}{2}
$$
因此$C^{2} = βC = \\frac{1}{2}C$。代入$AB$：
$$
AB = E + C - 2 ⋅ \\frac{1}{2}C = E + C - C = E
$$
故$AB = E$，对应选项C。', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '938');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '938');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '938');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (939, '1995年考研数学卷5第9题', '简单', '考研数学1995年卷5真题', '设矩阵$A_{m×n}$的秩为$r(A) = m < n$，$E_{m}$为$m$阶单位矩阵，下述结论中正确的是', '[''$A$的任意$m$个列向量必线性无关．'', ''$A$的任意一个$m$阶子式不等于零．'', ''非齐次线性方程组$Ax = b$一定有无穷多组解．'', ''$A$通过初等行变换，必可以化为$(E_{m}, 0)$的形式．'']', "['C']", '
已知矩阵$A_{m×n}$的秩$r(A) = m < n$，即$A$行满秩且列数多于行数。选项 A：$A$的列向量中最多有$m$个线性无关，但任意$m$个列向量不一定线性无关，故 A 错误。选项 B：$A$至少有一个$m$阶子式非零，但并非所有$m$阶子式都不为零，故 B 错误。选项 C：非齐次线性方程组$Ax = b$的系数矩阵行满秩，列空间为$R^{m}$，因此对任意$b$都有解；且自由变量个数为$n - m > 0$，解必有无穷多组，故 C 正确。选项 D：初等行变换化得的行最简形不一定为$(E_{m}, 0)$，因主元列不一定位于前$m$列，故 D 错误。', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '939');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '939');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '939');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (940, '1995年考研数学卷5第10题', '', '考研数学1995年卷5真题', '/problems/other/920', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (941, '1995年考研数学卷5第11题', '', '考研数学1995年卷5真题', '/problems/other/921', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (942, '1995年考研数学卷5第12题', '简单', '考研数学1995年卷5真题', '求不定积分$∫(arcsin x)2dx$．', '[]', '

$$
∫(arcsin x)2dx = x(arcsin x)2 + 2\\sqrt{1 - x^{2}} arcsin x - 2x + C
$$

', '为了求解不定积分$∫(arcsin x)2dx$，使用代换法。令$t = arcsin x$，则$x = \\sin t$，且$dx = \\cos tdt$。代入积分得：

$$
∫(arcsin x)2dx = ∫ t^{2} \\cos tdt
$$

接下来，计算$∫ t^{2} \\cos tdt$，使用分部积分法。令$u = t^{2}$，$dv = \\cos tdt$，则$du = 2tdt$，$v = \\sin t$。于是：

$$
∫ t^{2} \\cos tdt = t^{2} \\sin t - ∫ 2t \\sin tdt = t^{2} \\sin t - 2 ∫ t \\sin tdt
$$

再计算$∫ t \\sin tdt$，再次使用分部积分。令$u = t$，$dv = \\sin tdt$，则$du = dt$，$v = − \\cos t$。于是：

$$
∫ t \\sin tdt = −t \\cos t - ∫(− \\cos t)dt = −t \\cos t + ∫ \\cos tdt = −t \\cos t + \\sin t + C_{1}
$$

代入回原式：

$$
∫ t^{2} \\cos tdt = t^{2} \\sin t - 2(−t \\cos t + \\sin t) + C = t^{2} \\sin t + 2t \\cos t - 2 \\sin t + C
$$

将$t = arcsin x$代回，注意$\\sin t = x$，$\\cos t = \\sqrt{1 - x^{2}}$，得：

$$
∫(arcsin x)2dx = x(arcsin x)2 + 2\\sqrt{1 - x^{2}} arcsin x - 2x + C
$$

验证求导后等于原函数，确认结果正确。
', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '942');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '942');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '942');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (943, '1995年考研数学卷5第13题', '', '考研数学1995年卷5真题', '/problems/other/926', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (944, '1995年考研数学卷5第14题', '', '考研数学1995年卷5真题', '/problems/other/925', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (945, '1995年考研数学卷5第15题', '简单', '考研数学1995年卷5真题', '设$f(x)$在区间$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，证明：在$(a, b)$内至少存在一点$ξ$，使得
$$
\\frac{bf(b) - af(a)}{b - a} = f(ξ) + ξf^{′}(ξ).
$$
', '[]', '见解析
', '
考虑函数$g(x) = xf(x)$。由于$f(x)$在区间$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导，因此$g(x)$在$\\lbrack a, b \\rbrack$上连续，在$(a, b)$内可导。根据拉格朗日中值定理，存在一点$ξ ∈ (a, b)$，使得


$$
g^{′}(ξ) = \\frac{g(b) - g(a)}{b - a}.
$$

计算$g(b) - g(a) = bf(b) - af(a)$，且$g^{′}(x) = f(x) + xf^{′}(x)$，所以


$$
g^{′}(ξ) = f(ξ) + ξf^{′}(ξ) = \\frac{bf(b) - af(a)}{b - a}.
$$

因此，原等式成立。
', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '945');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '945');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '945');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (946, '1995年考研数学卷5第16题', '简单', '考研数学1995年卷5真题', '求二元函数$z = f(x, y) = x^{2}y(4 - x - y)$在由直线$x + y = 6$，$x$轴和$y$轴所围成的闭区域$D$上的极值、最大值与最小值．', '[]', '函数在点$(2, 1)$处取得极大值$4$，在点$(4, 2)$处取得最小值$−64$。最大值是$4$，最小值是$−64$。
', '函数$z = f(x, y) = x^{2}y(4 - x - y)$在闭区域$D$上连续，因此存在最大值和最小值。区域$D$是由直线$x + y = 6$、$x$轴和$y$轴所围成的三角形区域，其中$x ≥ 0$，$y ≥ 0$，且$x + y ≤ 6$。
步骤 1：求内部临界点
计算一阶偏导数：

$$
f_{x} = xy(8 - 3x - 2y),  f_{y} = x^{2}(4 - x - 2y).
$$

令$f_{x} = 0$和$f_{y} = 0$，在内部点（$x > 0, y > 0$）上，由$f_{y} = 0$得$4 - x - 2y = 0$，即$x + 2y = 4$；由$f_{x} = 0$得$8 - 3x - 2y = 0$。解方程组：

$$
\\begin{cases} x + 2y = 4 \\\\ 3x + 2y = 8 \\end{cases}
$$

相减得$2x = 4$，即$x = 2$，代入得$y = 1$。临界点为$(2, 1)$，函数值$f(2, 1) = 4$。
步骤 2：检查边界
当$x = 0$或$y = 0$时，$f(x, y) = 0$。当$x + y = 6$时，令$y = 6 - x$，代入函数得：$f(x, 6 - x) = −2x^{2}(6 - x).$定义$g(x) = −2x^{2}(6 - x)$，其中$x ∈  \\lbrack 0, 6 \\rbrack$。求导：$g^{′}(x) = −24x + 6x^{2} = 6x(x - 4).$令$g^{′}(x) = 0$，得$x = 0$或$x = 4$。计算函数值：
$x = 0$时，$g(0) = 0$；$x = 4$时，$g(4) = −64$，对应点$(4, 2)$；$x = 6$时，$g(6) = 0$。
步骤 3：比较函数值
内部临界点：$(2, 1)$，$f = 4$；边界点：$(0, 0)$、$(6, 0)$、$(0, 6)$处$f = 0$，$(4, 2)$处$f = −64$。
因此，函数在点$(2, 1)$处取得最大值$4$，在点$(4, 2)$处取得最小值$−64$。
', 9, 'Mogullzr', '2026-01-29 14:09:45', 9, 'Mogullzr', '2026-01-29 14:09:45', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '946');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '946');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '946');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (947, '1995年考研数学卷5第17题', '简单', '考研数学1995年卷5真题', '对于线性方程组$\\begin{cases} λx_{1} + x_{2} + x_{3} = λ - 3 \\\\ x_{1} + λx_{2} + x_{3} = −2 \\\\ x_{1} + x_{2} + λx_{3} = −2 \\end{cases}$讨论$λ$取何值时，
方程组无解、有唯一解和有无穷解？在方程组有无穷解时，试用导出组的基础解系表示全部解．', '[]', '当$λ \\neq 1$且$λ \\neq −2$时，方程组有唯一解；当$λ = 1$时，方程组有无穷多解；当$λ = −2$时，方程组无解。
在方程组有无穷多解时（即$λ = 1$），全部解为：


$$
\\left( \\begin{array}{c}
x_{1} \\\\
x_{2} \\\\
x_{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
0 \\\\
\\end{array} \\right) + k_{1} \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + k_{2} \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right) ,  k_{1}, k_{2} ∈ R.
$$

', '方程组的系数矩阵为$A = \\left( \\begin{array}{ccc}
λ & 1 & 1 \\\\
1 & λ & 1 \\\\
1 & 1 & λ \\\\
\\end{array} \\right)$，增广矩阵为$(A ∣ b) = \\left( \\begin{array}{cccc}
λ & 1 & 1 & λ - 3 \\\\
1 & λ & 1 & −2 \\\\
1 & 1 & λ & −2 \\\\
\\end{array} \\right)$。
计算系数矩阵的行列式：


$$
det(A) = λ ⋅ det \\left( \\begin{array}{cc}
λ & 1 \\\\
1 & λ \\\\
\\end{array} \\right) - 1 ⋅ det \\left( \\begin{array}{cc}
1 & 1 \\\\
1 & λ \\\\
\\end{array} \\right) + 1 ⋅ det \\left( \\begin{array}{cc}
1 & λ \\\\
1 & 1 \\\\
\\end{array} \\right) = λ(λ^{2} - 1) - (λ - 1) + (1 - λ) = λ^{3} - 3λ + 2.
$$

因式分解得$det(A) = (λ - 1)2(λ + 2)$。
当$det(A) \\neq 0$，即$λ \\neq 1$且$λ \\neq −2$时，方程组有唯一解。
当$λ = 1$时，方程组变为：


$$
\\begin{cases} x_{1} + x_{2} + x_{3} = −2 \\\\ x_{1} + x_{2} + x_{3} = −2 \\\\ x_{1} + x_{2} + x_{3} = −2 \\end{cases}
$$

即一个方程$x_{1} + x_{2} + x_{3} = −2$，故有无穷多解。
当$λ = −2$时，方程组变为：


$$
\\begin{cases} −2x_{1} + x_{2} + x_{3} = −5 \\\\ x_{1} - 2x_{2} + x_{3} = −2 \\\\ x_{1} + x_{2} - 2x_{3} = −2. \\end{cases}
$$

从后两个方程可得$x_{2} = x_{3}$，代入第二个方程得$x_{1} - x_{2} = −2$，但代入第一个方程得$x_{1} - x_{2} = \\frac{5}{2}$，矛盾，故无解。
当$λ = 1$时，导出组（齐次方程组）为$x_{1} + x_{2} + x_{3} = 0$。基础解系包含两个线性无关的解向量，取为$ξ_{1} = \\left( \\begin{array}{c}
−1 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$和$ξ_{2} = \\left( \\begin{array}{c}
−1 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$。非齐次方程组的一个特解为$η^{∗} = \\left( \\begin{array}{c}
−2 \\\\
0 \\\\
0 \\\\
\\end{array} \\right)$。故全部解为特解加上导出组基础解系的线性组合。
', 9, 'Mogullzr', '2026-01-29 14:09:46', 9, 'Mogullzr', '2026-01-29 14:09:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '947');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '947');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (948, '1995年考研数学卷5第18题', '简单', '考研数学1995年卷5真题', '设三阶矩阵$A$满足$Aα_{i} = iα_{i}$($i = 1, 2, 3$)，
其中列向量$α_{1} = (1, 2, 2)T$,$α_{2} = (2, −2, 1)T$,$α_{3} = (−2, −1, 2)T$，
试求矩阵$A$．', '[]', '

$$
A = \\left( \\begin{array}{ccc}
\\frac{7}{3} & 0 & −\\frac{2}{3} \\\\
0 & \\frac{5}{3} & −\\frac{2}{3} \\\\
−\\frac{2}{3} & −\\frac{2}{3} & 2 \\\\
\\end{array} \\right)
$$

', '由条件$Aα_{i} = iα_{i}$可知，$α_{1}, α_{2}, α_{3}$分别是矩阵$A$的特征向量，对应的特征值分别为$1, 2, 3$。构造矩阵$P = (α_{1}, α_{2}, α_{3}) = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & −2 & −1 \\\\
2 & 1 & 2 \\\\
\\end{array} \\right)$和对角矩阵$D = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
0 & 2 & 0 \\\\
0 & 0 & 3 \\\\
\\end{array} \\right)$，则$A = PDP^{−1}$。
计算$P$的行列式：$det(P) = −27 \\neq 0$，故$P$可逆。计算$P^{−1}$得：

$$
P^{−1} = \\left( \\begin{array}{ccc}
\\frac{1}{9} & \\frac{2}{9} & \\frac{2}{9} \\\\
\\frac{2}{9} & −\\frac{2}{9} & \\frac{1}{9} \\\\
−\\frac{2}{9} & −\\frac{1}{9} & \\frac{2}{9} \\\\
\\end{array} \\right)
$$

计算$DP^{−1}$：

$$
DP^{−1} = \\left( \\begin{array}{ccc}
\\frac{1}{9} & \\frac{2}{9} & \\frac{2}{9} \\\\
\\frac{4}{9} & −\\frac{4}{9} & \\frac{2}{9} \\\\
−\\frac{2}{3} & −\\frac{1}{3} & \\frac{2}{3} \\\\
\\end{array} \\right)
$$

最后计算$A = P ⋅ (DP^{−1})$：

$$
A = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & −2 & −1 \\\\
2 & 1 & 2 \\\\
\\end{array} \\right) \\left( \\begin{array}{ccc}
\\frac{1}{9} & \\frac{2}{9} & \\frac{2}{9} \\\\
\\frac{4}{9} & −\\frac{4}{9} & \\frac{2}{9} \\\\
−\\frac{2}{3} & −\\frac{1}{3} & \\frac{2}{3} \\\\
\\end{array} \\right) = \\left( \\begin{array}{ccc}
\\frac{7}{3} & 0 & −\\frac{2}{3} \\\\
0 & \\frac{5}{3} & −\\frac{2}{3} \\\\
−\\frac{2}{3} & −\\frac{2}{3} & 2 \\\\
\\end{array} \\right)
$$

验证：$Aα_{1} = α_{1}$，$Aα_{2} = 2α_{2}$，$Aα_{3} = 3α_{3}$，满足条件。
', 9, 'Mogullzr', '2026-01-29 14:09:46', 9, 'Mogullzr', '2026-01-29 14:09:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '948');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '948');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '948');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (949, '1995年考研数学卷5第19题', '', '考研数学1995年卷5真题', '/problems/other/929', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:09:46', 9, 'Mogullzr', '2026-01-29 14:09:46', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (950, '1995年考研数学卷5第20题', '简单', '考研数学1995年卷5真题', '假设随机变量$X$服从参数为$2$的指数分布，证明：$Y = 1 - e^{−2X}$在区间$(0, 1)$上服从均匀分布．', '[]', '见解析
', '
设$X$服从参数为$2$的指数分布，其概率密度函数为$f_{X}(x) = 2e^{−2x}$，$x ≥ 0$。考虑$Y = 1 - e^{−2X}$。当$X = 0$时，$Y = 0$；当$X → ∞$时，$Y → 1$，因此$Y$的取值范围为$(0, 1)$。
求$Y$的累积分布函数$F_{Y}(y) = P(Y ≤ y)$。对于$y ∈ (0, 1)$，有：


$$
P(Y ≤ y) = P(1 - e^{−2X} ≤ y) = P(e^{−2X} ≥ 1 - y) = P(−2X ≥ \\ln(1 - y)) = P (X ≤ −\\frac{1}{2} \\ln(1 - y)) .
$$

由于$X$的累积分布函数为$F_{X}(x) = 1 - e^{−2x}$，$x ≥ 0$，代入得：


$$
F_{Y}(y) = F_{X} (−\\frac{1}{2} \\ln(1 - y)) = 1 - e^{−2(−\\frac{1}{2} \\ln(1-y))} = 1 - e^{\\ln(1-y)} = 1 - (1 - y) = y.
$$

因此，对于$y ∈ (0, 1)$，$F_{Y}(y) = y$，这正是区间$(0, 1)$上均匀分布的累积分布函数。对应概率密度函数为$f_{Y}(y) = 1$，$y ∈ (0, 1)$。故$Y$在区间$(0, 1)$上服从均匀分布。
', 9, 'Mogullzr', '2026-01-29 14:09:46', 9, 'Mogullzr', '2026-01-29 14:09:46', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '950');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '950');
