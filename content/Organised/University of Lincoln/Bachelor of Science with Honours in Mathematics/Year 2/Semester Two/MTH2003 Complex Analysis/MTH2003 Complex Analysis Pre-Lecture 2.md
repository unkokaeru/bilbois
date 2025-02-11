- [Recording](https://uol.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=128aa0dd-08e9-49a4-8e71-acaf01177ad6).
- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Pre-Lecture Week 1 NOTES.pdf|Lecture Notes]].
- Lecture: [[MTH2003 Complex Analysis Lecture 2]].
- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 1.pdf|Practical]] ([[MTH2003 Complex Analysis Practical 1]]).

*Lots of definitions and notation - good for flashcards, but make sure they're linked notes too (separate them). Could convert other linked definitions into flashcard definitions, too*.

### Open Sets, Closed Sets, and Their Boundary.

For the definitions of continuity, differentiability, and integrability, the concepts of **open and closed intervals** are required.

The analogous concepts for complex functions are **open and closed subsets of the plane $\mathbb{C}$** .

The simplest subset of the plane is a disk, where a point $Z$ is inside a disk with radius $\epsilon>0$ (*using epsilon since it should be a "small" number*) centred at $z_{0}$ if $|z-z_{0}|\lt \epsilon^{2}$ (equivalent to $(x-x_{0})^{2}-(y-y_{0})^{2}\lt \epsilon^{2}$). All $z$ points defined in this subset define the **neighbourhood** of $z_{0}\in \mathbb{C}$...

$$
N_{\epsilon}(z_{0})=\left\{ z\in \mathbb{C}:|z-z_{0}|\lt \epsilon \right\}
$$

A subset $D\in \mathbb{C}$ is called **open** if every point $z_{0}$ in $D$ has a neighbourhood inside $D$...

$$
\forall z_{0}\in \mathbb{C}\exists \epsilon>0:N_{\epsilon}(z_{0})\subset D
$$

By definition, an open set doesn't contain any "boundary" points (imagine a circle with no hard border - the same as normal intervals, but two-dimensional). Note that using disks, you can also call them **open disks**.

$$
S=\left\{ z\in \mathbb{C}:|z-a|<r \right\}
$$

All points outside of an open set form a **closed** set, e.g. $\mathbb{C}\backslash N_{\epsilon}(z_{0})$.

The points inside of neighbourhoods, $z_{0}$, are called **interior points**.

$$
\bar{S}=\left\{ z\in \mathbb{C}:|z-a|\le r \right\}
$$

By definition, each boundary point's neighbourhood contains at least one point within and one point outside of the set.

The boundary notation is...

$$
\delta S=\left\{ z\in \mathbb{C}:|z-a|=r \right\}
$$

The complement of a set is defined as the subset of everything outside of the set. This helps with the definition of a closed set: *a subset is a closed set if its complement is an open set*, $\bar{S}=S\cup\delta S$. This is a natural extension of the definition.

A **region** is a set consisting of an open set and an arbitrary number of its boundary points.

A region is **bounded** if it can be enclosed within a circle, **closed** if it contains all its boundary points, and **compact** if it's both.

---

**EXAMPLES**:

Let $S_{1}=\left\{ z\in \mathbb{C}:|z-1|\lt \frac{1}{4} \right\}$...

- **Interior points** are defined as all points inside a circle with radius $\frac{1}{4}$ and centre $(1,0)=1+0i$.
- **Boundary points** are defined as $\delta S=\left\{ z\in \mathbb{C}:|z-1|=\frac{1}{4} \right\}$.
- An **open subset of $\mathbb{C}$** as any point $z_{0}$ in $S$ admits a neighbourhood $N_{\epsilon}(z_{0})$ that is entirely inside $S$.
- *By extension, you can define a similar set with $\le$ which is closed, as well as show that the boundary $\delta S$ is closed*.

==DIAGRAM==

Let $S_{2}=\left\{ z\in \mathbb{C}:\text{Im}z\ge1 \right\}$...

==DIAGRAM==

Let $S_{3}=\left\{ z\in \mathbb{C}:\text{Re}z\gt0 \right\}$...

==DIAGRAM==

Let $S_{4}=\left\{ z\in \mathbb{C}:y>x^{2} \right\}$...

==DIAGRAM==

Let $S_{5}=\left\{ 0 \right\}$...

- Closed set, as the only existing neighbourhood is not entirely contained in $S_{5}$ by definition.

---

### Functions of a Complex Variable.

A function of a complex variables assigns a complex number $z$ a **unique** complex number $w$ such that $f(z)=w$, where $f$ is defined on an open subset of $\mathbb{C}$, $D$.

**Examples**: polynomial, trigonometric, exponential, rational, etc.

By definition, these functions can be expressed in **real** and **imaginary** parts:

$$
f(z)=f(x+iy)=u(x,y)+iv(x,y)
$$

where $u$ is the real part of the function and $v$ is the imaginary part.

==Include a graph of these functions - two graphs, one with the domain and another with the image which the function translate between==.

---

**EXAMPLES**:

**Polynomial**...

$$
\begin{align*}
f(z)=z^{2}=f(x+iy)&= (x+iy)^{2}\\
&= x^{2}+2ixy-y^{2}\\
&= (x^{2}-y^{2})+i(2xy)\\
&\therefore u(x,y)=x^{2}-y^{2},v(x,y)=2xy
\end{align*}
$$

**Rational**...

$$
\begin{align*}
g(z)&= \frac{1}{z+i}:D=\left\{ z\in \mathbb{C}:z\ne-i \right\}=\mathbb{C}\backslash \left\{ -i \right\}\\
&= \frac{1}{x+iy+i}\\
&= \frac{1}{x+i(y+1)}\\
&= \frac{x-i(y+1)}{[x+i(y+1)][x-i(y+1)]}\\
&= \frac{x}{x^{2}+(y+1)^{2}}+i \frac{-(y+1)}{x^{2}+(y+1)^{2}}
\end{align*}
$$

**Exponential**...

$$
\begin{align*}
e^{z}&= e^{x+iy}\\
&= e^{x}\cdot e^{iy}\\
&= e^{x}(\cos y+i\sin y)\\
&= e^{x}\cos y+i e^{x}\sin y
\end{align*}
$$

---

==Then describe the methods used, like using Euler's formula which then also leads to the complex cos/sin function definitions with Euler's number, as well as the hyperbolic functions and thus corresponding formulae - could even link this with [Osborn's Rule](https://mathworld.wolfram.com/OsbornsRule.html)==.

### Multi-valued Functions: The Logarithm.

Some of these complex "functions" are defined as inverses of other functions, like logarithms (inverse of $e^{z}$) and square roots (inverse of $z^{2}$). Hence, they're not always single-valued - *strictly, this invalidates them as functions, but their domain can be restricted to make them single-valued*.

For example, the logarithm...

For any $z\ne0$, the natural logarithm of $z$ is a complex number $w$ such that $e^{w}=z$. If $z=re^{i \theta}$, then $\ln z$ (*the usual logarithm of a positive real*) is defined as...

$$
w=\ln z=\ln(r e^{i \theta})=\ln r+i(\theta+2k\pi):k=0,\pm1,\pm2,\ldots
$$

or

$$
w=\ln z=\ln|z|+i\arg z
$$

Clearly, this is multi-valued as $k$ can have an arbitrary number of values. This can hence be easily restricted to consider only one value of $k$ - often the **principal value** (*or principal branch*) where $k=0$. Hence,

$$
\ln z=\ln r+i\theta:0\le \theta\lt 2\pi
$$

**EXAMPLE**: Finding all values of $\ln i$...

$$
\begin{align*}
\ln i&= \ln|i|+i\arg(i)\\
&= 0+i\left(\frac{\pi}{2}+2k\pi\right):\text{principal value }k=0\\
&= i\frac{\pi}{2}
\end{align*}
$$
