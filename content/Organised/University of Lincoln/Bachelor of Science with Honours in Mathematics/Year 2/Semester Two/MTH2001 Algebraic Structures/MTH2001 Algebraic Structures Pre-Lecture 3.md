
- Lecture: [[MTH2001 Algebraic Structures Lecture 3]] ([[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Pre-Lecture 3 NOTES.pdf|Provided Notes]]).
- Practical: [[MTH2001 Algebraic Structures Practical 2]] ([[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Practical 2.pdf|Practical Sheet]]).

## Isomorphisms

A **complex conjugation** map $f:\mathbb{C}\to \mathbb{C}$ where $f(a+ib)=a-ib$ is a **ring homomorphism** (preserves sum and multiplication, can be proven directly). As $\mathbb{C}$ is an integral domain, the map $f$ is also an **integral domain homomorphism**, as well as a **field homomorphism** (as $\mathbb{C}$ is also a field).

In group theory, a group isomorphism is a map that is both bijective and a group homomorphism; this is similar for **ring isomorphisms**.

As for groups, if there's a ring isomorphism $\phi:R\to S$, then $R$ and $S$ are essentially the same ring - they share the same algebraic properties, e.g. cardinality, unity, commutativity.

Recall that bijectivity is something that is injective and surjective, that means that...

![[Definition of an Isomorphism]]

With this definition, we can show that $\mathbb{C}$ is not just a ring homomorphism, but also a ring isomorphism (and hence an integral domain and field isomorphism), by proving its bijectivity (directly). This is not always the case though, for example with $f:\mathbb{Z}/6\mathbb{Z}\to \mathbb{Z}/6\mathbb{Z}$ given by $f(x)=\bar{4}x$.

To prove something is non-isomorphic, we can use the actual definition to show that they don't share algebraic properties:

- Commutativity,
- Unity,
- Zero divisors,
- Integral domain,
- Field,
- Finity.

## Ideals

An **ideal** is a subring $I\subseteq R$ that "absorbs" the elements of $R$ under multiplication, which can be useful to generalise the concept of even integers, as well as provide a way to construct new rings: quotient rings.

![[Definition of an Ideal]]

There are some trivial examples, too, that apply for every ring $R$:

- $\left\{ 0 \right\}\lhd R$ because $0r=r0=0$ for all $r\in R$.
- $R\lhd R$ because $R$ is closed with respect to its multiplication.

## Image and Kernel

Given a **homomorphism** $\theta:R\to S$, the **image** of $\theta$ is...

$$
\text{Im}(\theta)=\left\{ \theta(r):r\in R \right\}\subset S
$$

and the **kernel** of $\theta$ is...

$$
\text{Ker}(\theta)=\left\{ r\in R:\theta(r)=0_{s} \right\}\subset R
$$

Given that something is a **ring homomorphism**, there are theories that state...

- The image of $\theta$ is a subring of $S$.
- The kernel of $\theta$ is an ideal of $R$.
- $\theta$ is injective if and only if $\text{ker}\theta=\left\{ 0_{R} \right\}$.

*These will be proven in the practical session*.

Using this theorem, we can find ideals!