![[../../../Auto-Generated/Attachments/Algebraic Structures - Practical 1.pdf]]

## Question 1.1

1. **Set**: $\set{1}$ with multiplication,
	- **Closure**: $1\cdot1=1\in \set{1}$.
	- **Associativity**: $1\cdot1=1=1\cdot1$.
	- **Identity Element**: $1$.
	- **Inverse Element**: $1$ is its own inverse.
	- ***Conclusion**: This is a (trivial) group.*

2. **Set**: $\mathbb{C}$ with addition,
	- **Closure**: $(a+ib)+(c+id)=(a+c)+i(b+d)\in \mathbb{C}$.
	- **Associativity**: $((a+ib)+(c+id))+(e+if)=(a+c+e)+i(b+d+f)=(a+ib)+((c+id)+(e+if))$.
	- **Identity Element**: $0+0i$ (the complex number $0$).
	- **Inverse Element**: For any $a+ib$, the inverse is $-a-ib$.
	- ***Conclusion**: This is a group.*

3. **Set**: $\mathbb{C}$ with multiplication,
	- **Closure**: $(a+ib)(c+id)=(ac-bd)+(ad+bc)i\in \mathbb{C}$.
	- **Associativity**: $((a+ib)(c+id))(e+if)=(ac-bd)e+(ad+bc)i+...$ (follows from the distributive property).
	- **Identity Element**: $1+0i$ (the complex number $1$).
	- **Inverse Element**: For any $a+ib \neq 0$, the inverse is $\frac{a-ib}{a^2+b^2}$.
	- ***Conclusion**: This is a group, excl. zero*

4. **Set**: $\set{1,-1}$ with multiplication,
	- **Closure**: $1\cdot1=1$, $1\cdot(-1)=-1$, $(-1)\cdot1=-1$, $(-1)\cdot(-1)=1$.
	- **Associativity**: $(x\cdot y)\cdot z=x\cdot(y\cdot z)$ for all $x,y,z \in \set{1,-1}$.
	- **Identity Element**: $1$.
	- **Inverse Element**: Each element is its own inverse: $1^{-1}=1$, $(-1)^{-1}=-1$.
	- ***Conclusion**: This is a group.*

5. **Set**: $\set{-1,0,1}$ with addition,
	- **Closure**: $(-1)+(-1)=-2 \notin \set{-1,0,1}$; thus, not closed.
	- **Associativity**: Addition is associative in general.
	- **Identity Element**: $0$.
	- **Inverse Element**: $1^{-1}=-1$, $0^{-1}=0$, $(-1)^{-1}=1$.
	- ***Conclusion**: This is not a group, as it's not closed.*

6. **Set**: $\mathbb{Z}$ with operation defined by $a\odot b=a+b-3$,
	- **Closure**: For any $a,b \in \mathbb{Z}$, $a\odot b=a+b-3 \in \mathbb{Z}$.
	- **Associativity**: $a\odot (b\odot c) = a+(b+c-3)-3 = a+b+c-6$ and $(a\odot b)\odot c = (a+b-3)+c-3 = a+b+c-6$.
	- **Identity Element**: The identity element $e$ satisfies $a\odot e=a+e-3 \Rightarrow e=3$.
	- **Inverse Element**: For $a \in \mathbb{Z}$, the inverse is $b$ such that $a\odot b=3 \Rightarrow b=3-a$.
	- ***Conclusion**: This is a group.*

7. **Set**: $\mathbb{R}$ with operation defined by $a*b=a+b-ab$,
	- **Closure**: For any $a,b \in \mathbb{R}$, $a*b=a+b-ab \in \mathbb{R}$.
	- **Associativity**: $a*(b*c) = a+(b+c-bc)-a(b+c-ab) = ...$ (requires verification).
	- **Identity Element**: The identity element $e$ satisfies $a*e=a+e-ae \Rightarrow e=1$.
	- **Inverse Element**: For $a \in \mathbb{R}$, the inverse is $b$ such that $a*b=1 \Rightarrow b=\frac{1-a}{a}$ (for $a \neq 1$).
	- ***Conclusion**: This is a group, excl. one*

8. **Set**: $\mathbb{Z}[x]$ of polynomials with integer coefficients with multiplication.
	- **Closure**: The product of two polynomials $f(x)$ and $g(x)$ is a polynomial with integer coefficients, hence $f(x)g(x) \in \mathbb{Z}[x]$.
	- **Associativity**: Polynomial multiplication is associative: $(f \cdot g) \cdot h = f \cdot (g \cdot h)$ for any polynomials $f, g, h \in \mathbb{Z}[x]$.
	- **Identity Element**: The identity element is the polynomial $1$, since $f(x) \cdot 1 = f(x)$ for any polynomial $f(x)$.
	- **Inverse Element**: There are no inverses in $\mathbb{Z}[x]$ for polynomials of degree greater than 0, as the product of two non-constant polynomials cannot yield the identity polynomial $1$.
	- ***Conclusion**: This is not a group, as there are no inverses for non-constant polynomials.*

9. **Set**: $\mathbb{Q}[x]$ of polynomials with rational coefficients with addition.
	- **Closure**: The sum of two polynomials $f(x)$ and $g(x)$ with rational coefficients is also a polynomial with rational coefficients, hence $f(x) + g(x) \in \mathbb{Q}[x]$.
	- **Associativity**: Polynomial addition is associative: $(f + g) + h = f + (g + h)$ for any polynomials $f, g, h \in \mathbb{Q}[x]$.
	- **Identity Element**: The identity element is the polynomial $0$, since $f(x) + 0 = f(x)$ for any polynomial $f(x)$.
	- **Inverse Element**: For any polynomial $f(x)$, the inverse is $-f(x)$, since $f(x) + (-f(x)) = 0$.
	- ***Conclusion**: This is a group.*

## Question 1.2

If $G$ is a group operation denoted multiplicatively, then $(gh)^{-1}=h^{-1}g^{-1}$, as shown:

**...**

## Question 1.3

Consider the set of diagonal matrices...
$$
D=\left\{\begin{bmatrix}a & 0 \\ 0 & b\end{bmatrix}:a,b\in \mathbb{R}^*\right\}
$$

### Part A

$D$ with usual matrix multiplication is a group:
- **Closure**: ...
- **Associativity**: ...
- **Identity Element**: ...
- **Inverse Element**: ...

### Part B

This group is/isn't abelian because **...**