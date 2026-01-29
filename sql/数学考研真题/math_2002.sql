INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1467, '2002年考研数学卷1第1题', '简单', '考研数学2002年卷1真题', '
$$
\\int_{e}^{+∞} \\frac{dx}{x \\ln^{2} x} =
$$
', '[]', '$1$
', '
考虑积分$\\int_{e}^{+∞} \\frac{dx}{x \\ln^{2} x}$。令$u = \\ln x$，则$du = \\frac{1}{x}dx$，即$\\frac{dx}{x} = du$。当$x = e$时，$u = 1$；当$x → +∞$时，$u → +∞$。积分变为：


$$
\\int_{1}^{+∞} \\frac{1}{u^{2}}du = \\int_{1}^{+∞} u^{−2}du
$$

计算该积分：


$$
∫ u^{−2}du = −\\frac{1}{u} + C
$$

因此，


$$
\\lbrack −\\frac{1}{u} \\rbrack _{1}^{+∞} = \\lim_{b→+∞} (−\\frac{1}{b}) - (−\\frac{1}{1}) = 0 + 1 = 1
$$

故积分的值为 1。
', 9, 'Mogullzr', '2026-01-29 14:12:13', 9, 'Mogullzr', '2026-01-29 14:12:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1467');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1467');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1467');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1468, '2002年考研数学卷1第2题', '简单', '考研数学2002年卷1真题', '已知函数$y = y(x)$由方程$e^{y} + 6xy + x^{2} - 1 = 0$确定，则$y^{′′}(0) =$______．', '[]', '-2
', '已知方程$e^{y} + 6xy + x^{2} - 1 = 0$确定函数$y = y(x)$。首先求$x = 0$时的$y$值：代入$x = 0$得$e^{y} - 1 = 0$，所以$y(0) = 0$。
对原方程求一阶导数：

$$
e^{y}y^{′} + 6y + 6xy^{′} + 2x = 0
$$

解得：

$$
y^{′} = \\frac{−6y - 2x}{e^{y} + 6x}
$$

代入$x = 0, y = 0$：

$$
y^{′}(0) = \\frac{−6 ⋅ 0 - 2 ⋅ 0}{e^{0} + 6 ⋅ 0} = \\frac{0}{1} = 0
$$

对一阶导数方程再求导：

$$
e^{y}(y^{′})2 + e^{y}y^{′′} + 6y^{′} + 6y^{′} + 6xy^{′′} + 2 = 0
$$

简化得：

$$
e^{y}y^{′′} + 6xy^{′′} + e^{y}(y^{′})2 + 12y^{′} + 2 = 0
$$

解得：

$$
y^{′′} = \\frac{−e^{y}(y^{′})2 - 12y^{′} - 2}{e^{y} + 6x}
$$

代入$x = 0, y = 0, y^{′} = 0$：

$$
y^{′′}(0) = \\frac{−e^{0} ⋅ 0^{2} - 12 ⋅ 0 - 2}{e^{0} + 6 ⋅ 0} = \\frac{−2}{1} = −2
$$

故$y^{′′}(0) = −2$。
', 9, 'Mogullzr', '2026-01-29 14:12:13', 9, 'Mogullzr', '2026-01-29 14:12:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1468');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1468');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1468');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1469, '2002年考研数学卷1第3题', '简单', '考研数学2002年卷1真题', '微分方程$yy^{′′} + (y^{′})2 = 0$满足初始条件$y∣_{x=0} = 1$,$y^{′}∣_{x=0} = \\frac{1}{2}$的特解是 ______．', '[]', '
$y = \\sqrt{x + 1}$
', '
给定微分方程$yy^{′′} + (y^{′})2 = 0$和初始条件$y∣_{x=0} = 1$,$y^{′}∣_{x=0} = \\frac{1}{2}$。
设$p = y^{′}$，则$y^{′′} = p\\frac{dp}{dy}$，代入方程得$yp\\frac{dp}{dy} + p^{2} = 0$。
当$p \\neq 0$时，除以$p$得$y\\frac{dp}{dy} + p = 0$，即$\\frac{dp}{p} = −\\frac{dy}{y}$。
积分得$\\ln ∣p∣ = − \\ln ∣y∣ + C$，即$p = \\frac{K}{y}$，其中$K$为常数。
由$p = y^{′}$得$y^{′} = \\frac{K}{y}$，即$y dy = K dx$。
积分得$\\frac{1}{2}y^{2} = Kx + C_{1}$，即$y^{2} = 2Kx + C_{2}$。
代入初始条件$x = 0$,$y = 1$得$1 = C_{2}$，即$C_{2} = 1$。
代入初始条件$x = 0$,$y^{′} = \\frac{1}{2}$和$y^{′} = \\frac{K}{y}$得$\\frac{1}{2} = K$，即$K = \\frac{1}{2}$。
代入得$y^{2} = 2 ⋅ \\frac{1}{2}x + 1 = x + 1$，故$y = \\sqrt{x + 1}$（取正根因初始$y = 1 > 0$）。
验证满足微分方程和初始条件。
', 9, 'Mogullzr', '2026-01-29 14:12:13', 9, 'Mogullzr', '2026-01-29 14:12:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1469');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1469');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1082', '1469');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1470, '2002年考研数学卷1第4题', '简单', '考研数学2002年卷1真题', '已知实二次型$f(x_{1}, x_{2}, x_{3}) = a(x_{1}^{2} + x_{2}^{2} + x_{3}^{2}) + 4x_{1}x_{2} + 4x_{1}x_{3} + 4x_{2}x_{3}$经正交变换$x = Py$可化成标准型$f = 6y_{1}^{2}$，则$a =$______．', '[]', '$2$
', '二次型$f(x_{1}, x_{2}, x_{3})$对应的矩阵为：

$$
A = \\left( \\begin{array}{ccc}
a & 2 & 2 \\\\
2 & a & 2 \\\\
2 & 2 & a \\\\
\\end{array} \\right)
$$

经正交变换化为标准型$f = 6y_{1}^{2}$，表明矩阵$A$的特征值为$6, 0, 0$。
计算矩阵$A$的特征值：考虑向量$u = (1, 1, 1)T$，有$Au = (a + 4)u$，故特征值$λ_{1} = a + 4$。对于垂直于$u$的向量，如$v = (1, −1, 0)T$，有$Av = (a - 2)v$，故特征值$λ_{2} = a - 2$（重根）。
因此，特征值为$a + 4$和$a - 2$（重根）。令特征值为$6, 0, 0$，则有：
若$a + 4 = 6$且$a - 2 = 0$，解得$a = 2$。若$a + 4 = 0$且$a - 2 = 6$，解得$a = −4$，但此时特征值为$0, −6, −6$，与标准型$6y_{1}^{2}$不符。
故$a = 2$为唯一解。
验证：当$a = 2$时，矩阵$A$的特征值为$6, 0, 0$，标准型为$6y_{1}^{2}$，符合题意。
', 9, 'Mogullzr', '2026-01-29 14:12:13', 9, 'Mogullzr', '2026-01-29 14:12:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1470');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1063', '1470');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1471, '2002年考研数学卷1第5题', '简单', '考研数学2002年卷1真题', '设随机变量$X$服从正态分布$N(μ, σ^{2})$（$σ > 0$），
且二次方程$y^{2} + 4y + X = 0$无实根的概率为$\\frac{1}{2}$，则$μ =$______．', '[]', '$4$
', '
二次方程$y^{2} + 4y + X = 0$无实根的条件是判别式小于零，即


$$
Δ = 4^{2} - 4 ⋅ 1 ⋅ X = 16 - 4X < 0,
$$

解得$X > 4$。
由题设，该方程无实根的概率为$\\frac{1}{2}$，即


$$
P(X > 4) = \\frac{1}{2}.
$$

由于$X ∼ N(μ, σ^{2})$，且正态分布关于均值$μ$对称，故


$$
P(X > μ) = \\frac{1}{2}.
$$

比较得$μ = 4$。
', 9, 'Mogullzr', '2026-01-29 14:12:13', 9, 'Mogullzr', '2026-01-29 14:12:13', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1471');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1471');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1472, '2002年考研数学卷1第6题', '简单', '考研数学2002年卷1真题', '考虑二元函数$f(x, y)$的下面4条性质：①$f(x, y)$在点$(x_{0}, y_{0})$处连续， ②$f(x, y)$在点$(x_{0}, y_{0})$处的两个偏导数连续，③$f(x, y)$在点$(x_{0}, y_{0})$处可微， ④$f(x, y)$在点$(x_{0}, y_{0})$处的两个偏导数存在．若用``$P ⇒ Q$‘‘表示可由性质$P$推出$Q$，则有', '[''②$⇒$③$⇒$①．'', ''③$⇒$②$⇒$①．'', ''③$⇒$④$⇒$①．'', ''③$⇒$①$⇒$④．'']', "['A']", '在二元函数中，性质之间的关系如下：如果偏导数连续（②），则函数可微（③），这是多元微积分中的定理；如果函数可微（③），则函数连续（①），这也是基本性质。因此，② ⇒ ③ ⇒ ①成立。选项B错误，因为可微不一定推出偏导数连续；选项C错误，因为偏导数存在（④）不一定推出连续（①）；选项D错误，因为连续（①）不一定推出偏导数存在（④）。故正确答案为A。', 9, 'Mogullzr', '2026-01-29 14:12:14', 9, 'Mogullzr', '2026-01-29 14:12:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1472');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1472');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1472');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1473, '2002年考研数学卷1第7题', '简单', '考研数学2002年卷1真题', '设$u_{n} \\neq 0$（$n = 1, 2, 3, ⋯$），且$\\lim_{n→∞} \\frac{n}{u_{n}} = 1$，
则级数$\\sum_{n=1}^{∞}(−1)n+1 (\\frac{1}{u_{n}} + \\frac{1}{u_{n+1}})$', '[''发散．'', ''绝对收敛．'', ''条件收敛．'', ''收敛性根据所给条件不能判定．'']', "['C']", '考虑级数$\\sum_{n=1}^{∞}(−1)n+1 (\\frac{1}{u_{n}} + \\frac{1}{u_{n+1}})$。计算部分和：
$$
S_{N} = \\sum_{n=1}^{N}(−1)n+1 (\\frac{1}{u_{n}} + \\frac{1}{u_{n+1}}) = \\sum_{n=1}^{N}(−1)n+1\\frac{1}{u_{n}} + \\sum_{n=1}^{N}(−1)n+1\\frac{1}{u_{n+1}}.
$$
在第二个和中，令$m = n + 1$，则$m$从 2 到$N + 1$，且$(−1)n+1 = (−1)m$，故
$$
S_{N} = \\sum_{n=1}^{N}(−1)n+1\\frac{1}{u_{n}} + \\sum_{m=2}^{N+1}(−1)m\\frac{1}{u_{m}}.
$$
合并同类项：
$$
S_{N} = \\frac{1}{u_{1}} + \\sum_{n=2}^{N}  \\lbrack (−1)n+1 + (−1)n \\rbrack  \\frac{1}{u_{n}} + (−1)N+1\\frac{1}{u_{N+1}} = \\frac{1}{u_{1}} + (−1)N+1\\frac{1}{u_{N+1}}.
$$
由条件$\\lim_{n→∞} \\frac{n}{u_{n}} = 1$，知$u_{n} ∼ n$，故$\\lim_{n→∞} u_{n} = ∞$，从而$\\lim_{N→∞} \\frac{1}{u_{N+1}} = 0$。因此，
$$
\\lim_{N→∞} S_{N} = \\frac{1}{u_{1}},
$$
即级数收敛。考虑绝对收敛性：级数的绝对值项为
$$
​(−1)n+1 (\\frac{1}{u_{n}} + \\frac{1}{u_{n+1}})​ = \\frac{1}{∣u_{n}∣} + \\frac{1}{∣u_{n+1}∣}.
$$
由$u_{n} ∼ n$，有$\\frac{1}{∣u_{n}∣} ∼ \\frac{1}{n}$，故级数$∑ (\\frac{1}{∣u_{n}∣} + \\frac{1}{∣u_{n+1}∣})$发散（调和级数）。因此，级数不是绝对收敛。综上，级数条件收敛。', 9, 'Mogullzr', '2026-01-29 14:12:14', 9, 'Mogullzr', '2026-01-29 14:12:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1473');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1473');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1019', '1473');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1474, '2002年考研数学卷1第8题', '简单', '考研数学2002年卷1真题', '设函数$y = f(x)$在$(0, +∞)$内有界且可导，则', '[''当$\\\\lim_{x→+∞} f(x) = 0$时，必有$\\\\lim_{x→+∞} f^{′}(x) = 0$．'', ''当$\\\\lim_{x→+∞} f^{′}(x)$存在时，必有$\\\\lim_{x→+∞} f^{′}(x) = 0$．'', ''当$\\\\lim_{x→0^{+}} f(x) = 0$时，必有$\\\\lim_{x→0^{+}} f^{′}(x) = 0$．'', ''当$\\\\lim_{x→0^{+}} f^{′}(x)$存在时，必有$\\\\lim_{x→0^{+}} f^{′}(x) = 0$．'']', "['B']", '令$f(x) = \\frac{1}{x} \\sin x^{2}$，则$f(x)$在$(0, +∞)$有界，且

$$
f^{′}(x) = −\\frac{1}{x^{2}} \\sin x^{2} + 2 \\cos x^{2}.
$$
因为$\\lim_{x→+∞} f(x) = 0$，但$\\lim_{x→+∞} f^{′}(x)$不存在，故 (A) 不成立；
因为$\\lim_{x→0^{+}} f(x) = 0$，但$\\lim_{x→0^{+}} f^{′}(x) = 1 \\neq 0$，故 (C) 和 (D) 不成立；
因此选 (B)。下面用反证法证明 (B) 正确：
假设$\\lim_{x→+∞} f^{′}(x)$存在，且$\\lim_{x→+∞} f^{′}(x) = A \\neq 0$。不妨设$A > 0$，
取$ε = \\frac{A}{2} > 0$，则存在$X > 0$，使得当$x > X$时，
$$
∣f^{′}(x) - A∣ < ε = \\frac{A}{2},
$$
即
$$
\\frac{A}{2} = A - \\frac{A}{2} < f^{′}(x) < A + \\frac{A}{2} = \\frac{3A}{2}.
$$
由此可知，$f^{′}(x)$有界且大于$\\frac{A}{2}$。
在区间$\\lbrack X, x \\rbrack$上应用拉格朗日中值定理，存在$ξ ∈ (X, x)$使得
$$
f(x) = f(X) + f^{′}(ξ)(x - X) > f(X) + \\frac{A}{2}(x - X).
$$
从而$\\lim_{x→+∞} f(x) = +∞$，与题设$f(x)$有界矛盾。', 9, 'Mogullzr', '2026-01-29 14:12:14', 9, 'Mogullzr', '2026-01-29 14:12:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1474');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1474');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1040', '1474');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1475, '2002年考研数学卷1第9题', '简单', '考研数学2002年卷1真题', '设有三张不同平面的方程$a_{i1}x + a_{i2}y + a_{i3}z = b_{i}, i = 1, 2, 3$，
它们所组成的线性方程组的系数矩阵与增广矩阵的秩都为$2$，则这三张平面可能的位置关系为', '[]', "['B']", '事实上，由于方程组有解，且解空间的维数为 3 - 2 = 1，即公共解构成一条直线，故选 B。', 9, 'Mogullzr', '2026-01-29 14:12:14', 9, 'Mogullzr', '2026-01-29 14:12:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1475');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1475');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1476, '2002年考研数学卷1第10题', '简单', '考研数学2002年卷1真题', '设$X_{1}$和$X_{2}$是任意两个相互独立的连续型随机变量，它们的概率密度分别为$f_{1}(x)$和$f_{2}(x)$，分布函数分别为$F_{1}(x)$和$F_{2}(x)$，则', '[''$f_{1}(x) + f_{2}(x)$必为某一随机变量的概率密度．'', ''$f_{1}(x)f_{2}(x)$必为某一随机变量的概率密度．'', ''$F_{1}(x) + F_{2}(x)$必为某一随机变量的分布函数．'', ''$F_{1}(x)F_{2}(x)$必为某一随机变量的分布函数．'']', "['D']", '应选 (D)。函数$f(x)$成为概率密度的充要条件为：
$$
(1) f(x) ≥ 0;  (2) \\int_{−∞}^{+∞} f(x)dx = 1.
$$
函数$F(x)$成为分布函数的充要条件为：(1)$F(x)$单调不减；(2)$\\lim_{x→−∞} F(x) = 0, \\lim_{x→+∞} F(x) = 1$；(3)$F(x)$右连续。(A) 选项不对，因为
$$
\\int_{−∞}^{+∞} \\lbrack f_{1}(x) + f_{2}(x) \\rbrack dx = \\int_{−∞}^{+∞} f_{1}(x)dx + \\int_{−∞}^{+∞} f_{2}(x)dx = 1 + 1 = 2 \\neq 1.
$$
(B) 选项不对，因为可取反例，令
$$
f_{1}(x) = \\begin{cases} 1 & −1 < x < 0 \\\\ 0 & 其他; \\end{cases}  f_{2}(x) = \\begin{cases} 1 & 0 < x < 1 \\\\ 0 & 其他. \\end{cases}
$$
显然$f_{1}(x), f_{2}(x)$均是均匀分布的概率密度。而$f_{1}(x)f_{2}(x) = 0$，不满足条件。(C) 选项不对，因为$\\lim_{x→+∞} \\lbrack F(x_{1}) + F(x_{2}) \\rbrack  = 1 + 1 = 2 \\neq 1$.(D) 选项正确。令$X = \\max(X_{1}, X_{2})$，则$X$也是一个随机变量。$X$的分布函数为
$$
F(x) = P\\{X ≤ x\\} = P\\{\\max(X_{1}, X_{2}) ≤ x\\} = P\\{X_{1} ≤ x, X_{2} ≤ x\\}
$$

$$
= P\\{X_{1} ≤ x\\}P\\{X_{2} ≤ x\\} = F_{1}(x)F_{2}(x).
$$
', 9, 'Mogullzr', '2026-01-29 14:12:14', 9, 'Mogullzr', '2026-01-29 14:12:14', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1476');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1476');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1477, '2002年考研数学卷1第11题', '简单', '考研数学2002年卷1真题', '设函数$f(x)$在$x = 0$的某邻域内具有一阶连续导数，且$f(0) \\neq 0, f^{′}(0) \\neq 0$，
若$af(h) + bf(2h) - f(0)$在$h → 0$时是比$h$高阶的无穷小，试确定$a, b$的值．', '[]', '
$a = 2$，$b = −1$
', '
由题意，$af(h) + bf(2h) - f(0)$在$h → 0$时是比$h$高阶的无穷小，即


$$
\\lim_{h→0} \\frac{af(h) + bf(2h) - f(0)}{h} = 0
$$

由于$f(x)$在$x = 0$处具有一阶连续导数，且$f(0) \\neq 0$，$f^{′}(0) \\neq 0$，使用一阶泰勒展开：


$$
f(h) = f(0) + f^{′}(0)h + o(h),  f(2h) = f(0) + f^{′}(0)(2h) + o(h) = f(0) + 2f^{′}(0)h + o(h)
$$

代入原式：


$$
af(h) + bf(2h) - f(0) = a \\lbrack f(0) + f^{′}(0)h + o(h) \\rbrack  + b \\lbrack f(0) + 2f^{′}(0)h + o(h) \\rbrack  - f(0)
$$



$$
= (a + b - 1)f(0) + (af^{′}(0) + 2bf^{′}(0))h + o(h)
$$

为使该表达式为比$h$高阶的无穷小，常数项和$h$的系数必须为零：


$$
(a + b - 1)f(0) = 0,  af^{′}(0) + 2bf^{′}(0) = 0
$$

由$f(0) \\neq 0$，得$a + b = 1$；由$f^{′}(0) \\neq 0$，得$a + 2b = 0$。
解方程组：


$$
a + b = 1,  a + 2b = 0
$$

得$b = −1$，$a = 2$。
验证：当$a = 2$，$b = −1$时，


$$
2f(h) - f(2h) - f(0) = 2 \\lbrack f(0) + f^{′}(0)h + o(h) \\rbrack  -  \\lbrack f(0) + 2f^{′}(0)h + o(h) \\rbrack  - f(0) = o(h)
$$

满足条件。
', 9, 'Mogullzr', '2026-01-29 14:12:15', 9, 'Mogullzr', '2026-01-29 14:12:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1477');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1477');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1477');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1478, '2002年考研数学卷1第12题', '简单', '考研数学2002年卷1真题', '已知两曲线$y = f(x)$与$y = \\int_{0}^{arctan x}  e^{−t^{2}}dt$在点$(0, 0)$处的切线相同，
写出此切线方程，并求极限$\\lim_{n→∞} nf (\\frac{2}{n})$．', '[]', '
切线方程为$y = x$，极限为$2$。
', '
已知两曲线在点$(0, 0)$处的切线相同。首先，求第二曲线$y = \\int_{0}^{arctan x}  e^{−t^{2}}dt$在$x = 0$处的函数值和导数。
当$x = 0$时，$arctan 0 = 0$，积分区间为$\\lbrack 0, 0 \\rbrack$，故函数值为$0$。
求导：令$g(x) = \\int_{0}^{arctan x}  e^{−t^{2}}dt$，则


$$
g^{′}(x) = e^{−(arctan x)2} ⋅ \\frac{d}{dx}(arctan x) = e^{−(arctan x)2} ⋅ \\frac{1}{1 + x^{2}}
$$

在$x = 0$处，


$$
g^{′}(0) = e^{−0} ⋅ \\frac{1}{1} = 1
$$

因此，第二曲线在$(0, 0)$处的切线斜率为$1$。
由于切线相同，第一曲线$y = f(x)$在$x = 0$处满足$f(0) = 0$和$f^{′}(0) = 1$。
切线方程为过点$(0, 0)$且斜率为$1$的直线：


$$
y = x
$$

接下来，求极限$\\lim_{n→∞} nf (\\frac{2}{n})$。
由$f^{′}(0) = 1$，根据导数定义：


$$
f^{′}(0) = \\lim_{h→0} \\frac{f(h) - f(0)}{h} = \\lim_{h→0} \\frac{f(h)}{h} = 1
$$

令$h = \\frac{2}{n}$，则当$n → ∞$时，$h → 0$。
于是


$$
nf (\\frac{2}{n}) = \\frac{2}{h}f(h) = 2 ⋅ \\frac{f(h)}{h}
$$

取极限：


$$
\\lim_{n→∞} nf (\\frac{2}{n}) = \\lim_{h→0} 2 ⋅ \\frac{f(h)}{h} = 2 ⋅ 1 = 2
$$

故极限为$2$。
', 9, 'Mogullzr', '2026-01-29 14:12:15', 9, 'Mogullzr', '2026-01-29 14:12:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1478');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1478');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1478');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1479, '2002年考研数学卷1第13题', '简单', '考研数学2002年卷1真题', '计算二重积分$\\iint_{D} e^{\\max\\{x^{2},y^{2}\\}}dxdy$，其中$D = \\{(x, y)∣0 ≤ x ≤ 1, 0 ≤ y ≤ 1\\}$．', '[]', '$e - 1$
', '
计算二重积分


$$
\\iint_{D} e^{\\max\\{x^{2},y^{2}\\}} dx dy,
$$

其中


$$
D = \\{(x, y) ∣ 0 ≤ x ≤ 1,  0 ≤ y ≤ 1\\}.
$$

由于$\\max\\{x^{2}, y^{2}\\}$取决于$x$与$y$的大小关系，将区域$D$分为两部分：
$D_{1} = \\{(x, y) ∈ D ∣ x ≥ y\\}$，其中$\\max\\{x^{2}, y^{2}\\} = x^{2}$，$D_{2} = \\{(x, y) ∈ D ∣ x < y\\}$，其中$\\max\\{x^{2}, y^{2}\\} = y^{2}$。
于是原积分可写为：

$$
\\iint_{D} e^{\\max\\{x^{2},y^{2}\\}} dx dy = \\iint_{D_{1}} e^{x^{2}} dx dy + \\iint_{D_{2}} e^{y^{2}} dx dy.
$$

由对称性可知：

$$
\\iint_{D_{1}} e^{x^{2}} dx dy = \\iint_{D_{2}} e^{y^{2}} dx dy,
$$

因此只需计算其中一个并乘以 2 即可。
现在计算：

$$
\\iint_{D_{1}} e^{x^{2}} dx dy,
$$

其中$D_{1}$由$0 ≤ x ≤ 1,  0 ≤ y ≤ x$给出：

$$
\\iint_{D_{1}} e^{x^{2}} dx dy = \\int_{0}^{1} \\int_{0}^{x} e^{x^{2}} dy dx = \\int_{0}^{1} e^{x^{2}} ⋅ x dx.
$$

令$u = x^{2}$，则$du = 2x dx$，即$x dx = \\frac{du}{2}$，积分限变为$u = 0$到$u = 1$：

$$
\\int_{0}^{1} xe^{x^{2}} dx = \\int_{0}^{1} e^{u} ⋅ \\frac{du}{2} = \\frac{1}{2} \\int_{0}^{1} e^{u} du = \\frac{1}{2}  \\lbrack e^{u} \\rbrack _{0}^{1} = \\frac{1}{2}(e - 1).
$$

因此：

$$
\\iint_{D} e^{\\max\\{x^{2},y^{2}\\}} dx dy = 2 × \\frac{1}{2}(e - 1) = e - 1.
$$

故答案为：

$$
e - 1.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:15', 9, 'Mogullzr', '2026-01-29 14:12:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1479');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1479');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1479');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1480, '2002年考研数学卷1第14题', '简单', '考研数学2002年卷1真题', '设函数$f(x)$在$(−∞, +∞)$内具有一阶连续导数，$L$是上半平面$(y > 0)$内的有向分段光滑曲线，
其起点为$(a, b)$，终点为$(c, d)$．记
$$
I = \\int_{L} \\frac{1}{y} \\lbrack 1 + y^{2}f(xy) \\rbrack dx + \\frac{x}{y^{2}} \\lbrack y^{2}f(xy) - 1 \\rbrack dy,
$$
(1) 证明曲线积分$I$与路径$L$无关；
(2) 当$ab = cd$时，求$I$的值．', '[]', '
(1) 由于$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，曲线积分$I$与路径无关。
(2) 当$ab = cd$时，$I = \\frac{c}{d} - \\frac{a}{b}$。
', '
(1) 设


$$
P(x, y) = \\frac{1}{y} \\lbrack 1 + y^{2}f(xy) \\rbrack  = \\frac{1}{y} + yf(xy),  Q(x, y) = \\frac{x}{y^{2}} \\lbrack y^{2}f(xy) - 1 \\rbrack  = xf(xy) - \\frac{x}{y^{2}}.
$$

计算偏导数：


$$
\\frac{∂P}{∂y} = −\\frac{1}{y^{2}} + f(xy) + y ⋅ f^{′}(xy) ⋅ x = −\\frac{1}{y^{2}} + f(xy) + xyf^{′}(xy),
$$



$$
\\frac{∂Q}{∂x} = f(xy) + x ⋅ f^{′}(xy) ⋅ y - \\frac{1}{y^{2}} = f(xy) + xyf^{′}(xy) - \\frac{1}{y^{2}}.
$$

因此，$\\frac{∂P}{∂y} = \\frac{∂Q}{∂x}$，故曲线积分$I$与路径无关。
(2) 由于曲线积分与路径无关，存在势函数$U(x, y)$使得


$$
dU = Pdx + Qdy.
$$

由$U_{x} = P$，积分得


$$
U = ∫ (\\frac{1}{y} + yf(xy)) dx = \\frac{x}{y} + ∫ yf(xy)dx.
$$

令$u = xy$，则$du = ydx$，所以


$$
∫ yf(xy)dx = ∫ f(u)du = F(u) + C(y) = F(xy) + C(y),
$$

其中$F$是$f$的一个原函数。于是


$$
U = \\frac{x}{y} + F(xy) + C(y).
$$

再由$U_{y} = Q$，有


$$
U_{y} = −\\frac{x}{y^{2}} + F^{′}(xy) ⋅ x + C^{′}(y) = −\\frac{x}{y^{2}} + xf(xy) + C^{′}(y).
$$

与$Q = xf(xy) - \\frac{x}{y^{2}}$比较，得$C^{′}(y) = 0$，即$C(y)$为常数。取$C(y) = 0$，则


$$
U(x, y) = \\frac{x}{y} + F(xy).
$$

因此，


$$
I = U(c, d) - U(a, b) = (\\frac{c}{d} + F(cd)) - (\\frac{a}{b} + F(ab)) = \\frac{c}{d} - \\frac{a}{b} +  \\lbrack F(cd) - F(ab) \\rbrack .
$$

当$ab = cd$时，$F(cd) - F(ab) = 0$，故


$$
I = \\frac{c}{d} - \\frac{a}{b}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:15', 9, 'Mogullzr', '2026-01-29 14:12:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1480');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1480');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1008', '1480');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1481, '2002年考研数学卷1第15题', '简单', '考研数学2002年卷1真题', '(1) 验证函数$y(x) = 1 + \\frac{x^{3}}{3!} + \\frac{x^{6}}{6!} + \\frac{x^{9}}{9!} + ⋯ + \\frac{x^{3n}}{(3n)!} + ⋯$（$−∞ < x < +∞$）满足微分方程$y^{′′} + y^{′} + y = e^{x}$；(2) 利用(1)的结果求幂级数$\\sum_{n=0}^{∞} \\frac{x^{3n}}{(3n)!}$的和函数．', '[]', '
(1) 函数$y(x)$满足微分方程$y^{′′} + y^{′} + y = e^{x}$。
(2) 幂级数$\\sum_{n=0}^{∞} \\frac{x^{3n}}{(3n)!}$的和函数为$\\frac{1}{3}e^{x} + \\frac{2}{3}e^{−x/2} \\cos (\\frac{\\sqrt{3}}{2}x)$。
', '
(Ⅰ)
$y(x) = 1 + \\frac{x^{3}}{3!} + \\frac{x^{6}}{6!} + \\frac{x^{9}}{9!} + ⋯ + \\frac{x^{3n}}{(3n)!} + ⋯$，逐项可导得

$$
y^{′}(x) = \\frac{x^{2}}{2!} + \\frac{x^{5}}{5!} + \\frac{x^{8}}{8!} + ⋯ + \\frac{x^{3n-1}}{(3n - 1)!} + ⋯  ,
$$


$$
y^{′′}(x) = x + \\frac{x^{4}}{4!} + \\frac{x^{7}}{7!} + ⋯ + \\frac{x^{3n-2}}{(3n - 2)!} + ⋯  .
$$

从而

$$
y^{′′}(x) + y^{′}(x) + y(x) = 1 + \\sum_{n=1}^{∞} \\frac{x^{n}}{n!} = e^{x}.
$$


(Ⅱ)
微分方程$y^{′′} + y^{′} + y = e^{x}$对应的齐次线性方程为$y^{′′} + y^{′} + y = 0$，其特征方程为

$$
λ^{2} + λ + 1 = 0
$$

特征根为$−\\frac{1}{2} ± \\frac{\\sqrt{3}}{2}i$，所以齐次通解为

$$
y = e^{−\\frac{x}{2}}  \\lbrack C_{1} \\cos \\frac{\\sqrt{3}}{2}x + C_{2} \\sin \\frac{\\sqrt{3}}{2}x \\rbrack  .
$$

设非齐次方程的特解为$y = ce^{x}$，代入原方程得$c = \\frac{1}{3}$。故原方程通解为

$$
y = e^{−\\frac{x}{2}}  \\lbrack C_{1} \\cos \\frac{\\sqrt{3}}{2}x + C_{2} \\sin \\frac{\\sqrt{3}}{2}x \\rbrack  + \\frac{1}{3}e^{x}.
$$

由初始条件$y(0) = 1, y^{′}(0) = 0$得$C_{1} = \\frac{2}{3}, C_{2} = 0$。从而

$$
y = \\frac{2}{3}e^{−\\frac{x}{2}} \\cos \\frac{\\sqrt{3}}{2}x + \\frac{1}{3}e^{x}.
$$

于是

$$
\\sum_{n=0}^{∞} \\frac{x^{3n}}{(3n)!} = \\frac{2}{3}e^{−\\frac{x}{2}} \\cos \\frac{\\sqrt{3}}{2}x + \\frac{1}{3}e^{x} (−∞ < x < +∞).
$$

', 9, 'Mogullzr', '2026-01-29 14:12:15', 9, 'Mogullzr', '2026-01-29 14:12:15', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1481');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1481');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1046', '1481');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1482, '2002年考研数学卷1第16题', '简单', '考研数学2002年卷1真题', '设有一小山，取它的底面所在的平面为$xoy$坐标面，其底部所占的区域为$D = \\{(x, y) ​x^{2} + y^{2} - xy ≤ 75\\}$，小山的高度函数为$h(x, y) = 75 - x^{2} - y^{2} + xy$．(1) 设$M(x_{0}, y_{0})$为区域$D$上的一点，问$h(x, y)$在该点沿平面上什么方向的方向导数最大？
若记此反向导数的最大值为$g(x_{0}, y_{0})$，试写出$g(x_{0}, y_{0})$表达式．(2) 现欲利用此小山开展攀岩活动，为此需要在山脚寻找一上山坡度最大的点作为攀登的起点．也就是说，
要在$D$的边界线$x^{2} + y^{2} - xy = 75$上找出使(!Ⅰ!)中的$g(x, y)$达到最大值的点．试确定攀登起点的位置．', '[]', '
(1)$h(x, y)$在点$M(x_{0}, y_{0})$沿梯度方向$∇h = (−2x_{0} + y_{0}, −2y_{0} + x_{0})$的方向导数最大，最大值为$g(x_{0}, y_{0}) = \\sqrt{(−2x_{0} + y_{0})2 + (−2y_{0} + x_{0})2} = \\sqrt{5x_{0}^{2} + 5y_{0}^{2} - 8x_{0}y_{0}}$。
(2) 攀登起点的位置为$(5, −5)$和$(−5, 5)$。
', '
(1) 函数


$$
h(x, y) = 75 - x^{2} - y^{2} + xy
$$

的梯度为


$$
∇h = (\\frac{∂h}{∂x}, \\frac{∂h}{∂y}) = (−2x + y, −2y + x).
$$

在点$M(x_{0}, y_{0})$处，方向导数最大的方向是梯度的方向，即


$$
∇h(x_{0}, y_{0}) = (−2x_{0} + y_{0}, −2y_{0} + x_{0}).
$$

方向导数的最大值是梯度的模：


$$
g(x_{0}, y_{0}) = ∥∇h(x_{0}, y_{0})∥ = \\sqrt{(−2x_{0} + y_{0})2 + (−2y_{0} + x_{0})2} = \\sqrt{5x_{0}^{2} + 5y_{0}^{2} - 8x_{0}y_{0}}.
$$

(2) 需要在边界$x^{2} + y^{2} - xy = 75$上最大化$g(x, y) = \\sqrt{5x^{2} + 5y^{2} - 8xy}$。由于平方根函数单调，等价于最大化$f(x, y) = 5x^{2} + 5y^{2} - 8xy$。使用拉格朗日乘数法，设拉格朗日函数$L(x, y, λ) = 5x^{2} + 5y^{2} - 8xy - λ(x^{2} + y^{2} - xy - 75)$。求偏导数：


$$
\\frac{∂L}{∂x} = 10x - 8y - λ(2x - y) = 0,  \\frac{∂L}{∂y} = 10y - 8x - λ(2y - x) = 0.
$$

联立解得$x^{2} = y^{2}$，即$x = ±y$。代入约束条件：
当$x = y$时，$x^{2} + x^{2} - x ⋅ x = x^{2} = 75$，得$x = ±5\\sqrt{3}$，点為$(5\\sqrt{3}, 5\\sqrt{3})$和$(−5\\sqrt{3}, −5\\sqrt{3})$。当$x = −y$时，$x^{2} + x^{2} - x ⋅ (−x) = 3x^{2} = 75$，得$x = ±5$，点為$(5, −5)$和$(−5, 5)$。
计算$g(x, y)$：在$(5\\sqrt{3}, 5\\sqrt{3})$和$(−5\\sqrt{3}, −5\\sqrt{3})$上，$g = \\sqrt{5 ⋅ 75 + 5 ⋅ 75 - 8 ⋅ 75} = \\sqrt{150} = 5\\sqrt{6}$。在$(5, −5)$和$(−5, 5)$上，$g = \\sqrt{5 ⋅ 25 + 5 ⋅ 25 - 8 ⋅ (−25)} = \\sqrt{450} = 15\\sqrt{2}$。
比较得$15\\sqrt{2} > 5\\sqrt{6}$，故最大值在点$(5, −5)$和$(−5, 5)$处取得。因此，攀登起点的位置为$(5, −5)$和$(−5, 5)$。
', 9, 'Mogullzr', '2026-01-29 14:12:16', 9, 'Mogullzr', '2026-01-29 14:12:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1482');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1482');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1067', '1482');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1483, '2002年考研数学卷1第17题', '简单', '考研数学2002年卷1真题', '已知$4$阶方阵$A = (α_{1}, α_{2}, α_{3}, α_{4})$，$α_{1}, α_{2}, α_{3}, α_{4}$均为4维列向量，
其中$α_{2}, α_{3}, α_{4}$线性无关，$α_{1} = 2α_{2} - α_{3}$．
如果$β = α_{1} + α_{2} + α_{3} + α_{4}$，求线性方程组$Ax = β$的通解．', '[]', '
线性方程组$Ax = β$的通解为$x = k \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
0 \\\\
3 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$，其中$k$为任意常数。
', '
已知$A = (α_{1}, α_{2}, α_{3}, α_{4})$，其中$α_{2}, α_{3}, α_{4}$线性无关，且$α_{1} = 2α_{2} - α_{3}$，$β = α_{1} + α_{2} + α_{3} + α_{4}$。
线性方程组$Ax = β$等价于$x_{1}α_{1} + x_{2}α_{2} + x_{3}α_{3} + x_{4}α_{4} = β$。
代入$β$和$α_{1}$得：


$$
x_{1}(2α_{2} - α_{3}) + x_{2}α_{2} + x_{3}α_{3} + x_{4}α_{4} = α_{1} + α_{2} + α_{3} + α_{4} = (2α_{2} - α_{3}) + α_{2} + α_{3} + α_{4} = 3α_{2} + α_{4}
$$

整理得：


$$
(2x_{1} + x_{2} - 3)α_{2} + (−x_{1} + x_{3})α_{3} + (x_{4} - 1)α_{4} = 0
$$

由于$α_{2}, α_{3}, α_{4}$线性无关，系数必须为零：


$$
2x_{1} + x_{2} - 3 = 0
$$



$$
−x_{1} + x_{3} = 0
$$



$$
x_{4} - 1 = 0
$$

解得：


$$
x_{3} = x_{1}
$$



$$
x_{4} = 1
$$



$$
x_{2} = 3 - 2x_{1}
$$

令$x_{1} = k$（$k$为任意常数），则通解为：


$$
x = \\left( \\begin{array}{c}
k \\\\
3 - 2k \\\\
k \\\\
1 \\\\
\\end{array} \\right) = k \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right) + \\left( \\begin{array}{c}
0 \\\\
3 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)
$$

其中，齐次方程$Ax = 0$的通解为$k \\left( \\begin{array}{c}
1 \\\\
−2 \\\\
1 \\\\
0 \\\\
\\end{array} \\right)$，特解为$\\left( \\begin{array}{c}
0 \\\\
3 \\\\
0 \\\\
1 \\\\
\\end{array} \\right)$。
验证：代入原方程，$Ax = kα_{1} + (3 - 2k)α_{2} + kα_{3} + α_{4}$，代入$α_{1} = 2α_{2} - α_{3}$，得$k(2α_{2} - α_{3}) + (3 - 2k)α_{2} + kα_{3} + α_{4} = 3α_{2} + α_{4} = β$，成立。
', 9, 'Mogullzr', '2026-01-29 14:12:16', 9, 'Mogullzr', '2026-01-29 14:12:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1483');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1483');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1484, '2002年考研数学卷1第18题', '简单', '考研数学2002年卷1真题', '设$A, B$为同阶方阵，(1) 如果$A, B$相似，试证$A, B$的特征多项式相等．(2) 举一个二阶方阵的例子说明(!Ⅰ!)的逆命题不成立．(3) 当$A, B$均为实对称矩阵时，试证(!Ⅰ!)的逆命题成立．', '[]', '
(1) 因$A ∼ B$，由定义知，存在可逆阵$P$，使得$P^{−1}AP = B$，故

$$
∣λE - B∣ = ∣λE - P^{−1}AP∣ = ∣λP^{−1}P - P^{−1}AP∣ = ∣P^{−1}(λE - A)P∣
$$



$$
= ∣P^{−1}∣∣λE - A∣∣P∣ = ∣λE - A∣,
$$

故$A, B$有相同的特征多项式。
(2) 取$A = \\left( \\begin{array}{cc}
0 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right) , B = \\left( \\begin{array}{cc}
0 & 1 \\\\
0 & 0 \\\\
\\end{array} \\right)$，则有

$$
∣λE - A∣ = \\begin{vmatrix}
λ & 0\\\\
0 & λ
\\end{vmatrix} = λ^{2},  ∣λE - B∣ = \\begin{vmatrix}
λ & −1\\\\
0 & λ
\\end{vmatrix} = λ^{2},
$$

即$A, B$有相同的特征多项式，但$A$不相似于$B$。这是因为对任何的2阶可逆阵$P$，均有$P^{−1}AP = P^{−1}OP = O \\neq B$，故 (Ⅰ) 的逆命题不成立。
(3) 当$A, B$都是实对称矩阵时，$A, B$均能相似于对角阵，且该对角阵的对角线元素由$A, B$的特征值组成。若$A, B$有相同的特征多项式，则$A, B$有相同的特征值（包含重数），故$A, B$将相似于同一个对角阵。设特征值为$λ_{1}, λ_{2}, ⋯  , λ_{n}$，则有

$$
A ∼ \\left( \\begin{array}{cccc}
λ_{1} &  &  &  \\\\
 & λ_{2} &  &  \\\\
 &  & ⋱ &  \\\\
 &  &  & λ_{n} \\\\
\\end{array} \\right) ,  B ∼ \\left( \\begin{array}{cccc}
λ_{1} &  &  &  \\\\
 & λ_{2} &  &  \\\\
 &  & ⋱ &  \\\\
 &  &  & λ_{n} \\\\
\\end{array} \\right) .
$$

由相似的传递性，知$A ∼ B$，即 (Ⅰ) 的逆命题成立。
', '
(1) 因$A ∼ B$，由定义知，存在可逆阵$P$，使得$P^{−1}AP = B$，故

$$
∣λE - B∣ = ∣λE - P^{−1}AP∣ = ∣λP^{−1}P - P^{−1}AP∣ = ∣P^{−1}(λE - A)P∣
$$



$$
= ∣P^{−1}∣∣λE - A∣∣P∣ = ∣λE - A∣,
$$

故$A, B$有相同的特征多项式。
(2) 取$A = \\left( \\begin{array}{cc}
0 & 0 \\\\
0 & 0 \\\\
\\end{array} \\right) , B = \\left( \\begin{array}{cc}
0 & 1 \\\\
0 & 0 \\\\
\\end{array} \\right)$，则有

$$
∣λE - A∣ = \\begin{vmatrix}
λ & 0\\\\
0 & λ
\\end{vmatrix} = λ^{2},  ∣λE - B∣ = \\begin{vmatrix}
λ & −1\\\\
0 & λ
\\end{vmatrix} = λ^{2},
$$

即$A, B$有相同的特征多项式，但$A$不相似于$B$。这是因为对任何的2阶可逆阵$P$，均有$P^{−1}AP = P^{−1}OP = O \\neq B$，故 (Ⅰ) 的逆命题不成立。
(3) 当$A, B$都是实对称矩阵时，$A, B$均能相似于对角阵，且该对角阵的对角线元素由$A, B$的特征值组成。若$A, B$有相同的特征多项式，则$A, B$有相同的特征值（包含重数），故$A, B$将相似于同一个对角阵。设特征值为$λ_{1}, λ_{2}, ⋯  , λ_{n}$，则有

$$
A ∼ \\left( \\begin{array}{cccc}
λ_{1} &  &  &  \\\\
 & λ_{2} &  &  \\\\
 &  & ⋱ &  \\\\
 &  &  & λ_{n} \\\\
\\end{array} \\right) ,  B ∼ \\left( \\begin{array}{cccc}
λ_{1} &  &  &  \\\\
 & λ_{2} &  &  \\\\
 &  & ⋱ &  \\\\
 &  &  & λ_{n} \\\\
\\end{array} \\right) .
$$

由相似的传递性，知$A ∼ B$，即 (Ⅰ) 的逆命题成立。
', 9, 'Mogullzr', '2026-01-29 14:12:16', 9, 'Mogullzr', '2026-01-29 14:12:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1484');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1484');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1485, '2002年考研数学卷1第19题', '简单', '考研数学2002年卷1真题', '设随机变量$X$的概率密度为$f(x) = \\begin{cases} \\frac{1}{2} \\cos \\frac{x}{2} & 0 ≤ x ≤ π; \\\\ 0 & 其他. \\end{cases}$对$X$独立地重复观察$4$次，用$Y$表示观察值大于$\\frac{π}{3}$的次数，求$Y^{2}$的数学期望．', '[]', '$5$
', '
首先，计算事件“观察值大于$\\frac{π}{3}$”的概率$p$。
由概率密度函数可得：


$$
p = P (X > \\frac{π}{3}) = \\int_{\\frac{π}{3}}^{π} \\frac{1}{2} \\cos \\frac{x}{2} dx
$$

令$u = \\frac{x}{2}$，则$du = \\frac{1}{2}dx$，即$dx = 2du$。积分限变为：当$x = \\frac{π}{3}$时，$u = \\frac{π}{6}$；当$x = π$时，$u = \\frac{π}{2}$。
于是：


$$
p = \\int_{\\frac{π}{6}}^{\\frac{π}{2}} \\frac{1}{2} \\cos u ⋅ 2 du = \\int_{\\frac{π}{6}}^{\\frac{π}{2}} \\cos u du = \\sin u​_{\\frac{π}{6}}^{\\frac{π}{2}} = \\sin \\frac{π}{2} - \\sin \\frac{π}{6} = 1 - \\frac{1}{2} = \\frac{1}{2}
$$

因此，$Y$服从二项分布$B(4, \\frac{1}{2})$。
二项分布的期望和方差为：


$$
E \\lbrack Y \\rbrack  = np = 4 × \\frac{1}{2} = 2
$$



$$
Var(Y) = np(1 - p) = 4 × \\frac{1}{2} × \\frac{1}{2} = 1
$$

由方差公式：


$$
Var(Y) = E \\lbrack Y^{2} \\rbrack  - (E \\lbrack Y \\rbrack )2
$$

代入得：


$$
1 = E \\lbrack Y^{2} \\rbrack  - 2^{2} = E \\lbrack Y^{2} \\rbrack  - 4
$$

解得：


$$
E \\lbrack Y^{2} \\rbrack  = 1 + 4 = 5
$$

故$Y^{2}$的数学期望为 5。
', 9, 'Mogullzr', '2026-01-29 14:12:16', 9, 'Mogullzr', '2026-01-29 14:12:16', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1485');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1485');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1485');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1027', '1485');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1486, '2002年考研数学卷1第20题', '简单', '考研数学2002年卷1真题', '设总体$X$的概率分布为
$$
\\begin{array}{c|cccc|}
X & 0 & 1 & 2 & 3 \\\\
P & θ^{2} & 2θ(1 - θ) & θ^{2} & 1 - 2θ \\\\
\\end{array}
$$
其中$θ$（$0 <θ<\\frac{1}{2}$）是未知参数，
利用总体$X$的如下样本值$3, 1, 3, 0, 3, 1, 2, 3$，求$θ$的矩阵估计值和最大似然估计值．', '[]', '
矩估计值：$\\frac{1}{4}$
最大似然估计值：$\\frac{7-\\sqrt{13}}{12}$
', '
首先，求矩估计值。
总体均值：

$$
E(X) = 0 ⋅ θ^{2} + 1 ⋅ 2θ(1 - θ) + 2 ⋅ θ^{2} + 3 ⋅ (1 - 2θ) = 2θ(1 - θ) + 2θ^{2} + 3 - 6θ
$$

简化得：

$$
E(X) = 3 - 4θ
$$

样本值为：

$$
3, 1, 3, 0, 3, 1, 2, 3
$$

样本均值为：

$$
\\bar{x} = \\frac{3 + 1 + 3 + 0 + 3 + 1 + 2 + 3}{8} = 2
$$

令$E(X) = \\bar{x}$，即：

$$
3 - 4θ = 2
$$

解得：

$$
θ = \\frac{1}{4}
$$


其次，求最大似然估计值。
样本中：
$X = 0$出现 1 次$X = 1$出现 2 次$X = 2$出现 1 次$X = 3$出现 4 次
似然函数为：

$$
L(θ) =  \\lbrack P(X = 0) \\rbrack 1 \\lbrack P(X = 1) \\rbrack 2 \\lbrack P(X = 2) \\rbrack 1 \\lbrack P(X = 3) \\rbrack 4
$$

代入概率：

$$
L(θ) = (θ^{2})1 ⋅  \\lbrack 2θ(1 - θ) \\rbrack 2 ⋅ (θ^{2})1 ⋅ (1 - 2θ)4
$$

整理得：

$$
L(θ) = 4θ^{6}(1 - θ)2(1 - 2θ)4
$$

取对数似然函数：

$$
l(θ) = \\ln L(θ) = \\ln 4 + 6 \\ln θ + 2 \\ln(1 - θ) + 4 \\ln(1 - 2θ)
$$

求导并令导数为零：

$$
l^{′}(θ) = \\frac{6}{θ} - \\frac{2}{1 - θ} - \\frac{8}{1 - 2θ} = 0
$$

乘以$θ(1 - θ)(1 - 2θ)$得：

$$
6(1 - θ)(1 - 2θ) - 2θ(1 - 2θ) - 8θ(1 - θ) = 0
$$

展开：

$$
6(1 - 3θ + 2θ^{2}) - 2θ + 4θ^{2} - 8θ + 8θ^{2} = 0
$$



$$
6 - 18θ + 12θ^{2} - 2θ + 4θ^{2} - 8θ + 8θ^{2} = 0
$$



$$
6 - 28θ + 24θ^{2} = 0
$$



$$
12θ^{2} - 14θ + 3 = 0
$$

解二次方程：

$$
θ = \\frac{14 ± \\sqrt{196 - 144}}{24} = \\frac{14 ± \\sqrt{52}}{24} = \\frac{7 ± \\sqrt{13}}{12}
$$

由于$0 < θ < \\frac{1}{2}$，取：

$$
θ = \\frac{7 - \\sqrt{13}}{12}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:17', 9, 'Mogullzr', '2026-01-29 14:12:17', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1486');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1486');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1486');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1487, '2002年考研数学卷2第1题', '简单', '考研数学2002年卷2真题', '设函数$f(x) = \\begin{cases} \\frac{1-e^{\\tan x}}{arcsin \\frac{x}{2}} & x > 0 \\\\ ae^{2x} & x ≤ 0 \\end{cases}$在$x = 0$处连续，则$a =$______．', '[]', '$−2$
', '
函数在$x = 0$处连续，需满足左极限、右极限与函数值相等。
当$x ≤ 0$时，$f(x) = ae^{2x}$，故$f(0) = ae^{0} = a$。
左极限为$\\lim_{x→0^{−}} f(x) = \\lim_{x→0^{−}} ae^{2x} = a ⋅ 1 = a$。
右极限为$\\lim_{x→0^{+}} f(x) = \\lim_{x→0^{+}} \\frac{1-e^{\\tan x}}{arcsin \\frac{x}{2}}$。
当$x → 0^{+}$时，分子$1 - e^{\\tan x} ∼ − \\tan x ∼ −x$，分母$arcsin \\frac{x}{2} ∼ \\frac{x}{2}$，因此


$$
\\lim_{x→0^{+}} f(x) ∼ \\frac{−x}{\\frac{x}{2}} = −2.
$$

使用洛必达法则验证：
分子导数为$−e^{\\tan x} sec^{2} x$，分母导数为$\\frac{1}{2} ⋅ \\frac{1}{\\sqrt{1-(\\frac{x}{2})^{2}}}$，
于是


$$
\\lim_{x→0^{+}} \\frac{1 - e^{\\tan x}}{arcsin \\frac{x}{2}} = \\lim_{x→0^{+}} \\frac{−e^{\\tan x} sec^{2} x}{\\frac{1}{2} ⋅ \\frac{1}{\\sqrt{1-\\frac{x^{2}}{4}}}} = \\lim_{x→0^{+}} −e^{\\tan x} sec^{2} x ⋅ 2\\sqrt{1 - \\frac{x^{2}}{4}}.
$$

代入$x = 0$，得$−1 ⋅ 1 ⋅ 2 ⋅ 1 = −2$。
因此，右极限为$−2$。
由连续性，左极限、右极限与函数值相等，即$a = −2$。
', 9, 'Mogullzr', '2026-01-29 14:12:19', 9, 'Mogullzr', '2026-01-29 14:12:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1487');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1487');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1039', '1487');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1488, '2002年考研数学卷2第2题', '简单', '考研数学2002年卷2真题', '位于曲线$y = xe^{−x}(0 ≤ x < +∞)$下方，$x$轴上方的无界图形的面积是 ______．', '[]', '$1$
', '需要计算曲线$y = xe^{−x}$（其中$0 ≤ x < +∞$）下方、$x$轴上方的无界图形的面积，即计算积分$\\int_{0}^{∞} xe^{−x} dx$。
使用分部积分法：设$u = x$，$dv = e^{−x} dx$，则$du = dx$，$v = −e^{−x}$。代入分部积分公式：

$$
\\begin{array}{cc}
∫ xe^{−x} dx & = −xe^{−x} - ∫(−e^{−x}) dx \\\\
 & = −xe^{−x} + ∫ e^{−x} dx \\\\
 & = −xe^{−x} - e^{−x} + C \\\\
\\end{array}
$$

计算定积分：

$$
\\begin{array}{cc}
\\int_{0}^{∞} xe^{−x} dx & = \\lim_{b→∞}  \\lbrack −e^{−x}(x + 1) \\rbrack _{0}^{b} \\\\
 & = \\lim_{b→∞}  \\lbrack −e^{−b}(b + 1) - (−e^{0}(0 + 1)) \\rbrack  \\\\
 & = \\lim_{b→∞}  \\lbrack −e^{−b}(b + 1) + 1 \\rbrack  . \\\\
\\end{array}
$$

当$b → ∞$时，$e^{−b} → 0$，且$e^{−b}(b + 1) → 0$，因此极限为 1。故积分值为 1，即所求面积为 1。
', 9, 'Mogullzr', '2026-01-29 14:12:19', 9, 'Mogullzr', '2026-01-29 14:12:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1488');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1488');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1044', '1488');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1489, '2002年考研数学卷2第3题', '', '考研数学2002年卷2真题', '/problems/other/1469', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:19', 9, 'Mogullzr', '2026-01-29 14:12:19', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1490, '2002年考研数学卷2第4题', '简单', '考研数学2002年卷2真题', '$\\lim_{n→∞} \\frac{1}{n}  \\lbrack \\sqrt{1 + \\cos \\frac{π}{n}+}\\sqrt{1 + \\cos \\frac{2π}{n}+} ⋯ + \\sqrt{1 + \\cos \\frac{nπ}{n}} \\rbrack  =$______．', '[]', '$\\frac{2\\sqrt{2}}{π}$
', '
令$f(x) = \\sqrt{1 + \\cos x}$,$Δx_{i} = \\frac{π}{n}$($i = 1, 2, ⋯  , n$)，由定积分的定义有

$$
\\begin{array}{c}
\\lim_{n→∞} \\frac{1}{n}  \\lbrack \\sqrt{1 + \\cos \\frac{π}{n}} + \\sqrt{1 + \\cos \\frac{2π}{n}} + ⋯ + \\sqrt{1 + \\cos \\frac{nπ}{n}} \\rbrack  \\\\
= \\lim_{n→∞} \\frac{1}{π} \\sum_{i=1}^{n} \\sqrt{1 + \\cos \\frac{iπ}{n}} ⋅ \\frac{π}{n} = \\frac{1}{π} \\lim_{n→∞} \\sum_{i=1}^{n} f  (\\frac{iπ}{n}) Δx_{i} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:19', 9, 'Mogullzr', '2026-01-29 14:12:19', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1490');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1490');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1034', '1490');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1491, '2002年考研数学卷2第5题', '简单', '考研数学2002年卷2真题', '矩阵$\\left( \\begin{array}{ccc}
0 & −2 & −2 \\\\
2 & 2 & −2 \\\\
−2 & −2 & 2 \\\\
\\end{array} \\right)$的非零特征值是 ______．', '[]', '$4$
', '
给定矩阵$A = \\left( \\begin{array}{ccc}
0 & −2 & −2 \\\\
2 & 2 & −2 \\\\
−2 & −2 & 2 \\\\
\\end{array} \\right)$，求其特征值。
计算特征多项式$det(A - λI)$：


$$
A - λI = \\left( \\begin{array}{ccc}
−λ & −2 & −2 \\\\
2 & 2 - λ & −2 \\\\
−2 & −2 & 2 - λ \\\\
\\end{array} \\right)
$$

展开行列式：


$$
\\begin{array}{cccccccc}
det(A - λI) & \\begin{array}{cc}
2 - λ & −2 \\\\
−2 & 2 - λ \\\\
\\end{array} &  &  &  &  &  &  \\\\
 &  & 2 - λ & −2 & 2 & −2 & 2 & 2 - λ \\\\
 & \\begin{array}{cc}
2 & −2 \\\\
−2 & 2 - λ \\\\
\\end{array} &  &  &  &  &  &  \\\\
 &  & −2 & 2 - λ & −2 & 2 - λ & −2 & −2 \\\\
\\end{array}
$$

计算各子式：
第一项：$−λ ((2 - λ)2 - 4) = −λ(λ^{2} - 4λ) = −λ^{3} + 4λ^{2}$
第二项：$2 (2(2 - λ) - 4) = 2(−2λ) = −4λ$
第三项：$−2 (−4 + 2(2 - λ)) = −2(−2λ) = 4λ$
求和：


$$
det(A - λI) = (−λ^{3} + 4λ^{2}) + (−4λ) + (4λ) = −λ^{3} + 4λ^{2} = −λ^{2}(λ - 4)
$$

特征方程为$−λ^{2}(λ - 4) = 0$，解得特征值$λ = 0$（重根）和$λ = 4$。
非零特征值为$4$。
验证：矩阵的迹为$0 + 2 + 2 = 4$，特征值之和为$0 + 0 + 4 = 4$，吻合。
', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1491');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1491');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1492, '2002年考研数学卷2第6题', '简单', '考研数学2002年卷2真题', '设函数$f(u)$可导，$y = f(x^{2})$当自变量$x$在$x = −1$处取得增量$Δx = −0.1$时，
相应的函数增量$Δy$的线性主部为$0.1$，则$f^{′}(1) =$', '[''$−1$．'', ''$0.1$．'', ''$1$．'', ''$0.5$．'']', "['D']", '
函数$y = f(x^{2})$的微分$dy$是函数增量$Δy$的线性主部。
根据链式法则，

$$
\\frac{dy}{dx} = f^{′}(x^{2}) ⋅ 2x,
$$
因此

$$
dy = f^{′}(x^{2}) ⋅ 2x ⋅ dx.
$$
当$x = −1$时，有$x^{2} = 1$，且$dx = Δx = −0.1$。代入得

$$
dy = f^{′}(1) ⋅ 2 ⋅ (−1) ⋅ (−0.1) = f^{′}(1) ⋅ 0.2.
$$
已知$dy = 0.1$，所以

$$
0.1 = f^{′}(1) ⋅ 0.2,
$$
解得

$$
f^{′}(1) = \\frac{0.1}{0.2} = 0.5,
$$
对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1492');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1492');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1032', '1492');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1493, '2002年考研数学卷2第7题', '简单', '考研数学2002年卷2真题', '设函数$f(x)$连续，则下列函数中，必为偶函数的是', '[''$\\\\int_{0}^{x} f(t^{2})dt$．'', ''$\\\\int_{0}^{x} f^{2}(t)dt$．'', ''$\\\\int_{0}^{x} t \\\\lbrack f(t) - f(−t) \\\\rbrack dt$．'', ''$\\\\int_{0}^{x} t \\\\lbrack f(t) + f(−t) \\\\rbrack dt$．'']', "['D']", '对于选项A，设$g(x) = \\int_{0}^{x} f(t^{2}) dt$，则$g(−x) = \\int_{0}^{−x} f(t^{2}) dt$。令$u = −t$，得$g(−x) = − \\int_{0}^{x} f(u^{2}) du = −g(x)$，故$g(x)$为奇函数。对于选项B，设$h(x) = \\int_{0}^{x} f^{2}(t) dt$，则$h(−x) = \\int_{0}^{−x} f^{2}(t) dt$。令$u = −t$，得$h(−x) = − \\int_{0}^{x} f^{2}(−u) du$。由于$f^{2}(−u)$不一定等于$f^{2}(u)$，故$h(−x)$不一定等于$h(x)$或$−h(x)$，因此$h(x)$不一定为偶函数。对于选项C，设$k(x) = \\int_{0}^{x} t \\lbrack f(t) - f(−t) \\rbrack  dt$，则$k(−x) = \\int_{0}^{−x} t \\lbrack f(t) - f(−t) \\rbrack  dt$。令$u = −t$，得$k(−x) = − \\int_{0}^{x} u \\lbrack f(u) - f(−u) \\rbrack  du = −k(x)$，故$k(x)$为奇函数。对于选项D，设$m(x) = \\int_{0}^{x} t \\lbrack f(t) + f(−t) \\rbrack  dt$，则$m(−x) = \\int_{0}^{−x} t \\lbrack f(t) + f(−t) \\rbrack  dt$。令$u = −t$，得$m(−x) = \\int_{0}^{x} u \\lbrack f(u) + f(−u) \\rbrack  du = m(x)$，故$m(x)$为偶函数。
因此，必为偶函数的是选项D。', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1493');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1493');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1493');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1494, '2002年考研数学卷2第8题', '简单', '考研数学2002年卷2真题', '设$y = (x)$是二阶常系数微分方程$y^{′′} + py^{′} + qy = e^{3x}$满足初始条$y(0) = y^{′}(0) = 0$的特解，
则当$x → 0$，函数$\\frac{\\ln(1+x^{2})}{y(x)}$的极限', '[''不存在．'', ''等于$1$．'', ''等于$2$．'', ''等于$3$．'']', "['C']", '
给定微分方程

$$
y^{′′} + py^{′} + qy = e^{3x}
$$
满足初始条件$y(0) = y^{′}(0) = 0$，需要求极限

$$
\\lim_{x→0} \\frac{\\ln(1 + x^{2})}{y(x)}.
$$
当$x → 0$时，$\\ln(1 + x^{2}) ∼ x^{2}$，因此极限化为

$$
\\lim_{x→0} \\frac{x^{2}}{y(x)}.
$$
由于$y(0) = 0$和$y^{′}(0) = 0$，$y(x)$在$x = 0$附近具有二阶零点，即

$$
y(x) ∼ \\frac{y^{′′}(0)}{2}x^{2}.
$$
代入微分方程在$x = 0$处：

$$
y^{′′}(0) + py^{′}(0) + qy(0) = e^{3⋅0} = 1,
$$
利用初始条件得$y^{′′}(0) = 1$，因此

$$
y(x) ∼ \\frac{1}{2}x^{2}.
$$
于是

$$
\\frac{x^{2}}{y(x)} ∼ \\frac{x^{2}}{\\frac{1}{2}x^{2}} = 2,
$$
极限为$2$。', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1494');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1494');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1017', '1494');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1495, '2002年考研数学卷2第9题', '', '考研数学2002年卷2真题', '/problems/other/1474', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1496, '2002年考研数学卷2第10题', '简单', '考研数学2002年卷2真题', '设向量组$α_{1}, α_{2}, α_{3}$线性无关，向量$β_{1}$可由$α_{1}, α_{2}, α_{3}$线性表示，
而向量$β_{2}$不能由$α_{1}, α_{2}, α_{3}$线性表示，则对于任意常数$k$，必有', '[''$α_{1}, α_{2}, α_{3}$,$kβ_{1} + β_{2}$线性无关．'', ''$α_{1}, α_{2}, α_{3}$,$kβ_{1} + β_{2}$线性相关．'', ''$α_{1}, α_{2}, α_{3}$,$β_{1} + kβ_{2}$线性无关．'', ''$α_{1}, α_{2}, α_{3}$,$β_{1} + kβ_{2}$线性相关．'']', "['A']", '
已知向量组$α_{1}, α_{2}, α_{3}$线性无关，$β_{1}$可由$α_{1}, α_{2}, α_{3}$线性表示，而$β_{2}$不能由$α_{1}, α_{2}, α_{3}$线性表示。考虑选项 A 和 B 中的向量组$α_{1}, α_{2}, α_{3}, kβ_{1} + β_{2}$。
由于$β_{1}$可被$α_{1}, α_{2}, α_{3}$线性表示，设

$$
β_{1} = c_{1}α_{1} + c_{2}α_{2} + c_{3}α_{3},
$$
则

$$
kβ_{1} + β_{2} = k(c_{1}α_{1} + c_{2}α_{2} + c_{3}α_{3}) + β_{2}.
$$
若存在常数$a, b, c, d$使得

$$
aα_{1} + bα_{2} + cα_{3} + d(kβ_{1} + β_{2}) = 0,
$$
代入得

$$
(a + dkc_{1})α_{1} + (b + dkc_{2})α_{2} + (c + dkc_{3})α_{3} + dβ_{2} = 0.
$$
因为$α_{1}, α_{2}, α_{3}$线性无关，且$β_{2}$不能由它们线性表示，所以$α_{1}, α_{2}, α_{3}, β_{2}$线性无关，因此系数必须为零：

$$
d = 0,
$$
进而$a = 0, b = 0, c = 0$。故对于任意常数$k$，向量组$α_{1}, α_{2}, α_{3}, kβ_{1} + β_{2}$线性无关，选项 A 正确。对于选项 C 和 D，考虑向量组$α_{1}, α_{2}, α_{3}, β_{1} + kβ_{2}$。
当$k = 0$时，$β_{1} + kβ_{2} = β_{1}$，由于$β_{1}$可由$α_{1}, α_{2}, α_{3}$线性表示，向量组线性相关；
当$k \\neq 0$时，向量组可能线性无关。因此，对于任意常数$k$，该向量组不一定线性无关或线性相关，故选项 C 和 D 错误。', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1496');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1496');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1496');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1497, '2002年考研数学卷2第11题', '简单', '考研数学2002年卷2真题', '已知曲线的极坐标方程是$r = 1 - \\cos θ$，
求该曲线上对应于$θ = \\frac{π}{6}$处的切线与法线的直角坐标方程．', '[]', '
切线方程：$4x - 4y - 3\\sqrt{3} + 5 = 0$或$y = x + \\frac{5-3\\sqrt{3}}{4}$
法线方程：$4x + 4y + 1 - \\sqrt{3} = 0$或$y = −x + \\frac{\\sqrt{3}-1}{4}$
', '
由极坐标到直角坐标的变换公式


$$
\\begin{cases} x = r \\cos θ \\\\ y = r \\sin θ \\end{cases}
$$

得参数方程为


$$
\\begin{cases} x = (1 - \\cos θ) \\cos θ \\\\ y = (1 - \\cos θ) \\sin θ \\end{cases} ⇒ \\begin{cases} x = \\cos θ - \\cos^{2} θ \\\\ y = \\sin θ - \\cos θ \\sin θ. \\end{cases}
$$

曲线上$θ = \\frac{π}{6}$的点对应的直角坐标为


$$
(\\frac{\\sqrt{3}}{2} - \\frac{3}{4}, \\frac{1}{2} - \\frac{\\sqrt{3}}{4})
$$

切线斜率为


$$
\\frac{dy}{dx}​_{θ=\\frac{π}{6}} = \\frac{\\frac{dy}{dθ}}{\\frac{dx}{dθ}}​_{θ=\\frac{π}{6}} = \\frac{\\cos θ + \\sin^{2} θ - \\cos^{2} θ}{\\sin θ + 2 \\cos θ \\sin θ}​_{θ=\\frac{π}{6}} = 1.
$$

于是切线的直角坐标方程为


$$
y - (\\frac{1}{2} - \\frac{\\sqrt{3}}{4}) = x - (\\frac{\\sqrt{3}}{2} - \\frac{3}{4})  ⇒  x - y - \\frac{3}{4}\\sqrt{3} + \\frac{5}{4} = 0.
$$

法线的直角坐标方程为


$$
y - (\\frac{1}{2} - \\frac{\\sqrt{3}}{4}) = −\\frac{1}{1} (x - (\\frac{\\sqrt{3}}{2} - \\frac{3}{4}))  ⇒  x + y - \\frac{\\sqrt{3}}{4} + \\frac{1}{4} = 0.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:20', 9, 'Mogullzr', '2026-01-29 14:12:20', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1497');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1497');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1002', '1497');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1498, '2002年考研数学卷2第12题', '简单', '考研数学2002年卷2真题', '设$f(x) = \\begin{cases} 2x + \\frac{3}{2}x^{2} & −1 ≤ x < 0; \\\\ \\frac{xe^{x}}{(e^{x}+1)2} & 0 ≤ x ≤ 1. \\end{cases}$求函数$F(x) = \\int_{−1}^{x} f(t)dt$的表达式．', '[]', '

$$
F(x) = \\begin{cases} x^{2} + \\frac{1}{2}x^{3} - \\frac{1}{2} & −1 ≤ x < 0; \\\\ \\frac{xe^{x}}{e^{x}+1} - \\ln(e^{x} + 1) + \\ln 2 - \\frac{1}{2} & 0 ≤ x ≤ 1. \\end{cases}
$$

', '函数$F(x) = \\int_{−1}^{x} f(t) dt$需根据$x$所在区间分段计算。
当$x ∈  \\lbrack −1, 0)$时，$f(t) = 2t + \\frac{3}{2}t^{2}$，积分计算为：

$$
\\int_{−1}^{x} (2t + \\frac{3}{2}t^{2}) dt =  \\lbrack t^{2} + \\frac{1}{2}t^{3} \\rbrack _{−1}^{x} = (x^{2} + \\frac{1}{2}x^{3}) - (1 - \\frac{1}{2}) = x^{2} + \\frac{1}{2}x^{3} - \\frac{1}{2}.
$$

当$x ∈  \\lbrack 0, 1 \\rbrack$时，积分分为两部分：

$$
F(x) = \\int_{−1}^{0} f(t) dt + \\int_{0}^{x} f(t) dt.
$$

首先计算$\\int_{−1}^{0} f(t) dt$，其中$f(t) = 2t + \\frac{3}{2}t^{2}$：

$$
\\int_{−1}^{0} (2t + \\frac{3}{2}t^{2}) dt =  \\lbrack t^{2} + \\frac{1}{2}t^{3} \\rbrack _{−1}^{0} = 0 - (1 - \\frac{1}{2}) = −\\frac{1}{2}.
$$

然后计算$\\int_{0}^{x} f(t) dt$，其中$f(t) = \\frac{te^{t}}{(e^{t}+1)2}$。使用分部积分，设$u = t$,$dv = \\frac{e^{t}}{(e^{t}+1)2}dt$，则$du = dt$,$v = −\\frac{1}{e^{t}+1}$：

$$
\\int_{0}^{x} \\frac{te^{t}}{(e^{t} + 1)2}dt =  \\lbrack −\\frac{t}{e^{t} + 1} \\rbrack _{0}^{x} + \\int_{0}^{x} \\frac{1}{e^{t} + 1}dt = −\\frac{x}{e^{x} + 1} + \\int_{0}^{x} \\frac{1}{e^{t} + 1}dt.
$$

计算$\\int_{0}^{x} \\frac{1}{e^{t}+1}dt$：

$$
\\int_{0}^{x} \\frac{1}{e^{t} + 1}dt = \\int_{0}^{x} \\frac{e^{−t}}{1 + e^{−t}}dt =  \\lbrack − \\ln(1 + e^{−t}) \\rbrack _{0}^{x} = − \\ln(1 + e^{−x}) + \\ln 2.
$$

代入得：

$$
\\int_{0}^{x} \\frac{te^{t}}{(e^{t} + 1)2}dt = −\\frac{x}{e^{x} + 1} - \\ln(1 + e^{−x}) + \\ln 2.
$$

简化$− \\ln(1 + e^{−x}) = x - \\ln(e^{x} + 1)$，且$−\\frac{x}{e^{x}+1} + x = \\frac{xe^{x}}{e^{x}+1}$，因此：

$$
\\int_{0}^{x} \\frac{te^{t}}{(e^{t} + 1)2}dt = \\frac{xe^{x}}{e^{x} + 1} - \\ln(e^{x} + 1) + \\ln 2.
$$

于是：

$$
F(x) = −\\frac{1}{2} + \\frac{xe^{x}}{e^{x} + 1} - \\ln(e^{x} + 1) + \\ln 2.
$$

在$x = 0$处，两段表达式均得$F(0) = −\\frac{1}{2}$，故连续。
', 9, 'Mogullzr', '2026-01-29 14:12:21', 9, 'Mogullzr', '2026-01-29 14:12:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1498');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1498');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1498');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1499, '2002年考研数学卷2第13题', '简单', '考研数学2002年卷2真题', '已知函数$f(x)$在$(0, +∞)$内可导$f(x) > 0$，$\\lim_{x→+∞} f(x) = 1$，且满足
$$
\\lim_{h→0} (\\frac{f(x + hx)}{f(x)})^{\\frac{1}{h}} = e^{\\frac{1}{x}},
$$
求$f(x)$．', '[]', '
$f(x) = e^{−\\frac{1}{x}}$
', '
已知函数$f(x)$在$(0, +∞)$内可导，且$f(x) > 0$，$\\lim_{x→+∞} f(x) = 1$，并满足极限条件：

$$
\\lim_{h→0} (\\frac{f(x + hx)}{f(x)})^{\\frac{1}{h}} = e^{\\frac{1}{x}}.
$$

对极限取自然对数：

$$
\\ln  \\lbrack \\lim_{h→0} (\\frac{f(x + hx)}{f(x)})^{\\frac{1}{h}} \\rbrack  = \\frac{1}{x}.
$$

由于对数函数连续，可交换极限与对数顺序：

$$
\\lim_{h→0} \\frac{1}{h} \\ln (\\frac{f(x + hx)}{f(x)}) = \\frac{1}{x}.
$$

令$g(x) = \\ln f(x)$，则：

$$
\\ln (\\frac{f(x + hx)}{f(x)}) = g(x + hx) - g(x),
$$

所以：

$$
\\lim_{h→0} \\frac{g(x + hx) - g(x)}{h} = \\frac{1}{x}.
$$

令$k = hx$，则当$h → 0$时$k → 0$，且$h = k/x$，代入得：

$$
\\frac{g(x + hx) - g(x)}{h} = \\frac{g(x + k) - g(x)}{k/x} = x ⋅ \\frac{g(x + k) - g(x)}{k}.
$$

因此：

$$
\\lim_{h→0} \\frac{g(x + hx) - g(x)}{h} = \\lim_{k→0} x ⋅ \\frac{g(x + k) - g(x)}{k} = xg^{′}(x).
$$

于是：

$$
xg^{′}(x) = \\frac{1}{x}  ⇒  g^{′}(x) = \\frac{1}{x^{2}}.
$$

积分得：

$$
g(x) = ∫ \\frac{1}{x^{2}} dx = −\\frac{1}{x} + C,
$$

其中$C$为常数。由$g(x) = \\ln f(x)$，有：

$$
\\ln f(x) = −\\frac{1}{x} + C  ⇒  f(x) = e^{−\\frac{1}{x}+C} = Ae^{−\\frac{1}{x}},
$$

其中$A = e^{C} > 0$。利用条件$\\lim_{x→+∞} f(x) = 1$：

$$
\\lim_{x→+∞} Ae^{−\\frac{1}{x}} = A ⋅ 1 = 1  ⇒  A = 1.
$$

故$f(x) = e^{−\\frac{1}{x}}$。验证满足原极限条件：

$$
(\\frac{f(x + hx)}{f(x)})^{\\frac{1}{h}} = (\\frac{e^{−\\frac{1}{x+hx}}}{e^{−\\frac{1}{x}}})^{\\frac{1}{h}} = e^{\\frac{1}{h}(−\\frac{1}{x(1+h)}+\\frac{1}{x})} = e^{\\frac{1}{h}⋅\\frac{1}{x}⋅\\frac{h}{1+h}} = e^{\\frac{1}{x}⋅\\frac{1}{1+h}} → e^{\\frac{1}{x}} (h → 0),
$$

符合要求。因此，函数为$f(x) = e^{−\\frac{1}{x}}$。
', 9, 'Mogullzr', '2026-01-29 14:12:21', 9, 'Mogullzr', '2026-01-29 14:12:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1499');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1499');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1499');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1500, '2002年考研数学卷2第14题', '简单', '考研数学2002年卷2真题', '求微分方程$xdy + (x - 2y)dx = 0$的一个解$y = y(x)$，
使得由曲线$y = y(x)$与直线$x = 1$，$x = 2$以及$x$轴所围成的平面图形绕$x$轴旋转一周的旋转体体积最小．', '[]', '
$y = x - \\frac{75}{124}x^{2}$
', '
这是一阶线性微分方程$y^{′} - \\frac{2}{x}y = −1$，由通解公式有

$$
y = e^{∫ \\frac{2}{x}dx}  \\lbrack − ∫ e^{− ∫ \\frac{2}{x}dx}dx + C \\rbrack  = x^{2}  \\lbrack − ∫ \\frac{1}{x^{2}}dx + C \\rbrack  = x^{2} (\\frac{1}{x} + C) = x + Cx^{2}.
$$

由曲线$y = x + Cx^{2}$与$x = 1, x = 2$及$x$轴围成的图形绕$x$轴旋转一周的旋转体的体积为

$$
V = π \\int_{1}^{2}(x + Cx^{2})2dx = π (\\frac{31}{5}C^{2} + \\frac{15}{2}C + \\frac{7}{3}) .
$$

求导并令导数为零，得到

$$
\\frac{dV}{dC} = π (\\frac{62}{5}C + \\frac{15}{2}) = 0.
$$

解得$C = −\\frac{75}{124}$。又$V^{′′}(C) > 0$，故$C = −\\frac{75}{124}$为$V$的惟一极小值点，也是最小值点，于是所求曲线为

$$
y = x - \\frac{75}{124}x^{2}.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:21', 9, 'Mogullzr', '2026-01-29 14:12:21', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1500');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1016', '1500');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1038', '1500');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1501, '2002年考研数学卷2第15题', '简单', '考研数学2002年卷2真题', '某闸门的形状与大小如图所示，其中直线$l$为对称轴，闸门的上部为矩形$ABCD$，下部由二次抛物线与线段$AB$所围成，
当水面与闸门的上端相平时，欲使闸门矩形部分承受的水压力与闸门下部承受的水压力之比为$5 : 4$，
闸门矩形部分的高$h$应为多少$m$(米)？
![图片](http://mogullzr001.oss-cn-beijing.aliyuncs.com/2026/01/e5eccb33b3584c809f9c20922fe5d04f.jpg)
', '[]', '$2m$
', '
建立坐标系如下图：

设底部抛物线为$y = Px^{2} + q$，由坐标轴的建立知此抛物线过$(0, 0)$、$(1, 1)$点，代入抛物线的方程，解得$q = 0,  P = 1$，即底部抛物线是$y = x^{2} (−1 < x < 1)$。
已知压力 = 压强 × 面积，设$ρ$为水的密度，$g$为重力加速度，则平板$ABCD$上所受的总压力为


$$
P_{1} = \\int_{1}^{1+h} 2ρg(1 + h - y) dy = ρgh^{2},
$$

抛物板$AOB$上所受的总压力为

$$
P_{2} = \\int_{0}^{1} 2ρg(1 + h - y)\\sqrt{y} dy = 4ρg (\\frac{1}{3}h + \\frac{2}{15}) .
$$

由题意得

$$
P_{1} : P_{2} = 5 : 4  ⇒  \\frac{h^{2}}{\\frac{1}{3}h + \\frac{2}{15}} = \\frac{5}{4}.
$$

解之得$h = −\\frac{1}{3}$（舍去）或$h = 2$（米），即闸门矩形部分的高应为$2 m$。
', 9, 'Mogullzr', '2026-01-29 14:12:23', 9, 'Mogullzr', '2026-01-29 14:12:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1501');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1501');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1501');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1502, '2002年考研数学卷2第16题', '简单', '考研数学2002年卷2真题', '设$0 < x_{1} < 3$，$x_{n+1} = \\sqrt{x_{n}(3 - x_{n})}$（$n = 1, 2, ⋯$），
证明数列$\\{x_{n}\\}$的极限存在，并求此极限．', '[]', '$\\frac{3}{2}$
', '
先说明有界性：由$0 < x_{1} < 3$知$x_{1}$及$3 - x_{1}$均为正数，故

$$
0 < x_{2} = \\sqrt{x_{1}(3 - x_{1})} ≤ \\frac{1}{2}(x_{1} + 3 - x_{1}) = \\frac{3}{2}.
$$

假设$0 < x_{k} ≤ \\frac{3}{2}$($k ≥ 2$)，则有

$$
x_{k+1} = \\sqrt{x_{k}(3 - x_{k})} ≤ \\frac{1}{2}(x_{k} + 3 - x_{k}) = \\frac{3}{2}.
$$

由数学归纳法知，对任意正整数$n ≥ 2$有$0 < x_{n} ≤ \\frac{3}{2}$，即数列有界。
再说明单调性：因为

$$
x_{n+1} - x_{n} = \\sqrt{x_{n}(3 - x_{n})} - x_{n} ≤ \\frac{x_{n}(3 - x_{n}) - x_{n}^{2}}{\\sqrt{x_{n}(3 - x_{n})} + x_{n}} = \\frac{x_{n}(3 - 2x_{n})}{\\sqrt{x_{n}(3 - x_{n})} + x_{n}} ≥ 0,
$$

所以$\\{x_{n}\\}$单调增加。
数列$\\{x_{n}\\}$单调增加且有上界，所以$\\lim_{n→∞} x_{n}$存在，记为$a$。
由$x_{n+1} = \\sqrt{x_{n}(3 - x_{n})}$两边取极限得$a = \\sqrt{a(3 - a)}$，即$2a^{2} - 3a = 0$。解得$a = \\frac{3}{2}$或$a = 0$，但因$x_{1} > 0$且单调增加，故$a \\neq 0$，所以$\\lim_{n→∞} x_{n} = \\frac{3}{2}$。
', 9, 'Mogullzr', '2026-01-29 14:12:23', 9, 'Mogullzr', '2026-01-29 14:12:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1502');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1502');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1072', '1502');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1503, '2002年考研数学卷2第17题', '简单', '考研数学2002年卷2真题', '设$0 < a < b$，证明不等式$\\frac{2a}{a^{2}+b^{2}} < \\frac{\\ln b-\\ln a}{b-a} < \\frac{1}{\\sqrt{ab}}$．', '[]', '
设$t = \\frac{b}{a} > 1$，则$b = at$。原不等式化为：

$$
\\frac{2}{1 + t^{2}} < \\frac{\\ln t}{t - 1} < \\frac{1}{\\sqrt{t}}
$$

先证右边不等式
要证$\\frac{\\ln t}{t-1} < \\frac{1}{\\sqrt{t}}$，即证$\\ln t < \\frac{t-1}{\\sqrt{t}}$。
令$g(t) = \\frac{t-1}{\\sqrt{t}} - \\ln t$，则$g(1) = 0$。
求导得：

$$
g^{′}(t) = \\frac{(\\sqrt{t} - 1)2}{2t^{3/2}} > 0 (t > 1)
$$

故$g(t)$在$t > 1$时严格递增，所以$g(t) > 0$，右边不等式成立。
再证左边不等式
要证$\\frac{\\ln t}{t-1} > \\frac{2}{1+t^{2}}$，即证$\\ln t > \\frac{2(t-1)}{1+t^{2}}$。
首先证明一个更强的结论：$\\ln t > \\frac{2(t-1)}{t+1}$。
令$m(t) = \\ln t - \\frac{2(t-1)}{t+1}$，则$m(1) = 0$。
求导得：

$$
m^{′}(t) = \\frac{(t - 1)2}{t(t + 1)2} > 0 (t > 1)
$$

故$m(t)$在$t > 1$时严格递增，所以$m(t) > 0$，即$\\ln t > \\frac{2(t-1)}{t+1}$。
当$t > 1$时，有$t + 1 < 1 + t^{2}$，因此：

$$
\\frac{2}{t + 1} > \\frac{2}{1 + t^{2}}
$$

从而：

$$
\\frac{\\ln t}{t - 1} > \\frac{2}{t + 1} > \\frac{2}{1 + t^{2}}
$$

左边不等式成立。
综上，原不等式得证。
', '
设$t = \\frac{b}{a} > 1$，则$b = at$。原不等式化为：

$$
\\frac{2}{1 + t^{2}} < \\frac{\\ln t}{t - 1} < \\frac{1}{\\sqrt{t}}
$$

先证右边不等式
要证$\\frac{\\ln t}{t-1} < \\frac{1}{\\sqrt{t}}$，即证$\\ln t < \\frac{t-1}{\\sqrt{t}}$。
令$g(t) = \\frac{t-1}{\\sqrt{t}} - \\ln t$，则$g(1) = 0$。
求导得：

$$
g^{′}(t) = \\frac{(\\sqrt{t} - 1)2}{2t^{3/2}} > 0 (t > 1)
$$

故$g(t)$在$t > 1$时严格递增，所以$g(t) > 0$，右边不等式成立。
再证左边不等式
要证$\\frac{\\ln t}{t-1} > \\frac{2}{1+t^{2}}$，即证$\\ln t > \\frac{2(t-1)}{1+t^{2}}$。
首先证明一个更强的结论：$\\ln t > \\frac{2(t-1)}{t+1}$。
令$m(t) = \\ln t - \\frac{2(t-1)}{t+1}$，则$m(1) = 0$。
求导得：

$$
m^{′}(t) = \\frac{(t - 1)2}{t(t + 1)2} > 0 (t > 1)
$$

故$m(t)$在$t > 1$时严格递增，所以$m(t) > 0$，即$\\ln t > \\frac{2(t-1)}{t+1}$。
当$t > 1$时，有$t + 1 < 1 + t^{2}$，因此：

$$
\\frac{2}{t + 1} > \\frac{2}{1 + t^{2}}
$$

从而：

$$
\\frac{\\ln t}{t - 1} > \\frac{2}{t + 1} > \\frac{2}{1 + t^{2}}
$$

左边不等式成立。
综上，原不等式得证。
', 9, 'Mogullzr', '2026-01-29 14:12:23', 9, 'Mogullzr', '2026-01-29 14:12:23', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1503');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1503');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1503');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1504, '2002年考研数学卷2第18题', '简单', '考研数学2002年卷2真题', '设函数$f(x)$在$x = 0$的某邻域内具有二阶连续导数，且$f(0) \\neq 0$，$f^{′}(0) \\neq 0$，$f^{′′}(0) \\neq 0$．
证明：存在惟一的一组实数$λ_{1}, λ_{2}, λ_{3}$，使得当$h → 0$时，
$$
λ_{1}f(h) + λ_{2}f(2h) + λ_{3}f(3h) - f(0)
$$
是比$h^{2}$高阶的无穷小．', '[]', '由于$f(x)$在$x = 0$的某邻域内具有二阶连续导数，可对$f(h)$、$f(2h)$、$f(3h)$在$x = 0$处进行泰勒展开：

$$
f(h) = f(0) + f^{′}(0)h + \\frac{f^{′′}(0)}{2}h^{2} + o(h^{2}),
$$



$$
f(2h) = f(0) + 2f^{′}(0)h + 2f^{′′}(0)h^{2} + o(h^{2}),
$$



$$
f(3h) = f(0) + 3f^{′}(0)h + \\frac{9}{2}f^{′′}(0)h^{2} + o(h^{2}).
$$

代入表达式：

$$
S = λ_{1}f(h) + λ_{2}f(2h) + λ_{3}f(3h) - f(0),
$$

得：

$$
\\begin{array}{cc}
S & = λ_{1}  \\lbrack f(0) + f^{′}(0)h + \\frac{f^{′′}(0)}{2}h^{2} \\rbrack  \\\\
 & + λ_{2}  \\lbrack f(0) + 2f^{′}(0)h + 2f^{′′}(0)h^{2} \\rbrack  \\\\
 & + λ_{3}  \\lbrack f(0) + 3f^{′}(0)h + \\frac{9}{2}f^{′′}(0)h^{2} \\rbrack  - f(0) + o(h^{2}). \\\\
\\end{array}
$$

合并同类项：
常数项：$f(0)(λ_{1} + λ_{2} + λ_{3} - 1)$,一阶项：$f^{′}(0)h(λ_{1} + 2λ_{2} + 3λ_{3})$,二阶项：$f^{′′}(0)h^{2} (\\frac{λ_{1}}{2} + 2λ_{2} + \\frac{9}{2}λ_{3})$.
为使$S = o(h^{2})$，需常数项、一阶项和二阶项系数均为零，即：

$$
\\begin{cases} λ_{1} + λ_{2} + λ_{3} = 1 \\\\ λ_{1} + 2λ_{2} + 3λ_{3} = 0 \\\\ \\frac{λ_{1}}{2} + 2λ_{2} + \\frac{9}{2}λ_{3} = 0. \\end{cases}
$$

将第三式乘以 2 得：

$$
λ_{1} + 4λ_{2} + 9λ_{3} = 0.
$$

解方程组：
由第一式和第二式相减得：$λ_{2} + 2λ_{3} = −1$，
由第一式和第三式相减得：$3λ_{2} + 8λ_{3} = −1$，
解得：$λ_{3} = 1$，$λ_{2} = −3$，$λ_{1} = 3$。
此解唯一，且代入表达式后，$S$的泰勒展开中直至$h^{2}$项系数为零，故$S = o(h^{2})$。
', '由于$f(x)$在$x = 0$的某邻域内具有二阶连续导数，可对$f(h)$、$f(2h)$、$f(3h)$在$x = 0$处进行泰勒展开：

$$
f(h) = f(0) + f^{′}(0)h + \\frac{f^{′′}(0)}{2}h^{2} + o(h^{2}),
$$



$$
f(2h) = f(0) + 2f^{′}(0)h + 2f^{′′}(0)h^{2} + o(h^{2}),
$$



$$
f(3h) = f(0) + 3f^{′}(0)h + \\frac{9}{2}f^{′′}(0)h^{2} + o(h^{2}).
$$

代入表达式：

$$
S = λ_{1}f(h) + λ_{2}f(2h) + λ_{3}f(3h) - f(0),
$$

得：

$$
\\begin{array}{cc}
S & = λ_{1}  \\lbrack f(0) + f^{′}(0)h + \\frac{f^{′′}(0)}{2}h^{2} \\rbrack  \\\\
 & + λ_{2}  \\lbrack f(0) + 2f^{′}(0)h + 2f^{′′}(0)h^{2} \\rbrack  \\\\
 & + λ_{3}  \\lbrack f(0) + 3f^{′}(0)h + \\frac{9}{2}f^{′′}(0)h^{2} \\rbrack  - f(0) + o(h^{2}). \\\\
\\end{array}
$$

合并同类项：
常数项：$f(0)(λ_{1} + λ_{2} + λ_{3} - 1)$,一阶项：$f^{′}(0)h(λ_{1} + 2λ_{2} + 3λ_{3})$,二阶项：$f^{′′}(0)h^{2} (\\frac{λ_{1}}{2} + 2λ_{2} + \\frac{9}{2}λ_{3})$.
为使$S = o(h^{2})$，需常数项、一阶项和二阶项系数均为零，即：

$$
\\begin{cases} λ_{1} + λ_{2} + λ_{3} = 1 \\\\ λ_{1} + 2λ_{2} + 3λ_{3} = 0 \\\\ \\frac{λ_{1}}{2} + 2λ_{2} + \\frac{9}{2}λ_{3} = 0. \\end{cases}
$$

将第三式乘以 2 得：

$$
λ_{1} + 4λ_{2} + 9λ_{3} = 0.
$$

解方程组：
由第一式和第二式相减得：$λ_{2} + 2λ_{3} = −1$，
由第一式和第三式相减得：$3λ_{2} + 8λ_{3} = −1$，
解得：$λ_{3} = 1$，$λ_{2} = −3$，$λ_{1} = 3$。
此解唯一，且代入表达式后，$S$的泰勒展开中直至$h^{2}$项系数为零，故$S = o(h^{2})$。
', 9, 'Mogullzr', '2026-01-29 14:12:24', 9, 'Mogullzr', '2026-01-29 14:12:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1504');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1504');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1080', '1504');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1505, '2002年考研数学卷2第19题', '简单', '考研数学2002年卷2真题', '已知$A, B$为$3$阶矩阵，且满足$2A^{−1}B = B - 4E$，其中$E$是$3$阶单位矩阵．(1) 证明：矩阵$A - 2E$可逆；(2) 若$B = \\left( \\begin{array}{ccc}
1 & −2 & 0 \\\\
1 & 2 & 0 \\\\
0 & 0 & 2 \\\\
\\end{array} \\right)$，求矩阵$A$．', '[]', '
(1) 证明略（见解析）。
(2)$A = \\left( \\begin{array}{ccc}
0 & 2 & 0 \\\\
−1 & −1 & 0 \\\\
0 & 0 & −2 \\\\
\\end{array} \\right)$
', '
(Ⅰ) 由题设条件$2A^{−1}B = B - 4E$，两边左乘$A$，整理得$AB - 2B - 4A = 0$。所以


$$
(A - 2E)(B - 4E) = 8E ⇒ (A - 2E) ⋅ \\frac{1}{8}(B - 4E) = E.
$$

根据可逆矩阵的定义知$A - 2E$可逆，且$(A - 2E)−1 = \\frac{1}{8}(B - 4E)$。
(Ⅱ) 由 (Ⅰ) 结果知$A = 8(B - 4E)−1 + 2E$。而


$$
B - 4E = \\left( \\begin{array}{ccc}
−3 & −2 & 0 \\\\
1 & −2 & 0 \\\\
0 & 0 & −2 \\\\
\\end{array} \\right) ⇒ (B - 4E)−1 = \\left( \\begin{array}{ccc}
−\\frac{1}{4} & \\frac{1}{4} & 0 \\\\
−\\frac{1}{8} & −\\frac{3}{8} & 0 \\\\
0 & 0 & −\\frac{1}{2} \\\\
\\end{array} \\right)
$$

代入$A = 8(B - 4E)−1 + 2E$可得


$$
A = 8(B - 4E)−1 + 2E = \\left( \\begin{array}{ccc}
0 & 2 & 0 \\\\
−1 & −1 & 0 \\\\
0 & 0 & −2 \\\\
\\end{array} \\right)
$$

', 9, 'Mogullzr', '2026-01-29 14:12:24', 9, 'Mogullzr', '2026-01-29 14:12:24', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1505');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1505');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1505');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1506, '2002年考研数学卷2第20题', '', '考研数学2002年卷2真题', '/problems/other/1483', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:24', 9, 'Mogullzr', '2026-01-29 14:12:24', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1507, '2002年考研数学卷3第1题', '简单', '考研数学2002年卷3真题', '设常数$a \\neq \\frac{1}{2}$，则$\\lim_{n→∞} \\ln  \\lbrack \\frac{n-2na+1}{n(1-2a)} \\rbrack ^{n} =$______．', '[]', '

$$
\\frac{1}{1 - 2a}
$$

', '原极限为$\\lim_{n→∞} \\ln  \\lbrack \\frac{n-2na+1}{n(1-2a)} \\rbrack ^{n}$。利用对数性质$\\ln(x^{n}) = n \\ln x$，可重写为：

$$
\\lim_{n→∞} n \\ln (\\frac{n - 2na + 1}{n(1 - 2a)})
$$

令$b = 1 - 2a$，由于$a \\neq \\frac{1}{2}$，有$b \\neq 0$。则分子为$nb + 1$，分母为$nb$，因此：

$$
n \\ln (\\frac{nb + 1}{nb}) = n \\ln (1 + \\frac{1}{nb})
$$

当$n → ∞$时，$\\frac{1}{nb} → 0$，利用等价无穷小$\\ln(1 + x) ∼ x$（当$x → 0$），得：

$$
n \\ln (1 + \\frac{1}{nb}) ∼ n ⋅ \\frac{1}{nb} = \\frac{1}{b}
$$

故极限为$\\frac{1}{b} = \\frac{1}{1-2a}$。也可通过泰勒展开验证：

$$
n \\ln (1 + \\frac{1}{nb}) = n (\\frac{1}{nb} - \\frac{1}{2n^{2}b^{2}} + O (\\frac{1}{n^{3}})) = \\frac{1}{b} - \\frac{1}{2nb^{2}} + O (\\frac{1}{n^{2}}) → \\frac{1}{b}
$$

因此，极限为$\\frac{1}{1-2a}$。
', 9, 'Mogullzr', '2026-01-29 14:12:26', 9, 'Mogullzr', '2026-01-29 14:12:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1507');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1035', '1507');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1036', '1507');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1508, '2002年考研数学卷3第2题', '简单', '考研数学2002年卷3真题', '交换积分次序：$\\int_{0}^{\\frac{1}{4}} dy \\int_{y}^{\\sqrt{y}} f(x, y)dx + \\int_{\\frac{1}{4}}^{\\frac{1}{2}} dy \\int_{y}^{\\frac{1}{2}} f(x, y)dx =$______．', '[]', '

$$
\\int_{0}^{\\frac{1}{2}} dx \\int_{x^{2}}^{x} f(x, y)dy
$$

', '
应填$\\int_{0}^{\\frac{1}{2}} dx \\int_{x^{2}}^{x} f(x, y) dy$。画出与原题中二次积分的积分区域$D_{1}$与$D_{2}$，将它们的并集记为$D$。

于是交换积分次序之后得到

$$
\\begin{array}{cc}
 & \\int_{0}^{\\frac{1}{4}} dy \\int_{y}^{\\sqrt{y}} f(x, y) dx + \\int_{\\frac{1}{4}}^{\\frac{1}{2}} dy \\int_{y}^{\\frac{1}{2}} f(x, y) dx \\\\
 & = \\iint_{D} f(x, y) dσ \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:26', 9, 'Mogullzr', '2026-01-29 14:12:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1508');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1508');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1054', '1508');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1509, '2002年考研数学卷3第3题', '简单', '考研数学2002年卷3真题', '设三阶矩阵$A = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & 1 & 2 \\\\
3 & 0 & 4 \\\\
\\end{array} \\right)$，三维列向量$α = (a, 1, 1)^{T}$．
已知$Aα$与$α$线性相关，则$a =$______．', '[]', '-1
', '已知$Aα$与$α$线性相关，故存在标量$λ$使得$Aα = λα$。计算$Aα$：

$$
Aα = \\left( \\begin{array}{ccc}
1 & 2 & −2 \\\\
2 & 1 & 2 \\\\
3 & 0 & 4 \\\\
\\end{array} \\right) \\left( \\begin{array}{c}
a \\\\
1 \\\\
1 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
a + 2 - 2 \\\\
2a + 1 + 2 \\\\
3a + 0 + 4 \\\\
\\end{array} \\right) = \\left( \\begin{array}{c}
a \\\\
2a + 3 \\\\
3a + 4 \\\\
\\end{array} \\right) .
$$

代入$Aα = λα$得：

$$
\\left( \\begin{array}{c}
a \\\\
2a + 3 \\\\
3a + 4 \\\\
\\end{array} \\right) = λ \\left( \\begin{array}{c}
a \\\\
1 \\\\
1 \\\\
\\end{array} \\right) .
$$

对应分量相等：
$a = λa$,$2a + 3 = λ$,$3a + 4 = λ$.
由方程2和3得$2a + 3 = 3a + 4$，解得$a = −1$。代入方程1：当$a = −1$时，$−1 = λ(−1)$，得$λ = 1$，与方程2和3一致。若$a = 0$，则方程2和3矛盾，故唯一解为$a = −1$。
', 9, 'Mogullzr', '2026-01-29 14:12:26', 9, 'Mogullzr', '2026-01-29 14:12:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1509');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1509');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1509');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1510, '2002年考研数学卷3第4题', '简单', '考研数学2002年卷3真题', '设随机变量$X$和$Y$的联合概率分布为
$$
\\begin{array}{c|c|c|c|}
X╲Y & −1 & 0 & 1 \\\\
0 & 0.07 & 0.18 & 0.15 \\\\
1 & 0.08 & 0.32 & 0.20 \\\\
\\end{array}
$$
则$X^{2}$和$Y^{2}$的协方差$Cov(X^{2}, Y^{2}) =$______．', '[]', '-0.02
', '应填 -0.02。事实上，$X^{2}$、$Y^{2}$和$X^{2}Y^{2}$都是 0-1 分布，而且

$$
P\\{X^{2} = 0\\} = P\\{X = 0\\} = 0.4,
$$



$$
P\\{Y^{2} = 0\\} = P\\{Y = 0\\} = 0.5,
$$



$$
P\\{Y^{2} = 1\\} = P\\{Y = −1\\} + P\\{Y = 1\\} = 0.15 + 0.35 = 0.5.
$$

同理可求得$X^{2}Y^{2}$的分布律为

$$
\\begin{array}{c|cc}
X^{2}Y^{2} & 0 & 1 \\\\
P & 0.72 & 0.28 \\\\
\\end{array}
$$

所以得到

$$
E(X^{2}) = 0.5,  E(Y^{2}) = 0.60,  E(X^{2}Y^{2}) = 0.28.
$$



$$
Cov(X^{2}, Y^{2}) = E(X^{2}Y^{2}) - E(X^{2})E(Y^{2}) = 0.28 - 0.6 × 0.5 = −0.02.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:26', 9, 'Mogullzr', '2026-01-29 14:12:26', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1510');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1510');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1510');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1511, '2002年考研数学卷3第5题', '简单', '考研数学2002年卷3真题', '设总体$X$的概率密度为$f(x; θ) = \\begin{cases} e^{−(x-θ)} & 若 x ≥ θ \\\\ 0 & 若 x < θ. \\end{cases}$而$X_{1}, X_{2}, ⋯  , X_{n}$是来自总体$X$的简单随机样本，则未知参数$θ$的矩估计量为 ______．', '[]', '
$\\hat{θ} = \\bar{X} - 1$，其中$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$
', '
总体$X$的概率密度函数为$f(x; θ) = e^{−(x-θ)}$，当$x ≥ θ$，否则为 0。计算总体均值$E \\lbrack X \\rbrack$：


$$
E \\lbrack X \\rbrack  = \\int_{θ}^{∞} xe^{−(x-θ)} dx
$$

令$t = x - θ$，则$x = t + θ$，$dx = dt$，积分限变为$t = 0$到$∞$：


$$
E \\lbrack X \\rbrack  = \\int_{0}^{∞}(t + θ)e^{−t} dt = \\int_{0}^{∞} te^{−t} dt + θ \\int_{0}^{∞} e^{−t} dt
$$

其中$\\int_{0}^{∞} te^{−t} dt = 1$，$\\int_{0}^{∞} e^{−t} dt = 1$，所以


$$
E \\lbrack X \\rbrack  = 1 + θ
$$

根据矩估计法，令样本均值$\\bar{X} = \\frac{1}{n} \\sum_{i=1}^{n} X_{i}$等于总体均值$E \\lbrack X \\rbrack$：


$$
\\bar{X} = θ + 1
$$

解得矩估计量为$\\hat{θ} = \\bar{X} - 1$。
', 9, 'Mogullzr', '2026-01-29 14:12:27', 9, 'Mogullzr', '2026-01-29 14:12:27', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1511');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1070', '1511');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1071', '1511');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1512, '2002年考研数学卷3第6题', '简单', '考研数学2002年卷3真题', '设函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上有定义，在开区间$(a, b)$内可导，则', '[''当$f(a)f(b) < 0$时，存在$ξ ∈ (a, b)$，使$f(ξ) = 0$．'', ''对任何$ξ ∈ (a, b)$，有$\\\\lim_{x→ξ} \\\\lbrack f(x) - f(ξ) \\\\rbrack  = 0$．'', ''当$f(a) = f(b)$时，存在$ξ ∈ (a, b)$，使$f^{′}(ξ) = 0$．'', ''存在$ξ ∈ (a, b)$，使$f(b) - f(a) = f^{′}(ξ)(b - a)$．'']', "['B']", '函数$f(x)$在闭区间$\\lbrack a, b \\rbrack$上有定义，在开区间$(a, b)$内可导。由于可导必然连续，因此$f(x)$在开区间$(a, b)$内连续。对于选项 B，对任何$ξ ∈ (a, b)$，有

$$
\\lim_{x→ξ} \\lbrack f(x) - f(ξ) \\rbrack  = 0,
$$

这等价于函数在$ξ$处连续，因此 B 正确。选项 A 要求函数在闭区间上连续才能应用零点定理，但题设未保证函数在端点连续，因此 A 不一定成立。选项 C 是罗尔定理的形式，但罗尔定理要求函数在闭区间上连续，题设未保证此条件，因此 C 不一定成立。选项 D 是拉格朗日中值定理的形式，同样要求函数在闭区间上连续，题设未保证此条件，因此 D 不一定成立。', 9, 'Mogullzr', '2026-01-29 14:12:27', 9, 'Mogullzr', '2026-01-29 14:12:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1512');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1512');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1043', '1512');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1513, '2002年考研数学卷3第7题', '简单', '考研数学2002年卷3真题', '设幂级数$\\sum_{n=1}^{∞} a_{n}x^{n}$与$\\sum_{n=1}^{∞} b_{n}x^{n}$的收敛半径分别为$\\frac{\\sqrt{5}}{3}$与$\\frac{1}{3}$，则幂级数$\\sum_{i=1}^{∞} \\frac{a_{n}^{2}}{b_{n}^{2}}x^{n}$的收敛半径为', '[''$5$．'', ''$\\\\frac{\\\\sqrt{5}}{3}$．'', ''$\\\\frac{1}{3}$．'', ''$\\\\frac{1}{5}$．'']', "['A']", '
由题设，
$$
\\lim_{n→∞} ​\\frac{a_{n}}{a_{n+1}}​ = \\frac{\\sqrt{5}}{3},
$$

$$
\\lim_{n→∞} ​\\frac{b_{n}}{b_{n+1}}​ = \\frac{1}{3},
$$
所以
$$
\\lim_{n→∞} \\frac{a_{n}^{2}/b_{n}^{2}}{a_{n+1}^{2}/b_{n+1}^{2}} = \\lim_{n→∞} \\frac{a_{n}^{2}/a_{n+1}^{2}}{b_{n}^{2}/b_{n+1}^{2}} = \\frac{5/3}{1/3} = 5,
$$
从而所求幂级数的收敛半径为$5$。', 9, 'Mogullzr', '2026-01-29 14:12:27', 9, 'Mogullzr', '2026-01-29 14:12:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1513');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1018', '1513');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1020', '1513');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1514, '2002年考研数学卷3第8题', '简单', '考研数学2002年卷3真题', '设$A$是$m × n$矩阵，$B$是$n × m$矩阵，则线性方程组$(AB)x = 0$', '[''当$n > m$时仅有零解．'', ''当$n > m$时必有非零解．'', ''当$m > n$时仅有零解．'', ''当$m > n$时必有非零解．'']', "['D']", '
设$A$是$m × n$矩阵，$B$是$n × m$矩阵，则$AB$是$m × m$矩阵。
线性方程组$(AB)x = 0$有非零解当且仅当系数矩阵$AB$的秩小于$m$，即$rank(AB) < m$。当$m > n$时，由于$rank(A) ≤ \\min(m, n) = n$和$rank(B) ≤ \\min(n, m) = n$，因此

$$
rank(AB) ≤ \\min(rank(A), rank(B)) ≤ n < m,
$$

故$rank(AB) < m$，方程组必有非零解。当$n > m$时，$rank(AB)$可能等于$m$也可能小于$m$，因此不一定有非零解或仅有零解，故选项 A 和 B 错误。
选项 C 错误，因为当$m > n$时必有非零解。
因此正确答案为 D。', 9, 'Mogullzr', '2026-01-29 14:12:27', 9, 'Mogullzr', '2026-01-29 14:12:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1514');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1514');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1041', '1514');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1515, '2002年考研数学卷3第9题', '简单', '考研数学2002年卷3真题', '设$A$是$n$阶实对称矩阵，$P$是$n$阶可逆矩阵，已知$n$维列向量$α$是$A$的属于特征值$λ$的特征向量，
则矩阵$(P^{−1}AP)^{T}$属于特征值$λ$的特征向量是', '[''$P^{−1}α$．'', ''$P^{T}α$．'', ''$Pα$．'', ''$(P^{−1})^{T} α$．'']', "['B']", '
已知$A$是实对称矩阵，故$A^{T} = A$。
矩阵$B = P^{−1}AP$与$A$相似，具有相同的特征值$λ$，且$B$属于特征值$λ$的特征向量为$P^{−1}α$。现在考虑

$$
B^{T} = (P^{−1}AP)T = P^{T}A(P^{−1})T,
$$
需要求$B^{T}$属于特征值$λ$的特征向量。设$v$满足$B^{T}v = λv$，即

$$
P^{T}A(P^{−1})Tv = λv.
$$
令$w = (P^{−1})Tv$，则$v = P^{T}w$，代入方程得

$$
P^{T}Aw = λP^{T}w.
$$
由于$P^{T}$可逆，两边左乘$(P^{T})−1$得

$$
Aw = λw,
$$
故$w$是$A$的属于特征值$λ$的特征向量。已知$α$是此类特征向量，因此$w = kα$（$k$为标量），从而

$$
v = P^{T}w = kP^{T}α.
$$
忽略标量倍数，$B^{T}$属于特征值$λ$的特征向量为$P^{T}α$，对应选项 B。其他选项均不满足特征方程。', 9, 'Mogullzr', '2026-01-29 14:12:27', 9, 'Mogullzr', '2026-01-29 14:12:27', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1515');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1515');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1516, '2002年考研数学卷3第10题', '简单', '考研数学2002年卷3真题', '设随机变量$X$和$Y$都服从标准正态分布，则', '[''$X + Y$服从正态分布．'', ''$X^{2} + Y^{2}$服从$χ^{2}$分布．'', ''$X^{2}$和$Y^{2}$都服从$χ^{2}$分布．'', ''$X^{2}/Y^{2}$服从$F$分布．'']', "['C']", '
由于$X$和$Y$都服从标准正态分布，即$X ∼ N(0, 1)$和$Y ∼ N(0, 1)$，根据卡方分布的定义，标准正态随机变量的平方服从自由度为 1 的卡方分布，因此$X^{2} ∼ χ^{2}(1)$和$Y^{2} ∼ χ^{2}(1)$，无论$X$和$Y$是否独立，选项 C 总是成立。选项 A 中，$X + Y$不一定服从正态分布，如果$X$和$Y$不独立（例如$Y = −X$时，$X + Y = 0$，不是正态分布）。选项 B 中，$X^{2} + Y^{2}$不一定服从$χ^{2}$分布，如果$X$和$Y$不独立（例如$Y = X$时，$X^{2} + Y^{2} = 2X^{2}$，不是$χ^{2}$分布）。选项 D 中，$X^{2}/Y^{2}$不一定服从$F$分布，如果$X$和$Y$不独立（例如$Y = X$时，$X^{2}/Y^{2} = 1$，不是$F$分布）。因此，只有选项 C 正确。', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1516');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1516');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1517, '2002年考研数学卷3第11题', '简单', '考研数学2002年卷3真题', '求极限
$$
\\lim_{x→0} \\frac{\\int_{0}^{x}  \\lbrack \\int_{0}^{u^{2}} arctan(1 + t)dt \\rbrack  du}{x(1 - \\cos x)}
$$
', '[]', '$\\frac{π}{6}$
', '
由等价无穷小量代换和洛必达法则，可得

$$
\\begin{array}{cc}
\\lim_{x→0} \\frac{\\int_{0}^{x}  \\lbrack \\int_{0}^{u^{2}} arctan(1 + t) dt \\rbrack  du}{x(1 - \\cos x)} & = \\lim_{x→0} \\frac{\\int_{0}^{x}  \\lbrack \\int_{0}^{u^{2}} arctan(1 + t) dt \\rbrack  du}{\\frac{1}{2}x^{3}} \\\\
 & = \\lim_{x→0} \\frac{\\int_{0}^{x^{2}} arctan(1 + t) dt}{\\frac{3}{2}x^{2}} \\\\
 & = \\lim_{x→0} \\frac{arctan(1 + x^{2}) ⋅ 2x}{3x} \\\\
\\end{array}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1517');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1517');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1012', '1517');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1518, '2002年考研数学卷3第12题', '简单', '考研数学2002年卷3真题', '设函数$u = f(x, y, z)$有连续偏导数，且$z = z(x, y)$由方程$xe^{x} - ye^{y} = ze^{z}$所确定，求$du$．', '[]', '

$$
du = (\\frac{∂f}{∂x} + \\frac{∂f}{∂z} ⋅ \\frac{e^{x}(1 + x)}{e^{z}(1 + z)}) dx + (\\frac{∂f}{∂y} - \\frac{∂f}{∂z} ⋅ \\frac{e^{y}(1 + y)}{e^{z}(1 + z)}) dy
$$

', '函数$u = f(x, y, z)$有连续偏导数，且$z = z(x, y)$由方程$xe^{x} - ye^{y} = ze^{z}$所确定。求$du$即求全微分。
首先，由全微分公式，有：

$$
du = \\frac{∂f}{∂x}dx + \\frac{∂f}{∂y}dy + \\frac{∂f}{∂z}dz
$$

其中$dz$需要通过隐函数求导得到。设$F(x, y, z) = xe^{x} - ye^{y} - ze^{z} = 0$，则：

$$
\\frac{∂F}{∂x} = e^{x}(1 + x),  \\frac{∂F}{∂y} = −e^{y}(1 + y),  \\frac{∂F}{∂z} = −e^{z}(1 + z)
$$

由隐函数定理：

$$
\\frac{∂z}{∂x} = −\\frac{\\frac{∂F}{∂x}}{\\frac{∂F}{∂z}} = \\frac{e^{x}(1 + x)}{e^{z}(1 + z)},  \\frac{∂z}{∂y} = −\\frac{\\frac{∂F}{∂y}}{\\frac{∂F}{∂z}} = −\\frac{e^{y}(1 + y)}{e^{z}(1 + z)}
$$

代入$dz = \\frac{∂z}{∂x}dx + \\frac{∂z}{∂y}dy$到$du$表达式中，合并同类项即得结果。
', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1518');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1001', '1518');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1045', '1518');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1519, '2002年考研数学卷3第13题', '简单', '考研数学2002年卷3真题', '设$f(\\sin^{2} x) = \\frac{x}{\\sin x}$，求$∫ \\frac{\\sqrt{x}}{\\sqrt{1-x}}f(x)dx$．', '[]', '

$$
∫ \\frac{\\sqrt{x}}{\\sqrt{1 - x}}f(x) dx = −2\\sqrt{1 - x} arcsin(\\sqrt{x}) + 2\\sqrt{x} + C
$$

其中$C$为积分常数。
', '
给定$f(\\sin^{2} x) = \\frac{x}{\\sin x}$，令$u = \\sin^{2} x$，则$\\sin x = \\sqrt{u}$（取主值），$x = arcsin(\\sqrt{u})$，所以$f(u) = \\frac{arcsin(\\sqrt{u})}{\\sqrt{u}}$，即$f(x) = \\frac{arcsin(\\sqrt{x})}{\\sqrt{x}}$。
代入积分：


$$
∫ \\frac{\\sqrt{x}}{\\sqrt{1 - x}}f(x) dx = ∫ \\frac{\\sqrt{x}}{\\sqrt{1 - x}} ⋅ \\frac{arcsin(\\sqrt{x})}{\\sqrt{x}} dx = ∫ \\frac{arcsin(\\sqrt{x})}{\\sqrt{1 - x}} dx.
$$

令$t = \\sqrt{x}$，则$x = t^{2}$，$dx = 2t dt$，代入得：


$$
∫ \\frac{arcsin(t)}{\\sqrt{1 - t^{2}}} ⋅ 2t dt = 2 ∫ \\frac{t arcsin(t)}{\\sqrt{1 - t^{2}}} dt.
$$

使用分部积分法，令$u = arcsin(t)$，$du = \\frac{1}{\\sqrt{1-t^{2}}} dt$，$dv = \\frac{t}{\\sqrt{1-t^{2}}} dt$，则$v = ∫ \\frac{t}{\\sqrt{1-t^{2}}} dt = −\\sqrt{1 - t^{2}}$。
于是：


$$
\\begin{array}{cc}
∫ \\frac{t arcsin(t)}{\\sqrt{1 - t^{2}}} dt & = arcsin(t) ⋅ (−\\sqrt{1 - t^{2}}) ∫ (−\\sqrt{1 - t^{2}}) ⋅ \\frac{1}{\\sqrt{1 - t^{2}}} dt \\\\
 & = − arcsin(t)\\sqrt{1 - t^{2}} + ∫ 1 dt \\\\
\\end{array}
$$

所以：


$$
\\begin{array}{cc}
2 ∫ \\frac{t arcsin(t)}{\\sqrt{1 - t^{2}}} dt & = 2 (− arcsin(t)\\sqrt{1 - t^{2}} + t + C) \\\\
 & = −2 arcsin(t)\\sqrt{1 - t^{2}} + 2t + C. \\\\
\\end{array}
$$

代回$t = \\sqrt{x}$，得：


$$
∫ \\frac{\\sqrt{x}}{\\sqrt{1 - x}}f(x) dx = −2\\sqrt{1 - x} arcsin(\\sqrt{x}) + 2\\sqrt{x} + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1519');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1519');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1519');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1520, '2002年考研数学卷3第14题', '简单', '考研数学2002年卷3真题', '设$D_{1}$是由抛物线$y = 2x^{2}$和直线$x = a$，$x = 2$及$y = 0$所围成的平面区域；$D_{2}$是由抛物线$y = 2x^{2}$和直线$y = 0$，$x = a$所围成的平面区域，其中$0 < a < 2$．(1) 试求$D_{1}$绕$x$轴旋转而成的旋转体体积$V_{1}$；$D_{2}$绕$y$轴旋转而成的旋转体体积$V_{2}$；(2) 问当$a$为何值时，$V_{1} + V_{2}$取得最大值？试求此最大值．', '[]', '
(1)$V_{1} = \\frac{4π}{5}(32 - a^{5})$，$V_{2} = πa^{4}$
(2) 当$a = 1$时，$V_{1} + V_{2}$取得最大值，最大值为$\\frac{129π}{5}$
', '
(I) 由旋转体的体积公式有

$$
V_{1} = π \\int_{a}^{2}(2x^{2})2 dx = \\frac{4π}{5}(32 - a^{5}),
$$


$$
V_{2} = πa^{2} ⋅ 2a^{2} - π \\int_{0}^{2a^{2}} x^{2} dy = πa^{4}.
$$

(II)$V = V_{1} + V_{2} = \\frac{4π}{5}(32 - a^{5}) + πa^{4}$. 令$\\frac{dV}{da} = 4πa^{3}(1 - a) = 0$，得$a = 1$. 当$0 < a < 1$时$\\frac{dV}{da} > 0$，当$1 < a < 2$时$\\frac{dV}{da} < 0$，因此$a = 1$是$V$的唯一极值点且是极大值点，所以是$V$的最大值点，

$$
V_{\\max} = \\frac{129π}{5}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1520');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1520');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1520');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1521, '2002年考研数学卷3第15题', '', '考研数学2002年卷3真题', '/problems/other/1481', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1522, '2002年考研数学卷3第16题', '简单', '考研数学2002年卷3真题', '设函数$f(x), g(x)$在$\\lbrack a, b \\rbrack$上连续，且$g(x) > 0$．利用闭区间上连续函数性质，
证明存在一点$ξ ∈  \\lbrack a, b \\rbrack$，使$\\int_{a}^{b} f(x)g(x)dx = f(ξ) \\int_{a}^{b} g(x)dx$．', '[]', '见解析
', '
因为$f(x)$与$g(x)$在$\\lbrack a, b \\rbrack$上连续，所以存在$x_{1}, x_{2}$使得

$$
f(x_{1}) = M = \\max_{x∈ \\lbrack a,b \\rbrack } f(x),  f(x_{2}) = m = \\min_{x∈ \\lbrack a,b \\rbrack } f(x).
$$

满足$m ≤ f(x) ≤ M$。又$g(x) > 0$，故根据不等式的性质

$$
mg(x) ≤ f(x)g(x) ≤ Mg(x).
$$

根据定积分的不等式性质有

$$
m \\int_{a}^{b} g(x) dx ≤ \\int_{a}^{b} f(x)g(x) dx ≤ M \\int_{a}^{b} g(x) dx
$$



$$
⇒ m ≤ \\frac{\\int_{a}^{b} f(x)g(x) dx}{\\int_{a}^{b} g(x) dx} ≤ M.
$$

由连续函数的介值定理知，存在$ξ ∈  \\lbrack a, b \\rbrack$，使

$$
f(ξ) = \\frac{\\int_{a}^{b} f(x)g(x) dx}{\\int_{a}^{b} g(x) dx}  ⇒  \\int_{a}^{b} f(x)g(x) dx = f(ξ) \\int_{a}^{b} g(x) dx.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:28', 9, 'Mogullzr', '2026-01-29 14:12:28', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1522');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1522');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1006', '1522');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1523, '2002年考研数学卷3第17题', '简单', '考研数学2002年卷3真题', '设齐次线性方程组$\\begin{cases} ax_{1} + bx_{2} + bx_{3} + ⋯ + bx_{n} = 0 \\\\ bx_{1} + ax_{2} + bx_{3} + ⋯ + bx_{n} = 0 \\\\ ⋯  ⋯  ⋯  ⋯ \\\\ bx_{1} + bx_{2} + bx_{3} + ⋯ + ax_{n} = 0 \\end{cases}$其中$a \\neq 0, b \\neq 0, n ≥ 2$，
试讨论$a, b$为何值时，方程组仅有零解、有无穷多组解？
在有无穷多组解时，求出全部解，并用基础解系表示全部解．', '[]', '当$a \\neq b$且$a \\neq −b(n - 1)$时，方程组仅有零解。
当$a = b$或$a = −b(n - 1)$时，方程组有无穷多组解。
当$a = b$时，全部解为$x = k_{1}ξ_{1} + k_{2}ξ_{2} + ⋯ + k_{n-1}ξ_{n-1}$，其中$ξ_{1} = (1, −1, 0, … , 0)T$，$ξ_{2} = (1, 0, −1, … , 0)T$，$…$，$ξ_{n-1} = (1, 0, 0, … , −1)T$，$k_{1}, k_{2}, … , k_{n-1}$为任意常数。当$a = −b(n - 1)$时，全部解为$x = kξ$，其中$ξ = (1, 1, 1, … , 1)T$，$k$为任意常数。
', '
方程组的系数行列式

$$
∣A∣ = \\begin{vmatrix}
a & b & b &  & b\\\\
 &  &  & ⋯ & \\\\
b & a & b &  & b\\\\
 &  &  & ⋯ & \\\\
b & b & a &  & b\\\\
 &  &  & ⋯ & \\\\
⋮ & ⋮ & ⋮ &  & ⋮\\\\
 &  &  & ⋱ & \\\\
b & b & b &  & a\\\\
 &  &  & ⋯ & 
\\end{vmatrix} =  \\lbrack a + (n - 1)b \\rbrack (a - b)n−1.
$$

(I) 当$a \\neq b$且$a \\neq −(n - 1)b$时，$∣A∣ \\neq 0$，$r(A) = n$，方程组只有零解。
(II) 当$a = b(\\neq 0)$时，对系数矩阵$A$做行初等变换，有

$$
A = \\left( \\begin{array}{ccccc}
a & a & a &  & a \\\\
 &  &  & ⋯ &  \\\\
a & a & a &  & a \\\\
 &  &  & ⋯ &  \\\\
a & a & a &  & a \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
a & a & a &  & a \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
0 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) .
$$

方程组的同解方程组为$x_{1} + x_{2} + ⋯ + x_{n} = 0$，其基础解系为

$$
ξ_{1} = (−1, 1, 0, ⋯  , 0)T,  ξ_{2} = (−1, 0, 1, 0, ⋯  , 0)T,
$$



$$
⋯  ,  ξ_{n-1} = (−1, 0, ⋯  , 0, 1)T.
$$

方程组的全部解为

$$
X = k_{1}ξ_{1} + k_{2}ξ_{2} + ⋯ + k_{n-1}ξ_{n-1},
$$

其中$k_{i}(i = 1, 2, ⋯  , n - 1)$是任意常数。
(Ⅲ) 当$a = −(n - 1)b$($b \\neq 0$) 时，对系数矩阵$A$做行初等变换，有

$$
A = \\left( \\begin{array}{ccccc}
(1 - n)b & b & b &  & b \\\\
 &  &  & ⋯ &  \\\\
b & (1 - n)b & b &  & b \\\\
 &  &  & ⋯ &  \\\\
b & b & (1 - n)b &  & b \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{ccccc}
1 - n & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
1 & 1 - n & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
1 & 1 & 1 - n &  & 1 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
1 - n & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
n & −n & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
n & 0 & −n &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right)
$$


$$
→ \\left( \\begin{array}{ccccc}
1 - n & 1 & 1 &  & 1 \\\\
 &  &  & ⋯ &  \\\\
1 & −1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
1 & 0 & −1 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) → \\left( \\begin{array}{ccccc}
0 & 0 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
1 & −1 & 0 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
1 & 0 & −1 &  & 0 \\\\
 &  &  & ⋯ &  \\\\
⋮ & ⋮ & ⋮ &  & ⋮ \\\\
 &  &  & ⋱ &  \\\\
\\end{array} \\right) .
$$

秩$r(A) = n - 1$，其同解方程组是

$$
\\begin{cases} x_{1} - x_{2} = 0 \\\\ x_{1} - x_{3} = 0 \\\\ ⋯  ⋯ \\\\ x_{1} - x_{n} = 0. \\end{cases}
$$

其基础解系为$ξ = (1, 1, ⋯  , 1)T$，方程组的全部解为$X = kξ$，其中$k$是任意常数。
', 9, 'Mogullzr', '2026-01-29 14:12:29', 9, 'Mogullzr', '2026-01-29 14:12:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1523');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1523');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1524, '2002年考研数学卷3第18题', '简单', '考研数学2002年卷3真题', '设$A$为三阶实对称矩阵，且满足条件$A^{2} + 2A = 0$，已知$A$的秩$r(A) = 2$．(1) 求$A$的全部特征值．(2) 当$k$为何值时，矩阵$A + kE$为正定矩阵，其中$E$为三阶单位矩阵．', '[]', '
(1)$0, −2, −2$
(2)$k > 2$
', '
(I) 设$λ$是$A$的特征值，$α$是$A$的属于$λ$的特征向量，则有$Aα = λα$，从而

$$
0 = (A^{2} + 2A)α = (λ^{2} + 2λ)α.
$$

所以有$λ^{2} + 2λ = 0$，故$A$的特征值$λ$的取值范围为$0, −2$。因为实对称矩阵必可对角化，$r(A) = 2$，所以

$$
A ∼ Λ = \\left( \\begin{array}{ccc}
−2 &  &  \\\\
 & −2 &  \\\\
 &  & 0 \\\\
\\end{array} \\right) ,
$$

即$A$有特征值$λ_{1} = λ_{2} = −2$,$λ_{3} = 0$。
(II) 由 (I) 知$A + kE$的特征值为$k - 2, k - 2, k$。矩阵$A + kE$正定的充要条件是它的所有特征值均大于零，即

$$
\\begin{cases} k - 2 > 0 \\\\ k > 0 \\end{cases}  ⟺  k > 2.
$$

故$k > 2$时$A + kE$是正定矩阵。
', 9, 'Mogullzr', '2026-01-29 14:12:29', 9, 'Mogullzr', '2026-01-29 14:12:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1524');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1524');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1031', '1524');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1525, '2002年考研数学卷3第19题', '简单', '考研数学2002年卷3真题', '假设随机变量$U$在区间$\\lbrack −2, 2 \\rbrack$上服从均匀分布，随机变量
$$
X = \\begin{cases} −1 & 若 U ≤ −1 \\\\ 1 & 若 U > −1; \\end{cases}    Y = \\begin{cases} −1 & 若 U ≤ 1 \\\\ 1 & 若 U > 1; \\end{cases}
$$
试求：(1)$X$和$Y$的联合概率分布；(2)$D(X + Y)$．', '[]', '
(1)$X$和$Y$的联合概率分布为：

$$
\\begin{array}{c|cc}
 & Y = −1 & Y = 1 \\\\
X = −1 & \\frac{1}{4} & 0 \\\\
X = 1 & \\frac{1}{2} & \\frac{1}{4} \\\\
\\end{array}
$$

(2)$D(X + Y) = 2$
', '
(I)$(X, Y)$只有四个可能值$(−1, −1)$,$(−1, 1)$,$(1, −1)$和$(1, 1)$. 依题意有

$$
P\\{X = −1, Y = −1\\} = P\\{U ⩽ −1, U ⩽ 1\\} = P\\{U ⩽ −1\\} = \\frac{1}{4};
$$



$$
P\\{X = −1, Y = 1\\} = P\\{U ⩽ −1, U > 1\\} = P\\{∅\\} = 0;
$$



$$
P\\{X = 1, Y = −1\\} = P\\{U > −1, U ⩽ 1\\} = P\\{−1 < U ⩽ 1\\} = \\frac{1}{2};
$$



$$
P\\{X = 1, Y = 1\\} = P\\{U > −1, U > 1\\} = P\\{U > 1\\} = \\frac{1}{4}.
$$

于是，$(X, Y)$分布为

$$
\\begin{array}{c|cc}
Y & −1 & 1 \\\\
X &  &  \\\\
−1 & \\frac{1}{4} & 0 \\\\
1 & \\frac{1}{2} & \\frac{1}{4} \\\\
\\end{array}
$$

(II)$X + Y$的取值可能有$−2, 0, 2$；$(X + Y)2$的取值可能有 0 和 4；

$$
P\\{X + Y = −2\\} = P\\{X = −1, Y = −1\\} = \\frac{1}{4},
$$



$$
P\\{X + Y = 0\\} = P\\{X = 1, Y = −1\\} + P\\{X = −1, Y = 1\\} = 0 + \\frac{1}{2} = \\frac{1}{2},
$$



$$
P\\{X + Y = 2\\} = P\\{X = 1, Y = 1\\} = \\frac{1}{4},
$$



$$
P\\{(X + Y)2 = 0\\} = P\\{X + Y = 0\\} = \\frac{1}{2},
$$



$$
P\\{(X + Y)2 = 4\\} = P\\{X + Y = −2\\} + P\\{X + Y = 2\\} = \\frac{1}{2}
$$

故$X + Y$和$(X + Y)2$的分布律分别为

$$
\\begin{array}{c|ccc|ccc}
(X + Y)2 & 0 & 4 & X + Y & −2 & 0 & 2 \\\\
P & \\frac{1}{2} & \\frac{1}{2} & P & \\frac{1}{4} & \\frac{1}{2} & \\frac{1}{4} \\\\
\\end{array}
$$

由此可见

$$
E(X + Y) = −\\frac{2}{4} + \\frac{2}{4} = 0,  E(X + Y)2 = \\frac{4}{2} = 2,
$$



$$
D(X + Y) = E(X + Y)2 -  \\lbrack E(X + Y) \\rbrack 2 = 2.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:29', 9, 'Mogullzr', '2026-01-29 14:12:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1525');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1525');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1028', '1525');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1029', '1525');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1526, '2002年考研数学卷3第20题', '简单', '考研数学2002年卷3真题', '假设一设备开机后无故障工作的时间$X$服从指数分布，平均无故障工作的时间$E(X)$为$5$小时．
设备定时开机，出现故障时自动关机，而在无故障的情况下工作$2$小时便关机．
试求该设备每次开机无故障工作的时间$Y$的分布函数$F(y)$．', '[]', '

$$
F(y) = \\begin{cases} 0 & y < 0 \\\\ 1 - e^{−0.2y} & 0 ≤ y < 2 \\\\ 1 & y ≥ 2 \\end{cases}
$$

', '
指数分布的$X$的分布参数为$λ = \\frac{1}{E(X)} = \\frac{1}{5}$，其密度函数为

$$
f_{X}(x) = \\begin{cases} \\frac{1}{5}e^{−\\frac{1}{5}x} & x > 0; \\\\ 0 & x ≤ 0. \\end{cases}
$$

由分布函数的定义，

$$
F(y) = P\\{Y ≤ y\\} = P\\{\\min(X, 2) ≤ y\\}.
$$

当$y < 0$时，$F_{Y}(y) = 0$。当$y ≥ 2$时，$F_{Y}(y) = 1$。当$0 ≤ y < 2$时，

$$
\\begin{array}{cc}
F(y) & = P\\{\\min(X, 2) ≤ y\\} = P\\{X ≤ y\\} \\\\
 & = \\int_{−∞}^{y} f_{X}(x) dx = \\int_{0}^{y} \\frac{1}{5}e^{−\\frac{1}{5}x} dx = 1 - e^{−\\frac{1}{5}y}. \\\\
\\end{array}
$$

所以$Y$的分布函数

$$
F_{Y}(y) = \\begin{cases} 0 & y < 0; \\\\ 1 - e^{−\\frac{1}{5}y} & 0 ≤ y < 2; \\\\ 1 & y ≥ 2. \\end{cases}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:29', 9, 'Mogullzr', '2026-01-29 14:12:29', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1526');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1042', '1526');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1527, '2002年考研数学卷4第1题', '', '考研数学2002年卷4真题', '/problems/other/1507', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:31', 9, 'Mogullzr', '2026-01-29 14:12:31', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1528, '2002年考研数学卷4第2题', '简单', '考研数学2002年卷4真题', '已知$f(x)$的一个原函数为$\\ln^{2} x$，则$∫ xf^{′}(x)dx =$______．', '[]', '$2 \\ln x - \\ln^{2} x + C$
', '
已知$f(x)$的一个原函数为$\\ln^{2} x$，则$f(x) = \\frac{d}{dx}(\\ln^{2} x) = \\frac{2 \\ln x}{x}$。
需要计算$∫ xf^{′}(x) dx$。
使用分部积分法：令$u = x$，$dv = f^{′}(x) dx$，则$du = dx$，$v = f(x)$。
所以，


$$
∫ xf^{′}(x) dx = xf(x) - ∫ f(x) dx.
$$

代入$f(x) = \\frac{2 \\ln x}{x}$，得


$$
xf(x) = x ⋅ \\frac{2 \\ln x}{x} = 2 \\ln x,
$$

且$∫ f(x) dx = \\ln^{2} x + C$。
因此，


$$
∫ xf^{′}(x) dx = 2 \\ln x - \\ln^{2} x + C.
$$

', 9, 'Mogullzr', '2026-01-29 14:12:31', 9, 'Mogullzr', '2026-01-29 14:12:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1528');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1005', '1528');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1037', '1528');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1529, '2002年考研数学卷4第3题', '简单', '考研数学2002年卷4真题', '设矩阵$A = \\left( \\begin{array}{cc}
1 & −1 \\\\
2 & 3 \\\\
\\end{array} \\right)$，$B = A^{2} - 3A + 2E$，则$B^{−1} =$______．', '[]', '

$$
\\left( \\begin{array}{cc}
0 & \\frac{1}{2} \\\\
−1 & −1 \\\\
\\end{array} \\right)
$$

', '给定矩阵$A = \\left( \\begin{array}{cc}
1 & −1 \\\\
2 & 3 \\\\
\\end{array} \\right)$，计算$B = A^{2} - 3A + 2E$，其中$E$为单位矩阵。
首先，求$A$的特征多项式：


$$
det(λI - A) = det \\left( \\begin{array}{cc}
λ - 1 & 1 \\\\
−2 & λ - 3 \\\\
\\end{array} \\right) = (λ - 1)(λ - 3) + 2 = λ^{2} - 4λ + 5.
$$

由凯莱-哈密顿定理，$A$满足其特征方程：


$$
A^{2} - 4A + 5E = 0.
$$

因此，$A^{2} = 4A - 5E$。
代入$B$：


$$
B = A^{2} - 3A + 2E = (4A - 5E) - 3A + 2E = A - 3E.
$$

即$B = A - 3I$，其中$I$为单位矩阵。
计算$A - 3I$：


$$
A - 3I = \\left( \\begin{array}{cc}
1 & −1 \\\\
2 & 3 \\\\
\\end{array} \\right) - \\left( \\begin{array}{cc}
3 & 0 \\\\
0 & 3 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
−2 & −1 \\\\
2 & 0 \\\\
\\end{array} \\right) .
$$

求逆矩阵$B^{−1} = (A - 3I)−1$。
对于矩阵$\\left( \\begin{array}{cc}
−2 & −1 \\\\
2 & 0 \\\\
\\end{array} \\right)$，行列式为$(−2)(0) - (−1)(2) = 2$。
逆矩阵公式为$\\frac{1}{ad-bc} \\left( \\begin{array}{cc}
d & −b \\\\
−c & a \\\\
\\end{array} \\right)$，代入$a = −2, b = −1, c = 2, d = 0$：


$$
B^{−1} = \\frac{1}{2} \\left( \\begin{array}{cc}
0 & 1 \\\\
−2 & −2 \\\\
\\end{array} \\right) = \\left( \\begin{array}{cc}
0 & \\frac{1}{2} \\\\
−1 & −1 \\\\
\\end{array} \\right) .
$$

因此，$B^{−1} = \\left( \\begin{array}{cc}
0 & \\frac{1}{2} \\\\
−1 & −1 \\\\
\\end{array} \\right)$。
', 9, 'Mogullzr', '2026-01-29 14:12:31', 9, 'Mogullzr', '2026-01-29 14:12:31', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1529');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1529');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1529');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1530, '2002年考研数学卷4第4题', '简单', '考研数学2002年卷4真题', '设向量组$α_{1} = (a, 0, c)$,$α_{2} = (b, c, 0)$,$α_{3} = (0, a, b)$线性无关，
则$a, b, c$必满足关系式 ______．', '[]', '$abc \\neq 0$
', '
考虑向量组$α_{1} = (a, 0, c)$、$α_{2} = (b, c, 0)$、$α_{3} = (0, a, b)$的线性无关性。构造矩阵


$$
A = \\left( \\begin{array}{ccc}
a & b & 0 \\\\
0 & c & a \\\\
c & 0 & b \\\\
\\end{array} \\right)
$$

该向量组线性无关当且仅当矩阵$A$的行列式不为零。计算行列式：


$$
\\begin{array}{cccccccc}
det(A) & \\begin{array}{cc}
c & a \\\\
0 & b \\\\
\\end{array} &  &  &  &  &  &  \\\\
 & = a(cb - a ⋅ 0) - b(0 ⋅ b - a ⋅ c) &  &  &  &  &  &  \\\\
 &  & c & a & 0 & a & 0 & c \\\\
 &  & 0 & b & c & b & c & 0 \\\\
 & = abc + abc &  &  &  &  &  &  \\\\
\\end{array}
$$

因此，$det(A) = 2abc$。向量组线性无关的条件为$det(A) \\neq 0$，即


$$
2abc \\neq 0  ⇒  abc \\neq 0.
$$

故$a, b, c$需满足关系式$abc \\neq 0$。
', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1530');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1010', '1530');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1052', '1530');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1531, '2002年考研数学卷4第5题', '简单', '考研数学2002年卷4真题', '设随机变量$X$和$Y$的联合概率分布为
$$
\\begin{array}{c|c|c|c|}
X╲Y & −1 & 0 & 1 \\\\
0 & 0.07 & 0.18 & 0.15 \\\\
1 & 0.08 & 0.32 & 0.20 \\\\
\\end{array}
$$
则$X$和$Y$的相关系数$ρ =$．', '[]', '$0$
', '
首先，计算随机变量$X$和$Y$的期望值。
$X$的边际分布：


$$
P(X = 0) = 0.07 + 0.18 + 0.15 = 0.40,
$$



$$
P(X = 1) = 0.08 + 0.32 + 0.20 = 0.60,
$$

故


$$
E \\lbrack X \\rbrack  = 0 × 0.40 + 1 × 0.60 = 0.60.
$$

$Y$的边际分布：


$$
P(Y = −1) = 0.07 + 0.08 = 0.15,
$$



$$
P(Y = 0) = 0.18 + 0.32 = 0.50,
$$



$$
P(Y = 1) = 0.15 + 0.20 = 0.35,
$$

故


$$
E \\lbrack Y \\rbrack  = (−1) × 0.15 + 0 × 0.50 + 1 × 0.35 = 0.20.
$$

其次，计算$E \\lbrack XY \\rbrack$：


$$
\\begin{array}{cc}
E \\lbrack XY \\rbrack  & = 0 × 0.07 + 0 × 0.18 + 0 × 0.15 \\\\
 & + (−1) × 0.08 + 0 × 0.32 + 1 × 0.20 \\\\
 & = −0.08 + 0.20 \\\\
\\end{array}
$$

然后，计算协方差：


$$
Cov(X, Y) = E \\lbrack XY \\rbrack  - E \\lbrack X \\rbrack E \\lbrack Y \\rbrack  = 0.12 - 0.60 × 0.20 = 0.12 - 0.12 = 0.
$$

由于协方差为 0，相关系数$ρ = 0$。
因此，$X$和$Y$的相关系数为 0。
', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1531');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1026', '1531');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1069', '1531');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1532, '2002年考研数学卷4第6题', '', '考研数学2002年卷4真题', '/problems/other/1512', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1533, '2002年考研数学卷4第7题', '', '考研数学2002年卷4真题', '/problems/other/1493', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1534, '2002年考研数学卷4第8题', '简单', '考研数学2002年卷4真题', '设$A$,$B$为$n$阶矩阵，$A^{∗}$,$B^{∗}$分别为$A$,$B$对应的伴随矩阵，
分块矩阵$C = \\left( \\begin{array}{cc}
A & O \\\\
O & B \\\\
\\end{array} \\right)$，则$C$的伴随矩阵$C^{∗} =$', '[''$\\\\left( \\\\begin{array}{cc}\\n∣A∣A^{∗} & O \\\\\\\\\\nO & ∣B∣B^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{cc}\\n∣B∣B^{∗} & O \\\\\\\\\\nO & ∣A∣A^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{cc}\\n∣A∣B^{∗} & O \\\\\\\\\\nO & ∣B∣A^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$．'', ''$\\\\left( \\\\begin{array}{cc}\\n∣B∣A^{∗} & O \\\\\\\\\\nO & ∣A∣B^{∗} \\\\\\\\\\n\\\\end{array} \\\\right)$．'']', "['D']", '
对于分块矩阵$C = \\left( \\begin{array}{cc}
A & O \\\\
O & B \\\\
\\end{array} \\right)$，其伴随矩阵$C^{∗}$可以通过余子式计算或利用可逆情况下的公式推导。
当$A$和$B$可逆时，有

$$
C^{−1} = \\left( \\begin{array}{cc}
A^{−1} & O \\\\
O & B^{−1} \\\\
\\end{array} \\right) ,
$$
且

$$
C^{∗} = ∣C∣C^{−1} = ∣A∣∣B∣ \\left( \\begin{array}{cc}
A^{−1} & O \\\\
O & B^{−1} \\\\
\\end{array} \\right) .
$$
代入$A^{−1} = \\frac{1}{∣A∣}A^{∗}$和$B^{−1} = \\frac{1}{∣B∣}B^{∗}$，得

$$
C^{∗} = \\left( \\begin{array}{cc}
∣B∣A^{∗} & O \\\\
O & ∣A∣B^{∗} \\\\
\\end{array} \\right) .
$$
当$A$或$B$不可逆时，通过直接计算余子式可得相同结果：对于$i, j ≤ n$，有$(C^{∗})ij​ = ∣B∣(A^{∗})ij​$；对于$i, j > n$，有$(C^{∗})ij​ = ∣A∣(B^{∗})ij​$；非对角块余子式为零。因此，

$$
C^{∗} = \\left( \\begin{array}{cc}
∣B∣A^{∗} & O \\\\
O & ∣A∣B^{∗} \\\\
\\end{array} \\right) ,
$$
对应选项 D。', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1534');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1534');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1534');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1535, '2002年考研数学卷4第9题', '', '考研数学2002年卷4真题', '/problems/other/1476', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1536, '2002年考研数学卷4第10题', '简单', '考研数学2002年卷4真题', '设随机变量$X_{1}$,$X_{2}$,$⋯$,$X_{n}$相互独立，$S_{n} = X_{1} + X_{2} + ⋯ + X_{n}$，
则根据列维—林德伯格(Levy-Lindberg)中心极限定理，当$n$充分大时，$S_{n}$近似服从正态分布，
只要$X_{1}$,$X_{2}$,$⋯$,$X_{n}$', '[''有相同的数学期望．'', ''有相同的方差．'', ''服从同一指数分布．'', ''服从同一离散型分布．'']', "['C']", '
列维—林德伯格中心极限定理要求随机变量序列独立同分布且具有有限的方差。
选项 C 中，服从同一指数分布意味着随机变量独立同分布，且指数分布具有有限的数学期望和方差，因此当$n$充分大时，$S_{n}$近似服从正态分布。
选项 A 和 B 仅要求数学期望或方差相同，但未要求同分布，因此不一定满足定理条件。
选项 D 中，服从同一离散型分布，但离散型分布可能方差无限（如某些重尾分布），因此不一定保证中心极限定理成立。
故正确答案为 C。', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 1);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1536');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1081', '1536');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1537, '2002年考研数学卷4第11题', '', '考研数学2002年卷4真题', '/problems/other/1517', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1538, '2002年考研数学卷4第12题', '', '考研数学2002年卷4真题', '/problems/other/1518', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1539, '2002年考研数学卷4第13题', '', '考研数学2002年卷4真题', '/problems/other/1519', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1540, '2002年考研数学卷4第14题', '简单', '考研数学2002年卷4真题', '设闭区域$D : x^{2} + y^{2} ⩽ y, x ⩾ 0$；$f(x, y)$为$D$上的连续函数，且
$$
f(x, y) = \\sqrt{1 - x^{2} - y^{2}} - \\frac{π}{8} ∬ f(u, v)dudv,
$$
求$f(x, y)$．', '[]', '

$$
f(x, y) = \\sqrt{1 - x^{2} - y^{2}} - \\frac{4π(3π - 4)}{9(64 + π^{2})}
$$

', '
第一步：分析区域$D$
闭区域$D : x^{2} + y^{2} ⩽ y, x ⩾ 0$。 将圆的方程配方：

$$
x^{2} + (y - \\frac{1}{2})^{2} ⩽ (\\frac{1}{2})^{2}
$$

这表示一个圆心在$(0, \\frac{1}{2})$，半径$R = \\frac{1}{2}$的圆。加上条件$x ⩾ 0$，区域$D$是该圆位于$y$轴右侧的半圆面。
面积$S_{D}$：$S_{D} = \\frac{1}{2} ⋅ π (\\frac{1}{2})^{2} = \\frac{π}{8}$。
第二步：设定常数并建立方程
设常数$A = \\iint_{D} f (u, v) dudv$。 则原方程可以写作：

$$
f (x, y) = \\sqrt{1 - x^{2} - y^{2}} - \\frac{π}{8}A
$$

为了求出$A$，我们对上述等式两边在区域$D$上同时进行二重积分：

$$
\\iint_{D} f (x, y) dxdy = \\iint_{D} \\sqrt{1 - x^{2} - y^{2}}dxdy - \\iint_{D} \\frac{π}{8}Adxdy
$$

代入$A$的定义和面积$S_{D}$：

$$
A = \\iint_{D} \\sqrt{1 - x^{2} - y^{2}}dxdy - \\frac{π}{8}A ⋅ \\frac{π}{8}
$$


$$
A (1 + \\frac{π^{2}}{64}) = \\iint_{D} \\sqrt{1 - x^{2} - y^{2}}dxdy
$$

第三步：计算积分$I = \\iint_{D} \\sqrt{1 - x^{2} - y^{2}}dxdy$
使用极坐标变换：$x = r \\cos θ, y = r \\sin θ$。 圆的边界$x^{2} + y^{2} = y$变为$r^{2} = r \\sin θ$，即$r = \\sin θ$。 由于$x ⩾ 0$，$\\cos θ ⩾ 0$，且$r ⩽ \\sin θ$蕴含$\\sin θ ⩾ 0$，故$θ$的范围是$\\lbrack 0, \\frac{π}{2} \\rbrack$。

$$
I = \\int_{0}^{\\frac{π}{2}} dθ \\int_{0}^{\\sin θ} \\sqrt{1 - r^{2}} ⋅ rdr
$$

先计算内层关于$r$的积分：

$$
\\int_{0}^{\\sin θ} \\sqrt{1 - r^{2}}rdr =  \\lbrack −\\frac{1}{3} (1 - r^{2})^{\\frac{3}{2}} \\rbrack _{0 \\sin θ} = −\\frac{1}{3} (\\cos^{3} θ - 1) = \\frac{1}{3} (1 - \\cos^{3} θ)
$$

再计算外层关于$θ$的积分：

$$
I = \\frac{1}{3} \\int_{0}^{\\frac{π}{2}} (1 - \\cos^{3} θ) dθ = \\frac{1}{3}  \\lbrack θ - \\int_{0}^{\\frac{π}{2}} (1 - \\sin^{2} θ) d (\\sin θ) \\rbrack _{0\\frac{π}{2}}
$$


$$
I = \\frac{1}{3}  \\lbrack \\frac{π}{2} - (\\sin θ - \\frac{1}{3} \\sin^{3} θ) \\rbrack _{0\\frac{π}{2}} = \\frac{1}{3} (\\frac{π}{2} - \\frac{2}{3}) = \\frac{π}{6} - \\frac{2}{9}
$$

第四步：解出$f (x, y)$
将$I$的结果代入关于$A$的方程：

$$
A ⋅ \\frac{64 + π^{2}}{64} = \\frac{3π - 4}{18}
$$


$$
A = \\frac{32 (3π - 4)}{9 (64 + π^{2})}
$$

我们需要求的是$f (x, y)$中的常数项$C = \\frac{π}{8}A$：

$$
C = \\frac{π}{8} ⋅ \\frac{32 (3π - 4)}{9 (64 + π^{2})} = \\frac{4π (3π - 4)}{9 (64 + π^{2})} = \\frac{12π^{2} - 16π}{9π^{2} + 576}
$$

最终结果：

$$
f (x, y) = \\sqrt{1 - x^{2} - y^{2}} - \\frac{12π^{2} - 16π}{9π^{2} + 576}
$$

', 9, 'Mogullzr', '2026-01-29 14:12:32', 9, 'Mogullzr', '2026-01-29 14:12:32', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1540');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1007', '1540');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1047', '1540');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1541, '2002年考研数学卷4第15题', '简单', '考研数学2002年卷4真题', '设某商品需求量$Q$是价格$p$的单调减少函数：$Q = Q(p)$，
其需求弹性$η = \\frac{2p^{2}}{192-p^{2}} > 0$．(1) 设$R$为总收益函数，证明$\\frac{dR}{dp} = Q(1 - η)$．(2) 求$p = 6$时，总收益对价格的弹性，并说明其经济意义．', '[]', '
(1) 证明见解析。
(2) 当$p = 6$时，总收益对价格的弹性为$\\frac{7}{13}$。经济意义：当价格增加 1% 时，总收益增加约 0.538%，表明需求缺乏弹性，总收益与价格同方向变动但变动幅度较小。
', '
(1) 总收益函数$R = p ⋅ Q(p)$，对$p$求导得：


$$
\\frac{dR}{dp} = Q + p ⋅ \\frac{dQ}{dp}.
$$

需求弹性$η > 0$，且定义为$η = −\\frac{dQ}{dp} ⋅ \\frac{p}{Q}$，因此


$$
\\frac{dQ}{dp} = −η ⋅ \\frac{Q}{p}.
$$

代入上式：


$$
\\frac{dR}{dp} = Q + p ⋅ (−η ⋅ \\frac{Q}{p}) = Q - ηQ = Q(1 - η).
$$

故证。
(2) 总收益对价格的弹性定义为$ε_{Rp} = \\frac{dR}{dp} ⋅ \\frac{p}{R}$。由 (1) 知$\\frac{dR}{dp} = Q(1 - η)$，且$R = pQ$，所以


$$
ε_{Rp} = Q(1 - η) ⋅ \\frac{p}{pQ} = 1 - η.
$$

给定$η = \\frac{2p^{2}}{192-p^{2}}$，当$p = 6$时，


$$
η = \\frac{2 × 6^{2}}{192 - 6^{2}} = \\frac{72}{156} = \\frac{6}{13}.
$$

因此，


$$
ε_{Rp} = 1 - \\frac{6}{13} = \\frac{7}{13}.
$$

经济意义：$ε_{Rp} = \\frac{7}{13}$表示当价格增加 1% 时，总收益增加约 0.538%。由于$η < 1$，需求缺乏弹性，价格与总收益同方向变动，但总收益变动幅度小于价格变动幅度。
', 9, 'Mogullzr', '2026-01-29 14:12:33', 9, 'Mogullzr', '2026-01-29 14:12:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1000', '1541');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1003', '1541');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1004', '1541');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1542, '2002年考研数学卷4第16题', '', '考研数学2002年卷4真题', '/problems/other/1522', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:33', 9, 'Mogullzr', '2026-01-29 14:12:33', 0, 4);
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1543, '2002年考研数学卷4第17题', '简单', '考研数学2002年卷4真题', '设四元齐次线性方程组①为$\\begin{cases} 2x_{1} + 3x_{2} - x_{3} = 0 \\\\ x_{1} + 2x_{2} + x_{3} - x_{4} = 0 \\end{cases}$，且已知另一四元齐次线性方程组②的一个基础解系为$α_{1} = (2, −1, a + 2, 1)T$,$α_{2} = (−1, 2, 4, a + 8)T$．(1) 求方程组①的一个基础解系；(2) 当$a$为何值时，方程组①与②有非零公共解？在有非零公共解时，求出全部非零公共解．', '[]', '
(1) 方程组①的一个基础解系为$ξ_{1} = (5, −3, 1, 0)T$，$ξ_{2} = (−3, 2, 0, 1)T$。
(2) 当$a = −1$时，方程组①与②有非零公共解。全部非零公共解为$k_{1}(2, −1, 1, 1)T + k_{2}(−1, 2, 4, 7)T$，其中$k_{1}, k_{2}$不全为零。
', '
(1) 对于方程组①，系数矩阵为$\\left( \\begin{array}{cccc}
2 & 3 & −1 & 0 \\\\
1 & 2 & 1 & −1 \\\\
\\end{array} \\right)$。通过行变换化为行简化阶梯形$\\left( \\begin{array}{cccc}
1 & 0 & −5 & 3 \\\\
0 & 1 & 3 & −2 \\\\
\\end{array} \\right)$，对应方程
$x_{1} - 5x_{3} + 3x_{4} = 0$和$x_{2} + 3x_{3} - 2x_{4} = 0$。
令自由变量$x_{3} = s$，$x_{4} = t$，得通解
$x_{1} = 5s - 3t$，$x_{2} = −3s + 2t$，$x_{3} = s$，$x_{4} = t$，
即基础解系为$ξ_{1} = (5, −3, 1, 0)T$，$ξ_{2} = (−3, 2, 0, 1)T$。
(2) 方程组②的基础解系为$α_{1} = (2, −1, a + 2, 1)T$，$α_{2} = (−1, 2, 4, a + 8)T$。
公共解需满足方程组①，代入通解$k_{1}α_{1} + k_{2}α_{2}$到方程组①的方程中。
方程一：
$2(2k_{1} - k_{2}) + 3(−k_{1} + 2k_{2}) -  \\lbrack (a + 2)k_{1} + 4k_{2} \\rbrack  = 0$，
化简得$(−a - 1)k_{1} = 0$。
方程二：
$(2k_{1} - k_{2}) + 2(−k_{1} + 2k_{2}) +  \\lbrack (a + 2)k_{1} + 4k_{2} \\rbrack  -  \\lbrack k_{1} + (a + 8)k_{2} \\rbrack  = 0$，
化简得$(a + 1)(k_{1} - k_{2}) = 0$。
非零公共解要求$k_{1}, k_{2}$不全为零。
若$a + 1 \\neq 0$，则从方程一得$k_{1} = 0$，从方程二得$k_{2} = 0$，无非零解。
故$a + 1 = 0$，即$a = −1$。此时方程一和方程二恒成立，所有$k_{1}α_{1} + k_{2}α_{2}$均为公共解。
当$a = −1$时，$α_{1} = (2, −1, 1, 1)T$，$α_{2} = (−1, 2, 4, 7)T$，
全部非零公共解为$k_{1}(2, −1, 1, 1)T + k_{2}(−1, 2, 4, 7)T$，其中$k_{1}, k_{2}$不全为零。
', 9, 'Mogullzr', '2026-01-29 14:12:33', 9, 'Mogullzr', '2026-01-29 14:12:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1543');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1023', '1543');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1544, '2002年考研数学卷4第18题', '简单', '考研数学2002年卷4真题', '设实对称矩阵$A = \\left( \\begin{array}{ccc}
a & 1 & 1 \\\\
1 & a & −1 \\\\
1 & −1 & a \\\\
\\end{array} \\right)$，求可逆矩阵$P$，使$P^{−1}AP$为对角矩阵，并计算行列式$∣A - E∣$的值．', '[]', '可逆矩阵$P = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
−1 & 1 & 0 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right)$，使$P^{−1}AP$为对角矩阵$\\left( \\begin{array}{ccc}
a - 2 & 0 & 0 \\\\
0 & a + 1 & 0 \\\\
0 & 0 & a + 1 \\\\
\\end{array} \\right)$，行列式$∣A - E∣ = a^{2}(a - 3)$。
', '
矩阵$A$是实对称矩阵，因此可以对角化。先求$A$的特征值。令$B = A - aI = \\left( \\begin{array}{ccc}
0 & 1 & 1 \\\\
1 & 0 & −1 \\\\
1 & −1 & 0 \\\\
\\end{array} \\right)$，则$A = aI + B$。求$B$的特征值，解特征方程$∣B - μI∣ = 0$：

$$
∣B - μI∣ = \\begin{vmatrix}
−μ & 1 & 1\\\\
1 & −μ & −1\\\\
1 & −1 & −μ
\\end{vmatrix} = −μ^{3} + 3μ - 2 = 0
$$

解得$μ = 1$（二重根）和$μ = −2$。因此$A$的特征值为$λ = a + μ$，即$λ_{1} = a - 2$，$λ_{2} = a + 1$，$λ_{3} = a + 1$。
求特征向量：
对于$λ_{1} = a - 2$，解$(A - (a - 2)I)x = 0$，即解$\\left( \\begin{array}{ccc}
2 & 1 & 1 \\\\
1 & 2 & −1 \\\\
1 & −1 & 2 \\\\
\\end{array} \\right) x = 0$，得特征向量$v_{1} = (1, −1, −1)T$。对于$λ_{2} = λ_{3} = a + 1$，解$(A - (a + 1)I)x = 0$，即解$\\left( \\begin{array}{ccc}
−1 & 1 & 1 \\\\
1 & −1 & −1 \\\\
1 & −1 & −1 \\\\
\\end{array} \\right) x = 0$，得方程$x_{1} - x_{2} - x_{3} = 0$，选取两个线性无关的特征向量$v_{2} = (1, 1, 0)T$和$v_{3} = (1, 0, 1)T$。
因此，可逆矩阵$P = (v_{1}, v_{2}, v_{3}) = \\left( \\begin{array}{ccc}
1 & 1 & 1 \\\\
−1 & 1 & 0 \\\\
−1 & 0 & 1 \\\\
\\end{array} \\right)$，满足$P^{−1}AP = diag(a - 2, a + 1, a + 1)$。
计算行列式$∣A - E∣$，其中$E$为单位矩阵。$A - E = \\left( \\begin{array}{ccc}
a - 1 & 1 & 1 \\\\
1 & a - 1 & −1 \\\\
1 & −1 & a - 1 \\\\
\\end{array} \\right)$。利用特征值，$A$的特征值为$a + 1, a + 1, a - 2$，故$A - E$的特征值为$a, a, a - 3$，所以$∣A - E∣ = a ⋅ a ⋅ (a - 3) = a^{2}(a - 3)$。直接计算也可得相同结果。
', 9, 'Mogullzr', '2026-01-29 14:12:33', 9, 'Mogullzr', '2026-01-29 14:12:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1009', '1544');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1014', '1544');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1015', '1544');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1545, '2002年考研数学卷4第19题', '简单', '考研数学2002年卷4真题', '设$A$、$B$是任意二事件，其中$A$的概率不等于$0$和$1$，
证明：$P(B∣A) = P(B∣\\bar{A})$是事件$A$与$B$独立的充分必要条件．', '[]', '见解析
', '
1. 充分性：
若$A$与$B$独立，则根据独立事件的定义：

$$
P(A ∩ B) = P(A)P(B)
$$

根据条件概率公式：

$$
P(B∣A) = \\frac{P(A ∩ B)}{P(A)} = \\frac{P(A)P(B)}{P(A)} = P(B)
$$

现在计算$P(B∣¬A)$：

$$
P(B∣¬A) = \\frac{P(B ∩ ¬A)}{P(¬A)}
$$

由于$B = (A ∩ B) ∪ (B ∩ ¬A)$，且$A ∩ B$与$B ∩ ¬A$互斥，所以：

$$
P(B) = P(A ∩ B) + P(B ∩ ¬A)
$$



$$
\\begin{array}{cc}
P(B ∩ ¬A) & = P(B) - P(A ∩ B) \\\\
 & = P(B) - P(A)P(B) \\\\
 & = P(B)(1 - P(A)) \\\\
\\end{array}
$$

因此：

$$
P(B∣¬A) = \\frac{P(B ∩ ¬A)}{P(¬A)} = \\frac{P(B)P(¬A)}{P(¬A)} = P(B)
$$

所以，$P(B∣A) = P(B) = P(B∣¬A)$，即：

$$
P(B∣A) = P(B∣¬A)
$$

2. 必要性：
假设$P(B∣A) = P(B∣¬A)$，则：

$$
\\frac{P(A ∩ B)}{P(A)} = \\frac{P(B ∩ ¬A)}{P(¬A)}
$$

由于$P(¬A) = 1 - P(A)$，且$P(B ∩ ¬A) = P(B) - P(A ∩ B)$，代入得：

$$
\\frac{P(A ∩ B)}{P(A)} = \\frac{P(B) - P(A ∩ B)}{1 - P(A)}
$$

交叉相乘：

$$
P(A ∩ B)(1 - P(A)) = P(A)(P(B) - P(A ∩ B))
$$

展开：

$$
P(A ∩ B) - P(A)P(A ∩ B) = P(A)P(B) - P(A)P(A ∩ B)
$$

消去$−P(A)P(A ∩ B)$：

$$
P(A ∩ B) = P(A)P(B)
$$

这正是$A$与$B$独立的定义。
结论
综上所述，$P(B∣A) = P(B∣¬A)$是事件$A$与$B$独立的充分必要条件。
', 9, 'Mogullzr', '2026-01-29 14:12:33', 9, 'Mogullzr', '2026-01-29 14:12:33', 0, 0);
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1024', '1545');
INSERT INTO byteoj.problem_math408_tags (tag_id, problem_id)VALUES ('1025', '1545');
INSERT INTO byteoj.problem_math408_bank (problem_id, problem_name, difficulty_name, source_name, description, options, correct_answer, analysis, create_by_id, create_by_name, create_time, update_by_id, update_by_name, update_time, status, option_type) VALUES (1546, '2002年考研数学卷4第20题', '', '考研数学2002年卷4真题', '/problems/other/1526', '''[]''', '[]', '', 9, 'Mogullzr', '2026-01-29 14:12:34', 9, 'Mogullzr', '2026-01-29 14:12:34', 0, 4);
