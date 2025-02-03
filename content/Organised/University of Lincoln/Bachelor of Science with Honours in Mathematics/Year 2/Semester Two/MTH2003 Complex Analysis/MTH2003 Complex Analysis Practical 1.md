- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 1.pdf|Practical Sheet]].
- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 1 SOLUTIONS.pdf|Practical Solutions]].

## Question 1

The complex numbers $-1,-i,1+i,\frac{1}{2}+\sqrt{\frac{3}{2}i},\frac{1}{2}-\sqrt{\frac{3}{2}i}$ have corresponding exponential forms...

$$
\begin{align*}
-1&= re^{i\theta}\\
&= \boxed{e^{i\pi}}\quad \text{by Euler's Identity, or as a trivial/principal answer}
\end{align*}
$$

$$
\begin{align*}
-i&= re^{i\theta}:r=\sqrt{(0)^{2}+(-1)^{2}}=1,\theta=\arctan \frac{-1}{1}=\frac{3\pi}{2}\\
&= \boxed{e^{i\frac{3\pi}{2}}}
\end{align*}
$$

$$
\begin{align*}
1+i&= re^{i\theta}:r=\sqrt{(1)^{2}+(1)^{2}}=\sqrt{2},\theta=\arctan \frac{1}{1}=\frac{\pi}{4}\\
&= \boxed{\sqrt{2}e^{i\frac{\pi}{4}}}
\end{align*}
$$

$$
\begin{align*}
\frac{1}{2}+ \frac{\sqrt{3}}{2}i&= re^{i\theta}\\
&= \boxed{e^{i \frac{\pi}{3}}}
\end{align*}
$$

$$
\begin{align*}
\frac{1}{2} - \frac{\sqrt{3}}{2}i&= re^{i\theta}\\
&= \boxed{e^{-i \frac{\pi}{3}}}
\end{align*}
$$

## Question 2

The complex numbers $e^{2 + i \frac{\pi}{2}}$, $\frac{1}{i}$, $\frac{1}{1+i}$, $(1+i)^{3}$, and $|3+4i|$ have corresponding rectangular forms...

$$
\begin{align*}
e^{2 + i \frac{\pi}{2}}&= e^{2}e^{i \frac{\pi}{2}}\\
&= e^{2}\left(\cos \frac{\pi}{2}+i\sin \frac{\pi}{2}\right)\quad \text{by Euler's formula}\\
&= \boxed{e^{2}i}
\end{align*}
$$

$$
\begin{align*}
\frac{1}{i}&= \frac{1}{i} \cdot\frac{-i}{-i}\\
&= \boxed{-i}
\end{align*}
$$

$$
\begin{align*}
\frac{1}{1+i}&= \frac{1}{1+i} \cdot\frac{1-i}{1-i}\\
&= \frac{1-i}{2}\\
&= \boxed{\frac{1}{2} - \frac{1}{2}i}
\end{align*}
$$

$$
\begin{align*}
(1+i)^{3}&= 1+3i+3i^{2}+i^{3}\\
&= 1+3i-3-i\\
&= \boxed{-2+2i}
\end{align*}
$$

$$
|3+4i|=\boxed{5}
$$

*unsure on what the question means for the last one, so I assumed modulus*.

## Question 3

> Sketch the following regions in the complex plane, using full lines for boundaries that are included in the region and dashed lines for boundaries that are excluded

[[Auto-Generated/Attachments/MTH2003 Complex Analysis Practical 1.pdf#page=1&selection=44,0,54,0|MTH2003 Complex Analysis Practical 1, page 1]]

*Complete these diagrams*.

## Question 4

For any two complex numbers, $z=a+ib$ and $w=c+id$...

$$
\begin{align*}
\overline{z+w}&= \overline{(a+ib)+(c+id)}\\
&= \overline{(a+c)+i(b+d)}\\
&= (a+c)-i(b+d)\\
&= a-ib+c-id\\
&= \bar{z}+\bar{w}\quad\square
\end{align*}
$$

$$
\begin{align*}
\overline{zw}&= \overline{(a+ib)(c+id)}\\
&= \overline{ac-bd+i(ad+bc)}\\
&= ac-bd-iad-ibc\\
&= (a-ib)(c-id)\\
&= \bar{z}\bar{w}\quad\square
\end{align*}
$$

*As always, should actually prove both ways*.

## Question 5

For an arbitrary complex number $z=x+iy$...

$$
\begin{align*}
\frac{1}{2}(z+\overline{z})&= \frac{1}{2}(x+iy+x-iy)\\
&= \frac{1}{2}(2x)\\
&= x\\
&= \text{Re}(z)\quad\square
\end{align*}
$$

$$
\begin{align*}
\frac{1}{2i}(z-\overline{z})&= \frac{1}{2i}(x+iy-x+iy)\\
&= \frac{1}{2i}(2iy)\\
&= y\\
&= \text{Im}(y)\quad\square
\end{align*}
$$

*As always, should actually prove both ways*.

With the results, we can show that...

$$
\begin{align*}
2&= x+3y\\
&= \frac{1}{2}(z+\overline{z}) + \frac{3}{2i}(z-\overline{z})\\
&= \frac{1}{2}(z+\bar{z}+ \frac{3}{i}z- \frac{3}{i}\bar{z})\\
&= \frac{1-3i}{2}z + \frac{1+3i}{2}\bar{z}\\
&\boxed{\therefore4= (1-3i)z+(1+3i)\bar{z}}
\end{align*}
$$

## Question 6

To find the three cube roots of $i$, we first convert to exponential form such that $i\to e^{i \frac{\pi}{2}}$. Then...

$$
\begin{align*}
(e^{i \frac{\pi}{2}})^{\frac{1}{3}}&= (e^{i(\frac{\pi}{2}+k \pi)})^{\frac{1}{3}}:k=0,1,2\\
&= e^{\frac{i(\frac{\pi}{2}+k \pi)}{3}}\\
&= e^{i \frac{\pi}{6}},e^{i \frac{3\pi}{2}},e^{i \frac{5\pi}{6}}\\
&= \boxed{\frac{\sqrt{3}}{2} + \frac{1}{2}i, \quad -\frac{\sqrt{3}}{2} + \frac{1}{2}i, \quad -i}
\end{align*}
$$

## Question 7

Similar to question 6, we can find the following solutions (although I'll skip to the answer using [[General Solution for a Complex Root Formula]])...

$$
\begin{align*}
z^{3}=4:z_{k} &= 4^{\frac{1}{3}}\left[ \cos\left( \frac{2\pi k}{3} \right) + i \sin\left( \frac{2\pi k}{3} \right) \right]:k=0,1,2\\
&= \boxed{ \sqrt[3]{4},\ \sqrt[3]{4}\left( -\frac{1}{2} + i \frac{\sqrt{3}}{2} \right),\ \sqrt[3]{4}\left( -\frac{1}{2} - i \frac{\sqrt{3}}{2} \right) }
\end{align*}
$$

## Question 8

Given an equation $(az+b)^{3}=c$, where $a,b,c$ are real and positive constants...

$$
\begin{align*}
az+b &= c^{1/3} \left[ \cos\left( \frac{2\pi k}{3} \right) + i \sin\left( \frac{2\pi k}{3} \right) \right]:k=0,1,2\\
&= c^{\frac{1}{3}},\left(-\frac{1}{2} + i \frac{\sqrt{3}}{2}\right)c^{\frac{1}{3}},\left(-\frac{1}{2} - i \frac{\sqrt{3}}{2}\right)c^{\frac{1}{3}}
\end{align*}
$$

Which can be re-arranged for...

$$
\boxed{z=\frac{c^{\frac{1}{3}}-b}{a},\frac{\left(-\frac{1}{2} + i \frac{\sqrt{3}}{2}\right)c^{\frac{1}{3}}-b}{a},\frac{\left(-\frac{1}{2} - i \frac{\sqrt{3}}{2}\right)c^{\frac{1}{3}}-b}{a}}
$$
