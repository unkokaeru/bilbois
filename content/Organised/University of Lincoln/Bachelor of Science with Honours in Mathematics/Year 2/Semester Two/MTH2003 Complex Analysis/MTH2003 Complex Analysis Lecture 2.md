- Previous Lecture: [[MTH2003 Complex Analysis Lecture 1]].
- Pre-Lecture: [[MTH2003 Complex Analysis Pre-Lecture 2]].
- Flashcards: [[MTH2003 Complex Analysis Flashcards]].
- Next Lecture: [[MTH2003 Complex Analysis Lecture 3]].

## How do we define Functions of a Complex Variable?

A **function of a complex variable** assigns each complex number $z$ in an open subset $D \subset \mathbb{C}$ a unique complex number $w$, denoted $f(z) = w$. These functions generalise real-valued functions to the complex plane and are expressed in terms of real and imaginary parts:

$$
f(z) = u(x,y) + iv(x,y), \quad \text{where } z = x + iy.
$$

Examples include polynomials, exponentials, and rational functions. Understanding these functions requires familiarity with open/closed sets, boundaries, and can then be extended to multi-valued "functions".

### What is an Open Set?

An **open set** in $\mathbb{C}$ is a subset $D$ where every point $z_0 \in D$ has a **neighbourhood** entirely contained within $D$. Formally:

$$
\forall z_0 \in D, \exists \epsilon > 0 \text{ such that } N_\epsilon(z_0) = \{ z \in \mathbb{C} : |z - z_0| < \epsilon \} \subset D.
$$

- **Key intuition**: No "edge" points are included (like an interval without endpoints).
- **Example**: $S = \{ z \in \mathbb{C} : |z - a| < r \}$ (an open disk).

#### What is a Closed Set?

A **closed set** is the complement of an open set. Equivalently, it contains all its **boundary points**. For example, the closure of an open disk $S$ is:

$$
\overline{S} = \{ z \in \mathbb{C} : |z - a| \leq r \}.
$$

- **Key intuition**: Includes its "edge".
- **Note**: A set can be neither open nor closed (e.g., $\{ z : 0 < |z| \leq 1 \}$ - a mixture on different regions).

#### What is a Boundary?

The **boundary** $\partial S$ of a set $S$ consists of points where every neighbourhood contains at least one point in $S$ and one not in $S$. For a disk:

$$
\partial S = \{ z \in \mathbb{C} : |z - a| = r \}.
$$

- **Key intuition**: The "edge" separating interior and exterior.

### How do we classify these sets?

- **Open/Closed**: A set is open if it has no boundary points; closed if it contains all boundary points; can also be defined with neighbourhood existence (*this is the more mathematical approach*).
- **Bounded**: Can be enclosed in a finite disk (e.g., $|z| < 5$).
- **Compact**: Closed and bounded (*critical for many theorems in complex analysis*).
- **Region**: An open set with some boundary points added.

#### Examples

1. **Open Disk $S_1 = \{ z : |z - 1| < \frac{1}{4} \}$**
	- Interior: All points inside the disk.
	- Boundary: $|z - 1| = \frac{1}{4}$.
	- ==DIAGRAM HERE (circle centred at (1,0) with radius 1/4)==.

2. **Closed Upper Half-Plane $S_2 = \{ z : \text{Im}(z) \geq 1 \}$**
	- Closed set containing its boundary $\text{Im}(z) = 1$.
	- ==DIAGRAM HERE (shaded region above horizontal line y=1)==.

3. **Right Half-Plane $S_3 = \{ z : \text{Re}(z) > 0 \}$**
	- Open set; boundary is the imaginary axis $\text{Re}(z) = 0$.
	- ==DIAGRAM HERE (shaded region right of the y-axis)==.

4. **Region Above a Parabola $S_4 = \{ z : y > x^2 \}$**
	- Open set; boundary is the parabola $y = x^2$.
	- ==DIAGRAM HERE (shaded area above parabola)==.

5. **Singleton Set $S_5 = \{ 0 \}$**
	- Closed set (no neighbourhood of 0 is contained in $S_5$).

### How do we plot these functions?

Complex functions $f(z) = u + iv$ map 2D inputs to 2D outputs. Common methods include:

1. **Parametric plots**: Show $u(x,y)$ and $v(x,y)$ separately as surfaces.
2. **Domain colouring**: Colour the domain based on $f(z)$’s argument and modulus.
3. **Vector fields**: Plot $(u,v)$ as vectors at each $(x,y)$.

==DIAGRAM HERE (side-by-side plots: domain z-plane and image w-plane under f(z))==

==DIAGRAM HERE (3D plot of u(x,y) and v(x,y) as surfaces)==

### What about Multi-valued "Functions"?

Inverses of complex functions (e.g., roots, logarithms) are often **multi-valued**, requiring domain restrictions to define single-valued branches (*and hence be truly valid functions*).

#### The Logarithm

The complex logarithm $\ln z$ is multi-valued due to the periodicity of $e^z$:

$$
\ln z = \ln|z| + i(\arg z + 2k\pi), \quad k \in \mathbb{Z}.
$$

We can restrict its domain by specifying $k$, normally such that $k=0$ (the **principal branch**):

$$
\text{Log}\, z = \ln|z| + i\,\text{Arg}\, z:\text{Domain is }(-\pi, \pi]
$$

Using this is a simple as substituting, for example, the principal value of $\ln i=i \frac{\pi}{2}$, as shown:

$$
\ln i = \ln 1 + i\left(\frac{\pi}{2} + 2k\pi\right) = i\left(\frac{\pi}{2} + 2k\pi\right)
$$
