## **MTH2007** Lagrangian Mechanics - Cheat Sheet
---

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material.

**Small warning**: the following makes the most sense if you read it all first!

### **Section 0**: Crash Course in Prerequisites
*Things you should already know, but might forget*!

1. **Calculus & Linear Algebra**...
	- **Integration by Parts**:$\int u \, dv = uv - \int v \, du$.
	- **Product Rule**: $\frac{d}{dx}[u(x) \cdot v(x)] = u'(x) \cdot v(x) + u(x) \cdot v'(x)$.
	- **Quotient Rule**: $\frac{d}{dx}\left[\frac{u(x)}{v(x)}\right] = \frac{u'(x) \cdot v(x) - u(x) \cdot v'(x)}{[v(x)]^2}$.
	- **Partial Derivatives**:$\frac{\partial}{\partial x} f(x,y) = \text{Derivative of } f \text{ w.r.t. } x, \text{ treat } y \text{ as constant}$.
		- **Mixed Derivatives**: Partially differentiate with respect to the first variable, then the second.
	- **Matrix Diagonalization**:
		1. Find eigenvalues by solving $\det(M - \lambda I) = 0$.
		2. Eigenvectors solve $(M - \lambda I)\mathbf{v} = 0$.
	- **Polar Coordinates**: 
		- Convert from Cartesian to Polar: $x=r\cos\theta,y=r\sin\theta$.
		- Area: $A=\frac{1}{2}\int_{\theta_{1}}^{\theta^{2}}r^{2}d\theta$.
		- Velocity...
			- tangential: $v=r\dot{\theta}$.
			- radial: $v=\dot{r}$.
			- *Note that these are often summed for the total velocity, depending on the system*.
2. **Physics Basics**...
	- **Momentum**: $p = mv$.
	- **Newton’s Law**: $F = ma$.
	- **Kinetic Energy**: $T = \frac{1}{2}mv^{2} = \frac{1}{2}m(\dot{x}^{2}+\dot{y}^{2}+\dot{z}^{2})$ for Cartesian, $T=\frac{1}{2}\mathbf{I}\omega^{2}$ for rotational.
	- **Potential Energy**: $U = mgh$ (gravity) or $U = \frac{1}{2}kx^2$ (spring).
	- **Angular Velocity**: $\omega = \frac{d\theta}{dt}$, measured in rad/s, *note that the same variable is used for Eigenfrequencies*.
	- **Density**: $\sigma=\frac{M}{A}$.
3. **Key Symbols**...
	- **Reduced Mass** ($\mu$): $\mu = \frac{m_1m_2}{m_1 + m_2}$. Used in oscillatory frequency $\omega=\sqrt{\frac{k}{u}}$.
	- **Total Mass** ($M$): Sum of all masses in the system.
	- **Mass Matrix** ($M$): The masses along a diagonal matrix, e.g. $\begin{bmatrix}m_{1} & 0 \\ 0 & m_{2} \end{bmatrix}$.
	- **Perpendicular Distance** ($r$): The distance measured at $90^\circ$ from a line/point.
	- **Complex Number** ($i$): Defined as $i^{2}=-1$, double check context though!

### **Section 1**: Degrees of Freedom & Coordinates
*Often used when setting up a problem*!

1. **Degrees of Freedom** (d.f.): $\text{d.f.} = (\text{Dimensions}\times\text{Number of Particles}) - \text{Holonomic Constraints}$.
	- *Example*: A pendulum on a 2D plane has 1 d.f. (angle $\theta$).
	- **Holonomic Constraints**: Equations that depend only on coordinates (not velocities) and time.
		- *Example*: Fixed distances (rigid rods), surfaces (particles sliding on a curve).
2. **Generalised Coordinates**: Minimal independent variables (e.g., angles, lengths).
	- **Check Validity**:
		1. No constraints relate them.
		2. They span all possible motions.

### **Section 2**: Lagrangians & Euler-Lagrange
*Used to describe motion without forces*.

1. **Lagrangian** ($L$): $L = T - U$, using polar coordinates for central forces.
	- *Example*: 1D oscillator, $L = \frac{1}{2}m\dot{x}^2 - \frac{1}{2}kx^2$.
2. **Euler-Lagrange Equations**: $\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}_i}\right) - \frac{\partial L}{\partial q_i} = 0$.
	- *Example*: For $L = \frac{1}{2}m\dot{x}^2 - U(x)$...
		1. $\frac{\partial L}{\partial \dot{x}} = m\dot{x}$,
		2. $\frac{d}{dt}(m\dot{x}) = m\ddot{x}$,
		3. $-\frac{\partial L}{\partial x} = -\frac{dU}{dx}$,
		4. $m\ddot{x} = -\frac{dU}{dx}$.

### **Section 3**: Hamiltonians & Phase Space
*Converts Lagrangians to use generalised momenta instead of coordinates*.

1. **Hamiltonian** ($H$): $H = \sum_i p_i \dot{q}_i - L, \quad p_i = \frac{\partial L}{\partial \dot{q}_i}$.
	- *Example* derivation from $L$ (e.g., 1D oscillator):
		1. $p = m\dot{x}$,
		2. $H = p\dot{x} - L = \frac{p^2}{2m} + \frac{1}{2}kx^2$.
2. **Hamilton’s Equations**: $\dot{q}_i = \frac{\partial H}{\partial p_i}, \quad \dot{p}_i = -\frac{\partial H}{\partial q_i}$.
	- **Derivation**: From $dH = \sum_i (\dot{q}_i dp_i - \dot{p}_i dq_i)$, match coefficients.

### **Section 4**: Center of Mass & Inertia
*Simplifies calculations of multiple particles*.

1. **Center of Mass (Discrete/Continuous)**: $\vec{R}_{\text{cm}} = \frac{1}{M}\sum_i m_i \vec{r}_i \quad \text{or} \quad \frac{1}{M}\int \vec{r} \, dm$, where $m$ is the center of mass of a particle and $dm=\sigma dr$.
	- *Example* (2 particles): $X_{\text{cm}} = \frac{m_1x_1 + m_2x_2}{m_1 + m_2}$.
2. **Moment of Inertia (Discrete/Continuous)**: $I = \sum_i m_i r_i^2 \quad \text{or} \quad \int r^2 dm$.
	- **Parallel Axis Theorem**: $I = I_{\text{cm}} + Md^2$, useful for simplifying calculations.
	- *Example*: Rod about center, $I = \frac{1}{12}ML^2$.
	- *Example*: Two masses on rod, $I = m_1r_1^2 + m_2r_2^2$.

### **Section 5**: Small Oscillations
*Analysing systems near stable equilibrium*.

1. **Stiffness Matrix** ($K$): $K_{ij} = \left. \frac{\partial^2 U}{\partial q_i \partial q_j} \right|_{\text{eq}}$ (evaluated at equilibrium, i.e. $\left.\frac{\partial U}{\partial q_{i}}\right|_{eq}=0$).
	- **Meaning**: 
	- *Example*: For $U = \frac{1}{2}k(x_1^2 + x_2^2)$, $K = \begin{bmatrix} k & 0 \\ 0 & k \end{bmatrix}$.
2. **Harmonic Solutions**: For small oscillations, you can assume $q_{n}(t)=A_{n}e^{{i}\omega t}$ - useful to substitute into EL equations and then divide through by $e^{i \omega t}$. This system, written as a matrix equation (for $A_{n}$), is equivalent $(K-\omega^{2}M)\mathbf{A}=0$.
3. **Eigenfrequencies**: Solve $\det(K - \omega^2 M) = 0$.
	- **Meaning**: The eigenvalues $\omega^2$ correspond to the squared frequencies of the system’s normal modes (directions where the system oscillates independently).
	- *Example*: For two masses coupled by a spring, $\omega_{1}=0$ (translational mode) and $\omega=\sqrt{\frac{k}{\mu}}$ (oscillatory mode).
	- **Periodic Motion**: If $\frac{\omega_{1}}{\omega_{2}}$ is rational, period $T = \frac{2\pi}{\text{gcd}(\omega_{1}, \omega_{2)}}$.

### **Section 6**: Central Potentials & Orbits
*Motion under radial forces (e.g., gravity, electromagnetism)*.

1. **Effective Potential**: $U_{\text{eff}}(r) = U(r) + \frac{L^2}{2\mu r^2}$ (sum of potential energy and the centrifugal term).
	- **Equilibrium**: Solve $\frac{dU_{\text{eff}}}{dr} = 0$.
2. **Poisson Brackets**: $\{A, B\} = \sum_i \left( \frac{\partial A}{\partial q_i}\frac{\partial B}{\partial p_i} - \frac{\partial A}{\partial p_i}\frac{\partial B}{\partial q_i} \right)$.
	- **Use**: Determines how observables evolve over time.
	- If $\{A, B\} = 0$... $A,B$ are independent. If $B=H$, $A$ is conserved.
	- If $\{A,B\}\lt0$... $A,B$ are negatively correlated over time.
	- If $\{A,B\}\gt0$... $A,B$ are positively correlated over time.

### Sudoku

![[../../../../../Auto-Generated/Attachments/Pasted image 20250120003516.png|300]] ![[../../../../../Auto-Generated/Attachments/Pasted image 20250120003536.png|300]] ![[../../../../../Auto-Generated/Attachments/Pasted image 20250120003549.png|300]] ![[../../../../../Auto-Generated/Attachments/Pasted image 20250120003602.png|300]]
