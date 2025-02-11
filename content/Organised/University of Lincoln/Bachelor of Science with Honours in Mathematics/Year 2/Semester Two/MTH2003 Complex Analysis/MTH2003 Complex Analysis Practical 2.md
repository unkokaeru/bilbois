- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 2.pdf|Practical Sheet]].

## Question 1

...

## Question 2

Given the function with real and imaginary parts...

$$
u(x,y)=\sin x\cosh y\quad \text{and}\quad v(x,y)=\cos x \sinh y
$$

And the Cauchy-Riemann equations...

$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}\quad \text{and}\quad \frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}
$$

We can test the function satisfies these C-R equations by calculating...

$$
\begin{align*}
\frac{\partial u}{\partial x}&= \cos x\cosh y\\
\frac{\partial v}{\partial y}&= \cos x\cosh y\therefore\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}\quad\square\\
\frac{\partial u}{\partial y}&= \sin x\sinh y\\
-\frac{\partial v}{\partial x}&= -\sin x\sinh y\therefore\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}\quad\square
\end{align*}
$$

## Question 3

Given the following functions of $u(x,y)$, we can find their harmonic conjugates $v(x,y)$ (using the C-R equations) and analytic functions (by summing the conjugates) $f(z)$ of which $u$ and $v$ are the real and imaginary parts...

### Part A

$$
u(x,y) = e^{-x}\cos y:\frac{\partial u}{\partial x}=-e^{-x}\cos y=\frac{\partial v}{\partial y}\implies \boxed{v(x,y)=-e^{-x}\sin y}
$$

$$
\boxed{\therefore e^{-x}\cos y-e^{-x}\sin y}
$$

*note: should also include the function of integration*!! (this is different to normal calculus, as it's multivariable)

also note that the final function should be expressed in terms of $z$!!

### Part B

$$
u(x,y) = y^{2}-x^{2}:\frac{\partial u}{\partial x}=y^{2}-2x=\frac{\partial v}{\partial y}\implies \boxed{v(x,y)=\frac{1}{3}y^{3}-2x}
$$

$$
\boxed{\therefore y^{2}-x^{2}+ \frac{1}{3}y^{3}-2x}
$$

*note: should also include the function of integration*!! (this is different to normal calculus, as it's multivariable)

also note that the final function should be expressed in terms of $z$!!

### Part C

$$
u(x,y) = \frac{y}{x^{2}+y^{2}}:\frac{\partial u}{\partial x}=...=\frac{\partial v}{\partial y}\implies \boxed{v(x,y)=...}
$$

*Left for future revision*

**Note**: include this idea of harmonic conjugates in the lecture notes.

## Question 4

Given that we have the real and imaginary parts of two functions which satisfy the C-R equations on specified regions, we can state their analytic function form...

$$
\begin{align*}
u(x,y)&= x^{3}-3xy^{2}\\
v(x,y)&= 3x^{2}y-y^{3}
\end{align*}\quad \text{for all }z\in \mathbb{C}\implies f(x,y)=x^{3}-3xy^{2}+i(3x^{2}y-y^{3})
$$

Defined on the union of its constituent intervals (for all $z\in \mathbb{C}$).

$$
\begin{align*}
u(x,y)&= \frac{x}{x^{2}+y^{2}}\quad \text{for all }z\in \mathbb{C}\\
v(x,y)&= - \frac{y}{x^{2}+y^{2}}\quad \text{for all }x^{2}+y^{2}\ne0
\end{align*}\implies f(x,y)=\frac{x}{x^{2}+y^{2}} - \frac{y}{x^{2}+y^{2}}
$$

Defined on the union of its constituent intervals (for all $x^{2}+y^{2}\ne0$).

## Question 5

Using the Cauchy-Riemann equations, we can show that the following are not differentiable anywhere:

$$
f(z)=\text{Im}(z)=y:\frac{\partial u}{\partial x}=0\ne1=\frac{\partial v}{\partial y}
$$

$$
f(z)=|z|=|x+iy|=\sqrt{x^{2}+y^{2}}:\frac{\partial u}{\partial x}=...\ne0=\frac{\partial v}{\partial y}
$$

$$
f(z)=\text{arg}(z):...
$$

*Left for future revision*

## Question 6

Given the following functions, we can find values for $z$ which allow them to satisfy the C-R equations...

$$
w=z^{2}=(x+iy)^{2}=(x^{2}-y^{2})+i(2xy):\frac{\partial u}{\partial x}=2x-y^{2}=2x=\frac{\partial v}{\partial y}\implies\ldots
$$

$$
w=|z|^{2}=(x^{2}+y^{2})+i(0)
$$

*Left for future revision*.

## Question 7

Given a function defined as $f(z)=\ln r+i\theta$ for $- \frac{\pi}{2}<\theta< \frac{\pi}{2}$, we can first convert it to Cartesian coordinates:

$$
r=\sqrt{x^{2}+y^{2}},\theta=\arctan\left(\frac{y}{x}\right)
$$

*etc.*?

And then show how it satisfies the C-R equations for all $z$ such that $\text{Re}(z)>0$.

$$
...
$$