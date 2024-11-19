$$
y^{\prime\prime}+11y^\prime+24y=0
$$

$$
k^{2}+11k+24=0=(k+3)(k+8):k=-8,-3 \text{ (real distinct roots)}
$$

$$
y=C_{1}e^{-8x}+C_{2}e^{-3x} \text{ by the principle of superposition}
$$
---

$$
y^{\prime\prime}+2y^{\prime}+y=0
$$

$$
k^{2}+2k+1=0=(k+1)^{2}:k=-1 \text{ (real repeated root)}
$$

$$
y=C_{1}e^{-x}+C_{2}xe^{-x} \text{ by the principle of superposition}
$$

---

$$
y^{\prime\prime}+5y^{\prime}+8y=0
$$

$$
k^{2}+5k+8=0:k= -\frac{5}{2}\pm i\frac{\sqrt{7}}{2}\text{ (complex conjugate roots)}
$$

$$
y=e^{\frac{-5x}{2}}\left(c_{1}\cos\frac{\sqrt{7}x}{2}+c_{2}\sin\frac{\sqrt{7}x}{2}\right)
$$

**Note**: there are actually complex parts of the solution, but they're ignored in favour of practicality.

---

$$
y^{\prime\prime}+3y^{\prime}+2y=x^{3}+2x
$$

$$
y=y_{\text{complimentary}}+y_{\text{particular}}
$$

$$
y_{\text{complimentary}}:k^{2}+3k+2=(k+2)(k+1)=0:k=-2,-1
$$

$$
\therefore y_\text{complimentary}=y_{c}=c_{1}e^{-x}+c_{2}e^{-2x}
$$

$$
y_\text{particular}=y_{p}:Ax^{3}+Bx^{2}+Cx+D
$$
**Note: look into other possible forms, see where it comes from actually**

$$
y_{p}^\prime=3Ax^{2}+2Bx+C
$$
$$
y_{p}^{\prime\prime}=6Ax+2B
$$

$$
\begin{align*}
x^{3}+2x&= (6Ax+2B)+3(3Ax^{2}+2Bx+C)+2(Ax^{3}+Bx^{2}+Cx+D)\\
&= (2A)x^{3}+(9A+2B)x^{2}+(6A+6B+2C)x+(2B+3C+2D)
\end{align*}
$$

$$
\begin{cases}
2A=1 \\
9A+2B=0 \\
6A+6B+2C=2 \\
2B+3C+2D=0
\end{cases}
$$

$$
\begin{bmatrix}
2 & 0 & 0 & 0 & | & 1 \\ 
9 & 2 & 0 & 0 & | & 0 \\ 
6 & 6 & 2 & 0 & | & 2 \\ 
0 & 2 & 3 & 2 & | & 0
\end{bmatrix}
$$

$$
\begin{cases}
A=\frac{1}{2} \\
B=-\frac{9}{4} \\
C=\frac{25}{4} \\
D=-\frac{57}{8}
\end{cases}
$$

$$
y=c_{1}e^{-x}+c_{2}e^{-2x}+\frac{1}{2}x^{3} - \frac{9}{4}x^{2} + \frac{25}{4}x - \frac{57}{8}
$$
