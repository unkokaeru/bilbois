- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Pre-Lecture 1 NOTES.pdf|Lecture Notes]].
- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Pre-Lecture 1 DETAILED NOTES.pdf|Lecture Notes (Detailed)]].
- Lecture: [[MTH2001 Algebraic Structures Lecture 1]].
- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Practical 1.pdf|Practical]] ([[MTH2001 Algebraic Structures Practical 1]]).

KEY DIFFERENCE BETWEEN GROUPS AND RINGS: Rings have two operations, rather than one!

Integral domains then just extend rings with unity and commutativity!

![[Definition of a Ring]]

There are many examples of rings, such as $(\mathbb{Z},+,\cdot)$, $(\mathbb{Q},+,\cdot)$, $(\mathbb{R},+,\cdot)$, $(\mathbb{C},+,\cdot)$, and even **polynomial rings**:

![[Definition of a Polynomial Ring]]

There are also rings within rings, called:

![[Definition of a Subring]]

The latter mentioned **QST** can be shown to prove that the Gaussian numbers $\mathbb{Z}[i]=\left\{ a+bi:a,b\in \mathbb{Z} \right\}$ form a subring of $\mathbb{C}$, for example. This can be done directly (*substitute expressions into definitions and draw logical conclusions*).

An additional construct is the concept of **zero divisors**. For example, in integers if you multiply non-zero numbers, you'll obtain a non-zero numbers.

Under modulo though, there are non-zero numbers that multiply to give zero: these are zero divisors. E.g.,

$$
\bar{2}\ne\bar{0}\quad \text{but}\quad\bar{2}\cdot\bar{2}=\bar{4}=\bar{0}
$$

![[Definition of a Zero Divisor]]

Finally...

![[Definition of an Integral Domain]]

*Note: a unity is basically an identity element and zero element (additive and multiplicative unities respectively).*

Lots of commutative modulo rings aren't integral domains, and naturally lots of non-commutative rings aren't either.

**Exercise**: Show that if $n$ is not a prime, then $\mathbb{Z} / n \mathbb{Z}$ is not an integral domain.

**Exercise**: Show that if $p$ is prime, then $\mathbb{Z} / p\mathbb{Z}$ is an integral domain.

In these integral domains, there are **cancellation laws** that work.

![[Definition of Cancellation Laws]]

This is quite trivial to prove, also, as it's just a natural assumption taught in elementary algebra. However, if $R$ is a ring that is not an integral domain, **the laws might not work**! For example, under $\mathbb{Z} / 12 \mathbb{Z}$.