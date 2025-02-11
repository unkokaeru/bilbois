- Previous Lecture: [[MTH2003 Complex Analysis Lecture 2]].
- Pre-Lecture: [[MTH2003 Complex Analysis Pre-Lecture 3]].
- Flashcards: [[MTH2003 Complex Analysis Flashcards]].
- Next Lecture: [[MTH2003 Complex Analysis Lecture 4]].

## How are limits defined for complex functions?

### What is the formal $\epsilon-\delta$ definition?

A limit $\lim_{z \to z_0} f(z) = l$ exists if:

$$
\forall \epsilon > 0, \exists \delta > 0 : 0 < |z - z_0| < \delta \implies |f(z) - l| < \epsilon.
$$

This extends real analysis limits to **two-dimensional approaches** in $\mathbb{C}$, requiring $f(z)$ to approach $l$ *regardless of the path* taken toward $z_0$.

### Why is this definition stricter than real limits?

In $\mathbb{R}$, limits only consider left/right approaches. In $\mathbb{C}$, $z$ can spiral or approach $z_0$ along infinitely many paths (e.g., lines, curves). The limit must hold for **all possible approaches**.

## How do we compute complex limits using real and imaginary parts?

### What decomposition lemma applies?

If $f(z) = u(x,y) + iv(x,y)$ and $l = a + ib$, then:

$$
\lim_{z \to z_0} f(z) = l \iff 
\begin{cases} 
\lim_{(x,y) \to (x_0,y_0)} u(x,y) = a \\
\lim_{(x,y) \to (x_0,y_0)} v(x,y) = b 
\end{cases}
$$

This reduces complex limits to **coupled real limits**, which can be evaluated using multivariable calculus techniques.

#### **Example**: Compute $\lim_{z \to i} z^2$.

1. **Express $z^2$ in real/imaginary parts**: $z = x + iy \implies z^2 = (x^2 - y^2) + i(2xy)$.
2. **Evaluate real and imaginary limits at $(0,1)$**:
	- Real part: $\lim_{(x,y)\to(0,1)} x^2 - y^2 = -1$.
	- Imaginary part: $\lim_{(x,y)\to(0,1)} 2xy = 0$.
3. **Combine**: $\lim_{z \to i} z^2 = -1 + i0 = -1$.

**Key Insight**: Both limits must agree *independent of approach order* (e.g., $x \to 0$ first vs. $y \to 1$ first). Contradictions imply no limit exists.

## What techniques simplify calculating complex limits?

### How do polynomial/rational functions behave?

Polynomials $P(z)$ are continuous everywhere, so:

$$
\lim_{z \to z_0} P(z) = P(z_0).
$$

For rational functions $f(z) = \frac{P(z)}{Q(z)}$, the limit exists at $z_0$ if $Q(z_0) \neq 0$. Discontinuities occur at roots of $Q(z)$.

### What algebraic tricks help resolve indeterminate forms?

- **Factor cancellation**: Simplify $\frac{z^3 + 1}{z + 1}$ by factoring numerator.
- **Conjugate multiplication**: Rationalize denominators like $\frac{1}{z - i}$.

## What defines continuity in complex functions?

### What is the formal criterion?

A function $f: D \to \mathbb{C}$ is continuous at $z_0 \in D$ if:
1. $f(z_0)$ exists.
2. $\lim_{z \to z_0} f(z)$ exists.
3. $\lim_{z \to z_0} f(z) = f(z_0)$.

### Why is continuity critical in complex analysis?

Continuous functions preserve limits under operations (addition, multiplication, composition). This underpins key results like the **Intermediate Value Theorem** and integration.

## How do we determine continuity for complex rational functions?

#### **Example**: Is $f(z) = \frac{z^3 + 2z + 1}{z^3 + 1}$ continuous?

1. **Identify discontinuities**: Solve $z^3 + 1 = 0 \implies z = e^{i\pi/3}, -1, e^{i5\pi/3}$ (cube roots of $-1$).
2. **Domain**: $D = \mathbb{C} \setminus \{ e^{i\pi/3}, -1, e^{i5\pi/3} \}$.
3. **Continuity on $D$**: For all $z_0 \in D$, $\lim_{z \to z_0} f(z) = f(z_0)$ holds since numerator/denominator are polynomials and $z_0$ isn’t a root of the denominator.

**Conclusion**: $f(z)$ is continuous on $D$ but has **removable discontinuities** at the excluded points (if redefined, it could be continuous there too).

**Key Takeaways**:
- Complex limits require agreement across all approach paths.
- Decomposing into real/imaginary parts simplifies verification.
- Continuity in $\mathbb{C}$ mirrors $\mathbb{R}$ but with richer geometric implications.