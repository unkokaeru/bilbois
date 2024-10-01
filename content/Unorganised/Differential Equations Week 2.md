[[../Auto-Generated/Attachments/Lecture 1.pdf]]
[[../Auto-Generated/Attachments/Lecture 2.pdf]]

[[Differential Equations Practical 2]]

## Recap

![[Definition of a Differential Equation]]

![[Definition of Order in Differential Equations]]

![[Definition of a Partial Differential Equation]]

![[Definition of a Linear Ordinary Differential Equation]]

You can also verify solutions to these equations by substituting the solution into the original equation and testing if the left-hand side (LHS) is equal to the right-hand side (RHS) over a given interval ($(-\infty,\infty)$ if not given).

When we're thinking about intervals of validity, then we need to study solution curve for any discontinuities or other points which aren't differentiable. 

## What are the types of solution to a differential equation?

There are two types:

![[Definition of an Explicit Solution in Differential Equations]]

![[Definition of an Implicit Solution in Differential Equations]]

The latter of which is usually more common.

>[!EXAMPLE]
>To show that $x^{2}+y^{2}=25$ is an implicit solution to the differential equation $\frac{dy}{dx}=-\frac{x}{y}$ on the interval $(-5,5)$, we just implicitly differentiate the solution:
>$$\begin{align*}\frac{d}{dx}(x^{2}) + \frac{d}{dx}(y(x^{2})) = \frac{d}{dx}(25)&\implies2x+2y\frac{dy}{dx}=0\\&\implies \frac{dy}{dx}=- \frac{x}{y}\end{align*}$$
>To show its validity, you can demonstrate the two solutions based on the positive/negative nature of the square root, because the equation is an equation of a circle.

## How do we handle families of solutions?

>[!NOTE] A note on validity
>We can test validity just by substituting as we did before, but with both equations, like so:
>$$
\begin{align*}
\begin{cases}
\frac{dx}{dt}=x+3y,\\
\frac{dy}{dt}=5x+3y
\end{cases}:\begin{cases}
x=e^{-2t}+3e^{6t},\\
y=-e^{-2t}+5e^{6t}
\end{cases}&\implies\begin{cases}
(-2e^{-2t}+18e^{6t})=(e^{-2t}+3e^{6t})+3(-e^{-2t}+3e^{6t})\\
(2e^{-2t}+30e^{6t})=5(e^{-2t}+3e^{6t})+2(-e^{-2t}+5e^{6t})
\end{cases}\\
&\implies \begin{cases}
RHS=-2e^{-2t}+18e^{6t}=LHS\\
RHS=2e^{-2t}+30e^{6t}=LHS
\end{cases}\\
&\therefore \text{a valid pair of solutions}
\end{align*}
$$

When solving differential equations, we often implicitly integrate, leaving us with a single constant $c$. This is a **one parameter family of solutions**. If we have higher order, $n$, differential equations, then we have **$n$-parameter family of solutions**. In the case where there are no parameters, we name it a **particular solution**.

We can handle these in two ways (plus just leaving them as a family of solutions):
- Use multiple differential equations (**a system of differential equations**) - similar to solving simultaneous equations, you end up with a pair of differentiable functions as solutions defined on interval $I$, without any constant parameters.
- Use a contraint (**initial value problems**) - these contraints, often the initial value of a function, allow us to solve for the parameter in a solution and give us its particular solution.

### More details on initial value problems

![[Definition of an Initial Value Problem]]

>[!EXAMPLE]
>Considering the ordinary differential equation $\frac{dy}{dx}=y$ with general solution $y=ce^{x}$, we can impose the initial condition $y(x=0)=3$ such that: $y(x=0)=ce^{x=0}=c=3$, which gives us the particular solution $y=3e^{x}$.

>[!EXAMPLE]
>Considering the ordinary differential equation $\frac{dy}{dx}=y$ with general solution $y=ce^{x}$, we can impose the initial condition $y(x=1)=-2$ such that: $y(x=1)=ce^{x=1}=-2:c=-2e^{-1}$, which gives us the particular solution $y=-2e^{x-1}$.

