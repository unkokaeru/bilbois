
> [!NOTE] Prompt
> In this project you will study one of most famous special mathematical functions – Bessel functions; in particular, you will discover for yourself if their tails are sad or not. Your work will involve solving and analysing equations leading to Bessel functions by hand on paper using methods, which you already learned in other modules but also learning additional techniques. You can complement your work with use of Computer Algebra and/or technical computing or programming of these equations and solutions. You also will learn some applications of Bessel functions.

- What are the differential equations (DEs) resulting in Bessel functions (BFs)?
	- Covered in the **Introduction**, where the Bessel differential equation is explicitly defined.
- Describe Bessel functions and their properties.
	- Discussed in **Key Properties** (series solutions, recurrence relations, orthogonality) and **Mathematical Foundation** (types, singularities).
- What are the recursive relations for BFs?
	- Directly addressed in the **Recurrence Relations** subsection with formulas.
- Why are they called "special"?
	- Explained in the **Introduction**: They are non-elementary, lack intuitive geometric interpretations, and require series/integral definitions.
- How do boundary conditions affect the choice of solutions for BF DEs?
	- Implicitly covered in **Types of Bessel Functions** and **Singularities and Regularity**, which explain how solutions are chosen based on regularity at boundaries (e.g., finite vs. singular behaviour at $x=0$).
- How can BFs be calculated?
	- Explicitly detailed in **Numerical Evaluation** (series/asymptotic expansions, software tools).
- What are the different types of BFs?
	- Thoroughly categorized in **Types of Bessel Functions** (First/Second Kind, Modified, Spherical).
- What are the applications of BFs?
	- A dedicated **Applications** section covers physics, engineering, signal processing, and probability.

### 1. Introduction

**What are Bessel Functions?**
Bessel functions are a family of special functions that solve the **Bessel differential equation**:

$$
x^2 \frac{d^2 y}{dx^2} + x \frac{dy}{dx} + (x^2 - n^2)y = 0,
$$

where $n$ (the *order*) is a real or complex number. Unlike elementary functions (e.g., sine, exponential), Bessel functions lack intuitive geometric interpretations and are typically defined via series expansions or integral representations. They are indispensable in problems with **cylindrical or spherical symmetry**, such as wave propagation, heat conduction, and quantum mechanics.

---

### 2. Mathematical Foundation

#### Types of Bessel Functions

- **Bessel Functions of the First Kind ($J_n(x)$):** Regular (finite) at $x = 0$, making them suitable for boundary value problems with finite solutions at the origin (e.g., drumhead vibrations).
- **Bessel Functions of the Second Kind ($Y_n(x)$, Neumann Functions):** Singular (infinite) at $x = 0$, used when solutions must account for singular behaviour (e.g., scattering problems).
- **Modified Bessel Functions ($I_n(x)$, $K_n(x)$):** Solve the modified equation $x^2 y'' + x y' - (x^2 + n^2)y = 0$. $I_n(x)$ grows exponentially, while $K_n(x)$ decays exponentially. Used in problems with exponential behaviour (e.g., heat conduction in infinite domains).
- **Spherical Bessel Functions ($j_n(x)$, $y_n(x)$):** Related to $J_{n+1/2}(x)$ and $Y_{n+1/2}(x)$, arising in spherical coordinate systems (e.g., quantum mechanics, acoustics).

#### Singularities and Regularity

- **Regular at $x=0$:** $J_n(x)$ remains finite (e.g., $J_0(0) = 1$).
- **Singular at $x=0$:** $Y_n(x)$ diverges logarithmically (e.g., $Y_0(x) \sim \frac{2}{\pi} \ln(x)$ as $x \to 0$).

---

### 3. Key Properties

#### Series Solutions

For integer $n$, $J_n(x)$ is expressed as:

$$
J_n(x) = \sum_{k=0}^\infty \frac{(-1)^k}{k! \, \Gamma(k + n + 1)} \left(\frac{x}{2}\right)^{2k + n},
$$

where $\Gamma$ is the gamma function.

#### Recurrence Relations

Relations connect Bessel functions of different orders:

$$
J_{n-1}(x) + J_{n+1}(x) = \frac{2n}{x} J_n(x), \quad \frac{d}{dx}J_n(x) = \frac{J_{n-1}(x) - J_{n+1}(x)}{2}.
$$

#### Orthogonality

Bessel functions satisfy orthogonality with weight $x$:

$$
\int_0^a J_n(k_m x) J_n(k_p x) x \, dx = 0 \quad \text{if } k_m \neq k_p,
$$

where $k_m$ are zeros of $J_n$. This underpins **Fourier-Bessel series** for expanding functions in cylindrical coordinates.

#### Zeros of Bessel Functions

Critical for boundary conditions (e.g., drumhead modes correspond to zeros of $J_n(x)$). The $m$-th zero of $J_n(x)$ is denoted $j_{n,m}$.

---

### 4. Asymptotic Behaviour

- **Small $x$:**
	- $J_n(x) \sim \frac{1}{\Gamma(n+1)} \left(\frac{x}{2}\right)^n$,
	- $Y_n(x) \sim -\frac{\Gamma(n)}{\pi} \left(\frac{2}{x}\right)^n$ (for $n > 0$).

- **Large $x$:** Oscillatory decay:
	- $J_n(x) \sim \sqrt{\frac{2}{\pi x}} \cos\left(x - \frac{n\pi}{2} - \frac{\pi}{4}\right)$,
	- $Y_n(x) \sim \sqrt{\frac{2}{\pi x}} \sin\left(x - \frac{n\pi}{2} - \frac{\pi}{4}\right)$.

---

### 5. Applications

#### Physics and Engineering

- **Drumhead Vibrations:** Solutions to the wave equation in polar coordinates involve $J_n(x)$, with zeros determining resonant frequencies.
- **Electromagnetic Waveguides:** $J_n(x)$ describes transverse modes in cylindrical waveguides.
- **Heat Conduction:** Radial temperature profiles in cylinders use $J_0(x)$ in their Fourier-Bessel series expansions.
- **Quantum Mechanics:** Radial wavefunctions in cylindrical/spherical coordinates (e.g., particle in a cylinder).

#### Other Fields

- **Signal Processing:** Bessel filters and Kaiser windows.
- **Probability:** Distributions involving products of normal random variables.

---

### 6. Numerical Evaluation

Bessel functions are computed using:

- **Series expansions** for small $x$.
- **Asymptotic expansions** for large $x$.
- **Recurrence relations** for intermediate values.

**Software:** Python’s `scipy.special` (e.g., `jn`, `yn`), MATLAB’s `besselj`, `bessely`.

---

### 7. Historical Background

- **Daniel Bernoulli** (1732) first derived Bessel functions in a problem on hanging chain oscillations.
- **Friedrich Bessel** (1817) systematized their study, leading to the functions being named after him.

---

### 8. Research Directions

1. **Numerical Methods:** Comparing approximation techniques (e.g., Chebyshev vs. asymptotic expansions).
2. **Quantum Applications:** Bessel functions in 3D Schrödinger equations.
3. **Acoustic Radiation:** Modeling loudspeaker diaphragms.
4. **Historical Analysis:** Evolution of Bessel functions in 19th-century mathematical physics.

---

### Conclusion

Bessel functions are foundational in solving PDEs with cylindrical or spherical symmetry. Their unique properties—orthogonality, recurrence relations, and asymptotic behavior—make them indispensable across physics and engineering. A group project could delve into their numerical implementation, explore a specific application (e.g., quantum mechanics), or analyze their historical significance.


> [!NOTE] Useful sources
> [1] H. Jeffreys and B. Swirles, Methods of Mathematical Physics, Cambridge Univ. Press, 1956.
> [2] M. Abramowitz and I. Stegun, Handbook of Mathematical Functions, Martino Fine Books, 2014 3. https://en.wikipedia.org/wiki/Bessel_function
