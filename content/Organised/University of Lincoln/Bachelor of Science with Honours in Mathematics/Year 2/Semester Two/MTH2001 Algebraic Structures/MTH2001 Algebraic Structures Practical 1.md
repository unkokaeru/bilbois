- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Practical 1.pdf|Practical Sheet]].
- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Practical 1 SOLUTIONS.pdf|Practical Solutions]].

### Question 6.1

Given the set of $\mathbb{Z} / 4\mathbb{Z}=\left\{ 0,1,2,3 \right\}$...
- $2\cdot2=0$.
Hence the zero divisor is $\boxed{2}$.

Given the set of $\mathbb{Z} / 12\mathbb{Z}=\left\{ 0,1,2,3,4,5,6,7,8,9,10,11 \right\}$...
- $3\cdot4=4\cdot3=0$.
- $2\cdot6=6\cdot2=0$.
Hence the zero divisors are $\boxed{2,3,4,6}$.

> [!WARNING] INCOMPLETE ANSWER 🕵
> Also has 8,9,10 in the latter half, and all of those numbers should have lines above them to show that they're congruence classes.

### Question 6.2

Considering the rings $\mathbb{Z}$ and $\mathbb{Z}\times \mathbb{Z}$...
- $\boxed{\mathbb{Z}\text{ has unity }1}$ and $\boxed{\mathbb{Z}\times \mathbb{Z}\text{ has unity }(1,1)}$.
- $\mathbb{Z}$ has $\boxed{\text{no zero divisors}}$ and $\mathbb{Z}\times \mathbb{Z}$ has zero divisors of the form $\boxed{(a,0),(0,b):a,b\ne0}$.
- [[Definition of an Integral Domain|Definition of an Integral Domain]]:
	- Both rings are commutative.
	- Both rings have unity.
	- Only $\mathbb{Z}$ has no zero divisors.
	- $\boxed{\therefore \mathbb{Z}\text{ is an integral domain}}$.
- $\boxed{\text{Neither ring}}$ is a field, since multiplicative inverses don't exist for every element (*since the inverse are all fractional*).

### Question 6.3

Given a ring $R$, for all $a,b$...

$$
\begin{align*}
(a+b)(a-b)&= aa-ab+ba-bb\quad \text{ by associativity}\\
&= a^{2}-b^{2}+(ba-ab)\\
&\boxed{= a^{2}-b^{2}:ba-ab\iff R\text{ is commutative }:ab=ba}\\
\end{align*}
$$

> [!NOTE] Need to complete in the other direction, too?

### Question 6.4

Given a ring $\mathbb{Z} / n \mathbb{Z}$, if $n$ is not prime then...
- [[Definition of an Integral Domain|Definition of an Integral Domain]]:
	- Zero divisors exist as factors of $n$, therefore $\boxed{\text{the ring is not an integral domain}}$.

Given a ring $\mathbb{Z} / p \mathbb{Z}$, if $p$ is a prime then...
- [[Definition of an Integral Domain|Definition of an Integral Domain]]:
	- The ring is commutative and has unity.
	- There are no zero divisors of $p$ as it has no factors by definition, therefore $\boxed{\text{the ring is an integral domain}}$.

> [!NOTE] Should be completed more like a mathematical proof, rather than logical.

### Question 6.5

Given an integral domain $D$...
- If there exists $a\in D:a^{2}=1$, $a^{2}-1=0\implies (a+1)(a-1)=0\iff \boxed{a=\pm1}$.
- If there exists $a\in D:a^{2}=a$, $a^{2}-a=0\implies a(a-1)=0\iff \boxed{a=0,1}$.
- If there exists $a\in D:a^{n}=0$ for some positive integer $n$, $a=0^{\frac{1}{n}}\iff \boxed{a=0}$.

> [!NOTE] Should state the properties of the integral domain used, e.g. commutativity when factorising.

### Question 6.6

Given a ring $(R,+,\cdot):a,b,c\in R$, then...
1. Each equation $a+x=x+a=b$ has a unique solution.
	- ... *proof*.
2. $-(-a)=a$ and $-(a+b)=(-a)+(-b)$.
	- ... *proof*.
3. If $m,n\in \mathbb{Z}$, then $(m+n)\cdot a=ma+na$, $m \cdot(a+b)=ma+mb$, and $m(na)=(mn)a$.
	- ... *proof*.

**Left as an exercise for exam prep**.

### Question 6.7

Given that the center of a ring $R$ is defined as $\left\{ c\in R:cr=rc\quad\forall r\in R \right\}$ with unity, denoted as $C$...
- [[Definition of a Subring|Definition of a Subring]] (**QST**):
	- $C$ is non-empty, as there exists at least $r=\text{unity}$.
	- $C$ is closed under both addition and multiplication of $R$, as operating with the unity won't change the element, hence will stay closed under $R$.
	- $C$ contains the inverse of each of its elements, by definition.

*Should prove this more*.

### Question 6.8

The smallest subring of $\mathbb{Z}$ containing $3$ is $3 \mathbb{Z}$, as it withstands **QST** (as it's just a selection of the original ring, multiples of the required smallest element).

The smallest subring of $\mathbb{R}$ containing $\frac{1}{2}$ is $\mathbb{Z}[\frac{1}{2}]$, as it withstands **QST** (as it's just a selection of the original ring, multiples of the required smallest element).

*Should prove this more*.