
- Lecture: [[MTH2003 Complex Analysis Lecture 6]] ([[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Pre-Lecture 6 NOTES.pdf|Provided Notes]]).
- Practical: [[MTH2003 Complex Analysis Practical 3]] ([[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 3.pdf|Practical Sheet]]).

## Finding Complex Integrals

Let $f$ is a continuous complex function, $L$ the length of the contour $C$ and $M$ the upper bound for $|f|$ on $C$, then...

$$
\left| \int_{c}f(z)dz \right|\le ML
$$

This is called the **Estimation Lemma** and can be proven directly using properties of integrals.

Further than just estimation, we can evaluate contour integrals using paths...

$$
\int_{a}^{b}f(\gamma(t))\cdot \gamma^\prime(t)dt
$$

or, by converting $z\to u+iv$...

$$
\begin{align*}
\int_{\gamma}f(z)dz&= \int_\gamma[u+iv](dx+idy)\\
&= \int_{\gamma}[(udx-vdy)+i(vdx+udy)]\\
&= \int_{\gamma}(udx-vdy)+i\int_{\gamma}(vdx+udy)
\end{align*}
$$

**For example**, to find the integral of $f(z)=z^{2}$ around the contour $c=c_{1}+c_{2}+c_{3}$, where $c_{1}:0\to1$, $c_{2}:1\to1+i$, and $c_{3}:1+i\to0$...

*insert the two aforementioned methods*.

Similarly, we can integrate $\bar{z}$ around a circular contour of radius $R$ centred on the origin, $|z|=R$...

*insert polar method, stating dependence on radius*.

And finally, we could integrate $z^{-1}$ around a circular contour of radius $R$ centred on the origin, $|z|=R$...

*insert method, stating lack of dependence on radius*.

These properties *insert explanation of why they're interesting with relation to Cauchy's Theorem*.

This Theorem however relies on another from real analysis...

## Green's Theorem

Let the real functions $P(x,y)$ and $Q(x,y)$, along with all their partial derivatives, be continuous in the closed set $R$ consisting of a **simple closed contour** $\gamma$ plus its interior. Let $\gamma$ be described in the positive (anti-clockwise) direction. Then,

$$
\oint_\gamma(Pdx+Qdx)=\iint_{R}\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dxdy
$$

which is a relationship between the line integral ($\oint_{\gamma}$) and the are integral $\iint_{R}$. Simple closed contour simply means that the curve intersect itself only at its endpoints, i.e. not a figure-eight.

This theorem basically means that the integral along the perimeter is equal to the integral of the area. With **non-simple contours**, we can split them into multiple separate simple contours, as any interior lines would be traversed in both directions, hence cancelling.

*insert proof of Green's Theorem, starting by focusing on the 2nd RHS term*.