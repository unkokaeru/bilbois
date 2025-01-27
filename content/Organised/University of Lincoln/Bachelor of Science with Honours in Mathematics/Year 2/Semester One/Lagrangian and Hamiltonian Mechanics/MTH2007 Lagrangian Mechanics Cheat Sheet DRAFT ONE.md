## To add...

- Hamiltonians
- Oscillations: Frequencies, period of motion, eigenfrequencies, etc.
- Poisson brackets (of angular momentum)

## **MTH2007** Lagrangian Mechanics - Cheat Sheet

> [!TIP] Made by William Fayers :)
>
> This all makes a lot more sense if you read and use it before the exam (it's organised fairly logically though) - practise with it! It assumes knowledge from Differential Equations and Linear Algebra, so revise those too.

### Recap of Assumed Knowledge

- Solving **First-Order Differential Equations**: For $\frac{dy}{dt} + P(t)y = Q(t)$, the solution is $y(t) = \frac{1}{\mu(t)} \left( \int \mu(t) Q(t)\,dt + C \right)$, where $\mu(t) = e^{\int P(t)\,dt}$.
- Solving **Second-Order Differential Equations**: Find the difference between the complementary and particular functions, *revise this if you don't understand what that means*.
- Doing **Integration by Parts** uses the formula $\int u\,dv = uv - \int v\,du$. This is useful when integrating the product of two functions, especially when one function simplifies upon differentiation.
- Simplify **Trigonometric Equations**: Use the following identities...
	- $\sin^2 x + \cos^2 x = 1$,
	- $\sin(2x) = 2\sin x \cos x$,
	- $\cos(2x) = 1 - 2\sin^2x = 2\cos^2x - 1 = \cos^2x - \sin^2x$,
	- $\sin a \pm \sin b = 2\sin\left(\frac{a \pm b}{2}\right)\cos\left(\frac{a \mp b}{2}\right)$,
	- $\cos a + \cos b = 2\cos\left(\frac{a + b}{2}\right)\cos\left(\frac{a - b}{2}\right)$,
	- $\sin\theta \approx \theta:\theta \ll 1$,
	- $\cos\theta \approx 1 - \frac{\theta^2}{2}:\theta\ll1$.
- A **Matrix Transpose**, $M^{T}$, is defined as flipping the elements of a matrix over its diagonal: $(M^{T})_{ij} = M_{ji}$, i.e. rows become columns.

### The Harder Bits

First decide whether it's...
- A system involving **discrete particles** - individual masses, like a pendulum or particles;
- or a system involving **rigid bodies** - solid objects with mass distributed continuously which maintains it shape, like a spinning top or rigid rotating mass;
- or a system involving a **mass in a central field** - an individual mass in a force field which points centrally and only depends on distance.

Depending on this, there are different types of question that could be asked:

#### 1. Discrete Particles

##### 1.1 Problem Setup

1. Identify the **system** (collection of point masses, e.g. pendulums or particles) and **contraints** (e.g. fixed distances, surfaces, or other restricting relationships).
2. Choose **generalised co-ordinates**...
	1. Count the **degrees of freedom**, $\text{d.f.}=\text{total co-ordinates}-\text{constraints}$.
	2. Select the **simplest co-ordinates** (e.g. angles for rotational systems), $q_{1},q_{2},\ldots,q_\text{d.f.}$.
	3. Handle multiple dimensions by calculating **each component separately** and then combine (e.g. $x$, $y$, $z$ components).
3. Define a **reference frame**: set the **origin** somewhere convenient (like the point of rotation or a point with fixed constraints) and orient the **axes** to exploit system symmetry if possible.
   1. Whenever possible, use an **inertial frame** (no acceleration).

##### 1.2 **Possible Question**: Finding the Center of Mass or Reduced Mass

The **center of mass** ($\vec{R}$) is a point which the whole system can be modelled by. It's found by taking the average mass-distance of all the particles **in each axis**, $\vec{R} = \frac{1}{M} \sum_{i} m_i \vec{r}_i$, e.g. $\vec{R}=(\frac{1}{M} \sum m_{i} x_{i},\frac{1}{M} \sum m_{i} y_{i},\frac{1}{M} \sum m_{i} z_{i})$, where $M$ is the total mass, $m_{i}$ is the $i$th mass, and $r_{i}$ is the $i$th distance from the origin.

Note that the **reduced mass** ($\mu$) is similar, but without distance. For example, a two-body problem has $\mu = \frac{m_1 m_2}{m_1 + m_2}$.

##### 1.3 **Possible Question**: Moments of Inertia

The **moment of inertia** ($I$) measures how a body's mass is distributed relative to an axis of rotation, affecting its resistance to rotational acceleration. For a system of discrete particles: $I = \sum_{i} m_i r_i^2$, where $r_i$ is the perpendicular distance from the rotation axis to the $i$-th particle.

Finding the perpendicular distance will often involve trig, like Pythagoras, or even working out the area of the triangle in two ways (i.e. as given and then rotated).

##### 1.4 **Possible Question**: Finding Equations of Motion

###### 1.4.1 Express Kinetic and Potential Energy

- **Kinetic Energy** ($T$) is defined as $T = \frac{1}{2} \sum\limits_{i}\left(m_{i}\cdot \sum\limits_{j}\dot{q}_{j,i}^{2}\right)$, e.g. a one-dimensional system with $q_{1}=x$ and one particle would have $T = \frac{1}{2} m\dot{x}^{2} = \frac{1}{2}mv^{2}$.
- **Potential Energy** ($V$) is defined as $V = \sum_{i} V_i(q_i)$, where $V_{i}$ depends on the system, e.g. under a gravitational field $V_{i} = m_{i} g y_{i}=mgh$, or in an elastic system $V = \frac{1}{2} k (x_{i} - x_{j})^{2}= \frac{1}{2}kx^{2}$.

###### 1.4.2 Formulate the Lagrangian

Find the **difference between** kinetic and potential energy, $L=T-V$.

###### 1.4.3 Apply the Euler-Lagrange Equations

**For each** generalised co-ordinate $q_{i}$, $\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}_i}\right) - \frac{\partial L}{\partial q_i} = 0$. This hence requires...

1. **Partially differentiate** $L$ with respect to each co-ordinate.
2. **Partially differentiate** $L$ with respect to each co-ordinate's derivative, then **differentiate** the results with respect to time.

Then, **subtract and simplify** (use tools from [[#Recap of Assumed Knowledge]]) the equations - there should be the same number of equations as there are generalised co-ordinates, i.e. degrees of freedom ($\text{d.f.}$).

###### 1.4.4 Example

For a **small angle simple pendulum**, $L = \frac{1}{2} m l^2 \dot{\theta}^2 - mgl(1 - \cos\theta)$, which leads to the Euler-Lagrange equation $\ddot{\theta} + \frac{g}{l} \theta = 0$ and hence the solution $\theta(t) = \theta_0 \cos\left(\sqrt{\frac{g}{l}}\, t + \phi\right)$.

#### 2. Rigid Bodies

##### 2.1 Problem Setup

1. Identify the **system** (a rigid body) and **contraints** (no deformation, so a fixed inter-mass distance).
2. Choose **generalised co-ordinates**...
	1. **Euler angles** ($\phi, \theta, \psi$),
	2. or **angular velocity components** ($\omega_x, \omega_y, \omega_z$).
3. Define a **reference frame**: set the **origin** to be the center of mass, or a pivot point, and align the **axes** with the principal axes (so that the *inertia tensor is a diagonal matrix*, since the co-ordinates would be linearly independent).

##### 2.2 **Possible Question**: Finding the Center of Mass

The **center of mass** ($\vec{R}$) is a point which the whole system can be modelled by. It's found by taking the average mass-distance of the continuous body **in each axis**, $\vec{R} = \frac{1}{M} \int \vec{r} \, dm$, e.g. $\vec{R}=(\frac{1}{M} \int x \, dm ,\frac{1}{M} \int y \, dm, \frac{1}{M} \int z \, dm)$.

##### 2.3 **Possible Question**: Finding Equations of Rotational Motion with Inertia

###### 2.3.1 Define the Inertia Tensor

The inertia tensor $\mathbf{I}$ describes how the mass of a body is distributed relative to its rotation axes, affecting its **rotational motion**. It's defined as...

$$
    \mathbf{I} = \begin{bmatrix}
    I_{xx} & I_{xy} & I_{xz} \\
    I_{yx} & I_{yy} & I_{yz} \\
    I_{zx} & I_{zy} & I_{zz}
    \end{bmatrix}
    
$$

where $I$ represents something similar to a **moment of inertia**, $I_{ij} = \int \left( \delta_{ij} r^2 - x_i x_j \right) \, dm$, where $\delta_{ij}$ is the Kronecker delta, $r^2 = x_1^2 + x_2^2 + x_3^2$, and $x_i$ are the position components.

For a rigid body aligned with principal axes, the tensor is diagonal:

$$
\mathbf{I} = \begin{bmatrix}
I_{xx} & 0 & 0 \\
0 & I_{yy} & 0 \\
0 & 0 & I_{zz}
\end{bmatrix},
$$
with:
- $I_{xx} = \int (y^2 + z^2) \, dm$,
- $I_{yy} = \int (x^2 + z^2) \, dm$,
- $I_{zz} = \int (x^2 + y^2) \, dm$.

###### 2.3.2 Finding Moments of Inertia

In a **continuous rigid body**, the **moment of inertia** is defined as $I = \int r^2 \, dm$, where $r$ is the distance from the axis. If you already have one and you're trying to find a parallel one then it's equal, just adding $Ma^{2}$ (by the **Parallel Axes Theorem**).

**Examples:**
- **Thin Rod of Length $L$ and Mass $M$:**
  - About center: $I = \frac{1}{12} M L^2$.
  - About end: $I = \frac{1}{3} M L^2$.
- **Solid Cylinder or Disc of Radius $R$ and Mass $M$:**
  - About central axis: $I = \frac{1}{2} M R^2$.
- **Solid Sphere of Radius $R$ and Mass $M$:**
  - About diameter: $I = \frac{2}{5} M R^2$.

**Calculating $I$ for a Thin Rod About Its Center:**
$$
I = \int_{-L/2}^{L/2} x^2 \left( \frac{M}{L} \, dx \right) = \frac{1}{12} M L^2.
$$

##### 2.4 **Possible Question**: Finding Equations of Motion

###### 2.4.1 Express Kinetic and Potential Energy

- **Kinetic Energy** ($T$) is defined as $T = \frac{1}{2} M V_{\text{cm}}^2 + \frac{1}{2} \vec{\omega}^T \mathbf{I} \vec{\omega}$ (the sum of the translational kinetic energy and rotational kinetic energy), where $V_{\text{cm}}=0$ if there's no translation (object is just rotating, not moving through space).
- **Potential Energy** ($V$) is defined as $V = V(q_i)$, e.g. a spinning top $V=mgl\cos\theta$.

###### 2.4.2 Formulate the Lagrangian

Find the **difference between** kinetic and potential energy, $L=T-V$.

###### 2.4.3 Apply the Euler-Lagrange Equations

**For each** generalised co-ordinate $q_{i}$, $\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}_i}\right) - \frac{\partial L}{\partial q_i} = 0$. This hence requires...

1. **Partially differentiate** $L$ with respect to each co-ordinate.
2. **Partially differentiate** $L$ with respect to each co-ordinate's derivative, then **differentiate** the results with respect to time.

Then, **subtract and simplify** (use tools from [[#Recap of Assumed Knowledge]]) the equations - there should be the same number of equations as there are generalised co-ordinates, i.e. degrees of freedom ($\text{d.f.}$).

#### 3. Motion in a Central Potential Field

##### 3.1 Problem Setup

1. Identify the **central force** (a force that points radially and depends only on distance $r$), $\vec{F} = F(r) \hat{r}$, e.g. a gravitational force $\vec{F} = -\frac{G M m}{r^2} \hat{r}$.
2. Express the system in **polar co-ordinates**, $(r,\theta)$, where the position is $\vec{r} = r \hat{r}$ and velocity is $\vec{v} = \dot{r} \hat{r} + r \dot{\theta} \hat{\theta}$.

##### 3.2 **Possible Question**: Finding Equations of Motion

###### 3.2.1 Calculating Effective Potential

Defined as the **sum of central potential $V(r)$ and centrifugal potential $\frac{L^2}{2\mu r^2}$**: $V_{\text{eff}}(r) = V(r) + \frac{L^2}{2\mu r^2}$, where $L = \mu r^2 \dot{\theta}$ (angular momentum).

Note that thus if you need to graph this, you should graph central potential and centrifugal potential separately, then plot the graph that adds the two.

For example, in **gravitational potential**, $V_{\text{eff}}(r) = -\frac{G M m}{r} + \frac{L^2}{2\mu r^2}$.

###### 3.2.2 Effective Potential Analysis

We can see what this effective potential means for the **motion**, by finding **equilibrium** positions where $\frac{dV_{\text{eff}}}{dr} = 0$, then testing if they're **stable** ($\frac{d^2V_{\text{eff}}}{dr^2} > 0$).

For example, if there's a stable minima, then it's a **bound orbit** (stable circular orbit). Otherwise, it could be an **unbound orbit** (trajectories escaping to infinity).

###### 3.2.3 Modelling Motion

Using Euler-Lagrange equations in polar co-ordinates we can see how $r$ and $\theta$ change over time.

- **Radial equation** is $\mu \ddot{r} = \mu r \dot{\theta}^2 - \frac{dV}{dr}$,
- **Angular equation** is $\frac{d}{dt} (\mu r^2 \dot{\theta}) = 0 \implies \mu r^2 \dot{\theta} = L = \text{constant}$.

Combining these leads to the **radial dynamics** $\ddot{r} = \frac{L^2}{\mu^2 r^3} - \frac{1}{\mu} \frac{dV}{dr}$. For example, in a **gravitational orbit**, $\ddot{r} = \frac{L^2}{\mu^2 r^3} - \frac{G M}{r^2}$.

###### 3.2.4 Find Orbit Shape

Solve for **orbits** by **substituting** $u= \frac{1}{r}$ to get $\frac{d^2u}{d\theta^2} + u = \frac{F(1/u)}{L^2 \mu^2 u^2}$, basically **converting** the radial equation to a form solvable for $\theta$.

An example is an orbit with **gravitational potential** (a Keplerian Orbit): $\frac{d^2u}{d\theta^2} + u = \frac{G(m_1 + m_2)}{L^2}$ with solution $u(\theta) = \frac{G M}{L^2} \left[ 1 + e \cos(\theta - \theta_0) \right]$ such that the orbit is elliptical if $e < 1$, parabolic if $e=1$, and $e\gt1$ hyperbolic. Circular if $e=0$.