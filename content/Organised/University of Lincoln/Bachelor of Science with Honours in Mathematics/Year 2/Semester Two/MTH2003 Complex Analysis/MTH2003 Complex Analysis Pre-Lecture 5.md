
- Lecture: [[MTH2003 Complex Analysis Lecture 5]] ([[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Pre-Lecture 5 NOTES.pdf|Provided Notes]]).

**Note** that the following is implied in practical questions and additional work completed, but should still be explicitly mentioned in later note-refining steps:
- Cauchy-Riemann in Polar Form.
- Exponential and Logarithmic Functions.
- Multivariable Functions.

---

## Laplace's Equation (testing harmony)

Let $u:D\to \mathbb{R}$, where $D$ is an open subset of $\mathbb{R}^{2}$ and $u(x,y)$ is twice differentiable. The function is called a **harmonic function** if...

$$
\nabla^{2}u=\frac{\partial^{2} u}{\partial x^{2}}+\frac{\partial^{2} u}{\partial y^{2}}=0
$$

where $\nabla^{2}u$ is called the **Laplacian** of $u$ and the entire equation is called **Laplace's Equation**; this equation arises naturally in a multitude of physical problems, e.g. heat conduction and fluid flow.

We can hence use this equation to prove lemmas to do with harmonics, like demonstrating that analytic complex functions are made of harmonic parts.

## Contour Integral (complex integration)

- The Contour Integral.
- Properties.
- Arc Length of a Curve.

In the complex plane, integration is similar to the real place but takes place along a **contour** (a continuous path $\gamma:[a,b]\to \mathbb{C}$) which is then split into subintervals using the fact that we can add/split paths. *Contours are essentially perimeters or outlines in the complex plane*.

The integral along one of these piecewise contours $\gamma$ (of a continuous function $f(z)$) is defined to be...

$$
\int_{\gamma}f(z)dz=\int_{a}^{b}f(\gamma(t))\gamma^{\prime}(t)dt
$$

where we have converted the integral over $z$ into an integral over $t$. This integral has similar properties to real integrals, combined with the properties of paths (e.g. opposite paths and triangle inequality related properties).

This is the **contour integral**, and can be used to find arc lengths of a curve (i.e. length of a path), too. Let the path  $\gamma:[a,b]\to \mathbb{C}$, where $\gamma(t)=x(t)+iy(t)$, have a length defined by...

$$
L(\gamma)\int_{a}^{b}|\gamma^{\prime}(t)|dt=\int_{a}^{b}\sqrt{(x^{\prime}(t))^{2}+(y^{\prime}(t))^{2}}dt
$$

Trivially, this can be shown to find the arc length of the unit circle to be $2\pi$.