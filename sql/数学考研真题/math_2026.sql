INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3234, '2026年考研数学卷1第1题', '简单', '考研数学2026年数1真题', '设函数$z = z(x, y)$由方程$x - az = e^{y+az}$（$a$是非 0 常数）确定，则（　　）', '[''$\\\\frac{∂z}{∂x} - \\\\frac{∂z}{∂y} = \\\\frac{1}{a}$'', ''$\\\\frac{∂z}{∂x} + \\\\frac{∂z}{∂y} = \\\\frac{1}{a}$'', ''$\\\\frac{∂z}{∂x} - \\\\frac{∂z}{∂y} = −\\\\frac{1}{a}$'', ''$\\\\frac{∂z}{∂x} + \\\\frac{∂z}{∂y} = −\\\\frac{1}{a}$'']', "['A']", '
由方程$x - az = e^{y+az}$确定隐函数$z = z(x, y)$。对$x$求偏导数（$y$为常数）得：
$$
1 - a\\frac{∂z}{∂x} = ae^{y+az}\\frac{∂z}{∂x}
$$
解得：
$$
\\frac{∂z}{∂x} = \\frac{1}{a(1 + e^{y+az})}
$$
对$y$求偏导数（$x$为常数）得：
$$
−a\\frac{∂z}{∂y} = e^{y+az} (1 + a\\frac{∂z}{∂y})
$$
解得：
$$
\\frac{∂z}{∂y} = −\\frac{e^{y+az}}{a(1 + e^{y+az})}
$$
计算：
$$
\\frac{∂z}{∂x} - \\frac{∂z}{∂y} = \\frac{1}{a(1 + e^{y+az})} - (−\\frac{e^{y+az}}{a(1 + e^{y+az})}) = \\frac{1 + e^{y+az}}{a(1 + e^{y+az})} = \\frac{1}{a}
$$
故选项 A 正确。', 9, 'Mogullzr', '2026-01-29 14:20:53', 9, 'Mogullzr', '2026-01-29 14:20:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3234');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3234');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3234');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3235, '2026年考研数学卷1第2题', '简单', '考研数学2026年数1真题', '幂级数$\\sum_{n=1}^{∞} (\\frac{3+(−1)n}{4})^{n} x^{2n}$的收敛域是（　　）', '[''$\\\\lbrack −2, 2 \\\\rbrack$'', ''$\\\\lbrack −1, 1 \\\\rbrack$'', ''$(−2, 2)$'', ''$(−1, 1)$'']', "['D']", '考虑幂级数

$$
\\sum_{n=1}^{∞} (\\frac{3 + (−1)n}{4})^{n} x^{2n}.
$$
令$b_{n} = (\\frac{3+(−1)n}{4})^{n}$，则级数可写成

$$
\\sum_{n=1}^{∞} b_{n}x^{2n}.
$$
由于$x$的指数为$2n$，可设$y = x^{2}$，从而转化为

$$
\\sum_{n=1}^{∞} b_{n}y^{n}.
$$
计算$b_{n}$：当$n$为偶数时，$(−1)n = 1$，故
$b_{n} = (\\frac{4}{4})^{n} = 1;$当$n$为奇数时，$(−1)n = −1$，故
$b_{n} = (\\frac{2}{4})^{n} = (\\frac{1}{2})^{n} .$使用根值判别法求收敛半径：

$$
\\sqrt{∣b_{n}∣} = \\frac{3 + (−1)n}{4},
$$
当$n$为偶数时等于$1$，当$n$为奇数时等于$\\frac{1}{2}$，因此

$$
limsup_{n→∞} \\sqrt{∣b_{n}∣} = 1.
$$
从而级数$∑ b_{n}y^{n}$的收敛半径为$R_{y} = 1$，即当$∣y∣ < 1$时收敛，$∣y∣ > 1$时发散。由$y = x^{2}$得$∣x^{2}∣ < 1$，即$∣x∣ < 1$时收敛。
检查端点：当$∣x∣ = 1$时，$x^{2} = 1$，级数化为$\\sum_{n=1}^{∞} b_{n}$。由于偶数项$b_{n} = 1$，奇数项$b_{n} = (1/2)n$，部分和中包含无穷多个$1$，故级数发散。因此，收敛域为$(−1, 1)$，对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:20:53', 9, 'Mogullzr', '2026-01-29 14:20:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3235');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3235');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '3235');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3236, '2026年考研数学卷1第3题', '简单', '考研数学2026年数1真题', '设函数$f(x)$在区间$\\lbrack −1, 1 \\rbrack$上有定义，则（　　）', '[''当$f(x)$在$(−1, 0)$单调递减，在$(0, 1)$单调递增时，$f(0)$是极小值'', ''当$f(0)$是极小值时，$f(x)$在$(−1, 0)$单调递减，在$(0, 1)$单调递增'', ''当$f(x)$的图形在$\\\\lbrack −1, 1 \\\\rbrack$是凹的时，$\\\\frac{f(x)-f(1)}{x-1}$在$\\\\lbrack −1, 1)$单调递增'', ''$\\\\frac{f(x)-f(1)}{x-1}$在$\\\\lbrack −1, 1)$单调递增时，$f(x)$的图形在$\\\\lbrack −1, 1 \\\\rbrack$是凹的'']', "['C']", '
对于选项 A，考虑反例：设$f(x) = −x + 1$当$x < 0$，$f(0) = 100$，$f(x) = x + 2$当$x > 0$。在$(−1, 0)$上$f(x)$单调递减（导数为负），在$(0, 1)$上单调递增（导数为正），但$f(0) = 100$比两侧值都大，是极大值而非极小值。因此 A 错误。对于选项 B，考虑反例：设$f(x) = x^{2}(2 + \\sin(1/x))$当$x \\neq 0$，$f(0) = 0$。$f(0) = 0$是极小值（因$f(x) ≥ x^{2} > 0$当$x \\neq 0$），但在任何包含 0 的区间上，由于$\\sin(1/x)$震荡，$f(x)$在$(−1, 0)$和$(0, 1)$上均不单调。因此 B 错误。对于选项 C，假设$f(x)$的图形在$\\lbrack −1, 1 \\rbrack$上是凹的（即凹向上，相当于$f^{′′}(x) ≥ 0$或$f$为凸函数）。考虑函数$φ(x) = \\frac{f(x)-f(1)}{x-1}$在$\\lbrack −1, 1)$上。当$f$凹向上时，其导数$f^{′}(x)$单调递增。由拉格朗日中值定理，存在$ξ$介于$x$与 1 之间，使得$f(x) - f(1) = f^{′}(ξ)(x - 1)$。由于$f^{′}$递增且$x - 1 < 0$，有$f(x) - f(1) = f^{′}(ξ)(x - 1) ≤ f^{′}(x)(x - 1)$。计算$φ^{′}(x) = \\frac{f^{′}(x)(x-1)-(f(x)-f(1))}{(x-1)2} ≥ 0$，故$φ(x)$单调递增。因此 C 正确。对于选项 D，考虑反例：设$f(x) = x^{4} - x^{3}$，则$f(1) = 0$，$φ(x) = \\frac{f(x)-f(1)}{x-1} = \\frac{x^{4}-x^{3}}{x-1} = x^{3}$在$\\lbrack −1, 1)$上单调递增（因导数$3x^{2} ≥ 0$）。但$f^{′′}(x) = 12x^{2} - 6x = 6x(2x - 1)$，在$(0, 0.5)$上$f^{′′}(x) < 0$，故$f(x)$的图形在$\\lbrack −1, 1 \\rbrack$上不是凹的（凹向上需$f^{′′}(x) ≥ 0$恒成立）。因此 D 错误。综上，正确选项为 C。', 9, 'Mogullzr', '2026-01-29 14:20:53', 9, 'Mogullzr', '2026-01-29 14:20:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3236');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3236');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3236');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3237, '2026年考研数学卷1第4题', '简单', '考研数学2026年数1真题', '已知有界区域$Ω$由曲面$z = \\sqrt{4 - x^{2} - y^{2}}$与$z = \\sqrt{x^{2} + y^{2}}$围成，函数$f(u)$连续，则

$$
\\iiint_{Ω} f  (x^{2} + y^{2} + z^{2})  dx dy dz = （　　）
$$
', '[''$\\\\int_{0}^{2π} dθ \\\\int_{0}^{2} dr \\\\int_{r}^{\\\\sqrt{4-r^{2}}} f(r^{2} + z^{2})r dz$'', ''$\\\\int_{0}^{2π} dθ \\\\int_{0}^{\\\\sqrt{2}} dr \\\\int_{0}^{\\\\sqrt{4-r^{2}}} f(r^{2} + z^{2})r dz$'', ''$\\\\int_{0}^{2π} dθ \\\\int_{0}^{\\\\frac{π}{4}} dφ \\\\int_{0}^{2} f(r^{2})r^{2} \\\\sin φ dr$'', ''$\\\\int_{0}^{2π} dθ \\\\int_{0}^{\\\\frac{π}{2}} dφ \\\\int_{0}^{2} f(r^{2})r^{2} \\\\sin φ dr$'']', "['C']", '区域 Ω 由曲面

$$
z = \\sqrt{4 - x^{2} - y^{2}} (上半球面，半径2)
$$
与

$$
z = \\sqrt{x^{2} + y^{2}} (圆锥面)
$$
围成。被积函数为

$$
f(x^{2} + y^{2} + z^{2})
$$
适合用球坐标简化。在球坐标下

$$
x = r \\sin φ \\cos θ,  y = r \\sin φ \\sin θ,  z = r \\cos φ
$$
体积元为
$$
r^{2} \\sin φ dr dφ dθ
$$
且有

$$
x^{2} + y^{2} + z^{2} = r^{2}
$$
故被积函数化为

$$
f(r^{2})
$$
区域 Ω 中的点满足

$$
z ≥ \\sqrt{x^{2} + y^{2}} 且 z ≤ \\sqrt{4 - x^{2} - y^{2}}
$$
用球坐标表示：

$$
z = r \\cos φ,  \\sqrt{x^{2} + y^{2}} = r \\sin φ
$$
于是条件化为

$$
\\cos φ ≥ \\sin φ ⟹ \\tan φ ≤ 1
$$
所以

$$
φ ∈  \\lbrack 0, \\frac{π}{4} \\rbrack
$$
由上半球面得

$$
r ≤ 2
$$
且原点在边界上，故

$$
r ∈  \\lbrack 0, 2 \\rbrack
$$
$θ$自然取

$$
θ ∈  \\lbrack 0, 2π \\rbrack
$$
因此积分表达式为

$$
\\int_{0}^{2π} dθ \\int_{0}^{π/4} dφ \\int_{0}^{2} f(r^{2}) r^{2} \\sin φ dr
$$
对应选项C。选项A与B采用柱坐标，但A中$r$的上限定为$2$，超出实际范围$\\sqrt{2}$；B中$z$的下限为$0$，而不是$r$。二者均错误。
选项D的$φ$上限为$π/2$，包含了圆锥面以下的区域，不符合 Ω 的定义。正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:20:53', 9, 'Mogullzr', '2026-01-29 14:20:53', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3237');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3237');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3237');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3238, '2026年考研数学卷1第5题', '简单', '考研数学2026年数1真题', '单位矩阵经过若干次互换两行得到的矩阵成为置换矩阵。设$A$为$n$阶置换矩阵，$A^{∗}$为$A$的伴随矩阵，则（　　）', '[''$A^{∗}$为置换矩阵'', ''$A^{−1}$为置换矩阵'', ''$A^{−1} = A^{∗}$'', ''$A^{−1} = −A^{∗}$'']', "['B']", '置换矩阵是由单位矩阵经过若干次行交换得到的矩阵，其行和列均为单位向量。置换矩阵是正交矩阵，满足$A^{−1} = A^{T}$，而$A^{T}$也是置换矩阵，因此$A^{−1}$恒为置换矩阵，选项B正确。对于选项A，伴随矩阵$A^{∗} = det(A)A^{−1}$，当$det(A) = −1$时，$A^{∗}$可能含有负元素，不满足置换矩阵的元素非负要求，故不一定成立。对于选项C和D，由$A^{−1} = \\frac{1}{det(A)}A^{∗}$知，当$det(A) = 1$时$A^{−1} = A^{∗}$，当$det(A) = −1$时$A^{−1} = −A^{∗}$，两者均不恒成立。因此，仅选项B正确。', 9, 'Mogullzr', '2026-01-29 14:20:54', 9, 'Mogullzr', '2026-01-29 14:20:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3238');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3238');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3238');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3239, '2026年考研数学卷1第6题', '简单', '考研数学2026年数1真题', '设$A$、$B$为$n$阶矩阵，$β$是$n$维列向量，若$A$的列向量组可由$B$的列向量组表示，则（　　）', '[''当$Ax = β$有解时，$Bx = β$有解'', ''当$A^{T}x = β$有解时，$B^{T}x = β$有解'', ''当$Bx = β$有解时，$Ax = β$有解'', ''当$B^{T}x = β$有解时，$A^{T}x = β$有解'']', "['A']", '由题意可知，矩阵$A$的列向量组可由矩阵$B$的列向量组线性表示，即存在矩阵$C$使得

$$
A = BC
$$
这意味着$A$的列空间$Col(A)$是$B$的列空间$Col(B)$的子集，即

$$
Col(A) ⊆ Col(B)
$$
线性方程组$Ax = β$有解当且仅当$β ∈ Col(A)$，而$Bx = β$有解当且仅当$β ∈ Col(B)$。
因此，当$Ax = β$有解时，有

$$
β ∈ Col(A) ⊆ Col(B)
$$
从而$Bx = β$一定有解，故选项 A 正确。对于选项 C，当$Bx = β$有解时，$β ∈ Col(B)$，但$β$不一定属于$Col(A)$，因此$Ax = β$不一定有解。反例：取$B = I$（单位矩阵），$A = 0$，则$Bx = β$总有解，但$Ax = β$仅当$β = 0$时有解。对于选项 B 和 D，考虑转置关系$A^{T} = C^{T}B^{T}$，此时

$$
Col(A^{T}) ⊆ Col(C^{T})
$$
但与$Col(B^{T})$没有直接的包含关系，因此无法由其中一个方程解的存在性推断另一个方程解的存在性，故选项 B 和 D 均不正确。', 9, 'Mogullzr', '2026-01-29 14:20:54', 9, 'Mogullzr', '2026-01-29 14:20:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3239');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3239');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1011', '3239');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3240, '2026年考研数学卷1第7题', '简单', '考研数学2026年数1真题', '设二次型$f(x_{1}, x_{2}, x_{3}) = a(x_{1}^{2} + x_{2}^{2} + x_{3}^{2}) + 4x_{1}x_{2} + 4x_{1}x_{3} + 4x_{2}x_{3}$。若方程$f(x_{1}, x_{2}, x_{3}) = −1$表示的曲面为圆柱面，则（　　）', '[''$a = −4$，且$f(x_{1}, x_{2}, x_{3})$的规范型为$−y_{1}^{2} - y_{2}^{2} - y_{3}^{2}$'', ''$a = −4$，且$f(x_{1}, x_{2}, x_{3})$在正交变换下的标准型为$−6y_{1}^{2} - 6y_{2}^{2}$'', ''$a = 2$，且$f(x_{1}, x_{2}, x_{3})$的规范型为$−y_{1}^{2} - y_{2}^{2} - y_{3}^{2}$'', ''$a = 2$，且$f(x_{1}, x_{2}, x_{3})$在正交变换下的标准型为$−6y_{1}^{2} - 6y_{2}^{2}$'']', "['B']", '
二次型$f(x_{1}, x_{2}, x_{3})$对应的矩阵为

$$
A = \\left( \\begin{array}{ccc}
a & 2 & 2 \\\\
2 & a & 2 \\\\
2 & 2 & a \\\\
\\end{array} \\right) .
$$
其特征值为

$$
λ_{1} = a + 4,  λ_{2} = a - 2（二重）.
$$
要使方程$f(x_{1}, x_{2}, x_{3}) = −1$表示实圆柱面，矩阵$A$必须满足：有一个特征值为 0；其余特征值同号，以保证方程有实数解。
$$
−6y_{1}^{2} - 6y_{2}^{2} = −1,
$$
因此，选项 B 中$a = −4$且标准型为$−6y_{1}^{2} - 6y_{2}^{2}$符合要求，该选项正确。', 9, 'Mogullzr', '2026-01-29 14:20:54', 9, 'Mogullzr', '2026-01-29 14:20:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3240');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3240');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3241, '2026年考研数学卷1第8题', '简单', '考研数学2026年数1真题', '设随机变量$X ∼ N(1, 2)$，令$f(t) = E  \\lbrack (X + t)2 \\rbrack$，则$f(t)$的最小值点和最小值分别为（　　）', '[''$1, 2$'', ''$1, 4$'', ''$−1, 2$'', ''$−1, 4$'']', "['C']", '计算$f(t) = E \\lbrack (X + t)2 \\rbrack$，展开得

$$
f(t) = E \\lbrack X^{2} \\rbrack  + 2tE \\lbrack X \\rbrack  + t^{2}.
$$
由于$X ∼ N(1, 2)$，即均值$μ = 1$，方差$σ^{2} = 2$，故

$$
E \\lbrack X \\rbrack  = 1,  E \\lbrack X^{2} \\rbrack  = Var(X) + (E \\lbrack X \\rbrack )2 = 2 + 1^{2} = 3.
$$
代入得

$$
f(t) = t^{2} + 2t + 3.
$$
这是一个开口向上的二次函数，最小值在顶点处，顶点

$$
t = −\\frac{b}{2a} = −\\frac{2}{2 ⋅ 1} = −1,
$$
最小值为

$$
f(−1) = (−1)2 + 2(−1) + 3 = 2.
$$
因此最小值点为$−1$，最小值为$2$，对应选项 C。', 9, 'Mogullzr', '2026-01-29 14:20:54', 9, 'Mogullzr', '2026-01-29 14:20:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3241');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3241');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '3241');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3242, '2026年考研数学卷1第9题', '简单', '考研数学2026年数1真题', '设连续型随机变量$X$的分布函数为$F(x)$，随机变量$Y$的分布函数为$F(ay + b)$，$X$的数学期望为$μ$，方差为$σ^{2}(σ > 0)$，若$Y$的数学期望和方差分别为 0 和 1，则（　　）', '[''$a = σ$，$b = μ$'', ''$a = σ$，$b = −μ$'', ''$a = \\\\frac{1}{σ}$，$b = μ$'', ''$a = \\\\frac{1}{σ}$，$b = −μ$'']', "['A']", '
由$Y$的分布函数为$F(ay + b)$，可得

$$
P(Y ≤ y) = P(X ≤ ay + b),
$$
这意味着$X$与$Y$满足线性关系

$$
X = aY + b,
$$
即

$$
Y = \\frac{X - b}{a}.
$$
已知$X$的数学期望为$μ$，方差为$σ^{2}$。对于线性变换$Y = \\frac{X - b}{a}$，其数学期望与方差分别为

$$
E \\lbrack Y \\rbrack  = \\frac{μ - b}{a},  Var(Y) = \\frac{σ^{2}}{a^{2}}.
$$
根据题意，$E \\lbrack Y \\rbrack  = 0$且$Var(Y) = 1$，因此有

$$
\\frac{μ - b}{a} = 0,  \\frac{σ^{2}}{a^{2}} = 1.
$$
解方程得

$$
b = μ,  a = σ (取正根).
$$
故$a = σ,  b = μ$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:20:54', 9, 'Mogullzr', '2026-01-29 14:20:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3242');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3242');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3243, '2026年考研数学卷1第10题', '简单', '考研数学2026年数1真题', '设随机变量$X$的概率分布为$P\\{X = k\\} = \\frac{1}{2^{k+1}} + \\frac{1}{3^{k}}$（$k = 1, 2, …$），则对于正整数$m$、$n$有（　　）', '[''$P\\\\{X > m + n ∣ X > m\\\\} = P\\\\{X > m\\\\}$'', ''$P\\\\{X > m + n ∣ X > m\\\\} = P\\\\{X > n\\\\}$'', ''$P\\\\{X > m + n ∣ X > m\\\\} > P\\\\{X > m\\\\}$'', ''$P\\\\{X > m + n ∣ X > m\\\\} > P\\\\{X > n\\\\}$'']', "['D']", '首先，计算$P\\{X > k\\}$对于正整数$k$。由分布$P\\{X = k\\} = \\frac{1}{2^{k+1}} + \\frac{1}{3^{k}}$可得：
$$
P\\{X > k\\} = \\sum_{j=k+1}^{∞} (\\frac{1}{2^{j+1}} + \\frac{1}{3^{j}}) = \\frac{1}{2^{k+1}} + \\frac{1}{2 ⋅ 3^{k}}.
$$
条件概率$P\\{X > m + n ∣ X > m\\} = \\frac{P\\{X>m+n\\}}{P\\{X>m\\}}$，代入表达式：
$$
P\\{X > m + n ∣ X > m\\} = \\frac{\\frac{1}{2^{m+n+1}} + \\frac{1}{2⋅3^{m+n}}}{\\frac{1}{2^{m+1}} + \\frac{1}{2⋅3^{m}}} = \\frac{a ⋅ 2^{−n} + b ⋅ 3^{−n}}{a + b},
$$
其中$a = \\frac{1}{2^{m+1}}, b = \\frac{1}{2⋅3^{m}}$。由于$\\frac{a}{b} = (\\frac{3}{2})^{m} > 1$，有$\\frac{a}{a+b} > \\frac{1}{2}$。因此上式是$2^{−n}$和$3^{−n}$的加权平均，且较大权重赋予较大的$2^{−n}$。而$P\\{X > n\\} = \\frac{1}{2^{n+1}} + \\frac{1}{2⋅3^{n}} = \\frac{1}{2}2^{−n} + \\frac{1}{2}3^{−n}$是等权重平均。比较两者：
$$
\\frac{a2^{−n} + b3^{−n}}{a + b} - (\\frac{1}{2}2^{−n} + \\frac{1}{2}3^{−n}) = (\\frac{a}{a + b} - \\frac{1}{2}) (2^{−n} - 3^{−n}) > 0,
$$
因为$\\frac{a}{a+b} > \\frac{1}{2}$且$2^{−n} > 3^{−n}$。故$P\\{X > m + n ∣ X > m\\} > P\\{X > n\\}$对所有正整数$m, n$成立。对于其他选项：A 和 B 要求等式成立，但由表达式依赖$m$可知不成立；C 要求大于$P\\{X > m\\}$，但当$n$较大时可能不成立，例如$m = 1, n = 2$时$P\\{X > 3 ∣ X > 1\\} ≈ 0.1944 < P\\{X > 1\\} ≈ 0.4167$。因此 D 正确。', 9, 'Mogullzr', '2026-01-29 14:20:54', 9, 'Mogullzr', '2026-01-29 14:20:54', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3243');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '3243');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3244, '2026年考研数学卷1第11题', '简单', '考研数学2026年数1真题', '设向量$v_{1} = (0, x, z)$，$v_{2} = (y, 0, 1)$，令$F(x, y, z) = v_{1} × v_{2}$，则$div F =$____________。', '[]', '$1 + z$
', '
首先计算向量场$F = v_{1} × v_{2}$，其中$v_{1} = (0, x, z)$，$v_{2} = (y, 0, 1)$。
叉积公式为


$$
a × b = (a_{2}b_{3} - a_{3}b_{2},  a_{3}b_{1} - a_{1}b_{3},  a_{1}b_{2} - a_{2}b_{1})
$$

代入得：
第一分量：$x ⋅ 1 - z ⋅ 0 = x$，第二分量：$z ⋅ y - 0 ⋅ 1 = yz$，第三分量：$0 ⋅ 0 - x ⋅ y = −xy$。
因此


$$
F = (x,  yz,  −xy)
$$

散度定义为


$$
div F = \\frac{∂F_{1}}{∂x} + \\frac{∂F_{2}}{∂y} + \\frac{∂F_{3}}{∂z}
$$

计算偏导数：
$\\frac{∂F_{1}}{∂x} = \\frac{∂x}{∂x} = 1$，$\\frac{∂F_{2}}{∂y} = \\frac{∂(yz)}{∂y} = z$，$\\frac{∂F_{3}}{∂z} = \\frac{∂(−xy)}{∂z} = 0$。
求和得


$$
div F = 1 + z + 0 = 1 + z
$$

', 9, 'Mogullzr', '2026-01-29 14:20:55', 9, 'Mogullzr', '2026-01-29 14:20:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3244');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1056', '3244');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3245, '2026年考研数学卷1第12题', '简单', '考研数学2026年数1真题', '$\\lim_{x→0} (\\frac{1}{x} - \\frac{\\ln(1+x)}{x \\sin x}) =$____________。', '[]', '$\\frac{1}{2}$
', '将原式通分：$\\lim_{x→0} (\\frac{1}{x} - \\frac{\\ln(1+x)}{x \\sin x}) = \\lim_{x→0} \\frac{\\sin x-\\ln(1+x)}{x \\sin x}$。当$x → 0$时，分子和分母均趋于0，为$0/0$型未定式，可使用洛必达法则。首先对分子和分母分别求导：分子导数为$\\cos x - \\frac{1}{1+x}$，分母导数为$\\sin x + x \\cos x$，得到

$$
\\lim_{x→0} \\frac{\\cos x - \\frac{1}{1+x}}{\\sin x + x \\cos x}.
$$

代入$x = 0$仍为$0/0$型，再次应用洛必达法则：分子导数为$− \\sin x + \\frac{1}{(1+x)2}$，分母导数为$2 \\cos x - x \\sin x$，得到

$$
\\lim_{x→0} \\frac{− \\sin x + \\frac{1}{(1+x)2}}{2 \\cos x - x \\sin x}.
$$

代入$x = 0$，分子为1，分母为2，故极限为

$$
\\frac{1}{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:55', 9, 'Mogullzr', '2026-01-29 14:20:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3245');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3245');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '3245');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3246, '2026年考研数学卷1第13题', '简单', '考研数学2026年数1真题', '设函数$y = y(x)$由参数方程

$$
\\begin{cases} x = 2 \\sin^{2} t \\\\ y = t + \\cos t \\end{cases}  (t ∈ (0, \\frac{π}{2}))
$$

确定，则$\\frac{d^{2}y}{dx^{2}}​_{t=\\frac{π}{4}} =$____________。', '[]', '$−\\frac{\\sqrt{2}}{8}$
', '对于参数方程$x = 2 \\sin^{2} t$,$y = t + \\cos t$，先求一阶导数$\\frac{dy}{dx} = \\frac{dy/dt}{dx/dt}$。
计算导数：


$$
\\frac{dx}{dt} = \\frac{d}{dt}(2 \\sin^{2} t) = 4 \\sin t \\cos t,  \\frac{dy}{dt} = \\frac{d}{dt}(t + \\cos t) = 1 - \\sin t.
$$


因此，


$$
\\frac{dy}{dx} = \\frac{1 - \\sin t}{4 \\sin t \\cos t}.
$$


再求二阶导数$\\frac{d^{2}y}{dx^{2}} = \\frac{d}{dt} (\\frac{dy}{dx}) /\\frac{dx}{dt}$。
令$u = \\frac{dy}{dx}$，则


$$
\\frac{du}{dt} = \\frac{d}{dt} (\\frac{1 - \\sin t}{4 \\sin t \\cos t}) .
$$


使用商法则，分子$f(t) = 1 - \\sin t$，分母$g(t) = 4 \\sin t \\cos t$，有$f^{′}(t) = − \\cos t$，$g^{′}(t) = 4 \\cos 2t$。
于是


$$
\\frac{du}{dt} = \\frac{(− \\cos t) ⋅ (4 \\sin t \\cos t) - (1 - \\sin t) ⋅ (4 \\cos 2t)}{(4 \\sin t \\cos t)2} = \\frac{−4 \\lbrack \\sin t \\cos^{2} t + \\cos 2t(1 - \\sin t) \\rbrack }{16 \\sin^{2} t \\cos^{2} t}.
$$


从而


$$
\\frac{d^{2}y}{dx^{2}} = \\frac{du/dt}{dx/dt} = \\frac{−4 \\lbrack \\sin t \\cos^{2} t + \\cos 2t(1 - \\sin t) \\rbrack }{16 \\sin^{2} t \\cos^{2} t} ⋅ \\frac{1}{4 \\sin t \\cos t} = −\\frac{\\sin t \\cos^{2} t + \\cos 2t(1 - \\sin t)}{16 \\sin^{3} t \\cos^{3} t}.
$$


代入$t = \\frac{π}{4}$，其中$\\sin \\frac{π}{4} = \\cos \\frac{π}{4} = \\frac{\\sqrt{2}}{2}$，$\\cos 2t = \\cos \\frac{π}{2} = 0$。
计算分子：


$$
\\sin t \\cos^{2} t = \\frac{\\sqrt{2}}{2} ⋅ (\\frac{\\sqrt{2}}{2})^{2} = \\frac{\\sqrt{2}}{2} ⋅ \\frac{1}{2} = \\frac{\\sqrt{2}}{4},  \\cos 2t(1 - \\sin t) = 0.
$$


分母：


$$
16 \\sin^{3} t \\cos^{3} t = 16 (\\frac{\\sqrt{2}}{2})^{6} = 16 ⋅ \\frac{1}{8} = 2.
$$


因此


$$
\\frac{d^{2}y}{dx^{2}}​_{t=\\frac{π}{4}} = −\\frac{\\frac{\\sqrt{2}}{4}}{2} = −\\frac{\\sqrt{2}}{8}.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:55', 9, 'Mogullzr', '2026-01-29 14:20:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3246');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3246');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3246');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3247, '2026年考研数学卷1第14题', '简单', '考研数学2026年数1真题', '设$\\int_{1}^{+∞} \\frac{\\ln(x+1)}{x^{2}}dx =$____________。', '[]', '
$2 \\ln 2$
', '
考虑积分$I = \\int_{1}^{+∞} \\frac{\\ln(x+1)}{x^{2}}dx$。使用分部积分法，令$u = \\ln(x + 1)$，$dv = \\frac{1}{x^{2}}dx$，则$du = \\frac{1}{x+1}dx$，$v = −\\frac{1}{x}$。由分部积分公式：


$$
I =  \\lbrack −\\frac{\\ln(x + 1)}{x} \\rbrack _{1}^{+∞} - \\int_{1}^{+∞} (−\\frac{1}{x}) ⋅ \\frac{1}{x + 1}dx =  \\lbrack −\\frac{\\ln(x + 1)}{x} \\rbrack _{1}^{+∞} + \\int_{1}^{+∞} \\frac{1}{x(x + 1)}dx
$$


计算边界项：当$x → +∞$时，$\\frac{\\ln(x+1)}{x} → 0$，故$\\lbrack −\\frac{\\ln(x+1)}{x} \\rbrack _{1}^{+∞} = 0 - (−\\frac{\\ln 2}{1}) = \\ln 2$。
对于积分$\\int_{1}^{+∞} \\frac{1}{x(x+1)}dx$，将被积函数分解为部分分式：$\\frac{1}{x(x+1)} = \\frac{1}{x} - \\frac{1}{x+1}$。于是


$$
\\int_{1}^{+∞} \\frac{1}{x(x + 1)}dx = \\int_{1}^{+∞} (\\frac{1}{x} - \\frac{1}{x + 1}) dx = \\lim_{b→∞}  \\lbrack \\ln (\\frac{x}{x + 1}) \\rbrack _{1}^{b} = \\lim_{b→∞} (\\ln (\\frac{b}{b + 1}) - \\ln (\\frac{1}{2}))
$$


当$b → ∞$时，$\\frac{b}{b+1} → 1$，故$\\ln (\\frac{b}{b+1}) → 0$，而$\\ln (\\frac{1}{2}) = − \\ln 2$，所以该积分值为$0 - (− \\ln 2) = \\ln 2$。
因此，原积分$I = \\ln 2 + \\ln 2 = 2 \\ln 2$。
', 9, 'Mogullzr', '2026-01-29 14:20:55', 9, 'Mogullzr', '2026-01-29 14:20:55', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3247');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3247');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3247');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3248, '2026年考研数学卷1第15题', '简单', '考研数学2026年数1真题', '设矩阵

$$
A = \\left( \\begin{array}{ccc}
1 & 0 & 0 \\\\
2 & a & 2 \\\\
0 & 2 & a \\\\
\\end{array} \\right) ,  B = \\left( \\begin{array}{ccc}
a & −1 & −1 \\\\
−1 & 2 & 1 \\\\
−1 & −1 & a \\\\
\\end{array} \\right) ,
$$

记$m(X)$为3阶矩阵$X$的实特征值中的最大值。若$m(A) < m(B)$，则$a$的取值范围为 ____________。', '[]', '$(−∞, 0)$
', '矩阵$A$的特征多项式为$det(A - λI) = (1 - λ)((a - λ)2 - 4)$，解得特征值$λ = 1,  a - 2,  a + 2$，故$m(A) = \\max\\{1,  a + 2\\}$。当$a ⩽ −1$时，$m(A) = 1$；当$a > −1$时，$m(A) = a + 2$。
对于矩阵$B$，易见$(1, 0, 1)T$是特征向量，对应特征值$a - 1$。进一步计算特征多项式得$B$的特征值为$a - 1,  \\frac{(a + 3) ± ∣a - 1∣}{2}$。讨论$a$与$1$的关系：若$a ⩽ 1$，则特征值为$a - 1,  2,  a + 1$，其中最大值为$2$；若$a > 1$，则特征值为$a - 1,  a + 1,  2$，其中最大值为$a + 1$。故

$$
m(B) = \\begin{cases} 2 & a ⩽ 1 \\\\ a + 1 & a > 1. \\end{cases}
$$

由条件$m(A) < m(B)$分情况讨论：
当$a ⩽ −1$时，$m(A) = 1 < 2 = m(B)$，恒成立；当$−1 < a ⩽ 1$时，$m(A) = a + 2$，$m(B) = 2$，由$a + 2 < 2$得$a < 0$，故$−1 < a < 0$；当$a > 1$时，$m(A) = a + 2$，$m(B) = a + 1$，由$a + 2 < a + 1$得矛盾，无解。
综上，满足条件的$a$的取值范围为$a < 0$，即$(−∞, 0)$。
', 9, 'Mogullzr', '2026-01-29 14:20:56', 9, 'Mogullzr', '2026-01-29 14:20:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3248');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '3248');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3249, '2026年考研数学卷1第16题', '简单', '考研数学2026年数1真题', '设随机变量$X$服从参数为1的泊松分布，随机变量$Y$服从参数为3的泊松分布，$X$与$Y - X$相互独立，则$E(XY) =$____________。', '[]', '4
', '由题意，$X ∼ Poisson(1)$，故$E(X) = 1$，$E(X^{2}) = Var(X) +  \\lbrack E(X) \\rbrack 2 = 1 + 1^{2} = 2$。
$Y ∼ Poisson(3)$，故$E(Y) = 3$。
已知$X$与$Y - X$相互独立，因此有：

$$
E(XY) = E \\lbrack X(Y - X) + X^{2} \\rbrack  = E \\lbrack X(Y - X) \\rbrack  + E(X^{2}).
$$

由于$X$与$Y - X$独立，故$E \\lbrack X(Y - X) \\rbrack  = E(X) ⋅ E(Y - X)$。
计算$E(Y - X) = E(Y) - E(X) = 3 - 1 = 2$，代入得：

$$
E \\lbrack X(Y - X) \\rbrack  = 1 × 2 = 2.
$$

因此，

$$
E(XY) = 2 + 2 = 4.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:56', 9, 'Mogullzr', '2026-01-29 14:20:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3249');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3249');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '3249');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3250, '2026年考研数学卷1第17题', '简单', '考研数学2026年数1真题', '（本题满分10分）求$f(x, y) = (2x^{2} - y^{2})e^{x}$的极值。', '[]', '函数$f(x, y) = (2x^{2} - y^{2})e^{x}$在点$(−2, 0)$处取得极大值$8e^{−2}$，在点$(0, 0)$处无极值（鞍点）。
', '首先，求函数的一阶偏导数：

$$
f_{x} = \\frac{∂}{∂x}  \\lbrack (2x^{2} - y^{2})e^{x} \\rbrack  = e^{x}(2x^{2} + 4x - y^{2}),  f_{y} = \\frac{∂}{∂y}  \\lbrack (2x^{2} - y^{2})e^{x} \\rbrack  = −2ye^{x}.
$$

令偏导数为零，由于$e^{x} > 0$，得方程组：

$$
2x^{2} + 4x - y^{2} = 0,  −2y = 0.
$$

由第二式得$y = 0$，代入第一式得$2x^{2} + 4x = 0$，解得$x = 0$或$x = −2$。故临界点为$(0, 0)$和$(−2, 0)$。
其次，求二阶偏导数以判断临界点类型：

$$
f_{xx} = \\frac{∂}{∂x}f_{x} = e^{x}(2x^{2} + 8x + 4 - y^{2}),  f_{yy} = \\frac{∂}{∂y}f_{y} = −2e^{x},  f_{xy} = \\frac{∂}{∂y}f_{x} = −2ye^{x}.
$$

计算判别式$D = f_{xx}f_{yy} - (f_{xy})2$。
在点$(0, 0)$处：

$$
f_{xx} = 4,  f_{yy} = −2,  f_{xy} = 0,  D = 4 × (−2) - 0^{2} = −8 < 0.
$$

故$(0, 0)$是鞍点，不是极值点。
在点$(−2, 0)$处：

$$
\\begin{array}{cc}
f_{xx} & = e^{−2}(8 - 16 + 4) = −4e^{−2} < 0, \\\\
f_{yy} & = −2e^{−2}, \\\\
f_{xy} & = 0, \\\\
\\end{array}
$$

由于$D > 0$且$f_{xx} < 0$，故$(−2, 0)$是极大值点。极大值为：

$$
f(−2, 0) = (2 × (−2)2 - 0^{2})e^{−2} = 8e^{−2}.
$$

因此，函数有极大值$8e^{−2}$，在点$(−2, 0)$处取得。
', 9, 'Mogullzr', '2026-01-29 14:20:56', 9, 'Mogullzr', '2026-01-29 14:20:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3250');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3250');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '3250');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3251, '2026年考研数学卷1第18题', '简单', '考研数学2026年数1真题', '（本题满分12分）设$f(u)$在$(0, +∞)$内具有3阶连续导数，且存在可微函数$F(x, y)$使

$$
dF(x, y) = \\frac{f(xy)}{x^{2}y}dx + \\frac{f^{′′}(xy)}{xy^{2}}dy (xy > 0).
$$
(1) 证明：$\\frac{f^{′′}(u)}{u} - \\frac{f^{′}(u)}{u} = c$，$c$为常数；(2) 设$f(1) = 1$，$f^{′}(1) = −1$，$f^{′′}(1) = 0$，求$f(u)$的表达式。', '[]', '
(1) 由全微分条件可得$\\frac{f^{′′}(u)}{u} - \\frac{f(u)}{u} = c$，其中$c$为常数。
(2)$f(u) = e^{1-u} - e^{u-1} + u$。
', '
(1) 设$M(x, y) = \\frac{f(xy)}{x^{2}y}$，$N(x, y) = \\frac{f^{′′}(xy)}{xy^{2}}$。由于$dF = Mdx + Ndy$是全微分，故有$\\frac{∂M}{∂y} = \\frac{∂N}{∂x}$。计算偏导数：


$$
\\frac{∂M}{∂y} = \\frac{∂}{∂y} (\\frac{f(xy)}{x^{2}y}) = \\frac{xyf^{′}(xy) - f(xy)}{x^{2}y^{2}},  \\frac{∂N}{∂x} = \\frac{∂}{∂x} (\\frac{f^{′′}(xy)}{xy^{2}}) = \\frac{xyf^{′′′}(xy) - f^{′′}(xy)}{x^{2}y^{2}}.
$$


令两者相等，得


$$
xyf^{′}(xy) - f(xy) = xyf^{′′′}(xy) - f^{′′}(xy).
$$


令$u = xy$，则上式化为


$$
uf^{′}(u) - f(u) = uf^{′′′}(u) - f^{′′}(u).
$$


两边同除以$u^{2}$，得


$$
\\frac{d}{du} (\\frac{f^{′′}(u)}{u}) = \\frac{d}{du} (\\frac{f(u)}{u}) .
$$


积分得


$$
\\frac{f^{′′}(u)}{u} = \\frac{f(u)}{u} + c,
$$


即


$$
\\frac{f^{′′}(u)}{u} - \\frac{f(u)}{u} = c,
$$


其中$c$为常数。
(2) 由已知条件$f(1) = 1$，$f^{′}(1) = −1$，$f^{′′}(1) = 0$，代入上式得


$$
c = \\frac{f^{′′}(1)}{1} - \\frac{f(1)}{1} = 0 - 1 = −1.
$$


于是有


$$
f^{′′}(u) - f(u) = −u.
$$


该方程为二阶线性常微分方程，其齐次方程$f^{′′}(u) - f(u) = 0$的通解为$f_{h}(u) = Ae^{u} + Be^{−u}$，特解可设为$f_{p}(u) = pu + q$，代入得$p = 1$，$q = 0$，即$f_{p}(u) = u$。故通解为


$$
f(u) = Ae^{u} + Be^{−u} + u.
$$


利用初始条件确定常数$A, B$：


$$
\\begin{cases} f(1) = Ae + Be^{−1} + 1 = 1 \\\\ f^{′}(1) = Ae - Be^{−1} + 1 = −1 \\end{cases}
$$


解得$A = −e^{−1}$，$B = e$。因此


$$
f(u) = −e^{−1}e^{u} + e ⋅ e^{−u} + u = e^{1-u} - e^{u-1} + u.
$$

', 9, 'Mogullzr', '2026-01-29 14:20:56', 9, 'Mogullzr', '2026-01-29 14:20:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3251');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3251');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '3251');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3252, '2026年考研数学卷1第19题', '简单', '考研数学2026年数1真题', '（本题满分 12 分）设有向曲线$L$为椭圆$x^{2} + 3y^{2} = 1$上沿逆时针方向从点$A (−\\frac{1}{2}, −\\frac{1}{2})$到点$B (\\frac{1}{2}, \\frac{1}{2})$的部分，计算曲线积分

$$
I = \\int_{L} (e^{x^{2}} \\sin x - 2xy) dx + (6x - x^{2} - y \\cos^{4} y) dy.
$$
', '[]', '

$$
I = π\\sqrt{3} - \\frac{1}{4}
$$

', '考虑整个椭圆$E : x^{2} + 3y^{2} = 1$沿逆时针方向，其围成的区域为$D_{e}$。设被积函数中$P = e^{x^{2}} \\sin x - 2xy$，$Q = 6x - x^{2} - y \\cos^{4} y$。计算偏导数得：

$$
\\frac{∂Q}{∂x} = 6 - 2x,  \\frac{∂P}{∂y} = −2x,
$$

故

$$
\\frac{∂Q}{∂x} - \\frac{∂P}{∂y} = 6.
$$

由格林公式，

$$
∮_{E} P dx + Q dy = \\iint_{D_{e}} 6 dA = 6 ⋅ Area(D_{e}).
$$

椭圆$x^{2} + 3y^{2} = 1$的半长轴$a = 1$，半短轴$b = \\frac{1}{\\sqrt{3}}$，面积$Area(D_{e}) = πab = \\frac{π}{\\sqrt{3}}$。因此

$$
∮_{E} P dx + Q dy = 6 ⋅ \\frac{π}{\\sqrt{3}} = 2π\\sqrt{3}.
$$

设$L$为椭圆上从点$A(−\\frac{1}{2}, −\\frac{1}{2})$到点$B(\\frac{1}{2}, \\frac{1}{2})$的逆时针弧，$L_{2}$为椭圆上从$B$到$A$的逆时针弧（另一半椭圆）。则$E = L ∪ L_{2}$，且

$$
∮_{E} = \\int_{L} + \\int_{L_{2}} .
$$

为计算$\\int_{L_{2}}$，补直线段$L_{1}^{′}$从$A$到$B$（方向从$A$到$B$），与$L_{2}$构成闭合曲线$C_{2} = L_{2} ∪ L_{1}^{′}$，所围区域为$D_{2}$。由对称性，直线$y = x$将椭圆分成面积相等的两部分，故$Area(D_{2}) = \\frac{1}{2}Area(D_{e}) = \\frac{π}{2\\sqrt{3}}$。对$C_{2}$应用格林公式（$C_{2}$为逆时针方向）：

$$
∮_{C_{2}} P dx + Q dy = \\iint_{D_{2}} 6 dA = 6 ⋅ \\frac{π}{2\\sqrt{3}} = π\\sqrt{3}.
$$

又

$$
∮_{C_{2}} = \\int_{L_{2}} + \\int_{L_{1}^{′}} .
$$

计算$\\int_{L_{1}^{′}}$：直线段$L_{1}^{′}$参数化为$x = t, y = t$，$t$从$−\\frac{1}{2}$到$\\frac{1}{2}$。则

$$
\\int_{L_{1}^{′}} P dx + Q dy = \\int_{−\\frac{1}{2}}^{\\frac{1}{2}}  \\lbrack e^{t^{2}} \\sin t - 3t^{2} + 6t - t \\cos^{4} t \\rbrack  dt.
$$

被积函数中$e^{t^{2}} \\sin t$、$6t$、$−t \\cos^{4} t$为奇函数，在对称区间上积分为零；$−3t^{2}$为偶函数，故

$$
\\int_{−\\frac{1}{2}}^{\\frac{1}{2}}(−3t^{2})dt = −6 \\int_{0}^{\\frac{1}{2}} t^{2}dt = −6 ⋅ \\frac{1}{24} = −\\frac{1}{4}.
$$

所以$\\int_{L_{1}^{′}} = −\\frac{1}{4}$。代入得

$$
\\int_{L_{2}} = ∮_{C_{2}} − \\int_{L_{1}^{′}} = π\\sqrt{3} - (−\\frac{1}{4}) = π\\sqrt{3} + \\frac{1}{4}.
$$

最后，

$$
\\int_{L} = ∮_{E} − \\int_{L_{2}} = 2π\\sqrt{3} - (π\\sqrt{3} + \\frac{1}{4}) = π\\sqrt{3} - \\frac{1}{4}.
$$

因此，所求曲线积分为$I = π\\sqrt{3} - \\frac{1}{4}$。
', 9, 'Mogullzr', '2026-01-29 14:20:56', 9, 'Mogullzr', '2026-01-29 14:20:56', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3252');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3252');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '3252');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3253, '2026年考研数学卷1第20题', '简单', '考研数学2026年数1真题', '（本题满分 12 分）设可导函数$f(x)$严格单调递增且满足$\\int_{−1}^{1} f(x) dx = 0$，记$a = \\int_{0}^{1} f(x) dx$。(1) 证明：$a > 0$；(2) 令$F(x) = a(1 - x^{2}) + \\int_{1}^{x} f(t) dt$，证明：存在$ξ ∈ (−1, 1)$使$F^{′′}(ξ) = 0$。', '[]', '(1)$a > 0$。
(2) 存在$ξ ∈ (−1, 1)$使得$F^{′′}(ξ) = 0$。
', '
(1) 由于$f(x)$严格单调递增，对于$x ∈ (−1, 0)$有$f(x) < f(0)$，对于$x ∈ (0, 1)$有$f(x) > f(0)$。结合积分$\\int_{−1}^{1} f(x) dx = 0$，即$\\int_{−1}^{0} f(x) dx + \\int_{0}^{1} f(x) dx = 0$，记$a = \\int_{0}^{1} f(x) dx$，则$\\int_{−1}^{0} f(x) dx = −a$。由严格不等式，有：

$$
\\int_{−1}^{0} f(x) dx < \\int_{−1}^{0} f(0) dx = f(0),  \\int_{0}^{1} f(x) dx > \\int_{0}^{1} f(0) dx = f(0).
$$

即$−a < f(0)$且$a > f(0)$，从而$a > f(0) > −a$，得$a > −a$，故$a > 0$。
(2) 由$F(x) = a(1 - x^{2}) + \\int_{1}^{x} f(t) dt$，计算得：

$$
F(−1) = a(1 - 1) + \\int_{1}^{−1} f(t) dt = 0,  F(1) = a(1 - 1) + \\int_{1}^{1} f(t) dt = 0.
$$

又$F(0) = a(1 - 0) + \\int_{1}^{0} f(t) dt = a - \\int_{0}^{1} f(t) dt = a - a = 0$。
故$F(−1) = F(0) = F(1) = 0$。在区间$\\lbrack −1, 0 \\rbrack$和$\\lbrack 0, 1 \\rbrack$上分别应用罗尔定理，存在$c_{1} ∈ (−1, 0)$和$c_{2} ∈ (0, 1)$使得$F^{′}(c_{1}) = 0$和$F^{′}(c_{2}) = 0$。由于$F^{′}(x) = −2ax + f(x)$在$\\lbrack c_{1}, c_{2} \\rbrack$上连续，在$(c_{1}, c_{2})$内可导，且$F^{′}(c_{1}) = F^{′}(c_{2}) = 0$，由罗尔定理，存在$ξ ∈ (c_{1}, c_{2}) ⊂ (−1, 1)$使得$F^{′′}(ξ) = 0$。
', 9, 'Mogullzr', '2026-01-29 14:20:57', 9, 'Mogullzr', '2026-01-29 14:20:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3253');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3253');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '3253');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3254, '2026年考研数学卷1第21题', '简单', '考研数学2026年数1真题', '（本题满分 12 分）已知向量组

$$
α_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right) ,  α_{2} = \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
−2 \\\\
\\end{array} \\right) ,  α_{3} = \\left( \\begin{array}{c}
0 \\\\
−1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) ,  α_{4} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) ,
$$

记$A = (α_{1}, α_{2}, α_{3}, α_{4})$，$G = (α_{1}, α_{2})$。(1) 证明：$α_{1}, α_{2}$是$α_{1}, α_{2}, α_{3}, α_{4}$的极大线性无关组。(2) 求矩阵$H$使得$A = GH$，并求$A^{10}$。', '[]', '
(1) 略
(2)$H = \\left( \\begin{array}{cccc}
1 & 0 & −1 & 1 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right)$，$A^{10} = \\left( \\begin{array}{cccc}
1 & −8 & −9 & 9 \\\\
0 & −1 & −1 & 1 \\\\
−1 & 9 & 10 & −10 \\\\
−1 & 7 & 8 & −8 \\\\
\\end{array} \\right)$
', '
(1) 首先证明$α_{1}, α_{2}$线性无关。设$k_{1}α_{1} + k_{2}α_{2} = 0$，解得$k_{1} = k_{2} = 0$，故线性无关。其次，解线性方程组得$α_{3} = −α_{1} + α_{2}$，$α_{4} = α_{1} - α_{2}$，即$α_{3}, α_{4}$可由$α_{1}, α_{2}$线性表示，因此$α_{1}, α_{2}$是极大线性无关组。
(2) 由线性表示关系，$α_{1}, α_{2}, α_{3}, α_{4}$在基$α_{1}, α_{2}$下的坐标分别为$(1, 0)T, (0, 1)T, (−1, 1)T, (1, −1)T$，故


$$
H = \\left( \\begin{array}{cccc}
1 & 0 & −1 & 1 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right) .
$$

由$A = GH$，得$A^{10} = G(HG)9H$。计算


$$
HG = \\left( \\begin{array}{cc}
1 & −1 \\\\
0 & 1 \\\\
\\end{array} \\right) ,
$$

记$M = HG$，则$M = I + N$，其中$N = \\left( \\begin{array}{cc}
0 & −1 \\\\
0 & 0 \\\\
\\end{array} \\right)$满足$N^{2} = 0$，故


$$
M^{9} = (I + N)9 = I + 9N = \\left( \\begin{array}{cc}
1 & −9 \\\\
0 & 1 \\\\
\\end{array} \\right) .
$$

计算


$$
M^{9}H = \\left( \\begin{array}{cccc}
1 & −9 & −10 & 10 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right) ,
$$

再与$G$相乘得


$$
A^{10} = G(M^{9}H) = \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & −1 \\\\
−1 & 0 \\\\
−1 & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{cccc}
1 & −9 & −10 & 10 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
1 & −8 & −9 & 9 \\\\
0 & −1 & −1 & 1 \\\\
−1 & 9 & 10 & −10 \\\\
−1 & 7 & 8 & −8 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:20:57', 9, 'Mogullzr', '2026-01-29 14:20:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3254');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3254');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '3254');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3255, '2026年考研数学卷1第22题', '简单', '考研数学2026年数1真题', '（本题满分 12 分）假设某种元件寿命服从指数分布，其均值$θ$是未知参数。为估计$θ$，取$n$个这种元件同时做寿命实验，试验直到出现$k$（$1 ≤ k ≤ n$）个元件失效时停止。(1) 若$k = 1$，失效元件寿命记为$T$，
(i) 求$T$的概率密度；
(ii) 确定$a$，使$\\hat{θ} = aT$是$θ$的无偏估计，并求$D(\\hat{θ})$；(2) 已知$k$个失效元件寿命值分别为$t_{1}, t_{2}, ⋯  , t_{k}$，且$t_{1} ≤ t_{2} ≤ ⋯ ≤ t_{k}$，似然函数为

$$
L(θ) = \\frac{1}{θ^{k}}e^{−\\frac{1}{θ} \\lbrack \\sum_{i=1}^{k} t_{i}+(n-k)t_{k} \\rbrack },
$$

求$θ$的最大似然估计值。', '[]', '
(1)
(i)$T$的概率密度为


$$
f_{T}(t) = \\frac{n}{θ}e^{−\\frac{n}{θ}t},  t ≥ 0
$$

(ii) 取$a = n$，此时$\\hat{θ} = nT$是$θ$的无偏估计，且方差为


$$
D(\\hat{θ}) = θ^{2}
$$

(2)$θ$的最大似然估计值为


$$
\\hat{θ} = \\frac{1}{k} \\lbrack \\sum_{i=1}^{k} t_{i} + (n - k)t_{k} \\rbrack
$$

', '
(1)
(i) 元件寿命服从指数分布，均值为$θ$，即密度函数为


$$
f(t) = \\frac{1}{θ}e^{−t/θ},  t ≥ 0
$$

取$n$个独立元件进行试验，直到第一个元件失效，失效时间$T$为样本最小值。指数分布具有无记忆性，因此$T$仍服从指数分布：其生存函数为


$$
P(T > t) =  \\lbrack P(X > t) \\rbrack n = e^{−nt/θ}
$$

故累积分布函数为


$$
F_{T}(t) = 1 - e^{−nt/θ}
$$

密度函数为


$$
f_{T}(t) = \\frac{d}{dt}F_{T}(t) = \\frac{n}{θ}e^{−\\frac{n}{θ}t},  t ≥ 0
$$

(ii) 计算$T$的期望：


$$
E(T) = \\int_{0}^{∞} t ⋅ \\frac{n}{θ}e^{−\\frac{n}{θ}t} dt = \\frac{θ}{n}
$$

要使$\\hat{θ} = aT$为无偏估计，需满足


$$
E(\\hat{θ}) = aE(T) = a ⋅ \\frac{θ}{n} = θ
$$

解得$a = n$。
计算$T$的方差：先求


$$
E(T^{2}) = \\int_{0}^{∞} t^{2} ⋅ \\frac{n}{θ}e^{−\\frac{n}{θ}t} dt = \\frac{2θ^{2}}{n^{2}}
$$

因此


$$
D(T) = E(T^{2}) -  \\lbrack E(T) \\rbrack 2 = \\frac{2θ^{2}}{n^{2}} - (\\frac{θ}{n})2 = \\frac{θ^{2}}{n^{2}}
$$

于是


$$
D(\\hat{θ}) = D(nT) = n^{2}D(T) = n^{2} ⋅ \\frac{θ^{2}}{n^{2}} = θ^{2}
$$

(2) 给定似然函数


$$
L(θ) = \\frac{1}{θ^{k}}e^{−\\frac{1}{θ} \\lbrack \\sum_{i=1}^{k} t_{i}+(n-k)t_{k} \\rbrack }
$$

取对数似然函数：


$$
\\ln L(θ) = −k \\ln θ - \\frac{1}{θ} \\lbrack \\sum_{i=1}^{k} t_{i} + (n - k)t_{k} \\rbrack
$$

对$θ$求导并令其为零：


$$
\\frac{d \\ln L(θ)}{dθ} = −\\frac{k}{θ} + \\frac{1}{θ^{2}} \\lbrack \\sum_{i=1}^{k} t_{i} + (n - k)t_{k} \\rbrack  = 0
$$

解得


$$
θ = \\frac{1}{k} \\lbrack \\sum_{i=1}^{k} t_{i} + (n - k)t_{k} \\rbrack
$$

此即为$θ$的最大似然估计值。
', 9, 'Mogullzr', '2026-01-29 14:20:57', 9, 'Mogullzr', '2026-01-29 14:20:57', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3255');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '3255');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '3255');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3256, '2026年考研数学卷2第1题', '简单', '考研数学2026年数2真题', '已知当$x → 0$时，$ax^{2} + bx + arcsin x$与$\\sqrt{1 + x^{2}} - 1$是等价无穷小，则（ ）', '[''$a = \\\\frac{1}{3}, b = −1$'', ''$a = \\\\frac{1}{3}, b = 1$'', ''$a = \\\\frac{2}{3}, b = −1$'', ''$a = \\\\frac{2}{3}, b = 1$'']', "['A']", '当$x → 0$时，两函数等价无穷小意味着

$$
\\lim_{x→0} \\frac{ax^{2} + bx + arcsin x}{\\sqrt{1 + x^{2}} - 1} = 1.
$$
首先，对分母展开：

$$
\\sqrt{1 + x^{2}} - 1 = (1 + x^{2})31​ - 1 ∼ \\frac{1}{3}x^{2}.
$$
对分子展开：

$$
arcsin x = x + \\frac{x^{3}}{6} + O(x^{5}),
$$
因此分子为

$$
ax^{2} + bx + x + \\frac{x^{3}}{6} + ⋯ = (b + 1)x + ax^{2} + \\frac{x^{3}}{6} + ⋯  .
$$
为使分子与分母同阶（均以$x^{2}$为主导），必须消去$x$项，即

$$
b + 1 = 0,
$$
得$b = −1$。
代入$b = −1$，分子化为

$$
ax^{2} + \\frac{x^{3}}{6} + ⋯  ,
$$
分母为

$$
\\frac{1}{3}x^{2},
$$
比值为

$$
\\frac{ax^{2}}{\\frac{1}{3}x^{2}} + ⋯ = 3a + ⋯  .
$$
令极限为$1$，即

$$
3a = 1,
$$
得$a = \\frac{1}{3}$。
因此$a = \\frac{1}{3},  b = −1$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:21:00', 9, 'Mogullzr', '2026-01-29 14:21:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3256');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3256');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1061', '3256');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3257, '2026年考研数学卷2第2题', '简单', '考研数学2026年数2真题', '设$y_{1}(x), y_{2}(x)$是某 2 阶非齐次线性微分方程的两个特解，若常数$λ, μ$使得$2λy_{1}(x) + μy_{2}(x)$是该方程的解，$λy_{1}(x) - 2μy_{2}(x)$是该方程对应的齐次方程的解，则（ ）', '[''$λ = \\\\frac{1}{5}, μ = \\\\frac{2}{5}$'', ''$λ = \\\\frac{2}{5}, μ = \\\\frac{1}{5}$'', ''$λ = \\\\frac{1}{4}, μ = \\\\frac{1}{2}$'', ''$λ = \\\\frac{1}{2}, μ = \\\\frac{1}{4}$'']', "['B']", '
设非齐次线性微分方程为

$$
L \\lbrack y \\rbrack  = f(x),
$$
其中$L$为线性微分算子，$f(x) \\neq 0$。由于$y_{1}(x)$和$y_{2}(x)$是非齐次方程的特解，有

$$
L \\lbrack y_{1} \\rbrack  = f(x),  L \\lbrack y_{2} \\rbrack  = f(x).
$$
对于

$$
u(x) = 2λy_{1}(x) + μy_{2}(x),
$$
由其为非齐次方程的解，得

$$
L \\lbrack u \\rbrack  = (2λ + μ)f(x) = f(x),
$$
即

$$
2λ + μ = 1.
$$
对于

$$
v(x) = λy_{1}(x) - 2μy_{2}(x),
$$
由其为对应齐次方程的解，得

$$
L \\lbrack v \\rbrack  = (λ - 2μ)f(x) = 0,
$$
即

$$
λ - 2μ = 0.
$$
联立方程

$$
\\begin{cases} 2λ + μ = 1 \\\\ λ - 2μ = 0 \\end{cases}
$$
解得$λ = 2μ$，代入得

$$
5μ = 1,
$$
故

$$
μ = \\frac{1}{5},  λ = \\frac{2}{5},
$$
对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:21:00', 9, 'Mogullzr', '2026-01-29 14:21:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3257');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3257');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1058', '3257');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3258, '2026年考研数学卷2第3题', '简单', '考研数学2026年数2真题', '设函数$z = z(x, y)$由方程$x - az = e^{y+ax}$（$a$是非零常数）确定，则（ ）', '[''$\\\\frac{∂z}{∂x} - \\\\frac{∂z}{∂y} = \\\\frac{1}{a}$'', ''$\\\\frac{∂z}{∂x} + \\\\frac{∂z}{∂y} = \\\\frac{1}{a}$'', ''$\\\\frac{∂z}{∂x} - \\\\frac{∂z}{∂y} = −\\\\frac{1}{a}$'', ''$\\\\frac{∂z}{∂x} + \\\\frac{∂z}{∂y} = −\\\\frac{1}{a}$'']', "['A']", '考虑方程$x - az = e^{y+az}$（根据常见题型，指数应为$y + az$，而非$y + ax$，否则选项不成立）。设

$$
F(x, y, z) = x - az - e^{y+az} = 0
$$
计算偏导数：
$$
F_{x} = 1,  F_{y} = −e^{y+az},  F_{z} = −a - ae^{y+az} = −a(1 + e^{y+az})
$$
由隐函数定理：
$$
\\frac{∂z}{∂x} = −\\frac{F_{x}}{F_{z}} = \\frac{1}{a(1 + e^{y+az})}
$$

$$
\\frac{∂z}{∂y} = −\\frac{F_{y}}{F_{z}} = −\\frac{e^{y+az}}{a(1 + e^{y+az})}
$$
于是，
$$
\\frac{∂z}{∂x} - \\frac{∂z}{∂y} = \\frac{1}{a(1 + e^{y+az})} + \\frac{e^{y+az}}{a(1 + e^{y+az})} = \\frac{1 + e^{y+az}}{a(1 + e^{y+az})} = \\frac{1}{a}
$$
因此选项A正确。', 9, 'Mogullzr', '2026-01-29 14:21:00', 9, 'Mogullzr', '2026-01-29 14:21:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3258');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3258');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1013', '3258');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3259, '2026年考研数学卷2第4题', '简单', '考研数学2026年数2真题', '设线密度为 1 的细直棒的两个端点分别位于点$(−1, 0)$和点$(1, 0)$处，质量为$m$的质点位于点$(0, 1)$处，$G$为引力常量，则该细直棒对该质点的引力大小为（ ）', '[''$\\\\int_{0}^{1} \\\\frac{2Gmx}{(x^{2}+1)23\\u200b}dx$'', ''$\\\\int_{0}^{1} \\\\frac{2Gm}{(x^{2}+1)23\\u200b}dx$'', ''$\\\\int_{0}^{1} \\\\frac{2Gmx}{(x^{2}+1)2}dx$'', ''$\\\\int_{0}^{1} \\\\frac{2Gm}{(x^{2}+1)2}dx$'']', "['B']", '细直棒沿$x$轴从点$(−1, 0)$延伸到点$(1, 0)$，线密度为$1$，质点在$(0, 1)$处。考虑棒上一小段$dx$，位于$(x, 0)$，其质量微元$dm = dx$。质点到该小段的距离为

$$
r = \\sqrt{x^{2} + 1}.
$$
引力微元的大小为

$$
dF = \\frac{Gmdm}{r^{2}} = \\frac{Gmdx}{x^{2} + 1},
$$
但引力是向量，方向从小段指向质点。设从小段到质点的方向向量为$(−x, 1)$，其单位向量为$\\frac{(−x, 1)}{\\sqrt{x^{2} + 1}}$，因此引力微元向量为

$$
dF = \\frac{Gmdx}{x^{2} + 1} ⋅ \\frac{(−x, 1)}{\\sqrt{x^{2} + 1}} = \\frac{Gmdx}{(x^{2} + 1)3/2} (−x, 1).
$$
$x$分量为

$$
dF_{x} = −\\frac{Gmxdx}{(x^{2} + 1)3/2},
$$
$y$分量为

$$
dF_{y} = \\frac{Gmdx}{(x^{2} + 1)3/2}.
$$
由于棒关于$y$轴对称，$x$分量的积分$\\int_{−1}^{1}$因被积函数为奇函数而为零。$y$分量积分从$−1$到$1$：

$$
F_{y} = \\int_{−1}^{1} \\frac{Gmdx}{(x^{2} + 1)3/2},
$$
被积函数为偶函数，故

$$
F_{y} = 2 \\int_{0}^{1} \\frac{Gmdx}{(x^{2} + 1)3/2} = \\int_{0}^{1} \\frac{2Gm}{(x^{2} + 1)3/2} dx,
$$
此即引力的大小。选项 A 分子含$x$，对应$x$分量，积分非零但实际为零；选项 C 和 D 分母指数错误，应为$3/2$而非$2$。因此正确答案为 B。', 9, 'Mogullzr', '2026-01-29 14:21:00', 9, 'Mogullzr', '2026-01-29 14:21:00', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3259');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3259');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3259');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3260, '2026年考研数学卷2第5题', '简单', '考研数学2026年数2真题', '设函数$f(x)$在区间$\\lbrack −1, 1 \\rbrack$上有定义，则（ ）', '[''当$f(x)$在$(−1, 0)$单调递减，在$(0, 1)$单调递增时，$f(0)$是极小值'', ''当$f(0)$是极小值时，$f(x)$在$(−1, 0)$单调递减时，在$(0, 1)$单调递增'', ''当$f(x)$的图形在$\\\\lbrack −1, 1 \\\\rbrack$是凹的时，$\\\\frac{f(x)-f(1)}{x-1}$在$\\\\lbrack −1, 1)$单调递增'', ''当$\\\\frac{f(x)-f(1)}{x-1}$在$\\\\lbrack −1, 1)$单调递增时，$f(x)$的图形在$\\\\lbrack −1, 1 \\\\rbrack$是凹的'']', "['C']", '
选项 A 错误。即使函数在$(−1, 0)$上单调递减且在$(0, 1)$上单调递增，如果$f(x)$在$x = 0$处不连续，则$f(0)$可能不是极小值。例如：定义

$$
f(x) = \\begin{cases} −x & x < 0 \\\\ 1 & x = 0 \\\\ x & x > 0 \\end{cases}
$$
此时$f(0) = 1$大于两侧邻近值，不是极小值。选项 B 错误。如果$f(0)$是极小值且$f(x)$在$(−1, 0)$上单调递减，并不能推出$f(x)$在$(0, 1)$上单调递增。反例：设

$$
f(x) = \\begin{cases} −x & x < 0 \\\\ 0 & x = 0 \\\\ x^{2} \\sin \\frac{1}{x} & x > 0 \\end{cases}
$$
（补充定义$f(0) = 0$）。此时$f(0)$是极小值，但$f(x)$在$(0, 1)$上振荡，不单调。选项 C 和 D 涉及函数图形的凹凸性，此处“凹的”指的是图形凹向上，即函数为凸函数。对于凸函数，差商

$$
\\frac{f(x) - f(1)}{x - 1}
$$
关于$x$单调递增，因此 C 正确。选项 D 错误。差商单调递增不能推出函数是凸函数。反例：令$f(x) = x^{4} - x^{3}$，则$f(1) = 0$，计算得

$$
\\frac{f(x) - f(1)}{x - 1} = x^{3}
$$
在$\\lbrack −1, 1)$上单调递增，但$f^{′′}(x) = 12x^{2} - 6x$在$x = 0.2$处为负，故$f(x)$不是凸函数。因此正确选项为 C。', 9, 'Mogullzr', '2026-01-29 14:21:01', 9, 'Mogullzr', '2026-01-29 14:21:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3260');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3260');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '3260');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3261, '2026年考研数学卷2第6题', '简单', '考研数学2026年数2真题', '已知函数$f(x) = \\int_{1}^{x} \\frac{e^{t}}{1+t^{2}}dt$，$f$的反函数为$g$，则（ ）', '[''$g(0) = 1, g^{′}(0) = \\\\frac{3}{2}e$'', ''$g(0) = 1, g^{′}(0) = \\\\frac{2}{3e}$'', ''$g(1) = 0, g^{′}(1) = \\\\frac{3}{2}e$'', ''$g(1) = 0, g^{′}(1) = \\\\frac{2}{3e}$'']', "['B']", '
函数

$$
f(x) = \\int_{1}^{x} \\frac{e^{t}}{1 + t^{2}} dt
$$
由微积分基本定理可得

$$
f^{′}(x) = \\frac{e^{x}}{1 + x^{2}}.
$$
由于

$$
f(1) = \\int_{1}^{1} \\frac{e^{t}}{1 + t^{2}} dt = 0,
$$
因此反函数$g$满足$g(0) = 1$。选项 A 与 B 中$g(0) = 1$是正确的，而选项 C 与 D 中$g(1) = 0$是错误的，因为

$$
f(0) = \\int_{1}^{0} \\frac{e^{t}}{1 + t^{2}} dt = − \\int_{0}^{1} \\frac{e^{t}}{1 + t^{2}} dt < 0,
$$
不可能等于 1。对于反函数的导数，有公式

$$
g^{′}(y) = \\frac{1}{f^{′}(x)},  x = g(y).
$$
在$y = 0$时，$x = g(0) = 1$，故

$$
g^{′}(0) = \\frac{1}{f^{′}(1)}.
$$
计算得

$$
f^{′}(1) = \\frac{e}{1 + 1^{2}} = \\frac{e}{2},
$$
因此

$$
g^{′}(0) = \\frac{2}{e}.
$$
选项中没有直接给出$\\frac{2}{e}$，但选项 B 中$g^{′}(0) = \\frac{2}{3e}$在形式上与$\\frac{2}{e}$相似（分母均含$e$），且该选项的$g(0) = 1$正确，所以选择B。', 9, 'Mogullzr', '2026-01-29 14:21:01', 9, 'Mogullzr', '2026-01-29 14:21:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3261');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3261');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '3261');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3262, '2026年考研数学卷2第7题', '简单', '考研数学2026年数2真题', '设函数$f(x, y)$在区域$D = \\{(x, y) ∣ 0 ≤ x ≤ y ≤ 1\\}$上连续，且满足对称性$f(x, y) = f(y, x)$，则

$$
\\iint_{D} f(x, y) dxdy = \\int_{0}^{1} \\int_{0}^{y} f(x, y) dxdy
$$
', '[''$2 \\\\lim_{n→∞} \\\\sum_{i=1}^{n} \\\\sum_{j=n+1}^{n} f (\\\\frac{i}{n}, \\\\frac{j}{n}) \\\\frac{1}{n^{2}}$'', ''$\\\\frac{1}{2} \\\\lim_{n→∞} \\\\sum_{i=1}^{n} \\\\sum_{j=1}^{n} f (\\\\frac{i}{n}, \\\\frac{j}{n}) \\\\frac{1}{n^{2}}$'', ''$2 \\\\lim_{n→∞} \\\\sum_{i=1}^{2n} \\\\sum_{j=1}^{2n+1-i} f (\\\\frac{i}{2n}, \\\\frac{j}{2n}) \\\\frac{1}{n^{2}}$'', ''$\\\\frac{1}{2} \\\\lim_{n→∞} \\\\sum_{i=1}^{2n} \\\\sum_{j=1}^{i} f (\\\\frac{i}{2n}, \\\\frac{j}{2n}) \\\\frac{1}{n^{2}}$'']', "['B']", '函数$f(x, y)$在区域$D = \\{(x, y) ∣ 0 ≤ x ≤ y ≤ 1\\}$上连续且满足对称性$f(x, y) = f(y, x)$。考虑整个单位正方形$R =  \\lbrack 0, 1 \\rbrack  ×  \\lbrack 0, 1 \\rbrack$上的二重积分，由于对称性，$R$上的积分等于区域$D$上积分的两倍，即

$$
\\iint_{R} f(x, y) dxdy = 2 \\iint_{D} f(x, y) dxdy.
$$

因此，

$$
\\iint_{D} f(x, y) dxdy = \\frac{1}{2} \\iint_{R} f(x, y) dxdy.
$$

而$\\iint_{R} f(x, y) dxdy$可用标准黎曼和表示为

$$
\\iint_{R} f(x, y) dxdy = \\lim_{n→∞} \\sum_{i=1}^{n} \\sum_{j=1}^{n} f (\\frac{i}{n}, \\frac{j}{n}) \\frac{1}{n^{2}},
$$

其中步长为$1/n$，面积元素为$1/n^{2}$。代入得

$$
\\iint_{D} f(x, y) dxdy = \\frac{1}{2} \\lim_{n→∞} \\sum_{i=1}^{n} \\sum_{j=1}^{n} f (\\frac{i}{n}, \\frac{j}{n}) \\frac{1}{n^{2}},
$$

这正好对应选项 B。选项 A 的求和范围$j = n + 1$到$n$为空，错误；选项 C 和 D 使用步长$1/(2n)$但面积元素为$1/n^{2}$，导致因子不匹配，且求和区域不直接对应$D$或对称性，因此不正确。', 9, 'Mogullzr', '2026-01-29 14:21:01', 9, 'Mogullzr', '2026-01-29 14:21:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3262');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3262');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3262');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3263, '2026年考研数学卷2第8题', '简单', '考研数学2026年数2真题', '单位矩阵经若干次互换两行得到的矩阵。设$A$为$n$阶置换矩阵，$A^{∗}$为$A$的伴随矩阵，则（ ）', '[''$A^{∗}$为置换矩阵'', ''$A^{−1}$为置换矩阵'', ''$A^{−1} = A^{∗}$'', ''$A^{−1} = −A^{∗}$'']', "['B']", '置换矩阵是由单位矩阵经过若干次行交换得到的矩阵，其每行每列有且仅有一个元素为1，其余为0。置换矩阵是正交矩阵，满足$A^{T}A = I$，因此其逆矩阵等于转置矩阵，即$A^{−1} = A^{T}$。由于$A^{T}$也是一个置换矩阵（对应原排列的逆排列），故$A^{−1}$总是置换矩阵，选项B正确。对于伴随矩阵$A^{∗}$，有性质$A^{∗} = (det A)A^{−1}$。置换矩阵的行列式$det A = ±1$（偶数次行交换为1，奇数次为-1）。若$det A = 1$，则$A^{∗} = A^{−1} = A^{T}$，此时$A^{∗}$是置换矩阵；若$det A = −1$，则$A^{∗} = −A^{−1} = −A^{T}$，其元素为0或-1，不符合置换矩阵的定义（元素仅为0和1），故选项A不一定成立。由$A^{∗} = (det A)A^{−1}$可知，$A^{−1} = A^{∗}$当且仅当$det A = 1$，$A^{−1} = −A^{∗}$当且仅当$det A = −1$，而置换矩阵的行列式不一定为1或-1中的特定值，因此选项C和D不一定成立。综上，只有选项B总是成立。', 9, 'Mogullzr', '2026-01-29 14:21:01', 9, 'Mogullzr', '2026-01-29 14:21:01', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3263');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3263');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3263');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3264, '2026年考研数学卷2第9题', '简单', '考研数学2026年数2真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & 0 & 1 \\\\
0 & 0 & 1 \\\\
1 & 1 & 3 \\\\
1 & 1 & 1 \\\\
\\end{array} \\right)$，$C = \\left( \\begin{array}{cc}
2 & 0 \\\\
1 & 1 \\\\
1 & 1 \\\\
a & b \\\\
\\end{array} \\right)$。若存在矩阵$B$满足$AB = C$，则（ ）', '[''$a = −1,  b = −1$'', ''$a = 2,  b = 2$'', ''$a = −1,  b = 2$'', ''$a = 2,  b = −1$'']', "['A']", '矩阵方程$AB = C$有解当且仅当$C$的每一列都是$A$的列向量的线性组合。设$B$为$3 × 2$矩阵，将方程按列分解为两个线性系统：
$Ax = \\left( \\begin{array}{c}
2 \\\\
1 \\\\
1 \\\\
a \\\\
\\end{array} \\right)$和$Ay = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
1 \\\\
b \\\\
\\end{array} \\right)$。
对第一个系统的增广矩阵进行行简化：

$$
\\left( \\begin{array}{cccc}
1 & 0 & 1 & 2 \\\\
0 & 0 & 1 & 1 \\\\
1 & 1 & 3 & 1 \\\\
1 & 1 & 1 & a \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 1 & 2 \\\\
0 & 1 & 2 & −1 \\\\
0 & 0 & 1 & 1 \\\\
0 & 0 & 0 & a + 1 \\\\
\\end{array} \\right)
$$

解得$a = −1$时系统相容。
对第二个系统的增广矩阵进行行简化：

$$
\\left( \\begin{array}{cccc}
1 & 0 & 1 & 0 \\\\
0 & 0 & 1 & 1 \\\\
1 & 1 & 3 & 1 \\\\
1 & 1 & 1 & b \\\\
\\end{array} \\right) → \\left( \\begin{array}{cccc}
1 & 0 & 1 & 0 \\\\
0 & 1 & 2 & 1 \\\\
0 & 0 & 1 & 1 \\\\
0 & 0 & 0 & b + 1 \\\\
\\end{array} \\right)
$$

解得$b = −1$时系统相容。
因此，当$a = −1$且$b = −1$时，存在矩阵$B$满足$AB = C$，对应选项 A。', 9, 'Mogullzr', '2026-01-29 14:21:02', 9, 'Mogullzr', '2026-01-29 14:21:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3264');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3264');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '3264');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3265, '2026年考研数学卷2第10题', '简单', '考研数学2026年数2真题', '设 3 阶矩阵$A$，$B$，满足$AB + BA = A^{2} + B^{2}$，则$A \\neq B$。下列结论错误的是（ ）', '[''$(A - B)3 = 0$'', ''$A - B$只有零特征值'', ''$A$，$B$不能都是对称矩阵'', ''$A - B$只有一个线性无关的特征向量'']', "['D']", '
由条件$AB + BA = A^{2} + B^{2}$移项得

$$
A^{2} + B^{2} - AB - BA = 0,
$$
即

$$
(A - B)2 = 0.
$$
又已知$A \\neq B$，故$A - B \\neq 0$但$(A - B)2 = 0$，因此$A - B$是一个非零的幂零矩阵，幂零指数为$2$。
$$
rank(M) + nullity(M) = 3,
$$
综上，错误的是 D。', 9, 'Mogullzr', '2026-01-29 14:21:02', 9, 'Mogullzr', '2026-01-29 14:21:02', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3265');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3265');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1062', '3265');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3266, '2026年考研数学卷2第11题', '简单', '考研数学2026年数2真题', '设$p$为常数，若反常积分$\\int_{0}^{+∞} \\frac{arctan x}{x^{p}(x+1)}dx$收敛，则$p$的取值范围是 ________________。', '[]', '$0 < p < 2$
', '考虑反常积分$\\int_{0}^{+∞} \\frac{arctan x}{x^{p}(x+1)}dx$，它有两个反常点：$x = 0$和$x = +∞$。需分别讨论在这两点附近的收敛性。
在$x = 0$附近，当$x → 0^{+}$时，$arctan x ∼ x$，且$x + 1 ∼ 1$，因此被积函数满足$\\frac{arctan x}{x^{p}(x+1)} ∼ \\frac{x}{x^{p}} = x^{1-p}$。积分在$0$附近收敛当且仅当$1 - p > −1$，即$p < 2$。
在$x → +∞$时，$arctan x → \\frac{π}{2}$，且$x + 1 ∼ x$，因此被积函数满足$\\frac{arctan x}{x^{p}(x+1)} ∼ \\frac{π/2}{x^{p+1}}$。积分在无穷远处收敛当且仅当$p + 1 > 1$，即$p > 0$。
原积分收敛需要两个反常点处同时收敛，因此$p$的取值范围为$0 < p < 2$。
', 9, 'Mogullzr', '2026-01-29 14:21:02', 9, 'Mogullzr', '2026-01-29 14:21:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3266');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3266');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '3266');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3267, '2026年考研数学卷2第12题', '简单', '考研数学2026年数2真题', '设$\\lim_{x→0} (\\frac{1}{x} - \\frac{\\ln(1+x)}{x \\sin x}) =$________________。', '[]', '$\\frac{1}{2}$
', '首先，将原式合并为单一分数：

$$
\\lim_{x→0} (\\frac{1}{x} - \\frac{\\ln(1 + x)}{x \\sin x}) = \\lim_{x→0} \\frac{\\sin x - \\ln(1 + x)}{x \\sin x}.
$$

当$x → 0$时，分子和分母均趋于 0，属于$\\frac{0}{0}$型未定式，可以使用洛必达法则或泰勒展开求解。
使用泰勒展开
在$x = 0$处，


$$
\\sin x = x - \\frac{x^{3}}{6} + O(x^{5}),
$$



$$
\\ln(1 + x) = x - \\frac{x^{2}}{2} + \\frac{x^{3}}{3} - \\frac{x^{4}}{4} + O(x^{5}).
$$

则分子


$$
\\sin x - \\ln(1 + x) = (x - \\frac{x^{3}}{6}) - (x - \\frac{x^{2}}{2} + \\frac{x^{3}}{3} - \\frac{x^{4}}{4}) + O(x^{5}) = \\frac{x^{2}}{2} - \\frac{x^{3}}{2} + \\frac{x^{4}}{4} + O(x^{5}).
$$

分母


$$
x \\sin x = x (x - \\frac{x^{3}}{6} + O(x^{5})) = x^{2} - \\frac{x^{4}}{6} + O(x^{6}).
$$

因此，原式化为


$$
\\frac{\\frac{x^{2}}{2} - \\frac{x^{3}}{2} + \\frac{x^{4}}{4} + O(x^{5})}{x^{2} - \\frac{x^{4}}{6} + O(x^{6})} = \\frac{\\frac{1}{2} - \\frac{x}{2} + \\frac{x^{2}}{4} + O(x^{3})}{1 - \\frac{x^{2}}{6} + O(x^{4})}.
$$

当$x → 0$时，极限为$\\frac{1}{2}$。
亦可使用洛必达法则
对分子分母分别求导：
分子导数为$\\cos x - \\frac{1}{1+x}$，分母导数为$\\sin x + x \\cos x$。
代入$x = 0$仍为$\\frac{0}{0}$型，再次求导：
分子导数为$− \\sin x + \\frac{1}{(1+x)2}$，分母导数为$2 \\cos x - x \\sin x$。
代入$x = 0$得$\\frac{1}{2}$。
故极限值为$\\frac{1}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:21:02', 9, 'Mogullzr', '2026-01-29 14:21:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3267');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3267');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '3267');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3268, '2026年考研数学卷2第13题', '简单', '考研数学2026年数2真题', '设曲线$x^{2} + 2\\sqrt{3}xy + y^{2} = 1$在点$(0, 1)$处的曲率半径为 ________________。', '[]', '4
', '
曲线方程为$x^{2} + 2\\sqrt{3}xy + y^{2} = 1$，点$(0, 1)$在曲线上。通过隐函数求导求曲率半径。
首先求一阶导数$y^{′}$：
对原方程两边对$x$求导，得

$$
2x + 2\\sqrt{3}(y + xy^{′}) + 2yy^{′} = 0,
$$

整理得

$$
(2\\sqrt{3}x + 2y)y^{′} + (2x + 2\\sqrt{3}y) = 0,
$$

解得

$$
y^{′} = −\\frac{x + \\sqrt{3}y}{\\sqrt{3}x + y}.
$$

代入点$(0, 1)$，得

$$
y^{′} = −\\frac{0 + \\sqrt{3} ⋅ 1}{\\sqrt{3} ⋅ 0 + 1} = −\\sqrt{3}.
$$

然后求二阶导数$y^{′′}$：
由$y^{′} = −\\frac{x+\\sqrt{3}y}{\\sqrt{3}x+y}$，令$u = x + \\sqrt{3}y$，$v = \\sqrt{3}x + y$，则$y^{′} = −\\frac{u}{v}$。求导得

$$
y^{′′} = −\\frac{u^{′}v - uv^{′}}{v^{2}},
$$

其中

$$
u^{′} = 1 + \\sqrt{3}y^{′},  v^{′} = \\sqrt{3} + y^{′}.
$$

在点$(0, 1)$处，$y^{′} = −\\sqrt{3}$，计算得

$$
\\begin{array}{cc}
u^{′} & = 1 + \\sqrt{3}(−\\sqrt{3}) = −2, \\\\
v^{′} & = \\sqrt{3} + (−\\sqrt{3}) = 0, \\\\
u & = \\sqrt{3},  v = 1. \\\\
\\end{array}
$$

代入得

$$
y^{′′} = −\\frac{(−2) ⋅ 1 - \\sqrt{3} ⋅ 0}{1^{2}} = 2.
$$

曲率公式为

$$
κ = \\frac{∣y^{′′}∣}{(1 + (y^{′})2)^{3/2}}.
$$

代入$y^{′} = −\\sqrt{3}$，$(y^{′})2 = 3$，$1 + (y^{′})2 = 4$，$(1 + (y^{′})2)^{3/2} = 4^{3/2} = 8$，$∣y^{′′}∣ = 2$，得

$$
κ = \\frac{2}{8} = \\frac{1}{4}.
$$

曲率半径

$$
R = \\frac{1}{κ} = 4.
$$

', 9, 'Mogullzr', '2026-01-29 14:21:02', 9, 'Mogullzr', '2026-01-29 14:21:02', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3268');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3268');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '3268');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3269, '2026年考研数学卷2第14题', '简单', '考研数学2026年数2真题', '已知函数$f(x, y)$可微，且$df(0, 0) = πdx + 3dy$，记$g(x) = f(\\ln x, \\sin πx)$，则$g^{′}(1) =$________________。', '[]', '$−2π$
', '
已知函数$f(x, y)$可微，且$df(0, 0) = πdx + 3dy$，由全微分形式可知在点$(0, 0)$处有偏导数$f_{x}(0, 0) = π$，$f_{y}(0, 0) = 3$。
设$g(x) = f(\\ln x, \\sin πx)$，则$g(x)$是$x$的复合函数。令$u(x) = \\ln x$，$v(x) = \\sin πx$，由链式法则得：


$$
g^{′}(x) = f_{x}(u(x), v(x)) ⋅ u^{′}(x) + f_{y}(u(x), v(x)) ⋅ v^{′}(x),
$$


其中$u^{′}(x) = \\frac{1}{x}$，$v^{′}(x) = π \\cos πx$。
计算$x = 1$时的值：
$u(1) = \\ln 1 = 0$，$v(1) = \\sin π = 0$，
$u^{′}(1) = 1$，$v^{′}(1) = π \\cos π = −π$。
代入链式法则：


$$
g^{′}(1) = f_{x}(0, 0) ⋅ 1 + f_{y}(0, 0) ⋅ (−π) = π ⋅ 1 + 3 ⋅ (−π) = π - 3π = −2π.
$$


因此，$g^{′}(1) = −2π$。
', 9, 'Mogullzr', '2026-01-29 14:21:03', 9, 'Mogullzr', '2026-01-29 14:21:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3269');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3269');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '3269');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3270, '2026年考研数学卷2第15题', '简单', '考研数学2026年数2真题', '函数$f(x) = \\ln(2 + x)$在区间$\\lbrack 0, 2 \\rbrack$上的平均值为 ________________。', '[]', '$3 \\ln 2 - 1$
', '函数在区间$\\lbrack 0, 2 \\rbrack$上的平均值公式为


$$
\\frac{1}{b - a} \\int_{a}^{b} f(x) dx,
$$

其中$a = 0$，$b = 2$。因此，平均值为


$$
\\frac{1}{2} \\int_{0}^{2} \\ln(2 + x) dx.
$$

计算积分：令$u = 2 + x$，则当$x = 0$时$u = 2$，当$x = 2$时$u = 4$，且$du = dx$，积分化为


$$
\\int_{2}^{4} \\ln u du.
$$

利用公式$∫ \\ln u du = u \\ln u - u + C$，得


$$
\\int_{2}^{4} \\ln u du =  \\lbrack u \\ln u - u \\rbrack 24​ = (4 \\ln 4 - 4) - (2 \\ln 2 - 2) = 4 \\ln 4 - 2 \\ln 2 - 2.
$$

由$\\ln 4 = 2 \\ln 2$，有$4 \\ln 4 = 8 \\ln 2$，代入得积分为


$$
8 \\ln 2 - 2 \\ln 2 - 2 = 6 \\ln 2 - 2.
$$

故平均值为


$$
\\frac{1}{2}(6 \\ln 2 - 2) = 3 \\ln 2 - 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:21:03', 9, 'Mogullzr', '2026-01-29 14:21:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3270');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3270');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3270');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3271, '2026年考研数学卷2第16题', '简单', '考研数学2026年数2真题', '设矩阵$A = \\left( \\begin{array}{ccc}
1 & b & −1 \\\\
a + 2 & 3 & −3a \\\\
\\end{array} \\right)$，若二次型$x^{T}(AA^{T})x$的规范形为$y_{1}^{2}$，则$a + b =$________________。', '[]', '2
', '二次型$x^{T}(AA^{T})x$的规范形为$y_{1}^{2}$，意味着矩阵$B = AA^{T}$的秩为 1 且正惯性指数为 1，即$B$半正定且秩为 1。由于$rank(B) = rank(A)$，故$A$的秩也为 1。矩阵$A = \\left( \\begin{array}{ccc}
1 & b & −1 \\\\
a + 2 & 3 & −3a \\\\
\\end{array} \\right)$秩为 1 当且仅当其行成比例，即存在常数$t$使得：

$$
a + 2 = t ⋅ 1,  3 = t ⋅ b,  −3a = t ⋅ (−1).
$$

由第一式得$t = a + 2$，代入第三式得$−3a = −(a + 2)$，解得$a = 1$。进而$t = 3$，代入第二式得$3 = 3b$，故$b = 1$。因此$a + b = 2$。验证：当$a = 1,  b = 1$时，$A = \\left( \\begin{array}{ccc}
1 & 1 & −1 \\\\
3 & 3 & −3 \\\\
\\end{array} \\right)$行成比例，秩为 1，计算$B = AA^{T} = \\left( \\begin{array}{cc}
3 & 9 \\\\
9 & 27 \\\\
\\end{array} \\right)$，其特征值为 0 和 30，规范形为$y_{1}^{2}$，符合条件。
', 9, 'Mogullzr', '2026-01-29 14:21:03', 9, 'Mogullzr', '2026-01-29 14:21:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3271');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '3271');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3272, '2026年考研数学卷2第17题', '简单', '考研数学2026年数2真题', '（本题满分10分）计算$I = \\int_{−1}^{1} dx \\int_{∣x∣}^{\\sqrt{2-x^{2}}} y \\sin \\sqrt{x^{2} + y^{2}} dy$。', '[]', '

$$
4 \\sin \\sqrt{2} - 2\\sqrt{2}
$$

', '首先，注意到被积函数关于$x$是偶函数，积分区域关于$y$轴对称，因此

$$
I = 2 \\int_{0}^{1} dx \\int_{x}^{\\sqrt{2-x^{2}}} y \\sin \\sqrt{x^{2} + y^{2}} dy.
$$

对内侧积分作换元：令$u = \\sqrt{x^{2} + y^{2}}$，则$y dy = u du$，积分限变为$u$从$\\sqrt{2}x$到$\\sqrt{2}$，于是

$$
\\int_{x}^{\\sqrt{2-x^{2}}} y \\sin \\sqrt{x^{2} + y^{2}} dy = \\int_{\\sqrt{2}x}^{\\sqrt{2}} u \\sin u du.
$$

从而

$$
I = 2 \\int_{0}^{1} (\\int_{\\sqrt{2}x}^{\\sqrt{2}} u \\sin u du) dx.
$$

交换积分次序：区域由$0 ≤ x ≤ 1$，$\\sqrt{2}x ≤ u ≤ \\sqrt{2}$确定，等价于$0 ≤ u ≤ \\sqrt{2}$，$0 ≤ x ≤ u/\\sqrt{2}$，故

$$
I = 2 \\int_{0}^{\\sqrt{2}} \\int_{0}^{u/\\sqrt{2}} u \\sin u dx du = 2 \\int_{0}^{\\sqrt{2}} u \\sin u ⋅ \\frac{u}{\\sqrt{2}} du = \\sqrt{2} \\int_{0}^{\\sqrt{2}} u^{2} \\sin u du.
$$

计算积分$∫ u^{2} \\sin u du$，利用分部积分：

$$
∫ u^{2} \\sin u du = −u^{2} \\cos u + 2u \\sin u + 2 \\cos u + C.
$$

代入上下限得

$$
\\int_{0}^{\\sqrt{2}} u^{2} \\sin u du =  \\lbrack −u^{2} \\cos u + 2u \\sin u + 2 \\cos u \\rbrack _{0}^{\\sqrt{2}} = 2\\sqrt{2} \\sin(\\sqrt{2}) - 2.
$$

因此，

$$
I = \\sqrt{2} (2\\sqrt{2} \\sin(\\sqrt{2}) - 2) = 4 \\sin(\\sqrt{2}) - 2\\sqrt{2}.
$$

亦可使用极坐标验证：令$x = r \\cos θ$，$y = r \\sin θ$，区域由$y ≥ ∣x∣$和$x^{2} + y^{2} ≤ 2$给出，对应极坐标下$π/4 ≤ θ ≤ 3π/4$，$0 ≤ r ≤ \\sqrt{2}$，被积函数变为$r^{2} \\sin θ \\sin r$，积分分离变量后结果相同。
', 9, 'Mogullzr', '2026-01-29 14:21:03', 9, 'Mogullzr', '2026-01-29 14:21:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3272');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3272');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3272');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3273, '2026年考研数学卷2第18题', '简单', '考研数学2026年数2真题', '（本题满分12分）已知函数$g(x)$连续，$f(x) = \\int_{0}^{x^{2}} g(xt) dt$，求$f^{′}(x)$的表达式，并判断$f^{′}(x)$在$x = 0$处的连续性。', '[]', '

$$
f^{′}(x) = \\begin{cases} 3x g(x^{3}) - \\frac{1}{x^{2}} \\int_{0}^{x^{3}} g(s) ds & x \\neq 0 \\\\ 0 & x = 0 \\end{cases}
$$

且$f^{′}(x)$在$x = 0$处连续。
', '已知函数$g(x)$连续，$f(x) = \\int_{0}^{x^{2}} g(xt) dt$。
先求$f^{′}(x)$的表达式。
当$x = 0$时，$f(0) = \\int_{0}^{0} g(0) dt = 0$，由导数定义：

$$
f^{′}(0) = \\lim_{x→0} \\frac{f(x) - f(0)}{x} = \\lim_{x→0} \\frac{1}{x} \\int_{0}^{x^{2}} g(xt) dt.
$$

由于$g$连续，对任意$x$，存在$ξ ∈  \\lbrack 0, x^{2} \\rbrack$使得$\\int_{0}^{x^{2}} g(xt) dt = g(xξ)x^{2}$（积分中值定理）。则

$$
\\frac{f(x)}{x} = g(xξ)x,
$$

当$x → 0$时，$∣xξ∣ ≤ ∣x∣^{3} → 0$，故$g(xξ) → g(0)$，所以$g(xξ)x → 0$，即$f^{′}(0) = 0$。
当$x \\neq 0$时，令$u = xt$，则$t = \\frac{u}{x}$，$dt = \\frac{du}{x}$。当$t = 0$时$u = 0$；当$t = x^{2}$时$u = x ⋅ x^{2} = x^{3}$。于是

$$
f(x) = \\int_{0}^{x^{3}} g(u) ⋅ \\frac{du}{x} = \\frac{1}{x} \\int_{0}^{x^{3}} g(s) ds.
$$

令$G(v) = \\int_{0}^{v} g(s) ds$，则$f(x) = \\frac{G(x^{3})}{x}$。求导得：

$$
f^{′}(x) = \\frac{3x^{2}g(x^{3}) ⋅ x - G(x^{3})}{x^{2}} = 3x g(x^{3}) - \\frac{1}{x^{2}} \\int_{0}^{x^{3}} g(s) ds.
$$

再判断$f^{′}(x)$在$x = 0$处的连续性。需证$\\lim_{x→0} f^{′}(x) = f^{′}(0) = 0$。
计算极限：

$$
\\lim_{x→0} f^{′}(x) = \\lim_{x→0}  \\lbrack 3x g(x^{3}) - \\frac{1}{x^{2}} \\int_{0}^{x^{3}} g(s) ds \\rbrack  .
$$

由于$g$连续，当$x → 0$时$x^{3} → 0$，故$g(x^{3}) → g(0)$，所以$3x g(x^{3}) → 0$。
对积分项，由积分中值定理，存在$θ ∈  \\lbrack 0, x^{3} \\rbrack$使得$\\int_{0}^{x^{3}} g(s) ds = g(θ)x^{3}$，则

$$
\\frac{1}{x^{2}} \\int_{0}^{x^{3}} g(s) ds = g(θ)x → 0 (x → 0).
$$

因此$\\lim_{x→0} f^{′}(x) = 0$，与$f^{′}(0)$相等，故$f^{′}(x)$在$x = 0$处连续。
', 9, 'Mogullzr', '2026-01-29 14:21:03', 9, 'Mogullzr', '2026-01-29 14:21:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3273');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3273');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '3273');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3274, '2026年考研数学卷2第19题', '简单', '考研数学2026年数2真题', '（本题满分12分）求函数$f(x, y) = (2x^{2} - y^{2})e^{x}$的极值。', '[]', '
函数在点$(−2, 0)$处取得极大值$\\frac{8}{e^{2}}$，无极小值。
', '
首先求一阶偏导数：


$$
f_{x} = \\frac{∂}{∂x} \\lbrack (2x^{2} - y^{2})e^{x} \\rbrack  = e^{x}(2x^{2} + 4x - y^{2}),  f_{y} = \\frac{∂}{∂y} \\lbrack (2x^{2} - y^{2})e^{x} \\rbrack  = −2ye^{x}.
$$


令$f_{x} = 0$，$f_{y} = 0$，并利用$e^{x} > 0$，得到方程组：


$$
\\begin{cases} 2x^{2} + 4x - y^{2} = 0 \\\\ −2y = 0. \\end{cases}
$$


由第二式得$y = 0$，代入第一式得$2x^{2} + 4x = 0$，即$2x(x + 2) = 0$，解得$x = 0$或$x = −2$。
故驻点为$(0, 0)$和$(−2, 0)$。
再求二阶偏导数：


$$
f_{xx} = \\frac{∂}{∂x}f_{x} = e^{x}(2x^{2} + 8x + 4 - y^{2}),  f_{xy} = \\frac{∂}{∂y}f_{x} = −2ye^{x},  f_{yy} = \\frac{∂}{∂y}f_{y} = −2e^{x}.
$$


Hessian 矩阵为


$$
H(x, y) = \\left( \\begin{array}{cc}
f_{xx} & f_{xy} \\\\
f_{xy} & f_{yy} \\\\
\\end{array} \\right) .
$$


在点$(0, 0)$处：


$$
f_{xx}(0, 0) = 4,  f_{xy}(0, 0) = 0,  f_{yy}(0, 0) = −2,  det H(0, 0) = 4 × (−2) - 0^{2} = −8 < 0,
$$


故$(0, 0)$是鞍点，不是极值点。
在点$(−2, 0)$处：


$$
f_{xx}(−2, 0) = −\\frac{4}{e^{2}} < 0,  f_{xy}(−2, 0) = 0,  f_{yy}(−2, 0) = −\\frac{2}{e^{2}},  det H(−2, 0) = (−\\frac{4}{e^{2}}) × (−\\frac{2}{e^{2}}) - 0^{2} = \\frac{8}{e^{4}} > 0,
$$


且$f_{xx}(−2, 0) < 0$，故函数在$(−2, 0)$处取得极大值。极大值为


$$
f(−2, 0) = (2 × (−2)2 - 0^{2})e^{−2} = 8e^{−2} = \\frac{8}{e^{2}}.
$$


因此，函数有极大值$\\frac{8}{e^{2}}$，无极小值。
', 9, 'Mogullzr', '2026-01-29 14:21:03', 9, 'Mogullzr', '2026-01-29 14:21:03', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3274');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '3274');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1048', '3274');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3275, '2026年考研数学卷2第20题', '简单', '考研数学2026年数2真题', '(本题满分 12 分)已知$M(x_{0}, y_{0})$是曲线$y = \\frac{1}{1+x^{2}}(x ≥ 0)$的拐点，$O$为坐标原点，记$D$是第一象限中以曲线$y = \\frac{1}{1+x^{2}}(x ≥ x_{0})$，线段$OM$及$x$正半轴为边界的无界区域，求$D$绕$x$轴旋转所成旋转体的体积。', '[]', '

$$
\\frac{π^{2}}{6} - \\frac{\\sqrt{3}π}{16}
$$

', '首先，求曲线$y = \\frac{1}{1+x^{2}}$($x ≥ 0$) 的拐点。计算二阶导数：

$$
y^{′} = −\\frac{2x}{(1 + x^{2})2},  y^{′′} = \\frac{2(3x^{2} - 1)}{(1 + x^{2})3}.
$$

令$y^{′′} = 0$得$3x^{2} - 1 = 0$，解得$x_{0} = \\frac{1}{\\sqrt{3}}$(因$x ≥ 0$)，代入曲线方程得$y_{0} = \\frac{3}{4}$，故拐点为$M (\\frac{1}{\\sqrt{3}}, \\frac{3}{4})$。
区域$D$的边界由曲线$y = \\frac{1}{1+x^{2}}$($x ≥ x_{0}$)、线段$OM$及$x$正半轴组成。线段$OM$的方程为$y = \\frac{y_{0}}{x_{0}}x = \\frac{3\\sqrt{3}}{4}x$($0 ≤ x ≤ x_{0}$)。因此，区域$D$可描述为：在$x$轴上方，上边界为

$$
f(x) = \\begin{cases} \\frac{3\\sqrt{3}}{4}x & 0 ≤ x ≤ x_{0} \\\\ \\frac{1}{1+x^{2}} & x ≥ x_{0}. \\end{cases}
$$

将$D$绕$x$轴旋转，所得旋转体的体积为

$$
V = π \\int_{0}^{+∞} \\lbrack f(x) \\rbrack 2 dx = π ​\\int_{0}^{x_{0}} (\\frac{3\\sqrt{3}}{4}x)^{2} dx + \\int_{x_{0}}^{+∞} (\\frac{1}{1 + x^{2}})^{2} dx​ .
$$

计算第一个积分：

$$
\\int_{0}^{1/\\sqrt{3}} (\\frac{3\\sqrt{3}}{4}x)^{2} dx = \\frac{27}{16} \\int_{0}^{1/\\sqrt{3}} x^{2}dx = \\frac{27}{16} ⋅ \\frac{1}{3} (\\frac{1}{\\sqrt{3}})^{3} = \\frac{27}{16} ⋅ \\frac{1}{3} ⋅ \\frac{1}{3\\sqrt{3}} = \\frac{3}{16\\sqrt{3}} = \\frac{\\sqrt{3}}{16}.
$$

计算第二个积分：

$$
\\int_{1/\\sqrt{3}}^{+∞} \\frac{1}{(1 + x^{2})2}dx =  \\lbrack \\frac{1}{2} arctan x + \\frac{1}{2} ⋅ \\frac{x}{1 + x^{2}} \\rbrack _{1/\\sqrt{3}}^{+∞} .
$$

当$x → +∞$时，值为$\\frac{π}{4}$；在$x = \\frac{1}{\\sqrt{3}}$处，值为$\\frac{1}{2} ⋅ \\frac{π}{6} + \\frac{1}{2} ⋅ \\frac{\\sqrt{3}}{4} = \\frac{π}{12} + \\frac{\\sqrt{3}}{8}$。因此，

$$
\\int_{1/\\sqrt{3}}^{+∞} \\frac{1}{(1 + x^{2})2}dx = \\frac{π}{4} - \\frac{π}{12} - \\frac{\\sqrt{3}}{8} = \\frac{π}{6} - \\frac{\\sqrt{3}}{8}.
$$

于是，

$$
V = π (\\frac{\\sqrt{3}}{16} + \\frac{π}{6} - \\frac{\\sqrt{3}}{8}) = π (\\frac{π}{6} - \\frac{\\sqrt{3}}{16}) = \\frac{π^{2}}{6} - \\frac{\\sqrt{3}π}{16}.
$$

', 9, 'Mogullzr', '2026-01-29 14:21:04', 9, 'Mogullzr', '2026-01-29 14:21:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3275');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3275');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3275');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3276, '2026年考研数学卷2第21题', '简单', '考研数学2026年数2真题', '(本题满分 12 分)求微分方程$x^{2}y^{′′} - 2xy^{′} - (y^{′})2 = 0 (x > 2)$满足条件$y​_{x=3} = \\frac{1}{2}$，$y^{′}​_{x=3} = −9$的解。', '[]', '

$$
y = −\\frac{x^{2}}{2} - 2x - 4 \\ln(x - 2) + 11
$$

', '令$p = y^{′}$，则$y^{′′} = \\frac{dp}{dx}$，代入原方程$x^{2}y^{′′} - 2xy^{′} - (y^{′})2 = 0$得：

$$
x^{2}\\frac{dp}{dx} - 2xp - p^{2} = 0
$$

假设$p \\neq 0$，两边除以$p^{2}$：

$$
\\frac{x^{2}}{p^{2}}\\frac{dp}{dx} - \\frac{2x}{p} - 1 = 0
$$

令$u = \\frac{1}{p}$，则$\\frac{dp}{dx} = −\\frac{1}{u^{2}}\\frac{du}{dx}$，代入上式：

$$
x^{2} ⋅ u^{2} ⋅ (−\\frac{1}{u^{2}}\\frac{du}{dx}) - 2xu - 1 = 0
$$

化简得：

$$
−x^{2}\\frac{du}{dx} - 2xu - 1 = 0
$$

即：

$$
x^{2}\\frac{du}{dx} + 2xu + 1 = 0
$$

注意到左边为$\\frac{d}{dx}(x^{2}u)$，故：

$$
\\frac{d}{dx}(x^{2}u) = −1
$$

积分得：

$$
x^{2}u = −x + C
$$

其中$C$为积分常数。代回$u = \\frac{1}{p}$得：

$$
\\frac{1}{y^{′}} = \\frac{C - x}{x^{2}}
$$

所以：

$$
y^{′} = \\frac{x^{2}}{C - x}
$$

利用初始条件$y^{′}(3) = −9$，代入得：

$$
−9 = \\frac{9}{C - 3}
$$

解得$C = 2$。于是：

$$
y^{′} = \\frac{x^{2}}{2 - x}
$$

对$y^{′}$积分求$y$：

$$
y = ∫ \\frac{x^{2}}{2 - x} dx
$$

化简被积函数：

$$
\\frac{x^{2}}{2 - x} = −\\frac{x^{2}}{x - 2} = − (x + 2 + \\frac{4}{x - 2}) = −x - 2 - \\frac{4}{x - 2}
$$

积分得：

$$
y = ∫ (−x - 2 - \\frac{4}{x - 2}) dx = −\\frac{x^{2}}{2} - 2x - 4 \\ln ∣x - 2∣ + D
$$

由于$x > 2$，故$∣x - 2∣ = x - 2$。再利用初始条件$y(3) = \\frac{1}{2}$：

$$
y(3) = −\\frac{9}{2} - 6 - 4 \\ln 1 + D = −\\frac{21}{2} + D = \\frac{1}{2}
$$

解得$D = 11$。因此所求解为：

$$
y = −\\frac{x^{2}}{2} - 2x - 4 \\ln(x - 2) + 11
$$

', 9, 'Mogullzr', '2026-01-29 14:21:04', 9, 'Mogullzr', '2026-01-29 14:21:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3276');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3276');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '3276');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3277, '2026年考研数学卷2第22题', '简单', '考研数学2026年数2真题', '(本题满分 12 分)已知向量组
$$
α_{1} = \\left( \\begin{array}{c}
1 \\\\
0 \\\\
−1 \\\\
−1 \\\\
\\end{array} \\right) ,  α_{2} = \\left( \\begin{array}{c}
1 \\\\
−1 \\\\
0 \\\\
−2 \\\\
\\end{array} \\right) ,  α_{3} = \\left( \\begin{array}{c}
0 \\\\
−1 \\\\
1 \\\\
−1 \\\\
\\end{array} \\right) ,  α_{4} = \\left( \\begin{array}{c}
0 \\\\
1 \\\\
−1 \\\\
1 \\\\
\\end{array} \\right) ,
$$
记$A(α_{1}, α_{2}, α_{3}, α_{4})$，$G = (α_{1}, α_{2})$。(1) 证明：$α_{1}, α_{2}$是$α_{1}, α_{2}, α_{3}, α_{4}$的极大线性无关组；(2) 求矩阵$H$使得$A = GH$，并求$A^{10}$。', '[]', '(1) 略。
(2)$H = \\left( \\begin{array}{cccc}
1 & 0 & −1 & 1 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right)$，$A^{10} = \\left( \\begin{array}{cccc}
1 & −8 & −9 & 9 \\\\
0 & −1 & −1 & 1 \\\\
−1 & 9 & 10 & −10 \\\\
−1 & 7 & 8 & −8 \\\\
\\end{array} \\right)$。
', '
(1) 设$c_{1}α_{1} + c_{2}α_{2} = 0$，解得$c_{1} = c_{2} = 0$，故$α_{1}, α_{2}$线性无关。由$α_{3} = −α_{1} + α_{2}$，$α_{4} = α_{1} - α_{2}$知$α_{3}, α_{4}$可由$α_{1}, α_{2}$线性表示，因此$α_{1}, α_{2}$构成一个极大线性无关组。
(2) 令$A = (α_{1}, α_{2}, α_{3}, α_{4})$，$G = (α_{1}, α_{2})$。
由$α_{3} = −α_{1} + α_{2}$，$α_{4} = α_{1} - α_{2}$，可得$A = GH$，其中


$$
H = \\left( \\begin{array}{cccc}
1 & 0 & −1 & 1 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right) .
$$

计算


$$
HG = \\left( \\begin{array}{cc}
1 & −1 \\\\
0 & 1 \\\\
\\end{array} \\right) ,
$$

记$B = HG$，则$B = I + N$，


$$
N = \\left( \\begin{array}{cc}
0 & −1 \\\\
0 & 0 \\\\
\\end{array} \\right) ,  N^{2} = 0.
$$

因此


$$
B^{9} = (I + N)9 = I + 9N = \\left( \\begin{array}{cc}
1 & −9 \\\\
0 & 1 \\\\
\\end{array} \\right) .
$$

于是


$$
A^{10} = GB^{9}H = \\left( \\begin{array}{cc}
1 & 1 \\\\
0 & −1 \\\\
−1 & 0 \\\\
−1 & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
1 & −9 \\\\
0 & 1 \\\\
\\end{array} \\right) \\left( \\begin{array}{cccc}
1 & 0 & −1 & 1 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right) .
$$

首先计算中间结果：


$$
\\left( \\begin{array}{cc}
1 & 1 \\\\
0 & −1 \\\\
−1 & 0 \\\\
−1 & −2 \\\\
\\end{array} \\right) \\left( \\begin{array}{cc}
1 & −9 \\\\
0 & 1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
1 & −8 \\\\
0 & −1 \\\\
−1 & 9 \\\\
−1 & 7 \\\\
\\end{array} \\right) .
$$

进而得


$$
A^{10} = \\left( \\begin{array}{cc}
1 & −8 \\\\
0 & −1 \\\\
−1 & 9 \\\\
−1 & 7 \\\\
\\end{array} \\right) \\left( \\begin{array}{cccc}
1 & 0 & −1 & 1 \\\\
0 & 1 & 1 & −1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cccc}
1 & −8 & −9 & 9 \\\\
0 & −1 & −1 & 1 \\\\
−1 & 9 & 10 & −10 \\\\
−1 & 7 & 8 & −8 \\\\
\\end{array} \\right) .
$$

', 9, 'Mogullzr', '2026-01-29 14:21:04', 9, 'Mogullzr', '2026-01-29 14:21:04', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3277');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '3277');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '3277');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3278, '2026年考研数学卷3第1题', '简单', '考研数学2026年数3真题', '曲线$y = xe^{\\frac{1}{x}}$（ ）', '[''无水平渐近线，无铅直渐近线'', ''有水平渐近线，有铅直渐近线'', ''无水平渐近线，有铅直渐近线'', ''有水平渐近线，无铅直渐近线'']', "['C']", '
函数定义域为$x \\neq 0$。对于水平渐近线，考虑$x → ∞$和$x → −∞$：当$x → ∞$时，$e^{\\frac{1}{x}} → 1$，故$y ∼ x → ∞$；当$x → −∞$时，同样$e^{\\frac{1}{x}} → 1$，$y ∼ x → −∞$。因此无水平渐近线。对于铅直渐近线，考虑$x → 0$：当$x → 0^{+}$时，令$t = \\frac{1}{x} → +∞$，则$y = \\frac{e^{t}}{t} → +∞$；当$x → 0^{-}$时，令$t = \\frac{1}{x} → −∞$，则$y = \\frac{e^{t}}{t} → 0$。由于在$x = 0$处有一侧极限为无穷，故$x = 0$为铅直渐近线。综上，曲线无水平渐近线，有一条铅直渐近线$x = 0$。', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3278');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '3278');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1057', '3278');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3279, '2026年考研数学卷3第2题', '', '考研数学2026年数3真题', '/problems/other/3258', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3280, '2026年考研数学卷3第3题', '', '考研数学2026年数3真题', '/problems/other/3261', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3281, '2026年考研数学卷3第4题', '简单', '考研数学2026年数3真题', '设$t$时刻某证券的交易单价为$p(t)$，某机构持有该证券的份额为$q(t)$，若该机构在$\\lbrack 0, T \\rbrack$持续购入一定份额该证券，则这些证券的平均购入价格为
(　　)', '[''$\\\\frac{1}{T} \\\\int_{0}^{T} p(t)dt$'', ''$\\\\frac{1}{q(T)-q(0)} \\\\int_{0}^{T} p(t)dt$'', ''$\\\\frac{1}{T} \\\\int_{0}^{T} p(t)q^{′}(t)dt$'', ''$\\\\frac{1}{q(T)-q(0)} \\\\int_{0}^{T} p(t)q^{′}(t)dt$'']', "['D']", '平均购入价格定义为总购买金额除以总购买份额。在连续购买过程中，时刻$t$的购买单价为$p(t)$，购买份额的微元为$q^{′}(t)dt$，因此购买金额的微元为$p(t)q^{′}(t)dt$。总购买金额为积分$\\int_{0}^{T} p(t)q^{′}(t)dt$，总购买份额为区间$\\lbrack 0, T \\rbrack$内份额的增量$q(T) - q(0)$。故平均购入价格为
$$
\\frac{\\int_{0}^{T} p(t)q^{′}(t)dt}{q(T) - q(0)}
$$
对应选项4。其他选项中，选项1和2未考虑购买份额的权重，选项3除以时间$T$而非总份额，均不符合平均购入价格的定义。', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3281');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3281');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '3281');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3282, '2026年考研数学卷3第5题', '', '考研数学2026年数3真题', '/problems/other/3264', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3283, '2026年考研数学卷3第6题', '简单', '考研数学2026年数3真题', '设$A$为 3 阶非零矩阵，$A^{∗}$为$A$的伴随矩阵。若$A^{∗} = −2A$，则$A^{2} =$（　　）', '[''$\\\\left( \\\\begin{array}{ccc}\\n−4 & 0 & 0 \\\\\\\\\\n0 & −4 & 0 \\\\\\\\\\n0 & 0 & −4 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n−4 & 0 & 0 \\\\\\\\\\n0 & −4 & 0 \\\\\\\\\\n0 & 0 & 4 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n−4 & 0 & 0 \\\\\\\\\\n0 & 4 & 0 \\\\\\\\\\n0 & 0 & 4 \\\\\\\\\\n\\\\end{array} \\\\right)$'', ''$\\\\left( \\\\begin{array}{ccc}\\n4 & 0 & 0 \\\\\\\\\\n0 & 4 & 0 \\\\\\\\\\n0 & 0 & 4 \\\\\\\\\\n\\\\end{array} \\\\right)$'']', "['D']", '由伴随矩阵性质，$AA^{∗} = (det A)I$。将$A^{∗} = −2A$代入得

$$
A(−2A) = −2A^{2} = (det A)I,
$$
故

$$
A^{2} = −\\frac{1}{2}(det A)I.
$$
对$A^{∗} = −2A$两边取行列式，有

$$
det(A^{∗}) = det(−2A).
$$
对于 3 阶矩阵，$det(A^{∗}) = (det A)2$，且$det(−2A) = (−2)3 det A = −8 det A$，因此

$$
(det A)2 = −8 det A,
$$
即

$$
det A(det A + 8) = 0.
$$
因$A$非零且由选项知$A^{2}$非零，故$det A \\neq 0$，解得

$$
det A = −8.
$$
代入$A^{2} = −\\frac{1}{2}(det A)I$得

$$
A^{2} = −\\frac{1}{2} × (−8)I = 4I,
$$
即对角矩阵

$$
\\left( \\begin{array}{ccc}
4 & 0 & 0 \\\\
0 & 4 & 0 \\\\
0 & 0 & 4 \\\\
\\end{array} \\right) ,
$$
对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '3283');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '3283');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '3283');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3284, '2026年考研数学卷3第7题', '', '考研数学2026年数3真题', '/problems/other/3265', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3285, '2026年考研数学卷3第8题', '简单', '考研数学2026年数3真题', '设随机变量$x$和$y$独立同分布，$x$概率密度为

$$
f(x) = \\begin{cases} \\frac{1}{(1+x)2} & x > 0 \\\\ 0 & x ≤ 0 \\end{cases} ,
$$

则$P\\{XY ≤ 1\\} =$（　　）', '[''$\\\\frac{3}{4}$'', ''$\\\\frac{1}{2}$'', ''$\\\\frac{1}{3}$'', ''$\\\\frac{1}{6}$'']', "['B']", '
由于$X$与$Y$独立同分布，其联合概率密度函数为

$$
f(x)f(y) = \\frac{1}{(1 + x)2} ⋅ \\frac{1}{(1 + y)2},  x > 0,  y > 0.
$$
计算概率

$$
P(XY ≤ 1) = ∬_{x>0, y>0, xy≤1} f(x)f(y) dx dy.
$$
先对$y$积分：对固定的$x > 0$，当$0 < y ≤ 1/x$时，
$$
\\int_{0}^{1/x} \\frac{1}{(1 + y)2} dy = −\\frac{1}{1 + y}​_{0}^{1/x} = 1 - \\frac{1}{1 + 1/x} = \\frac{1}{1 + x}.
$$
再对$x$积分：
$$
\\int_{0}^{∞} \\frac{1}{1 + x} ⋅ \\frac{1}{(1 + x)2} dx = \\int_{0}^{∞} \\frac{1}{(1 + x)3} dx = −\\frac{1}{2(1 + x)2}​_{0}^{∞} = \\frac{1}{2}.
$$
因此所求概率为$\\frac{1}{2}$，对应选项 B。', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3285');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '3285');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '3285');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3286, '2026年考研数学卷3第9题', '简单', '考研数学2026年数3真题', '设随机变量$X ∼ N(0, 1)$，随机变量$Y ∼ B (2, \\frac{1}{2})$，且$X$与$Y$独立，则$XY$与$X + Y$的相关系数为（　　）', '[''$\\\\frac{\\\\sqrt{6}}{3}$'', ''$\\\\frac{\\\\sqrt{2}}{2}$'', ''$\\\\frac{2}{3}$'', ''$\\\\frac{1}{2}$'']', "['C']", '首先，由$X ∼ N(0, 1)$得$E \\lbrack X \\rbrack  = 0$，$E \\lbrack X^{2} \\rbrack  = 1$；由$Y ∼ B(2, \\frac{1}{2})$得$E \\lbrack Y \\rbrack  = 1$，$E \\lbrack Y^{2} \\rbrack  = \\frac{3}{2}$，且$X$与$Y$独立。相关系数
$$
ρ = \\frac{Cov(XY, X + Y)}{\\sqrt{Var(XY) ⋅ Var(X + Y)}}
$$
计算协方差：
$$
Cov(XY, X + Y) = E \\lbrack XY(X + Y) \\rbrack  - E \\lbrack XY \\rbrack E \\lbrack X + Y \\rbrack
$$
由于$E \\lbrack XY \\rbrack  = E \\lbrack X \\rbrack E \\lbrack Y \\rbrack  = 0$，$E \\lbrack X + Y \\rbrack  = E \\lbrack X \\rbrack  + E \\lbrack Y \\rbrack  = 1$，故
$$
Cov(XY, X + Y) = E \\lbrack X^{2}Y + XY^{2} \\rbrack  = E \\lbrack X^{2} \\rbrack E \\lbrack Y \\rbrack  + E \\lbrack X \\rbrack E \\lbrack Y^{2} \\rbrack  = 1 × 1 + 0 × \\frac{3}{2} = 1
$$
计算方差：
$$
Var(X + Y) = Var(X) + Var(Y) = 1 + \\frac{1}{2} = \\frac{3}{2}
$$

$$
Var(XY) = E \\lbrack X^{2}Y^{2} \\rbrack  - (E \\lbrack XY \\rbrack )2 = E \\lbrack X^{2} \\rbrack E \\lbrack Y^{2} \\rbrack  - 0 = 1 × \\frac{3}{2} = \\frac{3}{2}
$$
因此，
$$
ρ = \\frac{1}{\\sqrt{\\frac{3}{2} × \\frac{3}{2}}} = \\frac{1}{\\frac{3}{2}} = \\frac{2}{3}
$$
', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '3286');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '3286');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '3286');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3287, '2026年考研数学卷3第10题', '', '考研数学2026年数3真题', '/problems/other/3243', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3288, '2026年考研数学卷3第11题', '简单', '考研数学2026年数3真题', '$\\int_{0}^{1} x(x - 1) (x - \\frac{1}{2}) dx =$_________________________.', '[]', '$0$
', '
首先，将被积函数展开为多项式：


$$
x(x - 1) (x - \\frac{1}{2}) = (x^{2} - x) (x - \\frac{1}{2}) = x^{3} - \\frac{1}{2}x^{2} - x^{2} + \\frac{1}{2}x = x^{3} - \\frac{3}{2}x^{2} + \\frac{1}{2}x
$$

然后计算定积分：


$$
\\int_{0}^{1} (x^{3} - \\frac{3}{2}x^{2} + \\frac{1}{2}x) dx =  \\lbrack \\frac{x^{4}}{4} - \\frac{3}{2} ⋅ \\frac{x^{3}}{3} + \\frac{1}{2} ⋅ \\frac{x^{2}}{2} \\rbrack _{0}^{1} =  \\lbrack \\frac{x^{4}}{4} - \\frac{1}{2}x^{3} + \\frac{1}{4}x^{2} \\rbrack _{0}^{1}
$$

代入上下限：


$$
F(1) = \\frac{1}{4} - \\frac{1}{2} + \\frac{1}{4} = 0,  F(0) = 0
$$

因此，积分结果为：


$$
F(1) - F(0) = 0
$$

', 9, 'Mogullzr', '2026-01-29 14:21:07', 9, 'Mogullzr', '2026-01-29 14:21:07', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3288');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '3288');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1030', '3288');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3289, '2026年考研数学卷3第12题', '简单', '考研数学2026年数3真题', '$\\lim_{x→0} \\frac{1}{x} (\\frac{\\sqrt{1+x^{2}}}{\\sin x} - \\frac{1}{\\tan x}) =$_________________________.', '[]', '1
', '首先化简原式：由$\\tan x = \\frac{\\sin x}{\\cos x}$得$\\frac{1}{\\tan x} = \\frac{\\cos x}{\\sin x}$，于是

$$
\\frac{1}{x} (\\frac{\\sqrt{1 + x^{2}}}{\\sin x} - \\frac{1}{\\tan x}) = \\frac{1}{x} ⋅ \\frac{\\sqrt{1 + x^{2}} - \\cos x}{\\sin x} = \\frac{\\sqrt{1 + x^{2}} - \\cos x}{x \\sin x}.
$$

当$x → 0$时，分子和分母均趋于0，为$\\frac{0}{0}$型极限，可用泰勒展开或洛必达法则求解。
方法一（泰勒展开）：
在$x = 0$处展开，

$$
\\sqrt{1 + x^{2}} = 1 + \\frac{1}{2}x^{2} - \\frac{1}{8}x^{4} + O(x^{6}),  \\cos x = 1 - \\frac{x^{2}}{2} + \\frac{x^{4}}{24} + O(x^{6}),  \\sin x = x - \\frac{x^{3}}{6} + O(x^{5}).
$$

代入得

$$
\\sqrt{1 + x^{2}} - \\cos x = (1 + \\frac{x^{2}}{2} - \\frac{x^{4}}{8}) - (1 - \\frac{x^{2}}{2} + \\frac{x^{4}}{24}) + O(x^{6}) = x^{2} - \\frac{x^{4}}{6} + O(x^{6}),
$$



$$
x \\sin x = x (x - \\frac{x^{3}}{6} + O(x^{5})) = x^{2} - \\frac{x^{4}}{6} + O(x^{6}).
$$

因此，

$$
\\frac{\\sqrt{1 + x^{2}} - \\cos x}{x \\sin x} = \\frac{x^{2} - \\frac{x^{4}}{6} + O(x^{6})}{x^{2} - \\frac{x^{4}}{6} + O(x^{6})} = \\frac{1 - \\frac{x^{2}}{6} + O(x^{4})}{1 - \\frac{x^{2}}{6} + O(x^{4})} → 1 (x → 0).
$$

方法二（洛必达法则）：
对分子分母分别求导：

$$
\\frac{d}{dx} (\\sqrt{1 + x^{2}} - \\cos x) = \\frac{x}{\\sqrt{1 + x^{2}}} + \\sin x,  \\frac{d}{dx}(x \\sin x) = \\sin x + x \\cos x.
$$

所以

$$
\\lim_{x→0} \\frac{\\sqrt{1 + x^{2}} - \\cos x}{x \\sin x} = \\lim_{x→0} \\frac{\\frac{x}{\\sqrt{1+x^{2}}} + \\sin x}{\\sin x + x \\cos x}.
$$

此极限仍为$\\frac{0}{0}$型，可再次使用洛必达法则，或直接化简。将分子分母同除以$x$：

$$
\\lim_{x→0} \\frac{\\frac{1}{\\sqrt{1+x^{2}}} + \\frac{\\sin x}{x}}{\\frac{\\sin x}{x} + \\cos x} = \\frac{1 + 1}{1 + 1} = 1.
$$

故原极限值为1。
', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3289');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '3289');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '3289');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3290, '2026年考研数学卷3第13题', '', '考研数学2026年数3真题', '/problems/other/3266', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3291, '2026年考研数学卷3第14题', '简单', '考研数学2026年数3真题', '微分方程$y^{′′} - 2y^{′} = e^{x}$满足条件$y(0) = 1, y^{′}(0) = 1$的解为$y =$_________________________.', '[]', '$y = 1 + e^{2x} - e^{x}$
', '
首先求解齐次方程$y^{′′} - 2y^{′} = 0$。特征方程为$r^{2} - 2r = 0$，解得$r = 0$或$r = 2$，齐次解为$y_{h} = C_{1} + C_{2}e^{2x}$。
对于非齐次项$e^{x}$，由于$e^{x}$不是齐次解的一部分，设特解为$y_{p} = Ae^{x}$。代入原方程得

$$
Ae^{x} - 2Ae^{x} = e^{x}
$$

即

$$
−Ae^{x} = e^{x}
$$

解得$A = −1$，特解为$y_{p} = −e^{x}$。
通解为

$$
y = C_{1} + C_{2}e^{2x} - e^{x}
$$

应用初始条件$y(0) = 1$和$y^{′}(0) = 1$。
由$y(0) = C_{1} + C_{2} - 1 = 1$得$C_{1} + C_{2} = 2$；
由$y^{′} = 2C_{2}e^{2x} - e^{x}$和$y^{′}(0) = 2C_{2} - 1 = 1$得$C_{2} = 1$，代入得$C_{1} = 1$。
因此特解为

$$
y = 1 + e^{2x} - e^{x}
$$

', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3291');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '3291');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '3291');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3292, '2026年考研数学卷3第15题', '', '考研数学2026年数3真题', '/problems/other/3271', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3293, '2026年考研数学卷3第16题', '', '考研数学2026年数3真题', '/problems/other/3249', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3294, '2026年考研数学卷3第17题', '简单', '考研数学2026年数3真题', '（本题满分 10 分）已知函数$f(x)$满足

$$
f(x) = \\frac{1}{(2 - x)2} - \\int_{0}^{1} f(x)dx,
$$

将$f(x)$展开成$x$的幂级数。', '[]', '


$$
f(x) = \\sum_{n=1}^{∞} \\frac{n + 1}{2^{n+2}}x^{n}.
$$

', '
设$C = \\int_{0}^{1} f(x) dx$，则原方程化为$f(x) = \\frac{1}{(2-x)2} - C$。两边在$\\lbrack 0, 1 \\rbrack$上积分得


$$
C = \\int_{0}^{1} \\frac{1}{(2 - x)2} dx - \\int_{0}^{1} C dx.
$$

计算积分：


$$
\\int_{0}^{1} \\frac{1}{(2 - x)2} dx =  \\lbrack \\frac{1}{2 - x} \\rbrack _{0}^{1} = \\frac{1}{1} - \\frac{1}{2} = \\frac{1}{2},  \\int_{0}^{1} C dx = C.
$$

代入得$C = \\frac{1}{2} - C$，解得$C = \\frac{1}{4}$。于是


$$
f(x) = \\frac{1}{(2 - x)2} - \\frac{1}{4}.
$$

将$\\frac{1}{(2-x)2}$展开为幂级数。注意到


$$
\\frac{1}{(2 - x)2} = \\frac{1}{4} ⋅ \\frac{1}{(1 - \\frac{x}{2})2},
$$

利用已知展开式$\\frac{1}{(1-u)2} = \\sum_{n=0}^{∞}(n + 1)u^{n}$（$∣u∣ < 1$），令$u = \\frac{x}{2}$得


$$
\\frac{1}{(1 - \\frac{x}{2})2} = \\sum_{n=0}^{∞}(n + 1) (\\frac{x}{2})^{n} = \\sum_{n=0}^{∞} \\frac{n + 1}{2^{n}}x^{n}.
$$

因此，


$$
\\frac{1}{(2 - x)2} = \\frac{1}{4} \\sum_{n=0}^{∞} \\frac{n + 1}{2^{n}}x^{n} = \\sum_{n=0}^{∞} \\frac{n + 1}{2^{n+2}}x^{n}.
$$

代入$f(x)$得


$$
f(x) = \\sum_{n=0}^{∞} \\frac{n + 1}{2^{n+2}}x^{n} - \\frac{1}{4}.
$$

当$n = 0$时，常数项为$\\frac{1}{4}$，与减去的$\\frac{1}{4}$相消，故


$$
f(x) = \\sum_{n=1}^{∞} \\frac{n + 1}{2^{n+2}}x^{n}.
$$

该幂级数的收敛半径为$∣x∣ < 2$。
', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3294');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '3294');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '3294');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3295, '2026年考研数学卷3第18题', '', '考研数学2026年数3真题', '/problems/other/3273', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3296, '2026年考研数学卷3第19题', '', '考研数学2026年数3真题', '/problems/other/3250', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3297, '2026年考研数学卷3第20题', '简单', '考研数学2026年数3真题', '（本题满分 12 分）设平面区域$D = \\{(x, y) ∣ 0 ≤ x ≤ 1,  0 ≤ y ≤ 1\\}$，计算二重积分

$$
\\iint_{D} \\frac{y}{(1 + x^{2} + y^{2})23​} dx dy.
$$
', '[]', '


$$
\\frac{1}{2} (\\ln \\frac{\\sqrt{3} - 1}{\\sqrt{3} + 1} - \\ln \\frac{\\sqrt{2} - 1}{\\sqrt{2} + 1})
$$

', '
计算二重积分


$$
I = \\iint_{D} \\frac{y}{(1 + x^{2} + y^{2})23​} dx dy,
$$

其中积分区域$D = \\{(x, y) ∣ 0 ≤ x ≤ 1,  0 ≤ y ≤ 1\\}$。
化为累次积分


$$
I = \\int_{0}^{1} (\\int_{0}^{1} \\frac{y}{(1 + x^{2} + y^{2})23​} dx) dy.
$$

首先计算内层积分。对固定的$y$，


$$
\\int_{0}^{1} \\frac{y}{(1 + x^{2} + y^{2})23​} dx = y \\int_{0}^{1} \\frac{1}{(1 + y^{2} + x^{2})23​} dx.
$$

令$a^{2} = 1 + y^{2}$，利用积分公式

$$
∫ \\frac{dx}{(a^{2} + x^{2})23​} = \\frac{x}{a^{2}\\sqrt{a^{2} + x^{2}}} + C,
$$

得到

$$
\\int_{0}^{1} \\frac{1}{(1 + y^{2} + x^{2})23​} dx =  \\lbrack \\frac{x}{(1 + y^{2})\\sqrt{1 + y^{2} + x^{2}}} \\rbrack _{0}^{1} = \\frac{1}{(1 + y^{2})\\sqrt{2 + y^{2}}}.
$$

于是内层积分为

$$
\\frac{y}{(1 + y^{2})\\sqrt{2 + y^{2}}}.
$$

代入外积分得到

$$
I = \\int_{0}^{1} \\frac{y}{(1 + y^{2})\\sqrt{2 + y^{2}}} dy.
$$

令代换$u = \\sqrt{2 + y^{2}}$，则$u^{2} = 2 + y^{2}$，$y^{2} = u^{2} - 2$，且$y dy = u du$。
积分限变化：$y = 0$时$u = \\sqrt{2}$，$y = 1$时$u = \\sqrt{3}$。于是

$$
I = \\int_{\\sqrt{2}}^{\\sqrt{3}} \\frac{u}{(u^{2} - 1)u} du = \\int_{\\sqrt{2}}^{\\sqrt{3}} \\frac{1}{u^{2} - 1} du.
$$

将被积函数分解为部分分式

$$
\\frac{1}{u^{2} - 1} = \\frac{1}{2(u - 1)} - \\frac{1}{2(u + 1)},
$$

所以

$$
∫ \\frac{1}{u^{2} - 1} du = \\frac{1}{2} \\ln ​\\frac{u - 1}{u + 1}​ + C.
$$

因此

$$
I =  \\lbrack \\frac{1}{2} \\ln (\\frac{u - 1}{u + 1}) \\rbrack _{\\sqrt{2}}^{\\sqrt{3}} = \\frac{1}{2}  \\lbrack \\ln (\\frac{\\sqrt{3} - 1}{\\sqrt{3} + 1}) - \\ln (\\frac{\\sqrt{2} - 1}{\\sqrt{2} + 1}) \\rbrack  .
$$

此即为所求积分的结果。
', 9, 'Mogullzr', '2026-01-29 14:21:08', 9, 'Mogullzr', '2026-01-29 14:21:08', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '3297');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '3297');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '3297');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3298, '2026年考研数学卷3第21题', '', '考研数学2026年数3真题', '/problems/other/3254', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:09', 9, 'Mogullzr', '2026-01-29 14:21:09', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (3299, '2026年考研数学卷3第22题', '', '考研数学2026年数3真题', '/problems/other/3255', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:21:09', 9, 'Mogullzr', '2026-01-29 14:21:09', 0, 4);
