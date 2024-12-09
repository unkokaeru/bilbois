---
epoch: 1733163182668
modelKey: gpt-4o-mini|openai
tags:
  - copilot-conversation
---

**user**: Read [[MTH2004 Differential Equations Cheat Sheet]].

I want to extend this with Fourier series and Fourier integrals. Here's a few questions it should be able to help solve:

Fourier series is given by

$$
f(x) = \frac{a_{0}}{2} + \sum\limits_{n=1}^{\infty} a_{n}\cos(\frac{n\pi x}{p}) + \sum\limits_{n=1}^{\infty} b_{n}\sin(\frac{n\pi x}{p})
$$

with

$$
a_{0} = \frac{1}{p}\int_{-p}^{p} f(x)dx
$$

$$
b_{n} = \frac{1}{p}\int_{-p}^{p} f(x)\cos(\frac{n\pi x}{p})dx
$$

$$
b_{n} = \frac{1}{p}\int_{-p}^{p} f(x)\sin(\frac{n\pi x}{p})dx
$$

## Problem 1

Find the Fourier series for $f(x) = L - x$ on the interval $-L \le x \le L$.

## Problem 2

Find the Fourier series for the piecewise function:
$$
\begin{cases}
L & -L \le x \le 0 \\
2x & 0 \le x \le L
\end{cases}
$$

## Problem 3

Use Fourier series to find a solution of the equation

$$
y^{\prime\prime} - y = f(x)
$$

where $f(x) = 2\pi x$ for $-1 \le x \le 1$.
[Timestamp: 2024/12/02 18:13:02]

**ai**: To extend your cheat sheet with Fourier series and integrals, let's address the problems you've outlined.

### Problem 1: Fourier Series for \( f(x) = L - x \) on the interval \( -L \le x \le L \)

1. **Calculate \( a_0 \)**:
   \[
   a_0 = \frac{1}{p} \int_{-p}^{p} f(x) \, dx = \frac{1}{L} \int_{-L}^{L} (L - x) \, dx
   \]
   Evaluating the integral:
   \[
   = \frac{1}{L} \left[ Lx - \frac{x^2}{2} \right]_{-L}^{L} = \frac{1}{L} \left[ (L^2 - \frac{L^2}{2}) - (-L^2 + \frac{L^2}{2}) \right] = \frac{1}{L} \left[ L^2 - \frac{L^2}{2} + L^2 - \frac{L^2}{2} \right] = \frac{1}{L} \left[ 2L^2 - L^2 \right] = \frac{L}{2}
   \]

2. **Calculate \( a_n \)**:
   \[
   a_n = \frac{1}{L} \int_{-L}^{L} (L - x) \cos\left(\frac{n\pi x}{L}\right) \, dx
   \]
   This integral can be solved using integration by parts.

3. **Calculate \( b_n \)**:
   \[
   b_n = \frac{1}{L} \int_{-L}^{L} (L - x) \sin\left(\frac{n\pi x}{L}\right) \, dx
   \]
   This integral can also be solved using integration by parts.

The final Fourier series will be:
\[
f(x) = \frac{L}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
\]

### Problem 2: Fourier Series for the Piecewise Function

Given:
\[
f(x) = 
\begin{cases}
L & -L \le x \le 0 \\
2x & 0 \le x \le L
\end{cases}
\]

1. **Calculate \( a_0 \)**:
   \[
   a_0 = \frac{1}{L} \left( \int_{-L}^{0} L \, dx + \int_{0}^{L} 2x \, dx \right)
   \]
   Evaluating:
   \[
   = \frac{1}{L} \left( L \cdot L + \left[ x^2 \right]_{0}^{L} \right) = \frac{1}{L} \left( L^2 + L^2 \right) = \frac{2L}{L} = 2
   \]

2. **Calculate \( a_n \)** and \( b_n \)** similarly by evaluating the integrals over the respective intervals.

### Problem 3: Use Fourier Series to Solve \( y'' - y = f(x) \)

Given \( f(x) = 2\pi x \) for \( -1 \le x \le 1 \):

1. **Find the Fourier series for \( f(x) \)**:
   - Calculate \( a_0 \), \( a_n \), and \( b_n \) for \( f(x) = 2\pi x \).

2. **Substitute into the differential equation**:
   - The general solution will be \( y = y_c + y_p \), where \( y_c \) is the complementary function and \( y_p \) is the particular solution derived from the Fourier series.

3. **Solve for \( y \)** using the method of undetermined coefficients or variation of parameters as outlined in your cheat sheet.

This structure should help you extend your cheat sheet effectively with Fourier series and integrals. If you need further details on any specific part, feel free to ask!
[Timestamp: 2024/12/02 18:13:15]

**user**: Can you extend my cheat sheet with generic advice for similar questions?
[Timestamp: 2024/12/02 18:13:32]

**ai**: Certainly! Here’s a section you can add to your cheat sheet that provides generic advice for tackling problems related to Fourier series, Fourier integrals, and similar differential equations:

---

### **Generic Advice for Fourier Series and Differential Equations**

#### 1. **Understanding Fourier Series**

- **Definition**: A Fourier series represents a periodic function as a sum of sine and cosine functions. It is particularly useful for solving problems involving periodic boundary conditions.
  
- **Formulas**:
  - The Fourier series of a function \( f(x) \) defined on the interval \( [-L, L] \) is given by:
    \[
    f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
    \]
  - Coefficients are calculated as:
    \[
    a_0 = \frac{1}{L} \int_{-L}^{L} f(x) \, dx
    \]
    \[
    a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) \, dx
    \]
    \[
    b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin\left(\frac{n\pi x}{L}\right) \, dx
    \]

#### 2. **Steps to Solve Fourier Series Problems**

- **Identify the Function**: Determine the function \( f(x) \) and its interval of definition. Check if it is periodic.

- **Calculate Coefficients**:
  - Start with \( a_0 \) to find the average value of the function over the interval.
  - Calculate \( a_n \) and \( b_n \) using integration. Use integration by parts if necessary, especially for products of polynomials and trigonometric functions.

- **Construct the Series**: Combine the coefficients into the Fourier series representation.

- **Check for Convergence**: Ensure that the series converges to the function at points of continuity and converges to the average of the left and right limits at points of discontinuity.

#### 3. **Using Fourier Series in Differential Equations**

- **Formulate the Problem**: Identify the differential equation and the non-homogeneous term \( f(x) \).

- **Find the Fourier Series of \( f(x) \)**: Use the steps outlined above to derive the Fourier series for the non-homogeneous term.

- **Solve the Homogeneous Equation**: Find the complementary solution \( y_c \) by solving the associated homogeneous equation.

- **Particular Solution**: Use the Fourier series to express the particular solution \( y_p \). Substitute the series into the differential equation and solve for the coefficients.

- **Combine Solutions**: The general solution is given by:
  \[
  y = y_c + y_p
  \]

#### 4. **Common Pitfalls to Avoid**

- **Incorrect Interval**: Ensure that the interval for integration matches the defined interval of the function.

- **Miscalculating Coefficients**: Double-check integration limits and calculations for \( a_n \) and \( b_n \).

- **Ignoring Discontinuities**: Be aware of how discontinuities affect convergence and the representation of the function.

- **Forgetting Boundary Conditions**: When solving differential equations, always consider any given boundary conditions to find specific solutions.

#### 5. **Practice Problems**

- Regularly practice problems of varying difficulty to strengthen your understanding of Fourier series and their applications in differential equations.

- Review examples from textbooks or past exams to familiarize yourself with common types of problems.

---

Feel free to modify or expand upon this section based on your specific needs or preferences!
[Timestamp: 2024/12/02 18:13:40]

**user**: Can you update the existing cheat sheet to seamlessly containing all of the required information in the same format as what is already existing?
[Timestamp: 2024/12/02 18:23:33]

**ai**: Certainly! Here’s an updated version of your cheat sheet that incorporates the generic advice for Fourier series and differential equations in a format consistent with the existing content.

---

## **MTH2004** Differential Equations - Cheat Sheet

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from the linear algebra module (namely solving simultaneous equations and finding a determinant) - make sure you know this!

### Possible Question Topics and their Explanations

#### 0. Useful "Known" Facts

$$
\int\ln x=x\ln x+x+c\quad\text{(integral of a natural logarithm)}
$$
$$
\int (u) dv=uv-\int (v) du\quad\text{(integration by parts)}
$$

#### 1. Classification of Differential Equations

1. **Order**: The highest derivative present in the equation.
	1. Example: $\frac{d^2y}{dx^2} + 3\frac{dy}{dx} + 2y = 0$ is a second-order DE.
2. **Linearity**:
	1. **Linear**: Can be expressed in the form $a_n(x)y^{(n)} + a_{n-1}(x)y^{(n-1)} + \ldots + a_1(x)y' + a_0(x)y = g(x)$.
	2. **Non-linear**: Contains products (or powers) of the function, or its derivatives.
3. **Constant Coefficients**: Coefficients of the derivatives are constants.
	1. Example: $y'' + 5y' + 6y = 0$.
4. **Ordinary vs. Partial**:
	1. **Ordinary Differential Equations (ODEs)**: Involves functions of a single variable and their derivatives.
	2. **Partial Differential Equations (PDEs)**: Involves functions of multiple variables and their partial derivatives.
5. **Homogeneous vs. Non-Homogeneous**:
	1. **Homogeneous**: $g(x) = 0$.
	2. **Non-Homogeneous**: $g(x) \neq 0$.
6. **Autonomous vs. Non-Autonomous**:
	1. **Autonomous**: Slope function, e.g. $\frac{dy}{dx}$, does not rely on the independent variable, i.e. $\frac{dy}{dx}=f(y)$.
	2. **Non-Autonomous**: Slope function, e.g. $\frac{dy}{dx}$, relies on the independent variable, i.e. $\frac{dy}{dx}=f(x,y)$, for example relying on time.

#### 2. Critical Points

1. **Finding Critical Points**:
	1. Set the first derivative $\frac{dy}{dx} = 0$ and solve for $x$.
2. **Stability**:
	1. **Stable**: If $\frac{dy}{dx}$ changes from positive to negative, or $\frac{d^{2}y}{dx^{2}}<0$, or two trajectories on a phase portrait go towards the critical point.
	2. **Unstable**: If $\frac{dy}{dx}$ changes from negative to positive, or $\frac{d^{2}y}{dx^{2}}>0$, or two trajectories on a phase portrait go away from the critical point.
3. **Phase Portrait**:
	1. **Definition**: Graphical representation of trajectories to help find stability of critical points.
	2. **Method**:
		1. Divide the $xy$-plane into regions separated by the critical points, e.g. for $\frac{dy}{dx}=y(a-bx)$ then three regions: $(-\infty,0)$, $(0,\frac{a}{b})$, and $(\frac{a}{b},\infty)$.
		2. Declare each region as increasing or decreasing, i.e. $\frac{dy}{dx}<0$ is decreasing and $\frac{dy}{dx}>0$ is increasing.
		3. The phase diagram then represents this graphically: arbitrary curves going up or down in each region. These are *asymptotic towards the critical points* (since the critical points are neither increasing or decreasing by definition).
		   ![[../../../../../Auto-Generated/Attachments/Pasted image 20241119161040.png]]

#### 3. Solving Differential Equations

1. **Representing Solutions**:
	1. Can use a **direction graph** to represent a family of solutions, e.g. $y=x+c$.
	2. Plot trivial solution, $c=0$, then plot other values of $c$ as arrows.
2. **Exact Solutions**:
	1. Use **boundary values** (conditions) at specific points, i.e. $y(a)=b$.
	2. Substitute in each variable and solve for parameters, e.g. $c,c_{1},c_{2},...$.
3. **First-Order Solutions**:
	1. If in the form $\frac{dy}{dx}+P(x)y=Q(x)$...
		1. Find integrating factor $\mu(x) = e^{\int P(x)dx}$.
		2. Multiply equation by integrating factor, then simplify to $\frac{d}{dx}(y\mu(x))=Q(x)\mu(x)$ using the concept of reverse derivatives.
		3. Solve for $y$.
	2. If separable...
		1. Rearrange to isolate each variable, i.e. $\frac{1}{g(y)}dy = f(x)dx$ which is equivalent to $\int\frac{1}{g(y)}dy = \int f(x)dx$.
4. **Second-Order Solutions**:
	1. If constant coefficients, then the solution is given by the sum of the complimentary and particular functions.
		1. Complimentary function, $y_{c}$, focuses on the left-side of the equation...
			1. By assuming $y=e^{kx}$, find **characteristic equation** by substituting into original equation $y$: $y^{\prime}=ke^{kx}$ and $y^{\prime\prime}=k^{2}e^{kx}$.
			2. After simplifying, left with a quadratic in $k$: solve.
			3. Final **complimentary function** $y_{c}$ is the sum of solutions using the **principle of superposition**:
				1. **Repeated** values of $k$: multiply one solution by $x$, i.e. $y_{c}=y_{1}+xy_{1}$.
				2. **Distinct** values of $k$: sum two solutions, i.e. $y_{c}=y_{1}+y_{2}$.
				3. If **complex** conjugates such that $k=R\pm iQ$ then $y_{c}=e^{Rx}(c_{1}\cos(Qx)+c_{2}\sin(Qx))$, a simplification of distinct values.
		2. Particular function, $y_{p}$, focuses on the right-side of the equation...
			1. Form of solution is the same as the equation given, i.e.
				1. **Polynomial**: $\text{RHS}=a_{n}x^{n}+a_{n-1}x^{n-1}+\ldots+a_{1}x+a_{0}$ gives $y_{p}=Ax^{n}+Bx^{n-1}+\ldots+Cx+D$.
				2. **Exponential**: $\text{RHS}=e^{kx}$ gives $y_{p}=Ae^{kx}$.
				3. **Sine and Cosine**: $\text{RHS}=a_{1}\sin(kx)+a_{2}\cos(kx)$ gives $y_{p}=A\sin(kx)+B\cos(kx)$.
				4. **Other Functions**: $\text{RHS}=f(x)$ gives $y_{p}=Af(x)$, considering the domain, or just use **variation of parameters**.
				5. **Combination**: Sum of all cases present.
				6. ==**IMPORTANT NOTE**: If similar terms on both sides of original equation $y$, then multiply by factors of $x$ until distinct to ensure linear independence==.
			2. Differentiate the assumed $y_{p}$ to give $y^{\prime}$ and $y^{\prime\prime}$ and substitute into original $y$.
			3. Compare coefficients of powers of $x$ between substituted equation and assumed $y_{p}$ to form simultaneous equations, solved with Gauss-Jordan elimination.
		3. Find, simplifying if possible, $y=y_{c}+y_{p}$ as the final solution.
	2. If non-constant coefficients, then the solution can only be found with **variation of parameters**...
		1. Complimentary function, $y_{c}$, focuses on the left-side of the equation...
			1. Solutions should be given, unless in the form $ax^{2} \frac{d^{2}x}{dy^{2}}+bx \frac{dy}{dx}+cy=\ldots$, a **Cauchy-Euler equation**.
			2. By assuming $y=x^{m}$, find **characteristic equation** by substituting into original equation $y$: $y^{\prime}=mx^{m-1}$ and $y^{\prime\prime}=m(m-1)x^{m-2}$.
			2. After simplifying, left with a quadratic in $m$: solve.
			3. Final **complimentary function** $y_{c}$ is the sum of solutions using the **principle of superposition**:
				1. **Repeated** values of $m$: multiply one solution by $\ln x$, i.e. $y_{c}=y_{1}+y_{1}\ln x$.
				2. **Distinct** values of $m$: sum two solutions, i.e. $y_{c}=y_{1}+y_{2}$.
				3. If **complex** conjugates such that $m=R\pm iQ$ then $y_{c}=x^{R}(c_{1}\cos(Q\ln x)+c_{2}\sin(Q\ln x))$, a simplification of distinct values.
		2. Particular function, $y_{p}$, focuses on the right-side of the equation...
			1. Ensure equation in standard form $f(x)=\text{RHS}$, if Cauchy-Euler then $f(x)=\frac{\text{RHS}}{x^{2}}$.
			2. First find the **Wronskian** $W=W(y_{1},y_{2})=y_{1}y_{2}^{\prime} - y_{2}y_{1}^{\prime}$ using $y_{1}$, $y_{2}$ from finding $y_{c}$.
			3. Then find the variable parameters $u_{1}=-\int\frac{y_{2}f(x)}{W}$ and $u_{2}=\int\frac{y_{1}f(x)}{W}$.
			4. Thus particular solution $y_{p}=u_{1}y_{1}+u_{2}y_{2}$. *Note: this can be used instead of undetermined coefficients, too, i.e. if a confusing function*.
		3. Find, simplifying if possible, $y=y_{c}+y_{p}$ as the final solution.

#### 4. Fourier Series and Integrals

1. **Understanding Fourier Series**:
   - **Definition**: A Fourier series represents a periodic function as a sum of sine and cosine functions. It is particularly useful for solving problems involving periodic boundary conditions.
   - **Formulas**:
     - The Fourier series of a function \( f(x) \) defined on the interval \( [-L, L] \) is given by:
       \[
       f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
       \]
     - Coefficients are calculated as:
       \[
       a_0 = \frac{1}{L} \int_{-L}^{L} f(x) \, dx
       \]
       \[
       a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) \, dx
       \]
       \[
       b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin\left(\frac{n\pi x}{L}\right) \, dx
       \]

2. **Steps to Solve Fourier Series Problems**:
   - **Identify the Function**: Determine the function \( f(x) \) and its interval of definition. Check if it is periodic.
   - **Calculate Coefficients**:
     - Start with \( a_0 \) to find the average value of the function over the interval.
     - Calculate \( a_n \) and \( b_n \) using integration. Use integration by parts if necessary, especially for products of polynomials and trigonometric functions.
   - **Construct the Series**: Combine the coefficients into the Fourier series representation.
   - **Check for Convergence**: Ensure that the series converges to the function at points of continuity and converges to the average of the left and right limits at points of discontinuity.

3. **Using Fourier Series in Differential Equations**:
   - **Formulate the Problem**: Identify the differential equation and the non-homogeneous term \( f(x) \).
   - **Find the Fourier Series of \( f(x) \)**: Use the steps outlined above to derive the Fourier series for the non-homogeneous term.
   - **Solve the Homogeneous Equation**: Find the complementary solution \( y_c \) by solving the associated homogeneous equation.
   - **Particular Solution**: Use the Fourier series to express the particular solution \( y_p \). Substitute the series into the differential equation and solve for the coefficients.
   - **Combine Solutions**: The general solution is given by:
     \[
     y = y_c + y_p
     \]

4. **Common Pitfalls to Avoid**:
   - **Incorrect Interval**: Ensure that the interval for integration matches the defined interval of the function.
   - **Miscalculating Coefficients**: Double-check integration limits and calculations for \( a_n \) and \( b_n \).
   - **Ignoring Discontinuities**: Be aware of how discontinuities affect convergence and the representation of the function.
   - **Forgetting Boundary Conditions**: When solving differential equations, always consider any given boundary conditions to find specific solutions.

5. **Practice Problems**:
   - Regularly practice problems of varying difficulty to strengthen your understanding of Fourier series and their applications in differential equations.
   - Review examples from textbooks or past exams to familiarize yourself with common types of problems.

## Simple Sudoku

...

---

Feel free to adjust any sections or add more specific examples as needed!
[Timestamp: 2024/12/02 18:24:12]

**user**: Can you simplify this section to fit inside of section 0?

#### 4. Validity of Solutions

1. **Existence and Uniqueness Theorem**:
	1. If $f(x, y)$ and $\frac{\partial f}{\partial y}$ are continuous in a region, then there exists a unique solution through any point in that region.
2. **Interval of Validity**:
	1. The solution is valid in an interval where the coefficients of the DE are continuous and the initial conditions are satisfied.
3. **Singular Points**:
	1. Points where the DE or its coefficients are not defined can limit the validity of solutions.
[Timestamp: 2024/12/02 18:26:08]

**ai**: Sure! Here’s a simplified version of the "Validity of Solutions" section that fits within Section 0 of your cheat sheet:

---

#### 0. Useful "Known" Facts

...

#### Validity of Solutions

1. **Existence and Uniqueness**: If \( f(x, y) \) and \( \frac{\partial f}{\partial y} \) are continuous in a region, there exists a unique solution through any point in that region.
2. **Interval of Validity**: The solution is valid where the coefficients of the DE are continuous and initial conditions are satisfied.
3. **Singular Points**: Points where the DE or its coefficients are undefined can limit the validity of solutions.

---

Feel free to integrate this into your cheat sheet!
[Timestamp: 2024/12/02 18:26:10]

**user**: Can you re-write this:

1. **Understanding Fourier Series**:
   - **Definition**: A Fourier series represents a periodic function as a sum of sine and cosine functions. It is particularly useful for solving problems involving periodic boundary conditions.
   - **Formulas**:
     - The Fourier series of a function $f(x)$ defined on the interval $[-L, L]$ is given by:
       $$
       f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
       $$
     - Coefficients are calculated as:
       $$
       a_0 = \frac{1}{L} \int_{-L}^{L} f(x) \, dx
       $$
       $$
       a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) \, dx
       $$
       $$
       b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin\left(\frac{n\pi x}{L}\right) \, dx
       $$

2. **Steps to Solve Fourier Series Problems**:
   - **Identify the Function**: Determine the function $f(x)$ and its interval of definition. Check if it is periodic.
   - **Calculate Coefficients**:
     - Start with $a_0$ to find the average value of the function over the interval.
     - Calculate $a_n$ and $b_n$ using integration. Use integration by parts if necessary, especially for products of polynomials and trigonometric functions.
   - **Construct the Series**: Combine the coefficients into the Fourier series representation.
   - **Check for Convergence**: Ensure that the series converges to the function at points of continuity and converges to the average of the left and right limits at points of discontinuity.

3. **Using Fourier Series in Differential Equations**:
   - **Formulate the Problem**: Identify the differential equation and the non-homogeneous term $f(x)$.
   - **Find the Fourier Series of $f(x)$**: Use the steps outlined above to derive the Fourier series for the non-homogeneous term.
   - **Solve the Homogeneous Equation**: Find the complementary solution $y_c$ by solving the associated homogeneous equation.
   - **Particular Solution**: Use the Fourier series to express the particular solution $y_p$. Substitute the series into the differential equation and solve for the coefficients.
   - **Combine Solutions**: The general solution is given by:
     $$
     y = y_c + y_p
     $$


to align more with [[MTH2001 Algebraic Structures Cheat Sheet]]'s style?
[Timestamp: 2024/12/02 18:32:55]

**ai**: Here’s a re-written version of the Fourier series section to align with the style of the [[MTH2001 Algebraic Structures Cheat Sheet]]:

---

### 4. Fourier Series and Differential Equations

#### 0. Understanding Fourier Series

- **Definition**: A Fourier series expresses a periodic function as a sum of sine and cosine functions, useful for problems with periodic boundary conditions.
- **Formulas**:
  - For a function \( f(x) \) defined on the interval \( [-L, L] \):
    $$
    f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
    $$
  - Coefficients are calculated as:
    $$
    a_0 = \frac{1}{L} \int_{-L}^{L} f(x) \, dx
    $$
    $$
    a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) \, dx
    $$
    $$
    b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin\left(\frac{n\pi x}{L}\right) \, dx
    $$

#### 1. Steps to Solve Fourier Series Problems

- **Identify the Function**: Determine \( f(x) \) and its interval. Check for periodicity.
- **Calculate Coefficients**:
  - Start with \( a_0 \) for the average value over the interval.
  - Use integration (integration by parts if needed) to find \( a_n \) and \( b_n \).
- **Construct the Series**: Combine coefficients into the Fourier series representation.
- **Check for Convergence**: Ensure the series converges to the function at points of continuity and to the average at discontinuities.

#### 2. Using Fourier Series in Differential Equations

- **Formulate the Problem**: Identify the differential equation and the non-homogeneous term \( f(x) \).
- **Find the Fourier Series of \( f(x) \)**: Derive the Fourier series for the non-homogeneous term using the steps above.
- **Solve the Homogeneous Equation**: Determine the complementary solution \( y_c \) by solving the associated homogeneous equation.
- **Particular Solution**: Use the Fourier series to express the particular solution \( y_p \). Substitute into the differential equation and solve for coefficients.
- **Combine Solutions**: The general solution is given by:
  $$
  y = y_c + y_p
  $$

---

This format maintains consistency with the style of the algebraic structures cheat sheet while clearly presenting the information on Fourier series and their application in differential equations. Feel free to adjust any specific wording or details as needed!
[Timestamp: 2024/12/02 18:33:03]

**user**: That's good! Can you add the informal/formal definitions bit?
[Timestamp: 2024/12/02 18:33:17]

**ai**: Certainly! Here’s the updated section with informal and formal definitions included for the Fourier series and differential equations:

---

### 4. Fourier Series and Differential Equations

#### 0. Understanding Fourier Series

- **Informal Definition**: A Fourier series is a way to break down a periodic function into a sum of simple sine and cosine waves, making it easier to analyze and solve problems involving periodic behavior.
- **Formal Definition**: A Fourier series expresses a periodic function \( f(x) \) defined on the interval \( [-L, L] \) as:
  $$
  f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
  $$
  where the coefficients are calculated as:
  $$
  a_0 = \frac{1}{L} \int_{-L}^{L} f(x) \, dx
  $$
  $$
  a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) \, dx
  $$
  $$
  b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin\left(\frac{n\pi x}{L}\right) \, dx
  $$

#### 1. Steps to Solve Fourier Series Problems

- **Identify the Function**: Determine \( f(x) \) and its interval. Check for periodicity.
- **Calculate Coefficients**:
  - Start with \( a_0 \) for the average value over the interval.
  - Use integration (integration by parts if needed) to find \( a_n \) and \( b_n \).
- **Construct the Series**: Combine coefficients into the Fourier series representation.
- **Check for Convergence**: Ensure the series converges to the function at points of continuity and to the average at discontinuities.

#### 2. Using Fourier Series in Differential Equations

- **Informal Definition**: Fourier series can be used to solve differential equations by expressing non-homogeneous terms as sums of sine and cosine functions, allowing for easier integration and manipulation.
- **Formal Definition**: In the context of a differential equation of the form \( y'' + p(x)y' + q(x)y = f(x) \), where \( f(x) \) can be expressed as a Fourier series, the general solution can be represented as:
  $$
  y = y_c + y_p
  $$
  where \( y_c \) is the complementary solution obtained from the homogeneous equation, and \( y_p \) is the particular solution derived from the Fourier series of \( f(x) \).

- **Formulate the Problem**: Identify the differential equation and the non-homogeneous term \( f(x) \).
- **Find the Fourier Series of \( f(x) \)**: Derive the Fourier series for the non-homogeneous term using the steps above.
- **Solve the Homogeneous Equation**: Determine the complementary solution \( y_c \) by solving the associated homogeneous equation.
- **Particular Solution**: Use the Fourier series to express the particular solution \( y_p \). Substitute into the differential equation and solve for coefficients.
- **Combine Solutions**: The general solution is given by:
  $$
  y = y_c + y_p
  $$

---

This version includes both informal and formal definitions for clarity and consistency. Let me know if you need any further adjustments!
[Timestamp: 2024/12/02 18:33:27]

**user**: Can you expand on the convergence bit? And just simplify this section into being about simplifying nonhomogenous equations, rather than the solving bits afterwards (if it's just repeating early bits of the cheat sheet)
[Timestamp: 2024/12/02 18:42:10]

**ai**: Sure! Here’s the revised section focusing on simplifying non-homogeneous equations using Fourier series, with an expanded explanation on convergence:

---

### 4. Fourier Series and Non-Homogeneous Differential Equations

#### 0. Understanding Fourier Series

- **Informal Definition**: A Fourier series is a way to break down a periodic function into a sum of simple sine and cosine waves, making it easier to analyze and solve problems involving periodic behavior.
- **Formal Definition**: A Fourier series expresses a periodic function \( f(x) \) defined on the interval \( [-L, L] \) as:
  $$
  f(x) = \frac{a_0}{2} + \sum_{n=1}^{\infty} a_n \cos\left(\frac{n\pi x}{L}\right) + \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right)
  $$
  where the coefficients are calculated as:
  $$
  a_0 = \frac{1}{L} \int_{-L}^{L} f(x) \, dx
  $$
  $$
  a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos\left(\frac{n\pi x}{L}\right) \, dx
  $$
  $$
  b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin\left(\frac{n\pi x}{L}\right) \, dx
  $$

#### 1. Simplifying Non-Homogeneous Differential Equations

- **Formulate the Problem**: Identify the non-homogeneous differential equation of the form \( y'' + p(x)y' + q(x)y = f(x) \), where \( f(x) \) is the non-homogeneous term.

- **Using Fourier Series**: To simplify the non-homogeneous term \( f(x) \):
  - **Find the Fourier Series of \( f(x) \)**: Derive the Fourier series representation of \( f(x) \) using the formulas provided above. This allows you to express \( f(x) \) as a sum of sine and cosine functions, which can be easier to work with in the context of differential equations.

- **Convergence**:
  - **Pointwise Convergence**: The Fourier series converges to \( f(x) \) at points where \( f(x) \) is continuous. At points of discontinuity, the series converges to the average of the left-hand and right-hand limits.
  - **Uniform Convergence**: If \( f(x) \) is piecewise continuous and has a finite number of discontinuities, the Fourier series converges uniformly to \( f(x) \) on the interval.
  - **Implications for Differential Equations**: When using Fourier series to simplify non-homogeneous terms, ensure that the series converges appropriately. This guarantees that the solutions derived from the series will accurately reflect the behavior of the original differential equation.

---

This version focuses on the use of Fourier series for simplifying non-homogeneous differential equations and provides a more detailed explanation of convergence. Let me know if you need any further modifications!
[Timestamp: 2024/12/02 18:42:18]