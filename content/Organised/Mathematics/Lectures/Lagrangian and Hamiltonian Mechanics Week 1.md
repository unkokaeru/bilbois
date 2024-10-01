Landau & Lifshitz, Mechanics, pages 1-3 and 96.
Kibble & Berkshire, Classical Mechanics, 5th edition, page 231.

*The module is mostly just heavy mathematics applied to mechanics.*

---

### Recap of Derivatives

Notation for a full derivative involving $x$...
$$
y(x)=x^{2}\implies \frac{dy}{dx}=y^{\prime}=2x
$$

Notation for a full derivative involving $t$...
$$
y(t)=t^{3}\implies \frac{dy}{dt}=\dot{y}=3t^{2}
$$

Types of derivative...
$$
\frac{d}{d(...)}:\text{full derivative}
$$
or...
$$
\frac{\partial}{\partial(...)}:\text{partial derivative}
$$

When differentiating a variable, the other variable(s) are treated as constant:
$$
\begin{align*}
f(x,y)=x^{2}y\implies &\frac{\partial f}{\partial x}=2xy,\\
&\frac{\partial f}{\partial y}=x^{2}
\end{align*}
$$
In terms of $t$...
$$
\begin{align*}
f(x,t)=xt\implies&\frac{\partial f}{\partial x}=t,\\
&\frac{\partial f}{\partial t}=x
\end{align*}
$$
But what would be the total derivative of $f(x,t)$ with respect to $t$? Keep in mind that whilst $x$ is a variable, it can be expressed in terms of $t$ (and hence as a function $x=x(t)$). **Total** derivative = rate of change if **all** variables can change.
$$
\frac{df}{dt}\equiv\frac{\partial f}{\partial t}+\frac{\partial f}{\partial x}\cdot\frac{\partial x}{\partial t}
$$
This equivalence is essentially made up of partial derivatives treating each thing as a variable whilst keeping another constant, but ensuring the result still stays in the form $\frac{(...)f}{(...)t}$. *It's like you're adding all the changes up for every variable in order to calculate how much change the entire function has, with respect to a single variable.*
$$
\begin{align*}
\frac{df}{dt}&=\frac{\partial f}{\partial t}+\frac{\partial f}{\partial x}\cdot\dot{x}\\
&=x+t\dot{x}
\end{align*}
$$
**Note: How do we tell the difference between partial and total derivatives when the notation is in the form $\dot{x}$?**
$$
f(x,y,t)\implies \frac{df}{dt}=\frac{\partial f}{\partial t}+\frac{\partial f}{\partial x}\cdot\frac{\partial x}{\partial t}+\frac{\partial f}{\partial y}\cdot\frac{\partial y}{\partial t}
$$
This pattern for a full derivatives extends continually for additional variables. **Note: What other notation is there in different languages, like French?**
$$
\begin{align*}
f(x,\dot{x})=x\cdot\dot{x}^{2}\implies&\frac{\partial f}{\partial x}=\dot{x}^{2}\cdot\frac{\partial x}{\partial x}=\dot{x}^{2}\\
&\frac{\partial f}{\partial \dot{x}}=x \frac{\partial(\dot{x}^{2})}{\partial x}=x\cdot2\dot{x}
\end{align*}
$$
$$
\begin{align*}
f(x,\dot{x})=x\cdot\dot{x}\implies \frac{df}{dt}&=\frac{\partial f}{\partial x}\cdot\frac{\partial x}{\partial t}+\frac{\partial f}{\partial \dot{x}}\cdot\frac{\partial \dot{x}}{\partial t}\\
&=\dot{x}\cdot\dot{x}+x\cdot\ddot{x}\\
&=\dot{x}^{2}+x\cdot\ddot{x}
\end{align*}
$$
(the first term with respect to $t$ is omitted, since it's equal to $0$)
**Note: figure out a better way to type partial derivatives in LaTeX - it's so annoying**

---

### Recap of Newton Mechanics

Energy $E=T+U$: the sum of the kinetic and potential energy, respectfully.

Kinetic Energy (scalar and vector)...
for a particle of mass $m$: $T=\frac{mv^{2}}{2}$
for two particles of masses $m_{1},m_{2}$: $T=T_{1}+T_{2}=\frac{m_{1}v_{1}^{2}}{2}+\frac{m_{2}v_{2}^{2}}{2}$

for a particle of mass $m$ moving along $x$ (where everything is moving ->, including a unit vector $\hat{i}:|\hat{i}|=1$): $\vec{v}\equiv \dot{x}\hat{i}$, $T=\frac{m\dot{x}^{2}|\hat{i}|^{2}}{2}=\frac{m\dot{x}^{2}}{2}$.
for two particles of masses $m_{1},m_{2}$ moving along $x$ (where everything is moving ->, including a unit vector $\hat{i}:|\hat{i}|=1$): $T=T_{1}+T_{2}=\frac{m_{1}\dot{x_{1}}^{2}}{2}+\frac{m_{2}\dot{x}_{2}^{2}}{2}$.


Potential Energy (gravity and spring)...
for a mass $m$ a distance $h$ from the Earth's surface: $U=mgh:g \text{ is a constant}$.
for masses $m_{1},m_{2}$ distances $h_{1},h_{2}$ from the Earth's surface: $U=U_{1}+U_{2}=m_{1}gh_{1}+m_{2}gh_{2}$.

for a spring compressed with a change in length $\Delta{x}$: $U=\frac{1}{2}k(\Delta x)^{2},\text{ where }k \text{ is a constant}$, or if $\Delta x$ is not given, then it can be calculated by calculating the original length of the spring and subtracting its final length ($(x_{2}-x_{1})-l$): $U=\frac{1}{2}k(x_{2}-x_{1}-l)^{2}$.

---

**Generalised co-ordinates and degrees of freedom**.
By definition, if co-ordinates completely define a position then they are generalised co-ordinates.
Often denoted by $q_{i}$, where $i$ is the index.
Equal to the number $N$ of degrees of freedom, $\text{d.f.}$

For a particle in one-dimension, there is one degree of freedom ($1\text{d.f.}$) since it can only move along one axis, $x$, hence $1\text{g.c.}$
For a particle in two-dimensions (on a plane), there are two degrees of freedom ($1\text{d.f.}$) since it can move along two axes, $x$ and $y$, hence $2\text{g.c.}$.
**Note**: the generalised co-ordinates here are $x$ and $y$, but they're also often denoted simply as $q_{1}$ and $q_{2}$. This allows for higher dimensions than $x,y,z$ allows - again, this is hinting towards the mathematical nature of this module.
For a particle in three-dimensions (in a volume)... you get the idea. Three degrees of freedom ($3\text{d.f.}$) along $q_{1},q_{2},q_{3}$.

These co-ordinates do not need to be Cartesian, for example they could be polar co-ordinates:
in two dimensions, $(r,\theta)$ have $2\text{d.f.}$ and hence $2\text{g.c.}:q_{1},q_{2}$.
in three dimensions (spherical co-ordinates), $(r,\theta,\phi)$ have $3\text{d.f.}$ and hence $3\text{g.c.}:q_{1},q_{2},q_{3}$. *insert funny haha about modelling the physics of spherical horses*

**These definitions hold for all co-ordinate systems, for $N$ dimensions, where the co-ordinate system will have $(N) \text{d.f.}$ and $(N) \text{g.c.}$ with $q_{1},q_{2},\ldots,q_{i}$. Note that this is for a single particle - for $n$ particles, the system would have $(nN) \text{d.f.}$.**

---

Constraints - particle limitations on position or velocity.
Holonomic constraints - can be expressed by the equation $f(q_{1},\ldots,q_{s},t)=0$, i.e. a function dependent on generalised co-ordinates and time which is equal to zero.
If constraints can not be expressed in this way, they are non-holonomic.
**Note that we focus on holonomic, I assume because of the complexity increase when solving differential equations that are equal to a non-zero function.**

For example...
a one-dimensional rod stretching between $x_{1}$ and $x_{2}$ (hence with length $l=x_{2}-x_{1}$) can be expressed as $x_{2}-x_{1}-l=0$ and thus as $f(x_{1},x_{2})=0$. Therefore we can conclude the constraint is holonomic.

Another example...
a two-dimensional rod stretching between $(x_{1},y_{1})$ and $(x_{2},y_{2})$ (hence with length $l^{2}=(x_{2}-x_{1})^{2}+(y_{2}-y_{1})^{2}$) can be expressed as $(x_{2}-x_{1})^{2}+(y_{2}-y_{1})^{2}-l^{2}=0$ and thus as $f(x_{1},x_{2},y_{1},y_{2})=0$. Therefore we can again conclude the constraint is holonomic.

**Note: the absence of time is okay, it's simply equal to $0$.**

$N$ particles with $p$ holonomic constraints has degrees of freedom ($\text{d.f.}$):
one-dimension: $n=N-p$
two-dimensions: $n=2N-p$
three-dimensions: $n=3N-p$
etc.

This makes sense extending the logic before, as each constraint restricts the movement of a particle by one "axis". Remember, the degrees of freedom is just a numerical value of how much the particles can move in a system.