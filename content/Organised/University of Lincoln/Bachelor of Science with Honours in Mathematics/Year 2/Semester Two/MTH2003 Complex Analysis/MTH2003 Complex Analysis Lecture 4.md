$$\mathrm{cos}\left(69\right)$$- Previous Lecture: [[MTH2003 Complex Analysis Lecture 3]].
- Pre-Lecture: [[MTH2003 Complex Analysis Pre-Lecture 4]].
- Flashcards: [[MTH2003 Complex Analysis Flashcards]].
- Next Lecture: [[MTH2003 Complex Analysis Lecture 5]].

## How can we define paths?

A **path** in the complex plane is a continuous function

$$
\gamma : [a,b] \to \mathbb{C},
$$

where the interval $[a,b] \subset \mathbb{R}$ serves as a parameter domain. The function $\gamma$ connects two points in $\mathbb{C}$: the starting point $\gamma(a)$ and the end point $\gamma(b)$.

*Why define paths this way?*
This definition emphasises continuity, ensuring that the curve traced out in the complex plane has no “jumps”. However, while continuity is a minimal requirement, in some contexts (such as when applying theorems from complex integration) additional smoothness conditions might be imposed.

---

## What types of paths are there?

There are several types of paths that we commonly encounter:

- **Open Paths:**
These have distinct starting and ending points. For example, the function
$$
\gamma(t) = 2e^{it} \quad \text{for } t\in [0, \pi/2]
$$
describes a quarter-circle from $2$ to $2i$.

- **Closed Paths:**
When $\gamma(a)=\gamma(b)$, the path is closed. A standard example is
$$
\gamma(t) = re^{it} \quad \text{for } t\in [0,2\pi],
$$
which traces out a circle of radius $r$.

- **Reversed (or Opposite) Paths:**
Given a path $\gamma$, its opposite, denoted $-\gamma$ or $\tilde{\gamma}$, is defined by
$$
-\gamma(t) := \gamma(a+b-t).
$$
This operation simply reverses the direction in which the path is traversed.

*It’s interesting to note:*
While the definitions might seem straightforward, the requirement of continuity in the definition ensures that the concept of a “path” is robust. On the flip side, one might argue that more intricate paths (say, those with corners or cusps) require careful handling, especially when applying integration techniques.

---

## Can you combine paths?

Yes, paths can be combined, or **concatenated**, provided that the endpoint of the first path coincides with the starting point of the second. Suppose we have two paths:

- $\gamma_1 : [a,b] \to \mathbb{C}$ with $\gamma_1(b)=p$, and
- $\gamma_2 : [c,d] \to \mathbb{C}$ with $\gamma_2(c)=p$.

They can be combined to form a single path, often denoted as $\gamma_1 + \gamma_2$. In practice, this usually involves re-parameterising the domain of the second path to follow immediately after the first, so that the overall path is defined on one continuous interval.

*Consider the example:*
- $\gamma_1(t) = 2e^{it}$ for $t \in [0,\pi/2]$ (a quarter-circle), and
- $\gamma_2(t) = (1-t)(2i) + t(2)$ for $t \in [0,1]$ (a straight line segment from $2i$ to $2$).

By re-parameterising $\gamma_2$ to, say, the interval $[\pi/2, \pi/2+1]$, the combined path $\gamma_1 + \gamma_2$ gives a single continuous trajectory in $\mathbb{C}$.

*Pros and cons:*
This flexibility in combining paths is a strength of complex analysis, particularly in contour integration. However, careful re-parameterisation is necessary to preserve continuity and the intended geometric interpretation.

---

## How can we define differentiation?

For a function $f : D \to \mathbb{C}$ (where $D\subset\mathbb{C}$) and a point $z_0 \in D$, the derivative of $f$ at $z_0$ is defined as:

$$
f'(z_0) = \lim_{h\to 0}\frac{f(z_0+h)-f(z_0)}{h},
$$

provided this limit exists. A crucial aspect is that this limit must be **independent of the path** along which $h$ approaches $0$ in the complex plane.

*What does this imply?*
Unlike real differentiation, where we have only two directions to consider, in the complex case $h$ can approach $0$ from infinitely many directions. This stricter condition makes differentiability in the complex sense a very strong property.

---

## What is an analytic function?

A function $f$ is said to be **analytic** (or holomorphic) on a domain $D$ if it is differentiable at every point in $D$. In fact, analytic functions have derivatives of all orders and can locally be expressed as convergent power series.

*Why does this matter?*
The analytic nature of functions in complex analysis leads to many powerful results, such as contour integration and Taylor (or Laurent) series expansions. On the other hand, the requirement for differentiability from every direction means that many functions that are differentiable in a real-variable sense are not analytic.

---

## How can we define partial differentiation?

When we write a complex function in terms of its real and imaginary parts,

$$
f(z)=u(x,y)+iv(x,y) \quad \text{with } z=x+iy,
$$

we can discuss its partial derivatives with respect to $x$ and $y$. These partial derivatives can be assembled into the **Jacobian matrix**:

$$
Df(x,y)=\begin{bmatrix}
\frac{\partial u}{\partial x} & \frac{\partial u}{\partial y} \\
\frac{\partial v}{\partial x} & \frac{\partial v}{\partial y}
\end{bmatrix}.
$$

For $f$ to be differentiable in the complex sense, this Jacobian must represent a complex linear map. In particular, it must reflect the structure of multiplication by a complex number.

*Dual perspective:*
On the one hand, partial differentiation allows us to study the behaviour of $f$ using familiar techniques from multivariable calculus. On the other, the condition that the Jacobian corresponds to a complex linear map imposes strong constraints on $u$ and $v$.

---

## What is the Cauchy-Riemann Theorem?

The **Cauchy-Riemann (C-R) Theorem** provides necessary and sufficient conditions for a function $f(z)=u(x,y)+iv(x,y)$ to be differentiable at a point $z_0=x_0+iy_0$ within an open set $D$. The theorem states that $f$ is differentiable at $z_0$ if and only if:

1. The partial derivatives $u_x, u_y, v_x, v_y$ exist and are continuous in a neighbourhood of $z_0$.
2. They satisfy the Cauchy-Riemann equations at $z_0$:

$$
 u_x = v_y \quad \text{and} \quad u_y = -v_x.
$$

*Outline of the proof:*
- **(Necessity):** Assume $f$ is differentiable. By approaching $z_0$ along the real axis (letting $h$ be real) and the imaginary axis (letting $h$ be purely imaginary), one derives conditions that force $u_x = v_y$ and $u_y = -v_x$.
- **(Sufficiency):** Conversely, if $u$ and $v$ have continuous partial derivatives satisfying the C-R equations, one can show—via the total differential—that the limit defining $f'(z_0)$ exists and is independent of the direction of approach.

*Example:*
Consider $f(z)=e^z$. Writing it in its real-imaginary form:

$$
e^z = e^x\cos y + ie^x\sin y,
$$

we have:
- $u(x,y)=e^x\cos y$ and $v(x,y)=e^x\sin y$.
- Differentiating, we find:
- $u_x = e^x\cos y$ and $u_y = -e^x\sin y$,
- $v_x = e^x\sin y$ and $v_y = e^x\cos y$.

Clearly, the C-R equations $u_x = v_y$ and $u_y = -v_x$ are satisfied everywhere, confirming that $e^z$ is analytic on $\mathbb{C}$.

*Reflecting on both sides:*
While the C-R equations give a neat criterion for analyticity, they also illustrate why many functions that might seem “smooth” in the real sense fail to be differentiable in the complex sense. This dichotomy is at the heart of the beauty and rigour of complex analysis.