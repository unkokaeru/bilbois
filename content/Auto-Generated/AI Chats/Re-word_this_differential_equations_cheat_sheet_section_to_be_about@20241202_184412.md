---
epoch: 1733165052426
modelKey: gpt-4o-mini|openai
tags:
  - copilot-conversation
---

**user**: Re-word this differential equations cheat sheet section to be about the complementary function then the particular function, instead of constant/non-constant coeffs (although still suggest what methods to use):

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
[Timestamp: 2024/12/02 18:44:12]

**ai**: Here’s a reworded version of the differential equations cheat sheet section focusing on the complementary function and the particular function:

---

4. **Second-Order Solutions**:
   1. The general solution to a second-order differential equation is the sum of the complementary function and the particular function.
      1. **Complementary Function** ($y_{c}$):
         - The complementary function addresses the homogeneous part of the equation.
         - To find $y_{c}$, assume a solution of the form $y=e^{kx}$ and substitute into the original equation to derive the **characteristic equation**: 
           - From $y^{\prime}=ke^{kx}$ and $y^{\prime\prime}=k^{2}e^{kx}$, simplify to obtain a quadratic in $k$ and solve for $k$.
         - The final complementary function $y_{c}$ is constructed using the **principle of superposition**:
           1. For **repeated** roots of $k$: multiply one solution by $x$, resulting in $y_{c}=y_{1}+xy_{1}$.
           2. For **distinct** roots of $k$: sum the solutions, yielding $y_{c}=y_{1}+y_{2}$.
           3. For **complex** conjugate roots ($k=R\pm iQ$): the complementary function takes the form $y_{c}=e^{Rx}(c_{1}\cos(Qx)+c_{2}\sin(Qx))$, which simplifies the case of distinct roots.
      2. **Particular Function** ($y_{p}$):
         - The particular function addresses the non-homogeneous part of the equation.
         - The form of $y_{p}$ should match the right-hand side (RHS) of the equation:
           1. For a **polynomial** RHS: $y_{p}=Ax^{n}+Bx^{n-1}+\ldots+Cx+D$.
           2. For an **exponential** RHS: $y_{p}=Ae^{kx}$.
           3. For **sine and cosine** terms: $y_{p}=A\sin(kx)+B\cos(kx)$.
           4. For **other functions**: $y_{p}=Af(x)$, considering the domain, or apply **variation of parameters**.
           5. For a **combination** of terms: sum all applicable cases.
           6. **IMPORTANT NOTE**: If terms on both sides of the original equation are similar, multiply by factors of $x$ until they are distinct to ensure linear independence.
         - Differentiate the assumed $y_{p}$ to obtain $y^{\prime}$ and $y^{\prime\prime}$, then substitute these into the original equation.
         - Compare coefficients of powers of $x$ between the substituted equation and the assumed $y_{p}$ to form simultaneous equations, which can be solved using methods like Gauss-Jordan elimination.
      3. Finally, combine the results to find the overall solution: $y=y_{c}+y_{p}$.
   2. If the coefficients are non-constant, the solution can only be found using **variation of parameters**:
      1. **Complementary Function** ($y_{c}$):
         - Solutions should be derived unless the equation is in the form of a **Cauchy-Euler equation**: $ax^{2} \frac{d^{2}y}{dx^{2}}+bx \frac{dy}{dx}+cy=\ldots$.
         - Assume a solution of the form $y=x^{m}$, substitute into the original equation to find the **characteristic equation**: $y^{\prime}=mx^{m-1}$ and $y^{\prime\prime}=m(m-1)x^{m-2}$.
         - Simplify to obtain a quadratic in $m$ and solve.
         - The final complementary function $y_{c}$ is constructed using the **principle of superposition**:
           1. For **repeated** roots of $m$: multiply one solution by $\ln x$, resulting in $y_{c}=y_{1}+y_{1}\ln x$.
           2. For **distinct** roots of $m$: sum the solutions, yielding $y_{c}=y_{1}+y_{2}$.
           3. For **complex** conjugate roots ($m=R\pm iQ$): the complementary function takes the form $y_{c}=x^{R}(c_{1}\cos(Q\ln x)+c_{2}\sin(Q\ln x))$, simplifying the case of distinct roots.
      2. **Particular Function** ($y_{p}$):
         - Ensure the equation is in standard form $f(x)=\text{RHS}$; if it’s a Cauchy-Euler equation, use $f(x)=\frac{\text{RHS}}{x^{2}}$.
         - First, compute the **Wronskian** $W=W(y_{1},y_{2})=y_{1}y_{2}^{\prime} - y_{2}y_{1}^{\prime}$ using the solutions $y_{1}$ and $y_{2}$ from the complementary function.
         - Then, find the variable parameters: 
           - $u_{1}=-\int\frac{y_{2}f(x)}{W}dx$ and $u_{2}=\int\frac{y_{1}f(x)}{W}dx$.
         - The particular solution is then given by $y_{p}=u_{1}y_{1}+u_{2}y_{2}$. *Note: This method can also be used instead of undetermined coefficients for complex functions*.
      3. Finally, combine the results to find the overall solution: $y=y_{c}+y_{p}$.

--- 

This version emphasizes the complementary and particular functions while suggesting appropriate methods for each case.
[Timestamp: 2024/12/02 18:45:10]