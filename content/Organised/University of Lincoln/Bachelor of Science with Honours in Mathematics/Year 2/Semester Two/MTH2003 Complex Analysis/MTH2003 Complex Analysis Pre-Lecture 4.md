- [Recording 1](https://uol.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=8a4728c3-628f-41f6-9e59-acaa01809c93).
- [Recording 2](https://uol.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=32d97134-c51f-49a2-a2c8-acab0110056e).
- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Pre-Lecture Week 2 NOTES.pdf|Lecture Notes]].
- Lecture: [[MTH2003 Complex Analysis Lecture 4]].
- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 2.pdf|Practical]] ([[MTH2003 Complex Analysis Practical 2]]).

## Paths in the Complex Plane

A **path** $\gamma$ connects two points, $\gamma(a)$ and $\gamma(b)$, in $\mathbb{C}$ with a **continuous** curve:

$$
\gamma:[a,b]\to \mathbb{C},\text{where }[a,b]\subset \mathbb{R}\quad \text{(a continuous parametric function)}
$$

These paths can be combined ($\gamma_{1}+\gamma_{2}$, although this addition is only notation) to produce a single path, as long as the end of the first path is the beginning of the second path. This can be done by finding the path functions (e.g. $\gamma_{1}(t)=\sqrt{2}e^{it}$ and $\gamma_{2}=(1-t)u+tv$), including their intervals. When integrating, you can then add them.

**Example (Combining Paths):**
Let $\gamma_1(t) = 2e^{it}$ for $t \in [0, \pi/2]$ (a quarter-circle from $2$ to $2i$), and $\gamma_2(t) = (1-t)2i + t(2)$ for $t \in [0, 1]$ (a line segment from $2i$ to $2$). The combined path $\gamma_1 + \gamma_2$ is defined by reparameterizing $\gamma_2$ over $[\pi/2, \pi/2 + 1]$ and concatenating the intervals.

A **closed path** satisfies $\gamma(a)=\gamma(b)$ (i.e. it ends where it began).
**Example:** $\gamma(t) = re^{it}$ for $t \in [0, 2\pi]$ (a circle of radius $r$).

Every path also has an **opposite path** $-\gamma:[a,b]\to \mathbb{C}$ such that $-\gamma(t):=\gamma(a+b-t)$ - essentially just the reverse. Other notation is $\tilde{\gamma}$.
**Example:** If $\gamma(t) = t$ for $t \in [0, 1]$, then $-\gamma(t) = 1 - t$.

A subset $S\subset \mathbb{C}$ is called **path-connected** if for every pair of points $p,q\in S$ there is a continuous path $\gamma:[a,b]\to \mathbb{C}$ with $\gamma(a)=p$ and $\gamma(b)=q$. Open disks $D=\left\{ z\in \mathbb{C}:|z|<a \right\}$ are path-connected.

---

## Differentiation

A function $f: D \to \mathbb{C}$ is **differentiable** at $z_0 \in D$ if the limit:

$$
f'(z_0) = \lim_{h \to 0} \frac{f(z_0 + h) - f(z_0)}{h}
$$

exists *independently of the path* $h$ takes to approach $0$. If $f'(z_0)$ exists, then all higher-order derivatives exist, and $f$ is **analytic** (holomorphic) on $D$. Analytic functions satisfy:

- Linearity: $(af + bg)' = af' + bg'$.
- Product Rule: $(fg)' = f'g + fg'$.
- Quotient Rule: $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$.
- Chain Rule: $(f \circ g)'(z) = f'(g(z))g'(z)$.

---

### Partial Derivatives & Jacobian Matrix

For $f(z) = u(x,y) + iv(x,y)$, the Jacobian matrix is:

$$
Df(x,y) = \begin{bmatrix}
\frac{\partial u}{\partial x} & \frac{\partial u}{\partial y} \\
\frac{\partial v}{\partial x} & \frac{\partial v}{\partial y}
\end{bmatrix}.
$$

If $f$ is differentiable, $Df(x,y)$ must represent a complex linear map, equivalent to multiplication by $f'(z)$. This enforces the **Cauchy-Riemann equations**:

---

### Cauchy-Riemann Theorem

**Theorem:** Let $f(z) = u(x,y) + iv(x,y)$ be defined on an open set $D \subset \mathbb{C}$. Then $f$ is differentiable at $z_0 = x_0 + iy_0$ **if and only if**:
1. $u_x, u_y, v_x, v_y$ exist and are continuous near $z_0$.
2. The Cauchy-Riemann equations hold at $z_0$:
 $$
 u_x = v_y, \quad u_y = -v_x.
 $$

**Proof (Sketch):**
- ($\Rightarrow$) If $f$ is differentiable, compute $f'(z_0)$ by approaching $z_0$ along the real axis ($h = \Delta x$) and imaginary axis ($h = i\Delta y$). Equating results gives $u_x = v_y$ and $v_x = -u_y$.
- ($\Leftarrow$) If $u, v$ have continuous partials satisfying C-R, use the total differential to show the complex limit exists.

**Remark:** The Jacobian matrix of $f$ satisfies $Df = \begin{bmatrix} u_x & u_y \\ v_x & v_y \end{bmatrix}$. When C-R holds, this matrix becomes $\begin{bmatrix} u_x & -v_x \\ v_x & u_x \end{bmatrix}$, equivalent to multiplication by the complex number $u_x + iv_x = f'(z)$.

---

**Example (Verification for $f(z) = e^z$):**
Write $e^z = e^x\cos y + i e^x\sin y$, so $u = e^x\cos y$, $v = e^x\sin y$. Compute:
- $u_x = e^x\cos y = v_y$,
- $u_y = -e^x\sin y = -v_x$.

Thus, C-R equations hold everywhere, so $e^z$ is entire (analytic on $\mathbb{C}$).

---

**Example (Finding Analytic Functions):**
Find all analytic $f(z)$ with $\text{Re}(f) = u(x,y) = x^2 - y^2$.
1. Compute partial derivatives: $u_x = 2x$, $u_y = -2y$.
2. By C-R: $v_x = -u_y = 2y$, $v_y = u_x = 2x$.
3. Integrate $v_x$ with respect to $x$: $v = 2xy + g(y)$.
4. Differentiate $v$ with respect to $y$: $v_y = 2x + g'(y) = 2x \implies g'(y) = 0 \implies g(y) = C$.
5. Thus, $v = 2xy + C$, and $f(z) = (x^2 - y^2) + i(2xy + C) = z^2 + iC$.
Since $C$ is a real constant, the general solution is $f(z) = z^2 + iC$ for $C \in \mathbb{R}$.

---

**Key Takeaways:**
- Paths in $\mathbb{C}$ are parametrized curves; combinations require matching endpoints.
- Analytic functions are infinitely differentiable and satisfy C-R equations.
- C-R equations link partial derivatives of real and imaginary parts, ensuring complex differentiability.