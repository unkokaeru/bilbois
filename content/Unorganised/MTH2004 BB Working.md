**FINAL ANSWERS**:

1. B
2. ABC
3. AB
4. C

---

$$
y^{\prime\prime}+4y=7\sin(2x)
$$

$$
k^{2}+4=0:k=\pm2i\implies \boxed{y_{c}=c_{1}\cos(2x)+c_{2}\sin(2x)}
$$

$$
\begin{align*}
y&= Ax\sin(2x)+Bx\cos(2x)\\
\implies y^{\prime}&= (B+2Ax)\cos(2x)+(A-2Bx)\sin(2x)\\
\implies y^{\prime\prime}&=4(A-Bx)\cos(2x)-4(B+Ax)\sin(2x)
\end{align*}
$$

$$
(4A)\cos(2x)+(-4B-8Ax)\sin(2x)=(0)\cos(2x)+(7)\sin(2x)
$$

$$
\begin{cases}
A=0 \\
B=-\frac{7}{4}
\end{cases}\implies\boxed{y_{p}=-\frac{7}{4}x\cos(2x)}
$$

$$
\boxed{y=c_{1}\cos(2x)+c_{2}\sin(2x)-\frac{7}{4}x\cos(2x)}
$$

---

$$
y^{\prime\prime}-y^{\prime}-30y=0
$$

$$
k^{2}-k-30=0=(k+5)(k-6):k=-5, 6\implies \boxed{y_{c}=c_{1}e^{-5x}+c_{2}e^{6x}}
$$

$$
W=6e^{x}+5e^{x}\iff \boxed{\text{Wronskian}=11e^{x}}
$$

---

$$
y^{\prime\prime}+y=\sin^{2}x
$$

$$
k^{2}+1=0:k=\pm i\implies \boxed{y_{c}=c_{1}\sin x+c_{2}\cos x}
$$

$$
W=-(\sin^{2} x+\cos^{2}x)=-1,f(x)=\sin^{2}x
$$

$$
u_{1}=-\int\frac{y_{2}f(x)}{W}=\int y_{2}f(x)=(\cos x)(\sin^{2}x)
$$

$$
u_{2}=\int\frac{y_{1}f(x)}{W}=-\int y_{1}f(x)=-\sin^{3}x
$$

$$
\boxed{y_{p}=0}
$$

**CORRECTION**:

$$
\begin{align*}
y_{p}&= \frac{2}{3}-\frac{1}{3}\sin^{2}x\\
&= \frac{2}{3}-\frac{1}{3}(1-\cos^{2}x)\\
&= \frac{1}{3}+\frac{1}{3}\cos^{2}x
\end{align*}
$$

---

$$
x^{2}y^{\prime\prime}+11xy^{\prime}+9y=0:\text{Cauchy-Euler}
$$

$$
m^{2}+10m+9=0=(m+9)(m+1):m=-9,-1\implies \boxed{y_{c}=c_{1}x^{-9}+c_{2}x^{-1}}
$$

$$
W=-x^{-11}+9x^{-11}=8x^{-11},f(x)=0
$$

$$
\begin{align*}
y_{p}&= y_{2}\int\frac{y_{1}f(x)}{W}-y_{1}\int\frac{y_{2}f(x)}{W}\\
&= x^{-1}\int\frac{x^{-9}f(x)}{8x^{-11}}-x^{-9}\int\frac{x^{-1}f(x)}{8x^{-11}}\\
&= 0
\end{align*}
$$
