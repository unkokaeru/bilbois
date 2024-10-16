## Problem 1 (*50 total marks*)

A point particle of **mass $m$** is suspended **horizontally** on two springs of **rest length $l$** between two solid walls, a **distance of $2l$ apart**. The **spring constant** of the left spring is $k$ and the right spring is $99k$.

This model is depicted below:

![[../Auto-Generated/Attachments/Lagrangian and Hamiltonian Mechanics Coursework 2024-10-16 10.35.09.excalidraw]]

### Part A (*4 marks*)

We can **find the degrees of freedom** of the particle by definition:

$$
\text{d.f.}=kN-p
$$

where $k$ is the number of dimensions, $N$ the number of particles, and $p$ the number of holonomic constraints. In this model, there is one particle ($N=1$) moving horizontally ($k=1$) without any holonomic constraints ($p=1$); since the only attachments to the particle are springs, which can be theoretically stretched infinitely and thus aren't holonomic constraints. Hence,

$$
\text{d.f.}=1\cdot1-0=\boxed{1}
$$

### Part B (*12 marks*)

If we place the origin of the coordinate system at the midpoint between the walls, then $x$ is the horizontal displacement of the particle from this midpoint, such that the left wall is at $x=-l$, the right wall at $x=l$, and the point particle's equilibrium at $x=0$.

From this, we can **find the Lagrangian** using its definition $L=T-U$, where $T$ is the kinetic energy $T=\frac{1}{2}m\dot{x}^{2}$ and $U$ is the potential energy $U=\frac{1}{2}k(l+x)^{2} + \frac{1}{2}99k(l-x)^{2}$, the latter of which is found by summing the potential energy of both springs (extended from their equilibrium positions) respectively.

$$
\begin{align*}
L &= T - U\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}k(l+x)^{2} + \frac{1}{2}99k(l-x)^{2}\right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}k(l^{2}+x^{2}+2xl) + \frac{1}{2}99k(l^{2}+x^{2}-2xl) \right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}kl^{2}+\frac{1}{2}kx^{2}+xl+\frac{99}{2}kl^{2}+\frac{99}{2}kx^{2}-99xl \right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(50kl^{2}+50kx^{2}-98xl \right)\\
&= \boxed{\frac{1}{2}m\dot{x}^{2}-50kx^{2}+98xl-50kl^{2}}
\end{align*}
$$

### Part C (*16 marks*)

From this Lagrangian, we can **calculate the corresponding Euler-Lagrange equation** and hence **derive the equation of motion** for the point particle. First, the Euler-Lagrange equation by definition is...

$$
\frac{d}{dt} \left( \frac{\partial L}{\partial \dot{x}} \right) - \frac{\partial L}{\partial x} = 0
$$

Hence, if we calculate the required derivatives from the previously found Lagrangian:

$$
\begin{align*}
&\frac{\partial L}{\partial \dot{x}} = m\dot{x}
\implies \frac{d}{dt}\left(\frac{\partial L}{\partial \dot{x}}\right)=m\ddot{x}\\
&\frac{\partial L}{\partial x} = -100kx+98l\\
\end{align*}
$$

Then we can substitute them into the aforementioned definition to give the Euler-Lagrange equation:

$$
\boxed{m\ddot{x}+100kx-98l=0}
$$

Hence the equation of motion for the system is...

$$
\boxed{\ddot{x}= -\frac{100kx-98l}{m}}
$$

### Part D (*12 marks*)

**Repeating the previous steps** for the case that both spring constant are equal to $50k$, we find that the degrees of freedom are still $\text{d.f.}=1\cdot1-0=\boxed{1}$ (as there are no new attachments to the particle apart from the springs that can extend infinitely, hence do not count as holonomic contraints, and the dimensions/number of particles are the same), and the Lagrangian is...

$$
\begin{align*}
L &= T - U\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}50k(l+x)^{2} + \frac{1}{2}50k(l-x)^{2}\right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}50k((l+x)^{2}+(l-x)^{2}) \right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}50k(l^{2}+x^{2}+2xl+l^{2}+x^{2}-2xl) \right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(\frac{1}{2}50k(2l^{2}+2x^{2}) \right)\\
&= \left(\frac{1}{2}m\dot{x}^{2}\right)-\left(50kl^{2}+50kx^{2} \right)\\
&= \boxed{\frac{1}{2}m\dot{x}^{2}-50kx^{2}-50kl^{2}}
\end{align*}
$$

Hence, the Euler-Lagrange equation and equation of motion (respectively) are...

$$
\frac{d}{dt} \left( \frac{\partial L}{\partial \dot{x}} \right) - \frac{\partial L}{\partial x} = 0\iff \boxed{m\ddot{x}+100kx=0}\iff\boxed{\ddot{x}=-\frac{100kx}{m}}
$$

### Part E (*6 marks*)

The first equation, using a $1:99$ spring constant ratio, yielded the equation of motion $\ddot{x}= -\frac{100kx-98l}{m}$, whilst the second used the ratio $1:1$ and yielded $\ddot{x}=-\frac{100kx}{m}$.

**Comparing** these results, we find that they're almost the exact same, but when the ratio between the two spring's spring constants are $1:1$, then the equation of motion is no longer dependent on $l$, the resting spring length. This is shown by the lack of this variable in the second equation of motion, but presence of the variable in the first.

Physically, this makes sense, as if the springs are equally strong then the system will exhibit more symmetric behaviour, where any forces balance out more uniformly; this contrasts with if the springs have different strengths, where the system will then be sensitive to the initial spring lengths. This might lead to the second system exhibiting simpler harmonic motion, too.

---
## Problem 2 (*50 total marks*)

There is a **Lagrangian in the following form**, where $m,M,a_{1},a_{2},g$ are constants and $x_{1},x_{2}$ are two generalised coordinates...

$$
L = \frac{1}{2}(m+M)a_{1}^{2}\dot{x}_{1}^{2} + \frac{1}{2}Ma_{2}^{2}\dot{x}_{2}^{2} + Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\cos(x_{1}-x_{2}) + (m+M)ga_{1}\cos(x_{1}) + Mga_{2}\cos(x_{2})
$$

My interpretation of this Lagrangian is a double pendulum illustrated below:

![[../Auto-Generated/Attachments/Lagrangian and Hamiltonian Mechanics Coursework 2024-10-16 10.44.02.excalidraw]]

### Part A (*30 marks*)

This Lagrangian is dependent on two generalised coordinates (this makes sense, as there are two particles moving in two dimensions with two holonomic constraints - the two massless rigid rods attached to the particles -, since the Lagrangian describes a double pendulum, hence $\text{d.f.}=2\cdot2-2=2$), so should have **two Euler-Lagrange equations** defined by the equations:

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{x}_1}\right) - \frac{\partial L}{\partial x_1} = 0\quad \text{and}\quad \frac{d}{dt}\left(\frac{\partial L}{\partial \dot{x}_2}\right) - \frac{\partial L}{\partial x_2} = 0
$$

If we evaluate the first equation, then we first need to find the required derivatives. We'll start with the partial derivatives...

$$
\begin{align*}
&\frac{\partial L}{\partial \dot{x}_{1}} = (m+M)a_{1}^{2}\dot{x}_{1} + Ma_{1}a_{2}\dot{x}_{2}\cos(x_{1}-x_{2})\\
&\frac{\partial L}{\partial x_{1}} = -Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})-(m+M)ga_{1}\sin(x_{1})
\end{align*}
$$

Then we can calculate $\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{x}_{1}}\right)$, as it'll involve a bit more work:

$$
\begin{align*}
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{x}_{1}}\right)&=(m+M)a_{1}^{2}\ddot{x}_{1} + Ma_{1}a_{2}\cdot
\left(\frac{d}{dt}(\dot{x}_{2}\cos(x_{1}-x_{2}))\right)\\
&= (m+M)a_{1}^{2}\ddot{x}_{1} + Ma_{1}a_{2}\cdot
\left(\frac{d}{dt}(\dot{x}_{2})\cos(x_{1}-x_{2})+\dot{x}_{2}\frac{d}{dt}(\cos(x_{1}-x_{2})) \right)\\
&= (m+M)a_{1}^{2}\ddot{x}_{1} + Ma_{1}a_{2}\cdot
\left(\ddot{x}_{2}\cos(x_{1}-x_{2})-\dot{x}_{2}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2})\right)\\
&= (m+M)a_{1}^{2}\ddot{x}_{1} + Ma_{1}a_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})-Ma_{1}a_{2}\dot{x}_{2}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2})
\end{align*}
$$

Which we can then substitute into the original definition and simplify slightly...

$$
\begin{align*}
0&=(m+M)a_{1}^{2}\ddot{x}_{1}+ Ma_{1}a_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})-Ma_{1}a_{2}\dot{x}_{2}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2})+Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})+(m+M)ga_{1}\sin(x_{1})\\
&=(m+M)a_{1}^{2}\ddot{x}_{1}+ Ma_{1}a_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})-Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})+Ma_{1}a_{2}\dot{x}_{2}^{2}\sin(x_{1}-x_{2})+Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})+(m+M)ga_{1}\sin(x_{1})\\
&=(m+M)a_{1}^{2}\ddot{x}_{1}+Ma_{1}a_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})+Ma_{1}a_{2}\dot{x}_{2}^{2}\sin(x_{1}-x_{2})+(m+M)ga_{1}\sin(x_{1})\\
&= a_{1}((m+M)a_{1}\ddot{x}_{1}+Ma_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})+Ma_{2}\dot{x}_{2}^{2}\sin(x_{1}-x_{2})+(m+M)g\sin(x_{1}))
\end{align*}
$$

Resulting in the **first Euler-Lagrange equation**:

$$
\boxed{a_{1}((m+M)a_{1}\ddot{x}_{1}+Ma_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})+Ma_{2}\dot{x}_{2}^{2}\sin(x_{1}-x_{2})+(m+M)g\sin(x_{1}))=0}
$$

Repeating the same steps for the second Euler-Lagrange equation: First, the required derivatives...
$$
\begin{align*}
&\frac{\partial L}{\partial \dot{x}_{2}} = Ma_{2}^{2}\dot{x}_{2}+Ma_{1}a_{2}\dot{x}_{1}\cos(x_{1}-x_{2})\\
&\frac{\partial L}{\partial x_{2}} = -(-1)Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})-Mga_{2}\sin(x_{2})
\end{align*}
$$

$$
\begin{align*}
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{x}_{2}}\right) &= \frac{d}{dt}\left(Ma_{2}^{2}\dot{x}_{2}+Ma_{1}a_{2}\dot{x}_{1}\cos(x_{1}-x_{2})\right)\\
&= Ma_{2}^{2}\ddot{x}_{2}+Ma_{1}a_{2}\left(\frac{d}{dt}(\dot{x}_{1})\cos(x_{1}-x_{2})+\dot{x}_{1}\frac{d}{dt}(\cos(x_{1}-x_{2})) \right)\\
&= Ma_{2}^{2}\ddot{x}_{2}+Ma_{1}a_{2}\left(\ddot{x}_{1}\cos(x_{1}-x_{2})-\dot{x}_{1}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2}) \right)\\
&= Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2}))
\end{align*}
$$

Then, substituting these values into the original definition:

$$
\begin{align*}
0&=Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2}))-Ma_{1}a_{2}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})+Mga_{2}\sin(x_{2})\\
&=Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}(\dot{x}_{1}-\dot{x}_{2})\sin(x_{1}-x_{2})-a_{1}\dot{x}_{1}\dot{x}_{2}\sin(x_{1}-x_{2})+g\sin(x_{2}))\\
&=Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}((\dot{x}_{1}-\dot{x}_{2})+\dot{x}_{2})\sin(x_{1}-x_{2})+g\sin(x_{2}))\\
&=Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}^{2}\sin(x_{1}-x_{2})+g\sin(x_{2}))
\end{align*}
$$

Hence the **second Euler-Lagrange equation** is...

$$
\boxed{Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}^{2}\sin(x_{1}-x_{2})+g\sin(x_{2}))=0}
$$

*Note: both of these Euler-Lagrange equations could be simplified further by dividing through by $a_{1}$ and $Ma_{2}$ respectively, but as these weren't explicitly non-zero in the question I simply factorised them out instead to avoid division by zero*.

### Part B (*20 marks*)

We now have two Euler-Lagrange equations:

$$
\begin{align*}
0&=a_{1}((m+M)a_{1}\ddot{x}_{1}+Ma_{2}\ddot{x}_{2}\cos(x_{1}-x_{2})+Ma_{2}\dot{x}_{2}^{2}\sin(x_{1}-x_{2})+(m+M)g\sin(x_{1})),\\
0&=Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}\cos(x_{1}-x_{2})-a_{1}\dot{x}_{1}^{2}\sin(x_{1}-x_{2})+g\sin(x_{2})).
\end{align*}
$$

We can then **simplify these results** assuming that $x_{1}$ and $x_{2}$ are small values (less than $0.1 \text{ radians}$), such that...

1. $\cos(x_{1}-x_{2}) \approx 1$,
2. $\sin(x_{1}-x_{2}) \approx x_{1} - x_{2}$,
3. $\sin(x_{1}) \approx x_{1}$,
4. $\sin(x_{2}) \approx x_{2}$.

Hence we can approximate the two Euler-Lagrange equations as...

$$
\boxed{\begin{align*}
0&\approx a_{1}((m+M)a_{1}\ddot{x}_{1}+Ma_{2}\ddot{x}_{2}+Ma_{2}\dot{x}_{2}^{2}(x_{1}-x_{2})+(m+M)g(x_{1})),\\
0&\approx Ma_{2}(a_{2}\ddot{x}_{2}+a_{1}\ddot{x}_{1}-a_{1}\dot{x}_{1}^{2}(x_{1}-x_{2})+gx_{2}).
\end{align*}}
$$

*Note: we stop here, as the question only asked to simplify, not solve, the coupled second-order nonlinear differential equations*.