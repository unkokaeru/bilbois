- [Recording 1](https://uol.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cf37c35a-d9a1-4252-8377-acaa0006edef).
- [Recording 2](https://uol.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=bf2fd0fd-dd92-4ffc-806c-acaa00c166a3).
- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Pre-Lecture Week 2 NOTES.pdf|Lecture Notes]].
- Lecture: [[MTH2003 Complex Analysis Lecture 3]].

## Limits

We can define a limit of a complex function as...

![[Definition of a Complex Limit]]

Which purely mathematically that is...

$$
\forall \epsilon>0,\exists \delta>0:\forall z\in N_{\delta}(z_{0})\backslash \left\{ z_{0} \right\},|z-z_{0}|<\delta\implies|f(z)-l|<\epsilon
$$

But more logically, it's just the value that is approached when getting closer to an evaluation (but in two dimensions, rather than the usual one, hence two small values that are decreased).

---

**Example**: Calculate $\lim_{z \to i} z^2$.

1. **Domain**: The function $f(z) = z^2$ is a polynomial, so it is defined for all $z \in \mathbb{C}$. The domain is $\mathbb{C}$, and we aim to find the limit as $z$ approaches $i$.

2. **Objective**: We need to show that for every $\epsilon > 0$, there exists a $\delta > 0$ such that if $0 < |z - i| < \delta$, then $|z^2 - (-1)| < \epsilon$.

3. **Manipulation**:
 Note that:
 $$
 |z^2 - (-1)| = |z^2 + 1| = |(z - i)(z + i)| = |z - i| \cdot |z + i|.
 $$

4. **Bounding $|z + i|$**:
 Assume $|z - i| < \delta$. Let $z = i + h$ where $|h| < \delta$. Then:
 $$
 |z + i| = |(i + h) + i| = |2i + h| \leq |2i| + |h| = 2 + \delta.
 $$
 To simplify, choose $\delta \leq 1$ (ensuring $2 + \delta \leq 3$), so $|z + i| \leq 3$.

5. **Choosing $\delta$**:
 We want $|z - i| \cdot |z + i| < \epsilon$. Using the bound $|z + i| \leq 3$, it suffices to have:
 $$
 3|z - i| < \epsilon \quad \implies \quad |z - i| < \frac{\epsilon}{3}.
 $$
 Thus, choose $\delta = \min\left\{1, \frac{\epsilon}{3}\right\}$.

6. **Verification**:
 If $\delta = \min\left\{1, \frac{\epsilon}{3}\right\}$, then for $|z - i| < \delta$:
 $$
 |z^2 + 1| = |z - i| \cdot |z + i| < \delta \cdot 3 \leq \frac{\epsilon}{3} \cdot 3 = \epsilon.
 $$

**Conclusion**: By the $\epsilon$-$\delta$ definition, $\lim_{z \to i} z^2 = -1$.

---

But that's quite convoluted - basically "first principles". Instead, we used the lemme that if...

$z_{0}=x_{0}+iy_{0}$ and $f(x+iy)=u(x,y)+iv(x,y):z+x+iy$, then...

$$
\lim_{z\to z_{0}}f(z)=a+ib\iff\begin{cases}
\lim_{(x,y)\to(x_{0},y_{0})} u(x,y)=a \\
\lim_{(x,y)\to(x_{0},y_{0})} v(x,y)=b
\end{cases}
$$

Where we can calculate limits of multiple variables by breaking them into multiple limits and showing that they're equal irrelevant of order, as there cannot be an infinite way to approach something - solutions must be **unique**.

---

**Example (alternative solution)**: Calculate $\lim_{z \to i} z^2$.

First, we convert $z^{2}\to f(x+iy)=x^{2}-y^{2}+2ixy$ which approach $(0,1)$, such that...

$$
\begin{align*}
\lim_{z\to i}z^{2}&=a+ib\iff\begin{cases}
\lim_{(x,y)\to(0,1)} x^{2}-y^{2}=a\iff\begin{cases}
\lim_{x\to0}(\lim_{y\to1}(x^{2}-y^{2}))=-1 \\
\lim_{y\to1}(\lim_{x\to0}(x^{2}-y^{2}))=-1
\end{cases}\therefore a=-1 \\
\lim_{(x,y)\to(0,1)} 2xy=b\iff\begin{cases}
\lim_{x\to0}(\lim_{y\to1}(2xy))=0 \\
\lim_{y\to1}(\lim_{x\to0}(2xy))=0
\end{cases}\therefore b=0
\end{cases}\\
&= \boxed{-1}
\end{align*}
$$

Which is the same result, but slightly simpler and more methodical - just calculating limits after converting everything to $z=x+iy$.

**If at any point a system has contradictory limits, then no limit will exist at that point**.

---

There are many properties like this lemma and the triangle inequality that we can use to use to simplify the calculation of complex limits, as will follow.

You can sum limits, multiply them, divide, etc.

$$
\begin{align*}
\lim_{z_{\to}z_{0}}P(z)&= \lim_{z_{\to}z_{0}}(a_{n}z^{n}+a_{n-1}z^{n-1}+\ldots+a_{1}z+a_{0})\\
&= a_{n}z_{0}^{n}+a_{n-1}z_{0}^{n-1}+\ldots+a_{1}z_{0}+a_{0}
\end{align*}
$$

This simplifies a lot of limits from first principles to just be the same as normal limits. At most, you might have to re-write things to be simpler, like cancelling out factors for fractions, or multiplying by negative index versions to minimise infinity, etc. (all the same as normal limits from calculus modules).

## Continuous functions

Let $D\subset \mathbb{C}$ be an open set and let $f:D\to \mathbb{C}$ be a complex function. $f$ is continuous at $z_{0}\in D$ if and only if...

$$
\lim_{z\to z_{0}}f(z)=f(z_{0})
$$

Hence $f$ is continuous on all of $D$ if it is continuous on each point $z_{0}\in D$.

---

**For example**, to check if $f(z)=\frac{z^{3}+2z+1}{z^{3}+1}$ is continuous...

The domain $D$ contains all points except where $z^{3}+1=0$, which can be found using roots of unity (either algebraically or geometrically). Geometrically, the roots are the equidistant values with modulus $1$ separated by an angle of $\frac{2\pi}{3}$, starting at $\pi$. Hence...

$$
D=\mathbb{C}\backslash \left\{ e^{\frac{\pi}{3}i},-1,e^{\frac{5\pi}{3}i} \right\}
$$

We then let $z_{0}\in D$ be any point in the domain of $f(z)$ and show that

$$
\begin{align*}
\lim_{z\to z_{0}}f(z)&=\lim_{z\to z_{0}}\frac{z^{3}+2z+1}{z^{3}+1}\\
&= \frac{z_{0}^{3}+2z_{0}+1}{z_{0}^{3}+1}\\
&= f(z_{0})\quad\square
\end{align*}
$$

---

Similar to before, we can show that something is continuous by showing that its real and imaginary parts are continuous, separately, also.