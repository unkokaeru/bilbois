- [[../../../../../../Auto-Generated/Attachments/MTH2003 Complex Analysis Tutorial 1.pdf|Question Sheet]].

>[!NOTE] Alternative conjugate notation $z^{*}$.

### Question 1

Show that, if $z^{2}=(\bar{z})^{2},z\ne0$, then $z$ is either purely real ($y=0$) or purely imaginary ($x=0$).

$$
\begin{align*}
z^{2}&= (x+iy)^{2}\\
&= x^{2}-y^{2}+2ixy
\end{align*}
$$

$$
\begin{align*}
\bar{z}^{2}&= (x-iy)^{2}\\
&= x^{2}-y^{2}-2ixy
\end{align*}
$$

These are only equivalent if $2ixy=-2ixy\iff xy=-xy\iff xy=0$. This is only true if $x=0$ or $y=0\quad\square$.

### Question 2

Show that for any $z,w$, $z\bar{w}+\bar{z}w=2\text{Re}(z\bar{w})$...

$$
\begin{align*}
\text{LHS}&= (a+ib)(c-id)+(a-ib)(c+id)\\
&= (ac-iad+ibc+bd)+(ac+iad-ibc+bd)\\
&= 2(ac+bd)\\\\
\text{RHS}&= 2\text{Re}((a+ib)(c-id))\\
&= 2\text{Re}(ac-iad+ibc+bd)\\
&= 2(ac+bd)\\\\
&\text{LHS}=\text{RHS}\quad\square
\end{align*}
$$

### Question 3

Show that if $z + \frac{1}{z}$, then either $\text{Im}(z)=0$ or $|z|=1$...

$$
\begin{align*}
z + \frac{1}{z}&= a+ib + \frac{1}{a+ib}\\
&= a+ib + \frac{1}{a+ib} \frac{a-ib}{a-ib}\\
&= a+ib + \frac{a-ib}{a^{2}+b^{2}}\\
&= a\left(1 + \frac{1}{a^{2}+b^{2}}\right)+ib\left(1 - \frac{1}{a^{2}+b^{2}}\right)\\
...
\end{align*}
$$

### Question 4

#### Part a

Plotting $\text{Im}(i+\bar{z})=4$, we'll first simplify the equation to plot it:

$$
\begin{align*}
4&= \text{Im}(i+\bar{z})\\
&= \text{Im}(i+x-iy)\\
&= \text{Im}(x+i(1-y))\\
&= 1-y\\
\therefore y=-3
\end{align*}
$$

Plotted, this would be a horizontal line passing through $y=-3$.

#### Part b

Plotting $|z-5|=6$, we'll get a circle equation simplified such that:

$$
\begin{align*}
|(x-5)+iy|=6
\iff& (x-5)^{2}+y^{2}=36
\end{align*}
$$

Or just, by inspection, see that it'll be a circle centred at $(5,0)$ with radius $6$.

#### Part c

Plotting $\text{Re}(z+2)=-1$, simplified such that:

$$
\begin{align*}
-1 &= \text{Re}(x+iy+2)\\
&= x+2\\
\therefore x=-3
\end{align*}
$$

Which would be a vertical line at $x=-3$.

#### Part d

Plotting $\text{Re}(i\bar{z})=3$, simplified such that:

$$
\begin{align*}
3&= \text{Re}(i(x-iy))\\
&= \text{Re}(ix+y)\\
&= y\\
\therefore y=3
\end{align*}
$$

Which would be a horizontal line at $y=3$.

#### Part e

Plotting $|z+i|=|z-i|$, we'll find the points where two circles are equal, equivalent to a perpendicular bisector of the two centres of each circle.

Mathematically, this can be shown such that:

$$
\begin{align*}
(z+i)^{2}=(z-i)^{2}&\iff (x+iy+i)^{2}=(x+iy-i)^{2}\\
&\iff (x+i(y+1))^{2}=(x+i(y-1))^{2}\\
&\iff x^{2}+(y+1)^{2}=x^{2}+(y-1)^{2}\\
&\iff x^{2}+y^{2}+2y+1=x^{2}+y^{2}-2y+1\\
&\iff 2y=-2y\\
&\iff y=0\quad\square
\end{align*}
$$

#### Part f

Plotting $\text{Im}\left(\frac{1}{z}\right)=3$, we first simplify such that:

$$
\begin{align*}
3&= \text{Im}\left(\frac{1}{x+iy}\right)\\
&= \text{Im}\left(\frac{x-iy}{x^{2}+y^{2}}\right)\\
&= \text{Im}\left(\frac{x}{x^{2}+y^{2}} - i \frac{y}{x^{2}+y^{2}}\right)\\
&= -\frac{y}{x^{2}+y^{2}}\\
&\iff 3(x^{2}+y^{2})=-y\\
&\iff 3x^{2}+3y^{2}+y=0\\
&\iff 3x^{2}+3\left(y^{2}+ \frac{1}{3}y\right)=0\\
&\iff 3x^{2}+3\left(\left(y+ \frac{1}{6}\right)^{2}- \frac{1}{36}\right)\\
&\iff ...
\end{align*}
$$

Therefore a circle with radius $\frac{1}{6}$ with centre at $(0, -\frac{1}{6})$.