## Question C1.1 (*55 total marks*)

Considering the multiplicative group $GL(2,\mathbb{R})$ and its subset $H$, such that...

$$
GL(2,\mathbb{R})=\left\{\begin{bmatrix}a & b \\ c & d\end{bmatrix}:a,b,c,d\in \mathbb{R},ad-bc\ne0\right\}
$$

$$
\text{and }H=\left\{\begin{bmatrix}a & b \\ 0 & d\end{bmatrix}:a,b,d\in \mathbb{R},ad=1\right\}
$$

### Part A (*15 marks*)

Let $A = \begin{bmatrix} a_1 & b_1 \\ 0 & d_1 \end{bmatrix}$ and $B = \begin{bmatrix} a_2 & b_2 \\ 0 & d_2 \end{bmatrix}$ be in $H$. Then, from the **One-Step Subgroup Test**, we can show that the non-empty subset $H$ is a subgroup of $GL(2,\mathbb{R})$ over matrix multiplication if...

$$
\begin{align*}
AB^{-1}&= \begin{bmatrix}a_{1} & b_{1} \\ 0 & d_{1}\end{bmatrix}\begin{bmatrix}a_{2} & b_{2} \\ 0 & d_{2}\end{bmatrix}^{-1}\\
&= \begin{bmatrix}a_{1} & b_{1} \\ 0 & d_{1}\end{bmatrix}\begin{bmatrix} \frac{d_{2}}{a_{2}d_{2}} & \frac{-b_{2}}{a_{2}d_{2}}\\
0 & \frac{a_{2}}{a_{2}d_{2}}\end{bmatrix}\\
&= \begin{bmatrix}a_{1} & b_{1} \\ 0 & d_{1}\end{bmatrix}\begin{bmatrix} \frac{1}{a_{2}} & -\frac{b_{2}}{a_{2}d_{2}}\\
0 & \frac{1}{d_{2}}\end{bmatrix}\\
&= \begin{bmatrix} \frac{a_{1}}{a_{2}} & -\frac{a_{1}b_{2}}{a_{2}d_{2}} + \frac{b_{1}}{d_{2}}\\
0 & \frac{d_{1}}{d_{2}} \end{bmatrix}\\
&= \begin{bmatrix} \frac{a_{1}}{a_{2}} & \frac{a_{2}b_{1}-a_{1}b_{2}}{a_{2}d_{2}}\\
0 & \frac{d_{1}}{d_{2}}\end{bmatrix}: \frac{a_{1}}{a_{2}}\cdot \frac{d_{1}}{d_{2}} = \frac{a_{1}d_{1}}{a_{2}d_{2}}=\frac{1}{1}\text{ by defintion}\\
&\in H
\end{align*}
$$

Therefore, because $H$ is non-empty and for all $A,B$ then $AB^{-1}\in H$, **we conclude that $H$ is a subgroup of $GL(2, \mathbb{R})$**. $\square$

### Part B (*10 marks*)

Let $P=\begin{bmatrix}1 & 2 \\ 0 & 1\end{bmatrix}\in H$ such that the mapping $f:H\to H$ is given by $f(A)=P^{-1}AP$ for each $A\in H$.

The mapping $f$ is a group homomorphism, since **it preserves the group operation**:

$$
\boxed{\begin{align*}
\forall A,B\in H,\quad f(AB)&= P^{-1}(AB)P\\
&= (P^{-1}AP)(P^{-1}BP)\text{ by associativity}\\
&= f(A)f(B)
\end{align*}}
$$

### Part C (*10 marks*)

The aforementioned mapping **is also a group isomorphism**, as it's both injective and surjective:

First, we can check injectivity by assuming $f(A) = f(B)$ for $A, B \in H$, such that...

$$
P^{-1}AP = P^{-1}BP\iff A = B\therefore f \text{ is injective}
$$

Second, we can check surjectivity by finding $A\in H:f(A)=C\in H$...

$$
\begin{align*}
f(A)&= P^{-1}AP\\
&= \begin{bmatrix}1 & -2\\
0 & 1\end{bmatrix}\begin{bmatrix}a_{1} & b_{1}\\
0 & d_{1}\end{bmatrix}\begin{bmatrix}1 & 2\\
0 & 1\end{bmatrix}\\
&= \begin{bmatrix}1 & -2\\
0 & 1\end{bmatrix}\begin{bmatrix}a_{1} & 2a_{1}+b_{1}\\
0 & d_{1}\end{bmatrix}\\
&= \begin{bmatrix}a_{1} & 2a_{1}+b_{1}-2d_{1}\\
0 & d_{1}\end{bmatrix}:a_{1}d_{1}=1\text{ by definition}\\
&\in H\therefore f\text{ is surjective}
\end{align*}
$$

$$
\boxed{\therefore \text{the mapping is a group isomorphism}}
$$

### Part D (*10 marks*)

The subgroup $H$ **isn't** an abelian subgroup because matrix multiplication is not commutative:

$$
\begin{align*}
AB=BA&\implies \begin{bmatrix} a_1 a_2 & a_1 b_2 + b_1 d_1 \\ 0 & d_1 d_2 \end{bmatrix} = \begin{bmatrix} a_2 a_1 & a_2 b_1 + b_2 d_2 \\ 0 & d_2 d_1\end{bmatrix}\\
&\implies a_1 b_2 + b_1 d_1=a_2 b_1 + b_2 d_2\\
&\iff a_{1}=a_{2},b_{1}=b_{2},d_{1}=d_{2}\\
&\therefore \text{only commutative if }A=B \text{, hence not generally abelian.}
\end{align*}
$$

### Part E (*10 marks*)

Let the subgroup $K = \left\{ \begin{bmatrix} 1 & b \\ 0 & 1 \end{bmatrix} : b \in \mathbb{R} \right\}$. Given that $K$ is a subgroup of $H$, $K$ is a normal subgroup if $\forall k\in K, h\in H$ the conjugate $hkh^{-1}$ is also in $K$.

Let $h = \begin{bmatrix} a & b \\ 0 & d \end{bmatrix} \in H$ (where $ad = 1$) and $k = \begin{bmatrix} 1 & b^{\prime} \\ 0 & 1 \end{bmatrix} \in K$...

$$
\begin{align*}
hkh^{-1}&= \begin{bmatrix}a & b\\
0 & d\end{bmatrix}\begin{bmatrix}1 & b^{\prime}\\
0 & 1\end{bmatrix}\begin{bmatrix} \frac{1}{a} & \frac{-b}{ad}\\
0 & \frac{1}{d}\end{bmatrix}\\
&= \begin{bmatrix}a & b\\
0 & d\end{bmatrix}\begin{bmatrix} \frac{1}{a} & \frac{-b+ab^{\prime}}{ad}\\
0 & \frac{1}{d}\end{bmatrix}\\
&= \begin{bmatrix}1 & \frac{ab^{\prime}}{d}\\
0 & 1\end{bmatrix}: \frac{ab^{\prime}}{d} = \frac{a}{d}b^{\prime}
\end{align*}
$$

Whilst $b^{\prime}\in \mathbb{R}$, $\frac{a}{d}$ is not always in $\mathbb{R}$, therefore the conjugate $hkh^{-1}$ is not always in $K$:

$$
\boxed{\therefore K\text{ is not a normal subgroup of }H}
$$

## Question C1.2 (*45 total marks*)

Considering the group $\mathbb{Z}_{12}$ of integers $\text{mod }12$...

### Part A (*10 marks*)

To find the order of the element $\bar{4}$ in the group $\mathbb{Z}_{12}$, we need to solve...

$$
n\cdot \bar{4}=\bar{0}\text{ in }\mathbb{Z}_{12}\iff 4n\equiv0\text{ mod }12\iff n=3\therefore\boxed{\text{the order is 3}}
$$

### Part B (*20 total marks*)

#### Part I (*10 marks*)

To find the subgroup $\langle \bar{2} \rangle$ of $\mathbb{Z}_{12}$, we compute the multiples of $\bar{2}$:

$$
\boxed{\begin{align*}
\langle \bar{2} \rangle &= \{ n \cdot \bar{2} : n \in \mathbb{Z} \} \\
&= \{ \bar{0}, \bar{2}, \bar{4}, \bar{6}, \bar{8}, \bar{10} \}
\end{align*}}
$$

#### Part II (*10 marks*)

To find the subgroup $\langle \bar{6} \rangle$ of $\mathbb{Z}_{12}$, we compute the multiples of $\bar{6}$:

$$
\boxed{\begin{align*}
\langle \bar{6} \rangle &= \{ n \cdot \bar{6} : n \in \mathbb{Z} \} \\
&= \{ \bar{0}, \bar{6} \}
\end{align*}}
$$

### Part C (*15 marks*)

We can show that the mapping $h:\mathbb{Z}_{12}\to \mathbb{Z}_{12}$, given by $h(x)=\bar{2}x$, is a group homomorphism by showing that it preserves the group operation:

$$
\begin{align*}
h(a + b) &= \bar{2}(a + b):a,b\in \mathbb{Z}_{12}\\
&= \bar{2}a + \bar{2}b\\
&= h(a) + h(b)\therefore \boxed{h\text{ is a group homomorphism}}
\end{align*}
$$

We can then find its kernel by definition:

$$
\boxed{\begin{align*}
\ker(h) &= \{ x \in \mathbb{Z}_{12} : h(x) = \bar{0} \}\\
&= \{ \bar{2}x = \bar{0}\}\\
&= \{ 2x \equiv 0 \text{ mod } 12 \}\\
&= \{ x \equiv 0 \text{ mod } 6 \}\\
&= \{ \bar{0}, \bar{6}\}
\end{align*}}
$$
