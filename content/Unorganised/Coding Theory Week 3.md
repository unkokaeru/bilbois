## Recap

![[../Organised/Mathematics/Definitions/Definition of a Solid Sphere|Definition of a Solid Sphere]]

![[../Organised/Mathematics/Definitions/Definition of Distance Theorem|Definition of Distance Theorem]]

![[Definition of Parameters of a Code]]

![[Definition of the Main Problem of Coding Theory]]

## How "big" are solid spheres?

In Euclidean space, we calculate the volume of a solid sphere $S_{\epsilon}(p)$ of radius $\epsilon$ in $n$-dimensional Euclidean space $\mathbb{R}^{n}$ has a formula:
$$
\text{vol}(S_{\epsilon}(p))= \frac{\pi^{\frac{n}{2}}}{\tau(\frac{n}{2}+1)}\epsilon^{n}
$$
where $\tau()$ is a special function such that $\tau(\frac{1}{2}+1)=\frac{\sqrt{\pi}}{2}$, $\tau(\frac{2}{2}+1)=1$, $\tau(\frac{3}{2}+1)=\frac{3\sqrt{\pi}}{4}$. For instance, on two and three dimensions we get familiar formulae $\pi \epsilon^{2}$ and $\frac{4}{3}\pi \epsilon^{3}$.

We want a similar "volume" for a space of words with Hamming distance: $\text{vol}(S_{\epsilon}(w))=|S_{\epsilon}(w)|$.

![[Definition of the Volume of a Solid Hamming Distance Sphere]]

This formula can be proven directly proven with basic logic. Naturally, this formula leads to further geometric use cases for Hamming Distance, as we can now treat it like any solid sphere.

SPHERE PACKING BOUND SOLUTION TO MAIN PROBLEM OF CODING THEORY
PERFECT CODES AND THEIR PROPERTIES