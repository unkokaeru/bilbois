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
		   ![[../Auto-Generated/Attachments/Pasted image 20241119161040.png]]

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

#### 4. Validity of Solutions

1. **Existence and Uniqueness Theorem**:
	1. If $f(x, y)$ and $\frac{\partial f}{\partial y}$ are continuous in a region, then there exists a unique solution through any point in that region.
2. **Interval of Validity**:
	1. The solution is valid in an interval where the coefficients of the DE are continuous and the initial conditions are satisfied.
3. **Singular Points**:
	1. Points where the DE or its coefficients are not defined can limit the validity of solutions.

## Simple Sudoku

...
