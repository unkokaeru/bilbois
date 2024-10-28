## What is a Differential Equation?

An equation containing the derivatives of one or more unknown functions (or dependent variables), with respect to one more independent variables, is a differential equation (DE).

---
## Why are Differential Equations important?

They often represent physical quantities and their rate of change, giving us a relationship to predict physical events.

---
## What terminology is used?

**Differential Equations**: Equations involving derivatives that describe how one quantity changes relative to another.

**Order**: The highest derivative present; e.g., a second derivative indicates a second-order equation.

**Types**:
- **Ordinary Differential Equations (ODEs)**: Involve functions of a single variable and their derivatives.
- **Partial Differential Equations (PDEs)**: Involve functions of multiple variables and their partial derivatives.

**Forms**:
- **Normal Form**: A standard, simplified expression of a differential equation.
- **Differential Form**: Representation in terms of derivatives.

**Linearity**:
- **Linear Differential Equations**: The dependent variable and its derivatives appear to the first power and are not multiplied together.
- **Non-Linear Differential Equations**: The dependent variable or its derivatives appear in powers greater than one or are multiplied together.

---
### How do we use this terminology to classify Differential Equations?

1. **Type**: is it an ordinary or partial differential equation?
2. **Order**: what is the highest order derivative?
3. **Linearity**: is it linear or non-linear?

---
## How do we verify solutions to Differential Equations?

Substitute the solution into the differential equation, differentiating it where required.

> [!EXAMPLE]
> Verify whether $y= \frac{6}{5}- \frac{6}{5}e^{-20t}$ is a solution to the differential equation $\frac{dy}{dt}+20y=24$.

The solution to this example is like so:

$$
\begin{align*}
\frac{dy}{dt}+20y=24:y= \frac{6}{5}- \frac{6}{5}e^{-20t}, \frac{dy}{dt}=24e^{-20t}&\implies&24e^{-20t}+24-24e^{-20t}=24\\
&\implies&\text{LHS}=24,\text{RHS}=24\\
&\therefore&\text{Valid solution}
\end{align*}
$$
The differential equation in question is an ordinary first order linear differential equation.