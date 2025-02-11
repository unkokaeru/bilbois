
- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Practical 2.pdf|Practical Sheet]].

## Question 1

Using the [[Definition of a Field]], we can check if the following are fields...

1. $M=\left\{ \frac{a}{b}:a,b\in \mathbb{Z},a \text{ is odd} \right\}$ - **not a field** as it's not closed under addition; let $a_{1}=2m+1,a_{2}=2n+1$ such that $\frac{a_{1}}{b} + \frac{a_{2}}{b} = \frac{a_{1}+a_{2}}{b}= \frac{2m+1+2n+1}{a} = 2(m+n+1)$, which is an even number.
2. $N=\left\{ \frac{a}{b}:a,b\in \mathbb{Z},a \text{ is even} \right\}$ - **not a field** as it lacks multiplicative inverses; the inverse of $\frac{a}{b}$ is $\frac{b}{a}$, where if $b$ is odd then $\frac{b}{a}$ does not exist in $N$.
3. $\mathbb{R}^{+}_{0}=\left\{ x\in \mathbb{R}:x\ge0 \right\}$ - **not a field** as it lacks additive inverses as it's restricted to positive only.

## Question 2

Using the [[Definition of a Ring Homomorphism]] we can test to see which of the following maps are ring homomorphisms, and then find their kernels (values that map to zero).

1. $\theta:\mathbb{Z}\to \mathbb{Z}$ defined by $\theta(a)=3a$: Doesn't conserve multiplication...
	- $\theta(ab)=3ab\ne 9ab=\theta(a)\theta(b)\quad\square$.
2. $\theta:\mathbb{Z}_{6}\to \mathbb{Z}_{3}$ defined by $\theta(\bar{a})=\bar{a}$: Conserves operations...
	- $\theta(\bar{a} + \bar{b}) = \overline{a+b} = \bar{a} + \bar{b} = \theta(\bar{a}) + \theta(\bar{b})$ in $\mathbb{Z}_3$.
	- $\theta(\bar{a} \cdot \bar{b}) = \overline{a \cdot b} = \bar{a} \cdot \bar{b} = \theta(\bar{a}) \cdot \theta(\bar{b})$.
	- $\boxed{\text{A homomorphism with kernel } \{\overline{0}, \overline{3}\}}$.
3. $\theta:\mathbb{C}\to \mathbb{R}$ defined by $\theta(z)=|z|$: Doesn't conserve addition...
	- $\theta(z_1 + z_2) = |1 + (-1)| = 0 \quad \text{vs.} \quad \theta(z_1) + \theta(z_2) = 1 + 1 = 2$.
4. $\theta:\mathbb{C}\to \mathbb{C}$ defined by $\theta(z)=iz$: $\theta(z_{1}z_{2})=iz_{1}z_{2}\ne -z_{1}z_{2}=\theta(z_{1})\theta(z_{2})\quad\square$.
5. $\phi:\mathbb{Z}[x]\to \mathbb{Z}$ defined by $\phi(f(x))=f(3)\forall f(x)\in \mathbb{Z}[x]$: preserves operations...
	- $\phi(f + g) = (f + g)(3) = f(3) + g(3) = \phi(f) + \phi(g)$.
	- $\phi(f \cdot g) = (f \cdot g)(3) = f(3) \cdot g(3) = \phi(f) \cdot \phi(g)$.
	- $\boxed{\text{A homomorphism with kernel } \langle x - 3 \rangle}$.

## Question 3

Given the following subrings, we can use the [[Definition of an Ideal]] to see if they're ideals:

1. The subset $\mathcal{M}$ of $M(2,\mathbb{R})$ given by $\mathcal{M}=\left\{ \begin{bmatrix}x & y \\ 0 & 0\end{bmatrix}: x,y\in \mathbb{R} \right\}$: isn't closed under left multiplication...
	- Let $A = \begin{bmatrix}0 & 0 \\ 1 & 0\end{bmatrix}$ and $B = \begin{bmatrix}x & y \\ 0 & 0\end{bmatrix} \in \mathcal{M}$. Then: $AB = \begin{bmatrix}0 & 0 \\ x & y\end{bmatrix} \notin \mathcal{M}\quad\square$.
2. The subset of $\mathbb{Z}[x]$ given by $\mathcal{N}=\left\{ x \cdot f(x):f(x)\in \mathbb{Z}[x] \right\}$: closed under addition and multiplication...
	- Closed under addition: $x \cdot f(x) + x \cdot g(x) = x \cdot (f(x) + g(x)) \in \mathcal{N}$.
	- Closed under multiplication by $\mathbb{Z}[x]$: For $h(x) \in \mathbb{Z}[x]$, $h(x) \cdot x \cdot f(x) = x \cdot (h(x)f(x)) \in \mathcal{N}$.
	- $\boxed{\text{Is an ideal}}$.

## Question 4

Given that $\theta:R\to S$ is a ring homomorphism, we can show that its image $\text{Im}(\theta)$ is a subring of $S$ and its kernel $\text{ker}(\theta)$ is a subring of $R$ as follows...

1. $\text{Im}(\theta)$ is a subring of $S$:
	- Contains $0_S$: $\theta(0_R) = 0_S$.
	- Closed under addition: $\theta(a) + \theta(b) = \theta(a + b)$.
	- Closed under multiplication: $\theta(a) \cdot \theta(b) = \theta(ab)$.
	- Contains additive inverses: $-\theta(a) = \theta(-a)$.

2. $\ker(\theta)$ is a subring of $R$:
	- Contains $0_R$: $\theta(0_R) = 0_S$.
	- Closed under addition: $\theta(a + b) = 0_S$ if $a, b \in \ker(\theta)$.
	- Closed under additive inverses: $\theta(-a) = -\theta(a) = 0_S$.
	- Closed under multiplication: $\theta(ab) = \theta(a)\theta(b) = 0_S$.

We can then also that the kernel $\text{ker}(\theta)$ is an ideal of $R$...

3. $\ker(\theta)$ is an ideal of $R$:
- Absorbs multiplication: For $r \in R$ and $a \in \ker(\theta)$:
$$
\theta(ra) = \theta(r)\theta(a) = \theta(r) \cdot 0_S = 0_S \quad \text{and} \quad \theta(ar) = 0_S.
$$

$$\boxed{\text{Im}(\theta) \text{ is a subring of } S \text{ and } \ker(\theta) \text{ is an ideal of } R}$$